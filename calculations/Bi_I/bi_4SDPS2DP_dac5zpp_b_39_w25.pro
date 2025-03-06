
 Working directory              : /wrk/irikura/molpro.hlvQIOTglB/
 Global scratch directory       : /wrk/irikura/molpro.hlvQIOTglB/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.hlvQIOTglB/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Bi SO-CI
                                                                                 ! valence s2 inactive
                                                                                 ! include 8p in active space
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Bi};
 
 basis={
 ecp,bi,ECP60MDF;
 spdfghi,bi,aug-cc-pwCV5Z-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=10
 ND=8
 
 {multi
     closed,7,3
     occ,7,12
     wf,charge=0,sym=PAR,spin=3;state,NQ; weight,25, 1,1,1, 1,1,1, 1,1,1
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
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 27-Feb-25          TIME: 09:41:58  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =        10.00000000                                  
 SETTING ND             =         8.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Bi   ECP ECP60MDF                 selected for group  1
 Library entry BI     S AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Bi S diffuse               selected for group 1    nprim= 1    centre=  0.008    ratio= 3.000    dratio= 1.000
 Library entry BI     P AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Bi P diffuse               selected for group 1    nprim= 1    centre=  0.005    ratio= 3.000    dratio= 1.000
 Library entry BI     D AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Bi D diffuse               selected for group 1    nprim= 1    centre=  0.012    ratio= 3.000    dratio= 1.000
 Library entry BI     F AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Bi F diffuse               selected for group 1    nprim= 1    centre=  0.021    ratio= 3.000    dratio= 1.000
 Library entry BI     G AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry BI     H AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry BI     I AUG-CC-PWCV5Z-PP     selected for orbital group  1


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

   1  BI     23.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   23
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

         1 0.100E-04 0.244E-04 0.244E-04 0.244E-04 0.244E-04 0.244E-04 0.357E-04 0.220E-03
         2 0.186E-05 0.186E-05 0.186E-05 0.295E-03 0.295E-03 0.295E-03 0.205E-02 0.205E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     695.992 MB (compressed) written to integral file ( 13.5%)

     Node minimum: 31.195 MB, node maximum: 57.147 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   24679576.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15976936      RECORD LENGTH: 524288

 Memory used in sort:      16.53 MW

 SORT1 READ   646821870. AND WROTE     4259373. INTEGRALS IN     14 RECORDS. CPU TIME:     3.07 SEC, REAL TIME:     3.13 SEC
 SORT2 READ    68065344. AND WROTE   395255076. INTEGRALS IN   3024 RECORDS. CPU TIME:     0.49 SEC, REAL TIME:     0.55 SEC

 Node minimum:    24675847.  Node maximum:    24720811. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.84      9.54
 REAL TIME  *        11.13 SEC
 DISK USED  *        31.11 MB (local),        1.88 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        9 (    0    9)
 Number of external orbitals:     262 (  128  134)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Quartet   Space symmetry=2
 Number of states:            10
 Number of CSFs:              84   (84 determinants, 84 intermediate states)

 State symmetry 2

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             240   (324 determinants, 324 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.135D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.525D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.540D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.800D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.610D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 5 3 6 1 1 5 6   2 3 4 1 3 6 2 4 5 1   3 4 6 2 5 812131011  14 715 9 4 3 5 6 2 1
                                        5 4 6 2 3 9 8121110  131415 7 1 9 8121110  1314 715 4 5 6 2 3 1  111014 81213 915 7 4
                                        5 3 6 2241728252120  16192623271822141011  13 915 7 812 1 4 5 2   6 3111410 71513 9 8
                                       12 1 2 4 6 5 3 1 2 4   6 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.101D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.101D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.269D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.269D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.136D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.136D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 2   3 1 7 4 8 610 5 9 2   1 310 6 7 4 8 5 9 1   3 2 610 5 9 4 7 8 5
                                        610 9 4 8 7 3 2 119  11151814162012172113   5 8 4 6 910 7191116  2012151814172113 3 2
                                        1 8 410 5 9 6 71814  17211319112016121510   5 9 8 6 4 7 1 2 3 5   910 8 7 4 617212016
                                       12181413191115 1 3 2   8 5 9 7 410 6 3 1 2   3 1 2 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.59524   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381
                                          0.02381   0.02381
 Weight factors for state symmetry  2:    0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381
 
 Number of orbital rotations:  2531  ( 27 closed/active, 1298 closed/virtual, 0 active/active, 1206 active/virtual )
 Total number of variables:    5963
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9   16    0   -213.51431649    -213.52922312   -0.01490663    0.08927973 0.00042493 0.00000000  0.17E+01      4.13
   2   10   18    0   -213.52919420    -213.52920818   -0.00001398    0.00266430 0.00000472 0.00000000  0.99E-01      8.55
   3    7   14    0   -213.52920818    -213.52920818   -0.00000000    0.00000212 0.00000001 0.00000000  0.19E-03     12.38

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.31E-08)
                       Final energy:   -213.52920818
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.592379670001
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.00715997
 One electron energy                          -372.97923999
 Two electron energy                           159.38686032
 Virial ratio                                    4.09522055
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -213.360525552527
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.64333903
 One electron energy                          -368.35941733
 Two electron energy                           154.99889178
 Virial ratio                                    4.10824806
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -213.360525552525
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.64333903
 One electron energy                          -368.35941733
 Two electron energy                           154.99889178
 Virial ratio                                    4.10824806
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -213.360525552504
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.64333903
 One electron energy                          -368.35941733
 Two electron energy                           154.99889178
 Virial ratio                                    4.10824806
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -213.360525552498
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.64333903
 One electron energy                          -368.35941733
 Two electron energy                           154.99889177
 Virial ratio                                    4.10824806
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -213.360525552490
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.64333903
 One electron energy                          -368.35941733
 Two electron energy                           154.99889178
 Virial ratio                                    4.10824806
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -213.358098961732
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.65105389
 One electron energy                          -368.37701468
 Two electron energy                           155.01891572
 Virial ratio                                    4.10786342
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -213.356716371200
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.64463472
 One electron energy                          -368.34706171
 Two electron energy                           154.99034534
 Virial ratio                                    4.10813390
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -213.356716371176
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.64463472
 One electron energy                          -368.34706170
 Two electron energy                           154.99034533
 Virial ratio                                    4.10813390
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Quartet
 ==============================
 !MCSCF STATE 10.2 Quartet Energy             -213.356716371169
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.64463472
 One electron energy                          -368.34706171
 Two electron energy                           154.99034534
 Virial ratio                                    4.10813390
 
 !MCSCF STATE 10.2 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.536624809534
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.94072253
 One electron energy                          -372.70445541
 Two electron energy                           159.16783060
 Virial ratio                                    4.09739465
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.536624809533
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.94072253
 One electron energy                          -372.70445541
 Two electron energy                           159.16783060
 Virial ratio                                    4.09739465
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.536624809525
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.94072253
 One electron energy                          -372.70445541
 Two electron energy                           159.16783061
 Virial ratio                                    4.09739465
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.536624809515
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.94072253
 One electron energy                          -372.70445541
 Two electron energy                           159.16783060
 Virial ratio                                    4.09739465
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.536624809513
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.94072253
 One electron energy                          -372.70445541
 Two electron energy                           159.16783060
 Virial ratio                                    4.09739465
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.501083933769
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.89734174
 One electron energy                          -372.49457373
 Two electron energy                           158.99348979
 Virial ratio                                    4.09882905
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.501083933745
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.89734174
 One electron energy                          -372.49457373
 Two electron energy                           158.99348980
 Virial ratio                                    4.09882905
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.501083933725
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.89734174
 One electron energy                          -372.49457373
 Two electron energy                           158.99348979
 Virial ratio                                    4.09882905
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     1.000000001651
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.649823370195
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.000000012518
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     3.999999970669
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.350178448826
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     0.000000000007
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.999999999880
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.000000012643
 !MCSCF expec    <10.2 Quartet|LXLX|10.2 Quartet>     0.999999995045
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.219464339201
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000060458
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000000032
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.999999934041
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.780522123306
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999999842
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999995968
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000003332
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     1.000000001842
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     1.397290482261
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.999999986816
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000000023716
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     2.602707166675
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     0.000000000007
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.999999999614
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.999999987399
 !MCSCF expec    <10.2 Quartet|LYLY|10.2 Quartet>     0.000000005869
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.679108480003
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     3.999999935967
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000003850
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000065952
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.320875371998
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000000040259
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999970156
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999999933
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     3.999999996463
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     3.952886147500
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     1.000000000623
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000000005571
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     0.047114384456
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     0.000000000007
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.000000000506
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.999999999957
 !MCSCF expec    <10.2 Quartet|LZLZ|10.2 Quartet>     0.999999999086
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     2.101427180795
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000003574
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999999996117
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000000007
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.898602504695
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999959899
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000033877
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999996736
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     5.999999999957
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     5.999999999957
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     5.999999999957
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     5.999999999957
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     5.999999999957
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     0.000000000020
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     2.000000000000
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>     2.000000000000
 !MCSCF expec    <10.2 Quartet|L**2|10.2 Quartet>     2.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     5.999999999999
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     5.999999999999
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     5.999999999999
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     5.999999999999
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     5.999999999999
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 4 2   6 3 5 1 4 3 5 2 6 1   4 6 3 5 211 7 81214  151310 9 6 4 5 3 2 1
                                        6 5 3 2 41013111415  12 8 7 9 11310111514   812 7 9 6 5 3 2 4 1  1310111415 812 7 9 5
                                        3 6 2 4221618202724  19232617212528131014  1511 812 7 9 1 5 3 6   2 41310151411 812 7
                                        9 1 5 2 3 6 4 1 5 3   2 6 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 3 2 2 3 1 1   2 3 2 1 3 4 6 810 5   7 9 4 6 5 810 9 7 2   1 3 5 9 710 8 6 4 9
                                        7 510 8 6 4 2 1 312  18201517141621131911  10 8 9 7 5 6 4201815  1712141621131911 2 1
                                        3 810 7 9 5 6 41820  151712161421131911 7   9 810 5 6 4 2 1 3 7   9 8 510 6 418201517
                                       12161421131911 2 1 3   7 9 5 810 6 4 2 3 1   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.72385     1  1  s    1.00015
    2.1     2.00000    -1.35211     1  1  d2-  1.00064
    3.1     2.00000    -1.35211     1  1  d2+  1.00064
    4.1     2.00000    -1.35211     1  1  d1-  1.00064
    5.1     2.00000    -1.35211     1  1  d0   1.00064
    6.1     2.00000    -1.35211     1  1  d1+  1.00064
    7.1     2.00000    -0.71402     1  1  s   -0.42013    1  5  s    0.61137    1  6  s    0.46626
    1.2     2.00000    -4.30008     1  1  py   0.99988
    2.2     2.00000    -4.30008     1  1  px   0.99988
    3.2     2.00000    -4.30008     1  1  pz   0.99988
    4.2     0.92555    -0.15658     1  1  px  -0.27574    1  5  px   0.47547    1  6  px   0.37392
    5.2     0.92555    -0.15658     1  1  pz  -0.27574    1  5  pz   0.47547    1  6  pz   0.37392
    6.2     0.92555    -0.15658     1  1  py  -0.27574    1  5  py   0.47547    1  6  py   0.37392
    7.2     0.07244     0.03847     1 12  py   0.83717    1 13  py   0.25668
    8.2     0.07244     0.03847     1 12  pz   0.83717    1 13  pz   0.25668
    9.2     0.07244     0.03847     1 12  px   0.83717    1 13  px   0.25668
   10.2     0.00202     0.38672     1  1  px  -0.29155    1  4  px   0.78630    1  5  px   0.76057    1  6  px  -1.10105
                                    1  7  px  -0.56667    1 12  px   0.55337
   11.2     0.00202     0.38672     1  1  py  -0.29155    1  4  py   0.78630    1  5  py   0.76057    1  6  py  -1.10105
                                    1  7  py  -0.56667    1 12  py   0.55337
   12.2     0.00202     0.38672     1  1  pz  -0.29155    1  4  pz   0.78630    1  5  pz   0.76057    1  6  pz  -1.10105
                                    1  7  pz  -0.56667    1 12  pz   0.55337
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 aaa000000      0.99874220      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000001     -0.00175348
 a0a0a0000     -0.00017150      0.00000203      0.08800136     -0.00000909     -0.00000425      0.80606906     -0.56931039
 0aa00a000      0.00017149      0.00000312      0.74207697     -0.00000556     -0.00000417      0.32682312      0.56931037
 0aa0a0000     -0.00000000      0.00001724     -0.00000186     -0.70222410      0.00004413     -0.00000772     -0.00000000
 aa00a0000      0.00000000      0.00001657      0.00000243      0.00004413      0.70222410      0.00000344      0.00000000
 0aaa00000     -0.00000000      0.70222410     -0.00000229      0.00001724     -0.00001657     -0.00000152     -0.00000000
 aa000a000     -0.00000000      0.70222409     -0.00000229      0.00001724     -0.00001657     -0.00000152     -0.00000000
 a0aa00000     -0.00000000     -0.00001657     -0.00000243     -0.00004413     -0.70222409     -0.00000344     -0.00000000
 a0a00a000      0.00000000     -0.00001724      0.00000186      0.70222409     -0.00004413      0.00000772      0.00000000
 aa0a00000      0.00017148     -0.00000109     -0.65407560     -0.00000353     -0.00000008      0.47924596      0.56931037
 0a0a0a000     -0.00740859     -0.00000012     -0.00540524      0.00000056      0.00000026     -0.04951059     -0.07075277
 a00aa0000      0.00740859     -0.00000019     -0.04558004      0.00000034      0.00000026     -0.02007422      0.07075277
 00a0aa000      0.00740859      0.00000007      0.04017480      0.00000022      0.00000000     -0.02943637      0.07075276
 a000a00a0      0.01137017     -0.00000012     -0.00024702      0.00000063      0.00000028     -0.05695194      0.03143027
 00a0a0a00     -0.01137017      0.00000016      0.01204762     -0.00000064     -0.00000031      0.05566363     -0.03143027
 a00a000a0      0.00000000      0.00000123      0.00000018      0.00000327      0.05202140      0.00000025      0.00000000
 0a0a000a0      0.00000000     -0.05202140      0.00000017     -0.00000128      0.00000123      0.00000011      0.00000000
 00a00aa00      0.00000000     -0.00000128      0.00000014      0.05202140     -0.00000327      0.00000057      0.00000000
 0a000aa00     -0.00000000      0.05202140     -0.00000017      0.00000128     -0.00000123     -0.00000011     -0.00000000
 a000a000a     -0.00000000     -0.00000123     -0.00000018     -0.00000327     -0.05202140     -0.00000025     -0.00000000
 00a0a000a     -0.00000000      0.00000128     -0.00000014     -0.05202140      0.00000327     -0.00000057     -0.00000000
 0a000a0a0     -0.01137017     -0.00000021     -0.05422993      0.00000033      0.00000027     -0.01739827     -0.03143027
 
 Energy:     -213.59237967   -213.36052555   -213.36052555   -213.36052555   -213.36052555   -213.36052555   -213.35809896

 State:              8               9              10
 aaa000000     -0.00000000     -0.00000000     -0.00000000
 a0a0a0000      0.00000000     -0.00000000     -0.00000000
 0aa00a000      0.00000000     -0.00000000      0.00000000
 0aa0a0000     -0.00001368     -0.00007877      0.70187782
 aa00a0000      0.00000752      0.70187782      0.00007877
 0aaa00000     -0.70187783      0.00000752     -0.00001368
 aa000a000      0.70187783     -0.00000752      0.00001368
 a0aa00000      0.00000752      0.70187783      0.00007877
 a0a00a000     -0.00001368     -0.00007877      0.70187783
 aa0a00000     -0.00000000      0.00000000      0.00000000
 0a0a0a000      0.00000000     -0.00000000     -0.00000000
 a00aa0000     -0.00000000      0.00000000      0.00000000
 00a0aa000      0.00000000      0.00000000      0.00000000
 a000a00a0     -0.00000000      0.00000000      0.00000000
 00a0a0a00      0.00000000     -0.00000000     -0.00000000
 a00a000a0     -0.00000059     -0.05533451     -0.00000621
 0a0a000a0      0.05533451     -0.00000059      0.00000108
 00a00aa00     -0.00000108     -0.00000621      0.05533451
 0a000aa00      0.05533451     -0.00000059      0.00000108
 a000a000a     -0.00000059     -0.05533451     -0.00000621
 00a0a000a     -0.00000108     -0.00000621      0.05533451
 0a000a0a0     -0.00000000      0.00000000     -0.00000000
 
 Energy:     -213.35671637   -213.35671637   -213.35671637
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 baa000000      0.79070756     -0.00000001     -0.00000016      0.00000002     -0.19051150      0.00000000      0.00000000
 aab000000     -0.23036598      0.00000004      0.00000065     -0.00000007      0.78002858      0.00000000     -0.00000000
 2a0000000     -0.00000000     -0.00002431      0.70436837     -0.00000230     -0.00000059     -0.00014034      0.70081690
 0a2000000      0.00000000      0.00002431     -0.70436837      0.00000230      0.00000059     -0.00014034      0.70081690
 a20000000      0.00000000     -0.00009999      0.00000229      0.70436836      0.00000006      0.00000880     -0.00004450
 20a000000      0.00000000      0.70436836      0.00002431      0.00009999     -0.00000003      0.70081690      0.00014034
 a02000000     -0.00000000      0.00009999     -0.00000229     -0.70436836     -0.00000006      0.00000880     -0.00004450
 02a000000     -0.00000000     -0.70436836     -0.00002431     -0.00009999      0.00000003      0.70081690      0.00014034
 aba000000     -0.56034158     -0.00000003     -0.00000049      0.00000005     -0.58951708     -0.00000000     -0.00000000
 aa00b0000      0.00000000     -0.00000401      0.00000009      0.02822128      0.00000000      0.00000068     -0.00000344
 0aa0b0000      0.00000000      0.02822128      0.00000097      0.00000401     -0.00000000     -0.05414119     -0.00001084
 aa000b000      0.00000000      0.00000097     -0.02822128      0.00000009      0.00000002      0.00001084     -0.05414118
 a0a00b000     -0.00000000     -0.02822128     -0.00000097     -0.00000401      0.00000000     -0.05414118     -0.00001084
 a0ab00000     -0.00000000      0.00000401     -0.00000009     -0.02822128     -0.00000000      0.00000068     -0.00000344
 0aab00000      0.00000000      0.00000097     -0.02822128      0.00000009      0.00000002     -0.00001084      0.05414118
 
 Energy:     -213.53662481   -213.53662481   -213.53662481   -213.53662481   -213.53662481   -213.50108393   -213.50108393

 State:              8
 baa000000     -0.00000000
 aab000000      0.00000000
 2a0000000      0.00004450
 0a2000000      0.00004450
 a20000000      0.70081691
 20a000000     -0.00000879
 a02000000      0.70081692
 02a000000     -0.00000879
 aba000000      0.00000000
 aa00b0000      0.05414119
 0aa0b0000      0.00000068
 aa000b000     -0.00000344
 a0a00b000      0.00000068
 a0ab00000      0.05414118
 0aab00000      0.00000344
 
 Energy:     -213.50108393
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21      118.64       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        1.49       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *        23.84     14.00      9.54
 REAL TIME  *        26.74 SEC
 DISK USED  *       120.25 MB (local),        3.27 GB (total)
 SF USED    *       236.75 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5923797  -0.0
    -213.3605256   6.0
    -213.3605256   6.0
    -213.3605256   6.0
    -213.3605256   6.0
    -213.3605256   6.0
    -213.3580990   0.0
    -213.3567164   2.0
    -213.3567164   2.0
    -213.3567164   2.0
    -213.5366248   6.0
    -213.5366248   6.0
    -213.5366248   6.0
    -213.5366248   6.0
    -213.5366248   6.0
    -213.5010839   2.0
    -213.5010839   2.0
    -213.5010839   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 23
 Maximum number of shells:             4
 Maximum number of spin couplings:    48

 Reference space:       84 conf       84 CSFs
 N elec internal:    49854 conf   199164 CSFs
 N-1 el internal:    22386 conf   136416 CSFs
 N-2 el internal:     4989 conf    57729 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        9 (   0   9 )
 Number of external orbitals:     262 ( 128 134 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  19

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.59237967
     2      -213.36052555
     3      -213.36052555
     4      -213.36052555
     5      -213.36052555
     6      -213.36052555
     7      -213.35809896
     8      -213.35671637
     9      -213.35671637
    10      -213.35671637

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2401D-06

 Number of blocks in overlap matrix:  1041   Smallest eigenvalue:  0.24D-06
 Number of N-2 electron functions:    1729
 Number of N-1 electron functions:  136416

 Number of internal configurations:               109200
 Number of singly external configurations:      17913336
 Number of doubly external configurations:      29682219
 Total number of contracted configurations:     47704755
 Total number of uncontracted configurations: 1006932663

 Diagonal Coupling coefficients finished.               Storage:  54833412 words, CPU-Time:     79.14 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   5506953 words, CPU-time:      8.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59237967    -0.00000000    -0.99775934  0.57D-01  0.11D+00   143.23
    1     2     2     1.00000000     0.00000000  -213.36052555    -0.00000000    -0.96432251  0.50D-01  0.98D-01   143.23
    1     3     3     1.00000000     0.00000000  -213.36052555    -0.00000000    -0.96440744  0.50D-01  0.98D-01   143.23
    1     4     4     1.00000000     0.00000000  -213.36052555     0.00000000    -0.96412106  0.50D-01  0.98D-01   143.23
    1     5     5     1.00000000     0.00000000  -213.36052555     0.00000000    -0.96439853  0.51D-01  0.98D-01   143.23
    1     6     6     1.00000000     0.00000000  -213.36052555     0.00000000    -0.96432943  0.51D-01  0.98D-01   143.23
    1     7     7     1.00000000     0.00000000  -213.35809896    -0.00000000    -0.96534667  0.51D-01  0.97D-01   143.23
    1     8     8     1.00000000     0.00000000  -213.35671637    -0.00000000    -0.96456646  0.50D-01  0.98D-01   143.23
    1     9     9     1.00000000     0.00000000  -213.35671637    -0.00000000    -0.96491698  0.50D-01  0.98D-01   143.23
    1    10    10     1.00000000     0.00000000  -213.35671637    -0.00000000    -0.96495148  0.50D-01  0.98D-01   143.23
    2     1     1     1.10275441    -0.79461365  -214.38699332    -0.79461365    -0.02814655  0.41D-02  0.19D-02  3853.42
    2     2     2     1.09696958    -0.79062527  -214.15115082    -0.79062527    -0.02281959  0.29D-02  0.14D-02  3853.42
    2     3     3     1.09699824    -0.79060035  -214.15112590    -0.79060035    -0.02284666  0.29D-02  0.14D-02  3853.42
    2     4     4     1.09704280    -0.79053339  -214.15105894    -0.79053339    -0.02292961  0.29D-02  0.14D-02  3853.42
    2     5     5     1.09709645    -0.79047146  -214.15099701    -0.79047146    -0.02299555  0.30D-02  0.14D-02  3853.42
    2     6     6     1.09711279    -0.79044365  -214.15096921    -0.79044365    -0.02302084  0.30D-02  0.14D-02  3853.42
    2     7     7     1.09710262    -0.79037992  -214.14847888    -0.79037992    -0.02318891  0.30D-02  0.14D-02  3853.42
    2     8     8     1.09689675    -0.79071843  -214.14743481    -0.79071843    -0.02289360  0.29D-02  0.14D-02  3853.42
    2     9     9     1.09691402    -0.79068124  -214.14739761    -0.79068124    -0.02294206  0.28D-02  0.14D-02  3853.42
    2    10    10     1.09695958    -0.79062480  -214.14734117    -0.79062480    -0.02300412  0.29D-02  0.14D-02  3853.42
    3     1     1     1.08821564    -0.82080699  -214.41318666    -0.02619334    -0.00032004  0.45D-04  0.26D-04  7559.29
    3     2     2     1.08556487    -0.81215297  -214.17267852    -0.02152770    -0.00023746  0.32D-04  0.18D-04  7559.29
    3     3     3     1.08556074    -0.81215271  -214.17267826    -0.02155236    -0.00023769  0.33D-04  0.18D-04  7559.29
    3     4     4     1.08556170    -0.81215170  -214.17267725    -0.02161831    -0.00023894  0.32D-04  0.19D-04  7559.29
    3     5     5     1.08555934    -0.81215080  -214.17267636    -0.02167935    -0.00023980  0.33D-04  0.19D-04  7559.29
    3     6     6     1.08556099    -0.81215059  -214.17267614    -0.02170693    -0.00024022  0.33D-04  0.19D-04  7559.29
    3     7     7     1.08552836    -0.81218585  -214.17028481    -0.02180593    -0.00023912  0.30D-04  0.19D-04  7559.29
    3     8     8     1.08557340    -0.81228312  -214.16899949    -0.02156468    -0.00023110  0.28D-04  0.19D-04  7559.29
    3     9     9     1.08557384    -0.81228111  -214.16899748    -0.02159986    -0.00023304  0.28D-04  0.19D-04  7559.29
    3    10    10     1.08557276    -0.81228105  -214.16899742    -0.02165625    -0.00023323  0.28D-04  0.19D-04  7559.29
    4     1     1     1.08771489    -0.82112996  -214.41350963    -0.00032297    -0.00000776  0.14D-05  0.66D-06 11264.71
    4     2     2     1.08527202    -0.81239790  -214.17292345    -0.00024493    -0.00000624  0.13D-05  0.44D-06 11264.71
    4     3     3     1.08527184    -0.81239787  -214.17292342    -0.00024516    -0.00000625  0.12D-05  0.44D-06 11264.71
    4     4     4     1.08527130    -0.81239784  -214.17292339    -0.00024614    -0.00000626  0.12D-05  0.44D-06 11264.71
    4     5     5     1.08527174    -0.81239784  -214.17292339    -0.00024703    -0.00000625  0.13D-05  0.44D-06 11264.71
    4     6     6     1.08527104    -0.81239783  -214.17292338    -0.00024724    -0.00000626  0.12D-05  0.44D-06 11264.71
    4     7     7     1.08526004    -0.81243115  -214.17053011    -0.00024530    -0.00000629  0.13D-05  0.41D-06 11264.71
    4     8     8     1.08530538    -0.81252006  -214.16923643    -0.00023694    -0.00000568  0.11D-05  0.40D-06 11264.71
    4     9     9     1.08530485    -0.81252002  -214.16923639    -0.00023891    -0.00000572  0.11D-05  0.41D-06 11264.71
    4    10    10     1.08530413    -0.81251996  -214.16923633    -0.00023891    -0.00000577  0.11D-05  0.42D-06 11264.71
    5     1     1     1.08776175    -0.82113817  -214.41351784    -0.00000821    -0.00000021  0.22D-07  0.22D-07 14962.35
    5     2     2     1.08530251    -0.81240460  -214.17293016    -0.00000670    -0.00000019  0.27D-07  0.15D-07 14962.35
    5     3     3     1.08530289    -0.81240460  -214.17293015    -0.00000673    -0.00000019  0.27D-07  0.15D-07 14962.35
    5     4     4     1.08530250    -0.81240456  -214.17293011    -0.00000672    -0.00000019  0.27D-07  0.15D-07 14962.35
    5     5     5     1.08530260    -0.81240456  -214.17293011    -0.00000672    -0.00000019  0.27D-07  0.15D-07 14962.35
    5     6     6     1.08530277    -0.81240456  -214.17293011    -0.00000673    -0.00000019  0.27D-07  0.15D-07 14962.35
    5     7     7     1.08528846    -0.81243787  -214.17053683    -0.00000672    -0.00000020  0.29D-07  0.15D-07 14962.35
    5     8     8     1.08533748    -0.81252614  -214.16924251    -0.00000608    -0.00000017  0.23D-07  0.13D-07 14962.35
    5     9     9     1.08533762    -0.81252614  -214.16924251    -0.00000612    -0.00000017  0.22D-07  0.14D-07 14962.35
    5    10    10     1.08533756    -0.81252614  -214.16924251    -0.00000618    -0.00000017  0.23D-07  0.14D-07 14962.35
    6     1     1     1.08776345    -0.82113840  -214.41351807    -0.00000023    -0.00000001  0.68D-09  0.65D-09 18661.60
    6     2     2     1.08530737    -0.81240481  -214.17293036    -0.00000020    -0.00000001  0.68D-09  0.54D-09 18661.60
    6     3     3     1.08530746    -0.81240481  -214.17293036    -0.00000021    -0.00000001  0.68D-09  0.57D-09 18661.60
    6     4     4     1.08530734    -0.81240476  -214.17293032    -0.00000020    -0.00000001  0.68D-09  0.55D-09 18661.60
    6     5     5     1.08530732    -0.81240476  -214.17293032    -0.00000020    -0.00000001  0.68D-09  0.55D-09 18661.60
    6     6     6     1.08530738    -0.81240476  -214.17293032    -0.00000020    -0.00000001  0.67D-09  0.57D-09 18661.60
    6     7     7     1.08529430    -0.81243808  -214.17053704    -0.00000021    -0.00000001  0.81D-09  0.55D-09 18661.60
    6     8     8     1.08534314    -0.81252632  -214.16924269    -0.00000018    -0.00000000  0.58D-09  0.44D-09 18661.60
    6     9     9     1.08534315    -0.81252632  -214.16924269    -0.00000018    -0.00000000  0.59D-09  0.42D-09 18661.60
    6    10    10     1.08534315    -0.81252632  -214.16924269    -0.00000018    -0.00000000  0.59D-09  0.42D-09 18661.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.9%
 S   0.4%  68.5%
 P   0.2%  16.2%   6.8%

 Initialization:   0.5%
 Other:            6.5%

 Total CPU:    18661.6 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000000           0.9570110   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0138771   0.0000000
                               0.0000000  -0.0000000
 2222222222//0/00000          -0.0093723   0.7752743  -0.0378219   0.0000558   0.0000656  -0.0000840   0.5449646   0.0000000
                               0.0000000  -0.0000000
 22222222220//00/000          -0.0093723  -0.3548823   0.6903182   0.0000558  -0.0000981   0.0000399   0.5449645   0.0000000
                               0.0000000   0.0000000
 2222222222//000/000           0.0000000  -0.0000494  -0.0000812   0.6716387   0.0012646   0.0275755  -0.0000000   0.0560980
                              -0.4577185   0.4886276
 22222222220///00000           0.0000000  -0.0000495  -0.0000811   0.6716387   0.0012646   0.0275755  -0.0000000  -0.0560980
                               0.4577185  -0.4886276
 2222222222//00/0000           0.0000000  -0.0000489   0.0000681  -0.0029111   0.6710005   0.0401309  -0.0000000  -0.0583231
                               0.4851350   0.4611427
 2222222222/0//00000           0.0000000   0.0000489  -0.0000681   0.0029111  -0.6710004  -0.0401309   0.0000000  -0.0583231
                               0.4851350   0.4611428
 22222222220//0/0000           0.0000000   0.0000780  -0.0000021  -0.0274505  -0.0402165   0.6704399  -0.0000000   0.6669795
                               0.0809196  -0.0007733
 2222222222/0/00/000          -0.0000000  -0.0000780   0.0000021   0.0274505   0.0402165  -0.6704399  -0.0000000   0.6669795
                               0.0809196  -0.0007733
 2222222222/0/0/0000           0.0093723   0.4203919   0.6524962   0.0001117  -0.0000325  -0.0000442  -0.5449645  -0.0000000
                              -0.0000000  -0.0000000
 222222222200/0//000           0.0059966  -0.0494704   0.0024134  -0.0000036  -0.0000042   0.0000054   0.0704264   0.0000000
                               0.0000000   0.0000000
 22222222220/0/0/000          -0.0059970  -0.0268253  -0.0416359  -0.0000071   0.0000021   0.0000028  -0.0704261  -0.0000000
                               0.0000000   0.0000000
 2222222222/00//0000           0.0059970   0.0226451  -0.0440493  -0.0000036   0.0000063  -0.0000025   0.0704261   0.0000000
                               0.0000000  -0.0000000
 2222222222/00/0000/          -0.0100118  -0.0598940  -0.0024740  -0.0000050  -0.0000045   0.0000065  -0.0342661  -0.0000000
                               0.0000000   0.0000000
 22222222220/0/00/00           0.0100118   0.0593687  -0.0082922   0.0000036   0.0000056  -0.0000064   0.0342661   0.0000000
                               0.0000000   0.0000000
 222222222200/0/000/           0.0000000   0.0000063  -0.0000002  -0.0022214  -0.0032545   0.0542556  -0.0000000   0.0571194
                               0.0069299  -0.0000662
 222222222200/00//00          -0.0000000  -0.0000063   0.0000002   0.0022214   0.0032545  -0.0542555  -0.0000000   0.0571193
                               0.0069299  -0.0000662
 222222222200/00/00/           0.0100119  -0.0225031   0.0555610   0.0000050  -0.0000074   0.0000026   0.0342660  -0.0000000
                               0.0000000  -0.0000000
 22222222220/000//00           0.0000000  -0.0000040  -0.0000066   0.0543526   0.0001023   0.0022316  -0.0000000   0.0048042
                              -0.0391985   0.0418455
 22222222220/0/000/0          -0.0000000   0.0000040   0.0000066  -0.0543525  -0.0001023  -0.0022316   0.0000000   0.0048042
                              -0.0391984   0.0418454
 2222222222/000/000/          -0.0000000   0.0000040  -0.0000055   0.0002356  -0.0543010  -0.0032476   0.0000000   0.0049947
                              -0.0415464  -0.0394918
 2222222222/00/000/0          -0.0000000  -0.0000040   0.0000055  -0.0002356   0.0543008   0.0032476  -0.0000000   0.0049947
                              -0.0415463  -0.0394917
 222222222200/0/0/00          -0.0100119   0.0278045   0.0531067   0.0000086  -0.0000032  -0.0000029  -0.0342660   0.0000000
                              -0.0000000   0.0000000
 22222222220/000/0/0          -0.0100119   0.0320894  -0.0506327  -0.0000036   0.0000077  -0.0000036  -0.0342661  -0.0000000
                              -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957842    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.015729   -0.000000    0.000000   -0.000000
 2           0.000000   -0.000070   -0.744768    0.000111   -0.000070    0.602967    0.000000    0.000000    0.000000    0.000000
 3          -0.000000   -0.000116    0.602967   -0.000003    0.000097    0.744768   -0.000000   -0.000000    0.000000    0.000000
 4           0.000000    0.957445    0.000015   -0.039132   -0.004150    0.000137    0.000000    0.000000   -0.000000    0.000000
 5           0.000000    0.001803   -0.000120   -0.057330    0.956535   -0.000027    0.000000    0.000000    0.000000   -0.000000
 6           0.000000    0.039310    0.000082    0.955736    0.057208   -0.000064    0.000000   -0.000000   -0.000000    0.000000
 7           0.015972   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.958155    0.000000   -0.000000   -0.000000
 8           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.080007   -0.083181    0.951252
 9           0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.652802    0.691904    0.115408
 10         -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.696885    0.657686   -0.001103

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957971    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000119   -0.000000   -0.000000   -0.000000
 2           0.000000    0.958253    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.958253    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.958253   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.958253    0.000000   -0.000000   -0.000000    0.000000    0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.958253   -0.000000   -0.000000    0.000000    0.000000
 7           0.000119    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.958288    0.000000   -0.000000    0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.958228    0.000000   -0.000000
 9          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.958228    0.000000
 10         -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.958228


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95784215 (fixed)   0.95806853 (relaxed)   0.95797128 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00175278   -0.00573385   -0.66908257
 Singles      0.01993027   -0.09349843   -0.10082726
 Pairs        0.06798701    0.00000000   -0.05122857
 Total        1.08967006   -0.09923227   -0.82113840
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59231555
 Nuclear energy                         0.00000000
 Kinetic energy                        69.52811023
 One electron energy                 -372.52842230
 Two electron energy                  158.11490422
 Virial quotient                       -3.08383929
 Correlation energy                    -0.82120252
 !MRCI STATE 1.2 Energy              -214.413518071837

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.48715535 (Davidson, fixed reference)
 Cluster corrected energies          -214.48697370 (Davidson, relaxed reference)
 Cluster corrected energies          -214.48715535 (Davidson, rotated reference)

 Cluster corrected energies          -214.48485337 (Pople, fixed reference)
 Cluster corrected energies          -214.48466415 (Pople, relaxed reference)
 Cluster corrected energies          -214.48485337 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.74476821 (fixed)   0.95832190 (relaxed)   0.95825294 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00342965   -0.00960376   -0.65915465
 Singles      0.02123960   -0.09735215   -0.10524137
 Pairs        0.06436035   -0.00000000   -0.04800879
 Total        1.08902960   -0.10695591   -0.81240481
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36052555
 Nuclear energy                         0.00000000
 Kinetic energy                        69.30091276
 One electron energy                 -368.13331737
 Two electron energy                  153.96038702
 Virial quotient                       -3.09047777
 Correlation energy                    -0.81240481
 !MRCI STATE 2.2 Energy              -214.172930358714

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24525843 (Davidson, fixed reference)
 Cluster corrected energies          -214.24513110 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24525843 (Davidson, rotated reference)

 Cluster corrected energies          -214.24295962 (Pople, fixed reference)
 Cluster corrected energies          -214.24282712 (Pople, relaxed reference)
 Cluster corrected energies          -214.24295962 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.74476818 (fixed)   0.95832186 (relaxed)   0.95825290 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00342965   -0.00960376   -0.65915455
 Singles      0.02123973   -0.09735220   -0.10524144
 Pairs        0.06436030   -0.00000000   -0.04800881
 Total        1.08902968   -0.10695596   -0.81240481
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36052555
 Nuclear energy                         0.00000000
 Kinetic energy                        69.30091388
 One electron energy                 -368.13332144
 Two electron energy                  153.96039109
 Virial quotient                       -3.09047772
 Correlation energy                    -0.81240481
 !MRCI STATE 3.2 Energy              -214.172930358593

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24525850 (Davidson, fixed reference)
 Cluster corrected energies          -214.24513117 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24525850 (Davidson, rotated reference)

 Cluster corrected energies          -214.24295969 (Pople, fixed reference)
 Cluster corrected energies          -214.24282719 (Pople, relaxed reference)
 Cluster corrected energies          -214.24295969 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95744461 (fixed)   0.95832192 (relaxed)   0.95825295 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00342965   -0.00960376   -0.65915465
 Singles      0.02123959   -0.09735213   -0.10524132
 Pairs        0.06436032   -0.00000000   -0.04800879
 Total        1.08902956   -0.10695589   -0.81240476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36052555
 Nuclear energy                         0.00000000
 Kinetic energy                        69.30091066
 One electron energy                 -368.13331634
 Two electron energy                  153.96038603
 Virial quotient                       -3.09047786
 Correlation energy                    -0.81240476
 !MRCI STATE 4.2 Energy              -214.172930316634

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24525836 (Davidson, fixed reference)
 Cluster corrected energies          -214.24513102 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24525836 (Davidson, rotated reference)

 Cluster corrected energies          -214.24295955 (Pople, fixed reference)
 Cluster corrected energies          -214.24282704 (Pople, relaxed reference)
 Cluster corrected energies          -214.24295955 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.95653476 (fixed)   0.95832192 (relaxed)   0.95825296 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00342965   -0.00960376   -0.65915466
 Singles      0.02123958   -0.09735213   -0.10524131
 Pairs        0.06436032    0.00000000   -0.04800879
 Total        1.08902954   -0.10695589   -0.81240476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36052555
 Nuclear energy                         0.00000000
 Kinetic energy                        69.30091190
 One electron energy                 -368.13331744
 Two electron energy                  153.96038712
 Virial quotient                       -3.09047781
 Correlation energy                    -0.81240476
 !MRCI STATE 5.2 Energy              -214.172930316620

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24525834 (Davidson, fixed reference)
 Cluster corrected energies          -214.24513101 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24525834 (Davidson, rotated reference)

 Cluster corrected energies          -214.24295953 (Pople, fixed reference)
 Cluster corrected energies          -214.24282703 (Pople, relaxed reference)
 Cluster corrected energies          -214.24295953 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95573566 (fixed)   0.95832190 (relaxed)   0.95825293 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00342965   -0.00960376   -0.65915460
 Singles      0.02123965   -0.09735216   -0.10524136
 Pairs        0.06436030    0.00000001   -0.04800880
 Total        1.08902960   -0.10695591   -0.81240476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36052555
 Nuclear energy                         0.00000000
 Kinetic energy                        69.30091227
 One electron energy                 -368.13331909
 Two electron energy                  153.96038878
 Virial quotient                       -3.09047779
 Correlation energy                    -0.81240476
 !MRCI STATE 6.2 Energy              -214.172930316530

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24525839 (Davidson, fixed reference)
 Cluster corrected energies          -214.24513106 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24525839 (Davidson, rotated reference)

 Cluster corrected energies          -214.24295958 (Pople, fixed reference)
 Cluster corrected energies          -214.24282708 (Pople, relaxed reference)
 Cluster corrected energies          -214.24295958 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95815500 (fixed)   0.95836444 (relaxed)   0.95828811 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00336808   -0.00948799   -0.65896995
 Singles      0.02135898   -0.09758934   -0.10555669
 Pairs        0.06422259    0.00000001   -0.04791144
 Total        1.08894966   -0.10707733   -0.81243808
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35816308
 Nuclear energy                         0.00000000
 Kinetic energy                        69.30418581
 One electron energy                 -368.11758397
 Two electron energy                  153.94704693
 Virial quotient                       -3.09029728
 Correlation energy                    -0.81237396
 !MRCI STATE 7.2 Energy              -214.170537040847

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24279743 (Davidson, fixed reference)
 Cluster corrected energies          -214.24265651 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24279743 (Davidson, rotated reference)

 Cluster corrected energies          -214.24049606 (Pople, fixed reference)
 Cluster corrected energies          -214.24034944 (Pople, relaxed reference)
 Cluster corrected energies          -214.24049606 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95125168 (fixed)   0.95829156 (relaxed)   0.95822754 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00344976   -0.00963241   -0.01613532
 Singles      0.02114544   -0.09721857   -0.10504511
 Pairs        0.06449211   -0.70053800   -0.69134589
 Total        1.08908731   -0.80738898   -0.81252632
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35671637
 Nuclear energy                         0.00000000
 Kinetic energy                        69.30140262
 One electron energy                 -368.11638930
 Two electron energy                  153.94714660
 Virial quotient                       -3.09040271
 Correlation energy                    -0.81252632
 !MRCI STATE 8.2 Energy              -214.169242692883

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24162848 (Davidson, fixed reference)
 Cluster corrected energies          -214.24151026 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24162848 (Davidson, rotated reference)

 Cluster corrected energies          -214.23933124 (Pople, fixed reference)
 Cluster corrected energies          -214.23920821 (Pople, relaxed reference)
 Cluster corrected energies          -214.23933124 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.69190359 (fixed)   0.95829155 (relaxed)   0.95822754 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00344976   -0.00963242   -0.58133063
 Singles      0.02114546   -0.09721856   -0.10504512
 Pairs        0.06449210   -0.08499097   -0.12615057
 Total        1.08908733   -0.19184194   -0.81252632
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35671637
 Nuclear energy                         0.00000000
 Kinetic energy                        69.30140134
 One electron energy                 -368.11638738
 Two electron energy                  153.94714468
 Virial quotient                       -3.09040277
 Correlation energy                    -0.81252632
 !MRCI STATE 9.2 Energy              -214.169242692846

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24162849 (Davidson, fixed reference)
 Cluster corrected energies          -214.24151027 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24162849 (Davidson, rotated reference)

 Cluster corrected energies          -214.23933125 (Pople, fixed reference)
 Cluster corrected energies          -214.23920822 (Pople, relaxed reference)
 Cluster corrected energies          -214.23933125 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.69688479 (fixed)   0.95829155 (relaxed)   0.95822754 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00344976   -0.00963242   -0.66011507
 Singles      0.02114546   -0.09721856   -0.10504513
 Pairs        0.06449210    0.00081217   -0.04736613
 Total        1.08908733   -0.10603881   -0.81252632
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35671637
 Nuclear energy                         0.00000000
 Kinetic energy                        69.30140125
 One electron energy                 -368.11638733
 Two electron energy                  153.94714463
 Virial quotient                       -3.09040277
 Correlation energy                    -0.81252632
 !MRCI STATE 10.2 Energy             -214.169242692841

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24162849 (Davidson, fixed reference)
 Cluster corrected energies          -214.24151027 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24162849 (Davidson, rotated reference)

 Cluster corrected energies          -214.23933125 (Pople, fixed reference)
 Cluster corrected energies          -214.23920822 (Pople, relaxed reference)
 Cluster corrected energies          -214.23933125 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21      118.64       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5     3677.82       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *     20643.62  20619.75     14.00      9.54
 REAL TIME  *     20959.80 SEC
 DISK USED  *         3.71 GB (local),       60.71 GB (total)
 SF USED    *        36.43 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.48715535  AU                              
 SETTING HLSDIAG(2)     =      -214.24525843  AU                              
 SETTING HLSDIAG(3)     =      -214.24525850  AU                              
 SETTING HLSDIAG(4)     =      -214.24525836  AU                              
 SETTING HLSDIAG(5)     =      -214.24525834  AU                              
 SETTING HLSDIAG(6)     =      -214.24525839  AU                              
 SETTING HLSDIAG(7)     =      -214.24279743  AU                              
 SETTING HLSDIAG(8)     =      -214.24162848  AU                              
 SETTING HLSDIAG(9)     =      -214.24162849  AU                              
 SETTING HLSDIAG(10)    =      -214.24162849  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 23
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:      156 conf      240 CSFs
 N elec internal:    52806 conf   246300 CSFs
 N-1 el internal:    24375 conf   156741 CSFs
 N-2 el internal:     9039 conf    76758 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        9 (   0   9 )
 Number of external orbitals:     262 ( 128 134 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  59

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.53662481
     2      -213.53662481
     3      -213.53662481
     4      -213.53662481
     5      -213.53662481
     6      -213.50108393
     7      -213.50108393
     8      -213.50108393

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3627D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4409D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3763D-06

 Number of blocks in overlap matrix:   883   Smallest eigenvalue:  0.36D-06
 Number of N-2 electron functions:    1838
 Number of N-1 electron functions:  156741

 Number of internal configurations:               137562
 Number of singly external configurations:      20589510
 Number of doubly external configurations:      31550040
 Total number of contracted configurations:     52277112
 Total number of uncontracted configurations: 1336649436

 Diagonal Coupling coefficients finished.               Storage:  65681225 words, CPU-Time:    137.65 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   5581966 words, CPU-time:      8.65 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.53662481     0.00000000    -1.00603923  0.64D-01  0.11D+00   198.32
    1     2     2     1.00000000     0.00000000  -213.53662481     0.00000000    -1.00549284  0.63D-01  0.11D+00   198.32
    1     3     3     1.00000000     0.00000000  -213.53662481    -0.00000000    -1.00612274  0.64D-01  0.11D+00   198.32
    1     4     4     1.00000000     0.00000000  -213.53662481    -0.00000000    -1.00599607  0.64D-01  0.11D+00   198.32
    1     5     5     1.00000000     0.00000000  -213.53662481     0.00000000    -1.00657595  0.65D-01  0.11D+00   198.32
    1     6     6     1.00000000     0.00000000  -213.50108393    -0.00000000    -1.00168352  0.51D-01  0.11D+00   198.32
    1     7     7     1.00000000     0.00000000  -213.50108393     0.00000000    -1.00228111  0.51D-01  0.11D+00   198.32
    1     8     8     1.00000000     0.00000000  -213.50108393    -0.00000000    -1.00159498  0.51D-01  0.11D+00   198.32
    2     1     1     1.10683928    -0.80295318  -214.33957799    -0.80295318    -0.02835881  0.44D-02  0.17D-02  3483.12
    2     2     2     1.10695363    -0.80284989  -214.33947470    -0.80284989    -0.02848582  0.44D-02  0.17D-02  3483.12
    2     3     3     1.10693437    -0.80281602  -214.33944083    -0.80281602    -0.02851959  0.44D-02  0.17D-02  3483.12
    2     4     4     1.10708185    -0.80271356  -214.33933836    -0.80271356    -0.02861768  0.45D-02  0.17D-02  3483.12
    2     5     5     1.10732001    -0.80244693  -214.33907174    -0.80244693    -0.02891421  0.46D-02  0.17D-02  3483.12
    2     6     6     1.10302138    -0.80655716  -214.30764109    -0.80655716    -0.02797557  0.40D-02  0.17D-02  3483.12
    2     7     7     1.10306666    -0.80651416  -214.30759810    -0.80651416    -0.02801529  0.41D-02  0.18D-02  3483.12
    2     8     8     1.10310783    -0.80649852  -214.30758246    -0.80649852    -0.02805447  0.40D-02  0.18D-02  3483.12
    3     1     1     1.09251577    -0.82911907  -214.36574388    -0.02616589    -0.00038367  0.60D-04  0.30D-04  6766.85
    3     2     2     1.09252749    -0.82911856  -214.36574337    -0.02626867    -0.00038471  0.60D-04  0.31D-04  6766.85
    3     3     3     1.09252168    -0.82911614  -214.36574095    -0.02630012    -0.00038664  0.61D-04  0.31D-04  6766.85
    3     4     4     1.09251508    -0.82911481  -214.36573962    -0.02640126    -0.00038779  0.61D-04  0.31D-04  6766.85
    3     5     5     1.09252656    -0.82910880  -214.36573361    -0.02666187    -0.00039391  0.62D-04  0.32D-04  6766.85
    3     6     6     1.09105148    -0.83222108  -214.33330501    -0.02566392    -0.00034928  0.40D-04  0.32D-04  6766.85
    3     7     7     1.09107196    -0.83222095  -214.33330488    -0.02570679    -0.00034986  0.40D-04  0.32D-04  6766.85
    3     8     8     1.09104866    -0.83221970  -214.33330363    -0.02572118    -0.00035052  0.40D-04  0.32D-04  6766.85
    4     1     1     1.09177326    -0.82950410  -214.36612891    -0.00038503    -0.00001246  0.27D-05  0.10D-05 10045.75
    4     2     2     1.09177017    -0.82950404  -214.36612885    -0.00038548    -0.00001250  0.27D-05  0.10D-05 10045.75
    4     3     3     1.09176879    -0.82950395  -214.36612876    -0.00038781    -0.00001259  0.27D-05  0.10D-05 10045.75
    4     4     4     1.09177268    -0.82950395  -214.36612876    -0.00038914    -0.00001258  0.27D-05  0.10D-05 10045.75
    4     5     5     1.09176896    -0.82950385  -214.36612866    -0.00039505    -0.00001268  0.27D-05  0.11D-05 10045.75
    4     6     6     1.09062943    -0.83256550  -214.33364943    -0.00034442    -0.00000917  0.18D-05  0.78D-06 10045.75
    4     7     7     1.09062473    -0.83256548  -214.33364941    -0.00034453    -0.00000919  0.18D-05  0.79D-06 10045.75
    4     8     8     1.09062315    -0.83256542  -214.33364935    -0.00034572    -0.00000924  0.18D-05  0.80D-06 10045.75
    5     1     1     1.09173073    -0.82951765  -214.36614246    -0.00001355    -0.00000046  0.58D-07  0.56D-07 13320.19
    5     2     2     1.09173099    -0.82951764  -214.36614245    -0.00001360    -0.00000046  0.59D-07  0.55D-07 13320.19
    5     3     3     1.09173113    -0.82951764  -214.36614245    -0.00001369    -0.00000046  0.59D-07  0.55D-07 13320.19
    5     4     4     1.09173078    -0.82951764  -214.36614245    -0.00001369    -0.00000047  0.59D-07  0.55D-07 13320.19
    5     5     5     1.09173024    -0.82951764  -214.36614245    -0.00001379    -0.00000047  0.60D-07  0.55D-07 13320.19
    5     6     6     1.09065933    -0.83257536  -214.33365929    -0.00000985    -0.00000029  0.36D-07  0.36D-07 13320.19
    5     7     7     1.09065930    -0.83257535  -214.33365929    -0.00000988    -0.00000029  0.36D-07  0.36D-07 13320.19
    5     8     8     1.09066001    -0.83257535  -214.33365929    -0.00000993    -0.00000029  0.37D-07  0.36D-07 13320.19
    6     1     1     1.09172235    -0.82951814  -214.36614295    -0.00000049    -0.00000002  0.18D-08  0.22D-08 16596.57
    6     2     2     1.09172231    -0.82951814  -214.36614295    -0.00000050    -0.00000002  0.18D-08  0.23D-08 16596.57
    6     3     3     1.09172234    -0.82951814  -214.36614295    -0.00000050    -0.00000002  0.18D-08  0.23D-08 16596.57
    6     4     4     1.09172235    -0.82951814  -214.36614295    -0.00000050    -0.00000002  0.18D-08  0.23D-08 16596.57
    6     5     5     1.09172230    -0.82951814  -214.36614295    -0.00000050    -0.00000002  0.18D-08  0.23D-08 16596.57
    6     6     6     1.09066415    -0.83257567  -214.33365961    -0.00000032    -0.00000001  0.99D-09  0.14D-08 16596.57
    6     7     7     1.09066415    -0.83257567  -214.33365961    -0.00000032    -0.00000001  0.98D-09  0.14D-08 16596.57
    6     8     8     1.09066423    -0.83257567  -214.33365960    -0.00000032    -0.00000001  0.10D-08  0.14D-08 16596.57


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.9%
 S   0.5%  62.8%
 P   0.2%  19.2%   9.6%

 Initialization:   0.9%
 Other:            5.9%

 Total CPU:    16596.6 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000000           0.6964668   0.1587528   0.5060243   0.3663223   0.0910505  -0.0000000   0.0000000  -0.0000000
 22222222222/0000000          -0.0584094   0.1632110  -0.0437071   0.2498328  -0.6000245  -0.0371373  -0.0207143   0.6694867
 22222222220/2000000           0.0584094  -0.1632110   0.0437071  -0.2498329   0.6000245  -0.0371373  -0.0207143   0.6694867
 222222222220/000000          -0.0498021  -0.3869872  -0.1937683   0.4997859   0.1217956  -0.1225729   0.6594025   0.0136030
 222222222202/000000           0.0498021   0.3869872   0.1937683  -0.4997859  -0.1217956  -0.1225729   0.6594025   0.0136030
 2222222222/02000000          -0.0000825   0.4948811  -0.3384021   0.1935313   0.2398500   0.6584964   0.1215733   0.0402892
 2222222222/20000000           0.0000825  -0.4948811   0.3384021  -0.1935313  -0.2398500   0.6584964   0.1215733   0.0402892
 2222222222/\/000000          -0.6418422   0.2024858   0.5872017   0.2744187   0.1890446   0.0000000   0.0000000  -0.0000000
 22222222220//\00000           0.0024257  -0.0067780   0.0018151  -0.0103753   0.0249183  -0.0031373  -0.0017499   0.0565570
 2222222222//000\000           0.0024257  -0.0067780   0.0018151  -0.0103753   0.0249184   0.0031373   0.0017499  -0.0565569
 22222222220//0\0000          -0.0020682  -0.0160711  -0.0080470   0.0207555   0.0050580   0.0103547  -0.0557051  -0.0011492
 2222222222/0/00\000           0.0020682   0.0160711   0.0080470  -0.0207555  -0.0050580   0.0103547  -0.0557050  -0.0011491
 2222222222/0/\00000          -0.0000034   0.0205518  -0.0140534   0.0080371   0.0099607   0.0556285   0.0102703   0.0034036
 2222222222//00\0000           0.0000034  -0.0205518   0.0140534  -0.0080371  -0.0099607   0.0556285   0.0102703   0.0034036

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.417060   -0.070627    0.082833   -0.000117    0.853282    0.000000    0.000000    0.000000
 2           0.240091   -0.548806   -0.231458    0.701816    0.094490    0.000000   -0.000000   -0.000000
 3           0.709345   -0.274793    0.061983   -0.479905    0.317880    0.000000    0.000000    0.000000
 4           0.368729    0.708772   -0.354301    0.274457    0.273322   -0.000000   -0.000000   -0.000000
 5           0.207763    0.172725    0.850926    0.340144    0.033287   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.174567   -0.052890    0.937822
 7           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.939112   -0.029501    0.173143
 8          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.019373    0.953474    0.057379

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955971    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.955971   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.955971   -0.000000   -0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.955971   -0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.955971   -0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.955396    0.000000    0.000000
 7           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.955396    0.000000
 8           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.955396


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.85328239 (fixed)   0.95609730 (relaxed)   0.95597054 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00230241   -0.00698293   -0.66939870
 Singles      0.02265459   -0.09894791   -0.10760526
 Pairs        0.06927894   -0.00000000   -0.05251418
 Total        1.09423595   -0.10593084   -0.82951814
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53662481
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48702055
 One electron energy                 -372.28002581
 Two electron energy                  157.91388286
 Virial quotient                       -3.08498107
 Correlation energy                    -0.82951814
 !MRCI STATE 1.2 Energy              -214.366142949551

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44431338 (Davidson, fixed reference)
 Cluster corrected energies          -214.44407272 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44431338 (Davidson, rotated reference)

 Cluster corrected energies          -214.44307768 (Pople, fixed reference)
 Cluster corrected energies          -214.44282154 (Pople, relaxed reference)
 Cluster corrected energies          -214.44307768 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.70181640 (fixed)   0.95609732 (relaxed)   0.95597056 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00230242   -0.00698293   -0.66939860
 Singles      0.02265465   -0.09894806   -0.10760534
 Pairs        0.06927885    0.00000001   -0.05251420
 Total        1.09423592   -0.10593099   -0.82951814
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53662481
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48701153
 One electron energy                 -372.28001825
 Two electron energy                  157.91387530
 Virial quotient                       -3.08498147
 Correlation energy                    -0.82951814
 !MRCI STATE 2.2 Energy              -214.366142949254

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44431335 (Davidson, fixed reference)
 Cluster corrected energies          -214.44407268 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44431335 (Davidson, rotated reference)

 Cluster corrected energies          -214.44307765 (Pople, fixed reference)
 Cluster corrected energies          -214.44282150 (Pople, relaxed reference)
 Cluster corrected energies          -214.44307765 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.70934460 (fixed)   0.95609730 (relaxed)   0.95597054 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00230242   -0.00698293   -0.66939867
 Singles      0.02265458   -0.09894795   -0.10760526
 Pairs        0.06927895   -0.00000000   -0.05251421
 Total        1.09423595   -0.10593089   -0.82951814
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53662481
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48701695
 One electron energy                 -372.28001974
 Two electron energy                  157.91387680
 Virial quotient                       -3.08498123
 Correlation energy                    -0.82951814
 !MRCI STATE 3.2 Energy              -214.366142949210

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44431338 (Davidson, fixed reference)
 Cluster corrected energies          -214.44407271 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44431338 (Davidson, rotated reference)

 Cluster corrected energies          -214.44307768 (Pople, fixed reference)
 Cluster corrected energies          -214.44282153 (Pople, relaxed reference)
 Cluster corrected energies          -214.44307768 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.70877221 (fixed)   0.95609730 (relaxed)   0.95597054 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00230242   -0.00698293   -0.66939855
 Singles      0.02265468   -0.09894808   -0.10760536
 Pairs        0.06927886    0.00000000   -0.05251423
 Total        1.09423596   -0.10593101   -0.82951814
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53662481
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48701221
 One electron energy                 -372.28001842
 Two electron energy                  157.91387547
 Virial quotient                       -3.08498144
 Correlation energy                    -0.82951814
 !MRCI STATE 4.2 Energy              -214.366142949171

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44431339 (Davidson, fixed reference)
 Cluster corrected energies          -214.44407272 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44431339 (Davidson, rotated reference)

 Cluster corrected energies          -214.44307769 (Pople, fixed reference)
 Cluster corrected energies          -214.44282154 (Pople, relaxed reference)
 Cluster corrected energies          -214.44307769 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.85092571 (fixed)   0.95609732 (relaxed)   0.95597056 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00230242   -0.00698293   -0.66939858
 Singles      0.02265463   -0.09894808   -0.10760534
 Pairs        0.06927886    0.00000000   -0.05251422
 Total        1.09423591   -0.10593101   -0.82951814
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53662481
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48701004
 One electron energy                 -372.28001569
 Two electron energy                  157.91387274
 Virial quotient                       -3.08498154
 Correlation energy                    -0.82951814
 !MRCI STATE 5.2 Energy              -214.366142949135

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44431335 (Davidson, fixed reference)
 Cluster corrected energies          -214.44407267 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44431335 (Davidson, rotated reference)

 Cluster corrected energies          -214.44307765 (Pople, fixed reference)
 Cluster corrected energies          -214.44282149 (Pople, relaxed reference)
 Cluster corrected energies          -214.44307765 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.93782197 (fixed)   0.95553651 (relaxed)   0.95539571 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00448252   -0.01113785   -0.02581971
 Singles      0.01881966   -0.09202557   -0.09830541
 Pairs        0.07225090   -0.71599528   -0.70845056
 Total        1.09555308   -0.81915870   -0.83257567
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50108393
 Nuclear energy                         0.00000000
 Kinetic energy                        69.46282620
 One electron energy                 -372.10466443
 Two electron energy                  157.77100483
 Virial quotient                       -3.08558795
 Correlation energy                    -0.83257567
 !MRCI STATE 6.2 Energy              -214.333659605402

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41321477 (Davidson, fixed reference)
 Cluster corrected energies          -214.41294599 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41321477 (Davidson, rotated reference)

 Cluster corrected energies          -214.41204666 (Pople, fixed reference)
 Cluster corrected energies          -214.41175995 (Pople, relaxed reference)
 Cluster corrected energies          -214.41204666 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.93911241 (fixed)   0.95553651 (relaxed)   0.95539571 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00448252   -0.01113786   -0.55870705
 Singles      0.01881965   -0.09202560   -0.09830541
 Pairs        0.07225090   -0.13218889   -0.17556322
 Total        1.09555308   -0.23535234   -0.83257567
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50108393
 Nuclear energy                         0.00000000
 Kinetic energy                        69.46282620
 One electron energy                 -372.10466419
 Two electron energy                  157.77100458
 Virial quotient                       -3.08558795
 Correlation energy                    -0.83257567
 !MRCI STATE 7.2 Energy              -214.333659605276

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41321477 (Davidson, fixed reference)
 Cluster corrected energies          -214.41294599 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41321477 (Davidson, rotated reference)

 Cluster corrected energies          -214.41204666 (Pople, fixed reference)
 Cluster corrected energies          -214.41175995 (Pople, relaxed reference)
 Cluster corrected energies          -214.41204666 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95347427 (fixed)   0.95553648 (relaxed)   0.95539568 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00448252   -0.01113785   -0.63938017
 Singles      0.01881959   -0.09202555   -0.09830534
 Pairs        0.07225105   -0.04380720   -0.09489016
 Total        1.09555316   -0.14697060   -0.83257567
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50108393
 Nuclear energy                         0.00000000
 Kinetic energy                        69.46282390
 One electron energy                 -372.10466002
 Two electron energy                  157.77100041
 Virial quotient                       -3.08558805
 Correlation energy                    -0.83257567
 !MRCI STATE 8.2 Energy              -214.333659604879

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41321484 (Davidson, fixed reference)
 Cluster corrected energies          -214.41294606 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41321484 (Davidson, rotated reference)

 Cluster corrected energies          -214.41204673 (Pople, fixed reference)
 Cluster corrected energies          -214.41176002 (Pople, relaxed reference)
 Cluster corrected energies          -214.41204673 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21      118.64       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     6899.77       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *     39093.60  18449.97  20619.75     14.00      9.54
 REAL TIME  *     39681.14 SEC
 DISK USED  *         6.85 GB (local),      111.06 GB (total)
 SF USED    *        36.43 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -214.44431338  AU                              
 SETTING HLSDIAG(12)    =      -214.44431335  AU                              
 SETTING HLSDIAG(13)    =      -214.44431338  AU                              
 SETTING HLSDIAG(14)    =      -214.44431339  AU                              
 SETTING HLSDIAG(15)    =      -214.44431335  AU                              
 SETTING HLSDIAG(16)    =      -214.41321477  AU                              
 SETTING HLSDIAG(17)    =      -214.41321477  AU                              
 SETTING HLSDIAG(18)    =      -214.41321484  AU                              


         HLSDIAG
    -214.4871554
    -214.2452584
    -214.2452585
    -214.2452584
    -214.2452583
    -214.2452584
    -214.2427974
    -214.2416285
    -214.2416285
    -214.2416285
    -214.4443134
    -214.4443134
    -214.4443134
    -214.4443134
    -214.4443133
    -214.4132148
    -214.4132148
    -214.4132148
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=  10

 Original energies:   -214.413518   -214.172930   -214.172930   -214.172930   -214.172930   -214.172930   -214.170537   -214.169243
                      -214.169243   -214.169243
 Replaced energies:   -214.487155   -214.245258   -214.245258   -214.245258   -214.245258   -214.245258   -214.242797   -214.241628
                      -214.241628   -214.241628

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.366143   -214.366143   -214.366143   -214.366143   -214.366143   -214.333660   -214.333660   -214.333660
 Replaced energies:   -214.444313   -214.444313   -214.444313   -214.444313   -214.444313   -214.413215   -214.413215   -214.413215



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.48715535

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00    -159.48    1301.22   -1389.09

    2   2.2  1.5  1.5       0.00   53090.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.81    4822.82       8.76     197.78      -0.00    -133.49    1087.61   -1161.51

    3   3.2  1.5  1.5       0.00       0.00   53090.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.81      -0.00   -3107.26      -5.86    -127.28       0.00    -206.68    1688.50   -1802.48

    4   4.2  1.5  1.5       0.00       0.00       0.00   53090.25       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -4822.82    3107.26      -0.00     117.08      -4.87      -0.00     -20.06      74.25      71.27

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00   53090.26       0.00       0.00       0.00       0.00       0.00
                            0.00      -8.76       5.86    -117.08       0.00    2868.58      -0.00    2516.93     417.19     102.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   53090.25       0.00       0.00       0.00       0.00
                            0.00    -197.78     127.28       4.87   -2868.58       0.00       0.00     372.40   -1820.57   -1747.93

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   53630.37       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00       0.00    -347.93    2838.83   -3030.53

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53886.92       0.00       0.00
                          159.48     133.49     206.68      20.06   -2516.93    -372.40     347.93      -0.00   -2062.75   -1932.26

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53886.92       0.00
                        -1301.22   -1087.61   -1688.50     -74.25    -417.19    1820.57   -2838.83    2062.75      -0.00    -236.82

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53886.92
                         1389.09    1161.51    1802.48     -71.27    -102.00    1747.93    3030.53    1932.26     236.82       0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    1094.73     132.81      -1.27
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     -95.73     796.26     756.88

   12   2.2  1.5  0.5      -0.00       0.00       0.38       6.48       9.79    -161.11       0.00   -1687.79    -204.92       1.96
                           -0.00      -0.00      -0.41      12.96   -2943.06    -175.89       0.00     -67.65     561.83     534.29

   13   3.2  1.5  0.5      -0.00      -0.38       0.00     135.38     198.30   -3302.47      -0.00      82.34       9.96      -0.33
                           -0.00       0.41       0.00       6.55   -1512.99     -90.29       0.00     131.24   -1093.14   -1039.06

   14   4.2  1.5  0.5      -0.00      -6.48    -135.38      -0.00   -1653.17     -99.58       0.00    -127.45    1059.18    1015.59
                            0.00     -12.96      -6.55       0.00      98.54   -1654.61      -0.00    1457.17     218.32     -45.56

   15   5.2  1.5  0.5      -0.00      -9.79    -198.30    1653.17       0.00      68.01      -0.00    -123.25    1004.47   -1068.28
                           -0.00    2943.06    1512.99     -98.54       0.00      -7.50       0.00      -4.63      60.57     -64.00

   16   6.2  1.5  0.5       0.00     161.11    3302.47      99.58     -68.01      -0.00      -0.00     -12.41     103.64     -22.50
                           -0.00     175.89      90.29    1654.61       7.50      -0.00       0.00     182.80    -994.43    1069.16

   17   7.2  1.5  0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00    2388.32     289.76      -2.77
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00    -208.84    1737.17    1651.26

   18   8.2  1.5  0.5   -1094.73    1687.79     -82.34     127.45     123.25      12.41   -2388.32      -0.00      -1.88    -197.22
                           95.73      67.65    -131.24   -1457.17       4.63    -182.80     208.84       0.00    1123.94   -1182.41

   19   9.2  1.5  0.5    -132.81     204.92      -9.96   -1059.18   -1004.47    -103.64    -289.76       1.88      -0.00    1625.62
                         -796.26    -561.83    1093.14    -218.32     -60.57     994.43   -1737.17   -1123.94      -0.00    -142.15

   20  10.2  1.5  0.5       1.27      -1.96       0.33   -1015.59    1068.28      22.50       2.77     197.22   -1625.62      -0.00
                         -756.88    -534.29    1039.06      45.56      64.00   -1069.16   -1651.26    1182.41     142.15       0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

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

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   1.2  0.5  0.5       0.00       5.68     114.09     -42.88       4.58    1042.20      -0.00    -551.09     -25.40      39.36
                            0.00      -0.27       0.06      47.84    1492.08     158.62      -0.00      66.32     -78.79    -147.68

   42   2.2  0.5  0.5       0.00      43.18     886.45     581.39    -166.21    -315.42       0.00     -70.81    -455.32     239.98
                           -0.00    1009.42     518.91     450.96      70.73    -165.08       0.00    -205.49     381.36    -134.01

   43   3.2  0.5  0.5       0.00      21.57     443.95    -349.03     106.24    -962.75       0.00    -427.84     205.45    -208.63
                            0.00    -690.31    -354.87     218.87     231.54      73.19      -0.00     -25.90     567.20     276.51

   44   4.2  0.5  0.5      -0.00     -55.90   -1145.00     241.03    -258.84    -451.88      -0.00    -250.66    -336.96     -29.40
                           -0.00     394.76     203.05    -562.19     307.53    -291.88       0.00    -228.44    -118.51     580.12

   45   5.2  0.5  0.5      -0.00     -13.72    -278.98     284.34     705.77    -253.42      -0.00    -102.42     252.43     567.31
                           -0.00     489.35     251.53    -167.48     -66.79     679.01       0.00     571.81     108.99     198.48

   46   6.2  0.5  0.5    1119.91     120.55      -5.81    -561.00      30.56     -21.15     -62.26     -58.48     477.64    -455.52
                         6016.48    -296.34     576.46    -103.06       1.62     -35.83    -334.47     -26.76     -88.39      89.60

   47   7.2  0.5  0.5   -6024.75    -648.28      31.64    -103.67      17.38      -3.13     334.93     -12.00      98.24     -74.54
                         1110.78     -54.76     106.36     562.37       2.10       5.45     -61.75     -75.97     448.81    -481.77

   48   8.2  0.5  0.5    -124.29     -13.33       0.60     -31.85    -569.75     -35.48       6.91      55.01    -458.09    -491.09
                          368.11     -18.07      35.27     -11.72     -34.13     569.69     -20.46     666.57      90.32     -10.71

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00   -1094.73    -132.81       1.27
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     -95.73     796.26     756.88

    2   2.2  1.5  1.5       0.00       0.00      -0.38      -6.48      -9.79     161.11      -0.00    1687.79     204.92      -1.96
                           -0.00       0.00      -0.41      12.96   -2943.06    -175.89       0.00     -67.65     561.83     534.29

    3   3.2  1.5  1.5       0.00       0.38       0.00    -135.38    -198.30    3302.47       0.00     -82.34      -9.96       0.33
                           -0.00       0.41      -0.00       6.55   -1512.99     -90.29       0.00     131.24   -1093.14   -1039.06

    4   4.2  1.5  1.5       0.00       6.48     135.38      -0.00    1653.17      99.58      -0.00     127.45   -1059.18   -1015.59
                            0.00     -12.96      -6.55      -0.00      98.54   -1654.61      -0.00    1457.17     218.32     -45.56

    5   5.2  1.5  1.5       0.00       9.79     198.30   -1653.17       0.00     -68.01       0.00     123.25   -1004.47    1068.28
                           -0.00    2943.06    1512.99     -98.54      -0.00      -7.50       0.00      -4.63      60.57     -64.00

    6   6.2  1.5  1.5      -0.00    -161.11   -3302.47     -99.58      68.01      -0.00       0.00      12.41    -103.64      22.50
                           -0.00     175.89      90.29    1654.61       7.50       0.00       0.00     182.80    -994.43    1069.16

    7   7.2  1.5  1.5      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00   -2388.32    -289.76       2.77
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -208.84    1737.17    1651.26

    8   8.2  1.5  1.5    1094.73   -1687.79      82.34    -127.45    -123.25     -12.41    2388.32      -0.00       1.88     197.22
                           95.73      67.65    -131.24   -1457.17       4.63    -182.80     208.84      -0.00    1123.94   -1182.41

    9   9.2  1.5  1.5     132.81    -204.92       9.96    1059.18    1004.47     103.64     289.76      -1.88      -0.00   -1625.62
                         -796.26    -561.83    1093.14    -218.32     -60.57     994.43   -1737.17   -1123.94       0.00    -142.15

   10  10.2  1.5  1.5      -1.27       1.96      -0.33    1015.59   -1068.28     -22.50      -2.77    -197.22    1625.62      -0.00
                         -756.88    -534.29    1039.06      45.56      64.00   -1069.16   -1651.26    1182.41     142.15      -0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     -53.16     433.74    -463.03

   12   2.2  1.5  0.5       0.00   53090.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.27    1607.61       2.92      65.93      -0.00     -44.50     362.54    -387.17

   13   3.2  1.5  0.5       0.00       0.00   53090.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.27      -0.00   -1035.75      -1.95     -42.43       0.00     -68.89     562.83    -600.83

   14   4.2  1.5  0.5       0.00       0.00       0.00   53090.25       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1607.61    1035.75      -0.00      39.03      -1.62      -0.00      -6.69      24.75      23.76

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00   53090.26       0.00       0.00       0.00       0.00       0.00
                            0.00      -2.92       1.95     -39.03       0.00     956.19      -0.00     838.98     139.06      34.00

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00   53090.25       0.00       0.00       0.00       0.00
                            0.00     -65.93      42.43       1.62    -956.19       0.00       0.00     124.13    -606.86    -582.64

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   53630.37       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00       0.00    -115.98     946.28   -1010.18

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53886.92       0.00       0.00
                           53.16      44.50      68.89       6.69    -838.98    -124.13     115.98      -0.00    -687.58    -644.09

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53886.92       0.00
                         -433.74    -362.54    -562.83     -24.75    -139.06     606.86    -946.28     687.58      -0.00     -78.94

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53886.92
                          463.03     387.17     600.83     -23.76     -34.00     582.64    1010.18     644.09      78.94       0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    1264.08     153.36      -1.47
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    -110.54     919.44     873.97

   22   2.2  1.5 -0.5      -0.00       0.00       0.44       7.48      11.30    -186.03       0.00   -1948.89    -236.62       2.26
                           -0.00      -0.00      -0.47      14.96   -3398.35    -203.10       0.00     -78.12     648.74     616.94

   23   3.2  1.5 -0.5      -0.00      -0.44       0.00     156.33     228.98   -3813.36      -0.00      95.08      11.50      -0.38
                           -0.00       0.47       0.00       7.56   -1747.05    -104.26       0.00     151.54   -1262.25   -1199.81

   24   4.2  1.5 -0.5      -0.00      -7.48    -156.33      -0.00   -1908.91    -114.98       0.00    -147.16    1223.03    1172.70
                            0.00     -14.96      -7.56       0.00     113.79   -1910.58      -0.00    1682.60     252.09     -52.61

   25   5.2  1.5 -0.5      -0.00     -11.30    -228.98    1908.91       0.00      78.53      -0.00    -142.31    1159.86   -1233.54
                           -0.00    3398.35    1747.05    -113.79       0.00      -8.66       0.00      -5.35      69.94     -73.90

   26   6.2  1.5 -0.5       0.00     186.03    3813.36     114.98     -78.53      -0.00      -0.00     -14.34     119.68     -25.98
                           -0.00     203.10     104.26    1910.58       8.66      -0.00       0.00     211.08   -1148.26    1234.55

   27   7.2  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00    2757.80     334.58      -3.20
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00    -241.15    2005.91    1906.71

   28   8.2  1.5 -0.5   -1264.08    1948.89     -95.08     147.16     142.31      14.34   -2757.80      -0.00      -2.18    -227.74
                          110.54      78.12    -151.54   -1682.60       5.35    -211.08     241.15       0.00    1297.81   -1365.33

   29   9.2  1.5 -0.5    -153.36     236.62     -11.50   -1223.03   -1159.86    -119.68    -334.58       2.18      -0.00    1877.11
                         -919.44    -648.74    1262.25    -252.09     -69.94    1148.26   -2005.91   -1297.81      -0.00    -164.14

   30  10.2  1.5 -0.5       1.47      -2.26       0.38   -1172.70    1233.54      25.98       3.20     227.74   -1877.11      -0.00
                         -873.97    -616.94    1199.81      52.61      73.90   -1234.55   -1906.71    1365.33     164.14       0.00

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

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -130.08      83.72     527.81      66.80      25.74      -0.00      73.60    -602.01     561.57

   42   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     363.22    -234.11     471.23     551.64    -604.72       0.00     579.08    -185.95    -361.05

   43   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -97.37      62.55    1349.93     231.89     518.50      -0.00    -375.98     -43.06    -317.66

   44   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     556.17    -358.53     863.67    -643.63    -260.27       0.00     162.02     463.08     346.84

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1335.91     860.62     338.07    -141.58    -312.95      -0.00     245.20     203.97      14.68

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          391.80     -22.95     -35.47      25.94     159.22    -639.27     -21.78     770.69     -10.67     -98.48

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          218.54     -12.72     -19.86       7.69    -640.75    -158.10     -12.15      73.60     569.34     524.87

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -7063.18     412.12     639.66       1.79     -11.03     -40.40     392.66      45.03      17.02      10.78

   49   1.2  0.5 -0.5       0.00       3.28      65.87     -24.76       2.64     601.71      -0.00    -318.17     -14.67      22.73
                            0.00      -0.16       0.03      27.62     861.45      91.58      -0.00      38.29     -45.49     -85.26

   50   2.2  0.5 -0.5       0.00      24.93     511.79     335.67     -95.96    -182.11       0.00     -40.88    -262.88     138.56
                           -0.00     582.79     299.59     260.36      40.84     -95.31       0.00    -118.64     220.18     -77.37

   51   3.2  0.5 -0.5       0.00      12.45     256.32    -201.51      61.34    -555.84       0.00    -247.01     118.61    -120.45
                            0.00    -398.55    -204.88     126.36     133.68      42.25      -0.00     -14.95     327.48     159.64

   52   4.2  0.5 -0.5      -0.00     -32.28    -661.06     139.16    -149.44    -260.89      -0.00    -144.72    -194.54     -16.97
                           -0.00     227.91     117.23    -324.58     177.55    -168.52       0.00    -131.89     -68.42     334.93

   53   5.2  0.5 -0.5      -0.00      -7.92    -161.07     164.16     407.48    -146.31      -0.00     -59.13     145.74     327.54
                           -0.00     282.52     145.22     -96.70     -38.56     392.03       0.00     330.13      62.93     114.60

   54   6.2  0.5 -0.5     646.58      69.60      -3.35    -323.89      17.64     -12.21     -35.95     -33.76     275.76    -263.00
                         3473.61    -171.09     332.82     -59.50       0.93     -20.69    -193.11     -15.45     -51.03      51.73

   55   7.2  0.5 -0.5   -3478.39    -374.28      18.27     -59.85      10.03      -1.81     193.37      -6.93      56.72     -43.04
                          641.31     -31.61      61.41     324.68       1.21       3.15     -35.65     -43.86     259.12    -278.15

   56   8.2  0.5 -0.5     -71.76      -7.70       0.35     -18.39    -328.95     -20.48       3.99      31.76    -264.48    -283.53
                          212.53     -10.43      20.36      -6.76     -19.70     328.91     -11.82     384.84      52.15      -6.19


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   1.2  1.5  0.5       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00   -1264.08    -153.36       1.47
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    -110.54     919.44     873.97

   12   2.2  1.5  0.5       0.00       0.00      -0.44      -7.48     -11.30     186.03      -0.00    1948.89     236.62      -2.26
                           -0.00       0.00      -0.47      14.96   -3398.35    -203.10       0.00     -78.12     648.74     616.94

   13   3.2  1.5  0.5       0.00       0.44       0.00    -156.33    -228.98    3813.36       0.00     -95.08     -11.50       0.38
                           -0.00       0.47      -0.00       7.56   -1747.05    -104.26       0.00     151.54   -1262.25   -1199.81

   14   4.2  1.5  0.5       0.00       7.48     156.33      -0.00    1908.91     114.98      -0.00     147.16   -1223.03   -1172.70
                            0.00     -14.96      -7.56      -0.00     113.79   -1910.58      -0.00    1682.60     252.09     -52.61

   15   5.2  1.5  0.5       0.00      11.30     228.98   -1908.91       0.00     -78.53       0.00     142.31   -1159.86    1233.54
                           -0.00    3398.35    1747.05    -113.79      -0.00      -8.66       0.00      -5.35      69.94     -73.90

   16   6.2  1.5  0.5      -0.00    -186.03   -3813.36    -114.98      78.53      -0.00       0.00      14.34    -119.68      25.98
                           -0.00     203.10     104.26    1910.58       8.66       0.00       0.00     211.08   -1148.26    1234.55

   17   7.2  1.5  0.5      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00   -2757.80    -334.58       3.20
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -241.15    2005.91    1906.71

   18   8.2  1.5  0.5    1264.08   -1948.89      95.08    -147.16    -142.31     -14.34    2757.80      -0.00       2.18     227.74
                          110.54      78.12    -151.54   -1682.60       5.35    -211.08     241.15      -0.00    1297.81   -1365.33

   19   9.2  1.5  0.5     153.36    -236.62      11.50    1223.03    1159.86     119.68     334.58      -2.18      -0.00   -1877.11
                         -919.44    -648.74    1262.25    -252.09     -69.94    1148.26   -2005.91   -1297.81       0.00    -164.14

   20  10.2  1.5  0.5      -1.47       2.26      -0.38    1172.70   -1233.54     -25.98      -3.20    -227.74    1877.11      -0.00
                         -873.97    -616.94    1199.81      52.61      73.90   -1234.55   -1906.71    1365.33     164.14      -0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      53.16    -433.74     463.03

   22   2.2  1.5 -0.5       0.00   53090.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.27   -1607.61      -2.92     -65.93       0.00      44.50    -362.54     387.17

   23   3.2  1.5 -0.5       0.00       0.00   53090.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.27       0.00    1035.75       1.95      42.43      -0.00      68.89    -562.83     600.83

   24   4.2  1.5 -0.5       0.00       0.00       0.00   53090.25       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1607.61   -1035.75       0.00     -39.03       1.62       0.00       6.69     -24.75     -23.76

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00   53090.26       0.00       0.00       0.00       0.00       0.00
                           -0.00       2.92      -1.95      39.03      -0.00    -956.19       0.00    -838.98    -139.06     -34.00

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   53090.25       0.00       0.00       0.00       0.00
                           -0.00      65.93     -42.43      -1.62     956.19      -0.00      -0.00    -124.13     606.86     582.64

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   53630.37       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00     115.98    -946.28    1010.18

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53886.92       0.00       0.00
                          -53.16     -44.50     -68.89      -6.69     838.98     124.13    -115.98       0.00     687.58     644.09

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53886.92       0.00
                          433.74     362.54     562.83      24.75     139.06    -606.86     946.28    -687.58       0.00      78.94

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53886.92
                         -463.03    -387.17    -600.83      23.76      34.00    -582.64   -1010.18    -644.09     -78.94      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    1094.73     132.81      -1.27
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     -95.73     796.26     756.88

   32   2.2  1.5 -1.5      -0.00       0.00       0.38       6.48       9.79    -161.11       0.00   -1687.79    -204.92       1.96
                           -0.00      -0.00      -0.41      12.96   -2943.06    -175.89       0.00     -67.65     561.83     534.29

   33   3.2  1.5 -1.5      -0.00      -0.38       0.00     135.38     198.30   -3302.47      -0.00      82.34       9.96      -0.33
                           -0.00       0.41       0.00       6.55   -1512.99     -90.29       0.00     131.24   -1093.14   -1039.06

   34   4.2  1.5 -1.5      -0.00      -6.48    -135.38      -0.00   -1653.17     -99.58       0.00    -127.45    1059.18    1015.59
                            0.00     -12.96      -6.55       0.00      98.54   -1654.61      -0.00    1457.17     218.32     -45.56

   35   5.2  1.5 -1.5      -0.00      -9.79    -198.30    1653.17       0.00      68.01      -0.00    -123.25    1004.47   -1068.28
                           -0.00    2943.06    1512.99     -98.54       0.00      -7.50       0.00      -4.63      60.57     -64.00

   36   6.2  1.5 -1.5       0.00     161.11    3302.47      99.58     -68.01      -0.00      -0.00     -12.41     103.64     -22.50
                           -0.00     175.89      90.29    1654.61       7.50      -0.00       0.00     182.80    -994.43    1069.16

   37   7.2  1.5 -1.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00    2388.32     289.76      -2.77
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00    -208.84    1737.17    1651.26

   38   8.2  1.5 -1.5   -1094.73    1687.79     -82.34     127.45     123.25      12.41   -2388.32      -0.00      -1.88    -197.22
                           95.73      67.65    -131.24   -1457.17       4.63    -182.80     208.84       0.00    1123.94   -1182.41

   39   9.2  1.5 -1.5    -132.81     204.92      -9.96   -1059.18   -1004.47    -103.64    -289.76       1.88      -0.00    1625.62
                         -796.26    -561.83    1093.14    -218.32     -60.57     994.43   -1737.17   -1123.94      -0.00    -142.15

   40  10.2  1.5 -1.5       1.27      -1.96       0.33   -1015.59    1068.28      22.50       2.77     197.22   -1625.62      -0.00
                         -756.88    -534.29    1039.06      45.56      64.00   -1069.16   -1651.26    1182.41     142.15       0.00

   41   1.2  0.5  0.5       0.00       3.28      65.87     -24.76       2.64     601.71      -0.00    -318.17     -14.67      22.73
                           -0.00       0.16      -0.03     -27.62    -861.45     -91.58       0.00     -38.29      45.49      85.26

   42   2.2  0.5  0.5       0.00      24.93     511.79     335.67     -95.96    -182.11       0.00     -40.88    -262.88     138.56
                            0.00    -582.79    -299.59    -260.36     -40.84      95.31      -0.00     118.64    -220.18      77.37

   43   3.2  0.5  0.5       0.00      12.45     256.32    -201.51      61.34    -555.84       0.00    -247.01     118.61    -120.45
                           -0.00     398.55     204.88    -126.36    -133.68     -42.25       0.00      14.95    -327.48    -159.64

   44   4.2  0.5  0.5      -0.00     -32.28    -661.06     139.16    -149.44    -260.89      -0.00    -144.72    -194.54     -16.97
                            0.00    -227.91    -117.23     324.58    -177.55     168.52      -0.00     131.89      68.42    -334.93

   45   5.2  0.5  0.5      -0.00      -7.92    -161.07     164.16     407.48    -146.31      -0.00     -59.13     145.74     327.54
                            0.00    -282.52    -145.22      96.70      38.56    -392.03      -0.00    -330.13     -62.93    -114.60

   46   6.2  0.5  0.5     646.58      69.60      -3.35    -323.89      17.64     -12.21     -35.95     -33.76     275.76    -263.00
                        -3473.61     171.09    -332.82      59.50      -0.93      20.69     193.11      15.45      51.03     -51.73

   47   7.2  0.5  0.5   -3478.39    -374.28      18.27     -59.85      10.03      -1.81     193.37      -6.93      56.72     -43.04
                         -641.31      31.61     -61.41    -324.68      -1.21      -3.15      35.65      43.86    -259.12     278.15

   48   8.2  0.5  0.5     -71.76      -7.70       0.35     -18.39    -328.95     -20.48       3.99      31.76    -264.48    -283.53
                         -212.53      10.43     -20.36       6.76      19.70    -328.91      11.82    -384.84     -52.15       6.19

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -130.08      83.72     527.81      66.80      25.74      -0.00      73.60    -602.01     561.57

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     363.22    -234.11     471.23     551.64    -604.72       0.00     579.08    -185.95    -361.05

   51   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -97.37      62.55    1349.93     231.89     518.50      -0.00    -375.98     -43.06    -317.66

   52   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     556.17    -358.53     863.67    -643.63    -260.27       0.00     162.02     463.08     346.84

   53   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1335.91     860.62     338.07    -141.58    -312.95      -0.00     245.20     203.97      14.68

   54   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          391.80     -22.95     -35.47      25.94     159.22    -639.27     -21.78     770.69     -10.67     -98.48

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          218.54     -12.72     -19.86       7.69    -640.75    -158.10     -12.15      73.60     569.34     524.87

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -7063.18     412.12     639.66       1.79     -11.03     -40.40     392.66      45.03      17.02      10.78


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   1.2  1.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00   -1094.73    -132.81       1.27
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     -95.73     796.26     756.88

   22   2.2  1.5 -0.5       0.00       0.00      -0.38      -6.48      -9.79     161.11      -0.00    1687.79     204.92      -1.96
                           -0.00       0.00      -0.41      12.96   -2943.06    -175.89       0.00     -67.65     561.83     534.29

   23   3.2  1.5 -0.5       0.00       0.38       0.00    -135.38    -198.30    3302.47       0.00     -82.34      -9.96       0.33
                           -0.00       0.41      -0.00       6.55   -1512.99     -90.29       0.00     131.24   -1093.14   -1039.06

   24   4.2  1.5 -0.5       0.00       6.48     135.38      -0.00    1653.17      99.58      -0.00     127.45   -1059.18   -1015.59
                            0.00     -12.96      -6.55      -0.00      98.54   -1654.61      -0.00    1457.17     218.32     -45.56

   25   5.2  1.5 -0.5       0.00       9.79     198.30   -1653.17       0.00     -68.01       0.00     123.25   -1004.47    1068.28
                           -0.00    2943.06    1512.99     -98.54      -0.00      -7.50       0.00      -4.63      60.57     -64.00

   26   6.2  1.5 -0.5      -0.00    -161.11   -3302.47     -99.58      68.01      -0.00       0.00      12.41    -103.64      22.50
                           -0.00     175.89      90.29    1654.61       7.50       0.00       0.00     182.80    -994.43    1069.16

   27   7.2  1.5 -0.5      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00   -2388.32    -289.76       2.77
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -208.84    1737.17    1651.26

   28   8.2  1.5 -0.5    1094.73   -1687.79      82.34    -127.45    -123.25     -12.41    2388.32      -0.00       1.88     197.22
                           95.73      67.65    -131.24   -1457.17       4.63    -182.80     208.84      -0.00    1123.94   -1182.41

   29   9.2  1.5 -0.5     132.81    -204.92       9.96    1059.18    1004.47     103.64     289.76      -1.88      -0.00   -1625.62
                         -796.26    -561.83    1093.14    -218.32     -60.57     994.43   -1737.17   -1123.94       0.00    -142.15

   30  10.2  1.5 -0.5      -1.27       1.96      -0.33    1015.59   -1068.28     -22.50      -2.77    -197.22    1625.62      -0.00
                         -756.88    -534.29    1039.06      45.56      64.00   -1069.16   -1651.26    1182.41     142.15      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00     159.48   -1301.22    1389.09

   32   2.2  1.5 -1.5       0.00   53090.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.81   -4822.82      -8.76    -197.78       0.00     133.49   -1087.61    1161.51

   33   3.2  1.5 -1.5       0.00       0.00   53090.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.81       0.00    3107.26       5.86     127.28      -0.00     206.68   -1688.50    1802.48

   34   4.2  1.5 -1.5       0.00       0.00       0.00   53090.25       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    4822.82   -3107.26       0.00    -117.08       4.87       0.00      20.06     -74.25     -71.27

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   53090.26       0.00       0.00       0.00       0.00       0.00
                           -0.00       8.76      -5.86     117.08      -0.00   -2868.58       0.00   -2516.93    -417.19    -102.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   53090.25       0.00       0.00       0.00       0.00
                           -0.00     197.78    -127.28      -4.87    2868.58      -0.00      -0.00    -372.40    1820.57    1747.93

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   53630.37       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00     347.93   -2838.83    3030.53

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53886.92       0.00       0.00
                         -159.48    -133.49    -206.68     -20.06    2516.93     372.40    -347.93       0.00    2062.75    1932.26

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53886.92       0.00
                         1301.22    1087.61    1688.50      74.25     417.19   -1820.57    2838.83   -2062.75       0.00     236.82

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53886.92
                        -1389.09   -1161.51   -1802.48      71.27     102.00   -1747.93   -3030.53   -1932.26    -236.82      -0.00

   41   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   1.2  0.5 -0.5       0.00       5.68     114.09     -42.88       4.58    1042.20      -0.00    -551.09     -25.40      39.36
                           -0.00       0.27      -0.06     -47.84   -1492.08    -158.62       0.00     -66.32      78.79     147.68

   50   2.2  0.5 -0.5       0.00      43.18     886.45     581.39    -166.21    -315.42       0.00     -70.81    -455.32     239.98
                            0.00   -1009.42    -518.91    -450.96     -70.73     165.08      -0.00     205.49    -381.36     134.01

   51   3.2  0.5 -0.5       0.00      21.57     443.95    -349.03     106.24    -962.75       0.00    -427.84     205.45    -208.63
                           -0.00     690.31     354.87    -218.87    -231.54     -73.19       0.00      25.90    -567.20    -276.51

   52   4.2  0.5 -0.5      -0.00     -55.90   -1145.00     241.03    -258.84    -451.88      -0.00    -250.66    -336.96     -29.40
                            0.00    -394.76    -203.05     562.19    -307.53     291.88      -0.00     228.44     118.51    -580.12

   53   5.2  0.5 -0.5      -0.00     -13.72    -278.98     284.34     705.77    -253.42      -0.00    -102.42     252.43     567.31
                            0.00    -489.35    -251.53     167.48      66.79    -679.01      -0.00    -571.81    -108.99    -198.48

   54   6.2  0.5 -0.5    1119.91     120.55      -5.81    -561.00      30.56     -21.15     -62.26     -58.48     477.64    -455.52
                        -6016.48     296.34    -576.46     103.06      -1.62      35.83     334.47      26.76      88.39     -89.60

   55   7.2  0.5 -0.5   -6024.75    -648.28      31.64    -103.67      17.38      -3.13     334.93     -12.00      98.24     -74.54
                        -1110.78      54.76    -106.36    -562.37      -2.10      -5.45      61.75      75.97    -448.81     481.77

   56   8.2  0.5 -0.5    -124.29     -13.33       0.60     -31.85    -569.75     -35.48       6.91      55.01    -458.09    -491.09
                         -368.11      18.07     -35.27      11.72      34.13    -569.69      20.46    -666.57     -90.32      10.71


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  1.5  1.5       0.00       0.00       0.00      -0.00      -0.00    1119.91   -6024.75    -124.29       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00   -6016.48   -1110.78    -368.11       0.00       0.00

    2   2.2  1.5  1.5       5.68      43.18      21.57     -55.90     -13.72     120.55    -648.28     -13.33       0.00       0.00
                            0.27   -1009.42     690.31    -394.76    -489.35     296.34      54.76      18.07       0.00       0.00

    3   3.2  1.5  1.5     114.09     886.45     443.95   -1145.00    -278.98      -5.81      31.64       0.60       0.00       0.00
                           -0.06    -518.91     354.87    -203.05    -251.53    -576.46    -106.36     -35.27       0.00       0.00

    4   4.2  1.5  1.5     -42.88     581.39    -349.03     241.03     284.34    -561.00    -103.67     -31.85       0.00       0.00
                          -47.84    -450.96    -218.87     562.19     167.48     103.06    -562.37      11.72       0.00       0.00

    5   5.2  1.5  1.5       4.58    -166.21     106.24    -258.84     705.77      30.56      17.38    -569.75       0.00       0.00
                        -1492.08     -70.73    -231.54    -307.53      66.79      -1.62      -2.10      34.13       0.00       0.00

    6   6.2  1.5  1.5    1042.20    -315.42    -962.75    -451.88    -253.42     -21.15      -3.13     -35.48       0.00       0.00
                         -158.62     165.08     -73.19     291.88    -679.01      35.83      -5.45    -569.69       0.00       0.00

    7   7.2  1.5  1.5      -0.00       0.00       0.00      -0.00      -0.00     -62.26     334.93       6.91       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00     334.47      61.75      20.46       0.00       0.00

    8   8.2  1.5  1.5    -551.09     -70.81    -427.84    -250.66    -102.42     -58.48     -12.00      55.01       0.00       0.00
                          -66.32     205.49      25.90     228.44    -571.81      26.76      75.97    -666.57       0.00       0.00

    9   9.2  1.5  1.5     -25.40    -455.32     205.45    -336.96     252.43     477.64      98.24    -458.09       0.00       0.00
                           78.79    -381.36    -567.20     118.51    -108.99      88.39    -448.81     -90.32       0.00       0.00

   10  10.2  1.5  1.5      39.36     239.98    -208.63     -29.40     567.31    -455.52     -74.54    -491.09       0.00       0.00
                          147.68     134.01    -276.51    -580.12    -198.48     -89.60     481.77      10.71       0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00    -391.80    -218.54    7063.18      -0.00       0.00

   12   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.28      24.93
                          130.08    -363.22      97.37    -556.17    1335.91      22.95      12.72    -412.12       0.16    -582.79

   13   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      65.87     511.79
                          -83.72     234.11     -62.55     358.53    -860.62      35.47      19.86    -639.66      -0.03    -299.59

   14   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -24.76     335.67
                         -527.81    -471.23   -1349.93    -863.67    -338.07     -25.94      -7.69      -1.79     -27.62    -260.36

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.64     -95.96
                          -66.80    -551.64    -231.89     643.63     141.58    -159.22     640.75      11.03    -861.45     -40.84

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     601.71    -182.11
                          -25.74     604.72    -518.50     260.27     312.95     639.27     158.10      40.40     -91.58      95.31

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      21.78      12.15    -392.66       0.00      -0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -318.17     -40.88
                          -73.60    -579.08     375.98    -162.02    -245.20    -770.69     -73.60     -45.03     -38.29     118.64

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -14.67    -262.88
                          602.01     185.95      43.06    -463.08    -203.97      10.67    -569.34     -17.02      45.49    -220.18

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      22.73     138.56
                         -561.57     361.05     317.66    -346.84     -14.68      98.48    -524.87     -10.78      85.26      77.37

   21   1.2  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00     646.58   -3478.39     -71.76       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00    3473.61     641.31     212.53      -0.00       0.00

   22   2.2  1.5 -0.5       3.28      24.93      12.45     -32.28      -7.92      69.60    -374.28      -7.70       0.00       0.00
                           -0.16     582.79    -398.55     227.91     282.52    -171.09     -31.61     -10.43     130.08    -363.22

   23   3.2  1.5 -0.5      65.87     511.79     256.32    -661.06    -161.07      -3.35      18.27       0.35       0.00       0.00
                            0.03     299.59    -204.88     117.23     145.22     332.82      61.41      20.36     -83.72     234.11

   24   4.2  1.5 -0.5     -24.76     335.67    -201.51     139.16     164.16    -323.89     -59.85     -18.39       0.00       0.00
                           27.62     260.36     126.36    -324.58     -96.70     -59.50     324.68      -6.76    -527.81    -471.23

   25   5.2  1.5 -0.5       2.64     -95.96      61.34    -149.44     407.48      17.64      10.03    -328.95       0.00       0.00
                          861.45      40.84     133.68     177.55     -38.56       0.93       1.21     -19.70     -66.80    -551.64

   26   6.2  1.5 -0.5     601.71    -182.11    -555.84    -260.89    -146.31     -12.21      -1.81     -20.48       0.00       0.00
                           91.58     -95.31      42.25    -168.52     392.03     -20.69       3.15     328.91     -25.74     604.72

   27   7.2  1.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00     -35.95     193.37       3.99       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00    -193.11     -35.65     -11.82       0.00      -0.00

   28   8.2  1.5 -0.5    -318.17     -40.88    -247.01    -144.72     -59.13     -33.76      -6.93      31.76       0.00       0.00
                           38.29    -118.64     -14.95    -131.89     330.13     -15.45     -43.86     384.84     -73.60    -579.08

   29   9.2  1.5 -0.5     -14.67    -262.88     118.61    -194.54     145.74     275.76      56.72    -264.48       0.00       0.00
                          -45.49     220.18     327.48     -68.42      62.93     -51.03     259.12      52.15     602.01     185.95

   30  10.2  1.5 -0.5      22.73     138.56    -120.45     -16.97     327.54    -263.00     -43.04    -283.53       0.00       0.00
                          -85.26     -77.37     159.64     334.93     114.60      51.73    -278.15      -6.19    -561.57     361.05

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.68      43.18
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.27    1009.42

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     114.09     886.45
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.06     518.91

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -42.88     581.39
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      47.84     450.96

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.58    -166.21
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1492.08      70.73

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1042.20    -315.42
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     158.62    -165.08

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -551.09     -70.81
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      66.32    -205.49

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -25.40    -455.32
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -78.79     381.36

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      39.36     239.98
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -147.68    -134.01

   41   1.2  0.5  0.5    9402.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   42   2.2  0.5  0.5       0.00    9402.73       0.00       0.00       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   43   3.2  0.5  0.5       0.00       0.00    9402.73       0.00       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   44   4.2  0.5  0.5       0.00       0.00       0.00    9402.72       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00    9402.73       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   16228.08       0.00       0.00**********************
                     **************************************************************************************************************

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   16228.08       0.00**********************
                     **************************************************************************************************************

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16228.07**********************
                     **************************************************************************************************************

   49   1.2  0.5 -0.5****************************************************************************************    9402.73       0.00
                     **************************************************************************************************************

   50   2.2  0.5 -0.5****************************************************************************************       0.00    9402.73
                     **************************************************************************************************************

   51   3.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************

   52   4.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************

   53   5.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************

   54   6.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************

   55   7.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************

   56   8.2  0.5 -0.5****************************************************************************************       0.00       0.00
                     **************************************************************************************************************


   Nr   State  S   Sz       51         52         53         54         55         56

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   11   1.2  1.5  0.5       0.00      -0.00      -0.00     646.58   -3478.39     -71.76
                           -0.00       0.00       0.00   -3473.61    -641.31    -212.53

   12   2.2  1.5  0.5      12.45     -32.28      -7.92      69.60    -374.28      -7.70
                          398.55    -227.91    -282.52     171.09      31.61      10.43

   13   3.2  1.5  0.5     256.32    -661.06    -161.07      -3.35      18.27       0.35
                          204.88    -117.23    -145.22    -332.82     -61.41     -20.36

   14   4.2  1.5  0.5    -201.51     139.16     164.16    -323.89     -59.85     -18.39
                         -126.36     324.58      96.70      59.50    -324.68       6.76

   15   5.2  1.5  0.5      61.34    -149.44     407.48      17.64      10.03    -328.95
                         -133.68    -177.55      38.56      -0.93      -1.21      19.70

   16   6.2  1.5  0.5    -555.84    -260.89    -146.31     -12.21      -1.81     -20.48
                          -42.25     168.52    -392.03      20.69      -3.15    -328.91

   17   7.2  1.5  0.5       0.00      -0.00      -0.00     -35.95     193.37       3.99
                            0.00      -0.00      -0.00     193.11      35.65      11.82

   18   8.2  1.5  0.5    -247.01    -144.72     -59.13     -33.76      -6.93      31.76
                           14.95     131.89    -330.13      15.45      43.86    -384.84

   19   9.2  1.5  0.5     118.61    -194.54     145.74     275.76      56.72    -264.48
                         -327.48      68.42     -62.93      51.03    -259.12     -52.15

   20  10.2  1.5  0.5    -120.45     -16.97     327.54    -263.00     -43.04    -283.53
                         -159.64    -334.93    -114.60     -51.73     278.15       6.19

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -391.80    -218.54    7063.18

   22   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           97.37    -556.17    1335.91      22.95      12.72    -412.12

   23   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          -62.55     358.53    -860.62      35.47      19.86    -639.66

   24   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                        -1349.93    -863.67    -338.07     -25.94      -7.69      -1.79

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -231.89     643.63     141.58    -159.22     640.75      11.03

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -518.50     260.27     312.95     639.27     158.10      40.40

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      21.78      12.15    -392.66

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          375.98    -162.02    -245.20    -770.69     -73.60     -45.03

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           43.06    -463.08    -203.97      10.67    -569.34     -17.02

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          317.66    -346.84     -14.68      98.48    -524.87     -10.78

   31   1.2  1.5 -1.5       0.00      -0.00      -0.00    1119.91   -6024.75    -124.29
                            0.00      -0.00      -0.00    6016.48    1110.78     368.11

   32   2.2  1.5 -1.5      21.57     -55.90     -13.72     120.55    -648.28     -13.33
                         -690.31     394.76     489.35    -296.34     -54.76     -18.07

   33   3.2  1.5 -1.5     443.95   -1145.00    -278.98      -5.81      31.64       0.60
                         -354.87     203.05     251.53     576.46     106.36      35.27

   34   4.2  1.5 -1.5    -349.03     241.03     284.34    -561.00    -103.67     -31.85
                          218.87    -562.19    -167.48    -103.06     562.37     -11.72

   35   5.2  1.5 -1.5     106.24    -258.84     705.77      30.56      17.38    -569.75
                          231.54     307.53     -66.79       1.62       2.10     -34.13

   36   6.2  1.5 -1.5    -962.75    -451.88    -253.42     -21.15      -3.13     -35.48
                           73.19    -291.88     679.01     -35.83       5.45     569.69

   37   7.2  1.5 -1.5       0.00      -0.00      -0.00     -62.26     334.93       6.91
                           -0.00       0.00       0.00    -334.47     -61.75     -20.46

   38   8.2  1.5 -1.5    -427.84    -250.66    -102.42     -58.48     -12.00      55.01
                          -25.90    -228.44     571.81     -26.76     -75.97     666.57

   39   9.2  1.5 -1.5     205.45    -336.96     252.43     477.64      98.24    -458.09
                          567.20    -118.51     108.99     -88.39     448.81      90.32

   40  10.2  1.5 -1.5    -208.63     -29.40     567.31    -455.52     -74.54    -491.09
                          276.51     580.12     198.48      89.60    -481.77     -10.71

   41   1.2  0.5  0.5******************************************************************
                     ******************************************************************

   42   2.2  0.5  0.5******************************************************************
                     ******************************************************************

   43   3.2  0.5  0.5******************************************************************
                     ******************************************************************

   44   4.2  0.5  0.5******************************************************************
                     ******************************************************************

   45   5.2  0.5  0.5******************************************************************
                     ******************************************************************

   46   6.2  0.5  0.5******************************************************************
                     ******************************************************************

   47   7.2  0.5  0.5******************************************************************
                     ******************************************************************

   48   8.2  0.5  0.5******************************************************************
                     ******************************************************************

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                     ******************************************************************

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                     ******************************************************************

   51   3.2  0.5 -0.5    9402.73       0.00       0.00       0.00       0.00       0.00
                     ******************************************************************

   52   4.2  0.5 -0.5       0.00    9402.72       0.00       0.00       0.00       0.00
                     ******************************************************************

   53   5.2  0.5 -0.5       0.00       0.00    9402.73       0.00       0.00       0.00
                     ******************************************************************

   54   6.2  0.5 -0.5       0.00       0.00       0.00   16228.08       0.00       0.00
                     ******************************************************************

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00   16228.08       0.00
                     ******************************************************************

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   16228.07
                     ******************************************************************


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1******************************************      0.00000000        0.00      0.0000
     2******************************************4044122.77289088************************
     3**********************************************************************************
     4**********************************************************************************
     5**********************************************************************************
     6**********************************************************************************
     7**********************************************************************************
     8**********************************************************************************
     9  -214.48769506    -0.00053971     -118.45****************************************
    10  -214.48769506    -0.00053971     -118.45****************************************
    11  -214.48769506    -0.00053970     -118.45****************************************
    12  -214.48769506    -0.00053970     -118.45****************************************
    13  -214.28758159     0.19957376    43801.38****************************************
    14  -214.28758159     0.19957376    43801.38****************************************
    15  -214.28377023     0.20338512    44637.87****************************************
    16  -214.28377023     0.20338512    44637.87****************************************
    17  -214.28377023     0.20338512    44637.87****************************************
    18  -214.28377023     0.20338512    44637.87****************************************
    19  -214.26072061     0.22643474    49696.68****************************************
    20  -214.26072061     0.22643474    49696.68****************************************
    21  -214.26072061     0.22643474    49696.68****************************************
    22  -214.26072061     0.22643475    49696.68****************************************
    23  -214.26008732     0.22706803    49835.67****************************************
    24  -214.26008732     0.22706803    49835.67****************************************
    25  -214.25978116     0.22737419    49902.87****************************************
    26  -214.25978116     0.22737419    49902.87****************************************
    27  -214.25978112     0.22737424    49902.88****************************************
    28  -214.25978112     0.22737424    49902.88****************************************
    29  -214.25978110     0.22737425    49902.88****************************************
    30  -214.25978110     0.22737425    49902.88****************************************
    31  -214.21943149     0.26772386    58758.60****************************************
    32  -214.21943149     0.26772386    58758.60****************************************
    33  -214.21943148     0.26772387    58758.60****************************************
    34  -214.21943148     0.26772387    58758.60****************************************
    35  -214.21909616     0.26805919    58832.19****************************************
    36  -214.21909616     0.26805919    58832.19****************************************
    37  -214.21909613     0.26805922    58832.20****************************************
    38  -214.21909613     0.26805922    58832.20****************************************
    39  -214.21909612     0.26805924    58832.20****************************************
    40  -214.21909612     0.26805924    58832.20****************************************
    41  -214.21909611     0.26805924    58832.20****************************************
    42  -214.21909611     0.26805924    58832.20****************************************
    43  -214.21854299     0.26861236    58953.60****************************************
    44  -214.21854299     0.26861236    58953.60****************************************
    45  -214.21854297     0.26861238    58953.60****************************************
    46  -214.21854297     0.26861238    58953.60****************************************
    47  -214.21854296     0.26861239    58953.61****************************************
    48  -214.21854296     0.26861239    58953.61****************************************
    49145309.68729648145524.17445183****************************************************
    50**********************************************************************************
    51**********************************************************************************
    52**********************************************************************************
    53**********************************************************************************
    54**********************************************************************************
    55**********************************************************************************
    56**********************************************************************************


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.000000000  -0.000000001  -0.000000001   0.000000000   0.000000001  -0.000000004   0.000000003   0.000000017
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000001  -0.000000001
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000002  -0.000000001

    3    3.2  1.5  1.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000001
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    4    4.2  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000001   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001

    5    5.2  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000001   0.000000001
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000001   0.000000001  -0.000000001

    6    6.2  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000001
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000001  -0.000000000

    7    7.2  1.5  1.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    8    8.2  1.5  1.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001

    9    9.2  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000002

   10   10.2  1.5  1.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001

   11    1.2  1.5  0.5   0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000002  -0.000000000  -0.000000001  -0.000000004
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000002  -0.000000001   0.000000000   0.000000022

   12    2.2  1.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000002  -0.000000002
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001

   13    3.2  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000001
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000002

   14    4.2  1.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000002
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000001

   15    5.2  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000001  -0.000000001   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000001

   16    6.2  1.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000002
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000002

   17    7.2  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001

   18    8.2  1.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000001
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000000  -0.000000001

   19    9.2  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000003
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000001

   20   10.2  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000   0.000000001
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   21    1.2  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000001  -0.000000002   0.000000002
                        -0.000000000  -0.000000001   0.000000001  -0.000000000  -0.000000001  -0.000000001  -0.000000005   0.000000007

   22    2.2  1.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000002   0.000000003
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000001

   23    3.2  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000003
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000001

   24    4.2  1.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000002
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000

   25    5.2  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000001   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001

   26    6.2  1.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000003
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000003

   27    7.2  1.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   28    8.2  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000002
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000003

   29    9.2  1.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000001
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000001

   30   10.2  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000001
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001

   31    1.2  1.5 -1.5   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000002  -0.000000001   0.000000001   0.000000004
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000004  -0.000000004  -0.000000021

   32    2.2  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000002   0.000000002
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000002

   33    3.2  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000002
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000002  -0.000000002

   34    4.2  1.5 -1.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000003
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000002  -0.000000001

   35    5.2  1.5 -1.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000  -0.000000000   0.000000001
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000002

   36    6.2  1.5 -1.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000003
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   37    7.2  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001

   38    8.2  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000003
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001

   39    9.2  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   40   10.2  1.5 -1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000002
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001

   41    1.2  0.5  0.5   0.282495738  -0.223749105   0.055054821  -0.015116989   0.026679202   0.349217393   0.096663788  -0.120152037
                         0.279374023  -0.017113527   0.143639936  -0.185133858  -0.041295084  -0.306563849   0.133198633  -0.092950674

   42    2.2  0.5  0.5  -0.060625468  -0.297790459  -0.011155012  -0.045438177  -0.009222594   0.194578602  -0.207380849  -0.109538617
                        -0.041123004  -0.135250760  -0.044266763  -0.159623181   0.271217332   0.326855280  -0.140009089  -0.011581467

   43    3.2  0.5  0.5   0.032285594   0.044838504   0.021968770   0.379902244  -0.113810671  -0.333976900  -0.018931539   0.110620934
                         0.094519318  -0.099051806   0.177539488  -0.310530842   0.168370523   0.094061160   0.143794072  -0.099945906

   44    4.2  0.5  0.5  -0.150936016   0.012101194  -0.398910776   0.373663178  -0.016893879   0.196073720  -0.130354439  -0.057987766
                        -0.185068668  -0.008777172  -0.037137781   0.060102187   0.014793191  -0.239577002   0.026334144   0.067613950

   45    5.2  0.5  0.5   0.342924267   0.166080983   0.085258419   0.233356104  -0.081887393   0.051334935  -0.199670119  -0.043716413
                         0.136661492  -0.120891106   0.031083161   0.256465132  -0.184436863   0.169328133  -0.313453937   0.020166346

   46    6.2  0.5  0.5  -0.030912190   0.189465262  -0.112502548   0.004099377   0.152177625   0.098811764   0.259582489  -0.126496762
                        -0.091691360   0.091787944  -0.009860662  -0.109132255  -0.050291426   0.211422853  -0.116003954  -0.357148775

   47    7.2  0.5  0.5   0.112910902  -0.378673827  -0.362682741  -0.097116020   0.137233510  -0.287206395   0.035746992   0.069222536
                         0.014139692  -0.102855805   0.158099765  -0.004935615  -0.175782416  -0.013635431  -0.281087400   0.050410014

   48    8.2  0.5  0.5  -0.363598880  -0.017771442   0.140980341  -0.032603544  -0.108306249   0.111365669  -0.058870454  -0.057909616
                         0.052572978   0.078246459   0.517175287   0.021960143  -0.204502146   0.019751278  -0.130677095   0.014551982

   49    1.2  0.5 -0.5  -0.217399121   0.052491544  -0.131666771   0.114587285   0.136810543  -0.015959297   0.091153266   0.048174755
                         0.514544678  -0.045868978  -0.036462462   0.173775012   0.287216605   0.059864147  -0.049540227   0.118107360

   50    2.2  0.5 -0.5   0.107413923  -0.022913201  -0.041327367  -0.042595938  -0.073805500  -0.010660981   0.226244131   0.005352312
                        -0.052603327  -0.042444805   0.131196734   0.278408783  -0.124511818   0.251897229   0.617251583   0.108232459

   51    3.2  0.5 -0.5   0.183915294  -0.134599796  -0.001803691   0.149919512  -0.108269875   0.081012146   0.068507025   0.075528092
                        -0.152752139   0.257576782   0.204108811   0.195235478   0.402146263   0.075037978  -0.103266160  -0.032604015

   52    4.2  0.5 -0.5   0.049017595   0.138663319   0.256245240   0.029946954   0.488073133  -0.088546539  -0.010667281   0.016033048
                        -0.191087831  -0.079570650   0.263829094   0.168495557   0.108307872  -0.101889137   0.022144995   0.115492778

   53    5.2  0.5 -0.5  -0.043058303  -0.269593423   0.172007623   0.239472326   0.006889783   0.001441500   0.163144878   0.017356455
                        -0.048580091   0.141357043  -0.113835212  -0.219608579  -0.120745073  -0.001136261  -0.150699552   0.408693009

   54    6.2  0.5 -0.5  -0.014166541  -0.005493645  -0.007671304  -0.086055040   0.066167074   0.309938601   0.019299800   0.692745827
                        -0.017681179  -0.051277248   0.048820764   0.027949388  -0.117735401   0.009521208  -0.001839630   0.131077303

   55    7.2  0.5 -0.5   0.036019731   0.086571041   0.072181980  -0.232641814  -0.289012240  -0.004463694   0.110588094   0.056569568
                        -0.060390274  -0.197114405   0.101649714  -0.031117237   0.222002799  -0.189600471  -0.175504091   0.171557779

   56    8.2  0.5 -0.5   0.206517261   0.521176309  -0.202722110   0.019684204  -0.032268968   0.018458096  -0.004219614  -0.004955220
                         0.038708096   0.230633859   0.026973551  -0.170382677  -0.012946422   0.107792364  -0.011409590   0.180043035


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.298414549  -0.604174851   0.687896311   0.265298138   0.000000010   0.000000175  -0.010630724  -0.002375519
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.000098759  -0.000155692   0.001143105  -0.000069308   0.020134791   0.353563574  -0.177823373  -0.044396441
                        -0.000107055  -0.000136350  -0.000498870   0.000862596   0.003088876   0.008850703  -0.056903330   0.061371416

    3    3.2  1.5  1.5  -0.000610622  -0.001007131   0.000524259   0.000531031  -0.012980710  -0.227794757   0.243160387   0.057343616
                         0.000068904   0.000087687   0.000321242  -0.000555757  -0.001977304  -0.005774073   0.036707370  -0.039507299

    4    4.2  1.5  1.5   0.000129748   0.000148791   0.000578914  -0.001015451   0.003692828  -0.010945219   0.063534660  -0.064740189
                         0.000414953   0.000455070   0.000698847  -0.000309162   0.019459323   0.420546546  -0.282529792  -0.074929661

    5    5.2  1.5  1.5  -0.000040340  -0.000981436  -0.000531968  -0.000901332   0.101395662  -0.007117930   0.043207545   0.152402796
                         0.000062725  -0.000361254  -0.000366683   0.000198633   0.184355303  -0.009010596  -0.099833678   0.206619372

    6    6.2  1.5  1.5  -0.000056695   0.000368438   0.000391824  -0.000241011  -0.184316262   0.009323272   0.102008082  -0.209566991
                        -0.000023633  -0.000963941  -0.000504815  -0.000912869   0.102284029   0.010110117   0.031561780   0.149595195

    7    7.2  1.5  1.5  -0.001434757  -0.002904833   0.003307359   0.001275536  -0.000000063  -0.000001208   0.115125831   0.025725787
                         0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000003   0.000000005  -0.000000049   0.000000042

    8    8.2  1.5  1.5  -0.000768825   0.006974628   0.006141649  -0.000905968  -0.156050910   0.008503764   0.072914511  -0.179986572
                         0.000242285  -0.010879869  -0.008715200  -0.013590111   0.058005105  -0.004459746   0.032938969   0.092901857

    9    9.2  1.5  1.5  -0.000545589  -0.008943269  -0.004465757  -0.009401242   0.033542467  -0.002779209   0.037415501   0.059765526
                        -0.007040744  -0.021154111   0.012562884   0.006657360   0.117609693  -0.006484618   0.050751795   0.159990394

   10   10.2  1.5  1.5  -0.000422810  -0.009178284  -0.004888373  -0.008702538   0.049336477  -0.003579678   0.026677530   0.076648782
                         0.008644729   0.012344782  -0.022426372  -0.005777083   0.103510808  -0.005559900  -0.161208027   0.093402395

   11    1.2  1.5  0.5   0.038563428  -0.272650125  -0.259030673   0.094104632  -0.000000062  -0.000000002   0.009493850  -0.021192276
                         0.028739687   0.622015577   0.331095945   0.590365359   0.000000030  -0.000000001   0.004817037   0.013758785

   12    2.2  1.5  0.5  -0.000188127   0.000314691   0.000139297   0.000143196  -0.205857017   0.011104691   0.066255691  -0.226966650
                         0.001143760  -0.000893350  -0.000206070  -0.000213190   0.097697617  -0.007067364   0.021118805   0.173735126

   13    3.2  1.5  0.5   0.000050788   0.000296982   0.000384970  -0.000264717  -0.319519751   0.017171219   0.072144981  -0.110101777
                        -0.000789528  -0.000564490  -0.000474142  -0.000944795   0.151634151  -0.011049298   0.044653476   0.054518255

   14    4.2  1.5  0.5  -0.001406762   0.000406820  -0.000040030  -0.000315482  -0.000916232  -0.014911238   0.010866764  -0.115463879
                        -0.000187535   0.000099347  -0.000086702   0.000265205  -0.000013025   0.001201743   0.017094562  -0.130925650

   15    5.2  1.5  0.5  -0.000030140  -0.000054859   0.000063240   0.000023847   0.001954888  -0.012659129   0.006477336   0.001219190
                         0.000458792   0.000929412  -0.001058112  -0.000407462  -0.020933112  -0.364134099  -0.107877414  -0.024350743

   16    6.2  1.5  0.5   0.000401629   0.000946702  -0.001060563  -0.000421356   0.020929691   0.363831860  -0.107558213  -0.028847818
                         0.000019706   0.000059920  -0.000067002  -0.000013555   0.001928722  -0.012618658  -0.005773470  -0.006841289

   17    7.2  1.5  0.5   0.000185411  -0.001310884  -0.001245403   0.000452449   0.000000461   0.000000036  -0.102814176   0.229502830
                         0.000138178   0.002990611   0.001591887   0.002838438  -0.000000221   0.000000007  -0.052166364  -0.149001428

   18    8.2  1.5  0.5  -0.013124760  -0.019090817   0.003365581   0.013232715   0.001520083  -0.096014805   0.334765886   0.081916431
                         0.001972948   0.003420085   0.007522613  -0.016510460   0.013236584  -0.011556856   0.080485655  -0.071106656

   19    9.2  1.5  0.5  -0.000337305  -0.005738666   0.004567357  -0.015561188  -0.057618084  -0.009270360   0.101796949   0.005236932
                         0.000753349  -0.006543808   0.017501349  -0.001101184  -0.114861394   0.075713150  -0.147239819   0.027920376

   20   10.2  1.5  0.5   0.001680989   0.007424261   0.009538714  -0.006027675   0.059578669  -0.005919949   0.025965331  -0.092924927
                        -0.000178495  -0.001872612   0.019948249  -0.000740910   0.130523263   0.059372018  -0.086150123  -0.101882586

   21    1.2  1.5 -0.5   0.268520402   0.268970871   0.439315736  -0.224531706   0.000000001   0.000000069   0.027652236   0.006720742
                        -0.082621286  -0.105183671  -0.385094185   0.666043675  -0.000000001   0.000000001   0.006660748  -0.007178883

   22    2.2  1.5 -0.5  -0.000610722  -0.001006966   0.000524362   0.000531005   0.013017555   0.227791931   0.243165681   0.057295967
                         0.000069063   0.000087664   0.000321445  -0.000555731   0.001951342   0.005724923   0.036691532  -0.039530905

   23    3.2  1.5 -0.5  -0.000098630   0.000155758  -0.001143065   0.000069464   0.020178029   0.353563204   0.177825702   0.044378740
                         0.000106973   0.000136117   0.000498928  -0.000862667   0.003127818   0.008879855   0.056948015  -0.061349804

   24    4.2  1.5 -0.5   0.000001508  -0.000002361   0.000003277  -0.000012174  -0.014115246   0.000832064  -0.000610936   0.004861433
                         0.000401898   0.000948779  -0.001062722  -0.000421010   0.004954429  -0.000383829  -0.107663299  -0.029471975

   25    5.2  1.5 -0.5   0.001397702  -0.000450646   0.000088905   0.000316077   0.136240458  -0.010283689  -0.007426214   0.124156381
                         0.000103108  -0.000075043   0.000084115  -0.000283925   0.337923712  -0.018337400  -0.016424206   0.123913004

   26    6.2  1.5 -0.5  -0.000102208   0.000076864  -0.000086137   0.000282886   0.337631072  -0.018344937   0.016179142  -0.123866360
                         0.001415450  -0.000411985   0.000045162   0.000299111  -0.136154753   0.010258578  -0.011858284   0.123054971

   27    7.2  1.5 -0.5   0.001291029   0.001293195   0.002112201  -0.001079534  -0.000000002  -0.000000523  -0.299461338  -0.072782639
                        -0.000397237  -0.000505716  -0.001851508   0.003202294   0.000000009  -0.000000010  -0.072132941   0.077744114

   28    8.2  1.5 -0.5   0.005348632  -0.007238527  -0.003902326  -0.000349908  -0.083057552   0.003983872  -0.103004632   0.294414804
                        -0.018099945   0.022219062   0.008121686   0.009182250   0.049536338   0.012713991  -0.043846526  -0.230527343

   29    9.2  1.5 -0.5  -0.014771177  -0.008537248  -0.010645136  -0.008455298  -0.039205821   0.006032909   0.002725882   0.085184509
                        -0.005694525  -0.003507531  -0.008421894   0.007444077  -0.065431809  -0.128361164   0.028724881   0.062383485

   30   10.2  1.5 -0.5  -0.013041797  -0.005372319  -0.002956161  -0.019239296  -0.029510658  -0.001467337   0.057187159  -0.000143024
                         0.001323175  -0.001249407  -0.001329281   0.002089726  -0.051857559   0.143470505  -0.145776305   0.041709922

   31    1.2  1.5 -1.5  -0.120517794   0.067237085  -0.059255196   0.171204080  -0.000000159   0.000000013  -0.001635768   0.012898644
                         0.901578924  -0.288902147   0.054158613   0.215762340   0.000000070  -0.000000013   0.000633704  -0.011458577

   32    2.2  1.5 -1.5  -0.000050585  -0.000297073  -0.000384958   0.000264724  -0.319531937   0.017147537  -0.072179469   0.110122904
                         0.000789548   0.000564493   0.000473897   0.000944873   0.151607668  -0.010996025  -0.044661108  -0.054474715

   33    3.2  1.5 -1.5  -0.000188275   0.000314516   0.000139409   0.000143008   0.205839661  -0.011060568   0.066282725  -0.226962973
                         0.001143833  -0.000893282  -0.000206130  -0.000213218  -0.097743678   0.007076288   0.021072441   0.173742525

   34    4.2  1.5 -1.5   0.000026721   0.000939995   0.000479492   0.000927462   0.180711661  -0.004524029  -0.037749726  -0.136701147
                        -0.000055770   0.000424506   0.000420084  -0.000185226   0.379898009  -0.019283066   0.100440655  -0.217982208

   35    5.2  1.5 -1.5   0.000102423   0.000138732   0.000552715  -0.001001999   0.002847527   0.017832596   0.084326945  -0.069011008
                         0.000420452   0.000424315   0.000712002  -0.000406916  -0.011124231  -0.209642461  -0.276452122  -0.073012576

   36    6.2  1.5 -1.5   0.000422067   0.000462363   0.000731508  -0.000369029  -0.004416748  -0.209967387  -0.278403919  -0.078270779
                        -0.000104788  -0.000119728  -0.000535058   0.000996832   0.013024266  -0.018660337  -0.080374232   0.059893566

   37    7.2  1.5 -1.5  -0.000579442   0.000323272  -0.000284895   0.000823138   0.000001115  -0.000000099   0.017714561  -0.139686471
                         0.004334731  -0.001389023   0.000260391   0.001037370  -0.000000477   0.000000126  -0.006862763   0.124091243

   38    8.2  1.5 -1.5   0.002771478   0.006437600   0.008482632  -0.004216714  -0.009582004  -0.166161710  -0.226173439  -0.062383421
                        -0.002637195  -0.002535894  -0.009216044   0.015154956  -0.000623917   0.010333032  -0.032182670   0.047316466

   39    9.2  1.5 -1.5   0.024830720  -0.004995908   0.008483142  -0.005443222  -0.000092319  -0.017085444   0.005920609   0.060942805
                         0.007006556   0.002195723   0.007320365  -0.006099527  -0.007054503  -0.121100031  -0.183765317   0.090930174

   40   10.2  1.5 -1.5  -0.023186054   0.009362260   0.004201716  -0.015653931   0.001014593   0.003071685   0.043730762  -0.156679698
                         0.000700006   0.005788048   0.004883672   0.001305798  -0.006534313  -0.114626120  -0.136907395  -0.168949053

   41    1.2  0.5  0.5  -0.000000006  -0.000000002   0.000000003   0.000000004  -0.000000001  -0.000000001   0.000000001  -0.000000001
                         0.000000008   0.000000006  -0.000000002   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000

   42    2.2  0.5  0.5  -0.000000020  -0.000000002   0.000000002   0.000000002  -0.000000001  -0.000000002   0.000000003  -0.000000002
                         0.000000045   0.000000006  -0.000000002  -0.000000002   0.000000000   0.000000001  -0.000000001   0.000000002

   43    3.2  0.5  0.5   0.000000019   0.000000007  -0.000000004  -0.000000004  -0.000000000   0.000000002  -0.000000001   0.000000001
                        -0.000000005   0.000000000   0.000000001   0.000000002   0.000000001   0.000000001  -0.000000000  -0.000000000

   44    4.2  0.5  0.5  -0.000000000  -0.000000001   0.000000000   0.000000003  -0.000000001  -0.000000001   0.000000001  -0.000000000
                         0.000000028   0.000000005  -0.000000004  -0.000000002   0.000000000   0.000000001  -0.000000001   0.000000002

   45    5.2  0.5  0.5   0.000000000  -0.000000002   0.000000001   0.000000002  -0.000000001  -0.000000002   0.000000001   0.000000001
                         0.000000021   0.000000002   0.000000001  -0.000000002   0.000000000   0.000000001  -0.000000001   0.000000001

   46    6.2  0.5  0.5   0.000000014   0.000000004  -0.000000001   0.000000003  -0.000000002  -0.000000001   0.000000002   0.000000001
                         0.000000050   0.000000022   0.000000001   0.000000005   0.000000003   0.000000002  -0.000000003   0.000000003

   47    7.2  0.5  0.5  -0.000000010  -0.000000003  -0.000000002  -0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000003   0.000000001   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000

   48    8.2  0.5  0.5   0.000000000  -0.000000003   0.000000002   0.000000002   0.000000000  -0.000000001   0.000000001   0.000000000
                         0.000000003   0.000000000   0.000000002  -0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000

   49    1.2  0.5 -0.5  -0.000000006   0.000000000  -0.000000002  -0.000000001  -0.000000001  -0.000000001   0.000000001  -0.000000001
                         0.000000031   0.000000003  -0.000000005  -0.000000002  -0.000000001   0.000000001  -0.000000001   0.000000002

   50    2.2  0.5 -0.5   0.000000036   0.000000008  -0.000000003  -0.000000000  -0.000000001   0.000000000   0.000000001   0.000000001
                         0.000000063   0.000000007  -0.000000006  -0.000000001   0.000000002   0.000000003  -0.000000003   0.000000005

   51    3.2  0.5 -0.5   0.000000003   0.000000001  -0.000000001  -0.000000003   0.000000000   0.000000001  -0.000000001   0.000000001
                        -0.000000026  -0.000000005   0.000000003   0.000000002  -0.000000001  -0.000000001   0.000000000  -0.000000001

   52    4.2  0.5 -0.5  -0.000000017  -0.000000003  -0.000000001  -0.000000000  -0.000000001  -0.000000001   0.000000002  -0.000000001
                         0.000000030   0.000000004  -0.000000005  -0.000000002  -0.000000001   0.000000001  -0.000000000   0.000000002

   53    5.2  0.5 -0.5  -0.000000030  -0.000000003   0.000000000   0.000000003  -0.000000001  -0.000000003   0.000000004  -0.000000004
                         0.000000077   0.000000005  -0.000000012  -0.000000008  -0.000000002   0.000000002  -0.000000001   0.000000006

   54    6.2  0.5 -0.5  -0.000000031  -0.000000012  -0.000000008  -0.000000010  -0.000000001   0.000000002  -0.000000000  -0.000000003
                        -0.000000020  -0.000000004  -0.000000000  -0.000000004  -0.000000005  -0.000000000   0.000000002  -0.000000001

   55    7.2  0.5 -0.5  -0.000000016  -0.000000005  -0.000000002   0.000000003  -0.000000003  -0.000000003   0.000000004  -0.000000002
                         0.000000081   0.000000013  -0.000000009  -0.000000006  -0.000000000   0.000000002  -0.000000002   0.000000006

   56    8.2  0.5 -0.5  -0.000000004   0.000000001   0.000000000   0.000000001   0.000000001  -0.000000001   0.000000001  -0.000000001
                         0.000000020  -0.000000002  -0.000000003  -0.000000003  -0.000000001   0.000000001  -0.000000000   0.000000002


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5  -0.030240990  -0.002294232   0.012138681  -0.002699873  -0.018363046  -0.001757437  -0.000000002   0.000000207
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.254123488   0.013087100  -0.102394426   0.054428489  -0.265591538  -0.008775342  -0.004478595   0.125506984
                         0.018305589  -0.041165078  -0.014668566  -0.008700487  -0.009166947   0.007832450   0.002360208   0.007384812

    3    3.2  1.5  1.5   0.202081327   0.019306490   0.254664255  -0.077020656  -0.114313711  -0.021649557   0.002880884  -0.080857040
                        -0.011811487   0.026507571   0.009485297   0.005578658   0.005932862  -0.005044443  -0.001516543  -0.004782506

    4    4.2  1.5  1.5  -0.020814680   0.047661007   0.013860368   0.000662138   0.010311037  -0.013548707   0.000258075  -0.008685830
                         0.104645442   0.007396805  -0.224222192   0.088071300  -0.161197954   0.000301640  -0.005274664   0.149237056

    5    5.2  1.5  1.5  -0.014598269  -0.165780702   0.013812090  -0.006166239   0.000179134   0.103158847  -0.004392086  -0.001707681
                         0.021756176  -0.038118272  -0.088203841  -0.236279816  -0.014085859  -0.099060452   0.074632933   0.002757727

    6    6.2  1.5  1.5  -0.022459291   0.040100928   0.088435872   0.236665329   0.014245573   0.098610481  -0.074703617  -0.002848848
                        -0.010274932  -0.165704363   0.004621412  -0.002585775  -0.006450112   0.103286724  -0.004607139   0.004415276

    7    7.2  1.5  1.5   0.327496737   0.024845544  -0.334570066   0.074414793   0.506127053   0.048438935   0.000000048  -0.000005454
                         0.000000016  -0.000000024  -0.000000034  -0.000000015  -0.000000026   0.000000019  -0.000000000   0.000000022

    8    8.2  1.5  1.5  -0.015225805   0.049197790  -0.058300323  -0.161405820  -0.009353588  -0.056987026   0.459245059   0.013793306
                        -0.049336716  -0.128431096  -0.002415501  -0.023125893  -0.025436930  -0.082444880   0.095858875   0.012888021

    9    9.2  1.5  1.5  -0.011074797  -0.089274062  -0.016695756  -0.023604847  -0.001636150  -0.061959665   0.096510983   0.010228376
                         0.299237654  -0.021317620  -0.087444043   0.145797998   0.202060409   0.055826060  -0.330840530  -0.009365069

   10   10.2  1.5  1.5  -0.008626184  -0.089275158  -0.008946203  -0.003581070  -0.000458646  -0.051497820   0.037681174   0.007998108
                        -0.297095257  -0.049458783   0.178923992   0.081277421  -0.201974816   0.024035792  -0.320918360  -0.010248439

   11    1.2  1.5  0.5  -0.002030573   0.004717368  -0.006643026  -0.018092141  -0.001052050  -0.007096836  -0.000000096  -0.000000008
                        -0.001555839  -0.016058840  -0.001457289  -0.000609179  -0.000075905  -0.008336582  -0.000000010   0.000000004

   12    2.2  1.5  0.5  -0.005303082  -0.002631194   0.072965346   0.245184979   0.022329012  -0.105575665  -0.080429864  -0.002551723
                        -0.031721391   0.140715533   0.008434376  -0.005290917   0.014394872  -0.084290543  -0.009581401  -0.001999303

   13    3.2  1.5  0.5  -0.021172495   0.058802305   0.056234464   0.123248879   0.001986280   0.178306170  -0.124838972  -0.003982428
                         0.001599389  -0.284908316   0.017203808   0.012856429  -0.008084543   0.183921625  -0.014869352  -0.003131744

   14    4.2  1.5  0.5   0.040099232  -0.271404784   0.008732480   0.009990627  -0.026288433   0.169383965   0.000156929  -0.005312813
                         0.008363045  -0.033949786   0.031561451   0.139086826   0.016616666  -0.185236744  -0.000130434   0.000247447

   15    5.2  1.5  0.5   0.018451128   0.000876646   0.009493668  -0.002081449  -0.014384083  -0.001079816   0.002715762  -0.000129312
                        -0.306948777  -0.023311446  -0.158271322   0.035476715   0.239534897   0.022547899   0.004452377  -0.129521087

   16    6.2  1.5  0.5  -0.305568318  -0.034449917  -0.158103731   0.035624935   0.238632998   0.029907238  -0.004439784   0.129407215
                        -0.018066231  -0.002805698  -0.008202360   0.007823967   0.015047713  -0.006221580   0.002707639  -0.000119706

   17    7.2  1.5  0.5   0.021990212  -0.051087034   0.183097057   0.498661119   0.028996955   0.195604748   0.000002572   0.000000225
                         0.016849030   0.173910340   0.040166229   0.016790348   0.002092148   0.229774980   0.000000276  -0.000000124

   18    8.2  1.5  0.5   0.150313864   0.020323558  -0.283900069   0.094283885   0.037516615   0.022146284  -0.004671586   0.269097916
                        -0.050243166   0.044860300  -0.022698183  -0.012122093  -0.034615130   0.003191800  -0.040830229   0.037989357

   19    9.2  1.5  0.5  -0.001465865  -0.016463140  -0.049886247   0.003199878  -0.002093612  -0.021883221  -0.041273886   0.035039187
                         0.249982989   0.004155621   0.071705209   0.030427723   0.214988111   0.034985114   0.375338715  -0.182265603

   20   10.2  1.5  0.5  -0.008631175   0.085454925  -0.003708821  -0.003468311  -0.005724673   0.036608928   0.050285076   0.020468987
                         0.226887763   0.029060692   0.022240665  -0.099566722   0.197834381  -0.018373617  -0.385947852  -0.198779864

   21    1.2  1.5 -0.5  -0.010244685  -0.000051236  -0.017143906   0.006692457  -0.012348678   0.000333079  -0.000000006   0.000000097
                        -0.002142760   0.004813885  -0.001337726  -0.000793153  -0.000835752   0.000711349  -0.000000004   0.000000007

   22    2.2  1.5 -0.5   0.202085088   0.019305389   0.254653056  -0.076997490  -0.114312345  -0.021669769  -0.002864658   0.080858754
                        -0.011780960   0.026542637   0.009479884   0.005619214   0.005899680  -0.005068715   0.001517376   0.004764001

   23    3.2  1.5 -0.5  -0.254122741  -0.013045407   0.102410998  -0.054407388   0.265597376   0.008761933  -0.004472666   0.125503162
                        -0.018279937   0.041154871   0.014710125   0.008693956   0.009149708  -0.007797193   0.002379780   0.007396941

   24    4.2  1.5 -0.5  -0.000183042   0.000210117  -0.001219291  -0.005654063  -0.000769637   0.008305314  -0.005186103  -0.000131474
                        -0.306096093  -0.034581661  -0.158237891   0.036316985   0.239123610   0.029099801  -0.001181469  -0.000153958

   25    5.2  1.5 -0.5  -0.027898039   0.274147830  -0.004079083  -0.019724405   0.015384200  -0.159067381  -0.022986474  -0.003458915
                        -0.005955280   0.017640698  -0.031010565  -0.138370140  -0.018176661   0.195225941   0.127465016   0.003903081

   26    6.2  1.5 -0.5   0.005352775  -0.017694486   0.030655219   0.138320483   0.018623362  -0.195011981   0.127355138   0.003892080
                        -0.040529192   0.272950555  -0.010591939  -0.018251435   0.025250401  -0.158012651   0.022956983   0.003448870

   27    7.2  1.5 -0.5   0.110945651   0.000554876   0.472525635  -0.184459512   0.340357429  -0.009180455   0.000000158  -0.000002606
                         0.023205138  -0.052132242   0.036870803   0.021861126   0.023035253  -0.019606412   0.000000126  -0.000000173

   28    8.2  1.5 -0.5   0.011801195   0.016888243   0.090663473   0.283248282   0.021688091  -0.035539509   0.271579133   0.011804306
                         0.038090480  -0.060215886   0.016816703  -0.012425652   0.017561634  -0.048256482   0.010100185  -0.039364658

   29    9.2  1.5 -0.5   0.013780481  -0.282477943   0.003567362   0.026809260   0.013401414  -0.156575108   0.002321203  -0.025617385
                        -0.010474085  -0.059641090  -0.024610916   0.090084482  -0.043207023   0.143104278   0.185588288   0.376731375

   30   10.2  1.5 -0.5  -0.002217462  -0.235609722  -0.016639527  -0.013081443   0.004083459  -0.137500592  -0.014934874   0.018620256
                         0.051658438  -0.048625803   0.097691763   0.037924049   0.045868038   0.137208375   0.199271653  -0.388764395

   31    1.2  1.5 -1.5  -0.000692281   0.003349137   0.002364790   0.010665816   0.001352444  -0.014183114  -0.000000200  -0.000000004
                         0.002711085  -0.026807445  -0.000171837  -0.000873021   0.001263332  -0.013045976  -0.000000035  -0.000000002

   32    2.2  1.5 -1.5   0.021182751  -0.058785190  -0.056256555  -0.123230698  -0.002003809  -0.178315900  -0.124839369  -0.003991838
                        -0.001635227   0.284903826  -0.017215089  -0.012894489   0.008116294  -0.183900730  -0.014881690  -0.003113357

   33    3.2  1.5 -1.5  -0.005269955  -0.002662983   0.072993849   0.245198742   0.022302930  -0.105554333   0.080432853   0.002568052
                        -0.031730138   0.140703653   0.008392838  -0.005297908   0.014396163  -0.084312876   0.009563145   0.002001473

   34    4.2  1.5 -1.5   0.011648474   0.162922551  -0.009949422  -0.011548837   0.005553360  -0.109001498  -0.017789296  -0.000676902
                        -0.021975675   0.049964861   0.088410740   0.236242983   0.014881936   0.092229262   0.148427224   0.005237523

   35    5.2  1.5 -1.5  -0.027950199   0.049134253   0.030800595   0.005063206   0.020548890  -0.009746360   0.001194286   0.008848720
                         0.102646858   0.003547313  -0.222393502   0.088350260  -0.160368821   0.003957216   0.003015881  -0.074237903

   36    6.2  1.5 -1.5   0.103245828   0.010147234  -0.223144949   0.087520361  -0.160319245  -0.000664170   0.002024640  -0.074343077
                         0.027103832  -0.046853526  -0.027243687   0.004583518  -0.019960153   0.013354028   0.004848786  -0.008649700

   37    7.2  1.5 -1.5   0.007497124  -0.036269720  -0.065179178  -0.293974594  -0.037276485   0.390918727   0.000005252   0.000000094
                        -0.029359844   0.290312990   0.004736200   0.024062467  -0.034820322   0.359576647   0.000000930   0.000000042

   38    8.2  1.5 -1.5   0.087013172  -0.034357074   0.154219578  -0.060399933   0.112805285  -0.020540755  -0.015851310   0.468953052
                         0.010831765  -0.042645131  -0.004525997  -0.001568862  -0.003945704   0.012382402   0.010251309  -0.013302072

   39    9.2  1.5 -1.5  -0.028435197   0.284275049   0.011732401  -0.003142253  -0.005468317   0.143015455  -0.008414956   0.036606007
                         0.055362325   0.027599261   0.138176683   0.070736950   0.095656328  -0.153780962  -0.011023782   0.342681039

   40   10.2  1.5 -1.5   0.015645435  -0.246629949  -0.010404139  -0.014749123   0.009044691  -0.143712817  -0.006063866  -0.019549320
                         0.063964420  -0.033824432   0.079195585  -0.162500944   0.061027740   0.158973835  -0.011498861   0.322531759

   41    1.2  0.5  0.5   0.000000001  -0.000000001   0.000000001   0.000000001  -0.000000001   0.000000001   0.000000000   0.000000000
                        -0.000000001   0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000001  -0.000000000   0.000000000

   42    2.2  0.5  0.5  -0.000000000  -0.000000004   0.000000002   0.000000002   0.000000001   0.000000001   0.000000000   0.000000000
                        -0.000000002   0.000000003  -0.000000000  -0.000000002   0.000000002  -0.000000004   0.000000000  -0.000000000

   43    3.2  0.5  0.5  -0.000000001   0.000000001  -0.000000001  -0.000000001   0.000000001  -0.000000001   0.000000000  -0.000000000
                         0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000

   44    4.2  0.5  0.5   0.000000000  -0.000000001   0.000000001   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000001   0.000000003  -0.000000001  -0.000000002   0.000000001  -0.000000002  -0.000000000  -0.000000000

   45    5.2  0.5  0.5  -0.000000000  -0.000000001   0.000000001  -0.000000000   0.000000001  -0.000000000   0.000000000   0.000000000
                        -0.000000001   0.000000002  -0.000000001  -0.000000002   0.000000000  -0.000000002   0.000000000  -0.000000000

   46    6.2  0.5  0.5  -0.000000002  -0.000000002   0.000000002   0.000000000   0.000000003  -0.000000001   0.000000000   0.000000000
                        -0.000000002   0.000000006  -0.000000002  -0.000000004   0.000000001  -0.000000006  -0.000000000  -0.000000000

   47    7.2  0.5  0.5   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000   0.000000000
                        -0.000000000  -0.000000001   0.000000000   0.000000000   0.000000001   0.000000000   0.000000000   0.000000000

   48    8.2  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   49    1.2  0.5 -0.5  -0.000000000  -0.000000002   0.000000001   0.000000002   0.000000001   0.000000000   0.000000000   0.000000000
                        -0.000000002   0.000000002  -0.000000000  -0.000000002   0.000000001  -0.000000003   0.000000000  -0.000000000

   50    2.2  0.5 -0.5  -0.000000002   0.000000000   0.000000002   0.000000000   0.000000002  -0.000000004   0.000000000  -0.000000000
                        -0.000000002   0.000000007  -0.000000001  -0.000000004   0.000000000  -0.000000005  -0.000000000  -0.000000000

   51    3.2  0.5 -0.5  -0.000000000   0.000000002  -0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000002  -0.000000002   0.000000000   0.000000001  -0.000000001   0.000000003   0.000000000   0.000000000

   52    4.2  0.5 -0.5   0.000000000  -0.000000003   0.000000001   0.000000002   0.000000000   0.000000001   0.000000000   0.000000000
                        -0.000000002   0.000000002  -0.000000000  -0.000000002   0.000000002  -0.000000003   0.000000000  -0.000000000

   53    5.2  0.5 -0.5   0.000000000  -0.000000006   0.000000003   0.000000005   0.000000001   0.000000002  -0.000000000   0.000000000
                        -0.000000005   0.000000004  -0.000000001  -0.000000004   0.000000004  -0.000000006   0.000000000  -0.000000000

   54    6.2  0.5 -0.5   0.000000000  -0.000000002  -0.000000001   0.000000003  -0.000000001   0.000000004  -0.000000000  -0.000000000
                        -0.000000001  -0.000000005   0.000000001   0.000000003   0.000000002   0.000000004   0.000000001   0.000000000

   55    7.2  0.5 -0.5  -0.000000001  -0.000000006   0.000000003   0.000000004   0.000000002   0.000000002   0.000000000   0.000000000
                        -0.000000004   0.000000006  -0.000000001  -0.000000006   0.000000003  -0.000000007   0.000000000  -0.000000000

   56    8.2  0.5 -0.5  -0.000000000  -0.000000001   0.000000001   0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000001   0.000000001  -0.000000000  -0.000000001   0.000000001  -0.000000001   0.000000000  -0.000000000


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5  -0.000000168   0.000000028  -0.000000157   0.000000066  -0.000000019   0.000000473   0.026459040  -0.000345245
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.286360983  -0.049788497  -0.118830453   0.052195087   0.017728172  -0.235974159   0.072731638   0.000917650
                        -0.007720242   0.002056336   0.029781270  -0.031583968   0.001891845   0.006939821  -0.000844785  -0.000634843

    3    3.2  1.5  1.5   0.492923895  -0.085345539   0.154945199  -0.074997843   0.003562248  -0.107335448   0.053238254  -0.001900467
                        -0.012312783   0.002357668  -0.022194115   0.025840190   0.001884222  -0.007961497   0.000538864   0.000409475

    4    4.2  1.5  1.5  -0.000851781  -0.003644391  -0.045916074   0.020852065  -0.001645340  -0.010315418   0.000960982   0.001986619
                        -0.026825504   0.001817132  -0.187365479   0.080640381   0.015202007  -0.140599528   0.032253168   0.002228737

    5    5.2  1.5  1.5  -0.014975975  -0.088311238   0.022958386   0.015861660   0.498535718   0.035282799   0.000678572  -0.011827665
                         0.027952363   0.151907280  -0.023296779  -0.048043662   0.146495034   0.008010761  -0.001187677   0.029629218

    6    6.2  1.5  1.5   0.018984149   0.081135120   0.214496164   0.480003414   0.002794861   0.001554396   0.001279829  -0.029560037
                         0.012176634   0.054859638   0.083423301   0.096837135  -0.059246750   0.005737756   0.002002221  -0.011740632

    7    7.2  1.5  1.5   0.000004895  -0.000000804   0.000004571  -0.000001934   0.000000536  -0.000013831   0.661401559  -0.008630151
                         0.000000009   0.000000005   0.000000011   0.000000011  -0.000000012   0.000000019   0.000000008  -0.000000011

    8    8.2  1.5  1.5  -0.023913610  -0.118783513  -0.055743463  -0.116826082  -0.058502044  -0.004909607  -0.003792213   0.092078844
                        -0.033558354  -0.048882142   0.001738362   0.022367013   0.309288739   0.026668062   0.037930609   0.053040904

    9    9.2  1.5  1.5   0.010043026   0.021718022   0.025818927   0.015769992  -0.143417996  -0.002422141  -0.002302278   0.044512306
                         0.179874863  -0.110235467  -0.064568901  -0.203831790   0.022987632  -0.074636797  -0.330101307  -0.060031221

   10   10.2  1.5  1.5   0.002071992   0.036121751   0.028811514   0.031391594  -0.125820805  -0.003754372  -0.001721203   0.031125276
                        -0.222554381  -0.029197117  -0.106369258  -0.169370405  -0.022695915   0.078238157   0.357959127  -0.071085843

   11    1.2  1.5  0.5   0.000000057   0.000000292  -0.000000067  -0.000000153   0.000000120   0.000000010  -0.000379092   0.009077690
                         0.000000032   0.000000155  -0.000000053  -0.000000042  -0.000000332  -0.000000033  -0.000235965   0.004270471

   12    2.2  1.5  0.5  -0.070695219  -0.389769652  -0.116785473  -0.261088137  -0.000097756  -0.001611744   0.001396407   0.044413516
                        -0.037242160  -0.202370405  -0.047598696  -0.049905877   0.083594220  -0.002314125   0.000682984   0.030262355

   13    3.2  1.5  0.5   0.049047768   0.278279999  -0.016684096  -0.037765800   0.067230144   0.004664287   0.000528881  -0.062948463
                         0.024870151   0.145380262  -0.020208163  -0.023616427  -0.224106092  -0.016897931   0.000447803  -0.035665501

   14    4.2  1.5  0.5   0.017848015   0.099573277  -0.046056770  -0.026142589   0.462720211   0.011258776   0.003114447  -0.044758525
                        -0.029309561  -0.199678723   0.141491942   0.299452631   0.096936789   0.007521540   0.001260036   0.071348022

   15    5.2  1.5  0.5   0.000750488  -0.000636000  -0.069093513   0.066081303   0.001692892  -0.029354998   0.005031058  -0.000140020
                        -0.132753708   0.022357123  -0.272388471   0.124582068   0.016977437  -0.164917733  -0.083962989   0.001235648

   16    6.2  1.5  0.5  -0.056381159   0.014281168   0.249015446  -0.113483129  -0.001917056   0.238071969  -0.083903549  -0.000745806
                        -0.006991381  -0.007999429  -0.063724691   0.077666687   0.003682586  -0.023774318  -0.004985480   0.002991956

   17    7.2  1.5  0.5  -0.000001665  -0.000008653   0.000001908   0.000004408  -0.000003506  -0.000000290  -0.009476233   0.226916650
                        -0.000000917  -0.000004622   0.000001574   0.000001207   0.000009748   0.000000970  -0.005898449   0.106749739

   18    8.2  1.5  0.5  -0.226532684   0.041032785   0.106628812  -0.057093760  -0.033380254   0.198678203  -0.155331595   0.008632107
                         0.029109794  -0.008602207  -0.002377904   0.043465295  -0.009097203  -0.005779793   0.031284029   0.002065721

   19    9.2  1.5  0.5  -0.033007542  -0.007451731   0.036286777   0.066039382   0.146159054   0.033696200  -0.022690970   0.017084329
                        -0.190146038   0.056853841  -0.204103133  -0.117913680   0.061233201  -0.005478863  -0.292754875  -0.040775351

   20   10.2  1.5  0.5  -0.003376015   0.014480492  -0.067148544  -0.029046007  -0.156979608  -0.023385193  -0.001426134  -0.021113111
                        -0.187593732   0.006712937  -0.030117506   0.244778146  -0.059204260  -0.010788070  -0.281035172   0.038360061

   21    1.2  1.5 -0.5   0.000000332  -0.000000055   0.000000176  -0.000000081  -0.000000032   0.000000339   0.010160628   0.000566611
                        -0.000000012   0.000000001  -0.000000027   0.000000053  -0.000000001  -0.000000024  -0.000315262  -0.000236027

   22    2.2  1.5 -0.5  -0.441363409   0.077510477   0.258009291  -0.111371461   0.001530859  -0.095177572   0.053232660  -0.001893625
                         0.012317113  -0.002221868  -0.044005117   0.041284742  -0.001745406  -0.013166676   0.000549577   0.000416817

   23    3.2  1.5 -0.5   0.315587301  -0.055107896   0.052448570  -0.028692022  -0.016507029   0.228129931  -0.072735185  -0.000915659
                        -0.008187679   0.000879766  -0.015752311   0.021691467   0.000427413  -0.003501835   0.000853515   0.000623285

   24    4.2  1.5 -0.5   0.004143637  -0.004136562   0.027829615  -0.038518184   0.002642792   0.013401825  -0.000042424  -0.003109800
                         0.216975312  -0.037108692   0.273072744  -0.128300492   0.017465167  -0.494855049  -0.084064487  -0.000420807

   25    5.2  1.5 -0.5   0.007919297   0.058570477  -0.068652836  -0.081922304  -0.167099875  -0.020267586   0.000278596   0.040389598
                        -0.018674995  -0.119127590   0.114367888   0.258138605  -0.088225248  -0.006454061  -0.001071438  -0.073952366

   26    6.2  1.5 -0.5   0.010943470   0.055261667   0.102701869   0.231125251  -0.099314954  -0.005342296   0.000907304   0.073885773
                         0.014252420   0.016858748   0.079032385   0.077840746   0.236431225   0.003436649  -0.003184136   0.040404144

   27    7.2  1.5 -0.5  -0.000009848   0.000001623  -0.000005097   0.000002344   0.000000960  -0.000009956   0.253987054   0.014163696
                         0.000000328  -0.000000014   0.000000792  -0.000001573   0.000000014   0.000000705  -0.007880676  -0.005899990

   28    8.2  1.5 -0.5   0.033703400   0.192678772   0.049769544   0.094342016  -0.060368800  -0.001132340   0.007608680   0.109022173
                         0.025861251   0.124249954   0.046623798   0.009717888   0.195803772   0.033929463  -0.001412136   0.126902309

   29    9.2  1.5 -0.5   0.018782167   0.113595137  -0.058034840   0.027556626  -0.022326280  -0.016009363   0.000925947   0.162602621
                        -0.053751465  -0.155781509  -0.132025197   0.210353719   0.020592106  -0.143703730   0.044265664  -0.239381815

   30   10.2  1.5 -0.5   0.014102161   0.085256172   0.016990324  -0.069399496  -0.012749416   0.006242353  -0.002673311   0.137803697
                         0.001296913  -0.169245821   0.253409664   0.020234183  -0.030306248   0.153233198  -0.044326480  -0.243602525

   31    1.2  1.5 -1.5  -0.000000022  -0.000000150   0.000000089   0.000000181   0.000000114   0.000000008   0.000281822   0.022461070
                        -0.000000012  -0.000000074   0.000000005  -0.000000006  -0.000000443  -0.000000014   0.000101057   0.014073756

   32    2.2  1.5 -1.5   0.044551780   0.256272567   0.045089926   0.103444222  -0.072131761  -0.003509947  -0.000524181   0.062949716
                         0.023866017   0.131159689   0.033139369   0.038808536   0.230205937   0.018540059  -0.000459336   0.035656457

   33    3.2  1.5 -1.5   0.074611906   0.439939835  -0.072809596  -0.159113742  -0.007581192   0.000178281   0.001406430   0.044413313
                         0.038443014   0.226791779  -0.027430305  -0.026286168   0.093072846   0.000366342   0.000679811   0.030274873

   34    4.2  1.5 -1.5   0.003386507  -0.013261973   0.023083404   0.055719674   0.143115178   0.019161571  -0.002072527   0.013500959
                         0.002003566   0.023039197  -0.074216254  -0.176243617   0.056702345   0.001832324   0.001104950  -0.028809216

   35    5.2  1.5 -1.5   0.010721927  -0.000735178   0.000950508  -0.025260931   0.001364925   0.011083085  -0.000933455   0.000667513
                         0.179377001  -0.031670857   0.079111645  -0.044181665  -0.035428039   0.513121091   0.032313618   0.001788656

   36    6.2  1.5 -1.5  -0.100662586   0.018191032   0.479255373  -0.214237700   0.002496462  -0.090624124   0.032241875   0.002392146
                         0.014989439  -0.001933315  -0.080199743   0.073763769  -0.000715738   0.005917000   0.000979001  -0.001828609

   37    7.2  1.5 -1.5   0.000000652   0.000004408  -0.000002607  -0.000005236  -0.000003322  -0.000000211   0.007044750   0.561463544
                         0.000000381   0.000002145  -0.000000204   0.000000159   0.000012988   0.000000407   0.002526139   0.351804292

   38    8.2  1.5 -1.5   0.131688152  -0.034871498  -0.097981443   0.042765498  -0.028187833   0.321292878  -0.107037807   0.015914045
                         0.009417977   0.019691115  -0.017193741   0.004595832  -0.002902995   0.021493951   0.012300440  -0.031594822

   39    9.2  1.5 -1.5   0.028984187   0.087334983   0.014895444  -0.022620513   0.067532514   0.052002945  -0.016737130  -0.179517188
                        -0.110695713  -0.160174438   0.198360858  -0.055516465   0.021624226  -0.145300784  -0.074238316   0.278384787

   40   10.2  1.5 -1.5  -0.019336586  -0.095659661   0.028752756  -0.025332754  -0.074241506   0.004664269  -0.000824752   0.187205473
                        -0.044542624   0.200411163   0.162258615  -0.106426019  -0.010910632  -0.139786570  -0.078107221  -0.305662286

   41    1.2  0.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000001  -0.000000000  -0.000000001
                        -0.000000001   0.000000000   0.000000001   0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000

   42    2.2  0.5  0.5  -0.000000001  -0.000000000   0.000000000  -0.000000001  -0.000000002  -0.000000003  -0.000000001  -0.000000003
                        -0.000000003   0.000000002   0.000000003   0.000000003  -0.000000004   0.000000000   0.000000001  -0.000000001

   43    3.2  0.5  0.5  -0.000000001   0.000000001   0.000000001   0.000000001  -0.000000001   0.000000001   0.000000001   0.000000000
                         0.000000001  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000001  -0.000000000   0.000000001

   44    4.2  0.5  0.5  -0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000002   0.000000000  -0.000000002
                        -0.000000001   0.000000001   0.000000002   0.000000001  -0.000000002   0.000000001   0.000000001  -0.000000000

   45    5.2  0.5  0.5  -0.000000001  -0.000000000   0.000000001  -0.000000000  -0.000000002  -0.000000001  -0.000000000  -0.000000001
                        -0.000000001   0.000000001   0.000000001   0.000000001  -0.000000001   0.000000000   0.000000000   0.000000000

   46    6.2  0.5  0.5  -0.000000005   0.000000000   0.000000003  -0.000000001  -0.000000004  -0.000000002  -0.000000001  -0.000000004
                        -0.000000003   0.000000002   0.000000004   0.000000004  -0.000000003   0.000000001   0.000000002   0.000000002

   47    7.2  0.5  0.5   0.000000001  -0.000000001  -0.000000001  -0.000000001   0.000000001   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000001  -0.000000000  -0.000000001

   48    8.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   49    1.2  0.5 -0.5  -0.000000001  -0.000000001  -0.000000000  -0.000000001  -0.000000001  -0.000000001  -0.000000000  -0.000000002
                        -0.000000002   0.000000001   0.000000002   0.000000001  -0.000000002   0.000000000   0.000000001  -0.000000001

   50    2.2  0.5 -0.5  -0.000000004   0.000000002   0.000000003   0.000000000  -0.000000004  -0.000000003   0.000000001  -0.000000004
                        -0.000000003   0.000000002   0.000000003   0.000000003  -0.000000002   0.000000003   0.000000002   0.000000002

   51    3.2  0.5 -0.5   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000001   0.000000002   0.000000000   0.000000002
                         0.000000002  -0.000000002  -0.000000002  -0.000000001   0.000000001  -0.000000000  -0.000000001  -0.000000000

   52    4.2  0.5 -0.5  -0.000000000  -0.000000001  -0.000000001  -0.000000001   0.000000000  -0.000000002  -0.000000000  -0.000000002
                        -0.000000002   0.000000001   0.000000002   0.000000001  -0.000000002  -0.000000000   0.000000001  -0.000000001

   53    5.2  0.5 -0.5  -0.000000001  -0.000000002  -0.000000001  -0.000000003  -0.000000000  -0.000000004  -0.000000001  -0.000000005
                        -0.000000004   0.000000002   0.000000005   0.000000002  -0.000000006  -0.000000000   0.000000002  -0.000000002

   54    6.2  0.5 -0.5   0.000000005  -0.000000003  -0.000000005  -0.000000002   0.000000004   0.000000001  -0.000000000   0.000000001
                        -0.000000001  -0.000000002  -0.000000000  -0.000000003  -0.000000002  -0.000000003  -0.000000002  -0.000000003

   55    7.2  0.5 -0.5  -0.000000002  -0.000000002   0.000000000  -0.000000002  -0.000000002  -0.000000004  -0.000000001  -0.000000006
                        -0.000000005   0.000000002   0.000000005   0.000000003  -0.000000006   0.000000001   0.000000002  -0.000000001

   56    8.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000001
                        -0.000000001   0.000000000   0.000000001   0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000000


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  1.5  1.5   0.000353373  -0.010167723   0.000000579  -0.000000169   0.000000078  -0.000000387  -0.000000285  -0.000000235
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.001372370   0.053145196   0.074665505  -0.021187578   0.066408771  -0.281436598   0.454691912   0.337927421
                         0.002205459  -0.002100888  -0.000929708  -0.003490831  -0.001156472  -0.002859340   0.050176808   0.081830331

    3    3.2  1.5  1.5   0.000446102  -0.072708684  -0.355686294   0.092211240  -0.092052156   0.444275347   0.061571516   0.048477824
                        -0.001424601   0.001339176   0.015227654  -0.011785461  -0.017819978   0.018831382   0.019721399   0.005464164

    4    4.2  1.5  1.5  -0.000769954   0.002370224  -0.010801463   0.007440177   0.017435660  -0.022579223   0.025641479   0.071596943
                         0.003819850   0.083970519  -0.074279845   0.022664043  -0.122628583   0.569296176  -0.320315866  -0.234050829

    5    5.2  1.5  1.5  -0.072973744  -0.000356877   0.008418006   0.003512801   0.052713389  -0.008532374  -0.006189733   0.041321186
                         0.042095438  -0.002632709   0.002785613   0.024762743  -0.019825700  -0.001919516   0.053795059  -0.009156349

    6    6.2  1.5  1.5  -0.042163789   0.002884542  -0.075824181  -0.277042345  -0.120219561  -0.033167935   0.105282638  -0.102685562
                        -0.072881270   0.003073710  -0.076368435  -0.175367689  -0.222836245  -0.016919206  -0.021220587  -0.027082994

    7    7.2  1.5  1.5   0.008833316  -0.254164526   0.000014545  -0.000004238   0.000002046  -0.000010111  -0.000006399  -0.000005323
                        -0.000000018  -0.000000002  -0.000000007  -0.000000012  -0.000000004  -0.000000016   0.000000065   0.000000114

    8    8.2  1.5  1.5   0.103361212  -0.009402520   0.000002662   0.000011151   0.000005323   0.000001474   0.000002996  -0.000003987
                         0.262252263  -0.015802476   0.000003403   0.000007173   0.000011961   0.000003890   0.000000155  -0.000000214

    9    9.2  1.5  1.5   0.197591416  -0.000635397   0.000000062  -0.000000474   0.000007291   0.000002808   0.000001804   0.000000165
                        -0.065153590   0.134737878  -0.000003157   0.000004240  -0.000000627  -0.000006977  -0.000002605  -0.000001211

   10   10.2  1.5  1.5   0.173226028   0.000484319  -0.000000909  -0.000001370   0.000007545   0.000000541  -0.000001291  -0.000002126
                        -0.082172173  -0.130034555   0.000004327   0.000000221  -0.000004954   0.000005985   0.000001708   0.000001157

   11    1.2  1.5  0.5   0.011843128  -0.000883129   0.000000062   0.000000262   0.000000305   0.000000091   0.000000204  -0.000000220
                         0.023702804   0.000064732   0.000000057   0.000000156   0.000000608   0.000000166  -0.000000015  -0.000000044

   12    2.2  1.5  0.5  -0.029382282   0.001134034   0.010133709   0.049907194   0.058993041   0.019394960  -0.079605090   0.166981065
                        -0.066102741  -0.001567145   0.007691669   0.026560767   0.131443963   0.043688890   0.011683343  -0.031545885

   13    3.2  1.5  0.5  -0.025877102   0.002612063   0.125868471   0.487063544   0.124747653   0.034424759  -0.038922899   0.067345233
                        -0.047076646   0.000766570   0.118914239   0.322565392   0.219865459   0.061691187   0.012738297  -0.011613548

   14    4.2  1.5  0.5   0.030084515   0.000406778   0.014355033   0.003782185  -0.217836309  -0.031476190  -0.022699894  -0.031836918
                        -0.010680573  -0.000604107   0.006835509   0.006787349   0.118087387   0.028318910  -0.185884929   0.202222458

   15    5.2  1.5  0.5   0.000124335  -0.001931276   0.013277139  -0.010423361   0.021685263  -0.037853018  -0.061380490  -0.057192148
                        -0.001142052   0.032257554   0.049542653  -0.022907864  -0.085548708   0.378189421   0.343192129   0.260185238

   16    6.2  1.5  0.5   0.000116182   0.032318026  -0.567095526   0.156456714  -0.003983401   0.060179088   0.245483171   0.179950220
                        -0.000498003   0.001910333   0.007189982  -0.025768920  -0.009194015   0.018499469   0.053979064   0.075572351

   17    7.2  1.5  0.5   0.296044886  -0.022075739   0.000001495   0.000006323   0.000007569   0.000002288   0.000004919  -0.000005212
                         0.592503408   0.001618113   0.000001368   0.000003759   0.000015103   0.000004121  -0.000000349  -0.000001156

   18    8.2  1.5  0.5  -0.013317884   0.431241722  -0.000010396   0.000002219  -0.000005932   0.000018739   0.000006174   0.000004934
                         0.016846415   0.008802534   0.000001853  -0.000000028   0.000000495  -0.000000314  -0.000000196  -0.000000503

   19    9.2  1.5  0.5   0.106689195   0.045531144   0.000000020   0.000003403   0.000013129   0.000004072  -0.000000664  -0.000002111
                        -0.053664218  -0.154071807  -0.000009488  -0.000002334  -0.000009474   0.000012094   0.000009114   0.000007448

   20   10.2  1.5  0.5  -0.099055175  -0.007406619  -0.000001533  -0.000003112  -0.000013068  -0.000003829  -0.000001880  -0.000001301
                         0.047988408  -0.152807615  -0.000006413   0.000006560   0.000004399   0.000014754   0.000009675   0.000006459

   21    1.2  1.5 -0.5   0.000285115   0.026431229   0.000000315  -0.000000098  -0.000000171   0.000000680  -0.000000256  -0.000000188
                         0.000829357  -0.000783556   0.000000024   0.000000013  -0.000000021   0.000000055  -0.000000017  -0.000000069

   22    2.2  1.5 -0.5   0.000454523  -0.072701915   0.072302264  -0.021298481  -0.038246530   0.130918679   0.076690952   0.070897866
                        -0.001432474   0.001346404   0.006172637   0.000927757  -0.003248147   0.003207863  -0.026038525  -0.034500781

   23    3.2  1.5 -0.5  -0.001373806  -0.053148438   0.588908890  -0.172633776  -0.068174143   0.240088565   0.050701068   0.035820317
                        -0.002215803   0.002090848   0.013260726   0.025841483  -0.011819052   0.038548778   0.022593020   0.016786992

   24    4.2  1.5 -0.5   0.000566434   0.000014801   0.009641065  -0.017674871  -0.016918932   0.033068952   0.070364033   0.095986157
                         0.000058768   0.032370164  -0.004145817  -0.004034487   0.047828839  -0.241470772  -0.259380084  -0.184302316

   25    5.2  1.5 -0.5  -0.029365181  -0.001697377  -0.018081565  -0.030353030  -0.355201450  -0.075552053  -0.036356914   0.024725247
                         0.012457278   0.000627833   0.005328280   0.016131617   0.181862942   0.048958508  -0.272191437   0.394547573

   26    6.2  1.5 -0.5  -0.012452797  -0.000558295   0.116285058   0.466907922  -0.042529609  -0.007842507   0.186131827  -0.219819990
                        -0.029402053  -0.000369812   0.109577629   0.329021760  -0.048691409   0.004254455  -0.032824586  -0.003772116

   27    7.2  1.5 -0.5   0.007127064   0.660706364   0.000007628  -0.000002390  -0.000004233   0.000016874  -0.000006212  -0.000004546
                         0.020731601  -0.019586700   0.000000600   0.000000305  -0.000000520   0.000001338  -0.000000462  -0.000001772

   28    8.2  1.5 -0.5  -0.196363877   0.009273733   0.000001982   0.000007460  -0.000006640  -0.000002050   0.000004182  -0.000006213
                        -0.380196271  -0.021197734   0.000001456   0.000007380  -0.000017529  -0.000005721   0.000000957  -0.000000810

   29    9.2  1.5 -0.5   0.112495300   0.000797971   0.000001339   0.000005336  -0.000012852  -0.000003485  -0.000000623  -0.000001130
                        -0.125445171   0.118964572   0.000004406  -0.000007901   0.000000642   0.000015256  -0.000007305   0.000008706

   30   10.2  1.5 -0.5   0.134939731  -0.006945945   0.000001271   0.000004918  -0.000012674  -0.000000487   0.000000068  -0.000000010
                        -0.076272456  -0.109733708  -0.000007370  -0.000004496   0.000009304  -0.000013768  -0.000006035   0.000008998

   31    1.2  1.5 -1.5  -0.003360267  -0.000146077   0.000000127   0.000000498  -0.000000159  -0.000000047   0.000000220  -0.000000346
                        -0.009457239  -0.000543576   0.000000106   0.000000346  -0.000000381  -0.000000072  -0.000000006   0.000000017

   32    2.2  1.5 -1.5   0.025866774  -0.002602785   0.014153148   0.056177559  -0.107725786  -0.029482505  -0.364857288   0.479856661
                         0.047078165  -0.000769958   0.006956820   0.033488327  -0.237733279  -0.060932634   0.033083648   0.015107131

   33    3.2  1.5 -1.5  -0.029391730   0.001130538  -0.071424605  -0.293410136   0.187626836   0.051596263  -0.037022848   0.059060706
                        -0.066105080  -0.001556471  -0.062798821  -0.214887885   0.402095035   0.077835255  -0.002625454  -0.004607982

   34    4.2  1.5 -1.5   0.075256477  -0.003237126  -0.018526946  -0.045208053   0.504856105   0.108518411  -0.030265908  -0.028691615
                        -0.037731805   0.002542657   0.012713244   0.059950323  -0.236851407  -0.067237399  -0.263432305   0.319488236

   35    5.2  1.5 -1.5  -0.002539684  -0.002540665  -0.014988393   0.007087832  -0.005135101   0.003639260   0.053449963   0.067227448
                         0.000686636   0.084034845   0.028351138  -0.003939111   0.003878233  -0.062223986  -0.105568199  -0.063420978

   36    6.2  1.5 -1.5   0.003834754   0.083975736   0.326125766  -0.103026319  -0.035142798   0.246905693   0.159822447   0.108681605
                         0.001134438   0.002647466   0.016493841   0.018146140  -0.026660514   0.034277841   0.049345803   0.080073364

   37    7.2  1.5 -1.5  -0.083997258  -0.003651496   0.000003174   0.000012487  -0.000004163  -0.000001236   0.000004895  -0.000007841
                        -0.236404403  -0.013587896   0.000002639   0.000008684  -0.000009890  -0.000001891  -0.000000084   0.000000433

   38    8.2  1.5 -1.5  -0.018358766  -0.279728429  -0.000013279   0.000004475   0.000004007  -0.000012763   0.000003620   0.000003020
                        -0.003331232   0.032965344  -0.000000571  -0.000001304  -0.000000082  -0.000000559  -0.000000877  -0.000000044

   39    9.2  1.5 -1.5   0.124940755  -0.033117805  -0.000002171  -0.000002034  -0.000005261  -0.000002100  -0.000000307  -0.000000770
                        -0.045514245  -0.204217456   0.000003176   0.000003013   0.000004878  -0.000007561  -0.000000356   0.000001095

   40   10.2  1.5 -1.5  -0.120885948  -0.012704073   0.000001116   0.000002165   0.000005387   0.000001451  -0.000000321  -0.000000291
                         0.043033984  -0.191376723   0.000000884  -0.000004541  -0.000001464  -0.000008508   0.000001998  -0.000000283

   41    1.2  0.5  0.5  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   42    2.2  0.5  0.5  -0.000000002   0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000001  -0.000000002   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   43    3.2  0.5  0.5   0.000000001  -0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   44    4.2  0.5  0.5  -0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000001  -0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   45    5.2  0.5  0.5  -0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000001  -0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   46    6.2  0.5  0.5  -0.000000003  -0.000000002  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000001  -0.000000003   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   47    7.2  0.5  0.5  -0.000000000   0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   48    8.2  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   49    1.2  0.5 -0.5  -0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000001  -0.000000002   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   50    2.2  0.5 -0.5  -0.000000000  -0.000000003  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000002  -0.000000003   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   51    3.2  0.5 -0.5   0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000001   0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   52    4.2  0.5 -0.5  -0.000000001   0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000001  -0.000000002   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   53    5.2  0.5 -0.5  -0.000000002   0.000000002  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000002  -0.000000004   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   54    6.2  0.5 -0.5   0.000000001   0.000000003   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000003   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   55    7.2  0.5 -0.5  -0.000000003   0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000002  -0.000000005   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   56    8.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000001  -0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  1.5  1.5  -0.000000552   0.000000099  -0.000000163  -0.000000007  -0.000000006  -0.000000008  -0.000000005  -0.000000262
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.146749465  -0.062582698   0.152468303   0.003445233  -0.038056877  -0.050117852   0.001249205   0.149740577
                        -0.044291173   0.002403605  -0.001437079   0.001812331   0.005822965   0.049157387  -0.001507442  -0.000933068

    3    3.2  1.5  1.5   0.062802709  -0.000993638   0.287969199   0.011598449   0.035140500   0.056307760   0.001301163   0.073004123
                        -0.010642419   0.015489018  -0.005987400   0.002221882  -0.008018571  -0.053039835  -0.004143954   0.003030153

    4    4.2  1.5  1.5  -0.038873084  -0.013466407  -0.002160796  -0.000643436  -0.020214862  -0.066054331  -0.002297108   0.002457953
                         0.021601050   0.050192378  -0.027758094  -0.001909692  -0.048177368  -0.076946224  -0.001080293   0.086340237

    5    5.2  1.5  1.5   0.059503638   0.451287960  -0.002776634   0.107767047  -0.018765270   0.009871006  -0.037320214   0.005284466
                         0.018523294   0.355857129   0.006800446   0.011492498  -0.027894312  -0.006954443   0.292619722  -0.014635847

    6    6.2  1.5  1.5   0.014020079   0.244831456   0.004219716   0.002856450   0.267926108  -0.099162697   0.033019654  -0.000440138
                        -0.033196904  -0.272965468  -0.002421579  -0.036248635  -0.069984353   0.103900107   0.021116782   0.002509286

    7    7.2  1.5  1.5  -0.000013424   0.000002349  -0.000003983  -0.000000181  -0.000000153  -0.000000176  -0.000000108  -0.000006389
                        -0.000000061  -0.000000013  -0.000000016   0.000000009   0.000000005  -0.000000008   0.000000010   0.000000009

    8    8.2  1.5  1.5   0.000000190  -0.000002220   0.016596588  -0.001061675   0.172112220  -0.067736244   0.553597360  -0.027654695
                        -0.000000191   0.000005516   0.043504069  -0.221619463  -0.091813101   0.104866383   0.037638137   0.010238189

    9    9.2  1.5  1.5  -0.000002042  -0.000006405  -0.003610257   0.121129029   0.101647140  -0.164477182   0.034863663   0.002443290
                         0.000008309  -0.000005437  -0.330645794  -0.037850517   0.309757603  -0.135362927   0.240021302  -0.161443993

   10   10.2  1.5  1.5   0.000000725  -0.000006557   0.007046090   0.107543853   0.083069473  -0.108158481  -0.021751097   0.001105223
                        -0.000009190  -0.000003628   0.373747279   0.014610700   0.319608201  -0.096024392   0.224271002   0.149722348

   11    1.2  1.5  0.5   0.000000013   0.000000179   0.000000011  -0.000000005   0.000000037  -0.000000019   0.000000124   0.000000000
                        -0.000000006  -0.000000171   0.000000011  -0.000000265  -0.000000013   0.000000036   0.000000017  -0.000000003

   12    2.2  1.5  0.5   0.011932926   0.309573387  -0.007155840   0.013491136  -0.157337087   0.056073989  -0.043398681   0.004229830
                        -0.060567180  -0.437451655  -0.005857293   0.243017252   0.038976405  -0.069657862  -0.016004175   0.000005993

   13    3.2  1.5  0.5   0.000146673   0.016458391   0.005513353  -0.003558175  -0.017973140   0.002101697   0.130298710  -0.008285337
                        -0.006092412  -0.020692396   0.005425242  -0.184714774   0.002139604   0.000698557   0.022823602  -0.002013536

   14    4.2  1.5  0.5  -0.032846337  -0.301442028   0.007527698  -0.137515159   0.038812150  -0.063588749  -0.018994445   0.011145070
                        -0.014242620  -0.231020149   0.004467143   0.019951185   0.152253689  -0.061751271   0.272178606  -0.010593724

   15    5.2  1.5  0.5   0.024652033  -0.007586889  -0.003053667  -0.000426434  -0.018166530  -0.110097535  -0.002180133   0.012728296
                         0.324182317  -0.057886558  -0.093972328  -0.006660937  -0.073997600  -0.102261377   0.000745033   0.100482015

   16    6.2  1.5  0.5  -0.057603758  -0.026123676  -0.013893039  -0.002716517   0.072911582   0.092507229  -0.001688475  -0.147550556
                        -0.025795209   0.007985702  -0.007428138  -0.000557669  -0.010984231  -0.107013843   0.010448650   0.008763011

   17    7.2  1.5  0.5   0.000000336   0.000004870   0.000000278  -0.000000115   0.000000983  -0.000000477   0.000003031  -0.000000001
                        -0.000000247  -0.000004885   0.000000273  -0.000006513  -0.000000336   0.000000900   0.000000408  -0.000000092

   18    8.2  1.5  0.5   0.000006448  -0.000000980   0.364988521   0.017055724  -0.116557965  -0.141807987  -0.001658643   0.388566253
                        -0.000001496   0.000000577  -0.045966272   0.004161209  -0.033578165   0.132496616   0.029700089  -0.003833562

   19    9.2  1.5  0.5   0.000002131  -0.000001264   0.057881440  -0.075862631   0.078400490   0.000293947   0.039505859   0.035592386
                         0.000000558  -0.000001403   0.356785180   0.003841150   0.412103125   0.056129992  -0.270445661   0.007548434

   20   10.2  1.5  0.5   0.000001227   0.000000289   0.003450321   0.077514408  -0.059086470   0.252831411  -0.029969454  -0.000482176
                         0.000000683  -0.000000381   0.344335874   0.030450058  -0.248367183   0.241764235   0.290578834  -0.022166707

   21    1.2  1.5 -0.5   0.000000194   0.000000018   0.000000263   0.000000010  -0.000000033  -0.000000035  -0.000000005  -0.000000125
                         0.000000027  -0.000000007  -0.000000011   0.000000007  -0.000000004   0.000000026   0.000000003  -0.000000008

   22    2.2  1.5 -0.5   0.556105570  -0.058122962  -0.247124516  -0.003100816   0.085473751   0.119606456   0.012767307   0.028557458
                         0.051549210  -0.018799368   0.003069684  -0.007236781  -0.010393106  -0.109102780  -0.001874762   0.002485601

   23    3.2  1.5 -0.5   0.032906265  -0.006860056   0.192288093   0.006003376   0.005670250   0.009298846  -0.008638120  -0.121095277
                        -0.009326588  -0.001240486  -0.004420811   0.004272836  -0.004304629  -0.013043392  -0.000004164   0.001240004

   24    4.2  1.5 -0.5  -0.081693272   0.025105273   0.002785158   0.005401535   0.005255817   0.110588974   0.013175837  -0.004443924
                         0.317520753  -0.007119786   0.120930892   0.010477303   0.081249043   0.120347160   0.018809253   0.279190731

   25    5.2  1.5 -0.5   0.033658424   0.195755137   0.003851857  -0.088612091   0.025894701  -0.050805918   0.024737456  -0.002354907
                         0.000257635   0.130815676  -0.001485165  -0.000771403   0.150236395  -0.051804926  -0.102434887   0.006824534

   26    6.2  1.5 -0.5   0.007146966   0.097011246  -0.000098154  -0.015468938   0.143316561  -0.042485620  -0.143216160   0.006672590
                         0.003518025  -0.085297367   0.004702296  -0.020754882  -0.019579816   0.055453861  -0.019807610   0.014795508

   27    7.2  1.5 -0.5   0.000005625   0.000000348   0.000006471   0.000000237  -0.000000834  -0.000000922  -0.000000139  -0.000003056
                         0.000000737  -0.000000210  -0.000000242   0.000000170  -0.000000120   0.000000684   0.000000079  -0.000000211

   28    8.2  1.5 -0.5  -0.000000010  -0.000002847  -0.002461237  -0.000444871  -0.199657883   0.018997290   0.364283562  -0.011734595
                         0.000000145   0.000003317  -0.022866359   0.385736584   0.045522848  -0.120557181   0.014761450   0.026245839

   29    9.2  1.5 -0.5  -0.000000417  -0.000001632  -0.007020189   0.365315176  -0.040978096   0.290047699   0.024582481  -0.009251393
                         0.000000550  -0.000001038   0.091152485   0.040527281  -0.022465943   0.287021677   0.025197984  -0.279452837

   30   10.2  1.5 -0.5   0.000000312  -0.000001237  -0.019249056   0.340191670  -0.074258981  -0.176079332  -0.025226126   0.008125139
                        -0.000001094  -0.000001724  -0.088896824  -0.027781214  -0.351063653  -0.179291330   0.024058867   0.284474471

   31    1.2  1.5 -1.5  -0.000000006  -0.000000272   0.000000003   0.000000023  -0.000000007  -0.000000022   0.000000249  -0.000000010
                         0.000000046   0.000000382  -0.000000010   0.000000173  -0.000000004   0.000000007   0.000000016   0.000000004

   32    2.2  1.5 -1.5  -0.008969905   0.004094192   0.001394027  -0.017085831   0.072579878  -0.018744712  -0.139467071   0.004728124
                        -0.028022944  -0.066464801   0.004838245  -0.159583866  -0.015152428   0.030784829  -0.006138345   0.003072518

   33    3.2  1.5 -1.5   0.000141081   0.022055767   0.003577178  -0.018588929  -0.072602417   0.030190870  -0.057623360  -0.001280349
                         0.003287345  -0.021683051   0.010109131  -0.291359310   0.018833138  -0.020752007   0.009962179   0.001575125

   34    4.2  1.5 -1.5   0.026570439  -0.041541188   0.000262823   0.023400396  -0.028718732   0.028719863  -0.011124566   0.000460049
                        -0.009390164  -0.069645254   0.000309607   0.004479039  -0.099427362   0.039751465   0.086251172  -0.003655255

   35    5.2  1.5 -1.5  -0.061482290   0.028154785   0.006445102  -0.005484141  -0.002234106   0.009222749  -0.003197543  -0.003037000
                         0.555533907  -0.045825934   0.124283009   0.003821777   0.012945607   0.025893974  -0.014381498  -0.289223561

   36    6.2  1.5 -1.5  -0.336715804   0.019659707  -0.040668350   0.007330670   0.140340584   0.205568401   0.013282122   0.030273525
                        -0.035408624   0.016440662   0.005356912  -0.005698713  -0.024814795  -0.186090676  -0.002723672  -0.011426883

   37    7.2  1.5 -1.5  -0.000000150  -0.000006699   0.000000055   0.000000580  -0.000000179  -0.000000513   0.000006097  -0.000000229
                         0.000001082   0.000009339  -0.000000293   0.000004257  -0.000000027   0.000000159   0.000000342   0.000000097

   38    8.2  1.5 -1.5   0.000006532  -0.000000231  -0.254608353  -0.041496886   0.107706570   0.181390191   0.040253102   0.537921324
                         0.000001712   0.000000344  -0.011207721  -0.010516009   0.015816019  -0.100753996   0.010358281   0.030050303

   39    9.2  1.5 -1.5   0.000001007  -0.000007841  -0.042873468   0.336966367  -0.018970907  -0.209522519  -0.009063713   0.069163009
                        -0.000008363  -0.000004836   0.137193192  -0.034278184  -0.197840300  -0.251722976  -0.158758150  -0.223119189

   40   10.2  1.5 -1.5   0.000001975   0.000007617   0.012635951  -0.382271521  -0.013992706  -0.218702375  -0.002373927   0.009393223
                        -0.000007528   0.000006282   0.121819207   0.021852182  -0.141038038  -0.256511149   0.113009138  -0.215600169

   41    1.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000002
                         0.000000000   0.000000000  -0.000000002  -0.000000000   0.000000003  -0.000000000  -0.000000000   0.000000000

   42    2.2  0.5  0.5   0.000000000  -0.000000000  -0.000000002   0.000000003   0.000000002   0.000000000   0.000000005   0.000000003
                         0.000000000   0.000000000  -0.000000006  -0.000000001   0.000000008  -0.000000000  -0.000000004  -0.000000001

   43    3.2  0.5  0.5  -0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000002   0.000000000  -0.000000002  -0.000000001
                        -0.000000000   0.000000000   0.000000002  -0.000000001  -0.000000001   0.000000000  -0.000000001  -0.000000001

   44    4.2  0.5  0.5   0.000000000  -0.000000000  -0.000000001   0.000000001   0.000000002   0.000000000   0.000000002   0.000000003
                        -0.000000000   0.000000000  -0.000000002  -0.000000001   0.000000003   0.000000000  -0.000000003  -0.000000001

   45    5.2  0.5  0.5   0.000000000   0.000000000  -0.000000002   0.000000002   0.000000002   0.000000000   0.000000002   0.000000001
                        -0.000000000   0.000000000  -0.000000001  -0.000000001   0.000000002  -0.000000000  -0.000000003  -0.000000001

   46    6.2  0.5  0.5   0.000000000  -0.000000000  -0.000000007   0.000000002   0.000000007   0.000000002   0.000000003   0.000000002
                        -0.000000000   0.000000000  -0.000000006  -0.000000001   0.000000009  -0.000000002  -0.000000007  -0.000000002

   47    7.2  0.5  0.5   0.000000000  -0.000000000   0.000000001   0.000000001  -0.000000002   0.000000000   0.000000001  -0.000000001
                         0.000000000  -0.000000000   0.000000001   0.000000002  -0.000000000  -0.000000000   0.000000001   0.000000001

   48    8.2  0.5  0.5   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000001   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000000

   49    1.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000001   0.000000001   0.000000001   0.000000001   0.000000003   0.000000002
                        -0.000000000   0.000000000  -0.000000003   0.000000000   0.000000004  -0.000000000  -0.000000002  -0.000000001

   50    2.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000007   0.000000001   0.000000008   0.000000002   0.000000001   0.000000003
                        -0.000000000   0.000000000  -0.000000004  -0.000000003   0.000000005  -0.000000001  -0.000000007  -0.000000006

   51    3.2  0.5 -0.5  -0.000000000   0.000000000   0.000000002  -0.000000002  -0.000000001  -0.000000001  -0.000000002  -0.000000002
                         0.000000000  -0.000000000   0.000000003   0.000000001  -0.000000003  -0.000000000   0.000000002   0.000000001

   52    4.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000001   0.000000001  -0.000000000   0.000000001   0.000000003   0.000000003
                         0.000000000   0.000000000  -0.000000004   0.000000000   0.000000005   0.000000001  -0.000000001  -0.000000000

   53    5.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000002   0.000000004  -0.000000000   0.000000002   0.000000009   0.000000005
                        -0.000000000   0.000000000  -0.000000007   0.000000002   0.000000010   0.000000001  -0.000000003  -0.000000001

   54    6.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000008   0.000000000  -0.000000010  -0.000000002   0.000000005  -0.000000001
                         0.000000000  -0.000000000  -0.000000001   0.000000005   0.000000001   0.000000003   0.000000005   0.000000005

   55    7.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000003   0.000000004   0.000000003   0.000000002   0.000000008   0.000000005
                        -0.000000000   0.000000000  -0.000000008   0.000000001   0.000000011   0.000000000  -0.000000005  -0.000000003

   56    8.2  0.5 -0.5   0.000000000   0.000000000  -0.000000001   0.000000001   0.000000000   0.000000000   0.000000002   0.000000001
                        -0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000002   0.000000000  -0.000000001  -0.000000001


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  1.5  1.5   0.000000080   0.000000009   0.000000003   0.000000001  -0.000000001  -0.000000001  -0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.000000011  -0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000007   0.000000001  -0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    3    3.2  1.5  1.5   0.000000011   0.000000001  -0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000001   0.000000001  -0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    4    4.2  1.5  1.5  -0.000000005  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000004  -0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    5    5.2  1.5  1.5   0.000000006   0.000000000   0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000001   0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    6    6.2  1.5  1.5  -0.000000004  -0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000004   0.000000001   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    7    7.2  1.5  1.5  -0.000000004  -0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    8    8.2  1.5  1.5  -0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000005   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    9    9.2  1.5  1.5   0.000000004   0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   10   10.2  1.5  1.5   0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000004  -0.000000001  -0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   11    1.2  1.5  0.5  -0.000000002   0.000000004   0.000000002  -0.000000001  -0.000000001  -0.000000001  -0.000000001  -0.000000000
                        -0.000000019  -0.000000006  -0.000000001  -0.000000001   0.000000001   0.000000001   0.000000000   0.000000000

   12    2.2  1.5  0.5   0.000000014  -0.000000001   0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000007  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   13    3.2  1.5  0.5   0.000000012   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   14    4.2  1.5  0.5   0.000000018   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000002  -0.000000001  -0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000

   15    5.2  1.5  0.5   0.000000006   0.000000000  -0.000000001   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000002  -0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   16    6.2  1.5  0.5  -0.000000011  -0.000000001   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000002  -0.000000001   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   17    7.2  1.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   18    8.2  1.5  0.5   0.000000019   0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   19    9.2  1.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000005   0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   20   10.2  1.5  0.5  -0.000000003  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000009   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   21    1.2  1.5 -0.5  -0.000000046  -0.000000003   0.000000001   0.000000001  -0.000000000  -0.000000001  -0.000000000   0.000000000
                         0.000000019   0.000000002  -0.000000001  -0.000000002   0.000000000  -0.000000001   0.000000001  -0.000000000

   22    2.2  1.5 -0.5  -0.000000014   0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000010  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   23    3.2  1.5 -0.5  -0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000005  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   24    4.2  1.5 -0.5   0.000000009  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000001  -0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   25    5.2  1.5 -0.5  -0.000000012  -0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000007  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   26    6.2  1.5 -0.5  -0.000000015  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000006   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   27    7.2  1.5 -0.5   0.000000003   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   28    8.2  1.5 -0.5   0.000000009   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000004  -0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   29    9.2  1.5 -0.5   0.000000009   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000004   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   30   10.2  1.5 -0.5   0.000000007  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000006  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   31    1.2  1.5 -1.5   0.000000017  -0.000000002   0.000000004  -0.000000001   0.000000000   0.000000001  -0.000000000   0.000000000
                        -0.000000146   0.000000004   0.000000001   0.000000000   0.000000000   0.000000001  -0.000000000   0.000000000

   32    2.2  1.5 -1.5  -0.000000021   0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000005   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000

   33    3.2  1.5 -1.5   0.000000000   0.000000000  -0.000000001   0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000005   0.000000001  -0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000

   34    4.2  1.5 -1.5  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000018  -0.000000001  -0.000000000   0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000

   35    5.2  1.5 -1.5  -0.000000012   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000002   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   36    6.2  1.5 -1.5  -0.000000008   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000003   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   37    7.2  1.5 -1.5  -0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000008  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   38    8.2  1.5 -1.5  -0.000000003   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000008   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   39    9.2  1.5 -1.5  -0.000000016   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000004   0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   40   10.2  1.5 -1.5   0.000000008  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000007  -0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   41    1.2  0.5  0.5  -0.038942345  -0.104985294   0.251830276   0.165636017  -0.017307161  -0.062995408  -0.148489141  -0.416023251
                         0.069368161   0.108079870   0.311910432   0.040317456   0.106037831   0.181726452   0.048727454  -0.016603227

   42    2.2  0.5  0.5  -0.079939010  -0.042129332   0.384568281  -0.135908290  -0.192649704   0.123244709   0.230239658  -0.147791453
                         0.272335970  -0.025013015  -0.365504248  -0.068883261   0.191817502  -0.096037632  -0.059185048  -0.024829003

   43    3.2  0.5  0.5   0.099140213   0.290522117  -0.015108938   0.124229392   0.293100790   0.038768292  -0.069642852  -0.039715591
                        -0.022579207   0.076389004  -0.073178528   0.208926527   0.486478415  -0.042742724  -0.010209464   0.053090111

   44    4.2  0.5  0.5   0.005954411  -0.064236938   0.247596877   0.309735959   0.386491111   0.085487135   0.239595345   0.138934855
                         0.155056941  -0.118271138   0.130514947  -0.055554498  -0.166374689  -0.090486742  -0.165391844   0.029393795

   45    5.2  0.5  0.5   0.022915446  -0.203506708  -0.019252828  -0.019063164   0.297183482   0.031412127  -0.432967140  -0.110046002
                         0.121067196  -0.010422258  -0.238239366  -0.261434103  -0.020657332  -0.035649814  -0.046544902  -0.072869646

   46    6.2  0.5  0.5   0.099384878   0.012317581  -0.005214115  -0.052033132   0.053579136  -0.008745214  -0.013869967   0.172047389
                         0.345122627   0.655296065   0.062593514   0.014587198  -0.079607073   0.079686843  -0.069695339   0.037220872

   47    7.2  0.5  0.5  -0.062480703   0.017081809  -0.285386400  -0.160877462   0.171299433   0.298506166   0.216110498  -0.332828000
                        -0.024585183   0.120538972   0.074944041   0.088164218  -0.114980223  -0.037770864  -0.062719030  -0.111831912

   48    8.2  0.5  0.5   0.009593715  -0.230252225  -0.078953992  -0.015478027   0.178777228   0.014524625   0.245805947   0.117164524
                         0.020510287  -0.005391678  -0.032058074  -0.139825289   0.202210424   0.261470924   0.424251735   0.055455664

   49    1.2  0.5 -0.5  -0.032515266   0.143377880   0.008197490  -0.010401132  -0.013560347   0.088633158  -0.109544525  -0.111574622
                         0.164228405  -0.033425598  -0.060911401   0.125339656  -0.306680190   0.058272235   0.278303553   0.460823184

   50    2.2  0.5 -0.5   0.199219241   0.129217817  -0.006480722  -0.002867237  -0.028434638   0.331871781   0.016566866  -0.057481945
                         0.327283021  -0.110573671   0.017966534  -0.189293478  -0.012256519   0.034039925   0.070357829  -0.154791815

   51    3.2  0.5 -0.5   0.011859409   0.079510631  -0.089559022   0.247427336  -0.075950409  -0.006377192   0.020567815   0.004701744
                        -0.140227901   0.027851388  -0.237920750   0.160426648  -0.211432845   0.505432091  -0.075868541  -0.240204812

   52    4.2  0.5 -0.5  -0.089977858  -0.021073184   0.261266533  -0.211346139   0.155881741  -0.132038073  -0.005876185  -0.011491014
                         0.165768475  -0.030874831   0.018099030   0.393141106  -0.095549046  -0.160727283   0.162497807  -0.283805280

   53    5.2  0.5 -0.5  -0.175273506   0.166673385  -0.110021291  -0.237684371   0.013983952  -0.103945316  -0.151148682   0.202371748
                         0.393239723  -0.161704546   0.174580733  -0.045337882   0.045497718   0.277612695  -0.171133338   0.008392313

   54    6.2  0.5 -0.5  -0.277038533   0.331923067   0.141874240   0.058377997   0.082552957  -0.009513852  -0.017082490   0.030296886
                        -0.137576022   0.265460894  -0.087353137  -0.219971693   0.029572318  -0.075679807   0.054036055  -0.028993077

   55    7.2  0.5 -0.5  -0.089654830  -0.053125727  -0.328062352   0.418589014  -0.108025107  -0.078430344   0.008212121  -0.005919219
                         0.449709387   0.054643318  -0.011602202   0.051035389   0.027787930  -0.314391052   0.080126932  -0.089472268

   56    8.2  0.5 -0.5  -0.021363813   0.117652070  -0.050843268  -0.145784894  -0.005705812  -0.354302050   0.392950513  -0.386625061
                         0.086765405  -0.119475314  -0.021086920  -0.131448274  -0.005532277   0.080256111   0.009250099  -0.019127552


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.905%  36.503%
    2    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
    8    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%
    9    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.053%
   10   10.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.024%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.231%  46.124%
   12    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   18    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   0.038%
   19    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%
   20   10.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.893%   8.341%
   22    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.036%   0.055%
   29    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.025%   0.009%
   30   10.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.003%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  82.737%   8.799%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.005%
   39    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.067%   0.003%
   40   10.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.054%   0.012%
   41    1.2  0.5  0.5  15.785%   5.036%   2.366%   3.450%   0.242%  21.593%   2.709%   2.308%   0.000%   0.000%
   42    2.2  0.5  0.5   0.537%  10.697%   0.208%   2.754%   7.364%  14.470%   6.261%   1.213%   0.000%   0.000%
   43    3.2  0.5  0.5   0.998%   1.182%   3.200%  24.076%   4.130%  12.039%   2.104%   2.223%   0.000%   0.000%
   44    4.2  0.5  0.5   5.703%   0.022%  16.051%  14.324%   0.050%   9.584%   1.769%   0.793%   0.000%   0.000%
   45    5.2  0.5  0.5  13.627%   4.220%   0.824%  12.023%   4.072%   3.131%  13.812%   0.232%   0.000%   0.000%
   46    6.2  0.5  0.5   0.936%   4.432%   1.275%   1.193%   2.569%   5.446%   8.084%  14.356%   0.000%   0.000%
   47    7.2  0.5  0.5   1.295%  15.397%  15.653%   0.946%   4.973%   8.267%   8.029%   0.733%   0.000%   0.000%
   48    8.2  0.5  0.5  13.497%   0.644%  28.735%   0.155%   5.355%   1.279%   2.054%   0.357%   0.000%   0.000%
   49    1.2  0.5 -0.5  31.202%   0.486%   1.867%   4.333%  10.121%   0.384%   1.076%   1.627%   0.000%   0.000%
   50    2.2  0.5 -0.5   1.430%   0.233%   1.892%   7.933%   2.095%   6.357%  43.219%   1.174%   0.000%   0.000%
   51    3.2  0.5 -0.5   5.716%   8.446%   4.166%   6.059%  17.344%   1.219%   1.536%   0.677%   0.000%   0.000%
   52    4.2  0.5 -0.5   3.892%   2.556%  13.527%   2.929%  24.995%   1.822%   0.060%   1.360%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.421%   9.266%   4.255%  10.557%   1.463%   0.000%   4.933%  16.733%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.051%   0.266%   0.244%   0.819%   1.824%   9.615%   0.038%  49.708%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.494%   4.635%   1.554%   5.509%  13.281%   3.597%   4.303%   3.263%   0.000%   0.000%
   56    8.2  0.5 -0.5   4.415%  32.482%   4.182%   2.942%   0.121%   1.196%   0.015%   3.244%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5  47.320%   7.038%   0.000%   0.000%   0.011%   0.001%   0.091%   0.001%   0.015%   0.001%
    2    2.2  1.5  1.5   0.000%   0.000%   0.041%  12.509%   3.486%   0.574%   6.491%   0.187%   1.070%   0.304%
    3    3.2  1.5  1.5   0.000%   0.000%   0.017%   5.192%   6.047%   0.485%   4.098%   0.108%   6.494%   0.596%
    4    4.2  1.5  1.5   0.000%   0.000%   0.039%  17.698%   8.386%   0.981%   1.138%   0.233%   5.047%   0.776%
    5    5.2  1.5  1.5   0.000%   0.000%   4.427%   0.013%   1.183%   6.592%   0.069%   2.894%   0.797%   5.587%
    6    6.2  1.5  1.5   0.000%   0.000%   4.443%   0.019%   1.140%   6.630%   0.061%   2.907%   0.784%   5.602%
    7    7.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   1.325%   0.066%  10.725%   0.062%  11.194%   0.554%
    8    8.2  1.5  1.5   0.011%   0.019%   2.772%   0.009%   0.640%   4.103%   0.267%   1.891%   0.340%   2.659%
    9    9.2  1.5  1.5   0.018%   0.013%   1.496%   0.005%   0.398%   2.917%   8.967%   0.842%   0.793%   2.181%
   10   10.2  1.5  1.5   0.053%   0.011%   1.315%   0.004%   2.670%   1.460%   8.834%   1.042%   3.209%   0.662%
   11    1.2  1.5  0.5  17.672%  35.739%   0.000%   0.000%   0.011%   0.064%   0.001%   0.028%   0.005%   0.033%
   12    2.2  1.5  0.5   0.000%   0.000%   5.192%   0.017%   0.484%   8.170%   0.103%   1.981%   0.540%   6.014%
   13    3.2  1.5  0.5   0.000%   0.000%  12.509%   0.042%   0.720%   1.509%   0.045%   8.463%   0.346%   1.536%
   14    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.022%   0.041%   3.047%   0.168%   7.481%   0.107%   1.944%
   15    5.2  1.5  0.5   0.000%   0.000%   0.044%  13.275%   1.168%   0.059%   9.456%   0.054%   2.514%   0.126%
   16    6.2  1.5  0.5   0.000%   0.000%   0.044%  13.253%   1.160%   0.088%   9.370%   0.119%   2.506%   0.133%
   17    7.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   1.329%   7.487%   0.077%   3.285%   3.514%  24.894%
   18    8.2  1.5  0.5   0.007%   0.045%   0.018%   0.935%  11.855%   1.177%   2.512%   0.243%   8.111%   0.904%
   19    9.2  1.5  0.5   0.033%   0.024%   1.651%   0.582%   3.204%   0.081%   6.249%   0.029%   0.763%   0.094%
   20   10.2  1.5  0.5   0.049%   0.004%   2.059%   0.356%   0.810%   1.902%   5.155%   0.815%   0.051%   0.993%
   21    1.2  1.5 -0.5  34.130%  49.403%   0.000%   0.000%   0.081%   0.010%   0.011%   0.002%   0.030%   0.005%
   22    2.2  1.5 -0.5   0.000%   0.000%   0.017%   5.192%   6.048%   0.485%   4.098%   0.108%   6.494%   0.596%
   23    3.2  1.5 -0.5   0.000%   0.000%   0.042%  12.509%   3.487%   0.573%   6.491%   0.186%   1.070%   0.304%
   24    4.2  1.5 -0.5   0.000%   0.000%   0.022%   0.000%   1.159%   0.089%   9.369%   0.120%   2.504%   0.135%
   25    5.2  1.5 -0.5   0.000%   0.000%  13.275%   0.044%   0.032%   3.077%   0.081%   7.547%   0.098%   1.954%
   26    6.2  1.5 -0.5   0.000%   0.000%  13.253%   0.044%   0.040%   3.049%   0.167%   7.482%   0.105%   1.947%
   27    7.2  1.5 -0.5   0.001%   0.001%   0.000%   0.000%   9.488%   1.134%   1.285%   0.272%  22.464%   3.450%
   28    8.2  1.5 -0.5   0.008%   0.008%   0.935%   0.018%   1.253%  13.982%   0.159%   0.391%   0.850%   8.038%
   29    9.2  1.5 -0.5   0.018%   0.013%   0.582%   1.651%   0.083%   1.115%   0.030%   8.335%   0.062%   0.883%
   30   10.2  1.5 -0.5   0.001%   0.037%   0.356%   2.059%   2.452%   0.174%   0.267%   5.788%   0.982%   0.161%
   31    1.2  1.5 -1.5   0.644%   7.586%   0.000%   0.000%   0.000%   0.030%   0.001%   0.073%   0.001%   0.011%
   32    2.2  1.5 -1.5   0.000%   0.000%  12.509%   0.041%   0.720%   1.509%   0.045%   8.463%   0.346%   1.535%
   33    3.2  1.5 -1.5   0.000%   0.000%   5.192%   0.017%   0.484%   8.170%   0.103%   1.980%   0.540%   6.015%
   34    4.2  1.5 -1.5   0.000%   0.000%  17.698%   0.039%   1.151%   6.620%   0.062%   2.904%   0.792%   5.594%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.013%   4.427%   8.354%   1.009%   1.132%   0.243%   5.041%   0.783%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.019%   4.443%   8.397%   0.971%   1.139%   0.230%   5.054%   0.768%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.036%   3.491%   0.092%   8.560%   0.427%   8.700%
   38    8.2  1.5 -1.5   0.016%   0.025%   0.009%   2.772%   5.219%   0.613%   0.769%   0.300%   2.380%   0.365%
   39    9.2  1.5 -1.5   0.013%   0.007%   0.005%   1.496%   3.380%   1.198%   0.387%   8.157%   1.923%   0.501%
   40   10.2  1.5 -1.5   0.004%   0.025%   0.004%   1.315%   2.066%   5.309%   0.434%   6.197%   0.638%   2.662%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5   0.034%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   7.062%   0.014%   0.003%   1.581%   8.206%   0.248%   1.501%   0.372%   0.032%   5.573%
    3    3.2  1.5  1.5   1.310%   0.049%   0.001%   0.656%  24.313%   0.729%   2.450%   0.629%   0.002%   1.158%
    4    4.2  1.5  1.5   2.609%   0.018%   0.003%   2.235%   0.072%   0.002%   3.721%   0.694%   0.023%   1.987%
    5    5.2  1.5  1.5   0.020%   2.045%   0.559%   0.001%   0.101%   3.087%   0.107%   0.256%  27.000%   0.131%
    6    6.2  1.5  1.5   0.024%   2.039%   0.560%   0.003%   0.051%   0.959%   5.297%  23.978%   0.352%   0.004%
    7    7.2  1.5  1.5  25.616%   0.235%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.073%   1.004%  22.009%   0.036%   0.170%   1.650%   0.311%   1.415%   9.908%   0.074%
    9    9.2  1.5  1.5   4.083%   0.696%  11.877%   0.019%   3.246%   1.262%   0.484%   4.180%   2.110%   0.558%
   10   10.2  1.5  1.5   4.079%   0.323%  10.441%   0.017%   4.953%   0.216%   1.214%   2.967%   1.635%   0.614%
   11    1.2  1.5  0.5   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.071%   1.825%   0.656%   0.001%   0.638%  19.287%   1.590%   7.066%   0.699%   0.001%
   13    3.2  1.5  0.5   0.007%   6.562%   1.581%   0.003%   0.302%   9.858%   0.069%   0.198%   5.474%   0.031%
   14    4.2  1.5  0.5   0.097%   6.300%   0.000%   0.003%   0.118%   4.979%   2.214%   9.036%  22.351%   0.018%
   15    5.2  1.5  0.5   5.758%   0.051%   0.003%   1.678%   1.762%   0.050%   7.897%   1.989%   0.029%   2.806%
   16    6.2  1.5  0.5   5.717%   0.093%   0.003%   1.675%   0.323%   0.027%   6.607%   1.891%   0.002%   5.724%
   17    7.2  1.5  0.5   0.085%   9.106%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.261%   0.050%   0.169%   7.386%   5.216%   0.176%   1.138%   0.515%   0.120%   3.951%
   19    9.2  1.5  0.5   4.622%   0.170%  14.258%   3.445%   3.725%   0.329%   4.297%   1.826%   2.511%   0.117%
   20   10.2  1.5  0.5   3.917%   0.168%  15.148%   3.993%   3.520%   0.025%   0.542%   6.076%   2.815%   0.066%
   21    1.2  1.5 -0.5   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   1.310%   0.050%   0.001%   0.656%  19.495%   0.601%   6.851%   1.411%   0.001%   0.923%
   23    3.2  1.5 -0.5   7.063%   0.014%   0.003%   1.581%   9.966%   0.304%   0.300%   0.129%   0.027%   5.206%
   24    4.2  1.5 -0.5   5.718%   0.092%   0.003%   0.000%   4.710%   0.139%   7.534%   1.794%   0.031%  24.506%
   25    5.2  1.5 -0.5   0.057%   6.342%   1.678%   0.003%   0.041%   1.762%   1.779%   7.335%   3.571%   0.045%
   26    6.2  1.5 -0.5   0.098%   6.300%   1.675%   0.003%   0.032%   0.334%   1.679%   5.948%   6.576%   0.004%
   27    7.2  1.5 -0.5  11.637%   0.047%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.078%   0.359%   7.386%   0.169%   0.180%   5.256%   0.465%   0.899%   4.198%   0.115%
   29    9.2  1.5 -0.5   0.205%   4.499%   3.445%  14.258%   0.324%   3.717%   2.080%   4.501%   0.092%   2.091%
   30   10.2  1.5 -0.5   0.212%   3.773%   3.993%  15.148%   0.020%   3.591%   6.451%   0.523%   0.108%   2.352%
   31    1.2  1.5 -1.5   0.000%   0.037%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.007%   6.562%   1.581%   0.003%   0.255%   8.288%   0.313%   1.221%   5.820%   0.036%
   33    3.2  1.5 -1.5   0.070%   1.825%   0.656%   0.001%   0.704%  24.498%   0.605%   2.601%   0.872%   0.000%
   34    4.2  1.5 -1.5   0.025%   2.039%   2.235%   0.003%   0.002%   0.071%   0.604%   3.417%   2.370%   0.037%
   35    5.2  1.5 -1.5   2.614%   0.011%   0.001%   0.559%   3.229%   0.100%   0.626%   0.259%   0.126%  26.342%
   36    6.2  1.5 -1.5   2.610%   0.018%   0.003%   0.560%   1.036%   0.033%  23.612%   5.134%   0.001%   0.825%
   37    7.2  1.5 -1.5   0.260%  28.211%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   1.274%   0.058%   0.036%  22.009%   1.743%   0.160%   0.990%   0.185%   0.080%  10.369%
   39    9.2  1.5 -1.5   0.918%   4.410%   0.019%  11.877%   1.309%   3.328%   3.957%   0.359%   0.503%   2.382%
   40   10.2  1.5 -1.5   0.381%   4.593%   0.017%  10.441%   0.236%   4.932%   2.715%   1.197%   0.563%   1.956%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  1.5  1.5   0.070%   0.000%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.529%   0.000%   0.001%   0.283%   0.558%   0.046%   0.441%   7.921%  20.926%  12.089%
    3    3.2  1.5  1.5   0.283%   0.000%   0.000%   0.529%  12.674%   0.864%   0.879%  19.774%   0.418%   0.238%
    4    4.2  1.5  1.5   0.104%   0.001%   0.002%   0.706%   0.563%   0.057%   1.534%  32.461%  10.326%   5.991%
    5    5.2  1.5  1.5   0.000%   0.102%   0.710%   0.001%   0.008%   0.063%   0.317%   0.008%   0.293%   0.179%
    6    6.2  1.5  1.5   0.001%   0.101%   0.709%   0.002%   1.158%  10.751%   6.411%   0.139%   1.153%   1.128%
    7    7.2  1.5  1.5  43.745%   0.007%   0.008%   6.460%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.145%   1.129%   7.946%   0.034%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5  10.897%   0.559%   4.329%   1.815%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  1.5  1.5  12.814%   0.602%   3.676%   1.691%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.2  1.5  0.5   0.000%   0.010%   0.070%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.000%   0.289%   0.523%   0.000%   0.016%   0.320%   2.076%   0.228%   0.647%   2.888%
   13    3.2  1.5  0.5   0.000%   0.523%   0.289%   0.001%   2.998%  34.128%   6.390%   0.499%   0.168%   0.467%
   14    4.2  1.5  0.5   0.001%   0.709%   0.102%   0.000%   0.025%   0.006%   6.140%   0.179%   3.507%   4.191%
   15    5.2  1.5  0.5   0.708%   0.000%   0.000%   0.104%   0.263%   0.063%   0.779%  14.446%  12.155%   7.097%
   16    6.2  1.5  0.5   0.706%   0.001%   0.000%   0.105%  32.165%   2.514%   0.010%   0.396%   6.318%   3.809%
   17    7.2  1.5  0.5   0.012%   6.289%  43.870%   0.049%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   2.511%   0.008%   0.046%  18.605%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.2  1.5  0.5   8.622%   0.195%   1.426%   2.581%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.2  1.5  0.5   7.898%   0.192%   1.211%   2.341%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.010%   0.000%   0.000%   0.070%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.283%   0.000%   0.000%   0.529%   0.527%   0.045%   0.147%   1.715%   0.656%   0.622%
   23    3.2  1.5 -0.5   0.529%   0.000%   0.001%   0.283%  34.699%   3.047%   0.479%   5.913%   0.308%   0.156%
   24    4.2  1.5 -0.5   0.707%   0.001%   0.000%   0.105%   0.011%   0.033%   0.257%   5.940%   7.223%   4.318%
   25    5.2  1.5 -0.5   0.000%   0.710%   0.102%   0.000%   0.036%   0.118%  15.924%   0.811%   7.541%  15.628%
   26    6.2  1.5 -0.5   0.001%   0.709%   0.102%   0.000%   2.553%  32.626%   0.418%   0.008%   3.572%   4.834%
   27    7.2  1.5 -0.5   6.457%   0.024%   0.048%  43.692%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.006%   2.799%  18.311%   0.054%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.2  1.5 -0.5   0.196%   8.374%   2.839%   1.415%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.2  1.5 -0.5   0.197%   7.833%   2.403%   1.209%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.070%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.523%   0.289%   0.001%   0.025%   0.428%   6.812%   0.458%  13.422%  23.049%
   33    3.2  1.5 -1.5   0.000%   0.289%   0.523%   0.000%   0.905%  13.227%  19.688%   0.872%   0.138%   0.351%
   34    4.2  1.5 -1.5   0.001%   0.101%   0.709%   0.002%   0.050%   0.564%  31.098%   1.630%   7.031%  10.290%
   35    5.2  1.5 -1.5   0.105%   0.000%   0.001%   0.707%   0.103%   0.007%   0.004%   0.389%   1.400%   0.854%
   36    6.2  1.5 -1.5   0.104%   0.001%   0.002%   0.706%  10.663%   1.094%   0.195%   6.214%   2.798%   1.822%
   37    7.2  1.5 -1.5   0.006%  43.901%   6.294%   0.020%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   1.161%   0.125%   0.035%   7.933%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.2  1.5 -1.5   0.579%  10.972%   1.768%   4.280%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.2  1.5 -1.5   0.610%  12.848%   1.647%   3.679%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   2.350%   0.392%   2.325%   0.002%   0.148%   0.493%   0.000%   2.242%   0.000%   0.000%
    3    3.2  1.5  1.5   0.406%   0.024%   8.296%   0.014%   0.130%   0.598%   0.002%   0.534%   0.000%   0.000%
    4    4.2  1.5  1.5   0.198%   0.270%   0.078%   0.000%   0.273%   1.028%   0.001%   0.746%   0.000%   0.000%
    5    5.2  1.5  1.5   0.388%  33.030%   0.005%   1.175%   0.113%   0.015%   8.702%   0.024%   0.000%   0.000%
    6    6.2  1.5  1.5   0.130%  13.445%   0.002%   0.132%   7.668%   2.063%   0.154%   0.001%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.000%   0.000%   0.217%   4.912%   3.805%   1.559%  30.789%   0.087%   0.000%   0.000%
    9    9.2  1.5  1.5   0.000%   0.000%  10.934%   1.610%  10.628%   4.538%   5.883%   2.607%   0.000%   0.000%
   10   10.2  1.5  1.5   0.000%   0.000%  13.974%   1.178%  10.905%   2.092%   5.077%   2.242%   0.000%   0.000%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.381%  28.720%   0.009%   5.924%   2.627%   0.800%   0.214%   0.002%   0.000%   0.000%
   13    3.2  1.5  0.5   0.004%   0.070%   0.006%   3.413%   0.033%   0.000%   1.750%   0.007%   0.000%   0.000%
   14    4.2  1.5  0.5   0.128%  14.424%   0.008%   1.931%   2.469%   0.786%   7.444%   0.024%   0.000%   0.000%
   15    5.2  1.5  0.5  10.570%   0.341%   0.884%   0.004%   0.581%   2.258%   0.001%   1.026%   0.000%   0.000%
   16    6.2  1.5  0.5   0.398%   0.075%   0.025%   0.001%   0.544%   2.001%   0.011%   2.185%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.000%   0.000%  13.533%   0.031%   1.471%   3.766%   0.088%  15.100%   0.000%   0.000%
   19    9.2  1.5  0.5   0.000%   0.000%  13.065%   0.577%  17.598%   0.315%   7.470%   0.132%   0.000%   0.000%
   20   10.2  1.5  0.5   0.000%   0.000%  11.858%   0.694%   6.518%  12.237%   8.533%   0.049%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5  31.191%   0.373%   6.108%   0.006%   0.741%   2.621%   0.017%   0.082%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.117%   0.005%   3.699%   0.005%   0.005%   0.026%   0.007%   1.467%   0.000%   0.000%
   24    4.2  1.5 -0.5  10.749%   0.068%   1.463%   0.014%   0.663%   2.671%   0.053%   7.797%   0.000%   0.000%
   25    5.2  1.5 -0.5   0.113%   5.543%   0.002%   0.785%   2.324%   0.526%   1.110%   0.005%   0.000%   0.000%
   26    6.2  1.5 -0.5   0.006%   1.669%   0.002%   0.067%   2.092%   0.488%   2.090%   0.026%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.000%   0.000%   0.053%  14.879%   4.194%   1.489%  13.292%   0.083%   0.000%   0.000%
   29    9.2  1.5 -0.5   0.000%   0.000%   0.836%  13.510%   0.218%  16.651%   0.124%   7.818%   0.000%   0.000%
   30   10.2  1.5 -0.5   0.000%   0.000%   0.827%  11.650%  12.876%   6.315%   0.122%   8.099%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.087%   0.443%   0.003%   2.576%   0.550%   0.130%   1.949%   0.003%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.001%   0.096%   0.011%   8.524%   0.563%   0.134%   0.342%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.079%   0.658%   0.000%   0.057%   1.071%   0.241%   0.756%   0.001%   0.000%   0.000%
   35    5.2  1.5 -1.5  31.240%   0.289%   1.549%   0.004%   0.017%   0.076%   0.022%   8.366%   0.000%   0.000%
   36    6.2  1.5 -1.5  11.463%   0.066%   0.168%   0.009%   2.031%   7.689%   0.018%   0.105%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   6.495%   0.183%   1.185%   4.305%   0.173%  29.026%   0.000%   0.000%
   39    9.2  1.5 -1.5   0.000%   0.000%   2.066%  11.472%   3.950%  10.726%   2.529%   5.457%   0.000%   0.000%
   40   10.2  1.5 -1.5   0.000%   0.000%   1.500%  14.661%   2.009%  11.363%   1.278%   4.657%   0.000%   0.000%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.633%   2.270%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.056%   0.240%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.034%   9.024%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.408%   1.811%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.518%   4.152%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.899%  42.956%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.451%   1.482%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.051%   5.305%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.803%   2.167%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.680%   2.892%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.980%   0.710%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.558%   0.140%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  18.536%   5.393%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.568%  18.064%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  21.028%   0.581%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.798%   2.812%

   Nr   State  S   Sz      51       52       53       54       55       56

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.2  0.5  0.5  16.071%   2.906%   1.154%   3.699%   2.442%  17.335%
   42    2.2  0.5  0.5  28.149%   2.322%   7.391%   2.441%   5.651%   2.246%
   43    3.2  0.5  0.5   0.558%   5.908%  32.257%   0.333%   0.495%   0.440%
   44    4.2  0.5  0.5   7.834%   9.902%  17.706%   1.550%   8.476%   2.017%
   45    5.2  0.5  0.5   5.713%   6.871%   8.874%   0.226%  18.963%   1.742%
   46    6.2  0.5  0.5   0.395%   0.292%   0.921%   0.643%   0.505%   3.099%
   47    7.2  0.5  0.5   8.706%   3.365%   4.256%   9.053%   5.064%  12.328%
   48    8.2  0.5  0.5   0.726%   1.979%   7.285%   6.858%  24.041%   1.680%
   49    1.2  0.5 -0.5   0.378%   1.582%   9.424%   1.125%   8.945%  22.481%
   50    2.2  0.5 -0.5   0.036%   3.584%   0.096%  11.130%   0.522%   2.726%
   51    3.2  0.5 -0.5   6.463%   8.696%   5.047%  25.550%   0.618%   5.772%
   52    4.2  0.5 -0.5   6.859%  19.923%   3.343%   4.327%   2.644%   8.068%
   53    5.2  0.5 -0.5   4.258%   5.855%   0.227%   8.787%   5.213%   4.102%
   54    6.2  0.5 -0.5   2.776%   5.180%   0.769%   0.582%   0.321%   0.176%
   55    7.2  0.5 -0.5  10.776%  17.782%   1.244%  10.499%   0.649%   0.804%
   56    8.2  0.5 -0.5   0.303%   3.853%   0.006%  13.197%  15.450%  14.984%


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
              1      21      118.64       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     6899.77       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *    199156.12 160062.51  18449.97  20619.75     14.00      9.54
 REAL TIME  *    201690.18 SEC
 DISK USED  *         6.85 GB (local),      111.06 GB (total)
 SF USED    *        36.43 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=********************

              CI              CI           MULTI
   -214.33365960   -214.16924269   -213.50108393
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
