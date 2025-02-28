
 Working directory              : /wrk/irikura/molpro.iMV5TfkDGw/
 Global scratch directory       : /wrk/irikura/molpro.iMV5TfkDGw/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.iMV5TfkDGw/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   14
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Sb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sb};
 
 basis=aug-cc-pwCV5Z-PP
 
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Sb SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 11-Nov-24          TIME: 10:35:23  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  21000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =         8.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sb   ECP ECP28MDF                 selected for group  1
 Library entry SB     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SB     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SB     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SB     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SB     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SB     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SB     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  SB     23.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   23
 NUMBER OF PRIMITIVE AOS:         465
 NUMBER OF SYMMETRY AOS:          332
 NUMBER OF CONTRACTIONS:          265   (  129Ag  +  136Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 7 8 91011121314  15 7 8 9101112131415
                                        7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9  10111213141516171819
                                       202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617  18192021111213141516
                                       17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.507E-05 0.323E-04 0.190E-03 0.190E-03 0.190E-03 0.190E-03 0.190E-03 0.325E-03
         2 0.311E-06 0.311E-06 0.311E-06 0.498E-03 0.498E-03 0.498E-03 0.292E-02 0.292E-02


 Contracted 2-electron integrals neglected if value below      1.0D-14
 AO integral compression algorithm  1   Integral accuracy      1.0D-14

     743.178 MB (compressed) written to integral file ( 18.2%)

     Node minimum: 41.157 MB, node maximum: 62.915 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   22335719.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15996659      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ   511790813. AND WROTE     3785118. INTEGRALS IN     12 RECORDS. CPU TIME:     2.36 SEC, REAL TIME:     2.46 SEC
 SORT2 READ    53582287. AND WROTE   312900871. INTEGRALS IN   3066 RECORDS. CPU TIME:     0.38 SEC, REAL TIME:     0.45 SEC

 Node minimum:    22335257.  Node maximum:    22368464. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.25      9.07
 REAL TIME  *        10.57 SEC
 DISK USED  *        30.88 MB (local),        1.66 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     249 (  122  127)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.494D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.148D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.395D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.257D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.489D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 3 4 5 1 1 2 6   3 4 5 1 2 6 3 4 511  1214 8101513 9 7 2 6   3 4 5 11112 8141015
                                       13 9 7 2 6 3 4 5 111  12 814101513 9 7 2 6   3 4 5 11112 8141015  13 9 7 6 2 3 4 52721
                                       24231920221816261728  251112 814101513 9 7   1 6 2 3 4 511121314  1015 8 9 7 1 6 2 3 4
                                        5 6 2 3 4 5 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.338D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.473D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.633D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.385D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.385D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.272D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.272D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 3 1 2 3 1 3   2 1 510 7 8 9 4 6 3   2 1 5 6 7 8 910 4 5   6 7 8 910 412131421
                                       18172015161911 1 3 2   5 6 7 8 910 4131214  2118172015161911 5 6   7 8 910 4 1 2 3 510
                                        7 8 9 6 41312142118  172015161911 3 1 2 5  10 7 8 9 6 4 1 2 312  13141518172021161911
                                        510 7 8 9 6 4 1 3 2   1 3 2 1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  2021  ( 24 closed/active, 1113 closed/virtual, 0 active/active, 884 active/virtual )
 Total number of variables:    5251
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   16   26    0   -239.21000728    -239.22406852   -0.01406124    0.06619049 0.00004736 0.00000000  0.16E+01      4.01
   2    8   14    0   -239.22426277    -239.22433327   -0.00007051    0.00365746 0.00001268 0.00000000  0.13E+00      7.27
   3   14   28    0   -239.22433328    -239.22433328   -0.00000000    0.00000393 0.00000001 0.00000000  0.67E-04     11.17

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.92E-08)
                       Final energy:   -239.22433328
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -239.282190157476
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.34245689
 One electron energy                          -419.52511847
 Two electron energy                           180.24292832
 Virial ratio                                    3.59124782
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -239.225504176747
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.28010925
 One electron energy                          -419.28269703
 Two electron energy                           180.05719285
 Virial ratio                                    3.59238428
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -239.225504176742
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.28010925
 One electron energy                          -419.28269703
 Two electron energy                           180.05719285
 Virial ratio                                    3.59238428
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -239.225504176547
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.28010925
 One electron energy                          -419.28269704
 Two electron energy                           180.05719286
 Virial ratio                                    3.59238428
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -239.225504176483
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.28010925
 One electron energy                          -419.28269704
 Two electron energy                           180.05719286
 Virial ratio                                    3.59238428
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -239.225504176435
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.28010925
 One electron energy                          -419.28269704
 Two electron energy                           180.05719286
 Virial ratio                                    3.59238428
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -239.203096158653
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27478946
 One electron energy                          -419.19937491
 Two electron energy                           179.99627875
 Virial ratio                                    3.59229089
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -239.203096158286
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27478947
 One electron energy                          -419.19937492
 Two electron energy                           179.99627876
 Virial ratio                                    3.59229089
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -239.203096158165
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.27478947
 One electron energy                          -419.19937492
 Two electron energy                           179.99627876
 Virial ratio                                    3.59229089
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     3.942809189317
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     3.999999999994
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.999999895605
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.057193231411
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.000000000001
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.999999999999
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.439836617881
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000015
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     4.000000000000
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000189971
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     2.560153821679
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>    -0.000000000000
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.617354192802
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999999991
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.999999914424
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.382652946910
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999999
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.000000000001
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 5 2 4 1 1 2 6   4 3 5 1 3 5 6 4 2 9   7 8121114151310 4 2   3 5 6 111 7 8121415
                                        91310 6 2 4 3 5 111   7 81214151310 9 6 2   3 5 4 11113101415 8  12 7 9 6 3 5 2 42216
                                       27182024192326172125  281310111514 812 7 9   1 6 3 5 2 413101115  14 812 7 9 1 5 3 6 2
                                        4 5 3 6 2 4 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 3 2 2 3 1 1   2 3 4 6 810 5 7 9 1   2 3 5 6 4 810 7 9 5   6 810 7 9 4 1 2 312
                                       19211311141615172018   5 7 910 8 6 4121921  1316141517201811 5 7   910 8 6 4 1 2 3 5 7
                                        9 810 6 42018121517  141621131911 2 3 1 7   9 510 8 6 4 2 1 320  18151712141621131911
                                        7 9 5 810 6 4 1 2 3   1 2 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.53504     1  1  s    0.99946
    2.1     2.00000    -1.62973     1  1  d1-  1.00002
    3.1     2.00000    -1.62973     1  1  d2-  1.00002
    4.1     2.00000    -1.62973     1  1  d2+  1.00002
    5.1     2.00000    -1.62973     1  1  d0   1.00002
    6.1     2.00000    -1.62973     1  1  d1+  1.00002
    7.1     1.97790    -0.62715     1  1  s   -0.37424    1  5  s    0.57147    1  6  s    0.51095
    1.2     2.00000    -4.60212     1  1  py   0.99899
    2.2     2.00000    -4.60212     1  1  px   0.99899
    3.2     2.00000    -4.60212     1  1  pz   0.99899
    4.2     1.00289    -0.15227     1  5  px   0.42615    1  6  px   0.39989
    5.2     1.00289    -0.15227     1  5  pz   0.42615    1  6  pz   0.39989
    6.2     1.00289    -0.15227     1  5  py   0.42615    1  6  py   0.39989
    7.2     0.00448     0.42107     1  4  py  -0.89386    1  5  py  -0.62553    1  6  py   0.82372    1  7  py   0.40031
    8.2     0.00448     0.42107     1  4  pz  -0.89386    1  5  pz  -0.62553    1  6  pz   0.82372    1  7  pz   0.40031
    9.2     0.00448     0.42107     1  4  px  -0.89386    1  5  px  -0.62553    1  6  px   0.82372    1  7  px   0.40031
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99674693
 
 Energy:     -239.28219016
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 baa000      -0.09722091      0.00000991     -0.00000002      0.00026384      0.80723392      0.00000000      0.00000000
 2 aba000       0.74769556     -0.00008050      0.00000015     -0.00011764     -0.31942118      0.00000000     -0.00000000
 2 02a000       0.00000015      0.00000002     -0.70413701      0.00000000     -0.00000000      0.00000001      0.69621054
 2 a20000       0.00007603      0.70413701      0.00000002      0.00000039      0.00000052      0.69621055     -0.00000001
 2 a02000      -0.00007603     -0.70413700     -0.00000002     -0.00000039     -0.00000052      0.69621055     -0.00000001
 2 20a000      -0.00000015     -0.00000002      0.70413700      0.00000000     -0.00000000      0.00000001      0.69621055
 2 0a2000      -0.00001315      0.00000039     -0.00000000     -0.70413698      0.00022856      0.00000068     -0.00000000
 2 2a0000       0.00001315     -0.00000039      0.00000000      0.70413697     -0.00022856      0.00000068     -0.00000000
 2 aab000      -0.65047466      0.00007059     -0.00000013     -0.00014620     -0.48781273     -0.00000000      0.00000000
 0 22a000      -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.14630026
 0 2a2000       0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000014      0.00000000
 0 a22000       0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.14630026      0.00000000
 
 Energy:     -239.22550418   -239.22550418   -239.22550418   -239.22550418   -239.22550418   -239.20309616   -239.20309616

 State:              8
 2 baa000      -0.00000000
 2 aba000      -0.00000000
 2 02a000       0.00000000
 2 a20000      -0.00000068
 2 a02000      -0.00000068
 2 20a000      -0.00000000
 2 0a2000       0.69621054
 2 2a0000       0.69621055
 2 aab000       0.00000000
 0 22a000       0.00000000
 0 2a2000      -0.14630026
 0 a22000       0.00000014
 
 Energy:     -239.20309616
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        1.38       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *        20.68     11.42      9.07
 REAL TIME  *        23.66 SEC
 DISK USED  *        88.44 MB (local),        2.45 GB (total)
 SF USED    *       148.62 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -239.2821902  -0.0
    -239.2255042   6.0
    -239.2255042   6.0
    -239.2255042   6.0
    -239.2255042   6.0
    -239.2255042   6.0
    -239.2030962   2.0
    -239.2030962   2.0
    -239.2030962   2.0
                                                  


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
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -239.28219016

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.60D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:      12620623
 Number of doubly external configurations:       3891926
 Total number of contracted configurations:     16546229
 Total number of uncontracted configurations:  965890508

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      1.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3275162 words, CPU-time:      0.78 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.28219016     0.00000000    -1.08600958  0.55D-01  0.11D+00     3.19
    2     1     1     1.10322498    -0.87276693  -240.15495709    -0.87276693    -0.02878251  0.43D-02  0.17D-02   105.24
    3     1     1     1.08752203    -0.89976067  -240.18195082    -0.02699374    -0.00039904  0.62D-04  0.28D-04   194.66
    4     1     1     1.08699808    -0.90016214  -240.18235230    -0.00040147    -0.00001115  0.21D-05  0.10D-05   287.56
    5     1     1     1.08705385    -0.90017396  -240.18236412    -0.00001182    -0.00000040  0.25D-07  0.69D-07   365.09
    6     1     1     1.08707097    -0.90017441  -240.18236457    -0.00000045    -0.00000002  0.16D-08  0.36D-08   444.86


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.8%  73.4%
 P   0.2%  18.2%   2.2%

 Initialization:   0.5%
 Other:            4.1%

 Total CPU:      444.9 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9557457


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95858433 (fixed)   0.95882255 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110921   -0.00293623   -0.00361555
 Singles      0.01869470   -0.08971663   -0.09790426
 Pairs        0.06847284   -0.80752154   -0.79865460
 Total        1.08827676   -0.90017440   -0.90017441
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.28219016
 Nuclear energy                         0.00000000
 Kinetic energy                        93.16521095
 One electron energy                 -419.11822347
 Two electron energy                  178.93585891
 Virial quotient                       -2.57802631
 Correlation energy                    -0.90017441
 !MRCI STATE 1.2 Energy              -240.182364568866

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.26182905 (Davidson, fixed reference)
 Cluster corrected energies          -240.26134231 (Davidson, relaxed reference)

 Cluster corrected energies          -240.25925471 (Pople, fixed reference)
 Cluster corrected energies          -240.25874901 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5      130.30       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       467.35    446.66     11.42      9.07
 REAL TIME  *       477.42 SEC
 DISK USED  *       217.37 MB (local),        4.21 GB (total)
 SF USED    *         1.78 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -240.26134231  AU                              


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
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  32

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -239.22550418
     2      -239.22550418
     3      -239.22550418
     4      -239.22550418
     5      -239.22550418
     6      -239.20309616
     7      -239.20309616
     8      -239.20309616

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1328D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1195D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1195D-06

 Number of blocks in overlap matrix:   778   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    1870
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:      15534476
 Number of doubly external configurations:      28992749
 Total number of contracted configurations:     44571311
 Total number of uncontracted configurations: 1275044416

 Diagonal Coupling coefficients finished.               Storage:  27654396 words, CPU-Time:     65.39 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3813320 words, CPU-time:      3.80 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.22550418     0.00000000    -1.08084836  0.62D-01  0.99D-01    82.43
    1     2     2     1.00000000     0.00000000  -239.22550418    -0.00000000    -1.08113769  0.61D-01  0.99D-01    82.43
    1     3     3     1.00000000     0.00000000  -239.22550418     0.00000000    -1.08226673  0.60D-01  0.10D+00    82.43
    1     4     4     1.00000000     0.00000000  -239.22550418     0.00000000    -1.08157942  0.61D-01  0.10D+00    82.43
    1     5     5     1.00000000     0.00000000  -239.22550418     0.00000000    -1.08128300  0.61D-01  0.10D+00    82.43
    1     6     6     1.00000000     0.00000000  -239.20309616     0.00000000    -1.06364696  0.42D-01  0.10D+00    82.43
    1     7     7     1.00000000     0.00000000  -239.20309616     0.00000000    -1.06531269  0.42D-01  0.10D+00    82.43
    1     8     8     1.00000000     0.00000000  -239.20309616     0.00000000    -1.06461758  0.42D-01  0.10D+00    82.43
    2     1     1     1.10558846    -0.88144713  -240.10695131    -0.88144713    -0.02813980  0.46D-02  0.15D-02  1790.89
    2     2     2     1.10568440    -0.88137919  -240.10688337    -0.88137919    -0.02825713  0.45D-02  0.16D-02  1790.89
    2     3     3     1.10554752    -0.88136687  -240.10687105    -0.88136687    -0.02823561  0.46D-02  0.15D-02  1790.89
    2     4     4     1.10568190    -0.88129965  -240.10680382    -0.88129965    -0.02824613  0.47D-02  0.15D-02  1790.89
    2     5     5     1.10579526    -0.88100499  -240.10650917    -0.88100499    -0.02854547  0.48D-02  0.15D-02  1790.89
    2     6     6     1.09745317    -0.88003501  -240.08313117    -0.88003501    -0.02475724  0.34D-02  0.15D-02  1790.89
    2     7     7     1.09765309    -0.88000259  -240.08309875    -0.88000259    -0.02481884  0.34D-02  0.15D-02  1790.89
    2     8     8     1.09716824    -0.87987398  -240.08297014    -0.87987398    -0.02484118  0.34D-02  0.15D-02  1790.89
    3     1     1     1.09133626    -0.90769530  -240.13319947    -0.02624816    -0.00060289  0.79D-04  0.64D-04  3585.19
    3     2     2     1.09131614    -0.90769337  -240.13319755    -0.02631418    -0.00060243  0.80D-04  0.64D-04  3585.19
    3     3     3     1.09129655    -0.90769221  -240.13319639    -0.02632534    -0.00060624  0.80D-04  0.64D-04  3585.19
    3     4     4     1.09128528    -0.90767771  -240.13318189    -0.02637806    -0.00061063  0.81D-04  0.64D-04  3585.19
    3     5     5     1.09124050    -0.90766459  -240.13316876    -0.02665959    -0.00062255  0.83D-04  0.66D-04  3585.19
    3     6     6     1.08817264    -0.90328248  -240.10637864    -0.02324747    -0.00051650  0.47D-04  0.68D-04  3585.19
    3     7     7     1.08812018    -0.90327869  -240.10637485    -0.02327610    -0.00051737  0.47D-04  0.68D-04  3585.19
    3     8     8     1.08795825    -0.90323796  -240.10633412    -0.02336398    -0.00053858  0.48D-04  0.72D-04  3585.19
    4     1     1     1.09088334    -0.90833243  -240.13383660    -0.00063713    -0.00004056  0.38D-05  0.64D-05  5376.66
    4     2     2     1.09088755    -0.90833137  -240.13383555    -0.00063800    -0.00004098  0.39D-05  0.65D-05  5376.66
    4     3     3     1.09088257    -0.90833122  -240.13383539    -0.00063900    -0.00004120  0.38D-05  0.65D-05  5376.66
    4     4     4     1.09085343    -0.90832878  -240.13383296    -0.00065107    -0.00004288  0.38D-05  0.68D-05  5376.66
    4     5     5     1.09086593    -0.90832871  -240.13383289    -0.00066412    -0.00004274  0.38D-05  0.68D-05  5376.66
    4     6     6     1.08867165    -0.90384935  -240.10694551    -0.00056687    -0.00004397  0.30D-05  0.77D-05  5376.66
    4     7     7     1.08866487    -0.90384889  -240.10694505    -0.00057020    -0.00004438  0.30D-05  0.78D-05  5376.66
    4     8     8     1.08860989    -0.90384093  -240.10693709    -0.00060297    -0.00004948  0.31D-05  0.86D-05  5376.66
    5     1     1     1.09111587    -0.90838384  -240.13388802    -0.00005141    -0.00000352  0.21D-06  0.56D-06  7215.48
    5     2     2     1.09111432    -0.90838370  -240.13388787    -0.00005233    -0.00000364  0.22D-06  0.58D-06  7215.48
    5     3     3     1.09111465    -0.90838369  -240.13388787    -0.00005248    -0.00000362  0.22D-06  0.57D-06  7215.48
    5     4     4     1.09111252    -0.90838341  -240.13388759    -0.00005463    -0.00000377  0.22D-06  0.60D-06  7215.48
    5     5     5     1.09111200    -0.90838340  -240.13388758    -0.00005469    -0.00000380  0.23D-06  0.60D-06  7215.48
    5     6     6     1.08924969    -0.90390762  -240.10700377    -0.00005826    -0.00000378  0.25D-06  0.55D-06  7215.48
    5     7     7     1.08925088    -0.90390760  -240.10700376    -0.00005871    -0.00000378  0.25D-06  0.55D-06  7215.48
    5     8     8     1.08925174    -0.90390688  -240.10700304    -0.00006595    -0.00000428  0.29D-06  0.60D-06  7215.48
    6     1     1     1.09115974    -0.90838822  -240.13389240    -0.00000438    -0.00000034  0.36D-07  0.43D-07  9065.23
    6     2     2     1.09115819    -0.90838821  -240.13389238    -0.00000451    -0.00000035  0.38D-07  0.44D-07  9065.23
    6     3     3     1.09115843    -0.90838819  -240.13389236    -0.00000449    -0.00000035  0.37D-07  0.44D-07  9065.23
    6     4     4     1.09115747    -0.90838813  -240.13389231    -0.00000472    -0.00000037  0.39D-07  0.46D-07  9065.23
    6     5     5     1.09115874    -0.90838813  -240.13389231    -0.00000473    -0.00000037  0.39D-07  0.47D-07  9065.23
    6     6     6     1.08929171    -0.90391220  -240.10700836    -0.00000458    -0.00000030  0.30D-07  0.38D-07  9065.23
    6     7     7     1.08929188    -0.90391218  -240.10700834    -0.00000458    -0.00000030  0.30D-07  0.38D-07  9065.23
    6     8     8     1.08928970    -0.90391209  -240.10700824    -0.00000521    -0.00000035  0.34D-07  0.45D-07  9065.23
    7     1     1     1.09118612    -0.90838860  -240.13389278    -0.00000038    -0.00000003  0.26D-08  0.48D-08 10917.07
    7     2     2     1.09118584    -0.90838860  -240.13389277    -0.00000039    -0.00000003  0.27D-08  0.49D-08 10917.07
    7     3     3     1.09118581    -0.90838858  -240.13389275    -0.00000039    -0.00000003  0.27D-08  0.49D-08 10917.07
    7     4     4     1.09118560    -0.90838855  -240.13389273    -0.00000041    -0.00000004  0.29D-08  0.53D-08 10917.07
    7     5     5     1.09118588    -0.90838855  -240.13389272    -0.00000042    -0.00000003  0.30D-08  0.51D-08 10917.07
    7     6     6     1.08931323    -0.90391253  -240.10700869    -0.00000034    -0.00000003  0.27D-08  0.45D-08 10917.07
    7     7     7     1.08931314    -0.90391252  -240.10700868    -0.00000034    -0.00000003  0.28D-08  0.45D-08 10917.07
    7     8     8     1.08931237    -0.90391249  -240.10700865    -0.00000040    -0.00000004  0.37D-08  0.55D-08 10917.07


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.3%  32.8%
 P   0.2%  30.8%  24.4%

 Initialization:   0.6%
 Other:           10.5%

 Total CPU:    10917.1 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.2672733   0.0387484   0.0537430   0.0322824   0.9123109  -0.0000000  -0.0000001   0.0000000
 2222222222/\/000           0.8922391   0.1944696   0.0379286  -0.0098733  -0.2715377   0.0000000  -0.0000000   0.0000000
 2222222222/02000          -0.0026808   0.0166764  -0.0120878   0.6735183  -0.0230435  -0.0253526   0.0133667   0.6676352
 2222222222/20000           0.0026808  -0.0166764   0.0120878  -0.6735181   0.0230435  -0.0253525   0.0133667   0.6676355
 22222222222/0000           0.0349775   0.0110229  -0.6725031  -0.0112009   0.0292974  -0.0011912   0.6681141  -0.0134215
 22222222220/2000          -0.0349774  -0.0110229   0.6725029   0.0112009  -0.0292973  -0.0011912   0.6681141  -0.0134215
 222222222220/000           0.1399838  -0.6591884  -0.0043771   0.0163441  -0.0133330   0.6677680   0.0016993   0.0253235
 222222222202/000          -0.1399839   0.6591886   0.0043771  -0.0163440   0.0133330   0.6677676   0.0016993   0.0253236
 22222202222/2000           0.0000000   0.0000000  -0.0000002  -0.0000000  -0.0000000   0.0002297  -0.1288401   0.0025882
 222222022222/000           0.0000000  -0.0000002  -0.0000000  -0.0000000  -0.0000000  -0.1287734  -0.0003277  -0.0048834
 2222220222/22000           0.0000000   0.0000000   0.0000000  -0.0000002   0.0000000   0.0048890  -0.0025776  -0.1287475

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.322157   -0.003804   -0.198623   -0.049629    0.877212    0.000000   -0.000000    0.000000
 2          -0.085878    0.023662    0.935323   -0.015640    0.179460   -0.000000    0.000000    0.000000
 3           0.020335   -0.017151    0.006211    0.954215    0.062786   -0.000000   -0.000000   -0.000000
 4           0.031861    0.955655   -0.023191    0.015893    0.011493    0.000000    0.000000   -0.000000
 5           0.895894   -0.032696    0.018918   -0.041570    0.330808   -0.000000    0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.036327    0.956835   -0.001707
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.019153    0.002435    0.957332
 8          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.956646    0.036286   -0.019231

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956668   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.956668   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.956668   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.956668   -0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.956668   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.957526   -0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.957526    0.000000
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.957527


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.87721167 (fixed)   0.95689909 (relaxed)   0.95666815 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00133302   -0.00358833   -0.74500032
 Singles      0.02160469   -0.09558180   -0.10543079
 Pairs        0.06970298   -0.00000004   -0.05795750
 Total        1.09264070   -0.09917016   -0.90838860
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22550418
 Nuclear energy                         0.00000000
 Kinetic energy                        93.13346309
 One electron energy                 -418.92332644
 Two electron energy                  178.78943366
 Virial quotient                       -2.57838466
 Correlation energy                    -0.90838860
 !MRCI STATE 1.2 Energy              -240.133892781372

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.21804653 (Davidson, fixed reference)
 Cluster corrected energies          -240.21756750 (Davidson, relaxed reference)
 Cluster corrected energies          -240.21804653 (Davidson, rotated reference)

 Cluster corrected energies          -240.21660187 (Pople, fixed reference)
 Cluster corrected energies          -240.21609351 (Pople, relaxed reference)
 Cluster corrected energies          -240.21660187 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.93532281 (fixed)   0.95689922 (relaxed)   0.95666827 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00133303   -0.00358832   -0.74500053
 Singles      0.02160469   -0.09558180   -0.10543076
 Pairs        0.06970270   -0.00000000   -0.05795730
 Total        1.09264042   -0.09917013   -0.90838860
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22550418
 Nuclear energy                         0.00000000
 Kinetic energy                        93.13346238
 One electron energy                 -418.92332545
 Two electron energy                  178.78943267
 Virial quotient                       -2.57838468
 Correlation energy                    -0.90838860
 !MRCI STATE 2.2 Energy              -240.133892773698

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.21804627 (Davidson, fixed reference)
 Cluster corrected energies          -240.21756723 (Davidson, relaxed reference)
 Cluster corrected energies          -240.21804627 (Davidson, rotated reference)

 Cluster corrected energies          -240.21660159 (Pople, fixed reference)
 Cluster corrected energies          -240.21609323 (Pople, relaxed reference)
 Cluster corrected energies          -240.21660159 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95421478 (fixed)   0.95689923 (relaxed)   0.95666828 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00133302   -0.00358832   -0.74500025
 Singles      0.02160469   -0.09558192   -0.10543081
 Pairs        0.06970268   -0.00000020   -0.05795751
 Total        1.09264038   -0.09917044   -0.90838858
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22550418
 Nuclear energy                         0.00000000
 Kinetic energy                        93.13346467
 One electron energy                 -418.92332208
 Two electron energy                  178.78942933
 Virial quotient                       -2.57838462
 Correlation energy                    -0.90838858
 !MRCI STATE 3.2 Energy              -240.133892752713

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.21804622 (Davidson, fixed reference)
 Cluster corrected energies          -240.21756718 (Davidson, relaxed reference)
 Cluster corrected energies          -240.21804622 (Davidson, rotated reference)

 Cluster corrected energies          -240.21660153 (Pople, fixed reference)
 Cluster corrected energies          -240.21609318 (Pople, relaxed reference)
 Cluster corrected energies          -240.21660153 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95565516 (fixed)   0.95689933 (relaxed)   0.95666837 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00133303   -0.00358832   -0.74499998
 Singles      0.02160502   -0.09558255   -0.10543116
 Pairs        0.06970213    0.00000000   -0.05795741
 Total        1.09264018   -0.09917087   -0.90838855
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22550418
 Nuclear energy                         0.00000000
 Kinetic energy                        93.13347390
 One electron energy                 -418.92332226
 Two electron energy                  178.78942953
 Virial quotient                       -2.57838436
 Correlation energy                    -0.90838855
 !MRCI STATE 4.2 Energy              -240.133892725486

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.21804600 (Davidson, fixed reference)
 Cluster corrected energies          -240.21756695 (Davidson, relaxed reference)
 Cluster corrected energies          -240.21804600 (Davidson, rotated reference)

 Cluster corrected energies          -240.21660131 (Pople, fixed reference)
 Cluster corrected energies          -240.21609294 (Pople, relaxed reference)
 Cluster corrected energies          -240.21660131 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.89589367 (fixed)   0.95689920 (relaxed)   0.95666825 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00133303   -0.00358832   -0.74499971
 Singles      0.02160503   -0.09558259   -0.10543121
 Pairs        0.06970240   -0.00000004   -0.05795762
 Total        1.09264046   -0.09917095   -0.90838855
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.22550418
 Nuclear energy                         0.00000000
 Kinetic energy                        93.13347389
 One electron energy                 -418.92331621
 Two electron energy                  178.78942348
 Virial quotient                       -2.57838436
 Correlation energy                    -0.90838855
 !MRCI STATE 5.2 Energy              -240.133892723899

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.21804625 (Davidson, fixed reference)
 Cluster corrected energies          -240.21756720 (Davidson, relaxed reference)
 Cluster corrected energies          -240.21804625 (Davidson, rotated reference)

 Cluster corrected energies          -240.21660157 (Pople, fixed reference)
 Cluster corrected energies          -240.21609321 (Pople, relaxed reference)
 Cluster corrected energies          -240.21660157 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95683533 (fixed)   0.95775061 (relaxed)   0.95752621 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00125773   -0.00340166   -0.75438250
 Singles      0.01641164   -0.08371306   -0.09034566
 Pairs        0.07301391    0.00145604   -0.05918437
 Total        1.09068329   -0.08565869   -0.90391253
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.20309616
 Nuclear energy                         0.00000000
 Kinetic energy                        93.13500370
 One electron energy                 -418.82992843
 Two electron energy                  178.72291974
 Virial quotient                       -2.57805335
 Correlation energy                    -0.90391254
 !MRCI STATE 6.2 Energy              -240.107008693309

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.18897845 (Davidson, fixed reference)
 Cluster corrected energies          -240.18851653 (Davidson, relaxed reference)
 Cluster corrected energies          -240.18897845 (Davidson, rotated reference)

 Cluster corrected energies          -240.18743492 (Pople, fixed reference)
 Cluster corrected energies          -240.18694636 (Pople, relaxed reference)
 Cluster corrected energies          -240.18743492 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95733158 (fixed)   0.95775065 (relaxed)   0.95752625 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00125772   -0.00340166   -0.00431343
 Singles      0.01641167   -0.08371318   -0.09034574
 Pairs        0.07301380   -0.81663163   -0.80925335
 Total        1.09068319   -0.90374647   -0.90391252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.20309616
 Nuclear energy                         0.00000000
 Kinetic energy                        93.13500468
 One electron energy                 -418.82992370
 Two electron energy                  178.72291502
 Virial quotient                       -2.57805333
 Correlation energy                    -0.90391252
 !MRCI STATE 7.2 Energy              -240.107008676915

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.18897835 (Davidson, fixed reference)
 Cluster corrected energies          -240.18851643 (Davidson, relaxed reference)
 Cluster corrected energies          -240.18897835 (Davidson, rotated reference)

 Cluster corrected energies          -240.18743481 (Pople, fixed reference)
 Cluster corrected energies          -240.18694626 (Pople, relaxed reference)
 Cluster corrected energies          -240.18743481 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95664553 (fixed)   0.95775099 (relaxed)   0.95752659 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00125772   -0.00340165   -0.76808755
 Singles      0.01641244   -0.08371479   -0.09034670
 Pairs        0.07301226    0.01640502   -0.04547824
 Total        1.09068242   -0.07071142   -0.90391249
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.20309616
 Nuclear energy                         0.00000000
 Kinetic energy                        93.13503588
 One electron energy                 -418.82992797
 Two electron energy                  178.72291933
 Virial quotient                       -2.57805246
 Correlation energy                    -0.90391249
 !MRCI STATE 8.2 Energy              -240.107008646419

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.18897762 (Davidson, fixed reference)
 Cluster corrected energies          -240.18851570 (Davidson, relaxed reference)
 Cluster corrected energies          -240.18897762 (Davidson, rotated reference)

 Cluster corrected energies          -240.18743404 (Pople, fixed reference)
 Cluster corrected energies          -240.18694548 (Pople, relaxed reference)
 Cluster corrected energies          -240.18743404 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     2863.31       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *     12068.01  11600.65    446.66     11.42      9.07
 REAL TIME  *     12316.73 SEC
 DISK USED  *         2.88 GB (local),       41.58 GB (total)
 SF USED    *        26.96 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -240.21804653  AU                              
 SETTING HLSDIAG(3)     =      -240.21804627  AU                              
 SETTING HLSDIAG(4)     =      -240.21804622  AU                              
 SETTING HLSDIAG(5)     =      -240.21804600  AU                              
 SETTING HLSDIAG(6)     =      -240.21804625  AU                              
 SETTING HLSDIAG(7)     =      -240.18897845  AU                              
 SETTING HLSDIAG(8)     =      -240.18897835  AU                              
 SETTING HLSDIAG(9)     =      -240.18897762  AU                              


         HLSDIAG
    -240.2613423
    -240.2180465
    -240.2180463
    -240.2180462
    -240.2180460
    -240.2180463
    -240.1889785
    -240.1889783
    -240.1889776
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -240.182365
 Replaced energies:   -240.261342

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -240.133893   -240.133893   -240.133893   -240.133893   -240.133893   -240.107009   -240.107009   -240.107009
 Replaced energies:   -240.218047   -240.218046   -240.218046   -240.218046   -240.218046   -240.188978   -240.188978   -240.188978



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -240.26134231

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00   -2030.42
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      77.09

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -4.18

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00   -1172.27
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00     -44.51

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00    9502.33       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.12      22.60       3.71       0.04       7.65

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00    9502.38       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.12       0.00       4.67     -15.45       0.71     -17.46

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00    9502.39       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     -22.60      -4.67      -0.00      -0.83     -21.86     -26.28

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    9502.44       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -3.71      15.45       0.83       0.00      -0.09    1446.82

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    9502.39       0.00
                            0.00      -0.00      -0.00      -0.00      -0.04      -0.71      21.86       0.09      -0.00     -52.71

   10   6.2  0.5  0.5   -2030.42       0.00   -1172.27       0.00       0.00       0.00       0.00       0.00       0.00   15882.03
                          -77.09       4.18      44.51      -0.00      -7.65      17.46      26.28   -1446.82      52.71      -0.00

   11   7.2  0.5  0.5      -5.17       0.00      -2.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           40.64   -2345.75     -23.47      -0.00    1126.53     232.91      10.36     -46.27   -1212.56       0.01

   12   8.2  0.5  0.5     -77.00       0.00     -44.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2030.02      47.12   -1172.03      -0.00     278.10   -1421.14      -8.62     -18.88      -2.39       0.32

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00     -30.46      -0.38      -0.03       1.32     471.22
                           -0.00       0.00      -0.00      -0.00       0.00      -1.05       3.42      -7.07       0.21      15.31

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      30.46      -0.00       0.81      -0.43      -8.96      68.87
                           -0.00      -0.00      -0.00       0.00       1.05       0.00     -15.49      -2.40      -0.02       8.64

   15   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.38      -0.81      -0.00      15.88      -0.64      39.34
                           -0.00      -0.00      -0.00       0.00      -3.42      15.49       0.00       0.55       0.84   -1447.38

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.03       0.43     -15.88      -0.00       0.91      58.24
                           -0.00      -0.00       0.00       0.00       7.07       2.40      -0.55       0.00     -30.90     -24.48

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -1.32       8.96       0.64      -0.91       0.00    1601.07
                           -0.00       0.00      -0.00      -0.00      -0.21       0.02      -0.84      30.90       0.00      48.13

   18   6.2  0.5 -0.5       0.00   -1172.27       0.00   -2030.42    -471.22     -68.87     -39.34     -58.24   -1601.07       0.00
                           -0.00     -44.51       4.18      77.09     -15.31      -8.64    1447.38      24.48     -48.13      -0.00

   19   7.2  0.5 -0.5       0.00      -2.98       0.00      -5.17      -5.45      36.11     -55.09    1445.69     -52.29       0.01
                           -0.00      23.47   -2345.75     -40.64     268.62   -1422.20      -7.82      34.89     -36.54      -0.32

   20   8.2  0.5 -0.5       0.00     -44.46       0.00     -77.00      57.41      20.36   -1446.15     -55.24       3.23      -0.00
                           -0.00    1172.03      47.12   -2030.02   -1596.88    -301.49     -49.71     -13.09    -389.02       0.01


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5      -5.17     -77.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -40.64   -2030.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00   -1172.27      -2.98     -44.46
                         2345.75     -47.12      -0.00       0.00       0.00       0.00      -0.00      44.51     -23.47   -1172.03

    3   1.2  1.5 -0.5      -2.98     -44.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           23.47    1172.03       0.00       0.00       0.00      -0.00       0.00      -4.18    2345.75     -47.12

    4   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00   -2030.42      -5.17     -77.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00     -77.09      40.64    2030.02

    5   1.2  0.5  0.5       0.00       0.00       0.00      30.46       0.38       0.03      -1.32    -471.22      -5.45      57.41
                        -1126.53    -278.10      -0.00      -1.05       3.42      -7.07       0.21      15.31    -268.62    1596.88

    6   2.2  0.5  0.5       0.00       0.00     -30.46      -0.00      -0.81       0.43       8.96     -68.87      36.11      20.36
                         -232.91    1421.14       1.05      -0.00     -15.49      -2.40      -0.02       8.64    1422.20     301.49

    7   3.2  0.5  0.5       0.00       0.00      -0.38       0.81      -0.00     -15.88       0.64     -39.34     -55.09   -1446.15
                          -10.36       8.62      -3.42      15.49      -0.00       0.55       0.84   -1447.38       7.82      49.71

    8   4.2  0.5  0.5       0.00       0.00      -0.03      -0.43      15.88      -0.00      -0.91     -58.24    1445.69     -55.24
                           46.27      18.88       7.07       2.40      -0.55      -0.00     -30.90     -24.48     -34.89      13.09

    9   5.2  0.5  0.5       0.00       0.00       1.32      -8.96      -0.64       0.91       0.00   -1601.07     -52.29       3.23
                         1212.56       2.39      -0.21       0.02      -0.84      30.90      -0.00      48.13      36.54     389.02

   10   6.2  0.5  0.5       0.00       0.00     471.22      68.87      39.34      58.24    1601.07       0.00       0.01      -0.00
                           -0.01      -0.32     -15.31      -8.64    1447.38      24.48     -48.13       0.00       0.32      -0.01

   11   7.2  0.5  0.5   15882.05       0.00       5.45     -36.11      55.09   -1445.69      52.29      -0.01      -0.00       0.32
                            0.00      -0.00     268.62   -1422.20      -7.82      34.89     -36.54      -0.32       0.00      -0.01

   12   8.2  0.5  0.5       0.00   15882.21     -57.41     -20.36    1446.15      55.24      -3.23       0.00      -0.32      -0.00
                            0.00       0.00   -1596.88    -301.49     -49.71     -13.09    -389.02       0.01       0.01      -0.00

   13   1.2  0.5 -0.5       5.45     -57.41    9502.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -268.62    1596.88      -0.00       0.12     -22.60      -3.71      -0.04      -7.65    1126.53     278.10

   14   2.2  0.5 -0.5     -36.11     -20.36       0.00    9502.38       0.00       0.00       0.00       0.00       0.00       0.00
                         1422.20     301.49      -0.12      -0.00      -4.67      15.45      -0.71      17.46     232.91   -1421.14

   15   3.2  0.5 -0.5      55.09    1446.15       0.00       0.00    9502.39       0.00       0.00       0.00       0.00       0.00
                            7.82      49.71      22.60       4.67       0.00       0.83      21.86      26.28      10.36      -8.62

   16   4.2  0.5 -0.5   -1445.69      55.24       0.00       0.00       0.00    9502.44       0.00       0.00       0.00       0.00
                          -34.89      13.09       3.71     -15.45      -0.83      -0.00       0.09   -1446.82     -46.27     -18.88

   17   5.2  0.5 -0.5      52.29      -3.23       0.00       0.00       0.00       0.00    9502.39       0.00       0.00       0.00
                           36.54     389.02       0.04       0.71     -21.86      -0.09       0.00      52.71   -1212.56      -2.39

   18   6.2  0.5 -0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00   15882.03       0.00       0.00
                            0.32      -0.01       7.65     -17.46     -26.28    1446.82     -52.71       0.00       0.01       0.32

   19   7.2  0.5 -0.5      -0.00      -0.32       0.00       0.00       0.00       0.00       0.00       0.00   15882.05       0.00
                           -0.00      -0.01   -1126.53    -232.91     -10.36      46.27    1212.56      -0.01      -0.00       0.00

   20   8.2  0.5 -0.5       0.32      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15882.21
                            0.01       0.00    -278.10    1421.14       8.62      18.88       2.39      -0.32      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -240.26379016    -0.00244785     -537.24      0.00000000        0.00      0.0000
     2  -240.26379016    -0.00244785     -537.24      0.00000000        0.00      0.0000
     3  -240.26379015    -0.00244783     -537.24      0.00000002        0.00      0.0000
     4  -240.26379015    -0.00244783     -537.24      0.00000002        0.00      0.0000
     5  -240.22379185     0.03755047     8241.37      0.03999832     8778.62      1.0884
     6  -240.22379185     0.03755047     8241.37      0.03999832     8778.62      1.0884
     7  -240.22379173     0.03755059     8241.40      0.03999844     8778.64      1.0884
     8  -240.22379173     0.03755059     8241.40      0.03999844     8778.64      1.0884
     9  -240.21790152     0.04344080     9534.15      0.04588865    10071.39      1.2487
    10  -240.21790152     0.04344080     9534.15      0.04588865    10071.39      1.2487
    11  -240.21790134     0.04344098     9534.19      0.04588883    10071.43      1.2487
    12  -240.21790134     0.04344098     9534.19      0.04588883    10071.43      1.2487
    13  -240.21790120     0.04344112     9534.22      0.04588897    10071.46      1.2487
    14  -240.21790120     0.04344112     9534.22      0.04588897    10071.46      1.2487
    15  -240.18897523     0.07236709    15882.74      0.07481494    16419.98      2.0358
    16  -240.18897523     0.07236709    15882.74      0.07481494    16419.98      2.0358
    17  -240.18100378     0.08033853    17632.27      0.08278638    18169.51      2.2527
    18  -240.18100378     0.08033853    17632.27      0.08278638    18169.51      2.2527
    19  -240.18100338     0.08033893    17632.36      0.08278678    18169.60      2.2527
    20  -240.18100338     0.08033893    17632.36      0.08278678    18169.60      2.2527


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.529330913   0.059976430   0.103756369   0.817469875   0.065428359   0.057981903   0.084277537   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.118129983   0.814052218  -0.524505383   0.083338468   0.033673452  -0.030789466  -0.004959469  -0.068872932
                        -0.006221954   0.048452221  -0.041287639   0.005714384  -0.047274575   0.052781119   0.000388573   0.053616960

    3    1.2  1.5 -0.5   0.813003263   0.117866775  -0.083209707  -0.524525339  -0.060899186  -0.058039043   0.087210684  -0.004259922
                         0.063673592   0.010041369  -0.007355212  -0.041033333  -0.005012678   0.000506288   0.003543407   0.002569121

    4    1.2  1.5 -1.5  -0.059409461   0.524327042   0.807463423  -0.102486312  -0.033225792   0.037492888   0.000000000  -0.068548585
                        -0.008227279   0.072611079   0.127513987  -0.016184557   0.047517869  -0.053620458  -0.000000000   0.049028509

    5    1.2  0.5  0.5  -0.002104682  -0.007059999   0.036700093   0.001907975   0.125658028  -0.295079858   0.017527101  -0.003624729
                        -0.000237261  -0.000358513   0.002975184  -0.000107962  -0.329195438   0.366001802   0.002080379  -0.009609670

    6    2.2  0.5  0.5   0.016905583   0.000634591   0.002816411  -0.033413797   0.448765446   0.331112073  -0.162151587   0.006717811
                         0.001179019  -0.000036402   0.000192177  -0.001343313  -0.051807811   0.073891189  -0.000141132  -0.008383189

    7    3.2  0.5  0.5   0.000257862  -0.001578527  -0.002648574   0.000138509   0.243827484  -0.269788656  -0.000933454   0.257764181
                        -0.001611672   0.020313454   0.031193090  -0.004001330   0.145071817  -0.159772384  -0.010297241   0.316573725

    8    4.2  0.5  0.5   0.001535737   0.001512599   0.000016682  -0.000560466   0.014448039  -0.016255009  -0.010299981   0.009396272
                        -0.037186307  -0.004614412   0.001369574   0.001700859  -0.094305477  -0.106180779   0.569324071  -0.024518205

    9    5.2  0.5  0.5  -0.004597213   0.036569037   0.006787565  -0.001013967  -0.010345719   0.002453863   0.014718863   0.459874919
                         0.001020262   0.002562050   0.000830227  -0.000182717   0.004811474   0.004238500  -0.021126421  -0.365094275

   10    6.2  0.5  0.5   0.132120406   0.016955505   0.007327841   0.067869654  -0.060921638  -0.049840139  -0.272991440   0.004646261
                         0.005189308   0.000503855   0.000343088   0.002466612  -0.001733764  -0.007760229  -0.006776950  -0.003482668

   11    7.2  0.5  0.5   0.001188155  -0.007367208   0.006331404  -0.000636487  -0.110956978   0.123461546   0.000298443   0.125604153
                        -0.018175496   0.124266324  -0.080454413   0.009748894  -0.074743844   0.075796916   0.012977154   0.161341736

   12    8.2  0.5  0.5   0.000128805   0.000024226   0.000713415   0.005724775  -0.005966474  -0.003770969  -0.006219692   0.000672608
                        -0.007370884  -0.001400398  -0.018462464  -0.148343204   0.205611169   0.183901239   0.068348627   0.001629954

   13    1.2  0.5 -0.5   0.007042439  -0.002117333   0.001867780  -0.036714944   0.469040959   0.341792043   0.002642196  -0.013045707
                         0.000613333  -0.000053692   0.000404258  -0.002785941  -0.032093920   0.085660817   0.009924879   0.011888514

   14    2.2  0.5 -0.5  -0.000623598   0.016907503  -0.033214325  -0.002811913  -0.129183563   0.299617345   0.010340972   0.131806681
                        -0.000123108   0.001151153  -0.003885220  -0.000249496   0.313698454  -0.338088630   0.002910521  -0.094446578

   15    3.2  0.5 -0.5  -0.001222897   0.000034343  -0.000487339  -0.002249537   0.023660803   0.020831629   0.025489974  -0.005231185
                         0.020337961   0.001631809   0.003973956   0.031224404  -0.312655242  -0.282955327  -0.407445159  -0.008918476

   16    4.2  0.5 -0.5  -0.000865317  -0.003579820  -0.000288295  -0.000230113  -0.077703534   0.085565367   0.021906100   0.339582296
                        -0.004778282   0.037045443  -0.001767464   0.001350207  -0.074167000   0.042199962   0.014476017   0.457077512

   17    5.2  0.5 -0.5  -0.036574792  -0.004413800  -0.001030057  -0.006833984   0.002067420  -0.009871627   0.586441000  -0.024262149
                        -0.002478535  -0.001641241   0.000022315  -0.000238702   0.004439831   0.005721466   0.029423195  -0.008620831

   18    6.2  0.5 -0.5  -0.016864337   0.131583290   0.067423635  -0.007291659   0.022200523  -0.033489498   0.005805161   0.218099791
                        -0.001826782   0.012983392   0.008150308  -0.000804154  -0.045292355   0.050920579   0.000129723  -0.164325087

   19    7.2  0.5 -0.5  -0.009748695  -0.001316304   0.000891997   0.006295872  -0.008630273  -0.002327712   0.008301646   0.007306724
                         0.124102207   0.018166665  -0.009728843  -0.080457201   0.144614813   0.133763504  -0.204300372   0.010728811

   20    8.2  0.5 -0.5   0.000168103  -0.000883515  -0.017484787   0.002175207   0.152873362  -0.171923391  -0.000401149   0.044820749
                        -0.001390483   0.007318874   0.147420356  -0.018347752   0.102291844  -0.112933162  -0.001717041   0.051974223


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000223  -0.000001817  -0.000000031  -0.000000549   0.000000834  -0.000000137   0.000006351   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000000719  -0.000000351   0.000000104  -0.000000031   0.000000005  -0.000001505   0.000000141  -0.000002386
                        -0.000001695   0.000000170   0.000000001  -0.000000013   0.000000334   0.000001621   0.000000008  -0.000001317

    3    1.2  1.5 -0.5   0.000000316   0.000001833   0.000000032   0.000000104   0.000002211  -0.000000237  -0.000002717  -0.000000122
                        -0.000000228   0.000000171  -0.000000010   0.000000008   0.000000038  -0.000000235  -0.000000210  -0.000000070

    4    1.2  1.5 -1.5  -0.000000862   0.000000106  -0.000000546   0.000000031  -0.000000095  -0.000000578   0.000000000   0.000005307
                         0.000001600  -0.000000196  -0.000000048   0.000000003   0.000000099   0.000000602  -0.000000000   0.000003488

    5    1.2  0.5  0.5  -0.318111301  -0.065830707  -0.057363143  -0.004542376  -0.028113800   0.051589581   0.000001924   0.000009652
                         0.691632661  -0.083893320  -0.000982944   0.000680140  -0.011555701  -0.046475319   0.000000068   0.000005346

    6    2.2  0.5  0.5  -0.036374149  -0.554576022  -0.058327315   0.449466207   0.275091279   0.007305528  -0.000009903   0.000001827
                        -0.067687367  -0.017186152  -0.006337671   0.014168630  -0.012178566  -0.068649669  -0.000000376   0.000000931

    7    3.2  0.5  0.5   0.273340704  -0.036156097  -0.013805805  -0.000138405  -0.025455034  -0.172618177  -0.000000062  -0.000005647
                         0.122135211  -0.012794798   0.672965187  -0.051813378  -0.012222229  -0.150170602   0.000000030   0.000010069

    8    4.2  0.5  0.5   0.022418609  -0.007081148   0.001283055  -0.002447026   0.004189631   0.087550083  -0.000000071  -0.000000095
                         0.014703306   0.046775564   0.002693596   0.011310067   0.760441923  -0.104706616  -0.000001437   0.000000437

    9    5.2  0.5  0.5   0.002517208   0.034381482  -0.576905850   0.037896889  -0.005710980  -0.341833768  -0.000000010   0.000003553
                         0.008640339   0.000171916  -0.017644304  -0.023590099   0.092155993   0.371787233   0.000000053   0.000002058

   10    6.2  0.5  0.5   0.000000094   0.000002257   0.000000089   0.000001038  -0.000005117   0.000000655  -0.576849426   0.009187756
                         0.000000515   0.000000045   0.000000027   0.000000069  -0.000000033   0.000000346  -0.022335332   0.004027063

   11    7.2  0.5  0.5  -0.000004710   0.000000492   0.000000018  -0.000000034   0.000000890   0.000004428  -0.000855825  -0.279221704
                        -0.000002050   0.000000815  -0.000000486   0.000000080  -0.000000031   0.000004068  -0.001641387   0.505350712

   12    8.2  0.5  0.5  -0.000000222   0.000000255  -0.000000018   0.000000026  -0.000000158  -0.000000378   0.022337403   0.000680411
                        -0.000000890  -0.000006633  -0.000000085  -0.000001238  -0.000000978  -0.000000078  -0.576884874  -0.001459983

   13    1.2  0.5 -0.5   0.042631078   0.759767200  -0.004464994   0.057227447   0.069256485   0.011146838  -0.000011002   0.000001645
                         0.097746418   0.048003530  -0.001076851   0.004063950  -0.004997929  -0.028278401  -0.000000834   0.000001000

   14    2.2  0.5 -0.5  -0.247915586  -0.042335892   0.448971497   0.058658647   0.054562466  -0.199384085  -0.000002038  -0.000008482
                         0.496374646  -0.064127457   0.025401106  -0.001185278   0.042297578   0.189919761  -0.000000226  -0.000005125

   15    3.2  0.5 -0.5  -0.005885548  -0.022128297  -0.004693049  -0.045411465  -0.011319663   0.008824050  -0.000000811  -0.000000035
                         0.037898952   0.298567394   0.051600587   0.671573185   0.228517198  -0.026823083   0.000011516  -0.000000059

   16    4.2  0.5 -0.5  -0.044537749   0.002310554  -0.001443226  -0.001514895   0.136160839   0.545423070  -0.000000161  -0.000000848
                        -0.015952586   0.026710346  -0.011481405   0.002570367   0.009419048   0.529908620   0.000000417   0.000001162

   17    5.2  0.5 -0.5   0.016156414   0.006412595   0.035676224   0.576223254  -0.504928198   0.070407174  -0.000004099   0.000000021
                        -0.030349401   0.006314302   0.026830466   0.033142761  -0.011116922   0.059734180  -0.000000232  -0.000000050

   18    6.2  0.5 -0.5   0.000001031   0.000000409   0.000001040  -0.000000091   0.000000204   0.000003521  -0.009889751  -0.494327971
                        -0.000002008   0.000000327   0.000000023   0.000000019  -0.000000712  -0.000003713  -0.001680749  -0.298150943

   19    7.2  0.5 -0.5  -0.000000484   0.000000429  -0.000000027   0.000000024   0.000000134  -0.000000639  -0.044207990  -0.001616674
                        -0.000000820  -0.000005119  -0.000000083  -0.000000486  -0.000006011   0.000000620   0.575664621   0.000901638

   20    8.2  0.5 -0.5   0.000005960  -0.000000678  -0.000000083   0.000000026  -0.000000206  -0.000000596   0.000233244  -0.298168681
                         0.000002921  -0.000000618   0.000001235  -0.000000083   0.000000326  -0.000000791  -0.001593771   0.494358731


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.016198531  -0.079430330  -0.076349927   0.100214152
                        -0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.122427455   0.029646196   0.061951174   0.050907262
                        -0.002134530   0.000587000   0.009421724   0.007298342

    3    1.2  1.5 -0.5  -0.029568468  -0.122079034   0.051252493  -0.062491781
                        -0.002224238  -0.009473507   0.004242297  -0.004636172

    4    1.2  1.5 -1.5  -0.079073078   0.016125675  -0.097688626  -0.074425810
                        -0.007525009   0.001534604  -0.022356401  -0.017032620

    5    1.2  0.5  0.5   0.044741380   0.008308319  -0.198629104  -0.101785283
                         0.000693364   0.001514647  -0.027463805  -0.018927010

    6    2.2  0.5  0.5  -0.013827102  -0.103168729   0.088147232  -0.185089469
                        -0.000699793  -0.007021094   0.000762423  -0.009353348

    7    3.2  0.5  0.5   0.004243563  -0.001367752   0.024079734   0.016830288
                        -0.122923895   0.020784801  -0.151977836  -0.116097050

    8    4.2  0.5  0.5  -0.009918364  -0.008396645   0.001975989  -0.002581510
                         0.049431667   0.224061370  -0.012619790   0.004067446

    9    5.2  0.5  0.5  -0.220721287   0.048562883  -0.033168765  -0.025859104
                        -0.006862221  -0.006692420  -0.006117117  -0.005192807

   10    6.2  0.5  0.5   0.144479610   0.650875469   0.202235882  -0.277677440
                         0.004330694   0.025452090   0.007372305  -0.010374669

   11    7.2  0.5  0.5  -0.010436485   0.004119749   0.047920136   0.035616165
                         0.613344292  -0.149217712  -0.319522982  -0.243127480

   12    8.2  0.5  0.5   0.000118444   0.000880402   0.017358322  -0.022883666
                        -0.008325535  -0.034909904  -0.453426786   0.596404003

   13    1.2  0.5 -0.5   0.008414445  -0.044605834   0.103442518  -0.199750191
                        -0.000720727  -0.003548428   0.004256874  -0.017539744

   14    2.2  0.5 -0.5  -0.103369868   0.013831208   0.182511579   0.086095894
                        -0.002784404   0.000613296   0.032173288   0.018921228

   15    3.2  0.5 -0.5   0.000607494   0.007420992   0.009493515  -0.010431275
                        -0.020820894  -0.122773046  -0.116925860   0.153519656

   16    4.2  0.5 -0.5   0.012868072   0.005190735   0.001609061  -0.000889111
                        -0.223849088   0.050148977   0.004540841   0.012742571

   17    5.2  0.5 -0.5   0.047710441   0.220378660   0.026365865  -0.033697514
                         0.011263032   0.014079165   0.000706870  -0.001436538

   18    6.2  0.5 -0.5   0.650359296  -0.144240065   0.272994055   0.198783937
                         0.036324520  -0.009376381   0.051832810   0.037929535

   19    7.2  0.5 -0.5  -0.010035252  -0.047716991   0.019519811  -0.024568704
                         0.148936871   0.611574386  -0.244945830   0.322160914

   20    8.2  0.5 -0.5  -0.002430825   0.000670827  -0.110742575  -0.084232420
                         0.034836297  -0.008299310   0.586478882   0.445872247


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  28.019%   0.360%   1.077%  66.826%   0.428%   0.336%   0.710%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   1.399%  66.503%  27.681%   0.698%   0.337%   0.373%   0.002%   0.762%   0.000%   0.000%
    3    1.2  1.5 -0.5  66.503%   1.399%   0.698%  27.681%   0.373%   0.337%   0.762%   0.002%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.360%  28.019%  66.826%   1.077%   0.336%   0.428%   0.000%   0.710%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.005%   0.136%   0.000%  12.416%  22.103%   0.031%   0.011%  57.955%   1.137%
    6    2.2  0.5  0.5   0.029%   0.000%   0.001%   0.112%  20.407%  11.510%   2.629%   0.012%   0.590%  30.785%
    7    3.2  0.5  0.5   0.000%   0.042%   0.098%   0.002%   8.050%   9.831%   0.011%  16.666%   8.963%   0.147%
    8    4.2  0.5  0.5   0.139%   0.002%   0.000%   0.000%   0.910%   1.154%  32.424%   0.069%   0.072%   0.224%
    9    5.2  0.5  0.5   0.002%   0.134%   0.005%   0.000%   0.013%   0.002%   0.066%  34.478%   0.008%   0.118%
   10    6.2  0.5  0.5   1.748%   0.029%   0.005%   0.461%   0.371%   0.254%   7.457%   0.003%   0.000%   0.000%
   11    7.2  0.5  0.5   0.033%   1.550%   0.651%   0.010%   1.790%   2.099%   0.017%   4.181%   0.000%   0.000%
   12    8.2  0.5  0.5   0.005%   0.000%   0.034%   2.204%   4.231%   3.383%   0.471%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.005%   0.000%   0.000%   0.136%  22.103%  12.416%   0.011%   0.031%   1.137%  57.955%
   14    2.2  0.5 -0.5   0.000%   0.029%   0.112%   0.001%  11.510%  20.407%   0.012%   2.629%  30.785%   0.590%
   15    3.2  0.5 -0.5   0.042%   0.000%   0.002%   0.098%   9.831%   8.050%  16.666%   0.011%   0.147%   8.963%
   16    4.2  0.5 -0.5   0.002%   0.139%   0.000%   0.000%   1.154%   0.910%   0.069%  32.424%   0.224%   0.072%
   17    5.2  0.5 -0.5   0.134%   0.002%   0.000%   0.005%   0.002%   0.013%  34.478%   0.066%   0.118%   0.008%
   18    6.2  0.5 -0.5   0.029%   1.748%   0.461%   0.005%   0.254%   0.371%   0.003%   7.457%   0.000%   0.000%
   19    7.2  0.5 -0.5   1.550%   0.033%   0.010%   0.651%   2.099%   1.790%   4.181%   0.017%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.000%   0.005%   2.204%   0.034%   3.383%   4.231%   0.000%   0.471%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.026%   0.631%   0.583%   1.004%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.499%   0.088%   0.393%   0.264%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.088%   1.499%   0.264%   0.393%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.631%   0.026%   1.004%   0.583%
    5    1.2  0.5  0.5   0.329%   0.002%   0.092%   0.482%   0.000%   0.000%   0.200%   0.007%   4.021%   1.072%
    6    2.2  0.5  0.5   0.344%  20.222%   7.582%   0.477%   0.000%   0.000%   0.019%   1.069%   0.777%   3.435%
    7    3.2  0.5  0.5  45.307%   0.268%   0.080%   5.235%   0.000%   0.000%   1.513%   0.043%   2.368%   1.376%
    8    4.2  0.5  0.5   0.001%   0.013%  57.829%   1.863%   0.000%   0.000%   0.254%   5.027%   0.016%   0.002%
    9    5.2  0.5  0.5  33.313%   0.199%   0.853%  25.508%   0.000%   0.000%   4.876%   0.240%   0.114%   0.070%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.325%   0.010%   2.089%  42.429%   4.095%   7.721%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.334%  37.630%   2.228%  10.439%   6.038%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.330%   0.000%   0.007%   0.122%  20.590%  35.622%
   13    1.2  0.5 -0.5   0.002%   0.329%   0.482%   0.092%   0.000%   0.000%   0.007%   0.200%   1.072%   4.021%
   14    2.2  0.5 -0.5  20.222%   0.344%   0.477%   7.582%   0.000%   0.000%   1.069%   0.019%   3.435%   0.777%
   15    3.2  0.5 -0.5   0.268%  45.307%   5.235%   0.080%   0.000%   0.000%   0.043%   1.513%   1.376%   2.368%
   16    4.2  0.5 -0.5   0.013%   0.001%   1.863%  57.829%   0.000%   0.000%   5.027%   0.254%   0.002%   0.016%
   17    5.2  0.5 -0.5   0.199%  33.313%  25.508%   0.853%   0.000%   0.000%   0.240%   4.876%   0.070%   0.114%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.010%  33.325%  42.429%   2.089%   7.721%   4.095%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.334%   0.000%   2.228%  37.630%   6.038%  10.439%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.330%   0.122%   0.007%  35.622%  20.590%


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
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     2863.31       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     52439.48  40371.45  11600.65    446.66     11.42      9.07
 REAL TIME  *     53130.23 SEC
 DISK USED  *         2.88 GB (local),       41.58 GB (total)
 SF USED    *        26.96 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -240.181003381314

              CI              CI           MULTI
   -240.10700865   -240.18236457   -239.20309616
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
