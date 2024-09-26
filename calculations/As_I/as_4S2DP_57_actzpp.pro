
 Working directory              : /wrk/irikura/molpro.jVRMAYWbeL/
 Global scratch directory       : /wrk/irikura/molpro.jVRMAYWbeL/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.jVRMAYWbeL/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,As SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={As};
 
 basis=aug-cc-pwCVTZ-PP
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=1
 ND=8
 
 {multi
     closed,6,3
     occ,7,9
     wf,charge=0,sym=PAR,spin=3;state,NQ;
     wf,charge=0,sym=PAR,spin=1;state,ND;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=PAR,spin=3;state,NQ; save,5302.2}
 if NQ.LT.2 then
 hlsdiag(1) = energd
 else
 hlsdiag = energd4
 endif
 
 {ci;wf,sym=PAR,spin=1;state,ND; save,5102.2}
 hlsdiag(NQ+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   As SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Aug-24          TIME: 18:20:31  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =         8.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry As   ECP ECP10MDF                 selected for group  1
 Library entry AS     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry AS     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry AS     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry AS     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry AS     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  AS     23.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   23
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

         1 0.288E-04 0.392E-02 0.215E-01 0.528E-01 0.528E-01 0.528E-01 0.528E-01 0.528E-01
         2 0.878E-02 0.878E-02 0.878E-02 0.215E-01 0.215E-01 0.215E-01 0.180E+00 0.180E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     17.302 MB (compressed) written to integral file ( 18.5%)

     Node minimum: 0.786 MB, node maximum: 2.359 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     72 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.79      0.59
 REAL TIME  *         1.60 SEC
 DISK USED  *        29.18 MB (local),      406.54 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      80 (   40   40)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.296D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.373D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.582D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.472D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.103D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 4 3 5 2 1 1 6 4   3 5 2 1 4 6 2 3 5 1   4 6 5 3 2 1 4 6 3 5   2 71415 812 9111310
                                        3 5 4 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.229D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.810D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.266D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.228D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.228D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.533D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.189D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.240D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 3 2 1 3   1 2 810 5 4 6 7 9 3   1 2 4 5 810 9 7 6 8  10 5 4 9 7 6 3 1 2 5
                                        4 6 810 9 7 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  664  ( 24 closed/active, 360 closed/virtual, 0 active/active, 280 active/virtual )
 Total number of variables:    3894
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   20    0   -331.13679834    -331.15227455   -0.01547621    0.07454914 0.00006741 0.00000000  0.15E+01      1.29
   2    7   12    0   -331.15237524    -331.15242312   -0.00004789    0.00491708 0.00001622 0.00000000  0.92E-01      2.17
   3    7   14    0   -331.15242312    -331.15242312   -0.00000000    0.00000543 0.00000001 0.00000000  0.59E-04      3.09

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.82E-08)
                       Final energy:   -331.15242312
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -331.216703280332
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.81548114
 One electron energy                          -586.90385136
 Two electron energy                           255.68714808
 Virial ratio                                    2.41657302
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -331.153569890010
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73332081
 One electron energy                          -586.58431638
 Two electron energy                           255.43074649
 Virial ratio                                    2.41680086
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -331.153569890009
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73332081
 One electron energy                          -586.58431638
 Two electron energy                           255.43074649
 Virial ratio                                    2.41680086
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -331.153569889870
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73332081
 One electron energy                          -586.58431638
 Two electron energy                           255.43074649
 Virial ratio                                    2.41680086
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -331.153569889848
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73332081
 One electron energy                          -586.58431638
 Two electron energy                           255.43074649
 Virial ratio                                    2.41680086
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -331.153569889808
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.73332081
 One electron energy                          -586.58431638
 Two electron energy                           255.43074650
 Virial ratio                                    2.41680086
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -331.129085119378
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.72958818
 One electron energy                          -586.47706596
 Two electron energy                           255.34798084
 Virial ratio                                    2.41671873
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -331.129085119119
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.72958818
 One electron energy                          -586.47706597
 Two electron energy                           255.34798085
 Virial ratio                                    2.41671873
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -331.129085119079
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.72958818
 One electron energy                          -586.47706597
 Two electron energy                           255.34798085
 Virial ratio                                    2.41671873
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     3.985186186764
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     4.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000000069
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.999999991544
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.014812337023
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>    -0.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.796986257541
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000001098738
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.999999296775
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.203003992998
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999963457
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.000000038273
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.217827555695
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999998901193
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000711681
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     2.782183669978
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000036543
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999961727
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 6 2   3 5 4 1 4 2 3 5 6 1   6 2 3 5 4 1 5 3 6 2   41310141511 812 7 9
                                        3 5 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 2 1 3 1   3 2 5 6 4 810 9 7 1   3 2 9 7 5 810 6 4 9   7 810 5 6 4 2 1 3 7
                                        9 810 5 6 4 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -8.10687     1  1  s    0.99601
    2.1     2.00000    -2.09223     1  1  d2-  1.00016
    3.1     2.00000    -2.09223     1  1  d2+  1.00016
    4.1     2.00000    -2.09223     1  1  d1-  1.00016
    5.1     2.00000    -2.09223     1  1  d1+  1.00016
    6.1     2.00000    -2.09223     1  1  d0   1.00016
    7.1     1.97803    -0.71315     1  2  s    0.97374
    1.2     2.00000    -6.02037     1  1  py   0.99979
    2.2     2.00000    -6.02037     1  1  px   0.99979
    3.2     2.00000    -6.02037     1  1  pz   0.99979
    4.2     1.00236    -0.16220     1  2  pz   0.91964
    5.2     1.00236    -0.16220     1  2  px   0.91964
    6.2     1.00236    -0.16220     1  2  py   0.91964
    7.2     0.00496     0.48674     1  2  py  -0.73324    1  3  py  -0.66962    1  4  py   1.24956
    8.2     0.00496     0.48674     1  2  px  -0.73324    1  3  px  -0.66962    1  4  px   1.24956
    9.2     0.00496     0.48674     1  2  pz  -0.73324    1  3  pz  -0.66962    1  4  pz   1.24956
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99645387
 
 Energy:     -331.21670328
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba000      -0.04946134      0.00000083     -0.00000266     -0.00007639      0.81125381      0.00000000     -0.00000000
 2 aab000       0.72729708     -0.00001220     -0.00000238      0.00004688     -0.36279213      0.00000000      0.00000000
 2 0a2000      -0.00001181     -0.70387100      0.00000000      0.00000000     -0.00000000      0.69603080     -0.00000000
 2 2a0000       0.00001181      0.70387100      0.00000000     -0.00000000      0.00000000      0.69603080     -0.00000000
 2 a02000      -0.00000355      0.00000000     -0.70387087     -0.00042595     -0.00000257      0.00000000      0.69603078
 2 20a000      -0.00001270      0.00000000     -0.00042596      0.70387087      0.00006551      0.00000000      0.00013305
 2 a20000       0.00000355     -0.00000000      0.70387086      0.00042595      0.00000257      0.00000000      0.69603079
 2 02a000       0.00001270     -0.00000000      0.00042596     -0.70387086     -0.00006551      0.00000000      0.00013305
 2 baa000      -0.67783574      0.00001137      0.00000504      0.00002951     -0.44846168     -0.00000000     -0.00000000
 0 2a2000       0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.14509002     -0.00000000
 0 22a000       0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00002774
 0 a22000       0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.14509002
 
 Energy:     -331.15356989   -331.15356989   -331.15356989   -331.15356989   -331.15356989   -331.12908512   -331.12908512

 State:              8
 2 aba000      -0.00000000
 2 aab000       0.00000000
 2 0a2000      -0.00000000
 2 2a0000      -0.00000000
 2 a02000      -0.00013305
 2 20a000       0.69603078
 2 a20000      -0.00013305
 2 02a000       0.69603079
 2 baa000      -0.00000000
 0 2a2000       0.00000000
 0 22a000      -0.14509002
 0 a22000       0.00002774
 
 Energy:     -331.12908512
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.51       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         3.88      3.09      0.59
 REAL TIME  *         4.97 SEC
 DISK USED  *        36.88 MB (local),      498.86 MB (total)
 SF USED    *        19.62 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -331.2167033  -0.0
    -331.1535699   6.0
    -331.1535699   6.0
    -331.1535699   6.0
    -331.1535699   6.0
    -331.1535699   6.0
    -331.1290851   2.0
    -331.1290851   2.0
    -331.1290851   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 23
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:       86 conf      104 CSFs
 N elec internal:    18764 conf    67760 CSFs
 N-1 el internal:    14189 conf   101369 CSFs
 N-2 el internal:     4931 conf    61610 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      80 (  40  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -331.21670328

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.84D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       4054760
 Number of doubly external configurations:        402040
 Total number of contracted configurations:      4490480
 Total number of uncontracted configurations:  102101240

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.81 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1134093 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.21670328     0.00000000    -0.90711877  0.46D-01  0.56D-01     2.20
    2     1     1     1.06768533    -0.74261717  -331.95932045    -0.74261717    -0.01918410  0.27D-02  0.85D-03    20.67
    3     1     1     1.05905473    -0.76036246  -331.97706574    -0.01774530    -0.00051371  0.72D-04  0.32D-04    38.88
    4     1     1     1.05845131    -0.76085415  -331.97755743    -0.00049168    -0.00002289  0.29D-05  0.21D-05    57.09
    5     1     1     1.05863976    -0.76087760  -331.97758088    -0.00002345    -0.00000106  0.65D-07  0.17D-06    75.19
    6     1     1     1.05869045    -0.76087880  -331.97758208    -0.00000120    -0.00000006  0.41D-08  0.83D-08    93.28
    7     1     1     1.05869330    -0.76087886  -331.97758214    -0.00000006    -0.00000000  0.22D-09  0.34D-09   111.32


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.1%
 S   2.2%  26.0%
 P   0.8%  62.3%   3.6%

 Initialization:   0.9%
 Other:            1.1%

 Total CPU:      111.3 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9682445


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97145288 (fixed)   0.97165039 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00089001   -0.00271787   -0.00320399
 Singles      0.01965441   -0.09513958   -0.10389763
 Pairs        0.03909113   -0.66302141   -0.65377724
 Total        1.05963555   -0.76087886   -0.76087886
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.21670328
 Nuclear energy                         0.00000000
 Kinetic energy                       233.68434473
 One electron energy                 -585.92222782
 Two electron energy                  253.94464568
 Virial quotient                       -1.42062397
 Correlation energy                    -0.76087886
 !MRCI STATE 1.2 Energy              -331.977582141276

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.02295757 (Davidson, fixed reference)
 Cluster corrected energies          -332.02262982 (Davidson, relaxed reference)

 Cluster corrected energies          -332.02045082 (Pople, fixed reference)
 Cluster corrected energies          -332.02012601 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       35.66       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       116.40    112.50      3.09      0.59
 REAL TIME  *       119.49 SEC
 DISK USED  *        72.03 MB (local),      920.69 MB (total)
 SF USED    *       539.60 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -332.02262982  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 23
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:      176 conf      280 CSFs
 N elec internal:    21164 conf    87808 CSFs
 N-1 el internal:    18620 conf   124768 CSFs
 N-2 el internal:     9446 conf    81340 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      80 (  40  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -331.15356989
     2      -331.15356989
     3      -331.15356989
     4      -331.15356989
     5      -331.15356989
     6      -331.12908512
     7      -331.12908512
     8      -331.12908512

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1953D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1347D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1346D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1345D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1347D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1346D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1345D-06

 Number of blocks in overlap matrix:   836   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    1870
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       4990720
 Number of doubly external configurations:       2994480
 Total number of contracted configurations:      8029286
 Total number of uncontracted configurations:  134742286

 Diagonal Coupling coefficients finished.               Storage:  27627404 words, CPU-Time:     63.27 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1398640 words, CPU-time:      0.13 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.15356989     0.00000000    -0.90610013  0.50D-01  0.52D-01    75.06
    1     2     2     1.00000000     0.00000000  -331.15356989     0.00000000    -0.90632910  0.50D-01  0.52D-01    75.06
    1     3     3     1.00000000     0.00000000  -331.15356989     0.00000000    -0.90639147  0.50D-01  0.52D-01    75.06
    1     4     4     1.00000000     0.00000000  -331.15356989    -0.00000000    -0.90681284  0.50D-01  0.52D-01    75.06
    1     5     5     1.00000000     0.00000000  -331.15356989     0.00000000    -0.90638853  0.50D-01  0.52D-01    75.06
    1     6     6     1.00000000     0.00000000  -331.12908512    -0.00000000    -0.88907053  0.32D-01  0.54D-01    75.06
    1     7     7     1.00000000     0.00000000  -331.12908512    -0.00000000    -0.88896376  0.32D-01  0.54D-01    75.06
    1     8     8     1.00000000     0.00000000  -331.12908512     0.00000000    -0.88970768  0.32D-01  0.54D-01    75.06
    2     1     1     1.06887468    -0.74888117  -331.90245106    -0.74888117    -0.02042420  0.27D-02  0.11D-02   363.43
    2     2     2     1.06895676    -0.74887959  -331.90244948    -0.74887959    -0.02046948  0.26D-02  0.12D-02   363.43
    2     3     3     1.06910136    -0.74873589  -331.90230578    -0.74873589    -0.02055089  0.28D-02  0.11D-02   363.43
    2     4     4     1.06888521    -0.74869457  -331.90226446    -0.74869457    -0.02064376  0.27D-02  0.12D-02   363.43
    2     5     5     1.06915624    -0.74849661  -331.90206650    -0.74849661    -0.02078428  0.28D-02  0.11D-02   363.43
    2     6     6     1.06004882    -0.74334681  -331.87243193    -0.74334681    -0.01954572  0.21D-02  0.12D-02   363.43
    2     7     7     1.05977550    -0.74326216  -331.87234728    -0.74326216    -0.01956896  0.22D-02  0.12D-02   363.43
    2     8     8     1.05984467    -0.74319678  -331.87228190    -0.74319678    -0.01960163  0.22D-02  0.12D-02   363.43
    3     1     1     1.06221576    -0.76776906  -331.92133895    -0.01888789    -0.00065605  0.56D-04  0.72D-04   653.39
    3     2     2     1.06220195    -0.76775840  -331.92132829    -0.01887881    -0.00066193  0.56D-04  0.73D-04   653.39
    3     3     3     1.06220345    -0.76775599  -331.92132588    -0.01902010    -0.00066648  0.57D-04  0.74D-04   653.39
    3     4     4     1.06217809    -0.76774712  -331.92131701    -0.01905255    -0.00067995  0.60D-04  0.74D-04   653.39
    3     5     5     1.06215133    -0.76773228  -331.92130217    -0.01923568    -0.00068852  0.60D-04  0.76D-04   653.39
    3     6     6     1.05759314    -0.76153891  -331.89062403    -0.01819210    -0.00077042  0.45D-04  0.11D-03   653.39
    3     7     7     1.05749770    -0.76152003  -331.89060515    -0.01825787    -0.00078458  0.45D-04  0.11D-03   653.39
    3     8     8     1.05747338    -0.76149233  -331.89057745    -0.01829555    -0.00079570  0.45D-04  0.11D-03   653.39
    4     1     1     1.06249872    -0.76848998  -331.92205987    -0.00072092    -0.00006469  0.40D-05  0.96D-05   944.40
    4     2     2     1.06248727    -0.76848890  -331.92205879    -0.00073050    -0.00006573  0.41D-05  0.97D-05   944.40
    4     3     3     1.06247169    -0.76848830  -331.92205819    -0.00073231    -0.00006671  0.43D-05  0.98D-05   944.40
    4     4     4     1.06249002    -0.76848755  -331.92205744    -0.00074043    -0.00006623  0.41D-05  0.98D-05   944.40
    4     5     5     1.06245930    -0.76848529  -331.92205518    -0.00075301    -0.00006852  0.44D-05  0.10D-04   944.40
    4     6     6     1.05919635    -0.76243206  -331.89151718    -0.00089315    -0.00009420  0.61D-05  0.13D-04   944.40
    4     7     7     1.05918327    -0.76243066  -331.89151578    -0.00091062    -0.00009563  0.62D-05  0.13D-04   944.40
    4     8     8     1.05915934    -0.76242311  -331.89150823    -0.00093078    -0.00010024  0.65D-05  0.14D-04   944.40
    5     1     1     1.06305756    -0.76857150  -331.92214139    -0.00008152    -0.00000798  0.58D-06  0.96D-06  1232.78
    5     2     2     1.06305705    -0.76857133  -331.92214122    -0.00008244    -0.00000806  0.59D-06  0.97D-06  1232.78
    5     3     3     1.06305382    -0.76857115  -331.92214104    -0.00008285    -0.00000819  0.60D-06  0.10D-05  1232.78
    5     4     4     1.06305697    -0.76857112  -331.92214101    -0.00008356    -0.00000822  0.60D-06  0.99D-06  1232.78
    5     5     5     1.06305337    -0.76857068  -331.92214057    -0.00008539    -0.00000849  0.62D-06  0.10D-05  1232.78
    5     6     6     1.06014858    -0.76254970  -331.89163482    -0.00011764    -0.00001072  0.76D-06  0.12D-05  1232.78
    5     7     7     1.06014993    -0.76254956  -331.89163468    -0.00011890    -0.00001078  0.76D-06  0.12D-05  1232.78
    5     8     8     1.06014699    -0.76254855  -331.89163367    -0.00012544    -0.00001154  0.81D-06  0.13D-05  1232.78
    6     1     1     1.06309905    -0.76858097  -331.92215086    -0.00000947    -0.00000077  0.56D-07  0.10D-06  1521.62
    6     2     2     1.06309943    -0.76858091  -331.92215080    -0.00000958    -0.00000081  0.60D-07  0.11D-06  1521.62
    6     3     3     1.06309884    -0.76858091  -331.92215080    -0.00000976    -0.00000077  0.56D-07  0.10D-06  1521.62
    6     4     4     1.06309801    -0.76858090  -331.92215079    -0.00000978    -0.00000080  0.58D-07  0.10D-06  1521.62
    6     5     5     1.06309824    -0.76858083  -331.92215072    -0.00001014    -0.00000085  0.62D-07  0.11D-06  1521.62
    6     6     6     1.06019931    -0.76256202  -331.89164714    -0.00001232    -0.00000104  0.57D-07  0.15D-06  1521.62
    6     7     7     1.06019942    -0.76256197  -331.89164709    -0.00001241    -0.00000105  0.56D-07  0.15D-06  1521.62
    6     8     8     1.06019570    -0.76256183  -331.89164695    -0.00001328    -0.00000115  0.61D-07  0.16D-06  1521.62
    7     1     1     1.06312179    -0.76858183  -331.92215172    -0.00000086    -0.00000010  0.84D-08  0.14D-07  1809.11
    7     2     2     1.06312157    -0.76858182  -331.92215171    -0.00000091    -0.00000011  0.94D-08  0.14D-07  1809.11
    7     3     3     1.06312095    -0.76858180  -331.92215169    -0.00000089    -0.00000011  0.89D-08  0.14D-07  1809.11
    7     4     4     1.06312136    -0.76858178  -331.92215167    -0.00000089    -0.00000010  0.85D-08  0.14D-07  1809.11
    7     5     5     1.06312102    -0.76858177  -331.92215166    -0.00000095    -0.00000011  0.96D-08  0.14D-07  1809.11
    7     6     6     1.06022456    -0.76256322  -331.89164834    -0.00000120    -0.00000016  0.14D-07  0.20D-07  1809.11
    7     7     7     1.06022413    -0.76256319  -331.89164831    -0.00000122    -0.00000016  0.14D-07  0.20D-07  1809.11
    7     8     8     1.06022244    -0.76256317  -331.89164829    -0.00000134    -0.00000018  0.16D-07  0.23D-07  1809.11
    8     1     1     1.06312718    -0.76858194  -331.92215183    -0.00000012    -0.00000002  0.16D-08  0.22D-08  2098.72
    8     2     2     1.06312733    -0.76858194  -331.92215183    -0.00000012    -0.00000002  0.14D-08  0.20D-08  2098.72
    8     3     3     1.06312714    -0.76858192  -331.92215181    -0.00000012    -0.00000002  0.15D-08  0.21D-08  2098.72
    8     4     4     1.06312728    -0.76858190  -331.92215179    -0.00000011    -0.00000002  0.14D-08  0.20D-08  2098.72
    8     5     5     1.06312713    -0.76858190  -331.92215179    -0.00000012    -0.00000002  0.16D-08  0.21D-08  2098.72
    8     6     6     1.06023788    -0.76256340  -331.89164852    -0.00000018    -0.00000003  0.22D-08  0.29D-08  2098.72
    8     7     7     1.06023719    -0.76256338  -331.89164850    -0.00000019    -0.00000003  0.26D-08  0.33D-08  2098.72
    8     8     8     1.06023775    -0.76256337  -331.89164849    -0.00000020    -0.00000003  0.22D-08  0.29D-08  2098.72


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.6%
 S   1.0%  13.4%
 P   0.5%  57.6%  19.2%

 Initialization:   3.0%
 Other:            3.8%

 Total CPU:     2098.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000           0.9443382   0.0022120   0.0001034   0.0009707  -0.2018478  -0.0000000   0.0000000  -0.0000000
 2222222222//\000           0.2018506  -0.0001490  -0.0005000  -0.0022278   0.9443381   0.0000000   0.0000000  -0.0000000
 22222222222/0000          -0.0000033   0.0003332  -0.6828333   0.0003085  -0.0003601  -0.0001246   0.6768313  -0.0015873
 22222222220/2000           0.0000033  -0.0003332   0.6828333  -0.0003085   0.0003601  -0.0001246   0.6768314  -0.0015873
 222222222202/000          -0.0015062   0.6828263   0.0003318  -0.0027197   0.0004234   0.6768146   0.0001362   0.0049821
 222222222220/000           0.0015062  -0.6828260  -0.0003318   0.0027197  -0.0004234   0.6768147   0.0001362   0.0049821
 2222222222/02000          -0.0003480   0.0027177   0.0003089   0.6828259   0.0016858  -0.0049824   0.0015864   0.6768127
 2222222222/20000           0.0003480  -0.0027177  -0.0003089  -0.6828258  -0.0016858  -0.0049824   0.0015864   0.6768130
 22222202222/2000           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000244  -0.1325586   0.0003109
 222222022222/000          -0.0000000  -0.0000001   0.0000000   0.0000000   0.0000000  -0.1325554  -0.0000267  -0.0009757
 2222220222/22000          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0009758  -0.0003107  -0.1325550

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.604832    0.000005   -0.000494   -0.002138    0.757542   -0.000000    0.000000   -0.000000
 2           0.000858   -0.000473    0.003858    0.969369    0.002053    0.000000    0.000000    0.000000
 3          -0.000403    0.969379    0.000439    0.000471    0.000317    0.000000   -0.000000   -0.000000
 4          -0.001565   -0.000438    0.969368   -0.003861    0.001871    0.000000    0.000000    0.000000
 5           0.757543    0.000511    0.002393    0.000601   -0.604829   -0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000179   -0.007146    0.970724
 7           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.970747    0.002275    0.000195
 8          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.002277    0.970721    0.007146

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969379   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.969379   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.969379   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.969379   -0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.969379    0.000000    0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.970750   -0.000000   -0.000000
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970750   -0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.970750


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.75754160 (fixed)   0.96954305 (relaxed)   0.96937909 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00098479   -0.00320634   -0.62739365
 Singles      0.02301749   -0.10168274   -0.11217056
 Pairs        0.04017186   -0.00000000   -0.02901773
 Total        1.06417415   -0.10488908   -0.76858194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15356989
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66016138
 One electron energy                 -585.66841980
 Two electron energy                  253.74626796
 Virial quotient                       -1.42053378
 Correlation energy                    -0.76858194
 !MRCI STATE 1.2 Energy              -331.922151834827

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.97147492 (Davidson, fixed reference)
 Cluster corrected energies          -331.97119832 (Davidson, relaxed reference)
 Cluster corrected energies          -331.97147492 (Davidson, rotated reference)

 Cluster corrected energies          -331.96945788 (Pople, fixed reference)
 Cluster corrected energies          -331.96917818 (Pople, relaxed reference)
 Cluster corrected energies          -331.96945788 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96936868 (fixed)   0.96954298 (relaxed)   0.96937903 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00098479   -0.00320635   -0.62739378
 Singles      0.02301733   -0.10168249   -0.11217045
 Pairs        0.04017218   -0.00000001   -0.02901771
 Total        1.06417429   -0.10488885   -0.76858194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15356989
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66025883
 One electron energy                 -585.66846161
 Two electron energy                  253.74630977
 Virial quotient                       -1.42053319
 Correlation energy                    -0.76858194
 !MRCI STATE 2.2 Energy              -331.922151832928

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.97147503 (Davidson, fixed reference)
 Cluster corrected energies          -331.97119844 (Davidson, relaxed reference)
 Cluster corrected energies          -331.97147503 (Davidson, rotated reference)

 Cluster corrected energies          -331.96945799 (Pople, fixed reference)
 Cluster corrected energies          -331.96917830 (Pople, relaxed reference)
 Cluster corrected energies          -331.96945799 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96937876 (fixed)   0.96954307 (relaxed)   0.96937911 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00098479   -0.00320635   -0.62739372
 Singles      0.02301735   -0.10168267   -0.11217040
 Pairs        0.04017195    0.00000000   -0.02901780
 Total        1.06417410   -0.10488902   -0.76858192
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15356989
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66019475
 One electron energy                 -585.66842881
 Two electron energy                  253.74627700
 Virial quotient                       -1.42053358
 Correlation energy                    -0.76858192
 !MRCI STATE 3.2 Energy              -331.922151809016

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.97147486 (Davidson, fixed reference)
 Cluster corrected energies          -331.97119826 (Davidson, relaxed reference)
 Cluster corrected energies          -331.97147486 (Davidson, rotated reference)

 Cluster corrected energies          -331.96945781 (Pople, fixed reference)
 Cluster corrected energies          -331.96917812 (Pople, relaxed reference)
 Cluster corrected energies          -331.96945781 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96936819 (fixed)   0.96954300 (relaxed)   0.96937905 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00098479   -0.00320635   -0.62739357
 Singles      0.02301742   -0.10168271   -0.11217050
 Pairs        0.04017203   -0.00000000   -0.02901783
 Total        1.06417423   -0.10488906   -0.76858190
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15356989
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66023784
 One electron energy                 -585.66844938
 Two electron energy                  253.74629759
 Virial quotient                       -1.42053331
 Correlation energy                    -0.76858190
 !MRCI STATE 4.2 Energy              -331.922151788734

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.97147494 (Davidson, fixed reference)
 Cluster corrected energies          -331.97119835 (Davidson, relaxed reference)
 Cluster corrected energies          -331.97147494 (Davidson, rotated reference)

 Cluster corrected energies          -331.96945790 (Pople, fixed reference)
 Cluster corrected energies          -331.96917821 (Pople, relaxed reference)
 Cluster corrected energies          -331.96945790 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.75754266 (fixed)   0.96954307 (relaxed)   0.96937912 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00098479   -0.00320635   -0.62739349
 Singles      0.02301753   -0.10168290   -0.11217057
 Pairs        0.04017176    0.00000000   -0.02901784
 Total        1.06417408   -0.10488924   -0.76858190
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.15356989
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66017453
 One electron energy                 -585.66841843
 Two electron energy                  253.74626664
 Virial quotient                       -1.42053370
 Correlation energy                    -0.76858190
 !MRCI STATE 5.2 Energy              -331.922151785158

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.97147482 (Davidson, fixed reference)
 Cluster corrected energies          -331.97119823 (Davidson, relaxed reference)
 Cluster corrected energies          -331.97147482 (Davidson, rotated reference)

 Cluster corrected energies          -331.96945778 (Pople, fixed reference)
 Cluster corrected energies          -331.96917809 (Pople, relaxed reference)
 Cluster corrected energies          -331.96945778 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97072353 (fixed)   0.97088126 (relaxed)   0.97074985 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00088002   -0.00308490   -0.00355663
 Singles      0.01602660   -0.08705067   -0.09354467
 Pairs        0.04426429   -0.67240960   -0.66546209
 Total        1.06117091   -0.76254518   -0.76256340
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.12908512
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66702508
 One electron energy                 -585.54300672
 Two electron energy                  253.65135821
 Virial quotient                       -1.42036151
 Correlation energy                    -0.76256340
 !MRCI STATE 6.2 Energy              -331.891648519052

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.93829521 (Davidson, fixed reference)
 Cluster corrected energies          -331.93807617 (Davidson, relaxed reference)
 Cluster corrected energies          -331.93829521 (Davidson, rotated reference)

 Cluster corrected energies          -331.93627352 (Pople, fixed reference)
 Cluster corrected energies          -331.93605313 (Pople, relaxed reference)
 Cluster corrected energies          -331.93627352 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97074748 (fixed)   0.97088158 (relaxed)   0.97075017 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00088002   -0.00308491   -0.63707782
 Singles      0.01602673   -0.08705108   -0.09354467
 Pairs        0.04426346   -0.00013536   -0.03194089
 Total        1.06117022   -0.09027134   -0.76256338
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.12908512
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66685705
 One electron energy                 -585.54292986
 Two electron energy                  253.65128137
 Virial quotient                       -1.42036253
 Correlation energy                    -0.76256338
 !MRCI STATE 7.2 Energy              -331.891648496132

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.93829466 (Davidson, fixed reference)
 Cluster corrected energies          -331.93807562 (Davidson, relaxed reference)
 Cluster corrected energies          -331.93829466 (Davidson, rotated reference)

 Cluster corrected energies          -331.93627296 (Pople, fixed reference)
 Cluster corrected energies          -331.93605257 (Pople, relaxed reference)
 Cluster corrected energies          -331.93627296 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97072095 (fixed)   0.97088132 (relaxed)   0.97074992 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00088001   -0.00308490   -0.63254100
 Singles      0.01602661   -0.08705079   -0.09354469
 Pairs        0.04426415   -0.00494963   -0.03647768
 Total        1.06117077   -0.09508532   -0.76256337
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.12908512
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66700589
 One electron energy                 -585.54299532
 Two electron energy                  253.65134683
 Virial quotient                       -1.42036163
 Correlation energy                    -0.76256337
 !MRCI STATE 8.2 Energy              -331.891648487775

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.93829507 (Davidson, fixed reference)
 Cluster corrected energies          -331.93807604 (Davidson, relaxed reference)
 Cluster corrected energies          -331.93829507 (Davidson, rotated reference)

 Cluster corrected energies          -331.93627338 (Pople, fixed reference)
 Cluster corrected energies          -331.93605300 (Pople, relaxed reference)
 Cluster corrected energies          -331.93627338 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      535.93       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      2694.06   2577.65    112.50      3.09      0.59
 REAL TIME  *      2755.17 SEC
 DISK USED  *       572.30 MB (local),        6.76 GB (total)
 SF USED    *         5.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -331.97147492  AU                              
 SETTING HLSDIAG(3)     =      -331.97147503  AU                              
 SETTING HLSDIAG(4)     =      -331.97147486  AU                              
 SETTING HLSDIAG(5)     =      -331.97147494  AU                              
 SETTING HLSDIAG(6)     =      -331.97147482  AU                              
 SETTING HLSDIAG(7)     =      -331.93829521  AU                              
 SETTING HLSDIAG(8)     =      -331.93829466  AU                              
 SETTING HLSDIAG(9)     =      -331.93829507  AU                              


         HLSDIAG
    -332.0226298
    -331.9714749
    -331.9714750
    -331.9714749
    -331.9714749
    -331.9714748
    -331.9382952
    -331.9382947
    -331.9382951
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -331.977582
 Replaced energies:   -332.022630

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -331.922152   -331.922152   -331.922152   -331.922152   -331.922152   -331.891649   -331.891648   -331.891648
 Replaced energies:   -331.971475   -331.971475   -331.971475   -331.971475   -331.971475   -331.938295   -331.938295   -331.938295



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -332.02262982

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     909.31
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.17

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       7.73

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     524.99
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.10

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00   11227.20       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.02      -0.01       4.62       0.00       5.25

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   11227.18       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.02       0.00       7.51       0.02       0.06      -0.19

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00   11227.22       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.01      -7.51      -0.00       0.04       0.00     648.82

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11227.20       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -4.62      -0.02      -0.04      -0.00      14.29      -0.30

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   11227.22       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.06      -0.00     -14.29      -0.00       2.04

   10   6.2  0.5  0.5     909.31       0.00     524.99       0.00       0.00       0.00       0.00       0.00       0.00   18509.31
                            0.17      -7.73      -0.10      -0.00      -5.25       0.19    -648.82       0.30      -2.04       0.00

   11   7.2  0.5  0.5       0.18       0.00       0.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -909.34       2.46     525.01      -0.00       0.24     648.84       0.18      -2.58       0.94      -2.77

   12   8.2  0.5  0.5       6.69       0.00       3.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.13    1049.98      -1.23      -0.00     712.79      -0.09      -4.90      -0.20     230.70       0.01

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      14.69       0.00      -0.06       0.00    -156.60
                           -0.00       0.00       0.00      -0.00      -0.00       0.01     -10.06      -0.01      -0.01       0.22

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00     -14.69       0.00       0.03      -0.01       3.14       0.11
                           -0.00      -0.00       0.00       0.00      -0.01       0.00      -0.01       7.51       0.01       2.19

   15   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.03      -0.00      -7.51      -0.02       5.16
                           -0.00      -0.00      -0.00       0.00      10.06       0.01       0.00      -0.02      11.15      -0.29

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.06       0.01       7.51       0.00      -0.01       1.61
                           -0.00      -0.00       0.00       0.00       0.01      -7.51       0.02       0.00      -0.01    -648.84

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -3.14       0.02       0.01      -0.00    -732.64
                           -0.00       0.00      -0.00      -0.00       0.01      -0.01     -11.15       0.01       0.00      -1.51

   18   6.2  0.5 -0.5       0.00     524.99       0.00     909.31     156.60      -0.11      -5.16      -1.61     732.64       0.00
                           -0.00       0.10      -7.73      -0.17      -0.22      -2.19       0.29     648.84       1.51       0.00

   19   7.2  0.5 -0.5       0.00       0.11       0.00       0.18       0.36      -2.58       1.23    -648.83      -1.45       0.02
                           -0.00    -525.01       2.46     909.34    -556.21      -0.02      -0.26      -1.39     501.96       0.01

   20   8.2  0.5 -0.5       0.00       3.86       0.00       6.69       1.16      -0.31     648.82       1.22       5.74      -0.00
                           -0.00       1.23    1049.98      -2.13      -0.13     648.84       0.32       2.20      -0.76       2.77


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5       0.18       6.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          909.34      -2.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     524.99       0.11       3.86
                           -2.46   -1049.98      -0.00       0.00       0.00       0.00      -0.00      -0.10     525.01      -1.23

    3   1.2  1.5 -0.5       0.11       3.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -525.01       1.23      -0.00      -0.00       0.00      -0.00       0.00       7.73      -2.46   -1049.98

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     909.31       0.18       6.69
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.17    -909.34       2.13

    5   1.2  0.5  0.5       0.00       0.00       0.00     -14.69      -0.00       0.06      -0.00     156.60       0.36       1.16
                           -0.24    -712.79       0.00       0.01     -10.06      -0.01      -0.01       0.22     556.21       0.13

    6   2.2  0.5  0.5       0.00       0.00      14.69       0.00      -0.03       0.01      -3.14      -0.11      -2.58      -0.31
                         -648.84       0.09      -0.01      -0.00      -0.01       7.51       0.01       2.19       0.02    -648.84

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.03      -0.00       7.51       0.02      -5.16       1.23     648.82
                           -0.18       4.90      10.06       0.01      -0.00      -0.02      11.15      -0.29       0.26      -0.32

    8   4.2  0.5  0.5       0.00       0.00      -0.06      -0.01      -7.51       0.00       0.01      -1.61    -648.83       1.22
                            2.58       0.20       0.01      -7.51       0.02      -0.00      -0.01    -648.84       1.39      -2.20

    9   5.2  0.5  0.5       0.00       0.00       0.00       3.14      -0.02      -0.01      -0.00     732.64      -1.45       5.74
                           -0.94    -230.70       0.01      -0.01     -11.15       0.01      -0.00      -1.51    -501.96       0.76

   10   6.2  0.5  0.5       0.00       0.00    -156.60       0.11       5.16       1.61    -732.64       0.00       0.02      -0.00
                            2.77      -0.01      -0.22      -2.19       0.29     648.84       1.51      -0.00      -0.01      -2.77

   11   7.2  0.5  0.5   18509.43       0.00      -0.36       2.58      -1.23     648.83       1.45      -0.02      -0.00       2.77
                            0.00      -0.02    -556.21      -0.02      -0.26      -1.39     501.96       0.01      -0.00      -0.00

   12   8.2  0.5  0.5       0.00   18509.34      -1.16       0.31    -648.82      -1.22      -5.74       0.00      -2.77      -0.00
                            0.02      -0.00      -0.13     648.84       0.32       2.20      -0.76       2.77       0.00       0.00

   13   1.2  0.5 -0.5      -0.36      -1.16   11227.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          556.21       0.13      -0.00      -0.02       0.01      -4.62      -0.00      -5.25       0.24     712.79

   14   2.2  0.5 -0.5       2.58       0.31       0.00   11227.18       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02    -648.84       0.02      -0.00      -7.51      -0.02      -0.06       0.19     648.84      -0.09

   15   3.2  0.5 -0.5      -1.23    -648.82       0.00       0.00   11227.22       0.00       0.00       0.00       0.00       0.00
                            0.26      -0.32      -0.01       7.51       0.00      -0.04      -0.00    -648.82       0.18      -4.90

   16   4.2  0.5 -0.5     648.83      -1.22       0.00       0.00       0.00   11227.20       0.00       0.00       0.00       0.00
                            1.39      -2.20       4.62       0.02       0.04       0.00     -14.29       0.30      -2.58      -0.20

   17   5.2  0.5 -0.5       1.45      -5.74       0.00       0.00       0.00       0.00   11227.22       0.00       0.00       0.00
                         -501.96       0.76       0.00       0.06       0.00      14.29       0.00      -2.04       0.94     230.70

   18   6.2  0.5 -0.5      -0.02       0.00       0.00       0.00       0.00       0.00       0.00   18509.31       0.00       0.00
                           -0.01      -2.77       5.25      -0.19     648.82      -0.30       2.04      -0.00      -2.77       0.01

   19   7.2  0.5 -0.5      -0.00      -2.77       0.00       0.00       0.00       0.00       0.00       0.00   18509.43       0.00
                            0.00      -0.00      -0.24    -648.84      -0.18       2.58      -0.94       2.77      -0.00       0.02

   20   8.2  0.5 -0.5       2.77      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18509.34
                            0.00      -0.00    -712.79       0.09       4.90       0.20    -230.70      -0.01      -0.02       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -332.02303900    -0.00040918      -89.80      0.00000000        0.00      0.0000
     2  -332.02303900    -0.00040918      -89.80      0.00000000        0.00      0.0000
     3  -332.02303900    -0.00040918      -89.80      0.00000000        0.00      0.0000
     4  -332.02303900    -0.00040918      -89.80      0.00000000        0.00      0.0000
     5  -331.97281819     0.04981163    10932.39      0.05022081    11022.19      1.3666
     6  -331.97281819     0.04981163    10932.39      0.05022081    11022.19      1.3666
     7  -331.97281811     0.04981171    10932.41      0.05022089    11022.21      1.3666
     8  -331.97281811     0.04981171    10932.41      0.05022089    11022.21      1.3666
     9  -331.97140656     0.05122326    11242.21      0.05163244    11332.01      1.4050
    10  -331.97140656     0.05122326    11242.21      0.05163244    11332.01      1.4050
    11  -331.97140648     0.05122334    11242.22      0.05163252    11332.03      1.4050
    12  -331.97140648     0.05122334    11242.22      0.05163252    11332.03      1.4050
    13  -331.97140643     0.05122340    11242.24      0.05163257    11332.04      1.4050
    14  -331.97140643     0.05122340    11242.24      0.05163257    11332.04      1.4050
    15  -331.93832024     0.08430958    18503.81      0.08471876    18593.62      2.3053
    16  -331.93832024     0.08430958    18503.81      0.08471876    18593.62      2.3053
    17  -331.93663275     0.08599708    18874.18      0.08640625    18963.98      2.3512
    18  -331.93663275     0.08599708    18874.18      0.08640625    18963.98      2.3512
    19  -331.93663243     0.08599739    18874.24      0.08640657    18964.05      2.3512
    20  -331.93663243     0.08599739    18874.24      0.08640657    18964.05      2.3512


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.032528431   0.683735588   0.062303501   0.722933789  -0.000000000   0.011824660   0.018071609  -0.002031525
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.724594927   0.038280905  -0.681361157   0.055118608  -0.018180908   0.000017194  -0.001329637  -0.011727835
                        -0.001917062   0.002843502  -0.035514407   0.000285102  -0.000397617  -0.000059540  -0.000041670  -0.000717244

    3    1.2  1.5 -0.5  -0.038275834   0.724597164  -0.055057780  -0.682286055  -0.000015800  -0.018185236   0.011749740  -0.001329657
                         0.002910963   0.000640046  -0.002604489  -0.000249904  -0.000059925  -0.000026737   0.000012882  -0.000041031

    4    1.2  1.5 -1.5   0.683734509   0.032528380   0.721939945  -0.062217850   0.011821440   0.000000000  -0.002027599  -0.018036687
                        -0.001205005  -0.000057328   0.037894635  -0.003265816   0.000275925   0.000000000  -0.000126234  -0.001122927

    5    1.2  0.5  0.5   0.002716870   0.000146227  -0.004938151   0.000418137   0.599840508  -0.001837518   0.018425392   0.160527560
                        -0.000006299   0.000015562  -0.000255784   0.000007061   0.013096003   0.001622773   0.000049800   0.009905220

    6    2.2  0.5  0.5  -0.000092929   0.001620762  -0.000459008  -0.005402013   0.001787642   0.620608344  -0.032642333   0.003997760
                        -0.000001012  -0.000000243  -0.000029711   0.000000839   0.002866542   0.000529111  -0.000284594  -0.001071045

    7    3.2  0.5  0.5  -0.000016982  -0.000002486   0.000011263  -0.000001281  -0.001406678  -0.000361722   0.000269895  -0.001316790
                        -0.000282077   0.005499639  -0.000095713  -0.001301364   0.000547997   0.281792249  -0.550417820   0.061837841

    8    4.2  0.5  0.5  -0.000017312  -0.000007302   0.000207616   0.000003785  -0.007206359  -0.002471270   0.003590549   0.030770128
                        -0.003878978  -0.000187046  -0.004096191   0.000353621   0.338682317  -0.000130442  -0.057851181  -0.516878549

    9    5.2  0.5  0.5   0.004956398   0.000243459   0.002706704  -0.000242934  -0.161829658   0.000232754   0.066983281   0.595153387
                        -0.000019569   0.000007105   0.000132329  -0.000016946  -0.003175509   0.000674243   0.003374436   0.035691748

   10    6.2  0.5  0.5   0.002698141  -0.054419388  -0.001491882  -0.016246137  -0.000075186   0.007964359   0.149404217  -0.016862792
                         0.000221239  -0.000004591  -0.000212590   0.000020110   0.000721010  -0.000068972   0.000125132   0.000455446

   11    7.2  0.5  0.5   0.000083275   0.000007673  -0.000079300  -0.000010357   0.000214428   0.000095363  -0.000013955   0.000150681
                        -0.000611862   0.013099419   0.004737156   0.055141175  -0.000350654  -0.134191610  -0.067874527   0.007406313

   12    8.2  0.5  0.5  -0.000089643  -0.000238491  -0.002035811  -0.000103315   0.002758941   0.000471695   0.001389111   0.004854107
                        -0.041312990  -0.002213496   0.038838220  -0.003271934  -0.126193823   0.000433374  -0.009069385  -0.081420283

   13    1.2  0.5 -0.5   0.000146199  -0.002716877   0.000417932   0.004944770  -0.001799151  -0.599982768   0.160832842  -0.018392881
                        -0.000015820  -0.000001511   0.000014867   0.000003415  -0.001665209  -0.000904646   0.000088724  -0.001095206

   14    2.2  0.5 -0.5   0.001620760   0.000092927  -0.005394542   0.000459935   0.620451705  -0.001854046   0.003923482   0.032596938
                        -0.000002614  -0.000001176  -0.000284000  -0.000005610   0.013952727   0.002824048   0.001317386   0.001744273

   15    3.2  0.5 -0.5  -0.000012178   0.000016485  -0.000069493  -0.000006231   0.006213907   0.001393507   0.002528212   0.033932290
                        -0.005499626  -0.000282107   0.001299508  -0.000096172  -0.281723961   0.000580672  -0.061800167  -0.549370958

   16    4.2  0.5 -0.5  -0.000006972   0.000010475   0.000022316   0.000007383  -0.002473641  -0.000698645  -0.001406945   0.000011125
                         0.000187058  -0.003879002  -0.000352937  -0.004101443   0.000072740   0.338758255   0.517791710  -0.057962497

   17    5.2  0.5 -0.5   0.000243446  -0.004956424  -0.000243488  -0.002709919   0.000248424   0.161859693   0.596221107  -0.067063521
                        -0.000007534  -0.000010834   0.000004188  -0.000009733  -0.000668628   0.000601598   0.001358650  -0.000794268

   18    6.2  0.5 -0.5  -0.054419295  -0.002697747  -0.016222750   0.001500974   0.007960581   0.000058341  -0.016801906  -0.149123283
                         0.000100499   0.000225994  -0.000871670  -0.000134097   0.000254798   0.000722568  -0.001502380  -0.009158735

   19    7.2  0.5 -0.5  -0.000015414  -0.000084353   0.002880039  -0.000169120  -0.003035981  -0.000206187   0.000610600   0.004231491
                        -0.013099411  -0.000611715  -0.055065912   0.004734800   0.134157296  -0.000355562  -0.007382638  -0.067742499

   20    8.2  0.5 -0.5  -0.000234590   0.000016833  -0.000274681  -0.000002804   0.000481679   0.000186502  -0.000214537  -0.000822877
                         0.002213913  -0.041313082   0.003262020   0.038891541  -0.000422249  -0.126223841   0.081564569  -0.009138176


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000000  -0.000000332  -0.000000529   0.000000060   0.000000556   0.000000207   0.000000000   0.000008938
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000000615  -0.000000000  -0.000000036  -0.000000323  -0.000000071   0.000000190  -0.000002525  -0.000000022
                         0.000000453   0.000000011   0.000000011   0.000000089  -0.000000018   0.000000048  -0.000000252   0.000000033

    3    1.2  1.5 -0.5  -0.000000006   0.000000764  -0.000000336   0.000000038  -0.000000196  -0.000000074   0.000000019  -0.000002537
                         0.000000009   0.000000001  -0.000000000   0.000000001  -0.000000000   0.000000000   0.000000035  -0.000000001

    4    1.2  1.5 -1.5  -0.000000267  -0.000000000  -0.000000057  -0.000000510   0.000000201  -0.000000539   0.000008894  -0.000000000
                        -0.000000197   0.000000000   0.000000016   0.000000140   0.000000051  -0.000000137   0.000000891  -0.000000000

    5    1.2  0.5  0.5  -0.449790652   0.001299080  -0.052420508  -0.470784806  -0.072592218   0.195499266  -0.000009291  -0.000000012
                        -0.331260708  -0.006979437   0.016688528   0.130278767  -0.018694825   0.049446899  -0.000000922   0.000000057

    6    2.2  0.5  0.5  -0.004372737   0.766111756  -0.026383885   0.003255056  -0.103602846  -0.038639865   0.000000007  -0.000012155
                         0.008898998   0.000726378  -0.000001522   0.001077849  -0.000272640   0.000568047  -0.000000012  -0.000000003

    7    3.2  0.5  0.5   0.002359545   0.000115102  -0.000218561   0.000287673  -0.000769424  -0.000700352  -0.000000061  -0.000000005
                         0.001665022  -0.158176969   0.458739070  -0.052055099   0.563720428   0.209889144   0.000000022   0.000004112

    8    4.2  0.5  0.5   0.162711036   0.002456191   0.020746784   0.180121347   0.022864921  -0.058916620   0.000001583   0.000000048
                        -0.221609768   0.000055879   0.073591055   0.647368727  -0.087804456   0.235169825  -0.000016187  -0.000000002

    9    5.2  0.5  0.5   0.013007314  -0.000110950   0.031938044   0.282581727  -0.242290817   0.650753342   0.000013870  -0.000000020
                         0.009386913  -0.000905232  -0.008895380  -0.078586179  -0.060905204   0.163557435   0.000001350   0.000000021

   10    6.2  0.5  0.5   0.000000001   0.000000562  -0.000004420   0.000000505   0.000002730   0.000001019   0.000674300   0.577416876
                        -0.000000002   0.000000002   0.000000002   0.000000020   0.000000004  -0.000000007   0.003263178   0.000105208

   11    7.2  0.5  0.5  -0.000000040  -0.000000006  -0.000000000  -0.000000005   0.000000002   0.000000000   0.001100526  -0.000105046
                        -0.000000013   0.000004886   0.000002102  -0.000000244  -0.000004181  -0.000001558  -0.000250022   0.577242856

   12    8.2  0.5  0.5  -0.000003174  -0.000000073  -0.000000112  -0.000000648   0.000000147  -0.000000325   0.057363650   0.003179869
                         0.000004312  -0.000000012  -0.000000270  -0.000002359  -0.000000483   0.000001314  -0.574514760  -0.000357618

   13    1.2  0.5 -0.5  -0.003101974   0.558609569   0.488477904  -0.054970569   0.201655271   0.074960566  -0.000000006   0.000009336
                         0.006385758   0.000797521   0.000478136  -0.002157129   0.000332576  -0.000200512  -0.000000058   0.000000009

   14    2.2  0.5 -0.5   0.616652465  -0.001770204  -0.002851552  -0.025434697  -0.037304368   0.100465242  -0.000012095  -0.000000006
                         0.454606960   0.009755992   0.001904152   0.007013245  -0.010086922   0.025305319  -0.000001209  -0.000000013

   15    3.2  0.5 -0.5  -0.093889486  -0.002887182  -0.014111484  -0.122125138   0.051122647  -0.138382442   0.000000405   0.000000059
                         0.127297804  -0.000062684  -0.050106707  -0.442184388  -0.203569197   0.546471968  -0.000004092   0.000000028

   16    4.2  0.5 -0.5   0.002008834   0.000794770  -0.001599420   0.000443165   0.000946620  -0.000487179   0.000000048   0.000000039
                         0.001414419  -0.274927516   0.671957893  -0.076458329  -0.242435803  -0.090731416   0.000000007  -0.000016264

   17    5.2  0.5 -0.5  -0.000627093  -0.016039722  -0.293304931   0.033153563   0.670989191   0.249827300  -0.000000018  -0.000013935
                         0.000662201  -0.000178046  -0.000661278   0.000087645   0.002110192   0.000777036  -0.000000023  -0.000000040

   18    6.2  0.5 -0.5   0.000000454  -0.000000000  -0.000000481  -0.000004261   0.000000986  -0.000002647   0.574549149  -0.000996349
                         0.000000332  -0.000000002   0.000000153   0.000001173   0.000000258  -0.000000670   0.057476395   0.003179670

   19    7.2  0.5 -0.5   0.000002898   0.000000040  -0.000000060  -0.000000559  -0.000000384   0.000001030   0.057459203  -0.001070108
                        -0.000003933   0.000000014  -0.000000236  -0.000002026   0.000001510  -0.000004052  -0.574375979  -0.000358522

   20    8.2  0.5 -0.5  -0.000000066  -0.000000009  -0.000000002  -0.000000037   0.000000009  -0.000000023   0.003128356   0.000213962
                        -0.000000034   0.000005355  -0.000002447   0.000000290  -0.000001354  -0.000000504   0.000672937  -0.577371416


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5   0.000000000   0.040146534   0.000000000  -0.053388010
                         0.000000000   0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.053004533   0.000192130  -0.040132941   0.000144476
                        -0.006382163   0.000209451  -0.001018174   0.000157502

    3    1.2  1.5 -0.5  -0.000165808   0.053387377   0.000148487   0.040145851
                         0.000230850   0.000021829  -0.000153726   0.000016415

    4    1.2  1.5 -1.5   0.039860596  -0.000000000   0.053370279  -0.000000000
                        -0.004782996  -0.000000000   0.001375842  -0.000000000

    5    1.2  0.5  0.5   0.067002425   0.000219644  -0.095906538   0.000003306
                        -0.008041086   0.000350407  -0.002396644   0.000263138

    6    2.2  0.5  0.5  -0.000197454   0.045938680  -0.000018917   0.107921874
                         0.000061969  -0.000022925  -0.000613367   0.000018570

    7    3.2  0.5  0.5  -0.000405578  -0.000010930   0.000199644   0.000027435
                        -0.000277561   0.116434286   0.000182378   0.014176318

    8    4.2  0.5  0.5  -0.008598839  -0.000183051   0.002200474  -0.000429910
                        -0.069969836  -0.000052836  -0.093718976  -0.000006582

    9    5.2  0.5  0.5   0.095231858   0.000132357   0.067467098   0.000145029
                        -0.011614305   0.000174674   0.001516565   0.000092655

   10    6.2  0.5  0.5  -0.001556128   0.736491782   0.000799507  -0.313420724
                        -0.003292257   0.000131645   0.002618424  -0.000060615

   11    7.2  0.5  0.5  -0.001204455   0.000011585   0.000949943  -0.000165900
                         0.000495691  -0.096779688  -0.000237726   0.794679837

   12    8.2  0.5  0.5   0.076477343   0.002911982   0.012203420  -0.004194251
                         0.635198649   0.002530294  -0.480852923  -0.000131508

   13    1.2  0.5 -0.5   0.000176333  -0.067483213  -0.000010086  -0.095936448
                        -0.000374079  -0.000001249   0.000262966  -0.000075723

   14    2.2  0.5 -0.5   0.045614220   0.000203430  -0.107886510  -0.000034718
                        -0.005450302   0.000038003  -0.002762649   0.000612676

   15    3.2  0.5 -0.5  -0.013882654   0.000369622  -0.000392758   0.000204278
                        -0.115603698  -0.000323904   0.014170903  -0.000177173

   16    4.2  0.5 -0.5  -0.000175452   0.000201496   0.000429937  -0.000215453
                         0.000074269  -0.070495939   0.000004499   0.093744558

   17    5.2  0.5 -0.5   0.000110604  -0.095937293  -0.000147369   0.067483773
                        -0.000189198  -0.000185807   0.000088886   0.000222608

   18    6.2  0.5 -0.5   0.731230545   0.001152811   0.313318194   0.000866720
                        -0.087875206  -0.003454204   0.008016451  -0.002596950

   19    7.2  0.5 -0.5   0.011541686   0.001254933  -0.020313545   0.000943502
                         0.096089009   0.000348664   0.794420185   0.000262127

   20    8.2  0.5 -0.5   0.002589786  -0.000256053   0.004196247  -0.000192510
                        -0.002859201   0.639785934  -0.000023375   0.481007713


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.106%  46.749%   0.388%  52.263%   0.000%   0.014%   0.033%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5  52.504%   0.147%  46.551%   0.304%   0.033%   0.000%   0.000%   0.014%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.147%  52.504%   0.304%  46.551%   0.000%   0.033%   0.014%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5  46.749%   0.106%  52.263%   0.388%   0.014%   0.000%   0.000%   0.033%   0.000%   0.000%
    5    1.2  0.5  0.5   0.001%   0.000%   0.002%   0.000%  35.998%   0.001%   0.034%   2.587%  31.205%   0.005%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.003%   0.001%  38.515%   0.107%   0.002%   0.010%  58.693%
    7    3.2  0.5  0.5   0.000%   0.003%   0.000%   0.000%   0.000%   7.941%  30.296%   0.383%   0.001%   2.502%
    8    4.2  0.5  0.5   0.002%   0.000%   0.002%   0.000%  11.476%   0.001%   0.336%  26.811%   7.559%   0.001%
    9    5.2  0.5  0.5   0.002%   0.000%   0.001%   0.000%   2.620%   0.000%   0.450%  35.548%   0.026%   0.000%
   10    6.2  0.5  0.5   0.001%   0.296%   0.000%   0.026%   0.000%   0.006%   2.232%   0.028%   0.000%   0.000%
   11    7.2  0.5  0.5   0.000%   0.017%   0.002%   0.304%   0.000%   1.801%   0.461%   0.005%   0.000%   0.000%
   12    8.2  0.5  0.5   0.171%   0.000%   0.151%   0.001%   1.593%   0.000%   0.008%   0.665%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.001%   0.000%   0.002%   0.001%  35.998%   2.587%   0.034%   0.005%  31.205%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.003%   0.000%  38.515%   0.001%   0.002%   0.107%  58.693%   0.010%
   15    3.2  0.5 -0.5   0.003%   0.000%   0.000%   0.000%   7.941%   0.000%   0.383%  30.296%   2.502%   0.001%
   16    4.2  0.5 -0.5   0.000%   0.002%   0.000%   0.002%   0.001%  11.476%  26.811%   0.336%   0.001%   7.559%
   17    5.2  0.5 -0.5   0.000%   0.002%   0.000%   0.001%   0.000%   2.620%  35.548%   0.450%   0.000%   0.026%
   18    6.2  0.5 -0.5   0.296%   0.001%   0.026%   0.000%   0.006%   0.000%   0.028%   2.232%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.017%   0.000%   0.304%   0.002%   1.801%   0.000%   0.005%   0.461%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.000%   0.171%   0.001%   0.151%   0.000%   1.593%   0.665%   0.008%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.161%   0.000%   0.285%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.285%   0.000%   0.161%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.285%   0.000%   0.161%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.161%   0.000%   0.285%   0.000%
    5    1.2  0.5  0.5   0.303%  23.861%   0.562%   4.066%   0.000%   0.000%   0.455%   0.000%   0.920%   0.000%
    6    2.2  0.5  0.5   0.070%   0.001%   1.073%   0.149%   0.000%   0.000%   0.000%   0.211%   0.000%   1.165%
    7    3.2  0.5  0.5  21.044%   0.271%  31.778%   4.405%   0.000%   0.000%   0.000%   1.356%   0.000%   0.020%
    8    4.2  0.5  0.5   0.585%  45.153%   0.823%   5.878%   0.000%   0.000%   0.497%   0.000%   0.879%   0.000%
    9    5.2  0.5  0.5   0.110%   8.603%   6.241%  45.023%   0.000%   0.000%   0.920%   0.000%   0.455%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%  33.341%   0.001%  54.242%   0.001%   9.823%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.321%   0.000%   0.937%   0.000%  63.152%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.336%   0.001%  40.933%   0.001%  23.137%   0.002%
   13    1.2  0.5 -0.5  23.861%   0.303%   4.066%   0.562%   0.000%   0.000%   0.000%   0.455%   0.000%   0.920%
   14    2.2  0.5 -0.5   0.001%   0.070%   0.149%   1.073%   0.000%   0.000%   0.211%   0.000%   1.165%   0.000%
   15    3.2  0.5 -0.5   0.271%  21.044%   4.405%  31.778%   0.000%   0.000%   1.356%   0.000%   0.020%   0.000%
   16    4.2  0.5 -0.5  45.153%   0.585%   5.878%   0.823%   0.000%   0.000%   0.000%   0.497%   0.000%   0.879%
   17    5.2  0.5 -0.5   8.603%   0.110%  45.023%   6.241%   0.000%   0.000%   0.000%   0.920%   0.000%   0.455%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.341%   0.001%  54.242%   0.001%   9.823%   0.001%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.321%   0.000%   0.937%   0.000%  63.152%   0.000%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%  33.336%   0.001%  40.933%   0.002%  23.137%


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
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      535.93       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     23519.05  20824.98   2577.65    112.50      3.09      0.59
 REAL TIME  *     23763.88 SEC
 DISK USED  *       572.30 MB (local),        6.76 GB (total)
 SF USED    *         5.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -331.936632433672

              CI              CI           MULTI
   -331.89164849   -331.97758214   -331.12908512
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
