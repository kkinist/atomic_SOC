
 Working directory              : /wrk/irikura/molpro.aadcBu8R6t/
 Global scratch directory       : /wrk/irikura/molpro.aadcBu8R6t/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.aadcBu8R6t/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,At SO-CI
                                                                                 ! active space (7/7)
                                                                                 ! additional diffuse spdf functions
 memory,2000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={At};
 
 basis={
 ecp,at,ECP60MDF;
 spdfghi,at,aug-cc-pwCV5Z-PP;C; spdf,1,even,nprim=1,ratio=3.0;
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
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   At SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 27-Jan-25          TIME: 10:08:41  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  32000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry At   ECP ECP60MDF                 selected for group  1
 Library entry AT     S AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered At S diffuse               selected for group 1    nprim= 1    centre=  0.009    ratio= 3.000    dratio= 1.000
 Library entry AT     P AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered At P diffuse               selected for group 1    nprim= 1    centre=  0.007    ratio= 3.000    dratio= 1.000
 Library entry AT     D AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered At D diffuse               selected for group 1    nprim= 1    centre=  0.017    ratio= 3.000    dratio= 1.000
 Library entry AT     F AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered At F diffuse               selected for group 1    nprim= 1    centre=  0.033    ratio= 3.000    dratio= 1.000
 Library entry AT     G AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry AT     H AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry AT     I AUG-CC-PWCV5Z-PP     selected for orbital group  1


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

   1  AT     25.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   25
 NUMBER OF PRIMITIVE AOS:         479
 NUMBER OF SYMMETRY AOS:          343
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

         1 0.745E-05 0.258E-04 0.258E-04 0.258E-04 0.258E-04 0.258E-04 0.311E-04 0.199E-03
         2 0.156E-05 0.156E-05 0.156E-05 0.212E-03 0.212E-03 0.212E-03 0.162E-02 0.162E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     706.216 MB (compressed) written to integral file ( 13.6%)

     Node minimum: 30.409 MB, node maximum: 64.750 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   24679576.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15976936      RECORD LENGTH: 524288

 Memory used in sort:      16.53 MW

 SORT1 READ   646821870. AND WROTE     4259432. INTEGRALS IN     14 RECORDS. CPU TIME:     3.11 SEC, REAL TIME:     3.24 SEC
 SORT2 READ    68066133. AND WROTE   395255076. INTEGRALS IN   3072 RECORDS. CPU TIME:     0.50 SEC, REAL TIME:     0.55 SEC

 Node minimum:    24675847.  Node maximum:    24720811. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        10.13      9.77
 REAL TIME  *        11.86 SEC
 DISK USED  *        31.11 MB (local),        1.89 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -261.41335624    -261.41335624     0.00D+00     0.47D-01     0     0       0.12      0.25    start
   2     -261.43614492      -0.02278868     0.27D-02     0.24D-02     1     0       0.13      0.38    diag
   3     -261.43851524      -0.00237032     0.15D-02     0.64D-03     2     0       0.12      0.50    diag
   4     -261.43904418      -0.00052894     0.29D-03     0.39D-03     3     0       0.13      0.63    diag
   5     -261.43914754      -0.00010336     0.11D-03     0.22D-03     4     0       0.13      0.76    diag
   6     -261.43915801      -0.00001048     0.27D-04     0.78D-04     5     0       0.12      0.88    diag
   7     -261.43915859      -0.00000057     0.56D-05     0.27D-04     6     0       0.13      1.01    diag
   8     -261.43915862      -0.00000003     0.12D-05     0.62D-05     7     0       0.13      1.14    fixocc
   9     -261.43915862      -0.00000000     0.25D-06     0.15D-05     8     0       0.13      1.27    diag
  10     -261.43915862      -0.00000000     0.61D-07     0.25D-06     0     0       0.13      1.40    diag/orth

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -261.439158617971
  RHF One-electron energy            -461.393639140235
  RHF Two-electron energy             199.954480522264
  RHF Kinetic energy                   82.729366050460
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.160173600974

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.53203     1  1  s    1.00010
    2.1     2.00000    -1.54347     1  1  d0   0.99798
    3.1     2.00000    -1.54347     1  1  d2-  0.75388    1  1  d1- -0.65510
    4.1     2.00000    -1.54347     1  1  d2-  0.65527    1  1  d1-  0.75430
    5.1     2.00000    -1.54347     1  1  d2+  0.99767
    6.1     2.00000    -1.54347     1  1  d1+  0.99869
    7.1     2.00000    -0.67783     1  1  s   -0.44780    1  4  s    0.26077    1  5  s    0.60824    1  6  s    0.41281
                                    1 11  s   -0.25265
    1.2     2.00000    -4.82203     1  1  px   1.00062
    2.2     2.00000    -4.82203     1  1  py   1.00061
    3.2     2.00000    -4.82203     1  1  pz   1.00061
    4.2     2.00000    -0.11634     1  1  pz  -0.28718    1  4  pz   0.27773    1  5  pz   0.41990    1  6  pz   0.34151
    5.2     2.00000    -0.11634     1  1  px  -0.28718    1  4  px   0.27773    1  5  px   0.41990    1  6  px   0.34151
    6.2     2.00000    -0.11634     1  1  py  -0.28718    1  4  py   0.27773    1  5  py   0.41990    1  6  py   0.34151


 HOMO      6.2    -0.116338 =      -3.1657eV
 LUMO      7.2     0.083876 =       2.2824eV
 LUMO-HOMO         0.200214 =       5.4481eV

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
 CPU TIMES  *        11.54      1.41      9.77
 REAL TIME  *        13.43 SEC
 DISK USED  *        34.43 MB (local),        1.94 GB (total)
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.484D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.481D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.470D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.794D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.551D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 6 5 4 1 1 3 5   4 6 2 1 2 3 5 4 6 1   2 5 3 6 4 812 7 911  13101514 1 5 3 4 6 2
                                       12 8 711 910131415 5   3 4 6 2 1 7 81211 9  13101514 5 3 4 6 2 1   812 711 913101415 5
                                        3 4 6 2182024192623  22162728172125 8 712  11 915141310 1 2 5 4   3 61514 812 711 913
                                       10 1 2 4 5 3 6 2 4 5   6 3 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.469D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.216D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.175D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.149D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.149D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.574D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.574D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 1   2 3 6 7 9 4 5 810 1   2 3 610 8 4 5 9 7 1   2 3 610 8 5 4 9 7 6
                                        5 410 8 9 7 1 2 319  16141112182015172113   6 5 410 8 9 7141620  1812111921131517 2 1
                                        3 6 810 5 4 9 71614  121121131820151719 8  10 6 5 4 7 9 2 1 310   8 6 7 9 5 416142113
                                       15171920181211 3 2 1  10 8 6 5 4 9 7 2 3 1   2 3 1 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762   0.04762   0.04762   0.04762
 Weight factors for state symmetry  2:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762
 
 Number of orbital rotations:  2153  ( 24 closed/active, 1179 closed/virtual, 0 active/active, 950 active/virtual )
 Total number of variables:    10973
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   34    0   -261.01823166    -261.15089224   -0.13266058    0.38010613 0.00092325 0.00102254  0.12E+01      4.11
   2    8   24    0   -261.12432525    -261.13393190   -0.00960665    0.21908072 0.00006424 0.00008710  0.52E+00      8.14
   3    7   20    0   -261.13396399    -261.13396470   -0.00000071    0.00195616 0.00000010 0.00000029  0.21E-02     11.47
   4   21   45    0   -261.13396470    -261.13396470    0.00000000    0.00000026 0.00000009 0.00000000  0.54E-06     16.16

 CONVERGENCE REACHED!  Final gradient:    0.00000009 ( 0.87E-07)
                       Final energy:   -261.13396470
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -261.341799752129
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22096988
 One electron energy                          -455.87821465
 Two electron energy                           194.53641489
 Virial ratio                                    4.14033591
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -261.341799750647
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22096988
 One electron energy                          -455.87821467
 Two electron energy                           194.53641492
 Virial ratio                                    4.14033590
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -261.341799748431
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22096989
 One electron energy                          -455.87821471
 Two electron energy                           194.53641497
 Virial ratio                                    4.14033590
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -261.099185922995
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39619030
 One electron energy                          -449.26691793
 Two electron energy                           188.16773201
 Virial ratio                                    4.16882595
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -261.099185922927
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39619030
 One electron energy                          -449.26691793
 Two electron energy                           188.16773201
 Virial ratio                                    4.16882595
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -261.099185922641
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39619030
 One electron energy                          -449.26691794
 Two electron energy                           188.16773202
 Virial ratio                                    4.16882595
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -261.099185922265
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39619030
 One electron energy                          -449.26691795
 Two electron energy                           188.16773203
 Virial ratio                                    4.16882595
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -261.099185922229
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39619030
 One electron energy                          -449.26691795
 Two electron energy                           188.16773203
 Virial ratio                                    4.16882595
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -261.093875347222
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39405646
 One electron energy                          -449.26019579
 Two electron energy                           188.16632044
 Virial ratio                                    4.16884356
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -261.093846164492
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46840276
 One electron energy                          -449.57307790
 Two electron energy                           188.47923173
 Virial ratio                                    4.16598646
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -261.093846164317
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46840276
 One electron energy                          -449.57307790
 Two electron energy                           188.47923174
 Virial ratio                                    4.16598646
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -261.093846164144
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46840275
 One electron energy                          -449.57307791
 Two electron energy                           188.47923174
 Virial ratio                                    4.16598646
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -261.105799604565
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38143787
 One electron energy                          -449.21592537
 Two electron energy                           188.11012576
 Virial ratio                                    4.16947369
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -261.105799604137
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38143787
 One electron energy                          -449.21592537
 Two electron energy                           188.11012577
 Virial ratio                                    4.16947369
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -261.105799603531
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38143787
 One electron energy                          -449.21592538
 Two electron energy                           188.11012578
 Virial ratio                                    4.16947369
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -261.101000251138
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38680167
 One electron energy                          -449.23500587
 Two electron energy                           188.13400561
 Virial ratio                                    4.16920908
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -261.101000251051
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38680167
 One electron energy                          -449.23500587
 Two electron energy                           188.13400562
 Virial ratio                                    4.16920908
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -261.101000250699
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38680166
 One electron energy                          -449.23500587
 Two electron energy                           188.13400562
 Virial ratio                                    4.16920908
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -261.101000250216
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38680166
 One electron energy                          -449.23500588
 Two electron energy                           188.13400563
 Virial ratio                                    4.16920908
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -261.101000250170
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38680166
 One electron energy                          -449.23500588
 Two electron energy                           188.13400563
 Virial ratio                                    4.16920908
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -261.094115931892
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39184669
 One electron energy                          -449.25160073
 Two electron energy                           188.15748480
 Virial ratio                                    4.16893147
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999999966
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.000000000036
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     2.155194534132
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.000000006643
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     3.999999999723
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     1.000000007127
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.844805452305
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>     0.000000000007
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     0.999999999956
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     0.000000000088
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>     0.999999999959
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999999994
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.000000000011
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999999994
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     2.181453961345
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000000000055
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.999999999968
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     0.999999999973
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     1.818544564376
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.000000000007
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999999999
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.000000000002
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     0.195574431053
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.999999994950
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000009
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     3.999999998295
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     3.804425575623
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>     0.000000000007
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     0.999999999782
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     0.999999999959
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>     0.000000000261
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999999995
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.999999999995
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.000000000011
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     0.184365530518
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     0.999999999996
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     0.999999999995
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     3.999999999938
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     3.815635090261
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.000000000007
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000000000036
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999999966
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999999999
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.649231034773
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.999999998366
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000000226
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999999994535
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.350768972029
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>     0.000000000007
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     0.000000000264
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     0.999999999956
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>     0.999999999782
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000011
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999999995
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999999994
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.634180508094
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.999999999907
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     0.999999999995
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000000000047
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.365820345321
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.000000000007
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000001
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000001
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000001
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     5.999999999958
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     5.999999999958
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     5.999999999958
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     5.999999999958
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     5.999999999958
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>     0.000000000021
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     2.000000000002
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     2.000000000002
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>     2.000000000002
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     5.999999999958
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     5.999999999958
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     5.999999999958
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     5.999999999958
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     5.999999999958
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>     0.000000000021
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 2 3 5 4 1 1 6 2   4 3 5 1 6 3 5 2 4 1   6 2 5 3 411 712 8 9  14151310 1 2 6 4 5 3
                                       11 712 814151013 9 6   5 3 2 4 11113101415   812 7 9 6 5 3 2 4 1  1113101415 812 7 9 6
                                        5 3 2 4221627201824  19262317212528111310  1415 812 7 9 1 6 5 3   2 411 7 812 9141513
                                       10 1 4 6 2 5 3 2 6 4   5 3 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 1 2 3 3   1 2 5 6 4 810 9 7 3   2 1 5 6 810 4 9 7 3   2 1 5 610 8 9 7 4 5
                                        610 8 9 7 4 2 3 112  19211314161517112018   5 610 8 4 9 7122018  1517161421131911 2 3
                                        1 5 810 9 7 6 42018  121517141621131911 5   810 7 9 6 4 2 3 1 5   810 6 7 9 412192113
                                       11141615172018 2 3 1   6 4 5 810 7 9 3 1 2   2 1 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.98593     1  1  s    0.99541
    2.1     2.00000    -1.99705     1  1  d1-  1.00149
    3.1     2.00000    -1.99705     1  1  d0   1.00149
    4.1     2.00000    -1.99705     1  1  d2-  1.00149
    5.1     2.00000    -1.99705     1  1  d2+  1.00149
    6.1     2.00000    -1.99705     1  1  d1+  1.00149
    7.1     1.99986    -1.08432     1  1  s   -0.47860    1  4  s    0.26914    1  5  s    0.70824    1  6  s    0.39811
                                    1 11  s   -0.27018
    1.2     2.00000    -5.27631     1  1  py   1.00016
    2.2     2.00000    -5.27631     1  1  px   1.00016
    3.2     2.00000    -5.27631     1  1  pz   1.00016
    4.2     1.38041    -0.41909     1  1  px  -0.32724    1  4  px   0.33239    1  5  px   0.54211    1  6  px   0.30166
    5.2     1.38041    -0.41909     1  1  py  -0.32724    1  4  py   0.33239    1  5  py   0.54211    1  6  py   0.30166
    6.2     1.38041    -0.41909     1  1  pz  -0.32724    1  4  pz   0.33239    1  5  pz   0.54211    1  6  pz   0.30166
    7.2     0.28630     0.00826     1 12  px   0.78633    1 13  px   0.36541
    8.2     0.28630     0.00826     1 12  py   0.78633    1 13  py   0.36541
    9.2     0.28630     0.00826     1 12  pz   0.78633    1 13  pz   0.36541
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 22a000       0.98897590     -0.00000579      0.00000084     -0.00000000     -0.00000002     -0.00000000     -0.00000000
 2 a22000       0.00000579      0.98897590      0.00000041     -0.00000000      0.00000000     -0.00000003     -0.00000000
 2 2a2000      -0.00000084     -0.00000041      0.98897590      0.00000000      0.00000000     -0.00000000     -0.00000001
 2 a2a0b0       0.00000000      0.00000000      0.00000000      0.64989661     -0.00005549     -0.00000473     -0.00001362
 2 aa200b       0.00000000     -0.00000000     -0.00000000      0.19733776     -0.00001327      0.00000029     -0.00005812
 2 a2a00b       0.00000044      0.07599986      0.00000003      0.00000458     -0.00000139      0.57711244      0.00000032
 2 a2ab00      -0.07599986      0.00000044     -0.00000006     -0.00005007     -0.57711238     -0.00000139     -0.00000023
 2 2aa00b      -0.00000006     -0.00000003      0.07599986      0.00000016     -0.00000023     -0.00000032      0.57711235
 2 aa2b00       0.00000006      0.00000003     -0.07599986      0.00000016     -0.00000023     -0.00000032      0.57711224
 2 2aa0b0      -0.07599986      0.00000044     -0.00000006      0.00005007      0.57711221      0.00000139      0.00000023
 2 aa20b0       0.00000044      0.07599987      0.00000003     -0.00000458      0.00000139     -0.57711216     -0.00000032
 2 2aab00      -0.00000000     -0.00000000     -0.00000000      0.45255874     -0.00004222     -0.00000502      0.00004449
 2 ba20a0      -0.00000008     -0.01340657     -0.00000001      0.00000232     -0.00000070      0.29164062      0.00000016
 2 2ab0a0       0.01340657     -0.00000008      0.00000001     -0.00002530     -0.29164066     -0.00000070     -0.00000011
 2 ab2a00      -0.00000001     -0.00000001      0.01340657     -0.00000008      0.00000011      0.00000016     -0.29164067
 2 2ba00a       0.00000001      0.00000001     -0.01340657     -0.00000008      0.00000011      0.00000016     -0.29164074
 2 a2ba00       0.01340657     -0.00000008      0.00000001      0.00002530      0.29164076      0.00000070      0.00000011
 2 b2a00a      -0.00000008     -0.01340657     -0.00000001     -0.00000232      0.00000070     -0.29164080     -0.00000016
 2 a2b0a0      -0.00000000     -0.00000000     -0.00000000     -0.32631241      0.00002790      0.00000240      0.00000626
 2 b2a0a0      -0.00000000     -0.00000000     -0.00000000     -0.32358419      0.00002759      0.00000234      0.00000736
 2 ab200a      -0.00000000      0.00000000      0.00000000     -0.09277646      0.00000611     -0.00000020      0.00002922
 2 ba200a       0.00000000      0.00000000      0.00000000     -0.10456130      0.00000716     -0.00000009      0.00002889
 2 a2b00a      -0.00000037     -0.06259329     -0.00000003     -0.00000227      0.00000069     -0.28547164     -0.00000016
 2 b2aa00       0.06259329     -0.00000037      0.00000005      0.00002477      0.28547162      0.00000069      0.00000011
 2 2ab00a       0.00000005      0.00000003     -0.06259329     -0.00000008      0.00000011      0.00000016     -0.28547161
 2 ba2a00      -0.00000005     -0.00000003      0.06259329     -0.00000008      0.00000011      0.00000016     -0.28547157
 2 2ba0a0       0.06259329     -0.00000037      0.00000005     -0.00002477     -0.28547156     -0.00000069     -0.00000011
 2 ab20a0      -0.00000037     -0.06259329     -0.00000003      0.00000227     -0.00000069      0.28547154      0.00000016
 2 2baa00       0.00000000     -0.00000000      0.00000000     -0.22175106      0.00002074      0.00000249     -0.00002263
 2 2aba00       0.00000000      0.00000000      0.00000000     -0.23080768      0.00002148      0.00000253     -0.00002186
 2 2020a0      -0.00000004     -0.00000002      0.04266363      0.00000000      0.00000000      0.00000000     -0.00000001
 2 022a00       0.00000025      0.04266363      0.00000002     -0.00000000      0.00000000     -0.00000003     -0.00000000
 2 22000a       0.04266363     -0.00000025      0.00000004     -0.00000000     -0.00000002     -0.00000000     -0.00000000
 
 Energy:     -261.34179975   -261.34179975   -261.34179975   -261.09918592   -261.09918592   -261.09918592   -261.09918592

 State:              8               9              10              11              12
 2 22a000       0.00000000     -0.00000000      0.11433271      0.00000073     -0.00000167
 2 a22000       0.00000000      0.00000000      0.00000073     -0.11433271      0.00000070
 2 2a2000      -0.00000000     -0.00000000     -0.00000167     -0.00000070     -0.11433271
 2 a2a0b0       0.14735192     -0.47128569     -0.00000000     -0.00000000      0.00000000
 2 aa200b       0.63650286      0.47128580      0.00000000      0.00000000     -0.00000000
 2 a2a00b      -0.00000168     -0.00000000     -0.00000356      0.55886053     -0.00000342
 2 a2ab00       0.00000349     -0.00000000      0.55886059      0.00000356     -0.00000818
 2 2aa00b       0.00005264      0.00000000      0.00000818      0.00000342      0.55886062
 2 aa2b00       0.00005264     -0.00000000     -0.00000818     -0.00000342     -0.55886074
 2 2aa0b0      -0.00000349     -0.00000000      0.55886076      0.00000356     -0.00000818
 2 aa20b0       0.00000168     -0.00000000     -0.00000356      0.55886082     -0.00000342
 2 2aab00      -0.48915102      0.47128575      0.00000000      0.00000000     -0.00000000
 2 ba20a0      -0.00000085      0.00000000      0.00000232     -0.36380339      0.00000223
 2 2ab0a0       0.00000177      0.00000000     -0.36380336     -0.00000232      0.00000532
 2 ab2a00      -0.00002660      0.00000000      0.00000532      0.00000223      0.36380334
 2 2ba00a      -0.00002660     -0.00000000     -0.00000532     -0.00000223     -0.36380328
 2 a2ba00      -0.00000177      0.00000000     -0.36380327     -0.00000232      0.00000532
 2 b2a00a       0.00000085      0.00000000      0.00000232     -0.36380324      0.00000223
 2 a2b0a0      -0.06765955      0.23564284      0.00000000      0.00000000     -0.00000000
 2 b2a0a0      -0.07969238      0.23564284      0.00000000      0.00000000     -0.00000000
 2 ab200a      -0.32007828     -0.23564290     -0.00000000     -0.00000000      0.00000000
 2 ba200a      -0.31642458     -0.23564290     -0.00000000     -0.00000000      0.00000000
 2 a2b00a       0.00000083      0.00000000      0.00000124     -0.19505729      0.00000119
 2 b2aa00      -0.00000173      0.00000000     -0.19505732     -0.00000124      0.00000285
 2 2ab00a      -0.00002604     -0.00000000     -0.00000285     -0.00000119     -0.19505734
 2 ba2a00      -0.00002604      0.00000000      0.00000285      0.00000119      0.19505739
 2 2ba0a0       0.00000173      0.00000000     -0.19505740     -0.00000124      0.00000285
 2 ab20a0      -0.00000083      0.00000000      0.00000124     -0.19505743      0.00000119
 2 2baa00       0.24876507     -0.23564288     -0.00000000     -0.00000000      0.00000000
 2 2aba00       0.24038595     -0.23564288     -0.00000000     -0.00000000      0.00000000
 2 2020a0      -0.00000000     -0.00000000     -0.00000200     -0.00000084     -0.13656800
 2 022a00       0.00000000      0.00000000      0.00000087     -0.13656799      0.00000084
 2 22000a       0.00000000     -0.00000000      0.13656799      0.00000087     -0.00000200
 
 Energy:     -261.09918592   -261.09387535   -261.09384616   -261.09384616   -261.09384616
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a2a0a0      -0.00000000      0.00000000     -0.00000000      0.79733110     -0.00000014     -0.00000002     -0.00000085
 2 aa200a       0.00000000     -0.00000000     -0.00000000      0.24688156     -0.00000006     -0.00000001     -0.00000338
 2 a2a00a       0.00000028      0.70700109      0.00000000     -0.00000002      0.00000317     -0.70699420     -0.00000000
 2 a2aa00       0.70700103     -0.00000028      0.00000005      0.00000012      0.70699425      0.00000317     -0.00000047
 2 2aa00a       0.00000005     -0.00000000     -0.70700101      0.00000009      0.00000047      0.00000000      0.70699427
 2 aa2a00      -0.00000005      0.00000000      0.70700090      0.00000009      0.00000047      0.00000000      0.70699438
 2 2aa0a0       0.70700088     -0.00000028      0.00000005     -0.00000012     -0.70699440     -0.00000317      0.00000047
 2 aa20a0       0.00000028      0.70700083     -0.00000000      0.00000002     -0.00000317      0.70699446      0.00000000
 2 2aaa00       0.00000000     -0.00000000     -0.00000000      0.55044942     -0.00000007     -0.00000001      0.00000253
 
 Energy:     -261.10579960   -261.10579960   -261.10579960   -261.10100025   -261.10100025   -261.10100025   -261.10100025

 State:              8               9
 2 a2a0a0       0.17526502     -0.57716905
 2 aa200a       0.77814142      0.57716917
 2 a2a00a      -0.00000000      0.00000000
 2 a2aa00       0.00000002     -0.00000000
 2 2aa00a       0.00000304     -0.00000000
 2 aa2a00       0.00000304     -0.00000000
 2 2aa0a0      -0.00000002     -0.00000000
 2 aa20a0       0.00000000      0.00000000
 2 2aaa00      -0.60287649      0.57716912
 
 Energy:     -261.10100025   -261.09411593
 


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
 CPU TIMES  *        24.75     13.20      1.41      9.77
 REAL TIME  *        31.65 SEC
 DISK USED  *        96.98 MB (local),        2.92 GB (total)
 SF USED    *       167.15 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -261.3417998   2.0
    -261.3417998   2.0
    -261.3417997   2.0
    -261.0991859   6.0
    -261.0991859   6.0
    -261.0991859   6.0
    -261.0991859   6.0
    -261.0991859   6.0
    -261.0938753   0.0
    -261.0938462   2.0
    -261.0938462   2.0
    -261.0938462   2.0
    -261.1057996   2.0
    -261.1057996   2.0
    -261.1057996   2.0
    -261.1010003   6.0
    -261.1010003   6.0
    -261.1010003   6.0
    -261.1010003   6.0
    -261.1010003   6.0
    -261.0941159   0.0
                                                  


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
     1      -261.34179975
     2      -261.34179975
     3      -261.34179975
     4      -261.09918592
     5      -261.09918592
     6      -261.09918592
     7      -261.09918592
     8      -261.09918592
     9      -261.09387535
    10      -261.09384616
    11      -261.09384616
    12      -261.09384616

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1007D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1174D-06

 Number of blocks in overlap matrix:  1216   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2959
 Number of N-1 electron functions:  132244

 Number of internal configurations:                29358
 Number of singly external configurations:      17524724
 Number of doubly external configurations:      51960215
 Total number of contracted configurations:     69514297
 Total number of uncontracted configurations: 2410902056

 Diagonal Coupling coefficients finished.               Storage:  34336546 words, CPU-Time:    184.71 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4558846 words, CPU-time:      9.87 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -261.34179975     0.00000000    -1.10839245  0.46D-01  0.12D+00   208.84
    1     2     2     1.00000000     0.00000000  -261.34179975     0.00000000    -1.10852744  0.46D-01  0.12D+00   208.84
    1     3     3     1.00000000     0.00000000  -261.34179975    -0.00000000    -1.10832750  0.46D-01  0.12D+00   208.84
    1     4     4     1.00000000     0.00000000  -261.09918592     0.00000000    -1.06908428  0.31D-01  0.12D+00   208.84
    1     5     5     1.00000000     0.00000000  -261.09918592    -0.00000000    -1.06648530  0.31D-01  0.12D+00   208.84
    1     6     6     1.00000000     0.00000000  -261.09918592     0.00000000    -1.06667687  0.31D-01  0.12D+00   208.84
    1     7     7     1.00000000     0.00000000  -261.09918592    -0.00000000    -1.06652217  0.31D-01  0.12D+00   208.84
    1     8     8     1.00000000     0.00000000  -261.09918592     0.00000000    -1.06904871  0.31D-01  0.12D+00   208.84
    1     9     9     1.00000000     0.00000000  -261.09387535     0.00000000    -1.07007684  0.32D-01  0.12D+00   208.84
    1    10    10     1.00000000     0.00000000  -261.09384616     0.00000000    -1.07590937  0.38D-01  0.12D+00   208.84
    1    11    11     1.00000000     0.00000000  -261.09384616    -0.00000000    -1.07589326  0.38D-01  0.12D+00   208.84
    1    12    12     1.00000000     0.00000000  -261.09384616     0.00000000    -1.07595728  0.38D-01  0.12D+00   208.84
    2     1     1     1.11073560    -0.89400036  -262.23580011    -0.89400036    -0.03226623  0.63D-02  0.21D-02  3692.87
    2     2     2     1.11071205    -0.89393504  -262.23573480    -0.89393504    -0.03231211  0.63D-02  0.21D-02  3692.87
    2     3     3     1.11070874    -0.89388135  -262.23568109    -0.89388135    -0.03236408  0.63D-02  0.21D-02  3692.87
    2     4     4     1.10050839    -0.87363979  -261.97282571    -0.87363979    -0.02433283  0.23D-02  0.20D-02  3692.87
    2     5     5     1.10052491    -0.87360512  -261.97279105    -0.87360512    -0.02437249  0.23D-02  0.20D-02  3692.87
    2     6     6     1.10058223    -0.87358621  -261.97277213    -0.87358621    -0.02440449  0.24D-02  0.20D-02  3692.87
    2     7     7     1.10092480    -0.87310117  -261.97228709    -0.87310117    -0.02495378  0.23D-02  0.22D-02  3692.87
    2     8     8     1.10093748    -0.87303718  -261.97222310    -0.87303718    -0.02502494  0.23D-02  0.22D-02  3692.87
    2     9     9     1.10151677    -0.87343805  -261.96731340    -0.87343805    -0.02515440  0.23D-02  0.22D-02  3692.87
    2    10    10     1.10426586    -0.87298363  -261.96682979    -0.87298363    -0.02712050  0.38D-02  0.21D-02  3692.87
    2    11    11     1.10428890    -0.87295688  -261.96680305    -0.87295688    -0.02714892  0.38D-02  0.21D-02  3692.87
    2    12    12     1.10427631    -0.87293696  -261.96678312    -0.87293696    -0.02716350  0.39D-02  0.21D-02  3692.87
    3     1     1     1.09708338    -0.92560282  -262.26740258    -0.03160247    -0.00091905  0.88D-04  0.12D-03  7179.96
    3     2     2     1.09705519    -0.92558819  -262.26738795    -0.03165315    -0.00092813  0.88D-04  0.13D-03  7179.96
    3     3     3     1.09704091    -0.92558143  -262.26738117    -0.03170008    -0.00093141  0.88D-04  0.13D-03  7179.96
    3     4     4     1.09125778    -0.89668664  -261.99587257    -0.02304685    -0.00044727  0.35D-04  0.64D-04  7179.96
    3     5     5     1.09124480    -0.89668560  -261.99587153    -0.02308048    -0.00044696  0.34D-04  0.64D-04  7179.96
    3     6     6     1.09124267    -0.89668311  -261.99586903    -0.02309690    -0.00044904  0.35D-04  0.65D-04  7179.96
    3     7     7     1.09126919    -0.89667867  -261.99586459    -0.02357750    -0.00045271  0.33D-04  0.66D-04  7179.96
    3     8     8     1.09125680    -0.89667180  -261.99585773    -0.02363463    -0.00045720  0.34D-04  0.67D-04  7179.96
    3     9     9     1.09202377    -0.89857968  -261.99245503    -0.02514163    -0.00051636  0.54D-04  0.69D-04  7179.96
    3    10    10     1.09202379    -0.89860647  -261.99245263    -0.02562284    -0.00051794  0.54D-04  0.70D-04  7179.96
    3    11    11     1.09201356    -0.89860339  -261.99244956    -0.02564651    -0.00051991  0.54D-04  0.70D-04  7179.96
    3    12    12     1.09157747    -0.89729107  -261.99113724    -0.02435412    -0.00047487  0.37D-04  0.70D-04  7179.96
    4     1     1     1.09797693    -0.92668100  -262.26848075    -0.00107817    -0.00008256  0.44D-05  0.12D-04 10660.74
    4     2     2     1.09796353    -0.92667861  -262.26847836    -0.00109042    -0.00008428  0.45D-05  0.12D-04 10660.74
    4     3     3     1.09795766    -0.92667744  -262.26847719    -0.00109602    -0.00008502  0.46D-05  0.12D-04 10660.74
    4     4     4     1.09162990    -0.89722209  -261.99640801    -0.00053544    -0.00004639  0.20D-05  0.78D-05 10660.74
    4     5     5     1.09163161    -0.89722184  -261.99640776    -0.00053623    -0.00004605  0.20D-05  0.78D-05 10660.74
    4     6     6     1.09162925    -0.89722153  -261.99640745    -0.00053842    -0.00004632  0.20D-05  0.78D-05 10660.74
    4     7     7     1.09162729    -0.89722117  -261.99640709    -0.00054250    -0.00004658  0.20D-05  0.79D-05 10660.74
    4     8     8     1.09162229    -0.89722035  -261.99640627    -0.00054855    -0.00004732  0.20D-05  0.80D-05 10660.74
    4     9     9     1.09211282    -0.89917833  -261.99305368    -0.00059865    -0.00004680  0.27D-05  0.78D-05 10660.74
    4    10    10     1.09211071    -0.89920690  -261.99305307    -0.00060043    -0.00004712  0.27D-05  0.79D-05 10660.74
    4    11    11     1.09210693    -0.89920643  -261.99305260    -0.00060304    -0.00004741  0.27D-05  0.79D-05 10660.74
    4    12    12     1.09194058    -0.89786859  -261.99171475    -0.00057752    -0.00004861  0.21D-05  0.80D-05 10660.74
    5     1     1     1.09880831    -0.92678127  -262.26858102    -0.00010027    -0.00000711  0.31D-06  0.10D-05 14148.99
    5     2     2     1.09880703    -0.92678103  -262.26858078    -0.00010242    -0.00000728  0.31D-06  0.10D-05 14148.99
    5     3     3     1.09880665    -0.92678091  -262.26858066    -0.00010347    -0.00000737  0.32D-06  0.11D-05 14148.99
    5     4     4     1.09208311    -0.89728490  -261.99647082    -0.00006281    -0.00000498  0.28D-06  0.75D-06 14148.99
    5     5     5     1.09208235    -0.89728455  -261.99647048    -0.00006272    -0.00000520  0.29D-06  0.79D-06 14148.99
    5     6     6     1.09208727    -0.89728449  -261.99647041    -0.00006296    -0.00000517  0.28D-06  0.79D-06 14148.99
    5     7     7     1.09208715    -0.89728443  -261.99647035    -0.00006326    -0.00000522  0.29D-06  0.80D-06 14148.99
    5     8     8     1.09208741    -0.89728442  -261.99647035    -0.00006407    -0.00000519  0.28D-06  0.79D-06 14148.99
    5     9     9     1.09250470    -0.89924152  -261.99311687    -0.00006319    -0.00000546  0.32D-06  0.85D-06 14148.99
    5    10    10     1.09250451    -0.89927062  -261.99311679    -0.00006372    -0.00000553  0.32D-06  0.87D-06 14148.99
    5    11    11     1.09250423    -0.89927055  -261.99311671    -0.00006412    -0.00000557  0.33D-06  0.87D-06 14148.99
    5    12    12     1.09241724    -0.89793387  -261.99178004    -0.00006528    -0.00000480  0.27D-06  0.71D-06 14148.99
    6     1     1     1.09888868    -0.92678991  -262.26858966    -0.00000864    -0.00000065  0.31D-07  0.92D-07 17642.74
    6     2     2     1.09888795    -0.92678988  -262.26858963    -0.00000885    -0.00000067  0.32D-07  0.95D-07 17642.74
    6     3     3     1.09888764    -0.92678987  -262.26858961    -0.00000896    -0.00000068  0.32D-07  0.97D-07 17642.74
    6     4     4     1.09212666    -0.89729114  -261.99647706    -0.00000624    -0.00000057  0.22D-07  0.94D-07 17642.74
    6     5     5     1.09212746    -0.89729107  -261.99647700    -0.00000652    -0.00000061  0.23D-07  0.10D-06 17642.74
    6     6     6     1.09212714    -0.89729107  -261.99647699    -0.00000658    -0.00000062  0.24D-07  0.10D-06 17642.74
    6     7     7     1.09212680    -0.89729106  -261.99647699    -0.00000664    -0.00000059  0.23D-07  0.98D-07 17642.74
    6     8     8     1.09212716    -0.89729102  -261.99647694    -0.00000660    -0.00000062  0.24D-07  0.10D-06 17642.74
    6     9     9     1.09255332    -0.89924853  -261.99312388    -0.00000701    -0.00000065  0.26D-07  0.11D-06 17642.74
    6    10    10     1.09255325    -0.89927769  -261.99312386    -0.00000707    -0.00000066  0.26D-07  0.11D-06 17642.74
    6    11    11     1.09255335    -0.89927768  -261.99312385    -0.00000714    -0.00000064  0.26D-07  0.10D-06 17642.74
    6    12    12     1.09246134    -0.89793980  -261.99178597    -0.00000593    -0.00000050  0.19D-07  0.83D-07 17642.74
    7     1     1     1.09890973    -0.92679070  -262.26859045    -0.00000079    -0.00000008  0.70D-08  0.10D-07 21140.02
    7     2     2     1.09890942    -0.92679069  -262.26859045    -0.00000081    -0.00000008  0.73D-08  0.10D-07 21140.02
    7     3     3     1.09890929    -0.92679069  -262.26859044    -0.00000083    -0.00000008  0.74D-08  0.11D-07 21140.02
    7     4     4     1.09214124    -0.89729190  -261.99647782    -0.00000076    -0.00000009  0.74D-08  0.13D-07 21140.02
    7     5     5     1.09214086    -0.89729188  -261.99647781    -0.00000081    -0.00000010  0.81D-08  0.14D-07 21140.02
    7     6     6     1.09214101    -0.89729188  -261.99647780    -0.00000081    -0.00000010  0.80D-08  0.14D-07 21140.02
    7     7     7     1.09214081    -0.89729183  -261.99647775    -0.00000077    -0.00000010  0.80D-08  0.14D-07 21140.02
    7     8     8     1.09214127    -0.89729183  -261.99647775    -0.00000081    -0.00000009  0.70D-08  0.13D-07 21140.02
    7     9     9     1.09256886    -0.89924937  -261.99312472    -0.00000084    -0.00000010  0.84D-08  0.14D-07 21140.02
    7    10    10     1.09256887    -0.89927854  -261.99312471    -0.00000085    -0.00000010  0.86D-08  0.14D-07 21140.02
    7    11    11     1.09256885    -0.89927851  -261.99312467    -0.00000082    -0.00000009  0.82D-08  0.14D-07 21140.02
    7    12    12     1.09247632    -0.89794046  -261.99178662    -0.00000066    -0.00000007  0.58D-08  0.11D-07 21140.02
    8     1     1     1.09891439    -0.92679079  -262.26859054    -0.00000009    -0.00000001  0.58D-09  0.15D-08 24631.95
    8     2     2     1.09891426    -0.92679079  -262.26859054    -0.00000009    -0.00000001  0.60D-09  0.15D-08 24631.95
    8     3     3     1.09891416    -0.92679079  -262.26859054    -0.00000010    -0.00000001  0.61D-09  0.16D-08 24631.95
    8     4     4     1.09214020    -0.89729201  -261.99647794    -0.00000012    -0.00000002  0.76D-09  0.25D-08 24631.95
    8     5     5     1.09214010    -0.89729201  -261.99647793    -0.00000012    -0.00000002  0.80D-09  0.27D-08 24631.95
    8     6     6     1.09214011    -0.89729200  -261.99647793    -0.00000012    -0.00000002  0.81D-09  0.26D-08 24631.95
    8     7     7     1.09214008    -0.89729196  -261.99647788    -0.00000012    -0.00000002  0.80D-09  0.27D-08 24631.95
    8     8     8     1.09214027    -0.89729194  -261.99647786    -0.00000011    -0.00000001  0.70D-09  0.23D-08 24631.95
    8     9     9     1.09256693    -0.89924949  -261.99312484    -0.00000012    -0.00000002  0.88D-09  0.27D-08 24631.95
    8    10    10     1.09256688    -0.89927867  -261.99312483    -0.00000012    -0.00000002  0.90D-09  0.27D-08 24631.95
    8    11    11     1.09256697    -0.89927862  -261.99312479    -0.00000012    -0.00000002  0.86D-09  0.26D-08 24631.95
    8    12    12     1.09247568    -0.89794055  -261.99178671    -0.00000009    -0.00000001  0.61D-09  0.18D-08 24631.95


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%  11.2%
 P   0.2%  33.5%  39.5%

 Initialization:   0.8%
 Other:           14.6%

 Total CPU:    24632.0 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222/000           0.9474157   0.0131305  -0.0075485  -0.0000000   0.0000000   0.0000000   0.0000003  -0.0000000
                            0.0001147  -0.0000883   0.0744539  -0.0000000
 2222222222/22000           0.0068074   0.0526868   0.9460464  -0.0000000  -0.0000000  -0.0000001   0.0000000   0.0000000
                            0.0006959  -0.0744507  -0.0000894   0.0000000
 22222222222/2000          -0.0135296   0.9459797  -0.0525857   0.0000000  -0.0000001   0.0000000  -0.0000000   0.0000000
                           -0.0744507  -0.0006960   0.0001139   0.0000000
 2222222222//200\           0.0000000  -0.0000000  -0.0000000   0.7691055   0.0001512  -0.0195480   0.0022376   0.1337789
                            0.0000000  -0.0000000  -0.0000000  -0.5521876
 2222222222/2/0\0           0.0000000  -0.0000000  -0.0000000   0.2686742   0.0003557  -0.0094907  -0.0004204   0.7331612
                            0.0000000   0.0000001   0.0000002   0.5521927
 2222222222/2/\00          -0.0641599  -0.0008892   0.0005112  -0.0021710  -0.0000764   0.0001012   0.6762780   0.0011846
                            0.0010138  -0.0007803   0.6577961  -0.0000001
 22222222222//0\0          -0.0641599  -0.0008892   0.0005112   0.0021709   0.0000765  -0.0001012  -0.6762730  -0.0011847
                            0.0010138  -0.0007803   0.6578013  -0.0000002
 22222222222//00\          -0.0009162   0.0640626  -0.0035612  -0.0008162   0.6756272  -0.0297003   0.0000789  -0.0004131
                            0.6577701   0.0061491  -0.0010065  -0.0000001
 2222222222//2\00           0.0009162  -0.0640626   0.0035612  -0.0008161   0.6756266  -0.0297002   0.0000789  -0.0004130
                           -0.6577708  -0.0061491   0.0010064  -0.0000000
 2222222222/2/00\           0.0004610   0.0035680   0.0640671   0.0167078   0.0297128   0.6754161  -0.0000487   0.0026060
                           -0.0061479   0.6577699   0.0007897  -0.0000000
 2222222222//20\0           0.0004610   0.0035680   0.0640672  -0.0167078  -0.0297128  -0.6754146   0.0000486  -0.0026060
                           -0.0061479   0.6577715   0.0007898  -0.0000001
 22222222222//\00           0.0000000  -0.0000000  -0.0000000  -0.5004309   0.0002043   0.0100574  -0.0026579   0.5993917
                           -0.0000000  -0.0000000  -0.0000001  -0.5521851
 222222222222000/           0.0389447   0.0005397  -0.0003103  -0.0000000   0.0000000   0.0000000   0.0000006  -0.0000000
                            0.0001974  -0.0001519   0.1280938  -0.0000000
 2222222222022/00           0.0002798   0.0021658   0.0388884  -0.0000000   0.0000000  -0.0000001   0.0000000   0.0000000
                            0.0011972  -0.1280884  -0.0001538   0.0000000
 22222222222020/0          -0.0005561   0.0388856  -0.0021616   0.0000000  -0.0000001   0.0000000   0.0000000   0.0000000
                           -0.1280883  -0.0011974   0.0001960   0.0000000
 22222222222/\0/0          -0.0323946  -0.0004490   0.0002581  -0.0000135  -0.0000005   0.0000006   0.0042213   0.0000074
                           -0.0001731   0.0001332  -0.1123254   0.0000000
 2222222222/2\/00          -0.0323946  -0.0004490   0.0002581   0.0000136   0.0000005  -0.0000006  -0.0042221  -0.0000074
                           -0.0001731   0.0001332  -0.1123253   0.0000000
 2222222222/\20/0          -0.0002328  -0.0018015  -0.0323476  -0.0001043  -0.0001855  -0.0042164   0.0000003  -0.0000163
                           -0.0010498   0.1123208   0.0001349  -0.0000000
 2222222222/2\00/          -0.0002328  -0.0018015  -0.0323477   0.0001043   0.0001855   0.0042166  -0.0000003   0.0000163
                           -0.0010498   0.1123207   0.0001349  -0.0000000
 22222222222/\00/           0.0004626  -0.0323455   0.0017980  -0.0000051   0.0042177  -0.0001854   0.0000005  -0.0000026
                            0.1123207   0.0010500  -0.0001719  -0.0000000
 2222222222/\2/00           0.0004626  -0.0323455   0.0017980   0.0000051  -0.0042177   0.0001854  -0.0000005   0.0000026
                            0.1123206   0.0010500  -0.0001719  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.953156    0.006849   -0.013612    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.033812
            -0.000243    0.000483
 2           0.013210    0.053006    0.951711   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000469
            -0.001880   -0.033760
 3          -0.007594    0.951778   -0.052904   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000269
            -0.033763    0.001877
 4           0.000000    0.000000   -0.000000    0.122455   -0.003072    0.023640   -0.001155    0.948700   -0.000000   -0.000000
             0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000433   -0.000108    0.042041    0.955944    0.000060    0.000000    0.000000
            -0.000000    0.000000
 6          -0.000000    0.000000   -0.000000   -0.006710    0.000143    0.955644   -0.042023   -0.022997   -0.000000    0.000000
             0.000001   -0.000000
 7          -0.000000   -0.000000    0.000000   -0.001268    0.956861   -0.000069    0.000112    0.003264   -0.000000    0.000004
            -0.000000    0.000000
 8           0.000000   -0.000000   -0.000000    0.948975    0.001676    0.003687   -0.000584   -0.122577   -0.000006   -0.000000
            -0.000000   -0.000000
 9          -0.000055   -0.000331    0.035399    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.001473
            -0.008935    0.955967
 10          0.000042    0.035399    0.000331    0.000000    0.000000   -0.000001    0.000000    0.000000    0.000000   -0.001134
             0.955968    0.008937
 11         -0.035400    0.000043   -0.000054    0.000000   -0.000004   -0.000000   -0.000000    0.000000    0.000000    0.956008
             0.001148   -0.001463
 12          0.000000   -0.000000   -0.000000    0.000006    0.000000    0.000000   -0.000000   -0.000001    0.956721   -0.000000
            -0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.953877   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000012    0.000006
            -0.000742    0.000000
 2          -0.000000    0.953877    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000741    0.000048
            -0.000011    0.000000
 3           0.000000    0.000000    0.953877   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000048    0.000741
             0.000007   -0.000000
 4          -0.000000    0.000000   -0.000000    0.956868    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.956868   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.956868   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000
 7          -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.956868    0.000000    0.000000    0.000000
             0.000000    0.000000
 8          -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.956868    0.000000    0.000000
             0.000000    0.000000
 9          -0.000012    0.000741   -0.000048    0.000000   -0.000000    0.000000    0.000000    0.000000    0.956665   -0.000000
            -0.000000   -0.000000
 10          0.000006    0.000048    0.000741   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.956665
             0.000000   -0.000000
 11         -0.000742   -0.000011    0.000007    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.956665   -0.000000
 12          0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.956721


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95315561 (fixed)   0.95392634 (relaxed)   0.95387670 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011896   -0.00006748   -0.80959329
 Singles      0.01029631   -0.03650377   -0.04189900
 Pairs        0.08862985   -0.00061772   -0.07529850
 Total        1.09904511   -0.03718897   -0.92679079
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34147431
 Nuclear energy                         0.00000000
 Kinetic energy                        83.55428084
 One electron energy                 -454.81607674
 Two electron energy                  192.54748620
 Virial quotient                       -3.13890070
 Correlation energy                    -0.92711624
 !MRCI STATE 1.2 Energy              -262.268590543558

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.36041687 (Davidson, fixed reference)
 Cluster corrected energies          -262.36031084 (Davidson, relaxed reference)
 Cluster corrected energies          -262.36041687 (Davidson, rotated reference)

 Cluster corrected energies          -262.36025570 (Pople, fixed reference)
 Cluster corrected energies          -262.36014054 (Pople, relaxed reference)
 Cluster corrected energies          -262.36025570 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95171096 (fixed)   0.95392639 (relaxed)   0.95387676 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011896   -0.00006748   -0.84945372
 Singles      0.01029629   -0.03650374   -0.04189898
 Pairs        0.08862973    0.04319055   -0.03543808
 Total        1.09904498    0.00661933   -0.92679079
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34147430
 Nuclear energy                         0.00000000
 Kinetic energy                        83.55428036
 One electron energy                 -454.81607588
 Two electron energy                  192.54748534
 Virial quotient                       -3.13890072
 Correlation energy                    -0.92711623
 !MRCI STATE 2.2 Energy              -262.268590539406

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.36041675 (Davidson, fixed reference)
 Cluster corrected energies          -262.36031071 (Davidson, relaxed reference)
 Cluster corrected energies          -262.36041675 (Davidson, rotated reference)

 Cluster corrected energies          -262.36025556 (Pople, fixed reference)
 Cluster corrected energies          -262.36014041 (Pople, relaxed reference)
 Cluster corrected energies          -262.36025556 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95177804 (fixed)   0.95392643 (relaxed)   0.95387680 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011896   -0.00006748   -0.80797105
 Singles      0.01029626   -0.03650369   -0.04189895
 Pairs        0.08862967   -0.00240090   -0.07692079
 Total        1.09904489   -0.03897207   -0.92679079
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34147431
 Nuclear energy                         0.00000000
 Kinetic energy                        83.55428141
 One electron energy                 -454.81607768
 Two electron energy                  192.54748714
 Virial quotient                       -3.13890068
 Correlation energy                    -0.92711623
 !MRCI STATE 3.2 Energy              -262.268590538504

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.36041666 (Davidson, fixed reference)
 Cluster corrected energies          -262.36031063 (Davidson, relaxed reference)
 Cluster corrected energies          -262.36041666 (Davidson, rotated reference)

 Cluster corrected energies          -262.36025547 (Pople, fixed reference)
 Cluster corrected energies          -262.36014031 (Pople, relaxed reference)
 Cluster corrected energies          -262.36025547 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94869959 (fixed)   0.95687395 (relaxed)   0.95686763 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004118   -0.00010700   -0.77901093
 Singles      0.01204527   -0.04650480   -0.05247874
 Pairs        0.08009872    0.00000002   -0.06580235
 Total        1.09218517   -0.04661177   -0.89729201
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09918592
 Nuclear energy                         0.00000000
 Kinetic energy                        83.12150984
 One electron energy                 -449.00007040
 Two electron energy                  187.00359246
 Virial quotient                       -3.15196967
 Correlation energy                    -0.89729201
 !MRCI STATE 4.2 Energy              -261.996477936263

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07919495 (Davidson, fixed reference)
 Cluster corrected energies          -262.07918201 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07919495 (Davidson, rotated reference)

 Cluster corrected energies          -262.07854898 (Pople, fixed reference)
 Cluster corrected energies          -262.07853509 (Pople, relaxed reference)
 Cluster corrected energies          -262.07854898 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95594358 (fixed)   0.95687399 (relaxed)   0.95686767 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004118   -0.00010700   -0.77901074
 Singles      0.01204534   -0.04650490   -0.05247878
 Pairs        0.08009856   -0.00000016   -0.06580249
 Total        1.09218507   -0.04661206   -0.89729201
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09918592
 Nuclear energy                         0.00000000
 Kinetic energy                        83.12150877
 One electron energy                 -449.00007284
 Two electron energy                  187.00359491
 Virial quotient                       -3.15196971
 Correlation energy                    -0.89729201
 !MRCI STATE 5.2 Energy              -261.996477931188

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07919486 (Davidson, fixed reference)
 Cluster corrected energies          -262.07918191 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07919486 (Davidson, rotated reference)

 Cluster corrected energies          -262.07854888 (Pople, fixed reference)
 Cluster corrected energies          -262.07853499 (Pople, relaxed reference)
 Cluster corrected energies          -262.07854888 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95564423 (fixed)   0.95687399 (relaxed)   0.95686767 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004118   -0.00010700   -0.77901096
 Singles      0.01204531   -0.04650483   -0.05247872
 Pairs        0.08009859    0.00000003   -0.06580232
 Total        1.09218508   -0.04661181   -0.89729200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09918592
 Nuclear energy                         0.00000000
 Kinetic energy                        83.12150929
 One electron energy                 -449.00007402
 Two electron energy                  187.00359610
 Virial quotient                       -3.15196969
 Correlation energy                    -0.89729200
 !MRCI STATE 6.2 Energy              -261.996477925568

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07919486 (Davidson, fixed reference)
 Cluster corrected energies          -262.07918191 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07919486 (Davidson, rotated reference)

 Cluster corrected energies          -262.07854888 (Pople, fixed reference)
 Cluster corrected energies          -262.07853499 (Pople, relaxed reference)
 Cluster corrected energies          -262.07854888 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95686127 (fixed)   0.95687400 (relaxed)   0.95686768 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004118   -0.00010700   -0.77901090
 Singles      0.01204530   -0.04650483   -0.05247868
 Pairs        0.08009857   -0.00000002   -0.06580238
 Total        1.09218505   -0.04661185   -0.89729196
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09918592
 Nuclear energy                         0.00000000
 Kinetic energy                        83.12150740
 One electron energy                 -449.00007204
 Two electron energy                  187.00359416
 Virial quotient                       -3.15196976
 Correlation energy                    -0.89729195
 !MRCI STATE 7.2 Energy              -261.996477877836

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07919478 (Davidson, fixed reference)
 Cluster corrected energies          -262.07918184 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07919478 (Davidson, rotated reference)

 Cluster corrected energies          -262.07854880 (Pople, fixed reference)
 Cluster corrected energies          -262.07853491 (Pople, relaxed reference)
 Cluster corrected energies          -262.07854880 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.94897507 (fixed)   0.95687391 (relaxed)   0.95686760 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004118   -0.00010700   -0.77901074
 Singles      0.01204529   -0.04650488   -0.05247869
 Pairs        0.08009878    0.00000002   -0.06580251
 Total        1.09218524   -0.04661185   -0.89729194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09918592
 Nuclear energy                         0.00000000
 Kinetic energy                        83.12150944
 One electron energy                 -449.00007010
 Two electron energy                  187.00359224
 Virial quotient                       -3.15196968
 Correlation energy                    -0.89729194
 !MRCI STATE 8.2 Energy              -261.996477863432

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07919494 (Davidson, fixed reference)
 Cluster corrected energies          -262.07918200 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07919494 (Davidson, rotated reference)

 Cluster corrected energies          -262.07854897 (Pople, fixed reference)
 Cluster corrected energies          -262.07853508 (Pople, relaxed reference)
 Cluster corrected energies          -262.07854897 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95596718 (fixed)   0.95668213 (relaxed)   0.95666498 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007413   -0.00015349   -0.00063240
 Singles      0.01231620   -0.04683427   -0.05300260
 Pairs        0.08025760   -0.85179089   -0.84561449
 Total        1.09264792   -0.89877865   -0.89924949
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09417161
 Nuclear energy                         0.00000000
 Kinetic energy                        83.14470789
 One electron energy                 -449.12275557
 Two electron energy                  187.12963073
 Virial quotient                       -3.15104992
 Correlation energy                    -0.89895323
 !MRCI STATE 9.2 Energy              -261.993124838269

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07641098 (Davidson, fixed reference)
 Cluster corrected energies          -262.07637577 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07641098 (Davidson, rotated reference)

 Cluster corrected energies          -262.07579441 (Pople, fixed reference)
 Cluster corrected energies          -262.07575660 (Pople, relaxed reference)
 Cluster corrected energies          -262.07579441 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95596765 (fixed)   0.95668216 (relaxed)   0.95666501 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007413   -0.00015349   -0.77293721
 Singles      0.01231617   -0.04683422   -0.05300290
 Pairs        0.08025757   -0.00796290   -0.07333855
 Total        1.09264787   -0.05495062   -0.89927867
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09417161
 Nuclear energy                         0.00000000
 Kinetic energy                        83.14470805
 One electron energy                 -449.12275587
 Two electron energy                  187.12963105
 Virial quotient                       -3.15104991
 Correlation energy                    -0.89895322
 !MRCI STATE 10.2 Energy             -261.993124829496

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07641093 (Davidson, fixed reference)
 Cluster corrected energies          -262.07637571 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07641093 (Davidson, rotated reference)

 Cluster corrected energies          -262.07579435 (Pople, fixed reference)
 Cluster corrected energies          -262.07575653 (Pople, relaxed reference)
 Cluster corrected energies          -262.07579435 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95600824 (fixed)   0.95668212 (relaxed)   0.95666496 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007413   -0.00015349   -0.78141760
 Singles      0.01231619   -0.04683426   -0.05300287
 Pairs        0.08025765    0.00130332   -0.06485815
 Total        1.09264797   -0.04568443   -0.89927862
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09417161
 Nuclear energy                         0.00000000
 Kinetic energy                        83.14470726
 One electron energy                 -449.12275647
 Two electron energy                  187.12963169
 Virial quotient                       -3.15104994
 Correlation energy                    -0.89895318
 !MRCI STATE 11.2 Energy             -261.993124788628

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07641097 (Davidson, fixed reference)
 Cluster corrected energies          -262.07637575 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07641097 (Davidson, rotated reference)

 Cluster corrected energies          -262.07579440 (Pople, fixed reference)
 Cluster corrected energies          -262.07575658 (Pople, relaxed reference)
 Cluster corrected energies          -262.07579440 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95672133 (fixed)   0.95672676 (relaxed)   0.95672133 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003986   -0.00010865   -0.77879950
 Singles      0.01236447   -0.04712293   -0.05329761
 Pairs        0.08011489    0.00000001   -0.06584345
 Total        1.09251922   -0.04723157   -0.89794055
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09387535
 Nuclear energy                         0.00000000
 Kinetic energy                        83.12140534
 One electron energy                 -448.99310227
 Two electron energy                  187.00131556
 Virial quotient                       -3.15191719
 Correlation energy                    -0.89791137
 !MRCI STATE 12.2 Energy             -261.991786714162

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07486078 (Davidson, fixed reference)
 Cluster corrected energies          -262.07484964 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07486078 (Davidson, rotated reference)

 Cluster corrected energies          -262.07423638 (Pople, fixed reference)
 Cluster corrected energies          -262.07422442 (Pople, relaxed reference)
 Cluster corrected energies          -262.07423638 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     6393.64       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     27116.57  27091.81     13.20      1.41      9.77
 REAL TIME  *     27833.85 SEC
 DISK USED  *         6.34 GB (local),      102.78 GB (total)
 SF USED    *        61.74 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -262.36041687  AU                              
 SETTING HLSDIAG(2)     =      -262.36041675  AU                              
 SETTING HLSDIAG(3)     =      -262.36041666  AU                              
 SETTING HLSDIAG(4)     =      -262.07919495  AU                              
 SETTING HLSDIAG(5)     =      -262.07919486  AU                              
 SETTING HLSDIAG(6)     =      -262.07919486  AU                              
 SETTING HLSDIAG(7)     =      -262.07919478  AU                              
 SETTING HLSDIAG(8)     =      -262.07919494  AU                              
 SETTING HLSDIAG(9)     =      -262.07641098  AU                              
 SETTING HLSDIAG(10)    =      -262.07641093  AU                              
 SETTING HLSDIAG(11)    =      -262.07641097  AU                              
 SETTING HLSDIAG(12)    =      -262.07486078  AU                              


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


 Number of p-space configurations:  42

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -261.10579960
     2      -261.10579960
     3      -261.10579960
     4      -261.10100025
     5      -261.10100025
     6      -261.10100025
     7      -261.10100025
     8      -261.10100025
     9      -261.09411593

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.8240D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1104D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.8438D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1337D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1477D-06

 Number of blocks in overlap matrix:   979   Smallest eigenvalue:  0.82D-07
 Number of N-2 electron functions:    2187
 Number of N-1 electron functions:  107720

 Number of internal configurations:                21432
 Number of singly external configurations:      14274340
 Number of doubly external configurations:      38397721
 Total number of contracted configurations:     52693493
 Total number of uncontracted configurations: 1936062556

 Diagonal Coupling coefficients finished.               Storage:  19020875 words, CPU-Time:     42.37 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4343844 words, CPU-time:      7.30 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -261.10579960     0.00000000    -1.06350618  0.32D-01  0.12D+00    57.37
    1     2     2     1.00000000     0.00000000  -261.10579960     0.00000000    -1.06379285  0.32D-01  0.12D+00    57.37
    1     3     3     1.00000000     0.00000000  -261.10579960     0.00000000    -1.06349530  0.32D-01  0.12D+00    57.37
    1     4     4     1.00000000     0.00000000  -261.10100025     0.00000000    -1.06874174  0.32D-01  0.12D+00    57.37
    1     5     5     1.00000000     0.00000000  -261.10100025     0.00000000    -1.06404185  0.32D-01  0.12D+00    57.37
    1     6     6     1.00000000     0.00000000  -261.10100025     0.00000000    -1.06442067  0.32D-01  0.12D+00    57.37
    1     7     7     1.00000000     0.00000000  -261.10100025     0.00000000    -1.06407329  0.32D-01  0.12D+00    57.37
    1     8     8     1.00000000     0.00000000  -261.10100025     0.00000000    -1.06854813  0.32D-01  0.12D+00    57.37
    1     9     9     1.00000000     0.00000000  -261.09411593     0.00000000    -1.06942038  0.32D-01  0.12D+00    57.37
    2     1     1     1.10021740    -0.87207629  -261.97787590    -0.87207629    -0.02481648  0.24D-02  0.21D-02  1705.15
    2     2     2     1.10031045    -0.87205539  -261.97785500    -0.87205539    -0.02489799  0.25D-02  0.21D-02  1705.15
    2     3     3     1.10022170    -0.87199982  -261.97779943    -0.87199982    -0.02488229  0.24D-02  0.21D-02  1705.15
    2     4     4     1.10025581    -0.87274964  -261.97374989    -0.87274964    -0.02475784  0.24D-02  0.21D-02  1705.15
    2     5     5     1.10012995    -0.87273776  -261.97373801    -0.87273776    -0.02470607  0.23D-02  0.21D-02  1705.15
    2     6     6     1.10015921    -0.87266398  -261.97366423    -0.87266398    -0.02477586  0.24D-02  0.21D-02  1705.15
    2     7     7     1.10103933    -0.87234585  -261.97334610    -0.87234585    -0.02532590  0.23D-02  0.23D-02  1705.15
    2     8     8     1.10098857    -0.87225444  -261.97325469    -0.87225444    -0.02537971  0.23D-02  0.23D-02  1705.15
    2     9     9     1.10139589    -0.87280735  -261.96692328    -0.87280735    -0.02536798  0.24D-02  0.23D-02  1705.15
    3     1     1     1.09075093    -0.89574883  -262.00154843    -0.02367253    -0.00049860  0.35D-04  0.72D-04  3361.24
    3     2     2     1.09070900    -0.89572505  -262.00152466    -0.02366966    -0.00050728  0.35D-04  0.74D-04  3361.24
    3     3     3     1.09068945    -0.89571278  -262.00151239    -0.02371296    -0.00051432  0.35D-04  0.75D-04  3361.24
    3     4     4     1.09110725    -0.89634049  -261.99734074    -0.02359085    -0.00048285  0.34D-04  0.72D-04  3361.24
    3     5     5     1.09104320    -0.89630714  -261.99730739    -0.02356938    -0.00049741  0.34D-04  0.74D-04  3361.24
    3     6     6     1.09092315    -0.89630672  -261.99730697    -0.02364274    -0.00049825  0.36D-04  0.73D-04  3361.24
    3     7     7     1.09086791    -0.89628096  -261.99728121    -0.02393511    -0.00050929  0.35D-04  0.74D-04  3361.24
    3     8     8     1.09085531    -0.89627070  -261.99727095    -0.02401625    -0.00051504  0.36D-04  0.75D-04  3361.24
    3     9     9     1.09131202    -0.89691908  -261.99103501    -0.02411173    -0.00050510  0.41D-04  0.75D-04  3361.24
    4     1     1     1.09130729    -0.89636274  -262.00216235    -0.00061391    -0.00005398  0.22D-05  0.85D-05  5022.26
    4     2     2     1.09128964    -0.89635728  -262.00215689    -0.00063223    -0.00005743  0.24D-05  0.89D-05  5022.26
    4     3     3     1.09128086    -0.89635508  -262.00215468    -0.00064230    -0.00005889  0.24D-05  0.91D-05  5022.26
    4     4     4     1.09153151    -0.89692836  -261.99792861    -0.00058788    -0.00005085  0.20D-05  0.83D-05  5022.26
    4     5     5     1.09150441    -0.89692223  -261.99792248    -0.00061509    -0.00005509  0.23D-05  0.88D-05  5022.26
    4     6     6     1.09150616    -0.89692175  -261.99792200    -0.00061503    -0.00005511  0.22D-05  0.88D-05  5022.26
    4     7     7     1.09148735    -0.89691736  -261.99791761    -0.00063640    -0.00005836  0.24D-05  0.91D-05  5022.26
    4     8     8     1.09147958    -0.89691533  -261.99791558    -0.00064463    -0.00005966  0.25D-05  0.93D-05  5022.26
    4     9     9     1.09177288    -0.89754541  -261.99166135    -0.00062633    -0.00005470  0.22D-05  0.89D-05  5022.26
    5     1     1     1.09182848    -0.89643521  -262.00223482    -0.00007247    -0.00000532  0.33D-06  0.75D-06  6686.45
    5     2     2     1.09183009    -0.89643470  -262.00223430    -0.00007742    -0.00000570  0.35D-06  0.79D-06  6686.45
    5     3     3     1.09183010    -0.89643451  -262.00223412    -0.00007944    -0.00000585  0.36D-06  0.81D-06  6686.45
    5     4     4     1.09203310    -0.89699697  -261.99799722    -0.00006860    -0.00000505  0.30D-06  0.73D-06  6686.45
    5     5     5     1.09204326    -0.89699652  -261.99799677    -0.00007429    -0.00000548  0.33D-06  0.77D-06  6686.45
    5     6     6     1.09203557    -0.89699644  -261.99799669    -0.00007468    -0.00000545  0.33D-06  0.77D-06  6686.45
    5     7     7     1.09204533    -0.89699608  -261.99799633    -0.00007872    -0.00000580  0.34D-06  0.81D-06  6686.45
    5     8     8     1.09204534    -0.89699592  -261.99799617    -0.00008059    -0.00000594  0.35D-06  0.83D-06  6686.45
    5     9     9     1.09230818    -0.89761934  -261.99173527    -0.00007393    -0.00000536  0.32D-06  0.78D-06  6686.45
    6     1     1     1.09185901    -0.89644171  -262.00224131    -0.00000649    -0.00000051  0.21D-07  0.78D-07  8340.68
    6     2     2     1.09185752    -0.89644164  -262.00224125    -0.00000694    -0.00000054  0.22D-07  0.82D-07  8340.68
    6     3     3     1.09185690    -0.89644163  -262.00224123    -0.00000711    -0.00000056  0.23D-07  0.84D-07  8340.68
    6     4     4     1.09207269    -0.89700320  -261.99800345    -0.00000623    -0.00000053  0.22D-07  0.82D-07  8340.68
    6     5     5     1.09207089    -0.89700314  -261.99800339    -0.00000662    -0.00000057  0.24D-07  0.88D-07  8340.68
    6     6     6     1.09207143    -0.89700313  -261.99800338    -0.00000670    -0.00000056  0.23D-07  0.86D-07  8340.68
    6     7     7     1.09207434    -0.89700310  -261.99800335    -0.00000702    -0.00000050  0.21D-07  0.81D-07  8340.68
    6     8     8     1.09207280    -0.89700304  -261.99800329    -0.00000712    -0.00000054  0.22D-07  0.85D-07  8340.68
    6     9     9     1.09234648    -0.89762592  -261.99174185    -0.00000658    -0.00000056  0.21D-07  0.94D-07  8340.68
    7     1     1     1.09187379    -0.89644235  -262.00224195    -0.00000064    -0.00000007  0.53D-08  0.95D-08 10000.93
    7     2     2     1.09187294    -0.89644233  -262.00224194    -0.00000069    -0.00000007  0.59D-08  0.10D-07 10000.93
    7     3     3     1.09187314    -0.89644233  -262.00224193    -0.00000070    -0.00000007  0.57D-08  0.10D-07 10000.93
    7     4     4     1.09208768    -0.89700387  -261.99800412    -0.00000067    -0.00000007  0.58D-08  0.11D-07 10000.93
    7     5     5     1.09208696    -0.89700386  -261.99800411    -0.00000073    -0.00000008  0.62D-08  0.11D-07 10000.93
    7     6     6     1.09208716    -0.89700385  -261.99800410    -0.00000071    -0.00000008  0.61D-08  0.11D-07 10000.93
    7     7     7     1.09208897    -0.89700375  -261.99800400    -0.00000065    -0.00000007  0.55D-08  0.11D-07 10000.93
    7     8     8     1.09208854    -0.89700372  -261.99800397    -0.00000069    -0.00000007  0.57D-08  0.11D-07 10000.93
    7     9     9     1.09236225    -0.89762666  -261.99174259    -0.00000074    -0.00000008  0.65D-08  0.13D-07 10000.93
    8     1     1     1.09187415    -0.89644243  -262.00224204    -0.00000008    -0.00000001  0.51D-09  0.15D-08 11661.16
    8     2     2     1.09187380    -0.89644242  -262.00224203    -0.00000009    -0.00000001  0.55D-09  0.16D-08 11661.16
    8     3     3     1.09187391    -0.89644242  -262.00224202    -0.00000009    -0.00000001  0.53D-09  0.16D-08 11661.16
    8     4     4     1.09208856    -0.89700396  -261.99800421    -0.00000009    -0.00000001  0.59D-09  0.17D-08 11661.16
    8     5     5     1.09208828    -0.89700396  -261.99800421    -0.00000010    -0.00000001  0.62D-09  0.18D-08 11661.16
    8     6     6     1.09208837    -0.89700394  -261.99800419    -0.00000010    -0.00000001  0.61D-09  0.18D-08 11661.16
    8     7     7     1.09208871    -0.89700384  -261.99800409    -0.00000009    -0.00000001  0.60D-09  0.18D-08 11661.16
    8     8     8     1.09208857    -0.89700382  -261.99800407    -0.00000009    -0.00000001  0.60D-09  0.18D-08 11661.16
    8     9     9     1.09236249    -0.89762677  -261.99174270    -0.00000011    -0.00000001  0.79D-09  0.23D-08 11661.16


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.2%  16.1%
 P   0.2%  33.4%  32.8%

 Initialization:   0.4%
 Other:           16.8%

 Total CPU:    11661.2 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//200/           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000619   0.0000000   0.1783817   0.7605072
                           -0.5521888
 2222222222/2/0/0           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000521  -0.0000000   0.7478090   0.2257699
                            0.5521895
 2222222222//2/00           0.0000000  -0.6765868   0.0000000  -0.0000000   0.6764919   0.0000000  -0.0000686   0.0000711
                            0.0000000
 2222222222/2//00           0.0001538   0.0000000   0.6765862   0.0000000  -0.0000000   0.6764924   0.0000000  -0.0000000
                            0.0000000
 2222222222//20/0           0.6765858   0.0000000  -0.0001538  -0.6764924  -0.0000000   0.0000000  -0.0000000  -0.0000000
                           -0.0000000
 2222222222/2/00/           0.6765846   0.0000000  -0.0001538   0.6764938   0.0000000  -0.0000000  -0.0000000  -0.0000000
                           -0.0000000
 22222222222//0/0           0.0001538   0.0000000   0.6765843  -0.0000000  -0.0000000  -0.6764940  -0.0000000   0.0000000
                           -0.0000000
 22222222222//00/          -0.0000000   0.6765838  -0.0000000  -0.0000000   0.6764945   0.0000000  -0.0000686   0.0000711
                            0.0000000
 22222222222///00          -0.0000000   0.0000000   0.0000000   0.0000000   0.0001140  -0.0000000   0.5694273  -0.5347361
                           -0.5521898

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000218    0.956984   -0.000000    0.000000    0.000000   -0.000001    0.000000    0.000000    0.000000
 2           0.000000    0.000000    0.956984   -0.000000    0.000000    0.000000   -0.000002   -0.000000   -0.000000
 3           0.956984   -0.000218   -0.000000    0.000000    0.000001    0.000000    0.000000   -0.000000    0.000000
 4          -0.000000    0.000001   -0.000000    0.000000    0.000000    0.956891   -0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000    0.000002    0.000089   -0.000000    0.000000    0.956891   -0.000108   -0.000000
 6          -0.000001   -0.000000   -0.000000   -0.000000    0.956891   -0.000000    0.000000    0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000    0.954063    0.000000   -0.000000   -0.000097   -0.073501   -0.000000
 8           0.000000   -0.000000    0.000000    0.073501   -0.000000    0.000000    0.000101    0.954063   -0.000001
 9          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000001    0.956770

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956984   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.956984   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.956984   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.956891    0.000000   -0.000000   -0.000000    0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.956891   -0.000000    0.000000   -0.000000   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.956891   -0.000000    0.000000    0.000000
 7          -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.956890   -0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.956891    0.000000
 9           0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.956770


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95698403 (fixed)   0.95699301 (relaxed)   0.95698406 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004147   -0.00008565   -0.77830683
 Singles      0.01210296   -0.04663126   -0.05264451
 Pairs        0.07977500   -0.00000000   -0.06549109
 Total        1.09191943   -0.04671691   -0.89644243
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10579960
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11238952
 One electron energy                 -448.97416316
 Two electron energy                  186.97192112
 Virial quotient                       -3.15238490
 Correlation energy                    -0.89644243
 !MRCI STATE 1.2 Energy              -262.002242036242

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08464251 (Davidson, fixed reference)
 Cluster corrected energies          -262.08462421 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08464251 (Davidson, rotated reference)

 Cluster corrected energies          -262.08317739 (Pople, fixed reference)
 Cluster corrected energies          -262.08315798 (Pople, relaxed reference)
 Cluster corrected energies          -262.08317739 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95698421 (fixed)   0.95699316 (relaxed)   0.95698421 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004147   -0.00008565   -0.77830714
 Singles      0.01210293   -0.04663118   -0.05264449
 Pairs        0.07977469    0.00000000   -0.06549079
 Total        1.09191909   -0.04671684   -0.89644242
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10579960
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11238786
 One electron energy                 -448.97416432
 Two electron energy                  186.97192229
 Virial quotient                       -3.15238497
 Correlation energy                    -0.89644242
 !MRCI STATE 2.2 Energy              -262.002242026859

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08464220 (Davidson, fixed reference)
 Cluster corrected energies          -262.08462389 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08464220 (Davidson, rotated reference)

 Cluster corrected energies          -262.08317705 (Pople, fixed reference)
 Cluster corrected energies          -262.08315764 (Pople, relaxed reference)
 Cluster corrected energies          -262.08317705 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95698414 (fixed)   0.95699311 (relaxed)   0.95698416 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004147   -0.00008565   -0.77830705
 Singles      0.01210294   -0.04663118   -0.05264448
 Pairs        0.07977479   -0.00000000   -0.06549089
 Total        1.09191919   -0.04671683   -0.89644242
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10579960
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11238724
 One electron energy                 -448.97416408
 Two electron energy                  186.97192206
 Virial quotient                       -3.15238499
 Correlation energy                    -0.89644241
 !MRCI STATE 3.2 Energy              -262.002242019051

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08464228 (Davidson, fixed reference)
 Cluster corrected energies          -262.08462398 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08464228 (Davidson, rotated reference)

 Cluster corrected energies          -262.08317715 (Pople, fixed reference)
 Cluster corrected energies          -262.08315773 (Pople, relaxed reference)
 Cluster corrected energies          -262.08317715 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95689053 (fixed)   0.95689791 (relaxed)   0.95689053 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004060   -0.00009532   -0.77853857
 Singles      0.01216369   -0.04677280   -0.05282008
 Pairs        0.07992861    0.00000000   -0.06564531
 Total        1.09213290   -0.04686812   -0.89700396
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10100025
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11619123
 One electron energy                 -448.98256533
 Two electron energy                  186.98456112
 Virial quotient                       -3.15218973
 Correlation energy                    -0.89700396
 !MRCI STATE 4.2 Energy              -261.998004214552

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08064779 (Davidson, fixed reference)
 Cluster corrected energies          -262.08063267 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08064779 (Davidson, rotated reference)

 Cluster corrected energies          -262.07919335 (Pople, fixed reference)
 Cluster corrected energies          -262.07917730 (Pople, relaxed reference)
 Cluster corrected energies          -262.07919335 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95689064 (fixed)   0.95689804 (relaxed)   0.95689065 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004060   -0.00009532   -0.77853882
 Singles      0.01216368   -0.04677275   -0.05282009
 Pairs        0.07992833    0.00000000   -0.06564506
 Total        1.09213262   -0.04686806   -0.89700396
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10100025
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11618933
 One electron energy                 -448.98256676
 Two electron energy                  186.98456254
 Virial quotient                       -3.15218980
 Correlation energy                    -0.89700396
 !MRCI STATE 5.2 Energy              -261.998004212472

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08064754 (Davidson, fixed reference)
 Cluster corrected energies          -262.08063241 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08064754 (Davidson, rotated reference)

 Cluster corrected energies          -262.07919307 (Pople, fixed reference)
 Cluster corrected energies          -262.07917703 (Pople, relaxed reference)
 Cluster corrected energies          -262.07919307 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95689061 (fixed)   0.95689800 (relaxed)   0.95689061 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004060   -0.00009532   -0.77853877
 Singles      0.01216367   -0.04677271   -0.05282005
 Pairs        0.07992844    0.00000000   -0.06564513
 Total        1.09213271   -0.04686803   -0.89700394
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10100025
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11618791
 One electron energy                 -448.98256522
 Two electron energy                  186.98456102
 Virial quotient                       -3.15218985
 Correlation energy                    -0.89700394
 !MRCI STATE 6.2 Energy              -261.998004194764

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08064760 (Davidson, fixed reference)
 Cluster corrected energies          -262.08063247 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08064760 (Davidson, rotated reference)

 Cluster corrected energies          -262.07919314 (Pople, fixed reference)
 Cluster corrected energies          -262.07917710 (Pople, relaxed reference)
 Cluster corrected energies          -262.07919314 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95406341 (fixed)   0.95689785 (relaxed)   0.95689046 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004060   -0.00009529   -0.77853866
 Singles      0.01216347   -0.04677249   -0.05281984
 Pairs        0.07992898    0.00000003   -0.06564535
 Total        1.09213305   -0.04686775   -0.89700384
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10100025
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11618887
 One electron energy                 -448.98255367
 Two electron energy                  186.98454958
 Virial quotient                       -3.15218982
 Correlation energy                    -0.89700384
 !MRCI STATE 7.2 Energy              -261.998004091901

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08064779 (Davidson, fixed reference)
 Cluster corrected energies          -262.08063266 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08064779 (Davidson, rotated reference)

 Cluster corrected energies          -262.07919335 (Pople, fixed reference)
 Cluster corrected energies          -262.07917730 (Pople, relaxed reference)
 Cluster corrected energies          -262.07919335 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.95406347 (fixed)   0.95689791 (relaxed)   0.95689052 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004060   -0.00009529   -0.77853933
 Singles      0.01216346   -0.04677247   -0.05281981
 Pairs        0.07992885    0.00000065   -0.06564468
 Total        1.09213291   -0.04686710   -0.89700382
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10100025
 Nuclear energy                         0.00000000
 Kinetic energy                        83.11618978
 One electron energy                 -448.98255535
 Two electron energy                  186.98455129
 Virial quotient                       -3.15218978
 Correlation energy                    -0.89700382
 !MRCI STATE 8.2 Energy              -261.998004065905

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.08064763 (Davidson, fixed reference)
 Cluster corrected energies          -262.08063250 (Davidson, relaxed reference)
 Cluster corrected energies          -262.08064763 (Davidson, rotated reference)

 Cluster corrected energies          -262.07919319 (Pople, fixed reference)
 Cluster corrected energies          -262.07917714 (Pople, relaxed reference)
 Cluster corrected energies          -262.07919319 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95676970 (fixed)   0.95677884 (relaxed)   0.95676970 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004237   -0.00008982   -0.00011703
 Singles      0.01221448   -0.04678741   -0.05286944
 Pairs        0.08015192   -0.85074953   -0.84464029
 Total        1.09240877   -0.89762677   -0.89762677
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09411593
 Nuclear energy                         0.00000000
 Kinetic energy                        83.12018387
 One electron energy                 -448.98739284
 Two electron energy                  186.99565014
 Virial quotient                       -3.15196298
 Correlation energy                    -0.89762677
 !MRCI STATE 9.2 Energy              -261.991742698133

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.07469128 (Davidson, fixed reference)
 Cluster corrected energies          -262.07467255 (Davidson, relaxed reference)
 Cluster corrected energies          -262.07469128 (Davidson, rotated reference)

 Cluster corrected energies          -262.07325093 (Pople, fixed reference)
 Cluster corrected energies          -262.07323105 (Pople, relaxed reference)
 Cluster corrected energies          -262.07325093 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7    10024.70       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     39485.95  12369.37  27091.81     13.20      1.41      9.77
 REAL TIME  *     40524.90 SEC
 DISK USED  *         9.88 GB (local),      159.51 GB (total)
 SF USED    *        61.74 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -262.08464251  AU                              
 SETTING HLSDIAG(14)    =      -262.08464220  AU                              
 SETTING HLSDIAG(15)    =      -262.08464228  AU                              
 SETTING HLSDIAG(16)    =      -262.08064779  AU                              
 SETTING HLSDIAG(17)    =      -262.08064754  AU                              
 SETTING HLSDIAG(18)    =      -262.08064760  AU                              
 SETTING HLSDIAG(19)    =      -262.08064779  AU                              
 SETTING HLSDIAG(20)    =      -262.08064763  AU                              
 SETTING HLSDIAG(21)    =      -262.07469128  AU                              


         HLSDIAG
    -262.3604169
    -262.3604167
    -262.3604167
    -262.0791950
    -262.0791949
    -262.0791949
    -262.0791948
    -262.0791949
    -262.0764110
    -262.0764109
    -262.0764110
    -262.0748608
    -262.0846425
    -262.0846422
    -262.0846423
    -262.0806478
    -262.0806475
    -262.0806476
    -262.0806478
    -262.0806476
    -262.0746913
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=  12

 Original energies:   -262.268591   -262.268591   -262.268591   -261.996478   -261.996478   -261.996478   -261.996478   -261.996478
                      -261.993125   -261.993125   -261.993125   -261.991787
 Replaced energies:   -262.360417   -262.360417   -262.360417   -262.079195   -262.079195   -262.079195   -262.079195   -262.079195
                      -262.076411   -262.076411   -262.076411   -262.074861

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -262.002242   -262.002242   -262.002242   -261.998004   -261.998004   -261.998004   -261.998004   -261.998004
                      -261.991743
 Replaced energies:   -262.084643   -262.084642   -262.084642   -262.080648   -262.080648   -262.080648   -262.080648   -262.080648
                      -262.074691



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -262.36041687

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      58.05     100.97     684.36       4.83      -9.00       1.99     119.02      -2.25      -4.58

    2   2.2  0.5  0.5       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -58.05       0.00   -7285.33      -5.40       7.03    -601.61       0.07      -0.69     -20.71     318.26

    3   3.2  0.5  0.5       0.00       0.00       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -100.97    7285.33      -0.00      -5.35     601.59       7.10       0.05      -1.19    -318.28     -20.68

    4   4.2  0.5  0.5       0.00       0.00       0.00   61721.08       0.00       0.00       0.00       0.00       0.00       0.00
                         -684.36       5.40       5.35       0.00      66.56       0.46     923.73     -15.46      66.21       0.22

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   61721.10       0.00       0.00       0.00       0.00       0.00
                           -4.83      -7.03    -601.59     -66.56      -0.00   -2694.50      -2.02     -11.05     133.37   -2500.01

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   61721.10       0.00       0.00       0.00       0.00
                            9.00     601.61      -7.10      -0.46    2694.50       0.00      -1.95      -0.40    2499.12     133.40

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   61721.12       0.00       0.00       0.00
                           -1.99      -0.07      -0.05    -923.73       2.02       1.95       0.00    5310.94      -0.16      -0.30

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61721.08       0.00       0.00
                         -119.02       0.69       1.19      15.46      11.05       0.40   -5310.94      -0.00      10.40       1.03

    9   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62332.09       0.00
                            2.25      20.71     318.28     -66.21    -133.37   -2499.12       0.16     -10.40      -0.00    -947.44

   10  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62332.10
                            4.58    -318.26      20.68      -0.22    2500.01    -133.40       0.30      -1.03     947.44       0.00

   11  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.41      -0.47   -2847.11       2.61      76.06      -8.28    -495.21       1.12       1.46

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -867.45     -12.02       6.91      -0.00      -0.00       0.00      -0.01       0.00       7.51      -5.78

   13   1.2  0.5 -0.5      -0.00    -404.37   -7274.28      11.44      26.43     600.93       4.28      -6.99      -2.98     318.91
                           -0.00   -7274.79     405.14      -3.95     601.00     -26.35       8.64       3.48     318.90       2.99

   14   2.2  0.5 -0.5     404.37       0.00    -104.04     238.73       0.68      -0.10      33.08     651.29      -0.01       4.40
                         7274.79       0.00     -52.35     -22.84       8.41       0.04    -600.79      28.59       4.91      -0.34

   15   3.2  0.5 -0.5    7274.28     104.04       0.00     -15.31      -0.30      -4.23     600.73     -35.17       0.51      -2.92
                         -405.14      52.35      -0.00    -444.61      -4.61       9.15      31.03     532.47      -2.57      -0.00

   16   4.2  0.5 -0.5     -11.44    -238.73      15.31      -0.00   -5055.29     213.70     -67.20       5.18    -994.56      -1.33
                            3.95      22.84     444.61       0.00     190.32    4133.32      -3.73     -69.44     -25.36    1852.43

   17   5.2  0.5 -0.5     -26.43      -0.68       0.30    5055.29       0.00    -118.21     -98.93   -1854.14      -1.15       0.14
                         -601.00      -8.41       4.61    -190.32       0.00       7.49    2692.42    -147.08       3.58      -3.73

   18   6.2  0.5 -0.5    -600.93       0.10       4.23    -213.70     118.21      -0.00   -2692.71      76.71      38.99      -3.01
                           26.35      -0.04      -9.15   -4133.32      -7.49       0.00    -125.60   -3451.47       0.55     -37.10

   19   7.2  0.5 -0.5      -4.28     -33.08    -600.73      67.20      98.93    2692.71      -0.00      10.18      24.95   -2503.43
                           -8.64     600.79     -31.03       3.73   -2692.42     125.60      -0.00       1.92    2503.36      33.24

   20   8.2  0.5 -0.5       6.99    -651.29      35.17      -5.18    1854.14     -76.71     -10.18      -0.00   -2714.01     -29.77
                           -3.48     -28.59    -532.47      69.44     147.08    3451.47      -1.92       0.00      25.12   -2218.76

   21   9.2  0.5 -0.5       2.98       0.01      -0.51     994.56       1.15     -38.99     -24.95    2714.01      -0.00       1.45
                         -318.90      -4.91       2.57      25.36      -3.58      -0.55   -2503.36     -25.12       0.00       1.14

   22  10.2  0.5 -0.5    -318.91      -4.40       2.92       1.33      -0.14       3.01    2503.43      29.77      -1.45       0.00
                           -2.99       0.34       0.00   -1852.43       3.73      37.10     -33.24    2218.76      -1.14       0.00

   23  11.2  0.5 -0.5      -2.67     -17.74    -318.46     -63.38    -110.00   -2500.32       3.19     -13.79      -8.86     947.41
                            5.04    -318.44      17.70       0.78   -2501.14     109.99       3.53       4.20     947.40       8.85

   24  12.2  0.5 -0.5     -12.39     866.13     -48.15      -0.00       0.01       0.00      -0.00       0.00    4872.95      45.55
                           -6.23     -48.24    -866.20       0.00       0.00       0.01       0.00      -0.00      45.55   -4872.99

   25   1.2  1.5  1.5   -1263.91     -17.52       9.78      -5.23      -0.21      -0.11    1628.57       2.86      -4.12       3.79
                           -0.00       0.29      -0.02    1195.09      -0.12     -23.99       6.37   -1442.34      -0.60       0.04

   26   2.2  1.5  1.5      -0.00       0.00      -0.00     638.53       0.85     -22.63      -1.03    1760.81       0.01      -0.01
                         1263.96      17.50     -10.05      -5.23      -0.14       0.24    1629.13       2.86       4.12      -3.18

   27   3.2  1.5  1.5      -8.76     -70.10   -1258.79     -40.07     -71.25   -1619.65      -0.22      -6.30     -24.92    2668.31
                          -18.01    1259.01     -69.99      -2.23    1620.34     -71.29       0.19      -0.71   -2668.51     -24.97

   28   4.2  1.5  1.5   -1281.26     -17.75      10.21       5.16       0.17      -0.24   -1605.62      -2.81       2.10      -1.63
                           -0.00      -0.00      -0.01    2476.55       1.21     -69.29       4.36    2064.14       0.01      -0.04

   29   5.2  1.5  1.5       0.00      -0.10       0.00    3028.00       0.29     -70.62      11.65   -1106.23      -0.12       0.04
                         1281.26      17.78      -9.99       5.14       0.17      -0.21   -1604.70      -2.81      -2.11       1.84

   30   6.2  1.5  1.5      -9.17     -71.08   -1276.36      39.82      70.85    1610.36      -0.10       6.24      12.67   -1355.52
                           18.25   -1276.30      70.94      -1.96    1610.36     -70.82       0.20      -0.99   -1355.74     -12.70

   31   7.2  1.5  1.5      20.24   -1415.17      78.66      -1.42     926.93     -40.76       0.12      -0.45   -1502.67     -14.05
                            7.62      60.02    1077.84     -54.20     -96.36   -2190.65       0.32      -8.47     -10.67    1143.41

   32   8.2  1.5  1.5       6.10    -427.17      23.74       4.01   -3064.06     134.67      -0.35       1.75    -453.53      -4.25
                           -7.14     -56.37   -1012.16     -57.69    -102.59   -2332.21      -0.00      -8.97      10.02   -1073.70

   33   9.2  1.5  1.5     -32.03    2239.74    -124.50       0.00       0.56      -0.03      -0.01       0.00    1357.55      12.69
                           16.11     124.76    2240.18      -0.01      -0.02      -0.69      -0.00      -0.00     -12.69    1358.70

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           20.85   -1456.93      80.99      -2.75    1878.77     -82.54       0.20      -1.21    3075.01      28.76

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.45      80.94    1453.42     -46.23     -82.25   -1869.61       0.13      -7.18      28.79   -3081.47

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.33      -0.01   -2131.85      -0.83      54.16      -6.22    -363.89      -0.70       0.00

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.13    1477.15     -82.11      -2.24    1852.33     -81.44       0.22      -1.14    1571.26      14.67

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.46     -82.07   -1473.55     -46.00     -81.83   -1859.78      -0.31      -7.19      14.63   -1565.39

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -633.94       1.54       1.47      -8.47    3668.43      -0.01       0.02

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -390.38      -5.40       3.26      11.56       0.43      -0.36   -3602.25      -6.30       0.64      -0.33

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1664.28     -23.08      13.10      -2.73      -0.07      -0.06     845.32       1.47       2.72      -2.30

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2590.03     -35.90      20.64      -0.00       0.01      -0.01      -0.08      -0.00       2.41      -1.88

   43   1.2  1.5 -0.5    -729.72     -10.12       5.65      -3.02      -0.12      -0.06     940.26       1.65      -2.38       2.19
                            0.00      -0.17       0.01    -689.99       0.07      13.85      -3.68     832.74       0.34      -0.02

   44   2.2  1.5 -0.5      -0.00       0.00      -0.00     368.66       0.49     -13.07      -0.59    1016.60       0.00      -0.00
                         -729.75     -10.10       5.80       3.02       0.08      -0.14    -940.58      -1.65      -2.38       1.84

   45   3.2  1.5 -0.5      -5.06     -40.47    -726.76     -23.14     -41.14    -935.10      -0.13      -3.64     -14.39    1540.55
                           10.40    -726.89      40.41       1.29    -935.50      41.16      -0.11       0.41    1540.66      14.42

   46   4.2  1.5 -0.5    -739.73     -10.25       5.89       2.98       0.10      -0.14    -927.00      -1.62       1.21      -0.94
                            0.00       0.00       0.00   -1429.84      -0.70      40.01      -2.51   -1191.73      -0.00       0.03

   47   5.2  1.5 -0.5       0.00      -0.06       0.00    1748.21       0.17     -40.77       6.73    -638.68      -0.07       0.02
                         -739.74     -10.27       5.77      -2.97      -0.10       0.12     926.48       1.62       1.22      -1.06

   48   6.2  1.5 -0.5      -5.30     -41.04    -736.91      22.99      40.90     929.74      -0.06       3.60       7.32    -782.61
                          -10.54     736.87     -40.96       1.13    -929.74      40.89      -0.11       0.57     782.74       7.33

   49   7.2  1.5 -0.5      11.69    -817.05      45.41      -0.82     535.17     -23.54       0.07      -0.26    -867.57      -8.11
                           -4.40     -34.66    -622.29      31.29      55.63    1264.77      -0.19       4.89       6.16    -660.15

   50   8.2  1.5 -0.5       3.52    -246.62      13.71       2.32   -1769.03      77.75      -0.20       1.01    -261.84      -2.45
                            4.12      32.54     584.37      33.31      59.23    1346.50       0.00       5.18      -5.79     619.90

   51   9.2  1.5 -0.5     -18.49    1293.11     -71.88       0.00       0.32      -0.01      -0.00       0.00     783.78       7.33
                           -9.30     -72.03   -1293.37       0.01       0.01       0.40       0.00       0.00       7.33    -784.44

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

    1   1.2  0.5  0.5       0.00       0.00      -0.00     404.37    7274.28     -11.44     -26.43    -600.93      -4.28       6.99
                           -0.00     867.45       0.00   -7274.79     405.14      -3.95     601.00     -26.35       8.64       3.48

    2   2.2  0.5  0.5       0.00       0.00    -404.37       0.00     104.04    -238.73      -0.68       0.10     -33.08    -651.29
                            0.41      12.02    7274.79      -0.00     -52.35     -22.84       8.41       0.04    -600.79      28.59

    3   3.2  0.5  0.5       0.00       0.00   -7274.28    -104.04       0.00      15.31       0.30       4.23    -600.73      35.17
                            0.47      -6.91    -405.14      52.35       0.00    -444.61      -4.61       9.15      31.03     532.47

    4   4.2  0.5  0.5       0.00       0.00      11.44     238.73     -15.31      -0.00    5055.29    -213.70      67.20      -5.18
                         2847.11       0.00       3.95      22.84     444.61      -0.00     190.32    4133.32      -3.73     -69.44

    5   5.2  0.5  0.5       0.00       0.00      26.43       0.68      -0.30   -5055.29       0.00     118.21      98.93    1854.14
                           -2.61       0.00    -601.00      -8.41       4.61    -190.32      -0.00       7.49    2692.42    -147.08

    6   6.2  0.5  0.5       0.00       0.00     600.93      -0.10      -4.23     213.70    -118.21      -0.00    2692.71     -76.71
                          -76.06      -0.00      26.35      -0.04      -9.15   -4133.32      -7.49      -0.00    -125.60   -3451.47

    7   7.2  0.5  0.5       0.00       0.00       4.28      33.08     600.73     -67.20     -98.93   -2692.71      -0.00     -10.18
                            8.28       0.01      -8.64     600.79     -31.03       3.73   -2692.42     125.60       0.00       1.92

    8   8.2  0.5  0.5       0.00       0.00      -6.99     651.29     -35.17       5.18   -1854.14      76.71      10.18      -0.00
                          495.21      -0.00      -3.48     -28.59    -532.47      69.44     147.08    3451.47      -1.92      -0.00

    9   9.2  0.5  0.5       0.00       0.00      -2.98      -0.01       0.51    -994.56      -1.15      38.99      24.95   -2714.01
                           -1.12      -7.51    -318.90      -4.91       2.57      25.36      -3.58      -0.55   -2503.36     -25.12

   10  10.2  0.5  0.5       0.00       0.00     318.91       4.40      -2.92      -1.33       0.14      -3.01   -2503.43     -29.77
                           -1.46       5.78      -2.99       0.34       0.00   -1852.43       3.73      37.10     -33.24    2218.76

   11  11.2  0.5  0.5   62332.09       0.00       2.67      17.74     318.46      63.38     110.00    2500.32      -3.19      13.79
                           -0.00   -4873.18       5.04    -318.44      17.70       0.78   -2501.14     109.99       3.53       4.20

   12  12.2  0.5  0.5       0.00   62672.32      12.39    -866.13      48.15       0.00      -0.01      -0.00       0.00      -0.00
                         4873.18      -0.00      -6.23     -48.24    -866.20       0.00       0.00       0.01       0.00      -0.00

   13   1.2  0.5 -0.5       2.67      12.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.04       6.23      -0.00     -58.05    -100.97    -684.36      -4.83       9.00      -1.99    -119.02

   14   2.2  0.5 -0.5      17.74    -866.13       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                          318.44      48.24      58.05      -0.00    7285.33       5.40      -7.03     601.61      -0.07       0.69

   15   3.2  0.5 -0.5     318.46      48.15       0.00       0.00       0.05       0.00       0.00       0.00       0.00       0.00
                          -17.70     866.20     100.97   -7285.33       0.00       5.35    -601.59      -7.10      -0.05       1.19

   16   4.2  0.5 -0.5      63.38       0.00       0.00       0.00       0.00   61721.08       0.00       0.00       0.00       0.00
                           -0.78      -0.00     684.36      -5.40      -5.35      -0.00     -66.56      -0.46    -923.73      15.46

   17   5.2  0.5 -0.5     110.00      -0.01       0.00       0.00       0.00       0.00   61721.10       0.00       0.00       0.00
                         2501.14      -0.00       4.83       7.03     601.59      66.56       0.00    2694.50       2.02      11.05

   18   6.2  0.5 -0.5    2500.32      -0.00       0.00       0.00       0.00       0.00       0.00   61721.10       0.00       0.00
                         -109.99      -0.01      -9.00    -601.61       7.10       0.46   -2694.50      -0.00       1.95       0.40

   19   7.2  0.5 -0.5      -3.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61721.12       0.00
                           -3.53      -0.00       1.99       0.07       0.05     923.73      -2.02      -1.95      -0.00   -5310.94

   20   8.2  0.5 -0.5      13.79      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61721.08
                           -4.20       0.00     119.02      -0.69      -1.19     -15.46     -11.05      -0.40    5310.94       0.00

   21   9.2  0.5 -0.5       8.86   -4872.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -947.40     -45.55      -2.25     -20.71    -318.28      66.21     133.37    2499.12      -0.16      10.40

   22  10.2  0.5 -0.5    -947.41     -45.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.85    4872.99      -4.58     318.26     -20.68       0.22   -2500.01     133.40      -0.30       1.03

   23  11.2  0.5 -0.5      -0.00       7.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       5.85      -0.00       0.41       0.47    2847.11      -2.61     -76.06       8.28     495.21

   24  12.2  0.5 -0.5      -7.46      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.85       0.00     867.45      12.02      -6.91       0.00       0.00      -0.00       0.01      -0.00

   25   1.2  1.5  1.5   -2663.47      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01   -2570.82      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.2  1.5  1.5       0.00   -2571.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2662.44       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.2  1.5  1.5       3.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.07       0.57      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.2  1.5  1.5    1360.99      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -5.32      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.2  1.5  1.5      -0.01      -4.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1360.60       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.2  1.5  1.5      -1.62       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.06       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5       2.30       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.50      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.2  1.5  1.5       0.68       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.42       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.2  1.5  1.5      -2.06      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.62      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00       0.00    -729.72     -10.12       5.65      -3.02      -0.12      -0.06     940.26       1.65
                           -4.68      -0.69      -0.00       0.17      -0.01     689.99      -0.07     -13.85       3.68    -832.74

   35   2.2  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00     368.66       0.49     -13.07      -0.59    1016.60
                           -3.72      -0.02     729.75      10.10      -5.80      -3.02      -0.08       0.14     940.58       1.65

   36   3.2  1.5  0.5       0.00       0.00      -5.06     -40.47    -726.76     -23.14     -41.14    -935.10      -0.13      -3.64
                            0.02   -2970.87     -10.40     726.89     -40.41      -1.29     935.50     -41.16       0.11      -0.41

   37   4.2  1.5  0.5       0.00       0.00    -739.73     -10.25       5.89       2.98       0.10      -0.14    -927.00      -1.62
                           -2.42       0.02      -0.00      -0.00      -0.00    1429.84       0.70     -40.01       2.51    1191.73

   38   5.2  1.5  0.5       0.00       0.00       0.00      -0.06       0.00    1748.21       0.17     -40.77       6.73    -638.68
                           -2.00       0.00     739.74      10.27      -5.77       2.97       0.10      -0.12    -926.48      -1.62

   39   6.2  1.5  0.5       0.00       0.00      -5.30     -41.04    -736.91      22.99      40.90     929.74      -0.06       3.60
                           -0.00       6.08      10.54    -736.87      40.96      -1.13     929.74     -40.89       0.11      -0.57

   40   7.2  1.5  0.5       0.00       0.00      11.69    -817.05      45.41      -0.82     535.17     -23.54       0.07      -0.26
                          414.03       0.01       4.40      34.66     622.29     -31.29     -55.63   -1264.77       0.19      -4.89

   41   8.2  1.5  0.5       0.00       0.00       3.52    -246.62      13.71       2.32   -1769.03      77.75      -0.20       1.01
                         1766.68       0.01      -4.12     -32.54    -584.37     -33.31     -59.23   -1346.50      -0.00      -5.18

   42   9.2  1.5  0.5       0.00       0.00     -18.49    1293.11     -71.88       0.00       0.32      -0.01      -0.00       0.00
                         1566.70       0.00       9.30      72.03    1293.37      -0.01      -0.01      -0.40      -0.00      -0.00

   43   1.2  1.5 -0.5   -1537.75      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1484.26      20.85   -1456.93      80.99      -2.75    1878.77     -82.54       0.20      -1.21

   44   2.2  1.5 -0.5       0.00   -1484.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1537.16      -0.00      10.45      80.94    1453.42     -46.23     -82.25   -1869.61       0.13      -7.18

   45   3.2  1.5 -0.5       2.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.35      -0.33      -0.00       0.33      -0.01   -2131.85      -0.83      54.16      -6.22    -363.89

   46   4.2  1.5 -0.5     785.77      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       3.07     -21.13    1477.15     -82.11      -2.24    1852.33     -81.44       0.22      -1.14

   47   5.2  1.5 -0.5      -0.00      -2.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          785.54      -0.00     -10.46     -82.07   -1473.55     -46.00     -81.83   -1859.78      -0.31      -7.19

   48   6.2  1.5 -0.5      -0.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.19      -0.00      -0.00      -0.00       0.00    -633.94       1.54       1.47      -8.47    3668.43

   49   7.2  1.5 -0.5       1.33       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.86       0.00    -390.38      -5.40       3.26      11.56       0.43      -0.36   -3602.25      -6.30

   50   8.2  1.5 -0.5       0.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.82      -0.00   -1664.28     -23.08      13.10      -2.73      -0.07      -0.06     845.32       1.47

   51   9.2  1.5 -0.5      -1.19      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.94       0.01   -2590.03     -35.90      20.64      -0.00       0.01      -0.01      -0.08      -0.00

   52   1.2  1.5 -1.5       0.00       0.00   -1263.91     -17.52       9.78      -5.23      -0.21      -0.11    1628.57       2.86
                           -0.00      -0.00       0.00      -0.29       0.02   -1195.09       0.12      23.99      -6.37    1442.34

   53   2.2  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00     638.53       0.85     -22.63      -1.03    1760.81
                           -0.00      -0.00   -1263.96     -17.50      10.05       5.23       0.14      -0.24   -1629.13      -2.86

   54   3.2  1.5 -1.5       0.00       0.00      -8.76     -70.10   -1258.79     -40.07     -71.25   -1619.65      -0.22      -6.30
                           -0.00      -0.00      18.01   -1259.01      69.99       2.23   -1620.34      71.29      -0.19       0.71

   55   4.2  1.5 -1.5       0.00       0.00   -1281.26     -17.75      10.21       5.16       0.17      -0.24   -1605.62      -2.81
                           -0.00      -0.00       0.00       0.00       0.01   -2476.55      -1.21      69.29      -4.36   -2064.14

   56   5.2  1.5 -1.5       0.00       0.00       0.00      -0.10       0.00    3028.00       0.29     -70.62      11.65   -1106.23
                           -0.00      -0.00   -1281.26     -17.78       9.99      -5.14      -0.17       0.21    1604.70       2.81

   57   6.2  1.5 -1.5       0.00       0.00      -9.17     -71.08   -1276.36      39.82      70.85    1610.36      -0.10       6.24
                           -0.00      -0.00     -18.25    1276.30     -70.94       1.96   -1610.36      70.82      -0.20       0.99

   58   7.2  1.5 -1.5       0.00       0.00      20.24   -1415.17      78.66      -1.42     926.93     -40.76       0.12      -0.45
                           -0.00      -0.00      -7.62     -60.02   -1077.84      54.20      96.36    2190.65      -0.32       8.47

   59   8.2  1.5 -1.5       0.00       0.00       6.10    -427.17      23.74       4.01   -3064.06     134.67      -0.35       1.75
                           -0.00      -0.00       7.14      56.37    1012.16      57.69     102.59    2332.21       0.00       8.97

   60   9.2  1.5 -1.5       0.00       0.00     -32.03    2239.74    -124.50       0.00       0.56      -0.03      -0.01       0.00
                           -0.00      -0.00     -16.11    -124.76   -2240.18       0.01       0.02       0.69       0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5       2.98    -318.91      -2.67     -12.39   -1263.91      -0.00      -8.76   -1281.26       0.00      -9.17
                          318.90       2.99      -5.04       6.23       0.00   -1263.96      18.01       0.00   -1281.26     -18.25

    2   2.2  0.5  0.5       0.01      -4.40     -17.74     866.13     -17.52       0.00     -70.10     -17.75      -0.10     -71.08
                            4.91      -0.34     318.44      48.24      -0.29     -17.50   -1259.01       0.00     -17.78    1276.30

    3   3.2  0.5  0.5      -0.51       2.92    -318.46     -48.15       9.78      -0.00   -1258.79      10.21       0.00   -1276.36
                           -2.57      -0.00     -17.70     866.20       0.02      10.05      69.99       0.01       9.99     -70.94

    4   4.2  0.5  0.5     994.56       1.33     -63.38      -0.00      -5.23     638.53     -40.07       5.16    3028.00      39.82
                          -25.36    1852.43      -0.78      -0.00   -1195.09       5.23       2.23   -2476.55      -5.14       1.96

    5   5.2  0.5  0.5       1.15      -0.14    -110.00       0.01      -0.21       0.85     -71.25       0.17       0.29      70.85
                            3.58      -3.73    2501.14      -0.00       0.12       0.14   -1620.34      -1.21      -0.17   -1610.36

    6   6.2  0.5  0.5     -38.99       3.01   -2500.32       0.00      -0.11     -22.63   -1619.65      -0.24     -70.62    1610.36
                            0.55     -37.10    -109.99      -0.01      23.99      -0.24      71.29      69.29       0.21      70.82

    7   7.2  0.5  0.5     -24.95    2503.43       3.19      -0.00    1628.57      -1.03      -0.22   -1605.62      11.65      -0.10
                         2503.36      33.24      -3.53      -0.00      -6.37   -1629.13      -0.19      -4.36    1604.70      -0.20

    8   8.2  0.5  0.5    2714.01      29.77     -13.79       0.00       2.86    1760.81      -6.30      -2.81   -1106.23       6.24
                           25.12   -2218.76      -4.20       0.00    1442.34      -2.86       0.71   -2064.14       2.81       0.99

    9   9.2  0.5  0.5      -0.00      -1.45      -8.86    4872.95      -4.12       0.01     -24.92       2.10      -0.12      12.67
                           -0.00       1.14    -947.40     -45.55       0.60      -4.12    2668.51      -0.01       2.11    1355.74

   10  10.2  0.5  0.5       1.45       0.00     947.41      45.55       3.79      -0.01    2668.31      -1.63       0.04   -1355.52
                           -1.14      -0.00      -8.85    4872.99      -0.04       3.18      24.97       0.04      -1.84      12.70

   11  11.2  0.5  0.5       8.86    -947.41      -0.00      -7.46   -2663.47       0.00       3.82    1360.99      -0.01      -1.62
                          947.40       8.85      -0.00       5.85       0.01   -2662.44      -4.07       0.00    1360.60      -2.06

   12  12.2  0.5  0.5   -4872.95     -45.55       7.46      -0.00      -0.02   -2571.89       0.00      -0.00      -4.93       0.01
                           45.55   -4872.99      -5.85      -0.00    2570.82      -0.01      -0.57       5.32      -0.01      -0.01

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.25       4.58       0.00    -867.45       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           20.71    -318.26      -0.41     -12.02       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          318.28      20.68      -0.47       6.91       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -66.21      -0.22   -2847.11      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -133.37    2500.01       2.61      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2499.12    -133.40      76.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.16       0.30      -8.28      -0.01       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.40      -1.03    -495.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.2  0.5 -0.5   62332.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     947.44       1.12       7.51       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.2  0.5 -0.5       0.00   62332.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -947.44      -0.00       1.46      -5.78       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.2  0.5 -0.5       0.00       0.00   62332.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.12      -1.46       0.00    4873.18       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.2  0.5 -0.5       0.00       0.00       0.00   62672.32       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.51       5.78   -4873.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00   60525.48       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    3767.96      -0.00       0.00    4054.97      -0.00

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   60525.55       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -3767.96       0.00       0.86   -4054.96      -0.00      -0.00

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   60525.53       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.86       0.00      -0.00      -0.55      -0.00

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61402.22       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    4054.96       0.00       0.00    3770.13      -0.00

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61402.27       0.00
                           -0.00      -0.00      -0.00      -0.00   -4054.97       0.00       0.55   -3770.13       0.00      -0.93

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61402.26
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.93       0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.65      -0.00    1069.22       0.38      -0.00   -7340.99

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.61       0.00    4558.55      -0.40      -0.00    1721.87

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       1.51       0.00    6641.91      -0.00      -0.00       0.00

   34   1.2  1.5  0.5      -2.38       2.19   -1537.75      -0.01      -0.00      -0.00   -2175.44      -0.53       0.00    2341.14
                           -0.34       0.02      -0.00   -1484.26       0.00       0.49       0.00       0.00      -0.14      -0.00

   35   2.2  1.5  0.5       0.00      -0.00       0.00   -1484.88       0.00      -0.00      -0.00       0.00       0.18      -0.00
                            2.38      -1.84    1537.16       0.00      -0.49       0.00   -2175.46      -0.00       0.00   -2341.14

   36   3.2  1.5  0.5     -14.39    1540.55       2.21       0.00    2175.44       0.00      -0.00   -2341.13      -0.00      -0.53
                        -1540.66     -14.42       2.35       0.33      -0.00    2175.46       0.00       0.00   -2341.14       0.00

   37   4.2  1.5  0.5       1.21      -0.94     785.77      -0.00       0.53      -0.00    2341.13      -0.00      -0.00   -2176.68
                            0.00      -0.03      -0.00      -3.07      -0.00       0.00      -0.00       0.00       0.03      -0.00

   38   5.2  1.5  0.5      -0.07       0.02      -0.00      -2.85      -0.00      -0.18       0.00       0.00       0.00       0.00
                           -1.22       1.06    -785.54       0.00       0.14      -0.00    2341.14      -0.03       0.00    2176.68

   39   6.2  1.5  0.5       7.32    -782.61      -0.93       0.00   -2341.14       0.00       0.53    2176.68      -0.00      -0.00
                         -782.74      -7.33       1.19       0.00       0.00    2341.14      -0.00       0.00   -2176.68       0.00

   40   7.2  1.5  0.5    -867.57      -8.11       1.33       0.01      -0.00   -2587.94       0.00       0.00    1258.22      -0.00
                           -6.16     660.15       0.86      -0.00   -1970.61       0.00       0.21    2980.09      -0.00      -0.22

   41   8.2  1.5  0.5    -261.84      -2.45       0.39       0.00       0.00    -781.31      -0.00      -0.00   -4167.56       0.00
                            5.79    -619.90      -0.82       0.00    1850.56      -0.00      -0.17    3173.43       0.00       0.23

   42   9.2  1.5  0.5     783.78       7.33      -1.19      -0.01      -0.00    3834.70      -0.00       0.00       0.00      -0.00
                           -7.33     784.44       0.94      -0.01   -3834.70      -0.00       0.87      -0.00      -0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         3075.01      28.76      -4.68      -0.69      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           28.79   -3081.47      -3.72      -0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.70       0.00       0.02   -2970.87      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1571.26      14.67      -2.42       0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           14.63   -1565.39      -2.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.02      -0.00       6.08      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.64      -0.33     414.03       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.72      -2.30    1766.68       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.41      -1.88    1566.70       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5      -4.12       3.79   -2663.47      -0.02       0.00       0.00       0.00       0.00       0.00       0.00
                            0.60      -0.04       0.01    2570.82      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5       0.01      -0.01       0.00   -2571.89       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.12       3.18   -2662.44      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5     -24.92    2668.31       3.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2668.51      24.97      -4.07      -0.57      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5       2.10      -1.63    1360.99      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.04       0.00       5.32      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5      -0.12       0.04      -0.01      -4.93       0.00       0.00       0.00       0.00       0.00       0.00
                            2.11      -1.84    1360.60      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5      12.67   -1355.52      -1.62       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                         1355.74      12.70      -2.06      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5   -1502.67     -14.05       2.30       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           10.67   -1143.41      -1.50       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5    -453.53      -4.25       0.68       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.02    1073.70       1.42      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5    1357.55      12.69      -2.06      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           12.69   -1358.70      -1.62       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5      20.24       6.10     -32.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.62       7.14     -16.11     -20.85     -10.45       0.00      21.13      10.46       0.00     390.38

    2   2.2  0.5  0.5   -1415.17    -427.17    2239.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -60.02      56.37    -124.76    1456.93     -80.94      -0.33   -1477.15      82.07       0.00       5.40

    3   3.2  0.5  0.5      78.66      23.74    -124.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1077.84    1012.16   -2240.18     -80.99   -1453.42       0.01      82.11    1473.55      -0.00      -3.26

    4   4.2  0.5  0.5      -1.42       4.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           54.20      57.69       0.01       2.75      46.23    2131.85       2.24      46.00     633.94     -11.56

    5   5.2  0.5  0.5     926.93   -3064.06       0.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           96.36     102.59       0.02   -1878.77      82.25       0.83   -1852.33      81.83      -1.54      -0.43

    6   6.2  0.5  0.5     -40.76     134.67      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2190.65    2332.21       0.69      82.54    1869.61     -54.16      81.44    1859.78      -1.47       0.36

    7   7.2  0.5  0.5       0.12      -0.35      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.32       0.00       0.00      -0.20      -0.13       6.22      -0.22       0.31       8.47    3602.25

    8   8.2  0.5  0.5      -0.45       1.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.47       8.97       0.00       1.21       7.18     363.89       1.14       7.19   -3668.43       6.30

    9   9.2  0.5  0.5   -1502.67    -453.53    1357.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.67     -10.02      12.69   -3075.01     -28.79       0.70   -1571.26     -14.63       0.01      -0.64

   10  10.2  0.5  0.5     -14.05      -4.25      12.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1143.41    1073.70   -1358.70     -28.76    3081.47      -0.00     -14.67    1565.39      -0.02       0.33

   11  11.2  0.5  0.5       2.30       0.68      -2.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.50       1.42      -1.62       4.68       3.72      -0.02       2.42       2.00       0.00    -414.03

   12  12.2  0.5  0.5       0.01       0.01      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.01       0.69       0.02    2970.87      -0.02      -0.00      -6.08      -0.01

   13   1.2  0.5 -0.5       0.00       0.00       0.00    -729.72      -0.00      -5.06    -739.73       0.00      -5.30      11.69
                            0.00       0.00       0.00       0.00    -729.75      10.40       0.00    -739.74     -10.54      -4.40

   14   2.2  0.5 -0.5       0.00       0.00       0.00     -10.12       0.00     -40.47     -10.25      -0.06     -41.04    -817.05
                            0.00       0.00       0.00      -0.17     -10.10    -726.89       0.00     -10.27     736.87     -34.66

   15   3.2  0.5 -0.5       0.00       0.00       0.00       5.65      -0.00    -726.76       5.89       0.00    -736.91      45.41
                            0.00       0.00       0.00       0.01       5.80      40.41       0.00       5.77     -40.96    -622.29

   16   4.2  0.5 -0.5       0.00       0.00       0.00      -3.02     368.66     -23.14       2.98    1748.21      22.99      -0.82
                            0.00       0.00       0.00    -689.99       3.02       1.29   -1429.84      -2.97       1.13      31.29

   17   5.2  0.5 -0.5       0.00       0.00       0.00      -0.12       0.49     -41.14       0.10       0.17      40.90     535.17
                            0.00       0.00       0.00       0.07       0.08    -935.50      -0.70      -0.10    -929.74      55.63

   18   6.2  0.5 -0.5       0.00       0.00       0.00      -0.06     -13.07    -935.10      -0.14     -40.77     929.74     -23.54
                            0.00       0.00       0.00      13.85      -0.14      41.16      40.01       0.12      40.89    1264.77

   19   7.2  0.5 -0.5       0.00       0.00       0.00     940.26      -0.59      -0.13    -927.00       6.73      -0.06       0.07
                            0.00       0.00       0.00      -3.68    -940.58      -0.11      -2.51     926.48      -0.11      -0.19

   20   8.2  0.5 -0.5       0.00       0.00       0.00       1.65    1016.60      -3.64      -1.62    -638.68       3.60      -0.26
                            0.00       0.00       0.00     832.74      -1.65       0.41   -1191.73       1.62       0.57       4.89

   21   9.2  0.5 -0.5       0.00       0.00       0.00      -2.38       0.00     -14.39       1.21      -0.07       7.32    -867.57
                            0.00       0.00       0.00       0.34      -2.38    1540.66      -0.00       1.22     782.74       6.16

   22  10.2  0.5 -0.5       0.00       0.00       0.00       2.19      -0.00    1540.55      -0.94       0.02    -782.61      -8.11
                            0.00       0.00       0.00      -0.02       1.84      14.42       0.03      -1.06       7.33    -660.15

   23  11.2  0.5 -0.5       0.00       0.00       0.00   -1537.75       0.00       2.21     785.77      -0.00      -0.93       1.33
                            0.00       0.00       0.00       0.00   -1537.16      -2.35       0.00     785.54      -1.19      -0.86

   24  12.2  0.5 -0.5       0.00       0.00       0.00      -0.01   -1484.88       0.00      -0.00      -2.85       0.00       0.01
                            0.00       0.00       0.00    1484.26      -0.00      -0.33       3.07      -0.00      -0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00      -0.00       0.00    2175.44       0.53      -0.00   -2341.14      -0.00
                           -0.65      -0.61      -1.51      -0.00       0.49       0.00       0.00      -0.14      -0.00    1970.61

   26   2.2  1.5  1.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.18       0.00   -2587.94
                            0.00      -0.00      -0.00      -0.49      -0.00   -2175.46      -0.00       0.00   -2341.14      -0.00

   27   3.2  1.5  1.5       0.00       0.00       0.00   -2175.44      -0.00      -0.00    2341.13       0.00       0.53       0.00
                        -1069.22   -4558.55   -6641.91      -0.00    2175.46      -0.00       0.00   -2341.14       0.00      -0.21

   28   4.2  1.5  1.5       0.00       0.00       0.00      -0.53       0.00   -2341.13      -0.00       0.00    2176.68       0.00
                           -0.38       0.40       0.00      -0.00       0.00      -0.00      -0.00       0.03      -0.00   -2980.09

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.18      -0.00      -0.00       0.00      -0.00    1258.22
                            0.00       0.00       0.00       0.14      -0.00    2341.14      -0.03      -0.00    2176.68       0.00

   30   6.2  1.5  1.5       0.00       0.00       0.00    2341.14      -0.00      -0.53   -2176.68       0.00      -0.00      -0.00
                         7340.99   -1721.87      -0.00       0.00    2341.14      -0.00       0.00   -2176.68      -0.00       0.22

   31   7.2  1.5  1.5   61402.22       0.00       0.00       0.00    2587.94      -0.00      -0.00   -1258.22       0.00      -0.00
                            0.00       0.00       0.00   -1970.61       0.00       0.21    2980.09      -0.00      -0.22      -0.00

   32   8.2  1.5  1.5       0.00   61402.25       0.00      -0.00     781.31       0.00       0.00    4167.56      -0.00      -0.29
                           -0.00       0.00      -0.00    1850.56      -0.00      -0.17    3173.43       0.00       0.23       0.00

   33   9.2  1.5  1.5       0.00       0.00   62709.52       0.00   -3834.70       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00   -3834.70      -0.00       0.87      -0.00      -0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00      -0.00       0.00   60525.48       0.00       0.00       0.00       0.00       0.00       0.00
                         1970.61   -1850.56    3834.70      -0.00    1255.99      -0.00       0.00    1351.66      -0.00      -0.22

   35   2.2  1.5  0.5    2587.94     781.31   -3834.70       0.00   60525.55       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00   -1255.99       0.00       0.29   -1351.65      -0.00      -0.00       0.00

   36   3.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00   60525.53       0.00       0.00       0.00       0.00
                           -0.21       0.17      -0.87       0.00      -0.29       0.00      -0.00      -0.18      -0.00    -356.41

   37   4.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00   61402.22       0.00       0.00       0.00
                        -2980.09   -3173.43       0.00      -0.00    1351.65       0.00       0.00    1256.71      -0.00      -0.13

   38   5.2  1.5  0.5   -1258.22    4167.56      -0.00       0.00       0.00       0.00       0.00   61402.27       0.00       0.00
                            0.00      -0.00       0.00   -1351.66       0.00       0.18   -1256.71       0.00      -0.31       0.00

   39   6.2  1.5  0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   61402.26       0.00
                            0.22      -0.23      -0.00       0.00       0.00       0.00       0.00       0.31       0.00    2447.00

   40   7.2  1.5  0.5      -0.00      -0.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61402.22
                            0.00      -0.00      -0.00       0.22      -0.00     356.41       0.13      -0.00   -2447.00       0.00

   41   8.2  1.5  0.5       0.29       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.20       0.00    1519.52      -0.13      -0.00     573.96      -0.00

   42   9.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.50       0.00    2213.97      -0.00      -0.00       0.00      -0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00   -2511.98      -0.61       0.00    2703.31       0.00
                           -0.00      -0.00      -0.00       0.00       0.57       0.00       0.00      -0.16      -0.00    2275.46

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.21      -0.00    2988.29
                           -0.00      -0.00      -0.00      -0.57       0.00   -2512.00      -0.00       0.00   -2703.32      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00    2511.98       0.00      -0.00   -2703.30      -0.00      -0.61      -0.00
                           -0.00      -0.00      -0.00      -0.00    2512.00       0.00       0.00   -2703.32       0.00      -0.24

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.61      -0.00    2703.30      -0.00      -0.00   -2513.41      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.04      -0.00   -3441.11

   47   5.2  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.21       0.00       0.00       0.00       0.00   -1452.87
                           -0.00      -0.00      -0.00       0.16      -0.00    2703.32      -0.04       0.00    2513.41       0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00   -2703.31       0.00       0.61    2513.41      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00    2703.32      -0.00       0.00   -2513.41       0.00       0.26

   49   7.2  1.5 -0.5       0.00       0.00       0.00      -0.00   -2988.29       0.00       0.00    1452.87      -0.00      -0.00
                           -0.00      -0.00      -0.00   -2275.46       0.00       0.24    3441.11      -0.00      -0.26       0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00    -902.18      -0.00      -0.00   -4812.28       0.00       0.34
                           -0.00      -0.00      -0.00    2136.84      -0.00      -0.20    3664.36       0.00       0.26       0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00      -0.00    4427.93      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00   -4427.93      -0.00       1.01      -0.00      -0.00       0.00       0.00

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

    1   1.2  0.5  0.5       0.00       0.00    -729.72      -0.00      -5.06    -739.73       0.00      -5.30      11.69       3.52
                         1664.28    2590.03      -0.00     729.75     -10.40      -0.00     739.74      10.54       4.40      -4.12

    2   2.2  0.5  0.5       0.00       0.00     -10.12       0.00     -40.47     -10.25      -0.06     -41.04    -817.05    -246.62
                           23.08      35.90       0.17      10.10     726.89      -0.00      10.27    -736.87      34.66     -32.54

    3   3.2  0.5  0.5       0.00       0.00       5.65      -0.00    -726.76       5.89       0.00    -736.91      45.41      13.71
                          -13.10     -20.64      -0.01      -5.80     -40.41      -0.00      -5.77      40.96     622.29    -584.37

    4   4.2  0.5  0.5       0.00       0.00      -3.02     368.66     -23.14       2.98    1748.21      22.99      -0.82       2.32
                            2.73       0.00     689.99      -3.02      -1.29    1429.84       2.97      -1.13     -31.29     -33.31

    5   5.2  0.5  0.5       0.00       0.00      -0.12       0.49     -41.14       0.10       0.17      40.90     535.17   -1769.03
                            0.07      -0.01      -0.07      -0.08     935.50       0.70       0.10     929.74     -55.63     -59.23

    6   6.2  0.5  0.5       0.00       0.00      -0.06     -13.07    -935.10      -0.14     -40.77     929.74     -23.54      77.75
                            0.06       0.01     -13.85       0.14     -41.16     -40.01      -0.12     -40.89   -1264.77   -1346.50

    7   7.2  0.5  0.5       0.00       0.00     940.26      -0.59      -0.13    -927.00       6.73      -0.06       0.07      -0.20
                         -845.32       0.08       3.68     940.58       0.11       2.51    -926.48       0.11       0.19      -0.00

    8   8.2  0.5  0.5       0.00       0.00       1.65    1016.60      -3.64      -1.62    -638.68       3.60      -0.26       1.01
                           -1.47       0.00    -832.74       1.65      -0.41    1191.73      -1.62      -0.57      -4.89      -5.18

    9   9.2  0.5  0.5       0.00       0.00      -2.38       0.00     -14.39       1.21      -0.07       7.32    -867.57    -261.84
                           -2.72      -2.41      -0.34       2.38   -1540.66       0.00      -1.22    -782.74      -6.16       5.79

   10  10.2  0.5  0.5       0.00       0.00       2.19      -0.00    1540.55      -0.94       0.02    -782.61      -8.11      -2.45
                            2.30       1.88       0.02      -1.84     -14.42      -0.03       1.06      -7.33     660.15    -619.90

   11  11.2  0.5  0.5       0.00       0.00   -1537.75       0.00       2.21     785.77      -0.00      -0.93       1.33       0.39
                        -1766.68   -1566.70      -0.00    1537.16       2.35      -0.00    -785.54       1.19       0.86      -0.82

   12  12.2  0.5  0.5       0.00       0.00      -0.01   -1484.88       0.00      -0.00      -2.85       0.00       0.01       0.00
                           -0.01      -0.00   -1484.26       0.00       0.33      -3.07       0.00       0.00      -0.00       0.00

   13   1.2  0.5 -0.5       3.52     -18.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.12      -9.30     -20.85     -10.45       0.00      21.13      10.46       0.00     390.38    1664.28

   14   2.2  0.5 -0.5    -246.62    1293.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           32.54     -72.03    1456.93     -80.94      -0.33   -1477.15      82.07       0.00       5.40      23.08

   15   3.2  0.5 -0.5      13.71     -71.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          584.37   -1293.37     -80.99   -1453.42       0.01      82.11    1473.55      -0.00      -3.26     -13.10

   16   4.2  0.5 -0.5       2.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           33.31       0.01       2.75      46.23    2131.85       2.24      46.00     633.94     -11.56       2.73

   17   5.2  0.5 -0.5   -1769.03       0.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           59.23       0.01   -1878.77      82.25       0.83   -1852.33      81.83      -1.54      -0.43       0.07

   18   6.2  0.5 -0.5      77.75      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1346.50       0.40      82.54    1869.61     -54.16      81.44    1859.78      -1.47       0.36       0.06

   19   7.2  0.5 -0.5      -0.20      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.20      -0.13       6.22      -0.22       0.31       8.47    3602.25    -845.32

   20   8.2  0.5 -0.5       1.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.18       0.00       1.21       7.18     363.89       1.14       7.19   -3668.43       6.30      -1.47

   21   9.2  0.5 -0.5    -261.84     783.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.79       7.33   -3075.01     -28.79       0.70   -1571.26     -14.63       0.01      -0.64      -2.72

   22  10.2  0.5 -0.5      -2.45       7.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          619.90    -784.44     -28.76    3081.47      -0.00     -14.67    1565.39      -0.02       0.33       2.30

   23  11.2  0.5 -0.5       0.39      -1.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.82      -0.94       4.68       3.72      -0.02       2.42       2.00       0.00    -414.03   -1766.68

   24  12.2  0.5 -0.5       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.69       0.02    2970.87      -0.02      -0.00      -6.08      -0.01      -0.01

   25   1.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1850.56    3834.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5    -781.31    3834.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.17      -0.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -3173.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5   -4167.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.23      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5       0.29      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00      -0.00       0.00    2511.98       0.61      -0.00   -2703.31      -0.00       0.00
                           -0.20      -0.50      -0.00       0.57       0.00       0.00      -0.16      -0.00    2275.46   -2136.84

   35   2.2  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.21       0.00   -2988.29    -902.18
                           -0.00      -0.00      -0.57      -0.00   -2512.00      -0.00       0.00   -2703.32      -0.00       0.00

   36   3.2  1.5  0.5       0.00       0.00   -2511.98      -0.00      -0.00    2703.30       0.00       0.61       0.00      -0.00
                        -1519.52   -2213.97      -0.00    2512.00      -0.00       0.00   -2703.32       0.00      -0.24       0.20

   37   4.2  1.5  0.5       0.00       0.00      -0.61       0.00   -2703.30      -0.00       0.00    2513.41       0.00      -0.00
                            0.13       0.00      -0.00       0.00      -0.00      -0.00       0.04      -0.00   -3441.11   -3664.36

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.21      -0.00      -0.00       0.00      -0.00    1452.87   -4812.28
                            0.00       0.00       0.16      -0.00    2703.32      -0.04      -0.00    2513.41       0.00      -0.00

   39   6.2  1.5  0.5       0.00       0.00    2703.31      -0.00      -0.61   -2513.41       0.00      -0.00      -0.00       0.00
                         -573.96      -0.00       0.00    2703.32      -0.00       0.00   -2513.41      -0.00       0.26      -0.26

   40   7.2  1.5  0.5       0.00       0.00       0.00    2988.29      -0.00      -0.00   -1452.87       0.00      -0.00       0.34
                            0.00       0.00   -2275.46       0.00       0.24    3441.11      -0.00      -0.26      -0.00      -0.00

   41   8.2  1.5  0.5   61402.25       0.00      -0.00     902.18       0.00       0.00    4812.28      -0.00      -0.34       0.00
                            0.00      -0.00    2136.84      -0.00      -0.20    3664.36       0.00       0.26       0.00       0.00

   42   9.2  1.5  0.5       0.00   62709.52       0.00   -4427.93       0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00   -4427.93      -0.00       1.01      -0.00      -0.00       0.00       0.00      -0.00

   43   1.2  1.5 -0.5      -0.00       0.00   60525.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2136.84    4427.93       0.00   -1255.99       0.00      -0.00   -1351.66       0.00       0.22       0.20

   44   2.2  1.5 -0.5     902.18   -4427.93       0.00   60525.55       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    1255.99      -0.00      -0.29    1351.65       0.00       0.00      -0.00       0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00   60525.53       0.00       0.00       0.00       0.00       0.00
                            0.20      -1.01      -0.00       0.29      -0.00       0.00       0.18       0.00     356.41    1519.52

   46   4.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00   61402.22       0.00       0.00       0.00       0.00
                        -3664.36       0.00       0.00   -1351.65      -0.00      -0.00   -1256.71       0.00       0.13      -0.13

   47   5.2  1.5 -0.5    4812.28      -0.00       0.00       0.00       0.00       0.00   61402.27       0.00       0.00       0.00
                           -0.00       0.00    1351.66      -0.00      -0.18    1256.71      -0.00       0.31      -0.00      -0.00

   48   6.2  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   61402.26       0.00       0.00
                           -0.26      -0.00      -0.00      -0.00      -0.00      -0.00      -0.31      -0.00   -2447.00     573.96

   49   7.2  1.5 -0.5      -0.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61402.22       0.00
                           -0.00      -0.00      -0.22       0.00    -356.41      -0.13       0.00    2447.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61402.25
                           -0.00       0.00      -0.20      -0.00   -1519.52       0.13       0.00    -573.96       0.00      -0.00

   51   9.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.50      -0.00   -2213.97       0.00       0.00      -0.00       0.00      -0.00

   52   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00   -2175.44      -0.53       0.00    2341.14       0.00      -0.00
                           -0.00      -0.00       0.00       0.49       0.00       0.00      -0.14      -0.00    1970.61   -1850.56

   53   2.2  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.18      -0.00    2587.94     781.31
                           -0.00      -0.00      -0.49       0.00   -2175.46      -0.00       0.00   -2341.14      -0.00       0.00

   54   3.2  1.5 -1.5       0.00       0.00    2175.44       0.00      -0.00   -2341.13      -0.00      -0.53      -0.00       0.00
                           -0.00      -0.00      -0.00    2175.46       0.00       0.00   -2341.14       0.00      -0.21       0.17

   55   4.2  1.5 -1.5       0.00       0.00       0.53      -0.00    2341.13      -0.00      -0.00   -2176.68      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.03      -0.00   -2980.09   -3173.43

   56   5.2  1.5 -1.5       0.00       0.00      -0.00      -0.18       0.00       0.00       0.00       0.00   -1258.22    4167.56
                           -0.00      -0.00       0.14      -0.00    2341.14      -0.03       0.00    2176.68       0.00      -0.00

   57   6.2  1.5 -1.5       0.00       0.00   -2341.14       0.00       0.53    2176.68      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00    2341.14      -0.00       0.00   -2176.68       0.00       0.22      -0.23

   58   7.2  1.5 -1.5       0.00       0.00      -0.00   -2587.94       0.00       0.00    1258.22      -0.00      -0.00      -0.29
                           -0.00      -0.00   -1970.61       0.00       0.21    2980.09      -0.00      -0.22       0.00      -0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00    -781.31      -0.00      -0.00   -4167.56       0.00       0.29       0.00
                           -0.00      -0.00    1850.56      -0.00      -0.17    3173.43       0.00       0.23       0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00      -0.00    3834.70      -0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00   -3834.70      -0.00       0.87      -0.00      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.2  0.5  0.5     -18.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5    1293.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           72.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5     -71.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1293.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  0.5  0.5     783.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  0.5  0.5       7.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          784.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.2  0.5  0.5      -1.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.2  0.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00   -1263.91      -0.00      -8.76   -1281.26       0.00      -9.17      20.24       6.10     -32.03
                         2590.03      -0.00    1263.96     -18.01      -0.00    1281.26      18.25       7.62      -7.14      16.11

   14   2.2  0.5 -0.5       0.00     -17.52       0.00     -70.10     -17.75      -0.10     -71.08   -1415.17    -427.17    2239.74
                           35.90       0.29      17.50    1259.01      -0.00      17.78   -1276.30      60.02     -56.37     124.76

   15   3.2  0.5 -0.5       0.00       9.78      -0.00   -1258.79      10.21       0.00   -1276.36      78.66      23.74    -124.50
                          -20.64      -0.02     -10.05     -69.99      -0.01      -9.99      70.94    1077.84   -1012.16    2240.18

   16   4.2  0.5 -0.5       0.00      -5.23     638.53     -40.07       5.16    3028.00      39.82      -1.42       4.01       0.00
                            0.00    1195.09      -5.23      -2.23    2476.55       5.14      -1.96     -54.20     -57.69      -0.01

   17   5.2  0.5 -0.5       0.00      -0.21       0.85     -71.25       0.17       0.29      70.85     926.93   -3064.06       0.56
                           -0.01      -0.12      -0.14    1620.34       1.21       0.17    1610.36     -96.36    -102.59      -0.02

   18   6.2  0.5 -0.5       0.00      -0.11     -22.63   -1619.65      -0.24     -70.62    1610.36     -40.76     134.67      -0.03
                            0.01     -23.99       0.24     -71.29     -69.29      -0.21     -70.82   -2190.65   -2332.21      -0.69

   19   7.2  0.5 -0.5       0.00    1628.57      -1.03      -0.22   -1605.62      11.65      -0.10       0.12      -0.35      -0.01
                            0.08       6.37    1629.13       0.19       4.36   -1604.70       0.20       0.32      -0.00      -0.00

   20   8.2  0.5 -0.5       0.00       2.86    1760.81      -6.30      -2.81   -1106.23       6.24      -0.45       1.75       0.00
                            0.00   -1442.34       2.86      -0.71    2064.14      -2.81      -0.99      -8.47      -8.97      -0.00

   21   9.2  0.5 -0.5       0.00      -4.12       0.01     -24.92       2.10      -0.12      12.67   -1502.67    -453.53    1357.55
                           -2.41      -0.60       4.12   -2668.51       0.01      -2.11   -1355.74     -10.67      10.02     -12.69

   22  10.2  0.5 -0.5       0.00       3.79      -0.01    2668.31      -1.63       0.04   -1355.52     -14.05      -4.25      12.69
                            1.88       0.04      -3.18     -24.97      -0.04       1.84     -12.70    1143.41   -1073.70    1358.70

   23  11.2  0.5 -0.5       0.00   -2663.47       0.00       3.82    1360.99      -0.01      -1.62       2.30       0.68      -2.06
                        -1566.70      -0.01    2662.44       4.07      -0.00   -1360.60       2.06       1.50      -1.42       1.62

   24  12.2  0.5 -0.5       0.00      -0.02   -2571.89       0.00      -0.00      -4.93       0.01       0.01       0.01      -0.01
                           -0.00   -2570.82       0.01       0.57      -5.32       0.01       0.01      -0.00       0.00      -0.01

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

   34   1.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         4427.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.2  1.5  0.5    4427.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   3.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   6.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   7.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   9.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00      -0.00       0.00    2175.44       0.53      -0.00   -2341.14      -0.00       0.00      -0.00
                            0.50      -0.00       0.49       0.00       0.00      -0.14      -0.00    1970.61   -1850.56    3834.70

   44   2.2  1.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.18       0.00   -2587.94    -781.31    3834.70
                            0.00      -0.49      -0.00   -2175.46      -0.00       0.00   -2341.14      -0.00       0.00       0.00

   45   3.2  1.5 -0.5       0.00   -2175.44      -0.00      -0.00    2341.13       0.00       0.53       0.00      -0.00      -0.00
                         2213.97      -0.00    2175.46      -0.00       0.00   -2341.14       0.00      -0.21       0.17      -0.87

   46   4.2  1.5 -0.5       0.00      -0.53       0.00   -2341.13      -0.00       0.00    2176.68       0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.03      -0.00   -2980.09   -3173.43       0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.18      -0.00      -0.00       0.00      -0.00    1258.22   -4167.56       0.00
                           -0.00       0.14      -0.00    2341.14      -0.03      -0.00    2176.68       0.00      -0.00       0.00

   48   6.2  1.5 -0.5       0.00    2341.14      -0.00      -0.53   -2176.68       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00    2341.14      -0.00       0.00   -2176.68      -0.00       0.22      -0.23      -0.00

   49   7.2  1.5 -0.5       0.00       0.00    2587.94      -0.00      -0.00   -1258.22       0.00      -0.00       0.29      -0.00
                           -0.00   -1970.61       0.00       0.21    2980.09      -0.00      -0.22      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00      -0.00     781.31       0.00       0.00    4167.56      -0.00      -0.29       0.00       0.00
                            0.00    1850.56      -0.00      -0.17    3173.43       0.00       0.23       0.00       0.00       0.00

   51   9.2  1.5 -0.5   62709.52       0.00   -3834.70       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00   -3834.70      -0.00       0.87      -0.00      -0.00       0.00       0.00      -0.00       0.00

   52   1.2  1.5 -1.5       0.00   60525.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         3834.70       0.00   -3767.96       0.00      -0.00   -4054.97       0.00       0.65       0.61       1.51

   53   2.2  1.5 -1.5   -3834.70       0.00   60525.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    3767.96      -0.00      -0.86    4054.96       0.00       0.00      -0.00       0.00       0.00

   54   3.2  1.5 -1.5       0.00       0.00       0.00   60525.53       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.87      -0.00       0.86      -0.00       0.00       0.55       0.00    1069.22    4558.55    6641.91

   55   4.2  1.5 -1.5      -0.00       0.00       0.00       0.00   61402.22       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00   -4054.96      -0.00      -0.00   -3770.13       0.00       0.38      -0.40      -0.00

   56   5.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00   61402.27       0.00       0.00       0.00       0.00
                            0.00    4054.97      -0.00      -0.55    3770.13      -0.00       0.93      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   61402.26       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.93      -0.00   -7340.99    1721.87       0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61402.22       0.00       0.00
                           -0.00      -0.65       0.00   -1069.22      -0.38       0.00    7340.99      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61402.25       0.00
                            0.00      -0.61      -0.00   -4558.55       0.40       0.00   -1721.87       0.00      -0.00       0.00

   60   9.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62709.52
                           -0.00      -1.51      -0.00   -6641.91       0.00       0.00      -0.00       0.00      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -262.39515066    -0.03473378    -7623.18      0.00000000        0.00      0.0000
     2  -262.39515066    -0.03473378    -7623.18      0.00000000        0.00      0.0000
     3  -262.39514895    -0.03473208    -7622.81      0.00000171        0.37      0.0000
     4  -262.39514895    -0.03473208    -7622.81      0.00000171        0.37      0.0000
     5  -262.29529353     0.06512334    14292.92      0.09985712    21916.11      2.7173
     6  -262.29529353     0.06512334    14292.92      0.09985712    21916.11      2.7173
     7  -262.12346921     0.23694767    52004.00      0.27168145    59627.19      7.3928
     8  -262.12346921     0.23694767    52004.00      0.27168145    59627.19      7.3928
     9  -262.12346174     0.23695513    52005.64      0.27168891    59628.82      7.3930
    10  -262.12346174     0.23695513    52005.64      0.27168891    59628.82      7.3930
    11  -262.12322994     0.23718694    52056.52      0.27192072    59679.70      7.3993
    12  -262.12322994     0.23718694    52056.52      0.27192072    59679.70      7.3993
    13  -262.11971243     0.24070444    52828.52      0.27543822    60451.70      7.4951
    14  -262.11971243     0.24070444    52828.52      0.27543822    60451.70      7.4951
    15  -262.11970157     0.24071530    52830.90      0.27544909    60454.09      7.4954
    16  -262.11970157     0.24071530    52830.90      0.27544909    60454.09      7.4954
    17  -262.11968675     0.24073012    52834.15      0.27546390    60457.34      7.4958
    18  -262.11968675     0.24073012    52834.15      0.27546390    60457.34      7.4958
    19  -262.11593591     0.24448097    53657.37      0.27921475    61280.55      7.5978
    20  -262.11593591     0.24448097    53657.37      0.27921475    61280.55      7.5978
    21  -262.11591939     0.24449749    53661.00      0.27923127    61284.18      7.5983
    22  -262.11591939     0.24449749    53661.00      0.27923127    61284.18      7.5983
    23  -262.11585928     0.24455759    53674.19      0.27929137    61297.37      7.5999
    24  -262.11585928     0.24455759    53674.19      0.27929137    61297.37      7.5999
    25  -262.11500347     0.24541340    53862.02      0.28014718    61485.20      7.6232
    26  -262.11500347     0.24541340    53862.02      0.28014718    61485.20      7.6232
    27  -262.11500342     0.24541346    53862.03      0.28014724    61485.21      7.6232
    28  -262.11500342     0.24541346    53862.03      0.28014724    61485.21      7.6232
    29  -262.11500283     0.24541404    53862.16      0.28014783    61485.34      7.6232
    30  -262.11500283     0.24541404    53862.16      0.28014783    61485.34      7.6232
    31  -262.11500098     0.24541589    53862.56      0.28014968    61485.75      7.6233
    32  -262.11500098     0.24541589    53862.56      0.28014968    61485.75      7.6233
    33  -262.09831050     0.26210637    57525.70      0.29684015    65148.88      8.0774
    34  -262.09831050     0.26210637    57525.70      0.29684015    65148.88      8.0774
    35  -262.09830145     0.26211542    57527.69      0.29684921    65150.87      8.0777
    36  -262.09830145     0.26211542    57527.69      0.29684921    65150.87      8.0777
    37  -262.04828801     0.31212887    68504.37      0.34686265    76127.55      9.4386
    38  -262.04828801     0.31212887    68504.37      0.34686265    76127.55      9.4386
    39  -262.04527357     0.31514330    69165.96      0.34987708    76789.14      9.5206
    40  -262.04527357     0.31514330    69165.96      0.34987708    76789.14      9.5206
    41  -262.04527001     0.31514686    69166.74      0.34988065    76789.93      9.5207
    42  -262.04527001     0.31514686    69166.74      0.34988065    76789.93      9.5207
    43  -262.04491995     0.31549693    69243.57      0.35023071    76866.76      9.5303
    44  -262.04491995     0.31549693    69243.57      0.35023071    76866.76      9.5303
    45  -262.04486756     0.31554931    69255.07      0.35028309    76878.25      9.5317
    46  -262.04486756     0.31554931    69255.07      0.35028309    76878.25      9.5317
    47  -262.04486717     0.31554971    69255.16      0.35028349    76878.34      9.5317
    48  -262.04486717     0.31554971    69255.16      0.35028349    76878.34      9.5317
    49  -262.04250112     0.31791575    69774.44      0.35264954    77397.63      9.5961
    50  -262.04250112     0.31791575    69774.44      0.35264954    77397.63      9.5961
    51  -262.04249108     0.31792579    69776.65      0.35265957    77399.83      9.5964
    52  -262.04249108     0.31792579    69776.65      0.35265957    77399.83      9.5964
    53  -262.04160203     0.31881484    69971.77      0.35354863    77594.95      9.6205
    54  -262.04160203     0.31881484    69971.77      0.35354863    77594.95      9.6205
    55  -262.01338655     0.34703032    76164.35      0.38176411    83787.54     10.3883
    56  -262.01338655     0.34703032    76164.35      0.38176411    83787.54     10.3883
    57  -262.00618805     0.35422882    77744.24      0.38896260    85367.42     10.5842
    58  -262.00618805     0.35422882    77744.24      0.38896260    85367.42     10.5842
    59  -262.00618445     0.35423242    77745.03      0.38896621    85368.21     10.5843
    60  -262.00618445     0.35423242    77745.03      0.38896621    85368.21     10.5843


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.790004799   0.014125315  -0.197173891  -0.012239278  -0.095762757   0.567844071   0.006256158  -0.000207794
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.005061607   0.480013265   0.045706568  -0.509063588  -0.389244360  -0.065643434  -0.001732839  -0.011322492
                         0.003891240  -0.298690703  -0.001386856  -0.287090177   0.414196153   0.065198557   0.000319298  -0.019873240

    3    3.2  0.5  0.5  -0.007443106   0.097236275   0.002196387  -0.403581750  -0.413371654  -0.069711761   0.000242189  -0.024562796
                        -0.004185588   0.203675393  -0.066894755   0.667046268  -0.387943960  -0.073516979   0.002134433   0.013113532

    4    4.2  0.5  0.5   0.000006896  -0.000071302   0.000010875   0.000187420  -0.000000024  -0.000000004  -0.000661702   0.001802962
                         0.011099810   0.000030271  -0.004901336  -0.000307318   0.000000146  -0.000000982   0.037480439  -0.000524163

    5    5.2  0.5  0.5   0.000209265  -0.007563809   0.000735665  -0.007078708   0.000002581   0.000000483  -0.005092787  -0.030173665
                        -0.000053405   0.004362442   0.000030040  -0.004509437  -0.000003211  -0.000000510   0.000470551  -0.060577720

    6    6.2  0.5  0.5   0.000078833  -0.006064574  -0.000022292  -0.001550696  -0.000001506  -0.000000250   0.000630587  -0.028540278
                         0.000017211  -0.009960932  -0.000179170   0.002969065  -0.000001007  -0.000000187   0.002271031   0.017464155

    7    7.2  0.5  0.5  -0.002939845  -0.000096082  -0.011731946  -0.000855973  -0.000000336   0.000002132   0.099362956  -0.002500423
                         0.000045687   0.000043380   0.000073757  -0.000503637   0.000000029  -0.000000003   0.002651553  -0.007446859

    8    8.2  0.5  0.5   0.000013239   0.000035226   0.000084973  -0.000473610   0.000000034   0.000000010   0.002574156  -0.007383844
                         0.004914641   0.000105048   0.011058142   0.000815940   0.000000033  -0.000000156  -0.096820282   0.002500419

    9    9.2  0.5  0.5   0.000055797  -0.001539575  -0.000158282   0.001568567  -0.007576489  -0.001472922  -0.021253488  -0.112084837
                        -0.000013535   0.001014282  -0.000009618   0.001073864   0.009225145   0.001469116   0.002049672  -0.238807784

   10   10.2  0.5  0.5   0.000004089  -0.000418744  -0.000011532   0.001420633  -0.009226304  -0.001454726   0.002287689  -0.314891562
                         0.000012803  -0.000599954   0.000217840  -0.002108621  -0.007578021  -0.001454210   0.026883644   0.147079219

   11   11.2  0.5  0.5   0.002571761   0.000066984  -0.000638547  -0.000052971   0.002060229  -0.011941740  -0.063422184   0.001546281
                         0.000000314  -0.000021028   0.000001940  -0.000034361  -0.000209082  -0.000035323   0.000207299   0.004198326

   12   12.2  0.5  0.5   0.000000008  -0.000000015   0.000000018  -0.000000063  -0.000498577  -0.000084078   0.000031195  -0.001031433
                        -0.000001927  -0.000000040   0.000001969   0.000000138  -0.005524908   0.032037712  -0.012966762   0.000323953

   13    1.2  0.5 -0.5  -0.007748752   0.433374487   0.006680947  -0.107629569   0.434404880   0.073259211  -0.000189446  -0.005703747
                        -0.011810223   0.660525652  -0.010254993   0.165207200   0.365703827   0.061673280   0.000085373   0.002570366

   14    2.2  0.5 -0.5  -0.013585526   0.000476823   0.037332174   0.026111453  -0.008228432   0.031023536  -0.002157736   0.001711017
                        -0.565194041  -0.006366652  -0.583243358  -0.037539389  -0.092153162   0.567544858   0.022770346  -0.000420839

   15    3.2  0.5 -0.5  -0.223634771  -0.007582664   0.779201423   0.057248408  -0.100676529   0.566076624  -0.027781676   0.000656136
                         0.030431036  -0.003927110   0.025963331   0.034674949   0.011345151  -0.030559716  -0.001863908   0.002045469

   16    4.2  0.5 -0.5   0.000013805   0.009284371  -0.000359799   0.004112646  -0.000000636  -0.000000076   0.001859117   0.016002252
                         0.000076221  -0.006083279  -0.000010718   0.002666337   0.000000749   0.000000127  -0.000262874   0.033899102

   17    5.2  0.5 -0.5   0.000501841   0.000070145   0.000085645   0.000376401   0.000000040   0.000000094  -0.002620788   0.004836429
                         0.008717239   0.000204264  -0.008392604  -0.000632794   0.000000701  -0.000004118   0.067625748  -0.001663388

   18    6.2  0.5 -0.5   0.011655224   0.000057636   0.003334172   0.000137954  -0.000000312   0.000001801  -0.033195421   0.000358155
                        -0.000393677   0.000056471   0.000321407   0.000116480  -0.000000018   0.000000200  -0.004196214   0.002329580

   19    7.2  0.5 -0.5   0.000016438  -0.001574518   0.000045258  -0.006465813   0.000001629   0.000000238   0.000779931  -0.089499934
                         0.000104132  -0.002483077  -0.000992114   0.009789651   0.000001375   0.000000238   0.007816619   0.043241063

   20    8.2  0.5 -0.5  -0.000107156   0.004116410   0.000942182  -0.009218964  -0.000000093  -0.000000047  -0.007759167  -0.042125833
                         0.000028174  -0.002684965   0.000048563  -0.006107407   0.000000125   0.000000003   0.000754044  -0.087213574

   21    9.2  0.5 -0.5  -0.000003477   0.000019292   0.000043545  -0.000078342  -0.000180654  -0.000145122  -0.004072827   0.020218948
                         0.001843650   0.000054077   0.001900445   0.000137871  -0.002072478   0.011936726   0.263771834  -0.006863386

   22   10.2  0.5 -0.5   0.000731335   0.000012948  -0.002542231  -0.000188818  -0.002049419   0.011938599  -0.347515084   0.008959556
                         0.000020995  -0.000003604   0.000039300  -0.000109248   0.000175607   0.000144698  -0.004717946   0.025449758

   23   11.2  0.5 -0.5  -0.000019164   0.001411058   0.000000125  -0.000350183  -0.009158267  -0.001441437  -0.000315152   0.057907256
                        -0.000067541   0.002150085  -0.000063140   0.000533964  -0.007663716  -0.001486781  -0.004462914  -0.025868245

   24   12.2  0.5 -0.5   0.000000042  -0.000001607   0.000000150  -0.000001639   0.020568657   0.003939575  -0.001073456  -0.005355882
                        -0.000000009   0.000001064   0.000000022  -0.000001090  -0.024563233  -0.003905501   0.000128419  -0.011808997

   25    1.2  1.5  1.5   0.016028149   0.000404927  -0.003989109  -0.000329796  -0.001703486   0.009878455  -0.055353057   0.001632555
                         0.000001810  -0.000118171   0.000009902  -0.000183313   0.000153609   0.000025898   0.000139386   0.003186677

   26    2.2  1.5  1.5   0.000001776  -0.000116791   0.000010397  -0.000188264   0.000153418   0.000025888   0.000154585   0.003203026
                        -0.016029150  -0.000405731   0.003987376   0.000326154   0.001703466  -0.009878405   0.055102749  -0.001506206

   27    3.2  1.5  1.5   0.000038402  -0.003759022   0.000115245  -0.015287427  -0.000000355  -0.000002451  -0.003965427   0.465499660
                         0.000242218  -0.005809207  -0.002332517   0.022996415  -0.000000800  -0.000000067  -0.040528274  -0.223225376

   28    4.2  1.5  1.5   0.012472782   0.000315774  -0.003101129  -0.000253710  -0.002153517   0.012488285   0.027045036  -0.000748020
                         0.000001384  -0.000090949   0.000008093  -0.000146652   0.000194248   0.000032777  -0.000087447  -0.001596916

   29    5.2  1.5  1.5   0.000001348  -0.000089959   0.000008015  -0.000145743   0.000192531   0.000032428  -0.000063641  -0.001655673
                        -0.012471900  -0.000316573   0.003105526   0.000254861   0.002156125  -0.012488284  -0.028018678   0.000771198

   30    6.2  1.5  1.5  -0.000096995   0.006823164   0.000015620  -0.001696649  -0.019101613  -0.003037221   0.000004600  -0.027210365
                        -0.000313034   0.010397026  -0.000292076   0.002589355  -0.015995354  -0.003063617   0.001983485   0.012202089

   31    7.2  1.5  1.5  -0.000330840   0.010758841  -0.000045622   0.000166142  -0.015645569  -0.002996614  -0.000628712  -0.002214197
                         0.000100357  -0.007055081  -0.000003818   0.000086313   0.018683687   0.002972031   0.000248211  -0.002900854

   32    8.2  1.5  1.5  -0.000034312   0.000163577   0.001090381  -0.010683821   0.003673019   0.000703612  -0.011339680  -0.062721550
                        -0.000005171  -0.000083932   0.000054085  -0.007096563  -0.004386147  -0.000698858   0.001066320  -0.131200794

   33    9.2  1.5  1.5   0.000418776  -0.010047499  -0.004034595   0.039777665  -0.000000211  -0.000000084  -0.034940160  -0.192415124
                        -0.000072777   0.006501302  -0.000197764   0.026443252   0.000000254   0.000000112   0.003428368  -0.401264305

   34    1.2  1.5  0.5  -0.000170706   0.012331364  -0.000042400   0.006322248  -0.004374397  -0.000692840   0.002298923  -0.203197048
                        -0.000606209   0.018837492   0.000915297  -0.009454764  -0.003662535  -0.000701720   0.018634809   0.099456173

   35    2.2  1.5  0.5  -0.000325500   0.012103846  -0.001780611   0.017125191  -0.003631699  -0.000695765  -0.028043270  -0.157537280
                         0.000119917  -0.007974135  -0.000089301   0.011347561   0.004336953   0.000689564   0.002287657  -0.332773078

   36    3.2  1.5  0.5  -0.009234869  -0.000236668   0.002299797   0.000186713  -0.001958129   0.011360163   0.037849480  -0.000975201
                        -0.000000936   0.000063057  -0.000006182   0.000110884   0.000177683   0.000029962  -0.000094408  -0.002360666

   37    4.2  1.5  0.5   0.000018981  -0.001693629   0.000051460  -0.006881953   0.016597328   0.002638968   0.001089391  -0.127593827
                         0.000109168  -0.002617392  -0.001049970   0.010352281   0.013898191   0.002662042   0.011101966   0.061214489

   38    5.2  1.5  0.5  -0.000109245   0.002624125   0.001046407  -0.010317782   0.013867119   0.002656085  -0.011235525  -0.061835782
                         0.000017640  -0.001698132   0.000050036  -0.006859215  -0.016559931  -0.002635067   0.001118993  -0.129021923

   39    6.2  1.5  0.5   0.003105797   0.000101234   0.012398807   0.000905617  -0.000001652   0.000008939  -0.142127222   0.003590411
                        -0.000019722  -0.000043859  -0.000114972   0.000528689   0.000000134   0.000000069  -0.003375211   0.010632873

   40    7.2  1.5  0.5  -0.000019595  -0.000022281  -0.000114295   0.000551208  -0.000090343  -0.000015208  -0.003246434   0.010638379
                        -0.000184108  -0.000026532  -0.012823514  -0.000942098  -0.000982497   0.005707624   0.143571635  -0.003622893

   41    8.2  1.5  0.5   0.000003153   0.000099053   0.000018608   0.000020553  -0.000377578  -0.000063593   0.000826426  -0.000884982
                         0.012859055   0.000330698  -0.000178029  -0.000040283  -0.004202289   0.024356946  -0.006130985   0.000080850

   42    9.2  1.5  0.5  -0.000005296   0.000349492  -0.000031161   0.000563681  -0.000000004   0.000000004  -0.000204601  -0.005289750
                         0.047921309   0.001213392  -0.011922473  -0.000975301  -0.000000284   0.000001849  -0.088572051   0.002418055

   43    1.2  1.5 -0.5   0.022514731   0.000600498   0.011372986   0.000790049   0.000981950  -0.005705197   0.226116947  -0.005560250
                        -0.000023425  -0.000189822  -0.000136269   0.000464100  -0.000090617  -0.000015340   0.007190060  -0.017933900

   44    2.2  1.5 -0.5  -0.000027370   0.000078297  -0.000159868   0.000897143   0.000088172   0.000014815   0.006905887  -0.026506978
                         0.014494453   0.000337935  -0.020542973  -0.001540677   0.000975609  -0.005656693  -0.368114418   0.009436022

   45    3.2  1.5 -0.5  -0.000077108   0.005066773   0.000009012  -0.001260550  -0.008709905  -0.001383551  -0.000080797   0.034546207
                        -0.000232470   0.007720791  -0.000216970   0.001923569  -0.007293269  -0.001397006  -0.002552887  -0.015464527

   46    4.2  1.5 -0.5  -0.003117488  -0.000101689  -0.012430515  -0.000907834  -0.003733242   0.021647812   0.141477656  -0.003568085
                         0.000019779   0.000044016   0.000115312  -0.000530021   0.000336930   0.000056819   0.003386932  -0.010569257

   47    5.2  1.5 -0.5   0.000019707   0.000045180   0.000115093  -0.000529269  -0.000334884  -0.000056505   0.003366626  -0.010703185
                         0.003125588   0.000101017   0.012389197   0.000904072  -0.003726422   0.021599193  -0.143034913   0.003595969

   48    6.2  1.5 -0.5   0.000018863  -0.001687263   0.000051366  -0.006864359  -0.000006883  -0.000001178   0.001095174  -0.128190853
                         0.000108701  -0.002607586  -0.001047385   0.010325900  -0.000005704  -0.000001166   0.011169138   0.061470680

   49    7.2  1.5 -0.5  -0.000034406   0.000164683   0.001090244  -0.010682121  -0.003664199  -0.000701862  -0.011187503  -0.061946717
                        -0.000004075  -0.000084613   0.000052411  -0.007095623   0.004376169   0.000693435   0.001067822  -0.129560634

   50    8.2  1.5 -0.5   0.000330836  -0.010753228   0.000044972  -0.000159323  -0.015637749  -0.002995214   0.000840057   0.003272391
                        -0.000098593   0.007051481   0.000004768  -0.000081588   0.018674198   0.002971613  -0.000289887   0.005250086

   51    9.2  1.5 -0.5   0.001206243  -0.040064261   0.001124872  -0.009972540  -0.000001194  -0.000000186   0.005816138   0.036203621
                        -0.000373422   0.026292715   0.000060084  -0.006534124   0.000001412   0.000000214   0.000031230   0.080835314

   52    1.2  1.5 -1.5  -0.000123328   0.008794106   0.000026429  -0.002185796   0.007573769   0.001204252   0.000179145   0.050522721
                        -0.000403386   0.013400196  -0.000376391   0.003336972   0.006342126   0.001214593  -0.003576039  -0.022614931

   53    2.2  1.5 -1.5   0.000403301  -0.013401052   0.000376042  -0.003335250  -0.006342101  -0.001214435   0.003539033   0.022498233
                        -0.000124924   0.008794627   0.000020293  -0.002185265   0.007573725   0.001204359   0.000057235   0.050300759

   54    3.2  1.5 -1.5   0.006919191   0.000223585   0.027612948   0.002017267  -0.000001918   0.000000787   0.516109611  -0.013035907
                        -0.000043837  -0.000100766  -0.000256113   0.001176669  -0.000001527  -0.000000384   0.012262600  -0.038578890

   55    4.2  1.5 -1.5  -0.000097182   0.006843376   0.000015614  -0.001699567   0.009574739   0.001522356  -0.000025872  -0.024692922
                        -0.000313912   0.010427775  -0.000292629   0.002593942   0.008017651   0.001535512   0.001763237   0.011031828

   56    5.2  1.5 -1.5   0.000314037  -0.010427058   0.000293097  -0.002597670  -0.008017916  -0.001535879  -0.001826329  -0.011453556
                        -0.000098448   0.006842862   0.000017004  -0.001701901   0.009574513   0.001525458  -0.000022862  -0.025570812

   57    6.2  1.5 -1.5  -0.012435985  -0.000314938   0.003095692   0.000253250  -0.004296532   0.024914227  -0.029820998   0.000810729
                        -0.000001353   0.000090624  -0.000008152   0.000146345   0.000387653   0.000065288   0.000054820   0.001810236

   58    7.2  1.5 -1.5  -0.000003222  -0.000097581  -0.000018371  -0.000021705  -0.000378380  -0.000063722  -0.000826859   0.000675176
                        -0.012865723  -0.000331670   0.000186321   0.000040310  -0.004203509   0.024369242   0.003554424  -0.000032014

   59    8.2  1.5 -1.5  -0.000019558  -0.000023146  -0.000114154   0.000549880   0.000088189   0.000014887  -0.003278985   0.010776502
                        -0.000182810  -0.000025851  -0.012825452  -0.000943126   0.000987773  -0.005720938   0.145385313  -0.003686784

   60    9.2  1.5 -1.5   0.000076016   0.000168880   0.000443074  -0.002036627   0.000000008  -0.000000002  -0.010564188   0.033263547
                         0.011967180   0.000390064   0.047763081   0.003488441  -0.000000140   0.000000330   0.444887649  -0.011229647


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.029730593   0.002740458   0.001663332  -0.019634239   0.000000998  -0.000030861   0.000004839   0.000155672
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000547262  -0.002614013   0.020396331   0.001759516  -0.000056413  -0.000000148   0.000007862   0.000002369
                         0.001825790   0.018978785   0.001327889   0.000297793   0.000019818   0.000000494  -0.000002256  -0.000000350

    3    3.2  0.5  0.5  -0.000573616  -0.008908790  -0.001292690  -0.000146618   0.000017920   0.000000445   0.000062072  -0.000002596
                        -0.000069889  -0.002283528   0.021119918   0.002098045   0.000047909  -0.000000195  -0.000098212   0.000002066

    4    4.2  0.5  0.5  -0.000007503   0.001413566  -0.000047531  -0.000014937   0.000471697   0.000326849   0.000433750   0.000090319
                        -0.097597154   0.009444076  -0.000415480   0.003734938   0.001283303   0.003945494   0.000281378   0.044989950

    5    5.2  0.5  0.5   0.000440593   0.013519509  -0.002726768  -0.000277435  -0.055418835   0.000151746   0.064370420  -0.001704635
                        -0.007039892  -0.074570023  -0.000056930  -0.000053061   0.019343514   0.000236225   0.039003748  -0.001096271

    6    6.2  0.5  0.5   0.009079036   0.095202618   0.000133129   0.000037840   0.018267891   0.000236451   0.018500380  -0.000561235
                         0.003144250   0.014304186  -0.001317602  -0.000235400   0.051105243  -0.000077412  -0.035216238   0.000160403

    7    7.2  0.5  0.5   0.019359565  -0.001960058  -0.000107955   0.001329895  -0.000140409  -0.101095154  -0.000723157  -0.029173063
                         0.000284797   0.000016656   0.000013562   0.000043524   0.000363790   0.000528237  -0.000066298   0.000303273

    8    8.2  0.5  0.5   0.000594192   0.000203513   0.000008410   0.000032268   0.000018276  -0.000403105   0.000087319  -0.000034453
                        -0.037811200   0.003773066   0.000097830  -0.001171946   0.000112999  -0.044162799  -0.002268588  -0.079652731

    9    9.2  0.5  0.5  -0.000369455  -0.026551535  -0.348610572  -0.035331933  -0.000383677  -0.000001004   0.001822578  -0.000047256
                         0.023390514   0.243514142   0.000722281  -0.002713148   0.000118304  -0.000000710   0.001143148  -0.000022699

   10   10.2  0.5  0.5  -0.011661459  -0.122613099  -0.000748932   0.003025590  -0.000061888   0.000004349  -0.000890563   0.000015295
                         0.000682672  -0.014181284  -0.339599179  -0.033982452  -0.000179820  -0.000002859   0.001438072  -0.000045637

   11   11.2  0.5  0.5   0.344312973  -0.032151066   0.036406853  -0.358356969   0.000001414  -0.000270345   0.000034675   0.001608108
                        -0.000281478  -0.003529901  -0.003332239  -0.000332675  -0.000003065  -0.000000867   0.000004593   0.000004255

   12   12.2  0.5  0.5   0.000074942   0.000278159  -0.005304884  -0.000501337  -0.000004155  -0.000000416   0.000013386   0.000006661
                         0.015400444  -0.001541179  -0.066592944   0.666205995  -0.000001344   0.000673840  -0.000088361  -0.003368769

   13    1.2  0.5 -0.5  -0.002721069  -0.029520241   0.000156654   0.000013271  -0.000009099  -0.000000294  -0.000083783   0.000002604
                        -0.000325417  -0.003530373  -0.019633614  -0.001663279  -0.000029489  -0.000000954   0.000131203  -0.000004078

   14    2.2  0.5 -0.5   0.000341874  -0.000326586   0.000283745  -0.001165113   0.000000429  -0.000002305  -0.000001570   0.000006133
                         0.019154907  -0.001877857   0.001761836  -0.020406277  -0.000000287   0.000059749   0.000001808  -0.000005412

   15    3.2  0.5 -0.5   0.009116916  -0.000577856   0.002099148  -0.021129560  -0.000000055  -0.000051062   0.000003138   0.000116182
                        -0.001209493   0.000001281  -0.000129874   0.001124142   0.000000483  -0.000002999  -0.000001076   0.000000543

   16    4.2  0.5 -0.5  -0.002525006  -0.011596669   0.003734938   0.000415087   0.003866486  -0.001365329   0.037869605  -0.000003704
                         0.009209402   0.096905737   0.000014863   0.000050845  -0.000850903  -0.000072383   0.024289849  -0.000517010

   17    5.2  0.5 -0.5  -0.004569002  -0.000398479  -0.000050846   0.000035172   0.000270463  -0.002144962  -0.000006514   0.001771401
                        -0.075647800   0.007042401  -0.000277850   0.002727135   0.000075356   0.058658486  -0.002026709  -0.075244306

   18    6.2  0.5 -0.5  -0.096227591   0.009388164  -0.000235695   0.001318623  -0.000004260  -0.054219507   0.000437249   0.039637742
                         0.002898101  -0.002043909   0.000035961  -0.000122613   0.000248764  -0.002388896  -0.000386688   0.003361083

   19    7.2  0.5 -0.5   0.001944212   0.019256409   0.000032912  -0.000014423  -0.029300455  -0.000306224   0.015956633  -0.000333328
                         0.000249286   0.002016079   0.001330200   0.000107843  -0.096757390   0.000241422  -0.024424280   0.000645170

   20    8.2  0.5 -0.5  -0.000650107  -0.003899921  -0.001172166  -0.000097760  -0.042318686  -0.000113365  -0.067113992   0.001958996
                         0.003722205   0.037614233   0.000022916  -0.000009190   0.012635037   0.000015851  -0.042898378   0.001147368

   21    9.2  0.5 -0.5  -0.002552524   0.002410677  -0.002431162  -0.003503683  -0.000000975   0.000000071   0.000006302   0.000017454
                         0.244944087  -0.023268891  -0.035352456   0.348593713  -0.000000750   0.000401502  -0.000052045  -0.002151342

   22   10.2  0.5 -0.5   0.123429541  -0.011497887  -0.034005510   0.339582394  -0.000001450   0.000190073  -0.000046696  -0.001691333
                         0.000478802  -0.002062587   0.002754361   0.003458434   0.000004998   0.000006122  -0.000011671  -0.000023395

   23   11.2  0.5 -0.5   0.032342748   0.341843440   0.002526523   0.003622609  -0.000080533   0.000002512  -0.000861902   0.000014791
                         0.000312867   0.041165090  -0.358348217  -0.036379107  -0.000258073  -0.000002255   0.001357628  -0.000031696

   24   12.2  0.5 -0.5  -0.000093183   0.001903145   0.666188790   0.066548499   0.000643766   0.000002509  -0.002842835   0.000081676
                        -0.001563305  -0.015282583   0.004814071   0.005836033  -0.000199061   0.000003574  -0.001807468   0.000036274

   25    1.2  1.5  1.5   0.293285322  -0.027336289   0.020292425  -0.202708325   0.000724820   0.456357598   0.011647342   0.448193149
                        -0.000215124  -0.002690621  -0.001681193  -0.000176928  -0.001365710  -0.001996284   0.000400198   0.000000519

   26    2.2  1.5  1.5  -0.000217770  -0.002691572  -0.001695396  -0.000177553   0.001439972   0.002147969  -0.000425049  -0.000034065
                        -0.292752443   0.027259200  -0.020513712   0.204791099   0.000683503   0.468712308   0.008438117   0.322907264

   27    3.2  1.5  1.5  -0.010383466  -0.102688458  -0.000077758   0.000140151   0.104548223   0.001562459   0.208237467  -0.005928016
                        -0.001246793  -0.009504267  -0.009286046  -0.000838493   0.343539772  -0.000876400  -0.326489948   0.008748053

   28    4.2  1.5  1.5  -0.142312578   0.013264654  -0.003712632   0.037027204   0.000240526   0.173277739   0.001926817   0.072284377
                         0.000105806   0.001316272   0.000327569   0.000041184  -0.000520061  -0.000826902   0.000139072   0.000029507

   29    5.2  1.5  1.5   0.000110487   0.001316741   0.000321809   0.000041311   0.000504976   0.000662507  -0.000169686   0.000013746
                         0.142088958  -0.013224748   0.003752612  -0.037346160   0.000263367   0.160413854   0.005381255   0.208501633

   30    6.2  1.5  1.5  -0.013405589  -0.141962670   0.000476258   0.000531433  -0.001267057  -0.000000077  -0.024677722   0.000608101
                        -0.000245552  -0.017104801  -0.063931093  -0.006370108  -0.004294146  -0.000004548   0.038615528  -0.000988485

   31    7.2  1.5  1.5  -0.000316941  -0.017238350  -0.064003655  -0.006369034   0.045084693  -0.000131716  -0.009393549   0.000294240
                         0.013680115   0.144589380  -0.000461634  -0.000532275  -0.013757823  -0.000253814  -0.005946827   0.000225709

   32    8.2  1.5  1.5  -0.000275275   0.001328433   0.012229203   0.001240480   0.210755409  -0.000537369  -0.209976931   0.005610536
                        -0.000262382  -0.004671139   0.000123570   0.000091139  -0.064124806  -0.001003818  -0.133941053   0.003747699

   33    9.2  1.5  1.5  -0.001071090  -0.008150276  -0.006593476  -0.000581358  -0.000745320   0.000004351   0.000591612  -0.000006821
                         0.008856570   0.088148303   0.000078862  -0.000077006   0.000223140   0.000004139   0.000379098  -0.000010941

   34    1.2  1.5  0.5   0.038197172   0.401260717  -0.000690944  -0.000928163   0.093910178   0.001457800   0.239388348  -0.006552055
                         0.001312509   0.046688601   0.105569624   0.010448903   0.308914571  -0.000750874  -0.375142512   0.009931323

   35    2.2  1.5  0.5  -0.000107654   0.035904529   0.099789754   0.009975240  -0.288167407   0.000780391   0.192079024  -0.005240978
                        -0.026498995  -0.284432717   0.000831268   0.000783478   0.087786924   0.001445113   0.122398501  -0.003618914

   36    3.2  1.5  0.5  -0.177873858   0.016526586   0.022591598  -0.226200282  -0.000050747   0.020807479  -0.005450403  -0.213481807
                         0.000156496   0.001688262  -0.001780792  -0.000151637  -0.000071043  -0.000265009   0.000010377   0.000073899

   37    4.2  1.5  0.5   0.003071928   0.030598529  -0.000420586  -0.000556506  -0.012592704  -0.000174248  -0.056709702   0.001471582
                         0.000339859   0.002896518   0.063972371   0.006367246  -0.041564080   0.000084716   0.088805544  -0.002311640

   38    5.2  1.5  0.5  -0.000350013  -0.002390997   0.058120701   0.005827990   0.029520396  -0.000096222   0.021054659  -0.000492310
                         0.002668031   0.026407819   0.000459471   0.000500895  -0.009043578  -0.000126308   0.013498587  -0.000266684

   39    6.2  1.5  0.5  -0.027862193   0.002810989  -0.000036026   0.000051959   0.000143491   0.042991814   0.008617982   0.324786616
                        -0.000757806  -0.000005638  -0.000011427  -0.000043024   0.000171748  -0.000283033   0.000102645   0.000094188

   40    7.2  1.5  0.5  -0.000759559  -0.000300358  -0.000174127  -0.000056223   0.001341100   0.001394268  -0.000275781   0.000079512
                        -0.004868739   0.000242913  -0.001851753   0.018701405   0.000429143   0.333238321   0.000043989   0.008930308

   41    8.2  1.5  0.5   0.000067369  -0.001250592  -0.000586210  -0.000048245  -0.000311044  -0.000383334   0.000047954  -0.000001562
                        -0.142149273   0.013291666  -0.007154149   0.071304721  -0.000093903  -0.082422265   0.001166300   0.044339064

   42    9.2  1.5  0.5   0.000358683   0.004143399   0.000191040   0.000042374   0.000000773   0.000000563   0.000005154  -0.000003135
                         0.444438709  -0.041432864   0.001255196  -0.011978298  -0.000000312   0.000217363  -0.000028186  -0.000820782

   43    1.2  1.5 -0.5   0.403965748  -0.038082772  -0.010455976   0.105571777   0.000287706   0.322870780  -0.011896606  -0.445015354
                         0.001289624  -0.003232519   0.000844765   0.000151376  -0.001614378  -0.001339193   0.000177104  -0.000142683

   44    2.2  1.5 -0.5   0.001875400   0.003253527  -0.000703865   0.000035059  -0.001610958  -0.001073530   0.000229365  -0.000218188
                         0.286683778  -0.026298724  -0.009981173   0.099793210  -0.000319651  -0.301240512   0.006364887   0.227762369

   45    3.2  1.5 -0.5   0.016610130   0.176596768  -0.001653130  -0.001960985  -0.005881301  -0.000082847  -0.114958834   0.002942169
                         0.000286140   0.021277103   0.226194292   0.022576670  -0.019960754  -0.000027546   0.179885947  -0.004588098

   46    4.2  1.5 -0.5   0.030725984  -0.003090550  -0.006371484   0.063973690  -0.000029578  -0.043429254   0.002740295   0.105367998
                         0.000757412  -0.000027323   0.000505687   0.000089838   0.000191479   0.000221081   0.000003860  -0.000000389

   47    5.2  1.5 -0.5   0.000761729   0.000030720  -0.000454380  -0.000004266   0.000149062   0.000061695  -0.000040197   0.000045134
                        -0.026504897   0.002690716  -0.005831801   0.058122517   0.000054707   0.030874524   0.000558456   0.025010167

   48    6.2  1.5 -0.5   0.002790431   0.027755047   0.000043438  -0.000011139  -0.012404538   0.000206419   0.174721752  -0.004551713
                         0.000339390   0.002556065  -0.000051614  -0.000036116  -0.041164349   0.000086478  -0.273785800   0.007318610

   49    7.2  1.5 -0.5  -0.000269388   0.001332326  -0.018701258  -0.001850305  -0.318837531   0.000805456  -0.007483806   0.000185501
                        -0.000276860  -0.004744098  -0.000092990  -0.000188895   0.096914144   0.001154970  -0.004873333  -0.000208758

   50    8.2  1.5 -0.5   0.000336581   0.016812689  -0.071302837  -0.007149244   0.078871757  -0.000181432  -0.037370480   0.000957166
                        -0.013346126  -0.141151528  -0.000520668  -0.000643271  -0.023933713  -0.000269534  -0.023862101   0.000668122

   51    9.2  1.5 -0.5  -0.000805881  -0.053131226   0.011978254   0.001253632  -0.000207867  -0.000000070   0.000690080  -0.000026530
                         0.041631726   0.441251592   0.000053197   0.000201049   0.000063546   0.000000831   0.000444389  -0.000010826

   52    1.2  1.5 -1.5   0.027462376   0.291184704   0.001440406   0.001843045   0.132637325   0.001091313  -0.241218465   0.005931342
                         0.000574477   0.035039904  -0.202703285  -0.020278366   0.436661862  -0.001095246   0.377744294  -0.010031945

   53    2.2  1.5 -1.5  -0.000564378  -0.034979254   0.204785997   0.020499532   0.448512148  -0.001077659   0.272169495  -0.007340536
                         0.027385945   0.290655281   0.001456399   0.001859012  -0.136134840  -0.001174455   0.173760951  -0.004183182

   54    3.2  1.5 -1.5   0.103090497  -0.010458051  -0.000839585   0.009285130  -0.000376796  -0.359093295   0.010563469   0.387244734
                         0.002756766   0.000004982   0.000133457   0.000151845   0.001751394   0.001382308  -0.000287994   0.000212163

   55    4.2  1.5 -1.5  -0.013327105  -0.141293114  -0.000254243  -0.000357180   0.050296177   0.000426032  -0.038878800   0.000919806
                        -0.000268158  -0.017004031   0.037026354   0.003709900   0.165819640  -0.000383161   0.060938255  -0.001698800

   56    5.2  1.5 -1.5   0.000262954   0.016982125  -0.037345301  -0.003749925   0.153479065  -0.000400540   0.175720955  -0.004626729
                        -0.013287536  -0.141070520  -0.000256660  -0.000351740  -0.046660691  -0.000404884   0.112227792  -0.002753194

   57    6.2  1.5 -1.5   0.142989363  -0.013339899  -0.006374146   0.063932858  -0.000004368   0.004476836  -0.001160392  -0.045827380
                        -0.000126357  -0.001348038   0.000480591   0.000033838   0.000001267  -0.000055276  -0.000019489   0.000015767

   58    7.2  1.5 -1.5  -0.000052949   0.001309753  -0.000481442  -0.000049041  -0.000281365  -0.000145708   0.000031871  -0.000043560
                         0.145613347  -0.013620960  -0.006373078   0.064005301  -0.000051031  -0.047136886   0.000369467   0.011117626

   59    8.2  1.5 -1.5  -0.000764357  -0.000304484   0.000081238  -0.000025994  -0.001117629  -0.000861044   0.000139010  -0.000122657
                        -0.004795835   0.000227837   0.001241167  -0.012229799  -0.000217535  -0.220293195   0.006745668   0.249059234

   60    9.2  1.5 -1.5  -0.002374601  -0.000011834  -0.000072365  -0.000131466   0.000005238   0.000006516  -0.000005550  -0.000001102
                         0.088492438  -0.008921095  -0.000581954   0.006592637   0.000002937   0.000777978  -0.000011637  -0.000702652


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.000136582  -0.000006433  -0.000116987  -0.000006051   0.000004165   0.000030872  -0.000036928  -0.000002085
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000001458  -0.000008587   0.000004662  -0.000100663   0.000031873  -0.000003506   0.000000886  -0.000026165
                         0.000000537  -0.000003107  -0.000000558   0.000014404  -0.000038075   0.000005238   0.000000346  -0.000012985

    3    3.2  0.5  0.5   0.000004231  -0.000075287   0.000000617  -0.000000849  -0.000057351   0.000007995   0.000000845  -0.000015728
                        -0.000002684   0.000055201   0.000002462  -0.000037668  -0.000052928   0.000007457  -0.000002148   0.000029988

    4    4.2  0.5  0.5  -0.000068589   0.001590859  -0.001974488   0.005127232  -0.000911377  -0.002801475  -0.002149606   0.005056524
                        -0.079281324  -0.004404666   0.622685318   0.050081764  -0.046686769  -0.308008645   0.016343136  -0.009406100

    5    5.2  0.5  0.5   0.000722335  -0.015529386  -0.016929240   0.283537957   0.261812865  -0.034160892  -0.029812368   0.446460602
                         0.001059792  -0.026671475  -0.000121446  -0.025884942  -0.274244994   0.041124151  -0.009917953   0.241099402

    6    6.2  0.5  0.5  -0.002356225   0.055627411  -0.001738308   0.067394831  -0.118388801   0.016803630  -0.009174238   0.223091472
                         0.003966702  -0.038404306  -0.047451806   0.480234607  -0.093022572   0.015644396   0.027097702  -0.418523452

    7    7.2  0.5  0.5  -0.005327827  -0.000213758   0.095274953   0.007086525   0.054474023   0.393775545   0.563481626   0.034186285
                        -0.000162388  -0.000032798   0.001661650  -0.000035180   0.003094034  -0.005209200  -0.005729886   0.005532458

    8    8.2  0.5  0.5  -0.000025068   0.000336555  -0.000356212   0.001239777  -0.006192055   0.005428644   0.001915467   0.000050078
                        -0.037895256  -0.001811343   0.307547834   0.022809704   0.084180866   0.615290014   0.075972066   0.002696169

    9    9.2  0.5  0.5   0.000046219  -0.000983989   0.000035643  -0.000577113   0.000076500  -0.000008660   0.000057044  -0.000810118
                         0.000054038  -0.001338008  -0.000006641   0.000088442  -0.000067566   0.000002425   0.000018503  -0.000474666

   10   10.2  0.5  0.5  -0.000037456   0.001042230  -0.000001642  -0.000038883  -0.000332169   0.000046186   0.000002566  -0.000137688
                         0.000036350  -0.000771594   0.000017406  -0.000189839  -0.000329364   0.000052036  -0.000012740   0.000218556

   11   11.2  0.5  0.5  -0.001291326  -0.000050596   0.001014158   0.000063383  -0.000034809  -0.000199486   0.000182740   0.000007041
                        -0.000001675  -0.000005071   0.000000989  -0.000005112   0.000001379   0.000001154   0.000000573  -0.000001367

   12   12.2  0.5  0.5  -0.000003057  -0.000010900   0.000005160  -0.000001687  -0.000001472   0.000001625  -0.000000150  -0.000006595
                         0.002571108   0.000108090  -0.000247537  -0.000012424   0.000000054   0.000019903   0.000251768   0.000021756

   13    1.2  0.5 -0.5  -0.000005216   0.000110750   0.000000981  -0.000018975  -0.000022095   0.000002981  -0.000001048   0.000018571
                         0.000003765  -0.000079931   0.000005971  -0.000115438  -0.000021562   0.000002909   0.000001802  -0.000031919

   14    2.2  0.5 -0.5  -0.000005144   0.000001497   0.000002114   0.000000205  -0.000001149  -0.000003780  -0.000001935  -0.000000146
                         0.000007545  -0.000000418   0.000101667   0.000004691   0.000006197   0.000049511   0.000029145   0.000000940

   15    3.2  0.5 -0.5  -0.000093353  -0.000005002   0.000037307   0.000002530  -0.000010930  -0.000078011  -0.000033830  -0.000002282
                        -0.000000701   0.000000300  -0.000005272   0.000000209  -0.000000246  -0.000002175  -0.000001486  -0.000000350

   16    4.2  0.5 -0.5   0.003867696  -0.046341637  -0.050250210   0.614119263   0.217123208  -0.033259059   0.010673044   0.015207241
                         0.002640614  -0.064327177   0.003063991  -0.102948700  -0.218482691   0.032776821   0.000359575   0.006360715

   17    5.2  0.5 -0.5   0.003016410   0.000034493  -0.020448055  -0.002865782  -0.004273099  -0.004159793   0.016123829   0.006419610
                         0.030715316   0.001282083  -0.283981831  -0.016685359   0.053290740   0.379129251  -0.507144962  -0.030756002

   18    6.2  0.5 -0.5   0.067581815   0.004232003  -0.484806720  -0.047105391  -0.022952521  -0.149698371   0.473941474   0.028035570
                        -0.001413448   0.001837572   0.011392303   0.005981456  -0.000539359  -0.016109152   0.017639833   0.005697276

   19    7.2  0.5 -0.5  -0.000154137   0.004225154  -0.001114729   0.017093365  -0.278183772   0.041147539   0.012409807  -0.288319638
                         0.000151691  -0.003249642  -0.006998389   0.093743771  -0.278747386   0.035831163  -0.032331205   0.484165427

   20    8.2  0.5 -0.5   0.001332943  -0.022156848  -0.022708744   0.303417413  -0.433613724   0.054361674  -0.002305257   0.064703405
                         0.001271808  -0.030742887   0.002476404  -0.050236149   0.436566616  -0.064572193  -0.001399151   0.039860924

   21    9.2  0.5 -0.5  -0.000014856  -0.000005854   0.000006338  -0.000000772   0.000004504   0.000007561   0.000002882  -0.000012694
                         0.001660806   0.000070866   0.000583816   0.000036248   0.000007784   0.000101785   0.000938931   0.000058611

   22   10.2  0.5 -0.5   0.001296671   0.000051645   0.000193632   0.000016909  -0.000069398  -0.000467763  -0.000258151  -0.000012303
                         0.000015727   0.000007555   0.000007576  -0.000004444   0.000004984   0.000003731   0.000009102  -0.000004189

   23   11.2  0.5 -0.5  -0.000038059   0.001046120  -0.000005237   0.000165474   0.000141965  -0.000023949   0.000004722  -0.000091402
                         0.000033722  -0.000757072  -0.000063373   0.001000568   0.000140151  -0.000025298  -0.000005399   0.000158240

   24   12.2  0.5 -0.5  -0.000072095   0.001507150   0.000012533  -0.000243422  -0.000015064  -0.000001016  -0.000022121   0.000217692
                        -0.000081268   0.002083052  -0.000000351   0.000045242   0.000013109  -0.000001066  -0.000005240   0.000126481

   25    1.2  1.5  1.5  -0.068508477  -0.002969246   0.008345483   0.000349442  -0.008968710  -0.064480806  -0.030725072  -0.001843578
                        -0.000054431  -0.000106487   0.000039248  -0.000100024  -0.000562761   0.000485989   0.000335610  -0.000299922

   26    2.2  1.5  1.5   0.000166639  -0.000903146   0.000084054  -0.000170122   0.000490020  -0.000418253  -0.000326492   0.000307006
                         0.298261354   0.012980147  -0.041977545  -0.002768404  -0.007093861  -0.052010457  -0.032320151  -0.001943594

   27    3.2  1.5  1.5  -0.005111260   0.116311861  -0.000087453   0.002081953  -0.021262244   0.003167305  -0.001165260   0.027259499
                         0.004163071  -0.084158928  -0.000883509   0.012543746  -0.021027912   0.002641008   0.003074471  -0.045858569

   28    4.2  1.5  1.5   0.245421533   0.010686769   0.207686936   0.013264298   0.013996300   0.104874058   0.120314493   0.007332937
                        -0.000103538   0.000699082   0.000454430  -0.001000840   0.001056248  -0.000918133  -0.001217328   0.001245737

   29    5.2  1.5  1.5  -0.000020981   0.000386693   0.000355657  -0.000851074  -0.001710302   0.001523575   0.001137526  -0.000975600
                        -0.159807236  -0.006974063  -0.130363604  -0.007630153   0.029452194   0.209686129   0.100139798   0.006052504

   30    6.2  1.5  1.5  -0.004551611   0.109420700   0.000579439  -0.022499115  -0.028379953   0.004365450  -0.000062435   0.001286149
                         0.003734074  -0.078917556   0.008462471  -0.134536857  -0.027993413   0.003910642   0.000151171  -0.002280225

   31    7.2  1.5  1.5   0.004271570  -0.089688710   0.006693377  -0.106223787  -0.001389017   0.000500826  -0.002917439   0.043493025
                         0.005231076  -0.124298215  -0.000556629   0.017708343   0.001425954  -0.000387170  -0.001173716   0.025865045

   32    8.2  1.5  1.5   0.001739584  -0.034421019   0.001431196  -0.017394317   0.092423197  -0.011721866  -0.014001786   0.208550034
                         0.002137154  -0.047494464  -0.000211060   0.002812061  -0.093467215   0.013864317  -0.005328550   0.123945901

   33    9.2  1.5  1.5   0.000020179  -0.000411523   0.000029669  -0.000504833   0.000677675  -0.000093523   0.000037504  -0.000581046
                         0.000027306  -0.000568172  -0.000005925   0.000078013  -0.000682094   0.000094435   0.000011492  -0.000339514

   34    1.2  1.5  0.5   0.006475351  -0.157968349   0.000088123  -0.004848213  -0.026651417   0.004000833  -0.001012457   0.023486949
                        -0.005227401   0.113705351   0.001735509  -0.028898647  -0.026346701   0.003437694   0.002655897  -0.039522701

   35    2.2  1.5  0.5  -0.012379464   0.258292358   0.003334717  -0.051863113   0.011889384  -0.001388768  -0.002554685   0.038128806
                        -0.015133068   0.357802985  -0.000271356   0.008641168  -0.012003511   0.001715925  -0.000983175   0.022690023

   36    3.2  1.5  0.5   0.632817453   0.027609144  -0.084847986  -0.005251157   0.003228219   0.021583073  -0.002364346  -0.000153114
                        -0.000199403   0.001677210  -0.000210453   0.000468756   0.000130314  -0.000119399  -0.000013018  -0.000024451

   37    4.2  1.5  0.5  -0.006019052   0.145390103   0.000655836  -0.025811188  -0.062666699   0.009473843  -0.001350087   0.031474553
                         0.004942054  -0.104829831   0.009516838  -0.153995691  -0.061921246   0.008351007   0.003530368  -0.052902882

   38    5.2  1.5  0.5   0.005819449  -0.122579498   0.012157344  -0.192496228  -0.011616357   0.001953076  -0.003137323   0.046471152
                         0.007111443  -0.169917440  -0.000932757   0.032141991   0.011845858  -0.002004909  -0.001223705   0.027774756

   39    6.2  1.5  0.5   0.109877583   0.004922855   0.096948691   0.006892994   0.039985067   0.290670304  -0.077468866  -0.004840203
                         0.000025334   0.000332180   0.000103549  -0.000253776   0.002689712  -0.002122838   0.000712897  -0.000821009

   40    7.2  1.5  0.5   0.000107782   0.000080300  -0.000040434  -0.000155000  -0.000796054   0.000797040   0.002738945  -0.002655164
                        -0.042283073  -0.001968580  -0.007223964  -0.000167879   0.013453406   0.096597250   0.276794273   0.016765832

   41    8.2  1.5  0.5  -0.000067155   0.000343788   0.000195137  -0.000538468  -0.000019269   0.000015087  -0.000718775   0.000794074
                        -0.128982756  -0.005604568  -0.102936695  -0.006458021   0.001891476   0.011518310  -0.077285904  -0.004742920

   42    9.2  1.5  0.5   0.000002612  -0.000002599  -0.000001719   0.000007352  -0.000002016  -0.000000265  -0.000000372  -0.000002685
                         0.000794791   0.000036497   0.001710950   0.000108106  -0.000071573  -0.000432133   0.000413327   0.000023262

   43    1.2  1.5 -0.5   0.194635160   0.008309878  -0.029302348  -0.001726820   0.005264305   0.037475165  -0.045972813  -0.002804782
                        -0.000246180   0.000449231  -0.000096614   0.000194546   0.000333917  -0.000242340   0.000425598  -0.000460493

   44    2.2  1.5 -0.5  -0.000047607  -0.001181946   0.000114475  -0.000273133   0.000204500  -0.000125689   0.000437743  -0.000434906
                         0.441291192   0.019515734  -0.052577934  -0.003334572  -0.002198012  -0.016894553   0.044367233   0.002702574

   45    3.2  1.5 -0.5  -0.021405950   0.513250900  -0.000389195   0.013970119   0.015363440  -0.002401424   0.000055865  -0.001177744
                         0.017517509  -0.370177636  -0.005257652   0.083690268   0.015159420  -0.002161375  -0.000144641   0.002050176

   46    4.2  1.5 -0.5  -0.179241649  -0.007772887  -0.156143040  -0.009497190   0.012612830   0.088096846  -0.061554864  -0.003730423
                         0.000082015  -0.000484887  -0.000491089   0.000896492   0.000639937  -0.000549098   0.000601001  -0.000608421

   47    5.2  1.5 -0.5  -0.000043262   0.000557050   0.000493221  -0.001051532  -0.000002460   0.000040394   0.000637498  -0.000520003
                        -0.209517703  -0.009172148  -0.195160606  -0.012147647   0.002798956   0.016591036   0.054135004   0.003327138

   48    6.2  1.5 -0.5  -0.003797408   0.089081873   0.000867637  -0.015827380   0.206547753  -0.030495526   0.001724429  -0.039574199
                         0.003150323  -0.064323431   0.006842877  -0.095648071   0.204528135  -0.026001212  -0.004596517   0.066601923

   49    7.2  1.5 -0.5  -0.001217171   0.024832424  -0.000190797   0.007134860   0.068035516  -0.008826347   0.015826838  -0.237870521
                        -0.001549274   0.034223101  -0.000125717  -0.001131838  -0.068577202   0.010184471   0.006136303  -0.141563367

   50    8.2  1.5 -0.5  -0.003558691   0.075429220  -0.006459842   0.101541924   0.008055372  -0.001307246  -0.004498885   0.066440824
                        -0.004343397   0.104627857   0.000516162  -0.016889017  -0.008233024   0.001367172  -0.001698788   0.039487270

   51    9.2  1.5 -0.5   0.000023466  -0.000463012   0.000107867  -0.001688014  -0.000301998   0.000051431   0.000021457  -0.000357448
                         0.000028074  -0.000646003  -0.000010280   0.000279214   0.000309089  -0.000049816   0.000009378  -0.000207535

   52    1.2  1.5 -1.5  -0.002345361   0.055519778   0.000042020   0.001392376   0.045808967  -0.006811875  -0.000667871   0.015741293
                         0.001824018  -0.040136873  -0.000361039   0.008228604   0.045382255  -0.005861129   0.001744328  -0.026388527

   53    2.2  1.5 -1.5  -0.008328617   0.174414281   0.002759338  -0.041408032   0.036624284  -0.004603763   0.001834340  -0.027771824
                        -0.009996701   0.241949420  -0.000281169   0.006891752  -0.036931347   0.005419257   0.000712044  -0.016535554

   54    3.2  1.5 -1.5   0.143565818   0.006580905  -0.012715333  -0.000885995  -0.004111337  -0.029903449   0.053346400   0.003243421
                         0.000173775   0.000384492  -0.000019771   0.000057011  -0.000321949   0.000199611  -0.000500194   0.000538912

   55    4.2  1.5 -1.5   0.008256488  -0.199066139  -0.001163900   0.034135501  -0.074416273   0.010754739   0.002610875  -0.061556669
                        -0.006821009   0.143542369  -0.013250986   0.204862972  -0.073902837   0.009019294  -0.006964708   0.103381988

   56    5.2  1.5 -1.5   0.004394941  -0.093505857   0.007667157  -0.128579601  -0.147538591   0.019345839  -0.005722115   0.085984067
                         0.005428773  -0.129595555  -0.000397817   0.021496091   0.149006571  -0.022273199  -0.002200457   0.051342122

   57    6.2  1.5 -1.5   0.134910594   0.005876042   0.136404664   0.008444394  -0.005855572  -0.039862354   0.002617706   0.000162063
                        -0.000043443   0.000364151   0.000379124  -0.000800858  -0.000250086   0.000213641   0.000035007   0.000022055

   58    7.2  1.5 -1.5   0.000016075  -0.000402352  -0.000244208   0.000536416  -0.000088031   0.000001801  -0.000484492   0.000452634
                         0.153277887   0.006741556   0.107689455   0.006695027  -0.000626880  -0.001990655  -0.050600485  -0.003111941

   59    8.2  1.5 -1.5  -0.000116202  -0.000159869   0.000046558   0.000023877  -0.001293819   0.000867519  -0.002256101   0.002435555
                         0.058655922   0.002751004   0.017620096   0.001446478   0.018109319   0.131443582  -0.242591453  -0.014782136

   60    9.2  1.5 -1.5  -0.000001185  -0.000000382   0.000004904  -0.000001034   0.000000978   0.000008621   0.000001260  -0.000008927
                         0.000701547   0.000033951   0.000510802   0.000030237   0.000132904   0.000961468   0.000672965   0.000038196


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000000285  -0.000007332  -0.000005761   0.000000000   0.000010999   0.000001407   0.000000024  -0.000055344
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000001880   0.000000162   0.000002281  -0.000031905   0.000001174  -0.000015337  -0.000005074  -0.000001356
                         0.000001665   0.000000246   0.000003809  -0.000000237   0.000002503  -0.000022500  -0.000011027   0.000000044

    3    3.2  0.5  0.5   0.000004874  -0.000000314  -0.000009589  -0.000009316   0.000001099  -0.000011438  -0.000001355   0.000000217
                        -0.000003294   0.000000222   0.000008006  -0.000079692  -0.000000137   0.000009306   0.000001370   0.000000528

    4    4.2  0.5  0.5  -0.000020584  -0.000002079  -0.000004751   0.000035268  -0.000483003  -0.000341962  -0.000679620   0.000012985
                         0.000018624  -0.000485463   0.000331009   0.000001233  -0.016748255  -0.001676951   0.000381790   0.015966244

    5    5.2  0.5  0.5  -0.000619880  -0.000013181  -0.000008233   0.000176962   0.000617012  -0.008513438  -0.007411161  -0.000047829
                        -0.000802209   0.000035204  -0.000005555  -0.000068925   0.001501955  -0.013575407  -0.012524983   0.000010422

    6    6.2  0.5  0.5  -0.000758667   0.000019801  -0.000075381  -0.000115295  -0.000153704   0.001395132  -0.032513713   0.000053902
                         0.000591435   0.000006334   0.000051927  -0.000722544   0.000347822   0.000017231   0.015316551  -0.000287110

    7    7.2  0.5  0.5   0.000043911   0.004510471  -0.000055067   0.000054074  -0.000177255  -0.000001066   0.000031619  -0.008359115
                        -0.000103512   0.000106866  -0.000032896  -0.000042980  -0.000070097  -0.000071064   0.000083471  -0.000071115

    8    8.2  0.5  0.5   0.000091061  -0.000084655   0.000020931   0.000073841   0.000127722   0.000141411  -0.000064184  -0.000019262
                         0.000034920   0.003928816   0.000260574   0.000068109   0.004541620   0.000470239   0.000064393   0.020189497

    9    9.2  0.5  0.5  -0.000120460  -0.000008134  -0.000002237   0.000040467   0.000015809  -0.000221046  -0.000143852   0.000001657
                        -0.000169190   0.000002160  -0.000003927  -0.000005986   0.000038486  -0.000345974  -0.000312219  -0.000002833

   10   10.2  0.5  0.5   0.000112235  -0.000001400   0.000005477   0.000006397  -0.000045475   0.000418633   0.000381705   0.000003499
                        -0.000081642  -0.000005914  -0.000003779   0.000040818   0.000018448  -0.000266595  -0.000175207   0.000000187

   11   11.2  0.5  0.5  -0.000002058   0.000164934  -0.000016602   0.000000166  -0.000420396  -0.000040660   0.000002540  -0.000451227
                        -0.000006221   0.000005146  -0.000000441   0.000001518   0.000014818   0.000008014  -0.000002536  -0.000001019

   12   12.2  0.5  0.5  -0.000010930   0.000007424   0.000000710  -0.000013521   0.000031751   0.000019720  -0.000006489  -0.000000970
                         0.000004581  -0.000238023  -0.000099054  -0.000009672   0.000940259   0.000093908  -0.000003733   0.000647064

   13    1.2  0.5 -0.5  -0.000006120   0.000000238   0.000000000   0.000000682   0.000001168  -0.000009132   0.000050536   0.000000022
                         0.000004038  -0.000000157  -0.000000000   0.000005721  -0.000000784   0.000006130  -0.000022562  -0.000000010

   14    2.2  0.5 -0.5   0.000000000  -0.000000652  -0.000004013  -0.000004052  -0.000000195   0.000000420   0.000001257  -0.000000138
                        -0.000000295   0.000002425  -0.000031652  -0.000001814   0.000027230   0.000002733  -0.000000512   0.000012138

   15    3.2  0.5 -0.5  -0.000000385  -0.000005882  -0.000080234  -0.000006814  -0.000014683  -0.000000989   0.000000017  -0.000001796
                        -0.000000012  -0.000000065   0.000000186   0.000010469  -0.000001352   0.000000499   0.000000571  -0.000000699

   16    4.2  0.5 -0.5   0.000265642   0.000027438   0.000005401  -0.000328118   0.000650636  -0.008932819   0.006496989  -0.000776225
                         0.000406341   0.000004207   0.000034874   0.000043913   0.001582964  -0.014175405   0.014584590  -0.000071570

   17    5.2  0.5 -0.5  -0.000030391   0.000075558  -0.000047486   0.000006491   0.000496838   0.000324734   0.000047923  -0.001661400
                        -0.000022123  -0.001010981   0.000183878   0.000007518   0.016016350   0.001590950  -0.000009981   0.014458225

   18    6.2  0.5 -0.5   0.000013038   0.000958971  -0.000731113  -0.000042636   0.001148788   0.000321464  -0.000166264  -0.035933318
                        -0.000016192   0.000075797  -0.000028926   0.000080999  -0.000791819   0.000203140  -0.000240196  -0.000731403

   19    7.2  0.5 -0.5   0.003705846  -0.000093662  -0.000036275   0.000039185   0.000038719   0.000108111   0.007603989  -0.000005156
                        -0.002573416  -0.000062213   0.000058783   0.000050784   0.000059599  -0.000156987  -0.003472639  -0.000089110

   20    8.2  0.5 -0.5  -0.002234521  -0.000056772   0.000076373  -0.000261219  -0.000144651   0.002425012   0.008248099  -0.000084860
                        -0.003232596   0.000079300   0.000065257   0.000010071  -0.000469253   0.003842128   0.018427833  -0.000032634

   21    9.2  0.5 -0.5  -0.000007979   0.000007359  -0.000001152   0.000004165   0.000009276   0.000008322  -0.000002668  -0.000004076
                         0.000002677  -0.000207562   0.000040891   0.000001756   0.000410455   0.000040766  -0.000001911   0.000343740

   22   10.2  0.5 -0.5   0.000002089  -0.000138644   0.000041288   0.000003104   0.000496168   0.000048040  -0.000003119   0.000419973
                         0.000005707  -0.000006328   0.000001519  -0.000005886  -0.000011950  -0.000010026   0.000001597   0.000004380

   23   11.2  0.5 -0.5   0.000134830  -0.000001709   0.000001526   0.000002404  -0.000038226   0.000357317   0.000411615   0.000003353
                        -0.000095136  -0.000006326  -0.000000015   0.000016433   0.000016006  -0.000221985  -0.000184879   0.000001280

   24   12.2  0.5 -0.5   0.000137292   0.000011646  -0.000011205   0.000098273  -0.000035961   0.000497647   0.000264669  -0.000004404
                         0.000194579  -0.000002196  -0.000012281  -0.000012434  -0.000088963   0.000798401   0.000590460   0.000006054

   25    1.2  1.5  1.5  -0.000006764  -0.000446832  -0.000096899  -0.000015837  -0.001622365  -0.000164214  -0.000000642   0.000099391
                         0.000007650  -0.000010436   0.000001259   0.000018639   0.000047048   0.000044131  -0.000009286   0.000005627

   26    2.2  1.5  1.5  -0.000019098   0.000017910  -0.000006201   0.000003299   0.000015106   0.000007379  -0.000004079  -0.000005343
                        -0.000003534  -0.000708983   0.000074383  -0.000000899   0.000565550   0.000054265  -0.000003605  -0.001636551

   27    3.2  1.5  1.5  -0.000252916   0.000006494   0.000011719   0.000006963   0.000072028  -0.000649628  -0.003093944   0.000004524
                         0.000177459   0.000006839  -0.000011198   0.000051428  -0.000035955   0.000409271   0.001395044   0.000008620

   28    4.2  1.5  1.5  -0.003164845  -0.479016649   0.075322833   0.003133114   0.004583572   0.000964599  -0.000140119   0.331243600
                         0.014853462  -0.010807751   0.002993658  -0.007368860  -0.000690277   0.001319955  -0.000530791   0.001034317

   29    5.2  1.5  1.5  -0.011128984   0.008079502  -0.009010871   0.050043545   0.005766877   0.004856810  -0.000774003   0.000075391
                         0.000766459  -0.302306776   0.414882138   0.033243385   0.231332010   0.023590430  -0.000372721   0.147014399

   30    6.2  1.5  1.5   0.127675491  -0.004003570  -0.030598052  -0.034543233  -0.057059372   0.493166228  -0.240042518   0.001177461
                        -0.086284923  -0.002801043   0.025300931  -0.262470585   0.023000408  -0.312143569   0.107755524   0.001307017

   31    7.2  1.5  1.5   0.166741606   0.004229463  -0.040416740   0.403487910  -0.017254713   0.222073631  -0.111112006  -0.001266775
                         0.245080887  -0.007734087  -0.047198613  -0.053683436  -0.040867487   0.351637242  -0.248881610   0.000905850

   32    8.2  1.5  1.5   0.115010527   0.003709176   0.015093944  -0.166724608   0.012244194  -0.173589434  -0.147942379  -0.001776016
                         0.166213907  -0.003915222   0.017945184   0.023627524   0.030999761  -0.275195507  -0.331303361   0.000302802

   33    9.2  1.5  1.5   0.000146588   0.000007419  -0.000018460   0.000125596   0.000006947  -0.000172108  -0.000088231  -0.000009980
                         0.000210494  -0.000004287  -0.000020302  -0.000018547   0.000027996  -0.000267577  -0.000197519  -0.000001515

   34    1.2  1.5  0.5  -0.000013749   0.000002068   0.000006001   0.000005756   0.000206042  -0.001870656  -0.001899708  -0.000003682
                         0.000011150  -0.000000679  -0.000005630   0.000055154  -0.000085264   0.001179335   0.000858754   0.000007589

   35    2.2  1.5  0.5   0.000031170   0.000003751  -0.000031380   0.000283975  -0.000007019   0.000075056  -0.001751423  -0.000030229
                         0.000045718  -0.000000607  -0.000035635  -0.000040381  -0.000017078   0.000130755  -0.003894106   0.000007199

   36    3.2  1.5  0.5  -0.000003081   0.000057755   0.000010195   0.000001898   0.002034443   0.000204179   0.000001670  -0.003434021
                        -0.000001810   0.000002211   0.000001104  -0.000001337  -0.000055546  -0.000047100   0.000017353  -0.000002893

   37    4.2  1.5  0.5  -0.344733877   0.010189219   0.026907414   0.029240153  -0.038568956   0.340164734   0.231886514   0.000138439
                         0.236672061   0.005402407  -0.024810961   0.221213375   0.013869131  -0.215894329  -0.102457839  -0.001076267

   38    5.2  1.5  0.5  -0.064059921  -0.003762942  -0.035795898   0.362229795  -0.001717685   0.015744460   0.223749275   0.002810284
                        -0.091737662   0.000985591  -0.040364834  -0.050832033  -0.002268817   0.027284434   0.498907105  -0.001073676

   39    6.2  1.5  0.5  -0.000001484   0.208136571  -0.176510644  -0.013385753  -0.206335227  -0.020803140   0.000405459  -0.396929007
                        -0.007859831   0.005578629  -0.004025235   0.021149485   0.005784701   0.003848877   0.000858332  -0.000402417

   40    7.2  1.5  0.5   0.015656679  -0.011551339   0.004174341  -0.013129403   0.001993514   0.003006895   0.000561020   0.000845091
                         0.003429827   0.521686699  -0.124981529  -0.007244420   0.081778434   0.007561001  -0.000070790  -0.072308096

   41    8.2  1.5  0.5   0.002056601  -0.001492853  -0.010247204   0.068820282   0.007090798   0.008545140  -0.002049369   0.001501196
                         0.005241139   0.149870172   0.552873525   0.048131437   0.320872623   0.032056482  -0.000316715  -0.255259966

   42    9.2  1.5  0.5   0.000002563  -0.000001353   0.000005049  -0.000031504  -0.000003955  -0.000010440  -0.000002161   0.000000142
                        -0.000000885   0.000062312  -0.000237891  -0.000022073  -0.000281097  -0.000027848   0.000001260   0.000510525

   43    1.2  1.5 -0.5  -0.000002100  -0.000017617  -0.000055447  -0.000004880   0.002210470   0.000218597  -0.000006456   0.002084767
                         0.000000572  -0.000001734   0.000000815   0.000006625  -0.000063310  -0.000044033  -0.000005429   0.000009716

   44    2.2  1.5 -0.5  -0.000003465   0.000000837   0.000006471  -0.000039100   0.000010551   0.000003690  -0.000030538   0.000011798
                         0.000001559  -0.000055326  -0.000286759  -0.000026940   0.000150396   0.000018091   0.000005749  -0.004269825

   45    3.2  1.5 -0.5  -0.000046988  -0.000001575   0.000001103   0.000002304  -0.000195780   0.001720172  -0.003134537   0.000005549
                         0.000033655   0.000003208  -0.000002043   0.000009992   0.000074682  -0.001087682   0.001402565   0.000016526

   46    4.2  1.5 -0.5  -0.005529054  -0.418086410  -0.223119423  -0.021450265  -0.402760459  -0.039753461   0.000565167  -0.253511371
                         0.010121054  -0.007672338  -0.002840277   0.029656008   0.010316000   0.009978950   0.000926338   0.000973960

   47    5.2  1.5 -0.5   0.003683604  -0.002942090   0.007582314  -0.044319491   0.002132945  -0.000161790   0.003003860  -0.000926789
                        -0.001249872   0.111851760  -0.365700462  -0.030764409   0.031428950   0.002841091  -0.000165240   0.546782570

   48    6.2  1.5 -0.5  -0.170650519   0.004327698  -0.019415667  -0.024897769   0.019418025  -0.174545808  -0.362284716  -0.000020328
                         0.119291046   0.006561096   0.015795917  -0.174792194  -0.008397905   0.110188246   0.162180709   0.000949061

   49    7.2  1.5 -0.5   0.296969344   0.011178951   0.008748122  -0.123607950   0.001717121  -0.043920171   0.030249012  -0.000541144
                         0.429068355  -0.011485921   0.012179211   0.018944198   0.007953719  -0.069012353   0.065682359   0.000164066

   50    8.2  1.5 -0.5   0.083789595  -0.001170087  -0.055941913   0.547770473   0.010770083  -0.172935869   0.105430821   0.001742232
                         0.124268261  -0.005507272  -0.062636801  -0.075641579   0.031379018  -0.270375119   0.232474183  -0.001124655

   51    9.2  1.5 -0.5   0.000035449   0.000002626   0.000025648  -0.000235620  -0.000006851   0.000153372  -0.000207993   0.000002487
                         0.000051264  -0.000000673   0.000028669   0.000033183  -0.000028940   0.000235602  -0.000466235   0.000000270

   52    1.2  1.5 -1.5  -0.000367205   0.000009860   0.000016633   0.000010223  -0.000160943   0.001373284  -0.000088463   0.000003199
                         0.000254810   0.000002660  -0.000017933   0.000096367   0.000054874  -0.000865085   0.000045657   0.000008741

   53    2.2  1.5 -1.5   0.000405433   0.000013994  -0.000000502  -0.000073126  -0.000024116   0.000302640  -0.000662283  -0.000002255
                         0.000581895  -0.000013469   0.000003382   0.000014966  -0.000049169   0.000478000  -0.001496566   0.000004954

   54    3.2  1.5 -1.5   0.000001653   0.000308837   0.000051890   0.000009731  -0.000767480  -0.000079843  -0.000000617  -0.003393888
                        -0.000009285   0.000008820   0.000000824  -0.000012963   0.000022219   0.000010288   0.000009716  -0.000012574

   55    4.2  1.5 -1.5  -0.393862962   0.010822366  -0.006946021  -0.011891671   0.000065300  -0.004190475  -0.302047636   0.000088437
                         0.272847438   0.010654482   0.003983627  -0.074438427  -0.001633545   0.001981297   0.135980211   0.000541804

   56    5.2  1.5 -1.5   0.173244281   0.009711046   0.038935226  -0.410896301  -0.009114376   0.124133839   0.059863481  -0.000554823
                         0.247873121  -0.005489747   0.045755078   0.058074207  -0.022294061   0.195290925   0.134274356   0.000655876

   57    6.2  1.5 -1.5  -0.001798893  -0.154088391  -0.264714318  -0.021499774   0.583438995   0.060195111  -0.000542355  -0.263118554
                         0.004542951  -0.001699009  -0.003220728   0.033378700  -0.015667662  -0.012701941   0.001673487  -0.000538628

   58    7.2  1.5 -1.5   0.007789840  -0.004189858  -0.005528230   0.051652352  -0.011578939  -0.008448851   0.001526015  -0.000000170
                         0.004125876   0.296394752   0.407005950   0.034543545  -0.415729931  -0.043548749   0.000310744   0.272558129

   59    8.2  1.5 -1.5   0.005252273  -0.004449395   0.003719220  -0.019606226   0.009234557   0.007109811   0.001745179  -0.000030887
                         0.001224982   0.202075944  -0.168349405  -0.012862840   0.325239269   0.032563109  -0.000447517   0.362834485

   60    9.2  1.5 -1.5   0.000008553  -0.000006417  -0.000003545   0.000022345   0.000006219   0.000009835   0.000008495  -0.000000045
                        -0.000000508   0.000256426   0.000126909   0.000015926   0.000318088   0.000027117  -0.000005452   0.000216330


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5  -0.037387189   0.001682493   0.005513072  -0.001486153  -0.007205612   0.000382658  -0.030500088  -0.005800972
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000238603   0.001186587   0.000238014   0.008216618  -0.000348580  -0.006621500  -0.001936826   0.009424872
                         0.000945277   0.023568204   0.007625476   0.027354514  -0.000101963  -0.003062016  -0.002819672   0.017378671

    3    3.2  0.5  0.5  -0.000554923  -0.013794165   0.009259190   0.032705274   0.000159827   0.003082058   0.002509273  -0.009842051
                         0.000097204  -0.000157516   0.000029275  -0.009189444  -0.000250336  -0.006696225  -0.000775869   0.004050396

    4    4.2  0.5  0.5  -0.000084494  -0.003560583   0.001418849   0.003315882   0.000001847   0.000004491   0.000859166  -0.002320305
                         0.225200527  -0.010891939  -0.072388850   0.020927417  -0.001510714   0.000032129   0.179650572   0.035387404

    5    5.2  0.5  0.5   0.001841934   0.005654535   0.001083230  -0.036029024  -0.000043724  -0.001483410  -0.010745642   0.061464433
                         0.009671988   0.185772037  -0.039954629  -0.138976866  -0.000017154  -0.000620029  -0.024829098   0.125340967

    6    6.2  0.5  0.5  -0.009967417  -0.221648314  -0.021701202  -0.080662641   0.000007660   0.000339739   0.027043973  -0.152695475
                        -0.003363070   0.010347902   0.001770582   0.024653171   0.000005948  -0.000685008  -0.018053894   0.079895074

    7    7.2  0.5  0.5  -0.035812882   0.000442815  -0.227286014   0.059528337  -0.000614578   0.000020016  -0.031357878  -0.002876051
                         0.000753024   0.000596858  -0.003977988  -0.015664950  -0.000004991  -0.000001819  -0.001359298  -0.000962957

    8    8.2  0.5  0.5   0.000069748   0.000090121  -0.003671425  -0.015251643  -0.000001963  -0.000006801  -0.001819985  -0.001550501
                         0.075373914  -0.002398822   0.217585431  -0.056584490   0.000345801  -0.000003251   0.063519199   0.009039789

    9    9.2  0.5  0.5  -0.005667421  -0.029680908   0.006515087  -0.088318677   0.005833611   0.163344612  -0.021447875   0.134878292
                        -0.013555761  -0.340406350  -0.110098994  -0.403675198   0.002061708   0.062865166  -0.036835048   0.227348444

   10   10.2  0.5  0.5   0.012700266   0.198005511  -0.134667993  -0.480105235  -0.001837703  -0.062402470   0.028419294  -0.123910719
                        -0.002292378  -0.019887505  -0.007593363   0.107052171   0.006077375   0.162156676  -0.012807814   0.069235164

   11   11.2  0.5  0.5  -0.540654857   0.026441461   0.078520891  -0.024043049  -0.176542638   0.006159491   0.402695584   0.073337823
                         0.000197379   0.005241485   0.001687213   0.007290037   0.000016908   0.000378069   0.000487006  -0.003008319

   12   12.2  0.5  0.5  -0.000000802   0.000000167  -0.000002627  -0.000005939   0.000026518   0.000474499  -0.000003995  -0.000003591
                        -0.000142966   0.000005965   0.000089208  -0.000022638   0.298002336  -0.010960869  -0.000316298  -0.000075333

   13    1.2  0.5 -0.5  -0.001676722  -0.037258946   0.001452852   0.005389536  -0.000140734  -0.002650080   0.005046093  -0.026531119
                         0.000139236   0.003094003  -0.000312847  -0.001160546   0.000355839   0.006700591  -0.002861507   0.015045102

   14    2.2  0.5 -0.5   0.000767886  -0.000316012  -0.002274158  -0.001372543  -0.000412152  -0.000033384   0.000374145  -0.000293898
                         0.023585559  -0.000922289   0.028471222  -0.007504710  -0.007283566   0.000361649   0.019766295   0.003408148

   15    3.2  0.5 -0.5   0.013733813  -0.000561063  -0.033906870   0.009045549  -0.007360425   0.000291572   0.010559289   0.002565463
                        -0.001298522  -0.000050947  -0.002098807  -0.001977752   0.000403307  -0.000056557  -0.001331574  -0.000562871

   16    4.2  0.5 -0.5   0.002647000  -0.018720829   0.001163808   0.016625486   0.000028226   0.001405512   0.019474284  -0.087870779
                        -0.011149237  -0.224421067   0.021156498   0.070468092   0.000015993   0.000553893   0.029637888  -0.156696498

   17    5.2  0.5 -0.5   0.009738554   0.001035204   0.005965953   0.009469725  -0.000031004  -0.000000129   0.008362186   0.002900398
                         0.185602759  -0.009791243  -0.143447089   0.038831303  -0.001607477   0.000046968   0.139349591   0.026898711

   18    6.2  0.5 -0.5   0.221744378  -0.009654914   0.084044853  -0.021587646  -0.000761947  -0.000002714   0.172235941   0.032430383
                        -0.008030252   0.004176395   0.007120617   0.002837369   0.000063995  -0.000009311  -0.005823368   0.002364278

   19    7.2  0.5 -0.5  -0.000391903  -0.035752356  -0.061492031  -0.221355623  -0.000009053  -0.000221388   0.002026784  -0.026606770
                         0.000631456   0.002213279  -0.002782742   0.051734367   0.000017944   0.000573339  -0.002256348   0.016650646

   20    8.2  0.5 -0.5  -0.000288328  -0.006168111   0.002998401  -0.049392623  -0.000000522  -0.000322287   0.005807887  -0.032915940
                        -0.002383135  -0.075121144  -0.058527146  -0.211936943  -0.000007520  -0.000125353   0.007098611  -0.054355698

   21    9.2  0.5 -0.5   0.001408535  -0.004526165   0.001362799   0.029545813  -0.001615765   0.000228277  -0.005180037  -0.000486854
                        -0.341694975   0.013978275  -0.413221487   0.106260434   0.175016801  -0.006183005   0.264296492   0.042621533

   22   10.2  0.5 -0.5  -0.198972130   0.012846410   0.491882440  -0.130051908   0.173741954  -0.006327299   0.141938611   0.031038945
                        -0.003433205   0.001233495   0.003587384   0.035771897   0.001609133  -0.000526234  -0.000897144  -0.002877550

   23   11.2  0.5 -0.5  -0.025917000  -0.538816672   0.025038907   0.076406235  -0.001913767  -0.064944582  -0.065278336   0.350052678
                         0.007411688   0.044545565   0.002065429  -0.018178679   0.005866836   0.164163043   0.033559278  -0.199065551

   24   12.2  0.5 -0.5   0.000000327   0.000011032   0.000001040  -0.000021347  -0.010367164  -0.277106437  -0.000034037   0.000152548
                         0.000005958   0.000142541  -0.000023380  -0.000086656  -0.003589947  -0.109623972  -0.000067301   0.000277109

   25    1.2  1.5  1.5   0.095417805  -0.004622020  -0.014016204   0.004162718   0.415827125  -0.015292517  -0.000372063  -0.000089267
                        -0.000030039  -0.000835361  -0.000271795  -0.001155753  -0.000037991  -0.000651940   0.000007232   0.000057328

   26    2.2  1.5  1.5  -0.000031448  -0.000838413  -0.000263468  -0.001131120  -0.000039547  -0.000660285  -0.000042545  -0.000064068
                        -0.095450145   0.004615486   0.013567786  -0.004082003  -0.415610289   0.015298702   0.000994227   0.000136345

   27    3.2  1.5  1.5  -0.000292002  -0.025306924  -0.043146863  -0.155467502  -0.000099238  -0.000032277  -0.000145697   0.000848319
                         0.000452564   0.001988475  -0.002061642   0.035890323   0.000002982   0.000091333   0.000065782  -0.000489697

   28    4.2  1.5  1.5   0.072142573  -0.003491968  -0.010702575   0.003204788  -0.079876213   0.002919959   0.335057490   0.061413700
                        -0.000024298  -0.000632883  -0.000205953  -0.000883051   0.000002144   0.000126044   0.000304751  -0.002358573

   29    5.2  1.5  1.5  -0.000024403  -0.000632261  -0.000204411  -0.000869172   0.000003044   0.000116562   0.000361067  -0.002251746
                        -0.072114206   0.003480640   0.010436920  -0.003122201   0.079646029  -0.002932969  -0.335727266  -0.061499084

   30    6.2  1.5  1.5   0.003431625   0.071996481  -0.003229010  -0.010093596   0.001906017   0.057901251  -0.056037004   0.299719457
                        -0.000919909  -0.005955403  -0.000188933   0.002379797  -0.005483083  -0.146368728   0.029073537  -0.170415044

   31    7.2  1.5  1.5  -0.000948087  -0.006042309   0.000020214  -0.001254556  -0.005343416  -0.142632144   0.029352300  -0.173302621
                        -0.003385586  -0.073194709  -0.001151230  -0.005651562  -0.001865462  -0.056419663   0.055455631  -0.303215279

   32    8.2  1.5  1.5   0.000018804   0.000519212   0.000923443  -0.015896309   0.001241789   0.033159994  -0.002284068   0.008030156
                         0.000665462   0.005740735  -0.019199847  -0.068826345   0.000439410   0.013128675  -0.009345525   0.020832053

   33    9.2  1.5  1.5   0.001555350   0.006794488  -0.007117921   0.123847148  -0.000000215  -0.000115608  -0.002240407   0.015862210
                         0.000895973   0.086539466   0.148906204   0.536482534  -0.000006038  -0.000054154  -0.001871757   0.024520173

   34    1.2  1.5  0.5   0.005344672   0.123702658   0.019836615   0.073789535  -0.002791807  -0.088436529  -0.000448986   0.002503173
                        -0.001657095  -0.010169986   0.000897701  -0.016960326   0.008372598   0.223549361   0.000213036  -0.001427519

   35    2.2  1.5  0.5  -0.001140753  -0.007920315  -0.001477733   0.024346478   0.008377016   0.223976633   0.000154138  -0.000797649
                        -0.005068037  -0.095038195   0.029828925   0.105134923   0.002906383   0.088611505   0.000222455  -0.001324118

   36    3.2  1.5  0.5  -0.055596357   0.002659984   0.007805601  -0.002371045   0.480141019  -0.017644869   0.007384810   0.001304992
                         0.000018021   0.000488740   0.000153049   0.000657871  -0.000038730  -0.000806624   0.000037393  -0.000049664

   37    4.2  1.5  0.5  -0.000104740  -0.010761575  -0.018807759  -0.067761863  -0.001664084  -0.050816409   0.003026284  -0.045768952
                         0.000196281   0.000843274  -0.000901169   0.015645011   0.004803235   0.128459569  -0.004141473   0.029892544

   38    5.2  1.5  0.5  -0.000197415  -0.000854391   0.000906252  -0.015709466   0.004780916   0.127579564   0.004953753  -0.034823379
                        -0.000114717  -0.010895170  -0.018898192  -0.068050965   0.001667647   0.050481768   0.004527522  -0.054323476

   39    6.2  1.5  0.5   0.011260274  -0.000141519   0.069835206  -0.018278741   0.000310359  -0.000008710   0.060312692   0.005715426
                        -0.000048466  -0.000186891   0.001029070   0.004850832   0.000000633  -0.000005814   0.003417345   0.001968948

   40    7.2  1.5  0.5  -0.000043202  -0.000038840   0.001058552   0.004965295  -0.000002172  -0.000067919   0.003297851   0.002598550
                         0.005689508  -0.000669151  -0.070833172   0.018633621  -0.037147488   0.001339635   0.019079577   0.008760791

   41    8.2  1.5  0.5   0.000034983   0.000666858  -0.000036271  -0.000250548  -0.000017203  -0.000239003  -0.001178821   0.001795929
                         0.073674017  -0.003474034   0.005599141  -0.001073059  -0.155284847   0.005713884   0.349306456   0.062680670

   42    9.2  1.5  0.5   0.000187894   0.004995548   0.001606982   0.006891660  -0.000003052  -0.000002038  -0.000180752   0.001133440
                         0.569604907  -0.027558280  -0.082926642   0.024876395   0.000402425  -0.000021889   0.165686059   0.030329378

   43    1.2  1.5 -0.5   0.124119966  -0.005463474   0.075706353  -0.019203146  -0.240406605   0.008812557   0.002881603   0.000495646
                        -0.000101997  -0.001209108   0.001046996   0.005053351   0.000021267   0.000483138   0.000006990  -0.000036162

   44    2.2  1.5 -0.5  -0.000028196   0.000717432   0.001669187   0.007723846  -0.000026837  -0.000378216  -0.000040689  -0.000024348
                         0.095367652  -0.005145057  -0.107904202   0.028849448  -0.240868284   0.008858804   0.001545275   0.000269540

   45    3.2  1.5 -0.5   0.002610414   0.055407146  -0.002456402  -0.007598476  -0.005739341  -0.176622302   0.001159672  -0.006405381
                        -0.000707193  -0.004582956  -0.000144006   0.001792761   0.016704850   0.446475041  -0.000600526   0.003675311

   46    4.2  1.5 -0.5  -0.010794447   0.000120624  -0.069536864   0.018196615  -0.138145460   0.005078607  -0.054558462  -0.004675383
                         0.000050200   0.000186939  -0.001030028  -0.004840159   0.000009964   0.000219081  -0.003425699  -0.002109737

   47    5.2  1.5 -0.5   0.000050177   0.000187244  -0.001032180  -0.004864165  -0.000022425  -0.000207559  -0.003495105  -0.002075783
                         0.010928504  -0.000130661   0.069833056  -0.018283950  -0.137204058   0.005059163   0.064432073   0.006381947

   48    6.2  1.5 -0.5  -0.000125567  -0.011225660  -0.018890293  -0.068053721   0.000002203  -0.000113555   0.004000435  -0.050778506
                         0.000197962   0.000883552  -0.000894315   0.015706878   0.000010238   0.000288840  -0.004532038   0.032723728

   49    7.2  1.5 -0.5   0.000016670   0.000513893   0.000931508  -0.015945779  -0.001270723  -0.034543126  -0.002061127   0.006542883
                         0.000670070   0.005666417  -0.019261315  -0.069023118  -0.000429533  -0.013664124  -0.008902566   0.018223522

   50    8.2  1.5 -0.5   0.000952067   0.006062082  -0.000019046   0.001214122  -0.005401314  -0.144395042  -0.029356933   0.173331519
                         0.003406931   0.073424200   0.001101756   0.005466041  -0.001879201  -0.057126665  -0.055409946   0.303269805

   51    9.2  1.5 -0.5   0.007259017   0.046950799   0.001500553  -0.019027692   0.000019606   0.000375342  -0.013974948   0.081886949
                         0.027050342   0.567666635  -0.025769717  -0.080730151   0.000009946   0.000145166  -0.026941727   0.144036212

   52    1.2  1.5 -1.5   0.004537035   0.095092995  -0.004312736  -0.013644916   0.005018036   0.152968247   0.000105930  -0.000327214
                        -0.001214994  -0.007866431  -0.000253570   0.003216227  -0.014460478  -0.386668999   0.000005834   0.000177240

   53    2.2  1.5 -1.5   0.001217494   0.007867703   0.000246480  -0.003113692   0.014469298   0.386466788   0.000122987  -0.000527441
                         0.004530270   0.095125340  -0.004228644  -0.013208299   0.005012550   0.152889946   0.000086999  -0.000843862

   54    3.2  1.5 -1.5   0.025384675  -0.000328453   0.159539007  -0.041746042   0.000096803  -0.000039271  -0.000979486  -0.000159187
                        -0.000112638  -0.000426847   0.002358950   0.011098204   0.000003576   0.000091186  -0.000007514   0.000014648

   55    4.2  1.5 -1.5   0.003427615   0.071897125  -0.003318865  -0.010419399  -0.000956693  -0.029378871  -0.054585389   0.291306215
                        -0.000919692  -0.005945993  -0.000188631   0.002454316   0.002761664   0.074277125   0.028242534  -0.165542452

   56    5.2  1.5 -1.5   0.000918135   0.005943542   0.000192448  -0.002396886  -0.002770275  -0.074062743  -0.028377578   0.165921828
                         0.003416378   0.071868864  -0.003235207  -0.010160021  -0.000970295  -0.029295051  -0.054606966   0.291861054

   57    6.2  1.5 -1.5  -0.072242367   0.003495982   0.010368386  -0.003116883  -0.157405081   0.005799784  -0.344779474  -0.063086334
                         0.000023144   0.000632767   0.000201689   0.000864432   0.000011618   0.000244138  -0.000393184   0.002351762

   58    7.2  1.5 -1.5  -0.000035696  -0.000664659   0.000036745   0.000262104  -0.000008111  -0.000230484   0.001180580  -0.001822494
                        -0.073443677   0.003452433  -0.005789017   0.001121178  -0.153385484   0.005654991  -0.349244771  -0.062718124

   59    8.2  1.5 -1.5  -0.000042353  -0.000036331   0.001051612   0.004944471   0.000012939   0.000048092   0.003290854   0.002623123
                         0.005764011  -0.000664736  -0.070630394   0.018575227   0.035664368  -0.001316362   0.022082304   0.009256080

   60    9.2  1.5 -1.5   0.000390451   0.001475868  -0.008138151  -0.038304366  -0.000007840   0.000005535  -0.001702739  -0.001025563
                         0.086804906  -0.001021614   0.550531920  -0.144071156  -0.000127423   0.000002421   0.029153889   0.002733335


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5   0.001093828  -0.005318734  -0.000039611  -0.000083721  -0.000024640   0.000483649  -0.000164682   0.000024053
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.023555174  -0.004023016   0.000012608  -0.000007064   0.000033729   0.000032391   0.000123238   0.000339244
                        -0.001606064  -0.003859611   0.000076722  -0.000035475   0.000221032  -0.000006678  -0.000046945   0.000021182

    3    3.2  0.5  0.5  -0.003037958  -0.004269788   0.000016670  -0.000005308  -0.000069493  -0.000021874  -0.000038174   0.000000968
                         0.028630792   0.004623901  -0.000007285   0.000003734  -0.000002312  -0.000018202  -0.000078694  -0.000182372

    4    4.2  0.5  0.5  -0.004950940  -0.003447890   0.005585348  -0.001457600  -0.006351770   0.000019948   0.001086490  -0.002166562
                        -0.011829945   0.060618813  -0.000960316   0.000618344  -0.013765296   0.296253097  -0.102604909   0.020917632

    5    5.2  0.5  0.5   0.116865542   0.018226011   0.042019206  -0.015338871   0.032130259  -0.008259878  -0.019917857   0.002583577
                         0.016271417   0.016628802   0.212800825  -0.097186764   0.217047663   0.015709835   0.014930899   0.005181495

    6    6.2  0.5  0.5   0.001793485   0.011783772   0.211496246  -0.096612711  -0.113816968   0.002981669   0.024183500  -0.015878029
                        -0.062210673  -0.011701192  -0.041593877   0.015253781   0.009716759   0.006087028   0.071506274   0.176195972

    7    7.2  0.5  0.5  -0.033826610   0.178380385  -0.100041554  -0.220754519   0.013086977  -0.101988135  -0.164897658   0.082478661
                         0.022181374   0.016780018   0.003839711   0.000344258  -0.023348801   0.001152276   0.007782735   0.038235669

    8    8.2  0.5  0.5   0.022145553   0.016717962   0.000609388  -0.000842711   0.033630858   0.000001146  -0.011565239  -0.057200693
                         0.033273496  -0.175030851  -0.002469587  -0.004865662   0.016966582  -0.100119590  -0.262171572   0.125927287

    9    9.2  0.5  0.5  -0.307162426  -0.048106601   0.000212614  -0.000089282   0.000915713   0.000324020   0.001757223   0.005105588
                        -0.045530700  -0.054704821   0.001303410  -0.000595164   0.005063033   0.000041237  -0.000531593   0.000477425

   10   10.2  0.5  0.5  -0.060397398  -0.060558055  -0.000242961   0.000123142  -0.003919117  -0.000431243  -0.000614286   0.000362795
                         0.377665737   0.057899392   0.000049996  -0.000004570   0.000705697  -0.000380854  -0.001457480  -0.002531116

   11   11.2  0.5  0.5  -0.009799845   0.069213130   0.000303658   0.000608771   0.000174612  -0.004466105   0.002487186  -0.000729964
                         0.003668605   0.001242467  -0.000006522   0.000003073   0.000089232   0.000009040  -0.000032338  -0.000214460

   12   12.2  0.5  0.5   0.000036310   0.000032649   0.000004055  -0.000003565  -0.000114624  -0.000017963   0.000026493   0.000127647
                         0.000062174  -0.000359408  -0.000131927  -0.000298574  -0.000150506   0.002591191  -0.000194509  -0.000182300

   13    1.2  0.5 -0.5  -0.001238994  -0.000254806  -0.000082759   0.000039156  -0.000476871  -0.000024294  -0.000001447  -0.000009906
                         0.005172410   0.001063736   0.000012650  -0.000005985   0.000080687   0.000004111   0.000024010   0.000164384

   14    2.2  0.5 -0.5   0.002816272   0.003925273  -0.000001623  -0.000000870  -0.000033051  -0.000003618   0.000000738   0.000054273
                         0.004811431  -0.023281277   0.000036135   0.000077747  -0.000001181  -0.000223561   0.000339904  -0.000120191

   15    3.2  0.5 -0.5  -0.005491335   0.028550819  -0.000005811  -0.000017579   0.000018531  -0.000068133  -0.000182100   0.000076255
                         0.003075189   0.003715133  -0.000002889  -0.000004682  -0.000021596   0.000013873  -0.000010004   0.000042839

   16    4.2  0.5 -0.5  -0.059754309  -0.010351175  -0.001534298  -0.005666324   0.049404272  -0.003966288   0.021010078   0.102484472
                        -0.010768054  -0.007570508  -0.000390997  -0.000105329   0.292104632   0.014632051  -0.000904410   0.005087327

   17    5.2  0.5 -0.5  -0.011925596  -0.011399932  -0.000477586  -0.009382003   0.010764995  -0.004530114   0.005016707  -0.016101954
                        -0.021598257   0.117440859   0.098388617   0.216706675   0.014111675  -0.219366177   0.002890574   0.018983674

   18    6.2  0.5 -0.5   0.014124297  -0.060916983  -0.097808298  -0.215352806  -0.001924383  -0.113842946   0.176832014  -0.069922118
                        -0.008733807  -0.012747767  -0.000480213  -0.009158682   0.006499154   0.009407514  -0.005250807  -0.028440927

   19    7.2  0.5 -0.5   0.025235141   0.029451015  -0.218271855   0.099473077   0.100751073   0.016798855   0.033205211  -0.017687501
                        -0.177381844  -0.027728877   0.033016261  -0.011320908  -0.015878566   0.020838281   0.084629250   0.164130926

   20    8.2  0.5 -0.5   0.174110002   0.027199324  -0.000097821  -0.000975552  -0.016704094   0.030329006   0.129139978   0.261001178
                         0.024515220   0.029287332   0.004937131  -0.002349151  -0.098716288  -0.022339447  -0.049522389   0.027314337

   21    9.2  0.5 -0.5   0.041993453   0.027275061   0.000001674  -0.000013224  -0.000312599   0.000058213   0.000169451   0.000636330
                         0.059526570  -0.309318399   0.000601821   0.001320571   0.000094715  -0.005144846   0.005125061  -0.001722065

   22   10.2  0.5 -0.5  -0.070413455   0.381345272   0.000122419   0.000247726   0.000361661  -0.003981925  -0.002548356   0.001417891
                         0.045404437   0.029241033  -0.000014090   0.000012710  -0.000447461  -0.000041980   0.000209887   0.000700843

   23   11.2  0.5 -0.5   0.014914840   0.005850542   0.000601316  -0.000301157   0.004405023   0.000157278  -0.000170163   0.000181888
                        -0.067598436  -0.008675643  -0.000095025   0.000039437  -0.000736167  -0.000117112  -0.000741542  -0.002480738

   24   12.2  0.5 -0.5   0.000357126   0.000052005   0.000041591  -0.000023943   0.000450000  -0.000087908  -0.000189648   0.000195751
                         0.000051973   0.000049795   0.000295684  -0.000129800   0.002551881   0.000167519   0.000116450  -0.000014745

   25    1.2  1.5  1.5   0.000374665  -0.001729322  -0.060229582  -0.132802854   0.022867648  -0.244483296  -0.186484992   0.105921225
                        -0.000201287  -0.000154554   0.002279646   0.000356557  -0.032929062  -0.000247047   0.010374481   0.051612721

   26    2.2  1.5  1.5   0.000495588   0.000365164  -0.002252137  -0.000196904   0.034731036  -0.000006502  -0.011831295  -0.059763353
                         0.000866465  -0.004129586  -0.060479323  -0.133521311   0.015228961  -0.051399142  -0.291252199   0.132982143

   27    3.2  1.5  1.5   0.000009954   0.000001717  -0.251795372   0.114822421  -0.058198233  -0.009895787  -0.019784637   0.010450584
                        -0.000032170  -0.000026132   0.038216069  -0.013001980   0.010147213  -0.012417209  -0.050260089  -0.097652880

   28    4.2  1.5  1.5  -0.009780721   0.063994341   0.062857591   0.138714989  -0.007672796  -0.146838735   0.406073508  -0.163972343
                         0.003371434   0.001460398  -0.002294844  -0.000061306   0.037411862  -0.000253414  -0.013576824  -0.069510326

   29    5.2  1.5  1.5   0.002602035   0.000906163   0.002362486   0.000509373  -0.032190464  -0.000499231   0.009275741   0.045088287
                         0.008469411  -0.057814862   0.061252081   0.135174356  -0.031501304   0.451239822   0.085387777  -0.081794943

   30    6.2  1.5  1.5   0.012820240   0.004586981   0.000409766  -0.000201331  -0.190058200  -0.007243981   0.006438760  -0.007708460
                        -0.057326478  -0.007780036   0.000082918  -0.000013341   0.032424058   0.002985854   0.027314721   0.104198155

   31    7.2  1.5  1.5   0.020984132   0.004435997  -0.015510698   0.005293678   0.027237054   0.008005898   0.047171508   0.141150532
                        -0.001338650   0.008327589  -0.103127302   0.047007473   0.160160558   0.002878308  -0.014418621   0.011789603

   32    8.2  1.5  1.5   0.340592806   0.052991645  -0.066506163   0.022632947  -0.025738643   0.021074621   0.081652413   0.146036070
                         0.050467021   0.055555706  -0.437958983   0.199655704  -0.148632042  -0.019181033  -0.033267231   0.016502886

   33    9.2  1.5  1.5  -0.163468308  -0.025541167   0.000131037  -0.000047616   0.000587670  -0.000287112  -0.001068629  -0.001521181
                        -0.023720915  -0.027211136   0.000862400  -0.000385600   0.003410521   0.000321777   0.000471351  -0.000202232

   34    1.2  1.5  0.5  -0.000054100  -0.000116165  -0.219269286   0.099959438  -0.214119435  -0.015083057  -0.012537194   0.002960854
                         0.000476570   0.000084907   0.033403449  -0.011343234   0.036693385  -0.008664973  -0.022278131   0.000024272

   35    2.2  1.5  0.5   0.002558672   0.000432295  -0.032944498   0.011222781   0.018231021   0.013610409   0.067859639   0.174780971
                         0.000354034   0.000443197  -0.217924075   0.099335871   0.108046233  -0.002781046  -0.023111602   0.015842127

   36    3.2  1.5  0.5   0.000167547  -0.000596085  -0.000283303  -0.000743234  -0.013079090   0.330596605  -0.178712666   0.045997596
                        -0.000141689  -0.000142941  -0.000065409  -0.000241158  -0.003007829   0.000428861   0.002430645   0.013770958

   37    4.2  1.5  0.5   0.048470381   0.055493442  -0.076431194   0.034845639  -0.297129061  -0.013521975   0.003804850  -0.008384277
                        -0.333607163  -0.052110751   0.011824233  -0.004013842   0.050737537   0.000901009   0.025932241   0.125777787

   38    5.2  1.5  0.5   0.336663659   0.052656071  -0.011166766   0.003835138   0.044094850   0.007933882   0.054064853   0.178884843
                         0.048811251   0.056141120  -0.074965487   0.034225179   0.259084664   0.007684375  -0.014980496   0.014135776

   39    6.2  1.5  0.5   0.062935926  -0.332467543  -0.065405014  -0.144207747  -0.032142352   0.246889789   0.405975266  -0.202603572
                        -0.041501564  -0.030338653   0.002668171  -0.000000603   0.057364673   0.000474866  -0.018892228  -0.094412779

   40    7.2  1.5  0.5  -0.041885686  -0.030372793   0.007830588   0.000675752  -0.022005526   0.000129889   0.006970556   0.035058397
                        -0.064737843   0.344134970   0.203098691   0.448156064  -0.014527165   0.145310064   0.133597794  -0.072937316

   41    8.2  1.5  0.5   0.007174864   0.006241910  -0.001801853  -0.000007041   0.007036798  -0.000284206  -0.003116610  -0.016588840
                         0.006395376  -0.020768205  -0.047464378  -0.104758393  -0.004287051   0.161586727  -0.138334113   0.044823274

   42    9.2  1.5  0.5  -0.001404078  -0.000516484   0.000018473   0.000006198   0.000160851  -0.000015008  -0.000069315  -0.000353069
                        -0.004344456   0.029243375   0.000330408   0.000703398   0.000001479   0.001441402  -0.002277374   0.000841671

   43    1.2  1.5 -0.5   0.000109632  -0.000476062  -0.100525705  -0.221799003  -0.013426099   0.217240253   0.000153872  -0.021483658
                        -0.000093190  -0.000058405   0.003891132   0.000112230   0.011059848   0.000457579  -0.002956953  -0.013854557

   44    2.2  1.5 -0.5   0.000330302   0.000251746   0.003915979   0.000362647   0.013883630   0.000049841  -0.005300085  -0.027151618
                         0.000523645  -0.002570752   0.099891096   0.220399889   0.000471445   0.109573519  -0.175417416   0.066346563

   45    3.2  1.5 -0.5  -0.000000151   0.000176821   0.000698260  -0.000270167   0.325891963   0.012393999  -0.010979193   0.013176098
                        -0.000612984  -0.000129931  -0.000350693   0.000107465  -0.055576323  -0.005147662  -0.046742652  -0.178242855

   46    4.2  1.5 -0.5  -0.063604270   0.335720409  -0.035052047  -0.077340290  -0.013482788   0.301429541  -0.126054363   0.025656417
                         0.041827615   0.030576528   0.001297508  -0.000139522   0.001367491   0.000456405   0.000803360   0.005357826

   47    5.2  1.5 -0.5   0.042330444   0.030957043   0.001380407   0.000288925   0.006540708  -0.000253763  -0.003349969  -0.018205458
                         0.064285463  -0.338772223   0.034411708   0.075792067  -0.008900294   0.262810111  -0.179411217   0.053065855

   48    6.2  1.5 -0.5   0.047943960   0.055020671   0.142551877  -0.065057207   0.243350568   0.041262053   0.082054892  -0.043278082
                        -0.330388375  -0.051536748  -0.021790752   0.007245328  -0.041656865   0.051198432   0.207915788   0.404103750

   49    7.2  1.5 -0.5   0.341742770   0.053199611   0.067049522  -0.022948048  -0.024114028   0.019273564   0.074914064   0.132936592
                         0.050628674   0.055813980   0.443112487  -0.201949953  -0.143295308  -0.017994761  -0.030607619   0.014994056

   50    8.2  1.5 -0.5  -0.021650896  -0.004548056  -0.015822298   0.005390823  -0.027237757  -0.007653391  -0.045739955  -0.137896156
                         0.001232258  -0.008467272  -0.103556631   0.047191661  -0.159274781  -0.003053021   0.013862610  -0.011431985

   51    9.2  1.5 -0.5   0.028559174   0.003897857   0.000100158  -0.000031665  -0.000255267  -0.000158350  -0.000861385  -0.002269080
                         0.006309938   0.002377487   0.000696258  -0.000329406  -0.001418698   0.000028293   0.000301801  -0.000206177

   52    1.2  1.5 -1.5  -0.000252542  -0.000283027  -0.131331901   0.059882492   0.241015808   0.028040733   0.045147932  -0.021573067
                         0.001717749   0.000317468   0.019714385  -0.006847371  -0.041030764   0.028652570   0.108834016   0.185523273

   53    2.2  1.5 -1.5   0.004101041   0.000727181   0.019980765  -0.006912300  -0.008568514   0.031703653   0.136336207   0.290013144
                         0.000606864   0.000683796   0.132017984  -0.060125209  -0.050679901  -0.020809720  -0.051656048   0.029329158

   54    3.2  1.5 -1.5   0.000025813  -0.000033603   0.115468673   0.254678826   0.007685540  -0.059075484  -0.098104675   0.048979003
                         0.000004417   0.000002186  -0.004497265  -0.000269642  -0.013894106  -0.000295788   0.004557683   0.022772037

   55    4.2  1.5 -1.5   0.013487194   0.005557091   0.137131540  -0.062482623   0.144738609  -0.013806693  -0.059521261   0.037978212
                        -0.062573988  -0.008726271  -0.020899583   0.007229446  -0.024746986  -0.035607506  -0.167856588  -0.404521544

   56    5.2  1.5 -1.5   0.056435405   0.007630268  -0.019921663   0.006919984   0.075772630  -0.026483970  -0.084358965  -0.084675210
                         0.012586678   0.004503391  -0.133699264   0.060905768   0.444832704   0.036430173   0.040086547  -0.014395156

   57    6.2  1.5 -1.5   0.008634532  -0.058735828  -0.000197003  -0.000392532   0.007640592  -0.192803968   0.104473155  -0.026877959
                        -0.002648437  -0.000886601   0.000043609   0.000143882   0.001735495  -0.000262223  -0.001426816  -0.008070125

   58    7.2  1.5 -1.5  -0.007065128  -0.006190054  -0.001870051  -0.000250191  -0.007413513   0.000135739   0.003277824   0.017229954
                        -0.006253862   0.020095000  -0.047267626  -0.104286910   0.004173595  -0.162459974   0.141604107  -0.046218790

   59    8.2  1.5 -1.5  -0.041682963  -0.030262116  -0.007795405  -0.000434165  -0.023979248  -0.000581631   0.007688700   0.038118516
                        -0.064475433   0.342978985  -0.200783172  -0.442979630  -0.015396342   0.150843042   0.146764311  -0.079503484

   60    9.2  1.5 -1.5   0.020512741   0.015011443   0.000011196   0.000000779   0.000336771   0.000010457  -0.000110364  -0.000534777
                         0.031177309  -0.164496887   0.000388367   0.000872298   0.000269369  -0.003460766  -0.001530591   0.001038341


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  0.5  0.5  -0.000018499   0.000268627  -0.000178356  -0.001440960  -0.000597205   0.016396407  -0.031013054   0.000037645
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000977912   0.000001340  -0.000223133   0.000013439  -0.015598900  -0.000569218   0.000034246   0.029113835
                        -0.000484917   0.000007440   0.000744984  -0.000090496  -0.005214785  -0.000321601   0.000258777   0.010560886

    3    3.2  0.5  0.5  -0.000513543   0.000007524  -0.000364344   0.000054702   0.005231738   0.000191698  -0.000011664  -0.010554825
                        -0.001082284   0.000000701  -0.000150316   0.000024009  -0.015638832  -0.000799417   0.000463412   0.029073812

    4    4.2  0.5  0.5  -0.002848470  -0.003149250   0.005657295  -0.001133076  -0.000000692   0.000006891   0.000000412  -0.000000312
                        -0.003254726   0.136528566  -0.046938523  -0.401966991   0.000169986  -0.003346964   0.000123542  -0.000003641

    5    5.2  0.5  0.5   0.241318717   0.000053599   0.104311124  -0.015845899   0.001001188   0.000028530  -0.000006172  -0.000298401
                        -0.106049063   0.001845145  -0.310682437   0.037569572   0.000310672  -0.000000007  -0.000003930  -0.000089769

    6    6.2  0.5  0.5  -0.071499969   0.001225373   0.372079896  -0.045150994  -0.000281416  -0.000018643   0.000000226   0.000013945
                        -0.136618245  -0.001346620   0.117540640  -0.006954090   0.000932384   0.000104018  -0.000003786   0.000009273

    7    7.2  0.5  0.5   0.001625318   0.418124156   0.007671575   0.063007116   0.000013947  -0.000360872   0.000029976  -0.000001553
                         0.002764450   0.013158429  -0.000033831   0.001068359   0.000011456   0.000003801   0.000001992   0.000000283

    8    8.2  0.5  0.5   0.002284444   0.012738987   0.000940185   0.002147342   0.000008077   0.000022246   0.000001872   0.000001179
                        -0.002091405  -0.404983605  -0.016091893  -0.135493008  -0.000044440   0.000769720  -0.000061673   0.000000343

    9    9.2  0.5  0.5  -0.006827621   0.000004997   0.000627194  -0.000126790   0.340019681   0.018000597   0.004009843   0.225988134
                         0.002793373  -0.000046003  -0.002515516   0.000294454   0.089649171   0.005759482   0.001734765   0.065767739

   10   10.2  0.5  0.5   0.002379189  -0.000063789   0.001226457  -0.000143215  -0.089404834  -0.006162253  -0.002011649  -0.065685338
                         0.005938807  -0.000000620   0.000327676  -0.000080637   0.339267904   0.017413431   0.003641388   0.225745337

   11   11.2  0.5  0.5   0.000015974   0.001966487  -0.001101050  -0.008825345  -0.019017181   0.352415994   0.235568441  -0.004417178
                         0.000002773   0.000032417   0.000057657   0.000010312   0.001381775   0.000053514   0.000001175   0.000811635

   12   12.2  0.5  0.5   0.000004663  -0.000062039   0.000005629  -0.000030764  -0.001771637  -0.000065076  -0.000000891  -0.001063248
                        -0.000008603   0.002004982  -0.000420627  -0.003372134  -0.029068651   0.557156623   0.387241704  -0.006559128

   13    1.2  0.5 -0.5  -0.000096282  -0.000006630  -0.001388791   0.000171899  -0.004329344  -0.000157687   0.000010856   0.008943430
                        -0.000250779  -0.000017270  -0.000384221   0.000047557   0.015814517   0.000576011  -0.000036045  -0.029695531

   14    2.2  0.5 -0.5  -0.000007426  -0.000102194  -0.000011178   0.000016411  -0.000159890   0.000910950  -0.001716489   0.000237907
                         0.000001416   0.001086744   0.000090803   0.000777509  -0.000633934   0.016422236  -0.030922506   0.000107417

   15    3.2  0.5 -0.5  -0.000003351  -0.001194442   0.000059123   0.000391233  -0.000821663   0.016465227  -0.030882435   0.000447089
                        -0.000006772  -0.000091508  -0.000008554  -0.000047725  -0.000026185  -0.000916758   0.001722227   0.000122468

   16    4.2  0.5 -0.5  -0.126328787  -0.004059436  -0.108273492   0.007063324  -0.003230004  -0.000164136   0.000003397   0.000118174
                         0.051874893  -0.001492650   0.387111866  -0.046747613  -0.000877094  -0.000044216   0.000001349   0.000036021

   17    5.2  0.5 -0.5  -0.001741764  -0.012509111  -0.005254567  -0.017693489  -0.000007540  -0.000035291  -0.000000097  -0.000001983
                         0.000611304   0.263295744  -0.040434575  -0.327248113   0.000027516  -0.001047687   0.000311611  -0.000007043

   18    6.2  0.5 -0.5   0.000817949  -0.153168453  -0.045370582  -0.389950260   0.000105249  -0.000973600  -0.000004858  -0.000003690
                        -0.001626617  -0.017782456  -0.005336849   0.014072872   0.000009483   0.000025240  -0.000016027  -0.000000875

   19    7.2  0.5 -0.5  -0.162149194   0.003163329   0.061010847  -0.007384809   0.000098952  -0.000007367  -0.000000719  -0.000006737
                        -0.385627532   0.000526491   0.015770688  -0.002078173  -0.000347061  -0.000016477   0.000001406   0.000029277

   20    8.2  0.5 -0.5   0.373510382  -0.001133655  -0.034058581   0.003384634   0.000736530   0.000044995   0.000000012  -0.000059593
                        -0.157047753   0.002882271   0.131160129  -0.015759988   0.000224695   0.000003944  -0.000001228  -0.000015992

   21    9.2  0.5 -0.5   0.000041156   0.000160609  -0.000043685   0.000066256   0.000802167   0.003311934   0.002195888   0.000504724
                        -0.000021154  -0.007375198  -0.000317601  -0.002591680   0.018882523  -0.351623930  -0.235353374   0.004339758

   22   10.2  0.5 -0.5   0.000023442   0.006396984  -0.000159531  -0.001269426   0.018422543  -0.350834317  -0.235097129   0.004066803
                         0.000059329   0.000092514   0.000039531  -0.000011213  -0.001345680  -0.003349099  -0.002204772  -0.000876098

   23   11.2  0.5 -0.5  -0.000735096   0.000008314  -0.008503078   0.001045813  -0.093001091  -0.006354076  -0.002050964  -0.067931236
                        -0.001824214   0.000013919  -0.002363149   0.000349156   0.339923275   0.017977435   0.003995468   0.225561161

   24   12.2  0.5 -0.5  -0.001849534  -0.000006359  -0.000928804   0.000106731   0.537400941   0.027569250   0.005973862   0.370790830
                         0.000776547   0.000007437   0.003241845  -0.000406899   0.147050112   0.009384116   0.002909575   0.111670485

   25    1.2  1.5  1.5  -0.000114942   0.028851210  -0.025265091  -0.203684695   0.005236015  -0.100768843   0.165798171  -0.002808253
                         0.000182845  -0.000199605   0.001722792  -0.000292415  -0.000315779  -0.000024395   0.000000443   0.000455626

   26    2.2  1.5  1.5   0.000302856  -0.000057109   0.001716028  -0.000264132  -0.000317508  -0.000017170   0.000001059   0.000456097
                         0.000073625  -0.033548879   0.025062185   0.201898733  -0.005300635   0.101795674  -0.165811204   0.002806980

   27    3.2  1.5  1.5  -0.137301842   0.002683858   0.053413332  -0.006452119   0.000414485   0.000040027  -0.000034920  -0.000018754
                        -0.329034104   0.000427397   0.012896931  -0.001679241  -0.001453695  -0.000078411   0.000000068   0.000061741

   28    4.2  1.5  1.5   0.000039876  -0.008361593   0.008141155   0.065694354   0.006038354  -0.115511841   0.169422426  -0.002867110
                        -0.000068206   0.000099959  -0.000544657   0.000092646  -0.000368221  -0.000012184   0.000000912   0.000464785

   29    5.2  1.5  1.5  -0.000111967  -0.000057041  -0.000538586   0.000061919  -0.000338434  -0.000017947  -0.000000238   0.000424548
                        -0.000030463   0.013547528  -0.007920863  -0.063820848  -0.005962196   0.114426329  -0.169426690   0.002856972

   30    6.2  1.5  1.5   0.002660721  -0.000070610   0.055362729  -0.006733949  -0.061884883  -0.003946523   0.002537595   0.097364747
                         0.007169635   0.000050498   0.015208885  -0.002382149   0.226185449   0.011598669  -0.005208859  -0.323286220

   31    7.2  1.5  1.5  -0.005294069   0.000067953   0.015138263  -0.002360542   0.220159152   0.011289190  -0.005072472  -0.314823954
                         0.002528678  -0.000032318  -0.055337355   0.006739481   0.060237467   0.003831622  -0.002453428  -0.094816310

   32    8.2  1.5  1.5  -0.053811613   0.000069105  -0.001576423   0.000295069  -0.051288640  -0.002632563   0.001189305   0.073816888
                         0.022376289  -0.000440204   0.004739744  -0.000571586  -0.014033706  -0.000875267   0.000563865   0.022230531

   33    9.2  1.5  1.5   0.511697049  -0.000670972  -0.019873112   0.002588776   0.001631673   0.000090765  -0.000000464  -0.000105327
                        -0.213518353   0.004183918   0.082355377  -0.010026926   0.000470729   0.000009038   0.000001106  -0.000032340

   34    1.2  1.5  0.5   0.065366523  -0.001272256  -0.257868664   0.031415154  -0.014717115  -0.000958661   0.000760832   0.027552553
                         0.153553476  -0.000442694  -0.069951110   0.010685619   0.053745341   0.002773192  -0.001474672  -0.091483435

   35    2.2  1.5  0.5  -0.222533264   0.000050377  -0.055583927   0.008814856   0.053378320   0.002752059  -0.001470221  -0.091181328
                         0.091553090  -0.001808570   0.198247921  -0.024129530   0.014603793   0.000946823  -0.000717355  -0.027461165

   36    3.2  1.5  0.5   0.000018120  -0.016917717   0.014268586   0.114434997   0.006080021  -0.116351176   0.190998972  -0.003242154
                        -0.000184158   0.000088456  -0.000944732   0.000159919  -0.000381086  -0.000005316   0.000001104   0.000545417

   37    4.2  1.5  0.5   0.023242996  -0.000447554  -0.010311453   0.001255044   0.053837625   0.003438402  -0.002197558  -0.084411356
                         0.055644301  -0.000085756  -0.002526282   0.000350497  -0.196744683  -0.010090176   0.004515159   0.280277639

   38    5.2  1.5  0.5  -0.055812791   0.000078324   0.001861988  -0.000224618  -0.197379200  -0.010129054   0.004510448   0.280003174
                         0.023275934  -0.000466441  -0.007850921   0.000966281  -0.054017501  -0.003426356   0.002172147   0.084327198

   39    6.2  1.5  0.5   0.000252099   0.065478989   0.001399221   0.011410656   0.000101373  -0.001755360  -0.000314656   0.000005465
                         0.000435721   0.001898470   0.000018633   0.000343541  -0.000007166   0.000009560   0.000001240   0.000000529

   40    7.2  1.5  0.5   0.000392809   0.001660582   0.000137247   0.000281871   0.000187670   0.000007536  -0.000000080  -0.000239689
                        -0.000226273  -0.059932400   0.000620108   0.004915958   0.002788310  -0.053271742   0.077424688  -0.001318586

   41    8.2  1.5  0.5  -0.000013011  -0.000414777   0.000480865  -0.000144171   0.000709411   0.000019489  -0.000001504  -0.000873614
                         0.000084851   0.004061543   0.007559767   0.060938581   0.011909918  -0.228290666   0.329245179  -0.005566326

   42    9.2  1.5  0.5   0.000754760  -0.000342812   0.004652385  -0.000747306  -0.000005791  -0.000018296   0.000000836   0.000001271
                         0.000205887  -0.085188336   0.068345089   0.550699062  -0.000169751   0.003979799  -0.000278207   0.000003215

   43    1.2  1.5 -0.5  -0.000869286  -0.166780135  -0.033127024  -0.267184598  -0.002927901   0.055723919  -0.095542462   0.001631429
                        -0.001029055  -0.005986555   0.001922141  -0.001340149   0.000192399  -0.000003781   0.000000386  -0.000303249

   44    2.2  1.5 -0.5  -0.001670352  -0.005709382  -0.002061763  -0.000710241  -0.000186562  -0.000008610  -0.000000000   0.000262902
                         0.000695261   0.240562725  -0.025606347  -0.205891493  -0.002904392   0.055340001  -0.095226836   0.001614630

   45    3.2  1.5 -0.5  -0.005981108   0.000165428  -0.110334581   0.013500093  -0.030716497  -0.001972944   0.001457206   0.055078524
                        -0.015825401  -0.000082922  -0.030359092   0.004715139   0.112223406   0.005763625  -0.002947133  -0.182885110

   46    4.2  1.5 -0.5  -0.000240471  -0.060278077  -0.001303063  -0.010611746   0.010639971  -0.203977841   0.292712884  -0.004957066
                        -0.000387082  -0.001754564   0.000003160  -0.000314651  -0.000652145  -0.000021918   0.000000113   0.000802135

   47    5.2  1.5 -0.5  -0.000407378  -0.001724923  -0.000041166  -0.000298813   0.000630261   0.000015964  -0.000001547  -0.000779161
                         0.000240303   0.060447178   0.000991190   0.008063168   0.010674288  -0.204637335   0.292425809  -0.004945227

   48    6.2  1.5 -0.5   0.025241464  -0.000497130  -0.011089141   0.001353531  -0.000472710  -0.000033678  -0.000001070  -0.000091927
                         0.060448082  -0.000079178  -0.002711461   0.000355133   0.001690540   0.000095883   0.000005385   0.000300931

   49    7.2  1.5 -0.5  -0.055355276   0.000070448  -0.001582469   0.000297625   0.051383177   0.002639803  -0.001193448  -0.074135489
                         0.023031360  -0.000447812   0.004662819  -0.000561062   0.014058721   0.000917241  -0.000609755  -0.022327371

   50    8.2  1.5 -0.5   0.003643027  -0.000074550  -0.016109858   0.002479210   0.220194031   0.011299934  -0.005077923  -0.315258340
                        -0.001842966   0.000042559   0.058770774  -0.007157851   0.060259580   0.003828956  -0.002441697  -0.094945073

   51    9.2  1.5 -0.5  -0.079651258  -0.000462731  -0.146119464   0.022707646  -0.003843391  -0.000162198   0.000002712   0.000266629
                         0.030213363  -0.000630819   0.530960561  -0.064630169  -0.001033189  -0.000050407   0.000002144   0.000079428

   52    1.2  1.5 -1.5  -0.010154574   0.000129499  -0.196388370   0.023891012   0.026583701   0.001687101  -0.001246104  -0.047811843
                        -0.027005866  -0.000172840  -0.054029145   0.008397163  -0.097199110  -0.004966816   0.002557559   0.158754720

   53    2.2  1.5 -1.5   0.031340346   0.000177283   0.053580192  -0.008336541   0.098187593   0.005028686  -0.002556204  -0.158767377
                        -0.011971351   0.000256345  -0.194659527   0.023697256   0.026861796   0.001705831  -0.001246187  -0.047815011

   54    3.2  1.5 -1.5  -0.001360955  -0.356384976  -0.006666281  -0.054918399  -0.000086197   0.001511546  -0.000064526   0.000010136
                        -0.002352352  -0.010246292  -0.000101963  -0.001812254   0.000017902  -0.000015939   0.000000152  -0.000033417

   55    4.2  1.5 -1.5   0.002903664  -0.000049382   0.063340628  -0.007701180   0.030488252   0.001949534  -0.001271846  -0.048856543
                         0.007841872   0.000061673   0.017427608  -0.002695714  -0.111415672  -0.005726834   0.002611274   0.162225142

   56    5.2  1.5 -1.5  -0.012626979  -0.000068571  -0.016957666   0.002631125   0.110370206   0.005661244  -0.002613170  -0.162228893
                         0.004908987  -0.000093610   0.061526759  -0.007490483   0.030196074   0.001900695  -0.001230395  -0.048858874

   57    6.2  1.5 -1.5  -0.000021834   0.007646943  -0.007125332  -0.057413685   0.012229094  -0.234498603   0.337629788  -0.005719354
                         0.000084018  -0.000085815   0.000500348  -0.000103795  -0.000743927  -0.000033853  -0.000000324   0.000927680

   58    7.2  1.5 -1.5   0.000005815   0.000463160  -0.000478049   0.000165094   0.000714819   0.000031607   0.000000470  -0.000886419
                        -0.000075022  -0.005848663  -0.007124902  -0.057370398   0.011900259  -0.228251185   0.328792115  -0.005564489

   59    8.2  1.5 -1.5   0.000386188   0.001602317   0.000131977   0.000255533  -0.000149097  -0.000006702   0.000000928   0.000196943
                        -0.000222292  -0.058256507   0.000629570   0.004988485  -0.002770244   0.053173955  -0.077091695   0.001301385

   60    9.2  1.5 -1.5  -0.003665445  -0.015928474  -0.000178553  -0.002805818  -0.000015249  -0.000023193   0.000000592   0.000001193
                         0.002126001   0.554229411   0.010354184   0.084672759   0.000089930  -0.001698059   0.000110178  -0.000000125


   Nr   State  S   Sz       57            58            59            60

    1    1.2  0.5  0.5   0.004050908  -0.000000000   0.000000000   0.000809347
                         0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000080699  -0.000141595   0.002724621  -0.000404319
                        -0.000013560  -0.002736183  -0.001388880   0.000149103

    3    3.2  0.5  0.5  -0.000033179   0.001346527  -0.001594561   0.000163556
                        -0.000063838   0.000127668  -0.003511309   0.000463144

    4    4.2  0.5  0.5   0.001059888  -0.004062058  -0.002057405  -0.005271143
                         0.318729279  -0.000756125   0.009499314   0.122709885

    5    5.2  0.5  0.5   0.004941226  -0.001601338   0.205844335  -0.024503730
                         0.000634121   0.257307888  -0.084938709   0.008816834

    6    6.2  0.5  0.5  -0.001196339  -0.322564844  -0.054592984   0.005918647
                        -0.007689798   0.010389421  -0.094921151   0.015998826

    7    7.2  0.5  0.5  -0.066359852   0.000245821   0.044853681   0.330618369
                        -0.004388052  -0.004282168  -0.000747771   0.026971410

    8    8.2  0.5  0.5  -0.005251896  -0.004945510  -0.001193584   0.026304133
                         0.122862576  -0.000458672  -0.043826171  -0.314646510

    9    9.2  0.5  0.5  -0.001142998   0.013809266  -0.172705167   0.026083531
                         0.000567080   0.164770081   0.070852476  -0.007250468

   10   10.2  0.5  0.5  -0.000329363  -0.080763426   0.086366380  -0.008784052
                         0.003945790   0.003010728   0.219495398  -0.028821002

   11   11.2  0.5  0.5   0.245694144  -0.000883726   0.003453636   0.048810237
                         0.000013421  -0.002613889   0.000661069  -0.000101183

   12   12.2  0.5  0.5   0.000000827  -0.000004235   0.000001315   0.000005711
                        -0.000072100   0.000000151  -0.000013403  -0.000110497

   13    1.2  0.5 -0.5  -0.000000000   0.004043857  -0.000248483   0.000000000
                        -0.000000000  -0.000238914  -0.000770259   0.000000000

   14    2.2  0.5 -0.5  -0.000020026   0.000081359  -0.000017769  -0.000485298
                        -0.002739771   0.000008777   0.000430569   0.003019443

   15    3.2  0.5 -0.5  -0.001336654  -0.000029357  -0.000490991  -0.003831285
                         0.000206861   0.000065683  -0.000013464  -0.000439518

   16    4.2  0.5 -0.5   0.004010392  -0.017739973  -0.115165161   0.008408877
                        -0.000994381  -0.318236971   0.042690591  -0.004874492

   17    5.2  0.5 -0.5   0.016774056   0.004895226  -0.000867954  -0.017638796
                         0.256765544  -0.000924441   0.026027217   0.221980511

   18    6.2  0.5 -0.5   0.322616097  -0.000740728  -0.017043273  -0.107097817
                        -0.008652895   0.007746970  -0.000720888  -0.022813953

   19    7.2  0.5 -0.5  -0.000497946  -0.065985540  -0.127174266   0.013059186
                        -0.004260216   0.008294185  -0.306370150   0.042917007

   20    8.2  0.5 -0.5   0.004909850  -0.012488944   0.291374533  -0.042075994
                        -0.000749550  -0.122338961  -0.121635584   0.012319442

   21    9.2  0.5 -0.5  -0.004067418  -0.001174454  -0.001107789   0.014407160
                         0.165297706  -0.000498681  -0.027049819  -0.186117118

   22   10.2  0.5 -0.5   0.080800407  -0.000561505   0.030125918   0.235410602
                        -0.001757778  -0.003919496  -0.000488720   0.014806408

   23   11.2  0.5 -0.5   0.000728025   0.245265668  -0.014889277   0.001689467
                        -0.002661460  -0.014503948  -0.046483964   0.003083880

   24   12.2  0.5 -0.5   0.000004236   0.000005078   0.000103407  -0.000012352
                        -0.000000099   0.000071925  -0.000039359   0.000005367

   25    1.2  1.5  1.5  -0.228877613   0.000731566  -0.002857985  -0.045645871
                        -0.000007580   0.002202607  -0.000391619   0.000052075

   26    2.2  1.5  1.5  -0.000010924   0.002203621  -0.000475642   0.000074847
                         0.228916578  -0.000713788   0.002872823   0.045505583

   27    3.2  1.5  1.5   0.000594368   0.078332422   0.149790748  -0.015341326
                         0.005083477  -0.010801188   0.363775450  -0.050909963

   28    4.2  1.5  1.5  -0.209541437   0.000653875  -0.002615460  -0.041553432
                        -0.000011351   0.002016724  -0.000436278   0.000076257

   29    5.2  1.5  1.5  -0.000005649   0.002021212  -0.000414008   0.000047372
                         0.209467414  -0.000631637   0.002652908   0.041883202

   30    6.2  1.5  1.5  -0.000533247  -0.209309913   0.012785067  -0.001224682
                         0.002054363   0.012373554   0.039815461  -0.002389004

   31    7.2  1.5  1.5   0.001386995   0.013329138  -0.004992875   0.003794360
                         0.000562692   0.212939749   0.005565859  -0.000657702

   32    8.2  1.5  1.5  -0.003074950   0.002714267  -0.195514422   0.026636984
                         0.000178225  -0.007602847   0.079683691  -0.008142435

   33    9.2  1.5  1.5  -0.004223288   0.008976392  -0.302238038   0.042298470
                         0.000450418   0.065122194   0.124451517  -0.012754861

   34    1.2  1.5  0.5  -0.000957163  -0.309596952  -0.070368345   0.007324341
                        -0.000340329   0.021865048  -0.159821013   0.026389254

   35    2.2  1.5  0.5   0.005531552   0.009373790   0.260507442  -0.032438880
                         0.000360631   0.218904470  -0.102710333   0.010420042

   36    3.2  1.5  0.5   0.132638845  -0.000343824   0.001722879   0.026697018
                        -0.000000283  -0.001285498   0.000309216  -0.000023551

   37    4.2  1.5  0.5   0.000286349   0.041700169   0.078865830  -0.008084626
                         0.002674503  -0.005714882   0.191513531  -0.026809675

   38    5.2  1.5  0.5  -0.002683924   0.005682345  -0.191959630   0.026863418
                         0.000307245   0.041027898   0.079035394  -0.008120262

   39    6.2  1.5  0.5  -0.041780591   0.000127497   0.028076006   0.207092052
                        -0.003255547  -0.002695982  -0.000540440   0.016303043

   40    7.2  1.5  0.5  -0.003158479  -0.003079084  -0.000404761   0.015812100
                        -0.007205098   0.000021003  -0.027869235  -0.210584218

   41    8.2  1.5  0.5   0.000752486  -0.001344438   0.000526846  -0.003782032
                        -0.212929746   0.000668671   0.003858351   0.006789437

   42    9.2  1.5  0.5  -0.000010479   0.003176364  -0.000682102   0.000086458
                         0.329602270  -0.001028175   0.004171557   0.065791064

   43    1.2  1.5 -0.5  -0.310347588   0.000935425   0.027363456   0.173706581
                        -0.003567577  -0.000396188  -0.001131345   0.017902065

   44    2.2  1.5 -0.5  -0.003553076  -0.005500654  -0.000042492   0.017769618
                        -0.219076267   0.000686244  -0.034071343  -0.279459802

   45    3.2  1.5 -0.5  -0.000267410  -0.132407975   0.008174025  -0.000823235
                         0.001303539   0.007822491   0.025414890  -0.001544736

   46    4.2  1.5 -0.5   0.041964633  -0.000128114  -0.027996993  -0.206477350
                         0.003245542   0.002686736   0.000536856  -0.016259014

   47    5.2  1.5 -0.5   0.003252710   0.002697373   0.000519441  -0.016283429
                        -0.041291613   0.000148418   0.028059082   0.206953963

   48    6.2  1.5 -0.5   0.000286279   0.041515857   0.079096457  -0.008105473
                         0.002683769  -0.005714016   0.192085027  -0.026885972

   49    7.2  1.5 -0.5  -0.003074963   0.002728039  -0.195559264   0.026647531
                         0.000160632  -0.007378836   0.079701379  -0.008171116

   50    8.2  1.5 -0.5  -0.001381535  -0.013309347   0.005300386  -0.003833759
                        -0.000588214  -0.212514715  -0.005683848   0.000683178

   51    9.2  1.5 -0.5   0.003231475   0.019449744   0.062640164  -0.003760670
                         0.000839050   0.329027907  -0.020116694   0.001929898

   52    1.2  1.5 -1.5  -0.000600388  -0.228478754   0.013964499  -0.001250156
                         0.002241919   0.013506312   0.043457347  -0.002599722

   53    2.2  1.5 -1.5  -0.002241883  -0.013511948  -0.043330826   0.002588047
                        -0.000582580  -0.228517455   0.013899756  -0.001334676

   54    3.2  1.5 -1.5  -0.078833100   0.000293520   0.053161265   0.392194869
                        -0.006162497  -0.005109683  -0.001029823   0.030871203

   55    4.2  1.5 -1.5  -0.000533795  -0.209176015   0.012685037  -0.001218198
                         0.002051778   0.012369666   0.039569981  -0.002355199

   56    5.2  1.5 -1.5  -0.002054947  -0.012359609  -0.039874956   0.002397676
                        -0.000511330  -0.209102457   0.012813772  -0.001208501

   57    6.2  1.5 -1.5   0.209675331  -0.000653481   0.002649623   0.041817767
                         0.000007334  -0.002019337   0.000432069  -0.000056425

   58    7.2  1.5 -1.5  -0.000747175   0.001351394  -0.000538995   0.003764152
                         0.213355207  -0.000643515  -0.003813033  -0.006460552

   59    8.2  1.5 -1.5  -0.003157943  -0.003080109  -0.000428819   0.015809034
                        -0.007429530   0.000003440  -0.027850391  -0.210536112

   60    9.2  1.5 -1.5  -0.005119990  -0.004242502  -0.000847498   0.025648787
                         0.065538244  -0.000200552  -0.044171583  -0.325849891


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  62.411%   0.020%   3.888%   0.015%   0.917%  32.245%   0.004%   0.000%   0.088%   0.001%
    2    2.2  0.5  0.5   0.004%  31.963%   0.209%  34.157%  32.307%   0.856%   0.000%   0.052%   0.000%   0.037%
    3    3.2  0.5  0.5   0.007%   5.094%   0.448%  60.783%  32.138%   1.026%   0.000%   0.078%   0.000%   0.008%
    4    4.2  0.5  0.5   0.012%   0.000%   0.002%   0.000%   0.000%   0.000%   0.141%   0.000%   0.953%   0.009%
    5    5.2  0.5  0.5   0.000%   0.008%   0.000%   0.007%   0.000%   0.000%   0.003%   0.458%   0.005%   0.574%
    6    6.2  0.5  0.5   0.000%   0.014%   0.000%   0.001%   0.000%   0.000%   0.001%   0.112%   0.009%   0.927%
    7    7.2  0.5  0.5   0.001%   0.000%   0.014%   0.000%   0.000%   0.000%   0.988%   0.006%   0.037%   0.000%
    8    8.2  0.5  0.5   0.002%   0.000%   0.012%   0.000%   0.000%   0.000%   0.938%   0.006%   0.143%   0.001%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.046%   6.959%   0.055%   6.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.014%   0.000%   0.073%  12.079%   0.014%   1.524%
   11   11.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.014%   0.402%   0.002%  11.855%   0.105%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.003%   0.103%   0.017%   0.000%   0.024%   0.000%
   13    1.2  0.5 -0.5   0.020%  62.411%   0.015%   3.888%  32.245%   0.917%   0.000%   0.004%   0.001%   0.088%
   14    2.2  0.5 -0.5  31.963%   0.004%  34.157%   0.209%   0.856%  32.307%   0.052%   0.000%   0.037%   0.000%
   15    3.2  0.5 -0.5   5.094%   0.007%  60.783%   0.448%   1.026%  32.138%   0.078%   0.000%   0.008%   0.000%
   16    4.2  0.5 -0.5   0.000%   0.012%   0.000%   0.002%   0.000%   0.000%   0.000%   0.141%   0.009%   0.953%
   17    5.2  0.5 -0.5   0.008%   0.000%   0.007%   0.000%   0.000%   0.000%   0.458%   0.003%   0.574%   0.005%
   18    6.2  0.5 -0.5   0.014%   0.000%   0.001%   0.000%   0.000%   0.000%   0.112%   0.001%   0.927%   0.009%
   19    7.2  0.5 -0.5   0.000%   0.001%   0.000%   0.014%   0.000%   0.000%   0.006%   0.988%   0.000%   0.037%
   20    8.2  0.5 -0.5   0.000%   0.002%   0.000%   0.012%   0.000%   0.000%   0.006%   0.938%   0.001%   0.143%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   6.959%   0.046%   6.000%   0.055%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.014%  12.079%   0.073%   1.524%   0.014%
   23   11.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.014%   0.000%   0.002%   0.402%   0.105%  11.855%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.103%   0.003%   0.000%   0.017%   0.000%   0.024%
   25    1.2  1.5  1.5   0.026%   0.000%   0.002%   0.000%   0.000%   0.010%   0.306%   0.001%   8.602%   0.075%
   26    2.2  1.5  1.5   0.026%   0.000%   0.002%   0.000%   0.000%   0.010%   0.304%   0.001%   8.570%   0.075%
   27    3.2  1.5  1.5   0.000%   0.005%   0.001%   0.076%   0.000%   0.000%   0.166%  26.652%   0.011%   1.064%
   28    4.2  1.5  1.5   0.016%   0.000%   0.001%   0.000%   0.000%   0.016%   0.073%   0.000%   2.025%   0.018%
   29    5.2  1.5  1.5   0.016%   0.000%   0.001%   0.000%   0.000%   0.016%   0.079%   0.000%   2.019%   0.018%
   30    6.2  1.5  1.5   0.000%   0.015%   0.000%   0.001%   0.062%   0.002%   0.000%   0.089%   0.018%   2.045%
   31    7.2  1.5  1.5   0.000%   0.017%   0.000%   0.000%   0.059%   0.002%   0.000%   0.001%   0.019%   2.120%
   32    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.016%   0.003%   0.000%   0.013%   2.115%   0.000%   0.002%
   33    9.2  1.5  1.5   0.000%   0.014%   0.002%   0.228%   0.000%   0.000%   0.123%  19.804%   0.008%   0.784%
   34    1.2  1.5  0.5   0.000%   0.051%   0.000%   0.013%   0.003%   0.000%   0.035%   5.118%   0.146%  16.319%
   35    2.2  1.5  0.5   0.000%   0.021%   0.000%   0.042%   0.003%   0.000%   0.079%  13.556%   0.070%   8.219%
   36    3.2  1.5  0.5   0.009%   0.000%   0.001%   0.000%   0.000%   0.013%   0.143%   0.001%   3.164%   0.028%
   37    4.2  1.5  0.5   0.000%   0.001%   0.000%   0.015%   0.047%   0.001%   0.012%   2.003%   0.001%   0.094%
   38    5.2  1.5  0.5   0.000%   0.001%   0.000%   0.015%   0.047%   0.001%   0.013%   2.047%   0.001%   0.070%
   39    6.2  1.5  0.5   0.001%   0.000%   0.015%   0.000%   0.000%   0.000%   2.021%   0.013%   0.078%   0.001%
   40    7.2  1.5  0.5   0.000%   0.000%   0.016%   0.000%   0.000%   0.003%   2.062%   0.013%   0.002%   0.000%
   41    8.2  1.5  0.5   0.017%   0.000%   0.000%   0.000%   0.002%   0.059%   0.004%   0.000%   2.021%   0.018%
   42    9.2  1.5  0.5   0.230%   0.000%   0.014%   0.000%   0.000%   0.000%   0.785%   0.003%  19.753%   0.173%
   43    1.2  1.5 -0.5   0.051%   0.000%   0.013%   0.000%   0.000%   0.003%   5.118%   0.035%  16.319%   0.146%
   44    2.2  1.5 -0.5   0.021%   0.000%   0.042%   0.000%   0.000%   0.003%  13.556%   0.079%   8.219%   0.070%
   45    3.2  1.5 -0.5   0.000%   0.009%   0.000%   0.001%   0.013%   0.000%   0.001%   0.143%   0.028%   3.164%
   46    4.2  1.5 -0.5   0.001%   0.000%   0.015%   0.000%   0.001%   0.047%   2.003%   0.012%   0.094%   0.001%
   47    5.2  1.5 -0.5   0.001%   0.000%   0.015%   0.000%   0.001%   0.047%   2.047%   0.013%   0.070%   0.001%
   48    6.2  1.5 -0.5   0.000%   0.001%   0.000%   0.015%   0.000%   0.000%   0.013%   2.021%   0.001%   0.078%
   49    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.016%   0.003%   0.000%   0.013%   2.062%   0.000%   0.002%
   50    8.2  1.5 -0.5   0.000%   0.017%   0.000%   0.000%   0.059%   0.002%   0.000%   0.004%   0.018%   2.021%
   51    9.2  1.5 -0.5   0.000%   0.230%   0.000%   0.014%   0.000%   0.000%   0.003%   0.785%   0.173%  19.753%
   52    1.2  1.5 -1.5   0.000%   0.026%   0.000%   0.002%   0.010%   0.000%   0.001%   0.306%   0.075%   8.602%
   53    2.2  1.5 -1.5   0.000%   0.026%   0.000%   0.002%   0.010%   0.000%   0.001%   0.304%   0.075%   8.570%
   54    3.2  1.5 -1.5   0.005%   0.000%   0.076%   0.001%   0.000%   0.000%  26.652%   0.166%   1.064%   0.011%
   55    4.2  1.5 -1.5   0.000%   0.016%   0.000%   0.001%   0.016%   0.000%   0.000%   0.073%   0.018%   2.025%
   56    5.2  1.5 -1.5   0.000%   0.016%   0.000%   0.001%   0.016%   0.000%   0.000%   0.079%   0.018%   2.019%
   57    6.2  1.5 -1.5   0.015%   0.000%   0.001%   0.000%   0.002%   0.062%   0.089%   0.000%   2.045%   0.018%
   58    7.2  1.5 -1.5   0.017%   0.000%   0.000%   0.000%   0.002%   0.059%   0.001%   0.000%   2.120%   0.019%
   59    8.2  1.5 -1.5   0.000%   0.000%   0.016%   0.000%   0.000%   0.003%   2.115%   0.013%   0.002%   0.000%
   60    9.2  1.5 -1.5   0.014%   0.000%   0.228%   0.002%   0.000%   0.000%  19.804%   0.123%   0.784%   0.008%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.039%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.042%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.045%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.001%   0.000%   0.002%   0.000%   0.202%   0.629%   0.002%  38.774%   0.253%
    5    5.2  0.5  0.5   0.001%   0.000%   0.345%   0.000%   0.566%   0.000%   0.000%   0.095%   0.029%   8.106%
    6    6.2  0.5  0.5   0.000%   0.000%   0.295%   0.000%   0.158%   0.000%   0.002%   0.457%   0.225%  23.517%
    7    7.2  0.5  0.5   0.000%   0.000%   0.000%   1.022%   0.000%   0.085%   0.003%   0.000%   0.908%   0.005%
    8    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.195%   0.001%   0.634%   0.144%   0.000%   9.459%   0.052%
    9    9.2  0.5  0.5  12.153%   0.126%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5  11.533%   0.116%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.134%  12.842%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.446%  44.383%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.039%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.042%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.045%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.001%   0.000%   0.002%   0.000%   0.202%   0.000%   0.002%   0.629%   0.253%  38.774%
   17    5.2  0.5 -0.5   0.000%   0.001%   0.000%   0.345%   0.000%   0.566%   0.095%   0.000%   8.106%   0.029%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.295%   0.000%   0.158%   0.457%   0.002%  23.517%   0.225%
   19    7.2  0.5 -0.5   0.000%   0.000%   1.022%   0.000%   0.085%   0.000%   0.000%   0.003%   0.005%   0.908%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.195%   0.000%   0.634%   0.001%   0.000%   0.144%   0.052%   9.459%
   21    9.2  0.5 -0.5   0.126%  12.153%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.116%  11.533%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5  12.842%   0.134%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5  44.383%   0.446%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   25    1.2  1.5  1.5   0.041%   4.109%   0.000%  20.827%   0.014%  20.088%   0.469%   0.001%   0.007%   0.000%
   26    2.2  1.5  1.5   0.042%   4.194%   0.000%  21.970%   0.007%  10.427%   8.896%   0.017%   0.176%   0.001%
   27    3.2  1.5  1.5   0.009%   0.000%  12.895%   0.000%  14.996%   0.011%   0.004%   2.061%   0.000%   0.016%
   28    4.2  1.5  1.5   0.001%   0.137%   0.000%   3.003%   0.000%   0.523%   6.023%   0.011%   4.313%   0.018%
   29    5.2  1.5  1.5   0.001%   0.139%   0.000%   2.573%   0.003%   4.347%   2.554%   0.005%   1.699%   0.006%
   30    6.2  1.5  1.5   0.409%   0.004%   0.002%   0.000%   0.210%   0.000%   0.003%   1.820%   0.007%   1.861%
   31    7.2  1.5  1.5   0.410%   0.004%   0.222%   0.000%   0.012%   0.000%   0.005%   2.349%   0.005%   1.160%
   32    8.2  1.5  1.5   0.015%   0.000%   4.853%   0.000%   6.203%   0.005%   0.001%   0.344%   0.000%   0.031%
   33    9.2  1.5  1.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   1.115%   0.011%  10.425%   0.000%  19.804%   0.014%   0.007%   3.788%   0.000%   0.086%
   35    2.2  1.5  0.5   0.996%   0.010%   9.075%   0.000%   5.188%   0.004%   0.038%  19.474%   0.001%   0.276%
   36    3.2  1.5  0.5   0.051%   5.117%   0.000%   0.043%   0.003%   4.557%  40.046%   0.077%   0.720%   0.003%
   37    4.2  1.5  0.5   0.409%   0.004%   0.189%   0.000%   1.110%   0.001%   0.006%   3.213%   0.009%   2.438%
   38    5.2  1.5  0.5   0.338%   0.003%   0.095%   0.000%   0.063%   0.000%   0.008%   4.390%   0.015%   3.809%
   39    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.185%   0.007%  10.549%   1.207%   0.002%   0.940%   0.005%
   40    7.2  1.5  0.5   0.000%   0.035%   0.000%  11.105%   0.000%   0.008%   0.179%   0.000%   0.005%   0.000%
   41    8.2  1.5  0.5   0.005%   0.508%   0.000%   0.679%   0.000%   0.197%   1.664%   0.003%   1.060%   0.004%
   42    9.2  1.5  0.5   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.011%   1.115%   0.000%  10.425%   0.014%  19.804%   3.788%   0.007%   0.086%   0.000%
   44    2.2  1.5 -0.5   0.010%   0.996%   0.000%   9.075%   0.004%   5.188%  19.474%   0.038%   0.276%   0.001%
   45    3.2  1.5 -0.5   5.117%   0.051%   0.043%   0.000%   4.557%   0.003%   0.077%  40.046%   0.003%   0.720%
   46    4.2  1.5 -0.5   0.004%   0.409%   0.000%   0.189%   0.001%   1.110%   3.213%   0.006%   2.438%   0.009%
   47    5.2  1.5 -0.5   0.003%   0.338%   0.000%   0.095%   0.000%   0.063%   4.390%   0.008%   3.809%   0.015%
   48    6.2  1.5 -0.5   0.000%   0.000%   0.185%   0.000%  10.549%   0.007%   0.002%   1.207%   0.005%   0.940%
   49    7.2  1.5 -0.5   0.035%   0.000%  11.105%   0.000%   0.008%   0.000%   0.000%   0.179%   0.000%   0.005%
   50    8.2  1.5 -0.5   0.508%   0.005%   0.679%   0.000%   0.197%   0.000%   0.003%   1.664%   0.004%   1.060%
   51    9.2  1.5 -0.5   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   4.109%   0.041%  20.827%   0.000%  20.088%   0.014%   0.001%   0.469%   0.000%   0.007%
   53    2.2  1.5 -1.5   4.194%   0.042%  21.970%   0.000%  10.427%   0.007%   0.017%   8.896%   0.001%   0.176%
   54    3.2  1.5 -1.5   0.000%   0.009%   0.000%  12.895%   0.011%  14.996%   2.061%   0.004%   0.016%   0.000%
   55    4.2  1.5 -1.5   0.137%   0.001%   3.003%   0.000%   0.523%   0.000%   0.011%   6.023%   0.018%   4.313%
   56    5.2  1.5 -1.5   0.139%   0.001%   2.573%   0.000%   4.347%   0.003%   0.005%   2.554%   0.006%   1.699%
   57    6.2  1.5 -1.5   0.004%   0.409%   0.000%   0.002%   0.000%   0.210%   1.820%   0.003%   1.861%   0.007%
   58    7.2  1.5 -1.5   0.004%   0.410%   0.000%   0.222%   0.000%   0.012%   2.349%   0.005%   1.160%   0.005%
   59    8.2  1.5 -1.5   0.000%   0.015%   0.000%   4.853%   0.005%   6.203%   0.344%   0.001%   0.031%   0.000%
   60    9.2  1.5 -1.5   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.218%   9.488%   0.027%   0.011%   0.000%   0.000%   0.000%   0.000%   0.028%   0.000%
    5    5.2  0.5  0.5  14.376%   0.286%   0.099%  25.746%   0.000%   0.000%   0.000%   0.000%   0.000%   0.026%
    6    6.2  0.5  0.5   2.267%   0.053%   0.082%  22.493%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.2  0.5  0.5   0.298%  15.509%  31.754%   0.120%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
    8    8.2  0.5  0.5   0.712%  37.861%   0.578%   0.001%   0.000%   0.002%   0.000%   0.000%   0.002%   0.000%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   9.488%   0.218%   0.011%   0.027%   0.000%   0.000%   0.000%   0.000%   0.000%   0.028%
   17    5.2  0.5 -0.5   0.286%  14.376%  25.746%   0.099%   0.000%   0.000%   0.000%   0.000%   0.026%   0.000%
   18    6.2  0.5 -0.5   0.053%   2.267%  22.493%   0.082%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    7.2  0.5 -0.5  15.509%   0.298%   0.120%  31.754%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    8.2  0.5 -0.5  37.861%   0.712%   0.001%   0.578%   0.002%   0.000%   0.000%   0.000%   0.000%   0.002%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.008%   0.416%   0.094%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    2.2  1.5  1.5   0.005%   0.271%   0.104%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    3.2  1.5  1.5   0.089%   0.002%   0.001%   0.285%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    4.2  1.5  1.5   0.020%   1.100%   1.448%   0.006%   0.023%  22.957%   0.568%   0.006%   0.002%   0.000%
   29    5.2  1.5  1.5   0.087%   4.397%   1.003%   0.004%   0.012%   9.145%  17.221%   0.361%   5.355%   0.058%
   30    6.2  1.5  1.5   0.159%   0.003%   0.000%   0.001%   2.375%   0.002%   0.158%   7.008%   0.378%  34.065%
   31    7.2  1.5  1.5   0.000%   0.000%   0.001%   0.256%   8.787%   0.008%   0.386%  16.568%   0.197%  17.297%
   32    8.2  1.5  1.5   1.728%   0.033%   0.022%   5.886%   4.085%   0.003%   0.055%   2.836%   0.111%  10.587%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.140%   0.003%   0.001%   0.211%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    2.2  1.5  0.5   0.029%   0.000%   0.001%   0.197%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    3.2  1.5  0.5   0.001%   0.047%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    4.2  1.5  0.5   0.776%   0.016%   0.001%   0.379%  17.486%   0.013%   0.134%   4.979%   0.168%  16.232%
   38    5.2  1.5  0.5   0.028%   0.001%   0.001%   0.293%   1.252%   0.002%   0.291%  13.379%   0.001%   0.099%
   39    6.2  1.5  0.5   0.161%   8.449%   0.600%   0.002%   0.006%   4.335%   3.117%   0.063%   4.261%   0.045%
   40    7.2  1.5  0.5   0.018%   0.933%   7.662%   0.029%   0.026%  27.229%   1.564%   0.022%   0.669%   0.007%
   41    8.2  1.5  0.5   0.000%   0.013%   0.597%   0.002%   0.003%   2.246%  30.577%   0.705%  10.301%   0.110%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.003%   0.140%   0.211%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    2.2  1.5 -0.5   0.000%   0.029%   0.197%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    3.2  1.5 -0.5   0.047%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    4.2  1.5 -0.5   0.016%   0.776%   0.379%   0.001%   0.013%  17.486%   4.979%   0.134%  16.232%   0.168%
   47    5.2  1.5 -0.5   0.001%   0.028%   0.293%   0.001%   0.002%   1.252%  13.379%   0.291%   0.099%   0.001%
   48    6.2  1.5 -0.5   8.449%   0.161%   0.002%   0.600%   4.335%   0.006%   0.063%   3.117%   0.045%   4.261%
   49    7.2  1.5 -0.5   0.933%   0.018%   0.029%   7.662%  27.229%   0.026%   0.022%   1.564%   0.007%   0.669%
   50    8.2  1.5 -0.5   0.013%   0.000%   0.002%   0.597%   2.246%   0.003%   0.705%  30.577%   0.110%  10.301%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.416%   0.008%   0.000%   0.094%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.271%   0.005%   0.000%   0.104%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.2  1.5 -1.5   0.002%   0.089%   0.285%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.2  1.5 -1.5   1.100%   0.020%   0.006%   1.448%  22.957%   0.023%   0.006%   0.568%   0.000%   0.002%
   56    5.2  1.5 -1.5   4.397%   0.087%   0.004%   1.003%   9.145%   0.012%   0.361%  17.221%   0.058%   5.355%
   57    6.2  1.5 -1.5   0.003%   0.159%   0.001%   0.000%   0.002%   2.375%   7.008%   0.158%  34.065%   0.378%
   58    7.2  1.5 -1.5   0.000%   0.000%   0.256%   0.001%   0.008%   8.787%  16.568%   0.386%  17.297%   0.197%
   59    8.2  1.5 -1.5   0.033%   1.728%   5.886%   0.022%   0.003%   4.085%   2.836%   0.055%  10.587%   0.111%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.140%   0.000%   0.003%   0.000%   0.005%   0.000%   0.093%   0.003%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.056%   0.006%   0.082%   0.000%   0.005%   0.001%   0.039%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.019%   0.009%   0.115%   0.000%   0.005%   0.001%   0.011%
    4    4.2  0.5  0.5   0.000%   0.025%   5.072%   0.013%   0.524%   0.045%   0.000%   0.000%   3.228%   0.126%
    5    5.2  0.5  0.5   0.021%   0.000%   0.010%   3.454%   0.160%   2.061%   0.000%   0.000%   0.073%   1.949%
    6    6.2  0.5  0.5   0.129%   0.000%   0.011%   4.924%   0.047%   0.711%   0.000%   0.000%   0.106%   2.970%
    7    7.2  0.5  0.5   0.000%   0.007%   0.128%   0.000%   5.167%   0.379%   0.000%   0.000%   0.099%   0.001%
    8    8.2  0.5  0.5   0.000%   0.041%   0.568%   0.001%   4.736%   0.343%   0.000%   0.000%   0.404%   0.008%
    9    9.2  0.5  0.5   0.000%   0.000%   0.022%  11.676%   1.216%  17.075%   0.004%   3.063%   0.182%   6.988%
   10   10.2  0.5  0.5   0.000%   0.000%   0.017%   3.960%   1.819%  24.196%   0.004%   3.019%   0.097%   2.015%
   11   11.2  0.5  0.5   0.000%   0.000%  29.231%   0.073%   0.617%   0.063%   3.117%   0.004%  16.216%   0.539%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.881%   0.012%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.140%   0.000%   0.003%   0.000%   0.005%   0.003%   0.093%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.056%   0.000%   0.082%   0.006%   0.005%   0.000%   0.039%   0.001%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.019%   0.000%   0.115%   0.009%   0.005%   0.000%   0.011%   0.001%
   16    4.2  0.5 -0.5   0.025%   0.000%   0.013%   5.072%   0.045%   0.524%   0.000%   0.000%   0.126%   3.228%
   17    5.2  0.5 -0.5   0.000%   0.021%   3.454%   0.010%   2.061%   0.160%   0.000%   0.000%   1.949%   0.073%
   18    6.2  0.5 -0.5   0.000%   0.129%   4.924%   0.011%   0.711%   0.047%   0.000%   0.000%   2.970%   0.106%
   19    7.2  0.5 -0.5   0.007%   0.000%   0.000%   0.128%   0.379%   5.167%   0.000%   0.000%   0.001%   0.099%
   20    8.2  0.5 -0.5   0.041%   0.000%   0.001%   0.568%   0.343%   4.736%   0.000%   0.000%   0.008%   0.404%
   21    9.2  0.5 -0.5   0.000%   0.000%  11.676%   0.022%  17.075%   1.216%   3.063%   0.004%   6.988%   0.182%
   22   10.2  0.5 -0.5   0.000%   0.000%   3.960%   0.017%  24.196%   1.819%   3.019%   0.004%   2.015%   0.097%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.073%  29.231%   0.063%   0.617%   0.004%   3.117%   0.539%  16.216%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   8.881%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.000%   0.910%   0.002%   0.020%   0.002%  17.291%   0.023%   0.000%   0.000%
   26    2.2  1.5  1.5   0.000%   0.000%   0.911%   0.002%   0.018%   0.002%  17.273%   0.023%   0.000%   0.000%
   27    3.2  1.5  1.5   0.001%   0.000%   0.000%   0.064%   0.187%   2.546%   0.000%   0.000%   0.000%   0.000%
   28    4.2  1.5  1.5   0.000%  10.972%   0.520%   0.001%   0.011%   0.001%   0.638%   0.001%  11.226%   0.378%
   29    5.2  1.5  1.5   0.000%   2.161%   0.520%   0.001%   0.011%   0.001%   0.634%   0.001%  11.271%   0.379%
   30    6.2  1.5  1.5   6.923%   0.000%   0.001%   0.522%   0.001%   0.011%   0.003%   2.478%   0.399%  11.887%
   31    7.2  1.5  1.5   7.429%   0.000%   0.001%   0.539%   0.000%   0.003%   0.003%   2.353%   0.394%  12.197%
   32    8.2  1.5  1.5  13.165%   0.000%   0.000%   0.003%   0.037%   0.499%   0.000%   0.127%   0.009%   0.050%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.754%   2.222%  30.315%   0.000%   0.000%   0.001%   0.085%
   34    1.2  1.5  0.5   0.000%   0.000%   0.003%   1.541%   0.039%   0.573%   0.008%   5.780%   0.000%   0.001%
   35    2.2  1.5  0.5   0.002%   0.000%   0.003%   0.909%   0.089%   1.165%   0.008%   5.802%   0.000%   0.000%
   36    3.2  1.5  0.5   0.000%   0.001%   0.309%   0.001%   0.006%   0.001%  23.054%   0.031%   0.005%   0.000%
   37    4.2  1.5  0.5   6.427%   0.000%   0.000%   0.012%   0.035%   0.484%   0.003%   1.908%   0.003%   0.299%
   38    5.2  1.5  0.5  29.897%   0.001%   0.000%   0.012%   0.036%   0.488%   0.003%   1.882%   0.005%   0.416%
   39    6.2  1.5  0.5   0.000%  15.755%   0.013%   0.000%   0.488%   0.036%   0.000%   0.000%   0.365%   0.004%
   40    7.2  1.5  0.5   0.000%   0.523%   0.003%   0.000%   0.502%   0.037%   0.138%   0.000%   0.037%   0.008%
   41    8.2  1.5  0.5   0.000%   6.516%   0.543%   0.001%   0.003%   0.000%   2.411%   0.003%  12.202%   0.393%
   42    9.2  1.5  0.5   0.000%   0.000%  32.445%   0.078%   0.688%   0.067%   0.000%   0.000%   2.745%   0.092%
   43    1.2  1.5 -0.5   0.000%   0.000%   1.541%   0.003%   0.573%   0.039%   5.780%   0.008%   0.001%   0.000%
   44    2.2  1.5 -0.5   0.000%   0.002%   0.909%   0.003%   1.165%   0.089%   5.802%   0.008%   0.000%   0.000%
   45    3.2  1.5 -0.5   0.001%   0.000%   0.001%   0.309%   0.001%   0.006%   0.031%  23.054%   0.000%   0.005%
   46    4.2  1.5 -0.5   0.000%   6.427%   0.012%   0.000%   0.484%   0.035%   1.908%   0.003%   0.299%   0.003%
   47    5.2  1.5 -0.5   0.001%  29.897%   0.012%   0.000%   0.488%   0.036%   1.882%   0.003%   0.416%   0.005%
   48    6.2  1.5 -0.5  15.755%   0.000%   0.000%   0.013%   0.036%   0.488%   0.000%   0.000%   0.004%   0.365%
   49    7.2  1.5 -0.5   0.523%   0.000%   0.000%   0.003%   0.037%   0.502%   0.000%   0.138%   0.008%   0.037%
   50    8.2  1.5 -0.5   6.516%   0.000%   0.001%   0.543%   0.000%   0.003%   0.003%   2.411%   0.393%  12.202%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.078%  32.445%   0.067%   0.688%   0.000%   0.000%   0.092%   2.745%
   52    1.2  1.5 -1.5   0.000%   0.000%   0.002%   0.910%   0.002%   0.020%   0.023%  17.291%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.000%   0.000%   0.002%   0.911%   0.002%   0.018%   0.023%  17.273%   0.000%   0.000%
   54    3.2  1.5 -1.5   0.000%   0.001%   0.064%   0.000%   2.546%   0.187%   0.000%   0.000%   0.000%   0.000%
   55    4.2  1.5 -1.5  10.972%   0.000%   0.001%   0.520%   0.001%   0.011%   0.001%   0.638%   0.378%  11.226%
   56    5.2  1.5 -1.5   2.161%   0.000%   0.001%   0.520%   0.001%   0.011%   0.001%   0.634%   0.379%  11.271%
   57    6.2  1.5 -1.5   0.000%   6.923%   0.522%   0.001%   0.011%   0.001%   2.478%   0.003%  11.887%   0.399%
   58    7.2  1.5 -1.5   0.000%   7.429%   0.539%   0.001%   0.003%   0.000%   2.353%   0.003%  12.197%   0.394%
   59    8.2  1.5 -1.5   0.000%  13.165%   0.003%   0.000%   0.499%   0.037%   0.127%   0.000%   0.050%   0.009%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.754%   0.000%  30.315%   2.222%   0.000%   0.000%   0.085%   0.001%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  0.5  0.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.056%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.083%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.016%   0.369%   0.003%   0.000%   0.023%   8.777%   1.053%   0.044%   0.002%   1.865%
    5    5.2  0.5  0.5   1.392%   0.061%   4.705%   0.968%   4.814%   0.032%   0.062%   0.003%   6.948%   0.000%
    6    6.2  0.5  0.5   0.387%   0.028%   4.646%   0.957%   1.305%   0.005%   0.570%   3.130%   2.378%   0.000%
    7    7.2  0.5  0.5   0.164%   3.210%   1.002%   4.873%   0.072%   1.040%   2.725%   0.826%   0.001%  17.500%
    8    8.2  0.5  0.5   0.160%   3.092%   0.001%   0.002%   0.142%   1.002%   6.887%   1.913%   0.001%  16.417%
    9    9.2  0.5  0.5   9.642%   0.531%   0.000%   0.000%   0.003%   0.000%   0.000%   0.003%   0.005%   0.000%
   10   10.2  0.5  0.5  14.628%   0.702%   0.000%   0.000%   0.002%   0.000%   0.000%   0.001%   0.004%   0.000%
   11   11.2  0.5  0.5   0.011%   0.479%   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.003%   0.056%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.004%   0.083%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.369%   0.016%   0.000%   0.003%   8.777%   0.023%   0.044%   1.053%   1.865%   0.002%
   17    5.2  0.5 -0.5   0.061%   1.392%   0.968%   4.705%   0.032%   4.814%   0.003%   0.062%   0.000%   6.948%
   18    6.2  0.5 -0.5   0.028%   0.387%   0.957%   4.646%   0.005%   1.305%   3.130%   0.570%   0.000%   2.378%
   19    7.2  0.5 -0.5   3.210%   0.164%   4.873%   1.002%   1.040%   0.072%   0.826%   2.725%  17.500%   0.001%
   20    8.2  0.5 -0.5   3.092%   0.160%   0.002%   0.001%   1.002%   0.142%   1.913%   6.887%  16.417%   0.001%
   21    9.2  0.5 -0.5   0.531%   9.642%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.000%   0.005%
   22   10.2  0.5 -0.5   0.702%  14.628%   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%   0.004%
   23   11.2  0.5 -0.5   0.479%   0.011%   0.000%   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.000%   0.363%   1.764%   0.161%   5.977%   3.488%   1.388%   0.000%   0.083%
   26    2.2  1.5  1.5   0.000%   0.002%   0.366%   1.783%   0.144%   0.264%   8.497%   2.126%   0.000%   0.113%
   27    3.2  1.5  1.5   0.000%   0.000%   6.486%   1.335%   0.349%   0.025%   0.292%   0.965%  12.712%   0.001%
   28    4.2  1.5  1.5   0.011%   0.410%   0.396%   1.924%   0.146%   2.156%  16.508%   3.172%   0.000%   0.007%
   29    5.2  1.5  1.5   0.008%   0.334%   0.376%   1.827%   0.203%  20.362%   0.738%   0.872%   0.000%   0.018%
   30    6.2  1.5  1.5   0.345%   0.008%   0.000%   0.000%   3.717%   0.006%   0.079%   1.092%   0.006%   0.000%
   31    7.2  1.5  1.5   0.044%   0.009%   1.088%   0.224%   2.639%   0.007%   0.243%   2.006%   0.003%   0.000%
   32    8.2  1.5  1.5  11.855%   0.589%  19.623%   4.037%   2.275%   0.081%   0.777%   2.160%   0.340%   0.000%
   33    9.2  1.5  1.5   2.728%   0.139%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%  30.742%   0.002%
   34    1.2  1.5  0.5   0.000%   0.000%   4.919%   1.012%   4.719%   0.030%   0.065%   0.001%   2.785%   0.000%
   35    2.2  1.5  0.5   0.001%   0.000%   4.858%   0.999%   1.201%   0.019%   0.514%   3.080%   5.790%   0.000%
   36    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.018%  10.929%   3.194%   0.231%   0.000%   0.029%
   37    4.2  1.5  0.5  11.364%   0.580%   0.598%   0.123%   9.086%   0.018%   0.069%   1.589%   0.364%   0.000%
   38    5.2  1.5  0.5  11.572%   0.592%   0.574%   0.119%   6.907%   0.012%   0.315%   3.220%   0.366%   0.000%
   39    6.2  1.5  0.5   0.568%  11.146%   0.428%   2.080%   0.432%   6.095%  16.517%   4.996%   0.000%   0.429%
   40    7.2  1.5  0.5   0.595%  11.935%   4.131%  20.084%   0.070%   2.112%   1.790%   0.655%   0.000%   0.359%
   41    8.2  1.5  0.5   0.009%   0.047%   0.226%   1.097%   0.007%   2.611%   1.915%   0.228%   0.000%   0.002%
   42    9.2  1.5  0.5   0.002%   0.086%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.726%
   43    1.2  1.5 -0.5   0.000%   0.000%   1.012%   4.919%   0.030%   4.719%   0.001%   0.065%   0.000%   2.785%
   44    2.2  1.5 -0.5   0.000%   0.001%   0.999%   4.858%   0.019%   1.201%   3.080%   0.514%   0.000%   5.790%
   45    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%  10.929%   0.018%   0.231%   3.194%   0.029%   0.000%
   46    4.2  1.5 -0.5   0.580%  11.364%   0.123%   0.598%   0.018%   9.086%   1.589%   0.069%   0.000%   0.364%
   47    5.2  1.5 -0.5   0.592%  11.572%   0.119%   0.574%   0.012%   6.907%   3.220%   0.315%   0.000%   0.366%
   48    6.2  1.5 -0.5  11.146%   0.568%   2.080%   0.428%   6.095%   0.432%   4.996%  16.517%   0.429%   0.000%
   49    7.2  1.5 -0.5  11.935%   0.595%  20.084%   4.131%   2.112%   0.070%   0.655%   1.790%   0.359%   0.000%
   50    8.2  1.5 -0.5   0.047%   0.009%   1.097%   0.226%   2.611%   0.007%   0.228%   1.915%   0.002%   0.000%
   51    9.2  1.5 -0.5   0.086%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.726%   0.000%
   52    1.2  1.5 -1.5   0.000%   0.000%   1.764%   0.363%   5.977%   0.161%   1.388%   3.488%   0.083%   0.000%
   53    2.2  1.5 -1.5   0.002%   0.000%   1.783%   0.366%   0.264%   0.144%   2.126%   8.497%   0.113%   0.000%
   54    3.2  1.5 -1.5   0.000%   0.000%   1.335%   6.486%   0.025%   0.349%   0.965%   0.292%   0.001%  12.712%
   55    4.2  1.5 -1.5   0.410%   0.011%   1.924%   0.396%   2.156%   0.146%   3.172%  16.508%   0.007%   0.000%
   56    5.2  1.5 -1.5   0.334%   0.008%   1.827%   0.376%  20.362%   0.203%   0.872%   0.738%   0.018%   0.000%
   57    6.2  1.5 -1.5   0.008%   0.345%   0.000%   0.000%   0.006%   3.717%   1.092%   0.079%   0.000%   0.006%
   58    7.2  1.5 -1.5   0.009%   0.044%   0.224%   1.088%   0.007%   2.639%   2.006%   0.243%   0.000%   0.003%
   59    8.2  1.5 -1.5   0.589%  11.855%   4.037%  19.623%   0.081%   2.275%   2.160%   0.777%   0.000%   0.340%
   60    9.2  1.5 -1.5   0.139%   2.728%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%  30.742%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.027%   0.096%   0.000%   0.002%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.027%   0.000%   0.000%   0.096%   0.000%   0.001%   0.001%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.027%   0.000%   0.000%   0.096%   0.000%   0.000%   0.001%   0.000%
    4    4.2  0.5  0.5   0.224%  16.158%   0.000%   0.001%   0.000%   0.000%  10.159%   0.002%   0.009%   1.509%
    5    5.2  0.5  0.5  10.740%   0.166%   0.000%   0.000%   0.000%   0.000%   0.002%   6.621%   4.959%   0.068%
    6    6.2  0.5  0.5  15.226%   0.209%   0.000%   0.000%   0.000%   0.000%   0.006%  10.416%   1.199%   0.029%
    7    7.2  0.5  0.5   0.006%   0.397%   0.000%   0.000%   0.000%   0.000%   0.442%   0.002%   0.201%  11.004%
    8    8.2  0.5  0.5   0.026%   1.836%   0.000%   0.000%   0.000%   0.000%   1.512%   0.002%   0.192%   9.969%
    9    9.2  0.5  0.5   0.001%   0.000%  12.365%   0.036%   0.002%   5.540%   0.000%   2.734%   3.485%   0.073%
   10   10.2  0.5  0.5   0.000%   0.000%  12.310%   0.034%   0.002%   5.528%   0.002%   0.653%   5.564%   0.091%
   11   11.2  0.5  0.5   0.000%   0.008%   0.036%  12.420%   5.549%   0.002%   6.037%   0.001%   0.001%   0.238%
   12   12.2  0.5  0.5   0.000%   0.001%   0.085%  31.042%  14.996%   0.004%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.027%   0.000%   0.000%   0.096%   0.000%   0.002%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.027%   0.096%   0.000%   0.001%   0.000%   0.000%   0.001%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.027%   0.096%   0.000%   0.000%   0.000%   0.000%   0.001%
   16    4.2  0.5 -0.5  16.158%   0.224%   0.001%   0.000%   0.000%   0.000%   0.002%  10.159%   1.509%   0.009%
   17    5.2  0.5 -0.5   0.166%  10.740%   0.000%   0.000%   0.000%   0.000%   6.621%   0.002%   0.068%   4.959%
   18    6.2  0.5 -0.5   0.209%  15.226%   0.000%   0.000%   0.000%   0.000%  10.416%   0.006%   0.029%   1.199%
   19    7.2  0.5 -0.5   0.397%   0.006%   0.000%   0.000%   0.000%   0.000%   0.002%   0.442%  11.004%   0.201%
   20    8.2  0.5 -0.5   1.836%   0.026%   0.000%   0.000%   0.000%   0.000%   0.002%   1.512%   9.969%   0.192%
   21    9.2  0.5 -0.5   0.000%   0.001%   0.036%  12.365%   5.540%   0.002%   2.734%   0.000%   0.073%   3.485%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.034%  12.310%   5.528%   0.002%   0.653%   0.002%   0.091%   5.564%
   23   11.2  0.5 -0.5   0.008%   0.000%  12.420%   0.036%   0.002%   5.549%   0.001%   6.037%   0.238%   0.001%
   24   12.2  0.5 -0.5   0.001%   0.000%  31.042%   0.085%   0.004%  14.996%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.064%   4.149%   0.003%   1.015%   2.749%   0.001%   5.238%   0.001%   0.001%   0.208%
   26    2.2  1.5  1.5   0.063%   4.076%   0.003%   1.036%   2.749%   0.001%   5.240%   0.001%   0.001%   0.207%
   27    3.2  1.5  1.5   0.302%   0.004%   0.000%   0.000%   0.000%   0.000%   0.003%   0.625%  15.477%   0.283%
   28    4.2  1.5  1.5   0.007%   0.432%   0.004%   1.334%   2.870%   0.001%   4.391%   0.000%   0.001%   0.173%
   29    5.2  1.5  1.5   0.006%   0.407%   0.004%   1.309%   2.871%   0.001%   4.388%   0.000%   0.001%   0.175%
   30    6.2  1.5  1.5   0.330%   0.005%   5.499%   0.015%   0.003%  11.399%   0.000%   4.396%   0.175%   0.001%
   31    7.2  1.5  1.5   0.329%   0.005%   5.210%   0.014%   0.003%  10.810%   0.000%   4.552%   0.006%   0.001%
   32    8.2  1.5  1.5   0.002%   0.000%   0.283%   0.001%   0.000%   0.594%   0.001%   0.007%   4.458%   0.078%
   33    9.2  1.5  1.5   0.718%   0.011%   0.000%   0.000%   0.000%   0.000%   0.002%   0.432%  10.684%   0.195%
   34    1.2  1.5  0.5   7.139%   0.110%   0.311%   0.001%   0.000%   0.913%   0.000%   9.633%   3.049%   0.075%
   35    2.2  1.5  0.5   4.239%   0.066%   0.306%   0.001%   0.000%   0.907%   0.003%   4.801%   7.841%   0.116%
   36    3.2  1.5  0.5   0.020%   1.310%   0.004%   1.354%   3.648%   0.001%   1.759%   0.000%   0.000%   0.071%
   37    4.2  1.5  0.5   0.011%   0.000%   4.161%   0.011%   0.003%   8.568%   0.001%   0.177%   4.290%   0.078%
   38    5.2  1.5  0.5   0.007%   0.000%   4.188%   0.011%   0.003%   8.551%   0.001%   0.172%   4.310%   0.079%
   39    6.2  1.5  0.5   0.000%   0.013%   0.000%   0.000%   0.000%   0.000%   0.176%   0.001%   0.079%   4.315%
   40    7.2  1.5  0.5   0.000%   0.002%   0.001%   0.284%   0.599%   0.000%   0.006%   0.001%   0.078%   4.460%
   41    8.2  1.5  0.5   0.006%   0.371%   0.014%   5.212%  10.840%   0.003%   4.534%   0.000%   0.002%   0.006%
   42    9.2  1.5  0.5   0.469%  30.327%   0.000%   0.002%   0.000%   0.000%  10.864%   0.001%   0.002%   0.433%
   43    1.2  1.5 -0.5   0.110%   7.139%   0.001%   0.311%   0.913%   0.000%   9.633%   0.000%   0.075%   3.049%
   44    2.2  1.5 -0.5   0.066%   4.239%   0.001%   0.306%   0.907%   0.000%   4.801%   0.003%   0.116%   7.841%
   45    3.2  1.5 -0.5   1.310%   0.020%   1.354%   0.004%   0.001%   3.648%   0.000%   1.759%   0.071%   0.000%
   46    4.2  1.5 -0.5   0.000%   0.011%   0.011%   4.161%   8.568%   0.003%   0.177%   0.001%   0.078%   4.290%
   47    5.2  1.5 -0.5   0.000%   0.007%   0.011%   4.188%   8.551%   0.003%   0.172%   0.001%   0.079%   4.310%
   48    6.2  1.5 -0.5   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.176%   4.315%   0.079%
   49    7.2  1.5 -0.5   0.002%   0.000%   0.284%   0.001%   0.000%   0.599%   0.001%   0.006%   4.460%   0.078%
   50    8.2  1.5 -0.5   0.371%   0.006%   5.212%   0.014%   0.003%  10.840%   0.000%   4.534%   0.006%   0.002%
   51    9.2  1.5 -0.5  30.327%   0.469%   0.002%   0.000%   0.000%   0.000%   0.001%  10.864%   0.433%   0.002%
   52    1.2  1.5 -1.5   4.149%   0.064%   1.015%   0.003%   0.001%   2.749%   0.001%   5.238%   0.208%   0.001%
   53    2.2  1.5 -1.5   4.076%   0.063%   1.036%   0.003%   0.001%   2.749%   0.001%   5.240%   0.207%   0.001%
   54    3.2  1.5 -1.5   0.004%   0.302%   0.000%   0.000%   0.000%   0.000%   0.625%   0.003%   0.283%  15.477%
   55    4.2  1.5 -1.5   0.432%   0.007%   1.334%   0.004%   0.001%   2.870%   0.000%   4.391%   0.173%   0.001%
   56    5.2  1.5 -1.5   0.407%   0.006%   1.309%   0.004%   0.001%   2.871%   0.000%   4.388%   0.175%   0.001%
   57    6.2  1.5 -1.5   0.005%   0.330%   0.015%   5.499%  11.399%   0.003%   4.396%   0.000%   0.001%   0.175%
   58    7.2  1.5 -1.5   0.005%   0.329%   0.014%   5.210%  10.810%   0.003%   4.552%   0.000%   0.001%   0.006%
   59    8.2  1.5 -1.5   0.000%   0.002%   0.001%   0.283%   0.594%   0.000%   0.007%   0.001%   0.078%   4.458%
   60    9.2  1.5 -1.5   0.011%   0.718%   0.000%   0.000%   0.000%   0.000%   0.432%   0.002%   0.195%  10.684%


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

              2       7    10024.70       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    416617.04 377131.08  12369.37  27091.81     13.20      1.41      9.77
 REAL TIME  *    421747.12 SEC
 DISK USED  *         9.88 GB (local),      159.51 GB (total)
 SF USED    *        61.74 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -262.006184452439

              CI              CI           MULTI         RHF-SCF
   -261.99174270   -261.99178671   -261.09411593   -261.43915862
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
