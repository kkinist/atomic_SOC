
 Working directory              : /wrk/irikura/molpro.usgBuADHlr/
 Global scratch directory       : /wrk/irikura/molpro.usgBuADHlr/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.usgBuADHlr/

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
     occ,7,6
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
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Aug-24          TIME: 18:13:45  
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

     17.039 MB (compressed) written to integral file ( 18.8%)

     Node minimum: 0.786 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     36 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.79      0.60
 REAL TIME  *         1.61 SEC
 DISK USED  *        29.18 MB (local),      406.54 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      83 (   40   43)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 4 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              11   (12 determinants, 24 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.467D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.561D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.307D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.232D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 4 5 2 1 1 6 4   3 5 2 1 4 6 2 3 5 1   4 6 3 5 2 1 4 6 3 5   2 71415 812 9111310
                                        3 5 4 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.324D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.498D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.337D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.483D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.228D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.474D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 3 2 1 3   1 2 810 5 4 6 7 9 3   1 2 4 5 810 7 9 6 8  10 5 4 7 9 6 3 1 2 5
                                        4 6 810 9 7 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    650
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   18    0   -331.13130531    -331.14074505   -0.00943974    0.09080080 0.00050263 0.00000000  0.26E+00      0.23
   2    7   12    0   -331.13901138    -331.14098532   -0.00197394    0.13656231 0.00000575 0.00000000  0.35E-01      0.49
   3    5   10    0   -331.14099798    -331.14099821   -0.00000023    0.00091419 0.00000003 0.00000000  0.49E-03      0.70
   4    7   14    0   -331.14099821    -331.14099821    0.00000000    0.00000012 0.00000001 0.00000000  0.86E-07      0.90

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.56E-08)
                       Final energy:   -331.14099821
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -331.208198362332
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74591956
 One electron energy                          -586.73346133
 Two electron energy                           255.52526297
 Virial ratio                                    2.41695820
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -331.142348130344
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74591956
 One electron energy                          -586.73346133
 Two electron energy                           255.59111320
 Virial ratio                                    2.41667649
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -331.142348130329
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74591956
 One electron energy                          -586.73346133
 Two electron energy                           255.59111320
 Virial ratio                                    2.41667649
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -331.142348130137
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74591956
 One electron energy                          -586.73346133
 Two electron energy                           255.59111320
 Virial ratio                                    2.41667649
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -331.142348130010
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74591956
 One electron energy                          -586.73346133
 Two electron energy                           255.59111320
 Virial ratio                                    2.41667649
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -331.142348129973
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74591956
 One electron energy                          -586.73346133
 Two electron energy                           255.59111320
 Virial ratio                                    2.41667649
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -331.116348283616
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74101685
 One electron energy                          -586.62335452
 Two electron energy                           255.50700623
 Virial ratio                                    2.41659497
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -331.116348283332
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74101685
 One electron energy                          -586.62335452
 Two electron energy                           255.50700623
 Virial ratio                                    2.41659497
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -331.116348283147
 Nuclear energy                                  0.00000000
 Kinetic energy                                233.74101685
 One electron energy                          -586.62335452
 Two electron energy                           255.50700623
 Virial ratio                                    2.41659497
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.765753881589
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999999999999
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000000006
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     2.234246749426
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.000000000000
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.999999999998
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.837252870297
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     4.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000001
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.162746878643
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>    -0.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.396993248114
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.999999999994
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.603006371930
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.000000000002
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 6 3 5 1 1 4 2   6 3 5 1 3 5 6 2 4 1   4 2 6 3 5 1 4 2 6 5   3 9 7 8121114151310
                                        4 2 6 3 5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 2 1 3 2   1 3 4 6 810 5 9 7 3   1 2 4 6 5 810 7 9 4   6 5 810 9 7 3 1 2 4
                                        6 5 810 7 9 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -8.10195     1  1  s    0.99591
    2.1     2.00000    -2.08737     1  1  d1+  1.00018
    3.1     2.00000    -2.08737     1  1  d0   1.00018
    4.1     2.00000    -2.08737     1  1  d1-  1.00018
    5.1     2.00000    -2.08737     1  1  d2-  1.00018
    6.1     2.00000    -2.08737     1  1  d2+  1.00018
    7.1     1.98549    -0.71008     1  2  s    0.97486
    1.2     2.00000    -6.01552     1  1  pz   0.99982
    2.2     2.00000    -6.01552     1  1  px   0.99982
    3.2     2.00000    -6.01552     1  1  py   0.99982
    4.2     1.00484    -0.15921     1  2  py   0.94638
    5.2     1.00484    -0.15921     1  2  px   0.94638
    6.2     1.00484    -0.15921     1  2  pz   0.94638
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa          1.00000000
 
 Energy:     -331.20819836
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 baa         -0.16469524      0.00000000     -0.00000000      0.00000000      0.79971379      0.00000000      0.00000000
 2 aab          0.77492008     -0.00000000     -0.00000000     -0.00000000     -0.25722663     -0.00000000     -0.00000000
 2 0a2         -0.00000000     -0.00000000     -0.70710679      0.00000000     -0.00000000     -0.00000000      0.69936967
 2 02a          0.00000000      0.00000000     -0.00000000     -0.70710679      0.00000000      0.00000000     -0.00000000
 2 a02         -0.00000000     -0.70710679     -0.00000000     -0.00000000      0.00000000      0.69936968      0.00000000
 2 a20         -0.00000000      0.70710678     -0.00000000      0.00000000     -0.00000000      0.69936969      0.00000000
 2 20a          0.00000000     -0.00000000      0.00000000      0.70710677     -0.00000000      0.00000000      0.00000000
 2 2a0          0.00000000     -0.00000000      0.70710677     -0.00000000     -0.00000000      0.00000000      0.69936970
 2 aba         -0.61022484     -0.00000000      0.00000000     -0.00000000     -0.54248716      0.00000000     -0.00000000
 0 22a          0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 2a2         -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.14752655
 0 a22          0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.14752655     -0.00000000
 
 Energy:     -331.14234813   -331.14234813   -331.14234813   -331.14234813   -331.14234813   -331.11634828   -331.11634828

 State:              8
 2 baa         -0.00000000
 2 aab          0.00000000
 2 0a2          0.00000000
 2 02a          0.69936968
 2 a02         -0.00000000
 2 a20         -0.00000000
 2 20a          0.69936969
 2 2a0         -0.00000000
 2 aba          0.00000000
 0 22a         -0.14752655
 0 2a2         -0.00000000
 0 a22          0.00000000
 
 Energy:     -331.11634828
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.51       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         1.61      0.82      0.60
 REAL TIME  *         2.66 SEC
 DISK USED  *        34.50 MB (local),      470.27 MB (total)
 SF USED    *        12.54 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -331.2081984  -0.0
    -331.1423481   6.0
    -331.1423481   6.0
    -331.1423481   6.0
    -331.1423481   6.0
    -331.1423481   6.0
    -331.1163483   2.0
    -331.1163483   2.0
    -331.1163483   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 23
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:        1 conf        1 CSFs
 N elec internal:      166 conf      166 CSFs
 N-1 el internal:      238 conf      673 CSFs
 N-2 el internal:       88 conf      793 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -331.20819836

 Number of blocks in overlap matrix:   163   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     163
 Number of N-1 electron functions:     673

 Number of internal configurations:                   82
 Number of singly external configurations:         27973
 Number of doubly external configurations:        281006
 Total number of contracted configurations:       309061
 Total number of uncontracted configurations:    1386205

 Diagonal Coupling coefficients finished.               Storage:    276275 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    386242 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.20819836    -0.00000000    -0.91936065  0.37D-01  0.75D-01     0.04
    2     1     1     1.07389551    -0.74770784  -331.95590620    -0.74770784    -0.01891543  0.26D-02  0.12D-02     0.46
    3     1     1     1.06213397    -0.76564022  -331.97383859    -0.01793239    -0.00048772  0.58D-04  0.33D-04     0.85
    4     1     1     1.06105324    -0.76608530  -331.97428366    -0.00044508    -0.00001723  0.23D-05  0.10D-05     1.24
    5     1     1     1.06114888    -0.76610202  -331.97430039    -0.00001672    -0.00000048  0.53D-07  0.36D-07     1.63
    6     1     1     1.06118111    -0.76610252  -331.97430088    -0.00000049    -0.00000001  0.12D-08  0.13D-08     2.01


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.0%  50.7%
 P   1.5%  22.9%  11.4%

 Initialization:   1.5%
 Other:           11.4%

 Total CPU:        2.0 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///           0.9707394


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97073941 (fixed)   0.97073941 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001190   -0.00005179   -0.00005740
 Singles      0.01419349   -0.04516658   -0.05280615
 Pairs        0.04698835   -0.72088415   -0.71323897
 Total        1.06119374   -0.76610252   -0.76610252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.20819836
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66483170
 One electron energy                 -585.87355901
 Two electron energy                  253.89925813
 Virial quotient                       -1.42072856
 Correlation energy                    -0.76610252
 !CI(SD) STATE 1.2 Energy            -331.974300878063

 Properties without orbital relaxation:

 !CI(SD) STATE 1.2 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -332.02118155 (Davidson, fixed reference)
 Cluster corrected energies          -332.02118155 (Davidson, relaxed reference)

 Cluster corrected energies          -332.01864883 (Pople, fixed reference)
 Cluster corrected energies          -332.01864883 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        3.19       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *         3.69      2.06      0.82      0.60
 REAL TIME  *         4.90 SEC
 DISK USED  *        37.17 MB (local),      502.39 MB (total)
 SF USED    *        40.71 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -332.02118155  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 23
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:       10 conf       11 CSFs
 N elec internal:      286 conf      488 CSFs
 N-1 el internal:      613 conf     1943 CSFs
 N-2 el internal:      637 conf     3149 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -331.14234813
     2      -331.14234813
     3      -331.14234813
     4      -331.14234813
     5      -331.14234813
     6      -331.11634828
     7      -331.11634828
     8      -331.11634828

 Number of blocks in overlap matrix:   828   Smallest eigenvalue:  0.11D-01
 Number of N-2 electron functions:    1139
 Number of N-1 electron functions:    1943

 Number of internal configurations:                  248
 Number of singly external configurations:         80681
 Number of doubly external configurations:       1964641
 Total number of contracted configurations:      2045570
 Total number of uncontracted configurations:    5491415

 Diagonal Coupling coefficients finished.               Storage:    704688 words, CPU-Time:      0.15 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    567066 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -331.14234813     0.00000000    -0.92702023  0.42D-01  0.74D-01     0.39
    1     2     2     1.00000000     0.00000000  -331.14234813    -0.00000000    -0.92628598  0.42D-01  0.74D-01     0.39
    1     3     3     1.00000000     0.00000000  -331.14234813    -0.00000000    -0.92625172  0.41D-01  0.74D-01     0.39
    1     4     4     1.00000000     0.00000000  -331.14234813    -0.00000000    -0.92602890  0.41D-01  0.74D-01     0.39
    1     5     5     1.00000000     0.00000000  -331.14234813     0.00000000    -0.92632374  0.41D-01  0.74D-01     0.39
    1     6     6     1.00000000     0.00000000  -331.11634828     0.00000000    -0.91496137  0.24D-01  0.83D-01     0.39
    1     7     7     1.00000000     0.00000000  -331.11634828    -0.00000000    -0.91529793  0.24D-01  0.83D-01     0.39
    1     8     8     1.00000000     0.00000000  -331.11634828    -0.00000000    -0.91516310  0.24D-01  0.83D-01     0.39
    2     1     1     1.07657268    -0.75726809  -331.89961622    -0.75726809    -0.01948718  0.27D-02  0.12D-02    14.38
    2     2     2     1.07666370    -0.75723137  -331.89957950    -0.75723137    -0.01955414  0.27D-02  0.12D-02    14.38
    2     3     3     1.07662355    -0.75722491  -331.89957304    -0.75722491    -0.01954083  0.27D-02  0.12D-02    14.38
    2     4     4     1.07687635    -0.75703881  -331.89938694    -0.75703881    -0.01972360  0.28D-02  0.12D-02    14.38
    2     5     5     1.07731219    -0.75680958  -331.89915771    -0.75680958    -0.01998211  0.29D-02  0.12D-02    14.38
    2     6     6     1.07240748    -0.75284156  -331.86918984    -0.75284156    -0.01832144  0.24D-02  0.12D-02    14.38
    2     7     7     1.07235378    -0.75282588  -331.86917416    -0.75282588    -0.01833276  0.24D-02  0.13D-02    14.38
    2     8     8     1.07241843    -0.75281978  -331.86916806    -0.75281978    -0.01833793  0.24D-02  0.13D-02    14.38
    3     1     1     1.06694956    -0.77533317  -331.91768130    -0.01806508    -0.00049354  0.51D-04  0.43D-04    28.13
    3     2     2     1.06694759    -0.77533241  -331.91768054    -0.01810104    -0.00049415  0.51D-04  0.43D-04    28.13
    3     3     3     1.06698573    -0.77532922  -331.91767735    -0.01810430    -0.00050100  0.53D-04  0.43D-04    28.13
    3     4     4     1.06693519    -0.77532883  -331.91767696    -0.01829002    -0.00049701  0.52D-04  0.43D-04    28.13
    3     5     5     1.06697305    -0.77532472  -331.91767285    -0.01851513    -0.00050393  0.53D-04  0.43D-04    28.13
    3     6     6     1.06447829    -0.76988528  -331.88623357    -0.01704373    -0.00046956  0.42D-04  0.48D-04    28.13
    3     7     7     1.06446795    -0.76988510  -331.88623339    -0.01705922    -0.00046941  0.42D-04  0.47D-04    28.13
    3     8     8     1.06448759    -0.76988447  -331.88623276    -0.01706469    -0.00047030  0.42D-04  0.48D-04    28.13
    4     1     1     1.06603628    -0.77581685  -331.91816498    -0.00048367    -0.00002102  0.27D-05  0.18D-05    41.86
    4     2     2     1.06603562    -0.77581682  -331.91816495    -0.00048440    -0.00002103  0.27D-05  0.18D-05    41.86
    4     3     3     1.06603245    -0.77581666  -331.91816479    -0.00048744    -0.00002121  0.27D-05  0.18D-05    41.86
    4     4     4     1.06603740    -0.77581658  -331.91816471    -0.00048776    -0.00002151  0.28D-05  0.18D-05    41.86
    4     5     5     1.06604100    -0.77581621  -331.91816434    -0.00049149    -0.00002185  0.29D-05  0.18D-05    41.86
    4     6     6     1.06361618    -0.77034518  -331.88669346    -0.00045990    -0.00002109  0.30D-05  0.19D-05    41.86
    4     7     7     1.06361593    -0.77034518  -331.88669346    -0.00046007    -0.00002110  0.30D-05  0.18D-05    41.86
    4     8     8     1.06361560    -0.77034515  -331.88669343    -0.00046067    -0.00002112  0.30D-05  0.18D-05    41.86
    5     1     1     1.06605069    -0.77583750  -331.91818563    -0.00002065    -0.00000091  0.12D-06  0.91D-07    55.67
    5     2     2     1.06604914    -0.77583749  -331.91818562    -0.00002068    -0.00000091  0.12D-06  0.93D-07    55.67
    5     3     3     1.06604876    -0.77583748  -331.91818562    -0.00002083    -0.00000091  0.12D-06  0.95D-07    55.67
    5     4     4     1.06604923    -0.77583747  -331.91818560    -0.00002089    -0.00000092  0.12D-06  0.96D-07    55.67
    5     5     5     1.06605037    -0.77583747  -331.91818560    -0.00002127    -0.00000093  0.13D-06  0.93D-07    55.67
    5     6     6     1.06363770    -0.77036572  -331.88671401    -0.00002054    -0.00000091  0.13D-06  0.91D-07    55.67
    5     7     7     1.06363678    -0.77036572  -331.88671400    -0.00002054    -0.00000091  0.13D-06  0.92D-07    55.67
    5     8     8     1.06363768    -0.77036572  -331.88671400    -0.00002057    -0.00000091  0.13D-06  0.92D-07    55.67
    6     1     1     1.06603898    -0.77583843  -331.91818656    -0.00000094    -0.00000004  0.30D-08  0.64D-08    69.58
    6     2     2     1.06603925    -0.77583843  -331.91818656    -0.00000094    -0.00000004  0.32D-08  0.65D-08    69.58
    6     3     3     1.06603898    -0.77583843  -331.91818656    -0.00000095    -0.00000004  0.31D-08  0.66D-08    69.58
    6     4     4     1.06603872    -0.77583843  -331.91818656    -0.00000096    -0.00000004  0.31D-08  0.68D-08    69.58
    6     5     5     1.06603858    -0.77583843  -331.91818656    -0.00000096    -0.00000004  0.31D-08  0.69D-08    69.58
    6     6     6     1.06363269    -0.77036667  -331.88671495    -0.00000094    -0.00000004  0.36D-08  0.51D-08    69.58
    6     7     7     1.06363275    -0.77036667  -331.88671495    -0.00000095    -0.00000004  0.36D-08  0.51D-08    69.58
    6     8     8     1.06363255    -0.77036667  -331.88671495    -0.00000095    -0.00000004  0.36D-08  0.52D-08    69.58
    7     1     1     1.06603948    -0.77583848  -331.91818661    -0.00000004    -0.00000000  0.10D-09  0.37D-09    72.28
    7     2     2     1.06603898    -0.77583843  -331.91818656    -0.00000000    -0.00000004  0.30D-08  0.64D-08    72.28
    7     3     3     1.06603925    -0.77583843  -331.91818656    -0.00000000    -0.00000004  0.32D-08  0.65D-08    72.28
    7     4     4     1.06603898    -0.77583843  -331.91818656    -0.00000000    -0.00000004  0.31D-08  0.66D-08    72.28
    7     5     5     1.06603872    -0.77583843  -331.91818656    -0.00000000    -0.00000004  0.31D-08  0.68D-08    72.28
    7     6     6     1.06363269    -0.77036667  -331.88671495    -0.00000000    -0.00000004  0.36D-08  0.51D-08    72.28
    7     7     7     1.06363275    -0.77036667  -331.88671495    -0.00000000    -0.00000004  0.36D-08  0.51D-08    72.28
    7     8     8     1.06363254    -0.77036667  -331.88671495    -0.00000000    -0.00000004  0.36D-08  0.52D-08    72.28


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.9%
 P   0.4%  17.9%  39.3%

 Initialization:   0.3%
 Other:           40.9%

 Total CPU:       72.3 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\           0.0000000   0.9650678   0.0809572  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 2222222222/\/           0.0000000  -0.0809573   0.9650676  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 22222222222/0          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.6848029  -0.0000000  -0.0000000   0.6789429
 22222222220/2          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.6848029  -0.0000000  -0.0000000   0.6789429
 222222222220/           0.0000000  -0.0000000   0.0000000  -0.6848028  -0.0000000  -0.0000000   0.6789429   0.0000000
 222222222202/           0.0000000   0.0000000   0.0000000   0.6848028   0.0000000  -0.0000000   0.6789428   0.0000000
 2222222222/20          -0.6848027   0.0000000   0.0000000   0.0000000   0.0000000   0.6789429   0.0000000   0.0000000
 2222222222/02           0.6848027  -0.0000000  -0.0000000   0.0000000   0.0000000   0.6789429   0.0000000   0.0000000
 22222202222/2           0.0000000   0.0000000   0.0000000   0.0000000   0.0000003   0.0000000   0.0000000  -0.1346758
 222222022222/          -0.0000000   0.0000000  -0.0000000   0.0000003   0.0000000   0.0000000  -0.1346758  -0.0000000
 2222220222/22          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1346758  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.968457   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.941439   -0.000000    0.000000    0.000000    0.227162   -0.000000   -0.000000   -0.000000
 3          -0.227162   -0.000000    0.000000    0.000000    0.941439    0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.968457   -0.000000    0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000    0.968458    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.969532   -0.000000   -0.000000
 7           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.969532
 8           0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.969532    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968457   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.968457   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.968457   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.968457   -0.000000    0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.968458    0.000000   -0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.969532    0.000000    0.000000
 7           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.969532   -0.000000
 8          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.969532


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96845723 (fixed)   0.96845723 (relaxed)   0.96845723 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015156   -0.00045518   -0.67966872
 Singles      0.01731813   -0.05129256   -0.06070890
 Pairs        0.04873136   -0.00000000   -0.03546085
 Total        1.06620105   -0.05174774   -0.77583848
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14234813
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66902534
 One electron energy                 -585.78243619
 Two electron energy                  253.86424958
 Virial quotient                       -1.42046292
 Correlation energy                    -0.77583848
 !MRCI STATE 1.2 Energy              -331.918186606151

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96954793 (Davidson, fixed reference)
 Cluster corrected energies          -331.96954793 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96954793 (Davidson, rotated reference)

 Cluster corrected energies          -331.96753263 (Pople, fixed reference)
 Cluster corrected energies          -331.96753263 (Pople, relaxed reference)
 Cluster corrected energies          -331.96753263 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.94143886 (fixed)   0.96845746 (relaxed)   0.96845746 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015155   -0.00045517   -0.67966965
 Singles      0.01731892   -0.05129187   -0.06071030
 Pairs        0.04873007    0.00000000   -0.03545848
 Total        1.06620054   -0.05174704   -0.77583843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14234813
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66929600
 One electron energy                 -585.78242040
 Two electron energy                  253.86423383
 Virial quotient                       -1.42046128
 Correlation energy                    -0.77583843
 !MRCI STATE 2.2 Energy              -331.918186564957

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96954749 (Davidson, fixed reference)
 Cluster corrected energies          -331.96954749 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96954749 (Davidson, rotated reference)

 Cluster corrected energies          -331.96753219 (Pople, fixed reference)
 Cluster corrected energies          -331.96753219 (Pople, relaxed reference)
 Cluster corrected energies          -331.96753219 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94143871 (fixed)   0.96845734 (relaxed)   0.96845734 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015155   -0.00045517   -0.67966909
 Singles      0.01731925   -0.05129228   -0.06071052
 Pairs        0.04873001   -0.00000000   -0.03545882
 Total        1.06620081   -0.05174745   -0.77583843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14234813
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66928928
 One electron energy                 -585.78238659
 Two electron energy                  253.86420002
 Virial quotient                       -1.42046132
 Correlation energy                    -0.77583843
 !MRCI STATE 3.2 Energy              -331.918186563260

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96954770 (Davidson, fixed reference)
 Cluster corrected energies          -331.96954770 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96954770 (Davidson, rotated reference)

 Cluster corrected energies          -331.96753240 (Pople, fixed reference)
 Cluster corrected energies          -331.96753240 (Pople, relaxed reference)
 Cluster corrected energies          -331.96753240 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.96845746 (fixed)   0.96845746 (relaxed)   0.96845746 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015155   -0.00045517   -0.67966950
 Singles      0.01731910   -0.05129209   -0.06071035
 Pairs        0.04872989    0.00000007   -0.03545858
 Total        1.06620054   -0.05174720   -0.77583843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14234813
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66933397
 One electron energy                 -585.78243375
 Two electron energy                  253.86424719
 Virial quotient                       -1.42046105
 Correlation energy                    -0.77583843
 !MRCI STATE 4.2 Energy              -331.918186562889

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96954749 (Davidson, fixed reference)
 Cluster corrected energies          -331.96954749 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96954749 (Davidson, rotated reference)

 Cluster corrected energies          -331.96753219 (Pople, fixed reference)
 Cluster corrected energies          -331.96753219 (Pople, relaxed reference)
 Cluster corrected energies          -331.96753219 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96845758 (fixed)   0.96845758 (relaxed)   0.96845758 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015155   -0.00045517   -0.67966967
 Singles      0.01731907   -0.05129202   -0.06071035
 Pairs        0.04872966    0.00000000   -0.03545842
 Total        1.06620028   -0.05174720   -0.77583843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.14234813
 Nuclear energy                         0.00000000
 Kinetic energy                       233.66933029
 One electron energy                 -585.78244261
 Two electron energy                  253.86425605
 Virial quotient                       -1.42046107
 Correlation energy                    -0.77583843
 !MRCI STATE 5.2 Energy              -331.918186561790

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.96954728 (Davidson, fixed reference)
 Cluster corrected energies          -331.96954728 (Davidson, relaxed reference)
 Cluster corrected energies          -331.96954728 (Davidson, rotated reference)

 Cluster corrected energies          -331.96753198 (Pople, fixed reference)
 Cluster corrected energies          -331.96753198 (Pople, relaxed reference)
 Cluster corrected energies          -331.96753198 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.96953239 (fixed)   0.96956920 (relaxed)   0.96953239 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019269   -0.00036590   -0.69034360
 Singles      0.01024503   -0.03610161   -0.04135310
 Pairs        0.05339992    0.00000000   -0.03866997
 Total        1.06383764   -0.03646751   -0.77036667
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.11634828
 Nuclear energy                         0.00000000
 Kinetic energy                       233.67795068
 One electron energy                 -585.66475978
 Two electron energy                  253.77804483
 Virial quotient                       -1.42027399
 Correlation energy                    -0.77036667
 !MRCI STATE 6.2 Energy              -331.886714948875

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.93589334 (Davidson, fixed reference)
 Cluster corrected energies          -331.93583111 (Davidson, relaxed reference)
 Cluster corrected energies          -331.93589334 (Davidson, rotated reference)

 Cluster corrected energies          -331.93386870 (Pople, fixed reference)
 Cluster corrected energies          -331.93380580 (Pople, relaxed reference)
 Cluster corrected energies          -331.93386870 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96953236 (fixed)   0.96956917 (relaxed)   0.96953236 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019269   -0.00036590   -0.00048348
 Singles      0.01024505   -0.03610166   -0.04135312
 Pairs        0.05339997   -0.73389911   -0.72853006
 Total        1.06383771   -0.77036667   -0.77036667
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.11634828
 Nuclear energy                         0.00000000
 Kinetic energy                       233.67795552
 One electron energy                 -585.66476153
 Two electron energy                  253.77804658
 Virial quotient                       -1.42027396
 Correlation energy                    -0.77036667
 !MRCI STATE 7.2 Energy              -331.886714948796

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.93589339 (Davidson, fixed reference)
 Cluster corrected energies          -331.93583117 (Davidson, relaxed reference)
 Cluster corrected energies          -331.93589339 (Davidson, rotated reference)

 Cluster corrected energies          -331.93386876 (Pople, fixed reference)
 Cluster corrected energies          -331.93380586 (Pople, relaxed reference)
 Cluster corrected energies          -331.93386876 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96953246 (fixed)   0.96956927 (relaxed)   0.96953246 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019269   -0.00036590   -0.69034363
 Singles      0.01024510   -0.03610167   -0.04135315
 Pairs        0.05339971   -0.00000000   -0.03866989
 Total        1.06383750   -0.03646757   -0.77036667
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -331.11634828
 Nuclear energy                         0.00000000
 Kinetic energy                       233.67794898
 One electron energy                 -585.66476337
 Two electron energy                  253.77804842
 Virial quotient                       -1.42027400
 Correlation energy                    -0.77036667
 !MRCI STATE 8.2 Energy              -331.886714948407

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -331.93589323 (Davidson, fixed reference)
 Cluster corrected energies          -331.93583101 (Davidson, relaxed reference)
 Cluster corrected energies          -331.93589323 (Davidson, rotated reference)

 Cluster corrected energies          -331.93386859 (Pople, fixed reference)
 Cluster corrected energies          -331.93380569 (Pople, relaxed reference)
 Cluster corrected energies          -331.93386859 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      129.50       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *        82.27     78.59      2.06      0.82      0.60
 REAL TIME  *        95.83 SEC
 DISK USED  *       163.48 MB (local),        1.97 GB (total)
 SF USED    *         1.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -331.96954793  AU                              
 SETTING HLSDIAG(3)     =      -331.96954749  AU                              
 SETTING HLSDIAG(4)     =      -331.96954770  AU                              
 SETTING HLSDIAG(5)     =      -331.96954749  AU                              
 SETTING HLSDIAG(6)     =      -331.96954728  AU                              
 SETTING HLSDIAG(7)     =      -331.93589334  AU                              
 SETTING HLSDIAG(8)     =      -331.93589339  AU                              
 SETTING HLSDIAG(9)     =      -331.93589323  AU                              


         HLSDIAG
    -332.0211816
    -331.9695479
    -331.9695475
    -331.9695477
    -331.9695475
    -331.9695473
    -331.9358933
    -331.9358934
    -331.9358932
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -331.974301
 Replaced energies:   -332.021182

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -331.918187   -331.918187   -331.918187   -331.918187   -331.918187   -331.886715   -331.886715   -331.886715
 Replaced energies:   -331.969548   -331.969547   -331.969548   -331.969547   -331.969547   -331.935893   -331.935893   -331.935893



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -332.02118155

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00    -927.81
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00    -535.67
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00   11332.27       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       1.95      -0.00

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00   11332.37       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.33       0.00       0.00

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   11332.32       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       3.89       0.00       0.00

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   11332.37       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.33      -3.89       0.00       0.00       0.00

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   11332.41       0.00
                           -0.00       0.00       0.00      -0.00      -1.95      -0.00      -0.00      -0.00       0.00    -656.59

   10   6.2  0.5  0.5    -927.81       0.00    -535.67       0.00       0.00       0.00       0.00       0.00       0.00   18718.60
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     656.59      -0.00

   11   7.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1071.34       0.00      -0.00       0.00     755.51      63.38      -0.00       0.00      -0.00

   12   8.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          927.81      -0.00    -535.67      -0.00    -656.59       0.00       0.00       0.00       0.00       6.94

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       3.52      -1.66      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       1.95      -0.00      -0.00

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -3.52      -0.00       0.00      -0.00      -0.00    -322.87
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       3.21      -0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       1.66      -0.00       0.00      -0.00      -0.00    -685.98
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       2.23       0.00

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       1.95       0.00
                           -0.00      -0.00       0.00       0.00      -1.95       0.00      -0.00      -0.00       0.00     656.59

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -1.95      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      -3.21      -2.23      -0.00      -0.00       0.00

   18   6.2  0.5 -0.5       0.00    -535.67       0.00    -927.81       0.00     322.87     685.98      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00    -656.59      -0.00      -0.00

   19   7.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00    -656.59       0.00
                           -0.00      -0.00   -1071.34       0.00    -656.59       0.00      -0.00      -0.00      -0.00      -6.94

   20   8.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     656.59      -0.00      -0.00
                           -0.00     535.67      -0.00    -927.81      -0.00    -432.64     622.61      -0.00      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -927.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00    -535.67      -0.00      -0.00
                         1071.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -535.67

    3   1.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     535.67       0.00       0.00       0.00      -0.00      -0.00      -0.00    1071.34       0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00    -927.81      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     927.81

    5   1.2  0.5  0.5       0.00       0.00       0.00      -3.52       1.66       0.00       0.00       0.00       0.00       0.00
                           -0.00     656.59      -0.00       0.00      -0.00       1.95      -0.00      -0.00     656.59       0.00

    6   2.2  0.5  0.5       0.00       0.00       3.52      -0.00      -0.00       0.00       0.00     322.87       0.00       0.00
                         -755.51      -0.00      -0.00      -0.00      -0.00      -0.00       3.21      -0.00      -0.00     432.64

    7   3.2  0.5  0.5       0.00       0.00      -1.66       0.00       0.00       0.00       0.00     685.98       0.00       0.00
                          -63.38      -0.00       0.00       0.00       0.00       0.00       2.23       0.00       0.00    -622.61

    8   4.2  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -1.95      -0.00      -0.00     656.59
                            0.00      -0.00      -1.95       0.00      -0.00       0.00       0.00     656.59       0.00       0.00

    9   5.2  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00       1.95      -0.00       0.00    -656.59      -0.00
                           -0.00      -0.00       0.00      -3.21      -2.23      -0.00       0.00       0.00       0.00       0.00

   10   6.2  0.5  0.5       0.00       0.00      -0.00    -322.87    -685.98       0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -6.94       0.00       0.00      -0.00    -656.59      -0.00       0.00       6.94      -0.00

   11   7.2  0.5  0.5   18718.59       0.00      -0.00      -0.00      -0.00       0.00     656.59      -0.00      -0.00       6.94
                           -0.00      -0.00    -656.59       0.00      -0.00      -0.00      -0.00      -6.94       0.00      -0.00

   12   8.2  0.5  0.5       0.00   18718.62      -0.00      -0.00      -0.00    -656.59       0.00       0.00      -6.94      -0.00
                            0.00       0.00      -0.00    -432.64     622.61      -0.00      -0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5      -0.00      -0.00   11332.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          656.59       0.00      -0.00       0.00       0.00       0.00      -1.95       0.00       0.00    -656.59

   14   2.2  0.5 -0.5      -0.00      -0.00       0.00   11332.37       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     432.64      -0.00       0.00       0.00       0.33      -0.00      -0.00     755.51       0.00

   15   3.2  0.5 -0.5      -0.00      -0.00       0.00       0.00   11332.32       0.00       0.00       0.00       0.00       0.00
                            0.00    -622.61      -0.00      -0.00       0.00      -3.89      -0.00      -0.00      63.38       0.00

   16   4.2  0.5 -0.5       0.00    -656.59       0.00       0.00       0.00   11332.37       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.33       3.89      -0.00      -0.00      -0.00      -0.00       0.00

   17   5.2  0.5 -0.5     656.59       0.00       0.00       0.00       0.00       0.00   11332.41       0.00       0.00       0.00
                            0.00       0.00       1.95       0.00       0.00       0.00      -0.00     656.59       0.00       0.00

   18   6.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   18718.60       0.00       0.00
                            6.94      -0.00      -0.00       0.00       0.00       0.00    -656.59       0.00      -0.00       6.94

   19   7.2  0.5 -0.5      -0.00      -6.94       0.00       0.00       0.00       0.00       0.00       0.00   18718.59       0.00
                           -0.00      -0.00      -0.00    -755.51     -63.38       0.00      -0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       6.94      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18718.62
                            0.00      -0.00     656.59      -0.00      -0.00      -0.00      -0.00      -6.94      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -332.02160295    -0.00042139      -92.49      0.00000000        0.00      0.0000
     2  -332.02160295    -0.00042139      -92.49      0.00000000        0.00      0.0000
     3  -332.02160295    -0.00042139      -92.49      0.00000000        0.00      0.0000
     4  -332.02160295    -0.00042139      -92.49      0.00000000        0.00      0.0000
     5  -331.97083078     0.05035078    11050.72      0.05077217    11143.20      1.3816
     6  -331.97083078     0.05035078    11050.72      0.05077217    11143.20      1.3816
     7  -331.97083063     0.05035092    11050.75      0.05077232    11143.24      1.3816
     8  -331.97083063     0.05035092    11050.75      0.05077232    11143.24      1.3816
     9  -331.96953004     0.05165151    11336.20      0.05207291    11428.68      1.4170
    10  -331.96953004     0.05165151    11336.20      0.05207291    11428.68      1.4170
    11  -331.96952980     0.05165175    11336.25      0.05207315    11428.73      1.4170
    12  -331.96952980     0.05165175    11336.25      0.05207315    11428.73      1.4170
    13  -331.96952958     0.05165198    11336.30      0.05207337    11428.78      1.4170
    14  -331.96952958     0.05165198    11336.30      0.05207337    11428.78      1.4170
    15  -331.93583010     0.08535145    18732.48      0.08577284    18824.96      2.3340
    16  -331.93583010     0.08535145    18732.48      0.08577284    18824.96      2.3340
    17  -331.93424711     0.08693445    19079.91      0.08735584    19172.39      2.3771
    18  -331.93424711     0.08693445    19079.91      0.08735584    19172.39      2.3771
    19  -331.93424702     0.08693453    19079.92      0.08735593    19172.41      2.3771
    20  -331.93424702     0.08693453    19079.92      0.08735593    19172.41      2.3771


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.174934503   0.609814270   0.001687309   0.769738046   0.019036531  -0.001943497   0.001120020  -0.010619006
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.739898171   0.212250267  -0.634407096   0.001391277  -0.000108949  -0.001066985   0.013629412   0.001437505
                        -0.000151015  -0.000044960   0.001105495  -0.000001125   0.001078968   0.010568844   0.013280788   0.001400700

    3    1.2  1.5 -0.5  -0.212250271   0.739898182  -0.001391277  -0.634408065  -0.010622567   0.001084455   0.002007083  -0.019029982
                        -0.000001432  -0.000000724   0.000001300   0.000000246  -0.000000012  -0.000000020   0.000000027  -0.000000014

    4    1.2  1.5 -1.5   0.609814251   0.174934499   0.769736881  -0.001687307   0.000195217   0.001912148   0.007605404   0.000802166
                        -0.000125061  -0.000035876  -0.001341614   0.000002941  -0.001933668  -0.018940254   0.007410878   0.000781648

    5    1.2  0.5  0.5  -0.000552224   0.001925043  -0.000011742  -0.005355032   0.530902411  -0.054200571  -0.033420888   0.316882320
                        -0.000000007  -0.000000004   0.000000006   0.000000001   0.000000285   0.000000487  -0.000000662   0.000000352

    6    2.2  0.5  0.5  -0.003933847  -0.001128479   0.003992307  -0.000008755  -0.003541099  -0.034680210   0.367133192   0.038721801
                         0.000000803   0.000000240  -0.000006957   0.000000008   0.035069798   0.343518486   0.357742355   0.037730340

    7    3.2  0.5  0.5  -0.003837576  -0.001100867  -0.004092511   0.000008971   0.005258751   0.051509819   0.247288852   0.026082253
                         0.000000787   0.000000226   0.000007133  -0.000000016  -0.052089575  -0.510215987   0.240963826   0.025415050

    8    4.2  0.5  0.5  -0.000000717  -0.000000206  -0.000007690   0.000000017   0.054830744   0.537066572  -0.210174759  -0.022167787
                        -0.003495304  -0.001002681  -0.004411868   0.000009671   0.005535538   0.054220541   0.215691564   0.022749662

    9    5.2  0.5  0.5   0.000000007   0.000000004  -0.000000006  -0.000000001  -0.000000285  -0.000000487   0.000000662  -0.000000352
                        -0.001554900   0.005420329  -0.000002070  -0.000943088  -0.009053198   0.000925124  -0.065165475   0.617855562

   10    6.2  0.5  0.5  -0.014826527   0.051684725   0.000044062   0.020108920  -0.076844620   0.007845418  -0.013571006   0.128670134
                        -0.000000041  -0.000000021   0.000000038   0.000000007   0.000000040   0.000000068  -0.000000092   0.000000049

   11    7.2  0.5  0.5   0.000008691   0.000002588  -0.000063623   0.000000065   0.007419655   0.072677920   0.091326737   0.009632063
                         0.042582087   0.012215275  -0.036510939   0.000080070   0.000749202   0.007337253  -0.093724082  -0.009885157

   12    8.2  0.5  0.5   0.000000041   0.000000021  -0.000000037  -0.000000007  -0.000000040  -0.000000068   0.000000093  -0.000000049
                         0.002611246  -0.009102616  -0.000124132  -0.056619800   0.149891523  -0.015302757  -0.000230888   0.002191300

   13    1.2  0.5 -0.5   0.001925043   0.000552224  -0.005355024   0.000011742   0.005444728   0.053326870  -0.226953509  -0.023936728
                        -0.000000391  -0.000000120   0.000009332  -0.000000014  -0.053926402  -0.528217394  -0.221148162  -0.023323567

   14    2.2  0.5 -0.5  -0.001128480   0.003933847  -0.000008755  -0.003992313   0.345264634  -0.035248122  -0.054064373   0.512607426
                        -0.000000008  -0.000000004   0.000000007   0.000000001   0.000000328   0.000000560  -0.000000761   0.000000405

   15    3.2  0.5 -0.5  -0.001100867   0.003837576   0.000008971   0.004092517  -0.512809531   0.052354353  -0.036417148   0.345275748
                        -0.000000001  -0.000000000   0.000000001   0.000000000   0.000000028   0.000000047  -0.000000064   0.000000034

   16    4.2  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.001002681  -0.003495304  -0.000009671  -0.004411875   0.539796600  -0.055109461   0.031764098  -0.301158231

   17    5.2  0.5 -0.5  -0.000001108  -0.000000326   0.000001643   0.000000003   0.000920494   0.009007383  -0.431193819  -0.045477739
                        -0.005420329  -0.001554900   0.000943087  -0.000002070   0.000092441   0.000909643   0.442512583   0.046672416

   18    6.2  0.5 -0.5   0.051684724   0.014826527   0.020108889  -0.000044062  -0.000787975  -0.007718793  -0.092154455  -0.009719711
                        -0.000010579  -0.000003082  -0.000035056   0.000000114   0.007805747   0.076455973  -0.089797325  -0.009470978

   19    7.2  0.5 -0.5   0.000000083   0.000000042  -0.000000075  -0.000000014  -0.000000080  -0.000000136   0.000000185  -0.000000099
                        -0.012215275   0.042582087  -0.000080070  -0.036510995   0.073047350  -0.007457384  -0.013801919   0.130861669

   20    8.2  0.5 -0.5   0.000001888   0.000000494   0.000098678  -0.000000179  -0.015225357  -0.149133449  -0.001529247  -0.000161068
                         0.009102615   0.002611246   0.056619714  -0.000124132  -0.001537172  -0.015056001   0.001569458   0.000165428


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000770  -0.000000150   0.000001832  -0.000000178  -0.000000904   0.000000197   0.000001930   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000000158  -0.000000811   0.000000001   0.000000005   0.000000329   0.000001508   0.000000000  -0.000001564
                        -0.000000600   0.000003074  -0.000000005  -0.000000051  -0.000000054  -0.000000245  -0.000000000   0.000001463

    3    1.2  1.5 -0.5   0.000003179   0.000000621   0.000000051  -0.000000005  -0.000001528   0.000000334  -0.000002141  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    4    1.2  1.5 -1.5  -0.000000038   0.000000196   0.000000019   0.000000195   0.000000195   0.000000892  -0.000000000   0.000001409
                         0.000000145  -0.000000744  -0.000000177  -0.000001822  -0.000000032  -0.000000145  -0.000000000  -0.000001318

    5    1.2  0.5  0.5   0.751725868   0.146811646  -0.093692388   0.009111430  -0.064444592   0.014072339  -0.000005010  -0.000000000
                         0.000000119   0.000000005   0.000000001   0.000000003   0.000000004  -0.000000000   0.000000000  -0.000000000

    6    2.2  0.5  0.5   0.024832229  -0.127149448  -0.001174625  -0.012078653  -0.120779139  -0.553110766  -0.000000000   0.000002981
                        -0.094138388   0.482020777   0.010997160   0.113083254   0.019644916   0.089964299   0.000000000  -0.000002789

    7    3.2  0.5  0.5  -0.014582149   0.074665559  -0.007237331  -0.074421353  -0.026063324  -0.119357577  -0.000000000  -0.000002257
                         0.055280582  -0.283055505   0.067757849   0.696750625   0.004239240   0.019413690   0.000000000   0.000002112

    8    4.2  0.5  0.5  -0.027540413   0.141016343   0.066076483   0.679461235  -0.011183894  -0.051216874  -0.000000000  -0.000002263
                        -0.007264728   0.037197878   0.007057741   0.072574638  -0.068759830  -0.314887179   0.000000000  -0.000002419

    9    5.2  0.5  0.5   0.000000033   0.000000001   0.000000001  -0.000000003   0.000000051  -0.000000002  -0.000000000   0.000000000
                        -0.206620496  -0.040352869  -0.104808207   0.010192425   0.721047262  -0.157450322  -0.000001663  -0.000000000

   10    6.2  0.5  0.5  -0.000006363  -0.000001243  -0.000011231   0.000001092   0.000010871  -0.000002374  -0.577356980  -0.000002042
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000537  -0.000002846

   11    7.2  0.5  0.5  -0.000004233   0.000021672  -0.000000021  -0.000000218  -0.000000384  -0.000001758  -0.000003474   0.394464109
                        -0.000001116   0.000005717  -0.000000002  -0.000000023  -0.000002360  -0.000010807   0.000000453   0.421616349

   12    8.2  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000537   0.000002845
                        -0.000016052  -0.000003135   0.000011155  -0.000001085   0.000000045  -0.000000010  -0.577318490  -0.000002041

   13    1.2  0.5 -0.5   0.037445736  -0.191734893  -0.000967703  -0.009950872   0.013889808   0.063608684   0.000000000  -0.000003659
                        -0.141955896   0.726862787   0.009059895   0.093162458  -0.002259199  -0.010346049  -0.000000000   0.000003423

   14    2.2  0.5 -0.5  -0.498508788  -0.097358491   0.113726498  -0.011059714  -0.560379420   0.122366348  -0.000004082  -0.000000000
                        -0.000000079  -0.000000003   0.000000000  -0.000000004   0.000000040  -0.000000002   0.000000000  -0.000000000

   15    3.2  0.5 -0.5   0.292737706   0.057171512   0.700713901  -0.068143268  -0.120926103   0.026405833   0.000003091  -0.000000000
                         0.000000047   0.000000002   0.000000000  -0.000000023   0.000000008  -0.000000000   0.000000000  -0.000000000

   16    4.2  0.5 -0.5   0.000000023   0.000000001   0.000000000   0.000000022   0.000000023  -0.000000001   0.000000000  -0.000000000
                        -0.145839950  -0.028482462   0.683326166  -0.066452339   0.319025240  -0.069663432  -0.000003312   0.000000000

   17    5.2  0.5 -0.5   0.039018210  -0.199786593   0.010134776   0.104215406   0.025277361   0.115758198  -0.000000000   0.000001136
                         0.010292391  -0.052700539   0.001082513   0.011131459   0.155408040   0.711694593  -0.000000000   0.000001214

   18    6.2  0.5 -0.5  -0.000000317   0.000001623  -0.000000116  -0.000001193  -0.000002343  -0.000010730  -0.000000453  -0.421602945
                         0.000001202  -0.000006153   0.000001086   0.000011168   0.000000381   0.000001745  -0.000003473   0.394451568

   19    7.2  0.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000537  -0.000002846
                        -0.000022414  -0.000004377  -0.000000219   0.000000021   0.000010949  -0.000002391   0.577375336   0.000002042

   20    8.2  0.5 -0.5   0.000003031  -0.000015521  -0.000001079  -0.000011092   0.000000002   0.000000007  -0.000003472   0.394425271
                         0.000000800  -0.000004094  -0.000000115  -0.000001185   0.000000010   0.000000044   0.000000454   0.421574838


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5   0.000234876  -0.020827558   0.064096207   0.001618320
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.047812678  -0.000539441  -0.000518079   0.020516166
                         0.042712703   0.000481144  -0.000089978   0.003556859

    3    1.2  1.5 -0.5   0.000722839  -0.064112613  -0.020822207  -0.000525835
                        -0.000000563  -0.000000145  -0.000000049   0.000000156

    4    1.2  1.5 -1.5  -0.015532409  -0.000175162   0.001594534  -0.063154106
                         0.013875570   0.000156477   0.000276446  -0.010949092

    5    1.2  0.5  0.5   0.000885640  -0.078556591  -0.087213820  -0.002202166
                        -0.000000849  -0.000000218  -0.000000074   0.000000235

    6    2.2  0.5  0.5   0.080713135   0.000910648   0.001131211  -0.044797870
                        -0.072103818  -0.000812200   0.000196394  -0.007766567

    7    3.2  0.5  0.5   0.033915259   0.000382504  -0.002691724   0.106610570
                        -0.030297554  -0.000341593  -0.000466644   0.018483191

    8    4.2  0.5  0.5   0.024164156   0.000272503   0.000481429  -0.019067800
                         0.027049523   0.000305042  -0.002776874   0.109982623

    9    5.2  0.5  0.5   0.000000849   0.000000218   0.000000074  -0.000000235
                         0.001294698  -0.114829735   0.024408008   0.000616095

   10    6.2  0.5  0.5  -0.006706304   0.594769252  -0.535423587  -0.013517884
                         0.000003340   0.000000858   0.000000289  -0.000000925

   11    7.2  0.5  0.5   0.507117217   0.005712505  -0.001068219   0.042226884
                         0.567667942   0.006404647   0.006150616  -0.243567073

   12    8.2  0.5  0.5  -0.000003341  -0.000000857  -0.000000291   0.000000926
                        -0.001876195   0.166460529   0.782686527   0.019762153

   13    1.2  0.5 -0.5  -0.058584404  -0.000661042  -0.002169758   0.085931944
                         0.052335510   0.000589391  -0.000376412   0.014898034

   14    2.2  0.5 -0.5   0.001220224  -0.108229251  -0.045466128  -0.001148132
                        -0.000000977  -0.000000251  -0.000000085   0.000000271

   15    3.2  0.5 -0.5   0.000512830  -0.045477319   0.108200934   0.002731873
                        -0.000000082  -0.000000021  -0.000000007   0.000000023

   16    4.2  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000409034   0.036270968  -0.111623288  -0.002818298

   17    5.2  0.5 -0.5   0.076501115   0.000861910   0.000105011  -0.004169516
                         0.085635550   0.000966102  -0.000607080   0.024049241

   18    6.2  0.5 -0.5   0.443555955   0.005003534  -0.013319353   0.527553759
                        -0.396243080  -0.004465330  -0.002308251   0.091462829

   19    7.2  0.5 -0.5  -0.000006681  -0.000001716  -0.000000580   0.000001852
                        -0.008582084   0.761192988   0.247200382   0.006242689

   20    8.2  0.5 -0.5  -0.110898649  -0.001247452   0.003376738  -0.133700400
                        -0.124139427  -0.001401421  -0.019471526   0.771182470


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   3.060%  37.187%   0.000%  59.250%   0.036%   0.000%   0.000%   0.011%   0.000%   0.000%
    2    1.2  1.5  0.5  54.745%   4.505%  40.247%   0.000%   0.000%   0.011%   0.036%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   4.505%  54.745%   0.000%  40.247%   0.011%   0.000%   0.000%   0.036%   0.000%   0.000%
    4    1.2  1.5 -1.5  37.187%   3.060%  59.250%   0.000%   0.000%   0.036%   0.011%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.003%  28.186%   0.294%   0.112%  10.041%  56.509%   2.155%
    6    2.2  0.5  0.5   0.002%   0.000%   0.002%   0.000%   0.124%  11.921%  26.277%   0.292%   0.948%  24.851%
    7    3.2  0.5  0.5   0.001%   0.000%   0.002%   0.000%   0.274%  26.297%  11.922%   0.133%   0.327%   8.570%
    8    4.2  0.5  0.5   0.001%   0.000%   0.002%   0.000%   0.304%  29.138%   9.070%   0.101%   0.081%   2.127%
    9    5.2  0.5  0.5   0.000%   0.003%   0.000%   0.000%   0.008%   0.000%   0.425%  38.175%   4.269%   0.163%
   10    6.2  0.5  0.5   0.022%   0.267%   0.000%   0.040%   0.591%   0.006%   0.018%   1.656%   0.000%   0.000%
   11    7.2  0.5  0.5   0.181%   0.015%   0.133%   0.000%   0.006%   0.534%   1.712%   0.019%   0.000%   0.000%
   12    8.2  0.5  0.5   0.001%   0.008%   0.000%   0.321%   2.247%   0.023%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.294%  28.186%  10.041%   0.112%   2.155%  56.509%
   14    2.2  0.5 -0.5   0.000%   0.002%   0.000%   0.002%  11.921%   0.124%   0.292%  26.277%  24.851%   0.948%
   15    3.2  0.5 -0.5   0.000%   0.001%   0.000%   0.002%  26.297%   0.274%   0.133%  11.922%   8.570%   0.327%
   16    4.2  0.5 -0.5   0.000%   0.001%   0.000%   0.002%  29.138%   0.304%   0.101%   9.070%   2.127%   0.081%
   17    5.2  0.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.008%  38.175%   0.425%   0.163%   4.269%
   18    6.2  0.5 -0.5   0.267%   0.022%   0.040%   0.000%   0.006%   0.591%   1.656%   0.018%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.015%   0.181%   0.000%   0.133%   0.534%   0.006%   0.019%   1.712%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.008%   0.001%   0.321%   0.000%   0.023%   2.247%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.043%   0.411%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.411%   0.000%   0.000%   0.043%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.411%   0.043%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.043%   0.000%   0.000%   0.411%
    5    1.2  0.5  0.5   0.878%   0.008%   0.415%   0.020%   0.000%   0.000%   0.000%   0.617%   0.761%   0.000%
    6    2.2  0.5  0.5   0.012%   1.293%   1.497%  31.403%   0.000%   0.000%   1.171%   0.000%   0.000%   0.207%
    7    3.2  0.5  0.5   0.464%  49.100%   0.070%   1.462%   0.000%   0.000%   0.207%   0.000%   0.001%   1.171%
    8    4.2  0.5  0.5   0.442%  46.693%   0.485%  10.178%   0.000%   0.000%   0.132%   0.000%   0.001%   1.246%
    9    5.2  0.5  0.5   1.098%   0.010%  51.991%   2.479%   0.000%   0.000%   0.000%   1.319%   0.060%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.334%   0.000%   0.004%  35.375%  28.668%   0.018%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.336%  57.941%   0.007%   0.004%   6.111%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.330%   0.000%   0.000%   2.771%  61.260%   0.039%
   13    1.2  0.5 -0.5   0.008%   0.878%   0.020%   0.415%   0.000%   0.000%   0.617%   0.000%   0.000%   0.761%
   14    2.2  0.5 -0.5   1.293%   0.012%  31.403%   1.497%   0.000%   0.000%   0.000%   1.171%   0.207%   0.000%
   15    3.2  0.5 -0.5  49.100%   0.464%   1.462%   0.070%   0.000%   0.000%   0.000%   0.207%   1.171%   0.001%
   16    4.2  0.5 -0.5  46.693%   0.442%  10.178%   0.485%   0.000%   0.000%   0.000%   0.132%   1.246%   0.001%
   17    5.2  0.5 -0.5   0.010%   1.098%   2.479%  51.991%   0.000%   0.000%   1.319%   0.000%   0.000%   0.060%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.334%  35.375%   0.004%   0.018%  28.668%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.336%   0.000%   0.007%  57.941%   6.111%   0.004%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.330%   2.771%   0.000%   0.039%  61.260%


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
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      129.50       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *       330.01    247.72     78.59      2.06      0.82      0.60
 REAL TIME  *       359.05 SEC
 DISK USED  *       163.48 MB (local),        1.97 GB (total)
 SF USED    *         1.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -331.934247022236

              CI              CI           MULTI
   -331.88671495   -331.97430088   -331.11634828
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
