
 Working directory              : /wrk/irikura/molpro.9rE188okd3/
 Global scratch directory       : /wrk/irikura/molpro.9rE188okd3/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.9rE188okd3/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.03 sec
 ***,Sb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sb};
 
 basis={
 ecp,sb,ECP28MDF;
 spdfg,sb,aug-cc-pwCVTZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=1
 ND=17
 
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
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=2}                                 !compute and diagonalize SO matrix; print elements
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.16 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Sb SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 13-Jan-25          TIME: 12:49:44  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  42000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =        17.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sb   ECP ECP28MDF                 selected for group  1
 Library entry SB     S AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Sb S diffuse               selected for group 1    nprim= 1    centre=  0.010    ratio= 3.000    dratio= 1.000
 Library entry SB     P AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Sb P diffuse               selected for group 1    nprim= 1    centre=  0.009    ratio= 3.000    dratio= 1.000
 Library entry SB     D AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Sb D diffuse               selected for group 1    nprim= 1    centre=  0.017    ratio= 3.000    dratio= 1.000
 Library entry SB     F AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Sb F diffuse               selected for group 1    nprim= 1    centre=  0.041    ratio= 3.000    dratio= 1.000
 Library entry SB     G AUG-CC-PWCVTZ-PP     selected for orbital group  1


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

         1 0.162E-04 0.147E-02 0.724E-02 0.101E-01 0.101E-01 0.101E-01 0.101E-01 0.101E-01
         2 0.612E-02 0.612E-02 0.612E-02 0.177E-01 0.177E-01 0.177E-01 0.100E+00 0.100E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     30.933 MB (compressed) written to integral file ( 17.9%)

     Node minimum: 0.262 MB, node maximum: 3.932 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     364035.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     364035      RECORD LENGTH: 524288

 Memory used in sort:       0.92 MW

 SORT1 READ    21109381. AND WROTE       71577. INTEGRALS IN      1 RECORDS. CPU TIME:     0.23 SEC, REAL TIME:     0.24 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN     84 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      361641.  Node maximum:      368676. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.22      1.92
 REAL TIME  *         3.09 SEC
 DISK USED  *        29.28 MB (local),      947.95 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      96 (   46   50)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:            17
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.368D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.291D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.570D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.511D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 4   6 3 5 1 6 4 3 5 2 1   6 4 5 3 2 1 2 6 4 5   3 2 4 6 5 3 8121415
                                        711 91310 1 2 5 3 4   6 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.289D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.289D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.593D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.378D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.388D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.294D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.115D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.199D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 2 3 3 1 2 3   2 1 6 9 7 5 4 810 1   2 3 6 9 7 810 4 5 8  10 6 4 5 9 7 3 1 2 4
                                        5 7 9 6 810 2 1 3 7   9 4 5 610 8 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05556
 Weight factors for state symmetry  2:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556
 
 Number of orbital rotations:  796  ( 24 closed/active, 426 closed/virtual, 0 active/active, 346 active/virtual )
 Total number of variables:    7536
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   18    0   -239.09676253    -239.12180266   -0.02504013    0.12726385 0.00029354 0.00000000  0.80E+00      1.66
   2    7   12    0   -239.11947450    -239.12139018   -0.00191568    0.11538422 0.00010148 0.00000000  0.11E+00      2.94
   3    7   14    0   -239.12139840    -239.12139851   -0.00000012    0.00068285 0.00000149 0.00000000  0.11E-02      4.31
   4    2    4    0   -239.12139851    -239.12139851    0.00000000    0.00000004 0.00000001 0.00000000  0.15E-06      4.81

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.77E-08)
                       Final energy:   -239.12139851
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -239.273983099942
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.54661519
 One electron energy                          -420.24167975
 Two electron energy                           180.96769665
 Virial ratio                                    3.58544283
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -239.213673997095
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50892314
 One electron energy                          -420.04522066
 Two electron energy                           180.83154667
 Virial ratio                                    3.58584433
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -239.213673997092
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50892314
 One electron energy                          -420.04522066
 Two electron energy                           180.83154667
 Virial ratio                                    3.58584433
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -239.213673996887
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50892314
 One electron energy                          -420.04522068
 Two electron energy                           180.83154668
 Virial ratio                                    3.58584433
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -239.213673996842
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50892314
 One electron energy                          -420.04522067
 Two electron energy                           180.83154667
 Virial ratio                                    3.58584433
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -239.213673996786
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.50892314
 One electron energy                          -420.04522068
 Two electron energy                           180.83154668
 Virial ratio                                    3.58584433
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -239.190495854619
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.48417559
 One electron energy                          -419.85780427
 Two electron energy                           180.66730842
 Virial ratio                                    3.58628565
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -239.190495854277
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.48417559
 One electron energy                          -419.85780429
 Two electron energy                           180.66730844
 Virial ratio                                    3.58628565
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -239.190495854234
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.48417559
 One electron energy                          -419.85780428
 Two electron energy                           180.66730843
 Virial ratio                                    3.58628565
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -239.043250793853
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.89258896
 One electron energy                          -414.30885669
 Two electron energy                           175.26560590
 Virial ratio                                    3.60133329
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -239.030621588623
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94224205
 One electron energy                          -414.54977985
 Two electron energy                           175.51915826
 Virial ratio                                    3.59979109
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -239.030621588572
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94224205
 One electron energy                          -414.54977987
 Two electron energy                           175.51915828
 Virial ratio                                    3.59979109
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -239.030621588189
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94224205
 One electron energy                          -414.54977989
 Two electron energy                           175.51915831
 Virial ratio                                    3.59979109
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.2 Doublet
 ==============================
 !MCSCF STATE 13.2 Doublet Energy             -239.030621587845
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94224207
 One electron energy                          -414.54977999
 Two electron energy                           175.51915841
 Virial ratio                                    3.59979109
 
 !MCSCF STATE 13.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.2 Doublet
 ==============================
 !MCSCF STATE 14.2 Doublet Energy             -239.030621587784
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.94224207
 One electron energy                          -414.54977999
 Two electron energy                           175.51915840
 Virial ratio                                    3.59979109
 
 !MCSCF STATE 14.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.2 Doublet
 ==============================
 !MCSCF STATE 15.2 Doublet Energy             -239.024991269349
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.95639996
 One electron energy                          -414.62174858
 Two electron energy                           175.59675731
 Virial ratio                                    3.59932959
 
 !MCSCF STATE 15.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.2 Doublet
 ==============================
 !MCSCF STATE 16.2 Doublet Energy             -239.024991268840
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.95639996
 One electron energy                          -414.62174860
 Two electron energy                           175.59675733
 Virial ratio                                    3.59932959
 
 !MCSCF STATE 16.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.2 Doublet
 ==============================
 !MCSCF STATE 17.2 Doublet Energy             -239.024991268186
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.95639997
 One electron energy                          -414.62174870
 Two electron energy                           175.59675743
 Virial ratio                                    3.59932959
 
 !MCSCF STATE 17.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000001
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.720370724712
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000205703
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.999999827975
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.279651512631
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999961076
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000054569
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>     0.000000000004
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     1.936591939444
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     1.000000003614
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>     3.999999999607
 !MCSCF expec    <13.2 Doublet|LXLX|13.2 Doublet>     0.999999999998
 !MCSCF expec    <14.2 Doublet|LXLX|14.2 Doublet>     2.063406153300
 !MCSCF expec    <15.2 Doublet|LXLX|15.2 Doublet>     0.999999999904
 !MCSCF expec    <16.2 Doublet|LXLX|16.2 Doublet>     0.000000000092
 !MCSCF expec    <17.2 Doublet|LXLX|17.2 Doublet>     0.999999999998
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.000000000001
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.308682909897
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999999797391
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000179058
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     2.691289934509
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.000000038926
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999945433
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>     0.000000000004
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     3.762884137392
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     3.999999998562
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>     1.000000000267
 !MCSCF expec    <13.2 Doublet|LYLY|13.2 Doublet>     0.999999999998
 !MCSCF expec    <14.2 Doublet|LYLY|14.2 Doublet>     0.237116764027
 !MCSCF expec    <15.2 Doublet|LYLY|15.2 Doublet>     0.000000000099
 !MCSCF expec    <16.2 Doublet|LYLY|16.2 Doublet>     0.999999999911
 !MCSCF expec    <17.2 Doublet|LYLY|17.2 Doublet>     0.999999999998
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000001
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.970946365386
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.999999999995
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999996900
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.999999992961
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.029058552855
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.000000000002
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.000000000000
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>     0.000000000004
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     0.300523923146
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     0.999999997806
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>     1.000000000108
 !MCSCF expec    <13.2 Doublet|LZLZ|13.2 Doublet>     3.999999999987
 !MCSCF expec    <14.2 Doublet|LZLZ|14.2 Doublet>     3.699477082655
 !MCSCF expec    <15.2 Doublet|LZLZ|15.2 Doublet>     0.999999999998
 !MCSCF expec    <16.2 Doublet|LZLZ|16.2 Doublet>     0.999999999998
 !MCSCF expec    <17.2 Doublet|LZLZ|17.2 Doublet>     0.000000000004
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     0.000000000002
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     5.999999999995
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     5.999999999995
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     5.999999999995
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     5.999999999995
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     5.999999999995
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000002
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000002
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000002
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>     0.000000000011
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     5.999999999982
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     5.999999999982
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>     5.999999999982
 !MCSCF expec    <13.2 Doublet|L**2|13.2 Doublet>     5.999999999982
 !MCSCF expec    <14.2 Doublet|L**2|14.2 Doublet>     5.999999999982
 !MCSCF expec    <15.2 Doublet|L**2|15.2 Doublet>     2.000000000001
 !MCSCF expec    <16.2 Doublet|L**2|16.2 Doublet>     2.000000000001
 !MCSCF expec    <17.2 Doublet|L**2|17.2 Doublet>     2.000000000001
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 2 6 1 1 6 2   4 3 5 1 6 2 4 3 5 1   4 2 3 5 6 1 5 3 4 2   6 5 3 4 2 613101514
                                        9 812 711 1 5 3 4 2   6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 1 2 3 2   1 3 6 5 4 810 9 7 2   1 3 4 7 9 810 6 5 7   9 4 810 6 5 1 2 3 7
                                        9 4 810 6 5 1 2 3 9   7 810 4 6 5 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.62512     1  1  s    1.00197
    2.1     2.00000    -1.71947     1  1  d2-  1.00085
    3.1     2.00000    -1.71947     1  1  d2+  1.00085
    4.1     2.00000    -1.71947     1  1  d1+  1.00085
    5.1     2.00000    -1.71947     1  1  d0   1.00085
    6.1     2.00000    -1.71947     1  1  d1-  1.00085
    7.1     1.97998    -0.70038     1  2  s    1.03903
    1.2     2.00000    -4.69197     1  1  px   0.99968
    2.2     2.00000    -4.69197     1  1  py   0.99968
    3.2     2.00000    -4.69197     1  1  pz   0.99968
    4.2     0.83868    -0.19765     1  2  pz   1.03273
    5.2     0.83868    -0.19765     1  2  py   1.03273
    6.2     0.83868    -0.19765     1  2  px   1.03273
    7.2     0.16799     0.02207     1  2  px  -0.26182    1  7  px   0.47721    1  8  px   0.71572
    8.2     0.16799     0.02207     1  2  py  -0.26182    1  7  py   0.47721    1  8  py   0.71572
    9.2     0.16799     0.02207     1  2  pz  -0.26182    1  7  pz   0.47721    1  8  pz   0.71572
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99874791
 
 Energy:     -239.27398310
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 baa000      -0.06922627     -0.00000058      0.00004844      0.00007791      0.80931529      0.00000000     -0.00000000
 2 aab000       0.73550074      0.00000621     -0.00003273     -0.00005498     -0.34470593     -0.00000000      0.00000000
 2 a02000       0.00000594     -0.70344698      0.00000000     -0.00000000      0.00000000      0.69294178      0.00000000
 2 0a2000      -0.00001205     -0.00000000     -0.70344697      0.00018215      0.00004106      0.00000000      0.69294175
 2 a20000      -0.00000594      0.70344697      0.00000000     -0.00000000     -0.00000000      0.69294180      0.00000000
 2 02a000      -0.00002172     -0.00000000     -0.00018215     -0.70344697      0.00006587     -0.00000000      0.00013671
 2 20a000       0.00002172      0.00000000      0.00018215      0.70344693     -0.00006587     -0.00000000      0.00013671
 2 2a0000       0.00001205      0.00000000      0.70344693     -0.00018215     -0.00004106      0.00000000      0.69294181
 2 aba000      -0.66627447     -0.00000562     -0.00001572     -0.00002293     -0.46460936      0.00000000      0.00000000
 2 a0a0b0       0.04655407      0.00000039      0.00000110      0.00000160      0.03246329      0.00000000      0.00000000
 2 0aa00b      -0.00483699     -0.00000004      0.00000338      0.00000544      0.05654866     -0.00000000     -0.00000000
 2 a0a00b      -0.00000152     -0.00000000     -0.00001273     -0.04915141      0.00000460      0.00000000     -0.00001290
 2 aa000b      -0.00000084     -0.00000000     -0.04915141      0.00001273      0.00000287     -0.00000000     -0.06536625
 2 a0ab00       0.00000041     -0.04915142      0.00000000      0.00000000     -0.00000000      0.06536626     -0.00000000
 2 aa00b0      -0.00000041      0.04915140     -0.00000000      0.00000000      0.00000000      0.06536624     -0.00000000
 2 0aab00      -0.00000084     -0.00000000     -0.04915142      0.00001273      0.00000287     -0.00000000      0.06536626
 2 0aa0b0       0.00000152      0.00000000      0.00001273      0.04915140     -0.00000460      0.00000000     -0.00001290
 2 aa0b00       0.05139109      0.00000043     -0.00000229     -0.00000384     -0.02408538      0.00000000     -0.00000000
 2 0ab0a0      -0.00000037     -0.00000000     -0.00000314     -0.01210969      0.00000113     -0.00000000      0.00000295
 2 0baa00       0.00000021      0.00000000      0.01210969     -0.00000314     -0.00000071      0.00000000     -0.01494345
 2 ba00a0       0.00000010     -0.01210969      0.00000000     -0.00000000      0.00000000     -0.01494346     -0.00000000
 2 b0aa00      -0.00000010      0.01210969      0.00000000     -0.00000000      0.00000000     -0.01494346      0.00000000
 2 ab000a       0.00000021      0.00000000      0.01210969     -0.00000314     -0.00000071      0.00000000      0.01494345
 2 a0b00a       0.00000037      0.00000000      0.00000314      0.01210969     -0.00000113     -0.00000000      0.00000295
 2 0ba00a      -0.02242283     -0.00000019     -0.00000139     -0.00000215     -0.03039918      0.00000000      0.00000000
 2 b0a0a0      -0.00901621     -0.00000008     -0.00000199     -0.00000316     -0.03668243     -0.00000000     -0.00000000
 2 ab0a00      -0.03627604     -0.00000031      0.00000001      0.00000013     -0.01053296      0.00000000      0.00000000
 2 ba0a00      -0.01511505     -0.00000013      0.00000228      0.00000371      0.03461834     -0.00000000      0.00000000
 2 a0b0a0      -0.03753786     -0.00000032      0.00000089      0.00000155      0.00421914     -0.00000000     -0.00000000
 2 0ab00a       0.02725982      0.00000023     -0.00000199     -0.00000329     -0.02614948      0.00000000      0.00000000
 2 b0a00a       0.00000114      0.00000000      0.00000959      0.03704172     -0.00000347     -0.00000000      0.00000995
 2 ba000a       0.00000063      0.00000000      0.03704172     -0.00000959     -0.00000216      0.00000000      0.05042280
 2 a0ba00      -0.00000031      0.03704174     -0.00000000     -0.00000000      0.00000000     -0.05042281      0.00000000
 2 ab00a0       0.00000031     -0.03704171      0.00000000     -0.00000000     -0.00000000     -0.05042278      0.00000000
 2 0aba00       0.00000063      0.00000000      0.03704174     -0.00000959     -0.00000216      0.00000000     -0.05042281
 2 0ba0a0      -0.00000114     -0.00000000     -0.00000959     -0.03704171      0.00000347     -0.00000000      0.00000995
 0 a22000      -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.15390879     -0.00000000
 0 2a2000       0.00000000      0.00000000      0.00000001     -0.00000000     -0.00000000     -0.00000000     -0.15390879
 0 22a000       0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00003036
 2 200a00       0.00000077      0.00000000      0.00000646      0.02493205     -0.00000233     -0.00000000      0.00000473
 2 2000a0       0.00000043      0.00000000      0.02493202     -0.00000646     -0.00000146     -0.00000000      0.02395937
 2 02000a      -0.00000021      0.02493203     -0.00000000      0.00000000      0.00000000      0.02395939      0.00000000
 2 00200a       0.00000021     -0.02493203     -0.00000000      0.00000000      0.00000000      0.02395939     -0.00000000
 2 020a00      -0.00000077     -0.00000000     -0.00000646     -0.02493205      0.00000233     -0.00000000      0.00000473
 2 0020a0      -0.00000043     -0.00000000     -0.02493202      0.00000646      0.00000146      0.00000000      0.02395937
 0 a2a0b0      -0.01304056     -0.00000011     -0.00000031     -0.00000045     -0.00909350     -0.00000000     -0.00000000
 0 2aa00b       0.00135492      0.00000001     -0.00000095     -0.00000152     -0.01584020      0.00000000      0.00000000
 0 2aa0b0      -0.00000043     -0.00000000     -0.00000357     -0.01376811      0.00000129     -0.00000000     -0.00000050
 0 2aab00       0.00000024      0.00000000      0.01376811     -0.00000357     -0.00000080      0.00000000      0.00255850
 0 aa20b0       0.00000012     -0.01376811     -0.00000000     -0.00000000     -0.00000000      0.00255851     -0.00000000
 0 a2ab00      -0.00000012      0.01376811     -0.00000000      0.00000000      0.00000000      0.00255850      0.00000000
 0 aa200b       0.00000024      0.00000000      0.01376811     -0.00000357     -0.00000080      0.00000000     -0.00255850
 0 a2a00b       0.00000043      0.00000000      0.00000357      0.01376811     -0.00000129     -0.00000000     -0.00000050
 
 Energy:     -239.21367400   -239.21367400   -239.21367400   -239.21367400   -239.21367400   -239.19049585   -239.19049585

 State:              8               9              10              11              12              13              14
 2 baa000       0.00000000      0.00000000     -0.06231641      0.00000003      0.00000011     -0.00000000     -0.01776117
 2 aab000      -0.00000000     -0.00000001      0.04653985     -0.00000030     -0.00000040      0.00000002     -0.04508701
 2 a02000       0.00000000     -0.00000000     -0.00000001      0.00000001     -0.00000003      0.05611682      0.00000002
 2 0a2000      -0.00013671      0.00000000     -0.00000010     -0.05611681     -0.00000056      0.00000001      0.00000026
 2 a20000       0.00000000      0.00000000      0.00000001     -0.00000001      0.00000003     -0.05611679     -0.00000002
 2 02a000       0.69294176     -0.00000000     -0.00000019      0.00000056     -0.05611678     -0.00000003      0.00000030
 2 20a000       0.69294180      0.00000000      0.00000019     -0.00000056      0.05611681      0.00000003     -0.00000030
 2 2a0000      -0.00013671      0.00000000      0.00000010      0.05611681      0.00000056     -0.00000001     -0.00000026
 2 aba000       0.00000000      0.00000001      0.01577656      0.00000027      0.00000029     -0.00000002      0.06284817
 2 a0a0b0      -0.00000000     -0.46849842      0.15845357      0.00000268      0.00000288     -0.00000019      0.63122205
 2 0aa00b       0.00000000      0.46849841      0.62588112     -0.00000029     -0.00000114      0.00000001      0.17838620
 2 a0a00b      -0.06536625     -0.00000000      0.00000190     -0.00000566      0.56361486      0.00000026     -0.00000305
 2 aa000b       0.00001290     -0.00000000      0.00000102      0.56361484      0.00000566     -0.00000015     -0.00000265
 2 a0ab00      -0.00000000      0.00000000      0.00000006     -0.00000015      0.00000026     -0.56361478     -0.00000018
 2 aa00b0       0.00000000     -0.00000000     -0.00000006      0.00000015     -0.00000026      0.56361475      0.00000018
 2 0aab00      -0.00001290      0.00000000      0.00000102      0.56361468      0.00000566     -0.00000015     -0.00000265
 2 0aa0b0      -0.06536624      0.00000000     -0.00000190      0.00000566     -0.56361467     -0.00000026      0.00000305
 2 aa0b00      -0.00000000      0.46849843     -0.46742753      0.00000297      0.00000402     -0.00000020      0.45283584
 2 0ab0a0       0.01494346     -0.00000000      0.00000111     -0.00000330      0.32902556      0.00000015     -0.00000178
 2 0baa00       0.00000295     -0.00000000     -0.00000060     -0.32902556     -0.00000330      0.00000009      0.00000154
 2 ba00a0      -0.00000000      0.00000000      0.00000004     -0.00000009      0.00000015     -0.32902561     -0.00000011
 2 b0aa00      -0.00000000     -0.00000000     -0.00000004      0.00000009     -0.00000015      0.32902562      0.00000011
 2 ab000a      -0.00000295      0.00000000     -0.00000060     -0.32902565     -0.00000330      0.00000009      0.00000154
 2 a0b00a       0.01494345      0.00000000     -0.00000111      0.00000330     -0.32902566     -0.00000015      0.00000178
 2 0ba00a       0.00000000     -0.23424921     -0.33882562      0.00000062      0.00000115     -0.00000004      0.00162655
 2 b0a0a0       0.00000000      0.23424921      0.01236787     -0.00000161     -0.00000187      0.00000011     -0.33860373
 2 ab0a00       0.00000000     -0.23424922      0.29942335     -0.00000129     -0.00000187      0.00000008     -0.15859097
 2 ba0a00       0.00000000     -0.23424921      0.16800418     -0.00000169     -0.00000216      0.00000011     -0.29424487
 2 a0b0a0       0.00000000      0.23424921     -0.17082144     -0.00000106     -0.00000101      0.00000008     -0.29261832
 2 0ab00a      -0.00000000     -0.23424921     -0.28705550     -0.00000033     -0.00000001      0.00000003     -0.18001274
 2 b0a00a       0.05042279      0.00000000     -0.00000079      0.00000236     -0.23458920     -0.00000011      0.00000127
 2 ba000a      -0.00000995      0.00000000     -0.00000042     -0.23458919     -0.00000236      0.00000006      0.00000110
 2 a0ba00       0.00000000     -0.00000000     -0.00000003      0.00000006     -0.00000011      0.23458916      0.00000008
 2 ab00a0      -0.00000000      0.00000000      0.00000003     -0.00000006      0.00000011     -0.23458914     -0.00000008
 2 0aba00       0.00000995     -0.00000000     -0.00000042     -0.23458912     -0.00000236      0.00000006      0.00000110
 2 0ba0a0       0.05042278     -0.00000000      0.00000079     -0.00000236      0.23458911      0.00000011     -0.00000127
 0 a22000      -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 2a2000       0.00003036     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0 22a000      -0.15390879      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2 200a00       0.02395940     -0.00000000      0.00000032     -0.00000095      0.09443647      0.00000004     -0.00000051
 2 2000a0      -0.00000473     -0.00000000      0.00000017      0.09443647      0.00000095     -0.00000002     -0.00000044
 2 02000a      -0.00000000      0.00000000      0.00000001     -0.00000002      0.00000004     -0.09443646     -0.00000003
 2 00200a      -0.00000000     -0.00000000     -0.00000001      0.00000002     -0.00000004      0.09443646      0.00000003
 2 020a00       0.02395940      0.00000000     -0.00000032      0.00000095     -0.09443645     -0.00000004      0.00000051
 2 0020a0      -0.00000473     -0.00000000     -0.00000017     -0.09443645     -0.00000095      0.00000002      0.00000044
 0 a2a0b0       0.00000000      0.04839797     -0.01645102     -0.00000028     -0.00000030      0.00000002     -0.06553495
 0 2aa00b      -0.00000000     -0.04839797     -0.06498044      0.00000003      0.00000012     -0.00000000     -0.01852047
 0 2aa0b0      -0.00255851     -0.00000000      0.00000020     -0.00000059      0.05851579      0.00000003     -0.00000032
 0 2aab00      -0.00000050     -0.00000000     -0.00000011     -0.05851579     -0.00000059      0.00000002      0.00000027
 0 aa20b0       0.00000000      0.00000000      0.00000001     -0.00000002      0.00000003     -0.05851580     -0.00000002
 0 a2ab00       0.00000000     -0.00000000     -0.00000001      0.00000002     -0.00000003      0.05851580      0.00000002
 0 aa200b       0.00000050      0.00000000     -0.00000011     -0.05851581     -0.00000059      0.00000002      0.00000027
 0 a2a00b      -0.00255850      0.00000000     -0.00000020      0.00000059     -0.05851581     -0.00000003      0.00000032
 
 Energy:     -239.19049585   -239.04325079   -239.03062159   -239.03062159   -239.03062159   -239.03062159   -239.03062159

 State:             15              16              17
 2 baa000      -0.00000000      0.00000000     -0.00000000
 2 aab000      -0.00000000      0.00000000      0.00000000
 2 a02000      -0.00000001      0.00000001     -0.07176127
 2 0a2000       0.07176128     -0.00000070     -0.00000001
 2 a20000      -0.00000001      0.00000001     -0.07176125
 2 02a000       0.00000070      0.07176126      0.00000001
 2 20a000       0.00000070      0.07176125      0.00000001
 2 2a0000       0.07176125     -0.00000070     -0.00000001
 2 aba000       0.00000000     -0.00000000     -0.00000000
 2 a0a0b0       0.00000000     -0.00000000      0.00000000
 2 0aa00b       0.00000000     -0.00000000      0.00000000
 2 a0a00b       0.00000546      0.56142998      0.00000005
 2 aa000b       0.56142999     -0.00000546     -0.00000007
 2 a0ab00       0.00000007     -0.00000005      0.56143005
 2 aa00b0       0.00000007     -0.00000005      0.56143008
 2 0aab00      -0.56143015      0.00000546      0.00000007
 2 0aa0b0       0.00000546      0.56143016      0.00000005
 2 aa0b00       0.00000000     -0.00000000      0.00000000
 2 0ab0a0      -0.00000333     -0.34198640     -0.00000003
 2 0baa00       0.34198638     -0.00000333     -0.00000004
 2 ba00a0      -0.00000004      0.00000003     -0.34198635
 2 b0aa00      -0.00000004      0.00000003     -0.34198633
 2 ab000a      -0.34198628      0.00000333      0.00000004
 2 a0b00a      -0.00000333     -0.34198627     -0.00000003
 2 0ba00a      -0.00000000      0.00000000     -0.00000000
 2 b0a0a0      -0.00000000      0.00000000     -0.00000000
 2 ab0a00      -0.00000000      0.00000000     -0.00000000
 2 ba0a00      -0.00000000      0.00000000     -0.00000000
 2 a0b0a0      -0.00000000      0.00000000     -0.00000000
 2 0ab00a      -0.00000000      0.00000000     -0.00000000
 2 b0a00a      -0.00000214     -0.21944370     -0.00000002
 2 ba000a      -0.21944371      0.00000214      0.00000003
 2 a0ba00      -0.00000003      0.00000002     -0.21944372
 2 ab00a0      -0.00000003      0.00000002     -0.21944373
 2 0aba00       0.21944376     -0.00000214     -0.00000003
 2 0ba0a0      -0.00000214     -0.21944376     -0.00000002
 0 a22000       0.00000000     -0.00000000      0.01788882
 0 2a2000      -0.01788882      0.00000017      0.00000000
 0 22a000      -0.00000017     -0.01788882     -0.00000000
 2 200a00       0.00000072      0.07448176      0.00000001
 2 2000a0       0.07448176     -0.00000072     -0.00000001
 2 02000a      -0.00000001      0.00000001     -0.07448179
 2 00200a      -0.00000001      0.00000001     -0.07448177
 2 020a00       0.00000072      0.07448181      0.00000001
 2 0020a0       0.07448180     -0.00000072     -0.00000001
 0 a2a0b0      -0.00000000      0.00000000     -0.00000000
 0 2aa00b      -0.00000000      0.00000000     -0.00000000
 0 2aa0b0      -0.00000059     -0.06060393     -0.00000001
 0 2aab00       0.06060393     -0.00000059     -0.00000001
 0 aa20b0      -0.00000001      0.00000001     -0.06060392
 0 a2ab00      -0.00000001      0.00000001     -0.06060392
 0 aa200b      -0.06060391      0.00000059      0.00000001
 0 a2a00b      -0.00000059     -0.06060391     -0.00000001
 
 Energy:     -239.02499127   -239.02499127   -239.02499127
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.56       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         6.96      4.74      1.92
 REAL TIME  *         8.41 SEC
 DISK USED  *        39.70 MB (local),        1.21 GB (total)
 SF USED    *        26.62 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -239.2739831   0.0
    -239.2136740   6.0
    -239.2136740   6.0
    -239.2136740   6.0
    -239.2136740   6.0
    -239.2136740   6.0
    -239.1904959   2.0
    -239.1904959   2.0
    -239.1904959   2.0
    -239.0432508   0.0
    -239.0306216   6.0
    -239.0306216   6.0
    -239.0306216   6.0
    -239.0306216   6.0
    -239.0306216   6.0
    -239.0249913   2.0
    -239.0249913   2.0
    -239.0249913   2.0
                                                  


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
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -239.27398310

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.12D-04
 Number of N-2 electron functions:     250
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       4865858
 Number of doubly external configurations:        576472
 Total number of contracted configurations:      5476010
 Total number of uncontracted configurations:  146185146

 Diagonal Coupling coefficients finished.               Storage:  10292981 words, CPU-Time:      0.55 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1245266 words, CPU-time:      0.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.27398310    -0.00000000    -0.87696803  0.50D-01  0.11D+00     1.76
    2     1     1     1.09564855    -0.68625389  -239.96023699    -0.68625389    -0.02000958  0.38D-02  0.14D-02    14.28
    3     1     1     1.08398964    -0.70529007  -239.97927317    -0.01903617    -0.00039168  0.58D-04  0.38D-04    26.70
    4     1     1     1.08390339    -0.70569101  -239.97967411    -0.00040094    -0.00001136  0.18D-05  0.14D-05    39.01
    5     1     1     1.08397105    -0.70570280  -239.97968590    -0.00001179    -0.00000046  0.35D-07  0.92D-07    51.33
    6     1     1     1.08399095    -0.70570330  -239.97968640    -0.00000050    -0.00000003  0.26D-08  0.57D-08    63.59


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.5%
 S   3.1%  22.3%
 P   1.0%  63.2%   3.5%

 Initialization:   1.3%
 Other:            2.1%

 Total CPU:       63.6 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9596255


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.96041182 (fixed)   0.96044942 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013667   -0.00021669   -0.00028884
 Singles      0.01575963   -0.05229347   -0.05849604
 Pairs        0.06824279   -0.65319313   -0.64691842
 Total        1.08413910   -0.70570330   -0.70570330
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.27398310
 Nuclear energy                         0.00000000
 Kinetic energy                        92.82523561
 One electron energy                 -419.45890906
 Two electron energy                  179.47922267
 Virial quotient                       -2.58528497
 Correlation energy                    -0.70570330
 !MRCI STATE 1.2 Energy              -239.979686397266

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.03906363 (Davidson, fixed reference)
 Cluster corrected energies          -240.03900374 (Davidson, relaxed reference)

 Cluster corrected energies          -240.03694069 (Pople, fixed reference)
 Cluster corrected energies          -240.03687886 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       43.57       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        71.80     64.81      4.74      1.92
 REAL TIME  *        75.18 SEC
 DISK USED  *        82.71 MB (local),        2.39 GB (total)
 SF USED    *       576.49 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -240.03900374  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 17  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
 Number of reference states: 17  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17

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
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  35

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -239.21367400
     2      -239.21367400
     3      -239.21367400
     4      -239.21367400
     5      -239.21367400
     6      -239.19049585
     7      -239.19049585
     8      -239.19049585
     9      -239.04325079
    10      -239.03062159
    11      -239.03062159
    12      -239.03062159
    13      -239.03062159
    14      -239.03062159
    15      -239.02499127
    16      -239.02499127
    17      -239.02499127

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1312D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1317D-06

 Number of blocks in overlap matrix:  1471   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    3555
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       5989552
 Number of doubly external configurations:       8196684
 Total number of contracted configurations:     14230322
 Total number of uncontracted configurations:  192939054

 Diagonal Coupling coefficients finished.               Storage:  46681561 words, CPU-Time:    223.88 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1945415 words, CPU-time:      0.86 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.21367400     0.00000000    -0.87758533  0.61D-01  0.10D+00   246.25
    1     2     2     1.00000000     0.00000000  -239.21367400    -0.00000000    -0.87687534  0.60D-01  0.10D+00   246.25
    1     3     3     1.00000000     0.00000000  -239.21367400     0.00000000    -0.87675283  0.59D-01  0.10D+00   246.25
    1     4     4     1.00000000     0.00000000  -239.21367400     0.00000000    -0.87685178  0.59D-01  0.10D+00   246.25
    1     5     5     1.00000000     0.00000000  -239.21367400     0.00000000    -0.87762905  0.60D-01  0.10D+00   246.25
    1     6     6     1.00000000     0.00000000  -239.19049585     0.00000000    -0.85800184  0.41D-01  0.10D+00   246.25
    1     7     7     1.00000000     0.00000000  -239.19049585     0.00000000    -0.85758819  0.41D-01  0.10D+00   246.25
    1     8     8     1.00000000     0.00000000  -239.19049585     0.00000000    -0.85762112  0.41D-01  0.10D+00   246.25
    1     9     9     1.00000000     0.00000000  -239.04325079     0.00000000    -0.83309860  0.44D-01  0.92D-01   246.25
    1    10    10     1.00000000     0.00000000  -239.03062159     0.00000000    -0.83672770  0.46D-01  0.93D-01   246.25
    1    11    11     1.00000000     0.00000000  -239.03062159     0.00000000    -0.83689059  0.45D-01  0.93D-01   246.25
    1    12    12     1.00000000     0.00000000  -239.03062159     0.00000000    -0.83686365  0.45D-01  0.93D-01   246.25
    1    13    13     1.00000000     0.00000000  -239.03062159     0.00000000    -0.83709310  0.46D-01  0.93D-01   246.25
    1    14    14     1.00000000     0.00000000  -239.03062159    -0.00000000    -0.83685104  0.46D-01  0.93D-01   246.25
    1    15    15     1.00000000     0.00000000  -239.02499127     0.00000000    -0.83758889  0.47D-01  0.93D-01   246.25
    1    16    16     1.00000000     0.00000000  -239.02499127     0.00000000    -0.83765530  0.47D-01  0.94D-01   246.25
    1    17    17     1.00000000     0.00000000  -239.02499127     0.00000000    -0.83768531  0.47D-01  0.94D-01   246.25
    2     1     1     1.09966997    -0.69424242  -239.90791642    -0.69424242    -0.02113659  0.42D-02  0.15D-02   902.84
    2     2     2     1.09968335    -0.69420908  -239.90788308    -0.69420908    -0.02115725  0.42D-02  0.15D-02   902.84
    2     3     3     1.10002829    -0.69410959  -239.90778359    -0.69410959    -0.02128750  0.43D-02  0.15D-02   902.84
    2     4     4     1.10004633    -0.69407938  -239.90775338    -0.69407938    -0.02132195  0.43D-02  0.16D-02   902.84
    2     5     5     1.10030495    -0.69380845  -239.90748245    -0.69380845    -0.02159452  0.45D-02  0.15D-02   902.84
    2     6     6     1.09261446    -0.69032581  -239.88082166    -0.69032581    -0.01900079  0.40D-02  0.15D-02   902.84
    2     7     7     1.09237234    -0.68992752  -239.88042338    -0.68992752    -0.01923520  0.40D-02  0.15D-02   902.84
    2     8     8     1.09235980    -0.68989371  -239.88038956    -0.68989371    -0.01925592  0.40D-02  0.15D-02   902.84
    2     9     9     1.08943574    -0.67639252  -239.71964332    -0.67639252    -0.01521244  0.23D-02  0.10D-02   902.84
    2    10    10     1.09006103    -0.67760657  -239.70822816    -0.67760657    -0.01578865  0.26D-02  0.11D-02   902.84
    2    11    11     1.09012047    -0.67760172  -239.70822330    -0.67760172    -0.01579387  0.26D-02  0.11D-02   902.84
    2    12    12     1.09024858    -0.67753574  -239.70815733    -0.67753574    -0.01587529  0.26D-02  0.11D-02   902.84
    2    13    13     1.09024649    -0.67750531  -239.70812690    -0.67750531    -0.01588625  0.27D-02  0.11D-02   902.84
    2    14    14     1.09042658    -0.67740222  -239.70802381    -0.67740222    -0.01600594  0.27D-02  0.11D-02   902.84
    2    15    15     1.09137022    -0.67747057  -239.70246184    -0.67747057    -0.01620758  0.31D-02  0.11D-02   902.84
    2    16    16     1.09140052    -0.67741924  -239.70241051    -0.67741924    -0.01625667  0.31D-02  0.11D-02   902.84
    2    17    17     1.09147156    -0.67737993  -239.70237120    -0.67737993    -0.01630984  0.31D-02  0.11D-02   902.84
    3     1     1     1.08905437    -0.71436528  -239.92803927    -0.02012285    -0.00071279  0.10D-03  0.93D-04  1560.93
    3     2     2     1.08909673    -0.71436504  -239.92803904    -0.02015596    -0.00071292  0.99D-04  0.93D-04  1560.93
    3     3     3     1.08901146    -0.71434755  -239.92802154    -0.02023795    -0.00071685  0.98D-04  0.95D-04  1560.93
    3     4     4     1.08900151    -0.71434288  -239.92801688    -0.02026350    -0.00072010  0.98D-04  0.96D-04  1560.93
    3     5     5     1.08897815    -0.71433346  -239.92800745    -0.02052500    -0.00072722  0.98D-04  0.98D-04  1560.93
    3     6     6     1.08544271    -0.70894602  -239.89944188    -0.01862022    -0.00065564  0.66D-04  0.11D-03  1560.93
    3     7     7     1.08515820    -0.70884608  -239.89934194    -0.01891856    -0.00070853  0.67D-04  0.12D-03  1560.93
    3     8     8     1.08513755    -0.70884061  -239.89933646    -0.01894690    -0.00071171  0.67D-04  0.12D-03  1560.93
    3     9     9     1.08225689    -0.69107994  -239.73433073    -0.01468741    -0.00032768  0.38D-04  0.35D-04  1560.93
    3    10    10     1.08258110    -0.69283530  -239.72345688    -0.01522873    -0.00038099  0.45D-04  0.46D-04  1560.93
    3    11    11     1.08256079    -0.69283251  -239.72345409    -0.01523079    -0.00037923  0.45D-04  0.45D-04  1560.93
    3    12    12     1.08257447    -0.69283111  -239.72345270    -0.01529537    -0.00038054  0.45D-04  0.46D-04  1560.93
    3    13    13     1.08257639    -0.69282983  -239.72345142    -0.01532452    -0.00038587  0.46D-04  0.46D-04  1560.93
    3    14    14     1.08256372    -0.69282511  -239.72344670    -0.01542289    -0.00038572  0.46D-04  0.46D-04  1560.93
    3    15    15     1.08281229    -0.69317563  -239.71816690    -0.01570506    -0.00041141  0.51D-04  0.52D-04  1560.93
    3    16    16     1.08281970    -0.69316968  -239.71816095    -0.01575044    -0.00041060  0.51D-04  0.52D-04  1560.93
    3    17    17     1.08280697    -0.69316694  -239.71815821    -0.01578701    -0.00041290  0.51D-04  0.52D-04  1560.93
    4     1     1     1.08939684    -0.71514059  -239.92881458    -0.00077531    -0.00005155  0.31D-05  0.96D-05  2223.27
    4     2     2     1.08939860    -0.71514058  -239.92881458    -0.00077554    -0.00005168  0.31D-05  0.96D-05  2223.27
    4     3     3     1.08936985    -0.71513334  -239.92880734    -0.00078580    -0.00005574  0.33D-05  0.10D-04  2223.27
    4     4     4     1.08936677    -0.71513291  -239.92880691    -0.00079003    -0.00005603  0.33D-05  0.10D-04  2223.27
    4     5     5     1.08935280    -0.71513079  -239.92880478    -0.00079733    -0.00005712  0.33D-05  0.11D-04  2223.27
    4     6     6     1.08690423    -0.70969845  -239.90019430    -0.00075242    -0.00005738  0.30D-05  0.11D-04  2223.27
    4     7     7     1.08679620    -0.70967931  -239.90017516    -0.00083322    -0.00006953  0.36D-05  0.13D-04  2223.27
    4     8     8     1.08678940    -0.70967849  -239.90017435    -0.00083788    -0.00007005  0.37D-05  0.13D-04  2223.27
    4     9     9     1.08252668    -0.69142885  -239.73467964    -0.00034891    -0.00001809  0.20D-05  0.31D-05  2223.27
    4    10    10     1.08292056    -0.69325130  -239.72387289    -0.00041600    -0.00002806  0.26D-05  0.56D-05  2223.27
    4    11    11     1.08291927    -0.69325119  -239.72387278    -0.00041869    -0.00002817  0.26D-05  0.56D-05  2223.27
    4    12    12     1.08291369    -0.69324859  -239.72387018    -0.00041748    -0.00002913  0.26D-05  0.58D-05  2223.27
    4    13    13     1.08291322    -0.69324858  -239.72387016    -0.00041875    -0.00002909  0.26D-05  0.58D-05  2223.27
    4    14    14     1.08291057    -0.69324757  -239.72386916    -0.00042246    -0.00002951  0.27D-05  0.59D-05  2223.27
    4    15    15     1.08312285    -0.69363290  -239.71862417    -0.00045727    -0.00003260  0.31D-05  0.65D-05  2223.27
    4    16    16     1.08311520    -0.69362886  -239.71862013    -0.00045918    -0.00003426  0.32D-05  0.68D-05  2223.27
    4    17    17     1.08311253    -0.69362868  -239.71861995    -0.00046174    -0.00003435  0.32D-05  0.69D-05  2223.27
    5     1     1     1.08976963    -0.71520590  -239.92887990    -0.00006532    -0.00000483  0.24D-06  0.87D-06  2884.18
    5     2     2     1.08976965    -0.71520590  -239.92887990    -0.00006531    -0.00000481  0.24D-06  0.87D-06  2884.18
    5     3     3     1.08976307    -0.71520496  -239.92887896    -0.00007161    -0.00000554  0.30D-06  0.97D-06  2884.18
    5     4     4     1.08976291    -0.71520487  -239.92887886    -0.00007195    -0.00000555  0.30D-06  0.97D-06  2884.18
    5     5     5     1.08976065    -0.71520463  -239.92887863    -0.00007384    -0.00000578  0.31D-06  0.10D-05  2884.18
    5     6     6     1.08758079    -0.70977242  -239.90026828    -0.00007398    -0.00000533  0.25D-06  0.91D-06  2884.18
    5     7     7     1.08757498    -0.70977047  -239.90026632    -0.00009116    -0.00000676  0.32D-06  0.11D-05  2884.18
    5     8     8     1.08757460    -0.70977037  -239.90026623    -0.00009188    -0.00000683  0.32D-06  0.11D-05  2884.18
    5     9     9     1.08264416    -0.69145216  -239.73470295    -0.00002331    -0.00000216  0.11D-06  0.45D-06  2884.18
    5    10    10     1.08315201    -0.69329066  -239.72391225    -0.00003936    -0.00000412  0.27D-06  0.77D-06  2884.18
    5    11    11     1.08315248    -0.69329063  -239.72391222    -0.00003944    -0.00000414  0.27D-06  0.77D-06  2884.18
    5    12    12     1.08315109    -0.69329024  -239.72391183    -0.00004165    -0.00000457  0.31D-06  0.83D-06  2884.18
    5    13    13     1.08315209    -0.69329013  -239.72391172    -0.00004155    -0.00000456  0.31D-06  0.83D-06  2884.18
    5    14    14     1.08315177    -0.69328987  -239.72391146    -0.00004230    -0.00000472  0.32D-06  0.86D-06  2884.18
    5    15    15     1.08337204    -0.69367862  -239.71866989    -0.00004572    -0.00000461  0.31D-06  0.84D-06  2884.18
    5    16    16     1.08336868    -0.69367791  -239.71866918    -0.00004905    -0.00000519  0.35D-06  0.93D-06  2884.18
    5    17    17     1.08336911    -0.69367785  -239.71866912    -0.00004917    -0.00000521  0.36D-06  0.93D-06  2884.18
    6     1     1     1.08980607    -0.71521205  -239.92888605    -0.00000615    -0.00000051  0.54D-07  0.71D-07  3548.18
    6     2     2     1.08980703    -0.71521202  -239.92888601    -0.00000612    -0.00000050  0.52D-07  0.71D-07  3548.18
    6     3     3     1.08980316    -0.71521199  -239.92888598    -0.00000703    -0.00000059  0.61D-07  0.81D-07  3548.18
    6     4     4     1.08980295    -0.71521194  -239.92888594    -0.00000707    -0.00000060  0.62D-07  0.83D-07  3548.18
    6     5     5     1.08980305    -0.71521192  -239.92888592    -0.00000729    -0.00000059  0.61D-07  0.82D-07  3548.18
    6     6     6     1.08762227    -0.70977910  -239.90027495    -0.00000668    -0.00000050  0.44D-07  0.74D-07  3548.18
    6     7     7     1.08761270    -0.70977891  -239.90027476    -0.00000844    -0.00000065  0.54D-07  0.98D-07  3548.18
    6     8     8     1.08761247    -0.70977890  -239.90027476    -0.00000853    -0.00000066  0.55D-07  0.99D-07  3548.18
    6     9     9     1.08265348    -0.69145535  -239.73470615    -0.00000319    -0.00000032  0.35D-07  0.44D-07  3548.18
    6    10    10     1.08316709    -0.69329676  -239.72391834    -0.00000610    -0.00000062  0.60D-07  0.85D-07  3548.18
    6    11    11     1.08316623    -0.69329663  -239.72391822    -0.00000600    -0.00000064  0.63D-07  0.88D-07  3548.18
    6    12    12     1.08316706    -0.69329662  -239.72391821    -0.00000638    -0.00000061  0.59D-07  0.84D-07  3548.18
    6    13    13     1.08316838    -0.69329649  -239.72391808    -0.00000636    -0.00000055  0.54D-07  0.76D-07  3548.18
    6    14    14     1.08316866    -0.69329649  -239.72391808    -0.00000662    -0.00000054  0.53D-07  0.75D-07  3548.18
    6    15    15     1.08338627    -0.69368511  -239.71867638    -0.00000649    -0.00000070  0.68D-07  0.10D-06  3548.18
    6    16    16     1.08338622    -0.69368509  -239.71867636    -0.00000718    -0.00000070  0.69D-07  0.10D-06  3548.18
    6    17    17     1.08338913    -0.69368497  -239.71867624    -0.00000712    -0.00000060  0.59D-07  0.89D-07  3548.18
    7     1     1     1.08983946    -0.71521266  -239.92888665    -0.00000061    -0.00000006  0.57D-08  0.11D-07  4210.23
    7     2     2     1.08983951    -0.71521265  -239.92888664    -0.00000063    -0.00000007  0.59D-08  0.11D-07  4210.23
    7     3     3     1.08984041    -0.71521259  -239.92888659    -0.00000060    -0.00000006  0.53D-08  0.96D-08  4210.23
    7     4     4     1.08983998    -0.71521259  -239.92888659    -0.00000065    -0.00000006  0.56D-08  0.10D-07  4210.23
    7     5     5     1.08984038    -0.71521259  -239.92888658    -0.00000066    -0.00000006  0.54D-08  0.99D-08  4210.23
    7     6     6     1.08765537    -0.70977967  -239.90027553    -0.00000057    -0.00000006  0.64D-08  0.10D-07  4210.23
    7     7     7     1.08765336    -0.70977967  -239.90027552    -0.00000076    -0.00000008  0.82D-08  0.13D-07  4210.23
    7     8     8     1.08765290    -0.70977967  -239.90027552    -0.00000076    -0.00000008  0.85D-08  0.13D-07  4210.23
    7     9     9     1.08266650    -0.69145574  -239.73470654    -0.00000039    -0.00000004  0.32D-08  0.67D-08  4210.23
    7    10    10     1.08318891    -0.69329748  -239.72391907    -0.00000073    -0.00000008  0.71D-08  0.15D-07  4210.23
    7    11    11     1.08318844    -0.69329739  -239.72391898    -0.00000076    -0.00000009  0.74D-08  0.16D-07  4210.23
    7    12    12     1.08318869    -0.69329734  -239.72391893    -0.00000072    -0.00000008  0.70D-08  0.15D-07  4210.23
    7    13    13     1.08318906    -0.69329713  -239.72391872    -0.00000064    -0.00000007  0.60D-08  0.13D-07  4210.23
    7    14    14     1.08318918    -0.69329712  -239.72391871    -0.00000063    -0.00000007  0.59D-08  0.13D-07  4210.23
    7    15    15     1.08341354    -0.69368596  -239.71867723    -0.00000085    -0.00000011  0.90D-08  0.19D-07  4210.23
    7    16    16     1.08341352    -0.69368594  -239.71867721    -0.00000085    -0.00000011  0.90D-08  0.19D-07  4210.23
    7    17    17     1.08341398    -0.69368569  -239.71867696    -0.00000072    -0.00000008  0.72D-08  0.15D-07  4210.23
    8     1     1     1.08984095    -0.71521273  -239.92888673    -0.00000008    -0.00000001  0.75D-09  0.16D-08  4847.33
    8     2     2     1.08984099    -0.71521272  -239.92888672    -0.00000008    -0.00000001  0.74D-09  0.16D-08  4847.33
    8     3     3     1.08984091    -0.71521267  -239.92888666    -0.00000008    -0.00000001  0.74D-09  0.16D-08  4847.33
    8     4     4     1.08984141    -0.71521265  -239.92888665    -0.00000006    -0.00000001  0.61D-09  0.14D-08  4847.33
    8     5     5     1.08984151    -0.71521265  -239.92888665    -0.00000007    -0.00000001  0.58D-09  0.13D-08  4847.33
    8     6     6     1.08765819    -0.70977977  -239.90027563    -0.00000010    -0.00000001  0.65D-09  0.20D-08  4847.33
    8     7     7     1.08765835    -0.70977976  -239.90027562    -0.00000009    -0.00000001  0.66D-09  0.20D-08  4847.33
    8     8     8     1.08765964    -0.70977974  -239.90027560    -0.00000008    -0.00000001  0.45D-09  0.14D-08  4847.33
    8     9     9     1.08266650    -0.69145574  -239.73470654    -0.00000000    -0.00000004  0.32D-08  0.67D-08  4847.33
    8    10    10     1.08318786    -0.69329759  -239.72391918    -0.00000011    -0.00000002  0.11D-08  0.30D-08  4847.33
    8    11    11     1.08318762    -0.69329750  -239.72391909    -0.00000011    -0.00000002  0.11D-08  0.32D-08  4847.33
    8    12    12     1.08318772    -0.69329745  -239.72391904    -0.00000011    -0.00000002  0.11D-08  0.30D-08  4847.33
    8    13    13     1.08318805    -0.69329722  -239.72391881    -0.00000009    -0.00000001  0.88D-09  0.25D-08  4847.33
    8    14    14     1.08318803    -0.69329721  -239.72391880    -0.00000009    -0.00000001  0.86D-09  0.24D-08  4847.33
    8    15    15     1.08341367    -0.69368610  -239.71867737    -0.00000014    -0.00000002  0.12D-08  0.31D-08  4847.33
    8    16    16     1.08341379    -0.69368610  -239.71867737    -0.00000016    -0.00000002  0.11D-08  0.27D-08  4847.33
    8    17    17     1.08341366    -0.69368580  -239.71867707    -0.00000011    -0.00000002  0.10D-08  0.30D-08  4847.33


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.0%
 S   0.8%   6.8%
 P   0.3%  42.8%  34.5%

 Initialization:   4.7%
 Other:            9.1%

 Total CPU:     4847.3 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000           0.9488843  -0.0383310  -0.0032961  -0.0962587  -0.0354818   0.0000000  -0.0000002  -0.0000000
                            0.0000003   0.0002301   0.0356855   0.0008070   0.0277209  -0.0031911   0.0000000   0.0000000
                            0.0000000
 2222222222//\000           0.1012765   0.0002163  -0.1022491   0.9132329   0.2401664   0.0000000  -0.0000000  -0.0000000
                            0.0000001  -0.0000410   0.0278972   0.0005617  -0.0354087   0.0045203   0.0000000   0.0000000
                           -0.0000000
 22222222220//00\          -0.0383908   0.0014561   0.0023754  -0.0164252  -0.0039321   0.0000000   0.0000000  -0.0000000
                            0.5519220   0.0030304   0.7604622   0.0166112   0.1068586  -0.0085364   0.0000001   0.0000004
                           -0.0000000
 2222222222/0/0\0          -0.0339339   0.0014656  -0.0021242   0.0237623   0.0066366  -0.0000000   0.0000000  -0.0000000
                           -0.5519104   0.0037266   0.2874837   0.0070873   0.7071963  -0.0851755  -0.0000001   0.0000001
                            0.0000006
 222222222220/000          -0.0270056  -0.6746677  -0.0128381  -0.0011902   0.0110557  -0.0989897   0.6599855  -0.0275237
                            0.0000000   0.0014286  -0.0006988   0.0319981  -0.0000355   0.0000718   0.0357403  -0.0323488
                            0.0001786
 222222222202/000           0.0270058   0.6746661   0.0128380   0.0011902  -0.0110557  -0.0989900   0.6599875  -0.0275237
                            0.0000000  -0.0014286   0.0006988  -0.0319968   0.0000355  -0.0000718   0.0357403  -0.0323488
                            0.0001786
 22222222220/2000           0.0094450  -0.0130921   0.6713749   0.0711258   0.0114058   0.6599378   0.1000182   0.0248347
                           -0.0000000  -0.0320045   0.0000791   0.0014308   0.0001211  -0.0000089   0.0323493   0.0357397
                           -0.0001919
 22222222222/0000          -0.0094450   0.0130920  -0.6713739  -0.0711257  -0.0114058   0.6599385   0.1000183   0.0248348
                            0.0000000   0.0320054  -0.0000792  -0.0014308  -0.0001210   0.0000089   0.0323493   0.0357397
                           -0.0001919
 2222222222/20000           0.0074471   0.0105693   0.0072037  -0.1717633   0.6530471  -0.0286606   0.0235136   0.6669068
                            0.0000000   0.0000023  -0.0001907  -0.0000713   0.0039079   0.0317964   0.0000036  -0.0002622
                           -0.0482059
 2222222222/02000          -0.0074471  -0.0105693  -0.0072036   0.1717636  -0.6530482  -0.0286606   0.0235135   0.6669057
                           -0.0000000  -0.0000022   0.0001907   0.0000713  -0.0039080  -0.0317982   0.0000036  -0.0002622
                           -0.0482051
 2222222222//000\           0.0005091  -0.0007056   0.0361845   0.0038334   0.0006147  -0.0551098  -0.0083523  -0.0020739
                            0.0000000   0.6645900  -0.0016445  -0.0297112  -0.0025135   0.0001856   0.4450869   0.4917344
                           -0.0026408
 22222222220//\00           0.0005090  -0.0007056   0.0361844   0.0038334   0.0006147   0.0551096   0.0083522   0.0020739
                            0.0000000   0.6645816  -0.0016438  -0.0297111  -0.0025137   0.0001858  -0.4450921  -0.4917416
                            0.0026411
 2222222222/0/00\           0.0014555   0.0363619   0.0006919   0.0000641  -0.0005959   0.0082664  -0.0551138   0.0022984
                           -0.0000000   0.0296649  -0.0145115   0.6644365  -0.0007363   0.0014913   0.4917429  -0.4450810
                            0.0024576
 22222222220//0\0          -0.0014555  -0.0363616  -0.0006919  -0.0000641   0.0005959   0.0082663  -0.0551132   0.0022984
                            0.0000001  -0.0296657   0.0145116  -0.6644318   0.0007365  -0.0014911   0.4917470  -0.4450842
                            0.0024579
 2222222222//00\0           0.0004014   0.0005696   0.0003882  -0.0092573   0.0351964  -0.0023933   0.0019635   0.0556909
                           -0.0000002  -0.0000466   0.0039591   0.0014806  -0.0811477  -0.6602646  -0.0000500   0.0036073
                            0.6632637
 2222222222/0/\00          -0.0004014  -0.0005696  -0.0003883   0.0092574  -0.0351966  -0.0023934   0.0019635   0.0556912
                            0.0000005   0.0000463  -0.0039592  -0.0014804   0.0811494   0.6602853  -0.0000500   0.0036074
                            0.6632428
 2222222222//0\00           0.0044569   0.0000095  -0.0044996   0.0401877   0.0105687  -0.0000000  -0.0000000  -0.0000000
                            0.5519098   0.0006960  -0.4729957  -0.0095241   0.6003357  -0.0766398  -0.0000003  -0.0000002
                            0.0000003
 2222220222/22000           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000001   0.0057626  -0.0047277  -0.1340914
                            0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000003  -0.0000009   0.0000639
                            0.0117512
 222222022222/000          -0.0000000   0.0000002   0.0000000  -0.0000000   0.0000000   0.0199034  -0.1327004   0.0055341
                           -0.0000000   0.0000000  -0.0000000  -0.0000001  -0.0000000  -0.0000000  -0.0087124   0.0078857
                           -0.0000435
 22222202222/2000          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1326907  -0.0201102  -0.0049934
                            0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0078859  -0.0087124
                            0.0000468
 22222222220/\00/          -0.0126716   0.0006341  -0.0028474   0.0274908   0.0073962  -0.0000000  -0.0000000   0.0000000
                            0.0000002  -0.0004222   0.0177086   0.0002327  -0.1248088   0.0154459   0.0000000   0.0000000
                           -0.0000001
 2222222222/0\0/0          -0.0184198   0.0006218   0.0029554  -0.0243370  -0.0062337  -0.0000000  -0.0000000   0.0000000
                            0.0000004  -0.0002228  -0.1177391  -0.0024947   0.0471030  -0.0065006   0.0000000  -0.0000000
                           -0.0000000
 2222222222/\0/00           0.0310911  -0.0012559  -0.0001080  -0.0031542  -0.0011627   0.0000000  -0.0000000  -0.0000000
                            0.0000025   0.0006450   0.1000291   0.0022621   0.0777031  -0.0089450   0.0000000   0.0000001
                            0.0000000
 22222222220020/0           0.0003095  -0.0004290   0.0219985   0.0023305   0.0003737   0.0207353   0.0031426   0.0007803
                            0.0000000  -0.0897145   0.0002219   0.0040108   0.0003393  -0.0000251   0.0470100   0.0519370
                           -0.0002789
 22222222222000/0          -0.0003095   0.0004290  -0.0219982  -0.0023305  -0.0003737   0.0207356   0.0031426   0.0007803
                            0.0000000   0.0897131  -0.0002220  -0.0040107  -0.0003393   0.0000251   0.0470118   0.0519389
                           -0.0002790
 2222222222200/00          -0.0008849  -0.0221063  -0.0004206  -0.0000390   0.0003623  -0.0031102   0.0207367  -0.0008648
                            0.0000000   0.0040045  -0.0019589   0.0896929  -0.0000994   0.0002013   0.0519397  -0.0470111
                            0.0002596
 2222222222020/00           0.0008849   0.0221061   0.0004206   0.0000390  -0.0003623  -0.0031103   0.0207370  -0.0008648
                            0.0000000  -0.0040046   0.0019589  -0.0896925   0.0000994  -0.0002013   0.0519410  -0.0470122
                            0.0002596
 222222222200200/          -0.0002440  -0.0003463  -0.0002360   0.0056280  -0.0213976  -0.0009005   0.0007388   0.0209539
                           -0.0000001  -0.0000063   0.0005344   0.0001998  -0.0109546  -0.0891336   0.0000052  -0.0003810
                           -0.0700528
 222222222202000/           0.0002440   0.0003463   0.0002360  -0.0056280   0.0213977  -0.0009005   0.0007388   0.0209539
                            0.0000000   0.0000063  -0.0005344  -0.0001999   0.0109544   0.0891315   0.0000053  -0.0003810
                           -0.0700545
 2222222222/\00/0          -0.0001725  -0.0002449  -0.0001669   0.0039795  -0.0151301   0.0010125  -0.0008307  -0.0235604
                           -0.0000000  -0.0000045   0.0003779   0.0001413  -0.0077457  -0.0630233  -0.0000062   0.0004482
                            0.0824132
 2222222222/0\/00           0.0001725   0.0002449   0.0001669  -0.0039796   0.0151304   0.0010125  -0.0008307  -0.0235605
                            0.0000001   0.0000044  -0.0003779  -0.0001413   0.0077459   0.0630258  -0.0000062   0.0004482
                            0.0824100
 22222202222//00\           0.0129312  -0.0004904  -0.0008001   0.0055325   0.0013245   0.0000000  -0.0000000  -0.0000000
                           -0.0507228  -0.0002830  -0.0710294  -0.0015515  -0.0099811   0.0007973  -0.0000000  -0.0000000
                            0.0000000
 2222220222/2/0\0           0.0114300  -0.0004937   0.0007155  -0.0080038  -0.0022354   0.0000000   0.0000000  -0.0000000
                            0.0507210  -0.0003481  -0.0268520  -0.0006620  -0.0660544   0.0079557  -0.0000000  -0.0000000
                           -0.0000001
 2222220222//20\0          -0.0001352  -0.0001919  -0.0001308   0.0031182  -0.0118554  -0.0002029   0.0001665   0.0047213
                            0.0000000   0.0000044  -0.0003698  -0.0001383   0.0075794   0.0616706   0.0000048  -0.0003476
                           -0.0639049
 2222220222/2/\00           0.0001352   0.0001919   0.0001308  -0.0031181   0.0118551  -0.0002029   0.0001665   0.0047212
                           -0.0000001  -0.0000043   0.0003698   0.0001383  -0.0075796  -0.0616728   0.0000048  -0.0003476
                           -0.0639028
 2222222222/\000/           0.0002188  -0.0003033   0.0155547   0.0016479   0.0002642  -0.0233139  -0.0035334  -0.0008773
                           -0.0000000  -0.0634389   0.0001570   0.0028361   0.0002399  -0.0000177  -0.0553022  -0.0610981
                            0.0003281
 22222222220/\/00          -0.0002188   0.0003033  -0.0155549  -0.0016479  -0.0002643  -0.0233142  -0.0035334  -0.0008774
                            0.0000000   0.0634362  -0.0001569  -0.0028360  -0.0002399   0.0000177  -0.0553048  -0.0611011
                            0.0003282
 2222222222/0\00/           0.0006257   0.0156313   0.0002975   0.0000276  -0.0002561   0.0034971  -0.0233157   0.0009723
                            0.0000000  -0.0028317   0.0013852  -0.0634238   0.0000703  -0.0001423  -0.0611010   0.0553030
                           -0.0003054
 22222222220/\0/0          -0.0006257  -0.0156313  -0.0002974  -0.0000276   0.0002561   0.0034971  -0.0233158   0.0009723
                           -0.0000000   0.0028318  -0.0013852   0.0634235  -0.0000703   0.0001423  -0.0611000   0.0553021
                           -0.0003054
 2222220222//200\          -0.0001715   0.0002377  -0.0121879  -0.0012912  -0.0002071  -0.0046720  -0.0007081  -0.0001758
                           -0.0000000  -0.0620748   0.0001536   0.0027751   0.0002348  -0.0000173  -0.0428836  -0.0473779
                            0.0002544
 22222202222//\00          -0.0001715   0.0002377  -0.0121883  -0.0012912  -0.0002071   0.0046722   0.0007081   0.0001758
                           -0.0000000  -0.0620733   0.0001535   0.0027751   0.0002348  -0.0000173   0.0428842   0.0473788
                           -0.0002545
 2222220222/2/00\          -0.0004903  -0.0122479  -0.0002331  -0.0000216   0.0002007   0.0007008  -0.0046724   0.0001949
                           -0.0000000  -0.0027708   0.0013554  -0.0620605   0.0000688  -0.0001393  -0.0473794   0.0428835
                           -0.0002368
 22222202222//0\0           0.0004903   0.0122479   0.0002331   0.0000216  -0.0002007   0.0007008  -0.0046725   0.0001949
                            0.0000000   0.0027708  -0.0013554   0.0620588  -0.0000688   0.0001393  -0.0473792   0.0428832
                           -0.0002368
 2222220222//2\00          -0.0015014  -0.0000032   0.0015156  -0.0135364  -0.0035599  -0.0000000  -0.0000000  -0.0000000
                           -0.0507210  -0.0000650   0.0441788   0.0008896  -0.0560734   0.0071584   0.0000000   0.0000000
                           -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.311327    0.010554    0.013386    0.038274    0.904223    0.000000    0.000000    0.000000    0.000000    0.022752
            -0.000415   -0.001186    0.000327    0.018970    0.000000    0.000000    0.000000
 2           0.016486    0.014979   -0.018555    0.956167   -0.034696   -0.000000   -0.000000   -0.000001    0.000000   -0.000823
             0.000575   -0.029619    0.000464   -0.000859   -0.000000    0.000000    0.000000
 3          -0.091398    0.010209    0.951501    0.018195   -0.046444    0.000000    0.000001   -0.000000   -0.000000   -0.002351
            -0.029474   -0.000564    0.000316    0.002135    0.000000   -0.000000   -0.000000
 4           0.869734   -0.243431    0.100802    0.001687    0.300731    0.000000    0.000000    0.000000    0.000000    0.018284
            -0.003122   -0.000052   -0.007541   -0.021870    0.000000    0.000000    0.000000
 5           0.233048    0.925527    0.016165   -0.015669    0.069860   -0.000001    0.000000   -0.000000    0.000000    0.004589
            -0.000501    0.000485    0.028669   -0.005978    0.000000   -0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.041114    0.946678   -0.142000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.028825   -0.004324    0.001252
 7           0.000000    0.000000   -0.000000    0.000001   -0.000000    0.033730    0.143476    0.946748   -0.000000   -0.000000
            -0.000000   -0.000001    0.000000   -0.000000    0.004369    0.028827   -0.001027
 8          -0.000000    0.000001   -0.000000   -0.000000   -0.000000    0.956674    0.035625   -0.039483   -0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.001085   -0.001202   -0.029130
 9          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.960813    0.000010
             0.000000   -0.000000    0.000001    0.000002   -0.000000    0.000000    0.000000
 10          0.000092   -0.000002    0.030948    0.001381   -0.000131   -0.000000    0.000000    0.000000   -0.000000    0.002767
             0.959109    0.042812    0.000067    0.004108    0.000006   -0.000001   -0.000000
 11         -0.006928    0.000184   -0.000077   -0.000676   -0.030187    0.000000    0.000000   -0.000000   -0.000010    0.950728
            -0.002373   -0.020943   -0.005714    0.131863   -0.000001    0.000000   -0.000000
 12         -0.000114    0.000069   -0.001384    0.030941   -0.000663    0.000000   -0.000000    0.000001   -0.000000    0.020448
            -0.042878    0.958890   -0.002137    0.004001   -0.000000    0.000003    0.000000
 13          0.029964   -0.003779   -0.000117   -0.000034   -0.006899    0.000000    0.000000   -0.000000   -0.000001   -0.130252
            -0.003628   -0.001063    0.117111    0.943956    0.000000    0.000000    0.000001
 14         -0.003724   -0.030748    0.000009    0.000069    0.000665    0.000000    0.000000    0.000000   -0.000000    0.021754
             0.000268    0.002152    0.952888   -0.115214   -0.000000    0.000000    0.000015
 15         -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000002   -0.020295   -0.022422   -0.000000    0.000000
            -0.000004   -0.000003   -0.000000   -0.000000    0.644217    0.711745   -0.000072
 16         -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000164   -0.022422    0.020294    0.000000    0.000000
            -0.000005    0.000002    0.000000    0.000000    0.711735   -0.644207    0.005221
 17          0.000000    0.000001    0.000000   -0.000000   -0.000000    0.030242    0.000120   -0.000112   -0.000000   -0.000000
             0.000000   -0.000000   -0.000015    0.000001   -0.003823    0.003557    0.959984

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957694   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000007
            -0.000525    0.000013   -0.000326    0.000030   -0.000000    0.000000   -0.000000
 2          -0.000000    0.957694    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000016
             0.000006    0.000618    0.000013   -0.000010   -0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.957694    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000615
             0.000041   -0.000015   -0.000054    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.957694    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000066
            -0.000316   -0.000008    0.000519    0.000093   -0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.957694    0.000000   -0.000000    0.000000   -0.000000    0.000010
            -0.000074   -0.000011    0.000063   -0.000611   -0.000000   -0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.958595    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000279   -0.000420   -0.000019
 7           0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.958595   -0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000421    0.000279    0.000016
 8          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.958595    0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000003   -0.000025    0.000504
 9          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.960813   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 10          0.000007    0.000016    0.000615    0.000066    0.000010    0.000000    0.000000    0.000000   -0.000000    0.960577
             0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 11         -0.000525    0.000006    0.000041   -0.000316   -0.000074   -0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.960577    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 12          0.000013    0.000618   -0.000015   -0.000008   -0.000011   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.960577    0.000000    0.000000   -0.000000    0.000000   -0.000000
 13         -0.000326    0.000013   -0.000054    0.000519    0.000063    0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.960576   -0.000000   -0.000000    0.000000   -0.000000
 14          0.000030   -0.000010    0.000000    0.000093   -0.000611    0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.960576   -0.000000    0.000000   -0.000000
 15         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000279   -0.000421    0.000003   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.960474   -0.000000    0.000000
 16          0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000420    0.000279   -0.000025    0.000000   -0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000    0.960474   -0.000000
 17         -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000019    0.000016    0.000504   -0.000000    0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.960474


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.90422293 (fixed)   0.95773559 (relaxed)   0.95769414 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042197   -0.00090917   -0.60155690
 Singles      0.02025847   -0.05963654   -0.06798752
 Pairs        0.06962039   -0.00000000   -0.04566830
 Total        1.09030083   -0.06054571   -0.71521273
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21349113
 Nuclear energy                         0.00000000
 Kinetic energy                        92.80858766
 One electron energy                 -419.31416044
 Two electron energy                  179.38527371
 Virial quotient                       -2.58520136
 Correlation energy                    -0.71539560
 !MRCI STATE 1.2 Energy              -239.928886730115

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99348755 (Davidson, fixed reference)
 Cluster corrected energies          -239.99342003 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99348755 (Davidson, rotated reference)

 Cluster corrected energies          -239.99225012 (Pople, fixed reference)
 Cluster corrected energies          -239.99217873 (Pople, relaxed reference)
 Cluster corrected energies          -239.99225012 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95616679 (fixed)   0.95773557 (relaxed)   0.95769412 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042197   -0.00090917   -0.60155678
 Singles      0.02025853   -0.05963664   -0.06798755
 Pairs        0.06962037   -0.00000000   -0.04566839
 Total        1.09030087   -0.06054581   -0.71521272
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21349112
 Nuclear energy                         0.00000000
 Kinetic energy                        92.80858906
 One electron energy                 -419.31416402
 Two electron energy                  179.38527730
 Virial quotient                       -2.58520132
 Correlation energy                    -0.71539560
 !MRCI STATE 2.2 Energy              -239.928886719968

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99348757 (Davidson, fixed reference)
 Cluster corrected energies          -239.99342005 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99348757 (Davidson, rotated reference)

 Cluster corrected energies          -239.99225014 (Pople, fixed reference)
 Cluster corrected energies          -239.99217875 (Pople, relaxed reference)
 Cluster corrected energies          -239.99225014 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95150059 (fixed)   0.95773561 (relaxed)   0.95769415 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042198   -0.00090917   -0.60155687
 Singles      0.02025844   -0.05963654   -0.06798743
 Pairs        0.06962038    0.00000001   -0.04566836
 Total        1.09030079   -0.06054570   -0.71521267
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21349113
 Nuclear energy                         0.00000000
 Kinetic energy                        92.80858790
 One electron energy                 -419.31416269
 Two electron energy                  179.38527602
 Virial quotient                       -2.58520135
 Correlation energy                    -0.71539554
 !MRCI STATE 3.2 Energy              -239.928886662301

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99348745 (Davidson, fixed reference)
 Cluster corrected energies          -239.99341993 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99348745 (Davidson, rotated reference)

 Cluster corrected energies          -239.99225002 (Pople, fixed reference)
 Cluster corrected energies          -239.99217863 (Pople, relaxed reference)
 Cluster corrected energies          -239.99225002 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.86973414 (fixed)   0.95773538 (relaxed)   0.95769393 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042198   -0.00090917   -0.60155665
 Singles      0.02025844   -0.05963646   -0.06798734
 Pairs        0.06962088    0.00000000   -0.04566867
 Total        1.09030130   -0.06054563   -0.71521265
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21349113
 Nuclear energy                         0.00000000
 Kinetic energy                        92.80859384
 One electron energy                 -419.31417013
 Two electron energy                  179.38528348
 Virial quotient                       -2.58520118
 Correlation energy                    -0.71539552
 !MRCI STATE 4.2 Energy              -239.928886650022

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99348780 (Davidson, fixed reference)
 Cluster corrected energies          -239.99342028 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99348780 (Davidson, rotated reference)

 Cluster corrected energies          -239.99225039 (Pople, fixed reference)
 Cluster corrected energies          -239.99217900 (Pople, relaxed reference)
 Cluster corrected energies          -239.99225039 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.92552705 (fixed)   0.95773534 (relaxed)   0.95769389 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042198   -0.00090917   -0.60155654
 Singles      0.02025848   -0.05963653   -0.06798735
 Pairs        0.06962094    0.00000000   -0.04566877
 Total        1.09030140   -0.06054570   -0.71521265
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21349112
 Nuclear energy                         0.00000000
 Kinetic energy                        92.80859294
 One electron energy                 -419.31417122
 Two electron energy                  179.38528457
 Virial quotient                       -2.58520121
 Correlation energy                    -0.71539552
 !MRCI STATE 5.2 Energy              -239.928886649428

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99348787 (Davidson, fixed reference)
 Cluster corrected energies          -239.99342034 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99348787 (Davidson, rotated reference)

 Cluster corrected energies          -239.99225046 (Pople, fixed reference)
 Cluster corrected energies          -239.99217907 (Pople, relaxed reference)
 Cluster corrected energies          -239.99225046 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.94667819 (fixed)   0.95872820 (relaxed)   0.95859530 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00054581   -0.00075966   -0.60929350
 Singles      0.01356943   -0.04586485   -0.05099741
 Pairs        0.07413661   -0.00123755   -0.04948886
 Total        1.08825185   -0.04786205   -0.70977977
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19033720
 Nuclear energy                         0.00000000
 Kinetic energy                        92.80127567
 One electron energy                 -419.16326713
 Two electron energy                  179.26299150
 Virial quotient                       -2.58509674
 Correlation energy                    -0.70993843
 !MRCI STATE 6.2 Energy              -239.900275626281

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.96292900 (Davidson, fixed reference)
 Cluster corrected energies          -239.96271481 (Davidson, relaxed reference)
 Cluster corrected energies          -239.96292900 (Davidson, rotated reference)

 Cluster corrected energies          -239.96162016 (Pople, fixed reference)
 Cluster corrected energies          -239.96139452 (Pople, relaxed reference)
 Cluster corrected energies          -239.96162016 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94674754 (fixed)   0.95872813 (relaxed)   0.95859523 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00054581   -0.00075966   -0.61136348
 Singles      0.01356954   -0.04586494   -0.05099746
 Pairs        0.07413665    0.00101530   -0.04741883
 Total        1.08825201   -0.04560930   -0.70977976
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19033720
 Nuclear energy                         0.00000000
 Kinetic energy                        92.80125182
 One electron energy                 -419.16324281
 Two electron energy                  179.26296719
 Virial quotient                       -2.58509741
 Correlation energy                    -0.70993842
 !MRCI STATE 7.2 Energy              -239.900275619117

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.96292911 (Davidson, fixed reference)
 Cluster corrected energies          -239.96271491 (Davidson, relaxed reference)
 Cluster corrected energies          -239.96292911 (Davidson, rotated reference)

 Cluster corrected energies          -239.96162028 (Pople, fixed reference)
 Cluster corrected energies          -239.96139463 (Pople, relaxed reference)
 Cluster corrected energies          -239.96162028 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95667379 (fixed)   0.95872757 (relaxed)   0.95859465 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00054583   -0.00075966   -0.63689094
 Singles      0.01356972   -0.04586518   -0.05099754
 Pairs        0.07413776    0.02879669   -0.02189126
 Total        1.08825331   -0.01782815   -0.70977974
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19033720
 Nuclear energy                         0.00000000
 Kinetic energy                        92.80126419
 One electron energy                 -419.16324703
 Two electron energy                  179.26297144
 Virial quotient                       -2.58509706
 Correlation energy                    -0.70993840
 !MRCI STATE 8.2 Energy              -239.900275596048

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.96293001 (Davidson, fixed reference)
 Cluster corrected energies          -239.96271580 (Davidson, relaxed reference)
 Cluster corrected energies          -239.96293001 (Davidson, rotated reference)

 Cluster corrected energies          -239.96162123 (Pople, fixed reference)
 Cluster corrected energies          -239.96139557 (Pople, relaxed reference)
 Cluster corrected energies          -239.96162123 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.96081262 (fixed)   0.96087947 (relaxed)   0.96081262 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052491   -0.00107825   -0.58325374
 Singles      0.01977089   -0.06001783   -0.06801685
 Pairs        0.06293900   -0.00000011   -0.04018515
 Total        1.08323480   -0.06109619   -0.69145574
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.04325079
 Nuclear energy                         0.00000000
 Kinetic energy                        92.49552742
 One electron energy                 -414.32633580
 Two electron energy                  174.59162926
 Virial quotient                       -2.59185188
 Correlation energy                    -0.69145574
 !MRCI STATE 9.2 Energy              -239.734706538156

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.79225972 (Davidson, fixed reference)
 Cluster corrected energies          -239.79215550 (Davidson, relaxed reference)
 Cluster corrected energies          -239.79225972 (Davidson, rotated reference)

 Cluster corrected energies          -239.79081416 (Pople, fixed reference)
 Cluster corrected energies          -239.79070529 (Pople, relaxed reference)
 Cluster corrected energies          -239.79081416 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95910924 (fixed)   0.96064204 (relaxed)   0.96057654 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00053496   -0.00111019   -0.58460852
 Singles      0.01965234   -0.06008900   -0.06801860
 Pairs        0.06358002    0.00000014   -0.04067047
 Total        1.08376732   -0.06119905   -0.69329759
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03080446
 Nuclear energy                         0.00000000
 Kinetic energy                        92.51413284
 One electron energy                 -414.42234198
 Two electron energy                  174.69842280
 Virial quotient                       -2.59121403
 Correlation energy                    -0.69311472
 !MRCI STATE 10.2 Energy             -239.723919179676

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.78197954 (Davidson, fixed reference)
 Cluster corrected energies          -239.78187711 (Davidson, relaxed reference)
 Cluster corrected energies          -239.78197954 (Davidson, rotated reference)

 Cluster corrected energies          -239.78054721 (Pople, fixed reference)
 Cluster corrected energies          -239.78044011 (Pople, relaxed reference)
 Cluster corrected energies          -239.78054721 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95072790 (fixed)   0.96064214 (relaxed)   0.96057665 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00053495   -0.00111019   -0.58460854
 Singles      0.01965231   -0.06008895   -0.06801849
 Pairs        0.06357981    0.00000006   -0.04067047
 Total        1.08376707   -0.06119908   -0.69329750
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03080446
 Nuclear energy                         0.00000000
 Kinetic energy                        92.51412126
 One electron energy                 -414.42233505
 Two electron energy                  174.69841596
 Virial quotient                       -2.59121436
 Correlation energy                    -0.69311463
 !MRCI STATE 11.2 Energy             -239.723919090647

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.78197927 (Davidson, fixed reference)
 Cluster corrected energies          -239.78187685 (Davidson, relaxed reference)
 Cluster corrected energies          -239.78197927 (Davidson, rotated reference)

 Cluster corrected energies          -239.78054693 (Pople, fixed reference)
 Cluster corrected energies          -239.78043983 (Pople, relaxed reference)
 Cluster corrected energies          -239.78054693 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Coefficient of reference function:   C(0) = 0.95889041 (fixed)   0.96064210 (relaxed)   0.96057660 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00053496   -0.00111019   -0.58460840
 Singles      0.01965219   -0.06008882   -0.06801834
 Pairs        0.06358003   -0.00000012   -0.04067071
 Total        1.08376718   -0.06119913   -0.69329745
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03080446
 Nuclear energy                         0.00000000
 Kinetic energy                        92.51413107
 One electron energy                 -414.42234216
 Two electron energy                  174.69842312
 Virial quotient                       -2.59121408
 Correlation energy                    -0.69311458
 !MRCI STATE 12.2 Energy             -239.723919036398

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.78197929 (Davidson, fixed reference)
 Cluster corrected energies          -239.78187686 (Davidson, relaxed reference)
 Cluster corrected energies          -239.78197929 (Davidson, rotated reference)

 Cluster corrected energies          -239.78054695 (Pople, fixed reference)
 Cluster corrected energies          -239.78043985 (Pople, relaxed reference)
 Cluster corrected energies          -239.78054695 (Pople, rotated reference)



 RESULTS FOR STATE 13.2
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.94395601 (fixed)   0.96064196 (relaxed)   0.96057645 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00053497   -0.00111017   -0.58460730
 Singles      0.01965223   -0.06008893   -0.06801815
 Pairs        0.06358032   -0.00000078   -0.04067177
 Total        1.08376752   -0.06119989   -0.69329722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03080446
 Nuclear energy                         0.00000000
 Kinetic energy                        92.51415532
 One electron energy                 -414.42236103
 Two electron energy                  174.69844222
 Virial quotient                       -2.59121340
 Correlation energy                    -0.69311436
 !MRCI STATE 13.2 Energy             -239.723918812170

 Properties without orbital relaxation:

 !MRCI STATE 13.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.78197928 (Davidson, fixed reference)
 Cluster corrected energies          -239.78187684 (Davidson, relaxed reference)
 Cluster corrected energies          -239.78197928 (Davidson, rotated reference)

 Cluster corrected energies          -239.78054695 (Pople, fixed reference)
 Cluster corrected energies          -239.78043984 (Pople, relaxed reference)
 Cluster corrected energies          -239.78054695 (Pople, rotated reference)



 RESULTS FOR STATE 14.2
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95288802 (fixed)   0.96064197 (relaxed)   0.96057645 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00053498   -0.00111017   -0.58459907
 Singles      0.01965214   -0.06008884   -0.06801809
 Pairs        0.06358039   -0.00000980   -0.04068005
 Total        1.08376751   -0.06120881   -0.69329721
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.03080446
 Nuclear energy                         0.00000000
 Kinetic energy                        92.51415850
 One electron energy                 -414.42236207
 Two electron energy                  174.69844327
 Virial quotient                       -2.59121331
 Correlation energy                    -0.69311434
 !MRCI STATE 14.2 Energy             -239.723918798567

 Properties without orbital relaxation:

 !MRCI STATE 14.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.78197926 (Davidson, fixed reference)
 Cluster corrected energies          -239.78187681 (Davidson, relaxed reference)
 Cluster corrected energies          -239.78197926 (Davidson, rotated reference)

 Cluster corrected energies          -239.78054693 (Pople, fixed reference)
 Cluster corrected energies          -239.78043981 (Pople, relaxed reference)
 Cluster corrected energies          -239.78054693 (Pople, rotated reference)



 RESULTS FOR STATE 15.2
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.71174540 (fixed)   0.96054372 (relaxed)   0.96047424 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00053951   -0.00109809   -0.58558489
 Singles      0.01939860   -0.05933508   -0.06715435
 Pairs        0.06406007    0.00004768   -0.04094686
 Total        1.08399818   -0.06038549   -0.69368610
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02514992
 Nuclear energy                         0.00000000
 Kinetic energy                        92.52183199
 One electron energy                 -414.46281140
 Two electron energy                  174.74413403
 Virial quotient                       -2.59094175
 Correlation energy                    -0.69352745
 !MRCI STATE 15.2 Energy             -239.718677368317

 Properties without orbital relaxation:

 !MRCI STATE 15.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.77693241 (Davidson, fixed reference)
 Cluster corrected energies          -239.77682366 (Davidson, relaxed reference)
 Cluster corrected energies          -239.77693241 (Davidson, rotated reference)

 Cluster corrected energies          -239.77550657 (Pople, fixed reference)
 Cluster corrected energies          -239.77539282 (Pople, relaxed reference)
 Cluster corrected energies          -239.77550657 (Pople, rotated reference)



 RESULTS FOR STATE 16.2
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.71173488 (fixed)   0.96054367 (relaxed)   0.96047419 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00053951   -0.00109809   -0.58236475
 Singles      0.01939846   -0.05933486   -0.06715441
 Pairs        0.06406034   -0.00344309   -0.04416694
 Total        1.08399831   -0.06387604   -0.69368610
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02514992
 Nuclear energy                         0.00000000
 Kinetic energy                        92.52186682
 One electron energy                 -414.46281342
 Two electron energy                  174.74413605
 Virial quotient                       -2.59094078
 Correlation energy                    -0.69352744
 !MRCI STATE 16.2 Energy             -239.718677365150

 Properties without orbital relaxation:

 !MRCI STATE 16.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.77693250 (Davidson, fixed reference)
 Cluster corrected energies          -239.77682374 (Davidson, relaxed reference)
 Cluster corrected energies          -239.77693250 (Davidson, rotated reference)

 Cluster corrected energies          -239.77550666 (Pople, fixed reference)
 Cluster corrected energies          -239.77539290 (Pople, relaxed reference)
 Cluster corrected energies          -239.77550666 (Pople, rotated reference)



 RESULTS FOR STATE 17.2
 ======================

 Coefficient of reference function:   C(0) = 0.95998394 (fixed)   0.96054372 (relaxed)   0.96047425 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00053951   -0.00109810   -0.00154184
 Singles      0.01939880   -0.05933554   -0.06715378
 Pairs        0.06405986   -0.63305315   -0.62499018
 Total        1.08399817   -0.69348679   -0.69368580
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02514992
 Nuclear energy                         0.00000000
 Kinetic energy                        92.52179242
 One electron energy                 -414.46283707
 Two electron energy                  174.74416001
 Virial quotient                       -2.59094286
 Correlation energy                    -0.69352714
 !MRCI STATE 17.2 Energy             -239.718677065560

 Properties without orbital relaxation:

 !MRCI STATE 17.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.77693208 (Davidson, fixed reference)
 Cluster corrected energies          -239.77682333 (Davidson, relaxed reference)
 Cluster corrected energies          -239.77693208 (Davidson, rotated reference)

 Cluster corrected energies          -239.77550624 (Pople, fixed reference)
 Cluster corrected energies          -239.77539249 (Pople, relaxed reference)
 Cluster corrected energies          -239.77550624 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1923.04       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *     10060.75   9988.96     64.81      4.74      1.92
 REAL TIME  *     10367.64 SEC
 DISK USED  *         1.92 GB (local),       53.78 GB (total)
 SF USED    *        19.37 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -239.99348755  AU                              
 SETTING HLSDIAG(3)     =      -239.99348757  AU                              
 SETTING HLSDIAG(4)     =      -239.99348745  AU                              
 SETTING HLSDIAG(5)     =      -239.99348780  AU                              
 SETTING HLSDIAG(6)     =      -239.99348787  AU                              
 SETTING HLSDIAG(7)     =      -239.96292900  AU                              
 SETTING HLSDIAG(8)     =      -239.96292911  AU                              
 SETTING HLSDIAG(9)     =      -239.96293001  AU                              
 SETTING HLSDIAG(10)    =      -239.79225972  AU                              
 SETTING HLSDIAG(11)    =      -239.78197954  AU                              
 SETTING HLSDIAG(12)    =      -239.78197927  AU                              
 SETTING HLSDIAG(13)    =      -239.78197929  AU                              
 SETTING HLSDIAG(14)    =      -239.78197928  AU                              
 SETTING HLSDIAG(15)    =      -239.78197926  AU                              
 SETTING HLSDIAG(16)    =      -239.77693241  AU                              
 SETTING HLSDIAG(17)    =      -239.77693250  AU                              
 SETTING HLSDIAG(18)    =      -239.77693208  AU                              


         HLSDIAG
    -240.0390037
    -239.9934875
    -239.9934876
    -239.9934874
    -239.9934878
    -239.9934879
    -239.9629290
    -239.9629291
    -239.9629300
    -239.7922597
    -239.7819795
    -239.7819793
    -239.7819793
    -239.7819793
    -239.7819793
    -239.7769324
    -239.7769325
    -239.7769321
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -239.979686
 Replaced energies:   -240.039004


 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5302.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 0.5
 Symmetry of ket wavefunction:            2   S= 1.5  MS= 1.5


 !MRCI expec       <1.2|ECPLSX|1.2>     0.000000000000i

 !MRCI overlap           <1.2||1.2>     1.000000000000
 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=  17

 Original energies:   -239.928887   -239.928887   -239.928887   -239.928887   -239.928887   -239.900276   -239.900276   -239.900276
                      -239.734707   -239.723919   -239.723919   -239.723919   -239.723919   -239.723919   -239.718677   -239.718677
                      -239.718677
 Replaced energies:   -239.993488   -239.993488   -239.993487   -239.993488   -239.993488   -239.962929   -239.962929   -239.962930
                      -239.792260   -239.781980   -239.781979   -239.781979   -239.781979   -239.781979   -239.776932   -239.776932
                      -239.776932


 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 1.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <1.2|ECPLSX|1.2>    -0.000000001128i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|2.2>     0.000000011928i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|3.2>     0.000000000670i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|4.2>    -0.000000000336i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|5.2>     0.000000000016i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|6.2>     0.001436143282i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|7.2>    -0.009575077157i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|8.2>     0.000399313610i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|9.2>    -0.000000000134i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|10.2>     0.000000001041i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|11.2>    -0.000000000116i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|12.2>    -0.000000016192i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|13.2>    -0.000000000426i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|14.2>    -0.000000000314i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|15.2>    -0.001917358118i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|16.2>     0.001735417192i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|17.2>    -0.000009583098i

 !MRCI expec       <1.2|ECPLSX|1.2>    -0.000000000834i
 !MRCI trans       <1.2|ECPLSX|2.2>     0.000000019556i
 !MRCI trans       <1.2|ECPLSX|3.2>     0.000000000831i
 !MRCI trans       <1.2|ECPLSX|4.2>    -0.000000000322i
 !MRCI trans       <1.2|ECPLSX|5.2>    -0.000000000108i
 !MRCI trans       <1.2|ECPLSX|6.2>     0.001431715453i
 !MRCI trans       <1.2|ECPLSX|7.2>    -0.009545551570i
 !MRCI trans       <1.2|ECPLSX|8.2>     0.000398082080i
 !MRCI trans       <1.2|ECPLSX|9.2>    -0.000000000128i
 !MRCI trans      <1.2|ECPLSX|10.2>     0.000000000941i
 !MRCI trans      <1.2|ECPLSX|11.2>     0.000000000009i
 !MRCI trans      <1.2|ECPLSX|12.2>    -0.000000021215i
 !MRCI trans      <1.2|ECPLSX|13.2>    -0.000000000409i
 !MRCI trans      <1.2|ECPLSX|14.2>    -0.000000000322i
 !MRCI trans      <1.2|ECPLSX|15.2>    -0.001872126149i
 !MRCI trans      <1.2|ECPLSX|16.2>     0.001694471916i
 !MRCI trans      <1.2|ECPLSX|17.2>    -0.000009357006i

 Bra-wavefunction restored from record   5102.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 0.5  MS=-0.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <2.2|ECPLSX|1.2>    -0.000045078437i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|1.2>    -0.000000617252i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|1.2>    -0.000000155928i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|1.2>     0.000000367322i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|1.2>    -0.000053781601i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|1.2>     0.000843420342i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|1.2>     0.000063897737i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|1.2>    -0.000000000258i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|1.2>    -0.000037558483i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|1.2>    -0.000009514274i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|1.2>    -0.000956606188i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|1.2>    -0.000021702677i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|1.2>     0.000007253368i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|1.2>     0.000036583627i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|1.2>    -0.000027598057i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|1.2>    -0.000005058213i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|2.2>     0.000045078437i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|2.2>     0.000000234786i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|2.2>    -0.000004626585i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|2.2>    -0.000001278637i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|2.2>     0.000111349950i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|2.2>     0.000013148140i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|2.2>    -0.000128671858i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|2.2>    -0.000000005479i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|2.2>     0.000004365543i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|2.2>    -0.000758607041i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|2.2>     0.000021152224i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|2.2>    -0.000589876315i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|2.2>     0.000058589325i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|2.2>     0.000003984931i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|2.2>     0.000004296952i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|2.2>     0.000007199973i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|3.2>     0.000000617252i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|3.2>    -0.000000234786i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|3.2>     0.000005673260i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|3.2>    -0.000021829477i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|3.2>    -0.000094509282i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|3.2>    -0.000586036782i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|3.2>     0.006836667574i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|3.2>     0.000000000204i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|3.2>     0.000005220128i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|3.2>    -0.000017353860i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|3.2>     0.000001697845i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|3.2>     0.000047169598i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|3.2>     0.000476427136i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|3.2>    -0.000031455091i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|3.2>     0.000031841670i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|3.2>    -0.000370602057i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|4.2>     0.000000155928i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|4.2>     0.000004626585i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|4.2>    -0.000005673260i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|4.2>    -0.000002484606i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|4.2>    -0.002873085522i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|4.2>     0.007237436675i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|4.2>     0.000343874591i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|4.2>     0.000000000021i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|4.2>    -0.000118028746i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|4.2>    -0.000003453307i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|4.2>     0.000102282298i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|4.2>     0.000005503139i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|4.2>     0.000050638582i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|4.2>     0.000241419060i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|4.2>    -0.000346540456i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|4.2>    -0.000037340386i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|5.2>    -0.000000367322i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|5.2>     0.000001278637i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|5.2>     0.000021829477i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|5.2>     0.000002484606i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|5.2>     0.006244629231i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|5.2>     0.002961179202i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|5.2>     0.000279826108i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|5.2>     0.000000000151i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|5.2>     0.000466861380i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|5.2>     0.000010438042i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|5.2>     0.000015203937i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|5.2>     0.000008839794i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|5.2>     0.000007171398i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|5.2>     0.000322000770i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|5.2>     0.000194492066i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|5.2>    -0.000007326449i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|6.2>     0.000053781601i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|6.2>    -0.000111349950i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|6.2>     0.000094509282i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|6.2>     0.002873085522i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|6.2>    -0.006244629231i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|6.2>    -0.000000126876i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|6.2>    -0.000003041564i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|6.2>     0.000074157702i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|6.2>    -0.000009965376i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|6.2>     0.000025751760i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|6.2>     0.000001442547i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|6.2>    -0.000058764203i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|6.2>    -0.000222831206i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|6.2>    -0.000014740612i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|6.2>    -0.000013499846i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|6.2>     0.000504569520i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|7.2>    -0.000843420342i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|7.2>    -0.000013148140i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|7.2>     0.000586036782i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|7.2>    -0.007237436675i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|7.2>    -0.002961179202i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|7.2>     0.000000126876i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|7.2>    -0.000000455503i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|7.2>    -0.000494426137i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|7.2>     0.000008369838i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|7.2>    -0.000162276315i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|7.2>    -0.000003557517i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|7.2>     0.000201962886i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|7.2>    -0.000060693030i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|7.2>     0.000012056497i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|7.2>     0.000013742221i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|7.2>     0.000076386686i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|8.2>    -0.000063897737i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|8.2>     0.000128671858i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|8.2>    -0.006836667574i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|8.2>    -0.000343874591i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|8.2>    -0.000279826108i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|8.2>     0.000003041564i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|8.2>     0.000000455503i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|8.2>     0.000020619360i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|8.2>     0.000230669632i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|8.2>     0.000006255427i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|8.2>    -0.000010157401i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|8.2>    -0.000010521313i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|8.2>    -0.000007372011i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|8.2>     0.000342117074i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|8.2>     0.000378078103i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|8.2>     0.000016954706i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|9.2>     0.000000000258i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|9.2>     0.000000005479i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|9.2>    -0.000000000204i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|9.2>    -0.000000000021i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|9.2>    -0.000000000151i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|9.2>    -0.000074157702i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|9.2>     0.000494426137i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|9.2>    -0.000020619360i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|9.2>    -0.000000002691i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|9.2>    -0.000000000009i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|9.2>     0.000000054394i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|9.2>     0.000000000903i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|9.2>     0.000000000628i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|9.2>     0.003576454083i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|9.2>    -0.003237078040i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|9.2>     0.000017875483i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|10.2>     0.000037558483i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|10.2>    -0.000004365543i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|10.2>    -0.000005220128i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|10.2>     0.000118028746i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|10.2>    -0.000466861380i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|10.2>     0.000009965376i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|10.2>    -0.000008369838i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|10.2>    -0.000230669632i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|10.2>     0.000000002691i
 !MRCI LS_I-I(EC <11.2|ECPLSX|10.2>    -0.000195602341i
 !MRCI LS_I-I(EC <12.2|ECPLSX|10.2>     0.000016219750i
 !MRCI LS_I-I(EC <13.2|ECPLSX|10.2>     0.000172231374i
 !MRCI LS_I-I(EC <14.2|ECPLSX|10.2>     0.002554316056i
 !MRCI LS_I-I(EC <15.2|ECPLSX|10.2>    -0.000001199102i
 !MRCI LS_I-I(EC <16.2|ECPLSX|10.2>     0.000009221334i
 !MRCI LS_I-I(EC <17.2|ECPLSX|10.2>     0.001488752661i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|11.2>     0.000009514274i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|11.2>     0.000758607041i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|11.2>     0.000017353860i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|11.2>     0.000003453307i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|11.2>    -0.000010438042i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|11.2>    -0.000025751760i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|11.2>     0.000162276315i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|11.2>    -0.000006255427i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|11.2>     0.000000000009i
 !MRCI LS_I-I(EC <10.2|ECPLSX|11.2>     0.000195602341i
 !MRCI LS_I-I(EC <12.2|ECPLSX|11.2>     0.004028810443i
 !MRCI LS_I-I(EC <13.2|ECPLSX|11.2>     0.000063037663i
 !MRCI LS_I-I(EC <14.2|ECPLSX|11.2>    -0.000005101031i
 !MRCI LS_I-I(EC <15.2|ECPLSX|11.2>     0.000779584830i
 !MRCI LS_I-I(EC <16.2|ECPLSX|11.2>    -0.000717593117i
 !MRCI LS_I-I(EC <17.2|ECPLSX|11.2>     0.000000278510i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|12.2>     0.000956606188i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|12.2>    -0.000021152224i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|12.2>    -0.000001697845i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|12.2>    -0.000102282298i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|12.2>    -0.000015203937i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|12.2>    -0.000001442547i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|12.2>     0.000003557517i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|12.2>     0.000010157401i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|12.2>    -0.000000054394i
 !MRCI LS_I-I(EC <10.2|ECPLSX|12.2>    -0.000016219750i
 !MRCI LS_I-I(EC <11.2|ECPLSX|12.2>    -0.004028810443i
 !MRCI LS_I-I(EC <13.2|ECPLSX|12.2>    -0.003142654937i
 !MRCI LS_I-I(EC <14.2|ECPLSX|12.2>     0.000246887946i
 !MRCI LS_I-I(EC <15.2|ECPLSX|12.2>     0.000013597047i
 !MRCI LS_I-I(EC <16.2|ECPLSX|12.2>    -0.000017139340i
 !MRCI LS_I-I(EC <17.2|ECPLSX|12.2>    -0.000066467171i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|13.2>     0.000021702677i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|13.2>     0.000589876315i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|13.2>    -0.000047169598i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|13.2>    -0.000005503139i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|13.2>    -0.000008839794i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|13.2>     0.000058764203i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|13.2>    -0.000201962886i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|13.2>     0.000010521313i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|13.2>    -0.000000000903i
 !MRCI LS_I-I(EC <10.2|ECPLSX|13.2>    -0.000172231374i
 !MRCI LS_I-I(EC <11.2|ECPLSX|13.2>    -0.000063037663i
 !MRCI LS_I-I(EC <12.2|ECPLSX|13.2>     0.003142654937i
 !MRCI LS_I-I(EC <14.2|ECPLSX|13.2>    -0.000003064940i
 !MRCI LS_I-I(EC <15.2|ECPLSX|13.2>    -0.000875113946i
 !MRCI LS_I-I(EC <16.2|ECPLSX|13.2>     0.001037241530i
 !MRCI LS_I-I(EC <17.2|ECPLSX|13.2>    -0.000011339195i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|14.2>    -0.000007253368i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|14.2>    -0.000058589325i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|14.2>    -0.000476427136i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|14.2>    -0.000050638582i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|14.2>    -0.000007171398i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|14.2>     0.000222831206i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|14.2>     0.000060693030i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|14.2>     0.000007372011i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|14.2>    -0.000000000628i
 !MRCI LS_I-I(EC <10.2|ECPLSX|14.2>    -0.002554316056i
 !MRCI LS_I-I(EC <11.2|ECPLSX|14.2>     0.000005101031i
 !MRCI LS_I-I(EC <12.2|ECPLSX|14.2>    -0.000246887946i
 !MRCI LS_I-I(EC <13.2|ECPLSX|14.2>     0.000003064940i
 !MRCI LS_I-I(EC <15.2|ECPLSX|14.2>     0.001119920896i
 !MRCI LS_I-I(EC <16.2|ECPLSX|14.2>     0.000981460633i
 !MRCI LS_I-I(EC <17.2|ECPLSX|14.2>    -0.000004837940i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|15.2>    -0.000036583627i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|15.2>    -0.000003984931i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|15.2>     0.000031455091i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|15.2>    -0.000241419060i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|15.2>    -0.000322000770i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|15.2>     0.000014740612i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|15.2>    -0.000012056497i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|15.2>    -0.000342117074i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|15.2>    -0.003576454083i
 !MRCI LS_I-I(EC <10.2|ECPLSX|15.2>     0.000001199102i
 !MRCI LS_I-I(EC <11.2|ECPLSX|15.2>    -0.000779584830i
 !MRCI LS_I-I(EC <12.2|ECPLSX|15.2>    -0.000013597047i
 !MRCI LS_I-I(EC <13.2|ECPLSX|15.2>     0.000875113946i
 !MRCI LS_I-I(EC <14.2|ECPLSX|15.2>    -0.001119920896i
 !MRCI LS_I-I(EC <16.2|ECPLSX|15.2>    -0.000006995854i
 !MRCI LS_I-I(EC <17.2|ECPLSX|15.2>    -0.001266689588i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|16.2>     0.000027598057i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|16.2>    -0.000004296952i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|16.2>    -0.000031841670i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|16.2>     0.000346540456i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|16.2>    -0.000194492066i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|16.2>     0.000013499846i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|16.2>    -0.000013742221i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|16.2>    -0.000378078103i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|16.2>     0.003237078040i
 !MRCI LS_I-I(EC <10.2|ECPLSX|16.2>    -0.000009221334i
 !MRCI LS_I-I(EC <11.2|ECPLSX|16.2>     0.000717593117i
 !MRCI LS_I-I(EC <12.2|ECPLSX|16.2>     0.000017139340i
 !MRCI LS_I-I(EC <13.2|ECPLSX|16.2>    -0.001037241530i
 !MRCI LS_I-I(EC <14.2|ECPLSX|16.2>    -0.000981460633i
 !MRCI LS_I-I(EC <15.2|ECPLSX|16.2>     0.000006995854i
 !MRCI LS_I-I(EC <17.2|ECPLSX|16.2>    -0.001399493810i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|17.2>     0.000005058213i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|17.2>    -0.000007199973i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|17.2>     0.000370602057i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|17.2>     0.000037340386i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|17.2>     0.000007326449i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|17.2>    -0.000504569520i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|17.2>    -0.000076386686i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|17.2>    -0.000016954706i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|17.2>    -0.000017875483i
 !MRCI LS_I-I(EC <10.2|ECPLSX|17.2>    -0.001488752661i
 !MRCI LS_I-I(EC <11.2|ECPLSX|17.2>    -0.000000278510i
 !MRCI LS_I-I(EC <12.2|ECPLSX|17.2>     0.000066467171i
 !MRCI LS_I-I(EC <13.2|ECPLSX|17.2>     0.000011339195i
 !MRCI LS_I-I(EC <14.2|ECPLSX|17.2>     0.000004837940i
 !MRCI LS_I-I(EC <15.2|ECPLSX|17.2>     0.001266689588i
 !MRCI LS_I-I(EC <16.2|ECPLSX|17.2>     0.001399493810i

 !MRCI expec       <1.2|ECPLSX|1.2>     1.036385401532i
 !MRCI trans       <2.2|ECPLSX|1.2>    -4.747715660052i
 !MRCI trans       <3.2|ECPLSX|1.2>    -0.480208596261i
 !MRCI trans       <4.2|ECPLSX|1.2>     5.515090541972i
 !MRCI trans       <5.2|ECPLSX|1.2>     1.466936696099i
 !MRCI trans       <6.2|ECPLSX|1.2>     0.382224395949i
 !MRCI trans       <7.2|ECPLSX|1.2>    -2.066727324314i
 !MRCI trans       <8.2|ECPLSX|1.2>     0.218521229782i
 !MRCI trans       <9.2|ECPLSX|1.2>     0.980544910562i
 !MRCI trans      <10.2|ECPLSX|1.2>     0.879168531693i
 !MRCI trans      <11.2|ECPLSX|1.2>     0.452870240784i
 !MRCI trans      <12.2|ECPLSX|1.2>     0.934703737707i
 !MRCI trans      <13.2|ECPLSX|1.2>     0.197838081894i
 !MRCI trans      <14.2|ECPLSX|1.2>     0.261667675595i
 !MRCI trans      <15.2|ECPLSX|1.2>    -0.412009272608i
 !MRCI trans      <16.2|ECPLSX|1.2>     1.594556312926i
 !MRCI trans      <17.2|ECPLSX|1.2>    -0.340505598027i
 !MRCI expec       <2.2|ECPLSX|2.2>    -1.004743687031i
 !MRCI trans       <3.2|ECPLSX|2.2>    -2.834282902444i
 !MRCI trans       <4.2|ECPLSX|2.2>    25.454328553532i
 !MRCI trans       <5.2|ECPLSX|2.2>     6.018941426444i
 !MRCI trans       <6.2|ECPLSX|2.2>     0.267402021038i
 !MRCI trans       <7.2|ECPLSX|2.2>    -0.028247560590i
 !MRCI trans       <8.2|ECPLSX|2.2>     0.390990277548i
 !MRCI trans       <9.2|ECPLSX|2.2>     4.020140314828i
 !MRCI trans      <10.2|ECPLSX|2.2>     0.349161537793i
 !MRCI trans      <11.2|ECPLSX|2.2>     2.845588164437i
 !MRCI trans      <12.2|ECPLSX|2.2>    -0.430791365405i
 !MRCI trans      <13.2|ECPLSX|2.2>     1.512789151963i
 !MRCI trans      <14.2|ECPLSX|2.2>     2.129584842263i
 !MRCI trans      <15.2|ECPLSX|2.2>     0.474044227130i
 !MRCI trans      <16.2|ECPLSX|2.2>    -0.465416817094i
 !MRCI trans      <17.2|ECPLSX|2.2>    -1.916310320638i
 !MRCI expec       <3.2|ECPLSX|3.2>     1.248543727942i
 !MRCI trans       <4.2|ECPLSX|3.2>    -0.652358607177i
 !MRCI trans       <5.2|ECPLSX|3.2>     2.713129859164i
 !MRCI trans       <6.2|ECPLSX|3.2>    -0.630209154356i
 !MRCI trans       <7.2|ECPLSX|3.2>    -2.884732662946i
 !MRCI trans       <8.2|ECPLSX|3.2>     2.284505049866i
 !MRCI trans       <9.2|ECPLSX|3.2>    -0.052553587493i
 !MRCI trans      <10.2|ECPLSX|3.2>    -1.735541210882i
 !MRCI trans      <11.2|ECPLSX|3.2>    -0.737316028316i
 !MRCI trans      <12.2|ECPLSX|3.2>     1.011812751566i
 !MRCI trans      <13.2|ECPLSX|3.2>    -0.239415391794i
 !MRCI trans      <14.2|ECPLSX|3.2>     0.708001738650i
 !MRCI trans      <15.2|ECPLSX|3.2>    -0.313875595677i
 !MRCI trans      <16.2|ECPLSX|3.2>     0.674334052148i
 !MRCI trans      <17.2|ECPLSX|3.2>    -0.565638417904i
 !MRCI expec       <4.2|ECPLSX|4.2>    -1.248133967138i
 !MRCI trans       <5.2|ECPLSX|4.2>     1.103539054639i
 !MRCI trans       <6.2|ECPLSX|4.2>    -1.998230765042i
 !MRCI trans       <7.2|ECPLSX|4.2>    -1.537930514821i
 !MRCI trans       <8.2|ECPLSX|4.2>     0.375742785591i
 !MRCI trans       <9.2|ECPLSX|4.2>     0.052631195800i
 !MRCI trans      <10.2|ECPLSX|4.2>     0.944494819107i
 !MRCI trans      <11.2|ECPLSX|4.2>    -0.357003656888i
 !MRCI trans      <12.2|ECPLSX|4.2>     0.252896617832i
 !MRCI trans      <13.2|ECPLSX|4.2>    -0.126593567657i
 !MRCI trans      <14.2|ECPLSX|4.2>     0.707427715554i
 !MRCI trans      <15.2|ECPLSX|4.2>    -0.264913911596i
 !MRCI trans      <16.2|ECPLSX|4.2>     0.900022123924i
 !MRCI trans      <17.2|ECPLSX|4.2>    -0.005602344650i
 !MRCI expec       <5.2|ECPLSX|5.2>    -1.318018678826i
 !MRCI trans       <6.2|ECPLSX|5.2>     8.026452618633i
 !MRCI trans       <7.2|ECPLSX|5.2>    -1.241617585115i
 !MRCI trans       <8.2|ECPLSX|5.2>    -0.809423995586i
 !MRCI trans       <9.2|ECPLSX|5.2>     0.190836536095i
 !MRCI trans      <10.2|ECPLSX|5.2>    -2.945231810327i
 !MRCI trans      <11.2|ECPLSX|5.2>     0.440417317848i
 !MRCI trans      <12.2|ECPLSX|5.2>     2.324005389173i
 !MRCI trans      <13.2|ECPLSX|5.2>     0.138050049727i
 !MRCI trans      <14.2|ECPLSX|5.2>    -1.722354077531i
 !MRCI trans      <15.2|ECPLSX|5.2>    -0.582259749923i
 !MRCI trans      <16.2|ECPLSX|5.2>     0.822375558033i
 !MRCI trans      <17.2|ECPLSX|5.2>     0.401448165974i
 !MRCI expec       <6.2|ECPLSX|6.2>    -0.570289513530i
 !MRCI trans       <7.2|ECPLSX|6.2>     3.144899587733i
 !MRCI trans       <8.2|ECPLSX|6.2>    -2.785815623236i
 !MRCI trans       <9.2|ECPLSX|6.2>    -0.499830516343i
 !MRCI trans      <10.2|ECPLSX|6.2>     0.179355374343i
 !MRCI trans      <11.2|ECPLSX|6.2>     0.533370614501i
 !MRCI trans      <12.2|ECPLSX|6.2>    -1.428041264369i
 !MRCI trans      <13.2|ECPLSX|6.2>     0.343152903531i
 !MRCI trans      <14.2|ECPLSX|6.2>    -0.658581367135i
 !MRCI trans      <15.2|ECPLSX|6.2>     1.785438784063i
 !MRCI trans      <16.2|ECPLSX|6.2>     0.251098762554i
 !MRCI trans      <17.2|ECPLSX|6.2>     0.859772078654i
 !MRCI expec       <7.2|ECPLSX|7.2>     1.009999168440i
 !MRCI trans       <8.2|ECPLSX|7.2>     0.456184506044i
 !MRCI trans       <9.2|ECPLSX|7.2>     4.158546201751i
 !MRCI trans      <10.2|ECPLSX|7.2>    -0.173593665986i
 !MRCI trans      <11.2|ECPLSX|7.2>     3.009710999940i
 !MRCI trans      <12.2|ECPLSX|7.2>    -0.020109079307i
 !MRCI trans      <13.2|ECPLSX|7.2>     1.435127838446i
 !MRCI trans      <14.2|ECPLSX|7.2>     0.401976716458i
 !MRCI trans      <15.2|ECPLSX|7.2>     0.465886968972i
 !MRCI trans      <16.2|ECPLSX|7.2>    -0.260051485755i
 !MRCI trans      <17.2|ECPLSX|7.2>    -1.712337036448i
 !MRCI expec       <8.2|ECPLSX|8.2>     0.449581078762i
 !MRCI trans       <9.2|ECPLSX|8.2>     0.169172075123i
 !MRCI trans      <10.2|ECPLSX|8.2>    -3.474155717589i
 !MRCI trans      <11.2|ECPLSX|8.2>     0.454715334185i
 !MRCI trans      <12.2|ECPLSX|8.2>     2.333684706440i
 !MRCI trans      <13.2|ECPLSX|8.2>     0.065895355938i
 !MRCI trans      <14.2|ECPLSX|8.2>    -1.736030814885i
 !MRCI trans      <15.2|ECPLSX|8.2>    -0.290303650883i
 !MRCI trans      <16.2|ECPLSX|8.2>     0.635844151852i
 !MRCI trans      <17.2|ECPLSX|8.2>     0.189923643189i
 !MRCI expec       <9.2|ECPLSX|9.2>    -0.018694705946i
 !MRCI trans      <10.2|ECPLSX|9.2>     1.855016250374i
 !MRCI trans      <11.2|ECPLSX|9.2>    -0.460580591995i
 !MRCI trans      <12.2|ECPLSX|9.2>    -0.568978347589i
 !MRCI trans      <13.2|ECPLSX|9.2>    -0.972381520958i
 !MRCI trans      <14.2|ECPLSX|9.2>    -1.632219752066i
 !MRCI trans      <15.2|ECPLSX|9.2>    -0.868332698447i
 !MRCI trans      <16.2|ECPLSX|9.2>    -0.723491470306i
 !MRCI trans      <17.2|ECPLSX|9.2>    -1.126018896307i
 !MRCI expec     <10.2|ECPLSX|10.2>    -1.434908577996i
 !MRCI trans     <11.2|ECPLSX|10.2>    -4.898348247183i
 !MRCI trans     <12.2|ECPLSX|10.2>     2.928301350304i
 !MRCI trans     <13.2|ECPLSX|10.2>    -3.473150337069i
 !MRCI trans     <14.2|ECPLSX|10.2>     1.165544306537i
 !MRCI trans     <15.2|ECPLSX|10.2>    -6.484873183546i
 !MRCI trans     <16.2|ECPLSX|10.2>     1.393834540496i
 !MRCI trans     <17.2|ECPLSX|10.2>     0.069380913494i
 !MRCI expec     <11.2|ECPLSX|11.2>     0.239450101297i
 !MRCI trans     <12.2|ECPLSX|11.2>     1.937106717378i
 !MRCI trans     <13.2|ECPLSX|11.2>     1.278820052037i
 !MRCI trans     <14.2|ECPLSX|11.2>     1.554434216185i
 !MRCI trans     <15.2|ECPLSX|11.2>    -0.688336295899i
 !MRCI trans     <16.2|ECPLSX|11.2>     0.990033959351i
 !MRCI trans     <17.2|ECPLSX|11.2>     0.976444941177i
 !MRCI expec     <12.2|ECPLSX|12.2>     2.829480101583i
 !MRCI trans     <13.2|ECPLSX|12.2>     6.613370711002i
 !MRCI trans     <14.2|ECPLSX|12.2>    12.894251570569i
 !MRCI trans     <15.2|ECPLSX|12.2>    -1.077021824694i
 !MRCI trans     <16.2|ECPLSX|12.2>     4.230305054043i
 !MRCI trans     <17.2|ECPLSX|12.2>    -6.345362939178i
 !MRCI expec     <13.2|ECPLSX|13.2>    -0.976375273372i
 !MRCI trans     <14.2|ECPLSX|13.2>    -1.029707481965i
 !MRCI trans     <15.2|ECPLSX|13.2>    -0.713760686723i
 !MRCI trans     <16.2|ECPLSX|13.2>     6.829059365991i
 !MRCI trans     <17.2|ECPLSX|13.2>     0.574697204104i
 !MRCI expec     <14.2|ECPLSX|14.2>    -3.547981901698i
 !MRCI trans     <15.2|ECPLSX|14.2>     8.217639004002i
 !MRCI trans     <16.2|ECPLSX|14.2>    -2.070231377779i
 !MRCI trans     <17.2|ECPLSX|14.2>    -1.732861565910i
 !MRCI expec     <15.2|ECPLSX|15.2>    -6.350556885609i
 !MRCI trans     <16.2|ECPLSX|15.2>     3.077949343089i
 !MRCI trans     <17.2|ECPLSX|15.2>     3.624709380834i
 !MRCI expec     <16.2|ECPLSX|16.2>    -3.644837060302i
 !MRCI trans     <17.2|ECPLSX|16.2>    -3.756802005844i
 !MRCI expec     <17.2|ECPLSX|17.2>    -0.894204469115i

 !MRCI overlap           <1.2||1.2>     1.000000000002

 !MRCI overlap           <2.2||2.2>     1.000000000002

 !MRCI overlap           <3.2||3.2>     1.000000000002

 !MRCI overlap           <4.2||4.2>     1.000000000001

 !MRCI overlap           <5.2||5.2>     1.000000000001

 !MRCI overlap           <6.2||6.2>     1.000000000003

 !MRCI overlap           <7.2||7.2>     1.000000000000

 !MRCI overlap           <8.2||8.2>     1.000000000000

 !MRCI overlap           <9.2||9.2>     1.000000000003

 !MRCI overlap         <10.2||10.2>     1.000000000006

 !MRCI overlap         <11.2||11.2>     1.000000000004

 !MRCI overlap         <12.2||12.2>     1.000000000000

 !MRCI overlap         <13.2||13.2>     1.000000000004

 !MRCI overlap         <14.2||14.2>     1.000000000001

 !MRCI overlap         <15.2||15.2>     1.000000000012

 !MRCI overlap         <16.2||16.2>     0.999999999994

 !MRCI overlap         <17.2||17.2>     1.000000000002

 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5302.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 0.5
 Symmetry of ket wavefunction:            2   S= 1.5  MS= 1.5


 !MRCI expec       <1.2|ECPLSY|1.2>     0.000000000000

 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 1.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <1.2|ECPLSY|1.2>    -0.000000000124
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|2.2>     0.000000000361
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|3.2>    -0.000000007194
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|4.2>    -0.000000000574
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|5.2>    -0.000000000063
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|6.2>    -0.009574374025
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|7.2>    -0.001451063861
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|8.2>    -0.000360302634
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|9.2>    -0.000000000012
 !MRCI LS_I-I(ECP <1.2|ECPLSY|10.2>    -0.000000018732
 !MRCI LS_I-I(ECP <1.2|ECPLSY|11.2>     0.000000001547
 !MRCI LS_I-I(ECP <1.2|ECPLSY|12.2>     0.000000000169
 !MRCI LS_I-I(ECP <1.2|ECPLSY|13.2>    -0.000000000397
 !MRCI LS_I-I(ECP <1.2|ECPLSY|14.2>     0.000000000336
 !MRCI LS_I-I(ECP <1.2|ECPLSY|15.2>    -0.001735444944
 !MRCI LS_I-I(ECP <1.2|ECPLSY|16.2>    -0.001917331932
 !MRCI LS_I-I(ECP <1.2|ECPLSY|17.2>     0.000010297352

 !MRCI expec       <1.2|ECPLSY|1.2>     0.000000000006
 !MRCI trans       <1.2|ECPLSY|2.2>     0.000000000189
 !MRCI trans       <1.2|ECPLSY|3.2>     0.000000002998
 !MRCI trans       <1.2|ECPLSY|4.2>     0.000000000506
 !MRCI trans       <1.2|ECPLSY|5.2>     0.000000000116
 !MRCI trans       <1.2|ECPLSY|6.2>    -0.009544865352
 !MRCI trans       <1.2|ECPLSY|7.2>    -0.001446590971
 !MRCI trans       <1.2|ECPLSY|8.2>    -0.000359191951
 !MRCI trans       <1.2|ECPLSY|9.2>     0.000000000010
 !MRCI trans      <1.2|ECPLSY|10.2>    -0.000000028297
 !MRCI trans      <1.2|ECPLSY|11.2>     0.000000001525
 !MRCI trans      <1.2|ECPLSY|12.2>     0.000000000811
 !MRCI trans      <1.2|ECPLSY|13.2>    -0.000000000335
 !MRCI trans      <1.2|ECPLSY|14.2>     0.000000000342
 !MRCI trans      <1.2|ECPLSY|15.2>    -0.001694436646
 !MRCI trans      <1.2|ECPLSY|16.2>    -0.001872019631
 !MRCI trans      <1.2|ECPLSY|17.2>     0.000010053909

 Bra-wavefunction restored from record   5102.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 0.5  MS=-0.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <2.2|ECPLSY|1.2>    -0.000000739901
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|1.2>     0.000026587266
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|1.2>     0.000002085677
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|1.2>     0.000001205444
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|1.2>    -0.006310106902
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|1.2>    -0.001021248775
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|1.2>     0.000039160200
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|1.2>     0.000000000235
 !MRCI LS_I-I(ECP <10.2|ECPLSY|1.2>     0.000566083326
 !MRCI LS_I-I(ECP <11.2|ECPLSY|1.2>     0.000011316617
 !MRCI LS_I-I(ECP <12.2|ECPLSY|1.2>    -0.000030313428
 !MRCI LS_I-I(ECP <13.2|ECPLSY|1.2>    -0.000009480815
 !MRCI LS_I-I(ECP <14.2|ECPLSY|1.2>    -0.000018276633
 !MRCI LS_I-I(ECP <15.2|ECPLSY|1.2>    -0.000236159280
 !MRCI LS_I-I(ECP <16.2|ECPLSY|1.2>    -0.000254870863
 !MRCI LS_I-I(ECP <17.2|ECPLSY|1.2>    -0.000013531244
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|2.2>     0.000000739901
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|2.2>    -0.000000743308
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|2.2>    -0.000005167034
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|2.2>     0.000022048475
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|2.2>    -0.000005235825
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|2.2>     0.000176268215
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|2.2>     0.006847072813
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|2.2>    -0.000000000436
 !MRCI LS_I-I(ECP <10.2|ECPLSY|2.2>    -0.000019520534
 !MRCI LS_I-I(ECP <11.2|ECPLSY|2.2>    -0.000014233681
 !MRCI LS_I-I(ECP <12.2|ECPLSY|2.2>    -0.000005968584
 !MRCI LS_I-I(ECP <13.2|ECPLSY|2.2>    -0.000051675906
 !MRCI LS_I-I(ECP <14.2|ECPLSY|2.2>    -0.000478449694
 !MRCI LS_I-I(ECP <15.2|ECPLSY|2.2>     0.000005772691
 !MRCI LS_I-I(ECP <16.2|ECPLSY|2.2>     0.000013011661
 !MRCI LS_I-I(ECP <17.2|ECPLSY|2.2>    -0.000372302511
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|3.2>    -0.000026587266
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|3.2>     0.000000743308
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|3.2>    -0.000035613511
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|3.2>    -0.000008630720
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|3.2>    -0.000389719982
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|3.2>    -0.000127469882
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|3.2>     0.000118159439
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|3.2>     0.000000012592
 !MRCI LS_I-I(ECP <10.2|ECPLSY|3.2>    -0.000089413835
 !MRCI LS_I-I(ECP <11.2|ECPLSY|3.2>     0.000887988732
 !MRCI LS_I-I(ECP <12.2|ECPLSY|3.2>     0.000017759442
 !MRCI LS_I-I(ECP <13.2|ECPLSY|3.2>    -0.000355876477
 !MRCI LS_I-I(ECP <14.2|ECPLSY|3.2>     0.000039884941
 !MRCI LS_I-I(ECP <15.2|ECPLSY|3.2>    -0.000017537188
 !MRCI LS_I-I(ECP <16.2|ECPLSY|3.2>    -0.000013491785
 !MRCI LS_I-I(ECP <17.2|ECPLSY|3.2>    -0.000007011405
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|4.2>    -0.000002085677
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|4.2>     0.000005167034
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|4.2>     0.000035613511
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|4.2>    -0.000000411159
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|4.2>     0.004159572396
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|4.2>     0.002391458295
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|4.2>     0.000106532817
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|4.2>     0.000000001412
 !MRCI LS_I-I(ECP <10.2|ECPLSY|4.2>     0.000753875257
 !MRCI LS_I-I(ECP <11.2|ECPLSY|4.2>     0.000089514705
 !MRCI LS_I-I(ECP <12.2|ECPLSY|4.2>     0.000090867674
 !MRCI LS_I-I(ECP <13.2|ECPLSY|4.2>    -0.000040689375
 !MRCI LS_I-I(ECP <14.2|ECPLSY|4.2>     0.000004833088
 !MRCI LS_I-I(ECP <15.2|ECPLSY|4.2>     0.000233489921
 !MRCI LS_I-I(ECP <16.2|ECPLSY|4.2>     0.000116742002
 !MRCI LS_I-I(ECP <17.2|ECPLSY|4.2>    -0.000001273917
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|5.2>    -0.000001205444
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|5.2>    -0.000022048475
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|5.2>     0.000008630720
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|5.2>     0.000000411159
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|5.2>     0.002220443168
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|5.2>    -0.006361765649
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|5.2>     0.000207417261
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|5.2>     0.000000000247
 !MRCI LS_I-I(ECP <10.2|ECPLSY|5.2>     0.000170918233
 !MRCI LS_I-I(ECP <11.2|ECPLSY|5.2>     0.000024715537
 !MRCI LS_I-I(ECP <12.2|ECPLSY|5.2>    -0.000473344683
 !MRCI LS_I-I(ECP <13.2|ECPLSY|5.2>    -0.000005280604
 !MRCI LS_I-I(ECP <14.2|ECPLSY|5.2>     0.000007666504
 !MRCI LS_I-I(ECP <15.2|ECPLSY|5.2>    -0.000221538165
 !MRCI LS_I-I(ECP <16.2|ECPLSY|5.2>     0.000292178761
 !MRCI LS_I-I(ECP <17.2|ECPLSY|5.2>     0.000004494138
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|6.2>     0.006310106902
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|6.2>     0.000005235825
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|6.2>     0.000389719982
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|6.2>    -0.004159572396
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|6.2>    -0.002220443168
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|6.2>    -0.000000114453
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|6.2>     0.000000457425
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|6.2>     0.000494389395
 !MRCI LS_I-I(ECP <10.2|ECPLSY|6.2>     0.000000834982
 !MRCI LS_I-I(ECP <11.2|ECPLSY|6.2>     0.000099155681
 !MRCI LS_I-I(ECP <12.2|ECPLSY|6.2>    -0.000007400754
 !MRCI LS_I-I(ECP <13.2|ECPLSY|6.2>     0.000238733150
 !MRCI LS_I-I(ECP <14.2|ECPLSY|6.2>    -0.000063297069
 !MRCI LS_I-I(ECP <15.2|ECPLSY|6.2>    -0.000016238154
 !MRCI LS_I-I(ECP <16.2|ECPLSY|6.2>     0.000014291014
 !MRCI LS_I-I(ECP <17.2|ECPLSY|6.2>    -0.000075751980
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|7.2>     0.001021248775
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|7.2>    -0.000176268215
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|7.2>     0.000127469882
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|7.2>    -0.002391458295
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|7.2>     0.006361765649
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|7.2>     0.000000114453
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|7.2>    -0.000003015865
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|7.2>     0.000074928360
 !MRCI LS_I-I(ECP <10.2|ECPLSY|7.2>     0.000000572811
 !MRCI LS_I-I(ECP <11.2|ECPLSY|7.2>     0.000013426352
 !MRCI LS_I-I(ECP <12.2|ECPLSY|7.2>     0.000007991792
 !MRCI LS_I-I(ECP <13.2|ECPLSY|7.2>     0.000064680011
 !MRCI LS_I-I(ECP <14.2|ECPLSY|7.2>     0.000222397015
 !MRCI LS_I-I(ECP <15.2|ECPLSY|7.2>     0.000013288707
 !MRCI LS_I-I(ECP <16.2|ECPLSY|7.2>    -0.000009317921
 !MRCI LS_I-I(ECP <17.2|ECPLSY|7.2>     0.000504579920
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|8.2>    -0.000039160200
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|8.2>    -0.006847072813
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|8.2>    -0.000118159439
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|8.2>    -0.000106532817
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|8.2>    -0.000207417261
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|8.2>    -0.000000457425
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|8.2>     0.000003015865
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|8.2>     0.000018604926
 !MRCI LS_I-I(ECP <10.2|ECPLSY|8.2>     0.000010344056
 !MRCI LS_I-I(ECP <11.2|ECPLSY|8.2>    -0.000001264730
 !MRCI LS_I-I(ECP <12.2|ECPLSY|8.2>     0.000230739766
 !MRCI LS_I-I(ECP <13.2|ECPLSY|8.2>     0.000007723066
 !MRCI LS_I-I(ECP <14.2|ECPLSY|8.2>    -0.000010042258
 !MRCI LS_I-I(ECP <15.2|ECPLSY|8.2>     0.000377981514
 !MRCI LS_I-I(ECP <16.2|ECPLSY|8.2>    -0.000342227324
 !MRCI LS_I-I(ECP <17.2|ECPLSY|8.2>    -0.000019150817
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|9.2>    -0.000000000235
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|9.2>     0.000000000436
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|9.2>    -0.000000012592
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|9.2>    -0.000000001412
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|9.2>    -0.000000000247
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|9.2>    -0.000494389395
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|9.2>    -0.000074928360
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|9.2>    -0.000018604926
 !MRCI LS_I-I(ECP <10.2|ECPLSY|9.2>    -0.000000077208
 !MRCI LS_I-I(ECP <11.2|ECPLSY|9.2>     0.000000003128
 !MRCI LS_I-I(ECP <12.2|ECPLSY|9.2>     0.000000003447
 !MRCI LS_I-I(ECP <13.2|ECPLSY|9.2>    -0.000000000390
 !MRCI LS_I-I(ECP <14.2|ECPLSY|9.2>     0.000000000927
 !MRCI LS_I-I(ECP <15.2|ECPLSY|9.2>    -0.003237113941
 !MRCI LS_I-I(ECP <16.2|ECPLSY|9.2>    -0.003576385204
 !MRCI LS_I-I(ECP <17.2|ECPLSY|9.2>     0.000019207414
 !MRCI LS_I-I(ECP <1.2|ECPLSY|10.2>    -0.000566083326
 !MRCI LS_I-I(ECP <2.2|ECPLSY|10.2>     0.000019520534
 !MRCI LS_I-I(ECP <3.2|ECPLSY|10.2>     0.000089413835
 !MRCI LS_I-I(ECP <4.2|ECPLSY|10.2>    -0.000753875257
 !MRCI LS_I-I(ECP <5.2|ECPLSY|10.2>    -0.000170918233
 !MRCI LS_I-I(ECP <6.2|ECPLSY|10.2>    -0.000000834982
 !MRCI LS_I-I(ECP <7.2|ECPLSY|10.2>    -0.000000572811
 !MRCI LS_I-I(ECP <8.2|ECPLSY|10.2>    -0.000010344056
 !MRCI LS_I-I(ECP <9.2|ECPLSY|10.2>     0.000000077208
 !MRCI LS_I-I(EC <11.2|ECPLSY|10.2>     0.004742229999
 !MRCI LS_I-I(EC <12.2|ECPLSY|10.2>     0.000101301132
 !MRCI LS_I-I(EC <13.2|ECPLSY|10.2>    -0.001910843126
 !MRCI LS_I-I(EC <14.2|ECPLSY|10.2>     0.000148495208
 !MRCI LS_I-I(EC <15.2|ECPLSY|10.2>    -0.000005682686
 !MRCI LS_I-I(EC <16.2|ECPLSY|10.2>    -0.000005754969
 !MRCI LS_I-I(EC <17.2|ECPLSY|10.2>     0.000066490269
 !MRCI LS_I-I(ECP <1.2|ECPLSY|11.2>    -0.000011316617
 !MRCI LS_I-I(ECP <2.2|ECPLSY|11.2>     0.000014233681
 !MRCI LS_I-I(ECP <3.2|ECPLSY|11.2>    -0.000887988732
 !MRCI LS_I-I(ECP <4.2|ECPLSY|11.2>    -0.000089514705
 !MRCI LS_I-I(ECP <5.2|ECPLSY|11.2>    -0.000024715537
 !MRCI LS_I-I(ECP <6.2|ECPLSY|11.2>    -0.000099155681
 !MRCI LS_I-I(ECP <7.2|ECPLSY|11.2>    -0.000013426352
 !MRCI LS_I-I(ECP <8.2|ECPLSY|11.2>     0.000001264730
 !MRCI LS_I-I(ECP <9.2|ECPLSY|11.2>    -0.000000003128
 !MRCI LS_I-I(EC <10.2|ECPLSY|11.2>    -0.004742229999
 !MRCI LS_I-I(EC <12.2|ECPLSY|11.2>     0.000196387989
 !MRCI LS_I-I(EC <13.2|ECPLSY|11.2>     0.000029453623
 !MRCI LS_I-I(EC <14.2|ECPLSY|11.2>     0.000053415274
 !MRCI LS_I-I(EC <15.2|ECPLSY|11.2>    -0.000425543495
 !MRCI LS_I-I(EC <16.2|ECPLSY|11.2>    -0.000483534761
 !MRCI LS_I-I(EC <17.2|ECPLSY|11.2>    -0.000029914024
 !MRCI LS_I-I(ECP <1.2|ECPLSY|12.2>     0.000030313428
 !MRCI LS_I-I(ECP <2.2|ECPLSY|12.2>     0.000005968584
 !MRCI LS_I-I(ECP <3.2|ECPLSY|12.2>    -0.000017759442
 !MRCI LS_I-I(ECP <4.2|ECPLSY|12.2>    -0.000090867674
 !MRCI LS_I-I(ECP <5.2|ECPLSY|12.2>     0.000473344683
 !MRCI LS_I-I(ECP <6.2|ECPLSY|12.2>     0.000007400754
 !MRCI LS_I-I(ECP <7.2|ECPLSY|12.2>    -0.000007991792
 !MRCI LS_I-I(ECP <8.2|ECPLSY|12.2>    -0.000230739766
 !MRCI LS_I-I(ECP <9.2|ECPLSY|12.2>    -0.000000003447
 !MRCI LS_I-I(EC <10.2|ECPLSY|12.2>    -0.000101301132
 !MRCI LS_I-I(EC <11.2|ECPLSY|12.2>    -0.000196387989
 !MRCI LS_I-I(EC <13.2|ECPLSY|12.2>    -0.000226675640
 !MRCI LS_I-I(EC <14.2|ECPLSY|12.2>    -0.002549290562
 !MRCI LS_I-I(EC <15.2|ECPLSY|12.2>    -0.000008306451
 !MRCI LS_I-I(EC <16.2|ECPLSY|12.2>    -0.000005900780
 !MRCI LS_I-I(EC <17.2|ECPLSY|12.2>     0.001488569678
 !MRCI LS_I-I(ECP <1.2|ECPLSY|13.2>     0.000009480815
 !MRCI LS_I-I(ECP <2.2|ECPLSY|13.2>     0.000051675906
 !MRCI LS_I-I(ECP <3.2|ECPLSY|13.2>     0.000355876477
 !MRCI LS_I-I(ECP <4.2|ECPLSY|13.2>     0.000040689375
 !MRCI LS_I-I(ECP <5.2|ECPLSY|13.2>     0.000005280604
 !MRCI LS_I-I(ECP <6.2|ECPLSY|13.2>    -0.000238733150
 !MRCI LS_I-I(ECP <7.2|ECPLSY|13.2>    -0.000064680011
 !MRCI LS_I-I(ECP <8.2|ECPLSY|13.2>    -0.000007723066
 !MRCI LS_I-I(ECP <9.2|ECPLSY|13.2>     0.000000000390
 !MRCI LS_I-I(EC <10.2|ECPLSY|13.2>     0.001910843126
 !MRCI LS_I-I(EC <11.2|ECPLSY|13.2>    -0.000029453623
 !MRCI LS_I-I(EC <12.2|ECPLSY|13.2>     0.000226675640
 !MRCI LS_I-I(EC <14.2|ECPLSY|13.2>     0.000003052667
 !MRCI LS_I-I(EC <15.2|ECPLSY|13.2>    -0.001197937532
 !MRCI LS_I-I(EC <16.2|ECPLSY|13.2>    -0.001052604925
 !MRCI LS_I-I(EC <17.2|ECPLSY|13.2>     0.000003985029
 !MRCI LS_I-I(ECP <1.2|ECPLSY|14.2>     0.000018276633
 !MRCI LS_I-I(ECP <2.2|ECPLSY|14.2>     0.000478449694
 !MRCI LS_I-I(ECP <3.2|ECPLSY|14.2>    -0.000039884941
 !MRCI LS_I-I(ECP <4.2|ECPLSY|14.2>    -0.000004833088
 !MRCI LS_I-I(ECP <5.2|ECPLSY|14.2>    -0.000007666504
 !MRCI LS_I-I(ECP <6.2|ECPLSY|14.2>     0.000063297069
 !MRCI LS_I-I(ECP <7.2|ECPLSY|14.2>    -0.000222397015
 !MRCI LS_I-I(ECP <8.2|ECPLSY|14.2>     0.000010042258
 !MRCI LS_I-I(ECP <9.2|ECPLSY|14.2>    -0.000000000927
 !MRCI LS_I-I(EC <10.2|ECPLSY|14.2>    -0.000148495208
 !MRCI LS_I-I(EC <11.2|ECPLSY|14.2>    -0.000053415274
 !MRCI LS_I-I(EC <12.2|ECPLSY|14.2>     0.002549290562
 !MRCI LS_I-I(EC <13.2|ECPLSY|14.2>    -0.000003052667
 !MRCI LS_I-I(EC <15.2|ECPLSY|14.2>    -0.000968596351
 !MRCI LS_I-I(EC <16.2|ECPLSY|14.2>     0.001134073108
 !MRCI LS_I-I(EC <17.2|ECPLSY|14.2>    -0.000002901134
 !MRCI LS_I-I(ECP <1.2|ECPLSY|15.2>     0.000236159280
 !MRCI LS_I-I(ECP <2.2|ECPLSY|15.2>    -0.000005772691
 !MRCI LS_I-I(ECP <3.2|ECPLSY|15.2>     0.000017537188
 !MRCI LS_I-I(ECP <4.2|ECPLSY|15.2>    -0.000233489921
 !MRCI LS_I-I(ECP <5.2|ECPLSY|15.2>     0.000221538165
 !MRCI LS_I-I(ECP <6.2|ECPLSY|15.2>     0.000016238154
 !MRCI LS_I-I(ECP <7.2|ECPLSY|15.2>    -0.000013288707
 !MRCI LS_I-I(ECP <8.2|ECPLSY|15.2>    -0.000377981514
 !MRCI LS_I-I(ECP <9.2|ECPLSY|15.2>     0.003237113941
 !MRCI LS_I-I(EC <10.2|ECPLSY|15.2>     0.000005682686
 !MRCI LS_I-I(EC <11.2|ECPLSY|15.2>     0.000425543495
 !MRCI LS_I-I(EC <12.2|ECPLSY|15.2>     0.000008306451
 !MRCI LS_I-I(EC <13.2|ECPLSY|15.2>     0.001197937532
 !MRCI LS_I-I(EC <14.2|ECPLSY|15.2>     0.000968596351
 !MRCI LS_I-I(EC <16.2|ECPLSY|15.2>    -0.000007515614
 !MRCI LS_I-I(EC <17.2|ECPLSY|15.2>    -0.001399507370
 !MRCI LS_I-I(ECP <1.2|ECPLSY|16.2>     0.000254870863
 !MRCI LS_I-I(ECP <2.2|ECPLSY|16.2>    -0.000013011661
 !MRCI LS_I-I(ECP <3.2|ECPLSY|16.2>     0.000013491785
 !MRCI LS_I-I(ECP <4.2|ECPLSY|16.2>    -0.000116742002
 !MRCI LS_I-I(ECP <5.2|ECPLSY|16.2>    -0.000292178761
 !MRCI LS_I-I(ECP <6.2|ECPLSY|16.2>    -0.000014291014
 !MRCI LS_I-I(ECP <7.2|ECPLSY|16.2>     0.000009317921
 !MRCI LS_I-I(ECP <8.2|ECPLSY|16.2>     0.000342227324
 !MRCI LS_I-I(ECP <9.2|ECPLSY|16.2>     0.003576385204
 !MRCI LS_I-I(EC <10.2|ECPLSY|16.2>     0.000005754969
 !MRCI LS_I-I(EC <11.2|ECPLSY|16.2>     0.000483534761
 !MRCI LS_I-I(EC <12.2|ECPLSY|16.2>     0.000005900780
 !MRCI LS_I-I(EC <13.2|ECPLSY|16.2>     0.001052604925
 !MRCI LS_I-I(EC <14.2|ECPLSY|16.2>    -0.001134073108
 !MRCI LS_I-I(EC <15.2|ECPLSY|16.2>     0.000007515614
 !MRCI LS_I-I(EC <17.2|ECPLSY|16.2>     0.001266743962
 !MRCI LS_I-I(ECP <1.2|ECPLSY|17.2>     0.000013531244
 !MRCI LS_I-I(ECP <2.2|ECPLSY|17.2>     0.000372302511
 !MRCI LS_I-I(ECP <3.2|ECPLSY|17.2>     0.000007011405
 !MRCI LS_I-I(ECP <4.2|ECPLSY|17.2>     0.000001273917
 !MRCI LS_I-I(ECP <5.2|ECPLSY|17.2>    -0.000004494138
 !MRCI LS_I-I(ECP <6.2|ECPLSY|17.2>     0.000075751980
 !MRCI LS_I-I(ECP <7.2|ECPLSY|17.2>    -0.000504579920
 !MRCI LS_I-I(ECP <8.2|ECPLSY|17.2>     0.000019150817
 !MRCI LS_I-I(ECP <9.2|ECPLSY|17.2>    -0.000019207414
 !MRCI LS_I-I(EC <10.2|ECPLSY|17.2>    -0.000066490269
 !MRCI LS_I-I(EC <11.2|ECPLSY|17.2>     0.000029914024
 !MRCI LS_I-I(EC <12.2|ECPLSY|17.2>    -0.001488569678
 !MRCI LS_I-I(EC <13.2|ECPLSY|17.2>    -0.000003985029
 !MRCI LS_I-I(EC <14.2|ECPLSY|17.2>     0.000002901134
 !MRCI LS_I-I(EC <15.2|ECPLSY|17.2>     0.001399507370
 !MRCI LS_I-I(EC <16.2|ECPLSY|17.2>    -0.001266743962

 !MRCI expec       <1.2|ECPLSY|1.2>    -5.720402976965
 !MRCI trans       <2.2|ECPLSY|1.2>     3.425444308900
 !MRCI trans       <3.2|ECPLSY|1.2>    10.449681274690
 !MRCI trans       <4.2|ECPLSY|1.2>    16.216658185311
 !MRCI trans       <5.2|ECPLSY|1.2>     3.913044868496
 !MRCI trans       <6.2|ECPLSY|1.2>     9.809963863077
 !MRCI trans       <7.2|ECPLSY|1.2>    -1.620091275707
 !MRCI trans       <8.2|ECPLSY|1.2>     0.024002564767
 !MRCI trans       <9.2|ECPLSY|1.2>     1.847306953203
 !MRCI trans      <10.2|ECPLSY|1.2>    -0.005160451004
 !MRCI trans      <11.2|ECPLSY|1.2>    -0.716346416693
 !MRCI trans      <12.2|ECPLSY|1.2>     0.875999221847
 !MRCI trans      <13.2|ECPLSY|1.2>    -2.678209733689
 !MRCI trans      <14.2|ECPLSY|1.2>   -35.772767505487
 !MRCI trans      <15.2|ECPLSY|1.2>    -0.551663539696
 !MRCI trans      <16.2|ECPLSY|1.2>     0.554997874863
 !MRCI trans      <17.2|ECPLSY|1.2>     4.370898197325
 !MRCI expec       <2.2|ECPLSY|2.2>     2.236371017853
 !MRCI trans       <3.2|ECPLSY|2.2>    -1.063900927985
 !MRCI trans       <4.2|ECPLSY|2.2>     2.683407355467
 !MRCI trans       <5.2|ECPLSY|2.2>     2.955567287906
 !MRCI trans       <6.2|ECPLSY|2.2>     0.704634215382
 !MRCI trans       <7.2|ECPLSY|2.2>    -1.932112610849
 !MRCI trans       <8.2|ECPLSY|2.2>    -3.507412243881
 !MRCI trans       <9.2|ECPLSY|2.2>     0.048578315755
 !MRCI trans      <10.2|ECPLSY|2.2>     0.725231318568
 !MRCI trans      <11.2|ECPLSY|2.2>    -0.367613670417
 !MRCI trans      <12.2|ECPLSY|2.2>    -0.218354330671
 !MRCI trans      <13.2|ECPLSY|2.2>    -0.716188590773
 !MRCI trans      <14.2|ECPLSY|2.2>    -6.920572021475
 !MRCI trans      <15.2|ECPLSY|2.2>    -0.592884595397
 !MRCI trans      <16.2|ECPLSY|2.2>     0.453756214787
 !MRCI trans      <17.2|ECPLSY|2.2>     0.762975418886
 !MRCI expec       <3.2|ECPLSY|3.2>    -1.846046490223
 !MRCI trans       <4.2|ECPLSY|3.2>   -14.175928369092
 !MRCI trans       <5.2|ECPLSY|3.2>    -4.664282520915
 !MRCI trans       <6.2|ECPLSY|3.2>    -4.278541412920
 !MRCI trans       <7.2|ECPLSY|3.2>    -2.539801161148
 !MRCI trans       <8.2|ECPLSY|3.2>     1.113476866958
 !MRCI trans       <9.2|ECPLSY|3.2>    -0.374983379872
 !MRCI trans      <10.2|ECPLSY|3.2>     0.963151208702
 !MRCI trans      <11.2|ECPLSY|3.2>     1.138265045688
 !MRCI trans      <12.2|ECPLSY|3.2>     1.299402654685
 !MRCI trans      <13.2|ECPLSY|3.2>    -3.039109379742
 !MRCI trans      <14.2|ECPLSY|3.2>    -3.789477198359
 !MRCI trans      <15.2|ECPLSY|3.2>    -1.971098702493
 !MRCI trans      <16.2|ECPLSY|3.2>     0.570157763611
 !MRCI trans      <17.2|ECPLSY|3.2>     0.138009206608
 !MRCI expec       <4.2|ECPLSY|4.2>    -9.551094702642
 !MRCI trans       <5.2|ECPLSY|4.2>    -3.206403456465
 !MRCI trans       <6.2|ECPLSY|4.2>     6.980281590975
 !MRCI trans       <7.2|ECPLSY|4.2>     1.450299582141
 !MRCI trans       <8.2|ECPLSY|4.2>     2.962496474826
 !MRCI trans       <9.2|ECPLSY|4.2>    -1.611311840058
 !MRCI trans      <10.2|ECPLSY|4.2>    -0.517877672525
 !MRCI trans      <11.2|ECPLSY|4.2>     0.746067173466
 !MRCI trans      <12.2|ECPLSY|4.2>     1.712410485217
 !MRCI trans      <13.2|ECPLSY|4.2>     2.013012906658
 !MRCI trans      <14.2|ECPLSY|4.2>    22.078269658449
 !MRCI trans      <15.2|ECPLSY|4.2>     0.360071953821
 !MRCI trans      <16.2|ECPLSY|4.2>    -0.141909118159
 !MRCI trans      <17.2|ECPLSY|4.2>    -3.927679295029
 !MRCI expec       <5.2|ECPLSY|5.2>    -0.406801175332
 !MRCI trans       <6.2|ECPLSY|5.2>     1.638744563545
 !MRCI trans       <7.2|ECPLSY|5.2>     5.422747847694
 !MRCI trans       <8.2|ECPLSY|5.2>     0.651901417694
 !MRCI trans       <9.2|ECPLSY|5.2>     0.200842522092
 !MRCI trans      <10.2|ECPLSY|5.2>     0.430072361461
 !MRCI trans      <11.2|ECPLSY|5.2>    -0.251154618085
 !MRCI trans      <12.2|ECPLSY|5.2>     2.499983155599
 !MRCI trans      <13.2|ECPLSY|5.2>     1.596984226054
 !MRCI trans      <14.2|ECPLSY|5.2>     6.720784874272
 !MRCI trans      <15.2|ECPLSY|5.2>     0.721357236788
 !MRCI trans      <16.2|ECPLSY|5.2>     1.435890383697
 !MRCI trans      <17.2|ECPLSY|5.2>    -1.035453194173
 !MRCI expec       <6.2|ECPLSY|6.2>     2.212332618333
 !MRCI trans       <7.2|ECPLSY|6.2>     3.178536493933
 !MRCI trans       <8.2|ECPLSY|6.2>    -1.856424559645
 !MRCI trans       <9.2|ECPLSY|6.2>     0.222641158087
 !MRCI trans      <10.2|ECPLSY|6.2>    -1.382466188662
 !MRCI trans      <11.2|ECPLSY|6.2>    -1.327222670057
 !MRCI trans      <12.2|ECPLSY|6.2>     4.268594843138
 !MRCI trans      <13.2|ECPLSY|6.2>     2.582421892055
 !MRCI trans      <14.2|ECPLSY|6.2>     0.258065244233
 !MRCI trans      <15.2|ECPLSY|6.2>    -1.571456393949
 !MRCI trans      <16.2|ECPLSY|6.2>     3.798872027024
 !MRCI trans      <17.2|ECPLSY|6.2>     0.572284485246
 !MRCI expec       <7.2|ECPLSY|7.2>     0.717912634493
 !MRCI trans       <8.2|ECPLSY|7.2>     0.900932484328
 !MRCI trans       <9.2|ECPLSY|7.2>    -0.991063617928
 !MRCI trans      <10.2|ECPLSY|7.2>     0.813224825726
 !MRCI trans      <11.2|ECPLSY|7.2>     0.728911287086
 !MRCI trans      <12.2|ECPLSY|7.2>     0.127099730074
 !MRCI trans      <13.2|ECPLSY|7.2>     0.276990534822
 !MRCI trans      <14.2|ECPLSY|7.2>    10.415823515825
 !MRCI trans      <15.2|ECPLSY|7.2>    -1.429205456963
 !MRCI trans      <16.2|ECPLSY|7.2>    -0.394163093344
 !MRCI trans      <17.2|ECPLSY|7.2>    -1.166631443779
 !MRCI expec       <8.2|ECPLSY|8.2>    -0.148828521738
 !MRCI trans       <9.2|ECPLSY|8.2>    -0.143054397587
 !MRCI trans      <10.2|ECPLSY|8.2>     0.572558623006
 !MRCI trans      <11.2|ECPLSY|8.2>    -0.614035510589
 !MRCI trans      <12.2|ECPLSY|8.2>     4.998462237828
 !MRCI trans      <13.2|ECPLSY|8.2>     1.582524157182
 !MRCI trans      <14.2|ECPLSY|8.2>     0.300898663824
 !MRCI trans      <15.2|ECPLSY|8.2>     0.576308515542
 !MRCI trans      <16.2|ECPLSY|8.2>     1.444595655563
 !MRCI trans      <17.2|ECPLSY|8.2>     0.203006972238
 !MRCI expec       <9.2|ECPLSY|9.2>    14.455115714862
 !MRCI trans      <10.2|ECPLSY|9.2>   -18.948756855477
 !MRCI trans      <11.2|ECPLSY|9.2>    -3.822620595214
 !MRCI trans      <12.2|ECPLSY|9.2>   -15.722180384359
 !MRCI trans      <13.2|ECPLSY|9.2>   -24.045867323844
 !MRCI trans      <14.2|ECPLSY|9.2>  -218.958643923413
 !MRCI trans      <15.2|ECPLSY|9.2>     1.455193634587
 !MRCI trans      <16.2|ECPLSY|9.2>    12.130338769772
 !MRCI trans      <17.2|ECPLSY|9.2>    35.534947205441
 !MRCI expec     <10.2|ECPLSY|10.2>     4.154903629410
 !MRCI trans     <11.2|ECPLSY|10.2>    -2.722277867030
 !MRCI trans     <12.2|ECPLSY|10.2>     8.774905720675
 !MRCI trans     <13.2|ECPLSY|10.2>     6.424196445430
 !MRCI trans     <14.2|ECPLSY|10.2>    -7.074577342358
 !MRCI trans     <15.2|ECPLSY|10.2>   -11.182896064494
 !MRCI trans     <16.2|ECPLSY|10.2>     1.681087202706
 !MRCI trans     <17.2|ECPLSY|10.2>    -1.494076808925
 !MRCI expec     <11.2|ECPLSY|11.2>     4.679192952031
 !MRCI trans     <12.2|ECPLSY|11.2>    12.926589698332
 !MRCI trans     <13.2|ECPLSY|11.2>    20.965278693812
 !MRCI trans     <14.2|ECPLSY|11.2>   221.547780586553
 !MRCI trans     <15.2|ECPLSY|11.2>    -0.226877416988
 !MRCI trans     <16.2|ECPLSY|11.2>    -7.591251179217
 !MRCI trans     <17.2|ECPLSY|11.2>   -36.285880774184
 !MRCI expec     <12.2|ECPLSY|12.2>     2.196099299901
 !MRCI trans     <13.2|ECPLSY|12.2>    -2.921069661986
 !MRCI trans     <14.2|ECPLSY|12.2>   -21.273257944613
 !MRCI trans     <15.2|ECPLSY|12.2>    -2.744364247054
 !MRCI trans     <16.2|ECPLSY|12.2>    -2.575388047207
 !MRCI trans     <17.2|ECPLSY|12.2>     0.990237859938
 !MRCI expec     <13.2|ECPLSY|13.2>   -26.613542059655
 !MRCI trans     <14.2|ECPLSY|13.2>  -348.972785101430
 !MRCI trans     <15.2|ECPLSY|13.2>    21.605680084756
 !MRCI trans     <16.2|ECPLSY|13.2>     1.968637001362
 !MRCI trans     <17.2|ECPLSY|13.2>    41.296827766521
 !MRCI expec     <14.2|ECPLSY|14.2>    45.075162325743
 !MRCI trans     <15.2|ECPLSY|14.2>     7.243652236036
 !MRCI trans     <16.2|ECPLSY|14.2>   -11.357073035415
 !MRCI trans     <17.2|ECPLSY|14.2>    -1.682504841044
 !MRCI expec     <15.2|ECPLSY|15.2>    10.963893150804
 !MRCI trans     <16.2|ECPLSY|15.2>    -6.930123198317
 !MRCI trans     <17.2|ECPLSY|15.2>     4.644945241330
 !MRCI expec     <16.2|ECPLSY|16.2>   -18.047676521839
 !MRCI trans     <17.2|ECPLSY|16.2>    -5.467499883841
 !MRCI expec     <17.2|ECPLSY|17.2>    -0.862135271449

 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5302.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 1.5
 Symmetry of ket wavefunction:            2   S= 1.5  MS= 1.5


 !MRCI expec       <1.2|ECPLSZ|1.2>     0.000000000000i

 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 0.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|1.2>     0.000000000050i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|2.2>    -0.000000000270i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|3.2>     0.000000000633i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|4.2>     0.000000002825i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|5.2>    -0.000000008449i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|6.2>    -0.000480133757i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|7.2>     0.000393907624i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|8.2>     0.011172277344i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|9.2>    -0.000000000403i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|10.2>     0.000000000719i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|11.2>     0.000000000464i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|12.2>    -0.000000000644i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|13.2>    -0.000000003763i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|14.2>    -0.000000049252i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|15.2>     0.000000224888i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|16.2>    -0.000016241329i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|17.2>    -0.002986151929i

 !MRCI expec       <1.2|ECPLSZ|1.2>     0.000000000075i
 !MRCI trans       <1.2|ECPLSZ|2.2>    -0.000000000221i
 !MRCI trans       <1.2|ECPLSZ|3.2>     0.000000000672i
 !MRCI trans       <1.2|ECPLSZ|4.2>     0.000000002008i
 !MRCI trans       <1.2|ECPLSZ|5.2>    -0.000000005347i
 !MRCI trans       <1.2|ECPLSZ|6.2>    -0.000478653835i
 !MRCI trans       <1.2|ECPLSZ|7.2>     0.000392693467i
 !MRCI trans       <1.2|ECPLSZ|8.2>     0.011137833651i
 !MRCI trans       <1.2|ECPLSZ|9.2>    -0.000000000449i
 !MRCI trans      <1.2|ECPLSZ|10.2>     0.000000000719i
 !MRCI trans      <1.2|ECPLSZ|11.2>     0.000000000458i
 !MRCI trans      <1.2|ECPLSZ|12.2>    -0.000000000619i
 !MRCI trans      <1.2|ECPLSZ|13.2>    -0.000000003625i
 !MRCI trans      <1.2|ECPLSZ|14.2>    -0.000000047463i
 !MRCI trans      <1.2|ECPLSZ|15.2>     0.000000219496i
 !MRCI trans      <1.2|ECPLSZ|16.2>    -0.000015858359i
 !MRCI trans      <1.2|ECPLSZ|17.2>    -0.002915714429i

 Bra-wavefunction restored from record   5102.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 0.5  MS= 0.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|1.2>    -0.000000631531i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|1.2>     0.000000743349i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|1.2>     0.000004322879i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|1.2>    -0.000017843953i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|1.2>     0.000025179581i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|1.2>    -0.000200692168i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|1.2>    -0.007227730706i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|1.2>     0.000000000129i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|1.2>     0.000018928068i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|1.2>    -0.000000741022i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|1.2>    -0.000008434498i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|1.2>     0.000037068571i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|1.2>     0.000388350331i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|1.2>    -0.000006164775i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|1.2>    -0.000012406096i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|1.2>     0.000393062308i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|2.2>     0.000000631531i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|2.2>     0.000022596871i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|2.2>     0.000001529177i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|2.2>     0.000001095760i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|2.2>    -0.006753084796i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|2.2>    -0.001146240290i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|2.2>     0.000024632686i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|2.2>    -0.000000000002i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|2.2>     0.000480941144i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|2.2>     0.000000825577i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|2.2>    -0.000012090414i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|2.2>    -0.000019020947i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|2.2>    -0.000017381157i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|2.2>    -0.000255145231i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|2.2>    -0.000271205483i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|2.2>    -0.000013449282i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|3.2>    -0.000000743349i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|3.2>    -0.000022596871i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|3.2>     0.000000630498i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|3.2>    -0.000003727338i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|3.2>    -0.001157027888i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|3.2>     0.006724745669i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|3.2>     0.000160894041i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|3.2>    -0.000000000042i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|3.2>    -0.000012230145i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|3.2>     0.000011330728i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|3.2>    -0.000478701604i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|3.2>     0.000001089149i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|3.2>     0.000087153775i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|3.2>     0.000269875319i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|3.2>    -0.000253950223i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|3.2>    -0.000022916705i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|4.2>    -0.000004322879i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|4.2>    -0.000001529177i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|4.2>    -0.000000630498i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|4.2>     0.000041277482i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|4.2>     0.000013795045i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|4.2>     0.000602197662i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|4.2>    -0.003116509100i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|4.2>     0.000000000192i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|4.2>    -0.000000658594i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|4.2>    -0.000028014190i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|4.2>    -0.000049255753i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|4.2>     0.000137568929i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|4.2>    -0.000869617490i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|4.2>     0.000028640817i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|4.2>    -0.000025905731i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|4.2>     0.000168303154i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|5.2>     0.000017843953i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|5.2>    -0.000001095760i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|5.2>     0.000003727338i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|5.2>    -0.000041277482i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|5.2>     0.000125400057i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|5.2>     0.000105049888i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|5.2>    -0.000739449941i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|5.2>    -0.000000002668i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|5.2>    -0.000011349309i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|5.2>     0.000131403444i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|5.2>    -0.000005558267i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|5.2>    -0.000942940759i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|5.2>    -0.000112676884i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|5.2>     0.000008755955i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|5.2>     0.000000518374i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|5.2>     0.000040254378i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|6.2>    -0.000025179581i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|6.2>     0.006753084796i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|6.2>     0.001157027888i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|6.2>    -0.000013795045i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|6.2>    -0.000125400057i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|6.2>     0.000003071668i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|6.2>    -0.000000108531i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|6.2>     0.000021470941i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|6.2>    -0.000044474147i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|6.2>    -0.000006275067i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|6.2>    -0.000226927501i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|6.2>    -0.000001211541i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|6.2>    -0.000000394238i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|6.2>     0.000424810207i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|6.2>    -0.000282434175i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|6.2>     0.000001568059i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|7.2>     0.000200692168i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|7.2>     0.001146240290i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|7.2>    -0.006724745669i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|7.2>    -0.000602197662i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|7.2>    -0.000105049888i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|7.2>    -0.000003071668i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|7.2>    -0.000000130132i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|7.2>    -0.000017615014i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|7.2>     0.000226776124i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|7.2>     0.000009497698i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|7.2>    -0.000044589645i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|7.2>     0.000000482497i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|7.2>    -0.000000118290i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|7.2>    -0.000281880191i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|7.2>    -0.000425359351i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|7.2>     0.000002292233i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|8.2>     0.007227730706i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|8.2>    -0.000024632686i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|8.2>    -0.000160894041i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|8.2>     0.003116509100i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|8.2>     0.000739449941i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|8.2>     0.000000108531i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|8.2>     0.000000130132i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|8.2>    -0.000499610064i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|8.2>    -0.000008851653i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|8.2>     0.000264178318i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|8.2>    -0.000002396473i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|8.2>     0.000037137487i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|8.2>    -0.000002984367i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|8.2>     0.000028194965i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|8.2>     0.000002859481i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|8.2>    -0.000000013265i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|9.2>    -0.000000000129i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|9.2>     0.000000000002i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|9.2>     0.000000000042i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|9.2>    -0.000000000192i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|9.2>     0.000000002668i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|9.2>    -0.000021470941i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|9.2>     0.000017615014i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|9.2>     0.000499610064i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|9.2>     0.000000001061i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|9.2>    -0.000000000171i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|9.2>    -0.000000001058i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|9.2>    -0.000000004210i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|9.2>    -0.000000081620i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|9.2>     0.000000363243i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|9.2>    -0.000026235966i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|9.2>    -0.004823785518i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|10.2>    -0.000018928068i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|10.2>    -0.000480941144i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|10.2>     0.000012230145i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|10.2>     0.000000658594i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|10.2>     0.000011349309i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|10.2>     0.000044474147i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|10.2>    -0.000226776124i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|10.2>     0.000008851653i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|10.2>    -0.000000001061i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|10.2>     0.000055553476i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|10.2>    -0.002559219260i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|10.2>     0.000000674903i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|10.2>    -0.000022634919i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|10.2>    -0.001059210979i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|10.2>     0.001048372881i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|10.2>     0.000001009004i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|11.2>     0.000000741022i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|11.2>    -0.000000825577i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|11.2>    -0.000011330728i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|11.2>     0.000028014190i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|11.2>    -0.000131403444i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|11.2>     0.000006275067i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|11.2>    -0.000009497698i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|11.2>    -0.000264178318i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|11.2>     0.000000000171i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|11.2>    -0.000055553476i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|11.2>     0.000007280885i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|11.2>     0.000057339479i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|11.2>     0.000712238069i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|11.2>    -0.000019212679i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|11.2>    -0.000017308342i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|11.2>     0.001703784725i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|12.2>     0.000008434498i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|12.2>     0.000012090414i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|12.2>     0.000478701604i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|12.2>     0.000049255753i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|12.2>     0.000005558267i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|12.2>     0.000226927501i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|12.2>     0.000044589645i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|12.2>     0.000002396473i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|12.2>     0.000000001058i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|12.2>     0.002559219260i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|12.2>    -0.000007280885i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|12.2>    -0.000019839416i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|12.2>     0.000011662738i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|12.2>     0.001048212105i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|12.2>     0.001059092368i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|12.2>     0.000031533633i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|13.2>    -0.000037068571i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|13.2>     0.000019020947i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|13.2>    -0.000001089149i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|13.2>    -0.000137568929i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|13.2>     0.000942940759i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|13.2>     0.000001211541i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|13.2>    -0.000000482497i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|13.2>    -0.000037137487i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|13.2>     0.000000004210i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|13.2>    -0.000000674903i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|13.2>    -0.000057339479i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|13.2>     0.000019839416i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|13.2>    -0.005069583188i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|13.2>     0.000003049618i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|13.2>    -0.000003699832i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|13.2>     0.000239503726i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|14.2>    -0.000388350331i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|14.2>     0.000017381157i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|14.2>    -0.000087153775i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|14.2>     0.000869617490i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|14.2>     0.000112676884i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|14.2>     0.000000394238i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|14.2>     0.000000118290i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|14.2>     0.000002984367i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|14.2>     0.000000081620i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|14.2>     0.000022634919i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|14.2>    -0.000712238069i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|14.2>    -0.000011662738i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|14.2>     0.005069583188i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|14.2>     0.000001934050i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|14.2>     0.000002651522i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|14.2>    -0.000019142590i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|15.2>     0.000006164775i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|15.2>     0.000255145231i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|15.2>    -0.000269875319i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|15.2>    -0.000028640817i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|15.2>    -0.000008755955i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|15.2>    -0.000424810207i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|15.2>     0.000281880191i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|15.2>    -0.000028194965i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|15.2>    -0.000000363243i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|15.2>     0.001059210979i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|15.2>     0.000019212679i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|15.2>    -0.001048212105i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|15.2>    -0.000003049618i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|15.2>    -0.000001934050i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|15.2>     0.001887594860i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|15.2>    -0.000010265249i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|16.2>     0.000012406096i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|16.2>     0.000271205483i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|16.2>     0.000253950223i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|16.2>     0.000025905731i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|16.2>    -0.000000518374i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|16.2>     0.000282434175i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|16.2>     0.000425359351i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|16.2>    -0.000002859481i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|16.2>     0.000026235966i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|16.2>    -0.001048372881i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|16.2>     0.000017308342i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|16.2>    -0.001059092368i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|16.2>     0.000003699832i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|16.2>    -0.000002651522i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|16.2>    -0.001887594860i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|16.2>    -0.000000141301i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|17.2>    -0.000393062308i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|17.2>     0.000013449282i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|17.2>     0.000022916705i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|17.2>    -0.000168303154i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|17.2>    -0.000040254378i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|17.2>    -0.000001568059i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|17.2>    -0.000002292233i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|17.2>     0.000000013265i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|17.2>     0.004823785518i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|17.2>    -0.000001009004i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|17.2>    -0.001703784725i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|17.2>    -0.000031533633i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|17.2>    -0.000239503726i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|17.2>     0.000019142590i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|17.2>     0.000010265249i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|17.2>     0.000000141301i

 !MRCI expec       <1.2|ECPLSZ|1.2>    -3.012992173965i
 !MRCI trans       <2.2|ECPLSZ|1.2>   -11.225855311129i
 !MRCI trans       <3.2|ECPLSZ|1.2>     0.148520909797i
 !MRCI trans       <4.2|ECPLSZ|1.2>    -0.326226861011i
 !MRCI trans       <5.2|ECPLSZ|1.2>     1.684301446597i
 !MRCI trans       <6.2|ECPLSZ|1.2>    -0.923153028071i
 !MRCI trans       <7.2|ECPLSZ|1.2>    -9.604771933058i
 !MRCI trans       <8.2|ECPLSZ|1.2>    -0.594901061396i
 !MRCI trans       <9.2|ECPLSZ|1.2>     0.734912669898i
 !MRCI trans      <10.2|ECPLSZ|1.2>   -20.213188444194i
 !MRCI trans      <11.2|ECPLSZ|1.2>    -0.333624743536i
 !MRCI trans      <12.2|ECPLSZ|1.2>     0.523256377863i
 !MRCI trans      <13.2|ECPLSZ|1.2>    -0.447895669318i
 !MRCI trans      <14.2|ECPLSZ|1.2>     3.443113720678i
 !MRCI trans      <15.2|ECPLSZ|1.2>    13.517355998807i
 !MRCI trans      <16.2|ECPLSZ|1.2>    13.328748708096i
 !MRCI trans      <17.2|ECPLSZ|1.2>    -0.804272641327i
 !MRCI expec       <2.2|ECPLSZ|2.2>    -3.863532435751i
 !MRCI trans       <3.2|ECPLSZ|2.2>     2.114526484281i
 !MRCI trans       <4.2|ECPLSZ|2.2>    -2.467239334102i
 !MRCI trans       <5.2|ECPLSZ|2.2>     0.028211715810i
 !MRCI trans       <6.2|ECPLSZ|2.2>    -0.835930168043i
 !MRCI trans       <7.2|ECPLSZ|2.2>    -0.450333743392i
 !MRCI trans       <8.2|ECPLSZ|2.2>    -0.291956727653i
 !MRCI trans       <9.2|ECPLSZ|2.2>    -0.081993808247i
 !MRCI trans      <10.2|ECPLSZ|2.2>    -2.971321421759i
 !MRCI trans      <11.2|ECPLSZ|2.2>     0.126564546769i
 !MRCI trans      <12.2|ECPLSZ|2.2>     1.146842339017i
 !MRCI trans      <13.2|ECPLSZ|2.2>     0.434661301981i
 !MRCI trans      <14.2|ECPLSZ|2.2>     4.884285753178i
 !MRCI trans      <15.2|ECPLSZ|2.2>     1.412512763046i
 !MRCI trans      <16.2|ECPLSZ|2.2>     1.576856394323i
 !MRCI trans      <17.2|ECPLSZ|2.2>     0.029929014163i
 !MRCI expec       <3.2|ECPLSZ|3.2>    -0.800997102186i
 !MRCI trans       <4.2|ECPLSZ|3.2>     0.067371690381i
 !MRCI trans       <5.2|ECPLSZ|3.2>    -0.225676542164i
 !MRCI trans       <6.2|ECPLSZ|3.2>    -1.324146999011i
 !MRCI trans       <7.2|ECPLSZ|3.2>     8.342184801730i
 !MRCI trans       <8.2|ECPLSZ|3.2>    -0.112354916363i
 !MRCI trans       <9.2|ECPLSZ|3.2>    -0.087955853183i
 !MRCI trans      <10.2|ECPLSZ|3.2>    -1.489242493862i
 !MRCI trans      <11.2|ECPLSZ|3.2>     0.136576422708i
 !MRCI trans      <12.2|ECPLSZ|3.2>     0.631337119267i
 !MRCI trans      <13.2|ECPLSZ|3.2>    -0.084036076377i
 !MRCI trans      <14.2|ECPLSZ|3.2>     0.272049852443i
 !MRCI trans      <15.2|ECPLSZ|3.2>     0.950482795976i
 !MRCI trans      <16.2|ECPLSZ|3.2>     1.415186233567i
 !MRCI trans      <17.2|ECPLSZ|3.2>    -0.172763738449i
 !MRCI expec       <4.2|ECPLSZ|4.2>     0.032219068603i
 !MRCI trans       <5.2|ECPLSZ|4.2>    -1.185538462189i
 !MRCI trans       <6.2|ECPLSZ|4.2>     0.854414611522i
 !MRCI trans       <7.2|ECPLSZ|4.2>     6.259364700469i
 !MRCI trans       <8.2|ECPLSZ|4.2>    -0.086648487235i
 !MRCI trans       <9.2|ECPLSZ|4.2>    -0.123559236298i
 !MRCI trans      <10.2|ECPLSZ|4.2>    12.678103247286i
 !MRCI trans      <11.2|ECPLSZ|4.2>     0.551581995946i
 !MRCI trans      <12.2|ECPLSZ|4.2>    -1.326474617147i
 !MRCI trans      <13.2|ECPLSZ|4.2>    -0.152477497166i
 !MRCI trans      <14.2|ECPLSZ|4.2>    -2.618387638771i
 !MRCI trans      <15.2|ECPLSZ|4.2>    -7.853176442504i
 !MRCI trans      <16.2|ECPLSZ|4.2>    -9.113139691704i
 !MRCI trans      <17.2|ECPLSZ|4.2>     0.677966795080i
 !MRCI expec       <5.2|ECPLSZ|5.2>    -1.232213944387i
 !MRCI trans       <6.2|ECPLSZ|5.2>    -1.577678817374i
 !MRCI trans       <7.2|ECPLSZ|5.2>     0.601663549590i
 !MRCI trans       <8.2|ECPLSZ|5.2>     0.374195163066i
 !MRCI trans       <9.2|ECPLSZ|5.2>    -1.414713689068i
 !MRCI trans      <10.2|ECPLSZ|5.2>     3.600781762928i
 !MRCI trans      <11.2|ECPLSZ|5.2>    -0.480864988434i
 !MRCI trans      <12.2|ECPLSZ|5.2>     4.332648053645i
 !MRCI trans      <13.2|ECPLSZ|5.2>     1.673233958095i
 !MRCI trans      <14.2|ECPLSZ|5.2>    -0.180386688051i
 !MRCI trans      <15.2|ECPLSZ|5.2>    -5.496650849132i
 !MRCI trans      <16.2|ECPLSZ|5.2>     0.674675795584i
 !MRCI trans      <17.2|ECPLSZ|5.2>    -0.159761319489i
 !MRCI expec       <6.2|ECPLSZ|6.2>     1.719832041962i
 !MRCI trans       <7.2|ECPLSZ|6.2>    -7.577625360334i
 !MRCI trans       <8.2|ECPLSZ|6.2>    -0.146628316550i
 !MRCI trans       <9.2|ECPLSZ|6.2>    -0.619940568162i
 !MRCI trans      <10.2|ECPLSZ|6.2>    -0.142726554119i
 !MRCI trans      <11.2|ECPLSZ|6.2>     0.007141285129i
 !MRCI trans      <12.2|ECPLSZ|6.2>    -0.234471913888i
 !MRCI trans      <13.2|ECPLSZ|6.2>     1.095927655268i
 !MRCI trans      <14.2|ECPLSZ|6.2>    -1.679505841649i
 !MRCI trans      <15.2|ECPLSZ|6.2>     0.660903452403i
 !MRCI trans      <16.2|ECPLSZ|6.2>    -0.346948283299i
 !MRCI trans      <17.2|ECPLSZ|6.2>     0.450815068358i
 !MRCI expec       <7.2|ECPLSZ|7.2>    -0.408862292253i
 !MRCI trans       <8.2|ECPLSZ|7.2>     0.794903851059i
 !MRCI trans       <9.2|ECPLSZ|7.2>    -0.782449157164i
 !MRCI trans      <10.2|ECPLSZ|7.2>     3.238402254415i
 !MRCI trans      <11.2|ECPLSZ|7.2>     0.339315830312i
 !MRCI trans      <12.2|ECPLSZ|7.2>    -1.241808330634i
 !MRCI trans      <13.2|ECPLSZ|7.2>     1.403900077547i
 !MRCI trans      <14.2|ECPLSZ|7.2>     8.672190559343i
 !MRCI trans      <15.2|ECPLSZ|7.2>    -2.261490722087i
 !MRCI trans      <16.2|ECPLSZ|7.2>    -2.935187944470i
 !MRCI trans      <17.2|ECPLSZ|7.2>    -1.108793013894i
 !MRCI expec       <8.2|ECPLSZ|8.2>    -0.284797446471i
 !MRCI trans       <9.2|ECPLSZ|8.2>     1.001490781704i
 !MRCI trans      <10.2|ECPLSZ|8.2>    -0.246374508949i
 !MRCI trans      <11.2|ECPLSZ|8.2>     1.121530392032i
 !MRCI trans      <12.2|ECPLSZ|8.2>    13.378790236709i
 !MRCI trans      <13.2|ECPLSZ|8.2>     1.517359541952i
 !MRCI trans      <14.2|ECPLSZ|8.2>     0.730116796972i
 !MRCI trans      <15.2|ECPLSZ|8.2>    -8.970684874973i
 !MRCI trans      <16.2|ECPLSZ|8.2>     9.255994173035i
 !MRCI trans      <17.2|ECPLSZ|8.2>    -0.283124997563i
 !MRCI expec       <9.2|ECPLSZ|9.2>    14.619835164338i
 !MRCI trans      <10.2|ECPLSZ|9.2>  -167.271515281758i
 !MRCI trans      <11.2|ECPLSZ|9.2>    -6.096888939908i
 !MRCI trans      <12.2|ECPLSZ|9.2>     5.726119707093i
 !MRCI trans      <13.2|ECPLSZ|9.2>   -17.415451187962i
 !MRCI trans      <14.2|ECPLSZ|9.2>  -109.591650716144i
 !MRCI trans      <15.2|ECPLSZ|9.2>   114.876996267015i
 !MRCI trans      <16.2|ECPLSZ|9.2>   108.843975716208i
 !MRCI trans      <17.2|ECPLSZ|9.2>     0.752750096611i
 !MRCI expec     <10.2|ECPLSZ|10.2>     0.234650467007i
 !MRCI trans     <11.2|ECPLSZ|10.2>     1.435336397587i
 !MRCI trans     <12.2|ECPLSZ|10.2>     4.313208559936i
 !MRCI trans     <13.2|ECPLSZ|10.2>     3.342544443045i
 !MRCI trans     <14.2|ECPLSZ|10.2>    -0.245220538616i
 !MRCI trans     <15.2|ECPLSZ|10.2>    -0.956183298853i
 !MRCI trans     <16.2|ECPLSZ|10.2>     1.144698091175i
 !MRCI trans     <17.2|ECPLSZ|10.2>     0.121868383350i
 !MRCI expec     <11.2|ECPLSZ|11.2>     4.983165551380i
 !MRCI trans     <12.2|ECPLSZ|11.2>    -4.923470560078i
 !MRCI trans     <13.2|ECPLSZ|11.2>    15.088868648799i
 !MRCI trans     <14.2|ECPLSZ|11.2>    73.246337253727i
 !MRCI trans     <15.2|ECPLSZ|11.2>  -109.141066656187i
 !MRCI trans     <16.2|ECPLSZ|11.2>  -104.140398102817i
 !MRCI trans     <17.2|ECPLSZ|11.2>     1.132734594606i
 !MRCI expec     <12.2|ECPLSZ|12.2>     7.657981057359i
 !MRCI trans     <13.2|ECPLSZ|12.2>     6.964035098105i
 !MRCI trans     <14.2|ECPLSZ|12.2>    69.284167484252i
 !MRCI trans     <15.2|ECPLSZ|12.2>    -0.956448479087i
 !MRCI trans     <16.2|ECPLSZ|12.2>     5.790248862285i
 !MRCI trans     <17.2|ECPLSZ|12.2>    -3.454756897400i
 !MRCI expec     <13.2|ECPLSZ|13.2>     6.578796762620i
 !MRCI trans     <14.2|ECPLSZ|13.2>   -92.301152750764i
 !MRCI trans     <15.2|ECPLSZ|13.2>   116.036659021994i
 !MRCI trans     <16.2|ECPLSZ|13.2>   152.296963996987i
 !MRCI trans     <17.2|ECPLSZ|13.2>    26.132945040952i
 !MRCI expec     <14.2|ECPLSZ|14.2>    10.002019935028i
 !MRCI trans     <15.2|ECPLSZ|14.2>   -58.981214435246i
 !MRCI trans     <16.2|ECPLSZ|14.2>    25.320599091431i
 !MRCI trans     <17.2|ECPLSZ|14.2>    -2.123120920005i
 !MRCI expec     <15.2|ECPLSZ|15.2>     2.951874617427i
 !MRCI trans     <16.2|ECPLSZ|15.2>     7.249230541347i
 !MRCI trans     <17.2|ECPLSZ|15.2>     5.249078333223i
 !MRCI expec     <16.2|ECPLSZ|16.2>    -5.907862772711i
 !MRCI trans     <17.2|ECPLSZ|16.2>    -4.503864296997i
 !MRCI expec     <17.2|ECPLSZ|17.2>    -2.412396303284i



   Property matrices in the basis of the zeroth-order wave-functions
   =================================================================

 Property matrix for the DMX operator


   Nr  Nr'  State  S          1             2             3             4             5             6             7             8
    1   2    1.2  1.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    2   5    1.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    3   6    2.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    4   7    3.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    5   8    4.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    6   9    5.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    7  10    6.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    8  11    7.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    9  12    8.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   10  13    9.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   11  14   10.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   12  15   11.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   13  16   12.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   14  17   13.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   15  18   14.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   16  19   15.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   17  20   16.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   18  21   17.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000

   Nr  Nr'  State  S          9            10            11            12            13            14            15            16
    1   2    1.2  1.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    2   5    1.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    3   6    2.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    4   7    3.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    5   8    4.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    6   9    5.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    7  10    6.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    8  11    7.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    9  12    8.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   10  13    9.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   11  14   10.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   12  15   11.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   13  16   12.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   14  17   13.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   15  18   14.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   16  19   15.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   17  20   16.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   18  21   17.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000

   Nr  Nr'  State  S         17            18
    1   2    1.2  1.5     0.000000      0.000000
    2   5    1.2  0.5     0.000000      0.000000
    3   6    2.2  0.5     0.000000      0.000000
    4   7    3.2  0.5     0.000000      0.000000
    5   8    4.2  0.5     0.000000      0.000000
    6   9    5.2  0.5     0.000000      0.000000
    7  10    6.2  0.5     0.000000      0.000000
    8  11    7.2  0.5     0.000000      0.000000
    9  12    8.2  0.5     0.000000      0.000000
   10  13    9.2  0.5     0.000000      0.000000
   11  14   10.2  0.5     0.000000      0.000000
   12  15   11.2  0.5     0.000000      0.000000
   13  16   12.2  0.5     0.000000      0.000000
   14  17   13.2  0.5     0.000000      0.000000
   15  18   14.2  0.5     0.000000      0.000000
   16  19   15.2  0.5     0.000000      0.000000
   17  20   16.2  0.5     0.000000      0.000000
   18  21   17.2  0.5     0.000000      0.000000


 Property matrix for the DMY operator


   Nr  Nr'  State  S          1             2             3             4             5             6             7             8
    1   2    1.2  1.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    2   5    1.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    3   6    2.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    4   7    3.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    5   8    4.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    6   9    5.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    7  10    6.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    8  11    7.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    9  12    8.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   10  13    9.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   11  14   10.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   12  15   11.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   13  16   12.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   14  17   13.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   15  18   14.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   16  19   15.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   17  20   16.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   18  21   17.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000

   Nr  Nr'  State  S          9            10            11            12            13            14            15            16
    1   2    1.2  1.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    2   5    1.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    3   6    2.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    4   7    3.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    5   8    4.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    6   9    5.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    7  10    6.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    8  11    7.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    9  12    8.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   10  13    9.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   11  14   10.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   12  15   11.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   13  16   12.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   14  17   13.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   15  18   14.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   16  19   15.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   17  20   16.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   18  21   17.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000

   Nr  Nr'  State  S         17            18
    1   2    1.2  1.5     0.000000      0.000000
    2   5    1.2  0.5     0.000000      0.000000
    3   6    2.2  0.5     0.000000      0.000000
    4   7    3.2  0.5     0.000000      0.000000
    5   8    4.2  0.5     0.000000      0.000000
    6   9    5.2  0.5     0.000000      0.000000
    7  10    6.2  0.5     0.000000      0.000000
    8  11    7.2  0.5     0.000000      0.000000
    9  12    8.2  0.5     0.000000      0.000000
   10  13    9.2  0.5     0.000000      0.000000
   11  14   10.2  0.5     0.000000      0.000000
   12  15   11.2  0.5     0.000000      0.000000
   13  16   12.2  0.5     0.000000      0.000000
   14  17   13.2  0.5     0.000000      0.000000
   15  18   14.2  0.5     0.000000      0.000000
   16  19   15.2  0.5     0.000000      0.000000
   17  20   16.2  0.5     0.000000      0.000000
   18  21   17.2  0.5     0.000000      0.000000


 Property matrix for the DMZ operator


   Nr  Nr'  State  S          1             2             3             4             5             6             7             8
    1   2    1.2  1.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    2   5    1.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    3   6    2.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    4   7    3.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    5   8    4.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    6   9    5.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    7  10    6.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    8  11    7.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    9  12    8.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   10  13    9.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   11  14   10.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   12  15   11.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   13  16   12.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   14  17   13.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   15  18   14.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   16  19   15.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   17  20   16.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   18  21   17.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000

   Nr  Nr'  State  S          9            10            11            12            13            14            15            16
    1   2    1.2  1.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    2   5    1.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    3   6    2.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    4   7    3.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    5   8    4.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    6   9    5.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    7  10    6.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    8  11    7.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    9  12    8.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   10  13    9.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   11  14   10.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   12  15   11.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   13  16   12.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   14  17   13.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   15  18   14.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   16  19   15.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   17  20   16.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
   18  21   17.2  0.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000

   Nr  Nr'  State  S         17            18
    1   2    1.2  1.5     0.000000      0.000000
    2   5    1.2  0.5     0.000000      0.000000
    3   6    2.2  0.5     0.000000      0.000000
    4   7    3.2  0.5     0.000000      0.000000
    5   8    4.2  0.5     0.000000      0.000000
    6   9    5.2  0.5     0.000000      0.000000
    7  10    6.2  0.5     0.000000      0.000000
    8  11    7.2  0.5     0.000000      0.000000
    9  12    8.2  0.5     0.000000      0.000000
   10  13    9.2  0.5     0.000000      0.000000
   11  14   10.2  0.5     0.000000      0.000000
   12  15   11.2  0.5     0.000000      0.000000
   13  16   12.2  0.5     0.000000      0.000000
   14  17   13.2  0.5     0.000000      0.000000
   15  18   14.2  0.5     0.000000      0.000000
   16  19   15.2  0.5     0.000000      0.000000
   17  20   16.2  0.5     0.000000      0.000000
   18  21   17.2  0.5     0.000000      0.000000



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -240.03900374

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -2094.86
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00     314.23

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    -105.05

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1209.47
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00    -181.42

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00    9989.65       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00 -661275.35  144350.12  -75642.74   18643.21 1620562.77  300983.76

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00    9989.64       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00 -144350.12 -847947.36   24070.43 1687648.12  362288.45 -795231.94

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    9989.67       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00   75642.74  -24070.43 -175798.54  246311.89 -331183.37  124689.89

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9989.59       0.00       0.00
                            0.00      -0.00      -0.00      -0.00  -18643.21-1687648.12 -246311.89    7071.27 -306871.16  225001.03

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9989.58       0.00
                            0.00       0.00      -0.00      -0.00-1620562.77 -362288.45  331183.37  306871.16 -270439.70  -53319.81

   10   6.2  0.5  0.5   -2094.86       0.00   -1209.47       0.00       0.00       0.00       0.00       0.00       0.00   16696.47
                         -314.23     105.05     181.42      -0.00 -300983.76  795231.94 -124689.89 -225001.03   53319.81  377459.50

   11   7.2  0.5  0.5    -317.49       0.00    -183.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2095.01     -86.19   -1209.55      -0.00 -663189.14 -801382.20 -609443.88  561128.19  425137.67 -178140.31

   12   8.2  0.5  0.5     -78.83       0.00     -45.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -87.37   -2444.47      50.44      -0.00  567257.53  379719.52 1130971.76 2039346.20  274768.64 1122225.65

   13   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.0012334485.0921504603.53 1413182.89***********-4816724.03 2180152.29

   14  10.2  0.5  0.5      -0.01       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00  139274.21 -394084.55  896534.40  704951.95  222855.44 -420181.53

   15  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00**********************-2179860.0510551032.46 4610209.73-2282992.81

   16  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00-3367756.81 1350497.29-6717865.92 5803494.02 1458666.13 1397932.88

   17  13.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00-4151414.7922454146.25 5498895.90 3625065.89-7979836.97 2556762.30

   18  14.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01      -0.00      -0.00*********** -463185.34 4819180.39 2152161.22 2720211.82 4462814.45

   19  15.2  0.5  0.5    -371.89       0.00    -214.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          410.88      -0.05    -237.22      -0.00 3673400.16-1160672.70 6266884.33-2809635.47-2046062.33  501213.95

   20  16.2  0.5  0.5    -410.86       0.00    -237.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -371.89       3.48     214.71      -0.00-2677631.19-2993133.17-4459646.29 3468324.81  891038.84 -919158.30

   21  17.2  0.5  0.5       2.21       0.00       1.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.05     639.93      -1.19      -0.0017880213.92  310288.60 5066601.2913203329.37 1863205.55 6486420.96

   22   1.2  0.5 -0.5       0.00       0.00       0.00       0.00 1255483.33 -751798.13-2293439.95-3559145.08 -858814.08-2153038.20
                           -0.00       0.00      -0.00      -0.00 -227460.30 1042003.14  105393.60-1210422.46 -321955.39  -83888.56

   23   2.2  0.5 -0.5       0.00       0.00       0.00       0.00  -28026.97 -490826.70  233499.26 -588939.84 -648672.04 -154649.33
                           -0.00      -0.00       0.00       0.00-2480710.69  220515.75  622053.20-5586579.38-1321004.95  -58687.96

   24   3.2  0.5 -0.5       0.00       0.00       0.00       0.00  674752.93 -149609.74  405160.37 3111256.65 1023691.69  939031.30
                           -0.00      -0.00      -0.00       0.00  958016.61  862895.34 -274023.67  143176.16 -595463.18  138314.92

   25   4.2  0.5 -0.5       0.00       0.00       0.00       0.00 -570154.85 -100497.52-2314925.77 2096222.99  703724.22-1531994.73
                           -0.00       0.00      -0.00      -0.00  457026.29  513036.61 1139997.42  273933.74 -242198.83  438560.96

   26   5.2  0.5 -0.5       0.00       0.00       0.00       0.00 -230518.59 2933378.74 -599738.42  637725.54   89282.54 -359662.86
                           -0.00       0.00       0.00      -0.00 -501954.09 -119097.96-4558738.53 -718331.40  289271.66-1761602.73

   27   6.2  0.5 -0.5       0.00   -1209.47       0.00   -2094.86 -612136.60  330691.44  424670.65-2987279.50 -964453.34 -485550.89
                           -0.00    -181.42     105.05     314.23 -994878.35 -767190.51  636835.43  657513.38  738072.84  125164.08

   28   7.2  0.5 -0.5       0.00    -183.30       0.00    -317.49  193290.67  -76697.97  275379.55  192786.39 -700059.14  269491.38
                           -0.00    1209.55     -86.19   -2095.01-2699810.91 -178258.31  666865.14-5682771.41-1245847.80  -19760.32

   29   8.2  0.5 -0.5       0.00     -45.51       0.00     -78.83   82935.11 1173966.84 -234054.13 -163531.02   -8120.75 -201333.14
                           -0.00     -50.44   -2444.47      87.37 -622068.34 -311111.49-5088781.30 -590155.18  115549.76-1996324.76

   30   9.2  0.5 -0.5       0.00       0.00       0.00       0.00 5480124.16-5776672.03 9033289.83***********-5194125.07 8475742.11
                           -0.00       0.00       0.00      -0.00  861455.57 -188779.23  299391.52  -90810.70  833629.17  342009.00

   31  10.2  0.5 -0.5       0.00      -0.00       0.00      -0.01 2726981.99 -892415.26 3636073.06***********-1802231.23 3978916.27
                           -0.00      -0.00      -0.00       0.00 6963823.91 3460511.91 1517388.00   59644.83  466262.35 2360542.88

   32  11.2  0.5 -0.5       0.00       0.00       0.00       0.00-6349127.02 4651962.00-8380859.5018670486.03 5178092.34-8113056.80
                           -0.00      -0.00      -0.00       0.00 -941909.96  490083.87 -254373.38  -52009.10 -610271.50 -250361.75

   33  12.2  0.5 -0.5       0.00       0.00       0.00       0.00  748179.20-1527055.84-4056699.14-1618932.92-3905848.98-6121290.70
                           -0.00       0.00       0.00      -0.00-7375210.29 2525024.47 2040517.62***********-4127022.96 -291663.68

   34  13.2  0.5 -0.5       0.00      -0.00       0.00      -0.0012112785.5512903796.83**********************-7198277.54-8866874.74
                           -0.00       0.00       0.00      -0.00  -80532.25 4287670.47 1580226.66  148467.68 -682039.69  505098.13

   35  14.2  0.5 -0.5       0.00       0.00       0.00       0.00 2698254.6328199633.92 -117454.55 2615386.72 -856184.74 3456109.72
                           -0.00       0.00       0.01      -0.00-3741616.29-3131283.7512332687.60 1597335.40-2499635.37 4694501.14

   36  15.2  0.5 -0.5       0.00    -214.71       0.00    -371.89 1933874.88  -43117.75-4228177.45-9607785.59 1233966.19-2941795.01
                           -0.00     237.22      -0.05    -410.8810248364.19 3506844.31-1225980.9812751719.22 3015087.94  831179.92

   37  16.2  0.5 -0.5       0.00    -237.21       0.00    -410.86 1995959.69-1134546.79 4693112.94-5072328.06-2637442.65 5045942.56
                           -0.00    -214.71       3.48     371.89  366279.66 1164357.06 1732925.38***********-2840692.68 1060843.57

   38  17.2  0.5 -0.5       0.00       1.27       0.00       2.21  624361.28***********-1050120.57 -190475.82 2532127.27-1235101.97
                           -0.00       1.19     639.93      -2.05 3665183.72 2713520.73*********** -500238.82 -611322.71-4602011.62


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5    -317.49     -78.83       0.00      -0.01       0.00       0.00      -0.00       0.00    -371.89    -410.86
                        -2095.01      87.37      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -410.88     371.89

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           86.19    2444.47      -0.00       0.00       0.00      -0.00      -0.00      -0.01       0.05      -3.48

    3   1.2  1.5 -0.5    -183.30     -45.51       0.00      -0.00       0.00       0.00      -0.00       0.00    -214.71    -237.21
                         1209.55     -50.44       0.00      -0.00      -0.00       0.00       0.00       0.00     237.22    -214.71

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       663189.14 -567257.53*********** -139274.2111880736.67 3367756.81 4151414.7927028059.28-3673400.16 2677631.19

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       801382.20 -379719.52***********  394084.5520796459.61-1350497.29***********  463185.34 1160672.70 2993133.17

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       609443.88-1130971.76-1413182.89 -896534.40 2179860.05 6717865.92-5498895.90-4819180.39-6266884.33 4459646.29

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -561128.19-2039346.2014042574.90 -704951.95***********-5803494.02-3625065.89-2152161.22 2809635.47-3468324.81

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -425137.67 -274768.64 4816724.03 -222855.44-4610209.73-1458666.13 7979836.97-2720211.82 2046062.33 -891038.84

   10   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       178140.31-1122225.65-2180152.29  420181.53 2282992.81-1397932.88-2556762.30-4462814.45 -501213.95  919158.30

   11   7.2  0.5  0.5   16696.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -89734.90 -518619.84***********-8944300.5014628404.05-1511535.46***********  189718.34-6393895.02-6040361.43

   12   8.2  0.5  0.5       0.00   16696.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       518619.84  -62505.81 2995926.23  524743.65-2688157.16 -298742.47-9833910.26  828228.62 -484415.60 1083078.42

   13   9.2  0.5  0.5       0.00       0.00   54154.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                     13974633.94-2995926.23 3208682.93  -79919.53-2950307.87 -634091.86-1037152.86-8901476.86 1096203.06 -137317.49

   14  10.2  0.5  0.5       0.00       0.00       0.00   56410.29       0.00       0.00       0.00       0.00       0.00       0.00
                      8944300.50 -524743.65   79919.53   51499.8234904360.93-3117853.11*********** 5281473.67 -312756.79  620374.34

   15  11.2  0.5  0.5       0.00       0.00       0.00       0.00   56410.35       0.00       0.00       0.00       0.00       0.00
                     *********** 2688157.16 2950307.87*********** 1093678.42  435757.80 1144702.50-3036298.09 -485287.83  155942.43

   16  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   56410.35       0.00       0.00       0.00       0.00
                      1511535.46  298742.47  634091.86 3117853.11 -435757.80 1680732.57 6267198.4013125114.67  282677.71 -180431.35

   17  13.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   56410.35       0.00       0.00       0.00
                     20357599.83 9833910.26 1037152.8643681168.66-1144702.50-6267198.40 1443878.99 4197140.84-2003578.55  585115.92

   18  14.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   56410.35       0.00       0.00
                      -189718.34 -828228.62 8901476.86-5281473.67 3036298.09***********-4197140.84 2195189.64*********** 9358269.44

   19  15.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   57518.01       0.00
                      6393895.02  484415.60-1096203.06  312756.79  485287.83 -282677.71 2003578.5510963654.14  647861.59-1167858.38

   20  16.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   57517.99
                      6040361.43-1083078.42  137317.49 -620374.34 -155942.43  180431.35 -585115.92-9358269.44 1167858.38-1296626.00

   21  17.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      2911584.72 -518990.23-4855096.39  116145.24-3121285.78***********  546424.94 -325625.6810165822.43***********

   22   1.2  0.5 -0.5  355568.94   -5267.95 -405437.01    1132.59  157219.87 -192259.61  587799.09 7851214.96  121076.15 -121807.95
                       453594.22  -47959.87 -215204.73 -192955.19  -99393.53 -205143.76  -43420.44  -57429.42   90425.58 -349964.66

   23   2.2  0.5 -0.5  424049.70  769788.01  -10661.71 -159169.88   80681.87   47923.24  157185.23 1518889.99  130123.13  -99587.98
                         6199.62  -85812.45 -882318.81  -76632.10 -624534.41   94547.78 -332018.84 -467389.85 -104040.68  102147.18

   24   3.2  0.5 -0.5  557421.92 -244379.92   82299.34 -211387.26 -249820.30 -285185.92  667007.41  831694.11  432606.16 -125135.16
                       633125.64 -501390.90   11534.18  380907.27  161822.16 -222067.23   52545.60 -155388.42   68887.73 -147999.22

   25   4.2  0.5 -0.5 -318303.97 -650192.82  353642.07  113661.01 -163742.82 -375830.66 -441805.27-4845620.09  -79026.66   31145.45
                       337536.73  -82466.01  -11551.21 -207292.65   78353.25  -55504.39   27784.08 -155262.44   58141.88 -197532.02

   26   5.2  0.5 -0.5-1190155.58 -143075.82  -44079.84  -94389.97   55122.07 -548682.88 -350497.52-1475041.78 -158319.61 -315141.51
                       272503.56  177648.03  -41883.78  646403.67  -96660.43 -510060.23  -30298.48  378013.03  127791.24 -180490.57

   27   6.2  0.5 -0.5 -697608.13  407438.10  -48864.09  303416.26  291291.71 -936848.28 -566776.09  -56638.77  344894.81 -833756.04
                      -690225.68  611415.86  109700.12  -39363.95 -117061.32  313418.83  -75313.36  144541.90 -391858.52  -55109.81

   28   7.2  0.5 -0.5 -157563.61 -197731.82  217513.32 -178482.22 -159977.54  -27895.17  -60792.40-2286009.03  313674.34   86508.80
                      -221669.20 -100120.93 -912695.39   38099.41 -660555.21    4413.43 -314974.15  -88223.69 -102250.37   57074.70

   29   8.2  0.5 -0.5 1587429.20   32664.08   31396.81 -125662.09  134765.22-1097035.66 -347323.91  -66039.62 -126485.10 -317052.10
                       388111.93  -98671.64  -37128.98  762489.05  -99798.48 -512184.59  -14462.36  381014.72   63714.29 -139551.66

   30   9.2  0.5 -0.5 7937856.66 1737650.24-3172531.19 4158771.43  838968.25 3450619.74 5277457.8748055867.66 -319378.09-2662301.63
                      1281810.72 -686959.48    4103.01 -407129.01  101085.76  124876.31  213413.08  358230.83  190577.00  158788.02

   31  10.2  0.5 -0.5 2246144.11-2133943.18 -424341.92 -911895.94  597470.93-1925869.20-1409948.15 1552690.25 2454361.99 -368955.99
                      4445920.47  369196.61  123110.29  314926.03 1075063.18 -642687.86  762268.39 -255807.41 1423265.15 -305911.32

   32  11.2  0.5 -0.5-6486398.40-3472171.37 3031487.63-3036218.12-1026964.15-2837058.51-4601346.81***********   49793.84 1666087.05
                      -499895.42  540942.02  -95746.46   74144.10  -52553.22 -425145.78 -280668.56 -341158.88  151072.35 -217287.34

   33  12.2  0.5 -0.5 -914585.52 -318093.40 -396741.66-2029579.66  431316.78 -481988.08  641100.69 4668940.45  602318.33  565232.34
                      1081901.42  -31693.00-3124304.36 -634365.40-1507500.14 -620999.10-1451467.10-2829961.11  236378.97 -928444.64

   34  13.2  0.5 -0.5*********** 4445719.17-4825210.13 3728181.69 1255199.77-5172853.65 5840997.3376590673.37-4741898.67 -432065.88
                       473031.60 -223839.42  213530.30 -926217.87  -58908.19 -416849.61  214289.60  225994.67  156652.36-1498805.29

   35  14.2  0.5 -0.5*********** 1088987.57 1169378.23 1025084.89   -7910.02 1933166.27  513376.45-9892854.64-1589797.90 2492589.42
                     -2620641.94-2234481.33 -277751.90-1141687.75 -572917.84 2080163.61 -555945.77  778692.02-1803563.29  454363.27

   36  15.2  0.5 -0.5 1285736.09 1574515.61 -363535.66 1072120.46  664673.94 2149348.43 -272422.44 5725256.52-2406296.41 1520986.23
                      3291045.09 -163312.23 2468606.00 -441235.93 1943386.00-1022265.74 1348694.66  279822.97 1393786.13 -675531.80

   37  16.2  0.5 -0.5  596221.80-4136695.02  839753.46-2214410.36 -299465.97 3750305.02 -676287.06-3443116.93 -124090.77 3961007.15
                      1697064.46 -447122.13-2020050.72   11699.07 -273844.86 -127430.13 -263977.89 -781045.23  899294.50  799949.27

   38  17.2  0.5 -0.523835765.29-1128075.56 1185846.91-1333826.88  293308.76-3925887.04-2238315.50  486447.23-1039878.54 1372874.34
                      3166881.53-1195062.19  104292.72 1518219.58  645229.37-2049512.12  240189.01 -627542.42 1193913.93 -239729.78


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  1.5  1.5       2.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   -1209.47    -183.30     -45.51       0.00
                         -639.93      -0.00       0.00       0.00      -0.00      -0.00     181.42   -1209.55      50.44      -0.00

    3   1.2  1.5 -0.5       1.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.19       0.00      -0.00       0.00       0.00      -0.00    -105.05      86.19    2444.47      -0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   -2094.86    -317.49     -78.83       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00    -314.23    2095.01     -87.37       0.00

    5   1.2  0.5  0.5       0.00 1255483.33  -28026.97  674752.93 -570154.85 -230518.59 -612136.60  193290.67   82935.11 5480124.16
                     ***********  227460.30 2480710.69 -958016.61 -457026.29  501954.09  994878.35 2699810.91  622068.34 -861455.57

    6   2.2  0.5  0.5       0.00 -751798.13 -490826.70 -149609.74 -100497.52 2933378.74  330691.44  -76697.97 1173966.84-5776672.03
                      -310288.60-1042003.14 -220515.75 -862895.34 -513036.61  119097.96  767190.51  178258.31  311111.49  188779.23

    7   3.2  0.5  0.5       0.00-2293439.95  233499.26  405160.37-2314925.77 -599738.42  424670.65  275379.55 -234054.13 9033289.83
                     -5066601.29 -105393.60 -622053.20  274023.67-1139997.42 4558738.53 -636835.43 -666865.14 5088781.30 -299391.52

    8   4.2  0.5  0.5       0.00-3559145.08 -588939.84 3111256.65 2096222.99  637725.54-2987279.50  192786.39 -163531.02***********
                     *********** 1210422.46 5586579.38 -143176.16 -273933.74  718331.40 -657513.38 5682771.41  590155.18   90810.70

    9   5.2  0.5  0.5       0.00 -858814.08 -648672.04 1023691.69  703724.22   89282.54 -964453.34 -700059.14   -8120.75-5194125.07
                     -1863205.55  321955.39 1321004.95  595463.18  242198.83 -289271.66 -738072.84 1245847.80 -115549.76 -833629.17

   10   6.2  0.5  0.5       0.00-2153038.20 -154649.33  939031.30-1531994.73 -359662.86 -485550.89  269491.38 -201333.14 8475742.11
                     -6486420.96   83888.56   58687.96 -138314.92 -438560.96 1761602.73 -125164.08   19760.32 1996324.76 -342009.00

   11   7.2  0.5  0.5       0.00  355568.94  424049.70  557421.92 -318303.97-1190155.58 -697608.13 -157563.61 1587429.20 7937856.66
                     -2911584.72 -453594.22   -6199.62 -633125.64 -337536.73 -272503.56  690225.68  221669.20 -388111.93-1281810.72

   12   8.2  0.5  0.5       0.00   -5267.95  769788.01 -244379.92 -650192.82 -143075.82  407438.10 -197731.82   32664.08 1737650.24
                       518990.23   47959.87   85812.45  501390.90   82466.01 -177648.03 -611415.86  100120.93   98671.64  686959.48

   13   9.2  0.5  0.5       0.00 -405437.01  -10661.71   82299.34  353642.07  -44079.84  -48864.09  217513.32   31396.81-3172531.19
                      4855096.39  215204.73  882318.81  -11534.18   11551.21   41883.78 -109700.12  912695.39   37128.98   -4103.01

   14  10.2  0.5  0.5       0.00    1132.59 -159169.88 -211387.26  113661.01  -94389.97  303416.26 -178482.22 -125662.09 4158771.43
                      -116145.24  192955.19   76632.10 -380907.27  207292.65 -646403.67   39363.95  -38099.41 -762489.05  407129.01

   15  11.2  0.5  0.5       0.00  157219.87   80681.87 -249820.30 -163742.82   55122.07  291291.71 -159977.54  134765.22  838968.25
                      3121285.78   99393.53  624534.41 -161822.16  -78353.25   96660.43  117061.32  660555.21   99798.48 -101085.76

   16  12.2  0.5  0.5       0.00 -192259.61   47923.24 -285185.92 -375830.66 -548682.88 -936848.28  -27895.17-1097035.66 3450619.74
                     14631426.88  205143.76  -94547.78  222067.23   55504.39  510060.23 -313418.83   -4413.43  512184.59 -124876.31

   17  13.2  0.5  0.5       0.00  587799.09  157185.23  667007.41 -441805.27 -350497.52 -566776.09  -60792.40 -347323.91 5277457.87
                      -546424.94   43420.44  332018.84  -52545.60  -27784.08   30298.48   75313.36  314974.15   14462.36 -213413.08

   18  14.2  0.5  0.5       0.00 7851214.96 1518889.99  831694.11-4845620.09-1475041.78  -56638.77-2286009.03  -66039.6248055867.66
                       325625.68   57429.42  467389.85  155388.42  155262.44 -378013.03 -144541.90   88223.69 -381014.72 -358230.83

   19  15.2  0.5  0.5       0.00  121076.15  130123.13  432606.16  -79026.66 -158319.61  344894.81  313674.34 -126485.10 -319378.09
                     ***********  -90425.58  104040.68  -68887.73  -58141.88 -127791.24  391858.52  102250.37  -63714.29 -190577.00

   20  16.2  0.5  0.5       0.00 -121807.95  -99587.98 -125135.16   31145.45 -315141.51 -833756.04   86508.80 -317052.10-2662301.63
                     10183791.96  349964.66 -102147.18  147999.22  197532.02  180490.57   55109.81  -57074.70  139551.66 -158788.02

   21  17.2  0.5  0.5   57518.08 -959301.27 -167453.75  -30289.52  862025.97  227255.71 -125601.93  256046.01  -44554.88-7799019.44
                      -529459.79  -74732.34 -420581.50 -124143.28   -1229.57   88107.69  188698.16 -375814.54   41683.42 -247132.58

   22   1.2  0.5 -0.5 -959301.27    9989.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        74732.34  661275.35 -144350.12   75642.74  -18643.21-1620562.77 -300983.76 -663189.14  567257.5312334485.09

   23   2.2  0.5 -0.5 -167453.75       0.00    9989.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       420581.50  144350.12  847947.36  -24070.43-1687648.12 -362288.45  795231.94 -801382.20  379719.5221504603.53

   24   3.2  0.5 -0.5  -30289.52       0.00       0.00    9989.67       0.00       0.00       0.00       0.00       0.00       0.00
                       124143.28  -75642.74   24070.43  175798.54 -246311.89  331183.37 -124689.89 -609443.88 1130971.76 1413182.89

   25   4.2  0.5 -0.5  862025.97       0.00       0.00       0.00    9989.59       0.00       0.00       0.00       0.00       0.00
                         1229.57   18643.21 1687648.12  246311.89   -7071.27  306871.16 -225001.03  561128.19 2039346.20***********

   26   5.2  0.5 -0.5  227255.71       0.00       0.00       0.00       0.00    9989.58       0.00       0.00       0.00       0.00
                       -88107.69 1620562.77  362288.45 -331183.37 -306871.16  270439.70   53319.81  425137.67  274768.64-4816724.03

   27   6.2  0.5 -0.5 -125601.93       0.00       0.00       0.00       0.00       0.00   16696.47       0.00       0.00       0.00
                      -188698.16  300983.76 -795231.94  124689.89  225001.03  -53319.81 -377459.50 -178140.31 1122225.65 2180152.29

   28   7.2  0.5 -0.5  256046.01       0.00       0.00       0.00       0.00       0.00       0.00   16696.45       0.00       0.00
                       375814.54  663189.14  801382.20  609443.88 -561128.19 -425137.67  178140.31   89734.90  518619.8413974633.94

   29   8.2  0.5 -0.5  -44554.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16696.25       0.00
                       -41683.42 -567257.53 -379719.52-1130971.76-2039346.20 -274768.64-1122225.65 -518619.84   62505.81-2995926.23

   30   9.2  0.5 -0.5-7799019.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54154.05
                       247132.58**********************-1413182.8914042574.90 4816724.03-2180152.29*********** 2995926.23-3208682.93

   31  10.2  0.5 -0.5  327911.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -15227.35 -139274.21  394084.55 -896534.40 -704951.95 -222855.44  420181.53-8944300.50  524743.65  -79919.53

   32  11.2  0.5 -0.5 7963830.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -214304.8911880736.6720796459.61 2179860.05***********-4610209.73 2282992.8114628404.05-2688157.16-2950307.87

   33  12.2  0.5 -0.5 -217332.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      1392646.19 3367756.81-1350497.29 6717865.92-5803494.02-1458666.13-1397932.88-1511535.46 -298742.47 -634091.86

   34  13.2  0.5 -0.5-9063606.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -126131.46 4151414.79***********-5498895.90-3625065.89 7979836.97-2556762.30***********-9833910.26-1037152.86

   35  14.2  0.5 -0.5  369267.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       380319.1527028059.28  463185.34-4819180.39-2152161.22-2720211.82-4462814.45  189718.34  828228.62-8901476.86

   36  15.2  0.5 -0.5-1019447.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -795531.76-3673400.16 1160672.70-6266884.33 2809635.47 2046062.33 -501213.95-6393895.02 -484415.60 1096203.06

   37  16.2  0.5 -0.5 1199977.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       824522.74 2677631.19 2993133.17 4459646.29-3468324.81 -891038.84  919158.30-6040361.43 1083078.42 -137317.49

   38  17.2  0.5 -0.5  189216.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       196255.20*********** -310288.60-5066601.29***********-1863205.55-6486420.96-2911584.72  518990.23 4855096.39


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5      -0.00       0.00       0.00      -0.00       0.00    -214.71    -237.21       1.27
                            0.00       0.00      -0.00      -0.00      -0.00    -237.22     214.71      -1.19

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.01       0.05      -3.48    -639.93

    4   1.2  1.5 -1.5      -0.01       0.00       0.00      -0.00       0.00    -371.89    -410.86       2.21
                           -0.00      -0.00       0.00       0.00       0.00     410.88    -371.89       2.05

    5   1.2  0.5  0.5 2726981.99-6349127.02  748179.2012112785.55 2698254.63 1933874.88 1995959.69  624361.28
                     -6963823.91  941909.96 7375210.29   80532.25 3741616.29*********** -366279.66-3665183.72

    6   2.2  0.5  0.5 -892415.26 4651962.00-1527055.8412903796.8328199633.92  -43117.75-1134546.79***********
                     -3460511.91 -490083.87-2525024.47-4287670.47 3131283.75-3506844.31-1164357.06-2713520.73

    7   3.2  0.5  0.5 3636073.06-8380859.50-4056699.14*********** -117454.55-4228177.45 4693112.94-1050120.57
                     -1517388.00  254373.38-2040517.62-1580226.66*********** 1225980.98-1732925.3812215477.55

    8   4.2  0.5  0.5***********18670486.03-1618932.92*********** 2615386.72-9607785.59-5072328.06 -190475.82
                       -59644.83   52009.1015868216.56 -148467.68-1597335.40***********10087565.11  500238.82

    9   5.2  0.5  0.5-1802231.23 5178092.34-3905848.98-7198277.54 -856184.74 1233966.19-2637442.65 2532127.27
                      -466262.35  610271.50 4127022.96  682039.69 2499635.37-3015087.94 2840692.68  611322.71

   10   6.2  0.5  0.5 3978916.27-8113056.80-6121290.70-8866874.74 3456109.72-2941795.01 5045942.56-1235101.97
                     -2360542.88  250361.75  291663.68 -505098.13-4694501.14 -831179.92-1060843.57 4602011.62

   11   7.2  0.5  0.5 2246144.11-6486398.40 -914585.52********************** 1285736.09  596221.8023835765.29
                     -4445920.47  499895.42-1081901.42 -473031.60 2620641.94-3291045.09-1697064.46-3166881.53

   12   8.2  0.5  0.5-2133943.18-3472171.37 -318093.40 4445719.17 1088987.57 1574515.61-4136695.02-1128075.56
                      -369196.61 -540942.02   31693.00  223839.42 2234481.33  163312.23  447122.13 1195062.19

   13   9.2  0.5  0.5 -424341.92 3031487.63 -396741.66-4825210.13 1169378.23 -363535.66  839753.46 1185846.91
                      -123110.29   95746.46 3124304.36 -213530.30  277751.90-2468606.00 2020050.72 -104292.72

   14  10.2  0.5  0.5 -911895.94-3036218.12-2029579.66 3728181.69 1025084.89 1072120.46-2214410.36-1333826.88
                      -314926.03  -74144.10  634365.40  926217.87 1141687.75  441235.93  -11699.07-1518219.58

   15  11.2  0.5  0.5  597470.93-1026964.15  431316.78 1255199.77   -7910.02  664673.94 -299465.97  293308.76
                     -1075063.18   52553.22 1507500.14   58908.19  572917.84-1943386.00  273844.86 -645229.37

   16  12.2  0.5  0.5-1925869.20-2837058.51 -481988.08-5172853.65 1933166.27 2149348.43 3750305.02-3925887.04
                       642687.86  425145.78  620999.10  416849.61-2080163.61 1022265.74  127430.13 2049512.12

   17  13.2  0.5  0.5-1409948.15-4601346.81  641100.69 5840997.33  513376.45 -272422.44 -676287.06-2238315.50
                      -762268.39  280668.56 1451467.10 -214289.60  555945.77-1348694.66  263977.89 -240189.01

   18  14.2  0.5  0.5 1552690.25*********** 4668940.4576590673.37-9892854.64 5725256.52-3443116.93  486447.23
                       255807.41  341158.88 2829961.11 -225994.67 -778692.02 -279822.97  781045.23  627542.42

   19  15.2  0.5  0.5 2454361.99   49793.84  602318.33-4741898.67-1589797.90-2406296.41 -124090.77-1039878.54
                     -1423265.15 -151072.35 -236378.97 -156652.36 1803563.29-1393786.13 -899294.50-1193913.93

   20  16.2  0.5  0.5 -368955.99 1666087.05  565232.34 -432065.88 2492589.42 1520986.23 3961007.15 1372874.34
                       305911.32  217287.34  928444.64 1498805.29 -454363.27  675531.80 -799949.27  239729.78

   21  17.2  0.5  0.5  327911.96 7963830.31 -217332.09-9063606.05  369267.13-1019447.64 1199977.52  189216.82
                        15227.35  214304.89-1392646.19  126131.46 -380319.15  795531.76 -824522.74 -196255.20

   22   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       139274.21***********-3367756.81-4151414.79*********** 3673400.16-2677631.1917880213.92

   23   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -394084.55*********** 1350497.2922454146.25 -463185.34-1160672.70-2993133.17  310288.60

   24   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       896534.40-2179860.05-6717865.92 5498895.90 4819180.39 6266884.33-4459646.29 5066601.29

   25   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       704951.9510551032.46 5803494.02 3625065.89 2152161.22-2809635.47 3468324.8113203329.37

   26   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       222855.44 4610209.73 1458666.13-7979836.97 2720211.82-2046062.33  891038.84 1863205.55

   27   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -420181.53-2282992.81 1397932.88 2556762.30 4462814.45  501213.95 -919158.30 6486420.96

   28   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      8944300.50*********** 1511535.4620357599.83 -189718.34 6393895.02 6040361.43 2911584.72

   29   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -524743.65 2688157.16  298742.47 9833910.26 -828228.62  484415.60-1083078.42 -518990.23

   30   9.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        79919.53 2950307.87  634091.86 1037152.86 8901476.86-1096203.06  137317.49-4855096.39

   31  10.2  0.5 -0.5   56410.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -51499.82*********** 3117853.1143681168.66-5281473.67  312756.79 -620374.34  116145.24

   32  11.2  0.5 -0.5       0.00   56410.35       0.00       0.00       0.00       0.00       0.00       0.00
                     34904360.93-1093678.42 -435757.80-1144702.50 3036298.09  485287.83 -155942.43-3121285.78

   33  12.2  0.5 -0.5       0.00       0.00   56410.35       0.00       0.00       0.00       0.00       0.00
                     -3117853.11  435757.80-1680732.57-6267198.40*********** -282677.71  180431.35***********

   34  13.2  0.5 -0.5       0.00       0.00       0.00   56410.35       0.00       0.00       0.00       0.00
                     *********** 1144702.50 6267198.40-1443878.99-4197140.84 2003578.55 -585115.92  546424.94

   35  14.2  0.5 -0.5       0.00       0.00       0.00       0.00   56410.35       0.00       0.00       0.00
                      5281473.67-3036298.0913125114.67 4197140.84-2195189.6410963654.14-9358269.44 -325625.68

   36  15.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   57518.01       0.00       0.00
                      -312756.79 -485287.83  282677.71-2003578.55*********** -647861.59 1167858.3810165822.43

   37  16.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   57517.99       0.00
                       620374.34  155942.43 -180431.35  585115.92 9358269.44-1167858.38 1296626.00***********

   38  17.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   57518.08
                      -116145.24 3121285.7814631426.88 -546424.94  325625.68***********10183791.96  529459.79


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -877.54760809  -637.50860435************      0.00000000        0.00      0.0000
     2  -595.53935718  -355.50035344-78023309.02    282.00825091 61893656.91   7673.8354
     3  -564.63940871  -324.60040497-71241554.22    312.90819938 68675411.71   8514.6659
     4  -453.84533543  -213.80633169-46925065.83    423.70227266 92991900.10  11529.5262
     5  -399.71475016  -159.67574642-35044775.58    477.83285793104872190.35  13002.4945
     6  -383.04726242  -143.00825869-31386684.86    494.50034567108530281.07  13456.0399
     7  -362.44854702  -122.40954329-26865789.39    515.09906107113051176.54  14016.5595
     8  -341.21993535  -101.18093162-22206647.67    536.32767274117710318.26  14594.2195
     9  -324.55429860   -84.51529487-18548963.19    552.99330949121368002.75  15047.7145
    10  -300.27443350   -60.23542976-13220148.74    577.27317459126696817.19  15708.4033
    11  -287.58976473   -47.55076099-10436185.74    589.95784336129480780.19  16053.5707
    12  -277.19930689   -37.16030315 -8155743.84    600.34830120131761222.10  16336.3095
    13  -266.81205343   -26.77304969 -5876005.21    610.73555467134040960.72  16618.9611
    14  -261.40739080   -21.36838706 -4689818.87    616.14021729135227147.06  16766.0294
    15  -250.78871499   -10.74971125 -2359288.91    626.75889310137557677.02  17054.9783
    16  -246.99894050    -6.95993676 -1527529.55    630.54866760138389436.38  17158.1033
    17  -242.44909296    -2.41008922  -528953.44    635.09851513139388012.49  17281.9110
    18  -240.03901219    -0.00000846       -1.86    637.50859590139916964.08  17347.4926
    19  -240.03900368     0.00000006        0.01    637.50860441139916965.94  17347.4929
    20  -240.03899930     0.00000444        0.97    637.50860879139916966.91  17347.4930
    21  -240.03896544     0.00003830        8.41    637.50864265139916974.34  17347.4939
    22  -236.60575314     3.43325060   753511.41    640.94185495140670477.34  17440.9164
    23  -233.64991927     6.38908447  1402241.96    643.89768882141319207.89  17521.3487
    24  -226.35516912    13.68383461  3003254.56    651.19243897142920220.49  17719.8490
    25  -220.76800856    19.27099517  4229494.56    656.77959953144146460.49  17871.8834
    26  -216.16896413    23.87003961  5238868.14    661.37864396145155834.08  17997.0297
    27  -206.33362908    33.70537466  7397474.68    671.21397901147314440.61  18264.6628
    28  -193.81401984    46.22498390 10145211.30    683.73358825150062177.23  18605.3388
    29  -181.59003929    58.44896444 12828064.92    695.95756880152745030.86  18937.9702
    30  -152.85127793    87.18772581 19135493.98    724.69633016159052459.91  19719.9918
    31  -144.86949296    95.16951078 20887293.30    732.67811513160804259.23  19937.1872
    32  -118.87745593   121.16154781 26591886.04    758.67015216166508851.97  20644.4665
    33   -85.60084675   154.43815699 33895257.57    791.94676134173812223.50  21549.9692
    34   -53.64183192   186.39717182 40909450.57    823.90577617180826416.50  22419.6183
    35   -25.49910436   214.53989938 47086065.33    852.04850374187003031.26  23185.4209
    36    82.19583296   322.23483670 70722372.00    959.74344105210639337.93  26115.9495
    37    93.43885960   333.47786334 73189931.12    970.98646770213106897.06  26421.8878
    38   401.28862673   641.32763047140755145.28   1278.83623483280672111.21  34798.9067


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.000000460  -0.000010762  -0.000012278   0.000004910   0.000008845   0.000006036  -0.000011284   0.000019169
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000001276   0.000001252   0.000001144   0.000006887   0.000001085   0.000013567  -0.000004531   0.000005066
                         0.000000184  -0.000001531   0.000000393  -0.000002746   0.000001608   0.000008124  -0.000002294   0.000006216

    3    1.2  1.5 -0.5   0.000000051   0.000006823   0.000004524   0.000000398   0.000002484  -0.000002837  -0.000007483   0.000010724
                        -0.000000236   0.000001411   0.000002935   0.000004293  -0.000000832  -0.000013559  -0.000009294   0.000006348

    4    1.2  1.5 -1.5   0.000001897  -0.000001260   0.000000457   0.000000253  -0.000000435   0.000004413  -0.000010788  -0.000016881
                        -0.000000619   0.000000343   0.000000644  -0.000002234   0.000000969  -0.000002314  -0.000009182  -0.000012008

    5    1.2  0.5  0.5  -0.011395741   0.078166730  -0.037765166   0.200509972   0.222575359   0.313698580   0.135837801  -0.066979593
                        -0.159881433   0.025588951  -0.003243619  -0.080731051  -0.215945410  -0.182472953   0.034754520  -0.082680988

    6    2.2  0.5  0.5  -0.002042886   0.352886338  -0.275155211  -0.045049727   0.104328667   0.022535614  -0.039360916   0.138317628
                        -0.033310222  -0.122987858  -0.059905070  -0.040144754  -0.136147881  -0.034359743   0.113036730  -0.123778785

    7    3.2  0.5  0.5   0.000884959  -0.131358393  -0.169424739   0.081597212   0.211940911  -0.107724329  -0.097004475   0.071160689
                         0.011811849  -0.042147494   0.113964069  -0.004378326   0.024529652  -0.047016668  -0.242196555   0.135946088

    8    4.2  0.5  0.5  -0.166341203  -0.014137446   0.053778803   0.469077096  -0.253689124   0.127504410  -0.076532082  -0.049837755
                         0.129234801   0.000287701   0.001322332   0.071093116  -0.006355639   0.113852623  -0.020941848   0.076888472

    9    5.2  0.5  0.5  -0.037883442  -0.036920214   0.084020251   0.068940439  -0.016976569   0.058456173  -0.031011124   0.025096125
                         0.036968194   0.015729699  -0.031164271   0.078112493  -0.012766456   0.037535941   0.043703709  -0.032458487

   10    6.2  0.5  0.5  -0.001172267  -0.057636610  -0.104496129   0.095882473   0.131415124  -0.038370674  -0.158507950   0.105850323
                         0.004907648  -0.036367238   0.078540921   0.052583489   0.050680299  -0.184381694  -0.083991226   0.105080978

   11    7.2  0.5  0.5   0.010571109  -0.025975953  -0.148334819  -0.059321840  -0.046934059   0.176297330   0.096432903  -0.083857623
                        -0.015796823   0.340587100   0.301898281  -0.009590998   0.032364089  -0.115880473  -0.013303118  -0.128312194

   12    8.2  0.5  0.5   0.030569493   0.045610662  -0.009240085   0.035027458  -0.086451921  -0.062680042  -0.040663146  -0.040918067
                        -0.007653089  -0.000685477   0.021424414  -0.001076780   0.014363379   0.071027632  -0.023588147   0.070866169

   13    9.2  0.5  0.5  -0.044858426   0.030860256   0.054489247  -0.070262626  -0.164482291  -0.272964774   0.054816999  -0.274190256
                         0.032552774  -0.109177227   0.137382991   0.177968024  -0.214098703  -0.150262684  -0.122155962  -0.191121153

   14   10.2  0.5  0.5   0.041433609   0.326675603  -0.292383608   0.085392745  -0.151299648  -0.134945994   0.019802957  -0.032299827
                        -0.036682987   0.094144877   0.242344650  -0.062835875   0.129597391   0.191342111  -0.049150460   0.113459788

   15   11.2  0.5  0.5   0.053331377  -0.075905562  -0.153335692   0.115185263   0.002175145  -0.043965453  -0.011898432   0.025992362
                         0.029685846   0.241924967  -0.288971644   0.003308577   0.099160325   0.013382423   0.117764831   0.005593335

   16   12.2  0.5  0.5  -0.015367316  -0.036657672   0.022195942  -0.002461021   0.117799968  -0.130284264   0.347994269  -0.072299066
                        -0.024522730  -0.053013532  -0.023982800  -0.071209302   0.269354565  -0.021141150   0.188490342   0.026463061

   17   13.2  0.5  0.5   0.016312461   0.104351611   0.246815812  -0.005170836   0.090245249   0.173810052  -0.080410286   0.034343479
                        -0.051482328  -0.290438802   0.325374254  -0.061062377   0.191846607   0.081468747   0.092403543   0.001904521

   18   14.2  0.5  0.5   0.485616793  -0.038578502   0.029520794   0.165981877  -0.041479610  -0.076940101  -0.148374884  -0.100121716
                        -0.258540947  -0.012162396   0.005057063   0.080327564  -0.014289234   0.055388119   0.202857712  -0.071890821

   19   15.2  0.5  0.5  -0.053112748   0.019886560   0.047407147   0.073667291   0.021653289   0.066204375  -0.087907064  -0.020374460
                        -0.044923546   0.037369844   0.038390591  -0.029123017  -0.078800114  -0.106006857  -0.055645492   0.080117897

   20   16.2  0.5  0.5   0.020603870   0.041731814   0.017639940  -0.078244130   0.045498271  -0.106370545   0.034994102  -0.043254264
                         0.053455630   0.004411369  -0.029673253   0.003358366   0.127238306   0.006550563  -0.006314005  -0.042730586

   21   17.2  0.5  0.5  -0.074049466   0.025206305   0.040363148  -0.036284601  -0.243290137  -0.085746070  -0.180005882   0.119036136
                         0.056481021   0.005717827   0.018413564  -0.272739893  -0.019077372  -0.323094145   0.256073676  -0.087425959

   22    1.2  0.5 -0.5  -0.011152827  -0.183442016  -0.210155808  -0.044858316  -0.064679578   0.074903893   0.026363522  -0.007183553
                         0.071961621  -0.158395821   0.055582781  -0.039651155  -0.052831900   0.076259189   0.034400838   0.027544624

   23    2.2  0.5 -0.5   0.078107055   0.040906788  -0.019952921  -0.013013251   0.069736558   0.190437586   0.030898948  -0.143994408
                         0.151990082  -0.025748157   0.002516818   0.103670499  -0.035321674  -0.041054705  -0.008866018  -0.103425521

   24    3.2  0.5 -0.5   0.018362734   0.009669818   0.007895795  -0.138728736   0.075287761  -0.062903001  -0.042521687  -0.106193660
                         0.022724100   0.011599223  -0.003474917  -0.073285758  -0.007453467   0.014641069  -0.053177326   0.075894459

   25    4.2  0.5 -0.5   0.002023947  -0.032877231   0.030122997   0.140066554   0.167242988  -0.254129305  -0.056117508   0.012174694
                        -0.047867957   0.012056639   0.027385804  -0.122639883  -0.093134182   0.128912908  -0.098980578  -0.158730335

   26    5.2  0.5 -0.5  -0.018977037  -0.018658754   0.008203006   0.024616820  -0.024847697  -0.005348100   0.058671391  -0.095701988
                        -0.050843052   0.003842304  -0.001343372   0.018051631   0.074114884  -0.004605211  -0.063020320  -0.013892029

   27    6.2  0.5 -0.5   0.006272579  -0.004157758   0.009188854   0.043059217   0.040543170   0.042160114  -0.027004713  -0.131877559
                         0.019211090   0.008422633  -0.003432660  -0.038004574   0.023732716   0.054598581  -0.041353466  -0.103067087

   28    7.2  0.5 -0.5   0.092657129   0.017440864   0.009938551  -0.005793831  -0.005544134   0.103705841   0.055987982   0.032660014
                         0.105225612  -0.022343277  -0.006303656   0.014345640  -0.008269529   0.051863011  -0.094165259  -0.079794729

   29    8.2  0.5 -0.5   0.008951335   0.015695485   0.032825362   0.035073056   0.090207485  -0.091474914   0.039133564   0.073582476
                         0.019209756   0.002143392  -0.003334675  -0.008463170   0.017852551   0.005881085  -0.021149127   0.050770476

   30    9.2  0.5 -0.5  -0.248267927   0.144859976   0.092071763  -0.127977531  -0.222166369   0.117673948   0.108930015   0.209592553
                         0.131312489   0.017990358  -0.162447913  -0.113651163  -0.109353864   0.240653399  -0.198662215  -0.106737958

   31   10.2  0.5 -0.5   0.089130542   0.083394487   0.102635248   0.183550407   0.027395366  -0.048382711   0.356029342  -0.045738568
                         0.238024115  -0.017718943   0.075724900  -0.085854280  -0.286313162   0.068527873   0.218629763   0.258699067

   32   11.2  0.5 -0.5   0.300663356  -0.067497803   0.024700107   0.045786414  -0.071550374  -0.030435828   0.141731156   0.151990784
                        -0.175264574   0.000321759   0.071171089   0.004986219   0.077514386  -0.216222030  -0.284413974   0.180604607

   33   12.2  0.5 -0.5  -0.036425827  -0.019946217  -0.066441119  -0.033809670  -0.030714201  -0.032484476   0.035769199   0.411879119
                        -0.012038491  -0.014656869   0.085348460   0.365239084  -0.061383303  -0.024170092   0.127986290   0.104423848

   34   13.2  0.5 -0.5  -0.435420217  -0.109871123  -0.040577737   0.110494836   0.132170707  -0.034986090   0.025157439  -0.013683401
                         0.252354871   0.132161973   0.168533610   0.094422032   0.236087531  -0.141712527  -0.052807635   0.108401652

   35   14.2  0.5 -0.5   0.076882715  -0.243376903   0.139281059   0.015709491  -0.124969247   0.051611193   0.178080454   0.082274066
                        -0.006617403   0.332925185   0.281065845  -0.039407544   0.055209141   0.051571143  -0.054748985  -0.265567204

   36   15.2  0.5 -0.5  -0.044850398  -0.074269903  -0.063037187   0.130220369  -0.124799629  -0.047235433  -0.058688824  -0.036696050
                         0.046528549  -0.098478674   0.026875363  -0.240289930  -0.023943627  -0.089012628  -0.084761411   0.111986869

   37   16.2  0.5 -0.5   0.001873623   0.100432577   0.084264196   0.008468740  -0.138438924   0.008795134  -0.017789723   0.011284497
                        -0.016604233   0.051183649   0.006757388   0.200955189  -0.090658272   0.043539618   0.019507337   0.031370018

   38   17.2  0.5 -0.5  -0.023638581   0.148594419  -0.025126013   0.263773434   0.038676562  -0.189219104   0.142850367   0.171149942
                         0.001149873  -0.252881881  -0.164147209   0.062644163   0.154752477  -0.098565894  -0.081143720  -0.256198700


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000016760  -0.000015622  -0.000037053  -0.000048135  -0.000130968  -0.000040044  -0.000107407   0.000502932
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000020523   0.000057767   0.000076782  -0.000024081   0.000010045   0.000065650  -0.000088741   0.000637016
                        -0.000004406   0.000042025   0.000012793  -0.000085308   0.000046488  -0.000125198  -0.000030813  -0.000189058

    3    1.2  1.5 -0.5  -0.000011022   0.000010805  -0.000079159  -0.000001498   0.000235398   0.000074684  -0.000188759   0.000506719
                        -0.000019742  -0.000008337   0.000011020  -0.000050239  -0.000025563  -0.000051375   0.000096265   0.000488980

    4    1.2  1.5 -1.5   0.000016863  -0.000022763  -0.000029420   0.000047265   0.000022667  -0.000014216   0.000056919  -0.000021513
                        -0.000001004  -0.000056692   0.000027612  -0.000013739  -0.000075589   0.000075080   0.000428296   0.000117889

    5    1.2  0.5  0.5  -0.157824562  -0.037735312   0.049308461   0.019125962   0.048083127   0.261004926   0.026841495   0.036679533
                        -0.033755561  -0.216032125   0.056000329   0.038127961   0.016600029  -0.020110461  -0.005753381  -0.016689937

    6    2.2  0.5  0.5   0.158177819  -0.009226599   0.010024909  -0.078978169  -0.015923003  -0.093779485  -0.058697886  -0.156178766
                        -0.074174612   0.190649753   0.141579628   0.027564587  -0.146705254   0.193680106   0.054294253   0.043469554

    7    3.2  0.5  0.5  -0.045997094   0.057873645  -0.158790834  -0.001163421   0.198804556   0.099913734   0.037103620  -0.222641149
                        -0.070094411   0.135760990   0.132901386   0.073248886  -0.067891674  -0.268828125   0.035641564  -0.029336871

    8    4.2  0.5  0.5   0.112406432  -0.107606853  -0.070666763  -0.025131340   0.062587173  -0.066840623  -0.021568465  -0.131637166
                        -0.128310886   0.002241820   0.100101935   0.060036312   0.037548582   0.165647130   0.140860737  -0.042267810

    9    5.2  0.5  0.5   0.085049795   0.035793383   0.058011078  -0.187057833   0.081115172   0.109163730   0.197536410  -0.191050215
                        -0.060121699  -0.175496315  -0.017447986  -0.136260680  -0.076192351  -0.006918882   0.037258496   0.258659379

   10    6.2  0.5  0.5   0.061581151   0.075280768  -0.208640173  -0.157895584  -0.186152071  -0.052978507  -0.126952287   0.410494492
                        -0.088267325  -0.107233376  -0.014097470  -0.086396708  -0.058247165   0.096485879  -0.000693663   0.082919813

   11    7.2  0.5  0.5   0.173322423   0.015100838  -0.062379978   0.067754994   0.038962892  -0.097117022   0.106610370   0.009512026
                        -0.159564367   0.192349211  -0.098205697   0.039547710   0.226308676   0.014362467   0.062665078   0.023455921

   12    8.2  0.5  0.5   0.125570449  -0.085978673  -0.009915454   0.273734319  -0.020126035   0.248723432   0.010298987   0.201638789
                         0.088028905   0.112894504   0.299308185   0.205517752  -0.043733832   0.022941293  -0.218219361   0.189334412

   13    9.2  0.5  0.5  -0.060341649   0.166305910   0.061206337   0.078568941  -0.032108892   0.117637606  -0.055833423  -0.046189266
                        -0.231995397  -0.041565954   0.012707584  -0.001460995  -0.066278594   0.016363055   0.072883646   0.000887346

   14   10.2  0.5  0.5  -0.127891721   0.002443133   0.064277678  -0.032823990   0.004159276   0.050866340   0.005110648   0.009573685
                         0.092483955  -0.261594042  -0.052059467  -0.080519905  -0.011320283  -0.088558507  -0.015082469  -0.012712500

   15   11.2  0.5  0.5  -0.027425290   0.195958288   0.208994198   0.181346617   0.013747582   0.092947007  -0.071098338   0.041448883
                        -0.164866461   0.070776921   0.162286433  -0.284815223  -0.033721675  -0.007389355   0.090512617  -0.091676352

   16   12.2  0.5  0.5   0.026463039   0.015296981  -0.047612093  -0.064565788   0.056413714  -0.066433653  -0.051881079  -0.058251007
                        -0.119267830  -0.185481003   0.257919963   0.174901199   0.124038866  -0.033163392   0.059140225   0.152969903

   17   13.2  0.5  0.5   0.015221853   0.090860595   0.119360504   0.125340510   0.016887133   0.043358587  -0.022138439   0.024918129
                        -0.104732211   0.115052550   0.092575111  -0.215688755   0.022275694  -0.011413313   0.084029295  -0.072488219

   18   14.2  0.5  0.5  -0.056176541   0.093397298  -0.148803873  -0.109935886  -0.044218415  -0.004663977   0.021846671  -0.059242015
                        -0.020018491   0.103210168  -0.029802188   0.065974572   0.037024135  -0.024726204  -0.050877445   0.011885481

   19   15.2  0.5  0.5  -0.118457496   0.290468918  -0.044874625   0.127642355   0.133314152  -0.273584224   0.029232932  -0.069074092
                         0.117467260  -0.076182831   0.130949362  -0.064747710  -0.007338648   0.043347730  -0.326066069   0.063072419

   20   16.2  0.5  0.5  -0.019800811  -0.158464640  -0.201923483  -0.063287282   0.241195924  -0.046834435   0.165014834   0.007545847
                        -0.259556604  -0.026726657  -0.008515461  -0.164164898  -0.122849777   0.190366036  -0.226589948  -0.149919755

   21   17.2  0.5  0.5   0.098242132  -0.021964195  -0.139925480  -0.002114579   0.005641724   0.118967194   0.012379076  -0.065254705
                         0.044717721  -0.115301711   0.086597027  -0.061193347   0.067631244  -0.211832628  -0.048500113  -0.027520191

   22    1.2  0.5 -0.5   0.017962682   0.047894178  -0.090029905   0.070913158   0.241824714  -0.054204220   0.143439260  -0.121633019
                         0.073478672  -0.151216078   0.176173171  -0.202873928   0.015304555   0.206994244  -0.265622059  -0.173920769

   23    2.2  0.5 -0.5  -0.051160323   0.028873205  -0.060656242   0.007937960  -0.059789257  -0.180886060  -0.212996731   0.082636429
                         0.132426521  -0.184390649   0.257514466  -0.070491982   0.303861731  -0.227578904  -0.057795302   0.079308558

   24    3.2  0.5 -0.5   0.060403096   0.175975481  -0.102185528  -0.007751777  -0.006703124   0.248054469   0.014284556   0.065551080
                         0.196527923  -0.037252953   0.048131593  -0.028021775   0.072589400   0.164362753   0.342879419   0.028646491

   25    4.2  0.5 -0.5   0.291427238   0.051292905   0.022678262  -0.063737134   0.007664164  -0.034827149   0.006788793   0.002575869
                        -0.093496145  -0.013075403  -0.053607868  -0.094348678   0.047362520  -0.098997548  -0.193058164   0.111917969

   26    5.2  0.5 -0.5   0.108267383  -0.049731713  -0.115962797  -0.122265765   0.087020032   0.242750418  -0.201744799   0.193854238
                        -0.016484707   0.046127412  -0.118426032  -0.162290734   0.010228350  -0.050754246  -0.232556050  -0.247041061

   27    6.2  0.5 -0.5   0.136113490   0.020671478  -0.103612853  -0.129065897   0.014658117   0.043263666   0.187389163   0.194035879
                         0.022449143  -0.065125042   0.143129559  -0.095983678  -0.068765944   0.039836550   0.243675017   0.144715735

   28    7.2  0.5 -0.5   0.157987138   0.311507407   0.046698178   0.016651727   0.188234074  -0.040558096  -0.194991959   0.010762057
                         0.050291606  -0.257753039  -0.074969801   0.391192037  -0.033811961  -0.060171187  -0.078207126  -0.219721459

   29    8.2  0.5 -0.5  -0.014763008  -0.041513628  -0.060631574   0.072875952   0.006165545   0.239130867  -0.169298800  -0.220159034
                        -0.001719168  -0.056304274  -0.162538402  -0.004291882   0.478563688   0.216774137  -0.150733417   0.099681505

   30    9.2  0.5 -0.5  -0.025948665   0.090300932  -0.131538878  -0.086537707  -0.124561050   0.036319695   0.021414792  -0.040720364
                        -0.153692476  -0.019176159   0.117332886  -0.056312002   0.052329363   0.025214133   0.010994124   0.006274508

   31   10.2  0.5 -0.5   0.091147304   0.044442155  -0.074936348   0.042091251  -0.052339848   0.008344752  -0.002682350   0.014862689
                         0.062615450   0.071900577  -0.021874152  -0.041314701  -0.066675619  -0.021035633   0.018528832  -0.031424244

   32   11.2  0.5 -0.5   0.129584169   0.087151033  -0.024669846  -0.103216418  -0.251769135  -0.062100890   0.029025476  -0.037604296
                        -0.086118228  -0.071592282   0.199830387  -0.026854796   0.014991110   0.024473681   0.016735370  -0.027581095

   33   12.2  0.5 -0.5   0.004580313   0.052849200  -0.111946731  -0.031293167   0.165095791   0.009662138  -0.027348271   0.189884817
                        -0.104130874  -0.106675462   0.012216884  -0.043540122   0.009781544  -0.035855405   0.082326289   0.145417947

   34   13.2  0.5 -0.5   0.075168325   0.087791789   0.044629603  -0.054160490  -0.160077281  -0.011471979   0.023720848  -0.046791282
                        -0.001765080  -0.017251109   0.074728179   0.062152457  -0.028915268   0.008769258  -0.011165829  -0.031216478

   35   14.2  0.5 -0.5  -0.120170674  -0.014429174  -0.054129690   0.038413406   0.090668899   0.004682314  -0.054450738  -0.013917449
                         0.183171164   0.073938051  -0.052477222  -0.071296806  -0.030968411   0.015946446   0.001229254   0.029173149

   36   15.2  0.5 -0.5  -0.184743484   0.095925787   0.079273687  -0.260599950   0.219873863  -0.168263057  -0.111393363   0.168872265
                        -0.059718158   0.226457253  -0.024725549   0.013600998   0.125758154   0.074181232   0.064579103   0.118764820

   37   16.2  0.5 -0.5   0.150752838   0.022748180   0.336474615  -0.246202133   0.127786228   0.101090451   0.096649552  -0.096818079
                         0.240174240   0.170363583   0.187715970   0.033467417   0.141322462   0.040994358  -0.052287499  -0.046692648

   38   17.2  0.5 -0.5  -0.104223630   0.057202996  -0.044655755   0.102446193   0.004108337  -0.023448785   0.035007222   0.011262384
                         0.289579164   0.081595286  -0.020738563  -0.055208051  -0.049076628  -0.003998882   0.023070922  -0.029677570


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5  -0.000337059   0.863841826   0.171574922   0.465056107  -0.089777782   0.001215804   0.000400224   0.000041001
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.001074143  -0.155374087  -0.351922726   0.492796594   0.385157084   0.000307238  -0.000234809  -0.000216812
                         0.002638965   0.030160245  -0.223358252   0.146707597   0.623285083  -0.000091349  -0.000012934  -0.000094064

    3    1.2  1.5 -0.5   0.001040867   0.335021317  -0.527036267  -0.381673181   0.239263663   0.000443894   0.000810794   0.000213698
                        -0.000774532  -0.318342715   0.107545591   0.526522052  -0.130134419  -0.000318813   0.000168418  -0.000209088

    4    1.2  1.5 -1.5   0.001561524   0.080641523   0.608538405  -0.287448098   0.449910484   0.000621435  -0.000491893   0.000013936
                         0.002187004  -0.092949128   0.370365228   0.117573897   0.422481106  -0.000325142   0.000056364   0.000084632

    5    1.2  0.5  0.5  -0.127039814   0.000032758  -0.000026807  -0.000060403   0.000381495  -0.000329530  -0.022488609   0.168109140
                         0.007355351   0.000357208  -0.000009860   0.000001960  -0.000074749  -0.201947736  -0.072228076   0.067048114

    6    2.2  0.5  0.5   0.087323919  -0.000065483  -0.000050148   0.000167265  -0.000298565   0.045005955   0.023862791  -0.058749461
                         0.005852308  -0.000213775   0.000007134   0.000031435   0.000026804   0.118378769   0.111393057  -0.066480502

    7    3.2  0.5  0.5  -0.025182822  -0.000193792   0.000041372   0.000140030   0.000145111   0.095964976   0.141502440   0.078578454
                         0.036483774  -0.000110316  -0.000051082  -0.000017670  -0.000133488   0.105784938   0.033278643  -0.051024428

    8    4.2  0.5  0.5   0.162129881  -0.000041042  -0.000128215   0.000144038  -0.000772935   0.046796117  -0.037625018   0.022379265
                        -0.039598549   0.000107491   0.000058270   0.000124570   0.000278241  -0.101828401   0.091114426  -0.085805145

    9    5.2  0.5  0.5  -0.387334284   0.000098812   0.000066681   0.000266672   0.002079443  -0.033302876   0.074935757   0.104711206
                         0.066864858  -0.000762353  -0.000208721  -0.000254316  -0.000584403   0.581824553  -0.166074777  -0.141249428

   10    6.2  0.5  0.5  -0.069490106   0.000424368   0.000011435  -0.000243324   0.000309851  -0.281679471  -0.288020890  -0.180458052
                        -0.032331561   0.000038067  -0.000032898  -0.000113729  -0.000023291  -0.001174745  -0.065892919   0.088635480

   11    7.2  0.5  0.5  -0.048370204   0.000060109  -0.000021570   0.000019807   0.000269663  -0.020115490  -0.015523879  -0.027370566
                        -0.001653910  -0.000160322  -0.000009459  -0.000006145  -0.000043607   0.090237876  -0.059302733  -0.034518726

   12    8.2  0.5  0.5  -0.365543465   0.000120649   0.000132022  -0.000082593   0.001557175  -0.091520397  -0.042191217   0.061035864
                         0.067617198  -0.000070664  -0.000029683  -0.000181919  -0.000510364   0.040495908  -0.047100675   0.167158193

   13    9.2  0.5  0.5   0.038464141   0.000104020  -0.000042620   0.000040503  -0.000166726  -0.029525812  -0.029916290  -0.072141279
                         0.004779592   0.000039338  -0.000055818   0.000045929  -0.000030531  -0.007733870  -0.045668704   0.046841085

   14   10.2  0.5  0.5  -0.009659885   0.000014045   0.000026566  -0.000021065   0.000060042  -0.006721468   0.004111947   0.030100039
                        -0.009118632   0.000040954  -0.000021560  -0.000018278   0.000021826  -0.000620546  -0.043552798  -0.010958976

   15   11.2  0.5  0.5  -0.015803563   0.000121753   0.000025947  -0.000192956   0.000004843   0.003141451  -0.060148908  -0.078461279
                        -0.020639563   0.000199282  -0.000051145  -0.000039271  -0.000053322  -0.040333795  -0.094151058  -0.058590210

   16   12.2  0.5  0.5   0.047957851   0.000041214  -0.000017538   0.000244347  -0.000188205  -0.072439862  -0.059809597  -0.171336130
                         0.001139520  -0.000238684   0.000088980   0.000005680   0.000022196   0.068419223   0.191329513  -0.077591726

   17   13.2  0.5  0.5  -0.023252001   0.000086889   0.000010358  -0.000146142   0.000060604   0.008607370  -0.038218438  -0.036781921
                        -0.017470524   0.000137471  -0.000037406  -0.000031592  -0.000038066  -0.019295056  -0.095017108  -0.036709790

   18   14.2  0.5  0.5   0.029287604  -0.000083441  -0.000014146   0.000064732  -0.000110447   0.030135110   0.064100003   0.008215861
                         0.013312997  -0.000061313   0.000040485   0.000038534   0.000015293   0.011742297   0.041906218   0.073088582

   19   15.2  0.5  0.5   0.136387270   0.000008009   0.000136043   0.000224543  -0.000559421  -0.009245684   0.134572272  -0.173095293
                         0.039798085  -0.000392343   0.000150933   0.000003299   0.000044966   0.096825109   0.263022105  -0.025290046

   20   16.2  0.5  0.5  -0.077737861   0.000073808  -0.000060825  -0.000025244   0.000132014   0.029050499   0.078083933   0.388035181
                         0.026293462   0.000401824  -0.000000100   0.000064390   0.000081217  -0.256220370  -0.061739852   0.104341584

   21   17.2  0.5  0.5  -0.023717083  -0.000063238   0.000015236   0.000009243   0.000089619   0.024791687   0.073328696   0.069156715
                         0.007332277   0.000096576   0.000028094  -0.000007318  -0.000005001  -0.031470862  -0.026292622   0.046959507

   22    1.2  0.5 -0.5  -0.013608538   0.000111505  -0.000226980  -0.000090739  -0.000045279   0.111846965  -0.301762222  -0.112511006
                         0.157024426  -0.000147726  -0.000026886   0.000333191  -0.000801917   0.037319739  -0.066530009   0.089246850

   23    2.2  0.5 -0.5  -0.022246110  -0.000324527   0.000310256   0.000009056   0.000321676   0.077170478   0.125965757   0.155376023
                        -0.232026157   0.000117637  -0.000034025  -0.000156500   0.000859174  -0.011814195  -0.051639286  -0.055998256

   24    3.2  0.5 -0.5  -0.009985354  -0.000468025  -0.000148499   0.000090995  -0.000234076   0.384495459  -0.168334097   0.216445732
                        -0.054103407   0.000233121  -0.000056042  -0.000183875  -0.000129280  -0.120269081   0.160775019  -0.330170710

   25    4.2  0.5 -0.5  -0.044484652  -0.000029994   0.000096671  -0.000005173   0.000299446   0.020863467  -0.150342515   0.080629160
                        -0.218858210   0.000133001   0.000107600  -0.000061042   0.000830442  -0.160130714  -0.045034575  -0.134090989

   26    5.2  0.5 -0.5  -0.053496447  -0.000395201   0.000546440  -0.000319202   0.000337385   0.154208090   0.356137958  -0.298136349
                        -0.148772249  -0.000040990   0.000017290  -0.000249295   0.000577455   0.205179658   0.137047123  -0.189611532

   27    6.2  0.5 -0.5   0.353287949  -0.000025331  -0.000018119   0.000073204  -0.001676207  -0.236411002   0.333116539   0.086252485
                         0.455531130   0.000084071   0.000109508  -0.000186774  -0.001345946  -0.002179915  -0.035210633   0.127154113

   28    7.2  0.5 -0.5   0.005877746   0.000268804   0.000065998  -0.000098730  -0.000072265  -0.153240884  -0.018316120   0.190568840
                         0.112331053   0.000044406  -0.000016868   0.000154961  -0.000342828   0.034692141  -0.041577141  -0.072830826

   29    8.2  0.5 -0.5   0.159888416   0.000251805  -0.000013281   0.000109966  -0.000520395  -0.119731156   0.065451953  -0.160394935
                         0.275423862   0.000176406  -0.000024974   0.000237479  -0.001014410  -0.069959728  -0.335442173  -0.141103582

   30    9.2  0.5 -0.5  -0.025376606  -0.000004660  -0.000041335  -0.000010655   0.000118478   0.043608806  -0.067431444  -0.003349114
                        -0.027035121  -0.000002178  -0.000018379   0.000043020   0.000031672  -0.004440312  -0.019976643  -0.011487379

   31   10.2  0.5 -0.5   0.004652083   0.000011343  -0.000012570  -0.000023826  -0.000039665  -0.006008052   0.012499087   0.000039156
                         0.029899758  -0.000018325  -0.000007445   0.000009979  -0.000113877   0.014858639   0.021509494   0.015989857

   32   11.2  0.5 -0.5  -0.024181171   0.000029236  -0.000125615  -0.000067023   0.000088388   0.018619332  -0.080103160   0.008451362
                         0.023327825  -0.000065034  -0.000024881   0.000102577  -0.000153838   0.025277451  -0.004334477   0.028644288

   33   12.2  0.5 -0.5   0.009806886  -0.000338498   0.000248128   0.000052919  -0.000052589   0.040486547   0.144804543   0.200572446
                        -0.034272949   0.000166805   0.000005998  -0.000364513   0.000150395  -0.026726886   0.018844739  -0.135597268

   34   13.2  0.5 -0.5  -0.006923979   0.000067411  -0.000097032  -0.000043060   0.000025533  -0.001891476  -0.061804439  -0.003249744
                         0.006168169  -0.000037598   0.000016714   0.000092340  -0.000036375   0.002321155   0.006691467  -0.010714714

   35   14.2  0.5 -0.5  -0.003964174   0.000004267   0.000040078   0.000063705   0.000064037  -0.015198049  -0.002235812   0.009870924
                        -0.019498479   0.000026180  -0.000032324  -0.000019418   0.000061831  -0.021521035  -0.026106018  -0.021904929

   36   15.2  0.5 -0.5  -0.009070481  -0.000220509   0.000285529  -0.000020076   0.000025987  -0.003833248   0.151881414   0.116981896
                         0.014470732   0.000088886   0.000034819  -0.000255352  -0.000025986  -0.005865922   0.012057632  -0.130056138

   37   16.2  0.5 -0.5   0.029180815   0.000181963  -0.000029285  -0.000067035  -0.000121219   0.022814658  -0.098081607  -0.111962282
                         0.030356696  -0.000046042   0.000081761   0.000197179  -0.000137470  -0.000149322  -0.048505896   0.092363504

   38   17.2  0.5 -0.5  -0.019446062   0.000001789  -0.000007893   0.000002987   0.000082834   0.007923264  -0.016714599  -0.018540048
                        -0.015626845  -0.000035596  -0.000028664  -0.000002918   0.000031917   0.012950707   0.046352402   0.025920980


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5  -0.000202978  -0.000146226  -0.000014774   0.000066626  -0.000046842  -0.000016401   0.000023676   0.000017170
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.000016200   0.000000634   0.000123188  -0.000017012   0.000025881  -0.000009051   0.000013624  -0.000009588
                         0.000126380  -0.000013532  -0.000049131   0.000050888  -0.000017916   0.000003877  -0.000007324   0.000019773

    3    1.2  1.5 -0.5  -0.000019839  -0.000088102  -0.000001369   0.000030789   0.000000172   0.000003403  -0.000019374  -0.000011743
                         0.000095922   0.000048080   0.000023233   0.000035191  -0.000017645   0.000014154  -0.000001479  -0.000003704

    4    1.2  1.5 -1.5  -0.000058321   0.000124062  -0.000029874   0.000001514  -0.000035585   0.000004511  -0.000014541   0.000002619
                        -0.000092257   0.000088436   0.000150398  -0.000046549  -0.000054847   0.000004794   0.000012427   0.000013347

    5    1.2  0.5  0.5  -0.040325952   0.017390145  -0.025365674   0.016103029   0.011185345   0.005433879   0.008899135  -0.075529856
                         0.124869556  -0.024233852  -0.024077813  -0.048896773   0.020163773   0.269080107   0.172484398  -0.161837749

    6    2.2  0.5  0.5   0.113173089  -0.018786501   0.070013236  -0.040301397  -0.251692372   0.184778713   0.057251215  -0.034922459
                         0.029617815   0.119387076  -0.010533063  -0.102627419  -0.036710394  -0.207002819   0.044961155  -0.090106987

    7    3.2  0.5  0.5  -0.310493711   0.044999257   0.096602374   0.268008198   0.080875134   0.050109837  -0.071522277   0.020660796
                        -0.064786665   0.202705187  -0.069161454  -0.073555867   0.021267461  -0.042409425  -0.101172957   0.039724523

    8    4.2  0.5  0.5  -0.003386295   0.035216604  -0.014175345   0.006794333  -0.086153771   0.046409501  -0.154890133  -0.008570615
                         0.021935092  -0.069900880  -0.060678349  -0.151063671  -0.008650512  -0.038508730  -0.060748243   0.126675850

    9    5.2  0.5  0.5   0.113663105   0.002909543  -0.003131177  -0.183649455   0.025539421   0.044770868   0.104719939   0.014943461
                        -0.093543250   0.044655639   0.168326988  -0.069622241  -0.006475533   0.034850529  -0.024147184  -0.047982007

   10    6.2  0.5  0.5   0.125150601  -0.025754369   0.077038396  -0.186311119   0.160408715   0.040349215  -0.114842529  -0.107542002
                         0.042471335  -0.053760393   0.101802928  -0.181028854   0.043776627  -0.126888770  -0.057689579   0.037942692

   11    7.2  0.5  0.5   0.018177792   0.080627351  -0.045866297   0.094575641  -0.030982299   0.165578804   0.046563507  -0.073360939
                        -0.146252554  -0.288199980  -0.012449288   0.032346924  -0.089866975  -0.119158417   0.051606946   0.059653397

   12    8.2  0.5  0.5   0.272597129   0.008358563   0.004927586   0.309528215  -0.121658759  -0.032639899  -0.068148276   0.131295414
                         0.130872730  -0.021960148  -0.237064575   0.053231091  -0.130223210  -0.079775073  -0.117196732   0.017844616

   13    9.2  0.5  0.5  -0.022600778   0.028026128   0.021774366  -0.038858937  -0.011993903   0.237828417  -0.219747859   0.119669908
                         0.049579316   0.055971431   0.064123664   0.029944112  -0.253562865   0.211835837   0.033816546  -0.146079326

   14   10.2  0.5  0.5  -0.056320539  -0.023627334  -0.035720065  -0.100286647   0.149162029  -0.170160207  -0.077164343   0.065611346
                         0.023283706   0.059533227   0.073716796   0.050889013   0.075703451   0.190363882  -0.106891708   0.039815591

   15   11.2  0.5  0.5  -0.047962500   0.055444867   0.268693593  -0.023188909   0.100118447   0.218243655   0.035257912  -0.102903352
                         0.140031431   0.083580528   0.042422944   0.257292844  -0.122208297   0.050974161  -0.122745384   0.027815055

   16   12.2  0.5  0.5   0.018228532   0.011061102  -0.127246029   0.127774038  -0.071088167   0.188192918  -0.276560210  -0.154840802
                        -0.006526504  -0.080282955   0.086648164  -0.082758135   0.095762616   0.159112205  -0.126456357  -0.241354362

   17   13.2  0.5  0.5  -0.059581494   0.049342997   0.204910651  -0.002734137   0.036243029   0.119839014   0.114263873  -0.152198266
                         0.065589712  -0.002204931   0.018350674   0.185215536  -0.055097231  -0.038967319  -0.091468125   0.080707794

   18   14.2  0.5  0.5   0.004869286   0.006611364  -0.011925649   0.051220564   0.025779782   0.111005892   0.035239263  -0.107802439
                        -0.045880205  -0.022307294   0.045315813  -0.159521871   0.007787293   0.007928408   0.143499043   0.010151530

   19   15.2  0.5  0.5   0.375807997   0.252129694  -0.033954221   0.018981115   0.105359368  -0.031573868  -0.042064619  -0.013048366
                        -0.166582292   0.078963703   0.051489348   0.296971876   0.038057118   0.123479171   0.104555018   0.078512000

   20   16.2  0.5  0.5   0.184501291   0.322710615   0.035717660  -0.160720526   0.101022450   0.124930567  -0.035115485  -0.103653944
                        -0.124689513   0.040412541  -0.150202229  -0.104730677   0.078044170  -0.034217589  -0.145489893  -0.073737079

   21   17.2  0.5  0.5  -0.152577791   0.042298013   0.054052942   0.061363405   0.068527684   0.003942657  -0.235445830  -0.186306904
                         0.045729184   0.028943057   0.093040067  -0.008637225   0.138459638  -0.197495321   0.127808366   0.075200703

   22    1.2  0.5 -0.5  -0.132884456  -0.284833772  -0.146097178   0.003858091   0.011780094   0.060602198   0.080466997   0.046696731
                         0.134098704  -0.144816112   0.057020340  -0.070287506  -0.135838335  -0.040785943   0.137044522  -0.013122065

   23    2.2  0.5 -0.5  -0.021533607  -0.191543019  -0.055117194  -0.237512521   0.043883608   0.172699035   0.007601505   0.075294501
                        -0.124661008   0.207507926  -0.251731600  -0.048728600  -0.145597668  -0.215072704  -0.148297679  -0.025053672

   24    3.2  0.5 -0.5   0.263179357   0.089290673  -0.090503169   0.094861886   0.242707337   0.105863317   0.037607204   0.137702436
                         0.060553591  -0.043070018   0.153293775  -0.066763205  -0.020414674  -0.101702075   0.128379531   0.045188676

   25    4.2  0.5 -0.5   0.012208822  -0.281695642  -0.092971170   0.026716506  -0.162373278   0.120104874   0.055559185   0.017995115
                        -0.096181665  -0.029585992  -0.077029332   0.346177511   0.325142926   0.036519035   0.168877101  -0.003697454

   26    5.2  0.5 -0.5  -0.022382582   0.124529330  -0.152154085  -0.103655568  -0.019823104   0.020522944   0.014028935   0.006289401
                         0.388292749  -0.122970090  -0.172109444  -0.041179943   0.024305186  -0.023762767   0.052866572  -0.042739781

   27    6.2  0.5 -0.5  -0.057517801  -0.088239391  -0.189192056   0.003692779   0.092928355   0.080524605   0.095482095   0.106331690
                         0.156728555  -0.022411133  -0.077424699   0.240115449   0.048638843  -0.099154144   0.000168710  -0.057466398

   28    7.2  0.5 -0.5  -0.028339959   0.163818924   0.336449347  -0.028195056  -0.140734370   0.014973525   0.098278435   0.045061980
                         0.167369983  -0.172744823   0.134375329   0.027551410   0.169669778  -0.167265557   0.033205358  -0.104171167

   29    8.2  0.5 -0.5   0.140862068   0.014343924   0.103411103   0.034320809   0.001162022  -0.046562138  -0.041164766  -0.023658621
                         0.001669249   0.284292777  -0.017757914  -0.089739773  -0.059750880  -0.091025630   0.133357489   0.091108864

   30    9.2  0.5 -0.5  -0.027861145   0.068995682  -0.067687691   0.014268181  -0.032329471  -0.155147026  -0.006033588  -0.299733288
                         0.017948210   0.040935708  -0.127674242   0.084024785  -0.107113469   0.005297115   0.150995346  -0.213371161

   31   10.2  0.5 -0.5  -0.007015246   0.054823173  -0.092076386  -0.006432706  -0.055280809   0.019861612   0.249987012  -0.226618710
                         0.016660126  -0.011677968   0.010109637  -0.069005516  -0.008630787   0.108182839  -0.206248214   0.290588482

   32   11.2  0.5 -0.5  -0.111778073   0.147922935  -0.040011469   0.075860709   0.065551151  -0.046090679   0.304672523  -0.105641936
                        -0.024068075   0.088555939  -0.208039820  -0.033676793  -0.068761643   0.085914362   0.236811953  -0.086355417

   33   12.2  0.5 -0.5   0.076875664  -0.176793883  -0.017857244   0.148260268  -0.069406686  -0.078770248  -0.145828485  -0.223986680
                         0.133149469  -0.016630894   0.029473088   0.132187362  -0.012740750   0.097871292   0.066359857   0.191038938

   34   13.2  0.5 -0.5  -0.081176484   0.119374476  -0.004686896   0.002607121   0.031998948  -0.030190572   0.116961770   0.141040966
                        -0.021891469   0.036418515  -0.095977615  -0.016074510   0.067331472  -0.013869232   0.069812106   0.009041016

   35   14.2  0.5 -0.5   0.045750326  -0.070525519  -0.021112676   0.077712354   0.072500786  -0.071225764  -0.056050910  -0.165327952
                        -0.054457031  -0.057279719   0.112016791   0.029763638  -0.115770066  -0.148506610  -0.128370588  -0.188205581

   36   15.2  0.5 -0.5   0.139625486  -0.241821684   0.315439729   0.038818584  -0.002649212  -0.129966145   0.095092948   0.003699374
                         0.002079189  -0.137025326  -0.143480274  -0.098787964  -0.152746171   0.197181928   0.019193535  -0.189069620

   37   16.2  0.5 -0.5   0.028893468  -0.065646987   0.117734147  -0.025777771   0.377935239   0.101805989  -0.117426252  -0.117242065
                         0.002217012  -0.093063869  -0.236202903  -0.080682618   0.349900667   0.051305333  -0.063091295  -0.075366083

   38   17.2  0.5 -0.5   0.018610279  -0.013321253  -0.064582060   0.105447267   0.143577568  -0.111910132   0.132636130  -0.125061484
                         0.009347302   0.012773148   0.118928262   0.007175965  -0.037359068  -0.221454414  -0.142434568  -0.246929889


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  1.5  1.5  -0.000020138   0.000006613   0.000004454  -0.000014402  -0.000008851   0.000000239
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000002986   0.000004288   0.000000745   0.000001019  -0.000000282  -0.000000596
                        -0.000002054  -0.000001049   0.000004468  -0.000001399   0.000001308   0.000001235

    3    1.2  1.5 -0.5   0.000000203  -0.000000293   0.000002250   0.000005004   0.000002274  -0.000000304
                        -0.000002183   0.000004022  -0.000001385   0.000000788   0.000002512  -0.000000668

    4    1.2  1.5 -1.5  -0.000005133   0.000001869   0.000007687  -0.000000748   0.000001067   0.000000668
                        -0.000007167  -0.000003661   0.000002592   0.000001463   0.000000178  -0.000002304

    5    1.2  0.5  0.5   0.257872045   0.158921035   0.068649123  -0.106913329   0.044757558  -0.110906657
                        -0.109957136  -0.037952900   0.324676315  -0.043297041  -0.034475276   0.095746416

    6    2.2  0.5  0.5   0.089346980   0.069293479  -0.020691689  -0.280642361   0.380521191   0.017475626
                        -0.016476401   0.078792437   0.038146230   0.091360975   0.028810667   0.032014778

    7    3.2  0.5  0.5   0.317613884  -0.073258984  -0.088470695   0.114010527   0.074538532   0.011547651
                        -0.128241689  -0.196627181  -0.120967611  -0.002866463  -0.079986400   0.009062442

    8    4.2  0.5  0.5   0.049531129  -0.196617735   0.353369181   0.030194407  -0.036689644   0.014246573
                         0.148272855  -0.176264061   0.244347993  -0.002852444  -0.044971799  -0.230255934

    9    5.2  0.5  0.5  -0.004404300  -0.058426720   0.024129577   0.022459710  -0.086906398   0.013820631
                         0.050390249  -0.040877705   0.108283374   0.005509053   0.009658546  -0.058355935

   10    6.2  0.5  0.5   0.266433366  -0.048224218  -0.076253008   0.030266706   0.041130649   0.006618480
                        -0.007539019  -0.178063805  -0.046942303  -0.031683344  -0.023708476   0.008103542

   11    7.2  0.5  0.5   0.012507367   0.113648484   0.017136254   0.095064892   0.071328585   0.013458424
                        -0.077408378   0.097650406   0.000740964  -0.427832069  -0.251691691   0.024940973

   12    8.2  0.5  0.5  -0.071204674  -0.037166586   0.019811525  -0.005671345   0.046227703   0.008031144
                         0.099131020  -0.064241857   0.018140605  -0.004798927   0.001728815   0.030074367

   13    9.2  0.5  0.5   0.170148102  -0.179853029   0.002038631   0.071183156   0.030842500  -0.003715988
                         0.199662205   0.252430432  -0.121841860  -0.094498402   0.155865086  -0.048092480

   14   10.2  0.5  0.5  -0.194371084  -0.128932140   0.080902922  -0.078910943   0.460787379  -0.007056785
                         0.077214566  -0.080115924  -0.043449521  -0.187598957  -0.128477387   0.059449773

   15   11.2  0.5  0.5  -0.086976109  -0.003088776  -0.006348323  -0.159581826  -0.126075283   0.063858739
                         0.032975684  -0.044039956   0.018423310   0.121122869  -0.353505452   0.016335756

   16   12.2  0.5  0.5  -0.241684948   0.017565358  -0.103623430   0.031361119  -0.025950436  -0.031562770
                        -0.187231092  -0.108244813   0.005702967   0.041564037   0.019113158   0.002150979

   17   13.2  0.5  0.5  -0.095163222   0.034774484   0.087735253   0.204361682   0.135181806  -0.031838995
                        -0.105107382  -0.137447432   0.113406432  -0.087127820   0.440879978   0.053216735

   18   14.2  0.5  0.5  -0.077672270  -0.134432925   0.195404177   0.025384350  -0.077534951   0.072027302
                         0.181948438  -0.089626636  -0.038859126   0.046882387  -0.009889180   0.535174903

   19   15.2  0.5  0.5   0.147669984   0.091554197   0.040701141   0.030035467   0.016943385  -0.063166841
                         0.072293520  -0.061693334   0.049814802  -0.008813582  -0.002449517  -0.012420316

   20   16.2  0.5  0.5  -0.086438661  -0.085594352  -0.054544381   0.029130899   0.022027855   0.044163318
                        -0.084752703   0.106862471  -0.039490498   0.034337149  -0.002260777  -0.014301033

   21   17.2  0.5  0.5  -0.096050574   0.159273940  -0.206881363   0.039550889   0.041994157   0.002728926
                         0.378748928   0.070189633   0.154684937  -0.007829046   0.020520619  -0.085211583

   22    1.2  0.5 -0.5  -0.022338975   0.029289539   0.018821462   0.255647112   0.094000743  -0.050305937
                        -0.014054416   0.069151532  -0.047357748   0.188050575  -0.100828218   0.047708197

   23    2.2  0.5 -0.5  -0.034816670   0.026934098   0.083094508   0.014454757  -0.024055585  -0.180641842
                         0.063636395   0.010366768  -0.074554853   0.004603303  -0.031127370   0.025525170

   24    3.2  0.5 -0.5  -0.026097240  -0.017185165  -0.066950342  -0.001775009   0.001703005  -0.028061166
                         0.013526413  -0.077131280  -0.042138890  -0.010260073   0.019026684  -0.000815916

   25    4.2  0.5 -0.5   0.031386855  -0.263616556  -0.097940047  -0.004013123   0.001962226   0.039773108
                        -0.018233718  -0.015898360   0.121234965  -0.018149854   0.007810784  -0.032846395

   26    5.2  0.5 -0.5   0.016869228  -0.041613572   0.000778463  -0.020268758   0.015806833   0.047879751
                        -0.046356069   0.012144938   0.044093172   0.002019605   0.012639128  -0.013899615

   27    6.2  0.5 -0.5   0.002946830  -0.016872227  -0.045411020  -0.008096801   0.001606312  -0.016240029
                         0.021460290  -0.048006195  -0.007856250   0.007775923  -0.007833524   0.008877533

   28    7.2  0.5 -0.5  -0.041692970  -0.088888617   0.057257052   0.010745784  -0.016229686  -0.151616448
                         0.052090848  -0.015835249  -0.141311621   0.007464200  -0.022925722  -0.013116239

   29    8.2  0.5 -0.5  -0.039856251  -0.120365604  -0.050642657  -0.028791350  -0.013475974  -0.024349964
                        -0.125211423   0.037435003   0.036831436  -0.034585449  -0.006653880   0.004692506

   30    9.2  0.5 -0.5   0.060254235  -0.036146204  -0.037202684   0.029899596  -0.072448198   0.032789547
                         0.075487194  -0.288459650  -0.238899885  -0.147511516  -0.004999343   0.280528771

   31   10.2  0.5 -0.5   0.121723928  -0.153082424  -0.300370565  -0.009385050  -0.015209511  -0.253978314
                         0.108075264   0.105048142  -0.064872315  -0.029336588  -0.020806754   0.052835294

   32   11.2  0.5 -0.5  -0.189687467  -0.020483653   0.086677407  -0.102995167   0.047026649  -0.026915619
                         0.078332275   0.104531060  -0.011054040   0.053562516   0.040455213  -0.348719955

   33   12.2  0.5 -0.5   0.005540976   0.067285225   0.258425236   0.003717509  -0.015473439   0.007452769
                        -0.110244548   0.295908544  -0.157488015   0.053223977   0.028787317   0.027491232

   34   13.2  0.5 -0.5  -0.087120258  -0.025496664   0.044624991  -0.119701316   0.002473820   0.044549981
                         0.090376038   0.272969669   0.147220028   0.147617315   0.109659254   0.501447775

   35   14.2  0.5 -0.5   0.157563314  -0.177240213  -0.021720927  -0.292985645   0.186601404  -0.026251514
                         0.020494017  -0.041984822   0.034704604   0.370030345   0.153745918  -0.051462667

   36   15.2  0.5 -0.5  -0.112192745   0.013683151  -0.232839826   0.125167421   0.051424043   0.015329061
                         0.087130771   0.051397900   0.114206873   0.036316071  -0.035307385   0.046102162

   37   16.2  0.5 -0.5   0.136827569   0.071153835  -0.001746915  -0.076385112  -0.032493195  -0.019350540
                        -0.055705067   0.102978806  -0.150599412  -0.062834592   0.057788866  -0.011044079

   38   17.2  0.5 -0.5   0.031103165  -0.137781796   0.094533539   0.152140305  -0.104089608   0.005665409
                        -0.040003799   0.248448876   0.190667616  -0.288296611  -0.121437881   0.002426806


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   2.569%   0.676%   0.144%   4.672%   9.617%  13.170%   1.966%   1.132%   2.605%   4.809%
    6    2.2  0.5  0.5   0.111%  13.965%   7.930%   0.364%   2.942%   0.169%   1.433%   3.445%   3.052%   3.643%
    7    3.2  0.5  0.5   0.014%   1.903%   4.169%   0.668%   4.552%   1.382%   6.807%   2.355%   0.703%   2.178%
    8    4.2  0.5  0.5   4.437%   0.020%   0.289%  22.509%   6.440%   2.922%   0.630%   0.840%   2.910%   1.158%
    9    5.2  0.5  0.5   0.280%   0.161%   0.803%   1.085%   0.045%   0.483%   0.287%   0.168%   1.085%   3.208%
   10    6.2  0.5  0.5   0.003%   0.464%   1.709%   1.196%   1.984%   3.547%   3.218%   2.225%   1.158%   1.717%
   11    7.2  0.5  0.5   0.036%  11.667%  11.315%   0.361%   0.325%   4.451%   0.948%   2.350%   5.550%   3.723%
   12    8.2  0.5  0.5   0.099%   0.208%   0.054%   0.123%   0.768%   0.897%   0.221%   0.670%   2.352%   2.014%
   13    9.2  0.5  0.5   0.307%   1.287%   2.184%   3.661%   7.289%   9.709%   1.793%  11.171%   5.746%   2.939%
   14   10.2  0.5  0.5   0.306%  11.558%  14.422%   1.124%   3.969%   5.482%   0.281%   1.392%   2.491%   6.844%
   15   11.2  0.5  0.5   0.373%   6.429%  10.702%   1.328%   0.984%   0.211%   1.401%   0.071%   2.793%   4.341%
   16   12.2  0.5  0.5   0.084%   0.415%   0.107%   0.508%   8.643%   1.742%  15.663%   0.593%   1.493%   3.464%
   17   13.2  0.5  0.5   0.292%   9.524%  16.679%   0.376%   4.495%   3.685%   1.500%   0.118%   1.120%   2.149%
   18   14.2  0.5  0.5  30.267%   0.164%   0.090%   3.400%   0.192%   0.899%   6.317%   1.519%   0.356%   1.938%
   19   15.2  0.5  0.5   0.484%   0.179%   0.372%   0.628%   0.668%   1.562%   1.082%   0.683%   2.783%   9.018%
   20   16.2  0.5  0.5   0.328%   0.176%   0.119%   0.613%   1.826%   1.136%   0.126%   0.370%   6.776%   2.583%
   21   17.2  0.5  0.5   0.867%   0.067%   0.197%   7.570%   5.955%  11.174%   9.798%   2.181%   1.165%   1.378%
   22    1.2  0.5 -0.5   0.530%   5.874%   4.725%   0.358%   0.697%   1.143%   0.188%   0.081%   0.572%   2.516%
   23    2.2  0.5 -0.5   2.920%   0.234%   0.040%   1.092%   0.611%   3.795%   0.103%   3.143%   2.015%   3.483%
   24    3.2  0.5 -0.5   0.085%   0.023%   0.007%   2.462%   0.572%   0.417%   0.464%   1.704%   4.227%   3.236%
   25    4.2  0.5 -0.5   0.230%   0.123%   0.166%   3.466%   3.664%   8.120%   1.295%   2.534%   9.367%   0.280%
   26    5.2  0.5 -0.5   0.295%   0.036%   0.007%   0.093%   0.611%   0.005%   0.741%   0.935%   1.199%   0.460%
   27    6.2  0.5 -0.5   0.041%   0.009%   0.010%   0.330%   0.221%   0.476%   0.244%   2.801%   1.903%   0.467%
   28    7.2  0.5 -0.5   1.966%   0.080%   0.014%   0.024%   0.010%   1.344%   1.200%   0.743%   2.749%  16.347%
   29    8.2  0.5 -0.5   0.045%   0.025%   0.109%   0.130%   0.846%   0.840%   0.198%   0.799%   0.022%   0.489%
   30    9.2  0.5 -0.5   7.888%   2.131%   3.487%   2.929%   6.132%   7.176%   5.133%   5.532%   2.429%   0.852%
   31   10.2  0.5 -0.5   6.460%   0.727%   1.627%   4.106%   8.273%   0.704%  17.456%   6.902%   1.223%   0.714%
   32   11.2  0.5 -0.5  12.112%   0.456%   0.568%   0.212%   1.113%   4.768%  10.098%   5.572%   2.421%   1.272%
   33   12.2  0.5 -0.5   0.147%   0.061%   1.170%  13.454%   0.471%   0.164%   1.766%  18.055%   1.086%   1.417%
   34   13.2  0.5 -0.5  25.327%   2.954%   3.005%   2.112%   7.321%   2.131%   0.342%   1.194%   0.565%   0.800%
   35   14.2  0.5 -0.5   0.595%  17.007%   9.840%   0.180%   1.867%   0.532%   3.471%   7.729%   4.799%   0.568%
   36   15.2  0.5 -0.5   0.418%   1.521%   0.470%   7.470%   1.615%   1.015%   1.063%   1.389%   3.770%   6.048%
   37   16.2  0.5 -0.5   0.028%   1.271%   0.715%   4.045%   2.738%   0.197%   0.070%   0.111%   8.041%   2.954%
   38   17.2  0.5 -0.5   0.056%   8.603%   2.758%   7.350%   2.544%   4.552%   2.699%   9.493%   9.472%   0.993%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  74.622%   2.944%  21.628%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   2.505%  17.374%  26.437%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  21.358%  28.933%  42.290%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   1.514%  50.749%   9.645%
    5    1.2  0.5  0.5   0.557%   0.182%   0.259%   6.853%   0.075%   0.162%   1.619%   0.000%   0.000%   0.000%
    6    2.2  0.5  0.5   2.015%   0.700%   2.178%   4.631%   0.639%   2.628%   0.766%   0.000%   0.000%   0.000%
    7    3.2  0.5  0.5   4.288%   0.537%   4.413%   8.225%   0.265%   5.043%   0.197%   0.000%   0.000%   0.000%
    8    4.2  0.5  0.5   1.501%   0.424%   0.533%   3.191%   2.031%   1.911%   2.785%   0.000%   0.000%   0.000%
    9    5.2  0.5  0.5   0.367%   5.356%   1.238%   1.196%   4.041%  10.340%  15.450%   0.000%   0.000%   0.000%
   10    6.2  0.5  0.5   4.373%   3.240%   3.805%   1.212%   1.612%  17.538%   0.587%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   1.354%   0.615%   5.273%   0.964%   1.529%   0.064%   0.234%   0.000%   0.000%   0.000%
   12    8.2  0.5  0.5   8.968%  11.717%   0.232%   6.239%   4.773%   7.651%  13.819%   0.000%   0.000%   0.000%
   13    9.2  0.5  0.5   0.391%   0.618%   0.542%   1.411%   0.843%   0.213%   0.150%   0.000%   0.000%   0.000%
   14   10.2  0.5  0.5   0.684%   0.756%   0.015%   1.043%   0.025%   0.025%   0.018%   0.000%   0.000%   0.000%
   15   11.2  0.5  0.5   7.002%  11.401%   0.133%   0.869%   1.325%   1.012%   0.068%   0.000%   0.000%   0.000%
   16   12.2  0.5  0.5   6.879%   3.476%   1.857%   0.551%   0.619%   2.679%   0.230%   0.000%   0.000%   0.000%
   17   13.2  0.5  0.5   2.282%   6.223%   0.078%   0.201%   0.755%   0.588%   0.085%   0.000%   0.000%   0.000%
   18   14.2  0.5  0.5   2.303%   1.644%   0.333%   0.063%   0.307%   0.365%   0.103%   0.000%   0.000%   0.000%
   19   15.2  0.5  0.5   1.916%   2.048%   1.783%   7.673%  10.717%   0.875%   2.019%   0.000%   0.000%   0.000%
   20   16.2  0.5  0.5   4.085%   3.096%   7.327%   3.843%   7.857%   2.253%   0.673%   0.000%   0.000%   0.000%
   21   17.2  0.5  0.5   2.708%   0.375%   0.461%   5.903%   0.251%   0.502%   0.062%   0.000%   0.000%   0.000%
   22    1.2  0.5 -0.5   3.914%   4.619%   5.871%   4.578%   9.113%   4.504%   2.484%   0.000%   0.000%   0.000%
   23    2.2  0.5 -0.5   6.999%   0.503%   9.591%   8.451%   4.871%   1.312%   5.433%   0.000%   0.000%   0.000%
   24    3.2  0.5 -0.5   1.276%   0.085%   0.531%   8.855%  11.777%   0.512%   0.303%   0.000%   0.000%   0.000%
   25    4.2  0.5 -0.5   0.339%   1.296%   0.230%   1.101%   3.732%   1.253%   4.988%   0.000%   0.000%   0.000%
   26    5.2  0.5 -0.5   2.747%   4.129%   0.768%   6.150%   9.478%   9.861%   2.500%   0.000%   0.000%   0.000%
   27    6.2  0.5 -0.5   3.122%   2.587%   0.494%   0.346%   9.449%   5.859%  33.232%   0.000%   0.000%   0.000%
   28    7.2  0.5 -0.5   0.780%  15.331%   3.658%   0.527%   4.414%   4.839%   1.265%   0.000%   0.000%   0.000%
   29    8.2  0.5 -0.5   3.009%   0.533%  22.906%  10.417%   5.138%   5.841%  10.142%   0.000%   0.000%   0.000%
   30    9.2  0.5 -0.5   3.107%   1.066%   1.825%   0.195%   0.058%   0.170%   0.137%   0.000%   0.000%   0.000%
   31   10.2  0.5 -0.5   0.609%   0.348%   0.719%   0.051%   0.035%   0.121%   0.092%   0.000%   0.000%   0.000%
   32   11.2  0.5 -0.5   4.054%   1.137%   6.361%   0.446%   0.112%   0.217%   0.113%   0.000%   0.000%   0.000%
   33   12.2  0.5 -0.5   1.268%   0.288%   2.735%   0.138%   0.753%   5.720%   0.127%   0.000%   0.000%   0.000%
   34   13.2  0.5 -0.5   0.758%   0.680%   2.646%   0.021%   0.069%   0.316%   0.009%   0.000%   0.000%   0.000%
   35   14.2  0.5 -0.5   0.568%   0.656%   0.918%   0.028%   0.297%   0.104%   0.040%   0.000%   0.000%   0.000%
   36   15.2  0.5 -0.5   0.690%   6.810%   6.416%   3.382%   1.658%   4.262%   0.029%   0.000%   0.000%   0.000%
   37   16.2  0.5 -0.5  14.845%   6.174%   3.630%   1.190%   1.208%   1.155%   0.177%   0.000%   0.000%   0.000%
   38   17.2  0.5 -0.5   0.242%   1.354%   0.243%   0.057%   0.176%   0.101%   0.062%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5   0.806%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5  53.683%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   7.418%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5  38.091%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   4.078%   0.572%   3.276%   1.722%   0.089%   0.122%   0.265%   0.053%   7.243%
    6    2.2  0.5  0.5   0.000%   1.604%   1.298%   0.787%   1.369%   1.461%   0.501%   1.216%   6.470%   7.699%
    7    3.2  0.5  0.5   0.000%   2.040%   2.113%   0.878%  10.060%   4.311%   1.412%   7.724%   0.699%   0.431%
    8    4.2  0.5  0.5   0.000%   1.256%   0.972%   0.786%   0.049%   0.613%   0.388%   2.287%   0.750%   0.364%
    9    5.2  0.5  0.5   0.000%  33.963%   3.320%   3.092%   2.167%   0.200%   2.834%   3.857%   0.069%   0.322%
   10    6.2  0.5  0.5   0.000%   7.934%   8.730%   4.042%   1.747%   0.355%   1.630%   6.748%   2.765%   1.773%
   11    7.2  0.5  0.5   0.000%   0.855%   0.376%   0.194%   2.172%   8.956%   0.226%   0.999%   0.904%   4.162%
   12    8.2  0.5  0.5   0.000%   1.002%   0.400%   3.167%   9.144%   0.055%   5.622%   9.864%   3.176%   0.743%
   13    9.2  0.5  0.5   0.000%   0.093%   0.298%   0.740%   0.297%   0.392%   0.459%   0.241%   6.444%  10.144%
   14   10.2  0.5  0.5   0.000%   0.005%   0.191%   0.103%   0.371%   0.410%   0.671%   1.265%   2.798%   6.519%
   15   11.2  0.5  0.5   0.000%   0.164%   1.248%   0.959%   2.191%   1.006%   7.400%   6.674%   2.496%   5.023%
   16   12.2  0.5  0.5   0.000%   0.993%   4.018%   3.538%   0.037%   0.657%   2.370%   2.318%   1.422%   6.073%
   17   13.2  0.5  0.5   0.000%   0.045%   1.049%   0.270%   0.785%   0.244%   4.233%   3.431%   0.435%   1.588%
   18   14.2  0.5  0.5   0.000%   0.105%   0.586%   0.541%   0.213%   0.054%   0.220%   2.807%   0.073%   1.239%
   19   15.2  0.5  0.5   0.000%   0.946%   8.729%   3.060%  16.898%   6.980%   0.380%   8.855%   1.255%   1.624%
   20   16.2  0.5  0.5   0.000%   6.649%   0.991%  16.146%   4.959%  10.578%   2.384%   3.680%   1.630%   1.678%
   21   17.2  0.5  0.5   0.000%   0.161%   0.607%   0.699%   2.537%   0.263%   1.158%   0.384%   2.387%   3.902%
   22    1.2  0.5 -0.5   0.000%   1.390%   9.549%   2.062%   3.564%  10.210%   2.460%   0.496%   1.859%   0.534%
   23    2.2  0.5 -0.5   0.000%   0.609%   1.853%   2.728%   1.600%   7.975%   6.641%   5.879%   2.312%   7.608%
   24    3.2  0.5 -0.5   0.000%  16.230%   5.418%  15.586%   7.293%   0.983%   3.169%   1.346%   5.932%   2.155%
   25    4.2  0.5 -0.5   0.000%   2.608%   2.463%   2.448%   0.940%   8.023%   1.458%  12.055%  13.208%   1.576%
   26    5.2  0.5 -0.5   0.000%   6.588%  14.562%  12.484%  15.127%   3.063%   5.277%   1.244%   0.098%   0.099%
   27    6.2  0.5 -0.5   0.000%   5.589%  11.221%   2.361%   2.787%   0.829%   4.179%   5.767%   1.100%   1.632%
   28    7.2  0.5 -0.5   0.000%   2.469%   0.206%   4.162%   2.882%   5.668%  13.125%   0.155%   4.859%   2.820%
   29    8.2  0.5 -0.5   0.000%   1.923%  11.681%   4.564%   1.984%   8.103%   1.101%   0.923%   0.357%   1.045%
   30    9.2  0.5 -0.5   0.000%   0.192%   0.495%   0.014%   0.110%   0.644%   2.088%   0.726%   1.252%   2.410%
   31   10.2  0.5 -0.5   0.000%   0.026%   0.062%   0.026%   0.033%   0.314%   0.858%   0.480%   0.313%   1.210%
   32   11.2  0.5 -0.5   0.000%   0.099%   0.644%   0.089%   1.307%   2.972%   4.488%   0.689%   0.903%   0.951%
   33   12.2  0.5 -0.5   0.000%   0.235%   2.132%   5.862%   2.364%   3.153%   0.119%   3.945%   0.498%   1.578%
   34   13.2  0.5 -0.5   0.000%   0.001%   0.386%   0.013%   0.707%   1.558%   0.923%   0.027%   0.556%   0.110%
   35   14.2  0.5 -0.5   0.000%   0.069%   0.069%   0.058%   0.506%   0.825%   1.299%   0.693%   1.866%   2.713%
   36   15.2  0.5 -0.5   0.000%   0.005%   2.321%   3.060%   1.950%   7.725%  12.009%   1.127%   2.334%   5.577%
   37   16.2  0.5 -0.5   0.000%   0.052%   1.197%   2.107%   0.084%   1.297%   6.965%   0.717%  26.527%   1.300%
   38   17.2  0.5 -0.5   0.000%   0.023%   0.243%   0.102%   0.043%   0.034%   1.831%   1.117%   2.201%   6.157%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   2.983%   3.190%   7.859%   2.670%  11.013%   1.331%   0.319%   2.147%
    6    2.2  0.5  0.5   0.530%   0.934%   0.825%   1.101%   0.188%   8.711%  14.563%   0.133%
    7    3.2  0.5  0.5   1.535%   0.200%  11.732%   4.403%   2.246%   1.301%   1.195%   0.022%
    8    4.2  0.5  0.5   2.768%   1.612%   2.444%   6.973%  18.458%   0.092%   0.337%   5.322%
    9    5.2  0.5  0.5   1.155%   0.253%   0.256%   0.508%   1.231%   0.053%   0.765%   0.360%
   10    6.2  0.5  0.5   1.652%   1.300%   7.104%   3.403%   0.802%   0.192%   0.225%   0.011%
   11    7.2  0.5  0.5   0.483%   0.894%   0.615%   2.245%   0.029%  19.208%   6.844%   0.080%
   12    8.2  0.5  0.5   1.838%   1.756%   1.490%   0.551%   0.072%   0.006%   0.214%   0.097%
   13    9.2  0.5  0.5   4.943%   3.566%   6.882%   9.607%   1.485%   1.400%   2.525%   0.233%
   14   10.2  0.5  0.5   1.738%   0.589%   4.374%   2.304%   0.843%   4.142%  22.883%   0.358%
   15   11.2  0.5  0.5   1.631%   1.136%   0.865%   0.195%   0.038%   4.014%  14.086%   0.434%
   16   12.2  0.5  0.5   9.248%   8.223%   9.347%   1.203%   1.077%   0.271%   0.104%   0.100%
   17   13.2  0.5  0.5   2.142%   2.968%   2.010%   2.010%   2.056%   4.935%  21.265%   0.385%
   18   14.2  0.5  0.5   2.183%   1.172%   3.914%   2.611%   3.969%   0.284%   0.611%  29.160%
   19   15.2  0.5  0.5   1.270%   0.633%   2.703%   1.219%   0.414%   0.098%   0.029%   0.414%
   20   16.2  0.5  0.5   2.240%   1.618%   1.465%   1.875%   0.453%   0.203%   0.049%   0.215%
   21   17.2  0.5  0.5   7.177%   4.037%  15.268%   3.029%   6.673%   0.163%   0.218%   0.727%
   22    1.2  0.5 -0.5   2.526%   0.235%   0.070%   0.564%   0.260%  10.072%   1.900%   0.481%
   23    2.2  0.5 -0.5   2.205%   0.630%   0.526%   0.083%   1.246%   0.023%   0.155%   3.328%
   24    3.2  0.5 -0.5   1.790%   2.100%   0.086%   0.624%   0.626%   0.011%   0.036%   0.079%
   25    4.2  0.5 -0.5   3.161%   0.034%   0.132%   6.975%   2.429%   0.035%   0.006%   0.266%
   26    5.2  0.5 -0.5   0.299%   0.187%   0.243%   0.188%   0.194%   0.041%   0.041%   0.249%
   27    6.2  0.5 -0.5   0.912%   1.461%   0.047%   0.259%   0.212%   0.013%   0.006%   0.034%
   28    7.2  0.5 -0.5   1.076%   1.288%   0.445%   0.815%   2.325%   0.017%   0.079%   2.316%
   29    8.2  0.5 -0.5   1.948%   0.886%   1.727%   1.589%   0.392%   0.203%   0.023%   0.061%
   30    9.2  0.5 -0.5   2.284%  13.537%   0.933%   8.452%   5.846%   2.265%   0.527%   7.977%
   31   10.2  0.5 -0.5  10.503%  13.580%   2.650%   3.447%   9.443%   0.095%   0.066%   6.730%
   32   11.2  0.5 -0.5  14.891%   1.862%   4.212%   1.135%   0.764%   1.348%   0.385%  12.233%
   33   12.2  0.5 -0.5   2.567%   8.667%   1.218%   9.209%   9.159%   0.285%   0.107%   0.081%
   34   13.2  0.5 -0.5   1.855%   1.997%   1.576%   7.516%   2.367%   3.612%   1.203%  25.343%
   35   14.2  0.5 -0.5   1.962%   6.275%   2.525%   3.318%   0.168%  22.276%   5.846%   0.334%
   36   15.2  0.5 -0.5   0.941%   3.576%   2.018%   0.283%   6.726%   1.699%   0.389%   0.236%
   37   16.2  0.5 -0.5   1.777%   1.943%   2.182%   1.567%   2.268%   0.978%   0.440%   0.050%
   38   17.2  0.5 -0.5   3.788%   7.661%   0.257%   8.071%   4.529%  10.626%   2.558%   0.004%


 Property matrices transformed in SO basis (not sym. adapted)
 ============================================================

 DMX (TRANSFORMED, REAL)         
              1             2             3             4             5             6             7             8
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
              9            10            11            12            13            14            15            16
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             17            18            19            20            21            22            23            24
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             25            26            27            28            29            30            31            32
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             33            34            35            36            37            38
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000

 DMX (TRANSFORMED, IMAG)         
              1             2             3             4             5             6             7             8
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
              9            10            11            12            13            14            15            16
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             17            18            19            20            21            22            23            24
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             25            26            27            28            29            30            31            32
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             33            34            35            36            37            38
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000

 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 DMY (TRANSFORMED, REAL)         
              1             2             3             4             5             6             7             8
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
              9            10            11            12            13            14            15            16
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             17            18            19            20            21            22            23            24
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             25            26            27            28            29            30            31            32
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             33            34            35            36            37            38
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000

 DMY (TRANSFORMED, IMAG)         
              1             2             3             4             5             6             7             8
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
              9            10            11            12            13            14            15            16
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             17            18            19            20            21            22            23            24
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             25            26            27            28            29            30            31            32
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             33            34            35            36            37            38
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 DMZ (TRANSFORMED, REAL)         
              1             2             3             4             5             6             7             8
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
              9            10            11            12            13            14            15            16
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             17            18            19            20            21            22            23            24
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             25            26            27            28            29            30            31            32
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             33            34            35            36            37            38
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000

 DMZ (TRANSFORMED, IMAG)         
              1             2             3             4             5             6             7             8
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
              9            10            11            12            13            14            15            16
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             17            18            19            20            21            22            23            24
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             25            26            27            28            29            30            31            32
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
             33            34            35            36            37            38
    1    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    2    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    3    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    4    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    5    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    6    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    7    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    8    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
    9    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   10    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   11    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   12    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   13    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   14    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   15    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   16    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   17    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   18    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   19    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   20    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   21    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   22    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   23    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   24    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   25    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   26    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   27    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   28    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   29    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   30    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   31    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   32    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   33    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   34    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   35    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   36    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   37    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000
   38    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000    0.00000000

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

              2       6     1923.04       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *    752573.94 742513.17   9988.96     64.81      4.74      1.92
 REAL TIME  *    757313.34 SEC
 DISK USED  *         1.92 GB (local),       53.78 GB (total)
 SF USED    *        19.37 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=    401.288626733921

              CI              CI           MULTI
   -239.71867707   -239.97968640   -239.03062159
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
