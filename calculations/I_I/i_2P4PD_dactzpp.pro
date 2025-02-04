
 Working directory              : /wrk/irikura/molpro.eIU1Ewrc2Y/
 Global scratch directory       : /wrk/irikura/molpro.eIU1Ewrc2Y/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.eIU1Ewrc2Y/

 id        : nistki

 Nodes     nprocs
 comp-29      3
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,I SO-CI
                                                                                 ! active space (7/4)
                                                                                 ! additional diffuse spdf functions
 memory,3000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={I};
 
 basis={
 ecp,i,ECP28MDF;
 spdfg,i,aug-cc-pwCVTZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 {rhf;wf,charge=-1}
 
 NDOUB=3
 NQUAR=8
 
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
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   I SO-CI                                                                                                                                                       
  (64 PROC) 64 bit mpp version                                                           DATE: 29-Jul-24          TIME: 11:23:17  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW


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

     27.787 MB (compressed) written to integral file ( 16.7%)

     Node minimum: 7.864 MB, node maximum: 11.534 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    3397914.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    3397914      RECORD LENGTH: 524288

 Memory used in sort:       3.95 MW

 SORT1 READ    21109381. AND WROTE      662546. INTEGRALS IN      2 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.08 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN     90 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.07 SEC

 Node minimum:     3395780.  Node maximum:     3397914. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.23      1.10
 REAL TIME  *         2.61 SEC
 DISK USED  *        29.28 MB (local),      127.56 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -294.71863326    -294.71863326     0.00D+00     0.13D+00     0     0       0.01      0.03    start
   2     -294.74411714      -0.02548388     0.46D-02     0.13D-01     1     0       0.02      0.05    diag
   3     -294.74616668      -0.00204954     0.26D-02     0.21D-02     2     0       0.01      0.06    diag
   4     -294.74648011      -0.00031343     0.44D-03     0.85D-03     3     0       0.02      0.08    diag
   5     -294.74653920      -0.00005909     0.14D-03     0.53D-03     4     0       0.02      0.10    diag
   6     -294.74654357      -0.00000437     0.33D-04     0.18D-03     5     0       0.02      0.12    diag
   7     -294.74654371      -0.00000014     0.45D-05     0.24D-04     6     0       0.01      0.13    diag
   8     -294.74654372      -0.00000001     0.98D-06     0.95D-05     7     0       0.02      0.15    fixocc
   9     -294.74654372      -0.00000000     0.70D-07     0.30D-06     8     0       0.01      0.16    diag
  10     -294.74654372      -0.00000000     0.13D-07     0.34D-07     0     0       0.02      0.18    diag/orth

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -294.746543715315
  RHF One-electron energy            -520.925437582746
  RHF Two-electron energy             226.178893867431
  RHF Kinetic energy                  110.887384553765
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.658071023151

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45092     1  1  s    1.00263
    2.1     2.00000    -2.00367     1  1  d0   0.99954
    3.1     2.00000    -2.00367     1  1  d2- -0.30112    1  1  d1-  0.94619
    4.1     2.00000    -2.00367     1  1  d1+  0.76932    1  1  d2+  0.63318
    5.1     2.00000    -2.00367     1  1  d1+ -0.62204    1  1  d2+  0.76574
    6.1     2.00000    -2.00367     1  1  d2-  0.94676    1  1  d1-  0.28943
    7.1     2.00000    -0.60771     1  2  s    0.97222
    1.2     2.00000    -5.27630     1  1  pz   0.99906
    2.2     2.00000    -5.27630     1  1  px   0.99773
    3.2     2.00000    -5.27630     1  1  py   0.99835
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
 CPU TIMES  *         1.42      0.19      1.10
 REAL TIME  *         2.91 SEC
 DISK USED  *        29.93 MB (local),      129.50 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =         3.00000000                                  
 SETTING NQUAR          =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      95 (   45   50)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.237D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.312D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.488D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.526D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.338D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 5 3 1 1 2 3   5 6 4 1 2 3 5 6 4 1   2 3 5 4 6 1 2 5 3 4   6 2 3 5 6 4 8121415
                                        911 71310 1 2 3 5 4   6 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.619D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.902D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.734D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.719D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.138D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.721D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.256D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.229D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.143D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 1 2 3   2 1 810 6 5 4 9 7 1   2 3 810 6 4 5 9 7 6   4 5 7 9 810 3 2 1 7
                                        9 6 4 5 810 2 1 3 6   9 7 4 5 810 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  840  ( 30 closed/active, 420 closed/virtual, 0 active/active, 390 active/virtual )
 Total number of variables:    12988
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   16   61    0   -294.35496425    -294.47942047   -0.12445622    0.36742493 0.00357390 0.00090029  0.14E+01      0.94
   2    8   34    0   -294.45170793    -294.45816191   -0.00645398    0.21473091 0.00007694 0.00032507  0.28E+00      1.61
   3   10   39    0   -294.45819464    -294.45819542   -0.00000078    0.00181218 0.00000165 0.00000380  0.77E-02      2.38
   4    4   15    0   -294.45819542    -294.45819542   -0.00000000    0.00000024 0.00000001 0.00000011  0.37E-05      2.81

 CONVERGENCE REACHED!  Final gradient:    0.00000006 ( 0.62E-07)
                       Final energy:   -294.45819542
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -294.651690447468
 Nuclear energy                                  0.00000000
 Kinetic energy                                111.10774204
 One electron energy                          -514.42769897
 Two electron energy                           219.77600852
 Virial ratio                                    3.65194563
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -294.651690447466
 Nuclear energy                                  0.00000000
 Kinetic energy                                111.10774204
 One electron energy                          -514.42769897
 Two electron energy                           219.77600852
 Virial ratio                                    3.65194563
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -294.651690447466
 Nuclear energy                                  0.00000000
 Kinetic energy                                111.10774204
 One electron energy                          -514.42769897
 Two electron energy                           219.77600852
 Virial ratio                                    3.65194563
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -294.389682297656
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.49349257
 One electron energy                          -508.17845994
 Two electron energy                           213.78877764
 Virial ratio                                    3.66431692
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -294.389682297654
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.49349257
 One electron energy                          -508.17845994
 Two electron energy                           213.78877764
 Virial ratio                                    3.66431692
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -294.389682297654
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.49349257
 One electron energy                          -508.17845994
 Two electron energy                           213.78877764
 Virial ratio                                    3.66431692
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -294.383206270210
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.50096015
 One electron energy                          -508.20527145
 Two electron energy                           213.82206518
 Virial ratio                                    3.66407827
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -294.383206270210
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.50096015
 One electron energy                          -508.20527145
 Two electron energy                           213.82206518
 Virial ratio                                    3.66407827
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -294.383206270209
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.50096015
 One electron energy                          -508.20527145
 Two electron energy                           213.82206518
 Virial ratio                                    3.66407827
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -294.383206270209
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.50096015
 One electron energy                          -508.20527145
 Two electron energy                           213.82206518
 Virial ratio                                    3.66407827
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -294.383206270208
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.50096015
 One electron energy                          -508.20527145
 Two electron energy                           213.82206518
 Virial ratio                                    3.66407827
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999038587
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.342241621417
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.657759339993
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999560886
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.999870164914
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.000130274199
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     0.991960502386
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000167935416
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.050494602811
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     3.949351014000
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     3.008025945421
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999996324961
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.657762052377
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.342241622659
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999978466058
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.000151296226
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999870237716
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.008061796991
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000245397001
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.949311516887
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.050440451105
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     2.991940838050
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000004636450
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999996326203
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999037345
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000021973056
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999978538860
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999488085
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.999977700643
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.999586667603
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.000193880323
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000208534916
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.000033216550
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     1.999999999997
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     1.999999999997
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     1.999999999997
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000021
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000021
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000021
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000021
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000021
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 1 2   3 5 4 6 2 3 5 4 6 1   2 3 5 4 6 1 2 5 3 4   6 2 3 5 6 411 9 7 8
                                       1215141310 1 2 3 5 4   6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 1 2 3 3   1 2 810 6 5 4 7 9 1   2 3 810 6 5 4 9 7 6   5 4 9 7 810 3 1 2 6
                                        9 7 5 4 810 1 2 3 6   9 7 4 5 810 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.89766     1  1  s    1.00116
    2.1     2.00000    -2.45282     1  1  d0   1.00095
    3.1     2.00000    -2.45282     1  1  d1-  1.00095
    4.1     2.00000    -2.45282     1  1  d1+  1.00095
    5.1     2.00000    -2.45282     1  1  d2-  1.00095
    6.1     2.00000    -2.45282     1  1  d2+  1.00095
    7.1     1.99788    -1.00370     1  2  s    1.03659
    8.1     0.00243     0.47079     1  2  s   -1.49260    1  3  s   -1.90922    1  4  s    2.38319    1  5  s    0.63789
                                    1  8  s    0.26419
    1.2     2.00000    -5.72552     1  1  pz   0.99954
    2.2     2.00000    -5.72552     1  1  px   0.99954
    3.2     2.00000    -5.72552     1  1  py   0.99954
    4.2     1.42233    -0.42636     1  2  px   1.09229
    5.2     1.42233    -0.42636     1  2  py   1.09229
    6.2     1.42233    -0.42636     1  2  pz   1.09229
    7.2     0.24423     0.02245     1  2  px  -0.35107    1  7  px   0.48564    1  8  px   0.68683
    8.2     0.24423     0.02245     1  2  py  -0.35107    1  7  py   0.48564    1  8  py   0.68683
    9.2     0.24423     0.02245     1  2  pz  -0.35107    1  7  pz   0.48564    1  8  pz   0.68683
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 22a000      0.99226359     -0.00190189      0.00097356
 20 a22000      0.00097293      0.80475050      0.58048883
 20 2a2000     -0.00190221     -0.58048653      0.80475050
 20 2aa0b0     -0.05699855      0.00010925     -0.00005592
 20 a2ab00     -0.05699855      0.00010925     -0.00005592
 
 Energy:     -294.65169045   -294.65169045   -294.65169045
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 aa200a     -0.00000000      0.00000000     -0.00000000     -0.00189394     -0.00111992      0.00126896      0.00097823
 20 2aaa00     -0.00000000     -0.00000000      0.00000000      0.70671584     -0.00041780     -0.00093859     -0.00035014
 20 a2aa00      0.70576340     -0.00326957     -0.00050497      0.00097411      0.70572245     -0.00570101     -0.00590293
 20 2aa0a0      0.70576340     -0.00326957     -0.00050497     -0.00097411     -0.70572245      0.00570101      0.00590293
 20 a2a00a      0.00046769     -0.00804192      0.70572518      0.00016856     -0.00511483      0.09156197     -0.69978796
 20 aa20a0      0.00046769     -0.00804192      0.70572518     -0.00016856      0.00511483     -0.09156197      0.69978796
 20 2aa00a     -0.00327511     -0.70571777     -0.00803967      0.00029517      0.00641974      0.69978286      0.09151328
 20 aa2a00      0.00327511      0.70571777      0.00803967      0.00029517      0.00641974      0.69978286      0.09151328
 20 a2a0a0     -0.00000000      0.00000000      0.00000000      0.70482190     -0.00153772      0.00033037      0.00062809
 
 Energy:     -294.38968230   -294.38968230   -294.38968230   -294.38320627   -294.38320627   -294.38320627   -294.38320627

 State:              8
 20 aa200a      0.81495022
 20 2aaa00     -0.40583594
 20 a2aa00      0.00098805
 20 2aa0a0     -0.00098805
 20 a2a00a      0.00069078
 20 aa20a0     -0.00069078
 20 2aa00a     -0.00118997
 20 aa2a00     -0.00118997
 20 a2a0a0      0.40911427
 
 Energy:     -294.38320627
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       40.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.92      2.50      0.19      1.10
 REAL TIME  *         6.17 SEC
 DISK USED  *        41.19 MB (local),      163.29 MB (total)
 SF USED    *        30.50 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -294.6516904   2.0
    -294.6516904   2.0
    -294.6516904   2.0
    -294.3896823   2.0
    -294.3896823   2.0
    -294.3896823   2.0
    -294.3832063   6.0
    -294.3832063   6.0
    -294.3832063   6.0
    -294.3832063   6.0
    -294.3832063   6.0
                                                  


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
 Number of external orbitals:      95 (  45  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.65169045
     2      -294.65169045
     3      -294.65169045

 Number of blocks in overlap matrix:   384   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:     867
 Number of N-1 electron functions:  501108

 Number of internal configurations:               139300
 Number of singly external configurations:      23804000
 Number of doubly external configurations:       1958610
 Total number of contracted configurations:     25901910
 Total number of uncontracted configurations:  948829770

 Diagonal Coupling coefficients finished.               Storage:  64528015 words, CPU-Time:    252.20 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4972841 words, CPU-time:      0.14 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.65169045    -0.00000000    -0.97684344  0.44D-01  0.11D+00   283.45
    1     2     2     1.00000000     0.00000000  -294.65169045    -0.00000000    -0.97691287  0.44D-01  0.11D+00   283.45
    1     3     3     1.00000000     0.00000000  -294.65169045    -0.00000000    -0.97690040  0.44D-01  0.11D+00   283.45
    2     1     1     1.09906775    -0.77777290  -295.42946335    -0.77777290    -0.02192654  0.35D-02  0.17D-02  2636.48
    2     2     2     1.09907729    -0.77775148  -295.42944192    -0.77775148    -0.02195874  0.35D-02  0.17D-02  2636.48
    2     3     3     1.09908332    -0.77774763  -295.42943807    -0.77774763    -0.02196247  0.35D-02  0.17D-02  2636.48
    3     1     1     1.09125739    -0.79850468  -295.45019512    -0.02073178    -0.00058325  0.57D-04  0.79D-04  4985.80
    3     2     2     1.09126083    -0.79850257  -295.45019302    -0.02075110    -0.00058555  0.57D-04  0.79D-04  4985.80
    3     3     3     1.09126056    -0.79850251  -295.45019296    -0.02075488    -0.00058562  0.57D-04  0.79D-04  4985.80
    4     1     1     1.09211170    -0.79912631  -295.45081676    -0.00062163    -0.00003763  0.22D-05  0.64D-05  7337.42
    4     2     2     1.09211042    -0.79912610  -295.45081654    -0.00062352    -0.00003778  0.22D-05  0.64D-05  7337.42
    4     3     3     1.09211033    -0.79912609  -295.45081654    -0.00062358    -0.00003778  0.22D-05  0.64D-05  7337.42
    5     1     1     1.09253142    -0.79917028  -295.45086073    -0.00004397    -0.00000257  0.97D-07  0.45D-06  9683.01
    5     2     2     1.09253133    -0.79917027  -295.45086072    -0.00004417    -0.00000258  0.96D-07  0.46D-06  9683.01
    5     3     3     1.09253133    -0.79917027  -295.45086072    -0.00004417    -0.00000258  0.97D-07  0.46D-06  9683.01
    6     1     1     1.09256779    -0.79917336  -295.45086381    -0.00000308    -0.00000020  0.17D-07  0.31D-07 12033.24
    6     2     2     1.09256775    -0.79917336  -295.45086381    -0.00000309    -0.00000020  0.18D-07  0.31D-07 12033.24
    6     3     3     1.09256774    -0.79917336  -295.45086381    -0.00000309    -0.00000020  0.18D-07  0.31D-07 12033.24
    7     1     1     1.09258710    -0.79917359  -295.45086404    -0.00000023    -0.00000002  0.19D-08  0.28D-08 14383.55
    7     2     2     1.09258713    -0.79917359  -295.45086404    -0.00000023    -0.00000002  0.19D-08  0.28D-08 14383.55
    7     3     3     1.09258710    -0.79917359  -295.45086404    -0.00000023    -0.00000002  0.19D-08  0.28D-08 14383.55


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.3%  44.1%
 P   0.3%  46.2%   6.5%

 Initialization:   1.8%
 Other:            0.3%

 Total CPU:    14383.5 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222022222/000           0.0972609   0.9457901   0.0309472
 22222220222/22000           0.6588866  -0.0900146   0.6802222
 222222202222/2000           0.6792240  -0.0481123  -0.6642864
 22222220222/2/\00          -0.0059310  -0.0576748  -0.0018872
 222222202222//0\0          -0.0059310  -0.0576748  -0.0018872

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.097786    0.662446    0.682893
 2           0.950899   -0.090501   -0.048372
 3           0.031114    0.683897   -0.667875

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956420   -0.000000   -0.000000
 2          -0.000000    0.956420   -0.000000
 3          -0.000000   -0.000000    0.956420


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.68289303 (fixed)   0.95665194 (relaxed)   0.95642015 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00056775   -0.00056619   -0.19445697
 Singles      0.01512364   -0.05885607   -0.06488698
 Pairs        0.07751603   -0.52818945   -0.53982964
 Total        1.09320742   -0.58761170   -0.79917359
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65169045
 Nuclear energy                         0.00000000
 Kinetic energy                       111.50726859
 One electron energy                 -513.62944524
 Two electron energy                  218.17858120
 Virial quotient                       -2.64961081
 Correlation energy                    -0.79917359
 !MRCI STATE 1.2 Energy              -295.450864040456

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52535295 (Davidson, fixed reference)
 Cluster corrected energies          -295.52492963 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52535295 (Davidson, rotated reference)

 Cluster corrected energies          -295.52483813 (Pople, fixed reference)
 Cluster corrected energies          -295.52438326 (Pople, relaxed reference)
 Cluster corrected energies          -295.52483813 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95089916 (fixed)   0.95665192 (relaxed)   0.95642013 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00056775   -0.00056619   -0.71183673
 Singles      0.01512363   -0.05885603   -0.06488697
 Pairs        0.07751606    0.03741392   -0.02244990
 Total        1.09320744   -0.02200830   -0.79917359
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65169045
 Nuclear energy                         0.00000000
 Kinetic energy                       111.50727128
 One electron energy                 -513.62944730
 Two electron energy                  218.17858326
 Virial quotient                       -2.64961074
 Correlation energy                    -0.79917359
 !MRCI STATE 2.2 Energy              -295.450864040190

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52535297 (Davidson, fixed reference)
 Cluster corrected energies          -295.52492965 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52535297 (Davidson, rotated reference)

 Cluster corrected energies          -295.52483815 (Pople, fixed reference)
 Cluster corrected energies          -295.52438328 (Pople, relaxed reference)
 Cluster corrected energies          -295.52483815 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.68389667 (fixed)   0.95665194 (relaxed)   0.95642015 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00056775   -0.00056619   -1.15014287
 Singles      0.01512364   -0.05885607   -0.06488698
 Pairs        0.07751603    0.51657346    0.41585626
 Total        1.09320741    0.45715121   -0.79917359
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65169045
 Nuclear energy                         0.00000000
 Kinetic energy                       111.50726860
 One electron energy                 -513.62944532
 Two electron energy                  218.17858128
 Virial quotient                       -2.64961081
 Correlation energy                    -0.79917359
 !MRCI STATE 3.2 Energy              -295.450864039436

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.52535294 (Davidson, fixed reference)
 Cluster corrected energies          -295.52492963 (Davidson, relaxed reference)
 Cluster corrected energies          -295.52535294 (Davidson, rotated reference)

 Cluster corrected energies          -295.52483813 (Pople, fixed reference)
 Cluster corrected energies          -295.52438326 (Pople, relaxed reference)
 Cluster corrected energies          -295.52483813 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       40.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      601.48       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     14667.25  14663.33      2.50      0.19      1.10
 REAL TIME  *     14746.19 SEC
 DISK USED  *       641.85 MB (local),        1.92 GB (total)
 SF USED    *         6.55 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -295.52535295  AU                              
 SETTING HLSDIAG(2)     =      -295.52535297  AU                              
 SETTING HLSDIAG(3)     =      -295.52535294  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

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
 Number of external orbitals:      95 (  45  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.38968230
     2      -294.38968230
     3      -294.38968230
     4      -294.38320627
     5      -294.38320627
     6      -294.38320627
     7      -294.38320627
     8      -294.38320627

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3299D-06

 Number of blocks in overlap matrix:   797   Smallest eigenvalue:  0.33D-06
 Number of N-2 electron functions:    2252
 Number of N-1 electron functions:  453552

 Number of internal configurations:               114452
 Number of singly external configurations:      21546280
 Number of doubly external configurations:       5084360
 Total number of contracted configurations:     26745092
 Total number of uncontracted configurations:  887746772

 Diagonal Coupling coefficients finished.               Storage:  86423287 words, CPU-Time:   1260.06 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   7750884 words, CPU-time:      0.37 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.38968230     0.00000000    -0.94135640  0.39D-01  0.10D+00  1347.93
    1     2     2     1.00000000     0.00000000  -294.38968230    -0.00000000    -0.94156917  0.40D-01  0.10D+00  1347.93
    1     3     3     1.00000000     0.00000000  -294.38968230     0.00000000    -0.94166540  0.40D-01  0.10D+00  1347.93
    1     4     4     1.00000000     0.00000000  -294.38320627     0.00000000    -0.94308668  0.41D-01  0.10D+00  1347.93
    1     5     5     1.00000000     0.00000000  -294.38320627     0.00000000    -0.94280063  0.41D-01  0.10D+00  1347.93
    1     6     6     1.00000000     0.00000000  -294.38320627    -0.00000000    -0.94294889  0.42D-01  0.10D+00  1347.93
    1     7     7     1.00000000     0.00000000  -294.38320627     0.00000000    -0.94304992  0.42D-01  0.10D+00  1347.93
    1     8     8     1.00000000     0.00000000  -294.38320627    -0.00000000    -0.94745453  0.41D-01  0.10D+00  1347.93
    2     1     1     1.09138928    -0.76012455  -295.14980685    -0.76012455    -0.01876438  0.20D-02  0.16D-02  8522.36
    2     2     2     1.09147168    -0.76008995  -295.14977225    -0.76008995    -0.01881508  0.20D-02  0.16D-02  8522.36
    2     3     3     1.09151620    -0.76007493  -295.14975723    -0.76007493    -0.01884555  0.20D-02  0.16D-02  8522.36
    2     4     4     1.09252011    -0.76092132  -295.14412759    -0.76092132    -0.01898933  0.22D-02  0.16D-02  8522.36
    2     5     5     1.09245712    -0.76068738  -295.14389365    -0.76068738    -0.01914309  0.23D-02  0.16D-02  8522.36
    2     6     6     1.09252904    -0.76061745  -295.14382372    -0.76061745    -0.01921372  0.23D-02  0.16D-02  8522.36
    2     7     7     1.09257534    -0.76060356  -295.14380983    -0.76060356    -0.01924099  0.23D-02  0.16D-02  8522.36
    2     8     8     1.09349519    -0.76032600  -295.14353227    -0.76032600    -0.01978903  0.22D-02  0.18D-02  8522.36
    3     1     1     1.08508077    -0.77819967  -295.16788196    -0.01807512    -0.00048718  0.28D-04  0.76D-04 15680.22
    3     2     2     1.08507084    -0.77819541  -295.16787771    -0.01810546    -0.00048871  0.28D-04  0.76D-04 15680.22
    3     3     3     1.08505552    -0.77819514  -295.16787744    -0.01812021    -0.00048854  0.28D-04  0.77D-04 15680.22
    3     4     4     1.08580392    -0.77922883  -295.16243510    -0.01830751    -0.00047566  0.37D-04  0.71D-04 15680.22
    3     5     5     1.08566778    -0.77920610  -295.16241237    -0.01851873    -0.00048672  0.38D-04  0.73D-04 15680.22
    3     6     6     1.08555030    -0.77915500  -295.16236127    -0.01853755    -0.00051528  0.39D-04  0.79D-04 15680.22
    3     7     7     1.08555612    -0.77915030  -295.16235657    -0.01854673    -0.00051905  0.39D-04  0.79D-04 15680.22
    3     8     8     1.08554569    -0.77914591  -295.16235218    -0.01881991    -0.00052073  0.39D-04  0.79D-04 15680.22
    4     1     1     1.08634942    -0.77879705  -295.16847935    -0.00059738    -0.00005009  0.20D-05  0.82D-05 22828.52
    4     2     2     1.08634884    -0.77879692  -295.16847922    -0.00060151    -0.00005039  0.20D-05  0.82D-05 22828.52
    4     3     3     1.08634784    -0.77879628  -295.16847858    -0.00060114    -0.00005063  0.20D-05  0.83D-05 22828.52
    4     4     4     1.08684429    -0.77979894  -295.16300521    -0.00057010    -0.00004492  0.20D-05  0.77D-05 22828.52
    4     5     5     1.08683172    -0.77979641  -295.16300268    -0.00059031    -0.00004749  0.22D-05  0.78D-05 22828.52
    4     6     6     1.08679734    -0.77978904  -295.16299531    -0.00063403    -0.00005298  0.25D-05  0.85D-05 22828.52
    4     7     7     1.08679212    -0.77978808  -295.16299435    -0.00063779    -0.00005352  0.25D-05  0.86D-05 22828.52
    4     8     8     1.08679018    -0.77978725  -295.16299352    -0.00064134    -0.00005411  0.25D-05  0.87D-05 22828.52
    5     1     1     1.08683406    -0.77886382  -295.16854612    -0.00006677    -0.00000466  0.22D-06  0.71D-06 29972.75
    5     2     2     1.08683448    -0.77886374  -295.16854604    -0.00006682    -0.00000468  0.22D-06  0.71D-06 29972.75
    5     3     3     1.08683483    -0.77886369  -295.16854599    -0.00006741    -0.00000472  0.22D-06  0.72D-06 29972.75
    5     4     4     1.08729872    -0.77985954  -295.16306581    -0.00006060    -0.00000455  0.27D-06  0.69D-06 29972.75
    5     5     5     1.08729938    -0.77985944  -295.16306571    -0.00006303    -0.00000458  0.27D-06  0.70D-06 29972.75
    5     6     6     1.08729769    -0.77985919  -295.16306546    -0.00007015    -0.00000500  0.30D-06  0.74D-06 29972.75
    5     7     7     1.08729767    -0.77985910  -295.16306537    -0.00007101    -0.00000506  0.31D-06  0.75D-06 29972.75
    5     8     8     1.08729790    -0.77985904  -295.16306531    -0.00007179    -0.00000511  0.31D-06  0.75D-06 29972.75
    6     1     1     1.08682808    -0.77886954  -295.16855184    -0.00000572    -0.00000047  0.20D-07  0.77D-07 37126.60
    6     2     2     1.08682798    -0.77886948  -295.16855177    -0.00000574    -0.00000047  0.21D-07  0.77D-07 37126.60
    6     3     3     1.08682809    -0.77886948  -295.16855177    -0.00000578    -0.00000047  0.20D-07  0.77D-07 37126.60
    6     4     4     1.08729933    -0.77986528  -295.16307155    -0.00000574    -0.00000052  0.28D-07  0.82D-07 37126.60
    6     5     5     1.08729919    -0.77986525  -295.16307152    -0.00000581    -0.00000052  0.29D-07  0.82D-07 37126.60
    6     6     6     1.08729887    -0.77986525  -295.16307152    -0.00000606    -0.00000053  0.29D-07  0.83D-07 37126.60
    6     7     7     1.08730234    -0.77986517  -295.16307144    -0.00000607    -0.00000050  0.26D-07  0.79D-07 37126.60
    6     8     8     1.08730480    -0.77986506  -295.16307133    -0.00000602    -0.00000049  0.24D-07  0.79D-07 37126.60
    7     1     1     1.08684876    -0.77887014  -295.16855244    -0.00000060    -0.00000006  0.54D-08  0.95D-08 44283.76
    7     2     2     1.08684859    -0.77887007  -295.16855237    -0.00000059    -0.00000006  0.53D-08  0.93D-08 44283.76
    7     3     3     1.08684871    -0.77887007  -295.16855237    -0.00000059    -0.00000006  0.53D-08  0.93D-08 44283.76
    7     4     4     1.08732039    -0.77986593  -295.16307220    -0.00000065    -0.00000007  0.60D-08  0.10D-07 44283.76
    7     5     5     1.08732014    -0.77986590  -295.16307217    -0.00000065    -0.00000007  0.61D-08  0.10D-07 44283.76
    7     6     6     1.08732026    -0.77986590  -295.16307217    -0.00000065    -0.00000007  0.61D-08  0.10D-07 44283.76
    7     7     7     1.08732126    -0.77986579  -295.16307206    -0.00000062    -0.00000007  0.58D-08  0.99D-08 44283.76
    7     8     8     1.08732219    -0.77986566  -295.16307193    -0.00000061    -0.00000007  0.57D-08  0.98D-08 44283.76
    8     1     1     1.08684753    -0.77887022  -295.16855252    -0.00000008    -0.00000001  0.50D-09  0.15D-08 51443.60
    8     2     2     1.08684742    -0.77887015  -295.16855245    -0.00000008    -0.00000001  0.49D-09  0.15D-08 51443.60
    8     3     3     1.08684744    -0.77887015  -295.16855244    -0.00000008    -0.00000001  0.49D-09  0.15D-08 51443.60
    8     4     4     1.08732004    -0.77986601  -295.16307228    -0.00000009    -0.00000001  0.58D-09  0.16D-08 51443.60
    8     5     5     1.08731991    -0.77986599  -295.16307226    -0.00000009    -0.00000001  0.57D-09  0.16D-08 51443.60
    8     6     6     1.08731993    -0.77986599  -295.16307226    -0.00000009    -0.00000001  0.58D-09  0.16D-08 51443.60
    8     7     7     1.08732018    -0.77986588  -295.16307215    -0.00000009    -0.00000001  0.58D-09  0.16D-08 51443.60
    8     8     8     1.08731977    -0.77986575  -295.16307202    -0.00000008    -0.00000001  0.59D-09  0.16D-08 51443.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.2%  37.6%
 P   0.2%  46.8%  11.6%

 Initialization:   2.5%
 Other:            0.6%

 Total CPU:    51443.6 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222//200/          -0.0000000  -0.0000000   0.0000000   0.0001963   0.0006162   0.0000922   0.0108797   0.7810446
 22222220222/2/0/0          -0.0000000   0.0000000   0.0000000   0.0000964   0.0014514   0.0015790   0.6818419   0.3810994
 22222220222/2//00           0.6766353  -0.0000366  -0.0021994   0.6762252  -0.0075861  -0.0165574   0.0000498  -0.0001627
 222222202222//0/0           0.6766351  -0.0000366  -0.0021994  -0.6762252   0.0075861   0.0165574  -0.0000498   0.0001628
 22222220222//2/00           0.0001237  -0.6748458   0.0492717   0.0047582   0.6672192  -0.1113671  -0.0008823  -0.0005022
 22222220222//20/0           0.0021963   0.0492718   0.6748416  -0.0175799  -0.1112079  -0.6670303   0.0017016   0.0001471
 222222202222//00/          -0.0001237   0.6748393  -0.0492712   0.0047583   0.6672257  -0.1113683  -0.0008824  -0.0005021
 22222220222/2/00/           0.0021963   0.0492714   0.6748363   0.0175801   0.1112088   0.6670357  -0.0017016  -0.0001472
 222222202222///00           0.0000000   0.0000000  -0.0000000  -0.0000999   0.0008352   0.0014868   0.6709621  -0.3999457

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.959053   -0.000175    0.003113   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 2          -0.000052    0.956512    0.069837    0.000000   -0.000000   -0.000005   -0.000000   -0.000000
 3          -0.003117   -0.069837    0.956507    0.000000   -0.000000    0.000000   -0.000004    0.000000
 4          -0.000000    0.000000    0.000000   -0.000002    0.958500    0.006744    0.024918    0.000241
 5           0.000000    0.000005    0.000001    0.001621   -0.010753    0.945739    0.157630    0.000756
 6          -0.000000   -0.000001    0.000004    0.002173   -0.023469   -0.157856    0.945470    0.000113
 7           0.000000   -0.000000   -0.000000    0.958751    0.000071   -0.001251   -0.002412    0.013340
 8           0.000000    0.000000   -0.000000   -0.013342   -0.000231   -0.000712   -0.000209    0.958754

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959058   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.959058   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.959058    0.000000    0.000000    0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.958847    0.000000    0.000000    0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.958847   -0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.958847   -0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.958847   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958847


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95905283 (fixed)   0.95917170 (relaxed)   0.95905790 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032638   -0.00065802   -0.65427013
 Singles      0.01697956   -0.06780048   -0.07452868
 Pairs        0.06989632    0.00000002   -0.05007140
 Total        1.08720226   -0.06845848   -0.77887022
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38968230
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17233095
 One electron energy                 -508.00564794
 Two electron energy                  212.83709543
 Virial quotient                       -2.65505409
 Correlation energy                    -0.77887022
 !MRCI STATE 1.2 Energy              -295.168552515916

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23647176 (Davidson, fixed reference)
 Cluster corrected energies          -295.23627083 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23647176 (Davidson, rotated reference)

 Cluster corrected energies          -295.23499268 (Pople, fixed reference)
 Cluster corrected energies          -295.23478138 (Pople, relaxed reference)
 Cluster corrected energies          -295.23499268 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95651187 (fixed)   0.95917175 (relaxed)   0.95905795 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032638   -0.00065802   -0.65427015
 Singles      0.01697953   -0.06780046   -0.07452860
 Pairs        0.06989624    0.00000001   -0.05007140
 Total        1.08720215   -0.06845847   -0.77887015
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38968230
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17233631
 One electron energy                 -508.00565284
 Two electron energy                  212.83710039
 Virial quotient                       -2.65505397
 Correlation energy                    -0.77887015
 !MRCI STATE 2.2 Energy              -295.168552448059

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23647160 (Davidson, fixed reference)
 Cluster corrected energies          -295.23627067 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23647160 (Davidson, rotated reference)

 Cluster corrected energies          -295.23499251 (Pople, fixed reference)
 Cluster corrected energies          -295.23478122 (Pople, relaxed reference)
 Cluster corrected energies          -295.23499251 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95650680 (fixed)   0.95917174 (relaxed)   0.95905794 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032638   -0.00065802   -0.65427010
 Singles      0.01697951   -0.06780044   -0.07452859
 Pairs        0.06989628   -0.00000004   -0.05007146
 Total        1.08720217   -0.06845850   -0.77887015
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38968230
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17233673
 One electron energy                 -508.00565268
 Two electron energy                  212.83710024
 Virial quotient                       -2.65505396
 Correlation energy                    -0.77887015
 !MRCI STATE 3.2 Energy              -295.168552444826

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23647161 (Davidson, fixed reference)
 Cluster corrected energies          -295.23627068 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23647161 (Davidson, rotated reference)

 Cluster corrected energies          -295.23499253 (Pople, fixed reference)
 Cluster corrected energies          -295.23478123 (Pople, relaxed reference)
 Cluster corrected energies          -295.23499253 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95849974 (fixed)   0.95896152 (relaxed)   0.95884734 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033088   -0.00067282   -0.65412501
 Singles      0.01733284   -0.06846683   -0.07537737
 Pairs        0.07001609   -0.00017866   -0.05036363
 Total        1.08767981   -0.06931831   -0.77986601
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38320627
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17661155
 One electron energy                 -508.01321866
 Two electron energy                  212.85014638
 Virial quotient                       -2.65490257
 Correlation energy                    -0.77986601
 !MRCI STATE 4.2 Energy              -295.163072283109

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23145079 (Davidson, fixed reference)
 Cluster corrected energies          -295.23124880 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23145079 (Davidson, rotated reference)

 Cluster corrected energies          -295.22998929 (Pople, fixed reference)
 Cluster corrected energies          -295.22977670 (Pople, relaxed reference)
 Cluster corrected energies          -295.22998929 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.94573907 (fixed)   0.95896157 (relaxed)   0.95884739 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033088   -0.00067282   -0.65377384
 Singles      0.01733284   -0.06846687   -0.07537737
 Pairs        0.07001597   -0.00056064   -0.05071478
 Total        1.08767968   -0.06970033   -0.77986599
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38320627
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17661528
 One electron energy                 -508.01322100
 Two electron energy                  212.85014874
 Virial quotient                       -2.65490249
 Correlation energy                    -0.77986599
 !MRCI STATE 5.2 Energy              -295.163072257607

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23145066 (Davidson, fixed reference)
 Cluster corrected energies          -295.23124868 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23145066 (Davidson, rotated reference)

 Cluster corrected energies          -295.22998915 (Pople, fixed reference)
 Cluster corrected energies          -295.22977657 (Pople, relaxed reference)
 Cluster corrected energies          -295.22998915 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.94547046 (fixed)   0.95896156 (relaxed)   0.95884738 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033088   -0.00067282   -0.65421219
 Singles      0.01733281   -0.06846685   -0.07537734
 Pairs        0.07001601   -0.00008386   -0.05027645
 Total        1.08767971   -0.06922353   -0.77986599
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38320627
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17661574
 One electron energy                 -508.01322119
 Two electron energy                  212.85014894
 Virial quotient                       -2.65490247
 Correlation energy                    -0.77986599
 !MRCI STATE 6.2 Energy              -295.163072256255

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23145068 (Davidson, fixed reference)
 Cluster corrected energies          -295.23124869 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23145068 (Davidson, rotated reference)

 Cluster corrected energies          -295.22998917 (Pople, fixed reference)
 Cluster corrected energies          -295.22977659 (Pople, relaxed reference)
 Cluster corrected energies          -295.22998917 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95875062 (fixed)   0.95896146 (relaxed)   0.95884727 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033088   -0.00067281   -0.64519835
 Singles      0.01733266   -0.06846656   -0.07537709
 Pairs        0.07001641   -0.00988805   -0.05929043
 Total        1.08767995   -0.07902742   -0.77986588
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38320627
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17660855
 One electron energy                 -508.01321516
 Two electron energy                  212.85014301
 Virial quotient                       -2.65490265
 Correlation energy                    -0.77986588
 !MRCI STATE 7.2 Energy              -295.163072145376

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23145075 (Davidson, fixed reference)
 Cluster corrected energies          -295.23124876 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23145075 (Davidson, rotated reference)

 Cluster corrected energies          -295.22998925 (Pople, fixed reference)
 Cluster corrected energies          -295.22977667 (Pople, relaxed reference)
 Cluster corrected energies          -295.22998925 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.95875431 (fixed)   0.95896164 (relaxed)   0.95884745 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033089   -0.00067281   -0.00091929
 Singles      0.01733219   -0.06846597   -0.07537659
 Pairs        0.07001648   -0.71065793   -0.70356987
 Total        1.08767955   -0.77979671   -0.77986575
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.38320627
 Nuclear energy                         0.00000000
 Kinetic energy                       111.17661662
 One electron energy                 -508.01322239
 Two electron energy                  212.85015038
 Virial quotient                       -2.65490245
 Correlation energy                    -0.77986575
 !MRCI STATE 8.2 Energy              -295.163072016598

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.23145030 (Davidson, fixed reference)
 Cluster corrected energies          -295.23124831 (Davidson, relaxed reference)
 Cluster corrected energies          -295.23145030 (Davidson, rotated reference)

 Cluster corrected energies          -295.22998878 (Pople, fixed reference)
 Cluster corrected energies          -295.22977619 (Pople, relaxed reference)
 Cluster corrected energies          -295.22998878 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       40.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     2254.68       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     72107.21  57439.96  14663.33      2.50      0.19      1.10
 REAL TIME  *     72494.24 SEC
 DISK USED  *         2.24 GB (local),        6.76 GB (total)
 SF USED    *        17.59 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -295.23647176  AU                              
 SETTING HLSDIAG(5)     =      -295.23647160  AU                              
 SETTING HLSDIAG(6)     =      -295.23647161  AU                              
 SETTING HLSDIAG(7)     =      -295.23145079  AU                              
 SETTING HLSDIAG(8)     =      -295.23145066  AU                              
 SETTING HLSDIAG(9)     =      -295.23145068  AU                              
 SETTING HLSDIAG(10)    =      -295.23145075  AU                              
 SETTING HLSDIAG(11)    =      -295.23145030  AU                              


         HLSDIAG
    -295.5253529
    -295.5253530
    -295.5253529
    -295.2364718
    -295.2364716
    -295.2364716
    -295.2314508
    -295.2314507
    -295.2314507
    -295.2314507
    -295.2314503
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -295.450864   -295.450864   -295.450864
 Replaced energies:   -295.525353   -295.525353   -295.525353

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:   -295.168553   -295.168552   -295.168552   -295.163072   -295.163072   -295.163072   -295.163072   -295.163072
 Replaced energies:   -295.236472   -295.236472   -295.236472   -295.231451   -295.231451   -295.231451   -295.231451   -295.231450



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -295.52535297

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00   -1773.95     128.48    -346.21      -3.72     -50.12    -373.28
                           -0.00      82.64   -2525.69       0.00    1816.50     240.38    -356.48     -51.22       4.90     382.93

    2   2.2  0.5  0.5       0.00       0.00       0.00    1773.95       0.00    1813.84      45.65     -36.39    -498.51      36.83
                          -82.64      -0.00     259.73   -1816.50      -0.00    1759.53      25.34    -498.31      36.30     -30.94

    3   3.2  0.5  0.5       0.00       0.00       0.01    -128.48   -1813.84      -0.00    -357.30      -1.17     -15.15    -384.23
                         2525.69    -259.73       0.00    -240.38   -1759.53      -0.00     348.65     -16.32       0.06    -374.90

    4   1.2  0.5 -0.5       0.00    1773.95    -128.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1816.50     240.38       0.00     -82.64    2525.69       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5   -1773.95       0.00   -1813.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1816.50       0.00    1759.53      82.64       0.00    -259.73       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5     128.48    1813.84      -0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00
                         -240.38   -1759.53       0.00   -2525.69     259.73      -0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5    -346.21      45.65    -357.30       0.00       0.00       0.00   63402.10       0.00       0.00       0.00
                          356.48     -25.34    -348.65      -0.00      -0.00      -0.00       0.00       4.26      -0.07      -0.38

    8   2.2  1.5  1.5      -3.72     -36.39      -1.17       0.00       0.00       0.00       0.00   63402.13       0.00       0.00
                           51.22     498.31      16.32      -0.00      -0.00      -0.00      -4.26      -0.00   -1309.31     -37.01

    9   3.2  1.5  1.5     -50.12    -498.51     -15.15       0.00       0.00       0.00       0.00       0.00   63402.13       0.00
                           -4.90     -36.30      -0.06      -0.00      -0.00      -0.00       0.07    1309.31       0.00      12.98

   10   4.2  1.5  1.5    -373.28      36.83    -384.23       0.00       0.00       0.00       0.00       0.00       0.00   64504.07
                         -382.93      30.94     374.90      -0.00      -0.00      -0.00       0.38      37.01     -12.98       0.00

   11   5.2  1.5  1.5      -5.74     -88.86       2.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           59.29     529.84      13.62      -0.00      -0.00      -0.00      -3.38     134.20   -1450.29     -36.49

   12   6.2  1.5  1.5     -46.29    -531.07      -7.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.11     -89.27     -11.22      -0.00      -0.00      -0.00       0.71    1449.91     134.57       8.76

   13   7.2  1.5  1.5    -388.68      28.90     380.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          371.24     -51.43     383.36      -0.00      -0.00      -0.00      23.43      -3.52       2.09   -2618.88

   14   8.2  1.5  1.5    -217.35      15.51     212.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -221.16      29.82    -228.48      -0.00      -0.00      -0.00    1681.74      -0.33      -4.37      36.51

   15   1.2  1.5  0.5       0.00       0.00       0.00    -199.89      26.36    -206.29       0.00      55.05     753.94     -19.13
                           -1.42       0.11       1.24     205.82     -14.63    -201.30      -0.00     753.94     -55.05      -5.76

   16   2.2  1.5  0.5       0.00       0.00       0.00      -2.15     -21.01      -0.68     -55.05       0.00       0.14      61.34
                          368.37     -52.31     441.00      29.57     287.70       9.42    -753.94       0.00       2.45    -838.44

   17   3.2  1.5  0.5       0.00       0.00       0.00     -28.94    -287.82      -8.74    -753.94      -0.14      -0.00     838.49
                         -442.64      33.27     374.40      -2.83     -20.96      -0.03      55.05      -2.45      -0.00      61.11

   18   4.2  1.5  0.5       0.00       0.00       0.00    -215.51      21.26    -221.84      19.13     -61.34    -838.48      -0.00
                            8.54      -0.58     -14.45    -221.09      17.86     216.45       5.76     838.43     -61.11       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00      -3.32     -51.30       1.28     138.28      -1.12       9.09    -124.19
                         -350.26      52.10    -508.83      34.23     305.90       7.86     829.45      -9.53      -3.04     745.82

   20   6.2  1.5  0.5       0.00       0.00       0.00     -26.72    -306.61      -4.08     829.29      -0.50      17.98    -746.06
                          510.08     -40.87    -356.78       0.64     -51.54      -6.48    -138.45     -20.66       0.11    -124.62

   21   7.2  1.5  0.5       0.00       0.00       0.00    -224.41      16.68     219.54      -1.96    -845.39      61.67       7.09
                           -1.57      -9.79       1.35     214.33     -29.69     221.33      -3.80     -60.68    -831.89      19.14

   22   8.2  1.5  0.5       0.00       0.00       0.00    -125.48       8.95     122.84      -0.10    -472.49      34.70      -9.13
                          -73.41    -716.06     -23.01    -127.69      17.21    -131.91       0.99      36.00     495.88      33.21

   23   1.2  1.5 -0.5    -199.89      26.36    -206.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -205.82      14.63     201.30      -1.42       0.11       1.24      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5      -2.15     -21.01      -0.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -29.57    -287.70      -9.42     368.37     -52.31     441.00      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5     -28.94    -287.82      -8.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.83      20.96       0.03    -442.64      33.27     374.40      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5    -215.51      21.26    -221.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          221.09     -17.86    -216.45       8.54      -0.58     -14.45      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5      -3.32     -51.30       1.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -34.23    -305.90      -7.86    -350.26      52.10    -508.83      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5     -26.72    -306.61      -4.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.64      51.54       6.48     510.08     -40.87    -356.78      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5    -224.41      16.68     219.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -214.33      29.69    -221.33      -1.57      -9.79       1.35      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5    -125.48       8.95     122.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          127.69     -17.21     131.91     -73.41    -716.06     -23.01      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00    -346.21      45.65    -357.30       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -356.48      25.34     348.65      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00      -3.72     -36.39      -1.17       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -51.22    -498.31     -16.32      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00     -50.12    -498.51     -15.15       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       4.90      36.30       0.06      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00    -373.28      36.83    -384.23       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     382.93     -30.94    -374.90      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00      -5.74     -88.86       2.22       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -59.29    -529.84     -13.62      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00     -46.29    -531.07      -7.06       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -1.11      89.27      11.22      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00    -388.68      28.90     380.26       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -371.24      51.43    -383.36      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00    -217.35      15.51     212.76       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     221.16     -29.82     228.48      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5      -5.74     -46.29    -388.68    -217.35       0.00       0.00       0.00       0.00       0.00       0.00
                          -59.29      -1.11    -371.24     221.16       1.42    -368.37     442.64      -8.54     350.26    -510.08

    2   2.2  0.5  0.5     -88.86    -531.07      28.90      15.51       0.00       0.00       0.00       0.00       0.00       0.00
                         -529.84      89.27      51.43     -29.82      -0.11      52.31     -33.27       0.58     -52.10      40.87

    3   3.2  0.5  0.5       2.22      -7.06     380.26     212.76       0.00       0.00       0.00       0.00       0.00       0.00
                          -13.62      11.22    -383.36     228.48      -1.24    -441.00    -374.40      14.45     508.83     356.78

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00    -199.89      -2.15     -28.94    -215.51      -3.32     -26.72
                            0.00       0.00       0.00       0.00    -205.82     -29.57       2.83     221.09     -34.23      -0.64

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      26.36     -21.01    -287.82      21.26     -51.30    -306.61
                            0.00       0.00       0.00       0.00      14.63    -287.70      20.96     -17.86    -305.90      51.54

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00    -206.29      -0.68      -8.74    -221.84       1.28      -4.08
                            0.00       0.00       0.00       0.00     201.30      -9.42       0.03    -216.45      -7.86       6.48

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00     -55.05    -753.94      19.13     138.28     829.29
                            3.38      -0.71     -23.43   -1681.74       0.00     753.94     -55.05      -5.76    -829.45     138.45

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00      55.05       0.00      -0.14     -61.34      -1.12      -0.50
                         -134.20   -1449.91       3.52       0.33    -753.94      -0.00       2.45    -838.43       9.53      20.66

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00     753.94       0.14      -0.00    -838.48       9.09      17.98
                         1450.29    -134.57      -2.09       4.37      55.05      -2.45       0.00      61.11       3.04      -0.11

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00     -19.13      61.34     838.49      -0.00    -124.19    -746.06
                           36.49      -8.76    2618.88     -36.51       5.76     838.44     -61.11      -0.00    -745.82     124.62

   11   5.2  1.5  1.5   64504.10       0.00       0.00       0.00    -138.28       1.12      -9.09     124.19       0.00       6.90
                           -0.00   -1309.55     -26.41       0.53     829.46      -9.53      -3.04     745.82       0.00     -17.68

   12   6.2  1.5  1.5       0.00   64504.10       0.00       0.00    -829.29       0.50     -17.98     746.06      -6.90       0.00
                         1309.55       0.00     -66.35      -0.11    -138.45     -20.66       0.11    -124.62      17.68       0.00

   13   7.2  1.5  1.5       0.00       0.00   64504.08       0.00       1.96     845.40     -61.67      -7.09    -727.94     121.49
                           26.41      66.35       0.00       0.63      -3.80     -60.68    -831.90      19.14     127.29     763.76

   14   8.2  1.5  1.5       0.00       0.00       0.00   64504.18       0.10     472.49     -34.70       9.13    1302.45    -217.21
                           -0.53       0.11      -0.63      -0.00       0.99      36.00     495.88      33.21     213.80    1281.25

   15   1.2  1.5  0.5    -138.28    -829.29       1.96       0.10   63402.10       0.00       0.00       0.00       0.00       0.00
                         -829.46     138.45       3.80      -0.99       0.00       1.42      -0.02      -0.13       1.13      -0.24

   16   2.2  1.5  0.5       1.12       0.50     845.40     472.49       0.00   63402.13       0.00       0.00       0.00       0.00
                            9.53      20.66      60.68     -36.00      -1.42      -0.00    -436.44     -12.34     -44.73    -483.30

   17   3.2  1.5  0.5      -9.09     -17.98     -61.67     -34.70       0.00       0.00   63402.13       0.00       0.00       0.00
                            3.04      -0.11     831.90    -495.88       0.02     436.44       0.00       4.33     483.43     -44.86

   18   4.2  1.5  0.5     124.19     746.06      -7.09       9.13       0.00       0.00       0.00   64504.07       0.00       0.00
                         -745.82     124.62     -19.14     -33.21       0.13      12.34      -4.33       0.00      12.16      -2.92

   19   5.2  1.5  0.5       0.00      -6.90    -727.94    1302.45       0.00       0.00       0.00       0.00   64504.10       0.00
                           -0.00     -17.68    -127.29    -213.80      -1.13      44.73    -483.43     -12.16      -0.00    -436.52

   20   6.2  1.5  0.5       6.90       0.00     121.49    -217.21       0.00       0.00       0.00       0.00       0.00   64504.10
                           17.68      -0.00    -763.76   -1281.25       0.24     483.30      44.86       2.92     436.52       0.00

   21   7.2  1.5  0.5     727.94    -121.49       0.00      -2.27       0.00       0.00       0.00       0.00       0.00       0.00
                          127.29     763.76      -0.00       3.10       7.81      -1.17       0.70    -872.96       8.80      22.12

   22   8.2  1.5  0.5   -1302.45     217.21       2.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          213.80    1281.25      -3.10      -0.00     560.58      -0.11      -1.46      12.17      -0.18       0.04

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      63.56     870.57     -22.08    -159.67    -957.58
                           -0.00      -0.00      -0.00      -0.00      -0.00     870.57     -63.56      -6.65    -957.77     159.87

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00     -63.56       0.00       0.16      70.82       1.29       0.58
                           -0.00      -0.00      -0.00      -0.00    -870.57       0.00       2.83    -968.15      11.00      23.85

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00    -870.57      -0.16      -0.00     968.20     -10.49     -20.76
                           -0.00      -0.00      -0.00      -0.00      63.56      -2.83      -0.00      70.56       3.52      -0.12

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00      22.08     -70.82    -968.20      -0.00     143.40     861.48
                           -0.00      -0.00      -0.00      -0.00       6.65     968.14     -70.56       0.00    -861.19     143.90

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00     159.67      -1.29      10.49    -143.40       0.00      -7.97
                           -0.00      -0.00      -0.00      -0.00     957.77     -11.00      -3.52     861.19      -0.00     -20.42

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00     957.58      -0.58      20.76    -861.48       7.97       0.00
                           -0.00      -0.00      -0.00      -0.00    -159.87     -23.85       0.12    -143.90      20.42      -0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -2.26    -976.17      71.21       8.19     840.55    -140.29
                           -0.00      -0.00      -0.00      -0.00      -4.39     -70.06    -960.59      22.10     146.98     881.92

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.11    -545.58      40.07     -10.54   -1503.94     250.81
                           -0.00      -0.00      -0.00      -0.00       1.14      41.57     572.60      38.35     246.88    1479.47

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5       0.00       0.00    -199.89      -2.15     -28.94    -215.51      -3.32     -26.72    -224.41    -125.48
                            1.57      73.41     205.82      29.57      -2.83    -221.09      34.23       0.64     214.33    -127.69

    2   2.2  0.5  0.5       0.00       0.00      26.36     -21.01    -287.82      21.26     -51.30    -306.61      16.68       8.95
                            9.79     716.06     -14.63     287.70     -20.96      17.86     305.90     -51.54     -29.69      17.21

    3   3.2  0.5  0.5       0.00       0.00    -206.29      -0.68      -8.74    -221.84       1.28      -4.08     219.54     122.84
                           -1.35      23.01    -201.30       9.42      -0.03     216.45       7.86      -6.48     221.33    -131.91

    4   1.2  0.5 -0.5    -224.41    -125.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -214.33     127.69       1.42    -368.37     442.64      -8.54     350.26    -510.08       1.57      73.41

    5   2.2  0.5 -0.5      16.68       8.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           29.69     -17.21      -0.11      52.31     -33.27       0.58     -52.10      40.87       9.79     716.06

    6   3.2  0.5 -0.5     219.54     122.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -221.33     131.91      -1.24    -441.00    -374.40      14.45     508.83     356.78      -1.35      23.01

    7   1.2  1.5  1.5      -1.96      -0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.80      -0.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5    -845.39    -472.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           60.68     -36.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5      61.67      34.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          831.89    -495.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5       7.09      -9.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -19.14     -33.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5     727.94   -1302.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -127.29    -213.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5    -121.49     217.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -763.76   -1281.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5       0.00       2.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       3.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5      -2.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00     -63.56    -870.57      22.08     159.67     957.58      -2.26      -0.11
                           -7.81    -560.58       0.00     870.57     -63.56      -6.65    -957.77     159.87       4.39      -1.14

   16   2.2  1.5  0.5       0.00       0.00      63.56       0.00      -0.16     -70.82      -1.29      -0.58    -976.17    -545.58
                            1.17       0.11    -870.57      -0.00       2.83    -968.14      11.00      23.85      70.06     -41.57

   17   3.2  1.5  0.5       0.00       0.00     870.57       0.16      -0.00    -968.20      10.49      20.76      71.21      40.07
                           -0.70       1.46      63.56      -2.83       0.00      70.56       3.52      -0.12     960.59    -572.60

   18   4.2  1.5  0.5       0.00       0.00     -22.08      70.82     968.20      -0.00    -143.40    -861.48       8.19     -10.54
                          872.96     -12.17       6.65     968.15     -70.56      -0.00    -861.19     143.90     -22.10     -38.35

   19   5.2  1.5  0.5       0.00       0.00    -159.67       1.29     -10.49     143.40       0.00       7.97     840.55   -1503.94
                           -8.80       0.18     957.77     -11.00      -3.52     861.19       0.00     -20.42    -146.98    -246.88

   20   6.2  1.5  0.5       0.00       0.00    -957.58       0.58     -20.76     861.48      -7.97       0.00    -140.29     250.81
                          -22.12      -0.04    -159.87     -23.85       0.12    -143.90      20.42       0.00    -881.92   -1479.47

   21   7.2  1.5  0.5   64504.08       0.00       2.26     976.18     -71.21      -8.19    -840.55     140.29       0.00       2.62
                            0.00       0.21      -4.39     -70.06    -960.59      22.10     146.98     881.92       0.00       3.58

   22   8.2  1.5  0.5       0.00   64504.18       0.11     545.58     -40.07      10.54    1503.94    -250.81      -2.62       0.00
                           -0.21      -0.00       1.14      41.57     572.60      38.35     246.88    1479.47      -3.58       0.00

   23   1.2  1.5 -0.5       2.26       0.11   63402.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.39      -1.14      -0.00      -1.42       0.02       0.13      -1.13       0.24       7.81     560.58

   24   2.2  1.5 -0.5     976.18     545.58       0.00   63402.13       0.00       0.00       0.00       0.00       0.00       0.00
                           70.06     -41.57       1.42       0.00     436.44      12.34      44.73     483.30      -1.17      -0.11

   25   3.2  1.5 -0.5     -71.21     -40.07       0.00       0.00   63402.13       0.00       0.00       0.00       0.00       0.00
                          960.59    -572.60      -0.02    -436.44      -0.00      -4.33    -483.43      44.86       0.70      -1.46

   26   4.2  1.5 -0.5      -8.19      10.54       0.00       0.00       0.00   64504.07       0.00       0.00       0.00       0.00
                          -22.10     -38.35      -0.13     -12.34       4.33      -0.00     -12.16       2.92    -872.96      12.17

   27   5.2  1.5 -0.5    -840.55    1503.94       0.00       0.00       0.00       0.00   64504.10       0.00       0.00       0.00
                         -146.98    -246.88       1.13     -44.73     483.43      12.16       0.00     436.52       8.80      -0.18

   28   6.2  1.5 -0.5     140.29    -250.81       0.00       0.00       0.00       0.00       0.00   64504.10       0.00       0.00
                         -881.92   -1479.47      -0.24    -483.30     -44.86      -2.92    -436.52      -0.00      22.12       0.04

   29   7.2  1.5 -0.5       0.00      -2.62       0.00       0.00       0.00       0.00       0.00       0.00   64504.08       0.00
                           -0.00       3.58      -7.81       1.17      -0.70     872.96      -8.80     -22.12      -0.00      -0.21

   30   8.2  1.5 -0.5       2.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   64504.18
                           -3.58      -0.00    -560.58       0.11       1.46     -12.17       0.18      -0.04       0.21       0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00      55.05     753.94     -19.13    -138.28    -829.29       1.96       0.10
                           -0.00      -0.00      -0.00     753.94     -55.05      -5.76    -829.46     138.45       3.80      -0.99

   32   2.2  1.5 -1.5       0.00       0.00     -55.05       0.00       0.14      61.34       1.12       0.50     845.40     472.49
                           -0.00      -0.00    -753.94       0.00       2.45    -838.44       9.53      20.66      60.68     -36.00

   33   3.2  1.5 -1.5       0.00       0.00    -753.94      -0.14      -0.00     838.49      -9.09     -17.98     -61.67     -34.70
                           -0.00      -0.00      55.05      -2.45      -0.00      61.11       3.04      -0.11     831.90    -495.88

   34   4.2  1.5 -1.5       0.00       0.00      19.13     -61.34    -838.48      -0.00     124.19     746.06      -7.09       9.13
                           -0.00      -0.00       5.76     838.43     -61.11       0.00    -745.82     124.62     -19.14     -33.21

   35   5.2  1.5 -1.5       0.00       0.00     138.28      -1.12       9.09    -124.19       0.00      -6.90    -727.94    1302.45
                           -0.00      -0.00     829.45      -9.53      -3.04     745.82      -0.00     -17.68    -127.29    -213.80

   36   6.2  1.5 -1.5       0.00       0.00     829.29      -0.50      17.98    -746.06       6.90       0.00     121.49    -217.21
                           -0.00      -0.00    -138.45     -20.66       0.11    -124.62      17.68      -0.00    -763.76   -1281.25

   37   7.2  1.5 -1.5       0.00       0.00      -1.96    -845.39      61.67       7.09     727.94    -121.49       0.00      -2.27
                           -0.00      -0.00      -3.80     -60.68    -831.89      19.14     127.29     763.76      -0.00       3.10

   38   8.2  1.5 -1.5       0.00       0.00      -0.10    -472.49      34.70      -9.13   -1302.45     217.21       2.27       0.00
                           -0.00      -0.00       0.99      36.00     495.88      33.21     213.80    1281.25      -3.10      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5    -346.21      -3.72     -50.12    -373.28      -5.74     -46.29    -388.68    -217.35
                          356.48      51.22      -4.90    -382.93      59.29       1.11     371.24    -221.16

    5   2.2  0.5 -0.5      45.65     -36.39    -498.51      36.83     -88.86    -531.07      28.90      15.51
                          -25.34     498.31     -36.30      30.94     529.84     -89.27     -51.43      29.82

    6   3.2  0.5 -0.5    -357.30      -1.17     -15.15    -384.23       2.22      -7.06     380.26     212.76
                         -348.65      16.32      -0.06     374.90      13.62     -11.22     383.36    -228.48

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   1.2  1.5 -0.5       0.00     -55.05    -753.94      19.13     138.28     829.29      -1.96      -0.10
                            0.00     753.94     -55.05      -5.76    -829.45     138.45       3.80      -0.99

   24   2.2  1.5 -0.5      55.05       0.00      -0.14     -61.34      -1.12      -0.50    -845.39    -472.49
                         -753.94      -0.00       2.45    -838.43       9.53      20.66      60.68     -36.00

   25   3.2  1.5 -0.5     753.94       0.14      -0.00    -838.48       9.09      17.98      61.67      34.70
                           55.05      -2.45       0.00      61.11       3.04      -0.11     831.89    -495.88

   26   4.2  1.5 -0.5     -19.13      61.34     838.49      -0.00    -124.19    -746.06       7.09      -9.13
                            5.76     838.44     -61.11      -0.00    -745.82     124.62     -19.14     -33.21

   27   5.2  1.5 -0.5    -138.28       1.12      -9.09     124.19       0.00       6.90     727.94   -1302.45
                          829.46      -9.53      -3.04     745.82       0.00     -17.68    -127.29    -213.80

   28   6.2  1.5 -0.5    -829.29       0.50     -17.98     746.06      -6.90       0.00    -121.49     217.21
                         -138.45     -20.66       0.11    -124.62      17.68       0.00    -763.76   -1281.25

   29   7.2  1.5 -0.5       1.96     845.40     -61.67      -7.09    -727.94     121.49       0.00       2.27
                           -3.80     -60.68    -831.90      19.14     127.29     763.76       0.00       3.10

   30   8.2  1.5 -0.5       0.10     472.49     -34.70       9.13    1302.45    -217.21      -2.27       0.00
                            0.99      36.00     495.88      33.21     213.80    1281.25      -3.10       0.00

   31   1.2  1.5 -1.5   63402.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -4.26       0.07       0.38      -3.38       0.71      23.43    1681.74

   32   2.2  1.5 -1.5       0.00   63402.13       0.00       0.00       0.00       0.00       0.00       0.00
                            4.26       0.00    1309.31      37.01     134.20    1449.91      -3.52      -0.33

   33   3.2  1.5 -1.5       0.00       0.00   63402.13       0.00       0.00       0.00       0.00       0.00
                           -0.07   -1309.31      -0.00     -12.98   -1450.29     134.57       2.09      -4.37

   34   4.2  1.5 -1.5       0.00       0.00       0.00   64504.07       0.00       0.00       0.00       0.00
                           -0.38     -37.01      12.98      -0.00     -36.49       8.76   -2618.88      36.51

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   64504.10       0.00       0.00       0.00
                            3.38    -134.20    1450.29      36.49       0.00    1309.55      26.41      -0.53

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   64504.10       0.00       0.00
                           -0.71   -1449.91    -134.57      -8.76   -1309.55      -0.00      66.35       0.11

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   64504.08       0.00
                          -23.43       3.52      -2.09    2618.88     -26.41     -66.35      -0.00      -0.63

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   64504.18
                        -1681.74       0.33       4.37     -36.51       0.53      -0.11       0.63       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -295.53704511    -0.01169215    -2566.13      0.00000000        0.00      0.0000
     2  -295.53704511    -0.01169215    -2566.13      0.00000000        0.00      0.0000
     3  -295.53704444    -0.01169148    -2565.98      0.00000067        0.15      0.0000
     4  -295.53704444    -0.01169148    -2565.98      0.00000067        0.15      0.0000
     5  -295.50236614     0.02298683     5045.03      0.03467897     7611.15      0.9437
     6  -295.50236614     0.02298683     5045.03      0.03467897     7611.15      0.9437
     7  -295.24798543     0.27736753    60875.14      0.28905968    63441.27      7.8657
     8  -295.24798543     0.27736754    60875.14      0.28905968    63441.27      7.8657
     9  -295.24798537     0.27736760    60875.15      0.28905975    63441.28      7.8657
    10  -295.24798536     0.27736760    60875.15      0.28905975    63441.28      7.8657
    11  -295.24798535     0.27736762    60875.16      0.28905977    63441.29      7.8657
    12  -295.24798533     0.27736763    60875.16      0.28905978    63441.29      7.8657
    13  -295.24338891     0.28196405    61883.96      0.29365620    64450.09      7.9908
    14  -295.24338891     0.28196405    61883.96      0.29365620    64450.09      7.9908
    15  -295.24338888     0.28196409    61883.96      0.29365624    64450.09      7.9908
    16  -295.24338888     0.28196409    61883.97      0.29365624    64450.09      7.9908
    17  -295.24338873     0.28196424    61884.00      0.29365638    64450.13      7.9908
    18  -295.24338873     0.28196424    61884.00      0.29365638    64450.13      7.9908
    19  -295.24338862     0.28196434    61884.02      0.29365649    64450.15      7.9908
    20  -295.24338862     0.28196434    61884.02      0.29365649    64450.15      7.9908
    21  -295.23696846     0.28838451    63293.08      0.30007665    65859.21      8.1655
    22  -295.23696843     0.28838454    63293.09      0.30007668    65859.22      8.1655
    23  -295.23696826     0.28838470    63293.13      0.30007685    65859.26      8.1655
    24  -295.23696825     0.28838471    63293.13      0.30007686    65859.26      8.1655
    25  -295.22819766     0.29715531    65218.05      0.30884745    67784.18      8.4042
    26  -295.22819764     0.29715533    65218.06      0.30884747    67784.19      8.4042
    27  -295.22391306     0.30143991    66158.41      0.31313206    68724.54      8.5208
    28  -295.22391303     0.30143994    66158.42      0.31313208    68724.55      8.5208
    29  -295.22391298     0.30143998    66158.43      0.31313213    68724.56      8.5208
    30  -295.22391298     0.30143999    66158.43      0.31313213    68724.56      8.5208
    31  -295.22391291     0.30144006    66158.45      0.31313221    68724.58      8.5208
    32  -295.22391289     0.30144008    66158.45      0.31313222    68724.58      8.5208
    33  -295.21492177     0.31043120    68131.77      0.32212334    70697.90      8.7654
    34  -295.21492174     0.31043123    68131.78      0.32212337    70697.91      8.7654
    35  -295.21492122     0.31043175    68131.89      0.32212390    70698.02      8.7654
    36  -295.21492121     0.31043176    68131.90      0.32212390    70698.02      8.7654
    37  -295.21171192     0.31364105    68836.25      0.32533320    71402.38      8.8528
    38  -295.21171189     0.31364107    68836.26      0.32533322    71402.39      8.8528


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.079289638   0.437370157  -0.684398507  -0.020901863   0.058983801   0.574172247   0.000022348   0.000000035
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.784988278  -0.034136173   0.075427794  -0.206352831   0.573847819  -0.058954144  -0.000001612  -0.000000011
                         0.012440767  -0.010660263  -0.021451285   0.007889653   0.000238741  -0.018900680   0.000000206  -0.000000160

    3    3.2  0.5  0.5   0.025839563  -0.324078677  -0.203921466  -0.005968138   0.018801211  -0.001920620  -0.000021018  -0.000000026
                         0.002245700   0.280563589   0.663612751   0.000329389  -0.000020377   0.576884954  -0.000006235  -0.000000065

    4    1.2  0.5 -0.5  -0.142981629   0.025920026  -0.016083880   0.526626185   0.399617345  -0.041052054   0.000000024  -0.000022136
                        -0.413337242   0.074933172   0.013349883  -0.437112577   0.412286001  -0.042353485  -0.000000010  -0.000001525

    5    2.2  0.5 -0.5   0.021234295   0.268372254  -0.163826470  -0.071740095  -0.054603099  -0.399562976  -0.000000021   0.000001582
                         0.028775589   0.737790949   0.125725252   0.031668005  -0.029177532  -0.411886883   0.000000143   0.000000317

    6    3.2  0.5 -0.5  -0.159210112   0.010569331  -0.004802834   0.580745884   0.412897138  -0.013070797  -0.000000021   0.000021238
                         0.397987488   0.023685730   0.003558360   0.380395955  -0.402884465  -0.013514445   0.000000059  -0.000004815

    7    1.2  1.5  1.5  -0.000003657  -0.000876303  -0.007900996  -0.000003820   0.000014918   0.000003112   0.000994139   0.000674705
                         0.000012666  -0.002454033   0.005995747  -0.000001479   0.000000846   0.000003164   0.010121106  -0.000655797

    8    2.2  1.5  1.5   0.000510156  -0.000010540   0.000001470  -0.000053174   0.000336565  -0.000000177  -0.001371405  -0.203129353
                        -0.005739773  -0.000002364   0.000011577   0.001514084  -0.004583339  -0.000000239   0.000340778  -0.000798575

    9    3.2  1.5  1.5   0.005740176   0.000005345   0.000013780  -0.001515274   0.004583758   0.000000228   0.000282098   0.001823615
                         0.000510080  -0.000002609  -0.000018447  -0.000053026   0.000336516  -0.000000187   0.001504330  -0.189026622

   10    4.2  1.5  1.5   0.000165456   0.002023187  -0.001236471  -0.000029723   0.000126952   0.006754992  -0.018929480   0.001835592
                        -0.000044788   0.005562210   0.000947669   0.000006341  -0.000034951   0.006963450   0.139195140   0.005498495

   11    5.2  1.5  1.5   0.001072813  -0.000022730   0.000012573  -0.000199136   0.000805217  -0.000064087  -0.000141782   0.207203455
                        -0.005867134  -0.000069846   0.000000083   0.001556462  -0.004820317  -0.000089891  -0.001408296   0.021235887

   12    6.2  1.5  1.5   0.005863482  -0.000033075   0.000019630  -0.001554851   0.004817392  -0.000149230   0.000977778  -0.020458204
                         0.001074631  -0.000151547  -0.000021030  -0.000199546   0.000806603  -0.000186085  -0.002942746   0.212141938

   13    7.2  1.5  1.5  -0.000020524   0.005623200   0.000907223  -0.000002401  -0.000012922   0.007015343   0.139303932  -0.000240534
                        -0.000002555  -0.002044276   0.001180694  -0.000012837   0.000006406  -0.006804359   0.018933970  -0.000535024

   14    8.2  1.5  1.5  -0.000008103   0.001399259  -0.003617460   0.000001214  -0.000001056  -0.000098250   0.004345624  -0.000183778
                        -0.000008892  -0.000500692  -0.004767399  -0.000000365   0.000003627   0.000092047  -0.000913122  -0.000457543

   15    1.2  1.5  0.5  -0.003304749   0.000007176   0.000016348   0.000871994   0.005271993   0.000005922   0.000290294   0.044928747
                        -0.000052140   0.000031422  -0.000010038  -0.000033062   0.000002159   0.000006305  -0.001349319   0.677758065

   16    2.2  1.5  0.5   0.000002557   0.005006344   0.004747890  -0.000006992  -0.000000454   0.002011654  -0.341006627  -0.000084931
                         0.000000958  -0.001196402   0.005755952  -0.000012906  -0.000000003  -0.001681699  -0.068660916   0.000565258

   17    3.2  1.5  0.5   0.000034708   0.002427446   0.002868437   0.000008953  -0.000017134   0.001709276   0.071651322   0.000421082
                        -0.000012451   0.007793394  -0.002847297  -0.000005169  -0.000000178   0.002036212  -0.323641964  -0.002442658

   18    4.2  1.5  0.5   0.001555726  -0.000001202  -0.000147571   0.005914367   0.000001210  -0.000195706   0.001110087  -0.000891186
                         0.000017049  -0.000056960   0.000060769  -0.000258588   0.000002420  -0.000116640   0.006003373   0.008454653

   19    5.2  1.5  0.5  -0.000026402   0.001383363  -0.004306823  -0.000065938   0.000000524  -0.006933027   0.194734473   0.000206307
                        -0.000010207  -0.000767905  -0.004053572  -0.000007939   0.000007757   0.004786693   0.059713973  -0.000170752

   20    6.2  1.5  0.5  -0.000050214  -0.000765801  -0.004096045  -0.000144888  -0.000000088  -0.004816336  -0.060319336  -0.000022052
                         0.000005685  -0.001369068   0.004330392  -0.000008282   0.000001685  -0.006956794   0.192628935  -0.000093528

   21    7.2  1.5  0.5   0.000014472  -0.000015383   0.000016803  -0.000260421  -0.000000028   0.000022719  -0.000797537   0.004560955
                        -0.001485383   0.000002396  -0.000004136  -0.005978009   0.000131409   0.000007639  -0.000769845   0.000796092

   22    8.2  1.5  0.5  -0.000094457   0.000010316   0.000001712  -0.000057100  -0.000004010   0.000006182  -0.000196381   0.140133613
                         0.005977806   0.000002525  -0.000009465  -0.001483166   0.009767796  -0.000002555  -0.000076301  -0.009306365

   23    1.2  1.5 -0.5   0.000032041   0.001129608  -0.000692111   0.000018990  -0.000008649   0.003670795  -0.091544350   0.000201394
                        -0.000003491   0.003106129   0.000531496  -0.000002717   0.000000136   0.003784065   0.673108178   0.001377266

   24    2.2  1.5 -0.5   0.000505921  -0.000001741  -0.000002863  -0.000022809  -0.000192540  -0.000000319   0.000090864  -0.347757129
                         0.005122444  -0.000002103  -0.000014396  -0.007461393  -0.002614919  -0.000000324   0.000650990   0.044304133

   25    3.2  1.5 -0.5   0.008158720   0.000000421  -0.000010190   0.004025748  -0.002651746  -0.000012053  -0.000335569   0.049855413
                        -0.000253616  -0.000036871   0.000001741   0.000358913   0.000189830  -0.000012180  -0.002400384   0.324922335

   26    4.2  1.5 -0.5  -0.000054223  -0.000524698  -0.004716102  -0.000152364   0.000219963   0.000002580   0.000073672   0.001544376
                         0.000017485  -0.001464715   0.003578389   0.000047490   0.000059347  -0.000000816   0.008007267  -0.006222153

   27    5.2  1.5 -0.5  -0.000273481   0.000018277   0.000045667  -0.000725068   0.001388209   0.000005935  -0.000187024   0.198698801
                         0.001558349   0.000021615  -0.000048221   0.005869801   0.008309764  -0.000005023  -0.000189348  -0.046028781

   28    6.2  1.5 -0.5  -0.001544151   0.000011043   0.000106198  -0.005917537   0.008347460   0.000001149   0.000050027  -0.047008465
                        -0.000276166   0.000049314  -0.000098910  -0.000716077  -0.001383466  -0.000001236  -0.000091761  -0.195968254

   29    7.2  1.5 -0.5  -0.000002765   0.001399080  -0.003617626   0.000015571  -0.000021297   0.000094339  -0.002297325  -0.001105117
                        -0.000015321  -0.000499268  -0.004766244  -0.000007550  -0.000010997  -0.000091479   0.000450566   0.000619132

   30    8.2  1.5 -0.5   0.000005758  -0.005618483  -0.000903353   0.000007363  -0.000002468   0.007011002  -0.139198535  -0.000202094
                         0.000008924   0.002043430  -0.001177759   0.000006189  -0.000006218  -0.006801154  -0.018943384   0.000064396

   31    1.2  1.5 -1.5   0.002605601   0.000010775  -0.000001995   0.009908981   0.000004438  -0.000010991   0.000719508  -0.002239105
                         0.000025924  -0.000007596   0.000003578  -0.000432613   0.000000032  -0.000010123   0.000622972   0.013380675

   32    2.2  1.5 -1.5   0.000005680  -0.005257635  -0.001007953   0.000006262  -0.000000295   0.003056834  -0.204893311   0.002022649
                         0.000009187   0.002358476  -0.001131118   0.000009847   0.000000039  -0.003431623  -0.013610694   0.000625069

   33    3.2  1.5 -1.5   0.000000718   0.002358535  -0.001132128  -0.000022385   0.000000024  -0.003431879  -0.010804936  -0.000571649
                        -0.000005904   0.005258041   0.001008599  -0.000005393   0.000000294  -0.003057169   0.186544354   0.002160113

   34    4.2  1.5 -1.5  -0.005918008   0.000011761  -0.000026922   0.001556648   0.009701522  -0.000063261   0.002206284   0.009289551
                        -0.000093722   0.000171007   0.000014105  -0.000060497   0.000003959  -0.000115484  -0.005376181   0.140161886

   35    5.2  1.5 -1.5   0.000073439  -0.005194065  -0.001147337  -0.000009621  -0.000109150   0.002900820   0.207428133   0.000480733
                        -0.000001352   0.002931852  -0.001070502   0.000008094   0.000016545  -0.003933073  -0.007120984  -0.001306996

   36    6.2  1.5 -1.5   0.000154033   0.002932377  -0.001069001  -0.000028536  -0.000237481  -0.003932033  -0.005571527  -0.000864930
                        -0.000018284   0.005190019   0.001146624  -0.000003644   0.000022358  -0.002897755  -0.213826255  -0.002771416

   37    7.2  1.5 -1.5   0.000093715  -0.000009125   0.000006352   0.000055996  -0.000003290   0.000004394  -0.000279655  -0.140293274
                        -0.005982541  -0.000018561   0.000011411   0.001487897   0.009773143   0.000013737   0.000519232   0.009281151

   38    8.2  1.5 -1.5   0.000015760  -0.000011052   0.000001167  -0.000261286  -0.000002286  -0.000001870  -0.000170383  -0.006351102
                        -0.001486017  -0.000004751  -0.000000494  -0.005978792  -0.000134612   0.000003283   0.000500128  -0.001551253


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000000942   0.000018573  -0.000024875   0.000000321   0.000039613  -0.000004585   0.000013268  -0.000001203
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000390  -0.000001427   0.000001776   0.000000870  -0.000003806   0.000003200  -0.000001359   0.000000166
                        -0.000001692   0.000000450   0.000000122   0.000000873  -0.000001571  -0.000001850   0.000000540   0.000000072

    3    3.2  0.5  0.5  -0.000000517  -0.000014726   0.000024130  -0.000000189   0.000002478  -0.000000032  -0.000001471  -0.000000075
                        -0.000000764  -0.000010845  -0.000003146   0.000000125   0.000039602  -0.000005537  -0.000013273  -0.000001156

    4    1.2  0.5 -0.5   0.000029084  -0.000001613  -0.000000074   0.000003037   0.000004554   0.000039299  -0.000001108  -0.000012071
                         0.000009602  -0.000000100   0.000000338   0.000004669   0.000000581   0.000005043   0.000000506   0.000005495

    5    2.2  0.5 -0.5  -0.000002028   0.000000092   0.000000147  -0.000000473  -0.000002938  -0.000003976   0.000000124   0.000001460
                        -0.000000818  -0.000000078   0.000002138  -0.000000609  -0.000002242   0.000001074  -0.000000137  -0.000000072

    6    3.2  0.5 -0.5  -0.000029544   0.000001572   0.000000121   0.000004614   0.000000738   0.000007501   0.000000418  -0.000004164
                        -0.000005107  -0.000000170   0.000000045   0.000003337  -0.000005484  -0.000038974   0.000001097  -0.000012683

    7    1.2  1.5  1.5   0.005689473   0.069996031   0.033731652  -0.000939423   0.000000222   0.000000027   0.000001363  -0.000000028
                        -0.008392981  -0.221350739   0.502560308  -0.003763533   0.000000188  -0.000000032  -0.000001579   0.000000021

    8    2.2  1.5  1.5  -0.126632226   0.009558485  -0.004466271  -0.405011243   0.000000053   0.000000502  -0.000000020  -0.000000671
                        -0.023361918  -0.000841212   0.002523715   0.448599479   0.000000087   0.000000792  -0.000000012   0.000002064

    9    3.2  1.5  1.5  -0.024512908  -0.001123453   0.002139260   0.449948623  -0.000000127  -0.000000811   0.000000006   0.000002368
                         0.136976672  -0.008082340   0.003373279   0.406943193   0.000000047   0.000000523  -0.000000011   0.000000940

   10    4.2  1.5  1.5  -0.000561076  -0.001255847   0.000481423   0.002581664   0.505983149  -0.065754887  -0.001060911  -0.002470669
                         0.001100462   0.002604153  -0.001393302   0.004867437   0.488478147  -0.063916388   0.001186060  -0.005622799

   11    5.2  1.5  1.5  -0.053270516   0.002751839  -0.001646206  -0.131080878  -0.008844056   0.002326843  -0.000583929  -0.135241305
                        -0.005306154  -0.000738162   0.000822810   0.174293181   0.010034947   0.001695174  -0.000277944   0.512716215

   12    6.2  1.5  1.5  -0.003056485  -0.000534893   0.001224994   0.173039966   0.000550111  -0.005937303   0.000431245   0.518743700
                         0.042324808  -0.003718969   0.001365916   0.128822726  -0.007025249   0.004331220  -0.000357902   0.137635910

   13    7.2  1.5  1.5   0.000145585   0.000796352   0.002913266  -0.000456024  -0.485030898   0.063255787  -0.002560242   0.013432661
                        -0.000249522   0.000644601  -0.000690852  -0.000384000   0.502308251  -0.065520199  -0.003299885  -0.014336832

   14    8.2  1.5  1.5  -0.005443213  -0.137355529   0.311822049  -0.003082751   0.002932502  -0.000237816   0.024042075  -0.000191450
                        -0.003581901  -0.043446512  -0.020919177   0.001328381  -0.002724382   0.001005968   0.020944965   0.002591507

   15    1.2  1.5  0.5   0.000668177   0.000150559   0.000623920  -0.002568628   0.000000303   0.000002436  -0.000000043   0.000000142
                        -0.017991292  -0.001972965   0.000443276  -0.003153789  -0.000000268  -0.000001811   0.000000088   0.000000136

   16    2.2  1.5  0.5   0.007676896   0.189251269  -0.428555222   0.004880984   0.000004971  -0.000000634  -0.000003265  -0.000000157
                         0.004682189   0.043035322   0.062023381  -0.002778720  -0.000004555   0.000000535  -0.000002310   0.000000078

   17    3.2  1.5  0.5   0.004179491   0.049966642   0.059614057  -0.001968775   0.000003842  -0.000000660  -0.000002651  -0.000000213
                        -0.008257902  -0.201884344   0.435299990  -0.003636837   0.000004447  -0.000000498   0.000003348  -0.000000151

   18    4.2  1.5  0.5  -0.069523362  -0.000723001   0.000540727   0.138698194  -0.011710503   0.005202526   0.000599762  -0.435411721
                         0.270208301  -0.015369814  -0.000789299   0.145087248  -0.004987071  -0.001625812  -0.000369975  -0.196531050

   19    5.2  1.5  0.5   0.000256291  -0.020213563   0.048748837  -0.002792910   0.009804585  -0.002042466  -0.029315340   0.004037751
                        -0.003530315  -0.000789467  -0.012891927  -0.000742258  -0.010014716  -0.000012291  -0.021452335  -0.000594623

   20    6.2  1.5  0.5   0.001762894  -0.005789536  -0.011109847  -0.003762279   0.000447052  -0.000037966  -0.011890493   0.007618791
                        -0.005317163   0.027722564  -0.052630828  -0.002990016   0.003902201  -0.000681614   0.024932867   0.003557543

   21    7.2  1.5  0.5   0.162898382  -0.008359622  -0.003468728  -0.216917723   0.004378581  -0.001204933  -0.000420136   0.183354676
                         0.041856299   0.000125006   0.001569325   0.207519474  -0.011793008   0.000787023  -0.001323874  -0.406573425

   22    8.2  1.5  0.5  -0.005966561  -0.000139739  -0.000190654   0.002339187   0.002229358   0.008691649  -0.001519464  -0.000851380
                        -0.000782478   0.000004048  -0.000099066  -0.002395925   0.000743201   0.011895186  -0.000749109  -0.003513291

   23    1.2  1.5 -0.5   0.001005426  -0.005996773   0.001913852  -0.000674023   0.000002136  -0.000000266  -0.000000108  -0.000000067
                        -0.000878355   0.013193202  -0.006899092  -0.000919821   0.000002059  -0.000000292   0.000000202  -0.000000056

   24    2.2  1.5 -0.5  -0.434796682   0.026209053   0.003477317   0.081678874  -0.000000555  -0.000004331   0.000000167  -0.000002103
                        -0.149611334   0.001237618  -0.000813390  -0.067708100  -0.000000610  -0.000005137  -0.000000009   0.000003603

   25    3.2  1.5 -0.5   0.148952099  -0.001336958   0.001188632   0.064925270  -0.000000715  -0.000004319   0.000000144  -0.000003955
                        -0.452754448   0.024851736   0.002494379   0.078734508   0.000000400   0.000003880  -0.000000229  -0.000002023

   26    4.2  1.5 -0.5   0.009671500   0.098844403   0.006660873  -0.001110899   0.005124028   0.012401202   0.314762070   0.000709651
                        -0.013156446  -0.313329235   0.100570543  -0.001938560   0.002408747  -0.003518984  -0.359323322   0.000082762

   27    5.2  1.5 -0.5   0.045692965  -0.004743414  -0.001280614  -0.011054238  -0.002011813  -0.008355936  -0.003929891  -0.017832258
                         0.023484826   0.003079743  -0.001090975   0.007931290  -0.000225419  -0.010956639   0.001147294   0.031835870

   28    6.2  1.5 -0.5  -0.022210441  -0.002208691  -0.001049506  -0.006064137  -0.000150915  -0.001239379  -0.005490302  -0.021048959
                         0.056786188   0.004940706  -0.002469747  -0.009427062   0.000699429   0.003980654   0.006388892  -0.017753155

   29    7.2  1.5 -0.5  -0.007522103  -0.130264998  -0.315140013   0.002468064  -0.001163136  -0.002880747  -0.335401433   0.000172589
                        -0.005086313  -0.041019437   0.021240545  -0.001125901  -0.000893459  -0.012427414  -0.293999503   0.001390974

   30    8.2  1.5 -0.5  -0.000055420  -0.000917884   0.005816470   0.000217825   0.010077811  -0.002293481  -0.000512481  -0.001066003
                         0.000161667  -0.000592428   0.000075158  -0.000172990  -0.010628833   0.000456553  -0.003383276   0.001324938

   31    1.2  1.5 -1.5  -0.134669336  -0.001306079  -0.001395604  -0.083116446  -0.000000023   0.000000207  -0.000000043  -0.000001722
                         0.523713547  -0.027813673  -0.002502850  -0.086793867  -0.000000030  -0.000000134  -0.000000007  -0.000000793

   32    2.2  1.5 -1.5   0.025438090   0.518528438   0.261971368  -0.000469528  -0.000000584   0.000000046  -0.000003535   0.000000012
                         0.019724392   0.206223316   0.001744745   0.000021590   0.000000690  -0.000000161  -0.000003701  -0.000000017

   33    3.2  1.5 -1.5  -0.018976135  -0.209118843  -0.000930654  -0.000308182   0.000000745  -0.000000039   0.000003846  -0.000000007
                         0.024052034   0.526424424   0.257923837  -0.000829424   0.000000618  -0.000000074  -0.000003892  -0.000000005

   34    4.2  1.5 -1.5  -0.000045616  -0.000146079   0.000881167  -0.000516639   0.073353210   0.564054489  -0.000011452   0.001321504
                        -0.003447963   0.005052730   0.002220097  -0.000657157  -0.055030041  -0.420111191   0.006397106   0.000583746

   35    5.2  1.5 -1.5   0.008387548   0.183837129   0.090472583  -0.000556433  -0.002458216  -0.007529594  -0.335669807   0.000413847
                         0.007609062   0.092492698   0.008827983   0.000377698   0.001292451  -0.011276572  -0.410579493  -0.000496345

   36    6.2  1.5 -1.5  -0.008061547  -0.090186051  -0.009315272   0.000272892   0.005382262  -0.000150209   0.414981177  -0.000543746
                         0.008403915   0.175124702   0.094873405   0.000029187   0.005086036   0.007011492  -0.340225663  -0.000143589

   37    7.2  1.5 -1.5  -0.000804400   0.000419836   0.000097797   0.001399956  -0.054400335  -0.417138385   0.018422266   0.000934155
                        -0.001059643  -0.000564634  -0.000148541  -0.001248767  -0.073033979  -0.559938887   0.007576248  -0.004002378

   38    8.2  1.5 -1.5  -0.324936143   0.018188380   0.002001661   0.053840984   0.000135726   0.002733587  -0.001255777  -0.013211438
                        -0.083523137  -0.000493160  -0.000889628  -0.051561626   0.001046660   0.003310034  -0.002256136   0.029055933


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000020105   0.000000058   0.000000454   0.000016046   0.000073640  -0.003868416  -0.002385469  -0.000462613
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000002533  -0.000001625   0.000005519  -0.000002082   0.000729437   0.000424076   0.000197591  -0.004511669
                        -0.000000449  -0.000000748  -0.000000778   0.000000285  -0.000010066  -0.000121713   0.000062259  -0.000033661

    3    3.2  0.5  0.5   0.000015723  -0.000000021   0.000000185   0.000014379   0.000022757  -0.000882408   0.001495679  -0.000145495
                         0.000013625   0.000000331   0.000000098  -0.000007473  -0.000001462   0.003799741  -0.001841696  -0.000004075

    4    1.2  0.5 -0.5   0.000000041  -0.000014676  -0.000014805   0.000000419  -0.002947536  -0.000070789  -0.000189835   0.001101642
                         0.000000040  -0.000013712   0.000006204  -0.000000176   0.002536456   0.000057885  -0.000418626   0.002078381

    5    2.2  0.5 -0.5  -0.000001699   0.000002155   0.000002031   0.000005391   0.000399645  -0.000706957  -0.001878426  -0.000153946
                        -0.000000565   0.000001401  -0.000000542  -0.000001415  -0.000180692   0.000564249  -0.004067135  -0.000147707

    6    3.2  0.5 -0.5   0.000000210  -0.000020770  -0.000016156   0.000000133  -0.003051151  -0.000022950  -0.000063330   0.001178288
                        -0.000000256  -0.000000795  -0.000001335  -0.000000162  -0.002458548   0.000016699  -0.000130336  -0.002025613

    7    1.2  1.5  1.5   0.000013134   0.000000053   0.000000022   0.000005423  -0.000185942   0.524307875  -0.058572205   0.000665844
                         0.000004982   0.000000162   0.000000035  -0.000001254  -0.000018408  -0.427984234  -0.123271173   0.000011903

    8    2.2  1.5  1.5   0.000000021   0.000000416  -0.000000690   0.000000099  -0.003754260  -0.000237083  -0.000176267   0.031560843
                        -0.000000056  -0.000001383  -0.000008831   0.000000012   0.063421357  -0.000217576   0.000099049  -0.392253761

    9    3.2  1.5  1.5  -0.000000035  -0.000000183   0.000008769   0.000000066  -0.063423905  -0.001463549   0.000098032   0.392252781
                        -0.000000077  -0.000000115  -0.000000546   0.000000040  -0.003754008   0.001182446   0.000221284   0.031561009

   10    4.2  1.5  1.5   0.011702066   0.001064600  -0.004157550  -0.101102676   0.000691733  -0.031341117  -0.083291269  -0.005303259
                         0.003428542   0.000766995   0.001214465   0.026445187  -0.000251887   0.024954309  -0.180344576   0.001357928

   11    5.2  1.5  1.5  -0.001853572   0.001040265  -0.004525082  -0.001189989   0.004874477   0.000388717   0.000696010  -0.034358970
                         0.002489934   0.022996726   0.246909871   0.000625178  -0.031934030  -0.000217214   0.002139257   0.197138972

   12    6.2  1.5  1.5   0.000783420   0.038624370  -0.230332490   0.000717650   0.031934436   0.000676671   0.001664501  -0.197079642
                         0.001395917   0.014928822  -0.006920943  -0.001568441   0.004880325  -0.000464702   0.004701883  -0.034406165

   13    7.2  1.5  1.5   0.000473859   0.000500271  -0.000128961   0.033844455  -0.000093863   0.023241970  -0.180900796   0.000493824
                        -0.006407491  -0.000753805   0.000323165   0.129531214   0.000187951   0.029170890   0.083529069  -0.000162478

   14    8.2  1.5  1.5   0.186739691   0.007170150  -0.000182112  -0.000707340  -0.000009320  -0.125982592  -0.033659422   0.000024401
                        -0.499056455  -0.006409639   0.001669520  -0.026333399   0.000016019  -0.154361653   0.016079652   0.000029810

   15    1.2  1.5  0.5   0.000000026  -0.000001986  -0.000009699  -0.000000033   0.036682824  -0.000826045   0.000722647  -0.227191795
                         0.000000013  -0.000000585   0.000001404  -0.000000065  -0.000504538   0.000816442   0.001688489  -0.001682140

   16    2.2  1.5  0.5  -0.000001191  -0.000000070   0.000000046  -0.000001258   0.000045264  -0.319917227   0.353804533   0.000038610
                         0.000005854   0.000000069   0.000000013  -0.000004416  -0.000337110  -0.358970416  -0.119926368   0.000147705

   17    3.2  1.5  0.5   0.000011908   0.000000186   0.000000019  -0.000000460   0.000195154  -0.208856293   0.197745658   0.001300254
                         0.000003928   0.000000167   0.000000028   0.000000583   0.000061716   0.217051375   0.490843242   0.000060417

   18    4.2  1.5  0.5   0.005930908   0.220773245   0.004102209  -0.007648409  -0.200056053  -0.004875718   0.000273327  -0.032292515
                         0.006988432   0.092137714  -0.004725993   0.004825642   0.000567206   0.002179205   0.001199410  -0.000641928

   19    5.2  1.5  0.5  -0.096582414  -0.007018495  -0.003320150   0.041582140   0.002241831  -0.149248809  -0.032866899   0.000371861
                         0.504420660   0.004971442  -0.003297494   0.435883471   0.000352013  -0.131179801   0.022909260   0.000083671

   20    6.2  1.5  0.5   0.541597920   0.003358104   0.000024881  -0.387539548   0.004894288  -0.131102291   0.022916096   0.000969862
                         0.107475010   0.004442636  -0.002996736   0.032913530   0.000447360   0.149246956   0.032860003   0.000054679

   21    7.2  1.5  0.5   0.001109882   0.112854497  -0.003054917   0.000711841   0.000551156   0.000546041   0.000140506  -0.000575501
                         0.002272970  -0.271742091  -0.008694057  -0.001009416   0.200556251  -0.000125572  -0.000193689   0.029517770

   22    8.2  1.5  0.5  -0.000026524   0.018169977   0.100887653  -0.004680269   0.000484840   0.000012023  -0.000066402   0.001497815
                         0.002404626  -0.023315946   0.709151886   0.004333226   0.029522274  -0.000027352   0.000033911  -0.200564927

   23    1.2  1.5 -0.5   0.000001671   0.000000024  -0.000000013   0.000013840   0.001204021   0.035559937   0.094582156   0.001786242
                         0.000000914   0.000000001   0.000000110  -0.000003591   0.000099938  -0.028384109   0.204815495  -0.000044013

   24    2.2  1.5 -0.5   0.000000006   0.000004502   0.000000973  -0.000000055   0.021209686   0.000282498  -0.000097431   0.035521752
                         0.000000160  -0.000007787   0.000006568   0.000000036  -0.465647962   0.000259103  -0.000007694   0.390162753

   25    3.2  1.5 -0.5  -0.000000295   0.000013941   0.000001664   0.000000004   0.319471532   0.000106884  -0.000582063   0.516698826
                        -0.000000004   0.000006540  -0.000000874   0.000000047   0.033906214  -0.000180979  -0.001137079  -0.023942867

   26    4.2  1.5 -0.5  -0.224202533   0.009127433  -0.008922844  -0.005760326   0.005190744  -0.153894348   0.017235893   0.001023106
                        -0.083510064  -0.001061897  -0.001483572  -0.002715877  -0.001419425   0.125609142   0.036161433  -0.000191389

   27    5.2  1.5 -0.5   0.001717076   0.273983246  -0.130127365   0.001806334   0.032346681   0.001496275  -0.000260967   0.005894773
                         0.008414641  -0.434402392  -0.418069701  -0.004315959  -0.197481318  -0.001684979  -0.000385409  -0.031759584

   28    6.2  1.5 -0.5  -0.005496648   0.468974257  -0.370161436  -0.001187417   0.197420427   0.003471161  -0.000538824   0.031756937
                         0.000960511   0.291444909   0.119400062  -0.002736725   0.032394691  -0.003426263  -0.001006071   0.005902397

   29    7.2  1.5 -0.5   0.103172928   0.002355645   0.001043083  -0.000507601  -0.000505309  -0.126007549  -0.033680037  -0.000102294
                        -0.275542688  -0.000923000   0.000672373  -0.009059025   0.000254420  -0.154353803   0.016040183   0.000218719

   30    8.2  1.5 -0.5   0.002681984   0.001597002  -0.005992049   0.181024549  -0.000029972  -0.023212966   0.180904413   0.000003948
                        -0.029444875  -0.001770359  -0.002186273   0.693044131   0.000003909  -0.029206869  -0.083557688  -0.000070896

   31    1.2  1.5 -1.5   0.000000212  -0.000016179  -0.000005641   0.000000001   0.681603462   0.000161336   0.000320900   0.110022638
                        -0.000000088  -0.000006654   0.000001001  -0.000000037  -0.001906431  -0.000158954   0.000652239   0.002021077

   32    2.2  1.5 -1.5  -0.000000567   0.000000026  -0.000000097   0.000003180  -0.000041876   0.053509787  -0.341881192  -0.000014734
                         0.000001087  -0.000000045   0.000000042   0.000009597   0.000285978   0.057840524   0.189219522   0.000182440

   33    3.2  1.5 -1.5  -0.000000096   0.000000070  -0.000000045   0.000009583  -0.001929692   0.057842581   0.189219108  -0.000175114
                         0.000000035  -0.000000030   0.000000075  -0.000003323   0.000011207  -0.053511152   0.341879945   0.000002202

   34    4.2  1.5 -1.5   0.001298721  -0.010529204   0.103399149  -0.004313137  -0.032298167  -0.000875420  -0.000949539   0.200051832
                         0.000165312  -0.005344159  -0.014677205   0.000490276   0.000493447   0.000314667  -0.005361943   0.001488043

   35    5.2  1.5 -1.5   0.016443913  -0.000347260   0.001342699  -0.099575452   0.000351126  -0.029804151   0.164246230  -0.002251363
                        -0.016064094   0.003053436   0.000128082  -0.225804714  -0.000046653  -0.026776286  -0.111829265   0.000254275

   36    6.2  1.5 -1.5   0.038391774  -0.001510443  -0.001278889  -0.209937498   0.000644805  -0.026770412  -0.111847530  -0.004994596
                         0.015472065   0.000466718  -0.001166794   0.095427814  -0.000049559   0.029809215  -0.164172735   0.000425128

   37    7.2  1.5 -1.5  -0.000145667   0.004181471   0.018852565  -0.000241750  -0.000438727   0.000226102   0.000063808  -0.001475010
                         0.000901214  -0.005355491   0.132615639  -0.000242846  -0.029513402   0.000092177   0.000507825   0.200548537

   38    8.2  1.5 -1.5   0.000856627   0.204480714  -0.009541470  -0.000794179   0.000573669   0.000020239   0.000020740  -0.000620832
                         0.009579008  -0.492052640  -0.024543966  -0.001463214   0.200546714   0.000007518   0.000020919   0.029515719


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000969021  -0.000100509   0.000000184   0.000012925  -0.000000245   0.000008109  -0.000003381  -0.000000071
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000099323  -0.000977584   0.000002509  -0.000001344  -0.000001373  -0.000001036   0.000000394  -0.000000867
                         0.000031924  -0.000000708   0.000000600   0.000000387  -0.000002140   0.000000119   0.000000110   0.000000083

    3    3.2  0.5  0.5   0.000009343  -0.000032060  -0.000000011   0.000001229   0.000000188   0.000007105  -0.000001209  -0.000000014
                        -0.000973393  -0.000000002  -0.000000008  -0.000013050   0.000000028  -0.000003974  -0.000003227   0.000000007

    4    1.2  0.5 -0.5   0.000069702  -0.000672047   0.000011374  -0.000000138  -0.000005880  -0.000000216  -0.000000058   0.000002986
                         0.000072408  -0.000698134  -0.000006272   0.000000029  -0.000005449  -0.000000068  -0.000000033   0.000001571

    5    2.2  0.5 -0.5   0.000678458   0.000091883  -0.000001389  -0.000001891   0.000000668  -0.000002491  -0.000000724  -0.000000398
                         0.000703773   0.000049417   0.000000304   0.000001737   0.000000764   0.000000652  -0.000000480  -0.000000088

    6    3.2  0.5 -0.5   0.000022235  -0.000694804   0.000007420   0.000000053  -0.000002615   0.000000056  -0.000000005   0.000002601
                         0.000023095   0.000681810   0.000010842  -0.000000057  -0.000007672   0.000000081  -0.000000009  -0.000002244

    7    1.2  1.5  1.5   0.000000533   0.001537268  -0.000757531  -0.002330710   0.000749103   0.003617067   0.247898136  -0.000054986
                         0.000000446   0.000087635  -0.000034161   0.002136358   0.001415398  -0.001613888   0.175211764  -0.000010716

    8    2.2  1.5  1.5  -0.000034572   0.034822404   0.056509861   0.001611710   0.084785146  -0.002333237  -0.000371700   0.000764361
                        -0.000012969  -0.472344840  -0.337332733   0.001204278  -0.050529634  -0.003350953   0.000785354   0.003417345

    9    3.2  1.5  1.5   0.000012973   0.472342392  -0.331714147  -0.001309247   0.054683394  -0.003289887  -0.000785471   0.001431814
                        -0.000034572   0.034822348  -0.057132773   0.001734428   0.102222749   0.001909578  -0.000704869  -0.000237332

   10    4.2  1.5  1.5  -0.099437959  -0.001868383   0.012424616   0.008423951   0.007484884  -0.249112644   0.002240731  -0.001122335
                        -0.103152332   0.000512477   0.006605733  -0.002187125   0.007067994   0.060722568   0.002585141   0.000056844

   11    5.2  1.5  1.5   0.000946137  -0.011831864  -0.031019431   0.005554159   0.361656465   0.005036326  -0.001230968  -0.000239843
                         0.001327773   0.070679751   0.394542766   0.005126856  -0.160493657   0.003258792   0.001177572   0.000804153

   12    6.2  1.5  1.5   0.002198488  -0.070660608   0.414685958  -0.005212759   0.153488846   0.010154580  -0.001894678  -0.006442721
                         0.002756099  -0.011848928   0.030465330   0.005525560   0.341289513  -0.004564898  -0.001103019   0.001478222

   13    7.2  1.5  1.5  -0.103185557   0.000190042   0.000540310  -0.002437486  -0.000483034   0.060803001  -0.002576151   0.000027036
                         0.099455671  -0.000087822  -0.003348968  -0.008574701  -0.000154793   0.249410267   0.004768462   0.000955019

   14    8.2  1.5  1.5   0.001460178   0.000015477  -0.000386967  -0.004387347  -0.002548742   0.002567273  -0.363044702   0.000021829
                        -0.001359765  -0.000053221   0.000388311  -0.004706067   0.001261173   0.004026429   0.513635841  -0.000137839

   15    1.2  1.5  0.5   0.000592071   0.546895607  -0.009614751   0.003946154  -0.205324564  -0.000655805   0.002129772   0.003361762
                         0.000632819   0.000386414   0.001788778  -0.006107722  -0.309756701   0.000854456   0.001214348  -0.001160841

   16    2.2  1.5  0.5   0.210161924  -0.000047274   0.001046483  -0.003260349  -0.000539075   0.032379314  -0.133797098  -0.000037450
                        -0.174937950  -0.000011863  -0.001530018  -0.008131212   0.000839830   0.186260040   0.223584759   0.000642738

   17    3.2  1.5  0.5   0.174937081  -0.001765824   0.002131277   0.004362723   0.000960386  -0.180199368   0.226766647  -0.000758100
                         0.210161060  -0.000018956   0.001293476   0.000739958   0.002261013   0.029122071   0.137620284  -0.000043407

   18    4.2  1.5  0.5   0.002867211   0.000001228   0.458169426   0.000634402  -0.000469981  -0.005349386   0.001447607   0.412590483
                         0.001716369  -0.000036328   0.112673282  -0.000685045  -0.008561529   0.002719036   0.002078382  -0.051201518

   19    5.2  1.5  0.5   0.102298524  -0.000007422  -0.002706133  -0.002227708   0.000513649   0.028113830  -0.041506617  -0.004927853
                        -0.070273463  -0.000119193  -0.003774630  -0.013307847   0.000823936   0.370559393   0.091567600   0.001218092

   20    6.2  1.5  0.5   0.070229436   0.000006105  -0.007963868   0.011966570  -0.000262232  -0.368228853   0.097194056  -0.011613430
                         0.102294650  -0.000024422   0.000966558  -0.000501369   0.001172216   0.026584755   0.049661473   0.000091677

   21    7.2  1.5  0.5  -0.000333361   0.000001494  -0.111146698  -0.000321014   0.018861309   0.003862611   0.000067014  -0.052073765
                        -0.000112499  -0.001997960   0.451907248  -0.000135675  -0.005430740   0.005516299  -0.000889174  -0.419488840

   22    8.2  1.5  0.5  -0.000095805   0.000101290   0.000203243   0.004224881   0.213702462  -0.000549016  -0.000501507   0.001428602
                         0.000041342  -0.143311643  -0.012965647   0.002728726  -0.141750353  -0.000422659   0.000900719   0.008178394

   23    1.2  1.5 -0.5   0.379560186  -0.000866520  -0.003800134  -0.012281728   0.000118559   0.360992537  -0.003456914   0.002250358
                         0.393736788   0.000012320  -0.002068912   0.003432547  -0.001216916  -0.088020338  -0.003584095  -0.000076662

   24    2.2  1.5 -0.5  -0.000041332  -0.019718971  -0.000622485   0.002928254   0.149355685  -0.000150054  -0.000303024  -0.012613458
                        -0.000025831  -0.272731681  -0.006630152   0.001542331  -0.114422890   0.000912377   0.000674625  -0.260958191

   25    3.2  1.5 -0.5  -0.001238287  -0.272730463  -0.002824259   0.001974360  -0.112923556  -0.002098216   0.000788085   0.264220981
                        -0.001259021   0.019718997   0.001864631  -0.003463615  -0.144639635   0.000908566   0.000359460  -0.014015522

   26    4.2  1.5 -0.5  -0.000025311  -0.003224985  -0.000738584   0.348039589  -0.000931595   0.007233576  -0.338524924   0.002177501
                         0.000026088  -0.000875313  -0.000276241  -0.320157642  -0.002299780  -0.008327803  -0.239203160  -0.001160374

   27    5.2  1.5 -0.5  -0.000091020  -0.020318024  -0.003014401   0.002122829   0.271885214  -0.000835975   0.003707546   0.006059217
                         0.000077316  -0.122435156  -0.009888478   0.005797209  -0.252953274   0.000292136   0.003581341  -0.101618726

   28    6.2  1.5 -0.5  -0.000013361  -0.122401832  -0.008427916  -0.006280063  -0.252488117  -0.000534287   0.010363335   0.107840534
                         0.000021335   0.020347056   0.003651647   0.000314988  -0.270009852   0.000947018   0.005596521   0.002699471

   29    7.2  1.5 -0.5  -0.001438375   0.000312239   0.000218140  -0.314171609   0.010247998  -0.013608603   0.244654913  -0.000369056
                         0.001386701   0.000162145  -0.000334561  -0.341438456  -0.002728101  -0.020755308  -0.346148525   0.000849107

   30    8.2  1.5 -0.5  -0.103177894   0.000036658  -0.001432506   0.006666026  -0.000838762  -0.060612145  -0.005803136  -0.000024683
                         0.099462990   0.000097693   0.002630654   0.013319284  -0.000059795  -0.249063246   0.007267417  -0.000893324

   31    1.2  1.5 -1.5  -0.001129258   0.000000702  -0.002235470   0.000637217  -0.001056789   0.001398254  -0.000055752  -0.301274218
                        -0.001046731   0.000000075  -0.000552380  -0.000377202  -0.002632411  -0.000484916  -0.000017625   0.037410563

   32    2.2  1.5 -1.5   0.316145587  -0.000033319   0.000499696  -0.212101464   0.006623562   0.025977766   0.003114479  -0.000054157
                        -0.352666959  -0.000015913  -0.001093477  -0.269148309  -0.001576342   0.092673627  -0.003642075   0.000836069

   33    3.2  1.5 -1.5  -0.352665210  -0.000015910  -0.001169457   0.262214497   0.001823751   0.111504969   0.001499710   0.000942304
                        -0.316143850   0.000033322  -0.000533913  -0.209600214   0.006185495  -0.039887478   0.001195524  -0.000260368

   34    4.2  1.5 -1.5   0.000926560  -0.143276739   0.006557302  -0.008898412   0.141655732   0.010197989  -0.001134648  -0.002248700
                         0.001701487  -0.000100985  -0.001314294   0.013460541   0.213668296   0.000054377  -0.000681012   0.000966205

   35    5.2  1.5 -1.5  -0.042715314   0.001612740   0.001427020   0.216263985  -0.008928291   0.158673513   0.000236009   0.000513126
                         0.057542455  -0.000239200  -0.004245857   0.327657930  -0.000478479   0.365876079  -0.001316760   0.001389627

   36    6.2  1.5 -1.5   0.057541470   0.003510286  -0.004338854  -0.351571042  -0.004909906   0.341779124  -0.006943636   0.001992929
                         0.042689686  -0.000327527  -0.001400851   0.227211072  -0.013561522  -0.144235882  -0.005912103  -0.000033072

   37    7.2  1.5 -1.5  -0.000068527   0.000090704   0.001223913  -0.003780786  -0.213969434  -0.000537514   0.000536078   0.000273087
                        -0.000197822  -0.143312967   0.006719698  -0.003782127   0.141858672  -0.000275457  -0.000949390   0.006372426

   38    8.2  1.5 -1.5   0.000027609   0.000033032  -0.001160322   0.000586079  -0.002543933  -0.000907190  -0.000050750   0.077520407
                        -0.000048060   0.001994964   0.004535127   0.000185923   0.000175257  -0.002411315   0.000141140   0.624220265


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5  -0.012554786  -0.000384396   0.001478112  -0.007903204  -0.001394829  -0.013536948
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.001399487  -0.003736387   0.014400298   0.000630399  -0.013570641   0.001388982
                        -0.000401348   0.000023379  -0.000003441   0.000177826  -0.000005975   0.000445624

    3    3.2  0.5  0.5  -0.003390036  -0.000122051   0.000471094   0.005543075  -0.000444652   0.000072731
                         0.012250037   0.000000622   0.000001369  -0.005463982   0.000000517  -0.013600027

    4    1.2  0.5 -0.5  -0.000280180   0.009886500  -0.002753957  -0.000550836  -0.009411500   0.000969747
                         0.000222496  -0.007671307  -0.007477166  -0.001378762  -0.009729953   0.001002560

    5    2.2  0.5 -0.5  -0.002737647  -0.001352747   0.000374724  -0.005362431   0.001285984   0.009439204
                         0.002144488   0.000546055   0.000529181  -0.013434354   0.000688541   0.009750000

    6    3.2  0.5 -0.5  -0.000089391   0.010321778  -0.002834130  -0.000176881  -0.009724727   0.000308770
                         0.000070146   0.007358589   0.007308688  -0.000438958   0.009507632   0.000319961

    7    1.2  1.5  1.5   0.268870253   0.000186727  -0.000599127  -0.030340370   0.000519981  -0.000017240
                        -0.210151788   0.000028765  -0.000079191  -0.076263517   0.000029499  -0.000017740

    8    2.2  1.5  1.5  -0.000005160   0.003392195  -0.014235871   0.000015474   0.011735864  -0.000006581
                        -0.000021913  -0.050786159   0.195605966  -0.000007775  -0.159783600  -0.000008891

    9    3.2  1.5  1.5  -0.000840662   0.050780593  -0.195607495   0.000110541   0.159783594   0.000008943
                         0.000692495   0.003392547  -0.014235528   0.000261742   0.011735777  -0.000006524

   10    4.2  1.5  1.5   0.073446538   0.002553356  -0.009992396   0.143655935   0.005503447   0.294420179
                        -0.057416882  -0.000666024   0.002731480   0.359828280  -0.001516630   0.304119301

   11    5.2  1.5  1.5  -0.000707795   0.015849505  -0.063329091  -0.000905428   0.034912670  -0.002796351
                         0.000698280  -0.098848014   0.380507043  -0.004327629  -0.208909403  -0.003922011

   12    6.2  1.5  1.5  -0.001835561   0.098826475  -0.380396808  -0.002670206   0.208849075  -0.006507050
                         0.001301877   0.015870447  -0.063420551  -0.009111092   0.034963440  -0.008121422

   13    7.2  1.5  1.5  -0.054181034  -0.000197101   0.000986619   0.361154530  -0.000562033   0.304230184
                        -0.069157143   0.000176681  -0.000534885  -0.144128267   0.000277964  -0.294485073

   14    8.2  1.5  1.5   0.239418461  -0.000045331   0.000133046   0.081550263  -0.000045753  -0.004289625
                         0.306348257   0.000098220  -0.000243371  -0.032537340   0.000157150   0.004010904

   15    1.2  1.5  0.5  -0.000355210  -0.029414256   0.113269750   0.000292637   0.184936457   0.000206321
                         0.000316459   0.000181950  -0.000026283   0.000833641   0.000080188   0.000219126

   16    2.2  1.5  0.5  -0.162839728   0.000042378  -0.000022195   0.174252050  -0.000016370   0.070912249
                        -0.191410867   0.000015018  -0.000037888  -0.048059038   0.000000009  -0.059279607

   17    3.2  1.5  0.5  -0.100562023   0.000054174  -0.000369794   0.089415248  -0.000601097   0.059306457
                         0.101788563   0.000018397   0.000037237   0.259533790  -0.000006596   0.070936079

   18    4.2  1.5  0.5   0.009618235  -0.385633827  -0.100103060  -0.000254293  -0.000028329  -0.008483633
                        -0.004087049   0.002855962   0.000041220  -0.002552739   0.000106977  -0.005054411

   19    5.2  1.5  0.5   0.285598507   0.004312520   0.001178872   0.079707760   0.000025315  -0.301831865
                         0.261955471   0.000727144  -0.000102834  -0.048210798   0.000336711   0.208277456

   20    6.2  1.5  0.5   0.261748973   0.009476606   0.002485306  -0.048245460  -0.000001976  -0.208194538
                        -0.285568100   0.000835593   0.000122261  -0.079776994   0.000075185  -0.301855229

   21    7.2  1.5  0.5  -0.001113039   0.002812064   0.000130597  -0.000085054  -0.000002689   0.000985748
                         0.000197468   0.387144635   0.094763295   0.000230415   0.005926648   0.000330431

   22    8.2  1.5  0.5  -0.000256755   0.000671946  -0.000067885  -0.000081430  -0.000183738   0.000270122
                        -0.000108019   0.094710538  -0.387092782   0.000070200   0.423539408  -0.000109857

   23    1.2  1.5 -0.5   0.021551462  -0.000459071  -0.000891097   0.042179994  -0.000300940   0.128635090
                        -0.016884589  -0.000027166   0.000037111   0.105670009   0.000004048   0.132872328

   24    2.2  1.5 -0.5  -0.000023191  -0.008202240  -0.020183510  -0.000044502  -0.006692898  -0.000011375
                         0.000036520   0.254340436  -0.175114166  -0.000008602  -0.092182052  -0.000011772

   25    3.2  1.5 -0.5  -0.000026503  -0.137106720  -0.276687577  -0.000102399  -0.092217834  -0.000422655
                         0.000043263  -0.017490669   0.012909425  -0.000358182   0.006690167  -0.000427469

   26    4.2  1.5 -0.5   0.305223869   0.010029090   0.002645510  -0.034532454   0.009531188   0.000057189
                        -0.238536856  -0.002764169  -0.000757028  -0.086533795   0.002583733  -0.000094745

   27    5.2  1.5 -0.5  -0.002943017   0.060620864   0.016334291   0.000301119   0.060143730   0.000259618
                         0.003260994  -0.381014322  -0.098746708   0.001068285   0.361752502  -0.000215901

   28    6.2  1.5 -0.5  -0.006936380   0.380831643   0.098823242   0.000955105   0.361711631   0.000052666
                         0.006573766   0.060725408   0.016342152   0.002111009  -0.060219575  -0.000053692

   29    7.2  1.5 -0.5   0.239449834  -0.000990638  -0.000202677   0.081584148  -0.000922843   0.004258026
                         0.306305485   0.000534123   0.000173891  -0.032458074  -0.000478796  -0.004122405

   30    8.2  1.5 -0.5   0.054052080  -0.000135726  -0.000037992  -0.361023416  -0.000108839   0.304299367
                         0.069132330   0.000242294   0.000105993   0.144130636  -0.000270533  -0.294595526

   31    1.2  1.5 -1.5   0.000120469  -0.339718872  -0.088184919   0.000299399  -0.000024724  -0.000382717
                        -0.000131218   0.002494049   0.000122808   0.000529000  -0.000000059  -0.000353238

   32    2.2  1.5 -1.5   0.031854073  -0.000010757  -0.000001963  -0.177163547  -0.000010965   0.106688434
                         0.035065163  -0.000020617   0.000016899   0.086163996   0.000001452  -0.119524266

   33    3.2  1.5 -1.5   0.035060556   0.001083765   0.000303572   0.086164207   0.000001529  -0.119524202
                        -0.031850874   0.000021049   0.000006346   0.177165005   0.000010963  -0.106688495

   34    4.2  1.5 -1.5   0.002244008  -0.100158195   0.385711068   0.001176476   0.423286114  -0.002736129
                        -0.000991365   0.000717681  -0.000065129   0.010337766   0.000182893  -0.005010126

   35    5.2  1.5 -1.5   0.068741204   0.001064014  -0.004336942  -0.331351855  -0.004763173   0.125884544
                         0.062899356   0.000093194   0.000766443   0.200854691   0.000716826  -0.170336907

   36    6.2  1.5 -1.5   0.062872017   0.002416525  -0.009409662   0.200898916  -0.010361431  -0.170331451
                        -0.068744211  -0.000135901   0.000898490   0.331215080   0.000969307  -0.125805878

   37    7.2  1.5 -1.5  -0.000246173  -0.000587292   0.000120261   0.000132548  -0.000152446   0.000190958
                        -0.000017726  -0.094812850   0.387214035  -0.001118434   0.423410929   0.000597224

   38    8.2  1.5 -1.5  -0.000092390   0.002864759   0.000045344   0.000177002  -0.000099423  -0.000081145
                        -0.000046448   0.387157568   0.094761170  -0.000217406  -0.005871822   0.000142143


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.629%  19.129%  46.840%   0.044%   0.348%  32.967%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  61.636%   0.128%   0.615%   4.264%  32.930%   0.383%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.067%  18.374%  48.197%   0.004%   0.035%  33.280%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5  19.129%   0.629%   0.044%  46.840%  32.967%   0.348%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.128%  61.636%   4.265%   0.615%   0.383%  32.930%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5  18.374%   0.067%   0.004%  48.197%  33.280%   0.035%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.001%   0.010%   0.000%   0.000%   0.000%   0.010%   0.000%   0.010%   5.390%
    8    2.2  1.5  1.5   0.003%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   4.126%   1.658%   0.009%
    9    3.2  1.5  1.5   0.003%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   3.573%   1.936%   0.007%
   10    4.2  1.5  1.5   0.000%   0.004%   0.000%   0.000%   0.000%   0.009%   1.973%   0.003%   0.000%   0.001%
   11    5.2  1.5  1.5   0.004%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   4.338%   0.287%   0.001%
   12    6.2  1.5  1.5   0.004%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   4.542%   0.180%   0.001%
   13    7.2  1.5  1.5   0.000%   0.004%   0.000%   0.000%   0.000%   0.010%   1.976%   0.000%   0.000%   0.000%
   14    8.2  1.5  1.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.002%   0.000%   0.004%   2.075%
   15    1.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%  46.137%   0.032%   0.000%
   16    2.2  1.5  0.5   0.000%   0.003%   0.006%   0.000%   0.000%   0.001%  12.100%   0.000%   0.008%   3.767%
   17    3.2  1.5  0.5   0.000%   0.007%   0.002%   0.000%   0.000%   0.001%  10.988%   0.001%   0.009%   4.325%
   18    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.004%   0.007%   7.785%   0.024%
   19    5.2  1.5  0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.007%   4.149%   0.000%   0.001%   0.041%
   20    6.2  1.5  0.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.007%   4.074%   0.000%   0.003%   0.080%
   21    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.002%   2.829%   0.007%
   22    8.2  1.5  0.5   0.004%   0.000%   0.000%   0.000%   0.010%   0.000%   0.000%   1.972%   0.004%   0.000%
   23    1.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.003%  46.145%   0.000%   0.000%   0.021%
   24    2.2  1.5 -0.5   0.003%   0.000%   0.000%   0.006%   0.001%   0.000%   0.000%  12.290%  21.143%   0.069%
   25    3.2  1.5 -0.5   0.007%   0.000%   0.000%   0.002%   0.001%   0.000%   0.001%  10.806%  22.717%   0.062%
   26    4.2  1.5 -0.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.006%   0.004%   0.027%  10.795%
   27    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.007%   0.000%   0.000%   4.160%   0.264%   0.003%
   28    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.004%   0.007%   0.000%   0.000%   4.061%   0.372%   0.003%
   29    7.2  1.5 -0.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.001%   0.000%   0.008%   1.865%
   30    8.2  1.5 -0.5   0.000%   0.004%   0.000%   0.000%   0.000%   0.010%   1.974%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.001%   0.000%   0.000%   0.010%   0.000%   0.000%   0.000%   0.018%  29.241%   0.078%
   32    2.2  1.5 -1.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.002%   4.217%   0.000%   0.104%  31.140%
   33    3.2  1.5 -1.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.002%   3.492%   0.000%   0.094%  32.085%
   34    4.2  1.5 -1.5   0.004%   0.000%   0.000%   0.000%   0.009%   0.000%   0.003%   1.973%   0.001%   0.003%
   35    5.2  1.5 -1.5   0.000%   0.004%   0.000%   0.000%   0.000%   0.002%   4.308%   0.000%   0.013%   4.235%
   36    6.2  1.5 -1.5   0.000%   0.004%   0.000%   0.000%   0.000%   0.002%   4.575%   0.001%   0.014%   3.880%
   37    7.2  1.5 -1.5   0.004%   0.000%   0.000%   0.000%   0.010%   0.000%   0.000%   1.977%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.004%  11.256%   0.033%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5  25.370%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5   0.003%  36.528%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.2  1.5  1.5   0.002%  36.806%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.2  1.5  1.5   0.000%   0.003%  49.463%   0.841%   0.000%   0.004%   0.015%   0.000%   0.002%   1.092%
   11    5.2  1.5  1.5   0.000%   4.756%   0.018%   0.001%   0.000%  28.117%   0.001%   0.053%   6.098%   0.000%
   12    6.2  1.5  1.5   0.000%   4.654%   0.005%   0.005%   0.000%  28.804%   0.000%   0.171%   5.310%   0.000%
   13    7.2  1.5  1.5   0.001%   0.000%  48.757%   0.829%   0.002%   0.039%   0.004%   0.000%   0.000%   1.792%
   14    8.2  1.5  1.5   9.767%   0.001%   0.002%   0.000%   0.102%   0.001%  28.393%   0.009%   0.000%   0.069%
   15    1.2  1.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    2.2  1.5  0.5  18.751%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    3.2  1.5  0.5  19.304%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    4.2  1.5  0.5   0.000%   4.029%   0.016%   0.003%   0.000%  22.821%   0.008%   5.723%   0.004%   0.008%
   19    5.2  1.5  0.5   0.254%   0.001%   0.020%   0.000%   0.132%   0.002%  26.377%   0.007%   0.002%  19.172%
   20    6.2  1.5  0.5   0.289%   0.002%   0.002%   0.000%   0.076%   0.007%  30.488%   0.003%   0.001%  15.127%
   21    7.2  1.5  0.5   0.001%   9.012%   0.016%   0.000%   0.000%  19.892%   0.001%   8.658%   0.008%   0.000%
   22    8.2  1.5  0.5   0.000%   0.001%   0.001%   0.022%   0.000%   0.001%   0.001%   0.087%  51.307%   0.004%
   23    1.2  1.5 -0.5   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    2.2  1.5 -0.5   0.001%   1.126%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    3.2  1.5 -0.5   0.001%   1.041%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    4.2  1.5 -0.5   1.016%   0.000%   0.003%   0.017%  22.819%   0.000%   5.724%   0.008%   0.008%   0.004%
   27    5.2  1.5 -0.5   0.000%   0.019%   0.000%   0.019%   0.002%   0.133%   0.007%  26.377%  19.172%   0.002%
   28    6.2  1.5 -0.5   0.001%   0.013%   0.000%   0.002%   0.007%   0.076%   0.003%  30.488%  15.128%   0.001%
   29    7.2  1.5 -0.5   9.976%   0.001%   0.000%   0.016%  19.893%   0.000%   8.657%   0.001%   0.000%   0.008%
   30    8.2  1.5 -0.5   0.003%   0.000%   0.021%   0.001%   0.001%   0.000%   0.087%   0.001%   0.004%  51.308%
   31    1.2  1.5 -1.5   0.001%   1.444%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   6.863%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   6.653%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.001%   0.000%   0.841%  49.465%   0.004%   0.000%   0.000%   0.014%   1.091%   0.002%
   35    5.2  1.5 -1.5   0.826%   0.000%   0.001%   0.018%  28.125%   0.000%   0.053%   0.001%   0.000%   6.090%
   36    6.2  1.5 -1.5   0.909%   0.000%   0.005%   0.005%  28.796%   0.000%   0.171%   0.000%   0.000%   5.318%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.829%  48.754%   0.040%   0.002%   0.000%   0.005%   1.794%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.556%   0.000%   0.002%   0.001%   0.102%   0.009%  28.393%   0.069%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%  45.807%   1.863%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%
    8    2.2  1.5  1.5   0.404%   0.000%   0.000%  15.486%   0.000%  22.432%  11.699%   0.000%   0.974%   0.002%
    9    3.2  1.5  1.5   0.404%   0.000%   0.000%  15.486%   0.000%  22.432%  11.330%   0.000%   1.344%   0.001%
   10    4.2  1.5  1.5   0.000%   0.160%   3.946%   0.003%   2.053%   0.000%   0.020%   0.008%   0.011%   6.574%
   11    5.2  1.5  1.5   0.104%   0.000%   0.001%   4.004%   0.000%   0.514%  15.663%   0.006%  15.655%   0.004%
   12    6.2  1.5  1.5   0.104%   0.000%   0.002%   4.002%   0.001%   0.513%  17.289%   0.006%  14.004%   0.012%
   13    7.2  1.5  1.5   0.000%   0.139%   3.970%   0.000%   2.054%   0.000%   0.001%   0.008%   0.000%   6.590%
   14    8.2  1.5  1.5   0.000%   3.970%   0.139%   0.000%   0.000%   0.000%   0.000%   0.004%   0.001%   0.002%
   15    1.2  1.5  0.5   0.135%   0.000%   0.000%   5.162%   0.000%  29.909%   0.010%   0.005%  13.811%   0.000%
   16    2.2  1.5  0.5   0.000%  23.121%  13.956%   0.000%   7.477%   0.000%   0.000%   0.008%   0.000%   3.574%
   17    3.2  1.5  0.5   0.000%   9.073%  28.003%   0.000%   7.477%   0.000%   0.001%   0.002%   0.001%   3.332%
   18    4.2  1.5  0.5   4.002%   0.003%   0.000%   0.104%   0.001%   0.000%  22.261%   0.000%   0.007%   0.004%
   19    5.2  1.5  0.5   0.001%   3.948%   0.161%   0.000%   1.540%   0.000%   0.002%   0.018%   0.000%  13.810%
   20    6.2  1.5  0.5   0.002%   3.946%   0.160%   0.000%   1.540%   0.000%   0.006%   0.014%   0.000%  13.630%
   21    7.2  1.5  0.5   4.022%   0.000%   0.000%   0.087%   0.000%   0.000%  21.657%   0.000%   0.039%   0.005%
   22    8.2  1.5  0.5   0.087%   0.000%   0.000%   4.023%   0.000%   2.054%   0.017%   0.003%   6.576%   0.000%
   23    1.2  1.5 -0.5   0.000%   0.207%   5.090%   0.000%  29.909%   0.000%   0.002%   0.016%   0.000%  13.806%
   24    2.2  1.5 -0.5  21.728%   0.000%   0.000%  15.349%   0.000%   7.477%   0.004%   0.001%   3.540%   0.000%
   25    3.2  1.5 -0.5  10.321%   0.000%   0.000%  26.755%   0.000%   7.477%   0.001%   0.002%   3.367%   0.001%
   26    4.2  1.5 -0.5   0.003%   3.946%   0.160%   0.000%   0.000%   0.001%   0.000%  22.363%   0.001%   0.012%
   27    5.2  1.5 -0.5   4.005%   0.001%   0.000%   0.104%   0.000%   1.540%   0.011%   0.004%  13.791%   0.000%
   28    6.2  1.5 -0.5   4.002%   0.002%   0.000%   0.104%   0.000%   1.540%   0.008%   0.004%  13.666%   0.000%
   29    7.2  1.5 -0.5   0.000%   3.970%   0.139%   0.000%   0.000%   0.000%   0.000%  21.528%   0.011%   0.062%
   30    8.2  1.5 -0.5   0.000%   0.139%   3.971%   0.000%   2.054%   0.000%   0.001%   0.022%   0.000%   6.571%
   31    1.2  1.5 -1.5  46.459%   0.000%   0.000%   1.211%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.621%  15.269%   0.000%  22.432%   0.000%   0.000%  11.743%   0.005%   0.926%
   33    3.2  1.5 -1.5   0.000%   0.621%  15.269%   0.000%  22.432%   0.000%   0.000%  11.269%   0.004%   1.402%
   34    4.2  1.5 -1.5   0.104%   0.000%   0.003%   4.002%   0.000%   2.053%   0.004%   0.026%   6.572%   0.010%
   35    5.2  1.5 -1.5   0.000%   0.161%   3.948%   0.001%   0.514%   0.000%   0.002%  15.413%   0.008%  15.904%
   36    6.2  1.5 -1.5   0.000%   0.161%   3.946%   0.003%   0.513%   0.001%   0.002%  17.523%   0.021%  13.762%
   37    7.2  1.5 -1.5   0.087%   0.000%   0.000%   4.022%   0.000%   2.054%   0.005%   0.003%   6.591%   0.000%
   38    8.2  1.5 -1.5   4.022%   0.000%   0.000%   0.087%   0.000%   0.000%   0.002%   0.000%   0.001%   0.001%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.016%   0.000%   0.000%   0.006%   0.000%   0.018%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.021%   0.000%   0.018%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.016%   0.000%   0.000%   0.006%   0.000%   0.018%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.016%   0.006%   0.000%   0.018%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.021%   0.000%   0.018%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.016%   0.006%   0.000%   0.018%   0.000%
    7    1.2  1.5  1.5   9.215%   0.000%  11.645%   0.000%   0.000%   0.674%   0.000%   0.000%
    8    2.2  1.5  1.5   0.000%   0.001%   0.000%   0.259%   3.846%   0.000%   2.567%   0.000%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.259%   3.846%   0.000%   2.567%   0.000%
   10    4.2  1.5  1.5   0.001%   0.000%   0.869%   0.001%   0.011%  15.011%   0.003%  17.917%
   11    5.2  1.5  1.5   0.000%   0.000%   0.000%   1.002%  14.880%   0.002%   4.486%   0.002%
   12    6.2  1.5  1.5   0.000%   0.004%   0.001%   1.002%  14.872%   0.009%   4.484%   0.011%
   13    7.2  1.5  1.5   0.003%   0.000%   0.772%   0.000%   0.000%  15.121%   0.000%  17.928%
   14    8.2  1.5  1.5  39.562%   0.000%  15.117%   0.000%   0.000%   0.771%   0.000%   0.003%
   15    1.2  1.5  0.5   0.001%   0.001%   0.000%   0.087%   1.283%   0.000%   3.420%   0.000%
   16    2.2  1.5  0.5   6.789%   0.000%   6.315%   0.000%   0.000%   3.267%   0.000%   0.854%
   17    3.2  1.5  0.5   7.036%   0.000%   2.047%   0.000%   0.000%   7.535%   0.000%   0.855%
   18    4.2  1.5  0.5   0.001%  17.285%   0.011%  14.872%   1.002%   0.001%   0.000%   0.010%
   19    5.2  1.5  0.5   1.011%   0.003%  15.019%   0.002%   0.000%   0.868%   0.000%  13.448%
   20    6.2  1.5  0.5   1.191%   0.013%  15.006%   0.009%   0.001%   0.869%   0.000%  13.446%
   21    7.2  1.5  0.5   0.000%  17.868%   0.000%  14.989%   0.898%   0.000%   0.004%   0.000%
   22    8.2  1.5  0.5   0.000%   0.007%   0.000%   0.897%  14.984%   0.000%  17.939%   0.000%
   23    1.2  1.5 -0.5   0.002%   0.001%   0.075%   0.000%   0.000%   1.295%   0.000%   3.420%
   24    2.2  1.5 -0.5   0.000%   6.826%   0.000%   6.476%   3.107%   0.000%   0.854%   0.000%
   25    3.2  1.5 -0.5   0.000%   7.001%   0.000%   1.910%   7.672%   0.000%   0.855%   0.000%
   26    4.2  1.5 -0.5  17.182%   0.001%  15.006%   0.011%   0.001%   0.868%   0.010%   0.000%
   27    5.2  1.5 -0.5   0.003%   1.036%   0.002%  14.885%   1.002%   0.000%  13.448%   0.000%
   28    6.2  1.5 -0.5   0.014%   1.164%   0.009%  14.872%   1.003%   0.001%  13.446%   0.000%
   29    7.2  1.5 -0.5  17.967%   0.000%  15.116%   0.000%   0.000%   0.771%   0.000%   0.004%
   30    8.2  1.5 -0.5   0.009%   0.000%   0.770%   0.000%   0.000%  15.111%   0.000%  17.938%
   31    1.2  1.5 -1.5   0.000%   9.217%   0.000%  11.542%   0.778%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.002%   0.000%   0.224%   0.000%   0.000%   3.881%   0.000%   2.567%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.224%   0.000%   0.000%   3.881%   0.000%   2.567%
   34    4.2  1.5 -1.5   0.000%   0.001%   0.001%   1.003%  14.877%   0.011%  17.917%   0.003%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.868%   0.000%   0.002%  15.014%   0.002%   4.486%
   36    6.2  1.5 -1.5   0.008%   0.000%   0.868%   0.001%   0.009%  15.006%   0.011%   4.484%
   37    7.2  1.5 -1.5   0.000%   0.004%   0.000%   0.899%  14.993%   0.000%  17.928%   0.000%
   38    8.2  1.5 -1.5   0.000%  39.566%   0.000%  14.990%   0.898%   0.000%   0.003%   0.000%


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
              1      21       40.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     2254.68       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    385377.07 313269.86  57439.96  14663.33      2.50      0.19      1.10
 REAL TIME  *    387784.97 SEC
 DISK USED  *         2.24 GB (local),        6.76 GB (total)
 SF USED    *        17.59 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -295.211711894423

              CI              CI           MULTI         RHF-SCF
   -295.16307202   -295.45086404   -294.38320627   -294.74654372
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
