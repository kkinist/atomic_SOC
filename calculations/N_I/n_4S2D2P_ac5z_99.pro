
 Working directory              : /wrk/irikura/molpro.9hgklut3ZF/
 Global scratch directory       : /wrk/irikura/molpro.9hgklut3ZF/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.9hgklut3ZF/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,N SO-CI
                                                                                 ! Active space (5,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={N};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
                                                                                 !{rhf;wf,nelec=7,sym=2,spin=3}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,1,0;
     wf,sym=2,spin=3;state,1;
         weight,all,99
     wf,sym=2,spin=1;state,8;
         weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=3;state,1; save,5203.2}
 hlsdiag = energd
 {ci;option,nstati=9;wf,sym=2,spin=1;state,8; save,5201.2}
 hlsdiag(2) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   N SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 13:51:51  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry N      S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry N      P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry N      D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry N      F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry N      G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry N      H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  N       7.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    7
 NUMBER OF PRIMITIVE AOS:         268
 NUMBER OF SYMMETRY AOS:          198
 NUMBER OF CONTRACTIONS:          181   (   87Ag  +   94Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     113.770 MB (compressed) written to integral file ( 12.2%)

     Node minimum: 19.661 MB, node maximum: 26.477 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   13716042.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   13716042      RECORD LENGTH: 524288

 Memory used in sort:      14.27 MW

 SORT1 READ   116167465. AND WROTE     2454335. INTEGRALS IN      8 RECORDS. CPU TIME:     0.65 SEC, REAL TIME:     0.72 SEC
 SORT2 READ    12179468. AND WROTE    68575111. INTEGRALS IN    450 RECORDS. CPU TIME:     0.31 SEC, REAL TIME:     0.45 SEC

 Node minimum:    13713236.  Node maximum:    13716554. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       19202111121314151617  18192021

 Eigenvalues of metric

         1 0.524E-05 0.426E-03 0.422E-02 0.904E-02 0.392E-01 0.402E-01 0.402E-01 0.402E-01
         2 0.238E-03 0.238E-03 0.238E-03 0.233E-01 0.233E-01 0.233E-01 0.384E-01 0.384E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.94      2.75
 REAL TIME  *         4.42 SEC
 DISK USED  *        30.07 MB (local),      388.77 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     176 (   85   91)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 4 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              11   (12 determinants, 24 intermediate states)

 Orbital guess generated from atomic densities.

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 5 3 6 4 1 2   3 4 5 61310 812 7 9  111415 1 4 3 5 6 213  1012 8 9111514 7 4 3
                                        5 6 2 112 8 9111013  1415 7 5 4 6 3 2 1 5   6 4 3 2 11310 7 812   9111415 6 4 5 3 2 1
                                        4 6 3 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.290D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.290D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 3 2 1 7   9 810 4 5 6 2 3 110   8 9 7 6 4 5 3 1 219  18201112211314161715
                                        6 9 7 4 510 8 1 3 2  19182011121715141613  21 6 4 5 9 7 810 1 3   2 810 6 9 7 5 4 1 3
                                        2 810 6 9 7 4 5 1 3   2 1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.92523
 Weight factors for state symmetry  2:    0.00935   0.00935   0.00935   0.00935   0.00935   0.00935   0.00935   0.00935
 
 Number of orbital rotations:  444  ( 1 closed/active, 85 closed/virtual, 0 active/active, 358 active/virtual )
 Total number of variables:    541
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   16    0    -54.37460642     -54.44490437   -0.07029795    0.26715774 0.00165248 0.00000000  0.38E+00      0.37
   2    8   14    0    -54.40977990     -54.42101834   -0.01123844    0.25912958 0.00000013 0.00000000  0.74E-01      0.75
   3    6   10    0    -54.42121923     -54.42122828   -0.00000904    0.00560140 0.00000011 0.00000000  0.23E-02      1.08
   4    7   14    0    -54.42122828     -54.42122828   -0.00000000    0.00000458 0.00000000 0.00000000  0.21E-05      1.36

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.31E-07)
                       Final energy:    -54.42122828
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy               -54.430129369956
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.62391096
 One electron energy                           -73.97927803
 Two electron energy                            19.54914866
 Virial ratio                                    1.99645244
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy               -54.324064410056
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.62391096
 One electron energy                           -73.97927803
 Two electron energy                            19.65521362
 Virial ratio                                    1.99451071
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy               -54.324064410055
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.62391096
 One electron energy                           -73.97927803
 Two electron energy                            19.65521362
 Virial ratio                                    1.99451071
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy               -54.324064410050
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.62391096
 One electron energy                           -73.97927803
 Two electron energy                            19.65521362
 Virial ratio                                    1.99451071
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy               -54.324064410044
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.62391096
 One electron energy                           -73.97927803
 Two electron energy                            19.65521362
 Virial ratio                                    1.99451071
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy               -54.324064410044
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.62391096
 One electron energy                           -73.97927803
 Two electron energy                            19.65521362
 Virial ratio                                    1.99451071
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy               -54.289432171806
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.60869533
 One electron energy                           -73.94771209
 Two electron energy                            19.65827992
 Virial ratio                                    1.99415362
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy               -54.289432171797
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.60869533
 One electron energy                           -73.94771209
 Two electron energy                            19.65827992
 Virial ratio                                    1.99415362
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy               -54.289432171788
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.60869533
 One electron energy                           -73.94771209
 Two electron energy                            19.65827992
 Virial ratio                                    1.99415362
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     3.710008539118
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     3.999999228558
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000001394963
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000121240
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.289759832235
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.000000023902
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999979902
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.999999998904
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     2.043273580790
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000770808
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999998402222
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000008229
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     1.957173021734
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999977189
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.000000048329
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999896669
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.246717880092
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000634
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000202815
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.999999870531
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.753067146031
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999998909
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999999971769
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.000000104427
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 5 4 6 1 2   6 5 3 4101312 8 714  15 911 1 5 3 4 6 212   81013111514 9 7 6 4
                                        5 3 2 1 81211 91013  1415 7 6 4 5 3 2 1 6   4 5 3 2 1 7111310 8  12 91415 6 4 5 3 2 1
                                        6 4 5 3 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 1 2 3 7   9 810 4 5 6 1 2 310   8 7 9 6 4 5 1 2 319  20181112211316141517
                                        6 9 7 5 410 8 3 2 1  19182012111416171513  21 6 5 4 9 710 8 3 2   110 8 6 5 4 9 7 3 1
                                        2 810 6 9 7 5 4 3 2   1 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -15.63786     1  1  s    0.99438
    2.1     1.99815    -0.94991     1  2  s    1.00918
    1.2     1.00062    -0.18181     1  1  pz   0.99778
    2.2     1.00062    -0.18181     1  1  px   0.99778
    3.2     1.00062    -0.18181     1  1  py   0.99778
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa          1.00000000
 
 Energy:      -54.43012937
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 baa          0.79091531      0.00000000     -0.00000025      0.00000267     -0.20277980     -0.00000000     -0.00000000
 2 aba         -0.21984520     -0.00000001     -0.00000012     -0.00003248      0.78634265      0.00000000      0.00000000
 2 a02         -0.00000549      0.00001028     -0.00018450     -0.70710676     -0.00003074     -0.00002296      0.00011683
 2 a20          0.00000549     -0.00001028      0.00018450      0.70710676      0.00003074     -0.00002296      0.00011683
 2 2a0          0.00000000      0.70710669      0.00035843      0.00001019      0.00000001      0.69531277     -0.00010501
 2 0a2         -0.00000000     -0.70710669     -0.00035843     -0.00001019     -0.00000001      0.69531277     -0.00010501
 2 20a          0.00000027     -0.00035842      0.70710667     -0.00018450      0.00000018      0.00010502      0.69531276
 2 02a         -0.00000027      0.00035842     -0.70710667      0.00018450     -0.00000018      0.00010502      0.69531276
 2 aab         -0.57107011      0.00000001      0.00000037      0.00002980     -0.58356285      0.00000000     -0.00000000
 0 2a2         -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.18187984      0.00002747
 0 a22         -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000601     -0.00003056
 0 22a          0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00002747     -0.18187984
 
 Energy:      -54.32406441    -54.32406441    -54.32406441    -54.32406441    -54.32406441    -54.28943217    -54.28943217

 State:              8
 2 baa         -0.00000000
 2 aba         -0.00000000
 2 a02          0.69531277
 2 a20          0.69531277
 2 2a0          0.00002298
 2 0a2          0.00002298
 2 20a         -0.00011682
 2 02a         -0.00011682
 2 aab          0.00000000
 0 2a2         -0.00000601
 0 a22         -0.18187984
 0 22a          0.00003056
 
 Energy:      -54.28943217
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       4        0.84       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         4.43      1.48      2.75
 REAL TIME  *         6.10 SEC
 DISK USED  *        34.10 MB (local),      408.91 MB (total)
 SF USED    *        11.23 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -54.43012937  -0.0
    -54.32406441   6.0
    -54.32406441   6.0
    -54.32406441   6.0
    -54.32406441   6.0
    -54.32406441   6.0
    -54.28943217   2.0
    -54.28943217   2.0
    -54.28943217   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                  7
 Maximum number of shells:             2
 Maximum number of spin couplings:     4

 Reference space:        1 conf        1 CSFs
 N elec internal:        4 conf        4 CSFs
 N-1 el internal:       13 conf       16 CSFs
 N-2 el internal:        7 conf       19 CSFs

 Number of electrons in valence space:                      5
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  5


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     176 (  85  91 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -54.43012937

 Number of blocks in overlap matrix:    10   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      10
 Number of N-1 electron functions:      16

 Number of internal configurations:                    1
 Number of singly external configurations:          1396
 Number of doubly external configurations:         77246
 Total number of contracted configurations:        78643
 Total number of uncontracted configurations:     148048

 Diagonal Coupling coefficients finished.               Storage:    172891 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    314877 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -54.43012937    -0.00000000    -0.12909337  0.23D-01  0.17D-01     0.07
    2     1     1     1.03556861    -0.12208470   -54.55221407    -0.12208470    -0.00110190  0.89D-04  0.19D-03     0.22
    3     1     1     1.03807919    -0.12325752   -54.55338689    -0.00117282    -0.00004001  0.23D-04  0.39D-05     0.37
    4     1     1     1.03838892    -0.12330540   -54.55343477    -0.00004787    -0.00000220  0.56D-06  0.34D-06     0.51
    5     1     1     1.03847003    -0.12330799   -54.55343736    -0.00000259    -0.00000009  0.23D-07  0.15D-07     0.66
    6     1     1     1.03846682    -0.12330809   -54.55343746    -0.00000010    -0.00000000  0.13D-08  0.60D-09     0.81


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   1.2%   2.5%   7.4%

 Initialization:   8.6%
 Other:           80.2%

 Total CPU:        0.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2///           0.9813043


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.98130427 (fixed)   0.98130427 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000    0.00000000
 Singles      0.02113757   -0.04764980   -0.04839379
 Pairs        0.01732925   -0.07565829   -0.07491430
 Total        1.03846682   -0.12330809   -0.12330809
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.43012937
 Nuclear energy                         0.00000000
 Kinetic energy                        54.74458842
 One electron energy                  -73.89265504
 Two electron energy                   19.33921758
 Virial quotient                       -0.99650831
 Correlation energy                    -0.12330809
 !CI(SD) STATE 1.2 Energy             -54.553437460716

 Properties without orbital relaxation:

 !CI(SD) STATE 1.2 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.55818073 (Davidson, fixed reference)
 Cluster corrected energies           -54.55818073 (Davidson, relaxed reference)

 Cluster corrected energies           -54.55343746 (Pople, fixed reference)
 Cluster corrected energies           -54.55343746 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        2.41       700     1000      520     2140     5203   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *         5.29      0.87      1.48      2.75
 REAL TIME  *         7.00 SEC
 DISK USED  *        35.67 MB (local),      416.72 MB (total)
 SF USED    *        16.03 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG        =       -54.55818073  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Program parameters:       NSTATE=  8    NSTATI=  9    NSTATR=  8    NCEPA = -1    NOKOP =  0    ITRDM =  0    ITRANS=  0
                           IDIP  =200    MAXIT = 30    MAXITI= 50    MAXDAV= 24    MAXVI = 27    NOSING=  0    NOPAIR=  0
                           MXSHRF=  4    IKCPS =  0    IOPTGM=  2    IOPTOR=  0    REFOPT=  1    IAVDEN=  0    IDELCG=  1
                           IREST =  0    NATORB=  0    IPUNRF=  0    ISEP  =  0    OLDDEN=  0    NSTPRI=  1    GPSFLI= -1
                           CLUSTE=  0    CLOSED=  1    ILSTYP=  0    ITRLS =  0    ICCSD =  0    LOCAL =  0    IBASO =  0
                           MP    =  0    ITEDIS=  2    INCDIS=  1    MAXDIS=  6    ITYDIS=  1    BRUECK=  0    IBRSTR=  3
                           INCBRK=  1    TRIPLE=  0    ICCTYP=  2    IHPPD =  0    ICCNEW=  0    I3EXT = -1    IDEB  =  0
                           IDLEIG=  1    IDFTYP=  1    IMP3  =  0    IPROCS=  0    NOINT =  0    NOREF =  1    IMP2G =  0
                           IHINT =  0    IFDIA =  0    ISPARO=  1    JKSYM =  0    CPHF  =  0    MP2D  = -1    DKINT =  0
                           NPKEX =  1    DRVK  =  1    HLSTRA=  1    WIGNER=  1    DIIS_C=  1    MAXIT_= 50    MATEL =  0
                           SPDEG =  1    MEMCPH=  0    DISM  =  1    KDCPMA=  5    IKDCP_=  0    IREDTH=  0    USECS =  0
                           IPROCC=  0    I3SAVE=  1    IKDCP =  1    USECI =  0    OLDPAI=  0    IPROCI=  0    KEEPCL=  1
                           DISCON=  0    SHIFTE=  0    DIISIN=  0    MOLCAS=  0    MEM_PT=  0    RECORD=  0    RS2C  =  0
                           KEXT  = -1    CIPT2 =  0    DECP0S=  0    I4EXT = -1    NATCOR=  0    RIMP2 =  0    DDCI  = -1
                           IPOLAR=  0    OVBK  =  0

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  7
 Maximum number of shells:             3
 Maximum number of spin couplings:     5

 Reference space:       10 conf       11 CSFs
 N elec internal:       16 conf       20 CSFs
 N-1 el internal:       19 conf       35 CSFs
 N-2 el internal:       16 conf       44 CSFs

 Number of electrons in valence space:                      5
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  5


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     176 (  85  91 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  11

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -54.32406441
     2       -54.32406441
     3       -54.32406441
     4       -54.32406441
     5       -54.32406441
     6       -54.28943217
     7       -54.28943217
     8       -54.28943217
     9       -53.19882058

 Number of blocks in overlap matrix:    24   Smallest eigenvalue:  0.22D-01
 Number of N-2 electron functions:      41
 Number of N-1 electron functions:      35

 Number of internal configurations:                   11
 Number of singly external configurations:          3083
 Number of doubly external configurations:        317461
 Total number of contracted configurations:       320555
 Total number of uncontracted configurations:     343760

 Diagonal Coupling coefficients finished.               Storage:    177486 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    320907 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -54.32406441     0.00000000    -0.14324048  0.24D-01  0.18D-01     0.01
    1     2     2     1.00000000     0.00000000   -54.32406441    -0.00000000    -0.14276821  0.24D-01  0.18D-01     0.01
    1     3     3     1.00000000     0.00000000   -54.32406441     0.00000000    -0.14296324  0.24D-01  0.18D-01     0.01
    1     4     4     1.00000000     0.00000000   -54.32406441    -0.00000000    -0.14312993  0.24D-01  0.18D-01     0.01
    1     5     5     1.00000000     0.00000000   -54.32406441     0.00000000    -0.14363153  0.25D-01  0.18D-01     0.01
    1     6     6     1.00000000     0.00000000   -54.28943217    -0.00000000    -0.13191749  0.17D-01  0.22D-01     0.01
    1     7     7     1.00000000     0.00000000   -54.28943217    -0.00000000    -0.13216468  0.17D-01  0.22D-01     0.01
    1     8     8     1.00000000     0.00000000   -54.28943217     0.00000000    -0.13199451  0.17D-01  0.22D-01     0.01
    2     1     1     1.03902439    -0.13771410   -54.46177851    -0.13771410    -0.00343598  0.28D-03  0.58D-03     3.04
    2     2     2     1.03922368    -0.13766588   -54.46173029    -0.13766588    -0.00349030  0.30D-03  0.59D-03     3.04
    2     3     3     1.03890797    -0.13766504   -54.46172945    -0.13766504    -0.00346205  0.29D-03  0.58D-03     3.04
    2     4     4     1.03894607    -0.13765269   -54.46171710    -0.13765269    -0.00347080  0.29D-03  0.58D-03     3.04
    2     5     5     1.03907820    -0.13763818   -54.46170259    -0.13763818    -0.00349360  0.30D-03  0.58D-03     3.04
    2     6     6     1.03716908    -0.12879793   -54.41823010    -0.12879793    -0.00325128  0.32D-03  0.59D-03     3.04
    2     7     7     1.03715561    -0.12877295   -54.41820512    -0.12877295    -0.00327161  0.32D-03  0.59D-03     3.04
    2     8     8     1.03716732    -0.12875832   -54.41819049    -0.12875832    -0.00328575  0.32D-03  0.60D-03     3.04
    3     1     1     1.04422795    -0.14143648   -54.46550089    -0.00372238    -0.00019348  0.79D-04  0.24D-04     6.06
    3     2     2     1.04421576    -0.14143394   -54.46549835    -0.00376806    -0.00019513  0.79D-04  0.25D-04     6.06
    3     3     3     1.04418008    -0.14142596   -54.46549037    -0.00376091    -0.00019833  0.79D-04  0.25D-04     6.06
    3     4     4     1.04417606    -0.14142561   -54.46549002    -0.00377292    -0.00019855  0.79D-04  0.25D-04     6.06
    3     5     5     1.04416461    -0.14142500   -54.46548941    -0.00378683    -0.00019852  0.78D-04  0.25D-04     6.06
    3     6     6     1.04246978    -0.13236964   -54.42180181    -0.00357171    -0.00023196  0.15D-03  0.24D-04     6.06
    3     7     7     1.04246219    -0.13236735   -54.42179952    -0.00359440    -0.00023366  0.15D-03  0.24D-04     6.06
    3     8     8     1.04245643    -0.13236675   -54.42179892    -0.00360843    -0.00023403  0.15D-03  0.24D-04     6.06
    4     1     1     1.04642020    -0.14168553   -54.46574994    -0.00024905    -0.00001997  0.60D-05  0.28D-05     9.08
    4     2     2     1.04641845    -0.14168543   -54.46574984    -0.00025148    -0.00002009  0.60D-05  0.28D-05     9.08
    4     3     3     1.04640980    -0.14168378   -54.46574819    -0.00025782    -0.00002126  0.64D-05  0.28D-05     9.08
    4     4     4     1.04641103    -0.14168373   -54.46574814    -0.00025812    -0.00002128  0.64D-05  0.28D-05     9.08
    4     5     5     1.04641161    -0.14168361   -54.46574802    -0.00025861    -0.00002138  0.65D-05  0.28D-05     9.08
    4     6     6     1.04596141    -0.13268756   -54.42211973    -0.00031792    -0.00002853  0.89D-05  0.40D-05     9.08
    4     7     7     1.04595586    -0.13268752   -54.42211969    -0.00032016    -0.00002852  0.89D-05  0.40D-05     9.08
    4     8     8     1.04595359    -0.13268750   -54.42211968    -0.00032076    -0.00002851  0.89D-05  0.40D-05     9.08
    5     1     1     1.04686544    -0.14171217   -54.46577658    -0.00002664    -0.00000164  0.46D-06  0.23D-06    12.13
    5     2     2     1.04686278    -0.14171214   -54.46577655    -0.00002671    -0.00000166  0.46D-06  0.23D-06    12.13
    5     3     3     1.04685940    -0.14171205   -54.46577646    -0.00002828    -0.00000173  0.48D-06  0.24D-06    12.13
    5     4     4     1.04685790    -0.14171203   -54.46577644    -0.00002830    -0.00000174  0.48D-06  0.24D-06    12.13
    5     5     5     1.04685791    -0.14171203   -54.46577644    -0.00002842    -0.00000175  0.48D-06  0.24D-06    12.13
    5     6     6     1.04661225    -0.13272385   -54.42215603    -0.00003630    -0.00000279  0.72D-06  0.45D-06    12.13
    5     7     7     1.04660998    -0.13272384   -54.42215601    -0.00003633    -0.00000280  0.72D-06  0.46D-06    12.13
    5     8     8     1.04661016    -0.13272384   -54.42215601    -0.00003633    -0.00000281  0.72D-06  0.46D-06    12.13
    6     1     1     1.04690608    -0.14171423   -54.46577864    -0.00000206    -0.00000016  0.55D-07  0.22D-07    15.20
    6     2     2     1.04690595    -0.14171423   -54.46577864    -0.00000209    -0.00000016  0.57D-07  0.22D-07    15.20
    6     3     3     1.04690396    -0.14171422   -54.46577863    -0.00000217    -0.00000017  0.59D-07  0.23D-07    15.20
    6     4     4     1.04690405    -0.14171422   -54.46577863    -0.00000219    -0.00000017  0.60D-07  0.23D-07    15.20
    6     5     5     1.04690400    -0.14171422   -54.46577863    -0.00000219    -0.00000017  0.60D-07  0.23D-07    15.20
    6     6     6     1.04667924    -0.13272729   -54.42215946    -0.00000344    -0.00000032  0.13D-06  0.44D-07    15.20
    6     7     7     1.04667938    -0.13272729   -54.42215946    -0.00000344    -0.00000032  0.13D-06  0.44D-07    15.20
    6     8     8     1.04667933    -0.13272729   -54.42215946    -0.00000345    -0.00000033  0.13D-06  0.44D-07    15.20
    7     1     1     1.04692792    -0.14171443   -54.46577884    -0.00000019    -0.00000002  0.48D-08  0.22D-08    18.23
    7     2     2     1.04692779    -0.14171443   -54.46577884    -0.00000020    -0.00000002  0.49D-08  0.22D-08    18.23
    7     3     3     1.04692682    -0.14171443   -54.46577884    -0.00000021    -0.00000002  0.53D-08  0.23D-08    18.23
    7     4     4     1.04692672    -0.14171443   -54.46577884    -0.00000021    -0.00000002  0.53D-08  0.24D-08    18.23
    7     5     5     1.04692665    -0.14171443   -54.46577884    -0.00000021    -0.00000002  0.53D-08  0.24D-08    18.23
    7     6     6     1.04673702    -0.13272769   -54.42215986    -0.00000040    -0.00000004  0.11D-07  0.56D-08    18.23
    7     7     7     1.04673701    -0.13272769   -54.42215986    -0.00000040    -0.00000004  0.11D-07  0.56D-08    18.23
    7     8     8     1.04673705    -0.13272769   -54.42215986    -0.00000040    -0.00000004  0.11D-07  0.56D-08    18.23
    8     1     1     1.04692792    -0.14171443   -54.46577884    -0.00000000    -0.00000002  0.48D-08  0.22D-08    19.43
    8     2     2     1.04692779    -0.14171443   -54.46577884    -0.00000000    -0.00000002  0.49D-08  0.22D-08    19.43
    8     3     3     1.04692682    -0.14171443   -54.46577884    -0.00000000    -0.00000002  0.53D-08  0.23D-08    19.43
    8     4     4     1.04692672    -0.14171443   -54.46577884    -0.00000000    -0.00000002  0.53D-08  0.24D-08    19.43
    8     5     5     1.04692665    -0.14171443   -54.46577884    -0.00000000    -0.00000002  0.53D-08  0.24D-08    19.43
    8     6     6     1.04675864    -0.13272774   -54.42215991    -0.00000005    -0.00000000  0.71D-09  0.33D-09    19.43
    8     7     7     1.04675865    -0.13272774   -54.42215991    -0.00000005    -0.00000000  0.71D-09  0.33D-09    19.43
    8     8     8     1.04675862    -0.13272774   -54.42215991    -0.00000005    -0.00000000  0.71D-09  0.33D-09    19.43


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.1%   0.2%
 P   0.4%   3.6%  16.5%

 Initialization:   0.1%
 Other:           79.3%

 Total CPU:       19.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\/          -0.5706070   0.7934628   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 2//\           0.7934628   0.5706071   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 220/           0.0000000   0.0000000   0.0000000   0.0000000   0.6910778   0.0000000   0.0000000   0.6806047
 22/0           0.0000000   0.0000000   0.0000000   0.6910778   0.0000000   0.6806047   0.0000000   0.0000000
 2/20           0.0000000   0.0000000  -0.6910777   0.0000000   0.0000000   0.0000000   0.6806047   0.0000000
 202/           0.0000000   0.0000000   0.0000000   0.0000000  -0.6910776   0.0000000   0.0000000   0.6806047
 2/02           0.0000000   0.0000000   0.6910776   0.0000000   0.0000000   0.0000000   0.6806047   0.0000000
 20/2           0.0000000   0.0000000   0.0000000  -0.6910776   0.0000000   0.6806047   0.0000000   0.0000000
 0/22           0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.1699547   0.0000000
 02/2           0.0000000   0.0000000   0.0000000   0.0000002   0.0000000  -0.1699547   0.0000000   0.0000000
 022/           0.0000000   0.0000000   0.0000000   0.0000000   0.0000003   0.0000000   0.0000000  -0.1699546

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \//\  10.1    -0.0058355   0.0582444   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 \//\  14.1     0.0000000   0.0000000   0.0000000   0.0000000  -0.0522049   0.0000000  -0.0000000  -0.0026399
 \//\  11.1     0.0000000   0.0000000   0.0000000   0.0522047  -0.0000000   0.0026399   0.0000000  -0.0000000
 2/0\   8.2     0.0000000  -0.0000000   0.0323977   0.0000000   0.0000000  -0.0000000   0.0513686  -0.0000000
 2/0\   9.2     0.0000000   0.0000000  -0.0000000   0.0000000  -0.0323977  -0.0000000   0.0000000  -0.0513686
 2/\0   9.2    -0.0000000   0.0000000   0.0000000  -0.0323977   0.0000000  -0.0513685   0.0000000  -0.0000000
 20/\   8.2    -0.0000000  -0.0000000  -0.0000000  -0.0323982   0.0000000   0.0513685   0.0000000   0.0000000
 2/\0   7.2     0.0000000  -0.0000000  -0.0323976   0.0000000   0.0000000   0.0000000   0.0513683  -0.0000000
 20/\   7.2     0.0000000   0.0000000  -0.0000000  -0.0000000   0.0323980  -0.0000000   0.0000000  -0.0513683

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.147219    0.000000    0.000000    0.000000    0.966179    0.000000    0.000000    0.000000
 2           0.966179    0.000000    0.000000    0.000000   -0.147219    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.000000    0.977331    0.000000    0.000000    0.000000   -0.000000
 4           0.000000    0.977331    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.977331    0.000000    0.000000    0.000000    0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.000000    0.977378    0.000000    0.000000
 7           0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.977378
 8           0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.977378    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.977331    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.977331    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.977331    0.000000    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.977331    0.000000    0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.977331    0.000000    0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.000000    0.977378    0.000000    0.000000
 7           0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.977378    0.000000
 8           0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.977378


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96617915 (fixed)   0.97733085 (relaxed)   0.97733085 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.08253455
 Singles      0.02582578   -0.05530670   -0.05632223
 Pairs        0.02110214    0.00000000   -0.00285765
 Total        1.04692792   -0.05530670   -0.14171443
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32406441
 Nuclear energy                         0.00000000
 Kinetic energy                        54.66763370
 One electron energy                  -73.74292456
 Two electron energy                   19.27714572
 Virial quotient                       -0.99630760
 Correlation energy                    -0.14171443
 !MRCI STATE 1.2 Energy               -54.465778838534

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.47242920 (Davidson, fixed reference)
 Cluster corrected energies           -54.47242920 (Davidson, relaxed reference)
 Cluster corrected energies           -54.47242920 (Davidson, rotated reference)

 Cluster corrected energies           -54.46910219 (Pople, fixed reference)
 Cluster corrected energies           -54.46910219 (Pople, relaxed reference)
 Cluster corrected energies           -54.46910219 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96617921 (fixed)   0.97733091 (relaxed)   0.97733091 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals   -0.00000000    0.00000000   -0.08253469
 Singles      0.02582558   -0.05530657   -0.05632218
 Pairs        0.02110220   -0.00000000   -0.00285756
 Total        1.04692779   -0.05530657   -0.14171443
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32406441
 Nuclear energy                         0.00000000
 Kinetic energy                        54.66763758
 One electron energy                  -73.74292782
 Two electron energy                   19.27714898
 Virial quotient                       -0.99630753
 Correlation energy                    -0.14171443
 !MRCI STATE 2.2 Energy               -54.465778837925

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.47242918 (Davidson, fixed reference)
 Cluster corrected energies           -54.47242918 (Davidson, relaxed reference)
 Cluster corrected energies           -54.47242918 (Davidson, rotated reference)

 Cluster corrected energies           -54.46910218 (Pople, fixed reference)
 Cluster corrected energies           -54.46910218 (Pople, relaxed reference)
 Cluster corrected energies           -54.46910218 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97733136 (fixed)   0.97733136 (relaxed)   0.97733136 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.08253466
 Singles      0.02582473   -0.05530667   -0.05632212
 Pairs        0.02110209   -0.00000001   -0.00285765
 Total        1.04692682   -0.05530668   -0.14171443
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32406441
 Nuclear energy                         0.00000000
 Kinetic energy                        54.66765090
 One electron energy                  -73.74294361
 Two electron energy                   19.27716477
 Virial quotient                       -0.99630728
 Correlation energy                    -0.14171443
 !MRCI STATE 3.2 Energy               -54.465778836186

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.47242904 (Davidson, fixed reference)
 Cluster corrected energies           -54.47242904 (Davidson, relaxed reference)
 Cluster corrected energies           -54.47242904 (Davidson, rotated reference)

 Cluster corrected energies           -54.46910211 (Pople, fixed reference)
 Cluster corrected energies           -54.46910211 (Pople, relaxed reference)
 Cluster corrected energies           -54.46910211 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97733141 (fixed)   0.97733141 (relaxed)   0.97733141 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.08253473
 Singles      0.02582466   -0.05530661   -0.05632212
 Pairs        0.02110206   -0.00000000   -0.00285758
 Total        1.04692672   -0.05530661   -0.14171443
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32406441
 Nuclear energy                         0.00000000
 Kinetic energy                        54.66764570
 One electron energy                  -73.74294009
 Two electron energy                   19.27716126
 Virial quotient                       -0.99630738
 Correlation energy                    -0.14171443
 !MRCI STATE 4.2 Energy               -54.465778836003

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.47242903 (Davidson, fixed reference)
 Cluster corrected energies           -54.47242903 (Davidson, relaxed reference)
 Cluster corrected energies           -54.47242903 (Davidson, rotated reference)

 Cluster corrected energies           -54.46910210 (Pople, fixed reference)
 Cluster corrected energies           -54.46910210 (Pople, relaxed reference)
 Cluster corrected energies           -54.46910210 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97733145 (fixed)   0.97733145 (relaxed)   0.97733145 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.08253471
 Singles      0.02582462   -0.05530664   -0.05632209
 Pairs        0.02110203    0.00000000   -0.00285762
 Total        1.04692665   -0.05530664   -0.14171443
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32406441
 Nuclear energy                         0.00000000
 Kinetic energy                        54.66764681
 One electron energy                  -73.74294114
 Two electron energy                   19.27716231
 Virial quotient                       -0.99630736
 Correlation energy                    -0.14171443
 !MRCI STATE 5.2 Energy               -54.465778835799

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.47242902 (Davidson, fixed reference)
 Cluster corrected energies           -54.47242902 (Davidson, relaxed reference)
 Cluster corrected energies           -54.47242902 (Davidson, rotated reference)

 Cluster corrected energies           -54.46910210 (Pople, fixed reference)
 Cluster corrected energies           -54.46910210 (Pople, relaxed reference)
 Cluster corrected energies           -54.46910210 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.97737760 (fixed)   0.97740988 (relaxed)   0.97737760 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006605   -0.00000000   -0.09749295
 Singles      0.02016448   -0.03067818   -0.03186383
 Pairs        0.02659725    0.00000000   -0.00337096
 Total        1.04682778   -0.03067818   -0.13272774
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.28943217
 Nuclear energy                         0.00000000
 Kinetic energy                        54.62633490
 One electron energy                  -73.65818361
 Two electron energy                   19.23602370
 Virial quotient                       -0.99626233
 Correlation energy                    -0.13272774
 !MRCI STATE 6.2 Energy               -54.422159908957

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.42837525 (Davidson, fixed reference)
 Cluster corrected energies           -54.42836608 (Davidson, relaxed reference)
 Cluster corrected energies           -54.42837525 (Davidson, rotated reference)

 Cluster corrected energies           -54.42526588 (Pople, fixed reference)
 Cluster corrected energies           -54.42526130 (Pople, relaxed reference)
 Cluster corrected energies           -54.42526588 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97737759 (fixed)   0.97740987 (relaxed)   0.97737759 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006605   -0.00000000   -0.00000837
 Singles      0.02016450   -0.03067819   -0.03186383
 Pairs        0.02659724   -0.10204954   -0.10085553
 Total        1.04682779   -0.13272774   -0.13272774
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.28943217
 Nuclear energy                         0.00000000
 Kinetic energy                        54.62633456
 One electron energy                  -73.65818329
 Two electron energy                   19.23602338
 Virial quotient                       -0.99626234
 Correlation energy                    -0.13272774
 !MRCI STATE 7.2 Energy               -54.422159908957

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.42837526 (Davidson, fixed reference)
 Cluster corrected energies           -54.42836608 (Davidson, relaxed reference)
 Cluster corrected energies           -54.42837526 (Davidson, rotated reference)

 Cluster corrected energies           -54.42526588 (Pople, fixed reference)
 Cluster corrected energies           -54.42526130 (Pople, relaxed reference)
 Cluster corrected energies           -54.42526588 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97737761 (fixed)   0.97740989 (relaxed)   0.97737761 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006605    0.00000000   -0.09749295
 Singles      0.02016445   -0.03067818   -0.03186382
 Pairs        0.02659726    0.00000000   -0.00337097
 Total        1.04682775   -0.03067818   -0.13272774
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.28943217
 Nuclear energy                         0.00000000
 Kinetic energy                        54.62633500
 One electron energy                  -73.65818392
 Two electron energy                   19.23602401
 Virial quotient                       -0.99626233
 Correlation energy                    -0.13272774
 !MRCI STATE 8.2 Energy               -54.422159908955

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.42837525 (Davidson, fixed reference)
 Cluster corrected energies           -54.42836607 (Davidson, relaxed reference)
 Cluster corrected energies           -54.42837525 (Davidson, rotated reference)

 Cluster corrected energies           -54.42526588 (Pople, fixed reference)
 Cluster corrected energies           -54.42526130 (Pople, relaxed reference)
 Cluster corrected energies           -54.42526588 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       22.24       700     1000      520     2140     5203     5201   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *        25.13     19.83      0.87      1.48      2.75
 REAL TIME  *        27.88 SEC
 DISK USED  *        55.50 MB (local),      515.88 MB (total)
 SF USED    *       189.94 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =       -54.47242920  AU                              
 SETTING HLSDIAG(3)     =       -54.47242918  AU                              
 SETTING HLSDIAG(4)     =       -54.47242904  AU                              
 SETTING HLSDIAG(5)     =       -54.47242903  AU                              
 SETTING HLSDIAG(6)     =       -54.47242902  AU                              
 SETTING HLSDIAG(7)     =       -54.42837525  AU                              
 SETTING HLSDIAG(8)     =       -54.42837526  AU                              
 SETTING HLSDIAG(9)     =       -54.42837525  AU                              


        HLSDIAG
    -54.55818073
    -54.47242920
    -54.47242918
    -54.47242904
    -54.47242903
    -54.47242902
    -54.42837525
    -54.42837526
    -54.42837525
                                                  

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

 Time for Seward_LS:       7.67 sec

       80813971. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    19749 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.67 sec, REAL time:      8.03 sec


 SORTLS1 read    80838038. and wrote    80838038. SO integrals in   317 records. CPU time:      0.81 sec, REAL time:      1.27 sec
 SORTLS2 read    80838038. and wrote   406960599. SO integrals in    15 records. CPU time:      1.00 sec, REAL time:      1.74 sec

 FILE SIZES: FILE 1:  1329.2 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1329.2 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1267.66       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       22.24       700     1000      520     2140     5203     5201   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI       INT
 CPU TIMES  *        35.16      9.99     19.83      0.87      1.48      2.75
 REAL TIME  *        41.11 SEC
 DISK USED  *        55.69 MB (local),        4.60 GB (total)
 SF USED    *         1.21 GB
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
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:    -54.553437
 Replaced energies:    -54.558181

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:    -54.465779    -54.465779    -54.465779    -54.465779    -54.465779    -54.422160    -54.422160    -54.422160
 Replaced energies:    -54.472429    -54.472429    -54.472429    -54.472429    -54.472429    -54.428375    -54.428375    -54.428375



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -54.55818073

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.00      50.25

    2   1.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.01       0.00       0.00       0.00

    3   1.2  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.01       0.00     -29.01

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00   18820.29       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       4.01       0.00       0.00       0.00

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   18820.29       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.42      -0.00       0.00       0.00

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00   18820.32       0.00       0.00       0.00
                           -0.00       0.01       0.00      -0.00      -4.01      -0.42       0.00      -0.00      -0.00      -0.00

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18820.32       0.00       0.00
                            0.01      -0.00      -0.01      -0.00      -0.00       0.00       0.00      -0.00       2.00       0.00

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18820.33       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -2.00      -0.00      36.21

   10   6.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   28489.01
                          -50.25      -0.00      29.01      -0.00      -0.00      -0.00       0.00      -0.00     -36.21      -0.00

   11   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      58.03      -0.00      -0.00      -4.17      41.61       0.00       0.00       0.00      -0.00

   12   8.2  0.5  0.5      50.23       0.00      29.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      36.21      -0.00      -0.93

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -2.32       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -1.68      -0.00     -38.12

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       3.23       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -3.67      -0.00      17.19

   15   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       2.02       0.00      36.22
                           -0.00      -0.00       0.01       0.00       0.00      -0.00      -0.00      -0.00      -2.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -2.02      -0.00      -0.00      -0.00
                           -0.00       0.01      -0.00      -0.01       1.68       3.67       0.00       0.00      -0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       2.32      -3.23      -0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       2.00       0.00       0.00      -0.00

   18   6.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00     -36.22       0.00       0.00       0.00
                           -0.00     -29.01      -0.00      50.25      38.12     -17.19      -0.00      -0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -36.22       0.00      -0.86
                           -0.00       0.00      58.03      -0.00      -0.00       0.00       0.00      -0.00     -36.21       0.00

   20   8.2  0.5 -0.5       0.00      29.00       0.00      50.23      33.96      24.42      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      36.21      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5       0.00      50.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      29.00
                          -58.03      -0.00       0.00       0.00       0.00      -0.01      -0.00      29.01      -0.00       0.00

    3   1.2  1.5 -0.5       0.00      29.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.01       0.00       0.00       0.00     -58.03      -0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      50.23
                            0.00       0.00      -0.00      -0.00      -0.00       0.01       0.00     -50.25       0.00      -0.00

    5   1.2  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00       0.00       2.32      -0.00       0.00      33.96
                            4.17       0.00       0.00       0.00      -0.00      -1.68      -0.00     -38.12       0.00      -0.00

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -3.23      -0.00      -0.00      24.42
                          -41.61       0.00      -0.00       0.00       0.00      -3.67      -0.00      17.19      -0.00       0.00

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -2.02      -0.00     -36.22       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -2.00       0.00      -0.00     -36.21

    8   4.2  0.5  0.5       0.00       0.00      -0.00       0.00       2.02      -0.00       0.00       0.00     -36.22       0.00
                           -0.00     -36.21       1.68       3.67       0.00      -0.00      -0.00       0.00       0.00       0.00

    9   5.2  0.5  0.5       0.00       0.00      -2.32       3.23       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       2.00       0.00      -0.00      -0.00      36.21       0.00

   10   6.2  0.5  0.5       0.00       0.00       0.00       0.00      36.22      -0.00      -0.00       0.00      -0.86      -0.00
                            0.00       0.93      38.12     -17.19      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   11   7.2  0.5  0.5   28489.01       0.00      -0.00       0.00      -0.00      36.22      -0.00       0.86       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00     -36.21       0.00      -0.00      -0.93

   12   8.2  0.5  0.5       0.00   28489.01     -33.96     -24.42       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      36.21      -0.00      -0.00      -0.00       0.93      -0.00

   13   1.2  0.5 -0.5      -0.00     -33.96   18820.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -4.01      -0.00      -0.00      -0.00      -4.17      -0.00

   14   2.2  0.5 -0.5       0.00     -24.42       0.00   18820.29       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.42       0.00      -0.00      -0.00      41.61      -0.00

   15   3.2  0.5 -0.5      -0.00       0.00       0.00       0.00   18820.32       0.00       0.00       0.00       0.00       0.00
                           -0.00     -36.21       4.01       0.42      -0.00       0.00       0.00       0.00       0.00      -0.00

   16   4.2  0.5 -0.5      36.22      -0.00       0.00       0.00       0.00   18820.32       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -2.00      -0.00       0.00      36.21

   17   5.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00   18820.33       0.00       0.00       0.00
                           36.21       0.00       0.00       0.00      -0.00       2.00       0.00     -36.21       0.00      -0.00

   18   6.2  0.5 -0.5       0.86       0.00       0.00       0.00       0.00       0.00       0.00   28489.01       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      36.21       0.00      -0.00      -0.93

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   28489.01       0.00
                            0.00      -0.93       4.17     -41.61      -0.00      -0.00      -0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   28489.01
                            0.93       0.00       0.00       0.00       0.00     -36.21       0.00       0.93      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -54.55818154    -0.00000081       -0.18      0.00000000        0.00      0.0000
     2   -54.55818154    -0.00000081       -0.18      0.00000000        0.00      0.0000
     3   -54.55818154    -0.00000081       -0.18      0.00000000        0.00      0.0000
     4   -54.55818154    -0.00000081       -0.18      0.00000000        0.00      0.0000
     5   -54.47244758     0.08573315    18816.25      0.08573396    18816.43      2.3329
     6   -54.47244758     0.08573315    18816.25      0.08573396    18816.43      2.3329
     7   -54.47244740     0.08573333    18816.29      0.08573414    18816.47      2.3329
     8   -54.47244740     0.08573333    18816.29      0.08573414    18816.47      2.3329
     9   -54.47244722     0.08573351    18816.33      0.08573432    18816.51      2.3329
    10   -54.47244722     0.08573351    18816.33      0.08573432    18816.51      2.3329
    11   -54.47240493     0.08577580    18825.61      0.08577660    18825.79      2.3341
    12   -54.47240493     0.08577580    18825.61      0.08577660    18825.79      2.3341
    13   -54.47240454     0.08577620    18825.70      0.08577700    18825.88      2.3341
    14   -54.47240454     0.08577620    18825.70      0.08577700    18825.88      2.3341
    15   -54.42837568     0.12980505    28488.92      0.12980586    28489.09      3.5322
    16   -54.42837568     0.12980505    28488.92      0.12980586    28489.09      3.5322
    17   -54.42837527     0.12980546    28489.01      0.12980627    28489.18      3.5322
    18   -54.42837527     0.12980546    28489.01      0.12980627    28489.18      3.5322
    19   -54.42836701     0.12981372    28490.82      0.12981453    28491.00      3.5324
    20   -54.42836701     0.12981372    28490.82      0.12981453    28491.00      3.5324


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.018454685  -0.499792190   0.865814363  -0.015048575  -0.000000090  -0.000000204   0.000000028   0.000000423
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.865355401   0.031953012   0.008691417   0.500057267   0.000000152  -0.000000067   0.000000713  -0.000000047
                        -0.000000221  -0.000000008  -0.000000003  -0.000000144   0.000000022  -0.000000010  -0.000000052   0.000000003

    3    1.2  1.5 -0.5  -0.031953009   0.865355403   0.500057265  -0.008691421  -0.000000068  -0.000000154  -0.000000047  -0.000000715
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    4    1.2  1.5 -1.5  -0.499792192  -0.018454681   0.015048577   0.865814362   0.000000202  -0.000000089  -0.000000422   0.000000028
                         0.000000118   0.000000004  -0.000000004  -0.000000234   0.000000029  -0.000000013   0.000000031  -0.000000002

    5    1.2  0.5  0.5  -0.000003961  -0.000000146   0.000000096   0.000005507   0.582370252  -0.258114124   0.242913496  -0.015924964
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.083076000  -0.036820372  -0.017880222   0.001172195

    6    2.2  0.5  0.5   0.000005506   0.000000203   0.000000069   0.000003962   0.391594530  -0.173559825  -0.390632437   0.025609148
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.055861554  -0.024758572   0.028753423  -0.001885022

    7    3.2  0.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.060583009   0.026851183   0.043877821  -0.002876550
                         0.000002749   0.000000102  -0.000000109  -0.000006247   0.424692351  -0.188229213   0.596106425  -0.039079646

    8    4.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000101  -0.000002747  -0.000006247   0.000000109  -0.171229655  -0.386337082   0.041512886   0.633222170

    9    5.2  0.5  0.5   0.000000250  -0.000006782  -0.000000001   0.000000000   0.000359347   0.000810778  -0.010310560  -0.157273456
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   10    6.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000065099  -0.001763020   0.001018061  -0.000017695  -0.000002455  -0.000005539  -0.000000435  -0.000006630

   11    7.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000602  -0.000000267   0.000000545  -0.000000036
                        -0.001762704  -0.000065087  -0.000017704  -0.001018608  -0.000004220   0.000001870   0.000007404  -0.000000485

   12    8.2  0.5  0.5  -0.000000012   0.000000316  -0.002035771   0.000035383   0.000004996   0.000011272  -0.000000056  -0.000000859
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   13    1.2  0.5 -0.5  -0.000000146   0.000003961  -0.000005507   0.000000096   0.260727138   0.588265868   0.015968047   0.243570666
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   14    2.2  0.5 -0.5   0.000000203  -0.000005506  -0.000003962   0.000000069   0.175316855   0.395558831  -0.025678430  -0.391689240
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   15    3.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000102   0.000002749  -0.000006247   0.000000109  -0.190134748  -0.428991718  -0.039185371  -0.597719109

   16    4.2  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.054559241  -0.024181370   0.046484057  -0.003047410
                         0.000002747   0.000000101   0.000000109   0.000006247  -0.382465201   0.169513587   0.631513696  -0.041400882

   17    5.2  0.5 -0.5  -0.000006782  -0.000000250  -0.000000000  -0.000000001  -0.000802652   0.000355746   0.156849123  -0.010282741
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000114500   0.000050748  -0.011545250   0.000756885

   18    6.2  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000782  -0.000000347  -0.000000487   0.000000032
                         0.001763020   0.000065099  -0.000017695  -0.001018061  -0.000005483   0.000002430  -0.000006612   0.000000433

   19    7.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000065087  -0.001762704  -0.001018608   0.000017704   0.000001889   0.000004262  -0.000000487  -0.000007424

   20    8.2  0.5 -0.5   0.000000316   0.000000012  -0.000035383  -0.002035771  -0.000011159   0.000004946   0.000000857  -0.000000056
                         0.000000000   0.000000000   0.000000000   0.000000001  -0.000001592   0.000000706  -0.000000063   0.000000004


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000057  -0.000000000  -0.000015837  -0.000002511   0.000027503   0.000000375   0.002157974  -0.000000215
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000000000   0.000000110   0.000000693  -0.000004370  -0.000000010   0.000000742  -0.000000018  -0.000176582
                        -0.000000000   0.000000022  -0.000004139   0.000026106  -0.000000224   0.000016410   0.000000123   0.001236775

    3    1.2  1.5 -0.5   0.000000112  -0.000000000   0.000026469   0.000004197   0.000016427   0.000000224   0.001249317  -0.000000124
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    4    1.2  1.5 -1.5   0.000000000  -0.000000056  -0.000000415   0.000002615  -0.000000017   0.000001242  -0.000000030  -0.000305015
                         0.000000000  -0.000000011   0.000002477  -0.000015620  -0.000000375   0.000027475   0.000000213   0.002136309

    5    1.2  0.5  0.5   0.000000000  -0.351001959   0.009722585  -0.061321625   0.000312081  -0.022875640  -0.000000060  -0.000607681
                        -0.000000000  -0.070694662  -0.058077658   0.366303425   0.006905022  -0.506139919   0.000000423   0.004256173

    6    2.2  0.5  0.5  -0.000000000   0.500376224  -0.013096842   0.082603506   0.000231737  -0.016986383  -0.000000044  -0.000438098
                         0.000000000   0.100779860   0.078233708  -0.493430287   0.005127347  -0.375835898   0.000000305   0.003068417

    7    3.2  0.5  0.5  -0.000000000  -0.027821502  -0.050212876   0.316699217   0.007406888  -0.542926807   0.000000452   0.004540562
                        -0.000000000   0.138134922  -0.008405969   0.053017551  -0.000334764   0.024538270   0.000000064   0.000648285

    8    4.2  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.132289857  -0.000000000   0.304587576   0.048292567   0.553207920   0.007547148  -0.004592884   0.000000457

    9    5.2  0.5  0.5   0.757569168   0.000000000   0.625532922   0.099178671   0.009537756   0.000130119  -0.000006275   0.000000001
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   10    6.2  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000009688  -0.000000000   0.005903448   0.000935996  -0.003330825  -0.000045441  -0.417015694   0.000041486

   11    7.2  0.5  0.5  -0.000000000   0.000001786   0.000907082  -0.005721088   0.000047850  -0.003507405  -0.000041235  -0.414486475
                         0.000000000  -0.000008869   0.000151852  -0.000957748  -0.000002163   0.000158522  -0.000005887  -0.059178912

   12    8.2  0.5  0.5   0.000000625   0.000000000  -0.000102744  -0.000016290   0.006841571   0.000093336   0.806672349  -0.000080251
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   13    1.2  0.5 -0.5   0.358050430   0.000000000  -0.371400782  -0.058885847   0.506656602   0.006912071  -0.004299335   0.000000428
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   14    2.2  0.5 -0.5  -0.510424280  -0.000000000   0.500296699   0.079322382   0.376219562   0.005132581  -0.003099534   0.000000308
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   15    3.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.140908810   0.000000000  -0.321106298  -0.050911622   0.543481043   0.007414449  -0.004586608   0.000000456

   16    4.2  0.5 -0.5   0.000000000  -0.026119747  -0.047629767   0.300407208  -0.007539451   0.552643764  -0.000000452  -0.004546775
                        -0.000000000   0.129685639  -0.007973539   0.050290161   0.000340755  -0.024977440  -0.000000065  -0.000649172

   17    5.2  0.5 -0.5  -0.000000000   0.742655893   0.016375295  -0.103281138  -0.000005875   0.000430631   0.000000000   0.000000887
                         0.000000000   0.149576965  -0.097817475   0.616947682  -0.000129986   0.009528029  -0.000000001  -0.000006212

   18    6.2  0.5 -0.5  -0.000000000  -0.000001913  -0.000923149   0.005822425   0.000045394  -0.003327428  -0.000041070  -0.412829137
                        -0.000000000   0.000009498  -0.000154541   0.000974713  -0.000002052   0.000150387  -0.000005864  -0.058942283

   19    7.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000009047  -0.000000000   0.005800701   0.000919705   0.003510985   0.000047899   0.418689840  -0.000041653

   20    8.2  0.5 -0.5  -0.000000000   0.000000613  -0.000002690   0.000016964  -0.000004214   0.000308898  -0.000011343  -0.114017556
                         0.000000000   0.000000123   0.000016067  -0.000101334  -0.000093241   0.006834594   0.000079445   0.798573901


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.001249852   0.000001510   0.000035642   0.000000152
                         0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000001409  -0.001166292   0.000000002  -0.000000403
                         0.000002195   0.001816753  -0.000000089   0.000020830

    3    1.2  1.5 -0.5   0.002158895  -0.000002609   0.000020834   0.000000089
                         0.000000000   0.000000000   0.000000000   0.000000000

    4    1.2  1.5 -1.5   0.000000816   0.000675203   0.000000003  -0.000000690
                        -0.000001271  -0.001051775  -0.000000152   0.000035636

    5    1.2  0.5  0.5   0.000002023   0.001674427   0.000000006  -0.000001401
                        -0.000003152  -0.002608282  -0.000000309   0.000072364

    6    2.2  0.5  0.5  -0.000002806  -0.002322578   0.000000004  -0.000001019
                         0.000004372   0.003617918  -0.000000225   0.000052619

    7    3.2  0.5  0.5  -0.000002701  -0.002235112  -0.000000326   0.000076204
                        -0.000001734  -0.001434864  -0.000000006   0.000001475

    8    4.2  0.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.002645162   0.000003196  -0.000076689  -0.000000328

    9    5.2  0.5  0.5  -0.005300062   0.000006404  -0.000000470  -0.000000002
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000

   10    6.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.707522726  -0.000854898   0.570483879   0.002437371

   11    7.2  0.5  0.5  -0.000718510  -0.594647059  -0.002436378   0.570251397
                        -0.000461259  -0.381742763  -0.000047164   0.011039018

   12    8.2  0.5  0.5  -0.001007481   0.000001217   0.590949535   0.002524810
                         0.000000000   0.000000000   0.000000000   0.000000000

   13    1.2  0.5 -0.5   0.003099490  -0.000003745  -0.000072377  -0.000000309
                         0.000000000   0.000000000   0.000000000  -0.000000000

   14    2.2  0.5 -0.5  -0.004299267   0.000005195  -0.000052629  -0.000000225
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

   15    3.2  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000
                         0.002656042  -0.000003209  -0.000076218  -0.000000326

   16    4.2  0.5 -0.5  -0.000002690  -0.002225956   0.000000328  -0.000076674
                        -0.000001727  -0.001428987   0.000000006  -0.000001484

   17    5.2  0.5 -0.5   0.000003460   0.002863234  -0.000000000   0.000000009
                        -0.000005389  -0.004460107   0.000000002  -0.000000470

   18    6.2  0.5 -0.5   0.000719413   0.595394313  -0.002436915   0.570377018
                         0.000461838   0.382222475  -0.000047174   0.011041450

   19    7.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.706634744  -0.000853825  -0.570358234  -0.002436834

   20    8.2  0.5 -0.5   0.000000658   0.000544268   0.000048867  -0.011437553
                        -0.000001024  -0.000847815  -0.002524337   0.590838841


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.034%  24.979%  74.963%   0.023%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5  74.884%   0.102%   0.008%  25.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.102%  74.884%  25.006%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5  24.979%   0.034%   0.023%  74.963%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  34.606%   6.798%   5.933%   0.025%   0.000%  12.820%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  15.647%   3.074%  15.342%   0.066%   0.000%  26.053%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  18.403%   3.615%  35.727%   0.154%   0.000%   1.986%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   2.932%  14.926%   0.172%  40.097%   1.750%   0.000%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   2.473%  57.391%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   6.798%  34.606%   0.025%   5.933%  12.820%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   3.074%  15.647%   0.066%  15.342%  26.053%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   3.615%  18.403%   0.154%  35.727%   1.986%   0.000%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  14.926%   2.932%  40.097%   0.172%   0.000%   1.750%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.473%   0.011%   0.000%  57.391%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.347%  13.794%   0.005%  25.670%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%
    6    2.2  0.5  0.5   0.629%  25.030%   0.003%  14.154%   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%
    7    3.2  0.5  0.5   0.259%  10.311%   0.005%  29.537%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%
    8    4.2  0.5  0.5   9.277%   0.233%  30.604%   0.006%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%
    9    5.2  0.5  0.5  39.129%   0.984%   0.009%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%
   10    6.2  0.5  0.5   0.003%   0.000%   0.001%   0.000%  17.390%   0.000%  50.059%   0.000%  32.545%   0.001%
   11    7.2  0.5  0.5   0.000%   0.003%   0.000%   0.001%   0.000%  17.530%   0.000%  49.933%   0.001%  32.531%
   12    8.2  0.5  0.5   0.000%   0.000%   0.005%   0.000%  65.072%   0.000%   0.000%   0.000%  34.922%   0.001%
   13    1.2  0.5 -0.5  13.794%   0.347%  25.670%   0.005%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5  25.030%   0.629%  14.154%   0.003%   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5  10.311%   0.259%  29.537%   0.005%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.233%   9.277%   0.006%  30.604%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%
   17    5.2  0.5 -0.5   0.984%  39.129%   0.000%   0.009%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%
   18    6.2  0.5 -0.5   0.000%   0.003%   0.000%   0.001%   0.000%  17.390%   0.000%  50.059%   0.001%  32.545%
   19    7.2  0.5 -0.5   0.003%   0.000%   0.001%   0.000%  17.530%   0.000%  49.933%   0.000%  32.531%   0.001%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.005%   0.000%  65.072%   0.000%   0.000%   0.001%  34.922%


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
              1      24     1267.66       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       22.24       700     1000      520     2140     5203     5201   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI       INT
 CPU TIMES  *        46.65     11.49      9.99     19.83      0.87      1.48      2.75
 REAL TIME  *        54.49 SEC
 DISK USED  *        55.69 MB (local),        4.60 GB (total)
 SF USED    *         1.29 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=    -54.428367009310

              CI              CI           MULTI
    -54.42215991    -54.55343746    -54.28943217
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
