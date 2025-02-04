
 Working directory              : /wrk/irikura/molpro.tUJCVzQy1d/
 Global scratch directory       : /wrk/irikura/molpro.tUJCVzQy1d/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.tUJCVzQy1d/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    8
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
 spdfghi,i,aug-cc-pwCV5Z-PP;C; spdf,1,even,nprim=1,ratio=3.0;
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
  (32 PROC) 64 bit mpp version                                                           DATE: 08-Nov-24          TIME: 11:40:42  
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

     Node minimum: 92.013 MB, node maximum: 148.636 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   49396652.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   4  SEGMENT LENGTH:   15990632      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ   646821870. AND WROTE     8512704. INTEGRALS IN     26 RECORDS. CPU TIME:     2.69 SEC, REAL TIME:     2.82 SEC
 SORT2 READ    68066263. AND WROTE   395255076. INTEGRALS IN   3264 RECORDS. CPU TIME:     1.02 SEC, REAL TIME:     1.13 SEC

 Node minimum:    49389188.  Node maximum:    49431662. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        13.27     12.94
 REAL TIME  *        16.19 SEC
 DISK USED  *        31.11 MB (local),        1.79 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -294.71890407    -294.71890407     0.00D+00     0.48D-01     0     0       0.22      0.43    start
   2     -294.74429992      -0.02539585     0.28D-02     0.25D-02     1     0       0.22      0.65    diag
   3     -294.74637248      -0.00207257     0.15D-02     0.59D-03     2     0       0.23      0.88    diag
   4     -294.74677054      -0.00039805     0.29D-03     0.35D-03     3     0       0.22      1.10    diag
   5     -294.74685524      -0.00008470     0.10D-03     0.20D-03     4     0       0.22      1.32    diag
   6     -294.74686328      -0.00000804     0.26D-04     0.70D-04     5     0       0.23      1.55    diag
   7     -294.74686363      -0.00000035     0.45D-05     0.20D-04     6     0       0.22      1.77    diag
   8     -294.74686365      -0.00000002     0.92D-06     0.39D-05     7     0       0.22      1.99    fixocc
   9     -294.74686365      -0.00000000     0.16D-06     0.99D-06     8     0       0.23      2.22    diag
  10     -294.74686365      -0.00000000     0.30D-07     0.13D-06     0     0       0.22      2.44    diag/orth

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -294.746863649666
  RHF One-electron energy            -520.926471482769
  RHF Two-electron energy             226.179607833103
  RHF Kinetic energy                  110.887818406682
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.658063508551

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45091     1  1  s    0.99968
    2.1     2.00000    -2.00364     1  1  d0   0.27281    1  1  d2+  0.96197
    3.1     2.00000    -2.00364     1  1  d2-  0.99236
    4.1     2.00000    -2.00364     1  1  d1-  0.99244
    5.1     2.00000    -2.00364     1  1  d0   0.96179    1  1  d2+ -0.27278
    6.1     2.00000    -2.00364     1  1  d1+  0.99964
    7.1     2.00000    -0.60772     1  1  s   -0.42334    1  3  s   -0.25821    1  5  s    0.56626    1  6  s    0.49105
    1.2     2.00000    -5.27628     1  1  px   1.00125
    2.2     2.00000    -5.27628     1  1  py   1.00125
    3.2     2.00000    -5.27628     1  1  pz   1.00125
    4.2     2.00000    -0.12599     1  1  py  -0.36714    1  5  py   0.42075    1  6  py   0.36698
    5.2     2.00000    -0.12599     1  1  px  -0.36714    1  5  px   0.42075    1  6  px   0.36698
    6.2     2.00000    -0.12599     1  1  pz  -0.36714    1  5  pz   0.42075    1  6  pz   0.36698


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
 CPU TIMES  *        15.72      2.45     12.94
 REAL TIME  *        18.79 SEC
 DISK USED  *        34.43 MB (local),        1.82 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =        12.00000000                                  
 SETTING NQUAR          =         9.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     265 (  128  137)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:            12
 Number of CSFs:             420   (600 determinants, 1225 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             9
 Number of CSFs:             168   (180 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.222D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.125D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.126D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.240D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.358D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 3 6 2 4 1 1 4 6   3 2 5 1 4 5 6 3 2 1   4 6 2 5 314 81512 9   7131011 1 2 4 5 3 6
                                       11 8131215 9 71410 6   4 2 5 3 1111214 8 9  131510 7 2 5 4 6 3 1  111214 8151310 9 727
                                       21231720182522261628  1924 2 5 4 3 6111314  121015 8 9 7 1 2 5 4   3 61013151412 8 711
                                        9 1 3 4 2 6 5 1 3 4   2 5 6 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.822D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.898D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.895D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.194D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.194D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.325D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.325D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 3 2 1 1   2 3 8 710 4 9 6 5 2   1 3 810 6 7 9 4 5 2   3 110 8 5 6 7 9 410
                                        5 8 7 9 6 421111314  18151712162019 2 3 1   7 810 5 9 6 4191221  1417161520111813 6 7
                                        5 9 810 4 2 3 1 910   7 5 8 6 41219211417  161520181311 1 2 3 9   710 5 8 4 618201517
                                       16141321121911 1 2 3   7 910 8 4 5 6 1 2 3   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.26882   0.26882   0.26882   0.01075   0.01075   0.01075   0.01075   0.01075
                                          0.01075   0.01075   0.01075   0.01075
 Weight factors for state symmetry  2:    0.01075   0.01075   0.01075   0.01075   0.01075   0.01075   0.01075   0.01075
                                          0.01075
 
 Number of orbital rotations:  2153  ( 24 closed/active, 1179 closed/virtual, 0 active/active, 950 active/virtual )
 Total number of variables:    10973
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   25    0   -294.54776395    -294.61639259   -0.06862864    0.27443978 0.00181007 0.00347757  0.12E+01      3.09
   2    8   24    0   -294.59367353    -294.60066085   -0.00698732    0.21804980 0.00067230 0.00083078  0.56E+00      6.90
   3    7   21    0   -294.60072133    -294.60072365   -0.00000232    0.00228760 0.00000031 0.00000232  0.16E-01     10.22
   4    5   14    0   -294.60072365    -294.60072365   -0.00000000    0.00000102 0.00000001 0.00000008  0.65E-05     12.84

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.24E-07)
                       Final energy:   -294.60072365
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -294.656650759990
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.88943595
 One electron energy                          -513.86152599
 Two electron energy                           219.20487523
 Virial ratio                                    3.65721120
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -294.656650759978
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.88943595
 One electron energy                          -513.86152599
 Two electron energy                           219.20487523
 Virial ratio                                    3.65721120
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -294.656650759809
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.88943597
 One electron energy                          -513.86152604
 Two electron energy                           219.20487528
 Virial ratio                                    3.65721120
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -294.366590649973
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.20198086
 One electron energy                          -507.69036463
 Two electron energy                           213.32377398
 Virial ratio                                    3.67115517
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -294.366590649969
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.20198086
 One electron energy                          -507.69036463
 Two electron energy                           213.32377398
 Virial ratio                                    3.67115517
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -294.366590646502
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.20198089
 One electron energy                          -507.69036486
 Two electron energy                           213.32377422
 Virial ratio                                    3.67115517
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -294.366590646268
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.20198089
 One electron energy                          -507.69036488
 Two electron energy                           213.32377423
 Virial ratio                                    3.67115517
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -294.366590645186
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.20198090
 One electron energy                          -507.69036495
 Two electron energy                           213.32377431
 Virial ratio                                    3.67115517
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -294.360256294268
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.25741058
 One electron energy                          -507.91350354
 Two electron energy                           213.55324724
 Virial ratio                                    3.66975485
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -294.360256289699
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.25741061
 One electron energy                          -507.91350373
 Two electron energy                           213.55324744
 Virial ratio                                    3.66975485
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -294.360256289392
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.25741061
 One electron energy                          -507.91350374
 Two electron energy                           213.55324745
 Virial ratio                                    3.66975485
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -294.359087361706
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.19808222
 One electron energy                          -507.67895912
 Two electron energy                           213.31987175
 Virial ratio                                    3.67118158
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -294.378047575700
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.17454345
 One electron energy                          -507.60127112
 Two electron energy                           213.22322354
 Virial ratio                                    3.67192437
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -294.378047574020
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.17454348
 One electron energy                          -507.60127134
 Two electron energy                           213.22322376
 Virial ratio                                    3.67192437
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -294.378047573905
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.17454348
 One electron energy                          -507.60127135
 Two electron energy                           213.22322378
 Virial ratio                                    3.67192437
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -294.370405730737
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18450042
 One electron energy                          -507.63464117
 Two electron energy                           213.26423544
 Virial ratio                                    3.67161356
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -294.370405730734
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18450042
 One electron energy                          -507.63464117
 Two electron energy                           213.26423544
 Virial ratio                                    3.67161356
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -294.370405728065
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18450046
 One electron energy                          -507.63464139
 Two electron energy                           213.26423566
 Virial ratio                                    3.67161356
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -294.370405727884
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18450046
 One electron energy                          -507.63464141
 Two electron energy                           213.26423568
 Virial ratio                                    3.67161356
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -294.370405727052
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18450047
 One electron energy                          -507.63464148
 Two electron energy                           213.26423575
 Virial ratio                                    3.67161356
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -294.359511583644
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.19386603
 One electron energy                          -507.66334602
 Two electron energy                           213.30383444
 Virial ratio                                    3.67128763
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999999982
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.000000000018
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.996807849456
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.999999996512
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000002
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.003192154031
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>     0.000000000001
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     1.000000000000
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     0.999999999999
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>    -0.000000000000
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     1.000000000000
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     1.000000000000
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     3.996792986604
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     4.000000000000
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000000000000
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000000000000
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.003206668846
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>    -0.000000000000
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999717801
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.000000282199
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.099416313036
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     1.000000107968
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     3.999999999402
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     1.000000000587
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     2.900583579004
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>     1.000000000000
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     0.000000000039
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     0.999999999963
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>     0.000000000001
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     1.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.000000000314
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999997612
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.099651079266
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000000000000
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.999999976264
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000000014400
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     2.900354355863
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.000000000000
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000000282216
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999717801
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999999982
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.903775837508
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.999999895520
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000000594
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     3.999999999412
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     3.096224266964
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>     0.999999999999
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     0.999999999963
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     0.000000000039
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>     0.000000000001
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     1.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999999686
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.000000002388
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     0.903555934130
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000000000000
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.000000023735
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     3.999999985600
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     3.096438975291
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.000000000000
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     5.999999999998
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     5.999999999998
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     5.999999999998
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>     2.000000000000
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     2.000000000002
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     2.000000000002
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>     0.000000000001
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     5.999999999999
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>     0.000000000001
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 3 5   6 2 4 1 5 3 6 2 4 1   5 3 6 2 41310141511   812 7 9 1 5 3 6 2 4
                                       1310141511 812 7 9 5   3 6 2 4 11310141511   812 7 9 5 3 6 2 4 1  1310141511 812 7 922
                                       16182024192723261721  2528 3 5 6 2 4131014  1511 812 7 9 1 3 5 6   2 4101315141112 8 7
                                        9 1 3 5 6 2 4 1 3 5   6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 1   2 3 9 7 810 5 6 4 1   2 3 9 7 5 810 6 4 1   2 3 9 7 5 810 6 4 9
                                        7 5 810 6 420181517  12141621131911 2 1 3   9 7 5 810 6 4201815  1716141221131911 9 7
                                       10 8 5 6 4 2 1 3 9 7  10 8 5 6 42018151716  141221131911 2 1 3 9   710 8 5 6 420181517
                                       14161221131911 2 1 3   7 910 8 5 6 4 2 1 3   2 3 1 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.78663     1  1  s    0.99965
    2.1     2.00000    -2.33875     1  1  d2-  1.00009
    3.1     2.00000    -2.33875     1  1  d2+  1.00009
    4.1     2.00000    -2.33875     1  1  d1-  1.00009
    5.1     2.00000    -2.33875     1  1  d0   1.00009
    6.1     2.00000    -2.33875     1  1  d1+  1.00009
    7.1     1.99963    -0.90828     1  1  s   -0.43842    1  3  s   -0.26684    1  5  s    0.62305    1  6  s    0.51576
    1.2     2.00000    -5.61134     1  1  py   1.00049
    2.2     2.00000    -5.61134     1  1  px   1.00049
    3.2     2.00000    -5.61134     1  1  pz   1.00049
    4.2     1.60028    -0.36419     1  1  pz  -0.40126    1  4  pz   0.25699    1  5  pz   0.48902    1  6  pz   0.37613
    5.2     1.60028    -0.36419     1  1  px  -0.40126    1  4  px   0.25699    1  5  px   0.48902    1  6  px   0.37613
    6.2     1.60028    -0.36419     1  1  py  -0.40126    1  4  py   0.25699    1  5  py   0.48902    1  6  py   0.37613
    7.2     0.06651     0.06470     1  5  pz  -0.25182    1 12  pz   0.76399
    8.2     0.06651     0.06470     1  5  px  -0.25182    1 12  px   0.76399
    9.2     0.06651     0.06470     1  5  py  -0.25182    1 12  py   0.76399
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2a2000       0.00000420     -0.00000048      0.99847139     -0.00000000      0.00000000      0.00000000      0.00000000
 2 22a000       0.00053041      0.99847125      0.00000048     -0.00000000     -0.00000000     -0.00000002      0.00000000
 2 a22000       0.99847125     -0.00053041     -0.00000420      0.00000000      0.00000000     -0.00000000     -0.00000002
 2 a2a0b0      -0.00000000      0.00000000      0.00000000      0.01868523      0.00001952     -0.00000113      0.00000041
 2 2aab00       0.00000000     -0.00000000     -0.00000000      0.58193323      0.00060494     -0.00000039      0.00000012
 2 a2ab00      -0.00001172     -0.02207167     -0.00000001      0.00000015     -0.00000068     -0.57281988      0.00000801
 2 a2a00b       0.02207167     -0.00001172     -0.00000009      0.00000007     -0.00000013      0.00000801      0.57281985
 2 aa2b00      -0.00000009      0.00000001     -0.02207168     -0.00059542      0.57281923     -0.00000068      0.00000013
 2 2aa00b       0.00000009     -0.00000001      0.02207168     -0.00059542      0.57281918     -0.00000068      0.00000013
 2 aa20b0       0.02207168     -0.00001172     -0.00000009     -0.00000007      0.00000013     -0.00000801     -0.57281917
 2 2aa0b0      -0.00001172     -0.02207168     -0.00000001     -0.00000015      0.00000068      0.57281915     -0.00000801
 2 aa200b      -0.00000000     -0.00000000      0.00000000     -0.56324795     -0.00058542     -0.00000075      0.00000029
 2 2ab0a0       0.00000687      0.01293904      0.00000001      0.00000008     -0.00000035     -0.29280267      0.00000409
 2 ba20a0      -0.01293904      0.00000687      0.00000005      0.00000004     -0.00000006      0.00000409      0.29280268
 2 2ba00a      -0.00000005      0.00000001     -0.01293904      0.00030435     -0.29280274      0.00000035     -0.00000006
 2 ab2a00       0.00000005     -0.00000001      0.01293904      0.00030435     -0.29280277      0.00000035     -0.00000006
 2 b2a00a      -0.01293903      0.00000687      0.00000005     -0.00000004      0.00000006     -0.00000409     -0.29280316
 2 a2ba00       0.00000687      0.01293903      0.00000001     -0.00000008      0.00000035      0.29280317     -0.00000409
 2 b2a0a0       0.00000000      0.00000000      0.00000000      0.00343860      0.00000353      0.00000057     -0.00000021
 2 a2b0a0      -0.00000000     -0.00000000     -0.00000000     -0.02212383     -0.00002305      0.00000056     -0.00000020
 2 2baa00      -0.00000000      0.00000000     -0.00000000     -0.29704441     -0.00030879      0.00000017     -0.00000005
 2 ab200a      -0.00000000      0.00000000     -0.00000000      0.28832740      0.00029968      0.00000036     -0.00000014
 2 2aba00      -0.00000000     -0.00000000      0.00000000     -0.28488883     -0.00029615      0.00000021     -0.00000007
 2 b2aa00       0.00000485      0.00913264      0.00000000     -0.00000007      0.00000033      0.28001671     -0.00000392
 2 a2b00a      -0.00913264      0.00000485      0.00000004     -0.00000004      0.00000006     -0.00000392     -0.28001670
 2 ab20a0      -0.00913264      0.00000485      0.00000004      0.00000004     -0.00000006      0.00000392      0.28001649
 2 2ba0a0       0.00000485      0.00913264      0.00000000      0.00000007     -0.00000033     -0.28001648      0.00000392
 2 ba2a00       0.00000004     -0.00000000      0.00913264      0.00029106     -0.28001645      0.00000033     -0.00000006
 2 2ab00a      -0.00000004      0.00000000     -0.00913264      0.00029106     -0.28001644      0.00000033     -0.00000006
 2 ba200a      -0.00000000     -0.00000000      0.00000000      0.27492055      0.00028574      0.00000039     -0.00000015
 2 022a00      -0.00958300      0.00000509      0.00000004     -0.00000000     -0.00000000     -0.00000000     -0.00000011
 2 22000a      -0.00000509     -0.00958300     -0.00000000      0.00000000     -0.00000000     -0.00000012      0.00000000
 2 2020a0      -0.00000004      0.00000000     -0.00958300     -0.00000000      0.00000001     -0.00000000      0.00000000
 2 02a200      -0.00000756     -0.01422440     -0.00000001      0.00000002     -0.00000007     -0.06218792      0.00000087
 2 a20002      -0.01422440      0.00000756      0.00000006     -0.00000001      0.00000001     -0.00000087     -0.06218792
 2 a02020      -0.01422441      0.00000756      0.00000006      0.00000001     -0.00000001      0.00000087      0.06218787
 2 20a020      -0.00000756     -0.01422441     -0.00000001     -0.00000002      0.00000007      0.06218786     -0.00000087
 2 0a2200      -0.00000006      0.00000001     -0.01422440     -0.00006464      0.06218786     -0.00000007      0.00000001
 2 2a0002      -0.00000006      0.00000001     -0.01422440      0.00006464     -0.06218785      0.00000007     -0.00000001
 
 Energy:     -294.65665076   -294.65665076   -294.65665076   -294.36659065   -294.36659065   -294.36659065   -294.36659065

 State:              8               9              10              11              12
 2 2a2000      -0.00000000     -0.04119900     -0.00000001      0.00000003     -0.00000000
 2 22a000      -0.00000000     -0.00000001      0.04119900      0.00000025     -0.00000000
 2 a22000       0.00000000     -0.00000003      0.00000025     -0.04119900     -0.00000000
 2 a2a0b0       0.66117079      0.00000000     -0.00000000      0.00000000     -0.46805534
 2 2aab00       0.31440383     -0.00000000      0.00000000     -0.00000000      0.46805483
 2 a2ab00      -0.00000099     -0.00000014      0.52983106      0.00000323     -0.00000000
 2 a2a00b      -0.00000036      0.00000044     -0.00000323      0.52983108     -0.00000000
 2 aa2b00      -0.00000008     -0.52983143     -0.00000014      0.00000044     -0.00000000
 2 2aa00b      -0.00000008      0.52983148      0.00000014     -0.00000044      0.00000000
 2 aa20b0       0.00000036      0.00000044     -0.00000323      0.52983179      0.00000000
 2 2aa0b0       0.00000099     -0.00000014      0.52983182      0.00000323     -0.00000000
 2 aa200b       0.34676765     -0.00000000      0.00000000      0.00000000      0.46805487
 2 2ab0a0      -0.00000050      0.00000011     -0.40722973     -0.00000248      0.00000000
 2 ba20a0      -0.00000018     -0.00000034      0.00000248     -0.40722972     -0.00000000
 2 2ba00a       0.00000004     -0.40722952     -0.00000011      0.00000034     -0.00000000
 2 ab2a00       0.00000004      0.40722950      0.00000011     -0.00000034      0.00000000
 2 b2a00a       0.00000018     -0.00000034      0.00000248     -0.40722935      0.00000000
 2 a2ba00       0.00000050      0.00000011     -0.40722933     -0.00000248      0.00000000
 2 b2a0a0      -0.33094660     -0.00000000      0.00000000     -0.00000000      0.23402767
 2 a2b0a0      -0.33022419     -0.00000000      0.00000000     -0.00000000      0.23402767
 2 2baa00      -0.14595245      0.00000000     -0.00000000      0.00000000     -0.23402742
 2 ab200a      -0.16249557      0.00000000     -0.00000000      0.00000000     -0.23402744
 2 2aba00      -0.16845138      0.00000000     -0.00000000      0.00000000     -0.23402741
 2 b2aa00       0.00000048      0.00000003     -0.12260172     -0.00000075      0.00000000
 2 a2b00a       0.00000017     -0.00000010      0.00000075     -0.12260173     -0.00000000
 2 ab20a0      -0.00000017     -0.00000010      0.00000075     -0.12260207     -0.00000000
 2 2ba0a0      -0.00000048      0.00000003     -0.12260209     -0.00000075      0.00000000
 2 ba2a00       0.00000004      0.12260193      0.00000003     -0.00000010      0.00000000
 2 2ab00a       0.00000004     -0.12260195     -0.00000003      0.00000010     -0.00000000
 2 ba200a      -0.18427208      0.00000000     -0.00000000     -0.00000000     -0.23402742
 2 022a00       0.00000000     -0.00000020      0.00000144     -0.23596140      0.00000000
 2 22000a      -0.00000000     -0.00000006      0.23596139      0.00000144     -0.00000000
 2 2020a0       0.00000000     -0.23596136     -0.00000006      0.00000020     -0.00000000
 2 02a200      -0.00000011     -0.00000001      0.04781122      0.00000029     -0.00000000
 2 a20002       0.00000004     -0.00000004      0.00000029     -0.04781123      0.00000000
 2 a02020      -0.00000004     -0.00000004      0.00000029     -0.04781131     -0.00000000
 2 20a020       0.00000011     -0.00000001      0.04781131      0.00000029     -0.00000000
 2 0a2200      -0.00000001     -0.04781127     -0.00000001      0.00000004     -0.00000000
 2 2a0002       0.00000001     -0.04781127     -0.00000001      0.00000004     -0.00000000
 
 Energy:     -294.36659065   -294.36025629   -294.36025629   -294.36025629   -294.35908736
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a2a0a0      -0.00000000      0.00000000      0.00000000      0.02298365      0.00000004     -0.00000028     -0.00000025
 2 2aaa00       0.00000000     -0.00000000     -0.00000000      0.71416822      0.00000122     -0.00000009     -0.00000011
 2 a2aa00       0.00000000      0.70351747      0.00001247     -0.00000004     -0.00000000      0.70295801     -0.00006253
 2 a2a00a       0.00000000     -0.00001247      0.70351746      0.00000001      0.00000000     -0.00006253     -0.70295802
 2 aa2a00       0.70351727      0.00000000     -0.00000000     -0.00000120      0.70295821     -0.00000000      0.00000000
 2 2aa00a      -0.70351724      0.00000000     -0.00000000     -0.00000120      0.70295824     -0.00000000      0.00000000
 2 aa20a0      -0.00000000     -0.00001247      0.70351705     -0.00000001      0.00000000      0.00006253      0.70295843
 2 2aa0a0      -0.00000000      0.70351704      0.00001247      0.00000004      0.00000000     -0.70295844      0.00006253
 2 aa200a       0.00000000     -0.00000000     -0.00000000     -0.69118452     -0.00000118     -0.00000019     -0.00000014
 2 02aaa0      -0.00000000      0.00000000      0.00000000     -0.00056778     -0.00000000     -0.00000002     -0.00000002
 2 a200aa       0.00000000      0.00000000      0.00000000      0.00365380      0.00000001     -0.00000002     -0.00000002
 
 Energy:     -294.37804758   -294.37804757   -294.37804757   -294.37040573   -294.37040573   -294.37040573   -294.37040573

 State:              8               9
 2 a2a0a0       0.81138061     -0.57337585
 2 2aaa00       0.38578613      0.57337548
 2 a2aa00       0.00000025      0.00000000
 2 a2a00a      -0.00000022      0.00000000
 2 aa2a00       0.00000000      0.00000000
 2 2aa00a      -0.00000000      0.00000000
 2 aa20a0       0.00000022      0.00000000
 2 2aa0a0      -0.00000025      0.00000000
 2 aa200a       0.42559500      0.57337550
 2 02aaa0       0.05453202     -0.04105561
 2 a200aa       0.05441244     -0.04105561
 
 Energy:     -294.37040573   -294.35951158
 


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
 CPU TIMES  *        27.69     11.96      2.45     12.94
 REAL TIME  *        33.71 SEC
 DISK USED  *        96.98 MB (local),        2.31 GB (total)
 SF USED    *       167.46 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -294.6566508   2.0
    -294.6566508   2.0
    -294.6566508   2.0
    -294.3665906   6.0
    -294.3665906   6.0
    -294.3665906   6.0
    -294.3665906   6.0
    -294.3665906   6.0
    -294.3602563   2.0
    -294.3602563   2.0
    -294.3602563   2.0
    -294.3590874   0.0
    -294.3780476   2.0
    -294.3780476   2.0
    -294.3780476   2.0
    -294.3704057   6.0
    -294.3704057   6.0
    -294.3704057   6.0
    -294.3704057   6.0
    -294.3704057   6.0
    -294.3595116   0.0
                                                  


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
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.65665076
     2      -294.65665076
     3      -294.65665076
     4      -294.36659065
     5      -294.36659065
     6      -294.36659065
     7      -294.36659065
     8      -294.36659065
     9      -294.36025629
    10      -294.36025629
    11      -294.36025629
    12      -294.35908736

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3764D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1430D-06

 Number of blocks in overlap matrix:  1120   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:    2969
 Number of N-1 electron functions:  132244

 Number of internal configurations:                29358
 Number of singly external configurations:      17524724
 Number of doubly external configurations:      52135980
 Total number of contracted configurations:     69690062
 Total number of uncontracted configurations: 2410902056

 Diagonal Coupling coefficients finished.               Storage:  34419254 words, CPU-Time:    173.86 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4562966 words, CPU-time:      6.84 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.65665076     0.00000000    -1.18177029  0.27D-01  0.12D+00   200.67
    1     2     2     1.00000000     0.00000000  -294.65665076     0.00000000    -1.18193458  0.27D-01  0.12D+00   200.67
    1     3     3     1.00000000     0.00000000  -294.65665076    -0.00000000    -1.18126908  0.27D-01  0.12D+00   200.67
    1     4     4     1.00000000     0.00000000  -294.36659065     0.00000000    -1.17107486  0.46D-01  0.12D+00   200.67
    1     5     5     1.00000000     0.00000000  -294.36659065     0.00000000    -1.17163352  0.46D-01  0.12D+00   200.67
    1     6     6     1.00000000     0.00000000  -294.36659065     0.00000000    -1.17173812  0.46D-01  0.12D+00   200.67
    1     7     7     1.00000000     0.00000000  -294.36659065     0.00000000    -1.17178262  0.46D-01  0.12D+00   200.67
    1     8     8     1.00000000     0.00000000  -294.36659065     0.00000000    -1.17411276  0.46D-01  0.12D+00   200.67
    1     9     9     1.00000000     0.00000000  -294.36025629     0.00000000    -1.18063041  0.52D-01  0.12D+00   200.67
    1    10    10     1.00000000     0.00000000  -294.36025629     0.00000000    -1.18063613  0.52D-01  0.12D+00   200.67
    1    11    11     1.00000000     0.00000000  -294.36025629    -0.00000000    -1.18064612  0.53D-01  0.12D+00   200.67
    1    12    12     1.00000000     0.00000000  -294.35908736     0.00000000    -1.17661138  0.49D-01  0.12D+00   200.67
    2     1     1     1.10155109    -0.98759804  -295.64424880    -0.98759804    -0.02564493  0.32D-02  0.17D-02  5888.39
    2     2     2     1.10155682    -0.98758826  -295.64423902    -0.98758826    -0.02567053  0.32D-02  0.17D-02  5888.39
    2     3     3     1.10146531    -0.98755214  -295.64420290    -0.98755214    -0.02566504  0.32D-02  0.17D-02  5888.39
    2     4     4     1.11077715    -0.97155697  -295.33814762    -0.97155697    -0.02608748  0.39D-02  0.17D-02  5888.39
    2     5     5     1.11093762    -0.97152060  -295.33811125    -0.97152060    -0.02614244  0.38D-02  0.18D-02  5888.39
    2     6     6     1.11092564    -0.97146339  -295.33805404    -0.97146339    -0.02618668  0.38D-02  0.18D-02  5888.39
    2     7     7     1.11097909    -0.97145618  -295.33804683    -0.97145618    -0.02621087  0.38D-02  0.18D-02  5888.39
    2     8     8     1.11129683    -0.97105570  -295.33764634    -0.97105570    -0.02667051  0.38D-02  0.19D-02  5888.39
    2     9     9     1.11328711    -0.97032655  -295.33058285    -0.97032655    -0.02714144  0.41D-02  0.19D-02  5888.39
    2    10    10     1.11499742    -0.96986188  -295.33011817    -0.96986188    -0.02976114  0.56D-02  0.19D-02  5888.39
    2    11    11     1.11501266    -0.96984525  -295.33010154    -0.96984525    -0.02976877  0.56D-02  0.19D-02  5888.39
    2    12    12     1.11502349    -0.97099011  -295.33007748    -0.97099011    -0.02979630  0.56D-02  0.19D-02  5888.39
    3     1     1     1.09470658    -1.01250262  -295.66915338    -0.02490457    -0.00062864  0.52D-04  0.79D-04 11581.57
    3     2     2     1.09471359    -1.01250218  -295.66915294    -0.02491392    -0.00062988  0.52D-04  0.79D-04 11581.57
    3     3     3     1.09466635    -1.01248629  -295.66913704    -0.02493414    -0.00063972  0.52D-04  0.80D-04 11581.57
    3     4     4     1.09644727    -0.99702463  -295.36361528    -0.02546765    -0.00052084  0.59D-04  0.65D-04 11581.57
    3     5     5     1.09644350    -0.99702107  -295.36361172    -0.02550047    -0.00052346  0.60D-04  0.65D-04 11581.57
    3     6     6     1.09647686    -0.99701957  -295.36361021    -0.02555617    -0.00052529  0.60D-04  0.65D-04 11581.57
    3     7     7     1.09642544    -0.99701543  -295.36360607    -0.02555924    -0.00052627  0.59D-04  0.66D-04 11581.57
    3     8     8     1.09641637    -0.99701503  -295.36360568    -0.02595934    -0.00052669  0.60D-04  0.65D-04 11581.57
    3     9     9     1.09713018    -0.99871871  -295.35897500    -0.02839215    -0.00061014  0.72D-04  0.73D-04 11581.57
    3    10    10     1.09712428    -0.99871623  -295.35897252    -0.02885435    -0.00061097  0.72D-04  0.73D-04 11581.57
    3    11    11     1.09712339    -0.99871591  -295.35897220    -0.02887066    -0.00061170  0.72D-04  0.74D-04 11581.57
    3    12    12     1.09721653    -0.99811654  -295.35720390    -0.02712642    -0.00056133  0.69D-04  0.69D-04 11581.57
    4     1     1     1.09600129    -1.01324096  -295.66989172    -0.00073835    -0.00005429  0.28D-05  0.72D-05 17300.38
    4     2     2     1.09600054    -1.01324088  -295.66989164    -0.00073870    -0.00005440  0.28D-05  0.72D-05 17300.38
    4     3     3     1.09598941    -1.01323896  -295.66988972    -0.00075267    -0.00005585  0.29D-05  0.74D-05 17300.38
    4     4     4     1.09635313    -0.99764493  -295.36423558    -0.00062031    -0.00004356  0.25D-05  0.70D-05 17300.38
    4     5     5     1.09635443    -0.99764484  -295.36423549    -0.00062378    -0.00004351  0.24D-05  0.70D-05 17300.38
    4     6     6     1.09635281    -0.99764432  -295.36423496    -0.00062475    -0.00004384  0.24D-05  0.70D-05 17300.38
    4     7     7     1.09634604    -0.99764359  -295.36423424    -0.00062816    -0.00004449  0.25D-05  0.71D-05 17300.38
    4     8     8     1.09634529    -0.99764346  -295.36423410    -0.00062843    -0.00004444  0.25D-05  0.71D-05 17300.38
    4     9     9     1.09681014    -0.99942011  -295.35967641    -0.00070141    -0.00004553  0.31D-05  0.71D-05 17300.38
    4    10    10     1.09680770    -0.99941963  -295.35967591    -0.00070340    -0.00004584  0.31D-05  0.72D-05 17300.38
    4    11    11     1.09680694    -0.99941940  -295.35967569    -0.00070349    -0.00004587  0.31D-05  0.72D-05 17300.38
    4    12    12     1.09697952    -0.99879424  -295.35788161    -0.00067771    -0.00004608  0.25D-05  0.72D-05 17300.38
    5     1     1     1.09664526    -1.01330714  -295.66995790    -0.00006618    -0.00000365  0.14D-06  0.48D-06 23014.81
    5     2     2     1.09664594    -1.01330712  -295.66995788    -0.00006625    -0.00000366  0.14D-06  0.48D-06 23014.81
    5     3     3     1.09664511    -1.01330700  -295.66995776    -0.00006804    -0.00000375  0.14D-06  0.49D-06 23014.81
    5     4     4     1.09673181    -0.99770261  -295.36429326    -0.00005768    -0.00000420  0.20D-06  0.64D-06 23014.81
    5     5     5     1.09673453    -0.99770255  -295.36429320    -0.00005771    -0.00000426  0.19D-06  0.65D-06 23014.81
    5     6     6     1.09673398    -0.99770249  -295.36429314    -0.00005818    -0.00000431  0.20D-06  0.66D-06 23014.81
    5     7     7     1.09673388    -0.99770245  -295.36429309    -0.00005885    -0.00000435  0.20D-06  0.66D-06 23014.81
    5     8     8     1.09673354    -0.99770243  -295.36429308    -0.00005897    -0.00000431  0.20D-06  0.65D-06 23014.81
    5     9     9     1.09712368    -0.99948003  -295.35973632    -0.00005992    -0.00000456  0.21D-06  0.71D-06 23014.81
    5    10    10     1.09712325    -0.99947998  -295.35973627    -0.00006035    -0.00000461  0.22D-06  0.72D-06 23014.81
    5    11    11     1.09712361    -0.99947991  -295.35973620    -0.00006051    -0.00000463  0.22D-06  0.72D-06 23014.81
    5    12    12     1.09738005    -0.99885500  -295.35794236    -0.00006076    -0.00000416  0.20D-06  0.62D-06 23014.81
    6     1     1     1.09668258    -1.01331154  -295.66996230    -0.00000440    -0.00000026  0.14D-07  0.34D-07 28718.65
    6     2     2     1.09668264    -1.01331154  -295.66996230    -0.00000442    -0.00000027  0.14D-07  0.34D-07 28718.65
    6     3     3     1.09668196    -1.01331153  -295.66996229    -0.00000453    -0.00000027  0.14D-07  0.35D-07 28718.65
    6     4     4     1.09678036    -0.99770797  -295.36429862    -0.00000536    -0.00000042  0.17D-07  0.66D-07 28718.65
    6     5     5     1.09678030    -0.99770797  -295.36429862    -0.00000542    -0.00000043  0.17D-07  0.67D-07 28718.65
    6     6     6     1.09678005    -0.99770797  -295.36429862    -0.00000548    -0.00000043  0.17D-07  0.67D-07 28718.65
    6     7     7     1.09677992    -0.99770793  -295.36429858    -0.00000548    -0.00000040  0.16D-07  0.64D-07 28718.65
    6     8     8     1.09677947    -0.99770790  -295.36429855    -0.00000547    -0.00000042  0.18D-07  0.66D-07 28718.65
    6     9     9     1.09717113    -0.99948588  -295.35974217    -0.00000585    -0.00000047  0.23D-07  0.74D-07 28718.65
    6    10    10     1.09717122    -0.99948588  -295.35974217    -0.00000590    -0.00000047  0.22D-07  0.73D-07 28718.65
    6    11    11     1.09717114    -0.99948585  -295.35974214    -0.00000595    -0.00000048  0.23D-07  0.75D-07 28718.65
    6    12    12     1.09742624    -0.99886019  -295.35794756    -0.00000519    -0.00000036  0.13D-07  0.58D-07 28718.65
    7     1     1     1.09669493    -1.01331186  -295.66996262    -0.00000032    -0.00000003  0.27D-08  0.33D-08 34444.80
    7     2     2     1.09669489    -1.01331186  -295.66996262    -0.00000032    -0.00000003  0.27D-08  0.33D-08 34444.80
    7     3     3     1.09669500    -1.01331186  -295.66996262    -0.00000032    -0.00000003  0.27D-08  0.32D-08 34444.80
    7     4     4     1.09679580    -0.99770852  -295.36429917    -0.00000055    -0.00000006  0.44D-08  0.79D-08 34444.80
    7     5     5     1.09679585    -0.99770852  -295.36429917    -0.00000055    -0.00000006  0.44D-08  0.79D-08 34444.80
    7     6     6     1.09679586    -0.99770852  -295.36429916    -0.00000054    -0.00000005  0.43D-08  0.78D-08 34444.80
    7     7     7     1.09679589    -0.99770845  -295.36429909    -0.00000052    -0.00000005  0.40D-08  0.74D-08 34444.80
    7     8     8     1.09679567    -0.99770844  -295.36429909    -0.00000054    -0.00000005  0.43D-08  0.76D-08 34444.80
    7     9     9     1.09718863    -0.99948649  -295.35974278    -0.00000060    -0.00000006  0.54D-08  0.90D-08 34444.80
    7    10    10     1.09718862    -0.99948647  -295.35974276    -0.00000060    -0.00000006  0.53D-08  0.88D-08 34444.80
    7    11    11     1.09718858    -0.99948646  -295.35974275    -0.00000061    -0.00000006  0.54D-08  0.91D-08 34444.80
    7    12    12     1.09744309    -0.99886066  -295.35794802    -0.00000046    -0.00000004  0.32D-08  0.64D-08 34444.80
    8     1     1     1.09669483    -1.01331186  -295.66996262    -0.00000000    -0.00000003  0.27D-08  0.32D-08 38382.81
    8     2     2     1.09669483    -1.01331186  -295.66996262    -0.00000000    -0.00000003  0.27D-08  0.32D-08 38382.81
    8     3     3     1.09669493    -1.01331186  -295.66996262    -0.00000000    -0.00000003  0.26D-08  0.32D-08 38382.81
    8     4     4     1.09679494    -0.99770859  -295.36429924    -0.00000007    -0.00000001  0.35D-09  0.12D-08 38382.81
    8     5     5     1.09679494    -0.99770859  -295.36429924    -0.00000007    -0.00000001  0.35D-09  0.12D-08 38382.81
    8     6     6     1.09679498    -0.99770858  -295.36429923    -0.00000007    -0.00000001  0.34D-09  0.11D-08 38382.81
    8     7     7     1.09679492    -0.99770851  -295.36429916    -0.00000007    -0.00000001  0.34D-09  0.11D-08 38382.81
    8     8     8     1.09679494    -0.99770851  -295.36429915    -0.00000007    -0.00000001  0.33D-09  0.11D-08 38382.81
    8     9     9     1.09718779    -0.99948657  -295.35974286    -0.00000008    -0.00000000  0.26D-09  0.73D-09 38382.81
    8    10    10     1.09718780    -0.99948656  -295.35974285    -0.00000008    -0.00000000  0.26D-09  0.72D-09 38382.81
    8    11    11     1.09718773    -0.99948655  -295.35974284    -0.00000009    -0.00000000  0.26D-09  0.74D-09 38382.81
    8    12    12     1.09744310    -0.99886066  -295.35794802    -0.00000000    -0.00000004  0.32D-08  0.64D-08 38382.81


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%  12.6%
 P   0.2%  34.9%  41.0%

 Initialization:   0.5%
 Other:           10.7%

 Total CPU:    38382.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222/000          -0.0019537  -0.0657800   0.9518954   0.0000000  -0.0000000   0.0000001  -0.0000000   0.0000000
                           -0.0004187   0.0178011  -0.0005324  -0.0000000
 22222222222//\00           0.0000000  -0.0000000  -0.0000000  -0.0032645   0.0119524  -0.0038231  -0.1681334   0.7545824
                            0.0000001  -0.0000000   0.0000000   0.5469928
 2222222222//200\          -0.0000000   0.0000000  -0.0000000  -0.0016857   0.0021790   0.0012931   0.7376222  -0.2318134
                            0.0000004   0.0000001   0.0000002   0.5469912
 2222222222/22000           0.6832137  -0.6645844  -0.0445234   0.0000001  -0.0000001  -0.0000000   0.0000000   0.0000000
                           -0.0178083  -0.0004137   0.0001705   0.0000000
 22222222222/2000           0.6660713   0.6814957   0.0484613   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                            0.0001580   0.0005362   0.0178051  -0.0000000
 2222222222/2/\00           0.0000196   0.0006603  -0.0095547   0.0685353   0.0052499   0.6660616   0.0001086   0.0036121
                           -0.0145728   0.6195932  -0.0185302   0.0000000
 22222222222//0\0           0.0000196   0.0006603  -0.0095547  -0.0685352  -0.0052499  -0.6660583  -0.0001087  -0.0036121
                           -0.0145728   0.6195968  -0.0185302  -0.0000001
 2222222222//20\0           0.0068578  -0.0066708  -0.0004469   0.2639266  -0.6148353  -0.0223780   0.0062824   0.0121672
                            0.6198521   0.0144014  -0.0059352  -0.0000003
 2222222222/2/00\           0.0068578  -0.0066708  -0.0004469  -0.2639299   0.6148429   0.0223783  -0.0062828  -0.0121673
                            0.6198431   0.0144011  -0.0059355  -0.0000001
 22222222222//00\           0.0066857   0.0068406   0.0004864   0.6115534   0.2648485  -0.0650043   0.0001491  -0.0018457
                           -0.0055007  -0.0186637  -0.6197398   0.0000002
 2222222222//2\00          -0.0066857  -0.0068405  -0.0004864   0.6115564   0.2648502  -0.0650046   0.0001490  -0.0018456
                            0.0055007   0.0186639   0.6197361  -0.0000001
 2222222222/2/0\0           0.0000000   0.0000000   0.0000000  -0.0049501   0.0141316  -0.0025299   0.5694845   0.5227677
                           -0.0000001   0.0000000  -0.0000001  -0.5469947
 2222222222022/00          -0.0071062   0.0069124   0.0004631   0.0000006  -0.0000013  -0.0000001   0.0000001   0.0000000
                           -0.2236401  -0.0051960   0.0021415   0.0000001
 22222222222020/0          -0.0069279  -0.0070884  -0.0005041   0.0000005   0.0000003  -0.0000000  -0.0000000   0.0000000
                            0.0019846   0.0067339   0.2236006  -0.0000000
 222222222222000/           0.0000203   0.0006842  -0.0099007   0.0000000  -0.0000000   0.0000005  -0.0000000   0.0000000
                           -0.0052578   0.2235489  -0.0066857  -0.0000000
 2222222222/\20/0           0.0017996  -0.0017505  -0.0001173   0.0034151  -0.0079557  -0.0002895   0.0000813   0.0001575
                            0.1912152   0.0044426  -0.0018310  -0.0000001
 2222222222/2\00/           0.0017995  -0.0017504  -0.0001173  -0.0034161   0.0079580   0.0002897  -0.0000814  -0.0001575
                            0.1912151   0.0044426  -0.0018310  -0.0000001
 2222222222/\2/00           0.0017544   0.0017950   0.0001276  -0.0079149  -0.0034278   0.0008413  -0.0000019   0.0000239
                           -0.0016969  -0.0057576  -0.1911813   0.0000000
 22222222222/\00/           0.0017543   0.0017950   0.0001276   0.0079139   0.0034272  -0.0008412   0.0000019  -0.0000239
                           -0.0016969  -0.0057576  -0.1911813   0.0000000
 2222222222/2\/00          -0.0000051  -0.0001733   0.0025072  -0.0008870  -0.0000679  -0.0086203  -0.0000014  -0.0000468
                            0.0044955  -0.1911373   0.0057163   0.0000000
 22222222222/\0/0          -0.0000051  -0.0001733   0.0025072   0.0008869   0.0000679   0.0086192   0.0000014   0.0000467
                            0.0044955  -0.1911372   0.0057163   0.0000000
 2222222222///0\\           0.0081768  -0.0079539  -0.0005329  -0.0000002   0.0000005   0.0000000  -0.0000000  -0.0000000
                            0.0714761   0.0016606  -0.0006844  -0.0000000
 2222222222///\0\          -0.0079717  -0.0081563  -0.0005800   0.0000002   0.0000001  -0.0000000  -0.0000000   0.0000000
                            0.0006343   0.0021522   0.0714634  -0.0000000
 2222222222///\\0          -0.0000234  -0.0007873   0.0113925  -0.0000000   0.0000000  -0.0000002   0.0000000  -0.0000000
                            0.0016804  -0.0714470   0.0021368   0.0000000
 222222222202/200           0.0000244   0.0008226  -0.0119035   0.0062392   0.0004779   0.0606360   0.0000099   0.0003288
                           -0.0011125   0.0472991  -0.0014146   0.0000000
 222222222220/020           0.0000244   0.0008226  -0.0119035  -0.0062392  -0.0004779  -0.0606357  -0.0000099  -0.0003288
                           -0.0011125   0.0472994  -0.0014146  -0.0000000
 2222222222/20002          -0.0085436   0.0083106   0.0005568   0.0240272  -0.0559730  -0.0020372   0.0005720   0.0011077
                           -0.0473181  -0.0010994   0.0004531   0.0000000
 2222222222/02020          -0.0085436   0.0083106   0.0005568  -0.0240270   0.0559726   0.0020372  -0.0005719  -0.0011077
                           -0.0473190  -0.0010994   0.0004531   0.0000000
 22222222220/2200          -0.0083292  -0.0085221  -0.0006060   0.0556741   0.0241111  -0.0059178   0.0000136  -0.0001680
                            0.0004199   0.0014248   0.0473100  -0.0000000
 22222222222/0002          -0.0083292  -0.0085221  -0.0006060  -0.0556738  -0.0241109   0.0059178  -0.0000136   0.0001680
                            0.0004199   0.0014248   0.0473103  -0.0000000
 2222222222/020/\          -0.0000000   0.0000000   0.0000000   0.0001302  -0.0001804  -0.0000899  -0.0544631   0.0160156
                           -0.0000000  -0.0000000  -0.0000000  -0.0389232
 22222222220/2/0\          -0.0000000  -0.0000000   0.0000000  -0.0001173   0.0001395   0.0000999   0.0538337  -0.0180190
                            0.0000000  -0.0000000   0.0000000   0.0389233
 2222222222//\002           0.0000000   0.0000000  -0.0000000  -0.0001220   0.0001577   0.0000936   0.0533745  -0.0167743
                            0.0000000   0.0000000   0.0000000   0.0383940

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.683525   -0.001955    0.666375    0.000000    0.000000    0.000000    0.000000   -0.000000    0.014981   -0.000044
            -0.015367    0.000000
 2          -0.664888   -0.065810    0.681807   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.015328   -0.001480
             0.014948   -0.000000
 3          -0.044544    0.952330    0.048483    0.000000    0.000000    0.000000   -0.000000    0.000000    0.001090    0.021410
             0.001001   -0.000000
 4          -0.000000   -0.000000   -0.000000   -0.001298    0.872057    0.097729   -0.376353   -0.006079    0.000002   -0.000000
            -0.000002   -0.000000
 5           0.000000    0.000000   -0.000000    0.007458    0.377667    0.007486    0.876740    0.017248    0.000001   -0.000000
             0.000005   -0.000000
 6           0.000000   -0.000000    0.000000   -0.003735   -0.092694    0.949780    0.031911   -0.003020   -0.000000    0.000002
             0.000000   -0.000000
 7          -0.000000    0.000000    0.000000   -0.625670    0.000213    0.000155   -0.008959    0.721229   -0.000000   -0.000000
            -0.000000    0.000002
 8           0.000000   -0.000000   -0.000000    0.721235   -0.002632    0.005151   -0.017350    0.625460    0.000000    0.000000
            -0.000000    0.000000
 9           0.021663    0.000509   -0.000192   -0.000000    0.000000   -0.000000   -0.000006    0.000000    0.008467   -0.022431
             0.954102    0.000000
 10          0.000503   -0.021654   -0.000652   -0.000000    0.000000   -0.000002   -0.000000    0.000000    0.028728    0.953714
             0.022167    0.000000
 11         -0.000207    0.000648   -0.021659   -0.000000   -0.000003    0.000000   -0.000000   -0.000000    0.953934   -0.028523
            -0.009136    0.000000
 12         -0.000000    0.000000    0.000000    0.000001    0.000000    0.000000    0.000000   -0.000002   -0.000000   -0.000000
            -0.000000    0.954557

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954844    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000076   -0.000000
            -0.000075   -0.000000
 2           0.000000    0.954844    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000075    0.000003
            -0.000076   -0.000000
 3           0.000000    0.000000    0.954844    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000003   -0.000106
            -0.000002   -0.000000
 4           0.000000   -0.000000    0.000000    0.954838    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.954838    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.954838    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000
 7           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.954838   -0.000000    0.000000    0.000000
            -0.000000    0.000000
 8           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.954838    0.000000   -0.000000
            -0.000000    0.000000
 9           0.000076   -0.000075   -0.000003    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.954650    0.000000
             0.000000   -0.000000
 10         -0.000000    0.000003   -0.000106   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.954650
             0.000000   -0.000000
 11         -0.000075   -0.000076   -0.000002    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.954650   -0.000000
 12         -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.954557


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.68352545 (fixed)   0.95489063 (relaxed)   0.95484415 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011333   -0.00008997   -0.89261069
 Singles      0.00875631   -0.03439422   -0.03944083
 Pairs        0.08794948   -0.00000000   -0.08126034
 Total        1.09681913   -0.03448419   -1.01331186
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65649954
 Nuclear energy                         0.00000000
 Kinetic energy                       111.87258256
 One electron energy                 -513.44968432
 Two electron energy                  217.77972170
 Virial quotient                       -2.64291711
 Correlation energy                    -1.01346308
 !MRCI STATE 1.2 Energy              -295.669962620015

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.76808523 (Davidson, fixed reference)
 Cluster corrected energies          -295.76797701 (Davidson, relaxed reference)
 Cluster corrected energies          -295.76808523 (Davidson, rotated reference)

 Cluster corrected energies          -295.76771955 (Pople, fixed reference)
 Cluster corrected energies          -295.76760248 (Pople, relaxed reference)
 Cluster corrected energies          -295.76771955 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.68180666 (fixed)   0.95489064 (relaxed)   0.95484415 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011333   -0.00008997   -0.89261070
 Singles      0.00875632   -0.03439422   -0.03944083
 Pairs        0.08794947    0.00000000   -0.08126033
 Total        1.09681912   -0.03448420   -1.01331186
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65649954
 Nuclear energy                         0.00000000
 Kinetic energy                       111.87258245
 One electron energy                 -513.44968428
 Two electron energy                  217.77972166
 Virial quotient                       -2.64291711
 Correlation energy                    -1.01346308
 !MRCI STATE 2.2 Energy              -295.669962619778

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.76808522 (Davidson, fixed reference)
 Cluster corrected energies          -295.76797701 (Davidson, relaxed reference)
 Cluster corrected energies          -295.76808522 (Davidson, rotated reference)

 Cluster corrected energies          -295.76771954 (Pople, fixed reference)
 Cluster corrected energies          -295.76760248 (Pople, relaxed reference)
 Cluster corrected energies          -295.76771954 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95232974 (fixed)   0.95489059 (relaxed)   0.95484411 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011333   -0.00008997   -0.89261071
 Singles      0.00875626   -0.03439411   -0.03944074
 Pairs        0.08794963    0.00000000   -0.08126040
 Total        1.09681922   -0.03448408   -1.01331186
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65649954
 Nuclear energy                         0.00000000
 Kinetic energy                       111.87258343
 One electron energy                 -513.44968762
 Two electron energy                  217.77972500
 Virial quotient                       -2.64291709
 Correlation energy                    -1.01346307
 !MRCI STATE 3.2 Energy              -295.669962618146

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.76808533 (Davidson, fixed reference)
 Cluster corrected energies          -295.76797711 (Davidson, relaxed reference)
 Cluster corrected energies          -295.76808533 (Davidson, rotated reference)

 Cluster corrected energies          -295.76771965 (Pople, fixed reference)
 Cluster corrected energies          -295.76760259 (Pople, relaxed reference)
 Cluster corrected energies          -295.76771965 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.87205715 (fixed)   0.95484451 (relaxed)   0.95483761 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003576   -0.00012528   -0.85992577
 Singles      0.01643124   -0.05454834   -0.06468113
 Pairs        0.08036716    0.00000003   -0.07310169
 Total        1.09683416   -0.05467359   -0.99770859
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36659065
 Nuclear energy                         0.00000000
 Kinetic energy                       111.50789940
 One electron energy                 -507.93538813
 Two electron energy                  212.57108889
 Virial quotient                       -2.64881951
 Correlation energy                    -0.99770859
 !MRCI STATE 4.2 Energy              -295.364299239426

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46091151 (Davidson, fixed reference)
 Cluster corrected energies          -295.46089570 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46091151 (Davidson, rotated reference)

 Cluster corrected energies          -295.46055275 (Pople, fixed reference)
 Cluster corrected energies          -295.46053564 (Pople, relaxed reference)
 Cluster corrected energies          -295.46055275 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.87674039 (fixed)   0.95484450 (relaxed)   0.95483760 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003576   -0.00012528   -0.85992585
 Singles      0.01643124   -0.05454835   -0.06468113
 Pairs        0.08036717    0.00000014   -0.07310160
 Total        1.09683417   -0.05467349   -0.99770859
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36659065
 Nuclear energy                         0.00000000
 Kinetic energy                       111.50789989
 One electron energy                 -507.93538835
 Two electron energy                  212.57108912
 Virial quotient                       -2.64881950
 Correlation energy                    -0.99770859
 !MRCI STATE 5.2 Energy              -295.364299238144

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46091152 (Davidson, fixed reference)
 Cluster corrected energies          -295.46089571 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46091152 (Davidson, rotated reference)

 Cluster corrected energies          -295.46055275 (Pople, fixed reference)
 Cluster corrected energies          -295.46053565 (Pople, relaxed reference)
 Cluster corrected energies          -295.46055275 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.94977958 (fixed)   0.95484449 (relaxed)   0.95483759 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003576   -0.00012528   -0.85992575
 Singles      0.01643126   -0.05454837   -0.06468113
 Pairs        0.08036718    0.00000008   -0.07310170
 Total        1.09683420   -0.05467356   -0.99770858
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36659065
 Nuclear energy                         0.00000000
 Kinetic energy                       111.50789960
 One electron energy                 -507.93538889
 Two electron energy                  212.57108966
 Virial quotient                       -2.64881950
 Correlation energy                    -0.99770858
 !MRCI STATE 6.2 Energy              -295.364299230618

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46091155 (Davidson, fixed reference)
 Cluster corrected energies          -295.46089574 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46091155 (Davidson, rotated reference)

 Cluster corrected energies          -295.46055278 (Pople, fixed reference)
 Cluster corrected energies          -295.46053568 (Pople, relaxed reference)
 Cluster corrected energies          -295.46055278 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.72122894 (fixed)   0.95484451 (relaxed)   0.95483761 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003576   -0.00012528   -0.85992386
 Singles      0.01643118   -0.05454825   -0.06468097
 Pairs        0.08036720   -0.00000209   -0.07310368
 Total        1.09683415   -0.05467562   -0.99770851
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36659065
 Nuclear energy                         0.00000000
 Kinetic energy                       111.50789818
 One electron energy                 -507.93538726
 Two electron energy                  212.57108810
 Virial quotient                       -2.64881954
 Correlation energy                    -0.99770851
 !MRCI STATE 7.2 Energy              -295.364299158126

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46091141 (Davidson, fixed reference)
 Cluster corrected energies          -295.46089560 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46091141 (Davidson, rotated reference)

 Cluster corrected energies          -295.46055265 (Pople, fixed reference)
 Cluster corrected energies          -295.46053554 (Pople, relaxed reference)
 Cluster corrected energies          -295.46055265 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.72123525 (fixed)   0.95484450 (relaxed)   0.95483761 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003576   -0.00012528   -0.85992541
 Singles      0.01643121   -0.05454829   -0.06468099
 Pairs        0.08036719   -0.00000033   -0.07310211
 Total        1.09683417   -0.05467391   -0.99770851
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36659065
 Nuclear energy                         0.00000000
 Kinetic energy                       111.50789936
 One electron energy                 -507.93538782
 Two electron energy                  212.57108867
 Virial quotient                       -2.64881951
 Correlation energy                    -0.99770851
 !MRCI STATE 8.2 Energy              -295.364299153153

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46091142 (Davidson, fixed reference)
 Cluster corrected energies          -295.46089561 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46091142 (Davidson, rotated reference)

 Cluster corrected energies          -295.46055266 (Pople, fixed reference)
 Cluster corrected energies          -295.46053555 (Pople, relaxed reference)
 Cluster corrected energies          -295.46055266 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95410241 (fixed)   0.95466702 (relaxed)   0.95464957 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007155   -0.00018296   -0.86074736
 Singles      0.01673926   -0.05508869   -0.06545513
 Pairs        0.08045548   -0.00000032   -0.07328408
 Total        1.09726629   -0.05527197   -0.99948657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36040751
 Nuclear energy                         0.00000000
 Kinetic energy                       111.52524966
 One electron energy                 -508.02837614
 Two electron energy                  212.66863328
 Virial quotient                       -2.64836657
 Correlation energy                    -0.99933536
 !MRCI STATE 9.2 Energy              -295.359742864072

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.45694451 (Davidson, fixed reference)
 Cluster corrected energies          -295.45690442 (Davidson, relaxed reference)
 Cluster corrected energies          -295.45694451 (Davidson, rotated reference)

 Cluster corrected energies          -295.45662070 (Pople, fixed reference)
 Cluster corrected energies          -295.45657730 (Pople, relaxed reference)
 Cluster corrected energies          -295.45662070 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Coefficient of reference function:   C(0) = 0.95371355 (fixed)   0.95466701 (relaxed)   0.95464956 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007155   -0.00018296   -0.86074757
 Singles      0.01673926   -0.05508870   -0.06545510
 Pairs        0.08045550   -0.00000006   -0.07328388
 Total        1.09726630   -0.05527171   -0.99948656
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36040751
 Nuclear energy                         0.00000000
 Kinetic energy                       111.52524935
 One electron energy                 -508.02837640
 Two electron energy                  212.66863355
 Virial quotient                       -2.64836658
 Correlation energy                    -0.99933534
 !MRCI STATE 10.2 Energy             -295.359742846830

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.45694450 (Davidson, fixed reference)
 Cluster corrected energies          -295.45690442 (Davidson, relaxed reference)
 Cluster corrected energies          -295.45694450 (Davidson, rotated reference)

 Cluster corrected energies          -295.45662070 (Pople, fixed reference)
 Cluster corrected energies          -295.45657730 (Pople, relaxed reference)
 Cluster corrected energies          -295.45662070 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95393359 (fixed)   0.95466705 (relaxed)   0.95464960 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007155   -0.00018296   -0.86074758
 Singles      0.01673924   -0.05508865   -0.06545509
 Pairs        0.08045544   -0.00000017   -0.07328389
 Total        1.09726623   -0.05527177   -0.99948655
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36040751
 Nuclear energy                         0.00000000
 Kinetic energy                       111.52524989
 One electron energy                 -508.02837566
 Two electron energy                  212.66863282
 Virial quotient                       -2.64836656
 Correlation energy                    -0.99933533
 !MRCI STATE 11.2 Energy             -295.359742839826

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.45694442 (Davidson, fixed reference)
 Cluster corrected energies          -295.45690433 (Davidson, relaxed reference)
 Cluster corrected energies          -295.45694442 (Davidson, rotated reference)

 Cluster corrected energies          -295.45662061 (Pople, fixed reference)
 Cluster corrected energies          -295.45657721 (Pople, relaxed reference)
 Cluster corrected energies          -295.45662061 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Coefficient of reference function:   C(0) = 0.95455662 (fixed)   0.95456225 (relaxed)   0.95455662 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003363   -0.00012576   -0.00014519
 Singles      0.01710230   -0.05582760   -0.06642635
 Pairs        0.08034407   -0.94290730   -0.93228911
 Total        1.09748000   -0.99886066   -0.99886066
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.35908736
 Nuclear energy                         0.00000000
 Kinetic energy                       111.50695763
 One electron energy                 -507.92571736
 Two electron energy                  212.56776934
 Virial quotient                       -2.64878492
 Correlation energy                    -0.99886066
 !MRCI STATE 12.2 Energy             -295.357948017597

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.45531696 (Davidson, fixed reference)
 Cluster corrected energies          -295.45530401 (Davidson, relaxed reference)
 Cluster corrected energies          -295.45531696 (Davidson, rotated reference)

 Cluster corrected energies          -295.45501101 (Pople, fixed reference)
 Cluster corrected energies          -295.45499699 (Pople, relaxed reference)
 Cluster corrected energies          -295.45501101 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     6410.47       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     41574.55  41546.85     11.96      2.45     12.94
 REAL TIME  *     42233.27 SEC
 DISK USED  *         6.35 GB (local),       52.37 GB (total)
 SF USED    *        61.89 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -295.76808523  AU                              
 SETTING HLSDIAG(2)     =      -295.76808522  AU                              
 SETTING HLSDIAG(3)     =      -295.76808533  AU                              
 SETTING HLSDIAG(4)     =      -295.46091151  AU                              
 SETTING HLSDIAG(5)     =      -295.46091152  AU                              
 SETTING HLSDIAG(6)     =      -295.46091155  AU                              
 SETTING HLSDIAG(7)     =      -295.46091141  AU                              
 SETTING HLSDIAG(8)     =      -295.46091142  AU                              
 SETTING HLSDIAG(9)     =      -295.45694451  AU                              
 SETTING HLSDIAG(10)    =      -295.45694450  AU                              
 SETTING HLSDIAG(11)    =      -295.45694442  AU                              
 SETTING HLSDIAG(12)    =      -295.45531696  AU                              


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
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.37804758
     2      -294.37804757
     3      -294.37804757
     4      -294.37040573
     5      -294.37040573
     6      -294.37040573
     7      -294.37040573
     8      -294.37040573
     9      -294.35951158

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1960D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1346D-06

 Number of blocks in overlap matrix:   913   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    2185
 Number of N-1 electron functions:  107720

 Number of internal configurations:                21432
 Number of singly external configurations:      14274340
 Number of doubly external configurations:      38362303
 Total number of contracted configurations:     52658075
 Total number of uncontracted configurations: 1936062556

 Diagonal Coupling coefficients finished.               Storage:  19082439 words, CPU-Time:     63.18 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4343020 words, CPU-time:      5.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.37804758     0.00000000    -1.16807967  0.43D-01  0.11D+00    80.03
    1     2     2     1.00000000     0.00000000  -294.37804757     0.00000000    -1.16789463  0.43D-01  0.11D+00    80.03
    1     3     3     1.00000000     0.00000000  -294.37804757     0.00000000    -1.16789032  0.43D-01  0.11D+00    80.03
    1     4     4     1.00000000     0.00000000  -294.37040573    -0.00000000    -1.17025824  0.44D-01  0.12D+00    80.03
    1     5     5     1.00000000     0.00000000  -294.37040573     0.00000000    -1.16934819  0.44D-01  0.11D+00    80.03
    1     6     6     1.00000000     0.00000000  -294.37040573    -0.00000000    -1.16932229  0.44D-01  0.11D+00    80.03
    1     7     7     1.00000000     0.00000000  -294.37040573     0.00000000    -1.16929605  0.44D-01  0.11D+00    80.03
    1     8     8     1.00000000     0.00000000  -294.37040573     0.00000000    -1.17435508  0.44D-01  0.12D+00    80.03
    1     9     9     1.00000000     0.00000000  -294.35951158     0.00000000    -1.17667618  0.49D-01  0.12D+00    80.03
    2     1     1     1.10851698    -0.97002545  -295.34807302    -0.97002545    -0.02568815  0.32D-02  0.18D-02  2900.30
    2     2     2     1.10845130    -0.97002493  -295.34807250    -0.97002493    -0.02566567  0.32D-02  0.18D-02  2900.30
    2     3     3     1.10847461    -0.96996483  -295.34801241    -0.96996483    -0.02572261  0.32D-02  0.18D-02  2900.30
    2     4     4     1.10971583    -0.97131502  -295.34172075    -0.97131502    -0.02549246  0.33D-02  0.18D-02  2900.30
    2     5     5     1.10959859    -0.97076697  -295.34117270    -0.97076697    -0.02590504  0.34D-02  0.18D-02  2900.30
    2     6     6     1.10962357    -0.97073460  -295.34114032    -0.97073460    -0.02593493  0.34D-02  0.18D-02  2900.30
    2     7     7     1.10961611    -0.97072580  -295.34113153    -0.97072580    -0.02593758  0.34D-02  0.18D-02  2900.30
    2     8     8     1.11055214    -0.97048332  -295.34088905    -0.97048332    -0.02638571  0.33D-02  0.20D-02  2900.30
    2     9     9     1.11353413    -0.97044676  -295.32995835    -0.97044676    -0.02737188  0.42D-02  0.20D-02  2900.30
    3     1     1     1.09522833    -0.99501729  -295.37306487    -0.02499185    -0.00049143  0.44D-04  0.61D-04  5738.10
    3     2     2     1.09520157    -0.99500740  -295.37305498    -0.02498248    -0.00049575  0.44D-04  0.62D-04  5738.10
    3     3     3     1.09519247    -0.99500036  -295.37304794    -0.02503553    -0.00049993  0.44D-04  0.63D-04  5738.10
    3     4     4     1.09598383    -0.99621604  -295.36662178    -0.02490103    -0.00049423  0.60D-04  0.58D-04  5738.10
    3     5     5     1.09602424    -0.99619639  -295.36660213    -0.02542942    -0.00050738  0.59D-04  0.62D-04  5738.10
    3     6     6     1.09575117    -0.99614035  -295.36654607    -0.02540575    -0.00053535  0.60D-04  0.66D-04  5738.10
    3     7     7     1.09574653    -0.99613687  -295.36654260    -0.02541107    -0.00053743  0.61D-04  0.66D-04  5738.10
    3     8     8     1.09574197    -0.99613393  -295.36653966    -0.02565061    -0.00053888  0.61D-04  0.66D-04  5738.10
    3     9     9     1.09682134    -0.99751730  -295.35702888    -0.02707053    -0.00057532  0.87D-04  0.68D-04  5738.10
    4     1     1     1.09539184    -0.99561153  -295.37365910    -0.00059423    -0.00004492  0.19D-05  0.70D-05  8586.91
    4     2     2     1.09538084    -0.99560956  -295.37365713    -0.00060215    -0.00004618  0.19D-05  0.71D-05  8586.91
    4     3     3     1.09537617    -0.99560835  -295.37365593    -0.00060799    -0.00004702  0.20D-05  0.72D-05  8586.91
    4     4     4     1.09597285    -0.99680324  -295.36720897    -0.00058719    -0.00004077  0.19D-05  0.65D-05  8586.91
    4     5     5     1.09595687    -0.99680054  -295.36720627    -0.00060415    -0.00004226  0.19D-05  0.68D-05  8586.91
    4     6     6     1.09589576    -0.99679125  -295.36719697    -0.00065090    -0.00004880  0.22D-05  0.75D-05  8586.91
    4     7     7     1.09589237    -0.99679063  -295.36719635    -0.00065375    -0.00004919  0.22D-05  0.76D-05  8586.91
    4     8     8     1.09589085    -0.99679010  -295.36719583    -0.00065617    -0.00004953  0.22D-05  0.76D-05  8586.91
    4     9     9     1.09667448    -0.99820446  -295.35771605    -0.00068717    -0.00004567  0.22D-05  0.73D-05  8586.91
    5     1     1     1.09584623    -0.99567254  -295.37372011    -0.00006101    -0.00000417  0.21D-06  0.56D-06 11432.70
    5     2     2     1.09584607    -0.99567235  -295.37371992    -0.00006279    -0.00000428  0.21D-06  0.57D-06 11432.70
    5     3     3     1.09584576    -0.99567232  -295.37371990    -0.00006397    -0.00000436  0.22D-06  0.57D-06 11432.70
    5     4     4     1.09638813    -0.99685777  -295.36726350    -0.00005453    -0.00000382  0.23D-06  0.53D-06 11432.70
    5     5     5     1.09638746    -0.99685749  -295.36726322    -0.00005695    -0.00000398  0.24D-06  0.55D-06 11432.70
    5     6     6     1.09639143    -0.99685709  -295.36726282    -0.00006585    -0.00000456  0.27D-06  0.61D-06 11432.70
    5     7     7     1.09639089    -0.99685705  -295.36726278    -0.00006642    -0.00000461  0.28D-06  0.61D-06 11432.70
    5     8     8     1.09639126    -0.99685701  -295.36726274    -0.00006691    -0.00000464  0.28D-06  0.61D-06 11432.70
    5     9     9     1.09713972    -0.99826554  -295.35777713    -0.00006108    -0.00000426  0.27D-06  0.60D-06 11432.70
    6     1     1     1.09588133    -0.99567763  -295.37372521    -0.00000510    -0.00000034  0.15D-07  0.48D-07 14272.08
    6     2     2     1.09588220    -0.99567763  -295.37372521    -0.00000529    -0.00000033  0.14D-07  0.47D-07 14272.08
    6     3     3     1.09588149    -0.99567756  -295.37372513    -0.00000524    -0.00000033  0.15D-07  0.47D-07 14272.08
    6     4     4     1.09643405    -0.99686266  -295.36726839    -0.00000489    -0.00000036  0.17D-07  0.52D-07 14272.08
    6     5     5     1.09643397    -0.99686265  -295.36726839    -0.00000517    -0.00000036  0.17D-07  0.52D-07 14272.08
    6     6     6     1.09643419    -0.99686265  -295.36726838    -0.00000556    -0.00000035  0.17D-07  0.51D-07 14272.08
    6     7     7     1.09643668    -0.99686251  -295.36726824    -0.00000546    -0.00000031  0.15D-07  0.47D-07 14272.08
    6     8     8     1.09643604    -0.99686236  -295.36726809    -0.00000535    -0.00000031  0.15D-07  0.47D-07 14272.08
    6     9     9     1.09719161    -0.99827082  -295.35778241    -0.00000528    -0.00000036  0.16D-07  0.57D-07 14272.08
    7     1     1     1.09589354    -0.99567805  -295.37372562    -0.00000041    -0.00000004  0.29D-08  0.51D-08 17111.69
    7     2     2     1.09589377    -0.99567803  -295.37372561    -0.00000040    -0.00000004  0.28D-08  0.51D-08 17111.69
    7     3     3     1.09589349    -0.99567796  -295.37372554    -0.00000041    -0.00000004  0.28D-08  0.50D-08 17111.69
    7     4     4     1.09644792    -0.99686310  -295.36726883    -0.00000044    -0.00000004  0.31D-08  0.55D-08 17111.69
    7     5     5     1.09644791    -0.99686310  -295.36726883    -0.00000044    -0.00000004  0.31D-08  0.55D-08 17111.69
    7     6     6     1.09644797    -0.99686308  -295.36726881    -0.00000044    -0.00000004  0.31D-08  0.54D-08 17111.69
    7     7     7     1.09644914    -0.99686290  -295.36726863    -0.00000039    -0.00000004  0.26D-08  0.51D-08 17111.69
    7     8     8     1.09644874    -0.99686275  -295.36726848    -0.00000039    -0.00000004  0.27D-08  0.50D-08 17111.69
    7     9     9     1.09720593    -0.99827128  -295.35778287    -0.00000046    -0.00000004  0.31D-08  0.65D-08 17111.69


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%  17.4%
 P   0.2%  32.3%  37.9%

 Initialization:   0.4%
 Other:           11.6%

 Total CPU:    17111.7 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//200/           0.0000000   0.0000005   0.0000000  -0.0016354  -0.0011101   0.0000822   0.0508731   0.7732030
                            0.5471322
 2222222222/2/0/0           0.0000001   0.0000002   0.0000001   0.0021753  -0.0030809  -0.0027296   0.6950342   0.3425488
                           -0.5471327
 2222222222//2/00           0.0029254   0.6717023  -0.0093897  -0.1131050   0.6613767   0.0100159   0.0030753   0.0005064
                            0.0000001
 22222222222//00/          -0.0029251  -0.6716955   0.0093897  -0.1131062   0.6613837   0.0100160   0.0030753   0.0005073
                            0.0000001
 2222222222//20/0           0.6715401  -0.0031676  -0.0173863  -0.6597515  -0.1135404   0.0463823   0.0025985  -0.0017344
                            0.0000000
 2222222222/2/00/           0.6715368  -0.0031676  -0.0173855   0.6597547   0.1135406  -0.0463827  -0.0025986   0.0017344
                           -0.0000000
 2222222222/2//00           0.0174285   0.0093108   0.6714842   0.0474199  -0.0020393   0.6693743   0.0025408  -0.0001410
                            0.0000000
 22222222222//0/0           0.0174281   0.0093107   0.6714763  -0.0474211   0.0020391  -0.6693823  -0.0025410   0.0001410
                           -0.0000000
 22222222222///00           0.0000000  -0.0000003   0.0000001   0.0038108  -0.0019710  -0.0028119   0.6441632  -0.4306547
                            0.5471310
 2222222222/\///0           0.0000000   0.0000000   0.0000003   0.0045282  -0.0001947   0.0639187   0.0002426  -0.0000135
                           -0.0000000
 2222222222//\/0/          -0.0000809  -0.0185846   0.0002598   0.0093534  -0.0546937  -0.0008283  -0.0002543  -0.0000419
                           -0.0000000
 2222222222//\0//          -0.0185802   0.0000876   0.0004811   0.0545593   0.0093894  -0.0038357  -0.0002149   0.0001434
                           -0.0000000
 2222222222/020//          -0.0000000  -0.0000000   0.0000000   0.0001230   0.0000685  -0.0000148  -0.0013151  -0.0536251
                           -0.0405842
 22222222220/2/0/           0.0000000   0.0000000   0.0000000  -0.0001033  -0.0000851  -0.0000034   0.0057225   0.0533352
                            0.0405843

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.004160    0.024782    0.954901   -0.000000    0.000000    0.000000   -0.000003    0.000000   -0.000000
 2           0.955129    0.013239   -0.004504   -0.000001    0.000005    0.000000    0.000000    0.000000   -0.000000
 3          -0.013352    0.954819   -0.024722    0.000000   -0.000000    0.000005    0.000001    0.000000   -0.000000
 4           0.000001   -0.000001    0.000003    0.003950   -0.160960    0.067484    0.938894    0.002570    0.000000
 5          -0.000005   -0.000000    0.000000   -0.000720    0.941209   -0.002902    0.161579   -0.003778   -0.000000
 6          -0.000000   -0.000005   -0.000000   -0.002154    0.014254    0.952591   -0.066007   -0.003304   -0.000000
 7           0.000000   -0.000000   -0.000000    0.446233    0.004376    0.003616   -0.003698    0.844296    0.000001
 8          -0.000001   -0.000000   -0.000000   -0.844311    0.000721   -0.000201    0.002468    0.446249   -0.000000
 9           0.000000    0.000000    0.000000   -0.000001    0.000000    0.000000   -0.000000   -0.000001    0.954657

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955232   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.955232    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.955232   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.954990   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.954990    0.000000    0.000000    0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.954990    0.000000    0.000000    0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.954990   -0.000000    0.000000
 8          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.954990    0.000000
 9           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.954657


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95490125 (fixed)   0.95524006 (relaxed)   0.95523184 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003237   -0.00009768   -0.85899276
 Singles      0.01610342   -0.05431520   -0.06418257
 Pairs        0.07979322    0.00000001   -0.07250271
 Total        1.09592901   -0.05441287   -0.99567805
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37804757
 Nuclear energy                         0.00000000
 Kinetic energy                       111.49463614
 One electron energy                 -507.89492388
 Two electron energy                  212.52119826
 Virial quotient                       -2.64921915
 Correlation energy                    -0.99567805
 !MRCI STATE 1.2 Energy              -295.373725622781

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46924003 (Davidson, fixed reference)
 Cluster corrected energies          -295.46922125 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46924003 (Davidson, rotated reference)

 Cluster corrected energies          -295.46786829 (Pople, fixed reference)
 Cluster corrected energies          -295.46784823 (Pople, relaxed reference)
 Cluster corrected energies          -295.46786829 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95512936 (fixed)   0.95523996 (relaxed)   0.95523173 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003237   -0.00009768   -0.85899278
 Singles      0.01610328   -0.05431497   -0.06418240
 Pairs        0.07979359    0.00000001   -0.07250286
 Total        1.09592924   -0.05441264   -0.99567803
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37804758
 Nuclear energy                         0.00000000
 Kinetic energy                       111.49462976
 One electron energy                 -507.89491697
 Two electron energy                  212.52119136
 Virial quotient                       -2.64921931
 Correlation energy                    -0.99567803
 !MRCI STATE 2.2 Energy              -295.373725606771

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46924025 (Davidson, fixed reference)
 Cluster corrected energies          -295.46922146 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46924025 (Davidson, rotated reference)

 Cluster corrected energies          -295.46786852 (Pople, fixed reference)
 Cluster corrected energies          -295.46784846 (Pople, relaxed reference)
 Cluster corrected energies          -295.46786852 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95481854 (fixed)   0.95524008 (relaxed)   0.95523185 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003237   -0.00009768   -0.85899294
 Singles      0.01610325   -0.05431495   -0.06418231
 Pairs        0.07979335    0.00000000   -0.07250271
 Total        1.09592897   -0.05441262   -0.99567796
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37804757
 Nuclear energy                         0.00000000
 Kinetic energy                       111.49463273
 One electron energy                 -507.89492258
 Two electron energy                  212.52119704
 Virial quotient                       -2.64921923
 Correlation energy                    -0.99567796
 !MRCI STATE 3.2 Energy              -295.373725538446

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46923990 (Davidson, fixed reference)
 Cluster corrected energies          -295.46922111 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46923990 (Davidson, rotated reference)

 Cluster corrected energies          -295.46786815 (Pople, fixed reference)
 Cluster corrected energies          -295.46784809 (Pople, relaxed reference)
 Cluster corrected energies          -295.46786815 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.93889382 (fixed)   0.95499716 (relaxed)   0.95499014 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003272   -0.00010987   -0.85924189
 Singles      0.01639551   -0.05475087   -0.06483032
 Pairs        0.08005557   -0.00000004   -0.07279089
 Total        1.09648380   -0.05486077   -0.99686310
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37040573
 Nuclear energy                         0.00000000
 Kinetic energy                       111.50002082
 One electron energy                 -507.90950137
 Two electron energy                  212.54223254
 Virial quotient                       -2.64903331
 Correlation energy                    -0.99686310
 !MRCI STATE 4.2 Energy              -295.367268830917

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46344997 (Davidson, fixed reference)
 Cluster corrected energies          -295.46343392 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46344997 (Davidson, rotated reference)

 Cluster corrected energies          -295.46211431 (Pople, fixed reference)
 Cluster corrected energies          -295.46209715 (Pople, relaxed reference)
 Cluster corrected energies          -295.46211431 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.94120937 (fixed)   0.95499716 (relaxed)   0.95499015 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003272   -0.00010987   -0.85924201
 Singles      0.01639551   -0.05475087   -0.06483033
 Pairs        0.08005555    0.00000009   -0.07279075
 Total        1.09648379   -0.05486064   -0.99686310
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37040573
 Nuclear energy                         0.00000000
 Kinetic energy                       111.50001988
 One electron energy                 -507.90950022
 Two electron energy                  212.54223139
 Virial quotient                       -2.64903333
 Correlation energy                    -0.99686310
 !MRCI STATE 5.2 Energy              -295.367268827083

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46344996 (Davidson, fixed reference)
 Cluster corrected energies          -295.46343390 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46344996 (Davidson, rotated reference)

 Cluster corrected energies          -295.46211429 (Pople, fixed reference)
 Cluster corrected energies          -295.46209713 (Pople, relaxed reference)
 Cluster corrected energies          -295.46211429 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95259146 (fixed)   0.95499714 (relaxed)   0.95499012 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003272   -0.00010987   -0.85924205
 Singles      0.01639543   -0.05475073   -0.06483020
 Pairs        0.08005570    0.00000006   -0.07279084
 Total        1.09648385   -0.05486054   -0.99686308
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37040573
 Nuclear energy                         0.00000000
 Kinetic energy                       111.50001751
 One electron energy                 -507.90949996
 Two electron energy                  212.54223115
 Virial quotient                       -2.64903338
 Correlation energy                    -0.99686308
 !MRCI STATE 6.2 Energy              -295.367268812810

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46345000 (Davidson, fixed reference)
 Cluster corrected energies          -295.46343395 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46345000 (Davidson, rotated reference)

 Cluster corrected energies          -295.46211434 (Pople, fixed reference)
 Cluster corrected energies          -295.46209718 (Pople, relaxed reference)
 Cluster corrected energies          -295.46211434 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.84429593 (fixed)   0.95499663 (relaxed)   0.95498962 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003272   -0.00010984   -0.85924117
 Singles      0.01639474   -0.05474944   -0.06482919
 Pairs        0.08005756   -0.00000100   -0.07279254
 Total        1.09648502   -0.05486028   -0.99686290
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37040573
 Nuclear energy                         0.00000000
 Kinetic energy                       111.49999861
 One electron energy                 -507.90947912
 Two electron energy                  212.54221049
 Virial quotient                       -2.64903383
 Correlation energy                    -0.99686290
 !MRCI STATE 7.2 Energy              -295.367268629168

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46345096 (Davidson, fixed reference)
 Cluster corrected energies          -295.46343490 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46345096 (Davidson, rotated reference)

 Cluster corrected energies          -295.46211538 (Pople, fixed reference)
 Cluster corrected energies          -295.46209822 (Pople, relaxed reference)
 Cluster corrected energies          -295.46211538 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.84431102 (fixed)   0.95499681 (relaxed)   0.95498979 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003272   -0.00010984   -0.85924266
 Singles      0.01639473   -0.05474952   -0.06482907
 Pairs        0.08005716    0.00000051   -0.07279102
 Total        1.09648462   -0.05485885   -0.99686275
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37040573
 Nuclear energy                         0.00000000
 Kinetic energy                       111.49999901
 One electron energy                 -507.90948344
 Two electron energy                  212.54221496
 Virial quotient                       -2.64903382
 Correlation energy                    -0.99686275
 !MRCI STATE 8.2 Energy              -295.367268478317

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.46345040 (Davidson, fixed reference)
 Cluster corrected energies          -295.46343434 (Davidson, relaxed reference)
 Cluster corrected energies          -295.46345040 (Davidson, rotated reference)

 Cluster corrected energies          -295.46211479 (Pople, fixed reference)
 Cluster corrected energies          -295.46209762 (Pople, relaxed reference)
 Cluster corrected energies          -295.46211479 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95465720 (fixed)   0.95466791 (relaxed)   0.95465720 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003902   -0.00010611   -0.00013221
 Singles      0.01679846   -0.05508292   -0.06547659
 Pairs        0.08041126   -0.94308226   -0.93266249
 Total        1.09724875   -0.99827128   -0.99827128
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.35951158
 Nuclear energy                         0.00000000
 Kinetic energy                       111.50518306
 One electron energy                 -507.91793624
 Two electron energy                  212.56015338
 Virial quotient                       -2.64882559
 Correlation energy                    -0.99827128
 !MRCI STATE 9.2 Energy              -295.357782867085

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.45486350 (Davidson, fixed reference)
 Cluster corrected energies          -295.45483894 (Davidson, relaxed reference)
 Cluster corrected energies          -295.45486350 (Davidson, rotated reference)

 Cluster corrected energies          -295.45357894 (Pople, fixed reference)
 Cluster corrected energies          -295.45355265 (Pople, relaxed reference)
 Cluster corrected energies          -295.45357894 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7    10039.57       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     59584.36  18009.79  41546.85     11.96      2.45     12.94
 REAL TIME  *     60536.92 SEC
 DISK USED  *         9.90 GB (local),       80.72 GB (total)
 SF USED    *        61.89 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -295.46924003  AU                              
 SETTING HLSDIAG(14)    =      -295.46924025  AU                              
 SETTING HLSDIAG(15)    =      -295.46923990  AU                              
 SETTING HLSDIAG(16)    =      -295.46344997  AU                              
 SETTING HLSDIAG(17)    =      -295.46344996  AU                              
 SETTING HLSDIAG(18)    =      -295.46345000  AU                              
 SETTING HLSDIAG(19)    =      -295.46345096  AU                              
 SETTING HLSDIAG(20)    =      -295.46345040  AU                              
 SETTING HLSDIAG(21)    =      -295.45486350  AU                              


         HLSDIAG
    -295.7680852
    -295.7680852
    -295.7680853
    -295.4609115
    -295.4609115
    -295.4609115
    -295.4609114
    -295.4609114
    -295.4569445
    -295.4569445
    -295.4569444
    -295.4553170
    -295.4692400
    -295.4692402
    -295.4692399
    -295.4634500
    -295.4634500
    -295.4634500
    -295.4634510
    -295.4634504
    -295.4548635
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=  12

 Original energies:   -295.669963   -295.669963   -295.669963   -295.364299   -295.364299   -295.364299   -295.364299   -295.364299
                      -295.359743   -295.359743   -295.359743   -295.357948
 Replaced energies:   -295.768085   -295.768085   -295.768085   -295.460912   -295.460912   -295.460912   -295.460911   -295.460911
                      -295.456945   -295.456945   -295.456944   -295.455317

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -295.373726   -295.373726   -295.373726   -295.367269   -295.367269   -295.367269   -295.367269   -295.367268
                      -295.357783
 Replaced energies:   -295.469240   -295.469240   -295.469240   -295.463450   -295.463450   -295.463450   -295.463451   -295.463450
                      -295.454863



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -295.76808533

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -116.64    1741.00     -20.39       1.73    -185.40     -47.77     213.24      -1.41      60.05

    2   2.2  0.5  0.5       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          116.64       0.00    1789.80     -35.23     -12.03    -185.80      46.40    -209.37      -1.39      61.62

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1741.00   -1789.80      -0.00     240.60     104.44     -39.06       3.17     -14.76      -0.86       1.78

    4   4.2  0.5  0.5       0.00       0.00       0.00   67416.86       0.00       0.00       0.00       0.00       0.00       0.00
                           20.39      35.23    -240.60      -0.00     -31.57     882.36     740.27     169.91     -14.52     754.63

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   67416.86       0.00       0.00       0.00       0.00       0.00
                           -1.73      12.03    -104.44      31.57      -0.00     381.58   -1724.19    -382.10     -22.57     327.34

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   67416.85       0.00       0.00       0.00       0.00
                          185.40     185.80      39.06    -882.36    -381.58       0.00     -62.96     -11.80      -0.69    -105.20

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   67416.88       0.00       0.00       0.00
                           47.77     -46.40      -3.17    -740.27    1724.19      62.96      -0.00     -30.19     208.22       5.02

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   67416.88       0.00       0.00
                         -213.24     209.37      14.76    -169.91     382.10      11.80      30.19       0.00    -934.53     -24.13

    9   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   68287.52       0.00
                            1.41       1.39       0.86      14.52      22.57       0.69    -208.22     934.53      -0.00      -1.23

   10  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   68287.52
                          -60.05     -61.62      -1.78    -754.63    -327.34     105.20      -5.02      24.13       1.23       0.00

   11  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.62      -4.09      85.96     107.55      16.16     822.40       2.13      -4.54       2.98    -128.19

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          299.24    -291.08     -19.50      -0.00       0.01       0.00      -0.00      -0.00    1779.53      41.34

   13   1.2  0.5 -0.5       0.00   -2493.67    -172.32    -246.69      94.99      24.65      -1.18      -3.03     -60.62      -3.25
                            0.00     126.95   -1785.30     -18.30      -4.90    -188.39    -157.67    -145.74       1.62     -61.59

   14   2.2  0.5 -0.5    2493.67      -0.00       5.12      94.11     247.33     -11.58      18.43     -10.29     -60.93       0.38
                         -126.95       0.00    1744.90      13.12      14.26     185.28    -161.42    -147.39       4.52      60.05

   15   3.2  0.5 -0.5     172.32      -5.12      -0.00       6.67      16.42      -1.26    -291.91      91.42      -4.33       0.02
                         1785.30   -1744.90      -0.00     105.77    -243.40       3.52      -8.98      -5.65     -85.94       2.02

   16   4.2  0.5 -0.5     246.69     -94.11      -6.67      -0.00     952.65     -18.25     -67.17    -204.87     754.45       9.84
                           18.30     -13.12    -105.77       0.00     -79.65    -387.33   -1187.41    1293.81      77.25     328.90

   17   5.2  0.5 -0.5     -94.99    -247.33     -16.42    -952.65      -0.00     135.79      -8.28     -18.66     334.83      27.85
                            4.90     -14.26     243.40      79.65       0.00     876.70    -514.40     565.37      24.25    -761.54

   18   6.2  0.5 -0.5     -24.65      11.58       1.26      18.25    -135.79      -0.00    -572.60   -1823.40     -80.22      -2.64
                          188.39    -185.28      -3.52     387.33    -876.70       0.00     135.29    -120.01     825.60      -8.44

   19   7.2  0.5 -0.5       1.18     -18.43     291.91      67.17       8.28     572.60      -0.00       2.78      21.59    -913.39
                          157.67     161.42       8.98    1187.41     514.40    -135.29      -0.00      -3.32      -6.31     -13.46

   20   8.2  0.5 -0.5       3.03      10.29     -91.42     204.87      18.66    1823.40      -2.78      -0.00      -9.17     286.47
                          145.74     147.39       5.65   -1293.81    -565.37     120.01       3.32      -0.00      -1.63      -4.33

   21   9.2  0.5 -0.5      60.62      60.93       4.33    -754.45    -334.83      80.22     -21.59       9.17      -0.00      -3.83
                           -1.62      -4.52      85.94     -77.25     -24.25    -825.60       6.31       1.63       0.00    -128.15

   22  10.2  0.5 -0.5       3.25      -0.38      -0.02      -9.84     -27.85       2.64     913.39    -286.47       3.83      -0.00
                           61.59     -60.05      -2.02    -328.90     761.54       8.44      13.46       4.33     128.15      -0.00

   23  11.2  0.5 -0.5      61.03     -60.51      -4.06     334.13    -758.28     -28.53     -19.53      23.63     128.14       3.01
                           -1.84       1.85      -0.70       4.46      -5.20       3.94     705.42     647.82      -3.86       1.14

   24  12.2  0.5 -0.5       0.86      28.81    -416.92      -0.00       0.00       0.00      -0.00      -0.00     -41.84    1778.81
                          291.73     298.49      21.23      -0.01      -0.00       0.00      -0.00      -0.00     -15.79     -53.58

   25   1.2  1.5  1.5     416.51     422.49      30.05    -568.28    -248.90      60.46      16.97      -4.09       5.13      34.27
                           -9.72      51.59    -591.86      70.00      -9.51     619.70      -1.93       1.54      56.67   -1140.48

   26   2.2  1.5  1.5     419.74    -412.20     -27.62     239.93    -551.54     -20.38      14.78       7.80   -1149.91     -26.88
                           -5.85       5.49       3.18       7.46     -20.54      -0.86    -500.98    -483.61      15.81       5.75

   27   3.2  1.5  1.5     -16.63      -5.25      -0.40      10.01      15.72      -0.04     658.55    -225.71      15.82      -0.51
                         -421.59     409.00      42.81     235.44    -552.42     -36.20      12.64      17.60    1148.83      56.25

   28   4.2  1.5  1.5    -489.38    -355.61     -27.06    -421.28    -281.77      50.47     -22.40     -68.28     -66.71      12.00
                          -30.62      69.40    -593.80     -62.55      33.43    -498.40    -122.45     127.08     -39.34     416.55

   29   5.2  1.5  1.5     353.11    -486.55     -33.90    -285.50     446.67      22.07      -3.94      -6.23     412.28      12.44
                            3.47       7.80    -102.46      -7.61      -9.86     -81.84     713.54    -763.44      -0.44      71.76

   30   6.2  1.5  1.5      35.73      23.71       1.79      35.13       0.53      -2.30    -326.70   -1007.10       5.98      -0.79
                         -428.43     417.21      70.03    -207.19     485.79      53.03       5.84     -20.98    -416.26     -39.07

   31   7.2  1.5  1.5       3.52      -3.42      45.93     103.97      10.83    1001.94      -1.11       1.57       2.67     -32.51
                         -441.38    -448.50     -29.54     406.93     178.31     -41.27       3.40      -4.81       2.39      11.69

   32   8.2  1.5  1.5      -2.20     -49.71     698.51      -8.13      -0.66     -65.66       0.06      -0.15      11.98    -495.50
                         -216.42    -221.51     -17.32    -826.59    -358.06      86.54       0.35       1.91       2.00       7.66

   33   9.2  1.5  1.5       2.12      71.27   -1031.37       0.03       0.00       0.27       0.00      -0.00      -5.65     240.46
                         -721.71    -738.42     -52.51      -0.32      -0.14       0.03       0.00       0.00       2.16       7.32

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.32     -12.81       2.08     -19.65       5.56       0.87    -155.09     788.98      -0.44       4.70

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.98     -54.03     683.88      64.90       1.78     717.15       0.85       0.18     -31.17    1317.54

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -474.45    -484.79     -44.09    -635.77    -275.34      57.57       3.86     -18.57     -11.34     -58.38

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           31.20      29.72     120.61     -44.02     -31.97     -93.42   -1175.81    -250.80      -1.13     -83.69

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.42      44.71    -689.81      63.54      -0.55     576.99    -202.23     -39.89      -9.89     483.15

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          486.27     494.03      24.65    -557.54    -243.08      68.00      82.55      19.38      -2.37      -7.11

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -481.03     471.81      28.40    -257.02     593.57      24.54      -1.44     -10.75    -472.60      -8.78

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          322.67    -314.04     -21.57    -381.65     889.50      32.81     -12.18     -18.26     315.71       7.70

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          854.87    -831.56     -55.71       0.19      -0.42      -0.01       0.01       0.02     283.42       6.58

   43   1.2  1.5 -0.5     240.47     243.92      17.35    -328.09    -143.70      34.90       9.80      -2.36       2.96      19.78
                            5.61     -29.79     341.71     -40.41       5.49    -357.79       1.12      -0.89     -32.72     658.45

   44   2.2  1.5 -0.5     242.34    -237.98     -15.95     138.52    -318.43     -11.77       8.53       4.50    -663.90     -15.52
                            3.38      -3.17      -1.83      -4.31      11.86       0.49     289.24     279.22      -9.13      -3.32

   45   3.2  1.5 -0.5      -9.60      -3.03      -0.23       5.78       9.08      -0.02     380.21    -130.31       9.13      -0.30
                          243.41    -236.14     -24.72    -135.93     318.94      20.90      -7.30     -10.16    -663.28     -32.48

   46   4.2  1.5 -0.5    -282.54    -205.31     -15.62    -243.22    -162.68      29.14     -12.93     -39.42     -38.52       6.93
                           17.68     -40.07     342.83      36.11     -19.30     287.75      70.70     -73.37      22.71    -240.49

   47   5.2  1.5 -0.5     203.87    -280.91     -19.57    -164.83     257.88      12.74      -2.27      -3.60     238.03       7.18
                           -2.00      -4.50      59.16       4.40       5.69      47.25    -411.96     440.77       0.25     -41.43

   48   6.2  1.5 -0.5      20.63      13.69       1.03      20.28       0.31      -1.33    -188.62    -581.45       3.45      -0.46
                          247.35    -240.88     -40.43     119.62    -280.47     -30.62      -3.37      12.12     240.33      22.56

   49   7.2  1.5 -0.5       2.03      -1.97      26.52      60.03       6.25     578.47      -0.64       0.90       1.54     -18.77
                          254.83     258.94      17.06    -234.94    -102.95      23.83      -1.96       2.78      -1.38      -6.75

   50   8.2  1.5 -0.5      -1.27     -28.70     403.29      -4.69      -0.38     -37.91       0.03      -0.09       6.92    -286.08
                          124.95     127.89      10.00     477.23     206.72     -49.96      -0.20      -1.10      -1.15      -4.42

   51   9.2  1.5 -0.5       1.22      41.15    -595.46       0.02       0.00       0.16       0.00      -0.00      -3.26     138.83
                          416.68     426.33      30.32       0.19       0.08      -0.02      -0.00      -0.00      -1.24      -4.23

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

    1   1.2  0.5  0.5       0.00       0.00       0.00    2493.67     172.32     246.69     -94.99     -24.65       1.18       3.03
                           -1.62    -299.24      -0.00     126.95   -1785.30     -18.30      -4.90    -188.39    -157.67    -145.74

    2   2.2  0.5  0.5       0.00       0.00   -2493.67      -0.00      -5.12     -94.11    -247.33      11.58     -18.43      10.29
                            4.09     291.08    -126.95      -0.00    1744.90      13.12      14.26     185.28    -161.42    -147.39

    3   3.2  0.5  0.5       0.00       0.00    -172.32       5.12      -0.00      -6.67     -16.42       1.26     291.91     -91.42
                          -85.96      19.50    1785.30   -1744.90       0.00     105.77    -243.40       3.52      -8.98      -5.65

    4   4.2  0.5  0.5       0.00       0.00    -246.69      94.11       6.67      -0.00    -952.65      18.25      67.17     204.87
                         -107.55       0.00      18.30     -13.12    -105.77      -0.00     -79.65    -387.33   -1187.41    1293.81

    5   5.2  0.5  0.5       0.00       0.00      94.99     247.33      16.42     952.65      -0.00    -135.79       8.28      18.66
                          -16.16      -0.01       4.90     -14.26     243.40      79.65      -0.00     876.70    -514.40     565.37

    6   6.2  0.5  0.5       0.00       0.00      24.65     -11.58      -1.26     -18.25     135.79      -0.00     572.60    1823.40
                         -822.40      -0.00     188.39    -185.28      -3.52     387.33    -876.70      -0.00     135.29    -120.01

    7   7.2  0.5  0.5       0.00       0.00      -1.18      18.43    -291.91     -67.17      -8.28    -572.60      -0.00      -2.78
                           -2.13       0.00     157.67     161.42       8.98    1187.41     514.40    -135.29       0.00      -3.32

    8   8.2  0.5  0.5       0.00       0.00      -3.03     -10.29      91.42    -204.87     -18.66   -1823.40       2.78      -0.00
                            4.54       0.00     145.74     147.39       5.65   -1293.81    -565.37     120.01       3.32       0.00

    9   9.2  0.5  0.5       0.00       0.00     -60.62     -60.93      -4.33     754.45     334.83     -80.22      21.59      -9.17
                           -2.98   -1779.53      -1.62      -4.52      85.94     -77.25     -24.25    -825.60       6.31       1.63

   10  10.2  0.5  0.5       0.00       0.00      -3.25       0.38       0.02       9.84      27.85      -2.64    -913.39     286.47
                          128.19     -41.34      61.59     -60.05      -2.02    -328.90     761.54       8.44      13.46       4.33

   11  11.2  0.5  0.5   68287.54       0.00     -61.03      60.51       4.06    -334.13     758.28      28.53      19.53     -23.63
                            0.00      17.04      -1.84       1.85      -0.70       4.46      -5.20       3.94     705.42     647.82

   12  12.2  0.5  0.5       0.00   68644.72      -0.86     -28.81     416.92       0.00      -0.00      -0.00       0.00       0.00
                          -17.04      -0.00     291.73     298.49      21.23      -0.01      -0.00       0.00      -0.00      -0.00

   13   1.2  0.5 -0.5     -61.03      -0.86       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.84    -291.73      -0.00     116.64   -1741.00      20.39      -1.73     185.40      47.77    -213.24

   14   2.2  0.5 -0.5      60.51     -28.81       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.85    -298.49    -116.64      -0.00   -1789.80      35.23      12.03     185.80     -46.40     209.37

   15   3.2  0.5 -0.5       4.06     416.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.70     -21.23    1741.00    1789.80       0.00    -240.60    -104.44      39.06      -3.17      14.76

   16   4.2  0.5 -0.5    -334.13       0.00       0.00       0.00       0.00   67416.86       0.00       0.00       0.00       0.00
                           -4.46       0.01     -20.39     -35.23     240.60       0.00      31.57    -882.36    -740.27    -169.91

   17   5.2  0.5 -0.5     758.28      -0.00       0.00       0.00       0.00       0.00   67416.86       0.00       0.00       0.00
                            5.20       0.00       1.73     -12.03     104.44     -31.57       0.00    -381.58    1724.19     382.10

   18   6.2  0.5 -0.5      28.53      -0.00       0.00       0.00       0.00       0.00       0.00   67416.85       0.00       0.00
                           -3.94      -0.00    -185.40    -185.80     -39.06     882.36     381.58      -0.00      62.96      11.80

   19   7.2  0.5 -0.5      19.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00   67416.88       0.00
                         -705.42       0.00     -47.77      46.40       3.17     740.27   -1724.19     -62.96       0.00      30.19

   20   8.2  0.5 -0.5     -23.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   67416.88
                         -647.82       0.00     213.24    -209.37     -14.76     169.91    -382.10     -11.80     -30.19      -0.00

   21   9.2  0.5 -0.5    -128.14      41.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.86      15.79      -1.41      -1.39      -0.86     -14.52     -22.57      -0.69     208.22    -934.53

   22  10.2  0.5 -0.5      -3.01   -1778.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.14      53.58      60.05      61.62       1.78     754.63     327.34    -105.20       5.02     -24.13

   23  11.2  0.5 -0.5      -0.00      53.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1779.21      -1.62       4.09     -85.96    -107.55     -16.16    -822.40      -2.13       4.54

   24  12.2  0.5 -0.5     -53.20      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1779.21      -0.00    -299.24     291.08      19.50       0.00      -0.01      -0.00       0.00       0.00

   25   1.2  1.5  1.5    1141.84     -24.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           33.85      -4.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.2  1.5  1.5       5.62     -12.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.32    -928.74      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.2  1.5  1.5     -29.71    -928.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -11.89      12.98      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.2  1.5  1.5     418.40       1.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.80      -2.41      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.2  1.5  1.5      67.93      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.13      14.12      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.2  1.5  1.5     -29.43      14.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.13       0.21      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5      -0.69       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          443.95       0.06      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.2  1.5  1.5      15.92      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          217.77       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.2  1.5  1.5      -7.18      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          242.88       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00       0.00     240.47     243.92      17.35    -328.09    -143.70      34.90       9.80      -2.36
                          -34.61   -1072.61      -5.61      29.79    -341.71      40.41      -5.49     357.79      -1.12       0.89

   35   2.2  1.5  0.5       0.00       0.00     242.34    -237.98     -15.95     138.52    -318.43     -11.77       8.53       4.50
                          -57.82       5.07      -3.38       3.17       1.83       4.31     -11.86      -0.49    -289.24    -279.22

   36   3.2  1.5  0.5       0.00       0.00      -9.60      -3.03      -0.23       5.78       9.08      -0.02     380.21    -130.31
                        -1326.15      27.77    -243.41     236.14      24.72     135.93    -318.94     -20.90       7.30      10.16

   37   4.2  1.5  0.5       0.00       0.00    -282.54    -205.31     -15.62    -243.22    -162.68      29.14     -12.93     -39.42
                          -31.53     -16.24     -17.68      40.07    -342.83     -36.11      19.30    -287.75     -70.70      73.37

   38   5.2  1.5  0.5       0.00       0.00     203.87    -280.91     -19.57    -164.83     257.88      12.74      -2.27      -3.60
                          -13.00      -2.81       2.00       4.50     -59.16      -4.40      -5.69     -47.25     411.96    -440.77

   39   6.2  1.5  0.5       0.00       0.00      20.63      13.69       1.03      20.28       0.31      -1.33    -188.62    -581.45
                         -480.83       1.15    -247.35     240.88      40.43    -119.62     280.47      30.62       3.37     -12.12

   40   7.2  1.5  0.5       0.00       0.00       2.03      -1.97      26.52      60.03       6.25     578.47      -0.64       0.90
                            2.64       0.06    -254.83    -258.94     -17.06     234.94     102.95     -23.83       1.96      -2.78

   41   8.2  1.5  0.5       0.00       0.00      -1.27     -28.70     403.29      -4.69      -0.38     -37.91       0.03      -0.09
                           -2.94      -0.04    -124.95    -127.89     -10.00    -477.23    -206.72      49.96       0.20       1.10

   42   9.2  1.5  0.5       0.00       0.00       1.22      41.15    -595.46       0.02       0.00       0.16       0.00      -0.00
                           -2.71       0.00    -416.68    -426.33     -30.32      -0.19      -0.08       0.02       0.00       0.00

   43   1.2  1.5 -0.5     659.24     -13.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -19.54       2.33     -12.32     -12.81       2.08     -19.65       5.56       0.87    -155.09     788.98

   44   2.2  1.5 -0.5       3.25      -7.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.18     536.21      -7.98     -54.03     683.88      64.90       1.78     717.15       0.85       0.18

   45   3.2  1.5 -0.5     -17.15    -535.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.86      -7.50    -474.45    -484.79     -44.09    -635.77    -275.34      57.57       3.86     -18.57

   46   4.2  1.5 -0.5     241.56       0.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.23       1.39      31.20      29.72     120.61     -44.02     -31.97     -93.42   -1175.81    -250.80

   47   5.2  1.5 -0.5      39.22      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.38      -8.15       1.42      44.71    -689.81      63.54      -0.55     576.99    -202.23     -39.89

   48   6.2  1.5 -0.5     -16.99       8.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.81      -0.12     486.27     494.03      24.65    -557.54    -243.08      68.00      82.55      19.38

   49   7.2  1.5 -0.5      -0.40       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -256.31      -0.04    -481.03     471.81      28.40    -257.02     593.57      24.54      -1.44     -10.75

   50   8.2  1.5 -0.5       9.19      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -125.73      -0.01     322.67    -314.04     -21.57    -381.65     889.50      32.81     -12.18     -18.26

   51   9.2  1.5 -0.5      -4.15      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -140.23      -0.00     854.87    -831.56     -55.71       0.19      -0.42      -0.01       0.01       0.02

   52   1.2  1.5 -1.5       0.00       0.00     416.51     422.49      30.05    -568.28    -248.90      60.46      16.97      -4.09
                           -0.00      -0.00       9.72     -51.59     591.86     -70.00       9.51    -619.70       1.93      -1.54

   53   2.2  1.5 -1.5       0.00       0.00     419.74    -412.20     -27.62     239.93    -551.54     -20.38      14.78       7.80
                           -0.00      -0.00       5.85      -5.49      -3.18      -7.46      20.54       0.86     500.98     483.61

   54   3.2  1.5 -1.5       0.00       0.00     -16.63      -5.25      -0.40      10.01      15.72      -0.04     658.55    -225.71
                           -0.00      -0.00     421.59    -409.00     -42.81    -235.44     552.42      36.20     -12.64     -17.60

   55   4.2  1.5 -1.5       0.00       0.00    -489.38    -355.61     -27.06    -421.28    -281.77      50.47     -22.40     -68.28
                           -0.00      -0.00      30.62     -69.40     593.80      62.55     -33.43     498.40     122.45    -127.08

   56   5.2  1.5 -1.5       0.00       0.00     353.11    -486.55     -33.90    -285.50     446.67      22.07      -3.94      -6.23
                           -0.00      -0.00      -3.47      -7.80     102.46       7.61       9.86      81.84    -713.54     763.44

   57   6.2  1.5 -1.5       0.00       0.00      35.73      23.71       1.79      35.13       0.53      -2.30    -326.70   -1007.10
                           -0.00      -0.00     428.43    -417.21     -70.03     207.19    -485.79     -53.03      -5.84      20.98

   58   7.2  1.5 -1.5       0.00       0.00       3.52      -3.42      45.93     103.97      10.83    1001.94      -1.11       1.57
                           -0.00      -0.00     441.38     448.50      29.54    -406.93    -178.31      41.27      -3.40       4.81

   59   8.2  1.5 -1.5       0.00       0.00      -2.20     -49.71     698.51      -8.13      -0.66     -65.66       0.06      -0.15
                           -0.00      -0.00     216.42     221.51      17.32     826.59     358.06     -86.54      -0.35      -1.91

   60   9.2  1.5 -1.5       0.00       0.00       2.12      71.27   -1031.37       0.03       0.00       0.27       0.00      -0.00
                           -0.00      -0.00     721.71     738.42      52.51       0.32       0.14      -0.03      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5      60.62       3.25      61.03       0.86     416.51     419.74     -16.63    -489.38     353.11      35.73
                            1.62     -61.59       1.84    -291.73       9.72       5.85     421.59      30.62      -3.47     428.43

    2   2.2  0.5  0.5      60.93      -0.38     -60.51      28.81     422.49    -412.20      -5.25    -355.61    -486.55      23.71
                            4.52      60.05      -1.85    -298.49     -51.59      -5.49    -409.00     -69.40      -7.80    -417.21

    3   3.2  0.5  0.5       4.33      -0.02      -4.06    -416.92      30.05     -27.62      -0.40     -27.06     -33.90       1.79
                          -85.94       2.02       0.70     -21.23     591.86      -3.18     -42.81     593.80     102.46     -70.03

    4   4.2  0.5  0.5    -754.45      -9.84     334.13      -0.00    -568.28     239.93      10.01    -421.28    -285.50      35.13
                           77.25     328.90      -4.46       0.01     -70.00      -7.46    -235.44      62.55       7.61     207.19

    5   5.2  0.5  0.5    -334.83     -27.85    -758.28       0.00    -248.90    -551.54      15.72    -281.77     446.67       0.53
                           24.25    -761.54       5.20       0.00       9.51      20.54     552.42     -33.43       9.86    -485.79

    6   6.2  0.5  0.5      80.22       2.64     -28.53       0.00      60.46     -20.38      -0.04      50.47      22.07      -2.30
                          825.60      -8.44      -3.94      -0.00    -619.70       0.86      36.20     498.40      81.84     -53.03

    7   7.2  0.5  0.5     -21.59     913.39     -19.53      -0.00      16.97      14.78     658.55     -22.40      -3.94    -326.70
                           -6.31     -13.46    -705.42       0.00       1.93     500.98     -12.64     122.45    -713.54      -5.84

    8   8.2  0.5  0.5       9.17    -286.47      23.63      -0.00      -4.09       7.80    -225.71     -68.28      -6.23   -1007.10
                           -1.63      -4.33    -647.82       0.00      -1.54     483.61     -17.60    -127.08     763.44      20.98

    9   9.2  0.5  0.5      -0.00       3.83     128.14     -41.84       5.13   -1149.91      15.82     -66.71     412.28       5.98
                           -0.00    -128.15       3.86      15.79     -56.67     -15.81   -1148.83      39.34       0.44     416.26

   10  10.2  0.5  0.5      -3.83      -0.00       3.01    1778.81      34.27     -26.88      -0.51      12.00      12.44      -0.79
                          128.15       0.00      -1.14      53.58    1140.48      -5.75     -56.25    -416.55     -71.76      39.07

   11  11.2  0.5  0.5    -128.14      -3.01      -0.00     -53.20    1141.84       5.62     -29.71     418.40      67.93     -29.43
                           -3.86       1.14       0.00    1779.21     -33.85       0.32      11.89      10.80       4.13      -3.13

   12  12.2  0.5  0.5      41.84   -1778.81      53.20      -0.00     -24.09     -12.87    -928.03       1.01      -0.04      14.24
                          -15.79     -53.58   -1779.21       0.00       4.04     928.74     -12.98       2.41     -14.12      -0.21

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.41     -60.05       1.62     299.24       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.39     -61.62      -4.09    -291.08       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.86      -1.78      85.96     -19.50       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           14.52    -754.63     107.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           22.57    -327.34      16.16       0.01       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.69     105.20     822.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -208.22      -5.02       2.13      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          934.53      24.13      -4.54      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.2  0.5 -0.5   68287.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.23       2.98    1779.53       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.2  0.5 -0.5       0.00   68287.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.23      -0.00    -128.19      41.34       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.2  0.5 -0.5       0.00       0.00   68287.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.98     128.19      -0.00     -17.04       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.2  0.5 -0.5       0.00       0.00       0.00   68644.72       0.00       0.00       0.00       0.00       0.00       0.00
                        -1779.53     -41.34      17.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00   65588.96       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     -32.40       5.90      15.08     -41.53      -0.34

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   65588.91       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      32.40      -0.00    1251.44     106.25     -24.29    1452.02

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   65588.99       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -5.90   -1251.44      -0.00     243.66   -1434.31     -41.87

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66859.73       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -15.08    -106.25    -243.66      -0.00     -78.71    -207.06

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66859.74       0.00
                           -0.00      -0.00      -0.00      -0.00      41.53      24.29    1434.31      78.71       0.00    1232.47

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66859.73
                           -0.00      -0.00      -0.00      -0.00       0.34   -1452.02      41.87     207.06   -1232.47      -0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -1397.10       1.17      42.92    1369.62     230.78     -90.57

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     934.16      -4.09     -23.09    2046.94     352.54    -142.95

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    2386.20     -11.26     -61.78       0.01       0.00      -0.00

   34   1.2  1.5  0.5       2.96      19.78     659.24     -13.91       0.00     722.44     -10.02     137.99    -828.93     -12.29
                           32.72    -658.45      19.54      -2.33      -0.00      10.10     722.68     -37.93       6.23    -839.81

   35   2.2  1.5  0.5    -663.90     -15.52       3.25      -7.43    -722.44       0.00      18.75    -827.12    -138.34      58.16
                            9.13       3.32      -0.18    -536.21     -10.10      -0.00      -3.15      14.46      -1.90      -0.27

   36   3.2  1.5  0.5       9.13      -0.30     -17.15    -535.80      10.02     -18.75      -0.00       5.84      22.04      -0.38
                          663.28      32.48      -6.86       7.50    -722.68       3.15      -0.00     827.65     142.17     -36.33

   37   4.2  1.5  0.5     -38.52       6.93     241.56       0.58    -137.99     827.12      -5.84       0.00    -720.79       4.67
                          -22.71     240.49      -6.23      -1.39      37.93     -14.46    -827.65       0.00     -16.43     712.97

   38   5.2  1.5  0.5     238.03       7.18      39.22      -0.02     828.93     138.34     -22.04     720.79       0.00     -56.52
                           -0.25      41.43      -2.38       8.15      -6.23       1.90    -142.17      16.43      -0.00     118.81

   39   6.2  1.5  0.5       3.45      -0.46     -16.99       8.22      12.29     -58.16       0.38      -4.67      56.52      -0.00
                         -240.33     -22.56       1.81       0.12     839.81       0.27      36.33    -712.97    -118.81      -0.00

   40   7.2  1.5  0.5       1.54     -18.77      -0.40       0.03       2.18      -4.16     -63.75     104.71      -1.04    1438.99
                            1.38       6.75     256.31       0.04      -0.53    -870.60      15.34     104.87    -630.41     -12.16

   41   8.2  1.5  0.5       6.92    -286.08       9.19      -0.00     -24.49     -11.26    -968.27      -5.85      -1.46     -94.74
                            1.15       4.42     125.73       0.01      -2.10    -429.11       3.83    -218.31    1278.28      21.21

   42   9.2  1.5  0.5      -3.26     138.83      -4.15      -0.00      35.75      19.10    1377.55      -0.00      -0.00      -0.01
                            1.24       4.23     140.23       0.00      -6.00   -1378.00      19.26      -0.00       0.01       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.44       4.70     -34.61   -1072.61      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -31.17    1317.54     -57.82       5.07      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -11.34     -58.38   -1326.15      27.77      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.13     -83.69     -31.53     -16.24      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.89     483.15     -13.00      -2.81      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.37      -7.11    -480.83       1.15      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -472.60      -8.78       2.64       0.06      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          315.71       7.70      -2.94      -0.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          283.42       6.58      -2.71       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5       5.13      34.27    1141.84     -24.09       0.00       0.00       0.00       0.00       0.00       0.00
                          -56.67    1140.48     -33.85       4.04      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5   -1149.91     -26.88       5.62     -12.87       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.81      -5.75       0.32     928.74      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5      15.82      -0.51     -29.71    -928.03       0.00       0.00       0.00       0.00       0.00       0.00
                        -1148.83     -56.25      11.89     -12.98      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5     -66.71      12.00     418.40       1.01       0.00       0.00       0.00       0.00       0.00       0.00
                           39.34    -416.55      10.80       2.41      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5     412.28      12.44      67.93      -0.04       0.00       0.00       0.00       0.00       0.00       0.00
                            0.44     -71.76       4.13     -14.12      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5       5.98      -0.79     -29.43      14.24       0.00       0.00       0.00       0.00       0.00       0.00
                          416.26      39.07      -3.13      -0.21      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5       2.67     -32.51      -0.69       0.05       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.39     -11.69    -443.95      -0.06      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5      11.98    -495.50      15.92      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.00      -7.66    -217.77      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5      -5.65     240.46      -7.18      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.16      -7.32    -242.88      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5       3.52      -2.20       2.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          441.38     216.42     721.71      12.32       7.98     474.45     -31.20      -1.42    -486.27     481.03

    2   2.2  0.5  0.5      -3.42     -49.71      71.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          448.50     221.51     738.42      12.81      54.03     484.79     -29.72     -44.71    -494.03    -471.81

    3   3.2  0.5  0.5      45.93     698.51   -1031.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           29.54      17.32      52.51      -2.08    -683.88      44.09    -120.61     689.81     -24.65     -28.40

    4   4.2  0.5  0.5     103.97      -8.13       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -406.93     826.59       0.32      19.65     -64.90     635.77      44.02     -63.54     557.54     257.02

    5   5.2  0.5  0.5      10.83      -0.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -178.31     358.06       0.14      -5.56      -1.78     275.34      31.97       0.55     243.08    -593.57

    6   6.2  0.5  0.5    1001.94     -65.66       0.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           41.27     -86.54      -0.03      -0.87    -717.15     -57.57      93.42    -576.99     -68.00     -24.54

    7   7.2  0.5  0.5      -1.11       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.40      -0.35      -0.00     155.09      -0.85      -3.86    1175.81     202.23     -82.55       1.44

    8   8.2  0.5  0.5       1.57      -0.15      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.81      -1.91      -0.00    -788.98      -0.18      18.57     250.80      39.89     -19.38      10.75

    9   9.2  0.5  0.5       2.67      11.98      -5.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.39      -2.00      -2.16       0.44      31.17      11.34       1.13       9.89       2.37     472.60

   10  10.2  0.5  0.5     -32.51    -495.50     240.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -11.69      -7.66      -7.32      -4.70   -1317.54      58.38      83.69    -483.15       7.11       8.78

   11  11.2  0.5  0.5      -0.69      15.92      -7.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -443.95    -217.77    -242.88      34.61      57.82    1326.15      31.53      13.00     480.83      -2.64

   12  12.2  0.5  0.5       0.05      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.06      -0.01      -0.00    1072.61      -5.07     -27.77      16.24       2.81      -1.15      -0.06

   13   1.2  0.5 -0.5       0.00       0.00       0.00     240.47     242.34      -9.60    -282.54     203.87      20.63       2.03
                            0.00       0.00       0.00       5.61       3.38     243.41      17.68      -2.00     247.35     254.83

   14   2.2  0.5 -0.5       0.00       0.00       0.00     243.92    -237.98      -3.03    -205.31    -280.91      13.69      -1.97
                            0.00       0.00       0.00     -29.79      -3.17    -236.14     -40.07      -4.50    -240.88     258.94

   15   3.2  0.5 -0.5       0.00       0.00       0.00      17.35     -15.95      -0.23     -15.62     -19.57       1.03      26.52
                            0.00       0.00       0.00     341.71      -1.83     -24.72     342.83      59.16     -40.43      17.06

   16   4.2  0.5 -0.5       0.00       0.00       0.00    -328.09     138.52       5.78    -243.22    -164.83      20.28      60.03
                            0.00       0.00       0.00     -40.41      -4.31    -135.93      36.11       4.40     119.62    -234.94

   17   5.2  0.5 -0.5       0.00       0.00       0.00    -143.70    -318.43       9.08    -162.68     257.88       0.31       6.25
                            0.00       0.00       0.00       5.49      11.86     318.94     -19.30       5.69    -280.47    -102.95

   18   6.2  0.5 -0.5       0.00       0.00       0.00      34.90     -11.77      -0.02      29.14      12.74      -1.33     578.47
                            0.00       0.00       0.00    -357.79       0.49      20.90     287.75      47.25     -30.62      23.83

   19   7.2  0.5 -0.5       0.00       0.00       0.00       9.80       8.53     380.21     -12.93      -2.27    -188.62      -0.64
                            0.00       0.00       0.00       1.12     289.24      -7.30      70.70    -411.96      -3.37      -1.96

   20   8.2  0.5 -0.5       0.00       0.00       0.00      -2.36       4.50    -130.31     -39.42      -3.60    -581.45       0.90
                            0.00       0.00       0.00      -0.89     279.22     -10.16     -73.37     440.77      12.12       2.78

   21   9.2  0.5 -0.5       0.00       0.00       0.00       2.96    -663.90       9.13     -38.52     238.03       3.45       1.54
                            0.00       0.00       0.00     -32.72      -9.13    -663.28      22.71       0.25     240.33      -1.38

   22  10.2  0.5 -0.5       0.00       0.00       0.00      19.78     -15.52      -0.30       6.93       7.18      -0.46     -18.77
                            0.00       0.00       0.00     658.45      -3.32     -32.48    -240.49     -41.43      22.56      -6.75

   23  11.2  0.5 -0.5       0.00       0.00       0.00     659.24       3.25     -17.15     241.56      39.22     -16.99      -0.40
                            0.00       0.00       0.00     -19.54       0.18       6.86       6.23       2.38      -1.81    -256.31

   24  12.2  0.5 -0.5       0.00       0.00       0.00     -13.91      -7.43    -535.80       0.58      -0.02       8.22       0.03
                            0.00       0.00       0.00       2.33     536.21      -7.50       1.39      -8.15      -0.12      -0.04

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00    -722.44      10.02    -137.99     828.93      12.29       2.18
                         1397.10    -934.16   -2386.20       0.00      10.10     722.68     -37.93       6.23    -839.81       0.53

   26   2.2  1.5  1.5       0.00       0.00       0.00     722.44       0.00     -18.75     827.12     138.34     -58.16      -4.16
                           -1.17       4.09      11.26     -10.10       0.00      -3.15      14.46      -1.90      -0.27     870.60

   27   3.2  1.5  1.5       0.00       0.00       0.00     -10.02      18.75      -0.00      -5.84     -22.04       0.38     -63.75
                          -42.92      23.09      61.78    -722.68       3.15       0.00     827.65     142.17     -36.33     -15.34

   28   4.2  1.5  1.5       0.00       0.00       0.00     137.99    -827.12       5.84       0.00     720.79      -4.67     104.71
                        -1369.62   -2046.94      -0.01      37.93     -14.46    -827.65      -0.00     -16.43     712.97    -104.87

   29   5.2  1.5  1.5       0.00       0.00       0.00    -828.93    -138.34      22.04    -720.79       0.00      56.52      -1.04
                         -230.78    -352.54      -0.00      -6.23       1.90    -142.17      16.43       0.00     118.81     630.41

   30   6.2  1.5  1.5       0.00       0.00       0.00     -12.29      58.16      -0.38       4.67     -56.52      -0.00    1438.99
                           90.57     142.95       0.00     839.81       0.27      36.33    -712.97    -118.81       0.00      12.16

   31   7.2  1.5  1.5   66859.51       0.00       0.00      -2.18       4.16      63.75    -104.71       1.04   -1438.99       0.00
                           -0.00      11.65       0.00      -0.53    -870.60      15.34     104.87    -630.41     -12.16      -0.00

   32   8.2  1.5  1.5       0.00   66859.64       0.00      24.49      11.26     968.27       5.85       1.46      94.74       0.07
                          -11.65       0.00       0.00      -2.10    -429.11       3.83    -218.31    1278.28      21.21       6.43

   33   9.2  1.5  1.5       0.00       0.00   68744.25     -35.75     -19.10   -1377.55       0.00       0.00       0.01       0.00
                           -0.00      -0.00      -0.00      -6.00   -1378.00      19.26      -0.00       0.01       0.00      -0.00

   34   1.2  1.5  0.5      -2.18      24.49     -35.75   65588.96       0.00       0.00       0.00       0.00       0.00       0.00
                            0.53       2.10       6.00      -0.00     -10.80       1.97       5.03     -13.84      -0.11     465.70

   35   2.2  1.5  0.5       4.16      11.26     -19.10       0.00   65588.91       0.00       0.00       0.00       0.00       0.00
                          870.60     429.11    1378.00      10.80      -0.00     417.15      35.42      -8.10     484.01      -0.39

   36   3.2  1.5  0.5      63.75     968.27   -1377.55       0.00       0.00   65588.99       0.00       0.00       0.00       0.00
                          -15.34      -3.83     -19.26      -1.97    -417.15      -0.00      81.22    -478.10     -13.96     -14.31

   37   4.2  1.5  0.5    -104.71       5.85       0.00       0.00       0.00       0.00   66859.73       0.00       0.00       0.00
                         -104.87     218.31       0.00      -5.03     -35.42     -81.22      -0.00     -26.24     -69.02    -456.54

   38   5.2  1.5  0.5       1.04       1.46       0.00       0.00       0.00       0.00       0.00   66859.74       0.00       0.00
                          630.41   -1278.28      -0.01      13.84       8.10     478.10      26.24       0.00     410.82     -76.93

   39   6.2  1.5  0.5   -1438.99      94.74       0.01       0.00       0.00       0.00       0.00       0.00   66859.73       0.00
                           12.16     -21.21      -0.00       0.11    -484.01      13.96      69.02    -410.82      -0.00      30.19

   40   7.2  1.5  0.5       0.00       0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66859.51
                            0.00      -6.43       0.00    -465.70       0.39      14.31     456.54      76.93     -30.19      -0.00

   41   8.2  1.5  0.5      -0.07       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.43       0.00      -0.00     311.39      -1.36      -7.70     682.31     117.51     -47.65      -3.88

   42   9.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     795.40      -3.75     -20.59       0.00       0.00      -0.00      -0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00     834.20     -11.57     159.34    -957.16     -14.19      -2.52
                           -0.00      -0.00      -0.00      -0.00      11.67     834.48     -43.80       7.19    -969.73       0.61

   44   2.2  1.5 -0.5       0.00       0.00       0.00    -834.20       0.00      21.65    -955.08    -159.74      67.16       4.80
                           -0.00      -0.00      -0.00     -11.67      -0.00      -3.63      16.70      -2.19      -0.31    1005.28

   45   3.2  1.5 -0.5       0.00       0.00       0.00      11.57     -21.65      -0.00       6.74      25.45      -0.44      73.61
                           -0.00      -0.00      -0.00    -834.48       3.63      -0.00     955.69     164.16     -41.95     -17.72

   46   4.2  1.5 -0.5       0.00       0.00       0.00    -159.34     955.08      -6.74       0.00    -832.29       5.39    -120.91
                           -0.00      -0.00      -0.00      43.80     -16.70    -955.69       0.00     -18.97     823.27    -121.09

   47   5.2  1.5 -0.5       0.00       0.00       0.00     957.16     159.74     -25.45     832.29       0.00     -65.27       1.21
                           -0.00      -0.00      -0.00      -7.19       2.19    -164.16      18.97      -0.00     137.18     727.93

   48   6.2  1.5 -0.5       0.00       0.00       0.00      14.19     -67.16       0.44      -5.39      65.27      -0.00   -1661.60
                           -0.00      -0.00      -0.00     969.73       0.31      41.95    -823.27    -137.18      -0.00      14.04

   49   7.2  1.5 -0.5       0.00       0.00       0.00       2.52      -4.80     -73.61     120.91      -1.21    1661.60       0.00
                           -0.00      -0.00      -0.00      -0.61   -1005.28      17.72     121.09    -727.93     -14.04       0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00     -28.27     -13.00   -1118.06      -6.76      -1.69    -109.40      -0.08
                           -0.00      -0.00      -0.00      -2.43    -495.49       4.42    -252.09    1476.03      24.49       7.43

   51   9.2  1.5 -0.5       0.00       0.00       0.00      41.29      22.06    1590.66      -0.00      -0.00      -0.01      -0.00
                           -0.00      -0.00      -0.00      -6.93   -1591.18      22.24      -0.00       0.01       0.00      -0.00

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

    1   1.2  0.5  0.5       0.00       0.00     240.47     242.34      -9.60    -282.54     203.87      20.63       2.03      -1.27
                         -322.67    -854.87      -5.61      -3.38    -243.41     -17.68       2.00    -247.35    -254.83    -124.95

    2   2.2  0.5  0.5       0.00       0.00     243.92    -237.98      -3.03    -205.31    -280.91      13.69      -1.97     -28.70
                          314.04     831.56      29.79       3.17     236.14      40.07       4.50     240.88    -258.94    -127.89

    3   3.2  0.5  0.5       0.00       0.00      17.35     -15.95      -0.23     -15.62     -19.57       1.03      26.52     403.29
                           21.57      55.71    -341.71       1.83      24.72    -342.83     -59.16      40.43     -17.06     -10.00

    4   4.2  0.5  0.5       0.00       0.00    -328.09     138.52       5.78    -243.22    -164.83      20.28      60.03      -4.69
                          381.65      -0.19      40.41       4.31     135.93     -36.11      -4.40    -119.62     234.94    -477.23

    5   5.2  0.5  0.5       0.00       0.00    -143.70    -318.43       9.08    -162.68     257.88       0.31       6.25      -0.38
                         -889.50       0.42      -5.49     -11.86    -318.94      19.30      -5.69     280.47     102.95    -206.72

    6   6.2  0.5  0.5       0.00       0.00      34.90     -11.77      -0.02      29.14      12.74      -1.33     578.47     -37.91
                          -32.81       0.01     357.79      -0.49     -20.90    -287.75     -47.25      30.62     -23.83      49.96

    7   7.2  0.5  0.5       0.00       0.00       9.80       8.53     380.21     -12.93      -2.27    -188.62      -0.64       0.03
                           12.18      -0.01      -1.12    -289.24       7.30     -70.70     411.96       3.37       1.96       0.20

    8   8.2  0.5  0.5       0.00       0.00      -2.36       4.50    -130.31     -39.42      -3.60    -581.45       0.90      -0.09
                           18.26      -0.02       0.89    -279.22      10.16      73.37    -440.77     -12.12      -2.78       1.10

    9   9.2  0.5  0.5       0.00       0.00       2.96    -663.90       9.13     -38.52     238.03       3.45       1.54       6.92
                         -315.71    -283.42      32.72       9.13     663.28     -22.71      -0.25    -240.33       1.38       1.15

   10  10.2  0.5  0.5       0.00       0.00      19.78     -15.52      -0.30       6.93       7.18      -0.46     -18.77    -286.08
                           -7.70      -6.58    -658.45       3.32      32.48     240.49      41.43     -22.56       6.75       4.42

   11  11.2  0.5  0.5       0.00       0.00     659.24       3.25     -17.15     241.56      39.22     -16.99      -0.40       9.19
                            2.94       2.71      19.54      -0.18      -6.86      -6.23      -2.38       1.81     256.31     125.73

   12  12.2  0.5  0.5       0.00       0.00     -13.91      -7.43    -535.80       0.58      -0.02       8.22       0.03      -0.00
                            0.04      -0.00      -2.33    -536.21       7.50      -1.39       8.15       0.12       0.04       0.01

   13   1.2  0.5 -0.5      -1.27       1.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          124.95     416.68      12.32       7.98     474.45     -31.20      -1.42    -486.27     481.03    -322.67

   14   2.2  0.5 -0.5     -28.70      41.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          127.89     426.33      12.81      54.03     484.79     -29.72     -44.71    -494.03    -471.81     314.04

   15   3.2  0.5 -0.5     403.29    -595.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.00      30.32      -2.08    -683.88      44.09    -120.61     689.81     -24.65     -28.40      21.57

   16   4.2  0.5 -0.5      -4.69       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          477.23       0.19      19.65     -64.90     635.77      44.02     -63.54     557.54     257.02     381.65

   17   5.2  0.5 -0.5      -0.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          206.72       0.08      -5.56      -1.78     275.34      31.97       0.55     243.08    -593.57    -889.50

   18   6.2  0.5 -0.5     -37.91       0.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -49.96      -0.02      -0.87    -717.15     -57.57      93.42    -576.99     -68.00     -24.54     -32.81

   19   7.2  0.5 -0.5       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.20      -0.00     155.09      -0.85      -3.86    1175.81     202.23     -82.55       1.44      12.18

   20   8.2  0.5 -0.5      -0.09      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.10      -0.00    -788.98      -0.18      18.57     250.80      39.89     -19.38      10.75      18.26

   21   9.2  0.5 -0.5       6.92      -3.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.15      -1.24       0.44      31.17      11.34       1.13       9.89       2.37     472.60    -315.71

   22  10.2  0.5 -0.5    -286.08     138.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.42      -4.23      -4.70   -1317.54      58.38      83.69    -483.15       7.11       8.78      -7.70

   23  11.2  0.5 -0.5       9.19      -4.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -125.73    -140.23      34.61      57.82    1326.15      31.53      13.00     480.83      -2.64       2.94

   24  12.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00    1072.61      -5.07     -27.77      16.24       2.81      -1.15      -0.06       0.04

   25   1.2  1.5  1.5     -24.49      35.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.10       6.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5     -11.26      19.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          429.11    1378.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5    -968.27    1377.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.83     -19.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5      -5.85      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          218.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5      -1.46      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1278.28      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5     -94.74      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.21      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5      -0.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00       0.00    -834.20      11.57    -159.34     957.16      14.19       2.52     -28.27
                         -311.39    -795.40       0.00      11.67     834.48     -43.80       7.19    -969.73       0.61       2.43

   35   2.2  1.5  0.5       0.00       0.00     834.20       0.00     -21.65     955.08     159.74     -67.16      -4.80     -13.00
                            1.36       3.75     -11.67       0.00      -3.63      16.70      -2.19      -0.31    1005.28     495.49

   36   3.2  1.5  0.5       0.00       0.00     -11.57      21.65      -0.00      -6.74     -25.45       0.44     -73.61   -1118.06
                            7.70      20.59    -834.48       3.63       0.00     955.69     164.16     -41.95     -17.72      -4.42

   37   4.2  1.5  0.5       0.00       0.00     159.34    -955.08       6.74       0.00     832.29      -5.39     120.91      -6.76
                         -682.31      -0.00      43.80     -16.70    -955.69      -0.00     -18.97     823.27    -121.09     252.09

   38   5.2  1.5  0.5       0.00       0.00    -957.16    -159.74      25.45    -832.29       0.00      65.27      -1.21      -1.69
                         -117.51      -0.00      -7.19       2.19    -164.16      18.97       0.00     137.18     727.93   -1476.03

   39   6.2  1.5  0.5       0.00       0.00     -14.19      67.16      -0.44       5.39     -65.27      -0.00    1661.60    -109.40
                           47.65       0.00     969.73       0.31      41.95    -823.27    -137.18       0.00      14.04     -24.49

   40   7.2  1.5  0.5       0.00       0.00      -2.52       4.80      73.61    -120.91       1.21   -1661.60       0.00      -0.08
                            3.88       0.00      -0.61   -1005.28      17.72     121.09    -727.93     -14.04      -0.00      -7.43

   41   8.2  1.5  0.5   66859.64       0.00      28.27      13.00    1118.06       6.76       1.69     109.40       0.08       0.00
                            0.00       0.00      -2.43    -495.49       4.42    -252.09    1476.03      24.49       7.43      -0.00

   42   9.2  1.5  0.5       0.00   68744.25     -41.29     -22.06   -1590.66       0.00       0.00       0.01       0.00      -0.00
                           -0.00      -0.00      -6.93   -1591.18      22.24      -0.00       0.01       0.00      -0.00       0.00

   43   1.2  1.5 -0.5      28.27     -41.29   65588.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.43       6.93       0.00      10.80      -1.97      -5.03      13.84       0.11    -465.70     311.39

   44   2.2  1.5 -0.5      13.00     -22.06       0.00   65588.91       0.00       0.00       0.00       0.00       0.00       0.00
                          495.49    1591.18     -10.80       0.00    -417.15     -35.42       8.10    -484.01       0.39      -1.36

   45   3.2  1.5 -0.5    1118.06   -1590.66       0.00       0.00   65588.99       0.00       0.00       0.00       0.00       0.00
                           -4.42     -22.24       1.97     417.15       0.00     -81.22     478.10      13.96      14.31      -7.70

   46   4.2  1.5 -0.5       6.76       0.00       0.00       0.00       0.00   66859.73       0.00       0.00       0.00       0.00
                          252.09       0.00       5.03      35.42      81.22       0.00      26.24      69.02     456.54     682.31

   47   5.2  1.5 -0.5       1.69       0.00       0.00       0.00       0.00       0.00   66859.74       0.00       0.00       0.00
                        -1476.03      -0.01     -13.84      -8.10    -478.10     -26.24      -0.00    -410.82      76.93     117.51

   48   6.2  1.5 -0.5     109.40       0.01       0.00       0.00       0.00       0.00       0.00   66859.73       0.00       0.00
                          -24.49      -0.00      -0.11     484.01     -13.96     -69.02     410.82       0.00     -30.19     -47.65

   49   7.2  1.5 -0.5       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66859.51       0.00
                           -7.43       0.00     465.70      -0.39     -14.31    -456.54     -76.93      30.19       0.00      -3.88

   50   8.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66859.64
                            0.00      -0.00    -311.39       1.36       7.70    -682.31    -117.51      47.65       3.88      -0.00

   51   9.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -795.40       3.75      20.59      -0.00      -0.00       0.00       0.00       0.00

   52   1.2  1.5 -1.5       0.00       0.00       0.00     722.44     -10.02     137.99    -828.93     -12.29      -2.18      24.49
                           -0.00      -0.00      -0.00      10.10     722.68     -37.93       6.23    -839.81       0.53       2.10

   53   2.2  1.5 -1.5       0.00       0.00    -722.44       0.00      18.75    -827.12    -138.34      58.16       4.16      11.26
                           -0.00      -0.00     -10.10      -0.00      -3.15      14.46      -1.90      -0.27     870.60     429.11

   54   3.2  1.5 -1.5       0.00       0.00      10.02     -18.75      -0.00       5.84      22.04      -0.38      63.75     968.27
                           -0.00      -0.00    -722.68       3.15      -0.00     827.65     142.17     -36.33     -15.34      -3.83

   55   4.2  1.5 -1.5       0.00       0.00    -137.99     827.12      -5.84       0.00    -720.79       4.67    -104.71       5.85
                           -0.00      -0.00      37.93     -14.46    -827.65       0.00     -16.43     712.97    -104.87     218.31

   56   5.2  1.5 -1.5       0.00       0.00     828.93     138.34     -22.04     720.79       0.00     -56.52       1.04       1.46
                           -0.00      -0.00      -6.23       1.90    -142.17      16.43      -0.00     118.81     630.41   -1278.28

   57   6.2  1.5 -1.5       0.00       0.00      12.29     -58.16       0.38      -4.67      56.52      -0.00   -1438.99      94.74
                           -0.00      -0.00     839.81       0.27      36.33    -712.97    -118.81      -0.00      12.16     -21.21

   58   7.2  1.5 -1.5       0.00       0.00       2.18      -4.16     -63.75     104.71      -1.04    1438.99       0.00       0.07
                           -0.00      -0.00      -0.53    -870.60      15.34     104.87    -630.41     -12.16       0.00      -6.43

   59   8.2  1.5 -1.5       0.00       0.00     -24.49     -11.26    -968.27      -5.85      -1.46     -94.74      -0.07       0.00
                           -0.00      -0.00      -2.10    -429.11       3.83    -218.31    1278.28      21.21       6.43       0.00

   60   9.2  1.5 -1.5       0.00       0.00      35.75      19.10    1377.55      -0.00      -0.00      -0.01      -0.00       0.00
                           -0.00      -0.00      -6.00   -1378.00      19.26      -0.00       0.01       0.00      -0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.2  0.5  0.5       1.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -416.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5      41.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -426.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5    -595.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -30.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5       0.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  0.5  0.5      -3.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  0.5  0.5     138.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.2  0.5  0.5      -4.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          140.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00     416.51     419.74     -16.63    -489.38     353.11      35.73       3.52      -2.20       2.12
                         -854.87      -9.72      -5.85    -421.59     -30.62       3.47    -428.43    -441.38    -216.42    -721.71

   14   2.2  0.5 -0.5       0.00     422.49    -412.20      -5.25    -355.61    -486.55      23.71      -3.42     -49.71      71.27
                          831.56      51.59       5.49     409.00      69.40       7.80     417.21    -448.50    -221.51    -738.42

   15   3.2  0.5 -0.5       0.00      30.05     -27.62      -0.40     -27.06     -33.90       1.79      45.93     698.51   -1031.37
                           55.71    -591.86       3.18      42.81    -593.80    -102.46      70.03     -29.54     -17.32     -52.51

   16   4.2  0.5 -0.5       0.00    -568.28     239.93      10.01    -421.28    -285.50      35.13     103.97      -8.13       0.03
                           -0.19      70.00       7.46     235.44     -62.55      -7.61    -207.19     406.93    -826.59      -0.32

   17   5.2  0.5 -0.5       0.00    -248.90    -551.54      15.72    -281.77     446.67       0.53      10.83      -0.66       0.00
                            0.42      -9.51     -20.54    -552.42      33.43      -9.86     485.79     178.31    -358.06      -0.14

   18   6.2  0.5 -0.5       0.00      60.46     -20.38      -0.04      50.47      22.07      -2.30    1001.94     -65.66       0.27
                            0.01     619.70      -0.86     -36.20    -498.40     -81.84      53.03     -41.27      86.54       0.03

   19   7.2  0.5 -0.5       0.00      16.97      14.78     658.55     -22.40      -3.94    -326.70      -1.11       0.06       0.00
                           -0.01      -1.93    -500.98      12.64    -122.45     713.54       5.84       3.40       0.35       0.00

   20   8.2  0.5 -0.5       0.00      -4.09       7.80    -225.71     -68.28      -6.23   -1007.10       1.57      -0.15      -0.00
                           -0.02       1.54    -483.61      17.60     127.08    -763.44     -20.98      -4.81       1.91       0.00

   21   9.2  0.5 -0.5       0.00       5.13   -1149.91      15.82     -66.71     412.28       5.98       2.67      11.98      -5.65
                         -283.42      56.67      15.81    1148.83     -39.34      -0.44    -416.26       2.39       2.00       2.16

   22  10.2  0.5 -0.5       0.00      34.27     -26.88      -0.51      12.00      12.44      -0.79     -32.51    -495.50     240.46
                           -6.58   -1140.48       5.75      56.25     416.55      71.76     -39.07      11.69       7.66       7.32

   23  11.2  0.5 -0.5       0.00    1141.84       5.62     -29.71     418.40      67.93     -29.43      -0.69      15.92      -7.18
                            2.71      33.85      -0.32     -11.89     -10.80      -4.13       3.13     443.95     217.77     242.88

   24  12.2  0.5 -0.5       0.00     -24.09     -12.87    -928.03       1.01      -0.04      14.24       0.05      -0.00      -0.00
                           -0.00      -4.04    -928.74      12.98      -2.41      14.12       0.21       0.06       0.01       0.00

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

   34   1.2  1.5  0.5      41.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.2  1.5  0.5      22.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1591.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   3.2  1.5  0.5    1590.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -22.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   4.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   5.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   6.2  1.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   7.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   9.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00    -722.44      10.02    -137.99     828.93      12.29       2.18     -24.49      35.75
                          795.40       0.00      10.10     722.68     -37.93       6.23    -839.81       0.53       2.10       6.00

   44   2.2  1.5 -0.5       0.00     722.44       0.00     -18.75     827.12     138.34     -58.16      -4.16     -11.26      19.10
                           -3.75     -10.10       0.00      -3.15      14.46      -1.90      -0.27     870.60     429.11    1378.00

   45   3.2  1.5 -0.5       0.00     -10.02      18.75      -0.00      -5.84     -22.04       0.38     -63.75    -968.27    1377.55
                          -20.59    -722.68       3.15       0.00     827.65     142.17     -36.33     -15.34      -3.83     -19.26

   46   4.2  1.5 -0.5       0.00     137.99    -827.12       5.84       0.00     720.79      -4.67     104.71      -5.85      -0.00
                            0.00      37.93     -14.46    -827.65      -0.00     -16.43     712.97    -104.87     218.31       0.00

   47   5.2  1.5 -0.5       0.00    -828.93    -138.34      22.04    -720.79       0.00      56.52      -1.04      -1.46      -0.00
                            0.00      -6.23       1.90    -142.17      16.43       0.00     118.81     630.41   -1278.28      -0.01

   48   6.2  1.5 -0.5       0.00     -12.29      58.16      -0.38       4.67     -56.52      -0.00    1438.99     -94.74      -0.01
                           -0.00     839.81       0.27      36.33    -712.97    -118.81       0.00      12.16     -21.21      -0.00

   49   7.2  1.5 -0.5       0.00      -2.18       4.16      63.75    -104.71       1.04   -1438.99       0.00      -0.07      -0.00
                           -0.00      -0.53    -870.60      15.34     104.87    -630.41     -12.16      -0.00      -6.43       0.00

   50   8.2  1.5 -0.5       0.00      24.49      11.26     968.27       5.85       1.46      94.74       0.07       0.00       0.00
                           -0.00      -2.10    -429.11       3.83    -218.31    1278.28      21.21       6.43      -0.00      -0.00

   51   9.2  1.5 -0.5   68744.25     -35.75     -19.10   -1377.55       0.00       0.00       0.01       0.00      -0.00      -0.00
                            0.00      -6.00   -1378.00      19.26      -0.00       0.01       0.00      -0.00       0.00      -0.00

   52   1.2  1.5 -1.5     -35.75   65588.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.00       0.00      32.40      -5.90     -15.08      41.53       0.34   -1397.10     934.16    2386.20

   53   2.2  1.5 -1.5     -19.10       0.00   65588.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1378.00     -32.40       0.00   -1251.44    -106.25      24.29   -1452.02       1.17      -4.09     -11.26

   54   3.2  1.5 -1.5   -1377.55       0.00       0.00   65588.99       0.00       0.00       0.00       0.00       0.00       0.00
                          -19.26       5.90    1251.44       0.00    -243.66    1434.31      41.87      42.92     -23.09     -61.78

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00   66859.73       0.00       0.00       0.00       0.00       0.00
                            0.00      15.08     106.25     243.66       0.00      78.71     207.06    1369.62    2046.94       0.01

   56   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   66859.74       0.00       0.00       0.00       0.00
                           -0.01     -41.53     -24.29   -1434.31     -78.71      -0.00   -1232.47     230.78     352.54       0.00

   57   6.2  1.5 -1.5       0.01       0.00       0.00       0.00       0.00       0.00   66859.73       0.00       0.00       0.00
                           -0.00      -0.34    1452.02     -41.87    -207.06    1232.47       0.00     -90.57    -142.95      -0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66859.51       0.00       0.00
                            0.00    1397.10      -1.17     -42.92   -1369.62    -230.78      90.57       0.00     -11.65      -0.00

   59   8.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66859.64       0.00
                           -0.00    -934.16       4.09      23.09   -2046.94    -352.54     142.95      11.65      -0.00      -0.00

   60   9.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   68744.25
                            0.00   -2386.20      11.26      61.78      -0.01      -0.00       0.00       0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -295.77979581    -0.01171048    -2570.15      0.00000000        0.00      0.0000
     2  -295.77979581    -0.01171048    -2570.15      0.00000000        0.00      0.0000
     3  -295.77979449    -0.01170917    -2569.86      0.00000131        0.29      0.0000
     4  -295.77979449    -0.01170917    -2569.86      0.00000131        0.29      0.0000
     5  -295.74554734     0.02253798     4946.52      0.03424846     7516.67      0.9319
     6  -295.74554734     0.02253798     4946.52      0.03424846     7516.67      0.9319
     7  -295.48072319     0.28736214    63068.70      0.29907262    65638.85      8.1382
     8  -295.48072319     0.28736214    63068.70      0.29907262    65638.85      8.1382
     9  -295.48068193     0.28740339    63077.75      0.29911387    65647.91      8.1393
    10  -295.48068193     0.28740339    63077.75      0.29911387    65647.91      8.1393
    11  -295.48062445     0.28746087    63090.37      0.29917135    65660.52      8.1409
    12  -295.48062445     0.28746087    63090.37      0.29917135    65660.52      8.1409
    13  -295.48031801     0.28776731    63157.62      0.29947779    65727.78      8.1492
    14  -295.48031801     0.28776731    63157.62      0.29947779    65727.78      8.1492
    15  -295.48030950     0.28777582    63159.49      0.29948630    65729.65      8.1494
    16  -295.48030950     0.28777582    63159.49      0.29948630    65729.65      8.1494
    17  -295.47788512     0.29020021    63691.58      0.30191069    66261.74      8.2154
    18  -295.47788512     0.29020021    63691.58      0.30191069    66261.74      8.2154
    19  -295.47487537     0.29320996    64352.15      0.30492044    66922.30      8.2973
    20  -295.47487537     0.29320996    64352.15      0.30492044    66922.30      8.2973
    21  -295.47486543     0.29321989    64354.33      0.30493037    66924.48      8.2976
    22  -295.47486543     0.29321989    64354.33      0.30493037    66924.48      8.2976
    23  -295.47486142     0.29322390    64355.21      0.30493438    66925.36      8.2977
    24  -295.47486142     0.29322390    64355.21      0.30493438    66925.36      8.2977
    25  -295.47486131     0.29322401    64355.23      0.30493449    66925.39      8.2977
    26  -295.47486131     0.29322401    64355.23      0.30493449    66925.39      8.2977
    27  -295.47395945     0.29412588    64553.17      0.30583636    67123.32      8.3222
    28  -295.47395945     0.29412588    64553.17      0.30583636    67123.32      8.3222
    29  -295.47391320     0.29417212    64563.32      0.30588260    67133.47      8.3235
    30  -295.47391320     0.29417212    64563.32      0.30588260    67133.47      8.3235
    31  -295.47373907     0.29434626    64601.54      0.30605674    67171.69      8.3282
    32  -295.47373907     0.29434626    64601.54      0.30605674    67171.69      8.3282
    33  -295.46267939     0.30540593    67028.85      0.31711641    69599.01      8.6292
    34  -295.46267939     0.30540593    67028.85      0.31711641    69599.01      8.6292
    35  -295.46265084     0.30543449    67035.12      0.31714497    69605.27      8.6300
    36  -295.46265084     0.30543449    67035.12      0.31714497    69605.27      8.6300
    37  -295.45438016     0.31370516    68850.32      0.32541564    71420.48      8.8550
    38  -295.45438016     0.31370516    68850.32      0.32541564    71420.48      8.8550
    39  -295.45171001     0.31637532    69436.36      0.32808580    72006.51      8.9277
    40  -295.45171001     0.31637532    69436.36      0.32808580    72006.51      8.9277
    41  -295.45157511     0.31651022    69465.96      0.32822070    72036.12      8.9313
    42  -295.45157511     0.31651022    69465.96      0.32822070    72036.12      8.9313
    43  -295.45156690     0.31651843    69467.77      0.32822891    72037.92      8.9316
    44  -295.45156690     0.31651843    69467.77      0.32822891    72037.92      8.9316
    45  -295.44989076     0.31819456    69835.63      0.32990504    72405.79      8.9772
    46  -295.44989076     0.31819456    69835.63      0.32990504    72405.79      8.9772
    47  -295.44988302     0.31820230    69837.33      0.32991279    72407.49      8.9774
    48  -295.44988302     0.31820230    69837.33      0.32991279    72407.49      8.9774
    49  -295.44752592     0.32055941    70354.66      0.33226989    72924.81      9.0415
    50  -295.44752592     0.32055941    70354.66      0.33226989    72924.81      9.0415
    51  -295.44740579     0.32067953    70381.02      0.33239001    72951.18      9.0448
    52  -295.44740579     0.32067953    70381.02      0.33239001    72951.18      9.0448
    53  -295.44738924     0.32069608    70384.65      0.33240656    72954.81      9.0452
    54  -295.44738924     0.32069608    70384.65      0.33240656    72954.81      9.0452
    55  -295.43946876     0.32861656    72123.00      0.34032705    74693.15      9.2608
    56  -295.43946876     0.32861656    72123.00      0.34032705    74693.15      9.2608
    57  -295.43587785     0.33220748    72911.11      0.34391796    75481.27      9.3585
    58  -295.43587785     0.33220748    72911.11      0.34391796    75481.27      9.3585
    59  -295.43587465     0.33221067    72911.82      0.34392115    75481.97      9.3586
    60  -295.43587465     0.33221067    72911.82      0.34392115    75481.97      9.3586


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.427361415  -0.031606829   0.694464862   0.007908470   0.577091407  -0.006558909  -0.000018086   0.000108566
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.300613706  -0.251023255  -0.196292553  -0.009830125   0.001974388   0.175299026  -0.000087695   0.000069139
                        -0.060453339  -0.184235466  -0.001079468   0.660586146   0.020685022  -0.549468326   0.000007692  -0.000000768

    3    3.2  0.5  0.5   0.033752153   0.187472995  -0.014064127   0.160416584  -0.004414920  -0.388351405  -0.000007856   0.000004163
                         0.713684737  -0.280601341  -0.118462697   0.040945690  -0.403554196  -0.139109090  -0.000023345   0.000039400

    4    4.2  0.5  0.5  -0.002326224   0.002467380   0.001534143   0.000464465  -0.000003141  -0.000000734  -0.062348280   0.046914456
                         0.000033160   0.002249929  -0.000372558   0.003083845  -0.000000006   0.000002746  -0.003729108   0.014361738

    5    5.2  0.5  0.5  -0.003379172  -0.002547990   0.001959734   0.000125165  -0.000000862  -0.000000451   0.040867330   0.061394695
                        -0.000203185  -0.002608443   0.000037242   0.000405982   0.000000035   0.000001656  -0.004082567   0.001312834

    6    6.2  0.5  0.5   0.000258903  -0.000566764  -0.000232059   0.004163595   0.000000325  -0.000000341   0.001314595  -0.007207180
                        -0.001198402   0.000232745  -0.003060280  -0.000389377  -0.000000438  -0.000000402  -0.078860726   0.129303517

    7    7.2  0.5  0.5   0.000248082   0.003405732   0.000000321   0.000177347   0.000000005   0.000001237   0.001630645  -0.000007631
                        -0.002264307  -0.003457628   0.000253601   0.000012884  -0.000001313   0.000000344   0.022368968   0.013591285

    8    8.2  0.5  0.5   0.000040640  -0.000147173  -0.000067848   0.003175482  -0.000000017  -0.000001361   0.004731830   0.000007732
                         0.000134106   0.000249819   0.004317428   0.000041679   0.000001442  -0.000000398   0.057818222   0.035956174

    9    9.2  0.5  0.5  -0.000109507  -0.000180904  -0.000760104  -0.000010507   0.001419146  -0.000413487   0.000595485   0.000348585
                        -0.000030948  -0.000164600  -0.000004303   0.000561257  -0.000017505   0.001356754  -0.000049642  -0.000012781

   10   10.2  0.5  0.5   0.000030504   0.000234727  -0.000007600   0.000192725   0.000010866   0.001370256   0.000051212  -0.000003048
                         0.000860381  -0.000330485  -0.000141998   0.000024445   0.001406278   0.000424221   0.000288412  -0.000480787

   11   11.2  0.5  0.5   0.000620271  -0.000236601   0.000420758   0.000002283  -0.001419152  -0.000388778   0.000458836  -0.000770186
                        -0.000033993  -0.000164305  -0.000003853   0.000564524  -0.000022280   0.001365672  -0.000029922   0.000010639

   12   12.2  0.5  0.5   0.000000108   0.000001676   0.000000026  -0.000001506   0.000086100   0.007575653   0.000007233   0.000000036
                        -0.000001123  -0.000001725  -0.000002066  -0.000000018  -0.008020360   0.002115269   0.000057221   0.000038331

   13    1.2  0.5 -0.5   0.023068299   0.311910473  -0.000063052   0.005536768  -0.001674265  -0.147311718  -0.000108176  -0.000018022
                         0.021606601   0.292146600  -0.007908219   0.694442790   0.006341618   0.557972893   0.000009183   0.000001530

   14    2.2  0.5 -0.5   0.309154131   0.178077204  -0.660486778  -0.002644418   0.576012792   0.019495753  -0.000068956  -0.000088031
                         0.037136294   0.249623148   0.015096476  -0.196277708  -0.029231039   0.007189158   0.000005083  -0.000000247

   15    3.2  0.5 -0.5   0.054993119   0.512512855  -0.042223343  -0.118571061   0.035367687  -0.389057834  -0.000000815  -0.000005853
                        -0.332954942  -0.497810892  -0.160085037  -0.013119211   0.410995473  -0.107282256   0.000039611   0.000023926

   16    4.2  0.5 -0.5  -0.003338885  -0.001675130  -0.003087450  -0.000360315  -0.000002842   0.000000796  -0.045531526  -0.061809408
                        -0.000044600  -0.001614422  -0.000439863   0.001537064   0.000000008  -0.000003038   0.018278562   0.008989518

   17    5.2  0.5 -0.5   0.003642801  -0.002605193  -0.000406967   0.000052865  -0.000001717   0.000000254  -0.061063622   0.041066197
                        -0.000161957  -0.002161725  -0.000121924   0.001959375   0.000000013  -0.000000825   0.006501244   0.000611143

   18    6.2  0.5 -0.5   0.000254548  -0.000630273   0.000356169  -0.003062033   0.000000302  -0.000000506   0.018118583   0.007980375
                         0.000557313   0.001051643  -0.004166567  -0.000207653   0.000000432   0.000000202   0.128230495   0.078466909

   19    7.2  0.5 -0.5  -0.000122026  -0.001366830  -0.000014298   0.000253595  -0.000000017  -0.000001271   0.001157232  -0.000267294
                        -0.004851733   0.001822199  -0.000177239  -0.000001701  -0.000001284  -0.000000330   0.013541931  -0.022426731

   20    8.2  0.5 -0.5  -0.000063363   0.000121336  -0.000066995   0.004316750   0.000000038   0.000001399   0.003033675  -0.000175725
                         0.000282939  -0.000070096  -0.003175049  -0.000102268   0.000001417   0.000000352   0.035827968  -0.058011258

   21    9.2  0.5 -0.5   0.000244555  -0.000101080  -0.000561155  -0.000010363  -0.001417355  -0.000379185  -0.000348417   0.000597550
                         0.000003533  -0.000052272   0.000014981  -0.000760046   0.000053455   0.001367662   0.000016750  -0.000000905

   22   10.2  0.5 -0.5   0.000054605   0.000610425  -0.000025980  -0.000142054  -0.000060387   0.001356916  -0.000037631   0.000026633
                        -0.000401666  -0.000607098  -0.000192524  -0.000006468  -0.001433150   0.000369481  -0.000479321  -0.000291710

   23   11.2  0.5 -0.5   0.000285003   0.000429468  -0.000564525  -0.000000498  -0.001419670   0.000340719   0.000768326   0.000459722
                         0.000041824   0.000448830   0.000002218   0.000420775   0.000027289  -0.001377824  -0.000054545  -0.000008996

   24   12.2  0.5 -0.5  -0.000000044  -0.000000689   0.000000030  -0.000002066  -0.000111387  -0.007776632   0.000003206   0.000002367
                        -0.000002405   0.000000893   0.000001506   0.000000043  -0.007864634  -0.001964076   0.000038196  -0.000057628

   25    1.2  1.5  1.5  -0.011022461   0.004070561  -0.002047304   0.000088756  -0.000018007  -0.000083944  -0.266654350   0.442815425
                         0.000191617   0.003162227   0.000189530  -0.002785069   0.000092648  -0.000037793   0.019507960   0.008472462

   26    2.2  1.5  1.5  -0.000793205  -0.001310788  -0.005625628   0.000012345  -0.003577458   0.000896536  -0.002553382  -0.004463341
                        -0.000067319  -0.001252962   0.000022133   0.004115681   0.000011174  -0.003391688   0.002134547   0.001156437

   27    3.2  1.5  1.5   0.000218888  -0.001343302   0.000075362   0.004101733   0.000011655  -0.003390757   0.019975352  -0.009493204
                         0.000840047   0.001209293   0.005632415   0.000059844   0.003576376  -0.000895892   0.130237377   0.079046226

   28    4.2  1.5  1.5  -0.001511828   0.000737949   0.004632365   0.000357644   0.007944561   0.001411155  -0.037303163   0.031746139
                         0.000137359   0.000744647   0.000312700   0.004526868   0.000172038  -0.006702350  -0.000867670   0.000107708

   29    5.2  1.5  1.5  -0.001050618  -0.001053911  -0.004484204  -0.000016048  -0.002447901   0.001279632   0.072232859   0.053104991
                        -0.000076162  -0.001061661  -0.000093503   0.004623306  -0.000092311  -0.004748145  -0.006801360  -0.001669596

   30    6.2  1.5  1.5   0.000031279  -0.001222886  -0.000393567   0.003790463  -0.000610793  -0.003672233  -0.001216955  -0.002712336
                         0.000755589   0.001129708   0.005187433  -0.000265476   0.003744103  -0.000537860  -0.040796174  -0.025862797

   31    7.2  1.5  1.5   0.000054521   0.001111479   0.000020626  -0.004155244   0.000012477   0.004079006  -0.007126995  -0.002953071
                         0.003971907  -0.001481812   0.003045903   0.000057210   0.004155921   0.001042699  -0.125678135   0.208033682

   32    8.2  1.5  1.5  -0.000090765  -0.001332671   0.000052970  -0.003536773   0.000104049   0.006126159   0.003304314   0.001458933
                        -0.004656888   0.001738850   0.002578968   0.000089287   0.006188035   0.001524158   0.054454345  -0.090260356

   33    9.2  1.5  1.5   0.000284884   0.005250583   0.000072965  -0.004694916  -0.000000021  -0.000000315   0.000074123   0.000027689
                         0.018453167  -0.006882077   0.003384284   0.000029266  -0.000000309  -0.000000040   0.001221707  -0.002021458

   34    1.2  1.5  0.5   0.000527541   0.000756314   0.003266634  -0.000184818  -0.004177909   0.001149361   0.234644751   0.145234472
                         0.000154711   0.000677053   0.000185512  -0.002405450   0.000007814  -0.003916493  -0.027438890   0.003145404

   35    2.2  1.5  0.5   0.008429958  -0.003134458  -0.003602127  -0.000219098  -0.002043514  -0.000492774  -0.302484616   0.499015005
                        -0.000092508  -0.002437319   0.000145947  -0.004900028   0.000057462   0.002066077   0.016055643   0.010809398

   36    3.2  1.5  0.5  -0.000085900   0.001218471   0.000079371  -0.008102161   0.000165426   0.001978332  -0.011394841  -0.014481311
                         0.004240919  -0.001563493   0.005885717   0.000256630   0.002022980   0.000578462  -0.155647881   0.258601764

   37    4.2  1.5  0.5   0.003686494   0.003666404  -0.001295436   0.000110315  -0.001086277  -0.000752311   0.113109550   0.090635289
                        -0.000148803   0.003898756  -0.000051532   0.001307929  -0.000398255   0.000950414  -0.012249728   0.000021680

   38    5.2  1.5  0.5  -0.005341791   0.002902990  -0.001295324  -0.000022030   0.006329831   0.001617863   0.077836704  -0.081372695
                         0.000143974   0.002321577   0.000017521  -0.001263603  -0.000089561  -0.006247636  -0.006094794  -0.002112582

   39    6.2  1.5  0.5  -0.000366725  -0.001902129   0.000064882   0.001468623   0.000005770  -0.006244848  -0.008540247  -0.006961335
                        -0.005841576   0.001898557  -0.001082476  -0.000105862  -0.006395103  -0.001677525  -0.011990697   0.020312682

   40    7.2  1.5  0.5  -0.000253469  -0.003262660  -0.000043886   0.002591008  -0.000038797  -0.005988102   0.012434003   0.001170875
                         0.002160621   0.003344222   0.003539295   0.000015548   0.006297500  -0.001702513   0.127287117   0.077293603

   41    8.2  1.5  0.5  -0.000188051  -0.002734431   0.000022141  -0.003028395   0.000050223   0.003992146   0.012147651   0.001857685
                         0.001846949   0.002868820  -0.004171236  -0.000033675  -0.004222545   0.001109522   0.118273470   0.071784747

   42    9.2  1.5  0.5   0.000228653   0.003672460   0.000163051  -0.011995360  -0.000000024  -0.000000239   0.000119497   0.000038438
                        -0.002468398  -0.003725631  -0.016477141  -0.000130444   0.000000249  -0.000000051   0.001377568   0.000833407

   43    1.2  1.5 -0.5   0.001014834  -0.000490788  -0.002406847  -0.000211550  -0.004080136  -0.001074033   0.144447925  -0.236124771
                         0.000022872  -0.000247713  -0.000165634  -0.003265051   0.000111537   0.004037504  -0.015418894  -0.007492958

   44    2.2  1.5 -0.5  -0.003953854  -0.006089380  -0.004901620  -0.000117224   0.002123419  -0.000577198   0.496312317   0.302758652
                        -0.000363851  -0.005830283  -0.000180025   0.003603176   0.000050950   0.001961146  -0.052980205  -0.009587778

   45    3.2  1.5 -0.5  -0.000179510  -0.002836421   0.000192025  -0.005886163   0.000054298  -0.001913733  -0.036303431  -0.001811584
                         0.001974071   0.003153964  -0.008103949  -0.000032444   0.002060453  -0.000676343  -0.256450077  -0.156053912

   46    4.2  1.5 -0.5   0.005341142  -0.002588871   0.001308767   0.000061859   0.001110967   0.000107772   0.090308637  -0.113740341
                        -0.000339140  -0.002628712   0.000099883   0.001294984  -0.000484780   0.001151951  -0.007688054  -0.002638374

   47    5.2  1.5 -0.5   0.003705796   0.003800294  -0.001263739  -0.000007193  -0.006453642   0.001702383  -0.080902378  -0.078073286
                         0.000290093   0.003756757  -0.000011955   0.001295423  -0.000030543  -0.006097267   0.008987979   0.000510922

   48    6.2  1.5 -0.5  -0.000090409   0.004260988  -0.000094149   0.001081925  -0.000027854   0.006184711  -0.008654550   0.007495399
                        -0.002685971  -0.004012789   0.001469420  -0.000073510  -0.006466177   0.001626873  -0.019651056  -0.012670108

   49    7.2  1.5 -0.5  -0.000095129  -0.001292017   0.000036205  -0.003538833  -0.000117552  -0.006098773  -0.005371257  -0.001622769
                        -0.004671159   0.001750206   0.002590801   0.000072102  -0.006224315  -0.001570025  -0.077115638   0.127882686

   50    8.2  1.5 -0.5  -0.000034588  -0.001125335  -0.000057818   0.004170927   0.000053707   0.004095476  -0.004220937  -0.002099869
                        -0.003963085   0.001476551  -0.003028030  -0.000055396   0.004143113   0.001029313  -0.071684619   0.118877120

   51    9.2  1.5 -0.5   0.000133490   0.001520528  -0.000226075   0.016475317   0.000000012  -0.000000247  -0.000032194  -0.000002546
                         0.005229672  -0.001957873  -0.011993939  -0.000294413  -0.000000244  -0.000000040  -0.000833672   0.001382739

   52    1.2  1.5 -1.5  -0.005132622  -0.007913772   0.002784273   0.000173202   0.000015113   0.000094175  -0.440511817  -0.267348811
                        -0.000474701  -0.007674867  -0.000110958  -0.002048750   0.000090811   0.000006239   0.045897962   0.003117104

   53    2.2  1.5 -1.5   0.001813213  -0.000624941  -0.004115649  -0.000022720   0.003508179   0.000924007   0.004545163  -0.002724784
                        -0.000018414  -0.000493107   0.000020469  -0.005625625  -0.000001053  -0.003456088   0.000774757  -0.001910918

   54    3.2  1.5 -1.5   0.000153732   0.000734017  -0.000092544   0.005632837   0.000000667   0.003454919   0.016145365   0.008887542
                         0.001800894  -0.000463476  -0.004101125   0.000030454   0.003507115   0.000924196   0.077959951  -0.131460263

   55    4.2  1.5 -1.5  -0.001047638  -0.001009511  -0.004529575   0.000349623   0.006840527  -0.001861636  -0.031623257  -0.037096084
                         0.000039016  -0.001133745  -0.000321541   0.004629724   0.000346476   0.007725280   0.002792593   0.004019876

   56    5.2  1.5 -1.5   0.001494956  -0.000818861  -0.004623031  -0.000129251   0.004917490   0.000535612  -0.053055898   0.072549289
                        -0.000054396  -0.000662621   0.000052907  -0.004483316  -0.000025200  -0.002390368   0.002828311   0.000667116

   57    6.2  1.5 -1.5   0.000120251   0.000539354   0.000235247   0.005184130  -0.000417355   0.003775979   0.000514992   0.002238181
                         0.001660491  -0.000530086  -0.003792459  -0.000434912   0.003687872   0.000365184  -0.025999535   0.040752906

   58    7.2  1.5 -1.5   0.000201760   0.002755010  -0.000024079   0.003045970   0.000033075   0.004015055   0.020539168   0.003529122
                        -0.001841316  -0.002861632   0.004155568  -0.000003659  -0.004210037   0.001072929   0.207038344   0.125830573

   59    8.2  1.5 -1.5  -0.000216035  -0.003249719  -0.000061086   0.002579308   0.000090136   0.005956471  -0.009088442  -0.001313588
                         0.002180124   0.003336790   0.003537372   0.000032407  -0.006312271   0.001680196  -0.089813476  -0.054538689

   60    9.2  1.5 -1.5   0.000872478   0.012822609   0.000008166   0.003384758  -0.000000042  -0.000000294  -0.000198576  -0.000029482
                        -0.008612223  -0.013273328   0.004695000   0.000045980   0.000000315  -0.000000099  -0.002011872  -0.001223598


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000018917   0.000145181   0.000120402  -0.000007159   0.010910093   0.002287446  -0.000057076   0.006871868
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000087841  -0.000112584  -0.000114113   0.000024246  -0.003645175   0.002025648  -0.003845613   0.005171170
                         0.000013686  -0.000000413   0.000001013   0.000010115  -0.001976060   0.010032357   0.002733375  -0.000763621

    3    3.2  0.5  0.5  -0.000012334  -0.000008779  -0.000010717  -0.000039781  -0.000756839   0.002647272  -0.002710277   0.000303624
                        -0.000092716   0.000024922   0.000007798   0.000042679  -0.001877696  -0.000428472  -0.003889523   0.011809386

    4    4.2  0.5  0.5   0.110026577  -0.006423208  -0.036951954   0.030058348   0.015768270   0.018275264   0.029100572  -0.022696020
                        -0.010917554  -0.000919622   0.002390082   0.027699302  -0.010768196   0.033703308  -0.017066241  -0.001433737

    5    5.2  0.5  0.5   0.032229484  -0.061856855   0.098204522  -0.000685435   0.022362069   0.007241152  -0.037472551  -0.033339175
                        -0.001196544   0.001980185  -0.000559997   0.005952957  -0.000417689   0.004972715   0.023093870  -0.000083992

    6    6.2  0.5  0.5  -0.013691928   0.000827675   0.002654526  -0.008897307  -0.010644448   0.040054082  -0.000166203   0.002693706
                        -0.031252745   0.007971818   0.000816853   0.003041872  -0.028524231  -0.022294764   0.005790131  -0.012156675

    7    7.2  0.5  0.5  -0.000146145   0.000456045  -0.001267835  -0.006524927  -0.000676386   0.002765634  -0.032993191  -0.000133009
                        -0.002994595  -0.011276211  -0.126909173   0.015464247   0.004060754   0.000145745  -0.053673986  -0.025250154

    8    8.2  0.5  0.5   0.003579560   0.001639682  -0.001926725   0.000112458  -0.007505298   0.034159710   0.003401727   0.000520022
                         0.033370195   0.127218945   0.000058324   0.000045792   0.050467685   0.000482943   0.003718290   0.001901467

    9    9.2  0.5  0.5  -0.000010718  -0.000385296   0.000416658  -0.000076147   0.234689111   0.003012595   0.062840564   0.028237145
                         0.000045695  -0.000009439  -0.000010612   0.000060494   0.032654827  -0.160287064  -0.042073818   0.005768224

   10   10.2  0.5  0.5   0.000168451  -0.000091054   0.000191995   0.002483091   0.013717666  -0.057055483   0.057938417  -0.003597418
                        -0.001551864   0.000400368  -0.000428345  -0.002333115   0.040029338   0.016155392   0.088756740  -0.264357349

   11   11.2  0.5  0.5   0.008921900  -0.002365508   0.000575829   0.003338534  -0.113797858  -0.069423556   0.064083405  -0.193249098
                        -0.000540170  -0.000112226   0.000222660   0.003411893   0.032221893  -0.158917325  -0.042138429   0.006681828

   12   12.2  0.5  0.5   0.000186626   0.000027958   0.000006105   0.000251575   0.000277353  -0.001330069  -0.001120881  -0.000008326
                         0.001671824   0.006355770   0.004726135  -0.000572945  -0.001977734  -0.000017693  -0.001803792  -0.000852080

   13    1.2  0.5 -0.5  -0.000144827  -0.000018871  -0.000005134  -0.000086345  -0.000630563   0.003007503   0.005846723   0.000048561
                         0.000010127   0.000001320  -0.000004989  -0.000083912  -0.002198818   0.010487376  -0.003610873  -0.000029991

   14    2.2  0.5 -0.5   0.000112281  -0.000088582   0.000024437   0.000081129  -0.010202043  -0.002904335   0.004800985   0.004708196
                        -0.000008265  -0.000007525   0.000009644   0.000080255   0.000818380  -0.002959216  -0.002067525   0.000304905

   15    3.2  0.5 -0.5   0.000010496  -0.000005837   0.000001216   0.000002250  -0.000317883  -0.002013576  -0.005946999   0.000262180
                         0.000024249   0.000093351  -0.000058332   0.000013061  -0.002662816  -0.000209904  -0.010207203  -0.004733418

   16    4.2  0.5 -0.5   0.006343418   0.110520112   0.040860492   0.024833956  -0.037435260  -0.006004257  -0.018556859  -0.033726929
                        -0.001365411   0.003216430   0.001084337   0.027466963  -0.008276443   0.018125708   0.013145642   0.000770810

   17    5.2  0.5 -0.5   0.061844317   0.032234446   0.003657245  -0.070035987  -0.006776158   0.005762877  -0.028321502   0.044017238
                        -0.002339254  -0.001054429  -0.004746796  -0.068843317  -0.005589799   0.021610780   0.017589776  -0.000041500

   18    6.2  0.5 -0.5  -0.000269612  -0.011478650  -0.004260630  -0.002472953   0.010389536  -0.030353320   0.008679673   0.003183875
                         0.008010134   0.032131659  -0.008382248  -0.001264223  -0.044647996  -0.002368964   0.008927715   0.004839026

   19    7.2  0.5 -0.5  -0.001241468   0.000063089   0.006098227   0.089356081  -0.000902480   0.003716964   0.013154711  -0.000132123
                        -0.011216937   0.002997495  -0.015637430  -0.090127888  -0.002618302  -0.001769577   0.021553226  -0.063003412

   20    8.2  0.5 -0.5   0.007238040   0.001243216   0.000112562   0.001341082  -0.009880781   0.046443360  -0.000556694  -0.000940455
                         0.127023459  -0.033538599   0.000045536   0.001384620  -0.032703046  -0.021126547  -0.001891056   0.004951058

   21    9.2  0.5 -0.5   0.000383699  -0.000013879  -0.000012448  -0.000291405   0.153246202   0.096084574   0.020993771  -0.075574001
                        -0.000036291  -0.000044836  -0.000096452  -0.000297992  -0.047080995   0.216594255  -0.019745135  -0.002777211

   22   10.2  0.5 -0.5   0.000118759   0.000276285   0.000154702   0.000160840   0.000198611   0.042259826   0.135847745  -0.002657285
                         0.000393042   0.001536334   0.003403709  -0.000440990   0.059298275   0.002151583   0.226810801   0.105960172

   23   11.2  0.5 -0.5   0.002351919   0.008937847   0.004772044  -0.000568128   0.171897461  -0.000396356  -0.167931207  -0.076665386
                        -0.000276951  -0.000083462  -0.000120075  -0.000241634   0.022926167  -0.118271069   0.095859118  -0.002179123

   24   12.2  0.5 -0.5   0.000415436   0.000069559  -0.000218889  -0.003298166   0.000383658  -0.001824650   0.000440647   0.000005852
                         0.006342240  -0.001680769   0.000586211   0.003385040   0.001273657   0.000811794   0.000729342  -0.002123677

   25    1.2  1.5  1.5   0.190099738  -0.051947761   0.017185924   0.085376050   0.088645679   0.050058826  -0.185227282   0.536301534
                        -0.012376104  -0.001690017   0.022168971   0.080628377  -0.033368256   0.123166008   0.108402546   0.002302450

   26    2.2  1.5  1.5  -0.088515936  -0.332080209   0.564149600  -0.068370359   0.275805399  -0.000167513   0.070837193   0.030769729
                         0.009723589   0.001675080   0.007496961  -0.031062929   0.035045987  -0.185536862  -0.045554097  -0.000990429

   27    3.2  1.5  1.5  -0.003469774   0.005993123  -0.006842489   0.032193886   0.033697638  -0.190755387  -0.042753076  -0.014881774
                         0.003321106   0.011744262   0.638279144  -0.079184290  -0.282006959  -0.003461950  -0.076969914  -0.035362051

   28    4.2  1.5  1.5  -0.106986010   0.009139766  -0.038787632  -0.012827582   0.086235587   0.048923470   0.017849414  -0.031732260
                         0.003937674  -0.012976146   0.009218807  -0.016247481  -0.009859719   0.085054806  -0.008443912   0.001314268

   29    5.2  1.5  1.5   0.010075205   0.109199987   0.208697799  -0.028368825  -0.100781617   0.006529950  -0.027495791  -0.019801574
                        -0.001589541   0.000294743  -0.001108240  -0.013887575  -0.020016884   0.092110339   0.017154661  -0.000048652

   30    6.2  1.5  1.5   0.001893325  -0.001211757   0.003743884   0.008582270  -0.022319718   0.072278184   0.015636565   0.002382227
                        -0.052692533  -0.197280700   0.144911057  -0.016653962   0.112897742  -0.004761415   0.027924020   0.012388335

   31    7.2  1.5  1.5   0.002193947   0.000665067  -0.000781046  -0.026213403   0.015825085  -0.078875962  -0.016991015  -0.000457316
                         0.025256309  -0.007482754   0.005204331   0.026788198   0.055428569   0.035111846  -0.027899400   0.081840389

   32    8.2  1.5  1.5  -0.009575906  -0.001318914   0.002760084   0.038477326   0.014266148  -0.067158579   0.020039269   0.000428885
                        -0.142432425   0.037867373  -0.006861121  -0.039540706   0.046721227   0.030336582   0.033429986  -0.097274514

   33    9.2  1.5  1.5   0.000292202   0.000054947   0.000026730   0.000192881  -0.017337030   0.082155295   0.074000558   0.002154453
                         0.004426271  -0.001179213  -0.000046833  -0.000201158  -0.057227993  -0.036401449   0.123404334  -0.358940358

   34    1.2  1.5  0.5   0.157093874   0.594820930   0.129791788  -0.018871550  -0.168904473   0.008072722  -0.034988810  -0.019089906
                        -0.004536760  -0.005970976   0.000332230  -0.003403845  -0.030312476   0.109240012   0.024334320  -0.005121174

   35    2.2  1.5  0.5  -0.130514664   0.031954887   0.002988682   0.019767637   0.151992662   0.102669962   0.142777685  -0.412926353
                         0.015206006  -0.000502274   0.001677745   0.022630758  -0.049503704   0.216001509  -0.084212113  -0.005167051

   36    3.2  1.5  0.5   0.029172983  -0.010919185  -0.011642199  -0.121711238  -0.073429209   0.357469207   0.041886355   0.007661158
                         0.479961237  -0.127309509   0.021543417   0.124689816  -0.248538467  -0.165712378   0.072069024  -0.207841278

   37    4.2  1.5  0.5  -0.026484654  -0.008274988  -0.246323658   0.029133235  -0.027056369   0.004102883   0.101673564   0.071325586
                        -0.009357126   0.003732490   0.000193897   0.008019381  -0.005957848   0.023105218  -0.059391755  -0.009257907

   38    5.2  1.5  0.5   0.128505041  -0.036724846  -0.039531309   0.021371846  -0.022350044  -0.011262409   0.059735270  -0.112513133
                        -0.007854567  -0.001308395   0.000606753   0.018334901   0.004436827  -0.021413485  -0.037028289  -0.000650035

   39    6.2  1.5  0.5  -0.008240001  -0.001162659   0.019329183   0.027409983  -0.004544454   0.029966138   0.018558168  -0.004641806
                        -0.159919028   0.042280718  -0.005625370  -0.030629525  -0.021094016  -0.015219771   0.046749204  -0.124451707

   40    7.2  1.5  0.5   0.001026692  -0.000026828   0.001252964   0.006049727  -0.010199338   0.048490277   0.052062988  -0.000231762
                         0.003869222   0.017160780   0.114276484  -0.013956917   0.072166587   0.000476644   0.083799465   0.038984363

   41    8.2  1.5  0.5  -0.004569143  -0.000776518  -0.000347851   0.006768499   0.012161922  -0.058597830   0.044275225   0.000461129
                        -0.042400907  -0.161010109   0.127485854  -0.015404008  -0.087292388  -0.000832516   0.069963538   0.033217865

   42    9.2  1.5  0.5   0.000118927   0.000019842   0.000030711   0.000219306  -0.044932699   0.213856423   0.053035122   0.000590527
                         0.001113990   0.004219933   0.004006005  -0.000486041   0.318781450   0.003175382   0.085115767   0.040171355

   43    1.2  1.5 -0.5   0.593788663  -0.157027701   0.015905762   0.093310258   0.107232799   0.075698625   0.013551115  -0.042555824
                        -0.035533293   0.006431842   0.010711128   0.090217594  -0.022353429   0.154004173  -0.014388127  -0.002319000

   44    2.2  1.5 -0.5   0.031912092   0.131257425  -0.029948203   0.003312571   0.235934676   0.005686989   0.348610923   0.165727975
                        -0.001727854   0.006065360   0.002452725   0.000879727   0.039148458  -0.159749943  -0.221371399  -0.003374231

   45    3.2  1.5 -0.5  -0.002012545   0.004376147   0.000383711   0.006665192  -0.060750932   0.259150396  -0.115729984  -0.002231448
                         0.127761063   0.480827102   0.174244164  -0.023563421   0.389299564   0.002071435  -0.172809898  -0.083327256

   46    4.2  1.5 -0.5  -0.008515181   0.025767473  -0.026481521  -0.176513100   0.023341006   0.013185433  -0.065549868   0.117713730
                        -0.003146205  -0.011181684  -0.014552830  -0.171809509  -0.002425327   0.024365702   0.029601739  -0.002893426

   47    5.2  1.5 -0.5  -0.036544136  -0.128739921  -0.028104729  -0.027926567  -0.023688432   0.001896148   0.095386855   0.070280745
                         0.003866826   0.001127999  -0.001746023  -0.027985699  -0.004923147   0.022707147  -0.059673910   0.000116073

   48    6.2  1.5 -0.5  -0.004108976  -0.002934681   0.001689889   0.009941214  -0.006369535   0.021529453  -0.061444717  -0.008775051
                        -0.042096641  -0.160104281  -0.041068470   0.017505267   0.033000604  -0.001446452  -0.108325068  -0.049526682

   49    7.2  1.5 -0.5  -0.001223755  -0.000754307   0.005388507   0.080541310   0.013825125  -0.066558882   0.020681806   0.000263189
                        -0.017117112   0.003931411  -0.014225285  -0.081078863   0.046480104   0.029697777   0.033046893  -0.098655135

   50    8.2  1.5 -0.5   0.010456090   0.001600483   0.005881570   0.088599317  -0.016953481   0.080557616   0.017062232   0.000907394
                         0.160672114  -0.042616340  -0.015763984  -0.091667470  -0.056097934  -0.035753935   0.028504726  -0.082791116

   51    9.2  1.5 -0.5  -0.000274553  -0.000040934   0.000181463   0.002813931   0.062004535  -0.294043845   0.020605900   0.000398639
                        -0.004211039   0.001119573  -0.000501400  -0.002851458   0.204695116   0.131067834   0.034488888  -0.100285886

   52    1.2  1.5 -1.5   0.051703355   0.190499982   0.117418842  -0.027774922  -0.132193218  -0.007639101   0.455086216   0.214555980
                        -0.005309342  -0.000913805   0.001679439   0.003920834  -0.014167028   0.094409433  -0.283762529  -0.005097977

   53    2.2  1.5 -1.5   0.331388231  -0.088978581  -0.070679733  -0.409798382   0.178394321   0.109717304   0.026699928  -0.084206432
                        -0.021492134  -0.003525776  -0.025372957  -0.387796676  -0.050984523   0.255458318  -0.015325503  -0.001536415

   54    3.2  1.5 -1.5  -0.005159344  -0.003692975  -0.032098460  -0.439929159   0.055911912  -0.261791285   0.005919538  -0.004069233
                         0.012133688  -0.003070995   0.079223020   0.462503427   0.182410144   0.110130735   0.037906476  -0.087952456

   55    4.2  1.5 -1.5  -0.010022613  -0.107000092  -0.020522520   0.021391246  -0.095245679   0.014294214  -0.027689032  -0.019623553
                        -0.012307028   0.003534365   0.002711765   0.033643445  -0.023581489   0.085612301   0.015555743   0.002194856

   56    5.2  1.5 -1.5  -0.108913460   0.010161539  -0.030023057  -0.148892907  -0.090341540  -0.047023028  -0.016822010   0.032408010
                         0.007910901   0.000882908  -0.009811780  -0.146242613   0.019114418  -0.091358879   0.010446276   0.000147663

   57    6.2  1.5 -1.5  -0.012551844   0.005564103  -0.005451975  -0.103677813  -0.015347450   0.102370755  -0.004482695   0.001368978
                        -0.196884723   0.052432132   0.017924446   0.101312103  -0.070790273  -0.052576598  -0.011792001   0.031974661

   58    7.2  1.5 -1.5  -0.001185382   0.000426935  -0.000129135  -0.003066938  -0.012008279   0.057643343  -0.043392724  -0.000203649
                        -0.007418140  -0.025347826  -0.037479773   0.004276562   0.085498891  -0.000067641  -0.069391137  -0.032665419

   59    8.2  1.5 -1.5   0.003957012   0.000382310   0.000036458   0.002802361  -0.010648077   0.048843631   0.051478508   0.000516220
                         0.037683147   0.142753450   0.055172192  -0.006843962   0.072919143   0.000834111   0.082537738   0.038972680

   60    9.2  1.5 -1.5  -0.000137065  -0.000017249  -0.000001871   0.000013470   0.012343927  -0.059789834   0.190440885   0.001882557
                        -0.001172508  -0.004435872   0.000278683  -0.000052214  -0.089006660  -0.000889689   0.304261552   0.143879006


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.000056000   0.004365657   0.000016584  -0.000006057   0.000000477  -0.000019817  -0.000000204  -0.000053054
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.004359560  -0.000007661   0.000016531  -0.000007294  -0.000002720  -0.000019792  -0.000009365   0.000047978
                        -0.000022261   0.000197593   0.000003058  -0.000002170   0.000003090   0.000000599   0.000016972   0.000000153

    3    3.2  0.5  0.5   0.000132496  -0.000002464   0.000000518  -0.000001709  -0.000000807  -0.000001445  -0.000018403   0.000003271
                        -0.003045329  -0.002991277  -0.000048941   0.000019762  -0.000000203  -0.000007571  -0.000010723  -0.000004065

    4    4.2  0.5  0.5  -0.001704424  -0.002196302   0.019412016   0.020017977   0.003315251   0.039041226  -0.000494908  -0.000042251
                         0.000049472  -0.000042069   0.006448767   0.016669638  -0.004005950  -0.000070135   0.000206098  -0.000064802

    5    5.2  0.5  0.5  -0.001452807  -0.000226314  -0.019647305  -0.057061862  -0.001088894   0.017268844  -0.000126032  -0.000140820
                         0.000070432   0.000002067  -0.014451306  -0.039780130   0.001088293  -0.000016788   0.000130066  -0.000019125

    6    6.2  0.5  0.5   0.000162973   0.000226072  -0.001768401  -0.001452943  -0.000408875  -0.004159848  -0.002184107   0.000030965
                        -0.000474339  -0.000464824   0.003060487  -0.002995534   0.000308152   0.000452336  -0.001537714  -0.000515720

    7    7.2  0.5  0.5   0.000029272  -0.000005749  -0.012835238  -0.035290283  -0.014006764  -0.000338551   0.000111395   0.000006647
                         0.000537153  -0.000542648   0.020981721   0.049175918  -0.015434115   0.002020084   0.000088243  -0.000742443

    8    8.2  0.5  0.5   0.000003707  -0.000003349  -0.004016144  -0.011118968   0.020553298   0.000382158  -0.000090438  -0.000005681
                        -0.000286868   0.000279367   0.007411810   0.017400708   0.022521904  -0.002944392  -0.000057540   0.000450248

    9    9.2  0.5  0.5   0.248083711  -0.247210274  -0.000595174  -0.001440096  -0.002500392   0.000357186  -0.000071506   0.000672351
                        -0.006776780   0.005665812  -0.000325375  -0.001079147   0.002283967   0.000127264   0.000112282  -0.000008863

   10   10.2  0.5  0.5  -0.000666005   0.000748835   0.000008959  -0.000117224  -0.000282015   0.000097089   0.000202058   0.000005617
                        -0.251769113  -0.247884269  -0.002465314   0.000968699  -0.000130230  -0.002938091   0.000163622   0.000049545

   11   11.2  0.5  0.5   0.248093196   0.249251010   0.001869082  -0.000738965   0.000224560   0.003226093  -0.000281025  -0.000099828
                        -0.006220580   0.006523825   0.000051971  -0.000065766  -0.000268141   0.000078924   0.000394091  -0.000010530

   12   12.2  0.5  0.5  -0.020539416  -0.000254507  -0.000545128  -0.001502787   0.003607517   0.000091976  -0.000015096  -0.000012298
                        -0.401581299   0.407930761   0.000870789   0.002040994   0.003966186  -0.000519593  -0.000025552   0.000176844

   13    1.2  0.5 -0.5  -0.004359128  -0.000055916   0.000004926   0.000013487  -0.000014624  -0.000000352   0.000029512  -0.000000114
                         0.000238676   0.000003062   0.000003525   0.000009651   0.000013373   0.000000322  -0.000044088   0.000000170

   14    2.2  0.5 -0.5   0.000018452   0.004354257   0.000007194   0.000015223  -0.000015010   0.000004092  -0.000026561  -0.000019313
                         0.000196879  -0.000216115   0.000002480   0.000007134   0.000012914   0.000000445   0.000039955  -0.000001658

   15    3.2  0.5 -0.5  -0.000161077   0.000298790  -0.000010111  -0.000028060   0.000004042   0.000000458  -0.000005197  -0.000001326
                        -0.002986938   0.003033530   0.000017065   0.000040102   0.000006562  -0.000000695   0.000000457   0.000021258

   16    4.2  0.5 -0.5   0.002190718  -0.001704580  -0.025980004   0.019539198   0.028859171  -0.005149889  -0.000030348  -0.000446569
                        -0.000162081   0.000043785   0.001906742   0.006052493  -0.026293925  -0.000719144  -0.000071158   0.000296625

   17    5.2  0.5 -0.5   0.000226089  -0.001454485   0.069554157  -0.024387608   0.012755478   0.001537987   0.000062440  -0.000178193
                        -0.000010309   0.000009100   0.000856852   0.000318449  -0.011640921   0.000068340  -0.000127660   0.000032381

   18    6.2  0.5 -0.5  -0.000251147   0.000188662   0.002924818   0.000342938  -0.003375149   0.000509691  -0.000445790   0.000062902
                        -0.000451769   0.000464720  -0.001590507  -0.003517985   0.002473319  -0.000048504  -0.000261145   0.002670380

   19    7.2  0.5 -0.5  -0.000023927  -0.000000138   0.000081104   0.001772339  -0.001613033  -0.000078420  -0.000620670  -0.000011365
                        -0.000542151  -0.000537950   0.060528245  -0.024532321  -0.001262332  -0.020842150  -0.000407473  -0.000141656

   20    8.2  0.5 -0.5   0.000018617   0.000019385  -0.001084088   0.001047261   0.002268953   0.000030136   0.000377318  -0.000002492
                         0.000278766   0.000286237   0.020621369  -0.008364663   0.001915030   0.030490545   0.000245736   0.000107162

   21    9.2  0.5 -0.5   0.247150306   0.248083174   0.001799131  -0.000673362   0.000177719   0.003386512  -0.000381372  -0.000133083
                        -0.007857953  -0.006796398  -0.000039528  -0.000081758  -0.000334954  -0.000001773   0.000553796  -0.000003037

   22   10.2  0.5 -0.5  -0.014299853   0.013099519  -0.000468404  -0.001427401   0.002054324   0.000120241   0.000038047  -0.000023573
                        -0.247472596   0.251428981   0.000855989   0.002010070   0.002102750  -0.000286416   0.000032228  -0.000258928

   23   11.2  0.5 -0.5  -0.248521567   0.248062237   0.000639218   0.001550229   0.002327549  -0.000346668   0.000046781  -0.000483816
                         0.020140928  -0.007352285   0.000376557   0.001045445  -0.002235267  -0.000046348  -0.000088815   0.000014313

   24   12.2  0.5 -0.5   0.022556204   0.001446248   0.000034351   0.000063443   0.000418507   0.000014156   0.000153799   0.000012837
                         0.407306749   0.402103613   0.002534333  -0.001025385   0.000321385   0.005361400   0.000088152   0.000026759

   25    1.2  1.5  1.5  -0.000806887  -0.002153739  -0.000918909   0.000349226  -0.000004680  -0.000850895  -0.000143345  -0.000050132
                        -0.004550536   0.004671466   0.000016281   0.000031330   0.000132888  -0.000005132   0.000212817   0.000004081

   26    2.2  1.5  1.5   0.181320313  -0.184306174  -0.000804526  -0.001897048  -0.001834097   0.000248635   0.000025381  -0.000204486
                        -0.011738242   0.002379856  -0.000502932  -0.001383349   0.001724168   0.000038966  -0.000028472  -0.000002024

   27    3.2  1.5  1.5  -0.011541081   0.002499194  -0.000121719  -0.000415934   0.002086231   0.000071034  -0.000025148  -0.000000898
                        -0.176737048   0.179658537   0.000257149   0.000605538   0.002238959  -0.000297288  -0.000031684   0.000216243

   28    4.2  1.5  1.5  -0.049954457  -0.056751931  -0.023867811  -0.094702052  -0.018079725   0.196841508   0.205657662   0.057536456
                         0.004749421  -0.001875880  -0.007052236  -0.022202780   0.007860119   0.002006631  -0.300177077  -0.014097836

   29    5.2  1.5  1.5  -0.030666121   0.012636722   0.173870491   0.400817254   0.162636928   0.012341556   0.028926140   0.081034993
                         0.001705031   0.000315970   0.107250643   0.293345988  -0.148669574  -0.004746431  -0.040142848   0.001918696

   30    6.2  1.5  1.5   0.004901758   0.004075455  -0.105689734  -0.288046138  -0.028853322  -0.014651671   0.025322895  -0.003865396
                         0.028104943  -0.028511324   0.173254876   0.404751495  -0.034800013   0.003028952   0.046901510  -0.245008249

   31    7.2  1.5  1.5  -0.001778994   0.000187098  -0.000997816  -0.001757897   0.024099264  -0.000395338  -0.309350439   0.003007811
                        -0.034152277  -0.033928687  -0.103225708   0.045223800   0.017642272   0.302071606  -0.207424466  -0.071969899

   32    8.2  1.5  1.5  -0.002743018  -0.000291478   0.000948157   0.001748360  -0.019187951  -0.000310446  -0.000058537   0.002211966
                        -0.046696828  -0.046096631   0.062331505  -0.025125838  -0.015167294  -0.250617070  -0.003299374  -0.001626652

   33    9.2  1.5  1.5  -0.000042836   0.000000617   0.000001582   0.000002782   0.000030660   0.000001131   0.000248584  -0.000002113
                        -0.000831901  -0.000819993   0.000112028  -0.000044350   0.000022299   0.000386354   0.000166801   0.000057369

   34    1.2  1.5  0.5   0.216089886  -0.220291915  -0.000727564  -0.001691054  -0.002773138   0.000355218  -0.000033980   0.000340129
                        -0.008400734   0.002471807  -0.000458027  -0.001243377   0.002529562   0.000110940   0.000054051  -0.000009651

   35    2.2  1.5  0.5  -0.108139983  -0.104794511  -0.001088769   0.000450441  -0.000102850  -0.001965752   0.000432167   0.000147167
                         0.007395366   0.001777181   0.000013031   0.000034681   0.000142212   0.000028425  -0.000641724   0.000007333

   36    3.2  1.5  0.5   0.001543561   0.007540810   0.000031235   0.000033844   0.000214280   0.000021729  -0.000236968  -0.000006677
                         0.102164463   0.100662682  -0.000202803   0.000121200   0.000039248   0.001792218  -0.000153319  -0.000054261

   37    4.2  1.5  0.5   0.010741422   0.005971360   0.133315211   0.252802973   0.213963026  -0.052126596   0.075273626  -0.208604436
                         0.002876715   0.002789846   0.062437200   0.194838769  -0.185276280   0.042133323  -0.119459522   0.002509354

   38    5.2  1.5  0.5  -0.048318687  -0.048460626  -0.106778962   0.095221607   0.044017835   0.139732994  -0.316120544  -0.146881073
                         0.002389657   0.000187356   0.014428001   0.037036894  -0.045415449  -0.002818220   0.471971240  -0.002870207

   39    6.2  1.5  0.5   0.001567749  -0.000408566  -0.011251675  -0.020560866   0.035683512   0.005711009  -0.035409613   0.015056764
                         0.044444709   0.044260272  -0.108611642   0.029357089   0.051968812   0.664792037  -0.010486641  -0.008845845

   40    7.2  1.5  0.5   0.002282766  -0.000181715   0.049356892   0.137341280   0.284181615   0.007899226  -0.056166246   0.000004631
                         0.049213418  -0.049643742  -0.080952438  -0.188436876   0.314039163  -0.038330205  -0.033299293   0.349798850

   41    8.2  1.5  0.5  -0.001769568  -0.000063766   0.080969430   0.222138367  -0.084021131  -0.002213063   0.051479654  -0.000572685
                        -0.033918652   0.034443269  -0.128417201  -0.300603736  -0.093640895   0.011862191   0.033718746  -0.329296764

   42    9.2  1.5  0.5  -0.000070609  -0.000000882   0.000063032   0.000170233   0.000209929   0.000005509   0.000092487  -0.000002298
                        -0.001411962   0.001431564  -0.000098556  -0.000229946   0.000228575  -0.000029884   0.000058909  -0.000577629

   43    1.2  1.5 -0.5  -0.220097585  -0.216225982  -0.002098789   0.000858222  -0.000187282  -0.003753526   0.000197223   0.000063819
                         0.009575520   0.003425731   0.000027039   0.000050925   0.000321579   0.000004582  -0.000277280   0.000001829

   44    2.2  1.5 -0.5  -0.104734942   0.108382564   0.000386493   0.000877832   0.001469878  -0.000171869   0.000075770  -0.000773675
                         0.003954722   0.001472159   0.000233930   0.000644205  -0.001305545  -0.000035545  -0.000126376   0.000002163

   45    3.2  1.5 -0.5   0.002026179   0.004044204   0.000098055   0.000092620   0.001193383   0.000131650   0.000041377   0.000004409
                        -0.100924398   0.102096055  -0.000078867  -0.000183102   0.001337294  -0.000173564   0.000035732  -0.000282208

   46    4.2  1.5 -0.5   0.005809905  -0.010568083   0.318971990  -0.144750579   0.066900934   0.282929110  -0.118124886  -0.141143534
                        -0.003112136   0.003459660  -0.011329533  -0.026807073  -0.004082150  -0.007654756   0.171955282  -0.003898602

   47    5.2  1.5 -0.5  -0.048398392   0.048377067   0.098990214   0.078439027  -0.105022650   0.063131624  -0.079319826   0.568057237
                         0.002462326  -0.000255559   0.025294732   0.073873087   0.092214397   0.003811941   0.123655379  -0.000155823

   48    6.2  1.5 -0.5  -0.002827718   0.000864443   0.000363695   0.072356543   0.444398335  -0.008735539   0.015726504   0.010982730
                        -0.044171740   0.044463949  -0.035839303  -0.081777868   0.494460501  -0.062432050  -0.007591588  -0.035258899

   49    7.2  1.5 -0.5   0.002532641   0.000411206   0.002028864   0.006971872  -0.031695385  -0.002197172  -0.290681718   0.003571535
                         0.049579430   0.049264617   0.233167252  -0.094555767  -0.022956588  -0.423526810  -0.194585134  -0.065197656

   50    8.2  1.5 -0.5  -0.001946727  -0.000087453   0.005712677   0.008885799   0.009638016   0.001184126   0.273328410  -0.000615975
                        -0.034388270  -0.033964668   0.373731756  -0.151552198   0.007260707   0.125804473   0.183652571   0.061536405

   51    9.2  1.5 -0.5  -0.000079146  -0.000006690   0.000004621   0.000006095  -0.000024231   0.000000678   0.000478734  -0.000002494
                        -0.001429374  -0.001413711   0.000286065  -0.000116830  -0.000018337  -0.000310348   0.000323225   0.000109626

   52    1.2  1.5 -1.5   0.002405912  -0.000556896  -0.000302232  -0.000737806  -0.000624485   0.000093129   0.000031278  -0.000256590
                         0.004546732   0.004587844  -0.000177753  -0.000547998   0.000577985   0.000094912  -0.000039390   0.000000737

   53    2.2  1.5 -1.5   0.184160637   0.181690876   0.002347766  -0.000946942   0.000157194   0.002517034   0.000112067   0.000037779
                        -0.007699949   0.001807681  -0.000020990  -0.000059196  -0.000196539   0.000034730  -0.000171054  -0.000005254

   54    3.2  1.5 -1.5   0.007326698  -0.001861387  -0.000014144   0.000050663   0.000253037  -0.000028720   0.000180198   0.000012340
                         0.179526476   0.177103687   0.000734491  -0.000279954   0.000171459   0.003060143   0.000119542   0.000038523

   55    4.2  1.5 -1.5   0.056564496  -0.050139403   0.089935007  -0.023513953   0.143911991   0.018646710  -0.043720947   0.363848807
                        -0.004975773  -0.002011246   0.037055858  -0.008154781  -0.134312862  -0.006399855   0.039970884  -0.003924000

   56    5.2  1.5 -1.5  -0.012600548  -0.030713473  -0.496667127   0.203810290   0.012310856  -0.220348386  -0.043482585   0.049449508
                         0.001006363  -0.000025926   0.005301418   0.013964724  -0.004825496   0.000034235   0.068407721  -0.001707632

   57    6.2  1.5 -1.5  -0.005628109   0.003357895  -0.001298082   0.014875839  -0.012856703  -0.002190319  -0.201452681  -0.024889078
                        -0.028245873  -0.028330895   0.496782312  -0.202401288   0.007651875  -0.045152604  -0.139501974  -0.047133157

   58    7.2  1.5 -1.5  -0.002041742   0.000090814  -0.024888360  -0.060883506  -0.204134812  -0.005879592  -0.061480428   0.000289390
                        -0.033867715   0.034198459   0.037800156   0.083365107  -0.222657562   0.029282327  -0.037534920   0.372454722

   59    8.2  1.5 -1.5  -0.002229117  -0.000185942   0.013200135   0.037044798   0.168891558   0.003925274  -0.002582197   0.002709232
                        -0.046043625   0.046776953  -0.021450430  -0.050137795   0.185161157  -0.024141593   0.000933301   0.001883975

   60    9.2  1.5 -1.5  -0.000045446   0.000002709   0.000023547   0.000066482  -0.000259884  -0.000007579   0.000048849  -0.000000334
                        -0.000818732   0.000832998  -0.000037686  -0.000090183  -0.000285886   0.000037146   0.000030157  -0.000299360


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000000347   0.000011838   0.000137461  -0.000000101   0.000003243  -0.000141213  -0.000010353  -0.000068760
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000003064  -0.000011198   0.000096155  -0.000092847   0.000114627   0.000076419   0.000066543  -0.000007926
                         0.000000426   0.000000009  -0.000013294  -0.000040482  -0.000019631  -0.000001895  -0.000017513   0.000005831

    3    3.2  0.5  0.5  -0.000001364  -0.000000946   0.000006518   0.000032880   0.000001215   0.000004986   0.000015169  -0.000002126
                        -0.000010438  -0.000001431   0.000195786  -0.000080012  -0.000037166   0.000018550   0.000040619  -0.000054337

    4    4.2  0.5  0.5   0.001466835  -0.000561457  -0.156543774   0.243016861   0.321212809  -0.095778007  -0.413154310   0.243350070
                         0.000290908   0.000028319  -0.008267068   0.123754042  -0.097416354   0.013035592   0.058980397   0.031470304

    5    5.2  0.5  0.5   0.000350386   0.001799570  -0.275333276  -0.317604591   0.060145846  -0.206170526   0.200588976   0.406136731
                        -0.000056031   0.000029720   0.001257817  -0.155213012  -0.007439668   0.011968966  -0.031750417   0.009491957

    6    6.2  0.5  0.5   0.000497362   0.000159005   0.018364641  -0.035694721  -0.095909240   0.010251485  -0.044423245  -0.016563644
                         0.004570972   0.000580006  -0.064573012   0.013973222  -0.319398296   0.166136215  -0.342898201   0.437468311

    7    7.2  0.5  0.5  -0.000002537  -0.000002136   0.001567724  -0.274942432   0.003402735   0.001344432   0.005472109  -0.003825456
                        -0.000111088   0.000784829   0.271505748   0.552312087   0.011365807   0.023641215   0.047237315   0.037421367

    8    8.2  0.5  0.5   0.000018894   0.000012082   0.004496119   0.020856246   0.059956795   0.004683051   0.004793719  -0.007590185
                        -0.000369872   0.002953557  -0.014469071  -0.024641837   0.298438225   0.599091500   0.056158472   0.047773387

    9    9.2  0.5  0.5  -0.000172935   0.001460405  -0.000031132  -0.000021363  -0.000051168  -0.000085280  -0.000522900  -0.000379018
                         0.000026582  -0.000021879   0.000061464  -0.000038931  -0.000017228   0.000016062   0.000109434  -0.000027488

   10   10.2  0.5  0.5  -0.000150279   0.000009901  -0.000029358  -0.000509478   0.000193817   0.000006379  -0.000196246   0.000095584
                        -0.001340192  -0.000176036  -0.002623467   0.001037373   0.001108845  -0.000578271  -0.000429816   0.000583823

   11   11.2  0.5  0.5   0.001495615   0.000181383  -0.001225541   0.000496361  -0.000482088   0.000249999  -0.002258882   0.002972129
                        -0.000173076  -0.000028052   0.000077481   0.000213726   0.000057527   0.000018732   0.000586605  -0.000096437

   12   12.2  0.5  0.5  -0.000001076  -0.000051325  -0.000001403  -0.000780552  -0.000170432  -0.000002998  -0.000137456   0.000019320
                         0.000443640  -0.003356669   0.000766490   0.001549768  -0.000868081  -0.001722862  -0.000726750  -0.000581374

   13    1.2  0.5 -0.5   0.000011689   0.000000342   0.000000090   0.000122488   0.000138684   0.000003185   0.000067204  -0.000010119
                        -0.000001873  -0.000000055   0.000000046   0.000062388  -0.000026601  -0.000000611  -0.000014544   0.000002190

   14    2.2  0.5 -0.5  -0.000011058  -0.000002958   0.000101107   0.000079648  -0.000075407   0.000116273   0.000008980   0.000068742
                         0.000001762   0.000000905   0.000006067   0.000055487   0.000012535  -0.000002314   0.000004023   0.000003042

   15    3.2  0.5 -0.5  -0.000000708  -0.000000304   0.000007015   0.000094667  -0.000001402   0.000008194  -0.000009415   0.000006234
                         0.000001562  -0.000010522  -0.000086220  -0.000171501   0.000019157   0.000036272  -0.000053557  -0.000042909

   16    4.2  0.5 -0.5  -0.000558868  -0.001402353  -0.272712774  -0.143244312   0.096518870   0.333813131  -0.231187902  -0.416281876
                         0.000060848   0.000519268  -0.000020508  -0.063681745  -0.005240329   0.035162599   0.082230108   0.029741730

   17    5.2  0.5 -0.5   0.001772213  -0.000354838   0.353453882  -0.244771750   0.204734042   0.060470498  -0.394940244   0.202766307
                        -0.000314001   0.000000098   0.005840289  -0.126082455  -0.027083460  -0.004023725   0.095180591  -0.011395204

   18    6.2  0.5 -0.5   0.000065259   0.000231933   0.025464845  -0.012942572   0.021228580  -0.034024284   0.108719333   0.029109415
                        -0.000597855   0.004592098   0.028651451   0.065874303   0.165092951   0.331747196   0.424067193   0.344536273

   19    7.2  0.5 -0.5  -0.000126253  -0.000015067  -0.005675782   0.124621460   0.003133140   0.001200738   0.011654029  -0.004643025
                        -0.000774611  -0.000110090   0.616935789  -0.241220482   0.023471216  -0.011803322   0.035765576  -0.047326000

   20    8.2  0.5 -0.5  -0.000455261  -0.000077162  -0.007400636  -0.002560494   0.108256882   0.002663946   0.017523173  -0.007193011
                        -0.002918284  -0.000362227  -0.031423458   0.014933619   0.589247829  -0.304389709   0.045087092  -0.055901827

   21    9.2  0.5 -0.5   0.001445479   0.000174962   0.000036704   0.000000155   0.000086779  -0.000047006   0.000364628  -0.000534216
                        -0.000209402  -0.000001107  -0.000024995  -0.000068898  -0.000000290   0.000026558  -0.000107033   0.000003642

   22   10.2  0.5 -0.5   0.000037621  -0.000063604  -0.000016834  -0.001216837  -0.000115199  -0.000018536   0.000030065  -0.000100894
                         0.000172254  -0.001347091   0.001155607   0.002324381  -0.000566716  -0.001125504   0.000590832   0.000461600

   23   11.2  0.5 -0.5   0.000183537  -0.001504163  -0.000539295  -0.001056884  -0.000241995  -0.000484294  -0.002925283  -0.002331850
                        -0.000000992   0.000065678  -0.000034830  -0.000625260   0.000065491   0.000034318   0.000534391  -0.000095550

   24   12.2  0.5 -0.5   0.000480276   0.000071237  -0.000007842   0.000346626  -0.000321607  -0.000003853  -0.000141851   0.000019371
                         0.003322528   0.000437884   0.001735218  -0.000683636  -0.001692581   0.000884646  -0.000564134   0.000739382

   25    1.2  1.5  1.5   0.000029739   0.000009784  -0.002482097   0.001258397   0.001365053  -0.000797674  -0.005995479   0.007940028
                         0.000000638  -0.000041268  -0.000404785  -0.000374004  -0.000250659   0.000005187   0.001698270  -0.000069789

   26    2.2  1.5  1.5  -0.000202739   0.001530178  -0.011222932  -0.022571838  -0.008119011  -0.016188759   0.005708475   0.004493838
                         0.000002728  -0.000044377  -0.000209950  -0.011962769   0.001636346   0.000043079  -0.000988304   0.000235603

   27    3.2  1.5  1.5   0.000001859  -0.000044887   0.000232812   0.015943383   0.000115081   0.000254387   0.001327170  -0.000454944
                         0.000205512  -0.001550554  -0.015248864  -0.030762695   0.000259370   0.000517913   0.006580072   0.005289970

   28    4.2  1.5  1.5  -0.563657922  -0.058732513  -0.042060895  -0.020322878   0.120370742  -0.027947507   0.016391202  -0.006863823
                         0.078846610   0.020930142   0.003074506  -0.003988998  -0.014787272   0.015128136  -0.003987445  -0.001808621

   29    5.2  1.5  1.5  -0.085562780  -0.098040781   0.078205855   0.170117702  -0.060992640  -0.166589878  -0.039003016  -0.034503606
                         0.011813007   0.002636831  -0.000198345   0.085881442   0.011516640  -0.000130487   0.006743039  -0.000307145

   30    6.2  1.5  1.5   0.038821525   0.004574999   0.003315831  -0.035922700   0.013372376   0.002004400  -0.004924240   0.000930846
                        -0.022775381   0.116447960   0.036185630   0.075338087   0.111679704   0.219823020  -0.018641196  -0.013620687

   31    7.2  1.5  1.5   0.045929508   0.007324715   0.000297556   0.017385811   0.010447028  -0.000275212   0.043757239  -0.006087320
                         0.311777832   0.040711042   0.084323285  -0.032301319   0.059373561  -0.029800593   0.173590853  -0.227410124

   32    8.2  1.5  1.5   0.085131962   0.012498870   0.000248953  -0.019001820   0.020739779   0.000117707  -0.026352199   0.003518494
                         0.596537148   0.078859593  -0.096360072   0.037922235   0.108400665  -0.056574348  -0.103929620   0.136076835

   33    9.2  1.5  1.5  -0.000020176  -0.000003472   0.000011890  -0.001001581  -0.000045294  -0.000004205  -0.000466848   0.000062997
                        -0.000138684  -0.000017723  -0.005011373   0.001966826  -0.000237623   0.000122129  -0.001840280   0.002408865

   34    1.2  1.5  0.5  -0.000242385   0.001826839  -0.004409396  -0.008937356   0.010473859   0.020844686  -0.000396783  -0.000197700
                         0.000019901  -0.000027040  -0.000400709  -0.004329828  -0.001834542  -0.000176158  -0.000180501   0.000312076

   35    2.2  1.5  0.5  -0.001167810  -0.000160226  -0.005549723   0.002179549  -0.007597046   0.003848019  -0.007083596   0.009238125
                         0.000177892   0.000028839  -0.000216461   0.001212669   0.001572411  -0.000035600   0.001656044  -0.000070766

   36    3.2  1.5  0.5   0.000138006  -0.000026725   0.000231948  -0.002742776   0.001576910  -0.000563669  -0.002299091   0.000203589
                         0.000812957   0.000106630  -0.014770289   0.005900931   0.009230027  -0.004794532  -0.009520796   0.012432960

   37    4.2  1.5  0.5   0.035154400   0.052798786  -0.140318817  -0.265110048  -0.013354647  -0.104323291  -0.079591525  -0.079921428
                         0.001738813  -0.000869467  -0.002315729  -0.132680880   0.013805381  -0.006129874   0.013362058  -0.000930636

   38    5.2  1.5  0.5  -0.240205143  -0.024913687   0.025658488  -0.064806808  -0.179041788   0.073916754  -0.060296701   0.047540945
                         0.036813089   0.004573698  -0.000072507  -0.033605712   0.033577231   0.000998244   0.015154069  -0.001445507

   39    6.2  1.5  0.5   0.011425683  -0.001619623   0.010126399   0.012106394   0.028995308   0.008156163   0.001903954   0.006274075
                         0.103081853   0.014487359  -0.033900954   0.022186063   0.150192017  -0.077879201  -0.014758986   0.019182436

   40    7.2  1.5  0.5  -0.000091138  -0.002556029   0.000661023  -0.065003849  -0.007831482   0.000555276  -0.025577925   0.004363945
                         0.033119410  -0.240845362   0.064207438   0.130855736  -0.036523613  -0.074236817  -0.136003220  -0.108781318

   41    8.2  1.5  0.5  -0.000975123   0.001520254  -0.000264906  -0.062850741   0.013851154   0.000158058  -0.038934083   0.005620044
                        -0.025193474   0.185713273   0.060526890   0.122384173   0.070299937   0.140200305  -0.204400548  -0.163780291

   42    9.2  1.5  0.5  -0.000001748  -0.000003944  -0.000002683  -0.000571572  -0.000285988  -0.000008644  -0.000252203   0.000037746
                         0.000011598  -0.000099172   0.000555819   0.001124695  -0.001438665  -0.002867925  -0.001330832  -0.001066019

   43    1.2  1.5 -0.5  -0.001808117  -0.000242481  -0.009928974   0.004110967   0.020504677  -0.010631929  -0.000259235   0.000349627
                         0.000262269   0.000018690  -0.000198071   0.001644169  -0.003753691   0.000171355  -0.000263199  -0.000260342

   44    2.2  1.5 -0.5   0.000162771  -0.001181247   0.002492519   0.005043462   0.003785832   0.007757241   0.009044081   0.007273606
                         0.000003131   0.000009071  -0.000091378   0.002325891  -0.000689923   0.000113137  -0.001884823   0.000120301

   45    3.2  1.5 -0.5   0.000043256   0.000007676   0.000234153   0.006496901   0.000349610   0.000190063  -0.002430756   0.000233297
                         0.000101060  -0.000824552  -0.006502998  -0.013266707   0.004814876   0.009361834  -0.012194727  -0.009791677

   46    4.2  1.5 -0.5  -0.052271603   0.034436777  -0.296450961   0.126085607  -0.101300797   0.015716191  -0.077916370   0.080617028
                         0.007493147  -0.007277616  -0.002093149   0.061621042   0.025672416   0.011042485   0.017814039  -0.003774937

   47    5.2  1.5 -0.5   0.025323498  -0.243004127  -0.072999883  -0.022830731   0.072405334   0.182161542   0.046771080   0.062137783
                         0.000575291   0.001645821   0.000532256  -0.011709867  -0.014904715  -0.000751582  -0.008642747   0.002057645

   48    6.2  1.5 -0.5   0.003890831  -0.005023563   0.020856983   0.006362769   0.022680922  -0.000183210   0.002074781  -0.004982601
                         0.014048779  -0.103591402  -0.014274888  -0.034804221   0.074948440   0.152965147  -0.020075487  -0.014022353

   49    7.2  1.5 -0.5  -0.035572868  -0.005328791   0.001466345  -0.029729949   0.014529971   0.000811000   0.027273925  -0.003767286
                        -0.238217532  -0.032688034  -0.146104668   0.056913638   0.072803113  -0.037344996   0.105397116  -0.138336234

   50    8.2  1.5 -0.5   0.027874855   0.003022236  -0.000459943  -0.027234438  -0.026255526  -0.000360157   0.040134628  -0.005180266
                         0.183615694   0.025030543  -0.137578668   0.054054232  -0.137719998   0.071650581   0.158886061  -0.208011086

   51    9.2  1.5 -0.5  -0.000011793  -0.000003560   0.000001136  -0.000249871   0.000531767   0.000009854   0.000262369  -0.000034992
                        -0.000098547  -0.000011175  -0.001261599   0.000496494   0.002818207  -0.001466782   0.001033916  -0.001354066

   52    1.2  1.5 -1.5   0.000016189  -0.000029264  -0.000951582  -0.002395449   0.000784370   0.001387832  -0.007775147  -0.006219038
                         0.000039201   0.000005334  -0.000904397  -0.000765821  -0.000145170  -0.000010975   0.001611213  -0.000391723

   53    2.2  1.5 -1.5   0.001517933   0.000200619   0.025542576  -0.010095761   0.015907038  -0.008281905  -0.004342332   0.005788361
                        -0.000198224  -0.000029375  -0.000415362  -0.004906514  -0.003007310  -0.000077600   0.001180780  -0.000241475

   54    3.2  1.5 -1.5   0.000200943   0.000030672  -0.000244919  -0.006713335  -0.000152268   0.000064161   0.001563551  -0.000094631
                         0.001538134   0.000203219  -0.034647870   0.013693546   0.000556562  -0.000276406   0.005074059  -0.006711913

   55    4.2  1.5 -1.5  -0.061303808   0.569033600   0.019919640  -0.036084032   0.030296967   0.121001287   0.006325982   0.016863751
                        -0.011376381  -0.011304973   0.005669163  -0.021829203   0.009592573  -0.008152759  -0.003219492   0.000430269

   56    5.2  1.5 -1.5  -0.097223582   0.086354153  -0.190565446   0.069597267   0.163582749  -0.062070146   0.033658000  -0.039546819
                         0.012904374  -0.001869963  -0.000682120   0.035670933  -0.031510138   0.000179264  -0.007598173   0.001659185

   57    6.2  1.5 -1.5  -0.013902239  -0.041935369  -0.002182817   0.019377718   0.039441465  -0.007905117  -0.003790744  -0.000869966
                        -0.115705599  -0.016347892   0.083435623  -0.030739203   0.216264996  -0.112199313  -0.013115633   0.019260984

   58    7.2  1.5 -1.5   0.000792862   0.003965481  -0.000831917   0.038535769  -0.005343513  -0.000924726  -0.042150709   0.006050431
                        -0.041357125   0.315117773  -0.036673554  -0.075003329  -0.029318901  -0.060278561  -0.223552539  -0.178918619

   59    8.2  1.5 -1.5  -0.000132430   0.010299559  -0.000279184  -0.043511756  -0.010773003  -0.000051914   0.025343195  -0.003773468
                        -0.079843846   0.602493103   0.042415647   0.085977047  -0.055539293  -0.110366843   0.133742317   0.107152066

   60    9.2  1.5 -1.5  -0.000000625  -0.000002015  -0.000000172  -0.002263846   0.000027136   0.000000280   0.000447935  -0.000067042
                         0.000018049  -0.000140130   0.002207163   0.004470906   0.000119151   0.000241901   0.002367689   0.001897388


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5  -0.003291329   0.008707450  -0.003616098  -0.014554896   0.004622906   0.000256936   0.000000009   0.000007952
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.003370056   0.008846939   0.011137785   0.001740013  -0.000221018   0.004486919   0.000000544   0.000003828
                         0.000835186  -0.000816120   0.009343812  -0.002494313   0.000157154   0.001113622  -0.000007008   0.000000730

    3    3.2  0.5  0.5  -0.000614307   0.000256889   0.003084355  -0.000475199  -0.000050494   0.000939120  -0.000005306   0.000000378
                         0.000163463   0.017078987  -0.001342620   0.002988105  -0.003080653  -0.003382557  -0.000000662  -0.000008876

    4    4.2  0.5  0.5   0.119290201   0.201337644  -0.126433794   0.125146889   0.001874079   0.002833985   0.017250808   0.250063280
                         0.025673521   0.017926680  -0.105875519   0.006046170  -0.000118792   0.000423887  -0.038989936   0.025461242

    5    5.2  0.5  0.5  -0.275434571   0.091747605   0.005414628   0.116026585   0.001812420   0.000359692   0.009275530  -0.028876411
                        -0.031777558  -0.010725293  -0.012205770   0.005886066  -0.000012609   0.000040134  -0.243348650   0.003229641

    6    6.2  0.5  0.5  -0.013899574  -0.023445376  -0.146571063   0.025500816  -0.000220219  -0.000127497   0.137189798  -0.028141329
                        -0.001916800   0.076748268   0.145695321  -0.218814584  -0.000816181  -0.000971963   0.012231780   0.227001587

    7    7.2  0.5  0.5   0.040379407   0.014699015  -0.006670404   0.001319100  -0.000006576  -0.000007946   0.014964833   0.001193928
                        -0.306126152   0.004214261   0.009972400   0.011284038  -0.000104163   0.000088942   0.002359503  -0.009030819

    8    8.2  0.5  0.5   0.003137813  -0.001563552  -0.118281951   0.027739785  -0.000024981   0.000023117   0.012681190   0.001651872
                         0.017047516   0.000472913   0.190558181   0.209272083   0.000092406  -0.000085170   0.004514144  -0.006129564

    9    9.2  0.5  0.5   0.135227456   0.001657599   0.303049008   0.333668200  -0.197615554   0.172487947  -0.000061693   0.000906630
                         0.017056959  -0.004869000   0.189310084  -0.048731360   0.002256271   0.040585308   0.001482230  -0.000040633

   10   10.2  0.5  0.5  -0.020834996   0.000040986   0.078555831  -0.016209531  -0.001878980   0.046738785   0.000825098   0.000014366
                         0.003941288   0.490343584  -0.047002777   0.088229539  -0.180890022  -0.200372725   0.000065799   0.001365087

   11   11.2  0.5  0.5   0.001674289   0.356487144   0.156361677  -0.260795820   0.179990718   0.196449289  -0.000015018   0.000334202
                         0.017105170  -0.006548171   0.190565205  -0.049306582   0.002851171   0.041901176  -0.000221580  -0.000035280

   12   12.2  0.5  0.5   0.000192213   0.000074288   0.000587906  -0.000143642  -0.002210029   0.039791993   0.000165827   0.000000824
                        -0.001553658   0.000020066  -0.000954231  -0.001056929   0.223294271  -0.192282327   0.000004358  -0.000098919

   13    1.2  0.5 -0.5  -0.008617382  -0.003257284   0.010842239  -0.002693705   0.000252331  -0.004540046  -0.000000318   0.000000000
                        -0.001249164  -0.000472172   0.009710349  -0.002412492   0.000048429  -0.000871348   0.000007945  -0.000000009

   14    2.2  0.5 -0.5  -0.008638348   0.003455012   0.000367918   0.014530519   0.004616396   0.000187435   0.000000576   0.000007024
                        -0.002076853  -0.000343082  -0.003018920   0.000470216  -0.000247945   0.000195995   0.000003854  -0.000000264

   15    3.2  0.5 -0.5  -0.002704371  -0.000584502  -0.001639539   0.001401865   0.000284727   0.000630246  -0.000008884   0.000000449
                         0.016865473  -0.000249900   0.002542931   0.003057883   0.003498938  -0.003015918   0.000000022   0.000005328

   16    4.2  0.5 -0.5  -0.201826801   0.121739394  -0.097258188  -0.164818319   0.002863086  -0.001818098   0.015437677   0.039648805
                        -0.011142499  -0.008294675  -0.078988258  -0.005481906   0.000117874  -0.000469899   0.250881639  -0.015677301

   17    5.2  0.5 -0.5  -0.089259945  -0.277144322  -0.090357474  -0.004109654   0.000360810  -0.001777558   0.004382188   0.243524913
                        -0.023776397  -0.008064783  -0.073022880   0.012704714   0.000028382  -0.000353997  -0.028724104   0.000466476

   18    6.2  0.5 -0.5   0.012192613  -0.014030783   0.126986817  -0.011982640  -0.000308412   0.000370110   0.227945616  -0.006734039
                         0.079317858  -0.000097050  -0.180012394  -0.206316794   0.000930510  -0.000760044  -0.019038147  -0.137569291

   19    7.2  0.5 -0.5  -0.015151547  -0.003954900  -0.008510808   0.001684201   0.000008960   0.000026091  -0.009071351  -0.001758982
                         0.002061960   0.308752451   0.007525668  -0.011878827  -0.000088846  -0.000101056   0.000831716  -0.015047241

   20    8.2  0.5 -0.5   0.001479535   0.005550980  -0.160280512   0.039020905   0.000006650   0.000007116  -0.006190737  -0.004003251
                         0.000692328  -0.016421032   0.137384343  -0.220862875   0.000088001   0.000095458   0.001405352  -0.012851617

   21    9.2  0.5 -0.5  -0.000941950   0.136275672  -0.216044943   0.352046242   0.177046006   0.193648236  -0.000076868  -0.001483511
                        -0.005056434   0.002519106  -0.258908857   0.061159241  -0.007346480   0.039463386   0.000904279   0.000002350

   22   10.2  0.5 -0.5  -0.070384890  -0.020054069  -0.046787827   0.027159776   0.008133801   0.035940347   0.001363419  -0.000032740
                         0.485265700  -0.006889493   0.076538223   0.087422115   0.205590817  -0.177293604   0.000068961  -0.000827069

   23   11.2  0.5 -0.5  -0.351860324   0.004110865   0.227167169   0.243613221   0.200825888  -0.177301982  -0.000048621   0.000220802
                        -0.057621820  -0.016688046   0.137261342  -0.037638676  -0.004122409  -0.031125474   0.000332523   0.000023869

   24   12.2  0.5 -0.5  -0.000076398  -0.000032662   0.000812135  -0.000198675   0.002836441  -0.039917191  -0.000098873   0.000002279
                         0.000009201   0.001565162  -0.000691496   0.001103049   0.196336066   0.219708520  -0.000003133  -0.000165869

   25    1.2  1.5  1.5   0.000784979   0.158055403   0.017966284  -0.030774691   0.000985623  -0.002990729  -0.008786911  -0.225093726
                         0.008443413   0.003499953   0.024094731  -0.003978346  -0.007817496   0.006430741   0.136836885  -0.001026847

   26    2.2  1.5  1.5  -0.025091509  -0.000437727  -0.057840580  -0.063117028   0.302689907  -0.261358258  -0.003980604   0.057323636
                        -0.002808224  -0.001246761  -0.034499976   0.009625419  -0.001190924  -0.050329473   0.092027998   0.000508823

   27    3.2  1.5  1.5  -0.003175111  -0.005455407  -0.034807448   0.010384674  -0.001234088  -0.050145789  -0.098281201   0.005390130
                         0.027679821  -0.000434682   0.057054317   0.063281675  -0.301964563   0.260745836  -0.007635359   0.059845308

   28    4.2  1.5  1.5   0.005573509   0.033839417  -0.044660369   0.101662212   0.068164344   0.064672671   0.008108448   0.016113936
                         0.004700040   0.000269047  -0.050895286   0.019832517   0.001696503   0.009411610   0.017708719  -0.002222918

   29    5.2  1.5  1.5  -0.032917765   0.006281977  -0.084215163  -0.067797508  -0.024965902   0.042680424   0.002329104  -0.070035836
                        -0.003960424  -0.001284247  -0.056958955   0.013503394  -0.000815185   0.008395756  -0.117000096  -0.000556401

   30    6.2  1.5  1.5  -0.004625158  -0.003980370  -0.043686576   0.004146267  -0.005255284   0.001905228   0.101339427  -0.001721709
                         0.032259966  -0.000098764   0.079123246   0.081991211   0.035299131  -0.031392202   0.001287245  -0.063660244

   31    7.2  1.5  1.5   0.004038679   0.001852113   0.050948662  -0.013325903   0.000107300  -0.007385557   0.225640343  -0.004601855
                        -0.000449607  -0.086403942  -0.043044200   0.069700113   0.035938172   0.039926458   0.009736988   0.371571949

   32    8.2  1.5  1.5  -0.004889924  -0.002002637   0.044026370  -0.010683943   0.000894440  -0.010458729  -0.147560450   0.002739109
                         0.000598241   0.098917876  -0.037824673   0.060031325   0.052437836   0.058735255  -0.006826891  -0.243585846

   33    9.2  1.5  1.5   0.023048725   0.010477111   0.069084196  -0.017161694   0.000017724  -0.000235882  -0.000068654   0.000001687
                        -0.002934128  -0.471190470  -0.058053088   0.093246996   0.001160401   0.001298616  -0.000002001  -0.000113101

   34    1.2  1.5  0.5   0.014307122  -0.000675748   0.034342535   0.035181555   0.349554793  -0.298930796  -0.003227455   0.003834656
                         0.001757413  -0.000995248   0.018578076  -0.002564475  -0.000549080  -0.066514579   0.007997617  -0.004957493

   35    2.2  1.5  0.5  -0.000769041  -0.121575929   0.035988791  -0.056517724   0.151138914   0.172859090  -0.007098591  -0.199607481
                        -0.005989648  -0.003498030   0.040434602  -0.008819827  -0.004355816   0.028976442   0.120827786  -0.004927315

   36    3.2  1.5  0.5   0.002777071   0.003251069   0.067384425  -0.017075424  -0.013390025   0.036646201  -0.115227945   0.004843188
                        -0.000376236  -0.064654638  -0.059289258   0.093338187  -0.153795249  -0.170863945  -0.007151397  -0.190353496

   37    4.2  1.5  0.5   0.119596629  -0.022534344  -0.023866667  -0.017373161  -0.008766948  -0.009605440   0.002575231  -0.088129118
                         0.013960717   0.014009082  -0.013712443   0.002574145  -0.003279684  -0.006419541  -0.176628225  -0.004078546

   38    5.2  1.5  0.5   0.021513483   0.121001943   0.011728462  -0.027891486   0.053010058   0.059136544  -0.002593685  -0.098125099
                         0.007981283   0.003317322   0.015593356  -0.003968222  -0.000776430   0.011086275   0.019872016   0.000174866

   39    6.2  1.5  0.5  -0.014412112  -0.000770711  -0.016147376   0.005585058   0.000010880   0.011673133  -0.041017400   0.006696095
                        -0.000546870   0.122751069   0.015935102  -0.024727614  -0.053394017  -0.059064636   0.010704576  -0.065271410

   40    7.2  1.5  0.5  -0.012561455  -0.004148632  -0.032104689   0.007899812  -0.000334953   0.010702571   0.239963084  -0.000777915
                         0.097763664  -0.000833568   0.052504161   0.057814594   0.058079271  -0.050364656   0.007737476  -0.145963431

   41    8.2  1.5  0.5  -0.010008684  -0.003957896   0.036576038  -0.009258319   0.000445050  -0.007197237   0.348612878  -0.001521264
                         0.085030858  -0.001142865  -0.059715988  -0.066013815  -0.040626065   0.035011812   0.009555270  -0.211456819

   42    9.2  1.5  0.5   0.016322951   0.006329915   0.179245521  -0.044437410   0.000021873  -0.000414864   0.000355299   0.000000871
                        -0.129471009   0.001685244  -0.291744957  -0.322914248  -0.002331319   0.002007145   0.000009142  -0.000216221

   43    1.2  1.5 -0.5  -0.000811535  -0.014411249   0.024496558  -0.037976880   0.306109781   0.343185908   0.005106921   0.008120322
                         0.000888011  -0.000313255   0.025381824  -0.009072552  -0.008978423   0.066425053  -0.003633274  -0.002904946

   44    2.2  1.5 -0.5  -0.120820199   0.001620357  -0.047985381  -0.053784866  -0.175222401   0.147608907  -0.003061450   0.121015034
                        -0.013979346  -0.005817366  -0.031135923   0.006110514  -0.004124265   0.032765152   0.199644815  -0.002259482

   45    3.2  1.5 -0.5  -0.006057866  -0.002694371   0.049551058  -0.010640999  -0.003784077  -0.042138112   0.190394873  -0.002536254
                         0.064452260  -0.000770741  -0.080921443  -0.089121524  -0.174708650   0.148514817   0.002775326  -0.115421789

   46    4.2  1.5 -0.5  -0.020291521  -0.120362343  -0.011224272   0.026927069   0.010643260  -0.009227981   0.000549886  -0.176589863
                        -0.017096936  -0.003340934  -0.013508096   0.005708050  -0.004493996   0.001568462   0.088221730  -0.004492421

   47    5.2  1.5 -0.5   0.120226227  -0.022435941  -0.023424349  -0.019139931  -0.060166181   0.051913564  -0.004099987   0.019959865
                         0.014075841   0.004812418  -0.015651890   0.003791125  -0.000258783   0.010754112   0.098039563  -0.001796676

   48    6.2  1.5 -0.5   0.016847039   0.014341489  -0.012336688   0.001397352  -0.000331110  -0.010053283   0.065487026   0.012336811
                        -0.121591925   0.001526338   0.022146193   0.022643158  -0.060206176   0.052439038  -0.004079708  -0.040556357

   49    7.2  1.5 -0.5  -0.004225303  -0.001593581   0.044455934  -0.011112893  -0.001017760   0.010618119   0.145815480  -0.001867869
                         0.000229786   0.098554475  -0.037796881   0.060530170  -0.051479198  -0.057101397   0.006616211   0.240080531

   50    8.2  1.5 -0.5  -0.004080911  -0.002293308  -0.050938052   0.012593489   0.000469035  -0.007220328   0.211226710  -0.004397805
                         0.000563247   0.085587157   0.042998316  -0.068885484   0.035740834   0.039981772   0.009978873   0.348716075

   51    9.2  1.5 -0.5   0.006506204   0.002419705  -0.248535671   0.061115003   0.000029112  -0.000417938   0.000216083  -0.000005078
                        -0.000759727  -0.130473468   0.210898828  -0.336911017   0.002049365   0.002293655   0.000007780   0.000355380

   52    1.2  1.5 -1.5  -0.156922614   0.001988145   0.025578861   0.029458332  -0.001725025   0.000505524   0.007978313  -0.137078857
                        -0.019210761  -0.008243464   0.017567888  -0.005962388  -0.006879184  -0.007863151  -0.224954632   0.003306045

   53    2.2  1.5 -1.5   0.000612058  -0.025234834   0.040595528  -0.066103402  -0.266160041  -0.297040046  -0.001784679  -0.092113571
                        -0.001171068  -0.000820433   0.049278910  -0.012888805   0.000165275  -0.058222068   0.057298107   0.000296058

   54    3.2  1.5 -1.5   0.005461337   0.000828658  -0.049954340   0.012135205  -0.000100316   0.058127742   0.059581787   0.003697742
                         0.000352443  -0.027849007   0.040211637  -0.065722829  -0.265523975  -0.296319567   0.007779785   0.098507969

   55    4.2  1.5 -1.5  -0.033527987   0.006190122  -0.088961582  -0.067223381   0.065287429  -0.067262337  -0.002865738  -0.017370185
                        -0.004588313  -0.003851852  -0.053050645   0.008117617   0.002946908  -0.011181858   0.016012115  -0.008810353

   56    5.2  1.5 -1.5  -0.006032761  -0.033145431   0.041494909  -0.100733950   0.043497897   0.024672065   0.002245661   0.116999616
                        -0.002172171  -0.000802900   0.055290291  -0.013754547  -0.000200653   0.003905123  -0.070002035   0.002353070

   57    6.2  1.5 -1.5   0.003953367   0.000050674  -0.057789354   0.020244323  -0.004045878  -0.001492266  -0.063540416   0.002767628
                         0.000473279  -0.032589798   0.058310726  -0.088086165   0.031188637   0.035656974  -0.004266907  -0.101309806

   58    7.2  1.5 -1.5   0.010562490   0.003932404  -0.036573931   0.009235611   0.000272357  -0.006879181   0.371458619  -0.000702991
                        -0.085775901   0.001024342   0.060811454   0.066055074  -0.040602885   0.035273794   0.010265678  -0.225849240

   59    8.2  1.5 -1.5  -0.012208764  -0.004753521  -0.032091416   0.007561280   0.000799444  -0.010762151  -0.243500445   0.000918622
                         0.098181988  -0.001293558   0.051846385   0.057548711  -0.059653801   0.051329356  -0.007007154   0.147715433

   60    9.2  1.5 -1.5   0.057227899   0.022389386  -0.049425955   0.012731909   0.000013116  -0.000236124  -0.000113078  -0.000000747
                        -0.467819619   0.006210331   0.080911068   0.089334683  -0.001319800   0.001136261  -0.000002839   0.000068679


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5   0.000014623   0.000181413   0.000044033   0.000273970   0.011339768   0.002231849   0.000639897  -0.007067046
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000131352   0.000068778  -0.000085624  -0.000081829  -0.003931172   0.003331490  -0.002172917  -0.005483492
                        -0.000110275  -0.000003825   0.000243767  -0.000039361  -0.001838521   0.010095986   0.003980590   0.001199333

    3    3.2  0.5  0.5   0.000091791  -0.000004010   0.000003967  -0.000006360  -0.000776553   0.002653929  -0.004073726  -0.000778569
                        -0.000101998   0.000210746   0.000018438  -0.000009616  -0.001891465  -0.000742920  -0.001555781  -0.012375025

    4    4.2  0.5  0.5   0.117147186  -0.083550037  -0.011902941   0.051703370  -0.011991301  -0.020004423  -0.020030968  -0.032112744
                         0.112025769  -0.012270341   0.138461342  -0.033458361   0.009372635  -0.027834611   0.029957659   0.001568116

    5    5.2  0.5  0.5  -0.111684820  -0.172630913   0.015847366   0.109235820  -0.022303611  -0.006186931   0.029629228  -0.034856237
                        -0.083903247   0.007760613  -0.001038679  -0.006152197   0.000319946  -0.002257822  -0.035548477  -0.003065545

    6    6.2  0.5  0.5  -0.020234298   0.010939305   0.177002721  -0.034733206   0.009803890  -0.039938261  -0.001954342   0.003420707
                        -0.001850936  -0.017519058   0.016271473  -0.127095942   0.029176942   0.026988141  -0.004681728  -0.012767271

    7    7.2  0.5  0.5  -0.179037691   0.016206680  -0.027407505   0.003493361   0.000411472  -0.002166291   0.036636616   0.003273616
                         0.218988846   0.183934476  -0.014415225  -0.039617849  -0.003581340   0.000281155   0.029136123  -0.015888910

    8    8.2  0.5  0.5   0.030122199  -0.000146673  -0.179623564   0.027642342   0.004998180  -0.023917764  -0.003745232   0.000101672
                        -0.030900459  -0.027750668  -0.095482083  -0.267823711  -0.036795164   0.002920723  -0.001866244   0.001474534

    9    9.2  0.5  0.5  -0.001586996  -0.001419576   0.000873117   0.002112049   0.356597056  -0.027249442   0.072050406  -0.039262855
                        -0.001426930   0.000257357  -0.001479666   0.000174539   0.044186670  -0.233352386  -0.095624397  -0.018504665

   10   10.2  0.5  0.5  -0.002974423   0.000199702  -0.003589448   0.000533753   0.019717480  -0.079005712   0.131145829   0.020514325
                         0.002734818  -0.006178819  -0.000777373   0.002747654   0.056763406   0.032070142   0.054821247   0.406211183

   11   11.2  0.5  0.5   0.000600146  -0.001069283   0.000802243  -0.003104375  -0.167731403  -0.129105382   0.039210248   0.296497269
                         0.000449804   0.000128789  -0.004036142   0.000573205   0.043462359  -0.230997901  -0.093107544  -0.019719639

   12   12.2  0.5  0.5   0.002207508  -0.000190389  -0.001754240   0.000290298  -0.000407577   0.002014380   0.002799202   0.000248413
                        -0.002666994  -0.002248287  -0.000934478  -0.002611005   0.003120429  -0.000239244   0.002185002  -0.001218213

   13    1.2  0.5 -0.5   0.000134439  -0.000010837  -0.000075606   0.000012152  -0.000862107   0.004380266   0.004167980   0.000377396
                         0.000121806  -0.000009818   0.000263331  -0.000042323  -0.002058621   0.010459618  -0.005707108  -0.000516759

   14    2.2  0.5 -0.5   0.000048401   0.000171382  -0.000015251  -0.000257930  -0.010599244  -0.003214335   0.004202578  -0.004496126
                         0.000049014   0.000006473  -0.000089514   0.000015028   0.000826913  -0.002915875  -0.003720945  -0.000592885

   15    3.2  0.5 -0.5   0.000138530   0.000000462  -0.000007487  -0.000016628  -0.000339888  -0.002044620  -0.009534470  -0.001146193
                        -0.000158869  -0.000137218  -0.000008767  -0.000008901  -0.002734912   0.000014345  -0.007927249   0.004207367

   16    4.2  0.5 -0.5  -0.070154831  -0.162031500  -0.046427371  -0.136369392   0.033401397   0.004013229   0.020205711  -0.036006596
                        -0.047004995   0.004362228   0.040462324  -0.026769609   0.007699947  -0.014680994  -0.025008330  -0.001492001

   17    5.2  0.5 -0.5  -0.122720273   0.139101174  -0.036058440   0.005371646   0.004472434  -0.008320209   0.018081771   0.046182384
                        -0.121660979   0.012810827   0.103296190  -0.014945343   0.004834585  -0.020696075  -0.029956708  -0.002961895

   18    6.2  0.5 -0.5  -0.003656096   0.016237739  -0.112575440   0.033206745  -0.009466281   0.030699333  -0.012327871   0.002628180
                         0.020327783   0.012214280  -0.068458341  -0.174619690   0.047263241  -0.002227368  -0.004767393   0.004339436

   19    7.2  0.5 -0.5   0.135509646  -0.014357187  -0.039043450   0.006291970   0.000577450  -0.003144428  -0.014762051  -0.001921922
                        -0.125426009   0.282496868  -0.007575390   0.030321299   0.002106754   0.001762917  -0.006727250  -0.046770306

   20    8.2  0.5 -0.5  -0.018741369  -0.001575009  -0.265051868   0.042204699   0.006544801  -0.032008591   0.001130820  -0.000701735
                         0.020466610  -0.043124293  -0.047340747   0.198998030   0.023189559   0.018823283   0.000951753   0.004125191

   21    9.2  0.5 -0.5  -0.000879202   0.002134156  -0.000415088   0.001663156   0.225766224   0.178501509   0.008212581   0.119716698
                        -0.001143867   0.000008109   0.002078200  -0.000430878  -0.065003693   0.311851140  -0.042620980  -0.001788419

   22   10.2  0.5 -0.5  -0.004000662   0.000368002   0.002493661  -0.000243372   0.000936934   0.059974009   0.315943569   0.033074987
                         0.004713003   0.004023803   0.001271279   0.003664590   0.085261473  -0.003739188   0.256140634  -0.138241249

   23   11.2  0.5 -0.5  -0.000705937  -0.000746761   0.001407642   0.004100801   0.262938864  -0.024701433  -0.190792144   0.098315807
                        -0.000813391  -0.000069623  -0.002825642   0.000342739   0.029856050  -0.171501136   0.227811002   0.023247802

   24   12.2  0.5 -0.5  -0.001650662   0.000154794  -0.002589726   0.000414084  -0.000557429   0.002720796  -0.001130296  -0.000113630
                         0.001538297  -0.003458611  -0.000441518   0.001944002  -0.001950446  -0.001581286  -0.000517864  -0.003549204

   25    1.2  1.5  1.5  -0.038996404   0.080082494  -0.004398774   0.016645110   0.003597637   0.002635517  -0.003232792  -0.020921226
                        -0.032034744   0.007812872   0.023000041  -0.004221464  -0.001180791   0.005029317   0.006429686   0.000666743

   26    2.2  1.5  1.5   0.148727751   0.127455153  -0.058123502  -0.159545280   0.012483978  -0.001076283  -0.000240180   0.000178831
                         0.127717408  -0.007861656   0.107779114  -0.017638112   0.001428919  -0.008015770   0.000223642   0.000026416

   27    3.2  1.5  1.5  -0.165330594   0.009917864  -0.007558714   0.002957723   0.000960373  -0.006265179  -0.005824037   0.000013396
                         0.197348782   0.167414696  -0.006997923  -0.011546432  -0.009633327   0.000724055  -0.004816904   0.002562431

   28    4.2  1.5  1.5   0.023811970   0.107812950   0.054185740  -0.104582345  -0.228186221  -0.154852536  -0.028588975  -0.087101737
                        -0.002121648  -0.008685424  -0.175430794   0.053890768   0.023107711  -0.219429540   0.039537658   0.009214487

   29    5.2  1.5  1.5  -0.280776432  -0.220572083  -0.047446987  -0.165286744   0.263824558  -0.048336507   0.059584840  -0.050369192
                        -0.233679164   0.020453372   0.067005543  -0.011939896   0.047480301  -0.232446889  -0.072103420  -0.007288410

   30    6.2  1.5  1.5   0.100492295  -0.016287608   0.228587282  -0.030986379   0.055173785  -0.184552485  -0.069880489  -0.000899907
                        -0.125344274  -0.104671295   0.137431132   0.341481931  -0.304003653   0.038801011  -0.060725299   0.030506197

   31    7.2  1.5  1.5  -0.047205273   0.003044325   0.135153438  -0.022338295  -0.038174690   0.204882917   0.069697436   0.005805176
                         0.042478487  -0.097823369   0.024710376  -0.100723518  -0.146243909  -0.116387700   0.032422557   0.224320151

   32    8.2  1.5  1.5   0.070710304  -0.006461071   0.114943984  -0.018765062  -0.035873735   0.172602585  -0.083497593  -0.009055022
                        -0.066405644   0.149011729   0.019230562  -0.086357438  -0.123691313  -0.101088385  -0.038619392  -0.263521962

   33    9.2  1.5  1.5  -0.003283649   0.000306125   0.004012572  -0.000662320  -0.003763907   0.020357704   0.029728022   0.002725696
                         0.003084201  -0.006881090   0.000692382  -0.003047194  -0.014142329  -0.011249514   0.013967091   0.094851857

   34    1.2  1.5  0.5   0.081274986   0.066990110   0.093806873   0.253418584  -0.011636500   0.001234020  -0.003059138   0.001832980
                         0.065001484  -0.002908677  -0.169683015   0.025851849  -0.001694603   0.007296926   0.003971993   0.000607289

   35    2.2  1.5  0.5  -0.007950530   0.017493573  -0.024012938   0.108814234   0.004198977   0.003557273   0.002767417   0.018472538
                        -0.009539774   0.002628276   0.147082576  -0.024938684  -0.001335922   0.005651150  -0.005828782  -0.000456392

   36    3.2  1.5  0.5   0.055891564  -0.007246790   0.102899515  -0.024860564  -0.002210634   0.012305826   0.002948925  -0.000088299
                        -0.055456510   0.121460135   0.020294680  -0.079232297  -0.008708985  -0.007326306   0.001370883   0.009409898

   37    4.2  1.5  0.5   0.304269344   0.268627792  -0.028372303  -0.174034817   0.078828832  -0.020399714  -0.205164008   0.169972447
                         0.242149237  -0.011254835   0.055258821  -0.021510451   0.014068418  -0.062631633   0.243743644  -0.002759521

   38    5.2  1.5  0.5   0.081397814  -0.023683851  -0.051688738   0.162090656   0.063076137   0.037810500  -0.082838768  -0.311473869
                         0.076692703  -0.006260316   0.263070782  -0.041777518  -0.010917596   0.060297453   0.150391478   0.013910715

   39    6.2  1.5  0.5   0.042145132  -0.024763755   0.233977691  -0.024544820   0.009157524  -0.076605064  -0.089194121  -0.022453486
                        -0.075537201   0.135011304   0.036691303  -0.172794365   0.054536931   0.048206894  -0.065208341  -0.332760555

   40    7.2  1.5  0.5   0.108573105  -0.010723892  -0.064491635   0.012093498   0.025575033  -0.127948103  -0.206521455  -0.019990303
                        -0.132954360  -0.110715737  -0.033805847  -0.098098120  -0.197859576   0.015696726  -0.162555802   0.088553589

   41    8.2  1.5  0.5   0.080993922  -0.005795827   0.112802298  -0.018593730  -0.027893612   0.148709431  -0.178166560  -0.014261324
                        -0.096332576  -0.082326219   0.061038937   0.167162693   0.233121600  -0.018773976  -0.135888913   0.075830850

   42    9.2  1.5  0.5  -0.002764658   0.000241634   0.004068606  -0.000668088  -0.011209593   0.057366725   0.019054775   0.001854444
                         0.003325328   0.002801455   0.002170367   0.006047632   0.089335076  -0.006943201   0.015325969  -0.008551578

   43    1.2  1.5 -0.5  -0.047691151   0.103874223   0.045086416  -0.188981196   0.007207236   0.006057960   0.000590623   0.005011856
                        -0.047134799   0.006400168  -0.250712009   0.043337773  -0.001680378   0.010078737  -0.001838418  -0.000127867

   44    2.2  1.5 -0.5  -0.014728609  -0.012297177   0.053999067   0.147997769   0.006586614  -0.000389726   0.011263242  -0.006339286
                        -0.009798010   0.001731371  -0.097706582   0.017509016   0.001098274  -0.004389101  -0.014648628  -0.001202808

   45    3.2  1.5 -0.5  -0.076181818   0.004184116   0.069294929  -0.008889957  -0.002004236   0.008886939  -0.007651193  -0.000632129
                         0.094875766   0.078624326   0.045760433   0.104504320   0.014180661  -0.001325008  -0.005478433   0.003189967

   46    4.2  1.5 -0.5  -0.191514217   0.388070478  -0.027352173   0.060942742  -0.065650296  -0.043426068   0.102474313   0.317840126
                        -0.188705767   0.024847351   0.173212804  -0.012021109   0.005376654  -0.067276161  -0.135636510  -0.021929167

   47    5.2  1.5 -0.5   0.021754684   0.111815100   0.084886386   0.267119442   0.070222633  -0.014294506  -0.194933905   0.170307471
                         0.011262775  -0.002181333  -0.144267263   0.022916484   0.011584408  -0.062397596   0.243331567   0.021799620

   48    6.2  1.5 -0.5  -0.072299264  -0.019485716   0.159310928  -0.029302895   0.014874653  -0.053841300   0.255483648  -0.000055426
                         0.116679528   0.084275665   0.071276706   0.235017344  -0.089280374   0.012619489   0.214387154  -0.110488532

   49    7.2  1.5 -0.5   0.082285161  -0.008809862   0.097626142  -0.014695734  -0.034944718   0.172623470  -0.083302709  -0.009473004
                        -0.074847369   0.171427440   0.015447658  -0.071316489  -0.124080502  -0.100018155  -0.036083364  -0.262651409

   50    8.2  1.5 -0.5   0.059571518  -0.004658849  -0.165802629   0.027539309   0.040125889  -0.204252981  -0.069649435  -0.004660786
                        -0.057117705   0.125770727  -0.028259174   0.125266503   0.144419078   0.115777605  -0.033206317  -0.224025438

   51    9.2  1.5 -0.5  -0.002060053   0.000183935  -0.005997158   0.000963299   0.015755022  -0.078071241   0.007999674   0.001138670
                         0.001913824  -0.004320568  -0.001026783   0.004509557   0.055596119   0.044847431   0.003545937   0.024426895

   52    1.2  1.5 -1.5   0.064592266   0.050408069  -0.008650986  -0.023320807  -0.005656994   0.000300534   0.012877294  -0.007099024
                         0.047980058   0.002443541   0.014833775  -0.002119221  -0.000488259   0.003774511  -0.016502046  -0.001181386

   53    2.2  1.5 -1.5   0.089174185  -0.195970663   0.027075552  -0.119633825   0.007809357   0.006140257  -0.000084138  -0.000322259
                         0.091403426  -0.005213413  -0.158217300   0.026123303  -0.002103544   0.010963064   0.000159998   0.000062062

   54    3.2  1.5 -1.5   0.119757312  -0.009985235  -0.011914286   0.004640247   0.001752224  -0.008514657   0.002061432   0.000455086
                        -0.117406263   0.257256763  -0.000343530   0.009196368   0.006058584   0.004606944   0.001522081   0.007544194

   55    4.2  1.5 -1.5   0.074064902  -0.016221713   0.080659035   0.183571773   0.262213871  -0.066828400   0.058811898  -0.048790394
                         0.078825498  -0.017560391  -0.085649296  -0.003669029   0.058073372  -0.219401191  -0.064905932  -0.000230904

   56    5.2  1.5 -1.5  -0.149725551   0.364973592   0.034136932  -0.077497240   0.233076409   0.145703826   0.023820710   0.093370049
                        -0.163256374   0.015350356  -0.162163309   0.027113413  -0.045203556   0.225007047  -0.044974996  -0.005593777

   57    6.2  1.5 -1.5  -0.082349816   0.009688628   0.336772626  -0.069012563   0.035498544  -0.259095793   0.025166519   0.007825807
                         0.066632380  -0.160362149   0.064453576  -0.257636813   0.185216068   0.168320342   0.017265114   0.092247501

   58    7.2  1.5 -1.5  -0.063425653   0.006460850  -0.090647658   0.013546650   0.028213026  -0.149638927   0.177729625   0.014922572
                         0.074537682   0.063174497  -0.049266911  -0.136724331  -0.233938307   0.021278617   0.136986899  -0.075407372

   59    8.2  1.5 -1.5   0.095263099  -0.007814193  -0.077825525   0.013236592   0.026570263  -0.127947978  -0.207471000  -0.018057231
                        -0.114765774  -0.096688133  -0.041867914  -0.115787420  -0.198253714   0.014689481  -0.162731686   0.090206662

   60    9.2  1.5 -1.5  -0.004393322   0.000362572  -0.002746089   0.000441830   0.002512702  -0.014498557   0.074991606   0.006253548
                         0.005304888   0.004490344  -0.001477516  -0.004047828  -0.023123018   0.001991058   0.058142611  -0.032244814


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  0.5  0.5  -0.000006301  -0.008872599  -0.000982096   0.002474900  -0.000101312  -0.002584958   0.011829797   0.001247055
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.006581427  -0.000376712   0.001869120  -0.001584979   0.001634916  -0.000870587   0.001288474  -0.011409541
                         0.005939435  -0.000452349   0.000813263   0.000306471   0.001831128   0.000012836   0.000881678  -0.002991453

    3    3.2  0.5  0.5   0.004618187  -0.000027110  -0.000241153  -0.000250500  -0.000622925  -0.000033469   0.000276286  -0.002570082
                        -0.004717927   0.006692064   0.000444226   0.000375690   0.000708533  -0.001326363  -0.009219797   0.007273670

    4    4.2  0.5  0.5   0.045607796  -0.038687567   0.188734459   0.078552427  -0.180512447   0.151629571  -0.002075822   0.002045612
                         0.033021412   0.003129162   0.111920638   0.029660720  -0.222540077   0.013035437   0.000016302   0.000426039

    5    5.2  0.5  0.5  -0.001038988  -0.041873592  -0.021058899   0.170637565   0.141181265   0.299332659  -0.001401292   0.000284114
                        -0.000630172   0.000770180   0.023555672   0.016742184   0.151458392  -0.003966284   0.000003777   0.000091971

    6    6.2  0.5  0.5   0.014279825   0.004402218   0.205940609   0.080197419   0.042363754  -0.019029035   0.000212379  -0.000096845
                        -0.026804388   0.029895974  -0.248546805  -0.222494340   0.001755603   0.044275862   0.000593944  -0.000530843

    7    7.2  0.5  0.5   0.020137970   0.000159455   0.013084498   0.003554888  -0.246330389   0.007629694  -0.000009935   0.000130563
                        -0.024338877  -0.031039285  -0.040210330   0.058804437   0.218741327   0.232516600  -0.000533388  -0.000629427

    8    8.2  0.5  0.5  -0.024933087   0.000559030   0.069171624   0.023949302   0.037053076  -0.006431387   0.000029452  -0.000133732
                         0.031003319   0.039427412  -0.227269594   0.326372382  -0.040228953  -0.037866866   0.000609770   0.000717716

    9    9.2  0.5  0.5   0.106915785   0.135820881   0.052398820  -0.075008815   0.032153335   0.032607365   0.188738640   0.226604019
                         0.091945585  -0.003829329   0.015205865   0.005841491   0.034817322  -0.000664084  -0.010152691   0.048805880

   10   10.2  0.5  0.5   0.105278520  -0.000972063  -0.008815691  -0.005415814  -0.016346965  -0.000177352  -0.006634835   0.055655398
                        -0.117399790   0.160328938   0.012118892   0.010596074   0.015874950  -0.032261664   0.232719967  -0.185395881

   11   11.2  0.5  0.5   0.111844854  -0.153203143   0.019765638   0.019089291   0.025295485  -0.057469415  -0.233309114   0.183170071
                         0.096850308  -0.004409421   0.018405477   0.007106922   0.030854411  -0.000387745  -0.010992995   0.049718536

   12   12.2  0.5  0.5  -0.214430690   0.000143452  -0.009300137  -0.003688488  -0.038592670   0.001519496   0.009172027  -0.086998490
                         0.262999703   0.333380574   0.031734475  -0.045953823   0.034871031   0.036665032   0.377103756   0.446918213

   13    1.2  0.5 -0.5  -0.006890927   0.000004894   0.001926411   0.000764443  -0.001686841   0.000066112  -0.001219704   0.011570347
                        -0.005589109   0.000003969   0.001553729   0.000616554  -0.001958718   0.000076768  -0.000259743   0.002463973

   14    2.2  0.5 -0.5  -0.000577522  -0.008852906  -0.001041314  -0.001965446  -0.000558385  -0.002454395   0.011782384   0.001443855
                         0.000114017   0.000467045  -0.001233591  -0.000540396  -0.000668052  -0.000043915  -0.000549405  -0.000593971

   15    3.2  0.5 -0.5   0.004194471  -0.000614767   0.000040872  -0.000091174  -0.001026875  -0.000130386   0.000998717  -0.001650122
                        -0.005214486  -0.006573321  -0.000449692   0.000497170   0.000840171   0.000934374   0.007649455   0.009075135

   16    4.2  0.5 -0.5  -0.028075649  -0.056222563   0.079764410  -0.217170128   0.108824858   0.286422063  -0.002089485  -0.002026899
                        -0.026800699  -0.003083515   0.026227487  -0.031369741   0.106388908  -0.008439867  -0.000009376  -0.000448308

   17    5.2  0.5 -0.5  -0.032036075   0.001203896   0.143331381   0.001603689   0.192327188  -0.206894885  -0.000297039  -0.001369773
                        -0.026975559   0.000165064   0.094093541   0.031555904   0.229403630  -0.008142527   0.000030777  -0.000295563

   18    6.2  0.5 -0.5   0.022251340   0.005794403  -0.077256699  -0.004263593   0.021131861  -0.028975186   0.000205288   0.000331431
                        -0.020445701  -0.029812975   0.223532458  -0.322752027  -0.043311668  -0.030954941  -0.000499029  -0.000536682

   19    7.2  0.5 -0.5  -0.019428709  -0.000308438   0.039684148   0.015059120   0.181165234  -0.005002954   0.000003401  -0.000120814
                         0.024207186  -0.031588346  -0.043540412  -0.039513259  -0.145949784   0.329395506  -0.000642817   0.000519621

   20    8.2  0.5 -0.5   0.025270649  -0.000165548   0.223536395   0.088836826  -0.032889988   0.006303597  -0.000018691   0.000155812
                        -0.030269252   0.039784886  -0.239006237  -0.220327484   0.019837112  -0.054328297   0.000729829  -0.000590262

   21    9.2  0.5 -0.5   0.103073433  -0.140955627  -0.054718046  -0.050332308   0.020775068  -0.047364356  -0.231799713   0.182484587
                         0.088531592   0.004060406  -0.051637010  -0.021059757   0.025141157  -0.001643368   0.000537177   0.049241517

   22   10.2  0.5 -0.5   0.100240919  -0.007811283   0.002436599  -0.000746222  -0.024561585  -0.001361655  -0.015819524   0.041982840
                        -0.125132215  -0.157496861  -0.011647781   0.014967535   0.020918292   0.022746059  -0.192922001  -0.228997916

   23   11.2  0.5 -0.5  -0.121763241  -0.147873429   0.019320393  -0.026940017  -0.037796063  -0.039886352  -0.189508446  -0.230481882
                        -0.093082540   0.004764707   0.006452269   0.001917683  -0.043293667   0.000967040   0.010476471  -0.037842973

   24   12.2  0.5 -0.5   0.210117559   0.000866968  -0.031720595  -0.012683693   0.028774009  -0.001239024  -0.007996069   0.087516055
                        -0.258830523   0.339335546   0.033453888   0.030540030  -0.022774763   0.051998536   0.455236959  -0.366922756

   25    1.2  1.5  1.5   0.009515000  -0.014791281  -0.061543448  -0.057358436  -0.091718090   0.211056388   0.000140957   0.000933123
                         0.010316850   0.001986192  -0.061071687  -0.020512959  -0.117306297   0.004389722  -0.001926268  -0.002167458

   26    2.2  1.5  1.5  -0.059149792  -0.074009086   0.076450204  -0.109461085   0.028347737   0.027943057   0.074092553   0.088073862
                        -0.046863160   0.001070277   0.021605822   0.010406908   0.030686479  -0.001661299  -0.002825427   0.015886783

   27    3.2  1.5  1.5  -0.047883014   0.001438148   0.023032428   0.011817914   0.028921971  -0.007009668  -0.002826816   0.015781634
                         0.059801788   0.075272641  -0.074929429   0.110778503  -0.021721035  -0.025680437  -0.073716415  -0.087632941

   28    4.2  1.5  1.5  -0.173743222   0.262104167   0.015893244   0.004756890  -0.010413848   0.032166494  -0.206581906   0.141220570
                        -0.130041879   0.007899429   0.014616134   0.002450221  -0.011234437   0.001741248  -0.008743417   0.027501335

   29    5.2  1.5  1.5  -0.125775889  -0.077295220  -0.022664369   0.037861415  -0.021318487  -0.015178881   0.044442404   0.118926627
                        -0.101943728  -0.001180370  -0.005416889  -0.001989587  -0.023890129   0.000783455  -0.001618585   0.024103276

   30    6.2  1.5  1.5  -0.065351741  -0.018745899  -0.008857405  -0.003241708  -0.015905235  -0.001655714   0.012828578   0.008745894
                         0.103685733   0.118656899   0.024999966  -0.037931326   0.015693148   0.015453624  -0.078389609  -0.096261905

   31    7.2  1.5  1.5   0.083908295  -0.001152427  -0.003126654  -0.001087669   0.016744697  -0.000934312   0.003035029  -0.021137325
                        -0.102773249   0.135962496   0.003106305   0.002637941  -0.013326373   0.030493152  -0.109648602   0.087720616

   32    8.2  1.5  1.5   0.126306132   0.001067987  -0.012515065  -0.004955086   0.008229222  -0.000295316   0.002423497  -0.030962904
                        -0.156727574   0.204823930   0.013230845   0.012075538  -0.006620436   0.014971603  -0.163527886   0.131942504

   33    9.2  1.5  1.5  -0.021876690  -0.000078822   0.141530568   0.055984764   0.276950490  -0.011996573   0.000013543  -0.000130762
                         0.026855294  -0.035242331  -0.149337105  -0.136545944  -0.219405450   0.500181787  -0.000681958   0.000548744

   34    1.2  1.5  0.5  -0.042866245  -0.054842485  -0.056320287   0.074409311  -0.026964683  -0.028585551   0.087171383   0.102564469
                        -0.035698434   0.000621436  -0.012072053  -0.002817620  -0.028164122  -0.000360102  -0.003447024   0.021086437

   35    2.2  1.5  0.5   0.004754413  -0.005457289  -0.070142745  -0.063668078   0.080002863  -0.183244373   0.052484037  -0.043247118
                         0.003449100   0.000327319  -0.062864408  -0.024135615   0.102091213  -0.005221075   0.000224359  -0.009684665

   36    3.2  1.5  0.5   0.015234469   0.001548079  -0.132450110  -0.054699480  -0.033255869   0.004714085  -0.002086534  -0.011977244
                        -0.016565831   0.022875087   0.143544205   0.130483975   0.025486101  -0.059319883  -0.051490406   0.041159502

   37    4.2  1.5  0.5   0.017596745  -0.035073387  -0.007530337   0.003569287   0.015809299   0.016664340   0.030350532  -0.018659551
                         0.034447104  -0.013461903  -0.005643103  -0.002973058   0.021703248  -0.004244970   0.011670850  -0.015753751

   38    5.2  1.5  0.5  -0.157546425   0.207733908   0.021019341   0.021066448  -0.000903282   0.012455506  -0.168230190   0.136020858
                        -0.129481097  -0.000490907   0.020427268   0.008295020  -0.002036536   0.000132816  -0.003073098   0.033375808

   39    6.2  1.5  0.5  -0.130523769   0.002573945   0.012480980   0.004590482  -0.029339376   0.000076711  -0.005637101   0.034347610
                         0.155832831  -0.208632107  -0.012133666  -0.011027829   0.020786727  -0.051016087   0.169976288  -0.135406724

   40    7.2  1.5  0.5  -0.127311771   0.001046100  -0.006887255  -0.002707035  -0.032335972   0.001247685  -0.004067842   0.031724806
                         0.154644931   0.195233725   0.024099977  -0.034820645   0.029027544   0.030352082  -0.133646189  -0.159501245

   41    8.2  1.5  0.5   0.085420559   0.000099319   0.006042178   0.002414382   0.007168158  -0.000233857   0.002077754  -0.020779602
                        -0.105019112  -0.132912734  -0.020492482   0.029717299  -0.006384423  -0.006738223   0.090479396   0.107327986

   42    9.2  1.5  0.5  -0.045561158   0.000006328   0.100204945   0.039282164   0.148056511  -0.006174659   0.000021861  -0.000224511
                         0.055839167   0.070847089  -0.339671536   0.491978139  -0.133792610  -0.140670006   0.000967272   0.001144611

   43    1.2  1.5 -0.5   0.042202097  -0.055779665  -0.056149775  -0.051417307   0.018926656  -0.038937073   0.104707032  -0.084541585
                         0.035029520   0.000722584  -0.048906926  -0.025960926   0.021425337  -0.002053348   0.000738706  -0.021527947

   44    2.2  1.5 -0.5   0.004032230   0.005865216   0.064710111  -0.094063578   0.123534190   0.129564962  -0.044315800  -0.051379693
                         0.003691918   0.000316191   0.021183802   0.004897124   0.135443951  -0.005999546   0.000464521  -0.010712218

   45    3.2  1.5 -0.5  -0.015612004   0.001396590  -0.039340172  -0.012980162   0.041872638  -0.002389699  -0.003141639   0.012765470
                         0.016790815   0.022462532   0.135906040  -0.194883262  -0.042281831  -0.041830414  -0.042751480  -0.049926529

   46    4.2  1.5 -0.5   0.035719882   0.035365793  -0.000911790  -0.009404166  -0.007657915   0.026761870  -0.021531587  -0.032115754
                         0.011638528  -0.015668729  -0.004554945  -0.000335030  -0.015397283  -0.002183388   0.011521730   0.005093315

   47    5.2  1.5 -0.5  -0.161027841  -0.203922759  -0.021605252   0.029185142  -0.008228607  -0.002132604   0.139989354   0.165180664
                        -0.131238911   0.001318742  -0.006768727  -0.002704336  -0.009351325   0.000644512  -0.004312661   0.032034185

   48    6.2  1.5 -0.5   0.129424387  -0.003207978   0.003350073   0.002097488   0.038606711  -0.003394841   0.005391065  -0.029890102
                        -0.163656070  -0.203248701  -0.011465712   0.017280082  -0.033349196  -0.035796118   0.139591102   0.167422511

   49    7.2  1.5 -0.5  -0.123795874  -0.001461665   0.023967306   0.009768934  -0.023813081   0.000894071  -0.002192752   0.031815170
                         0.150969809  -0.200302784  -0.025404204  -0.023082701   0.018861144  -0.043444378   0.162610892  -0.129867803

   50    8.2  1.5 -0.5   0.083648471   0.000187497  -0.020535659  -0.008161960   0.005258406  -0.000160058   0.002030982  -0.020877718
                        -0.103289583   0.135372267   0.021615592   0.019744167  -0.004219894   0.009597798  -0.109302166   0.088062245

   51    9.2  1.5 -0.5  -0.044633562  -0.000210471  -0.339437543  -0.135246445   0.110620186  -0.004763802   0.000018818  -0.000222850
                         0.055019589  -0.072067936   0.358284428   0.327301364  -0.087116884   0.199495612  -0.001166270   0.000941505

   52    1.2  1.5 -1.5  -0.010236526  -0.013888734  -0.057524534   0.086244604   0.141053258   0.148738883  -0.000461208  -0.000263348
                        -0.010860041   0.002018833  -0.020042444  -0.008900299   0.157060647  -0.007051246  -0.002314278   0.001913381

   53    2.2  1.5 -1.5  -0.056805150   0.075459310  -0.078668833  -0.073071263   0.016975700  -0.041750881  -0.089451219   0.071879067
                        -0.047451715   0.000863784  -0.076819578  -0.031177488   0.022257582  -0.001455350  -0.002806139   0.018195854

   54    3.2  1.5 -1.5   0.048533373  -0.000482424   0.078744943   0.029112314  -0.024033244  -0.002414499   0.002817145  -0.018118868
                        -0.057554760   0.076608121  -0.078808463  -0.072783139   0.011446548  -0.036089527  -0.088998068   0.071510889

   55    4.2  1.5 -1.5   0.208539961   0.216855296   0.005240899  -0.021546898   0.022309983   0.015308410  -0.143851461  -0.203872298
                         0.158971947   0.008448561   0.001079148   0.001399205   0.023237469   0.000559809  -0.002515998  -0.034476327

   56    5.2  1.5 -1.5  -0.060775082   0.161901497   0.028221486   0.021042166  -0.009311481   0.032014028  -0.121338700   0.043130570
                        -0.047773776   0.000055040   0.025317837   0.010012170  -0.012012849   0.000564056  -0.001196029   0.010839788

   57    6.2  1.5 -1.5   0.060186390  -0.014559068  -0.026336352  -0.008800419   0.010629327  -0.001512153   0.011495865  -0.003780184
                        -0.103963776   0.121694761   0.027489829   0.025020083  -0.011339016   0.022292707  -0.095972340   0.079342381

   58    7.2  1.5 -1.5   0.084751706  -0.000427728   0.000809466   0.000483602   0.022496091  -0.000829040   0.002402824  -0.019869733
                        -0.106321572  -0.132675392  -0.002736151   0.004380779  -0.020606580  -0.021384335   0.090199332   0.107875952

   59    8.2  1.5 -1.5   0.129854022   0.000631285   0.003724019   0.001435216   0.011151824  -0.000353514   0.002802138  -0.031690118
                        -0.158404280  -0.201286792  -0.012510123   0.018155502  -0.009993644  -0.010555818   0.135497873   0.160446188

   60    9.2  1.5 -1.5  -0.022261389   0.000073655  -0.042145405  -0.016411451   0.371177693  -0.014475276   0.000013599  -0.000128796
                         0.027321395   0.034637999   0.141431445  -0.205092996  -0.335488984  -0.353030866   0.000563945   0.000669822


   Nr   State  S   Sz       57            58            59            60

    1    1.2  0.5  0.5  -0.000003697   0.000045525   0.000172806  -0.000041023
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000010248  -0.000000244   0.000030493   0.000071763
                        -0.000042494  -0.000011285   0.000039152   0.000155127

    3    3.2  0.5  0.5   0.000105310   0.000008911   0.000008329   0.000030861
                         0.000032608   0.000110576  -0.000031608   0.000005434

    4    4.2  0.5  0.5   0.105365995   0.083582181  -0.140677293  -0.069507992
                        -0.248585095  -0.016756469  -0.007138011  -0.151572622

    5    5.2  0.5  0.5  -0.078999910   0.292772169  -0.138483327   0.034187839
                         0.122973576   0.011969550   0.001469834   0.016406354

    6    6.2  0.5  0.5   0.032429764  -0.007190129  -0.034496050  -0.204501868
                         0.039687840   0.050025197   0.275423066   0.060825888

    7    7.2  0.5  0.5  -0.224467993  -0.020840422  -0.005421070  -0.026336313
                        -0.119920432   0.249971902  -0.026869689   0.019926383

    8    8.2  0.5  0.5   0.028031737  -0.001923990  -0.052277533  -0.227551072
                         0.010393571  -0.031277594  -0.211743342   0.167730647

    9    9.2  0.5  0.5  -0.032364294   0.079919914   0.191515879  -0.152259071
                         0.073932943   0.012218749  -0.050426968  -0.206508873

   10   10.2  0.5  0.5  -0.224588256  -0.021603986  -0.009562027  -0.041481730
                        -0.069478676  -0.236142459   0.047203757  -0.002108594

   11   11.2  0.5  0.5  -0.043535119  -0.159266531  -0.201625507  -0.031775024
                         0.148811504   0.019487225  -0.038370033  -0.154510248

   12   12.2  0.5  0.5  -0.000760666  -0.000065333   0.000159938   0.000678807
                        -0.000395598   0.000850626   0.000631832  -0.000501107

   13    1.2  0.5 -0.5  -0.000017851  -0.000001450   0.000018242   0.000076841
                         0.000041879   0.000003401   0.000036744   0.000154781

   14    2.2  0.5 -0.5  -0.000010286   0.000043110  -0.000170857   0.000048627
                        -0.000004650   0.000007236   0.000004703   0.000009903

   15    3.2  0.5 -0.5   0.000098226   0.000011298  -0.000018590  -0.000024608
                         0.000051556  -0.000109663  -0.000025226   0.000021515

   16    4.2  0.5 -0.5  -0.048188774   0.269993042   0.166670891  -0.068948157
                         0.070317867   0.000547591  -0.005141477  -0.122829979

   17    5.2  0.5 -0.5  -0.103790933  -0.144102574  -0.029897332  -0.060262562
                         0.274018713   0.024452695  -0.023326516  -0.124692485

   18    6.2  0.5 -0.5   0.048838273  -0.023793032   0.036453934   0.231355924
                         0.013001592  -0.045394998   0.210218727  -0.153369746

   19    7.2  0.5 -0.5   0.238124598   0.022298042  -0.006137061  -0.026477636
                         0.078847643   0.253514472   0.032449940   0.007092459

   20    8.2  0.5 -0.5  -0.028018260   0.001430620  -0.049050941  -0.212903704
                        -0.014034483  -0.029862316   0.278400908   0.047330707

   21    9.2  0.5 -0.5  -0.020098017  -0.080702642   0.252673791   0.039993747
                         0.078310665   0.000781764   0.044549910   0.193963169

   22   10.2  0.5 -0.5  -0.208759389  -0.024151193   0.020334251   0.038028268
                        -0.112470043   0.233845870   0.036217376  -0.029554659

   23   11.2  0.5 -0.5   0.080378199  -0.153964784   0.152523471  -0.124024252
                        -0.138870173  -0.018303436  -0.040244996  -0.163533145

   24   12.2  0.5 -0.5   0.000808121   0.000065644   0.000146996   0.000637049
                         0.000273447   0.000854869  -0.000830830  -0.000137700

   25    1.2  1.5  1.5  -0.078944105  -0.244805680  -0.092063064  -0.012860444
                         0.227466641   0.020536186  -0.014772167  -0.075104894

   26    2.2  1.5  1.5   0.022474692  -0.048384725  -0.118461849   0.096259034
                        -0.044720659  -0.003401323   0.031972084   0.125667847

   27    3.2  1.5  1.5  -0.042134964   0.002975126   0.034259655   0.125598632
                        -0.028284711   0.049602818   0.119221499  -0.094193467

   28    4.2  1.5  1.5  -0.016806399  -0.030202277   0.134483136   0.013929253
                         0.040268680   0.006724992   0.024187820   0.068677800

   29    5.2  1.5  1.5   0.015931217  -0.045544641  -0.072091301   0.076447134
                        -0.028258440  -0.002942021   0.026282373   0.113662936

   30    6.2  1.5  1.5  -0.032730910  -0.001140836   0.014195728   0.099507896
                        -0.020700228   0.037733309   0.092207339  -0.079137082

   31    7.2  1.5  1.5   0.065516737   0.005505218  -0.019544104  -0.077871610
                         0.022144610   0.071002435   0.100955980   0.017047981

   32    8.2  1.5  1.5  -0.086984593  -0.007421061  -0.013209712  -0.057974634
                        -0.029391394  -0.092098979   0.075611716   0.012676498

   33    9.2  1.5  1.5  -0.239254410  -0.020183020   0.018821406   0.076554704
                        -0.081660714  -0.256268553  -0.096543343  -0.017314027

   34    1.2  1.5  0.5  -0.010160355   0.028189748   0.066574370  -0.058727324
                         0.023650096   0.004352683  -0.011405667  -0.071796005

   35    2.2  1.5  0.5   0.063881901   0.196216094  -0.125793125  -0.022457714
                        -0.184749738  -0.014359061  -0.018751394  -0.094801187

   36    3.2  1.5  0.5   0.077350468   0.003200104  -0.042577343  -0.177492724
                         0.028963378   0.085513475   0.230905631   0.042326825

   37    4.2  1.5  0.5  -0.053056449   0.126908287  -0.024645946   0.029377368
                         0.078242742  -0.001109757   0.006654788   0.037658661

   38    5.2  1.5  0.5  -0.042998658  -0.090613098  -0.046203540  -0.003176962
                         0.119387744   0.009911279  -0.006576861  -0.026383883

   39    6.2  1.5  0.5  -0.101292535  -0.018113953   0.009784428   0.031164415
                        -0.040935120  -0.112927392  -0.042985359  -0.010138592

   40    7.2  1.5  0.5  -0.082857917  -0.008029892   0.014981918   0.062751314
                        -0.043208478   0.091866508   0.058264221  -0.046735706

   41    8.2  1.5  0.5  -0.062208451  -0.004697449  -0.019615125  -0.081771984
                        -0.032057169   0.068078293  -0.078023548   0.061628147

   42    9.2  1.5  0.5  -0.078059017  -0.007217719   0.054648812   0.228887766
                        -0.040925488   0.089159805   0.215669184  -0.170681254

   43    1.2  1.5 -0.5   0.007049676   0.025740135  -0.090421515  -0.019387479
                        -0.027638918  -0.000072971  -0.020676425  -0.064702099

   44    2.2  1.5 -0.5   0.090149400  -0.195003252  -0.094899224   0.072731701
                        -0.174871449  -0.013678255   0.022039767   0.104334197

   45    3.2  1.5 -0.5  -0.077410216  -0.003686866  -0.041013363  -0.187888366
                        -0.036475384   0.082512903  -0.177800819   0.140812651

   46    4.2  1.5 -0.5   0.050784187   0.092781099   0.046793866   0.004998596
                        -0.116309549  -0.018126808   0.009567581   0.025034434

   47    5.2  1.5 -0.5  -0.044648752   0.126687098  -0.025044619   0.026436095
                         0.079469843   0.007259283   0.008886474   0.038459785

   48    6.2  1.5 -0.5   0.096780639   0.002062062   0.004776722   0.034150973
                         0.060944393  -0.109231908   0.032422133  -0.027878076

   49    7.2  1.5 -0.5  -0.087657968  -0.007257818  -0.013957470  -0.058848980
                        -0.028635906  -0.093165074   0.076987938   0.012488990

   50    8.2  1.5 -0.5  -0.064468138  -0.005096646   0.018838682   0.078607559
                        -0.022373627  -0.069796688  -0.100646857  -0.017125385

   51    9.2  1.5 -0.5  -0.084849565  -0.007039409  -0.051099401  -0.217474495
                        -0.028321682  -0.087855292   0.280910219   0.046952460

   52    1.2  1.5 -1.5   0.114884783  -0.240205323   0.072989744  -0.054168851
                        -0.217147514  -0.016572484  -0.021877691  -0.075891767

   53    2.2  1.5 -1.5   0.015843705   0.049951940  -0.155363429  -0.024038925
                        -0.045843512  -0.003138908  -0.030338333  -0.120322708

   54    3.2  1.5 -1.5   0.044463719   0.009497530   0.028518992   0.122020332
                         0.022187128   0.049851550  -0.154382942  -0.022327750

   55    4.2  1.5 -1.5   0.018029338  -0.043633850  -0.067708290   0.081465252
                        -0.025146491  -0.000329723   0.018062442   0.109700398

   56    5.2  1.5 -1.5   0.015152569   0.032242286  -0.135800968  -0.008515681
                        -0.043050778  -0.003574644  -0.017931101  -0.076258783

   57    6.2  1.5 -1.5   0.035158743   0.006207977   0.026634767   0.088902085
                         0.013746523   0.038226600  -0.124318496  -0.028286591

   58    7.2  1.5 -1.5   0.063157425   0.005319302   0.019357203   0.081735185
                         0.032905817  -0.068953112   0.077329942  -0.062397447

   59    8.2  1.5 -1.5  -0.081813190  -0.007070864   0.014425174   0.061851142
                        -0.042940611   0.091543303   0.057564452  -0.045453981

   60    9.2  1.5 -1.5  -0.227830853  -0.018695661  -0.018533321  -0.078104167
                        -0.119054725   0.252114294  -0.076268698   0.059787972


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  18.264%   0.100%  48.228%   0.006%  33.303%   0.004%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   9.402%   9.696%   3.853%  43.647%   0.043%  33.265%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  51.049%  11.388%   1.423%   2.741%  16.288%  17.017%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.001%   0.001%   0.000%   0.001%   0.000%   0.000%   0.390%   0.241%   1.223%   0.004%
    5    5.2  0.5  0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.169%   0.377%   0.104%   0.383%
    6    6.2  0.5  0.5   0.000%   0.000%   0.001%   0.002%   0.000%   0.000%   0.622%   1.677%   0.116%   0.006%
    7    7.2  0.5  0.5   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.050%   0.018%   0.001%   0.013%
    8    8.2  0.5  0.5   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%   0.337%   0.129%   0.113%   1.619%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.001%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.006%   0.006%   0.000%   0.000%   0.000%   0.004%
   13    1.2  0.5 -0.5   0.100%  18.264%   0.006%  48.228%   0.004%  33.303%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   9.696%   9.402%  43.647%   3.853%  33.265%   0.043%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5  11.388%  51.049%   2.741%   1.423%  17.017%  16.288%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.001%   0.001%   0.001%   0.000%   0.000%   0.000%   0.241%   0.390%   0.004%   1.223%
   17    5.2  0.5 -0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.377%   0.169%   0.383%   0.104%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%   1.677%   0.622%   0.006%   0.116%
   19    7.2  0.5 -0.5   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.018%   0.050%   0.013%   0.001%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.001%   0.002%   0.000%   0.000%   0.129%   0.337%   1.619%   0.113%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.008%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.006%   0.006%   0.000%   0.000%   0.004%   0.000%
   25    1.2  1.5  1.5   0.012%   0.003%   0.000%   0.001%   0.000%   0.000%   7.149%  19.616%   3.629%   0.270%
   26    2.2  1.5  1.5   0.000%   0.000%   0.003%   0.002%   0.001%   0.001%   0.001%   0.002%   0.793%  11.028%
   27    3.2  1.5  1.5   0.000%   0.000%   0.003%   0.002%   0.001%   0.001%   1.736%   0.634%   0.002%   0.017%
   28    4.2  1.5  1.5   0.000%   0.000%   0.002%   0.002%   0.006%   0.005%   0.139%   0.101%   1.146%   0.025%
   29    5.2  1.5  1.5   0.000%   0.000%   0.002%   0.002%   0.001%   0.002%   0.526%   0.282%   0.010%   1.192%
   30    6.2  1.5  1.5   0.000%   0.000%   0.003%   0.001%   0.001%   0.001%   0.167%   0.068%   0.278%   3.892%
   31    7.2  1.5  1.5   0.002%   0.000%   0.001%   0.002%   0.002%   0.002%   1.585%   4.329%   0.064%   0.006%
   32    8.2  1.5  1.5   0.002%   0.000%   0.001%   0.001%   0.004%   0.004%   0.298%   0.815%   2.038%   0.144%
   33    9.2  1.5  1.5   0.034%   0.007%   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   34    1.2  1.5  0.5   0.000%   0.000%   0.001%   0.001%   0.002%   0.002%   5.581%   2.110%   2.470%  35.385%
   35    2.2  1.5  0.5   0.007%   0.002%   0.001%   0.002%   0.000%   0.000%   9.175%  24.913%   1.727%   0.102%
   36    3.2  1.5  0.5   0.002%   0.000%   0.003%   0.007%   0.000%   0.000%   2.436%   6.708%  23.121%   1.633%
   37    4.2  1.5  0.5   0.001%   0.003%   0.000%   0.000%   0.000%   0.000%   1.294%   0.821%   0.079%   0.008%
   38    5.2  1.5  0.5   0.003%   0.001%   0.000%   0.000%   0.004%   0.004%   0.610%   0.663%   1.658%   0.135%
   39    6.2  1.5  0.5   0.003%   0.001%   0.000%   0.000%   0.004%   0.004%   0.022%   0.046%   2.564%   0.179%
   40    7.2  1.5  0.5   0.000%   0.002%   0.001%   0.001%   0.004%   0.004%   1.636%   0.598%   0.002%   0.029%
   41    8.2  1.5  0.5   0.000%   0.002%   0.002%   0.001%   0.002%   0.002%   1.414%   0.516%   0.182%   2.592%
   42    9.2  1.5  0.5   0.001%   0.003%   0.027%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   43    1.2  1.5 -0.5   0.000%   0.000%   0.001%   0.001%   0.002%   0.002%   2.110%   5.581%  35.385%   2.470%
   44    2.2  1.5 -0.5   0.002%   0.007%   0.002%   0.001%   0.000%   0.000%  24.913%   9.175%   0.102%   1.727%
   45    3.2  1.5 -0.5   0.000%   0.002%   0.007%   0.003%   0.000%   0.000%   6.708%   2.436%   1.633%  23.121%
   46    4.2  1.5 -0.5   0.003%   0.001%   0.000%   0.000%   0.000%   0.000%   0.821%   1.294%   0.008%   0.079%
   47    5.2  1.5 -0.5   0.001%   0.003%   0.000%   0.000%   0.004%   0.004%   0.663%   0.610%   0.135%   1.658%
   48    6.2  1.5 -0.5   0.001%   0.003%   0.000%   0.000%   0.004%   0.004%   0.046%   0.022%   0.179%   2.564%
   49    7.2  1.5 -0.5   0.002%   0.000%   0.001%   0.001%   0.004%   0.004%   0.598%   1.636%   0.029%   0.002%
   50    8.2  1.5 -0.5   0.002%   0.000%   0.001%   0.002%   0.002%   0.002%   0.516%   1.414%   2.592%   0.182%
   51    9.2  1.5 -0.5   0.003%   0.001%   0.014%   0.027%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   52    1.2  1.5 -1.5   0.003%   0.012%   0.001%   0.000%   0.000%   0.000%  19.616%   7.149%   0.270%   3.629%
   53    2.2  1.5 -1.5   0.000%   0.000%   0.002%   0.003%   0.001%   0.001%   0.002%   0.001%  11.028%   0.793%
   54    3.2  1.5 -1.5   0.000%   0.000%   0.002%   0.003%   0.001%   0.001%   0.634%   1.736%   0.017%   0.002%
   55    4.2  1.5 -1.5   0.000%   0.000%   0.002%   0.002%   0.005%   0.006%   0.101%   0.139%   0.025%   1.146%
   56    5.2  1.5 -1.5   0.000%   0.000%   0.002%   0.002%   0.002%   0.001%   0.282%   0.526%   1.192%   0.010%
   57    6.2  1.5 -1.5   0.000%   0.000%   0.001%   0.003%   0.001%   0.001%   0.068%   0.167%   3.892%   0.278%
   58    7.2  1.5 -1.5   0.000%   0.002%   0.002%   0.001%   0.002%   0.002%   4.329%   1.585%   0.006%   0.064%
   59    8.2  1.5 -1.5   0.000%   0.002%   0.001%   0.001%   0.004%   0.004%   0.815%   0.298%   0.144%   2.038%
   60    9.2  1.5 -1.5   0.007%   0.034%   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.012%   0.001%   0.000%   0.005%   0.000%   0.002%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.002%   0.010%   0.002%   0.003%   0.002%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.002%   0.014%   0.001%   0.001%   0.000%   0.000%
    4    4.2  0.5  0.5   0.137%   0.167%   0.036%   0.147%   0.114%   0.052%   0.000%   0.000%   0.042%   0.068%
    5    5.2  0.5  0.5   0.964%   0.004%   0.050%   0.008%   0.194%   0.111%   0.000%   0.000%   0.059%   0.484%
    6    6.2  0.5  0.5   0.001%   0.009%   0.093%   0.210%   0.003%   0.016%   0.000%   0.000%   0.001%   0.001%
    7    7.2  0.5  0.5   1.611%   0.028%   0.002%   0.001%   0.397%   0.064%   0.000%   0.000%   0.060%   0.366%
    8    8.2  0.5  0.5   0.000%   0.000%   0.260%   0.117%   0.003%   0.000%   0.000%   0.000%   0.007%   0.043%
    9    9.2  0.5  0.5   0.000%   0.000%   5.615%   2.570%   0.572%   0.083%   6.159%   6.115%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.001%   0.179%   0.352%   1.123%   6.990%   6.339%   6.145%   0.001%   0.000%
   11   11.2  0.5  0.5   0.000%   0.002%   1.399%   3.007%   0.588%   3.739%   6.159%   6.217%   0.000%   0.000%
   12   12.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%  16.169%  16.641%   0.000%   0.001%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.001%   0.012%   0.005%   0.000%   0.002%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.010%   0.002%   0.003%   0.002%   0.000%   0.002%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.014%   0.002%   0.001%   0.001%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.167%   0.137%   0.147%   0.036%   0.052%   0.114%   0.000%   0.000%   0.068%   0.042%
   17    5.2  0.5 -0.5   0.004%   0.964%   0.008%   0.050%   0.111%   0.194%   0.000%   0.000%   0.484%   0.059%
   18    6.2  0.5 -0.5   0.009%   0.001%   0.210%   0.093%   0.016%   0.003%   0.000%   0.000%   0.001%   0.001%
   19    7.2  0.5 -0.5   0.028%   1.611%   0.001%   0.002%   0.064%   0.397%   0.000%   0.000%   0.366%   0.060%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.117%   0.260%   0.000%   0.003%   0.000%   0.000%   0.043%   0.007%
   21    9.2  0.5 -0.5   0.000%   0.000%   2.570%   5.615%   0.083%   0.572%   6.115%   6.159%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.001%   0.000%   0.352%   0.179%   6.990%   1.123%   6.145%   6.339%   0.000%   0.001%
   23   11.2  0.5 -0.5   0.002%   0.000%   3.007%   1.399%   3.739%   0.588%   6.217%   6.159%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%  16.641%  16.169%   0.001%   0.000%
   25    1.2  1.5  1.5   0.079%   1.379%   0.897%   1.768%   4.606%  28.762%   0.002%   0.003%   0.000%   0.000%
   26    2.2  1.5  1.5  31.832%   0.564%   7.730%   3.442%   0.709%   0.095%   3.301%   3.397%   0.000%   0.001%
   27    3.2  1.5  1.5  40.745%   0.731%   8.066%   3.640%   0.775%   0.147%   3.137%   3.228%   0.000%   0.000%
   28    4.2  1.5  1.5   0.159%   0.043%   0.753%   0.963%   0.039%   0.101%   0.252%   0.322%   0.062%   0.946%
   29    5.2  1.5  1.5   4.356%   0.100%   1.056%   0.853%   0.105%   0.039%   0.094%   0.016%   4.173%  24.671%
   30    6.2  1.5  1.5   2.101%   0.035%   1.324%   0.525%   0.102%   0.016%   0.081%   0.083%   4.119%  24.679%
   31    7.2  1.5  1.5   0.003%   0.140%   0.332%   0.745%   0.107%   0.670%   0.117%   0.115%   1.066%   0.205%
   32    8.2  1.5  1.5   0.005%   0.304%   0.239%   0.543%   0.152%   0.946%   0.219%   0.212%   0.389%   0.063%
   33    9.2  1.5  1.5   0.000%   0.000%   0.358%   0.807%   2.070%  12.884%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   1.685%   0.037%   2.945%   1.200%   0.182%   0.039%   4.677%   4.853%   0.000%   0.000%
   35    2.2  1.5  0.5   0.001%   0.090%   2.555%   5.720%   2.748%  17.053%   1.175%   1.099%   0.000%   0.000%
   36    3.2  1.5  0.5   0.060%   3.036%   6.716%  15.524%   0.695%   4.326%   1.044%   1.019%   0.000%   0.000%
   37    4.2  1.5  0.5   6.068%   0.091%   0.077%   0.055%   1.386%   0.517%   0.012%   0.004%   2.167%  10.187%
   38    5.2  1.5  0.5   0.156%   0.079%   0.052%   0.059%   0.494%   1.266%   0.234%   0.235%   1.161%   1.044%
   39    6.2  1.5  0.5   0.041%   0.169%   0.047%   0.113%   0.253%   1.551%   0.198%   0.196%   1.192%   0.128%
   40    7.2  1.5  0.5   1.306%   0.023%   0.531%   0.235%   0.973%   0.152%   0.243%   0.246%   0.899%   5.437%
   41    8.2  1.5  0.5   1.625%   0.028%   0.777%   0.343%   0.686%   0.110%   0.115%   0.119%   2.305%  13.971%
   42    9.2  1.5  0.5   0.002%   0.000%  10.364%   4.574%   1.006%   0.161%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.037%   1.685%   1.200%   2.945%   0.039%   0.182%   4.853%   4.677%   0.000%   0.000%
   44    2.2  1.5 -0.5   0.090%   0.001%   5.720%   2.555%  17.053%   2.748%   1.099%   1.175%   0.000%   0.000%
   45    3.2  1.5 -0.5   3.036%   0.060%  15.524%   6.716%   4.326%   0.695%   1.019%   1.044%   0.000%   0.000%
   46    4.2  1.5 -0.5   0.091%   6.068%   0.055%   0.077%   0.517%   1.386%   0.004%   0.012%  10.187%   2.167%
   47    5.2  1.5 -0.5   0.079%   0.156%   0.059%   0.052%   1.266%   0.494%   0.235%   0.234%   1.044%   1.161%
   48    6.2  1.5 -0.5   0.169%   0.041%   0.113%   0.047%   1.551%   0.253%   0.196%   0.198%   0.128%   1.192%
   49    7.2  1.5 -0.5   0.023%   1.306%   0.235%   0.531%   0.152%   0.973%   0.246%   0.243%   5.437%   0.899%
   50    8.2  1.5 -0.5   0.028%   1.625%   0.343%   0.777%   0.110%   0.686%   0.119%   0.115%  13.971%   2.305%
   51    9.2  1.5 -0.5   0.000%   0.002%   4.574%  10.364%   0.161%   1.006%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   1.379%   0.079%   1.768%   0.897%  28.762%   4.606%   0.003%   0.002%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.564%  31.832%   3.442%   7.730%   0.095%   0.709%   3.397%   3.301%   0.001%   0.000%
   54    3.2  1.5 -1.5   0.731%  40.745%   3.640%   8.066%   0.147%   0.775%   3.228%   3.137%   0.000%   0.000%
   55    4.2  1.5 -1.5   0.043%   0.159%   0.963%   0.753%   0.101%   0.039%   0.322%   0.252%   0.946%   0.062%
   56    5.2  1.5 -1.5   0.100%   4.356%   0.853%   1.056%   0.039%   0.105%   0.016%   0.094%  24.671%   4.173%
   57    6.2  1.5 -1.5   0.035%   2.101%   0.525%   1.324%   0.016%   0.102%   0.083%   0.081%  24.679%   4.119%
   58    7.2  1.5 -1.5   0.140%   0.003%   0.745%   0.332%   0.670%   0.107%   0.115%   0.117%   0.205%   1.066%
   59    8.2  1.5 -1.5   0.304%   0.005%   0.543%   0.239%   0.946%   0.152%   0.212%   0.219%   0.063%   0.389%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.807%   0.358%  12.884%   2.070%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.003%   0.152%   0.000%   0.000%   0.000%   0.000%   2.457%   7.437%  11.267%   0.934%
    5    5.2  0.5  0.5   0.000%   0.030%   0.000%   0.000%   0.000%   0.000%   7.581%  12.496%   0.367%   4.265%
    6    6.2  0.5  0.5   0.000%   0.002%   0.001%   0.000%   0.002%   0.000%   0.451%   0.147%  11.121%   2.771%
    7    7.2  0.5  0.5   0.043%   0.000%   0.000%   0.000%   0.000%   0.000%   7.372%  38.064%   0.014%   0.056%
    8    8.2  0.5  0.5   0.093%   0.001%   0.000%   0.000%   0.000%   0.001%   0.023%   0.104%   9.266%  35.893%
    9    9.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.152%   0.003%   0.000%   0.000%   0.000%   0.000%   7.437%   2.457%   0.934%  11.267%
   17    5.2  0.5 -0.5   0.030%   0.000%   0.000%   0.000%   0.000%   0.000%  12.496%   7.581%   4.265%   0.367%
   18    6.2  0.5 -0.5   0.002%   0.000%   0.000%   0.001%   0.000%   0.002%   0.147%   0.451%   2.771%  11.121%
   19    7.2  0.5 -0.5   0.000%   0.043%   0.000%   0.000%   0.000%   0.000%  38.064%   7.372%   0.056%   0.014%
   20    8.2  0.5 -0.5   0.001%   0.093%   0.000%   0.000%   0.001%   0.000%   0.104%   0.023%  35.893%   9.266%
   21    9.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.003%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   26    2.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.065%   0.007%   0.026%
   27    3.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.023%   0.120%   0.000%   0.000%
   28    4.2  1.5  1.5   0.039%   3.875%  13.240%   0.351%  32.393%   0.389%   0.178%   0.043%   1.471%   0.101%
   29    5.2  1.5  1.5   4.855%   0.017%   0.245%   0.657%   0.746%   0.962%   0.612%   3.632%   0.385%   2.775%
   30    6.2  1.5  1.5   0.204%   0.022%   0.284%   6.004%   0.203%   1.358%   0.132%   0.697%   1.265%   4.833%
   31    7.2  1.5  1.5   0.089%   9.125%  13.872%   0.519%   9.931%   0.171%   0.711%   0.135%   0.363%   0.089%
   32    8.2  1.5  1.5   0.060%   6.281%   0.001%   0.001%  36.310%   0.638%   0.929%   0.180%   1.218%   0.320%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.010%   0.011%   0.043%
   35    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.001%   0.006%   0.001%
   36    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%   0.004%   0.009%   0.002%
   37    4.2  1.5  0.5   8.011%   0.449%   1.994%   4.352%   0.124%   0.279%   1.969%   8.789%   0.037%   1.092%
   38    5.2  1.5  0.5   0.400%   1.953%  32.269%   2.158%   5.905%   0.064%   0.066%   0.533%   3.318%   0.546%
   39    6.2  1.5  0.5   0.397%  44.198%   0.136%   0.030%   1.076%   0.021%   0.125%   0.064%   2.340%   0.613%
   40    7.2  1.5  0.5  17.938%   0.153%   0.426%  12.236%   0.110%   5.801%   0.412%   2.135%   0.140%   0.551%
   41    8.2  1.5  0.5   1.583%   0.015%   0.379%  10.844%   0.064%   3.449%   0.366%   1.893%   0.513%   1.966%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   43    1.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.010%   0.002%   0.043%   0.011%
   44    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.003%   0.001%   0.006%
   45    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.022%   0.002%   0.009%
   46    4.2  1.5 -0.5   0.449%   8.011%   4.352%   1.994%   0.279%   0.124%   8.789%   1.969%   1.092%   0.037%
   47    5.2  1.5 -0.5   1.953%   0.400%   2.158%  32.269%   0.064%   5.905%   0.533%   0.066%   0.546%   3.318%
   48    6.2  1.5 -0.5  44.198%   0.397%   0.030%   0.136%   0.021%   1.076%   0.064%   0.125%   0.613%   2.340%
   49    7.2  1.5 -0.5   0.153%  17.938%  12.236%   0.426%   5.801%   0.110%   2.135%   0.412%   0.551%   0.140%
   50    8.2  1.5 -0.5   0.015%   1.583%  10.844%   0.379%   3.449%   0.064%   1.893%   0.366%   1.966%   0.513%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   52    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.065%   0.013%   0.026%   0.007%
   54    3.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.120%   0.023%   0.000%   0.000%
   55    4.2  1.5 -1.5   3.875%   0.039%   0.351%  13.240%   0.389%  32.393%   0.043%   0.178%   0.101%   1.471%
   56    5.2  1.5 -1.5   0.017%   4.855%   0.657%   0.245%   0.962%   0.746%   3.632%   0.612%   2.775%   0.385%
   57    6.2  1.5 -1.5   0.022%   0.204%   6.004%   0.284%   1.358%   0.203%   0.697%   0.132%   4.833%   1.265%
   58    7.2  1.5 -1.5   9.125%   0.089%   0.519%  13.872%   0.171%   9.931%   0.135%   0.711%   0.089%   0.363%
   59    8.2  1.5 -1.5   6.281%   0.060%   0.001%   0.001%   0.638%  36.310%   0.180%   0.929%   0.320%   1.218%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.001%   0.008%   0.001%   0.021%   0.002%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.001%   0.008%   0.021%   0.001%   0.000%   0.002%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.029%   0.001%   0.001%   0.001%   0.001%   0.000%   0.000%
    4    4.2  0.5  0.5  17.418%   6.021%   1.489%   4.086%   2.720%   1.570%   0.000%   0.001%   0.182%   6.318%
    5    5.2  0.5  0.5   4.124%  16.504%   7.687%   0.853%   0.018%   1.350%   0.000%   0.000%   5.930%   0.084%
    6    6.2  0.5  0.5  11.955%  19.165%   0.020%   0.644%   4.271%   4.853%   0.000%   0.000%   1.897%   5.232%
    7    7.2  0.5  0.5   0.226%   0.141%   9.534%   0.023%   0.014%   0.013%   0.000%   0.000%   0.023%   0.008%
    8    8.2  0.5  0.5   0.318%   0.234%   0.030%   0.000%   5.030%   4.456%   0.000%   0.000%   0.018%   0.004%
    9    9.2  0.5  0.5   0.000%   0.000%   1.858%   0.003%  12.768%  11.371%   3.906%   3.140%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.045%  24.044%   0.838%   0.805%   3.272%   4.233%   0.000%   0.000%
   11   11.2  0.5  0.5   0.001%   0.001%   0.030%  12.713%   6.076%   7.045%   3.240%   4.035%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.987%   3.856%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.008%   0.001%   0.021%   0.001%   0.000%   0.002%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.008%   0.001%   0.001%   0.021%   0.002%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.029%   0.000%   0.001%   0.001%   0.001%   0.001%   0.000%   0.000%
   16    4.2  0.5 -0.5   6.021%  17.418%   4.086%   1.489%   1.570%   2.720%   0.001%   0.000%   6.318%   0.182%
   17    5.2  0.5 -0.5  16.504%   4.124%   0.853%   7.687%   1.350%   0.018%   0.000%   0.000%   0.084%   5.930%
   18    6.2  0.5 -0.5  19.165%  11.955%   0.644%   0.020%   4.853%   4.271%   0.000%   0.000%   5.232%   1.897%
   19    7.2  0.5 -0.5   0.141%   0.226%   0.023%   9.534%   0.013%   0.014%   0.000%   0.000%   0.008%   0.023%
   20    8.2  0.5 -0.5   0.234%   0.318%   0.000%   0.030%   4.456%   5.030%   0.000%   0.000%   0.004%   0.018%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.003%   1.858%  11.371%  12.768%   3.140%   3.906%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%  24.044%   0.045%   0.805%   0.838%   4.233%   3.272%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.001%   0.001%  12.713%   0.030%   7.045%   6.076%   4.035%   3.240%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.856%   4.987%   0.000%   0.000%
   25    1.2  1.5  1.5   0.004%   0.006%   0.007%   2.499%   0.090%   0.096%   0.006%   0.005%   1.880%   5.067%
   26    2.2  1.5  1.5   0.003%   0.002%   0.064%   0.000%   0.454%   0.408%   9.162%   7.084%   0.848%   0.329%
   27    3.2  1.5  1.5   0.005%   0.003%   0.078%   0.003%   0.447%   0.411%   9.118%   7.050%   0.972%   0.361%
   28    4.2  1.5  1.5   0.028%   0.005%   0.005%   0.115%   0.458%   1.073%   0.465%   0.427%   0.038%   0.026%
   29    5.2  1.5  1.5   0.157%   0.119%   0.110%   0.004%   1.034%   0.478%   0.062%   0.189%   1.369%   0.491%
   30    6.2  1.5  1.5   0.037%   0.019%   0.106%   0.002%   0.817%   0.674%   0.127%   0.099%   1.027%   0.406%
   31    7.2  1.5  1.5   3.205%   5.175%   0.002%   0.747%   0.445%   0.504%   0.129%   0.165%   5.101%  13.809%
   32    8.2  1.5  1.5   1.150%   1.853%   0.002%   0.979%   0.337%   0.372%   0.275%   0.356%   2.182%   5.934%
   33    9.2  1.5  1.5   0.000%   0.001%   0.054%  22.213%   0.814%   0.899%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.000%   0.000%   0.021%   0.000%   0.152%   0.124%  12.219%   9.378%   0.007%   0.004%
   35    2.2  1.5  0.5   0.005%   0.009%   0.004%   1.479%   0.293%   0.327%   2.286%   3.072%   1.465%   3.987%
   36    3.2  1.5  0.5   0.010%   0.015%   0.001%   0.419%   0.806%   0.900%   2.383%   3.054%   1.333%   3.626%
   37    4.2  1.5  0.5   0.651%   0.639%   1.450%   0.070%   0.076%   0.031%   0.009%   0.013%   3.120%   0.778%
   38    5.2  1.5  0.5   0.387%   0.226%   0.053%   1.465%   0.038%   0.079%   0.281%   0.362%   0.040%   0.963%
   39    6.2  1.5  0.5   0.022%   0.041%   0.021%   1.507%   0.051%   0.064%   0.285%   0.362%   0.180%   0.431%
   40    7.2  1.5  0.5   1.915%   1.185%   0.972%   0.002%   0.379%   0.340%   0.337%   0.265%   5.764%   2.131%
   41    8.2  1.5  0.5   4.330%   2.686%   0.733%   0.002%   0.490%   0.444%   0.165%   0.128%  12.162%   4.472%
   42    9.2  1.5  0.5   0.000%   0.000%   1.703%   0.004%  11.724%  10.625%   0.001%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.021%   0.124%   0.152%   9.378%  12.219%   0.004%   0.007%
   44    2.2  1.5 -0.5   0.009%   0.005%   1.479%   0.004%   0.327%   0.293%   3.072%   2.286%   3.987%   1.465%
   45    3.2  1.5 -0.5   0.015%   0.010%   0.419%   0.001%   0.900%   0.806%   3.054%   2.383%   3.626%   1.333%
   46    4.2  1.5 -0.5   0.639%   0.651%   0.070%   1.450%   0.031%   0.076%   0.013%   0.009%   0.778%   3.120%
   47    5.2  1.5 -0.5   0.226%   0.387%   1.465%   0.053%   0.079%   0.038%   0.362%   0.281%   0.963%   0.040%
   48    6.2  1.5 -0.5   0.041%   0.022%   1.507%   0.021%   0.064%   0.051%   0.362%   0.285%   0.431%   0.180%
   49    7.2  1.5 -0.5   1.185%   1.915%   0.002%   0.972%   0.340%   0.379%   0.265%   0.337%   2.131%   5.764%
   50    8.2  1.5 -0.5   2.686%   4.330%   0.002%   0.733%   0.444%   0.490%   0.128%   0.165%   4.472%  12.162%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.004%   1.703%  10.625%  11.724%   0.000%   0.001%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.006%   0.004%   2.499%   0.007%   0.096%   0.090%   0.005%   0.006%   5.067%   1.880%
   53    2.2  1.5 -1.5   0.002%   0.003%   0.000%   0.064%   0.408%   0.454%   7.084%   9.162%   0.329%   0.848%
   54    3.2  1.5 -1.5   0.003%   0.005%   0.003%   0.078%   0.411%   0.447%   7.050%   9.118%   0.361%   0.972%
   55    4.2  1.5 -1.5   0.005%   0.028%   0.115%   0.005%   1.073%   0.458%   0.427%   0.465%   0.026%   0.038%
   56    5.2  1.5 -1.5   0.119%   0.157%   0.004%   0.110%   0.478%   1.034%   0.189%   0.062%   0.491%   1.369%
   57    6.2  1.5 -1.5   0.019%   0.037%   0.002%   0.106%   0.674%   0.817%   0.099%   0.127%   0.406%   1.027%
   58    7.2  1.5 -1.5   5.175%   3.205%   0.747%   0.002%   0.504%   0.445%   0.165%   0.129%  13.809%   5.101%
   59    8.2  1.5 -1.5   1.853%   1.150%   0.979%   0.002%   0.372%   0.337%   0.356%   0.275%   5.934%   2.182%
   60    9.2  1.5 -1.5   0.001%   0.000%  22.213%   0.054%   0.899%   0.814%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.000%   0.005%   0.000%   0.008%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.011%   0.002%   0.003%   0.008%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.002%   0.015%   0.004%   0.004%
    4    4.2  0.5  0.5   2.627%   0.713%   1.931%   0.379%   0.023%   0.117%   0.130%   0.103%   0.317%   0.151%
    5    5.2  0.5  0.5   1.951%   2.986%   0.025%   1.197%   0.050%   0.004%   0.214%   0.122%   0.000%   0.175%
    6    6.2  0.5  0.5   0.041%   0.043%   3.159%   1.736%   0.095%   0.232%   0.003%   0.017%   0.092%   0.091%
    7    7.2  0.5  0.5   8.001%   3.409%   0.096%   0.158%   0.001%   0.000%   0.219%   0.026%   0.100%   0.096%
    8    8.2  0.5  0.5   0.186%   0.077%   4.138%   7.249%   0.138%   0.058%   0.002%   0.000%   0.158%   0.155%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  12.911%   5.520%   1.434%   0.188%   1.988%   1.846%
   10   10.2  0.5  0.5   0.002%   0.004%   0.001%   0.001%   0.361%   0.727%   2.020%  16.543%   2.487%   2.571%
   11   11.2  0.5  0.5   0.000%   0.000%   0.002%   0.001%   3.002%   7.003%   1.021%   8.830%   2.189%   2.349%
   12   12.2  0.5  0.5   0.001%   0.001%   0.000%   0.001%   0.001%   0.000%   0.001%   0.000%  11.515%  11.114%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.005%   0.000%   0.008%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.011%   0.002%   0.003%   0.002%   0.000%   0.008%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.015%   0.002%   0.004%   0.004%
   16    4.2  0.5 -0.5   0.713%   2.627%   0.379%   1.931%   0.117%   0.023%   0.103%   0.130%   0.151%   0.317%
   17    5.2  0.5 -0.5   2.986%   1.951%   1.197%   0.025%   0.004%   0.050%   0.122%   0.214%   0.175%   0.000%
   18    6.2  0.5 -0.5   0.043%   0.041%   1.736%   3.159%   0.232%   0.095%   0.017%   0.003%   0.091%   0.092%
   19    7.2  0.5 -0.5   3.409%   8.001%   0.158%   0.096%   0.000%   0.001%   0.026%   0.219%   0.096%   0.100%
   20    8.2  0.5 -0.5   0.077%   0.186%   7.249%   4.138%   0.058%   0.138%   0.000%   0.002%   0.155%   0.158%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   5.520%  12.911%   0.188%   1.434%   1.846%   1.988%
   22   10.2  0.5 -0.5   0.004%   0.002%   0.001%   0.001%   0.727%   0.361%  16.543%   2.020%   2.571%   2.487%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.001%   0.002%   7.003%   3.002%   8.830%   1.021%   2.349%   2.189%
   24   12.2  0.5 -0.5   0.001%   0.001%   0.001%   0.000%   0.000%   0.001%   0.000%   0.001%  11.114%  11.515%
   25    1.2  1.5  1.5   0.255%   0.647%   0.055%   0.029%   0.001%   0.003%   0.005%   0.044%   0.020%   0.022%
   26    2.2  1.5  1.5   3.843%   1.631%   1.499%   2.577%   0.016%   0.007%   0.000%   0.000%   0.569%   0.548%
   27    3.2  1.5  1.5   6.628%   2.813%   0.011%   0.014%   0.009%   0.004%   0.006%   0.001%   0.587%   0.567%
   28    4.2  1.5  1.5   0.057%   1.170%   3.371%   1.384%   5.260%   7.213%   0.238%   0.767%   4.710%   6.876%
   29    5.2  1.5  1.5  13.344%   4.907%   0.674%   2.746%   7.186%   5.637%   0.875%   0.259%   2.621%   0.598%
   30    6.2  1.5  1.5   2.581%   1.122%   7.114%  11.757%   9.546%   3.557%   0.857%   0.093%   1.502%   1.443%
   31    7.2  1.5  1.5   0.403%   0.958%   1.888%   1.064%   2.284%   5.552%   0.591%   5.035%   1.760%   1.849%
   32    8.2  1.5  1.5   0.941%   2.225%   1.358%   0.781%   1.659%   4.001%   0.846%   6.953%   4.052%   4.195%
   33    9.2  1.5  1.5   0.002%   0.005%   0.002%   0.001%   0.021%   0.054%   0.108%   0.900%   0.120%   0.124%
   34    1.2  1.5  0.5   1.083%   0.450%   3.759%   6.489%   0.014%   0.005%   0.003%   0.000%   0.311%   0.301%
   35    2.2  1.5  0.5   0.015%   0.031%   2.221%   1.246%   0.002%   0.004%   0.004%   0.034%   0.003%   0.003%
   36    3.2  1.5  0.5   0.620%   1.481%   1.100%   0.690%   0.008%   0.021%   0.001%   0.009%   0.051%   0.053%
   37    4.2  1.5  0.5  15.122%   7.229%   0.386%   3.075%   0.641%   0.434%  10.150%   2.890%   0.150%   0.141%
   38    5.2  1.5  0.5   1.251%   0.060%   7.188%   2.802%   0.410%   0.507%   2.948%   9.721%   4.159%   4.315%
   39    6.2  1.5  0.5   0.748%   1.884%   5.609%   3.046%   0.306%   0.819%   1.221%  11.123%   4.132%   4.353%
   40    7.2  1.5  0.5   2.946%   1.237%   0.530%   0.977%   3.980%   1.662%   6.908%   0.824%   4.012%   3.812%
   41    8.2  1.5  0.5   1.584%   0.681%   1.645%   2.829%   5.512%   2.247%   5.021%   0.595%   1.833%   1.767%
   42    9.2  1.5  0.5   0.002%   0.001%   0.002%   0.004%   0.811%   0.334%   0.060%   0.008%   0.519%   0.502%
   43    1.2  1.5 -0.5   0.450%   1.083%   6.489%   3.759%   0.005%   0.014%   0.000%   0.003%   0.301%   0.311%
   44    2.2  1.5 -0.5   0.031%   0.015%   1.246%   2.221%   0.004%   0.002%   0.034%   0.004%   0.003%   0.003%
   45    3.2  1.5 -0.5   1.481%   0.620%   0.690%   1.100%   0.021%   0.008%   0.009%   0.001%   0.053%   0.051%
   46    4.2  1.5 -0.5   7.229%  15.122%   3.075%   0.386%   0.434%   0.641%   2.890%  10.150%   0.141%   0.150%
   47    5.2  1.5 -0.5   0.060%   1.251%   2.802%   7.188%   0.507%   0.410%   9.721%   2.948%   4.315%   4.159%
   48    6.2  1.5 -0.5   1.884%   0.748%   3.046%   5.609%   0.819%   0.306%  11.123%   1.221%   4.353%   4.132%
   49    7.2  1.5 -0.5   1.237%   2.946%   0.977%   0.530%   1.662%   3.980%   0.824%   6.908%   3.812%   4.012%
   50    8.2  1.5 -0.5   0.681%   1.584%   2.829%   1.645%   2.247%   5.512%   0.595%   5.021%   1.767%   1.833%
   51    9.2  1.5 -0.5   0.001%   0.002%   0.004%   0.002%   0.334%   0.811%   0.008%   0.060%   0.502%   0.519%
   52    1.2  1.5 -1.5   0.647%   0.255%   0.029%   0.055%   0.003%   0.001%   0.044%   0.005%   0.022%   0.020%
   53    2.2  1.5 -1.5   1.631%   3.843%   2.577%   1.499%   0.007%   0.016%   0.000%   0.000%   0.548%   0.569%
   54    3.2  1.5 -1.5   2.813%   6.628%   0.014%   0.011%   0.004%   0.009%   0.001%   0.006%   0.567%   0.587%
   55    4.2  1.5 -1.5   1.170%   0.057%   1.384%   3.371%   7.213%   5.260%   0.767%   0.238%   6.876%   4.710%
   56    5.2  1.5 -1.5   4.907%  13.344%   2.746%   0.674%   5.637%   7.186%   0.259%   0.875%   0.598%   2.621%
   57    6.2  1.5 -1.5   1.122%   2.581%  11.757%   7.114%   3.557%   9.546%   0.093%   0.857%   1.443%   1.502%
   58    7.2  1.5 -1.5   0.958%   0.403%   1.064%   1.888%   5.552%   2.284%   5.035%   0.591%   1.849%   1.760%
   59    8.2  1.5 -1.5   2.225%   0.941%   0.781%   1.358%   4.001%   1.659%   6.953%   0.846%   4.195%   4.052%
   60    9.2  1.5 -1.5   0.005%   0.002%   0.001%   0.002%   0.054%   0.021%   0.900%   0.108%   0.124%   0.120%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.2  0.5  0.5   0.000%   0.001%   0.000%   0.001%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.009%   0.006%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   4.815%   0.705%   8.211%   2.316%   0.000%   0.000%   7.290%   0.727%   1.984%   2.781%
    5    5.2  0.5  0.5   0.100%   2.940%   4.287%   8.962%   0.000%   0.000%   2.136%   8.586%   1.918%   0.144%
    6    6.2  0.5  0.5  10.419%   5.594%   0.180%   0.232%   0.000%   0.000%   0.263%   0.255%   7.705%   4.552%
    7    7.2  0.5  0.5   0.179%   0.347%  10.853%   5.412%   0.000%   0.000%   6.477%   6.292%   0.075%   0.109%
    8    8.2  0.5  0.5   5.644%  10.709%   0.299%   0.148%   0.000%   0.000%   0.089%   0.098%   4.757%   7.991%
    9    9.2  0.5  0.5   0.298%   0.566%   0.225%   0.106%   3.573%   5.373%   0.651%   0.654%   3.922%   6.583%
   10   10.2  0.5  0.5   0.022%   0.014%   0.052%   0.104%   5.420%   3.747%   5.527%   5.623%   0.232%   0.173%
   11   11.2  0.5  0.5   0.073%   0.041%   0.159%   0.330%   5.455%   3.602%   2.404%   2.575%   4.213%   2.488%
   12   12.2  0.5  0.5   0.109%   0.213%   0.271%   0.135%  14.229%  20.730%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.006%   0.009%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.705%   4.815%   2.316%   8.211%   0.000%   0.000%   0.727%   7.290%   2.781%   1.984%
   17    5.2  0.5 -0.5   2.940%   0.100%   8.962%   4.287%   0.000%   0.000%   8.586%   2.136%   0.144%   1.918%
   18    6.2  0.5 -0.5   5.594%  10.419%   0.232%   0.180%   0.000%   0.000%   0.255%   0.263%   4.552%   7.705%
   19    7.2  0.5 -0.5   0.347%   0.179%   5.412%  10.853%   0.000%   0.000%   6.292%   6.477%   0.109%   0.075%
   20    8.2  0.5 -0.5  10.709%   5.644%   0.148%   0.299%   0.000%   0.000%   0.098%   0.089%   7.991%   4.757%
   21    9.2  0.5 -0.5   0.566%   0.298%   0.106%   0.225%   5.373%   3.573%   0.654%   0.651%   6.583%   3.922%
   22   10.2  0.5 -0.5   0.014%   0.022%   0.104%   0.052%   3.747%   5.420%   5.623%   5.527%   0.173%   0.232%
   23   11.2  0.5 -0.5   0.041%   0.073%   0.330%   0.159%   3.602%   5.455%   2.575%   2.404%   2.488%   4.213%
   24   12.2  0.5 -0.5   0.213%   0.109%   0.135%   0.271%  20.730%  14.229%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.752%   0.371%   2.217%   4.456%   0.000%   0.001%   5.797%   6.035%   0.869%   0.581%
   26    2.2  1.5  1.5   0.631%   1.209%   0.175%   0.078%   0.550%   0.801%   0.251%   0.235%   1.506%   2.506%
   27    3.2  1.5  1.5   0.614%   1.241%   0.131%   0.071%   0.544%   0.793%   0.258%   0.247%   1.539%   2.465%
   28    4.2  1.5  1.5   0.047%   0.003%   0.023%   0.104%   4.275%   2.070%   0.190%   0.096%   1.867%   0.491%
   29    5.2  1.5  1.5   0.054%   0.144%   0.103%   0.023%   0.198%   1.472%   0.105%   0.208%   0.589%   1.876%
   30    6.2  1.5  1.5   0.070%   0.145%   0.050%   0.024%   0.631%   0.934%   0.150%   0.143%   0.870%   1.616%
   31    7.2  1.5  1.5   0.002%   0.001%   0.046%   0.093%   1.203%   0.814%   0.478%   0.507%   1.057%   0.635%
   32    8.2  1.5  1.5   0.033%   0.017%   0.011%   0.022%   2.675%   1.837%   0.843%   0.854%   0.589%   0.352%
   33    9.2  1.5  1.5   4.233%   2.178%  12.484%  25.033%   0.000%   0.000%   6.391%   6.608%   0.967%   0.616%
   34    1.2  1.5  0.5   0.332%   0.554%   0.152%   0.082%   0.761%   1.096%   0.066%   0.081%   0.456%   0.860%
   35    2.2  1.5  0.5   0.887%   0.464%   1.682%   3.361%   0.275%   0.196%   3.821%   3.871%   1.618%   0.949%
   36    3.2  1.5  0.5   3.815%   2.002%   0.176%   0.354%   0.266%   0.184%   0.682%   0.732%   5.513%   3.330%
   37    4.2  1.5  0.5   0.009%   0.002%   0.072%   0.030%   0.106%   0.060%   0.894%   1.611%   0.065%   0.228%
   38    5.2  1.5  0.5   0.086%   0.051%   0.000%   0.016%   2.831%   1.962%   1.610%   0.831%   0.218%   0.071%
   39    6.2  1.5  0.5   0.030%   0.014%   0.129%   0.260%   2.892%   1.951%   1.194%   1.308%   0.194%   0.107%
   40    7.2  1.5  0.5   0.063%   0.122%   0.189%   0.092%   1.788%   2.645%   0.873%   0.850%   0.362%   0.612%
   41    8.2  1.5  0.5   0.046%   0.089%   0.009%   0.005%   0.819%   1.195%   0.490%   0.466%   0.647%   1.048%
   42    9.2  1.5  0.5  12.542%  24.359%   3.982%   1.983%   0.000%   0.000%   0.777%   0.800%   4.950%   8.152%
   43    1.2  1.5 -0.5   0.554%   0.332%   0.082%   0.152%   1.096%   0.761%   0.081%   0.066%   0.860%   0.456%
   44    2.2  1.5 -0.5   0.464%   0.887%   3.361%   1.682%   0.196%   0.275%   3.871%   3.821%   0.949%   1.618%
   45    3.2  1.5 -0.5   2.002%   3.815%   0.354%   0.176%   0.184%   0.266%   0.732%   0.682%   3.330%   5.513%
   46    4.2  1.5 -0.5   0.002%   0.009%   0.030%   0.072%   0.060%   0.106%   1.611%   0.894%   0.228%   0.065%
   47    5.2  1.5 -0.5   0.051%   0.086%   0.016%   0.000%   1.962%   2.831%   0.831%   1.610%   0.071%   0.218%
   48    6.2  1.5 -0.5   0.014%   0.030%   0.260%   0.129%   1.951%   2.892%   1.308%   1.194%   0.107%   0.194%
   49    7.2  1.5 -0.5   0.122%   0.063%   0.092%   0.189%   2.645%   1.788%   0.850%   0.873%   0.612%   0.362%
   50    8.2  1.5 -0.5   0.089%   0.046%   0.005%   0.009%   1.195%   0.819%   0.466%   0.490%   1.048%   0.647%
   51    9.2  1.5 -0.5  24.359%  12.542%   1.983%   3.982%   0.000%   0.000%   0.800%   0.777%   8.152%   4.950%
   52    1.2  1.5 -1.5   0.371%   0.752%   4.456%   2.217%   0.001%   0.000%   6.035%   5.797%   0.581%   0.869%
   53    2.2  1.5 -1.5   1.209%   0.631%   0.078%   0.175%   0.801%   0.550%   0.235%   0.251%   2.506%   1.506%
   54    3.2  1.5 -1.5   1.241%   0.614%   0.071%   0.131%   0.793%   0.544%   0.247%   0.258%   2.465%   1.539%
   55    4.2  1.5 -1.5   0.003%   0.047%   0.104%   0.023%   2.070%   4.275%   0.096%   0.190%   0.491%   1.867%
   56    5.2  1.5 -1.5   0.144%   0.054%   0.023%   0.103%   1.472%   0.198%   0.208%   0.105%   1.876%   0.589%
   57    6.2  1.5 -1.5   0.145%   0.070%   0.024%   0.050%   0.934%   0.631%   0.143%   0.150%   1.616%   0.870%
   58    7.2  1.5 -1.5   0.001%   0.002%   0.093%   0.046%   0.814%   1.203%   0.507%   0.478%   0.635%   1.057%
   59    8.2  1.5 -1.5   0.017%   0.033%   0.022%   0.011%   1.837%   2.675%   0.854%   0.843%   0.352%   0.589%
   60    9.2  1.5 -1.5   2.178%   4.233%  25.033%  12.484%   0.000%   0.000%   6.608%   6.391%   0.616%   0.967%


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

              2       7    10039.57       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    435610.40 376026.04  18009.79  41546.85     11.96      2.45     12.94
 REAL TIME  *    440364.67 SEC
 DISK USED  *         9.90 GB (local),       80.72 GB (total)
 SF USED    *        61.89 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -295.435874652518

              CI              CI           MULTI         RHF-SCF
   -295.35778287   -295.35794802   -294.35951158   -294.74686365
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
