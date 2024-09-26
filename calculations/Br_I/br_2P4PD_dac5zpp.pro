
 Working directory              : /wrk/irikura/molpro.CnrE4wTqLt/
 Global scratch directory       : /wrk/irikura/molpro.CnrE4wTqLt/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.CnrE4wTqLt/

 id        : nistki

 Nodes     nprocs
 comp-63      3
 Distribution of processes:   nprocs(total)=    4   nprocs(compute)=    3   nprocs(helper)=    1
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Br SO-CI
                                                                                 ! active space (7/4)
                                                                                 ! additional diffuse spdf functions
 memory,3000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Br};
 
 basis={
 ecp,br,ECP10MDF;
 spdfghi,br,aug-cc-pwCV5Z-PP;C; spdf,1,even,nprim=1,ratio=3.0;
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
 Commands initialized (847), CPU time= 0.00 sec, 718 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 08:33:13 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (16 PROC) 64 bit mpp version                                                           DATE: 25-Jul-24          TIME: 14:37:57  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
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

 Library entry Br   ECP ECP10MDF                 selected for group  1
 Library entry BR     S AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Br S diffuse               selected for group 1    nprim= 1    centre=  0.013    ratio= 3.000    dratio= 1.000
 Library entry BR     P AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Br P diffuse               selected for group 1    nprim= 1    centre=  0.009    ratio= 3.000    dratio= 1.000
 Library entry BR     D AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Br D diffuse               selected for group 1    nprim= 1    centre=  0.022    ratio= 3.000    dratio= 1.000
 Library entry BR     F AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Br F diffuse               selected for group 1    nprim= 1    centre=  0.043    ratio= 3.000    dratio= 1.000
 Library entry BR     G AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry BR     H AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry BR     I AUG-CC-PWCV5Z-PP     selected for orbital group  1


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

   1  BR     25.00    0.000000000    0.000000000    0.000000000

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

         1 0.358E-04 0.144E-03 0.508E-03 0.113E-02 0.113E-02 0.113E-02 0.113E-02 0.113E-02
         2 0.224E-04 0.224E-04 0.224E-04 0.513E-03 0.513E-03 0.513E-03 0.324E-02 0.324E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     684.458 MB (compressed) written to integral file ( 13.2%)

     Node minimum: 208.404 MB, node maximum: 241.172 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:  131758329.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   9  SEGMENT LENGTH:   15997680      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ   646821870. AND WROTE    21840764. INTEGRALS IN     67 RECORDS. CPU TIME:     2.50 SEC, REAL TIME:     2.76 SEC
 SORT2 READ    68060996. AND WROTE   395255076. INTEGRALS IN   2760 RECORDS. CPU TIME:     1.34 SEC, REAL TIME:     1.54 SEC

 Node minimum:   131745055.  Node maximum:   131758329. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        19.24     19.09
 REAL TIME  *        21.50 SEC
 DISK USED  *        31.11 MB (local),        1.44 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -415.54383629    -415.54383629     0.00D+00     0.46D-01     0     0       0.58      1.15    start
   2     -415.57625381      -0.03241752     0.34D-02     0.22D-02     1     0       0.59      1.74    diag
   3     -415.57869957      -0.00244576     0.21D-02     0.50D-03     2     0       0.59      2.33    diag
   4     -415.57906520      -0.00036562     0.46D-03     0.25D-03     3     0       0.59      2.92    diag
   5     -415.57917031      -0.00010512     0.12D-03     0.17D-03     4     0       0.59      3.51    diag
   6     -415.57917880      -0.00000849     0.35D-04     0.56D-04     5     0       0.59      4.10    diag
   7     -415.57917924      -0.00000043     0.52D-05     0.15D-04     6     0       0.59      4.69    diag
   8     -415.57917925      -0.00000001     0.11D-05     0.31D-05     7     0       0.59      5.28    fixocc
   9     -415.57917925      -0.00000000     0.29D-06     0.47D-06     8     0       0.60      5.88    diag
  10     -415.57917925      -0.00000000     0.94D-07     0.14D-06     0     0       0.59      6.47    diag/orth

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -415.579179251566
  RHF One-electron energy            -738.024426993346
  RHF Two-electron energy             322.445247741781
  RHF Kinetic energy                  295.794774269800
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.404957813327

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -9.52315     1  1  s    0.99989
    2.1     2.00000    -2.82153     1  1  d1+  0.85804    1  1  d2+ -0.49825
    3.1     2.00000    -2.82153     1  1  d2-  0.51019    1  1  d1-  0.85982
    4.1     2.00000    -2.82153     1  1  d2- -0.42364    1  1  d1+  0.38116    1  1  d2+  0.77881    1  1  d1-  0.26152
    5.1     2.00000    -2.82153     1  1  d2-  0.73991    1  1  d1+  0.34391    1  1  d2+  0.38026    1  1  d1- -0.43528
    6.1     2.00000    -2.82153     1  1  d0   0.99980
    7.1     2.00000    -0.71242     1  1  s   -0.39934    1  5  s    0.50026    1  6  s    0.51371
    1.2     2.00000    -7.27046     1  1  px   1.00004
    2.2     2.00000    -7.27046     1  1  pz   1.00002
    3.2     2.00000    -7.27046     1  1  py   1.00002
    4.2     2.00000    -0.13748     1  1  px  -0.26502    1  4  px   0.26547    1  5  px   0.39269    1  6  px   0.33350
    5.2     2.00000    -0.13748     1  5  py   0.32750    1  6  py   0.27814
    6.2     2.00000    -0.13748     1  5  pz   0.32750    1  6  pz   0.27814


 HOMO      6.2    -0.137484 =      -3.7411eV
 LUMO      7.2     0.099593 =       2.7101eV
 LUMO-HOMO         0.237076 =       6.4512eV

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
 CPU TIMES  *        25.71      6.47     19.09
 REAL TIME  *        28.32 SEC
 DISK USED  *        34.43 MB (local),        1.45 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =         3.00000000                                  
 SETTING NQUAR          =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     264 (  127  137)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.439D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.382D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.581D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.611D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.172D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 6 5 3 2 1 1 2 3   5 4 6 1 2 3 5 4 6 1   2 5 3 4 61310 812 7  11 91415 2 4 6 5 3 1
                                       13 71011 9 8121415 6   4 2 5 3 1 9111310 8  12 71415 4 6 5 3 2 1   91112 813141510 7 4
                                        6 2 3 5262324192217  21161820282725 112 8  1114 915 71310 4 5 3   6 2 1 5 3 4 6 211 9
                                        712 814151310 1 5 4   6 3 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.728D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.647D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.651D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.398D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.398D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.125D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.125D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 2 3 3 2 1 3   2 110 8 6 7 9 4 5 3   2 1 7 9 4 5 6 810 3   2 1 810 9 7 6 5 4 3
                                        2 110 8 6 9 7 4 521  13182016141517191211   810 9 7 5 4 6 2 1 3  14161820132117111215
                                       19 4 5 810 7 9 6 1 2   3182019141615172113  1211 7 9 5 4 810 6 2   1 3 7 9 6 5 410 819
                                       21181320111214161517   2 1 3 6 9 7 5 4 810   2 3 1 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  2279  ( 30 closed/active, 1173 closed/virtual, 0 active/active, 1076 active/virtual )
 Total number of variables:    14427
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   15   65    0   -415.12140132    -415.28849262   -0.16709130    0.45319864 0.00541832 0.00222249  0.15E+01      4.80
   2    8   33    0   -415.24915987    -415.26143266   -0.01227280    0.35337517 0.00026228 0.00070858  0.52E+00      9.18
   3    9   37    0   -415.26149248    -415.26149453   -0.00000205    0.00311958 0.00000484 0.00000736  0.14E-01     13.63
   4    5   19    0   -415.26149453    -415.26149453   -0.00000000    0.00000065 0.00000000 0.00000012  0.14E-04     17.29

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.95E-08)
                       Final energy:   -415.26149453
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -415.481267705304
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.13519316
 One electron energy                          -730.73002832
 Two electron energy                           315.24876061
 Virial ratio                                    2.40301213
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -415.481267705304
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.13519316
 One electron energy                          -730.73002832
 Two electron energy                           315.24876061
 Virial ratio                                    2.40301213
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -415.481267705304
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.13519316
 One electron energy                          -730.73002832
 Two electron energy                           315.24876061
 Virial ratio                                    2.40301213
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -415.183216335949
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.28173990
 One electron energy                          -722.99148300
 Two electron energy                           307.80826666
 Virial ratio                                    2.40605788
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -415.183216335949
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.28173990
 One electron energy                          -722.99148300
 Two electron energy                           307.80826666
 Virial ratio                                    2.40605788
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -415.183216335948
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.28173990
 One electron energy                          -722.99148300
 Two electron energy                           307.80826666
 Virial ratio                                    2.40605788
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -415.176597544968
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.29098630
 One electron energy                          -723.02418534
 Two electron energy                           307.84758779
 Virial ratio                                    2.40599143
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -415.176597544968
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.29098630
 One electron energy                          -723.02418534
 Two electron energy                           307.84758779
 Virial ratio                                    2.40599143
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -415.176597544968
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.29098630
 One electron energy                          -723.02418534
 Two electron energy                           307.84758779
 Virial ratio                                    2.40599143
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -415.176597544967
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.29098630
 One electron energy                          -723.02418534
 Two electron energy                           307.84758779
 Virial ratio                                    2.40599143
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -415.176597544967
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.29098630
 One electron energy                          -723.02418534
 Two electron energy                           307.84758779
 Virial ratio                                    2.40599143
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999767849682
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.823636118402
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.176596031915
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.027094730508
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.972907219578
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999998049915
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.580349710874
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     3.684826823521
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     2.721517166147
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     0.999708198213
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     1.013598101297
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999780158920
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.176413707015
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.823806134064
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.972907505130
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.027093007038
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999487832
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.676207122367
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.364027976729
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     2.972418322374
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000788708184
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.986557870399
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000451991397
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999950174582
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999597834020
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999997764363
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999773384
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.000002462254
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     0.743443166790
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     0.951145199782
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     0.306064511511
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     3.999503093634
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     3.999844028336
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     1.999999999999
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     1.999999999999
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     1.999999999999
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000032
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000032
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000032
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000032
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000032
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 1 2   3 5 6 4 2 3 5 4 6 1   2 3 5 6 41310 81112   9 71415 1 2 4 6 3 5
                                       1310 711 9 8121415 6   4 2 3 5 111 91310 8  12 71415 6 4 3 5 2 1   911151413 81012 7 2
                                        6 4 3 5232624192216  17212018272825 1 7 8  121415 9111310 3 5 6   4 2 1 5 3 6 4 2 711
                                        9 81214151310 1 2 5   3 4 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 3   1 2 810 6 5 4 7 9 3   1 2 9 7 4 5 6 810 3   1 2 810 9 7 6 4 5 3
                                        1 210 8 6 9 7 4 521  13182016141915171112  10 8 9 7 5 4 6 2 1 3  14161820132111121715
                                       19 5 4 810 7 9 6 1 2   3182019141615171112  2113 7 9 5 4 810 6 1   2 3 7 9 6 5 4 81021
                                       19182013111214161517   1 2 3 6 7 9 5 4 810   2 1 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -10.04552     1  1  s    0.98915
    2.1     2.00000    -3.34850     1  1  d2-  1.00028
    3.1     2.00000    -3.34850     1  1  d2+  1.00028
    4.1     2.00000    -3.34850     1  1  d1-  1.00028
    5.1     2.00000    -3.34850     1  1  d1+  1.00028
    6.1     2.00000    -3.34850     1  1  d0   1.00028
    7.1     1.99787    -1.17723     1  1  s   -0.44525    1  5  s    0.57343    1  6  s    0.54612
    8.1     0.00245     0.58966     1  1  s    0.50014    1  3  s    0.50894    1  4  s   -0.86746    1  5  s   -1.56574
                                    1  6  s    1.13913    1  7  s    0.61866
    1.2     2.00000    -7.79693     1  1  px   0.99972
    2.2     2.00000    -7.79693     1  1  py   0.99972
    3.2     2.00000    -7.79693     1  1  pz   0.99972
    4.2     1.42211    -0.48956     1  1  pz  -0.29998    1  4  pz   0.31363    1  5  pz   0.48476    1  6  pz   0.30417
    5.2     1.42211    -0.48956     1  1  px  -0.29998    1  4  px   0.31363    1  5  px   0.48476    1  6  px   0.30417
    6.2     1.42211    -0.48956     1  1  py  -0.29998    1  4  py   0.31363    1  5  py   0.48476    1  6  py   0.30417
    7.2     0.24445     0.02749     1 12  pz   0.72106    1 13  pz   0.34427
    8.2     0.24445     0.02749     1 12  px   0.72106    1 13  px   0.34427
    9.2     0.24445     0.02749     1 12  py   0.72106    1 13  py   0.34427
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 a22000      0.99122324      0.00699834     -0.01988256
 20 22a000     -0.01470023      0.89975486     -0.41616451
 20 2a2000      0.01510617      0.41636525      0.89965526
 20 aa20b0      0.06047389      0.00042696     -0.00121302
 20 a2a00b      0.06047389      0.00042696     -0.00121302
 20 a2ab00      0.00089685     -0.05489346      0.02538993
 20 2aa0b0      0.00089685     -0.05489346      0.02538993
 20 aa2b00     -0.00092162     -0.02540217     -0.05488739
 20 2aa00b      0.00092162      0.02540217      0.05488739
 
 Energy:     -415.48126771   -415.48126771   -415.48126771
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 aa200a      0.00000000     -0.00000000      0.00000000      0.20668211      0.08619057     -0.33721043      0.00777898
 20 aa20a0     -0.00105521     -0.00033596      0.70572916      0.00275872      0.00563205     -0.00528707      0.70554692
 20 a2a00a     -0.00105521     -0.00033596      0.70572916     -0.00275872     -0.00563205      0.00528707     -0.70554692
 20 a2a0a0     -0.00000000      0.00000000      0.00000000     -0.20609548     -0.09446110      0.34169108      0.01586938
 20 a2aa00      0.11616174      0.69610421      0.00050506      0.59931704     -0.20824115      0.30894728      0.00159271
 20 2aa0a0      0.11616174      0.69610421      0.00050506     -0.59931704      0.20824115     -0.30894728     -0.00159271
 20 aa2a00      0.69610360     -0.11616235      0.00098552      0.10499891      0.65582994      0.23841256     -0.00380732
 20 2aa00a     -0.69610359      0.11616235     -0.00098552      0.10499891      0.65582995      0.23841256     -0.00380732
 20 2aaa00     -0.00000000      0.00000000     -0.00000000     -0.41277759     -0.18065167      0.67890151      0.00809039
 
 Energy:     -415.18321634   -415.18321634   -415.18321634   -415.17659754   -415.17659754   -415.17659754   -415.17659754

 State:              8
 20 aa200a      0.70716723
 20 aa20a0     -0.01177501
 20 a2a00a      0.01177501
 20 a2a0a0      0.70398885
 20 a2aa00     -0.00247725
 20 2aa0a0      0.00247725
 20 aa2a00      0.00310686
 20 2aa00a      0.00310686
 20 2aaa00     -0.00317838
 
 Energy:     -415.17659754
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21      101.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.66       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        41.62     15.91      6.47     19.09
 REAL TIME  *        48.64 SEC
 DISK USED  *       104.67 MB (local),        1.65 GB (total)
 SF USED    *       191.06 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -415.4812677   2.0
    -415.4812677   2.0
    -415.4812677   2.0
    -415.1832163   2.0
    -415.1832163   2.0
    -415.1832163   2.0
    -415.1765975   6.0
    -415.1765975   6.0
    -415.1765975   6.0
    -415.1765975   6.0
    -415.1765975   6.0
                                                  


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
 Number of external orbitals:     264 ( 127 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -415.48126771
     2      -415.48126771
     3      -415.48126771

 Number of blocks in overlap matrix:   383   Smallest eigenvalue:  0.19D-06
 Number of N-2 electron functions:     867
 Number of N-1 electron functions:  501108

 Number of internal configurations:               139300
 Number of singly external configurations:      66148996
 Number of doubly external configurations:      15113415
 Total number of contracted configurations:     81401711
 Total number of uncontracted configurations: 7222743224

 Diagonal Coupling coefficients finished.               Storage:  64529615 words, CPU-Time:    198.06 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   7654350 words, CPU-time:      1.34 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -415.48126771    -0.00000000    -1.22037794  0.41D-01  0.68D-01   237.80
    1     2     2     1.00000000     0.00000000  -415.48126771    -0.00000000    -1.22040051  0.41D-01  0.68D-01   237.80
    1     3     3     1.00000000     0.00000000  -415.48126771     0.00000000    -1.22038468  0.41D-01  0.68D-01   237.80
    2     1     1     1.07975344    -1.04269574  -416.52396345    -1.04269574    -0.02777508  0.54D-02  0.99D-03  4135.35
    2     2     2     1.07975988    -1.04268858  -416.52395629    -1.04268858    -0.02778234  0.54D-02  0.99D-03  4135.35
    2     3     3     1.07975693    -1.04268847  -416.52395617    -1.04268847    -0.02777967  0.54D-02  0.99D-03  4135.35
    3     1     1     1.06555303    -1.06878060  -416.55004830    -0.02608485    -0.00061221  0.64D-04  0.53D-04  8033.32
    3     2     2     1.06555516    -1.06878030  -416.55004800    -0.02609172    -0.00061242  0.64D-04  0.53D-04  8033.32
    3     3     3     1.06555558    -1.06878029  -416.55004799    -0.02609182    -0.00061241  0.64D-04  0.53D-04  8033.32
    4     1     1     1.06537501    -1.06942895  -416.55069666    -0.00064836    -0.00002966  0.11D-05  0.39D-05 11929.23
    4     2     2     1.06537520    -1.06942892  -416.55069662    -0.00064862    -0.00002969  0.11D-05  0.39D-05 11929.23
    4     3     3     1.06537529    -1.06942891  -416.55069662    -0.00064863    -0.00002969  0.11D-05  0.39D-05 11929.23
    5     1     1     1.06567727    -1.06946332  -416.55073103    -0.00003437    -0.00000179  0.63D-07  0.24D-06 15822.29
    5     2     2     1.06567712    -1.06946332  -416.55073102    -0.00003440    -0.00000179  0.63D-07  0.24D-06 15822.29
    5     3     3     1.06567707    -1.06946332  -416.55073102    -0.00003440    -0.00000179  0.63D-07  0.24D-06 15822.29
    6     1     1     1.06572650    -1.06946547  -416.55073318    -0.00000215    -0.00000013  0.75D-08  0.14D-07 19707.88
    6     2     2     1.06572649    -1.06946547  -416.55073318    -0.00000215    -0.00000013  0.75D-08  0.14D-07 19707.88
    6     3     3     1.06572650    -1.06946547  -416.55073318    -0.00000215    -0.00000013  0.75D-08  0.14D-07 19707.88
    7     1     1     1.06573422    -1.06946561  -416.55073332    -0.00000014    -0.00000001  0.43D-09  0.11D-08 23418.57
    7     2     2     1.06573421    -1.06946561  -416.55073332    -0.00000014    -0.00000001  0.43D-09  0.11D-08 23418.57
    7     3     3     1.06573422    -1.06946561  -416.55073332    -0.00000014    -0.00000001  0.43D-09  0.11D-08 23418.57


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%  36.2%
 P   0.2%  53.5%   6.0%

 Initialization:   0.9%
 Other:            2.5%

 Total CPU:    23418.6 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222202222/2000          -0.0203158   0.9473346   0.1678140
 2222222022222/000           0.7196600   0.1263622  -0.6262101
 22222220222/22000           0.6385091  -0.1122802   0.7111374
 222222202222//00\          -0.0013405   0.0625078   0.0110728
 22222220222//2\00           0.0013405  -0.0625078  -0.0110728

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.642613   -0.020446    0.724285
 2          -0.113002    0.953423    0.127174
 3           0.715708    0.168893   -0.630235

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968482    0.000000   -0.000000
 2           0.000000    0.968482    0.000000
 3          -0.000000    0.000000    0.968482


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.72428516 (fixed)   0.96864426 (relaxed)   0.96848238 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038608   -0.00050492   -0.23843429
 Singles      0.01242728   -0.06442499   -0.07289161
 Pairs        0.05333231   -0.75124784   -0.75813972
 Total        1.06614568   -0.81617775   -1.06946561
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48126771
 Nuclear energy                         0.00000000
 Kinetic energy                       296.41962140
 One electron energy                 -729.31258119
 Two electron energy                  312.76184787
 Virial quotient                       -1.40527382
 Correlation energy                    -1.06946561
 !MRCI STATE 1.2 Energy              -416.550733319816

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.62147385 (Davidson, fixed reference)
 Cluster corrected energies          -416.62109279 (Davidson, relaxed reference)
 Cluster corrected energies          -416.62147385 (Davidson, rotated reference)

 Cluster corrected energies          -416.61933602 (Pople, fixed reference)
 Cluster corrected energies          -416.61894534 (Pople, relaxed reference)
 Cluster corrected energies          -416.61933602 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95342299 (fixed)   0.96864426 (relaxed)   0.96848238 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038608   -0.00050492   -0.81934853
 Singles      0.01242728   -0.06442499   -0.07289161
 Pairs        0.05333231   -0.13190863   -0.17722547
 Total        1.06614567   -0.19683855   -1.06946561
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48126771
 Nuclear energy                         0.00000000
 Kinetic energy                       296.41962143
 One electron energy                 -729.31258143
 Two electron energy                  312.76184811
 Virial quotient                       -1.40527382
 Correlation energy                    -1.06946561
 !MRCI STATE 2.2 Energy              -416.550733319595

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.62147384 (Davidson, fixed reference)
 Cluster corrected energies          -416.62109279 (Davidson, relaxed reference)
 Cluster corrected energies          -416.62147384 (Davidson, rotated reference)

 Cluster corrected energies          -416.61933602 (Pople, fixed reference)
 Cluster corrected energies          -416.61894534 (Pople, relaxed reference)
 Cluster corrected energies          -416.61933602 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.71570778 (fixed)   0.96864426 (relaxed)   0.96848238 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038608   -0.00050492   -1.55621300
 Singles      0.01242728   -0.06442499   -0.07289161
 Pairs        0.05333231    0.65369624    0.55963900
 Total        1.06614568    0.58876633   -1.06946561
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48126771
 Nuclear energy                         0.00000000
 Kinetic energy                       296.41962144
 One electron energy                 -729.31258130
 Two electron energy                  312.76184798
 Virial quotient                       -1.40527382
 Correlation energy                    -1.06946561
 !MRCI STATE 3.2 Energy              -416.550733319363

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.62147385 (Davidson, fixed reference)
 Cluster corrected energies          -416.62109279 (Davidson, relaxed reference)
 Cluster corrected energies          -416.62147385 (Davidson, rotated reference)

 Cluster corrected energies          -416.61933602 (Pople, fixed reference)
 Cluster corrected energies          -416.61894534 (Pople, relaxed reference)
 Cluster corrected energies          -416.61933602 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21      101.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1876.07       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     23851.60  23809.98     15.91      6.47     19.09
 REAL TIME  *     24042.14 SEC
 DISK USED  *         1.93 GB (local),        7.14 GB (total)
 SF USED    *        20.18 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -416.62147385  AU                              
 SETTING HLSDIAG(2)     =      -416.62147384  AU                              
 SETTING HLSDIAG(3)     =      -416.62147385  AU                              


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
 Number of external orbitals:     264 ( 127 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -415.18321634
     2      -415.18321634
     3      -415.18321634
     4      -415.17659754
     5      -415.17659754
     6      -415.17659754
     7      -415.17659754
     8      -415.17659754

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2175D-06

 Number of blocks in overlap matrix:   761   Smallest eigenvalue:  0.22D-06
 Number of N-2 electron functions:    2252
 Number of N-1 electron functions:  453552

 Number of internal configurations:               114452
 Number of singly external configurations:      59873984
 Number of doubly external configurations:      39247580
 Total number of contracted configurations:     99236016
 Total number of uncontracted configurations: 6768387864

 Diagonal Coupling coefficients finished.               Storage:  86432503 words, CPU-Time:   1005.38 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  10666458 words, CPU-time:      3.33 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -415.18321634    -0.00000000    -1.17612651  0.32D-01  0.59D-01  1105.40
    1     2     2     1.00000000     0.00000000  -415.18321634    -0.00000000    -1.17633605  0.32D-01  0.59D-01  1105.40
    1     3     3     1.00000000     0.00000000  -415.18321634     0.00000000    -1.17641770  0.32D-01  0.59D-01  1105.40
    1     4     4     1.00000000     0.00000000  -415.17659754    -0.00000000    -1.17743786  0.34D-01  0.59D-01  1105.40
    1     5     5     1.00000000     0.00000000  -415.17659754     0.00000000    -1.17754114  0.34D-01  0.59D-01  1105.40
    1     6     6     1.00000000     0.00000000  -415.17659754    -0.00000000    -1.17761449  0.34D-01  0.59D-01  1105.40
    1     7     7     1.00000000     0.00000000  -415.17659754     0.00000000    -1.17778379  0.34D-01  0.59D-01  1105.40
    1     8     8     1.00000000     0.00000000  -415.17659754     0.00000000    -1.18173034  0.34D-01  0.61D-01  1105.40
    2     1     1     1.06840345    -1.02092444  -416.20414078    -1.02092444    -0.02097613  0.23D-02  0.95D-03 17886.41
    2     2     2     1.06848999    -1.02089155  -416.20410789    -1.02089155    -0.02101972  0.24D-02  0.95D-03 17886.41
    2     3     3     1.06852907    -1.02088353  -416.20409987    -1.02088353    -0.02104152  0.24D-02  0.94D-03 17886.41
    2     4     4     1.06953584    -1.02145423  -416.19805178    -1.02145423    -0.02135457  0.27D-02  0.93D-03 17886.41
    2     5     5     1.06947822    -1.02119496  -416.19779251    -1.02119496    -0.02154695  0.27D-02  0.95D-03 17886.41
    2     6     6     1.06956823    -1.02114645  -416.19774399    -1.02114645    -0.02159748  0.28D-02  0.94D-03 17886.41
    2     7     7     1.06953606    -1.02114558  -416.19774313    -1.02114558    -0.02158809  0.28D-02  0.94D-03 17886.41
    2     8     8     1.07082661    -1.02080215  -416.19739969    -1.02080215    -0.02212667  0.27D-02  0.11D-02 17886.41
    3     1     1     1.05904773    -1.04080808  -416.22402441    -0.01988364    -0.00051237  0.33D-04  0.51D-04 34733.56
    3     2     2     1.05903623    -1.04080273  -416.22401907    -0.01991118    -0.00051520  0.33D-04  0.52D-04 34733.56
    3     3     3     1.05902018    -1.04080069  -416.22401703    -0.01991716    -0.00051696  0.33D-04  0.52D-04 34733.56
    3     4     4     1.05961986    -1.04175745  -416.21835500    -0.02030322    -0.00049967  0.41D-04  0.48D-04 34733.56
    3     5     5     1.05946995    -1.04172499  -416.21832253    -0.02053003    -0.00051842  0.43D-04  0.49D-04 34733.56
    3     6     6     1.05936020    -1.04167833  -416.21827588    -0.02053189    -0.00054471  0.43D-04  0.54D-04 34733.56
    3     7     7     1.05936778    -1.04167737  -416.21827492    -0.02053179    -0.00054483  0.43D-04  0.53D-04 34733.56
    3     8     8     1.05935655    -1.04167215  -416.21826970    -0.02087000    -0.00054760  0.43D-04  0.54D-04 34733.56
    4     1     1     1.05921695    -1.04139500  -416.22461133    -0.00058692    -0.00004974  0.21D-05  0.60D-05 51680.83
    4     2     2     1.05920787    -1.04139429  -416.22461062    -0.00059155    -0.00005043  0.22D-05  0.61D-05 51680.83
    4     3     3     1.05921145    -1.04139404  -416.22461037    -0.00059334    -0.00005042  0.22D-05  0.61D-05 51680.83
    4     4     4     1.05959779    -1.04231582  -416.21891336    -0.00055836    -0.00004359  0.19D-05  0.56D-05 51680.83
    4     5     5     1.05956582    -1.04231214  -416.21890968    -0.00058715    -0.00004682  0.20D-05  0.58D-05 51680.83
    4     6     6     1.05951934    -1.04230445  -416.21890200    -0.00062612    -0.00005238  0.23D-05  0.64D-05 51680.83
    4     7     7     1.05951849    -1.04230380  -416.21890135    -0.00062643    -0.00005268  0.23D-05  0.64D-05 51680.83
    4     8     8     1.05951352    -1.04230288  -416.21890043    -0.00063073    -0.00005333  0.23D-05  0.64D-05 51680.83
    5     1     1     1.05974050    -1.04145844  -416.22467478    -0.00006344    -0.00000475  0.24D-06  0.48D-06 68604.29
    5     2     2     1.05974098    -1.04145843  -416.22467477    -0.00006415    -0.00000474  0.24D-06  0.48D-06 68604.29
    5     3     3     1.05974104    -1.04145836  -416.22467470    -0.00006433    -0.00000480  0.24D-06  0.48D-06 68604.29
    5     4     4     1.06006001    -1.04237143  -416.21896897    -0.00005561    -0.00000440  0.23D-06  0.47D-06 68604.29
    5     5     5     1.06006084    -1.04237131  -416.21896885    -0.00005917    -0.00000445  0.23D-06  0.47D-06 68604.29
    5     6     6     1.06005830    -1.04237098  -416.21896852    -0.00006653    -0.00000495  0.26D-06  0.50D-06 68604.29
    5     7     7     1.06005871    -1.04237087  -416.21896841    -0.00006707    -0.00000501  0.27D-06  0.50D-06 68604.29
    5     8     8     1.06005869    -1.04237080  -416.21896834    -0.00006792    -0.00000507  0.27D-06  0.51D-06 68604.29
    6     1     1     1.05979017    -1.04146419  -416.22468053    -0.00000575    -0.00000041  0.17D-07  0.46D-07 85504.50
    6     2     2     1.05979019    -1.04146417  -416.22468051    -0.00000574    -0.00000041  0.17D-07  0.46D-07 85504.50
    6     3     3     1.05979005    -1.04146417  -416.22468050    -0.00000580    -0.00000042  0.17D-07  0.46D-07 85504.50
    6     4     4     1.06011163    -1.04237696  -416.21897451    -0.00000553    -0.00000043  0.21D-07  0.48D-07 85504.50
    6     5     5     1.06011144    -1.04237692  -416.21897446    -0.00000561    -0.00000043  0.21D-07  0.48D-07 85504.50
    6     6     6     1.06011127    -1.04237692  -416.21897446    -0.00000594    -0.00000044  0.22D-07  0.49D-07 85504.50
    6     7     7     1.06011413    -1.04237685  -416.21897439    -0.00000598    -0.00000041  0.20D-07  0.46D-07 85504.50
    6     8     8     1.06011540    -1.04237675  -416.21897430    -0.00000595    -0.00000040  0.20D-07  0.46D-07 85504.50
    7     1     1     1.05979477    -1.04146468  -416.22468101    -0.00000049    -0.00000005  0.23D-08  0.61D-08102414.68
    7     2     2     1.05979482    -1.04146466  -416.22468099    -0.00000049    -0.00000005  0.23D-08  0.60D-08102414.68
    7     3     3     1.05979470    -1.04146466  -416.22468099    -0.00000049    -0.00000005  0.23D-08  0.60D-08102414.68
    7     4     4     1.06011765    -1.04237747  -416.21897502    -0.00000051    -0.00000005  0.26D-08  0.63D-08102414.68
    7     5     5     1.06011737    -1.04237743  -416.21897498    -0.00000051    -0.00000005  0.26D-08  0.63D-08102414.68
    7     6     6     1.06011747    -1.04237743  -416.21897498    -0.00000052    -0.00000005  0.26D-08  0.63D-08102414.68
    7     7     7     1.06011861    -1.04237734  -416.21897488    -0.00000049    -0.00000005  0.25D-08  0.62D-08102414.68
    7     8     8     1.06011937    -1.04237723  -416.21897478    -0.00000048    -0.00000005  0.24D-08  0.61D-08102414.68


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%  21.4%
 P   0.1%  57.7%  14.9%

 Initialization:   1.0%
 Other:            4.5%

 Total CPU:   102414.7 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222//200/           0.0000000  -0.0000000  -0.0000000   0.0003079  -0.0004205   0.0000503   0.0244027   0.7907354
 22222220222/2/0/0          -0.0000000  -0.0000000   0.0000000   0.0006700  -0.0008511  -0.0001369   0.6969985   0.3742338
 222222202222//0/0           0.6852602   0.0017776   0.0030024  -0.6851220  -0.0011836   0.0003167   0.0005229   0.0002500
 22222220222/2//00           0.6852599   0.0017776   0.0030024   0.6851229   0.0011837  -0.0003167  -0.0005229  -0.0002500
 22222220222/2/00/          -0.0014032   0.6802820  -0.0824960  -0.0001809  -0.0775539  -0.6807219  -0.0002332   0.0000093
 222222202222//00/           0.0031945  -0.0824889  -0.6802773  -0.0012113   0.6807201  -0.0775536   0.0006303   0.0003479
 22222220222//20/0          -0.0014032   0.6802854  -0.0824965   0.0001809   0.0775535   0.6807185   0.0002332  -0.0000093
 22222220222//2/00          -0.0031946   0.0824892   0.6802799  -0.0012113   0.6807177  -0.0775533   0.0006303   0.0003480
 222222202222///00          -0.0000000  -0.0000000   0.0000000   0.0003621  -0.0004306  -0.0001872   0.6725953  -0.4165019

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971273   -0.004528   -0.001989   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2           0.002519    0.116918    0.964220   -0.000000    0.000000    0.000002   -0.000000   -0.000000
 3           0.004256    0.964213   -0.116928   -0.000000    0.000002   -0.000000    0.000000   -0.000000
 4           0.000001    0.000000    0.000000    0.971136   -0.001717    0.000256    0.000731    0.000378
 5           0.000000   -0.000002   -0.000000    0.001678    0.964894    0.109930   -0.000908   -0.000516
 6          -0.000000    0.000000   -0.000002   -0.000449   -0.109929    0.964896   -0.000230    0.000062
 7           0.000000   -0.000000    0.000000   -0.000741    0.000893    0.000331    0.970673    0.030005
 8          -0.000000    0.000000    0.000000   -0.000354    0.000493   -0.000013   -0.030006    0.970673

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971286    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.971286    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.971286    0.000000    0.000000   -0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.971138   -0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.971138   -0.000000    0.000000    0.000000
 6          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.971138    0.000000   -0.000000
 7          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.971137   -0.000000
 8          -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.971137


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97127342 (fixed)   0.97135114 (relaxed)   0.97128601 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019334   -0.00060130   -0.91492168
 Singles      0.01379717   -0.07184934   -0.08133402
 Pairs        0.04600916   -0.00000001   -0.04520897
 Total        1.05999967   -0.07245065   -1.04146468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.18321634
 Nuclear energy                         0.00000000
 Kinetic energy                       296.00463101
 One electron energy                 -722.39111616
 Two electron energy                  306.16643514
 Virial quotient                       -1.40614246
 Correlation energy                    -1.04146468
 !MRCI STATE 1.2 Energy              -416.224681014573

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.28716856 (Davidson, fixed reference)
 Cluster corrected energies          -416.28702053 (Davidson, relaxed reference)
 Cluster corrected energies          -416.28716856 (Davidson, rotated reference)

 Cluster corrected energies          -416.28440088 (Pople, fixed reference)
 Cluster corrected energies          -416.28425222 (Pople, relaxed reference)
 Cluster corrected energies          -416.28440088 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96422003 (fixed)   0.97135112 (relaxed)   0.97128599 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019334   -0.00060130   -0.91492172
 Singles      0.01379716   -0.07184925   -0.08133392
 Pairs        0.04600922    0.00000000   -0.04520901
 Total        1.05999972   -0.07245054   -1.04146466
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.18321634
 Nuclear energy                         0.00000000
 Kinetic energy                       296.00462964
 One electron energy                 -722.39111836
 Two electron energy                  306.16643737
 Virial quotient                       -1.40614247
 Correlation energy                    -1.04146466
 !MRCI STATE 2.2 Energy              -416.224680992950

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.28716858 (Davidson, fixed reference)
 Cluster corrected energies          -416.28702055 (Davidson, relaxed reference)
 Cluster corrected energies          -416.28716858 (Davidson, rotated reference)

 Cluster corrected energies          -416.28440090 (Pople, fixed reference)
 Cluster corrected energies          -416.28425225 (Pople, relaxed reference)
 Cluster corrected energies          -416.28440090 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96421274 (fixed)   0.97135117 (relaxed)   0.97128605 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019334   -0.00060130   -0.91492183
 Singles      0.01379714   -0.07184925   -0.08133393
 Pairs        0.04600912    0.00000001   -0.04520890
 Total        1.05999960   -0.07245054   -1.04146466
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.18321634
 Nuclear energy                         0.00000000
 Kinetic energy                       296.00463613
 One electron energy                 -722.39112279
 Two electron energy                  306.16644179
 Virial quotient                       -1.40614244
 Correlation energy                    -1.04146466
 !MRCI STATE 3.2 Energy              -416.224680991673

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.28716845 (Davidson, fixed reference)
 Cluster corrected energies          -416.28702043 (Davidson, relaxed reference)
 Cluster corrected energies          -416.28716845 (Davidson, rotated reference)

 Cluster corrected energies          -416.28440077 (Pople, fixed reference)
 Cluster corrected energies          -416.28425212 (Pople, relaxed reference)
 Cluster corrected energies          -416.28440077 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.97113582 (fixed)   0.97120248 (relaxed)   0.97113772 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019411   -0.00060847   -0.91467528
 Singles      0.01401691   -0.07235082   -0.08200976
 Pairs        0.04611241   -0.00037736   -0.04569243
 Total        1.06032343   -0.07333665   -1.04237747
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17659754
 Nuclear energy                         0.00000000
 Kinetic energy                       296.00899509
 One electron energy                 -722.40346859
 Two electron energy                  306.18449357
 Virial quotient                       -1.40610246
 Correlation energy                    -1.04237747
 !MRCI STATE 4.2 Energy              -416.218975019742

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.28185480 (Davidson, fixed reference)
 Cluster corrected energies          -416.28170740 (Davidson, relaxed reference)
 Cluster corrected energies          -416.28185480 (Davidson, rotated reference)

 Cluster corrected energies          -416.27908627 (Pople, fixed reference)
 Cluster corrected energies          -416.27893816 (Pople, relaxed reference)
 Cluster corrected energies          -416.27908627 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.96489394 (fixed)   0.97120261 (relaxed)   0.97113785 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019411   -0.00060847   -0.91551742
 Singles      0.01401687   -0.07235078   -0.08200968
 Pairs        0.04611217    0.00051533   -0.04485033
 Total        1.06032315   -0.07244392   -1.04237743
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17659754
 Nuclear energy                         0.00000000
 Kinetic energy                       296.00900450
 One electron energy                 -722.40347724
 Two electron energy                  306.18450227
 Virial quotient                       -1.40610241
 Correlation energy                    -1.04237743
 !MRCI STATE 5.2 Energy              -416.218974978399

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.28185446 (Davidson, fixed reference)
 Cluster corrected energies          -416.28170707 (Davidson, relaxed reference)
 Cluster corrected energies          -416.28185446 (Davidson, rotated reference)

 Cluster corrected energies          -416.27908593 (Pople, fixed reference)
 Cluster corrected energies          -416.27893783 (Pople, relaxed reference)
 Cluster corrected energies          -416.27908593 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.96489582 (fixed)   0.97120256 (relaxed)   0.97113780 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019411   -0.00060847   -0.91497322
 Singles      0.01401687   -0.07235075   -0.08200966
 Pairs        0.04611227   -0.00006164   -0.04539455
 Total        1.06032325   -0.07302085   -1.04237743
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17659754
 Nuclear energy                         0.00000000
 Kinetic energy                       296.00899757
 One electron energy                 -722.40347348
 Two electron energy                  306.18449850
 Virial quotient                       -1.40610244
 Correlation energy                    -1.04237743
 !MRCI STATE 6.2 Energy              -416.218974977634

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.28185457 (Davidson, fixed reference)
 Cluster corrected energies          -416.28170718 (Davidson, relaxed reference)
 Cluster corrected energies          -416.28185457 (Davidson, rotated reference)

 Cluster corrected energies          -416.27908604 (Pople, fixed reference)
 Cluster corrected energies          -416.27893794 (Pople, relaxed reference)
 Cluster corrected energies          -416.27908604 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.97067288 (fixed)   0.97120204 (relaxed)   0.97113728 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019411   -0.00060845   -0.88678245
 Singles      0.01401680   -0.07235057   -0.08200947
 Pairs        0.04611348   -0.02995204   -0.07358542
 Total        1.06032439   -0.10291106   -1.04237734
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17659754
 Nuclear energy                         0.00000000
 Kinetic energy                       296.00895179
 One electron energy                 -722.40344282
 Two electron energy                  306.18446794
 Virial quotient                       -1.40610266
 Correlation energy                    -1.04237734
 !MRCI STATE 7.2 Energy              -416.218974880050

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.28185566 (Davidson, fixed reference)
 Cluster corrected energies          -416.28170826 (Davidson, relaxed reference)
 Cluster corrected energies          -416.28185566 (Davidson, rotated reference)

 Cluster corrected energies          -416.27908713 (Pople, fixed reference)
 Cluster corrected energies          -416.27893902 (Pople, relaxed reference)
 Cluster corrected energies          -416.27908713 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97067307 (fixed)   0.97120169 (relaxed)   0.97113693 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019411   -0.00060845   -0.00120136
 Singles      0.01401690   -0.07235068   -0.08200931
 Pairs        0.04611414   -0.96895505   -0.95916656
 Total        1.06032515   -1.04191419   -1.04237723
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17659754
 Nuclear energy                         0.00000000
 Kinetic energy                       296.00895063
 One electron energy                 -722.40344426
 Two electron energy                  306.18446949
 Virial quotient                       -1.40610267
 Correlation energy                    -1.04237723
 !MRCI STATE 8.2 Energy              -416.218974775891

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.28185634 (Davidson, fixed reference)
 Cluster corrected energies          -416.28170894 (Davidson, relaxed reference)
 Cluster corrected energies          -416.28185634 (Davidson, rotated reference)

 Cluster corrected energies          -416.27908782 (Pople, fixed reference)
 Cluster corrected energies          -416.27893971 (Pople, relaxed reference)
 Cluster corrected energies          -416.27908782 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21      101.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     7956.21       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    133347.41 109495.81  23809.98     15.91      6.47     19.09
 REAL TIME  *    135632.48 SEC
 DISK USED  *         7.87 GB (local),       24.96 GB (total)
 SF USED    *        62.27 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -416.28716856  AU                              
 SETTING HLSDIAG(5)     =      -416.28716858  AU                              
 SETTING HLSDIAG(6)     =      -416.28716845  AU                              
 SETTING HLSDIAG(7)     =      -416.28185480  AU                              
 SETTING HLSDIAG(8)     =      -416.28185446  AU                              
 SETTING HLSDIAG(9)     =      -416.28185457  AU                              
 SETTING HLSDIAG(10)    =      -416.28185566  AU                              
 SETTING HLSDIAG(11)    =      -416.28185634  AU                              


         HLSDIAG
    -416.6214738
    -416.6214738
    -416.6214738
    -416.2871686
    -416.2871686
    -416.2871685
    -416.2818548
    -416.2818545
    -416.2818546
    -416.2818557
    -416.2818563
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -416.550733   -416.550733   -416.550733
 Replaced energies:   -416.621474   -416.621474   -416.621474

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:   -416.224681   -416.224681   -416.224681   -416.218975   -416.218975   -416.218975   -416.218975   -416.218975
 Replaced energies:   -416.287169   -416.287169   -416.287168   -416.281855   -416.281854   -416.281855   -416.281856   -416.281856



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -416.62147385

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00     822.61     165.99      -0.73      14.16     159.33      -0.22
                           -0.00    -934.18    -147.50       0.00    -220.45    1244.45     159.49     180.51     -21.14     173.61

    2   2.2  0.5  0.5       0.00       0.00       0.00    -822.61      -0.00    -945.37      -0.36     233.79     -56.67       0.14
                          934.18      -0.00    -838.77     220.45       0.00      26.69     -28.18      31.55      -3.96     -30.29

    3   3.2  0.5  0.5       0.00       0.00       0.00    -165.99     945.37      -0.00      -0.92      63.45     171.67      -0.41
                          147.50     838.77      -0.00   -1244.45     -26.69      -0.00     178.37    -156.25      19.78     193.51

    4   1.2  0.5 -0.5      -0.00    -822.61    -165.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -220.45    1244.45       0.00     934.18     147.50       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5     822.61      -0.00     945.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          220.45      -0.00      26.69    -934.18       0.00     838.77       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5     165.99    -945.37      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1244.45     -26.69       0.00    -147.50    -838.77       0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5      -0.73      -0.36      -0.92       0.00       0.00       0.00   73371.53       0.00       0.00       0.00
                         -159.49      28.18    -178.37      -0.00      -0.00      -0.00      -0.00     -79.07    -652.06      -2.09

    8   2.2  1.5  1.5      14.16     233.79      63.45       0.00       0.00       0.00       0.00   73371.52       0.00       0.00
                         -180.51     -31.55     156.25      -0.00      -0.00      -0.00      79.07       0.00      -1.34      87.47

    9   3.2  1.5  1.5     159.33     -56.67     171.67       0.00       0.00       0.00       0.00       0.00   73371.55       0.00
                           21.14       3.96     -19.78      -0.00      -0.00      -0.00     652.06       1.34       0.00     718.20

   10   4.2  1.5  1.5      -0.22       0.14      -0.41       0.00       0.00       0.00       0.00       0.00       0.00   74537.77
                         -173.61      30.29    -193.51      -0.00      -0.00      -0.00       2.09     -87.47    -718.20       0.00

   11   5.2  1.5  1.5     171.84      -0.99     197.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           22.01       4.29     -19.70      -0.00      -0.00      -0.00     718.85       2.17       1.85     652.58

   12   6.2  1.5  1.5     -25.18     261.34      23.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          195.97      34.43    -170.36      -0.00      -0.00      -0.00     -81.90       0.02      -0.05     -73.40

   13   7.2  1.5  1.5       7.14       1.29      -5.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.86    -263.91     -46.66      -0.00      -0.00      -0.00       2.12    -705.04      86.06       0.42

   14   8.2  1.5  1.5     227.59      39.93    -197.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.10    -141.90     -25.06      -0.00      -0.00      -0.00      -0.53     436.66     -52.69       0.04

   15   1.2  1.5  0.5       0.00       0.00       0.00      -0.42      -0.21      -0.53      -0.00       1.66      -0.98       0.19
                            4.89    -273.94     -47.65     -92.08      16.27    -102.98      -0.00    -376.46      45.65       0.74

   16   2.2  1.5  0.5       0.00       0.00       0.00       8.17     134.98      36.63      -1.66      -0.00     379.22       0.75
                           25.23       3.72     -22.07    -104.22     -18.22      90.21     376.46      -0.00       1.77    -414.63

   17   3.2  1.5  0.5       0.00       0.00       0.00      91.99     -32.72      99.11       0.98    -379.22       0.00       0.02
                          207.97      35.31    -181.16      12.20       2.28     -11.42     -45.65      -1.77      -0.00      50.69

   18   4.2  1.5  0.5       0.00       0.00       0.00      -0.13       0.08      -0.23      -0.19      -0.75      -0.02      -0.00
                           -6.08     297.60      52.23    -100.23      17.49    -111.72      -0.74     414.63     -50.69       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00      99.21      -0.57     114.05      -0.37     406.32     -96.90      -0.89
                         -226.03     -39.22     197.01      12.71       2.48     -11.37      47.28       0.90       0.64     -42.89

   20   6.2  1.5  0.5       0.00       0.00       0.00     -14.54     150.88      13.72       2.00     -96.90    -406.32      -0.83
                           25.82       4.38     -22.38     113.15      19.88     -98.36     415.02       0.89       1.92    -376.71

   21   7.2  1.5  0.5       0.00       0.00       0.00       4.12       0.74      -3.40     -14.88       0.33      -0.25     757.92
                         -198.48      34.60    -220.69       3.38    -152.37     -26.94       2.12     -51.47    -421.82       0.51

   22   8.2  1.5  0.5       0.00       0.00       0.00     131.40      23.05    -114.24    -482.10      -1.04      -2.13     -23.39
                          122.63     -21.71     136.78       1.79     -81.92     -14.47       1.06     -27.62    -226.49      -1.18

   23   1.2  1.5 -0.5      -0.42      -0.21      -0.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           92.08     -16.27     102.98       4.89    -273.94     -47.65      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5       8.17     134.98      36.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          104.22      18.22     -90.21      25.23       3.72     -22.07      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5      91.99     -32.72      99.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.20      -2.28      11.42     207.97      35.31    -181.16      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5      -0.13       0.08      -0.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          100.23     -17.49     111.72      -6.08     297.60      52.23      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5      99.21      -0.57     114.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.71      -2.48      11.37    -226.03     -39.22     197.01      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5     -14.54     150.88      13.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -113.15     -19.88      98.36      25.82       4.38     -22.38      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5       4.12       0.74      -3.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.38     152.37      26.94    -198.48      34.60    -220.69      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5     131.40      23.05    -114.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.79      81.92      14.47     122.63     -21.71     136.78      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00      -0.73      -0.36      -0.92       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     159.49     -28.18     178.37      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00      14.16     233.79      63.45       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     180.51      31.55    -156.25      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00     159.33     -56.67     171.67       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -21.14      -3.96      19.78      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00      -0.22       0.14      -0.41       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     173.61     -30.29     193.51      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00     171.84      -0.99     197.54       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -22.01      -4.29      19.70      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00     -25.18     261.34      23.77       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -195.97     -34.43     170.36      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       7.14       1.29      -5.89       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -5.86     263.91      46.66      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00     227.59      39.93    -197.86       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -3.10     141.90      25.06      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5     171.84     -25.18       7.14     227.59       0.00       0.00       0.00       0.00       0.00       0.00
                          -22.01    -195.97      -5.86      -3.10      -4.89     -25.23    -207.97       6.08     226.03     -25.82

    2   2.2  0.5  0.5      -0.99     261.34       1.29      39.93       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.29     -34.43     263.91     141.90     273.94      -3.72     -35.31    -297.60      39.22      -4.38

    3   3.2  0.5  0.5     197.54      23.77      -5.89    -197.86       0.00       0.00       0.00       0.00       0.00       0.00
                           19.70     170.36      46.66      25.06      47.65      22.07     181.16     -52.23    -197.01      22.38

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.42       8.17      91.99      -0.13      99.21     -14.54
                            0.00       0.00       0.00       0.00      92.08     104.22     -12.20     100.23     -12.71    -113.15

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.21     134.98     -32.72       0.08      -0.57     150.88
                            0.00       0.00       0.00       0.00     -16.27      18.22      -2.28     -17.49      -2.48     -19.88

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.53      36.63      99.11      -0.23     114.05      13.72
                            0.00       0.00       0.00       0.00     102.98     -90.21      11.42     111.72      11.37      98.36

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00      -1.66       0.98      -0.19      -0.37       2.00
                         -718.85      81.90      -2.12       0.53       0.00    -376.46      45.65       0.74     -47.28    -415.02

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00       1.66      -0.00    -379.22      -0.75     406.32     -96.90
                           -2.17      -0.02     705.04    -436.66     376.46       0.00       1.77    -414.63      -0.90      -0.89

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.98     379.22       0.00      -0.02     -96.90    -406.32
                           -1.85       0.05     -86.06      52.69     -45.65      -1.77       0.00      50.69      -0.64      -1.92

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.19       0.75       0.02      -0.00      -0.89      -0.83
                         -652.58      73.40      -0.42      -0.04      -0.74     414.63     -50.69      -0.00      42.89     376.71

   11   5.2  1.5  1.5   74537.84       0.00       0.00       0.00       0.37    -406.33      96.90       0.89      -0.00     379.14
                            0.00       1.03      77.77     126.16      47.28       0.90       0.64     -42.89      -0.00       0.54

   12   6.2  1.5  1.5       0.00   74537.81       0.00       0.00      -2.00      96.90     406.32       0.83    -379.14       0.00
                           -1.03       0.00     687.07    1109.47     415.03       0.89       1.92    -376.71      -0.54      -0.00

   13   7.2  1.5  1.5       0.00       0.00   74537.58       0.00      14.88      -0.33       0.25    -757.92      -1.40       0.71
                          -77.77    -687.07       0.00       0.39       2.12     -51.47    -421.83       0.51    -356.43      40.32

   14   8.2  1.5  1.5       0.00       0.00       0.00   74537.43     482.11       1.04       2.13      23.39       0.07       0.18
                         -126.16   -1109.47      -0.39       0.00       1.06     -27.62    -226.49      -1.18     663.76     -75.76

   15   1.2  1.5  0.5       0.37      -2.00      14.88     482.11   73371.53       0.00       0.00       0.00       0.00       0.00
                          -47.28    -415.03      -2.12      -1.06      -0.00     -26.36    -217.35      -0.70    -239.62      27.30

   16   2.2  1.5  0.5    -406.33      96.90      -0.33       1.04       0.00   73371.52       0.00       0.00       0.00       0.00
                           -0.90      -0.89      51.47      27.62      26.36       0.00      -0.45      29.16      -0.72      -0.01

   17   3.2  1.5  0.5      96.90     406.32       0.25       2.13       0.00       0.00   73371.55       0.00       0.00       0.00
                           -0.64      -1.92     421.83     226.49     217.35       0.45       0.00     239.40      -0.62       0.02

   18   4.2  1.5  0.5       0.89       0.83    -757.92      23.39       0.00       0.00       0.00   74537.77       0.00       0.00
                           42.89     376.71      -0.51       1.18       0.70     -29.16    -239.40       0.00    -217.53      24.47

   19   5.2  1.5  0.5      -0.00    -379.14      -1.40       0.07       0.00       0.00       0.00       0.00   74537.84       0.00
                            0.00       0.54     356.43    -663.76     239.62       0.72       0.62     217.53       0.00       0.34

   20   6.2  1.5  0.5     379.14       0.00       0.71       0.18       0.00       0.00       0.00       0.00       0.00   74537.81
                           -0.54       0.00     -40.32      75.76     -27.30       0.01      -0.02     -24.47      -0.34       0.00

   21   7.2  1.5  0.5       1.40      -0.71      -0.00      -0.29       0.00       0.00       0.00       0.00       0.00       0.00
                         -356.43      40.32      -0.00      -0.80       0.71    -235.01      28.69       0.14     -25.92    -229.02

   22   8.2  1.5  0.5      -0.07      -0.18       0.29      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          663.76     -75.76       0.80       0.00      -0.18     145.55     -17.56       0.01     -42.05    -369.82

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00       1.92      -1.14       0.21       0.43      -2.31
                           -0.00      -0.00      -0.00      -0.00      -0.00    -434.70      52.71       0.86     -54.59    -479.24

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00      -1.92      -0.00     437.88       0.86    -469.18     111.89
                           -0.00      -0.00      -0.00      -0.00     434.70      -0.00       2.04    -478.78      -1.04      -1.03

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       1.14    -437.88       0.00       0.02     111.89     469.18
                           -0.00      -0.00      -0.00      -0.00     -52.71      -2.04      -0.00      58.53      -0.73      -2.22

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.21      -0.86      -0.02      -0.00       1.02       0.96
                           -0.00      -0.00      -0.00      -0.00      -0.86     478.77     -58.53       0.00      49.52     434.98

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.43     469.18    -111.89      -1.02      -0.00    -437.79
                           -0.00      -0.00      -0.00      -0.00      54.59       1.04       0.73     -49.52       0.00       0.62

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       2.31    -111.89    -469.17      -0.96     437.79       0.00
                           -0.00      -0.00      -0.00      -0.00     479.23       1.03       2.22    -434.98      -0.62       0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00     -17.18       0.38      -0.29     875.17       1.61      -0.82
                           -0.00      -0.00      -0.00      -0.00       2.45     -59.43    -487.08       0.58    -411.57      46.55

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00    -556.68      -1.20      -2.46     -27.01      -0.08      -0.21
                           -0.00      -0.00      -0.00      -0.00       1.22     -31.89    -261.52      -1.36     766.45     -87.48

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

    1   1.2  0.5  0.5       0.00       0.00      -0.42       8.17      91.99      -0.13      99.21     -14.54       4.12     131.40
                          198.48    -122.63     -92.08    -104.22      12.20    -100.23      12.71     113.15       3.38       1.79

    2   2.2  0.5  0.5       0.00       0.00      -0.21     134.98     -32.72       0.08      -0.57     150.88       0.74      23.05
                          -34.60      21.71      16.27     -18.22       2.28      17.49       2.48      19.88    -152.37     -81.92

    3   3.2  0.5  0.5       0.00       0.00      -0.53      36.63      99.11      -0.23     114.05      13.72      -3.40    -114.24
                          220.69    -136.78    -102.98      90.21     -11.42    -111.72     -11.37     -98.36     -26.94     -14.47

    4   1.2  0.5 -0.5       4.12     131.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.38      -1.79      -4.89     -25.23    -207.97       6.08     226.03     -25.82     198.48    -122.63

    5   2.2  0.5 -0.5       0.74      23.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          152.37      81.92     273.94      -3.72     -35.31    -297.60      39.22      -4.38     -34.60      21.71

    6   3.2  0.5 -0.5      -3.40    -114.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           26.94      14.47      47.65      22.07     181.16     -52.23    -197.01      22.38     220.69    -136.78

    7   1.2  1.5  1.5     -14.88    -482.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.12      -1.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5       0.33      -1.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           51.47      27.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5      -0.25      -2.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          421.82     226.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5     757.92     -23.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.51       1.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       1.40      -0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          356.43    -663.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5      -0.71      -0.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -40.32      75.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5      -0.00       0.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5      -0.29      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.80      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00      -0.00      -1.92       1.14      -0.21      -0.43       2.31     -17.18    -556.68
                           -0.71       0.18       0.00    -434.70      52.71       0.86     -54.59    -479.23      -2.45      -1.22

   16   2.2  1.5  0.5       0.00       0.00       1.92      -0.00    -437.88      -0.86     469.18    -111.89       0.38      -1.20
                          235.01    -145.55     434.70       0.00       2.04    -478.77      -1.04      -1.03      59.43      31.89

   17   3.2  1.5  0.5       0.00       0.00      -1.14     437.88       0.00      -0.02    -111.89    -469.17      -0.29      -2.46
                          -28.69      17.56     -52.71      -2.04       0.00      58.53      -0.73      -2.22     487.08     261.52

   18   4.2  1.5  0.5       0.00       0.00       0.21       0.86       0.02      -0.00      -1.02      -0.96     875.17     -27.01
                           -0.14      -0.01      -0.86     478.78     -58.53      -0.00      49.52     434.98      -0.58       1.36

   19   5.2  1.5  0.5       0.00       0.00       0.43    -469.18     111.89       1.02      -0.00     437.79       1.61      -0.08
                           25.92      42.05      54.59       1.04       0.73     -49.52      -0.00       0.62     411.57    -766.45

   20   6.2  1.5  0.5       0.00       0.00      -2.31     111.89     469.18       0.96    -437.79       0.00      -0.82      -0.21
                          229.02     369.82     479.24       1.03       2.22    -434.98      -0.62      -0.00     -46.55      87.48

   21   7.2  1.5  0.5   74537.58       0.00      17.18      -0.38       0.29    -875.17      -1.61       0.82      -0.00       0.34
                            0.00       0.13       2.45     -59.43    -487.09       0.58    -411.57      46.55       0.00      -0.92

   22   8.2  1.5  0.5       0.00   74537.43     556.69       1.20       2.46      27.01       0.08       0.21      -0.34      -0.00
                           -0.13       0.00       1.22     -31.89    -261.53      -1.36     766.45     -87.48       0.92      -0.00

   23   1.2  1.5 -0.5      17.18     556.69   73371.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.45      -1.22       0.00      26.36     217.35       0.70     239.62     -27.30       0.71      -0.18

   24   2.2  1.5 -0.5      -0.38       1.20       0.00   73371.52       0.00       0.00       0.00       0.00       0.00       0.00
                           59.43      31.89     -26.36      -0.00       0.45     -29.16       0.72       0.01    -235.01     145.55

   25   3.2  1.5 -0.5       0.29       2.46       0.00       0.00   73371.55       0.00       0.00       0.00       0.00       0.00
                          487.09     261.53    -217.35      -0.45      -0.00    -239.40       0.62      -0.02      28.69     -17.56

   26   4.2  1.5 -0.5    -875.17      27.01       0.00       0.00       0.00   74537.77       0.00       0.00       0.00       0.00
                           -0.58       1.36      -0.70      29.16     239.40      -0.00     217.53     -24.47       0.14       0.01

   27   5.2  1.5 -0.5      -1.61       0.08       0.00       0.00       0.00       0.00   74537.84       0.00       0.00       0.00
                          411.57    -766.45    -239.62      -0.72      -0.62    -217.53      -0.00      -0.34     -25.92     -42.05

   28   6.2  1.5 -0.5       0.82       0.21       0.00       0.00       0.00       0.00       0.00   74537.81       0.00       0.00
                          -46.55      87.48      27.30      -0.01       0.02      24.47       0.34      -0.00    -229.02    -369.82

   29   7.2  1.5 -0.5      -0.00      -0.34       0.00       0.00       0.00       0.00       0.00       0.00   74537.58       0.00
                           -0.00      -0.92      -0.71     235.01     -28.69      -0.14      25.92     229.02      -0.00      -0.13

   30   8.2  1.5 -0.5       0.34      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74537.43
                            0.92       0.00       0.18    -145.55      17.56      -0.01      42.05     369.82       0.13      -0.00

   31   1.2  1.5 -1.5       0.00       0.00      -0.00       1.66      -0.98       0.19       0.37      -2.00      14.88     482.11
                           -0.00      -0.00      -0.00    -376.46      45.65       0.74     -47.28    -415.03      -2.12      -1.06

   32   2.2  1.5 -1.5       0.00       0.00      -1.66      -0.00     379.22       0.75    -406.33      96.90      -0.33       1.04
                           -0.00      -0.00     376.46      -0.00       1.77    -414.63      -0.90      -0.89      51.47      27.62

   33   3.2  1.5 -1.5       0.00       0.00       0.98    -379.22       0.00       0.02      96.90     406.32       0.25       2.13
                           -0.00      -0.00     -45.65      -1.77      -0.00      50.69      -0.64      -1.92     421.83     226.49

   34   4.2  1.5 -1.5       0.00       0.00      -0.19      -0.75      -0.02      -0.00       0.89       0.83    -757.92      23.39
                           -0.00      -0.00      -0.74     414.63     -50.69       0.00      42.89     376.71      -0.51       1.18

   35   5.2  1.5 -1.5       0.00       0.00      -0.37     406.32     -96.90      -0.89      -0.00    -379.14      -1.40       0.07
                           -0.00      -0.00      47.28       0.90       0.64     -42.89       0.00       0.54     356.43    -663.76

   36   6.2  1.5 -1.5       0.00       0.00       2.00     -96.90    -406.32      -0.83     379.14       0.00       0.71       0.18
                           -0.00      -0.00     415.02       0.89       1.92    -376.71      -0.54       0.00     -40.32      75.76

   37   7.2  1.5 -1.5       0.00       0.00     -14.88       0.33      -0.25     757.92       1.40      -0.71      -0.00      -0.29
                           -0.00      -0.00       2.12     -51.47    -421.82       0.51    -356.43      40.32      -0.00      -0.80

   38   8.2  1.5 -1.5       0.00       0.00    -482.10      -1.04      -2.13     -23.39      -0.07      -0.18       0.29      -0.00
                           -0.00      -0.00       1.06     -27.62    -226.49      -1.18     663.76     -75.76       0.80       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5      -0.73      14.16     159.33      -0.22     171.84     -25.18       7.14     227.59
                         -159.49    -180.51      21.14    -173.61      22.01     195.97       5.86       3.10

    5   2.2  0.5 -0.5      -0.36     233.79     -56.67       0.14      -0.99     261.34       1.29      39.93
                           28.18     -31.55       3.96      30.29       4.29      34.43    -263.91    -141.90

    6   3.2  0.5 -0.5      -0.92      63.45     171.67      -0.41     197.54      23.77      -5.89    -197.86
                         -178.37     156.25     -19.78    -193.51     -19.70    -170.36     -46.66     -25.06

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

   23   1.2  1.5 -0.5      -0.00      -1.66       0.98      -0.19      -0.37       2.00     -14.88    -482.10
                            0.00    -376.46      45.65       0.74     -47.28    -415.02      -2.12      -1.06

   24   2.2  1.5 -0.5       1.66      -0.00    -379.22      -0.75     406.32     -96.90       0.33      -1.04
                          376.46       0.00       1.77    -414.63      -0.90      -0.89      51.47      27.62

   25   3.2  1.5 -0.5      -0.98     379.22       0.00      -0.02     -96.90    -406.32      -0.25      -2.13
                          -45.65      -1.77       0.00      50.69      -0.64      -1.92     421.82     226.49

   26   4.2  1.5 -0.5       0.19       0.75       0.02      -0.00      -0.89      -0.83     757.92     -23.39
                           -0.74     414.63     -50.69      -0.00      42.89     376.71      -0.51       1.18

   27   5.2  1.5 -0.5       0.37    -406.33      96.90       0.89      -0.00     379.14       1.40      -0.07
                           47.28       0.90       0.64     -42.89      -0.00       0.54     356.43    -663.76

   28   6.2  1.5 -0.5      -2.00      96.90     406.32       0.83    -379.14       0.00      -0.71      -0.18
                          415.03       0.89       1.92    -376.71      -0.54      -0.00     -40.32      75.76

   29   7.2  1.5 -0.5      14.88      -0.33       0.25    -757.92      -1.40       0.71      -0.00       0.29
                            2.12     -51.47    -421.83       0.51    -356.43      40.32       0.00      -0.80

   30   8.2  1.5 -0.5     482.11       1.04       2.13      23.39       0.07       0.18      -0.29      -0.00
                            1.06     -27.62    -226.49      -1.18     663.76     -75.76       0.80      -0.00

   31   1.2  1.5 -1.5   73371.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      79.07     652.06       2.09     718.85     -81.90       2.12      -0.53

   32   2.2  1.5 -1.5       0.00   73371.52       0.00       0.00       0.00       0.00       0.00       0.00
                          -79.07      -0.00       1.34     -87.47       2.17       0.02    -705.04     436.66

   33   3.2  1.5 -1.5       0.00       0.00   73371.55       0.00       0.00       0.00       0.00       0.00
                         -652.06      -1.34      -0.00    -718.20       1.85      -0.05      86.06     -52.69

   34   4.2  1.5 -1.5       0.00       0.00       0.00   74537.77       0.00       0.00       0.00       0.00
                           -2.09      87.47     718.20      -0.00     652.58     -73.40       0.42       0.04

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   74537.84       0.00       0.00       0.00
                         -718.85      -2.17      -1.85    -652.58      -0.00      -1.03     -77.77    -126.16

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   74537.81       0.00       0.00
                           81.90      -0.02       0.05      73.40       1.03      -0.00    -687.07   -1109.47

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   74537.58       0.00
                           -2.12     705.04     -86.06      -0.42      77.77     687.07      -0.00      -0.39

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74537.43
                            0.53    -436.66      52.69      -0.04     126.16    1109.47       0.39      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -416.62725876    -0.00578491    -1269.64      0.00000000        0.00      0.0000
     2  -416.62725876    -0.00578491    -1269.64      0.00000000        0.00      0.0000
     3  -416.62725861    -0.00578476    -1269.61      0.00000015        0.03      0.0000
     4  -416.62725861    -0.00578476    -1269.61      0.00000015        0.03      0.0000
     5  -416.60998760     0.01148624     2520.94      0.01727116     3790.58      0.4700
     6  -416.60998760     0.01148624     2520.94      0.01727116     3790.58      0.4700
     7  -416.29236499     0.32910886    72231.05      0.33489377    73500.69      9.1129
     8  -416.29236498     0.32910887    72231.05      0.33489378    73500.69      9.1129
     9  -416.29236485     0.32910900    72231.08      0.33489391    73500.72      9.1129
    10  -416.29236483     0.32910901    72231.08      0.33489393    73500.72      9.1129
    11  -416.29236481     0.32910904    72231.08      0.33489395    73500.73      9.1129
    12  -416.29236479     0.32910905    72231.09      0.33489397    73500.73      9.1129
    13  -416.28783969     0.33363416    73224.23      0.33941907    74493.88      9.2361
    14  -416.28783969     0.33363416    73224.23      0.33941907    74493.88      9.2361
    15  -416.28783941     0.33363444    73224.30      0.33941935    74493.94      9.2361
    16  -416.28783941     0.33363444    73224.30      0.33941935    74493.94      9.2361
    17  -416.28783937     0.33363448    73224.30      0.33941939    74493.95      9.2361
    18  -416.28783937     0.33363448    73224.30      0.33941939    74493.95      9.2361
    19  -416.28783900     0.33363485    73224.39      0.33941976    74494.03      9.2361
    20  -416.28783900     0.33363485    73224.39      0.33941976    74494.03      9.2361
    21  -416.28691837     0.33455548    73426.44      0.34034039    74696.08      9.2611
    22  -416.28691835     0.33455549    73426.44      0.34034040    74696.08      9.2611
    23  -416.28691830     0.33455555    73426.45      0.34034046    74696.10      9.2611
    24  -416.28691829     0.33455556    73426.46      0.34034047    74696.10      9.2611
    25  -416.28278904     0.33868481    74332.72      0.34446972    75602.36      9.3735
    26  -416.28278902     0.33868483    74332.73      0.34446974    75602.37      9.3735
    27  -416.27865479     0.34281906    75240.09      0.34860397    76509.73      9.4860
    28  -416.27865478     0.34281907    75240.09      0.34860398    76509.73      9.4860
    29  -416.27865397     0.34281987    75240.27      0.34860478    76509.91      9.4860
    30  -416.27865396     0.34281988    75240.27      0.34860479    76509.91      9.4860
    31  -416.27865390     0.34281994    75240.28      0.34860485    76509.92      9.4860
    32  -416.27865389     0.34281996    75240.28      0.34860487    76509.93      9.4860
    33  -416.27410092     0.34737293    76239.55      0.35315784    77509.19      9.6099
    34  -416.27410091     0.34737293    76239.55      0.35315785    77509.19      9.6099
    35  -416.27410083     0.34737301    76239.56      0.35315792    77509.21      9.6099
    36  -416.27410080     0.34737304    76239.57      0.35315796    77509.21      9.6099
    37  -416.27223728     0.34923656    76648.57      0.35502148    77918.21      9.6606
    38  -416.27223726     0.34923659    76648.57      0.35502150    77918.21      9.6606


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.591213430  -0.143684117   0.522227143   0.154013118   0.383070531   0.431922226  -0.000000392  -0.000000522
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.092096284   0.024656645  -0.094378093  -0.010505956  -0.067362782   0.059741521   0.000000393   0.000015416
                        -0.566041100   0.000360937   0.000324859   0.572807892  -0.000000521   0.570257705  -0.000000010  -0.000010398

    3    3.2  0.5  0.5  -0.515895461  -0.160429666   0.581372506  -0.140641165   0.426644459  -0.378376713  -0.000000375   0.000002847
                        -0.091504363  -0.001315123   0.001440379   0.092637953  -0.000001026   0.090037809   0.000000017  -0.000001604

    4    1.2  0.5 -0.5   0.001315598   0.005413345   0.010580681  -0.035876857  -0.012187388   0.010808958  -0.000000445   0.000000379
                         0.143673366   0.591190042  -0.153643891   0.520994619   0.431750249  -0.382918005   0.000000295  -0.000000264

    5    2.2  0.5 -0.5  -0.000586676  -0.565168901  -0.572181444   0.006807833   0.568344942  -0.001900229   0.000019101  -0.000000457
                        -0.024651480   0.097275682  -0.028869573  -0.094133050   0.075808482   0.067335975  -0.000000292   0.000000302

    6    3.2  0.5 -0.5   0.002783964  -0.096223447  -0.102081957  -0.038503080   0.100678473   0.012039493   0.000003337   0.000000359
                         0.160405627  -0.515037173   0.133940047   0.580099361  -0.375685492  -0.426474554  -0.000000309  -0.000000226

    7    1.2  1.5  1.5   0.000004822   0.000000013   0.000008344  -0.000005303   0.000008855  -0.000000003  -0.001365060   0.017027494
                        -0.000007996  -0.000686296   0.002492096   0.000000838   0.001899053   0.000000005  -0.169162914   0.027202101

    8    2.2  1.5  1.5   0.000083991   0.000081891  -0.000289107   0.000073620  -0.000228615   0.000000030  -0.014092144   0.411587407
                         0.004315157  -0.000001218   0.000003734  -0.001187411   0.000004925  -0.000001039  -0.000152091  -0.276454433

    9    3.2  1.5  1.5  -0.000011092   0.000681443  -0.002475458  -0.000007306  -0.001885364  -0.000000005  -0.272001262  -0.026827493
                        -0.000518256   0.000000160   0.000007974   0.000138806   0.000008321   0.000000124   0.004037648   0.018163167

   10    4.2  1.5  1.5   0.000005982   0.000002116   0.000001227  -0.000007632   0.000003604  -0.000002897  -0.001961482   0.003699745
                         0.000000764  -0.000727060   0.002640058  -0.000002571   0.002035965  -0.000001163  -0.107207677   0.005551845

   11    5.2  1.5  1.5  -0.000002882   0.000723170  -0.002623143   0.000024863  -0.002023412   0.000016904  -0.019121730   0.011545892
                        -0.000077598   0.000002011   0.000000995  -0.000305619   0.000003521  -0.000464053  -0.000074746  -0.007915680

   12    6.2  1.5  1.5  -0.000010534  -0.000077039   0.000304487   0.000178261   0.000230530   0.000115273   0.000511064   0.025106930
                        -0.000728015  -0.000001081  -0.000002182  -0.002636014  -0.000000936  -0.004074100   0.000044848  -0.016770865

   13    7.2  1.5  1.5   0.001874734   0.000000214  -0.000004366  -0.002017361  -0.000001870  -0.002157305   0.000111787   0.107524223
                        -0.000038963  -0.000001854  -0.000010674  -0.000133662  -0.000001556  -0.000062297   0.008868340   0.159861937

   14    8.2  1.5  1.5  -0.002020820  -0.000000573  -0.000001739  -0.001871953  -0.000001028  -0.003486466  -0.000075646  -0.087175211
                         0.000035875  -0.000004492  -0.000002190  -0.000128604  -0.000000747  -0.000098367  -0.003452496  -0.129958234

   15    1.2  1.5  0.5   0.001698376  -0.000000236  -0.000005790  -0.003555419   0.000004524  -0.001094933  -0.000243979   0.291238605
                        -0.000022165  -0.000005317  -0.000012349  -0.000226034  -0.000000000  -0.000025724   0.011245187   0.437006834

   16    2.2  1.5  0.5  -0.000002267  -0.000394676   0.001438769   0.000008124  -0.002192660   0.000000931   0.178931874   0.040531999
                        -0.000400652  -0.000002006   0.000001828  -0.000261407   0.000000002  -0.000133825  -0.003762679  -0.025818249

   17    3.2  1.5  0.5  -0.000052078   0.000054102  -0.000174757   0.000135370   0.000265900   0.000026339  -0.000286385   0.275591960
                        -0.003279388  -0.000001020  -0.000000403  -0.002176640   0.000000003  -0.001103096   0.000222393  -0.182873785

   18    4.2  1.5  0.5  -0.002639273   0.000000617   0.000001614   0.000725342  -0.000000005   0.003524648   0.000022409  -0.048146320
                         0.000046734  -0.000002676   0.000007368   0.000046162   0.000001881   0.000093232   0.000678100  -0.071994713

   19    5.2  1.5  0.5   0.000046942   0.000300559   0.000089583   0.000045252  -0.000000033  -0.000093252   0.007441443   0.004030956
                         0.002644286   0.000006087  -0.000001606  -0.000714795  -0.000002238   0.003519229   0.000056054  -0.002674648

   20    6.2  1.5  0.5  -0.000004752   0.002642562   0.000727141  -0.000007262  -0.000000248   0.000009687   0.100123316   0.001687211
                        -0.000300817   0.000027631   0.000004638   0.000088074  -0.000000971  -0.000400969  -0.001727993  -0.001123356

   21    7.2  1.5  0.5   0.000006831   0.000018275  -0.000000014  -0.000001706   0.000000005  -0.000002786  -0.001638825   0.005728453
                         0.000003307  -0.002022129   0.001876154  -0.000001178   0.003487461   0.000003187  -0.104622853   0.008447628

   22    8.2  1.5  0.5  -0.000001428   0.000021522   0.000006153   0.000008266  -0.000000003  -0.000001335  -0.003888836   0.007787777
                         0.000000902  -0.001875738  -0.002023114   0.000002153  -0.002158210   0.000001760  -0.224795858   0.011552899

   23    1.2  1.5 -0.5  -0.000005319   0.000006613   0.000018756   0.000011922  -0.000005182  -0.000000128   0.011369195  -0.008844615
                        -0.000000187  -0.001698474  -0.003562563   0.000006625   0.001095224   0.000004523   0.542384716  -0.012327259

   24    2.2  1.5 -0.5  -0.000005620   0.000400658  -0.000261344   0.000097019   0.000133798   0.000061872  -0.053827464   0.160130633
                        -0.000394628  -0.000001401  -0.000009854  -0.001435500   0.000002845  -0.002191786   0.002177993  -0.106672215

   25    3.2  1.5 -0.5  -0.000000525   0.003279746  -0.002180768  -0.000011604   0.001103401  -0.000007499  -0.360834786  -0.000251140
                         0.000054108   0.000022048  -0.000014484   0.000174372   0.000004797   0.000265794   0.008188990  -0.000157874

   26    4.2  1.5 -0.5  -0.000002670  -0.000022565  -0.000003778  -0.000007240   0.000006258   0.000001881  -0.001646917   0.000059085
                         0.000000641   0.002639583   0.000726824  -0.000002116  -0.003525875   0.000000049  -0.085708492   0.000095639

   27    5.2  1.5 -0.5   0.000008839  -0.002644598  -0.000716239   0.000007757  -0.003520459  -0.000002236   0.000297047   0.003468220
                         0.000300491  -0.000022728  -0.000003961  -0.000089258  -0.000006086  -0.000000096   0.000005583  -0.002548891

   28    6.2  1.5 -0.5   0.000051827   0.000300847   0.000088367   0.000045326   0.000401083  -0.000000963  -0.005329652   0.058515940
                         0.002642205   0.000001998  -0.000001194  -0.000725718   0.000001631  -0.000000275   0.000099253  -0.039288675

   29    7.2  1.5 -0.5  -0.002021860  -0.000003370  -0.000001058  -0.001871740  -0.000003265   0.003486072   0.000152958   0.060812454
                         0.000036790  -0.000006800  -0.000001783  -0.000128878   0.000002695   0.000098410   0.010779172   0.090226866

   30    8.2  1.5 -0.5  -0.001875481  -0.000000889   0.000001580   0.002018740  -0.000001797  -0.002157350   0.000227018   0.131444498
                         0.000038697   0.000001436   0.000008394   0.000132848   0.000001285  -0.000060900   0.014185943   0.195704258

   31    1.2  1.5 -1.5   0.000686244  -0.000007951  -0.000001200   0.002485641   0.000000005  -0.001898046  -0.001772298  -0.128572471
                        -0.000006296   0.000004895   0.000005233   0.000179531  -0.000000003  -0.000062436  -0.037535125  -0.187980998

   32    2.2  1.5 -1.5   0.000000468   0.004315734   0.001189702   0.000023586  -0.000001039  -0.000011374   0.523759043   0.015299475
                        -0.000081896   0.000044475   0.000008129  -0.000288168   0.000000000   0.000228385  -0.009049675  -0.010922312

   33    3.2  1.5 -1.5  -0.000006399  -0.000518335  -0.000138984   0.000178018   0.000000124  -0.000061516  -0.031512807   0.280235436
                        -0.000681391  -0.000006346  -0.000002247  -0.002469068  -0.000000002   0.001884379   0.000403483  -0.189352307

   34    4.2  1.5 -1.5   0.000726987   0.000000819   0.000002041   0.002633743  -0.000001081  -0.002035052  -0.000152098  -0.071520990
                        -0.000008773   0.000005974   0.000007791   0.000182595  -0.000002928  -0.000061050  -0.007541413  -0.106646365

   35    5.2  1.5 -1.5  -0.000008632  -0.000077624   0.000306604   0.000181202  -0.000464346  -0.000060614   0.015661138   0.027595751
                        -0.000723098  -0.000002171  -0.000003808  -0.002616884   0.000003803   0.002022507  -0.000137345  -0.019103928

   36    6.2  1.5 -1.5   0.000001787  -0.000728105   0.002642027  -0.000023095  -0.004075731   0.000007440   0.027780623  -0.002050972
                         0.000077024  -0.000003867   0.000003253   0.000303618   0.000000270  -0.000230412  -0.000539615   0.001451165

   37    7.2  1.5 -1.5   0.000001852  -0.000021796  -0.000005246  -0.000010349  -0.000001400   0.000001502  -0.003426972   0.005678122
                        -0.000000230   0.001874994   0.002021794  -0.000005089  -0.002158204   0.000001914  -0.205478290   0.008340663

   38    8.2  1.5 -1.5   0.000004497   0.000017370  -0.000000301  -0.000002065   0.000000048   0.000000718   0.002878111  -0.002548864
                         0.000000532  -0.002021081   0.001876348  -0.000001885  -0.003487853   0.000001049   0.161828442  -0.003838878


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000000581  -0.000002126  -0.000000425   0.000000956   0.000008209   0.000000422  -0.000012570   0.000000976
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000012626  -0.000001381  -0.000000193   0.000000234  -0.000001302  -0.000002080   0.000001727  -0.000009072
                        -0.000004148  -0.000000012   0.000000050  -0.000000011   0.000000011  -0.000000449  -0.000000154   0.000014263

    3    3.2  0.5  0.5   0.000001995  -0.000002719  -0.000000482   0.000001149   0.000009170   0.000000033  -0.000014089  -0.000002257
                        -0.000000491  -0.000000081   0.000000199   0.000000016   0.000000011   0.000000064  -0.000000044   0.000001870

    4    1.2  0.5 -0.5   0.000001728  -0.000000683   0.000001406   0.000000182  -0.000000413   0.000008025   0.000000533   0.000006862
                        -0.000000531   0.000000183  -0.000000313  -0.000000076  -0.000000089   0.000001733  -0.000000818  -0.000010527

    5    2.2  0.5 -0.5   0.000001401   0.000012333   0.000001305   0.000001796   0.000002127  -0.000001270  -0.000016900  -0.000001071
                        -0.000000445   0.000000240  -0.000000289   0.000000015  -0.000000000  -0.000000286  -0.000000189   0.000001362

    6    3.2  0.5 -0.5   0.000002247   0.000001712   0.000001868   0.000000570  -0.000000046   0.000008966  -0.000002799   0.000007654
                        -0.000000762  -0.000000133  -0.000000477   0.000000068   0.000000055   0.000001925   0.000000869  -0.000011822

    7    1.2  1.5  1.5   0.001511671  -0.008835073   0.008144400  -0.008257143  -0.000000038   0.000000452  -0.000000316   0.000000039
                         0.004142660   0.444927562   0.032637824   0.482393352  -0.000032653  -0.000000515  -0.000079797  -0.000000250

    8    2.2  1.5  1.5   0.029633123   0.036716893  -0.286985234   0.042752081   0.000002992  -0.000074037   0.000013244   0.000023801
                        -0.009513529   0.000927066   0.070689067   0.002098969  -0.000000142  -0.000016002   0.000000660  -0.000036477

    9    3.2  1.5  1.5  -0.042686448   0.076128564   0.001199260   0.613866103  -0.000002848   0.000007654   0.000066984  -0.000001806
                         0.013343152   0.003900527  -0.000691739   0.008854620  -0.000000138   0.000001741  -0.000000499   0.000002666

   10    4.2  1.5  1.5  -0.007342429   0.000899043  -0.006577125  -0.002504308   0.000265587   0.000789512   0.000133688   0.014608113
                        -0.023491047  -0.081606603  -0.028635647   0.213902445   0.035495285  -0.002761369  -0.297033498   0.005650375

   11    5.2  1.5  1.5   0.023347865   0.228326167   0.035005566   0.100804167  -0.213173331   0.039788112   0.075558433  -0.012368381
                        -0.007441020   0.004064051  -0.007973742   0.001550044   0.000160129   0.008419213  -0.000445459   0.016890365

   12    6.2  1.5  1.5   0.085464075  -0.045355367   0.056471981  -0.001525833   0.013880963   0.475286113   0.001464310  -0.153668993
                        -0.027905504  -0.000549514  -0.013779169  -0.000311247   0.000895713   0.102742985   0.000766648   0.235138175

   13    7.2  1.5  1.5  -0.010339443   0.000347349  -0.037278044   0.000040782  -0.000441485  -0.038121472  -0.004005169   0.159142270
                        -0.031524977   0.021705512  -0.151880258  -0.018638458  -0.003717035   0.178257080   0.018533677   0.103152267

   14    8.2  1.5  1.5  -0.027192126  -0.000087850   0.005894278  -0.000011629  -0.000839328  -0.128410622   0.000475428  -0.192454894
                        -0.083484938   0.009241803   0.023412653  -0.000276650  -0.016601043   0.593552700   0.003029491  -0.125765300

   15    1.2  1.5  0.5   0.096943046  -0.000973703  -0.014722562   0.000962110   0.000000131  -0.000006936   0.000000627   0.000015967
                         0.294325990  -0.034480737  -0.065722863   0.002686345  -0.000001711   0.000030272  -0.000003655   0.000009850

   16    2.2  1.5  0.5   0.045910461   0.637287038   0.062232184  -0.234114849  -0.000037671   0.000009396  -0.000056084  -0.000007732
                        -0.013169155   0.011069725  -0.013441378  -0.002259368   0.000000024   0.000001956  -0.000000065   0.000011826

   17    3.2  1.5  0.5  -0.241627736   0.005066588  -0.439188271  -0.029171398   0.000002238   0.000080673   0.000005238  -0.000058148
                         0.080390448  -0.001600565   0.107177242   0.000567432   0.000000117   0.000017664  -0.000000640   0.000089251

   18    4.2  1.5  0.5  -0.042396864  -0.000113924  -0.015542559  -0.000080062   0.000441319  -0.009680244  -0.005693345   0.506565842
                        -0.129171366   0.025607096  -0.063061302  -0.011625932  -0.004344934   0.049944482   0.018105034   0.329420773

   19    5.2  1.5  0.5   0.122112069  -0.022023552   0.108257297   0.046223237   0.014767310  -0.368682827   0.005214413  -0.021063869
                        -0.040166470  -0.000075838  -0.026619895   0.000113700   0.000170628  -0.079732882   0.001217478   0.034051608

   20    6.2  1.5  0.5  -0.018826748   0.071662945  -0.023476130   0.256585766  -0.007088495   0.046905376  -0.045694836  -0.000080506
                         0.005919743   0.001200573   0.005606928   0.002927292   0.000176021   0.009920602  -0.000418996  -0.000253289

   21    7.2  1.5  0.5   0.002254868  -0.002730588   0.005077444  -0.000163882   0.000271172   0.001163343  -0.000510427  -0.015711333
                         0.007078357   0.144128648   0.021883604   0.021892994  -0.233446163  -0.009000827   0.599334792  -0.004374476

   22    8.2  1.5  0.5  -0.003851589  -0.000883677  -0.000119889  -0.001155964   0.000068888  -0.003696694  -0.000014129  -0.011257450
                        -0.012041487   0.034187871  -0.000724128   0.107278292   0.332092531   0.017564241  -0.092146833  -0.005649115

   23    1.2  1.5 -0.5   0.011641935  -0.005861062   0.005353410   0.000178987  -0.000000391   0.000000199  -0.000000447   0.000003312
                         0.039825086   0.268542476   0.028870503   0.091691653  -0.000027791  -0.000001571   0.000018539   0.000001443

   24    2.2  1.5 -0.5   0.529830919  -0.071617159   0.370882036   0.020799577   0.000009475   0.000040528   0.000013560  -0.000027492
                        -0.172748844   0.000919489  -0.090242561  -0.000686811   0.000000075   0.000008773   0.000000015   0.000042270

   25    3.2  1.5 -0.5  -0.028888569   0.374789160   0.041768956  -0.325448334   0.000083027  -0.000002624   0.000101273   0.000003064
                         0.010592350   0.008047603  -0.008679179  -0.003021611  -0.000000221  -0.000000450   0.000000017  -0.000003617

   26    4.2  1.5 -0.5  -0.005663635   0.002850468  -0.005614368  -0.000463283   0.001079365   0.000485337  -0.000664021  -0.018288265
                        -0.018127024  -0.146339195  -0.024626540   0.034952899  -0.050799961  -0.004337597   0.604125169  -0.005123286

   27    5.2  1.5 -0.5  -0.002157883  -0.151806492  -0.056143905   0.072433999  -0.377229093  -0.014474610   0.040429273   0.001832610
                         0.000533526  -0.003053741   0.013213453   0.000845518   0.000123500  -0.002950696   0.000959617  -0.005033045

   28    6.2  1.5 -0.5   0.135909644   0.040406253  -0.226609843  -0.020715718   0.047945992   0.006870355  -0.000213300  -0.024563881
                        -0.044564544   0.000290992   0.055844530  -0.000105944   0.000202503   0.001663208  -0.000205108   0.038442863

   29    7.2  1.5 -0.5  -0.043728862  -0.000109562  -0.007017725  -0.000019602  -0.000762817   0.049014587   0.004912641  -0.502346282
                        -0.133375829   0.013870439  -0.028417455  -0.012871830   0.009045196  -0.228285732  -0.015534989  -0.326856549

   30    8.2  1.5 -0.5  -0.016376694   0.000154769   0.016661416   0.000061281   0.000093468  -0.070159053   0.001420826   0.076831964
                        -0.049050797  -0.014236121   0.068152756  -0.001959856  -0.017948360   0.324600434  -0.012521753   0.050115197

   31    1.2  1.5 -1.5   0.173675946   0.000452445  -0.078798954  -0.000405797  -0.000000334  -0.000007335   0.000000234  -0.000066095
                         0.525362402   0.008578487  -0.309432880   0.011270188  -0.000000728   0.000033782   0.000000010  -0.000043451

   32    2.2  1.5 -1.5  -0.023531504  -0.063495873   0.029409288   0.239092464   0.000077476   0.000002991   0.000046240  -0.000006550
                         0.008745224  -0.001421690  -0.008646945   0.002712431  -0.000000019   0.000000798  -0.000000016   0.000011327

   33    3.2  1.5 -1.5  -0.217987841  -0.068515682   0.519545878  -0.005557372  -0.000008031  -0.000002502  -0.000003409  -0.000035553
                         0.074805453  -0.000152259  -0.128937338  -0.000378691   0.000000086  -0.000000392   0.000000086   0.000053614

   34    4.2  1.5 -1.5  -0.007290766  -0.000207688  -0.051247825  -0.000098773  -0.000189164   0.007753365   0.003244832  -0.249051430
                        -0.024668288   0.040982206  -0.208899898  -0.016642199  -0.002865185  -0.034650567  -0.015316223  -0.162183185

   35    5.2  1.5 -1.5  -0.235242073   0.028488751   0.030609981  -0.017326548  -0.040669337  -0.208353289  -0.020936539  -0.041469051
                         0.077053021   0.000265517  -0.008073617   0.000164647  -0.000168201  -0.045152217   0.001140674   0.062780788

   36    6.2  1.5 -1.5   0.039197065   0.101951456   0.015612237  -0.036126946  -0.486271473   0.013759068  -0.281223980  -0.000171245
                        -0.012660929   0.001805982  -0.003378916  -0.000358328   0.000115459   0.002054555   0.000314856   0.001658175

   37    7.2  1.5 -1.5   0.001234318  -0.001523876   0.005540527   0.001322409  -0.000360164  -0.001215835   0.000482563   0.017709043
                         0.005508476   0.078125571   0.024141199  -0.120342164   0.182247956   0.003538209  -0.189292905   0.006766437

   38    8.2  1.5 -1.5   0.003531921  -0.001206887   0.001727149  -0.000389707   0.000243830  -0.004324360   0.000255489   0.002266410
                         0.011181986   0.074564404   0.007530372   0.030003224   0.607305088   0.016050862   0.229974301   0.002047968


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000000710   0.000004392  -0.000000464  -0.000002265   0.000967767  -0.000327819   0.001337658  -0.001902223
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000002528  -0.000001243   0.000002688   0.000000330  -0.000554569  -0.002031316  -0.000262611  -0.000122009
                        -0.000002921  -0.000000055   0.000006362   0.000000044   0.000098311   0.000416674   0.000104632   0.001316611

    3    3.2  0.5  0.5  -0.000000370   0.000004814   0.000000832  -0.000002530   0.000966356  -0.000749031   0.001362578   0.001608165
                         0.000000009  -0.000000087   0.000000927   0.000000005  -0.000238011   0.000212132  -0.000535537  -0.000334540

    4    1.2  0.5 -0.5  -0.000002939   0.000000475   0.000000901  -0.000000185  -0.000230717  -0.001356609  -0.000632346  -0.000328259
                        -0.000003278   0.000000528   0.000002079  -0.000000426   0.000803836   0.000298208  -0.001638359  -0.000794532

    5    2.2  0.5 -0.5   0.000000872  -0.000003876  -0.000000172   0.000006907  -0.002317424   0.000744033   0.000315902   0.000006038
                         0.000000890   0.000000068  -0.000000286  -0.000000065   0.000429969  -0.000146947  -0.000370166   0.000279189

    6    3.2  0.5 -0.5  -0.000003156  -0.000000242   0.000001002   0.000001181  -0.000921723  -0.001418532   0.000063535   0.000040381
                        -0.000003652  -0.000000280   0.000002324   0.000000395  -0.000549514   0.000279724   0.001532218  -0.000917985

    7    1.2  1.5  1.5  -0.000002953   0.000000867  -0.000000283   0.000000030  -0.031804363   0.018925187  -0.068638314  -0.066037544
                         0.000003307   0.000051140   0.000000201  -0.000013818  -0.233410783   0.087534455  -0.316108553   0.008846470

    8    2.2  1.5  1.5   0.000083754  -0.000013732   0.000009654   0.000001301  -0.009696274  -0.369590224   0.088270378   0.094208077
                         0.000094611  -0.000000647   0.000022280  -0.000000090   0.001128022   0.079101566  -0.020087058   0.593912195

    9    3.2  1.5  1.5  -0.000013489  -0.000111818  -0.000001528  -0.000007474   0.236306397  -0.043518866   0.307735449  -0.021586384
                        -0.000013373   0.000001009  -0.000003250  -0.000000103  -0.032255151   0.008725898  -0.066599128  -0.138346723

   10    4.2  1.5  1.5  -0.005767855  -0.000260285   0.001721814   0.001458399   0.012437313  -0.007137328   0.026958711   0.026249694
                         0.004026954  -0.219773583   0.000722171  -0.452494385   0.092979754  -0.035102876   0.126081803  -0.003921865

   11    5.2  1.5  1.5   0.025963177  -0.374364760  -0.004835944  -0.386725712  -0.088373723   0.049909067  -0.122206459   0.005320725
                         0.034395898   0.001251512  -0.013062151  -0.001682350   0.011834667  -0.010064802   0.026132747   0.035281535

   12    6.2  1.5  1.5   0.281165450   0.020112861  -0.048967929   0.041076398   0.047275270   0.128632292   0.040939813   0.011868407
                         0.316763057  -0.005085447  -0.111916011  -0.000885430  -0.006452695  -0.026626583  -0.008844160   0.077703647

   13    7.2  1.5  1.5  -0.318713647   0.001610102   0.286855102   0.001769353  -0.003811490  -0.029564070  -0.000969373  -0.075871299
                         0.282914284  -0.002933704  -0.125019122   0.001620859  -0.026924263  -0.140849806  -0.004269459   0.012372700

   14    8.2  1.5  1.5  -0.109227185   0.002766623  -0.079392261  -0.000316464  -0.003680231  -0.014096103  -0.006359157   0.142281003
                         0.096611352  -0.017348055   0.034522390  -0.004754266  -0.026807788  -0.069478087  -0.028961343  -0.022137900

   15    1.2  1.5  0.5   0.000099616  -0.000001106  -0.000022412  -0.000000234   0.018470923   0.125388103   0.011140994   0.115421799
                        -0.000088517   0.000002344   0.000009561  -0.000000541   0.128863106   0.594942377   0.048242842  -0.017115298

   16    2.2  1.5  0.5   0.000004618   0.000065168   0.000002015  -0.000012442  -0.144065714   0.029275211  -0.194230225  -0.005095840
                         0.000003489  -0.000000494   0.000004472   0.000000003   0.019366592  -0.004381975   0.041365491  -0.032706860

   17    3.2  1.5  0.5   0.000010715  -0.000012632   0.000014659  -0.000000889  -0.068139209  -0.181712349  -0.084184970  -0.090895936
                         0.000011455  -0.000000612   0.000033847   0.000000151   0.009811291   0.038999560   0.018671134  -0.585427044

   18    4.2  1.5  0.5  -0.113377992  -0.002320043   0.235383266   0.001707767   0.001272148   0.017628170  -0.002576750   0.139641759
                         0.100263035   0.017022036  -0.101914007   0.002924580   0.008681168   0.083232707  -0.011559790  -0.021917547

   19    5.2  1.5  0.5   0.276607181   0.009196240  -0.145091534   0.063468942   0.023423407   0.080727664  -0.022661699  -0.021711814
                         0.312322935  -0.002850839  -0.333909745  -0.002287009  -0.003016982  -0.017138425   0.004663694  -0.138116298

   20    6.2  1.5  0.5  -0.028169211   0.113998925   0.015558038   0.516261640   0.128053179  -0.027899833  -0.095488955   0.003167733
                        -0.034947701  -0.000318882   0.040993047   0.001131420  -0.016078005   0.005584082   0.019558008   0.020925024

   21    7.2  1.5  0.5   0.011463356  -0.000507784  -0.001126293  -0.000030931   0.001897079  -0.004056402   0.033202458   0.024899602
                        -0.013133058   0.013520644  -0.000413232   0.190897990   0.010722750  -0.020027180   0.158473027  -0.003809457

   22    8.2  1.5  0.5  -0.001666751   0.002758996   0.001768449  -0.000352629  -0.020304451   0.006838625   0.002943252  -0.009492996
                         0.007239152   0.462263862  -0.000782754   0.127078240  -0.159280726   0.034137064   0.016460393   0.001362024

   23    1.2  1.5 -0.5   0.000001003  -0.000000572  -0.000000546   0.000000137   0.076841420  -0.028960928   0.024445033   0.063238743
                        -0.000002349  -0.000129610   0.000000000   0.000021224   0.595479500  -0.148088304   0.121443169  -0.008790849

   24    2.2  1.5 -0.5   0.000041628  -0.000005645  -0.000004554  -0.000004647  -0.059682285  -0.198414354   0.034909108  -0.019193867
                         0.000047135  -0.000001057  -0.000010506  -0.000000073   0.009453698   0.040725397  -0.006723668  -0.127394051

   25    3.2  1.5 -0.5  -0.000008590  -0.000016896  -0.000000267  -0.000034625  -0.048971802  -0.031233778   0.610274410  -0.010612900
                        -0.000008691  -0.000000320  -0.000000958   0.000000004   0.007042905   0.005888762  -0.127206241  -0.074262049

   26    4.2  1.5 -0.5   0.011115747   0.001058290   0.003362205  -0.000123713   0.016537673  -0.003630973  -0.020215669  -0.005037052
                        -0.013080251   0.151860348   0.000403955  -0.256522046   0.129837513  -0.018565280  -0.097532951   0.000689055

   27    5.2  1.5 -0.5   0.004012029  -0.417151221   0.023148231   0.364052665  -0.128135771   0.027896737   0.095495951  -0.003420107
                         0.008746549   0.002561175   0.059141990   0.000299503   0.016310498  -0.005654399  -0.019740304  -0.020877306

   28    6.2  1.5 -0.5   0.075890211   0.044824525   0.206391102  -0.043797227   0.023403523   0.080618531  -0.022612866  -0.021946687
                         0.085115495  -0.002357835   0.473210652   0.002031557  -0.003153326  -0.017231156   0.004894984  -0.137996288

   29    7.2  1.5 -0.5   0.009333012   0.002126741   0.175160906   0.000827445  -0.003757070  -0.014063889  -0.006185680   0.142340396
                        -0.009073518  -0.017313920  -0.075974194   0.000868216  -0.026864676  -0.069471501  -0.028879584  -0.022213044

   30    8.2  1.5 -0.5   0.346076644  -0.004275650   0.116433181   0.000014448   0.003655816   0.029648698   0.000898498   0.075840724
                        -0.306603957   0.006061719  -0.050863095  -0.001933007   0.026816241   0.140827369   0.004218371  -0.012315655

   31    1.2  1.5 -1.5  -0.000036245   0.000000451   0.000015745   0.000000088  -0.011086088  -0.067921385  -0.015084686   0.203681641
                         0.000031346  -0.000004360  -0.000006887  -0.000000340  -0.092880298  -0.334805334  -0.067196513  -0.030019473

   32    2.2  1.5 -1.5   0.000009776   0.000129369  -0.000000233   0.000021107  -0.571465900   0.039680527   0.412294413  -0.006380782
                         0.000009919  -0.000000822  -0.000000834  -0.000000008   0.071632885  -0.008148416  -0.084778310  -0.046820078

   33    3.2  1.5 -1.5   0.000075219  -0.000019268   0.000004664  -0.000003214  -0.024115672  -0.342119209  -0.117866545  -0.029509302
                         0.000085393  -0.000001122   0.000010449  -0.000000096   0.003644892   0.069244190   0.024602526  -0.199474316

   34    4.2  1.5 -1.5   0.163607573  -0.000850986   0.414589813   0.001347556   0.005025898   0.027366989   0.005787677  -0.081164396
                        -0.146362420  -0.006995607  -0.181332922   0.001292438   0.037062596   0.133305432   0.026875943   0.012214547

   35    5.2  1.5 -1.5   0.249035687   0.042926242   0.155367393  -0.013909894   0.047249745   0.128648671   0.040942578   0.011669480
                         0.279615290  -0.003629977   0.354136229   0.000758588  -0.006504696  -0.026392051  -0.008800874   0.077593796

   36    6.2  1.5 -1.5  -0.009640575   0.423315577  -0.015526921  -0.122170579   0.088371023  -0.049902118   0.122394620  -0.005237705
                        -0.018371030  -0.002123517  -0.038039248  -0.000410695  -0.011686207   0.010119247  -0.025922398  -0.035296249

   37    7.2  1.5 -1.5   0.001118648  -0.002137185  -0.002191534  -0.000600851   0.020373978  -0.006714725  -0.002884615   0.009506623
                        -0.003168325  -0.426328910  -0.000978317   0.312931091   0.159282579  -0.034311068  -0.016495075  -0.001369307

   38    8.2  1.5 -1.5   0.011069953  -0.000982061   0.004487204   0.000093498   0.001865191  -0.004055651   0.033243958   0.025056041
                        -0.013641728  -0.145636555  -0.001600358  -0.086556658   0.010750757  -0.020014038   0.158393800  -0.003661797


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.000648036   0.000568931  -0.000000293   0.000000894   0.000003914  -0.000000405  -0.000004340  -0.000000391
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000089885  -0.000100074  -0.000000037  -0.000000153  -0.000001217  -0.000005952   0.000001355  -0.000002562
                         0.000851257  -0.000000029  -0.000000334   0.000000004   0.000000048   0.000000865  -0.000000051  -0.000003251

    3    3.2  0.5  0.5  -0.000567610   0.000633700   0.000000262   0.000000999   0.000004249  -0.000001665  -0.000004712  -0.000000409
                         0.000134430  -0.000000034  -0.000000041  -0.000000003  -0.000000011   0.000000203   0.000000000  -0.000001078

    4    1.2  0.5 -0.5   0.000015950  -0.000018168   0.000000036   0.000000012  -0.000000301  -0.000004303   0.000000342  -0.000002358
                        -0.000568685   0.000647797  -0.000000866  -0.000000298   0.000000091   0.000000639   0.000000310  -0.000003093

    5    2.2  0.5 -0.5  -0.000002777   0.000848423  -0.000000010  -0.000000377  -0.000005577   0.000001416   0.000004733   0.000000648
                         0.000100032   0.000113718   0.000000147  -0.000000052   0.000000021  -0.000000147   0.000000069   0.000000911

    6    3.2  0.5 -0.5   0.000017800   0.000150294   0.000000044  -0.000000061  -0.000001475  -0.000004659   0.000001345  -0.000002572
                        -0.000633425  -0.000563632  -0.000000968   0.000000264  -0.000000006   0.000000670  -0.000000348  -0.000003374

    7    1.2  1.5  1.5   0.000010827  -0.002271834  -0.000826074   0.000584508  -0.000691792  -0.000669838  -0.001062146   0.000668478
                        -0.000021000  -0.485246003  -0.000549930  -0.121707803  -0.111495324  -0.014154546  -0.246864121  -0.000582470

    8    2.2  1.5  1.5   0.000002520   0.058411778  -0.009550095  -0.017628448  -0.029185758  -0.104281228  -0.006853547   0.037848195
                         0.000001638  -0.001259895   0.219593089  -0.000377056   0.000002756   0.014567932  -0.000971562   0.050998012

    9    3.2  1.5  1.5   0.000020847   0.481721043   0.000991672  -0.150730115  -0.226102093   0.014691696  -0.115351067   0.000335004
                         0.000010725  -0.002135714  -0.025897565  -0.000347730   0.001470238  -0.001953194   0.000428270   0.001526343

   10    4.2  1.5  1.5  -0.000077346   0.000096426   0.001141965   0.000104717   0.003302304  -0.001761140   0.000996339   0.023975116
                        -0.000028261   0.053913286   0.000343442   0.272012346   0.515328407  -0.026947467  -0.024284337  -0.015310827

   11    5.2  1.5  1.5   0.000440163  -0.053568596  -0.000011284   0.136255116  -0.009599275   0.023177863   0.564793233  -0.003465451
                        -0.012200474   0.000094730  -0.006415754   0.000384920  -0.001231809   0.000009797  -0.002757019  -0.002371084

   12    6.2  1.5  1.5   0.003013003   0.006105761   0.001788093  -0.015386496  -0.018254174  -0.196418541  -0.044006281  -0.107634468
                        -0.107099604  -0.000020353  -0.043465679  -0.000003286   0.001620364   0.028038413  -0.001444910  -0.141654134

   13    7.2  1.5  1.5  -0.056734655  -0.000047127   0.463992390   0.000001238   0.000951275   0.047135686  -0.001526551   0.036812975
                        -0.001629054  -0.000043360   0.020107803  -0.001697998   0.013585885   0.333291042  -0.026228792  -0.026190533

   14    8.2  1.5  1.5  -0.091614229  -0.000023348  -0.338935395   0.000277861   0.001290887   0.003712728  -0.000515705  -0.188671613
                        -0.002569835  -0.000021590  -0.014740517   0.000663733   0.013758959   0.020048512  -0.007506523   0.142415620

   15    1.2  1.5  0.5   0.280079430  -0.001159598  -0.216879216   0.000027116   0.000531407   0.004439831  -0.000194898  -0.125127802
                         0.006554305   0.000006410  -0.010209331   0.000479174   0.009604733   0.020141531  -0.005556436   0.094802162

   16    2.2  1.5  0.5  -0.000195674   0.556239951  -0.001312045   0.051768235   0.198773537  -0.052168365  -0.224050936  -0.013056012
                         0.033743670  -0.000012593   0.020173043  -0.000094645  -0.000238029   0.005247541   0.000026699  -0.018813381

   17    3.2  1.5  0.5  -0.006578669  -0.067460518  -0.008103342  -0.005635854  -0.036839296  -0.197745214   0.045131462  -0.028860631
                         0.278041901  -0.000010821   0.164817963   0.000006092   0.001060627   0.028609311  -0.001502751  -0.035530343

   18    4.2  1.5  0.5   0.093345032  -0.000004078  -0.158819937   0.000159436   0.002483849   0.034573371  -0.002272336  -0.225077382
                         0.002454717   0.000051367  -0.006997664   0.000497838   0.026963856   0.232294750  -0.025855262   0.171403726

   19    5.2  1.5  0.5  -0.002441940  -0.000000960  -0.001613301  -0.015423712   0.027805750  -0.320298683   0.078099308  -0.139127189
                         0.092756180  -0.000062733   0.031904229  -0.000399480   0.001834580   0.046760740  -0.003550345  -0.181781964

   20    6.2  1.5  0.5   0.000253393   0.000004294   0.000260874  -0.139571466   0.495797749   0.044543409   0.400857099   0.007014632
                        -0.010567754  -0.000025056  -0.003916682   0.000136272  -0.005122324  -0.005741430  -0.003668603   0.007013447

   21    7.2  1.5  0.5  -0.000075157   0.000001857   0.001554197   0.000248167   0.000672871   0.001454120   0.001015262  -0.011549318
                         0.000087850   0.091650263   0.000162203   0.284354848  -0.100468174   0.027201263   0.282412906   0.007091388

   22    8.2  1.5  0.5  -0.000034092  -0.000001110   0.002034900   0.000636583   0.001466425  -0.000139351   0.001017529   0.005236133
                         0.000044004  -0.056749926   0.000416833   0.544632035   0.168791216  -0.001845453   0.082187357  -0.003357977

   23    1.2  1.5 -0.5   0.000038917   0.001300438   0.000441831   0.001026210  -0.001641015  -0.001090770  -0.000417013   0.003260925
                        -0.001158961  -0.280153579   0.000044374   0.214852262  -0.000645460  -0.012717313  -0.161211856  -0.002388704

   24    2.2  1.5 -0.5  -0.015607030  -0.033735949  -0.002229002  -0.019747458   0.046455613   0.219402069  -0.031252410   0.122458403
                         0.556020264  -0.000750424   0.050502561   0.000449800  -0.001977550  -0.032047547   0.001540757   0.160701699

   25    3.2  1.5 -0.5   0.001880470  -0.278117518   0.000237849  -0.161552748   0.198284123  -0.041939588  -0.063386985  -0.022011370
                        -0.067434221  -0.001218961  -0.005475881   0.001127102  -0.000806191   0.004852768  -0.001504867  -0.030692154

   26    4.2  1.5 -0.5   0.000051462   0.000163218   0.000426943   0.000280163  -0.000476668  -0.001886065  -0.000151863   0.016041976
                        -0.000002636  -0.093375519   0.000167709   0.159068248   0.200888749  -0.034281156  -0.307694617  -0.010165762

   27    5.2  1.5 -0.5  -0.000062683  -0.092786536   0.000333917  -0.029008867   0.299947931   0.014853273  -0.261423303  -0.043217495
                        -0.000002720  -0.000159482  -0.017288567   0.000265830  -0.000517671  -0.004800651  -0.000380111  -0.061339697

   28    6.2  1.5 -0.5  -0.000025167   0.010570517   0.006754789   0.003506235  -0.037119608   0.444127682   0.006387897  -0.269037366
                         0.000003581   0.000042978  -0.156194181  -0.000085025   0.000422516  -0.061047587   0.001898964  -0.359053670

   29    7.2  1.5 -0.5   0.091616548  -0.000089921   0.282158195  -0.000090429   0.001966834   0.018472138  -0.001749760  -0.219742426
                         0.002571383   0.000072663   0.012158680  -0.001514416   0.020917089   0.121933402  -0.017591258   0.166205460

   30    8.2  1.5 -0.5  -0.056729051  -0.000044941   0.538987244  -0.000329290  -0.000177124  -0.023497026   0.000789757  -0.086850142
                        -0.001592163   0.000032844   0.023402069  -0.002048272  -0.002553626  -0.168709800   0.009703421   0.064815917

   31    1.2  1.5 -1.5   0.484991204  -0.000021295   0.115540568  -0.000503247   0.001062660  -0.012346370   0.000090098  -0.206816331
                         0.015875040   0.000010234   0.004319987  -0.000804590   0.009869893  -0.086684297  -0.000387314   0.156472993

   32    2.2  1.5 -1.5   0.002897001   0.000001553  -0.000350922   0.216498450  -0.116071928   0.027305593  -0.055801174  -0.007802920
                        -0.058353453   0.000002565   0.016826946  -0.000268855   0.000964049  -0.004019512   0.000894992  -0.008821422

   33    3.2  1.5 -1.5   0.015640150   0.000010138  -0.005748842  -0.025535131   0.017076102   0.213693149  -0.006454182  -0.084899205
                        -0.481471457   0.000021139   0.143867134  -0.000100116  -0.000312441  -0.030167767   0.000992908  -0.112003473

   34    4.2  1.5 -1.5  -0.053891248  -0.000026081  -0.260547525   0.000293740   0.001862416   0.072780116  -0.003313252   0.027414728
                        -0.001607929  -0.000078107  -0.011115740   0.001159386   0.023410175   0.514889058  -0.039768021  -0.019548146

   35    5.2  1.5 -1.5  -0.001596570  -0.012207909   0.005036628  -0.006427116   0.014044119   0.065054704   0.001636490   0.339393423
                         0.053546722   0.000097943  -0.128162175  -0.000285973  -0.002438077  -0.010230517   0.001678809   0.449475643

   36    6.2  1.5 -1.5   0.000191529  -0.107141016  -0.000606994  -0.044566621  -0.177018705   0.016908042   0.197945087  -0.030642903
                        -0.006103000   0.000009229   0.014425458  -0.000045540   0.000725124  -0.000475304  -0.000362029  -0.038518352

   37    7.2  1.5 -1.5   0.000042023  -0.000037829   0.001671051   0.000497471  -0.002350238   0.001193031  -0.001545375  -0.016046484
                         0.000048326  -0.056757533   0.000072700   0.456546597  -0.350110442   0.015426838  -0.016629080   0.011014229

   38    8.2  1.5 -1.5   0.000020928  -0.000000375  -0.000601809  -0.000415859   0.001066262   0.001023900   0.001198575  -0.004543778
                         0.000023946  -0.091649439  -0.000293465  -0.335621414   0.011801205   0.018443019   0.241831818   0.003060940


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5  -0.004086787  -0.000412924   0.004801906   0.001151267   0.003746317   0.004242269
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000556552   0.002473723   0.000748347  -0.000227179  -0.000658802   0.000587425
                        -0.000013062  -0.004617899  -0.003586748   0.000009995  -0.000000107   0.005589095

    3    3.2  0.5  0.5  -0.004583512   0.000674101  -0.004190625   0.001276047   0.004172617  -0.003716116
                         0.000084494  -0.000571551  -0.000465993  -0.000053115  -0.000000028   0.000882477

    4    1.2  0.5 -0.5  -0.000156082   0.001839264   0.000083333  -0.000241953  -0.000119447   0.000105482
                         0.001190521  -0.003354368   0.001842150  -0.004660586   0.004240568  -0.003744804

    5    2.2  0.5 -0.5   0.004540674  -0.000256950  -0.000002745   0.004397608   0.005570313  -0.000018442
                         0.000162269   0.000462481  -0.000350349  -0.000919425   0.000744557   0.000658539

    6    3.2  0.5 -0.5   0.000710479   0.002079542   0.000021589   0.000828998   0.000986755   0.000117513
                        -0.001041519  -0.003752009   0.002048376   0.004041245  -0.003689778  -0.004170931

    7    1.2  1.5  1.5   0.002407648   0.002894022   0.001929675  -0.001254428  -0.000562014   0.000000406
                         0.159299020   0.001874619   0.000468059  -0.044816146  -0.120522553  -0.000002324

    8    2.2  1.5  1.5  -0.024847151   0.059350314  -0.006717711   0.005655500   0.014508513   0.000000279
                         0.000674298  -0.107691000  -0.256143381  -0.000246908  -0.000312628  -0.000000182

    9    3.2  1.5  1.5  -0.157463840  -0.008861582   0.000875836   0.044429165   0.119649691   0.000002308
                         0.002331782   0.016099161   0.032992093  -0.001232592  -0.000528207   0.000000412

   10    4.2  1.5  1.5   0.004854124   0.007301407   0.004767105  -0.002821253  -0.000383906   0.000307380
                         0.399807836   0.003912213  -0.000089797  -0.112419470  -0.216994332   0.000119116

   11    5.2  1.5  1.5  -0.398022539   0.016711634   0.000699482   0.111292858   0.215601160  -0.001781926
                         0.004811813  -0.029367323   0.025164629  -0.002793405  -0.000376137   0.049101545

   12    6.2  1.5  1.5   0.038275446   0.180131239   0.004672291  -0.016661456  -0.024562702  -0.012170665
                        -0.000571559  -0.326399528   0.178407339   0.000434808   0.000091787   0.431071176

   13    7.2  1.5  1.5  -0.000251164  -0.306523152  -0.223273528   0.000143662   0.000195116   0.228396511
                         0.010435707  -0.169146992   0.005970874   0.001836041   0.000165313   0.006581473

   14    8.2  1.5  1.5  -0.000179097  -0.195542872   0.350070907   0.000135606   0.000102851   0.368821897
                         0.001468134  -0.107911967  -0.009115567   0.003608314   0.000079029   0.010383348

   15    1.2  1.5  0.5  -0.000113068  -0.213839439  -0.066259277   0.000099193  -0.000286381   0.069575367
                         0.006533579  -0.117386253   0.000698438   0.001664560  -0.000000400   0.001635276

   16    2.2  1.5  0.5   0.091329573   0.006244732   0.000526738  -0.025925953   0.138169057  -0.000052702
                        -0.000930337  -0.012615690   0.026831190   0.000608434  -0.000000337   0.008379732

   17    3.2  1.5  0.5  -0.011007106   0.047145809   0.005718910   0.001153901  -0.016755527  -0.001641021
                         0.000147005  -0.087606551   0.230438466  -0.000022894  -0.000001405   0.069074211

   18    4.2  1.5  0.5  -0.000045004   0.157546230   0.374182503   0.000104280   0.000007351  -0.375731371
                        -0.008176869   0.087174491  -0.009158777   0.000049526  -0.000198480  -0.009919117

   19    5.2  1.5  0.5   0.004490763   0.086938929  -0.009112267   0.045657137   0.000000064   0.009866609
                        -0.000163739  -0.157127679  -0.371707444  -0.000608932   0.000243624  -0.373329835

   20    6.2  1.5  0.5   0.112588472  -0.007049902   0.000960265   0.397226524  -0.000004131  -0.001024385
                        -0.001201331   0.012627940   0.043149996  -0.009028488   0.000101854   0.042535024

   21    7.2  1.5  0.5   0.002971112   0.003635848   0.004211184  -0.006903198  -0.000000456   0.000297190
                         0.280727946   0.001825635  -0.000459064  -0.306053882  -0.368966350  -0.000344714

   22    8.2  1.5  0.5  -0.003137086  -0.008422010  -0.001996983  -0.006393838   0.000000267   0.000141450
                        -0.305967174  -0.004759867  -0.000137403  -0.280669195   0.228471015  -0.000182460

   23    1.2  1.5 -0.5  -0.001700901  -0.005633998  -0.001898058  -0.003417629   0.000324349   0.000007664
                        -0.228724967  -0.002922696  -0.000046004  -0.107564540  -0.069590168  -0.000286286

   24    2.2  1.5 -0.5  -0.018362779   0.041183342   0.001063826   0.024495532  -0.008377456  -0.003890785
                        -0.000397389  -0.074690120   0.041451533  -0.000842873  -0.000183253   0.138117879

   25    3.2  1.5 -0.5  -0.137974637  -0.005802054  -0.000068526   0.209621449  -0.069089422   0.000470384
                         0.000449695   0.010449579  -0.002479220  -0.005286690  -0.000304496  -0.016749362

   26    4.2  1.5 -0.5   0.001311043   0.005204878  -0.000447301   0.009845639  -0.000664067  -0.000198607
                         0.112373962   0.002806999  -0.000083560   0.399776328   0.375862091   0.000001760

   27    5.2  1.5 -0.5  -0.112583520   0.007016744  -0.001581098  -0.397185964   0.373460045   0.000243524
                         0.001315604  -0.012646646  -0.043137579   0.009767850   0.000648937   0.000006926

   28    6.2  1.5 -0.5   0.004491339   0.086732982  -0.009821865   0.045639115  -0.042547050   0.000101929
                        -0.000089283  -0.157245956  -0.371711642  -0.001227453  -0.000173655  -0.000001246

   29    7.2  1.5 -0.5  -0.000081487  -0.195553110   0.350097104  -0.000297273   0.000352945  -0.368817807
                         0.001529642  -0.107992158  -0.009244424   0.003272744  -0.000287366  -0.010389165

   30    8.2  1.5 -0.5  -0.000179597   0.306547853   0.223253794  -0.000245762   0.000186371   0.228379029
                        -0.010777581   0.169030481  -0.005899895  -0.001894098  -0.000136257   0.006433154

   31    1.2  1.5 -1.5  -0.000180041   0.130238651  -0.071800271  -0.000592171  -0.000002334   0.120458957
                        -0.002797783   0.072649906   0.001514568  -0.001564448   0.000000340   0.003955276

   32    2.2  1.5 -1.5   0.076665437   0.010983463   0.000052100   0.273746670  -0.000000199   0.000721012
                        -0.000766858  -0.019106547   0.009187864  -0.006261738   0.000000274  -0.014493958

   33    3.2  1.5 -1.5  -0.012117913   0.071850316   0.001519633  -0.034785984   0.000000348   0.003896905
                         0.000114407  -0.128893717   0.071184908   0.000786707   0.000002319  -0.119587379

   34    4.2  1.5 -1.5   0.000035406   0.327403264  -0.180118279  -0.000106964   0.000110414   0.216895083
                        -0.006690445   0.181365253   0.004322068  -0.003855258   0.000310611   0.006493466

   35    5.2  1.5 -1.5   0.038268678   0.180646633   0.004283236  -0.016662507   0.049132057   0.006446474
                        -0.000828498  -0.326147320   0.178459595   0.000262639  -0.000398694  -0.215502706

   36    6.2  1.5 -1.5   0.397995673  -0.016463812  -0.000571411  -0.111263239   0.431241254  -0.000783340
                        -0.004180361   0.029508491  -0.025171501   0.002509192  -0.000028417   0.024550108

   37    7.2  1.5 -1.5   0.003261287   0.008325948   0.001997137   0.006347195   0.000148034  -0.000159752
                         0.305998522   0.004205986   0.000111677   0.280692512   0.228490365  -0.000199691

   38    8.2  1.5 -1.5   0.002930971   0.003645255   0.004573245  -0.007039646  -0.000005474  -0.000076101
                         0.280678840   0.001805138  -0.000032573  -0.306029974   0.368966576  -0.000105034


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  34.953%   2.065%  27.272%   2.372%  14.674%  18.656%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  32.888%   0.061%   0.891%  32.822%   0.454%  32.876%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  27.452%   2.574%  33.800%   2.836%  18.203%  15.128%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   2.064%  34.953%   2.372%  27.272%  18.656%  14.674%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.061%  32.888%  32.823%   0.891%  32.876%   0.454%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   2.574%  27.452%   2.836%  33.800%  15.128%  18.203%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   2.862%   0.103%   0.002%  19.804%
    8    2.2  1.5  1.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.020%  24.583%   0.097%   0.135%
    9    3.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   7.400%   0.105%   0.200%   0.581%
   10    4.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   1.150%   0.004%   0.061%   0.666%
   11    5.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.037%   0.020%   0.060%   5.215%
   12    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.091%   0.808%   0.206%
   13    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   3.712%   0.110%   0.047%
   14    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   2.449%   0.771%   0.009%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.013%  27.579%   9.603%   0.119%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.203%   0.231%   0.228%  40.626%
   17    3.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  10.939%   6.485%   0.003%
   18    4.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.750%   1.848%   0.066%
   19    5.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.006%   0.002%   1.652%   0.049%
   20    6.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   1.003%   0.000%   0.039%   0.514%
   21    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   1.095%   0.010%   0.006%   2.078%
   22    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.055%   0.019%   0.016%   0.117%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%  29.431%   0.023%   0.172%   7.215%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.290%   3.702%  31.056%   0.513%
   25    3.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%  13.027%   0.000%   0.095%  14.053%
   26    4.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.735%   0.000%   0.036%   2.142%
   27    5.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   2.305%
   28    6.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.497%   2.046%   0.163%
   29    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.012%   1.184%   1.970%   0.019%
   30    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.020%   5.558%   0.267%   0.020%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.141%   5.187%  30.617%   0.007%
   32    2.2  1.5 -1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%  27.441%   0.035%   0.063%   0.403%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.099%  11.439%   5.311%   0.469%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.006%   1.649%   0.066%   0.168%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.025%   0.113%   6.128%   0.081%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.077%   0.001%   0.170%   1.040%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.223%   0.010%   0.003%   0.611%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   2.620%   0.002%   0.014%   0.556%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.113%  23.277%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5   8.736%   0.183%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.2  1.5  1.5   0.000%  37.691%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.2  1.5  1.5   0.086%   4.576%   0.126%   0.001%   8.823%   0.025%   0.005%   4.830%   0.000%  20.475%
   11    5.2  1.5  1.5   0.129%   1.016%   4.544%   0.165%   0.571%   0.044%   0.186%  14.015%   0.019%  14.956%
   12    6.2  1.5  1.5   0.338%   0.000%   0.019%  23.645%   0.000%   7.890%  17.939%   0.043%   1.492%   0.169%
   13    7.2  1.5  1.5   2.446%   0.035%   0.001%   3.323%   0.036%   3.597%  18.162%   0.001%   9.792%   0.001%
   14    8.2  1.5  1.5   0.058%   0.000%   0.028%  36.879%   0.001%   5.286%   2.126%   0.031%   0.749%   0.002%
   15    1.2  1.5  0.5   0.454%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    2.2  1.5  0.5   0.405%   5.481%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    3.2  1.5  0.5  20.437%   0.085%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    4.2  1.5  0.5   0.422%   0.014%   0.002%   0.259%   0.036%  36.513%   2.291%   0.030%   6.579%   0.001%
   19    5.2  1.5  0.5   1.243%   0.214%   0.022%  14.228%   0.003%   0.160%  17.406%   0.009%  13.255%   0.403%
   20    6.2  1.5  0.5   0.058%   6.584%   0.005%   0.230%   0.209%   0.000%   0.201%   1.300%   0.192%  26.653%
   21    7.2  1.5  0.5   0.050%   0.048%   5.450%   0.008%  35.920%   0.027%   0.030%   0.018%   0.000%   3.644%
   22    8.2  1.5  0.5   0.000%   1.151%  11.029%   0.032%   0.849%   0.016%   0.006%  21.370%   0.000%   1.615%
   23    1.2  1.5 -0.5   0.086%   0.841%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    2.2  1.5 -0.5  14.570%   0.043%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    3.2  1.5 -0.5   0.182%  10.593%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    4.2  1.5 -0.5   0.064%   0.122%   0.258%   0.002%  36.497%   0.036%   0.029%   2.306%   0.001%   6.580%
   27    5.2  1.5 -0.5   0.333%   0.525%  14.230%   0.022%   0.164%   0.003%   0.009%  17.402%   0.403%  13.253%
   28    6.2  1.5 -0.5   5.447%   0.043%   0.230%   0.005%   0.000%   0.208%   1.300%   0.201%  26.653%   0.192%
   29    7.2  1.5 -0.5   0.086%   0.017%   0.008%   5.452%   0.027%  35.919%   0.017%   0.030%   3.645%   0.000%
   30    8.2  1.5 -0.5   0.492%   0.000%   0.032%  11.029%   0.016%   0.841%  21.378%   0.006%   1.614%   0.000%
   31    1.2  1.5 -1.5  10.196%   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.094%   5.717%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5  28.655%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   4.627%   0.028%   0.001%   0.126%   0.025%   8.833%   4.819%   0.005%  20.477%   0.000%
   35    5.2  1.5 -1.5   0.100%   0.030%   0.165%   4.545%   0.044%   0.566%  14.020%   0.186%  14.955%   0.019%
   36    6.2  1.5 -1.5   0.026%   0.131%  23.646%   0.019%   7.909%   0.000%   0.043%  17.920%   0.169%   1.493%
   37    7.2  1.5 -1.5   0.061%   1.448%   3.321%   0.001%   3.583%   0.036%   0.001%  18.176%   0.001%   9.793%
   38    8.2  1.5 -1.5   0.006%   0.090%  36.882%   0.028%   5.289%   0.001%   0.031%   2.121%   0.002%   0.749%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   5.549%   0.802%  10.464%   0.444%   0.000%  23.547%   0.000%   1.481%   1.243%   0.020%
    8    2.2  1.5  1.5   0.010%  14.285%   0.820%  36.161%   0.000%   0.341%   4.831%   0.031%   0.085%   1.109%
    9    3.2  1.5  1.5   5.688%   0.197%   9.914%   1.961%   0.000%  23.206%   0.067%   2.272%   5.112%   0.022%
   10    4.2  1.5  1.5   0.880%   0.128%   1.662%   0.070%   0.000%   0.291%   0.000%   7.399%  26.557%   0.073%
   11    5.2  1.5  1.5   0.795%   0.259%   1.562%   0.127%   0.015%   0.287%   0.004%   1.857%   0.009%   0.054%
   12    6.2  1.5  1.5   0.228%   1.726%   0.175%   0.618%   1.148%   0.004%   0.189%   0.024%   0.034%   3.937%
   13    7.2  1.5  1.5   0.074%   2.071%   0.002%   0.591%   0.322%   0.000%  21.569%   0.000%   0.019%  11.330%
   14    8.2  1.5  1.5   0.073%   0.503%   0.088%   2.073%   0.840%   0.000%  11.509%   0.000%   0.019%   0.042%
   15    1.2  1.5  0.5   1.695%  36.968%   0.245%   1.362%   7.849%   0.000%   4.714%   0.000%   0.009%   0.043%
   16    2.2  1.5  0.5   2.113%   0.088%   3.944%   0.110%   0.114%  30.940%   0.041%   0.268%   3.951%   0.275%
   17    3.2  1.5  0.5   0.474%   3.454%   0.744%  35.099%   7.735%   0.455%   2.723%   0.003%   0.136%   3.992%
   18    4.2  1.5  0.5   0.008%   0.724%   0.014%   1.998%   0.872%   0.000%   2.527%   0.000%   0.073%   5.516%
   19    5.2  1.5  0.5   0.056%   0.681%   0.054%   1.955%   0.861%   0.000%   0.102%   0.024%   0.078%  10.478%
   20    6.2  1.5  0.5   1.666%   0.081%   0.950%   0.045%   0.011%   0.000%   0.002%   1.948%  24.584%   0.202%
   21    7.2  1.5  0.5   0.012%   0.042%   2.622%   0.063%   0.000%   0.840%   0.000%   8.086%   1.009%   0.074%
   22    8.2  1.5  0.5   2.578%   0.121%   0.028%   0.009%   0.000%   0.322%   0.000%  29.662%   2.849%   0.000%
   23    1.2  1.5 -0.5  36.050%   2.277%   1.535%   0.408%   0.000%   7.849%   0.000%   4.616%   0.000%   0.016%
   24    2.2  1.5 -0.5   0.365%   4.103%   0.126%   1.660%  30.940%   0.114%   0.256%   0.039%   0.216%   4.916%
   25    3.2  1.5 -0.5   0.245%   0.101%  38.862%   0.563%   0.455%   7.735%   0.003%   2.610%   3.932%   0.178%
   26    4.2  1.5 -0.5   1.713%   0.036%   0.992%   0.003%   0.000%   0.872%   0.000%   2.530%   4.036%   0.118%
   27    5.2  1.5 -0.5   1.668%   0.081%   0.951%   0.045%   0.000%   0.861%   0.030%   0.084%   8.997%   0.024%
   28    6.2  1.5 -0.5   0.056%   0.680%   0.054%   1.952%   0.000%   0.011%   2.444%   0.001%   0.138%  20.098%
   29    7.2  1.5 -0.5   0.074%   0.502%   0.087%   2.075%   0.840%   0.000%   7.976%   0.000%   0.044%   1.521%
   30    8.2  1.5 -0.5   0.073%   2.071%   0.002%   0.590%   0.322%   0.000%  29.105%   0.000%   0.001%   2.902%
   31    1.2  1.5 -1.5   0.875%  11.671%   0.474%   4.239%  23.547%   0.000%   1.337%   0.000%   0.010%   0.767%
   32    2.2  1.5 -1.5  33.170%   0.164%  17.717%   0.223%   0.341%   0.000%   0.028%   4.687%   1.347%   0.076%
   33    3.2  1.5 -1.5   0.059%  12.184%   1.450%   4.066%  23.206%   0.000%   2.073%   0.065%   0.029%   4.657%
   34    4.2  1.5 -1.5   0.140%   1.852%   0.076%   0.674%   0.291%   0.000%   6.801%   0.000%   0.055%  27.041%
   35    5.2  1.5 -1.5   0.227%   1.725%   0.175%   0.616%   0.287%   0.015%   1.645%   0.004%   0.020%   0.434%
   36    6.2  1.5 -1.5   0.795%   0.259%   1.565%   0.127%   0.004%   1.148%   0.021%   0.199%   3.134%   0.029%
   37    7.2  1.5 -1.5   2.579%   0.122%   0.028%   0.009%   0.000%   0.322%   0.000%  20.844%  12.258%   0.024%
   38    8.2  1.5 -1.5   0.012%   0.042%   2.619%   0.064%   0.000%   0.840%   0.000%  11.264%   0.014%   0.034%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.002%   0.000%   0.002%   0.000%   0.001%   0.002%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.003%   0.001%   0.000%   0.000%   0.003%
    3    3.2  0.5  0.5   0.000%   0.000%   0.002%   0.000%   0.002%   0.000%   0.002%   0.001%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.002%   0.001%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.002%   0.003%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%   0.001%   0.002%
    7    1.2  1.5  1.5   6.094%   0.000%   2.538%   0.001%   0.000%   0.201%   1.453%   0.000%
    8    2.2  1.5  1.5   0.005%   0.403%   0.062%   1.512%   6.565%   0.003%   0.021%   0.000%
    9    3.2  1.5  1.5   1.331%   0.000%   2.480%   0.034%   0.109%   0.198%   1.432%   0.000%
   10    4.2  1.5  1.5   0.059%   0.081%  15.987%   0.007%   0.002%   1.265%   4.709%   0.000%
   11    5.2  1.5  1.5  31.900%   0.002%  15.845%   0.114%   0.063%   1.239%   4.648%   0.241%
   12    6.2  1.5  1.5   0.194%   3.165%   0.147%  13.898%   3.185%   0.028%   0.060%  18.597%
   13    7.2  1.5  1.5   0.069%   0.204%   0.011%  12.257%   4.989%   0.000%   0.000%   5.221%
   14    8.2  1.5  1.5   0.006%   5.588%   0.000%   4.988%  12.263%   0.001%   0.000%  13.614%
   15    1.2  1.5  0.5   0.003%   2.464%   0.004%   5.951%   0.439%   0.000%   0.000%   0.484%
   16    2.2  1.5  0.5   5.020%   0.052%   0.834%   0.020%   0.072%   0.067%   1.909%   0.007%
   17    3.2  1.5  0.5   0.204%   0.210%   0.012%   0.990%   5.313%   0.000%   0.028%   0.477%
   18    4.2  1.5  0.5   0.067%   8.004%   0.007%   3.242%  14.010%   0.000%   0.000%  14.127%
   19    5.2  1.5  0.5   0.611%   5.240%   0.002%   3.225%  13.825%   0.208%   0.000%  13.947%
   20    6.2  1.5  0.5  16.070%   0.010%   1.268%   0.021%   0.186%  15.787%   0.000%   0.181%
   21    7.2  1.5  0.5   7.976%   0.018%   7.882%   0.002%   0.002%   9.372%  13.614%   0.000%
   22    8.2  1.5  0.5   0.676%   0.004%   9.363%   0.009%   0.000%   7.882%   5.220%   0.000%
   23    1.2  1.5 -0.5   2.599%   0.002%   5.232%   0.004%   0.000%   1.158%   0.484%   0.000%
   24    2.2  1.5 -0.5   0.098%   4.082%   0.034%   0.727%   0.172%   0.060%   0.007%   1.909%
   25    3.2  1.5 -0.5   0.402%   0.143%   1.904%   0.014%   0.001%   4.397%   0.477%   0.028%
   26    4.2  1.5 -0.5   9.468%   0.036%   1.263%   0.003%   0.000%  15.992%  14.127%   0.000%
   27    5.2  1.5 -0.5   6.834%   0.563%   1.268%   0.021%   0.186%  15.785%  13.947%   0.000%
   28    6.2  1.5 -0.5   0.004%  20.130%   0.002%   3.225%  13.827%   0.208%   0.181%   0.000%
   29    7.2  1.5 -0.5   0.031%   7.591%   0.000%   4.990%  12.265%   0.001%   0.000%  13.613%
   30    8.2  1.5 -0.5   0.009%   1.174%   0.012%  12.254%   4.988%   0.000%   0.000%   5.220%
   31    1.2  1.5 -1.5   0.000%   6.726%   0.001%   2.224%   0.516%   0.000%   0.000%   1.453%
   32    2.2  1.5 -1.5   0.311%   0.014%   0.588%   0.049%   0.008%   7.498%   0.000%   0.021%
   33    3.2  1.5 -1.5   0.004%   1.975%   0.015%   2.178%   0.507%   0.121%   0.000%   1.432%
   34    4.2  1.5 -1.5   0.159%   0.113%   0.004%  14.009%   3.246%   0.001%   0.000%   4.709%
   35    5.2  1.5 -1.5   0.001%  31.722%   0.147%  13.901%   3.187%   0.028%   0.241%   4.648%
   36    6.2  1.5 -1.5   3.918%   0.242%  15.842%   0.114%   0.063%   1.239%  18.597%   0.060%
   37    7.2  1.5 -1.5   0.028%   0.038%   9.365%   0.009%   0.000%   7.883%   5.221%   0.000%
   38    8.2  1.5 -1.5   5.848%   0.003%   7.879%   0.002%   0.002%   9.370%  13.614%   0.000%


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
              1      21      101.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     7956.21       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    527969.01 394621.56 109495.81  23809.98     15.91      6.47     19.09
 REAL TIME  *    533329.54 SEC
 DISK USED  *         7.87 GB (local),       24.96 GB (total)
 SF USED    *        62.27 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -416.272237257900

              CI              CI           MULTI         RHF-SCF
   -416.21897478   -416.55073332   -415.17659754   -415.57917925
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
