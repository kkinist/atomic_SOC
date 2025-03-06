
 Working directory              : /wrk/irikura/molpro.Oa7cVyrbmX/
 Global scratch directory       : /wrk/irikura/molpro.Oa7cVyrbmX/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Oa7cVyrbmX/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Bi SO-CI
                                                                                 ! valence s2 inactive
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
     occ,7,9
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 03-Mar-25          TIME: 15:41:06  
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

     696.517 MB (compressed) written to integral file ( 13.4%)

     Node minimum: 28.836 MB, node maximum: 55.837 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   24679576.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15976936      RECORD LENGTH: 524288

 Memory used in sort:      16.53 MW

 SORT1 READ   646821870. AND WROTE     4259373. INTEGRALS IN     14 RECORDS. CPU TIME:     3.15 SEC, REAL TIME:     3.24 SEC
 SORT2 READ    68065344. AND WROTE   395255076. INTEGRALS IN   3104 RECORDS. CPU TIME:     0.49 SEC, REAL TIME:     0.56 SEC

 Node minimum:    24675847.  Node maximum:    24720811. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        10.37     10.00
 REAL TIME  *        11.80 SEC
 DISK USED  *        31.11 MB (local),        1.88 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     265 (  128  137)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Quartet   Space symmetry=2
 Number of states:            10
 Number of CSFs:              20   (20 determinants, 20 intermediate states)

 State symmetry 2

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              70   (90 determinants, 90 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.440D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.303D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.321D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.301D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.196D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 3 5 6 1 1 2 6   3 5 4 1 2 6 3 4 5 1   4 3 2 6 51410 91115   7 81312 4 3 2 5 6 1
                                        5 4 2 6 3 911 81415  1310 712 1 911 81314  1512 710 4 2 5 6 3 1  1314 911 81512 710 4
                                        6 2 3 5201621252419  22182623172827131411   7 9 8101512 1 4 2 6   5 311 713141015 912
                                        8 1 4 2 6 3 5 1 4 2   3 6 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.178D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.178D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.598D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.597D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.365D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.355D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 1 2 3 1 2 3   1 2 4 8 610 7 5 9 1   3 2 610 4 7 9 5 8 1   2 3 9 6 410 5 7 8 4
                                        5 9 6 710 8 3 2 119  18151413111220162117   4 5 6 9 7 810192018  1511121413162117 3 1
                                        2 4 5 8 710 6 91814  131920151211211617 8   5 4 910 6 7 3 1 2 8   9 5 4 610 720181413
                                       19151221171116 3 1 2   9 8 4 6 5 710 1 3 2   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.59524   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381
                                          0.02381   0.02381
 Weight factors for state symmetry  2:    0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381
 
 Number of orbital rotations:  2147  ( 18 closed/active, 1307 closed/virtual, 0 active/active, 822 active/virtual )
 Total number of variables:    3067
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   14    0   -213.50776443    -213.52639075   -0.01862632    0.09776013 0.00012369 0.00000000  0.14E+01      2.34
   2    6   10    0   -213.52592834    -213.52595156   -0.00002322    0.00412771 0.00000189 0.00000000  0.40E-01      5.04
   3    5   10    0   -213.52595158    -213.52595158   -0.00000000    0.00000769 0.00000000 0.00000000  0.87E-04      7.14

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.28E-08)
                       Final energy:   -213.52595158
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.590389285307
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.04385482
 One electron energy                          -373.11784421
 Two electron energy                           159.52745493
 Virial ratio                                    4.09354670
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -213.355140067284
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.47720286
 One electron energy                          -367.94276227
 Two electron energy                           154.58762220
 Virial ratio                                    4.11571050
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -213.355140067243
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.47720286
 One electron energy                          -367.94276227
 Two electron energy                           154.58762221
 Virial ratio                                    4.11571050
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -213.355140066915
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.47720286
 One electron energy                          -367.94276230
 Two electron energy                           154.58762223
 Virial ratio                                    4.11571050
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -213.355140066619
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.47720286
 One electron energy                          -367.94276233
 Two electron energy                           154.58762226
 Virial ratio                                    4.11571050
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -213.355140066563
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.47720286
 One electron energy                          -367.94276233
 Two electron energy                           154.58762226
 Virial ratio                                    4.11571050
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -213.351599071562
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.56161710
 One electron energy                          -368.29312777
 Two electron energy                           154.94152870
 Virial ratio                                    4.11182274
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -213.350503730323
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.47720286
 One electron energy                          -367.94276227
 Two electron energy                           154.59225854
 Virial ratio                                    4.11564280
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -213.350503729889
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.47720286
 One electron energy                          -367.94276230
 Two electron energy                           154.59225857
 Virial ratio                                    4.11564280
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Quartet
 ==============================
 !MCSCF STATE 10.2 Quartet Energy             -213.350503729461
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.47720286
 One electron energy                          -367.94276233
 Two electron energy                           154.59225860
 Virial ratio                                    4.11564280
 
 !MCSCF STATE 10.2 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.532860162481
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.00185707
 One electron energy                          -372.91779821
 Two electron energy                           159.38493805
 Virial ratio                                    4.09459584
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.532860162481
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.00185707
 One electron energy                          -372.91779821
 Two electron energy                           159.38493804
 Virial ratio                                    4.09459584
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.532860162463
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.00185707
 One electron energy                          -372.91779820
 Two electron energy                           159.38493803
 Virial ratio                                    4.09459584
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.532860162456
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.00185707
 One electron energy                          -372.91779820
 Two electron energy                           159.38493804
 Virial ratio                                    4.09459584
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.532860162451
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.00185707
 One electron energy                          -372.91779820
 Two electron energy                           159.38493804
 Virial ratio                                    4.09459584
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.495707674698
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.95934776
 One electron energy                          -372.69729101
 Two electron energy                           159.20158333
 Virial ratio                                    4.09596472
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.495707674684
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.95934776
 One electron energy                          -372.69729104
 Two electron energy                           159.20158336
 Virial ratio                                    4.09596472
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.495707674655
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.95934776
 One electron energy                          -372.69729102
 Two electron energy                           159.20158335
 Virial ratio                                    4.09596472
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.298727083413
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999999999
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.000000000036
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     3.999999999945
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.701274860738
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     0.000000000005
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.999999999995
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.999999999995
 !MCSCF expec    <10.2 Quartet|LXLX|10.2 Quartet>     0.000000000009
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.000000000728
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.530102334564
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999999776506
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000232818
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     2.469893184325
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.000000000004
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     1.940003245916
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     1.000000000015
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.999999999899
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000000000026
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     2.059993057841
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     0.000000000006
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.999999999995
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.000000000009
 !MCSCF expec    <10.2 Quartet|LYLY|10.2 Quartet>     0.999999999995
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.000000000891
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.551382042236
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000221266
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.999999767265
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.448621136350
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999999997
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999999224
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.000000001515
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     3.761269670635
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     3.999999999950
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     1.000000000029
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     0.999999999993
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     0.238732081385
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     0.000000000005
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.000000000009
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.999999999995
 !MCSCF expec    <10.2 Quartet|LZLZ|10.2 Quartet>     0.999999999995
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.999999998380
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.918515623198
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000002226
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.999999999915
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.081485679324
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999999
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000000776
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999998486
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     5.999999999964
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     5.999999999965
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     5.999999999965
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     5.999999999965
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     5.999999999964
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     0.000000000016
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     2.000000000000
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>     2.000000000000
 !MCSCF expec    <10.2 Quartet|L**2|10.2 Quartet>     2.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     5.999999999998
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     5.999999999998
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     5.999999999998
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     5.999999999998
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     5.999999999998
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000001
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000001
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000001
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 4 2   3 5 6 1 4 2 6 3 5 1   4 3 5 6 21310111415   812 7 9 6 4 3 5 2 1
                                        6 5 3 2 41013111415  12 8 7 9 11310141511   812 7 9 5 3 6 2 4 1  1310141511 812 7 9 5
                                        3 6 2 4221620182419  27232617212528131015  1411 812 7 9 1 5 3 6   2 41310151411 812 7
                                        9 1 5 2 3 6 4 1 5 2   3 6 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 3 2 2 3 1 3   2 1 4 6 810 5 7 9 3   2 1 810 7 9 4 5 6 3   2 1 7 9 810 5 6 4 9
                                        7 810 5 6 4 2 3 118  20151712141621131911   9 7 810 5 6 4201815  1712141621131911 2 1
                                        3 9 7 810 5 6 42018  151712161421131911 9   7 810 5 6 4 2 1 3 9   7 810 5 6 418201517
                                       14161213211911 2 1 3   7 9 810 5 6 4 2 1 3   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.72205     1  1  s    1.00015
    2.1     2.00000    -1.35028     1  1  d2-  1.00066
    3.1     2.00000    -1.35028     1  1  d2+  1.00066
    4.1     2.00000    -1.35028     1  1  d1-  1.00066
    5.1     2.00000    -1.35028     1  1  d0   1.00066
    6.1     2.00000    -1.35028     1  1  d1+  1.00066
    7.1     2.00000    -0.71231     1  1  s   -0.42002    1  5  s    0.61013    1  6  s    0.46732
    1.2     2.00000    -4.29828     1  1  py   0.99993
    2.2     2.00000    -4.29828     1  1  px   0.99993
    3.2     2.00000    -4.29828     1  1  pz   0.99993
    4.2     0.92756    -0.15522     1  1  px  -0.27561    1  5  px   0.47968    1  6  px   0.37679
    5.2     0.92756    -0.15522     1  1  pz  -0.27561    1  5  pz   0.47968    1  6  pz   0.37679
    6.2     0.92756    -0.15522     1  1  py  -0.27561    1  5  py   0.47968    1  6  py   0.37679
    7.2     0.07244     0.04433     1 12  py   0.83096
    8.2     0.07244     0.04433     1 12  pz   0.83096
    9.2     0.07244     0.04433     1 12  px   0.83096
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 aaa000         0.99989243     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00001788
 a0a0a0         0.00109702      0.19904468     -0.00000007     -0.00000038     -0.00000195      0.79006743     -0.57255867
 0aa00a        -0.00109702      0.78374104      0.00000014     -0.00000028     -0.00000053      0.22265604      0.57255833
 0aaa00         0.00000000     -0.00000016      0.70559842      0.00000175     -0.00000090      0.00000010     -0.00000000
 aa000a        -0.00000000     -0.00000016      0.70559844      0.00000175     -0.00000090      0.00000010      0.00000000
 aa00a0        -0.00000000     -0.00000002      0.00000090     -0.00000261      0.70559844      0.00000175      0.00000000
 a0aa00        -0.00000000      0.00000002     -0.00000090      0.00000261     -0.70559842     -0.00000175     -0.00000000
 0aa0a0         0.00000000     -0.00000017      0.00000175     -0.70559843     -0.00000261     -0.00000030     -0.00000000
 a0a00a         0.00000000      0.00000017     -0.00000175      0.70559843      0.00000261      0.00000030     -0.00000000
 aa0a00        -0.00109702     -0.58469607     -0.00000021     -0.00000010     -0.00000143      0.56741170      0.57255850
 a00aa0         0.00837289     -0.05127334     -0.00000001      0.00000002      0.00000003     -0.01456643      0.07422198
 00a0aa         0.00837289      0.03825160      0.00000001      0.00000001      0.00000009     -0.03712079      0.07422196
 0a0a0a        -0.00837289     -0.01302178      0.00000000      0.00000002      0.00000013     -0.05168726     -0.07422195
 
 Energy:     -213.59038929   -213.35514007   -213.35514007   -213.35514007   -213.35514007   -213.35514007   -213.35159907

 State:              8               9              10
 aaa000        -0.00000000     -0.00000000      0.00000000
 a0a0a0        -0.00000000     -0.00000000     -0.00000000
 0aa00a        -0.00000000      0.00000000     -0.00000000
 0aaa00        -0.70559844      0.00000025      0.00000014
 aa000a         0.70559842     -0.00000025     -0.00000014
 aa00a0         0.00000014     -0.00000042      0.70559842
 a0aa00         0.00000014     -0.00000042      0.70559844
 0aa0a0         0.00000025      0.70559843      0.00000042
 a0a00a         0.00000025      0.70559843      0.00000042
 aa0a00        -0.00000000      0.00000000     -0.00000000
 a00aa0        -0.00000000      0.00000000      0.00000000
 00a0aa        -0.00000000     -0.00000000      0.00000000
 0a0a0a         0.00000000     -0.00000000      0.00000000
 
 Energy:     -213.35050373   -213.35050373   -213.35050373
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 aba000         0.00000166     -0.11632244      0.00001758      0.00000842      0.80665367     -0.00000000      0.00000000
 aab000        -0.00000731      0.75674379     -0.00000659     -0.00000316     -0.30258865      0.00000000      0.00000000
 0a2000        -0.70580861     -0.00000662      0.00001043      0.00001254      0.00000049      0.00000057      0.70215785
 2a0000         0.70580861      0.00000662     -0.00001043     -0.00001254     -0.00000049      0.00000057      0.70215785
 a02000        -0.00001043     -0.00000000     -0.70580858      0.00019117      0.00001538      0.70215785     -0.00000057
 20a000         0.00001254     -0.00000000      0.00019117      0.70580858     -0.00000737      0.00000120     -0.00001955
 02a000        -0.00001254      0.00000000     -0.00019117     -0.70580858      0.00000737      0.00000120     -0.00001955
 a20000         0.00001043      0.00000000      0.70580858     -0.00019117     -0.00001538      0.70215785     -0.00000057
 baa000         0.00000565     -0.64042135     -0.00001099     -0.00000526     -0.50406502     -0.00000000     -0.00000000
 0aa0b0         0.00000056     -0.00000000      0.00000852      0.03144487     -0.00000033     -0.00000011      0.00000174
 aa00b0         0.00000046      0.00000000      0.03144487     -0.00000852     -0.00000069      0.06240488     -0.00000005
 0aab00        -0.03144487     -0.00000029      0.00000046      0.00000056      0.00000002      0.00000005      0.06240488
 a0ab00        -0.00000046     -0.00000000     -0.03144487      0.00000852      0.00000069      0.06240488     -0.00000005
 aa000b        -0.03144487     -0.00000029      0.00000046      0.00000056      0.00000002     -0.00000005     -0.06240488
 a0a00b        -0.00000056      0.00000000     -0.00000852     -0.03144487      0.00000033     -0.00000011      0.00000174
 
 Energy:     -213.53286016   -213.53286016   -213.53286016   -213.53286016   -213.53286016   -213.49570767   -213.49570767

 State:              8
 aba000        -0.00000000
 aab000        -0.00000000
 0a2000         0.00001955
 2a0000         0.00001955
 a02000        -0.00000120
 20a000         0.70215785
 02a000         0.70215785
 a20000        -0.00000120
 baa000         0.00000000
 0aa0b0        -0.06240489
 aa00b0        -0.00000011
 0aab00         0.00000174
 a0ab00        -0.00000011
 aa000b        -0.00000174
 a0a00b        -0.06240488
 
 Energy:     -213.49570767
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        1.49       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *        18.46      8.08     10.00
 REAL TIME  *        20.99 SEC
 DISK USED  *        95.81 MB (local),        2.89 GB (total)
 SF USED    *       161.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5903893   0.0
    -213.3551401   6.0
    -213.3551401   6.0
    -213.3551401   6.0
    -213.3551401   6.0
    -213.3551401   6.0
    -213.3515991   0.0
    -213.3505037   2.0
    -213.3505037   2.0
    -213.3505037   2.0
    -213.5328602   6.0
    -213.5328602   6.0
    -213.5328602   6.0
    -213.5328602   6.0
    -213.5328602   6.0
    -213.4957077   2.0
    -213.4957077   2.0
    -213.4957077   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 23
 Maximum number of shells:             4
 Maximum number of spin couplings:    48

 Reference space:       20 conf       20 CSFs
 N elec internal:     7100 conf    19340 CSFs
 N-1 el internal:     4640 conf    22565 CSFs
 N-2 el internal:     1256 conf    14006 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.59038929
     2      -213.35514007
     3      -213.35514007
     4      -213.35514007
     5      -213.35514007
     6      -213.35514007
     7      -213.35159907
     8      -213.35050373
     9      -213.35050373
    10      -213.35050373

 Number of blocks in overlap matrix:  1085   Smallest eigenvalue:  0.41D-04
 Number of N-2 electron functions:    1306
 Number of N-1 electron functions:   22565

 Number of internal configurations:                10436
 Number of singly external configurations:       2999425
 Number of doubly external configurations:      22941849
 Total number of contracted configurations:     25951710
 Total number of uncontracted configurations:  248483850

 Diagonal Coupling coefficients finished.               Storage:   6094488 words, CPU-Time:      3.17 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3494151 words, CPU-time:      4.35 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59038929    -0.00000000    -0.99896307  0.42D-01  0.12D+00    10.83
    1     2     2     1.00000000     0.00000000  -213.35514007    -0.00000000    -0.96850159  0.45D-01  0.11D+00    10.83
    1     3     3     1.00000000     0.00000000  -213.35514007    -0.00000000    -0.96910174  0.46D-01  0.11D+00    10.83
    1     4     4     1.00000000     0.00000000  -213.35514007    -0.00000000    -0.96876706  0.45D-01  0.11D+00    10.83
    1     5     5     1.00000000     0.00000000  -213.35514007    -0.00000000    -0.96886319  0.46D-01  0.11D+00    10.83
    1     6     6     1.00000000     0.00000000  -213.35514007    -0.00000000    -0.96821016  0.46D-01  0.11D+00    10.83
    1     7     7     1.00000000     0.00000000  -213.35159907    -0.00000000    -0.97350326  0.48D-01  0.11D+00    10.83
    1     8     8     1.00000000     0.00000000  -213.35050373     0.00000000    -0.96989742  0.46D-01  0.11D+00    10.83
    1     9     9     1.00000000     0.00000000  -213.35050373    -0.00000000    -0.96955952  0.46D-01  0.11D+00    10.83
    1    10    10     1.00000000     0.00000000  -213.35050373    -0.00000000    -0.96960544  0.46D-01  0.11D+00    10.83
    2     1     1     1.10412432    -0.79733764  -214.38772693    -0.79733764    -0.02611362  0.35D-02  0.22D-02   402.43
    2     2     2     1.10266911    -0.79179427  -214.14693434    -0.79179427    -0.02292078  0.29D-02  0.18D-02   402.43
    2     3     3     1.10273703    -0.79166170  -214.14680177    -0.79166170    -0.02307764  0.29D-02  0.18D-02   402.43
    2     4     4     1.10278817    -0.79165162  -214.14679169    -0.79165162    -0.02307910  0.30D-02  0.18D-02   402.43
    2     5     5     1.10281069    -0.79157169  -214.14671176    -0.79157169    -0.02317683  0.30D-02  0.18D-02   402.43
    2     6     6     1.10278907    -0.79156884  -214.14670891    -0.79156884    -0.02318547  0.29D-02  0.19D-02   402.43
    2     7     7     1.10411121    -0.79089763  -214.14249670    -0.79089763    -0.02478499  0.39D-02  0.19D-02   402.43
    2     8     8     1.10313022    -0.79188492  -214.14238865    -0.79188492    -0.02323676  0.29D-02  0.19D-02   402.43
    2     9     9     1.10317541    -0.79182192  -214.14232565    -0.79182192    -0.02330798  0.30D-02  0.19D-02   402.43
    2    10    10     1.10318629    -0.79178765  -214.14229138    -0.79178765    -0.02335430  0.29D-02  0.19D-02   402.43
    3     1     1     1.08972613    -0.82208023  -214.41246952    -0.02474259    -0.00028545  0.41D-04  0.26D-04   794.21
    3     2     2     1.08948989    -0.81355863  -214.16869870    -0.02176436    -0.00025598  0.34D-04  0.24D-04   794.21
    3     3     3     1.08949401    -0.81355693  -214.16869700    -0.02189523    -0.00025772  0.34D-04  0.24D-04   794.21
    3     4     4     1.08948720    -0.81355610  -214.16869616    -0.02190447    -0.00025866  0.34D-04  0.24D-04   794.21
    3     5     5     1.08949826    -0.81355525  -214.16869532    -0.02198355    -0.00025950  0.34D-04  0.24D-04   794.21
    3     6     6     1.08949211    -0.81355518  -214.16869525    -0.02198634    -0.00025955  0.34D-04  0.24D-04   794.21
    3     7     7     1.08942385    -0.81434004  -214.16593911    -0.02344241    -0.00030295  0.42D-04  0.29D-04   794.21
    3     8     8     1.08968411    -0.81393176  -214.16443549    -0.02204684    -0.00025731  0.31D-04  0.25D-04   794.21
    3     9     9     1.08968289    -0.81393052  -214.16443425    -0.02210859    -0.00025860  0.31D-04  0.25D-04   794.21
    3    10    10     1.08968850    -0.81393012  -214.16443385    -0.02214247    -0.00025905  0.31D-04  0.25D-04   794.21
    4     1     1     1.08945184    -0.82237712  -214.41276641    -0.00029689    -0.00000629  0.93D-06  0.60D-06  1186.35
    4     2     2     1.08927827    -0.81382218  -214.16896225    -0.00026355    -0.00000666  0.12D-05  0.53D-06  1186.35
    4     3     3     1.08927834    -0.81382214  -214.16896221    -0.00026521    -0.00000666  0.12D-05  0.53D-06  1186.35
    4     4     4     1.08927716    -0.81382213  -214.16896220    -0.00026603    -0.00000671  0.12D-05  0.54D-06  1186.35
    4     5     5     1.08927863    -0.81382212  -214.16896218    -0.00026687    -0.00000668  0.12D-05  0.54D-06  1186.35
    4     6     6     1.08927759    -0.81382211  -214.16896217    -0.00026693    -0.00000669  0.12D-05  0.54D-06  1186.35
    4     7     7     1.08915943    -0.81465253  -214.16625160    -0.00031249    -0.00000866  0.18D-05  0.72D-06  1186.35
    4     8     8     1.08947569    -0.81419631  -214.16470004    -0.00026456    -0.00000654  0.12D-05  0.53D-06  1186.35
    4     9     9     1.08947613    -0.81419628  -214.16470001    -0.00026577    -0.00000657  0.12D-05  0.53D-06  1186.35
    4    10    10     1.08947526    -0.81419628  -214.16470001    -0.00026616    -0.00000657  0.12D-05  0.53D-06  1186.35
    5     1     1     1.08952030    -0.82238381  -214.41277310    -0.00000669    -0.00000015  0.14D-07  0.16D-07  1578.95
    5     2     2     1.08930287    -0.81382920  -214.16896927    -0.00000702    -0.00000021  0.29D-07  0.21D-07  1578.95
    5     3     3     1.08930281    -0.81382920  -214.16896927    -0.00000706    -0.00000022  0.29D-07  0.21D-07  1578.95
    5     4     4     1.08930282    -0.81382917  -214.16896923    -0.00000704    -0.00000022  0.29D-07  0.21D-07  1578.95
    5     5     5     1.08930277    -0.81382917  -214.16896923    -0.00000705    -0.00000022  0.29D-07  0.21D-07  1578.95
    5     6     6     1.08930283    -0.81382917  -214.16896923    -0.00000706    -0.00000022  0.29D-07  0.21D-07  1578.95
    5     7     7     1.08917519    -0.81466161  -214.16626068    -0.00000908    -0.00000029  0.46D-07  0.29D-07  1578.95
    5     8     8     1.08950079    -0.81420324  -214.16470697    -0.00000693    -0.00000022  0.31D-07  0.21D-07  1578.95
    5     9     9     1.08950080    -0.81420324  -214.16470697    -0.00000696    -0.00000022  0.31D-07  0.21D-07  1578.95
    5    10    10     1.08950083    -0.81420324  -214.16470697    -0.00000696    -0.00000022  0.31D-07  0.21D-07  1578.95
    6     1     1     1.08952702    -0.82238397  -214.41277326    -0.00000016    -0.00000000  0.46D-09  0.40D-09  1972.14
    6     2     2     1.08931673    -0.81382943  -214.16896950    -0.00000023    -0.00000001  0.71D-09  0.76D-09  1972.14
    6     3     3     1.08931671    -0.81382943  -214.16896950    -0.00000023    -0.00000001  0.71D-09  0.75D-09  1972.14
    6     4     4     1.08931666    -0.81382939  -214.16896946    -0.00000023    -0.00000001  0.71D-09  0.77D-09  1972.14
    6     5     5     1.08931667    -0.81382940  -214.16896946    -0.00000023    -0.00000001  0.71D-09  0.76D-09  1972.14
    6     6     6     1.08931664    -0.81382939  -214.16896946    -0.00000023    -0.00000001  0.71D-09  0.77D-09  1972.14
    6     7     7     1.08918475    -0.81466192  -214.16626099    -0.00000031    -0.00000001  0.96D-09  0.13D-08  1972.14
    6     8     8     1.08951511    -0.81420347  -214.16470720    -0.00000023    -0.00000001  0.78D-09  0.77D-09  1972.14
    6     9     9     1.08951511    -0.81420347  -214.16470720    -0.00000023    -0.00000001  0.77D-09  0.76D-09  1972.14
    6    10    10     1.08951510    -0.81420347  -214.16470720    -0.00000023    -0.00000001  0.77D-09  0.76D-09  1972.14


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.3%   6.8%
 P   0.5%  21.0%  22.5%

 Initialization:   0.4%
 Other:           48.2%

 Total CPU:     1972.1 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9575935  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0203846  -0.0000000
                            0.0000000  -0.0000000
 22222222220//00/          -0.0128754   0.7620366   0.1655854  -0.0000000   0.0000000   0.0000000   0.5476426  -0.0000000
                            0.0000000   0.0000000
 2222222222/0/0/0           0.0128753   0.2376171   0.7427356   0.0000000  -0.0000000  -0.0000000  -0.5476429   0.0000000
                           -0.0000000  -0.0000000
 2222222222//00/0           0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.6753434  -0.0000000   0.0000000
                            0.0000000   0.6752702
 22222222220//0/0          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.6753433  -0.0000000  -0.0000000   0.0000000
                            0.6752702  -0.0000000
 2222222222//000/           0.0000000  -0.0000000   0.0000000   0.6753433  -0.0000000  -0.0000000   0.0000000   0.6752702
                           -0.0000000  -0.0000000
 22222222220///00           0.0000000   0.0000000   0.0000000   0.6753433  -0.0000000   0.0000000   0.0000000  -0.6752702
                            0.0000000   0.0000000
 2222222222/0//00          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.6753433   0.0000000   0.0000000
                           -0.0000000   0.6752702
 2222222222/0/00/          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.6753433  -0.0000000  -0.0000000   0.0000000
                            0.6752702   0.0000000
 2222222222//0/00          -0.0128753  -0.5244193   0.5771504  -0.0000000   0.0000000   0.0000000   0.5476427  -0.0000000
                            0.0000000   0.0000000
 2222222222/00//0           0.0065599  -0.0517161  -0.0112375  -0.0000000  -0.0000000   0.0000000   0.0740594  -0.0000000
                            0.0000000   0.0000000
 22222222220/0/0/          -0.0065599  -0.0161261  -0.0504063   0.0000000   0.0000000  -0.0000000  -0.0740594   0.0000000
                           -0.0000000  -0.0000000
 222222222200/0//           0.0065599   0.0355901  -0.0391687  -0.0000000  -0.0000000   0.0000000   0.0740594  -0.0000000
                            0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957699   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.020636    0.000000   -0.000000    0.000000
 2          -0.000000    0.955384    0.000000    0.000000   -0.000000    0.060120   -0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000   -0.060120    0.000000    0.000000    0.000000    0.955384   -0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.957274   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.957274    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.957274   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 7           0.020443    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.957167    0.000000   -0.000000   -0.000000
 8          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.957170    0.000000    0.000000
 9           0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.957170   -0.000000
 10         -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957170

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957921   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000091    0.000000    0.000000   -0.000000
 2          -0.000000    0.957274   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.957274    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.957274   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.957274   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 6          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.957274    0.000000   -0.000000   -0.000000    0.000000
 7          -0.000091   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.957386    0.000000    0.000000    0.000000
 8           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.957170    0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.957170   -0.000000
 10         -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.957170


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95769871 (fixed)   0.95792102 (relaxed)   0.95792101 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023627   -0.00066516   -0.70664789
 Singles      0.01376071   -0.05248440   -0.05854786
 Pairs        0.07578747   -0.00000000   -0.05718823
 Total        1.08978445   -0.05314956   -0.82238397
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59027944
 Nuclear energy                         0.00000000
 Kinetic energy                        69.54573020
 One electron energy                 -372.62112095
 Two electron energy                  158.20834769
 Virial quotient                       -3.08304726
 Correlation energy                    -0.82249382
 !MRCI STATE 1.2 Energy              -214.412773258622

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.48662041 (Davidson, fixed reference)
 Cluster corrected energies          -214.48662038 (Davidson, relaxed reference)
 Cluster corrected energies          -214.48662041 (Davidson, rotated reference)

 Cluster corrected energies          -214.48431876 (Pople, fixed reference)
 Cluster corrected energies          -214.48431873 (Pople, relaxed reference)
 Cluster corrected energies          -214.48431876 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95538401 (fixed)   0.95727657 (relaxed)   0.95727374 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00178272   -0.00415638   -0.68812163
 Singles      0.01858976   -0.06436156   -0.07284588
 Pairs        0.07088620    0.00000000   -0.05286192
 Total        1.09125868   -0.06851794   -0.81382943
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35514007
 Nuclear energy                         0.00000000
 Kinetic energy                        69.23501167
 One electron energy                 -367.98094764
 Two electron energy                  153.81197815
 Virial quotient                       -3.09336222
 Correlation energy                    -0.81382943
 !MRCI STATE 2.2 Energy              -214.168969496555

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24323849 (Davidson, fixed reference)
 Cluster corrected energies          -214.24323323 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24323849 (Davidson, rotated reference)

 Cluster corrected energies          -214.24101307 (Pople, fixed reference)
 Cluster corrected energies          -214.24100758 (Pople, relaxed reference)
 Cluster corrected energies          -214.24101307 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95538402 (fixed)   0.95727658 (relaxed)   0.95727375 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00178272   -0.00415638   -0.68812175
 Singles      0.01858967   -0.06436145   -0.07284581
 Pairs        0.07088627   -0.00000000   -0.05286188
 Total        1.09125865   -0.06851783   -0.81382943
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35514007
 Nuclear energy                         0.00000000
 Kinetic energy                        69.23501258
 One electron energy                 -367.98094696
 Two electron energy                  153.81197746
 Virial quotient                       -3.09336218
 Correlation energy                    -0.81382943
 !MRCI STATE 3.2 Energy              -214.168969496199

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24323848 (Davidson, fixed reference)
 Cluster corrected energies          -214.24323322 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24323848 (Davidson, rotated reference)

 Cluster corrected energies          -214.24101305 (Pople, fixed reference)
 Cluster corrected energies          -214.24100756 (Pople, relaxed reference)
 Cluster corrected energies          -214.24101305 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95727377 (fixed)   0.95727660 (relaxed)   0.95727377 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00178272   -0.00415639   -0.68812160
 Singles      0.01858973   -0.06436161   -0.07284584
 Pairs        0.07088616   -0.00000000   -0.05286196
 Total        1.09125861   -0.06851801   -0.81382939
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35514007
 Nuclear energy                         0.00000000
 Kinetic energy                        69.23500981
 One electron energy                 -367.98094686
 Two electron energy                  153.81197740
 Virial quotient                       -3.09336230
 Correlation energy                    -0.81382939
 !MRCI STATE 4.2 Energy              -214.168969461763

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24323840 (Davidson, fixed reference)
 Cluster corrected energies          -214.24323314 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24323840 (Davidson, rotated reference)

 Cluster corrected energies          -214.24101298 (Pople, fixed reference)
 Cluster corrected energies          -214.24100748 (Pople, relaxed reference)
 Cluster corrected energies          -214.24101298 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95727376 (fixed)   0.95727660 (relaxed)   0.95727376 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00178272   -0.00415639   -0.68812161
 Singles      0.01858972   -0.06436159   -0.07284583
 Pairs        0.07088618   -0.00000000   -0.05286196
 Total        1.09125862   -0.06851798   -0.81382939
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35514007
 Nuclear energy                         0.00000000
 Kinetic energy                        69.23501102
 One electron energy                 -367.98094748
 Two electron energy                  153.81197801
 Virial quotient                       -3.09336225
 Correlation energy                    -0.81382939
 !MRCI STATE 5.2 Energy              -214.168969461620

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24323841 (Davidson, fixed reference)
 Cluster corrected energies          -214.24323315 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24323841 (Davidson, rotated reference)

 Cluster corrected energies          -214.24101299 (Pople, fixed reference)
 Cluster corrected energies          -214.24100749 (Pople, relaxed reference)
 Cluster corrected energies          -214.24101299 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95727378 (fixed)   0.95727661 (relaxed)   0.95727378 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00178272   -0.00415639   -0.68812167
 Singles      0.01858967   -0.06436153   -0.07284579
 Pairs        0.07088620   -0.00000002   -0.05286194
 Total        1.09125859   -0.06851794   -0.81382939
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35514007
 Nuclear energy                         0.00000000
 Kinetic energy                        69.23501033
 One electron energy                 -367.98094625
 Two electron energy                  153.81197679
 Virial quotient                       -3.09336228
 Correlation energy                    -0.81382939
 !MRCI STATE 6.2 Energy              -214.168969461450

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24323838 (Davidson, fixed reference)
 Cluster corrected energies          -214.24323313 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24323838 (Davidson, rotated reference)

 Cluster corrected energies          -214.24101296 (Pople, fixed reference)
 Cluster corrected energies          -214.24100747 (Pople, relaxed reference)
 Cluster corrected energies          -214.24101296 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95716740 (fixed)   0.95739863 (relaxed)   0.95738567 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00166984   -0.00388574   -0.68967679
 Singles      0.01820556   -0.06358248   -0.07187651
 Pairs        0.07112812    0.00000000   -0.05310862
 Total        1.09100352   -0.06746822   -0.81466192
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35170892
 Nuclear energy                         0.00000000
 Kinetic energy                        69.26991027
 One electron energy                 -368.15646215
 Two electron energy                  153.99020116
 Virial quotient                       -3.09176467
 Correlation energy                    -0.81455208
 !MRCI STATE 7.2 Energy              -214.166260990694

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24038809 (Davidson, fixed reference)
 Cluster corrected energies          -214.24036405 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24038809 (Davidson, rotated reference)

 Cluster corrected energies          -214.23815147 (Pople, fixed reference)
 Cluster corrected energies          -214.23812637 (Pople, relaxed reference)
 Cluster corrected energies          -214.23815147 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.95717009 (fixed)   0.95717293 (relaxed)   0.95717009 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00181724   -0.00419385   -0.68828236
 Singles      0.01862311   -0.06442631   -0.07292032
 Pairs        0.07105467   -0.00000000   -0.05300079
 Total        1.09149502   -0.06862015   -0.81420347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35050373
 Nuclear energy                         0.00000000
 Kinetic energy                        69.23548849
 One electron energy                 -367.97845583
 Two electron energy                  153.81374862
 Virial quotient                       -3.09327936
 Correlation energy                    -0.81420347
 !MRCI STATE 8.2 Energy              -214.164707203761

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.23920277 (Davidson, fixed reference)
 Cluster corrected energies          -214.23919750 (Davidson, relaxed reference)
 Cluster corrected energies          -214.23920277 (Davidson, rotated reference)

 Cluster corrected energies          -214.23698495 (Pople, fixed reference)
 Cluster corrected energies          -214.23697945 (Pople, relaxed reference)
 Cluster corrected energies          -214.23698495 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95717009 (fixed)   0.95717293 (relaxed)   0.95717009 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00181724   -0.00419385   -0.68828238
 Singles      0.01862310   -0.06442629   -0.07292030
 Pairs        0.07105469    0.00000000   -0.05300079
 Total        1.09149503   -0.06862013   -0.81420347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35050373
 Nuclear energy                         0.00000000
 Kinetic energy                        69.23549024
 One electron energy                 -367.97845705
 Two electron energy                  153.81374985
 Virial quotient                       -3.09327928
 Correlation energy                    -0.81420347
 !MRCI STATE 9.2 Energy              -214.164707203540

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.23920277 (Davidson, fixed reference)
 Cluster corrected energies          -214.23919751 (Davidson, relaxed reference)
 Cluster corrected energies          -214.23920277 (Davidson, rotated reference)

 Cluster corrected energies          -214.23698495 (Pople, fixed reference)
 Cluster corrected energies          -214.23697945 (Pople, relaxed reference)
 Cluster corrected energies          -214.23698495 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Coefficient of reference function:   C(0) = 0.95717010 (fixed)   0.95717293 (relaxed)   0.95717010 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00181724   -0.00419385   -0.00519789
 Singles      0.01862305   -0.06442622   -0.07292027
 Pairs        0.07105471   -0.74558339   -0.73608532
 Total        1.09149501   -0.81420346   -0.81420347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35050373
 Nuclear energy                         0.00000000
 Kinetic energy                        69.23548948
 One electron energy                 -367.97845563
 Two electron energy                  153.81374843
 Virial quotient                       -3.09327931
 Correlation energy                    -0.81420347
 !MRCI STATE 10.2 Energy             -214.164707203250

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.23920276 (Davidson, fixed reference)
 Cluster corrected energies          -214.23919749 (Davidson, relaxed reference)
 Cluster corrected energies          -214.23920276 (Davidson, rotated reference)

 Cluster corrected energies          -214.23698494 (Pople, fixed reference)
 Cluster corrected energies          -214.23697944 (Pople, relaxed reference)
 Cluster corrected energies          -214.23698494 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5     1992.70       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *      2155.29   2136.81      8.08     10.00
 REAL TIME  *      2278.16 SEC
 DISK USED  *         2.04 GB (local),       34.00 GB (total)
 SF USED    *        18.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.48662041  AU                              
 SETTING HLSDIAG(2)     =      -214.24323849  AU                              
 SETTING HLSDIAG(3)     =      -214.24323848  AU                              
 SETTING HLSDIAG(4)     =      -214.24323840  AU                              
 SETTING HLSDIAG(5)     =      -214.24323841  AU                              
 SETTING HLSDIAG(6)     =      -214.24323838  AU                              
 SETTING HLSDIAG(7)     =      -214.24038809  AU                              
 SETTING HLSDIAG(8)     =      -214.23920277  AU                              
 SETTING HLSDIAG(9)     =      -214.23920277  AU                              
 SETTING HLSDIAG(10)    =      -214.23920276  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 23
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       50 conf       70 CSFs
 N elec internal:     7880 conf    26950 CSFs
 N-1 el internal:     5471 conf    28036 CSFs
 N-2 el internal:     2966 conf    21832 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  35

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.53286016
     2      -213.53286016
     3      -213.53286016
     4      -213.53286016
     5      -213.53286016
     6      -213.49570767
     7      -213.49570767
     8      -213.49570767

 Number of blocks in overlap matrix:   886   Smallest eigenvalue:  0.61D-03
 Number of N-2 electron functions:    1332
 Number of N-1 electron functions:   28036

 Number of internal configurations:                14896
 Number of singly external configurations:       3728792
 Number of doubly external configurations:      23394148
 Total number of contracted configurations:     27137836
 Total number of uncontracted configurations:  386701194

 Diagonal Coupling coefficients finished.               Storage:   7754009 words, CPU-Time:      4.61 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3509159 words, CPU-time:      4.44 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.53286016     0.00000000    -1.01648572  0.51D-01  0.13D+00    13.19
    1     2     2     1.00000000     0.00000000  -213.53286016     0.00000000    -1.01699103  0.51D-01  0.13D+00    13.19
    1     3     3     1.00000000     0.00000000  -213.53286016    -0.00000000    -1.01648416  0.51D-01  0.13D+00    13.19
    1     4     4     1.00000000     0.00000000  -213.53286016    -0.00000000    -1.01640593  0.51D-01  0.13D+00    13.19
    1     5     5     1.00000000     0.00000000  -213.53286016     0.00000000    -1.01705364  0.51D-01  0.13D+00    13.19
    1     6     6     1.00000000     0.00000000  -213.49570767    -0.00000000    -1.01567813  0.39D-01  0.14D+00    13.19
    1     7     7     1.00000000     0.00000000  -213.49570767     0.00000000    -1.01600391  0.39D-01  0.14D+00    13.19
    1     8     8     1.00000000     0.00000000  -213.49570767    -0.00000000    -1.01594118  0.39D-01  0.14D+00    13.19
    2     1     1     1.11096823    -0.80477727  -214.33763743    -0.80477727    -0.02839150  0.40D-02  0.24D-02   379.59
    2     2     2     1.11100029    -0.80473827  -214.33759843    -0.80473827    -0.02843506  0.40D-02  0.24D-02   379.59
    2     3     3     1.11103650    -0.80465854  -214.33751870    -0.80465854    -0.02852906  0.41D-02  0.24D-02   379.59
    2     4     4     1.11114149    -0.80459303  -214.33745319    -0.80459303    -0.02858796  0.40D-02  0.25D-02   379.59
    2     5     5     1.11131340    -0.80437549  -214.33723565    -0.80437549    -0.02883812  0.42D-02  0.24D-02   379.59
    2     6     6     1.10930015    -0.80809660  -214.30380428    -0.80809660    -0.02897173  0.39D-02  0.28D-02   379.59
    2     7     7     1.10943469    -0.80799808  -214.30370576    -0.80799808    -0.02907360  0.39D-02  0.29D-02   379.59
    2     8     8     1.10949046    -0.80799743  -214.30370511    -0.80799743    -0.02906255  0.39D-02  0.29D-02   379.59
    3     1     1     1.09468817    -0.83134046  -214.36420062    -0.02656319    -0.00039358  0.60D-04  0.40D-04   746.70
    3     2     2     1.09468653    -0.83133962  -214.36419979    -0.02660135    -0.00039454  0.60D-04  0.40D-04   746.70
    3     3     3     1.09468788    -0.83133792  -214.36419808    -0.02667938    -0.00039637  0.60D-04  0.41D-04   746.70
    3     4     4     1.09468262    -0.83133740  -214.36419756    -0.02674437    -0.00039670  0.61D-04  0.40D-04   746.70
    3     5     5     1.09469402    -0.83133317  -214.36419333    -0.02695768    -0.00040147  0.62D-04  0.41D-04   746.70
    3     6     6     1.09376402    -0.83511024  -214.33081792    -0.02701364    -0.00040315  0.48D-04  0.51D-04   746.70
    3     7     7     1.09376721    -0.83510839  -214.33081607    -0.02711031    -0.00040493  0.47D-04  0.52D-04   746.70
    3     8     8     1.09377257    -0.83510752  -214.33081519    -0.02711008    -0.00040549  0.48D-04  0.53D-04   746.70
    4     1     1     1.09388711    -0.83174554  -214.36460571    -0.00040508    -0.00001289  0.24D-05  0.13D-05  1114.28
    4     2     2     1.09388860    -0.83174551  -214.36460567    -0.00040589    -0.00001292  0.24D-05  0.13D-05  1114.28
    4     3     3     1.09388739    -0.83174547  -214.36460564    -0.00040755    -0.00001294  0.24D-05  0.13D-05  1114.28
    4     4     4     1.09388735    -0.83174545  -214.36460561    -0.00040805    -0.00001295  0.24D-05  0.13D-05  1114.28
    4     5     5     1.09388738    -0.83174537  -214.36460553    -0.00041220    -0.00001302  0.24D-05  0.13D-05  1114.28
    4     6     6     1.09302084    -0.83552099  -214.33122866    -0.00041075    -0.00001245  0.22D-05  0.14D-05  1114.28
    4     7     7     1.09302005    -0.83552095  -214.33122862    -0.00041256    -0.00001249  0.22D-05  0.14D-05  1114.28
    4     8     8     1.09302028    -0.83552093  -214.33122860    -0.00041341    -0.00001251  0.22D-05  0.14D-05  1114.28
    5     1     1     1.09383765    -0.83175934  -214.36461951    -0.00001380    -0.00000043  0.49D-07  0.51D-07  1482.27
    5     2     2     1.09383741    -0.83175934  -214.36461951    -0.00001383    -0.00000044  0.51D-07  0.51D-07  1482.27
    5     3     3     1.09383709    -0.83175934  -214.36461950    -0.00001387    -0.00000043  0.50D-07  0.51D-07  1482.27
    5     4     4     1.09383740    -0.83175934  -214.36461950    -0.00001388    -0.00000044  0.51D-07  0.51D-07  1482.27
    5     5     5     1.09383751    -0.83175933  -214.36461950    -0.00001396    -0.00000044  0.51D-07  0.52D-07  1482.27
    5     6     6     1.09300698    -0.83553443  -214.33124210    -0.00001344    -0.00000040  0.44D-07  0.52D-07  1482.27
    5     7     7     1.09300748    -0.83553443  -214.33124210    -0.00001348    -0.00000040  0.44D-07  0.52D-07  1482.27
    5     8     8     1.09300714    -0.83553443  -214.33124210    -0.00001350    -0.00000040  0.45D-07  0.52D-07  1482.27
    6     1     1     1.09383118    -0.83175979  -214.36461996    -0.00000045    -0.00000001  0.13D-08  0.16D-08  1851.95
    6     2     2     1.09383118    -0.83175979  -214.36461995    -0.00000044    -0.00000001  0.13D-08  0.16D-08  1851.95
    6     3     3     1.09383131    -0.83175979  -214.36461995    -0.00000045    -0.00000001  0.12D-08  0.16D-08  1851.95
    6     4     4     1.09383126    -0.83175979  -214.36461995    -0.00000045    -0.00000001  0.12D-08  0.16D-08  1851.95
    6     5     5     1.09383117    -0.83175979  -214.36461995    -0.00000045    -0.00000001  0.13D-08  0.17D-08  1851.95
    6     6     6     1.09300266    -0.83553485  -214.33124252    -0.00000042    -0.00000001  0.14D-08  0.15D-08  1851.95
    6     7     7     1.09300261    -0.83553485  -214.33124252    -0.00000042    -0.00000001  0.14D-08  0.15D-08  1851.95
    6     8     8     1.09300273    -0.83553485  -214.33124252    -0.00000042    -0.00000001  0.14D-08  0.15D-08  1851.95


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%   6.4%
 P   0.4%  23.3%  29.1%

 Initialization:   0.5%
 Other:           39.5%

 Total CPU:     1851.9 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000           0.0000000  -0.0000000  -0.4429149   0.8456008  -0.0000000   0.0000000  -0.0000000  -0.0000000
 2222222222//\000           0.0000000  -0.0000000   0.8456008   0.4429149   0.0000000   0.0000000  -0.0000000   0.0000000
 22222222222/0000           0.0000000   0.6749869  -0.0000000   0.0000000   0.0000000   0.6716366  -0.0000000  -0.0000000
 2222222222/20000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.6749869   0.0000000  -0.0000000   0.6716366
 222222222220/000           0.6749869  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.6716366  -0.0000000
 222222222202/000          -0.6749869   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.6716366  -0.0000000
 22222222220/2000          -0.0000000  -0.6749868  -0.0000000  -0.0000000   0.0000000   0.6716366   0.0000000   0.0000000
 2222222222/02000          -0.0000000   0.0000000  -0.0000000   0.0000000   0.6749868  -0.0000000   0.0000000   0.6716366
 2222222222//00\0           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0310787  -0.0000000   0.0000000   0.0650952
 22222222220//\00          -0.0000000  -0.0310786   0.0000000  -0.0000000  -0.0000000   0.0650948  -0.0000000  -0.0000000
 22222222220//0\0           0.0310791   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0650948  -0.0000000
 2222222222/0/00\          -0.0310791  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0650948  -0.0000000
 2222222222//000\           0.0000000  -0.0310791   0.0000000   0.0000000  -0.0000000  -0.0650948   0.0000000  -0.0000000
 2222222222/0/\00          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0310786   0.0000000   0.0000000   0.0650948

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000   -0.000000    0.955794    0.000000    0.000000   -0.000000    0.000000
 2           0.955794   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000    0.619980   -0.000000   -0.000000   -0.727439   -0.000000   -0.000000    0.000000
 4           0.000000    0.727439    0.000000   -0.000000    0.619980   -0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.955794    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.955071   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.955071
 8          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.955071   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955794    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.955794    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.955794   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.955794   -0.000000    0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.955794    0.000000    0.000000   -0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.000000    0.955071   -0.000000   -0.000000
 7           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.955071    0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.955071


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95579406 (fixed)   0.95584472 (relaxed)   0.95579406 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00073951   -0.00171851   -0.70701895
 Singles      0.01668492   -0.05844365   -0.06607175
 Pairs        0.07721566    0.00000005   -0.05866909
 Total        1.09464009   -0.06016212   -0.83175979
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53286016
 Nuclear energy                         0.00000000
 Kinetic energy                        69.51037853
 One electron energy                 -372.39156272
 Two electron energy                  158.02694277
 Virial quotient                       -3.08392249
 Correlation energy                    -0.83175979
 !MRCI STATE 1.2 Energy              -214.364619955838

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44333777 (Davidson, fixed reference)
 Cluster corrected energies          -214.44324127 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44333777 (Davidson, rotated reference)

 Cluster corrected energies          -214.44212057 (Pople, fixed reference)
 Cluster corrected energies          -214.44201777 (Pople, relaxed reference)
 Cluster corrected energies          -214.44212057 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95579406 (fixed)   0.95584472 (relaxed)   0.95579406 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00073951   -0.00171851   -0.70701891
 Singles      0.01668489   -0.05844364   -0.06607173
 Pairs        0.07721568   -0.00000000   -0.05866915
 Total        1.09464008   -0.06016216   -0.83175979
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53286016
 Nuclear energy                         0.00000000
 Kinetic energy                        69.51037881
 One electron energy                 -372.39156342
 Two electron energy                  158.02694347
 Virial quotient                       -3.08392248
 Correlation energy                    -0.83175979
 !MRCI STATE 2.2 Energy              -214.364619950033

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44333777 (Davidson, fixed reference)
 Cluster corrected energies          -214.44324126 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44333777 (Davidson, rotated reference)

 Cluster corrected energies          -214.44212056 (Pople, fixed reference)
 Cluster corrected energies          -214.44201776 (Pople, relaxed reference)
 Cluster corrected energies          -214.44212056 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.72743864 (fixed)   0.95584466 (relaxed)   0.95579400 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00073951   -0.00171851   -0.70701881
 Singles      0.01668494   -0.05844367   -0.06607172
 Pairs        0.07721576   -0.00000000   -0.05866926
 Total        1.09464021   -0.06016218   -0.83175979
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53286016
 Nuclear energy                         0.00000000
 Kinetic energy                        69.51038944
 One electron energy                 -372.39158501
 Two electron energy                  158.02696506
 Virial quotient                       -3.08392201
 Correlation energy                    -0.83175979
 !MRCI STATE 3.2 Energy              -214.364619948176

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44333787 (Davidson, fixed reference)
 Cluster corrected energies          -214.44324136 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44333787 (Davidson, rotated reference)

 Cluster corrected energies          -214.44212067 (Pople, fixed reference)
 Cluster corrected energies          -214.44201787 (Pople, relaxed reference)
 Cluster corrected energies          -214.44212067 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.72743864 (fixed)   0.95584469 (relaxed)   0.95579403 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00073951   -0.00171851   -0.70701871
 Singles      0.01668503   -0.05844381   -0.06607187
 Pairs        0.07721562   -0.00000000   -0.05866921
 Total        1.09464016   -0.06016232   -0.83175979
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53286016
 Nuclear energy                         0.00000000
 Kinetic energy                        69.51039086
 One electron energy                 -372.39158311
 Two electron energy                  158.02696316
 Virial quotient                       -3.08392195
 Correlation energy                    -0.83175979
 !MRCI STATE 4.2 Energy              -214.364619947923

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44333782 (Davidson, fixed reference)
 Cluster corrected energies          -214.44324132 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44333782 (Davidson, rotated reference)

 Cluster corrected energies          -214.44212062 (Pople, fixed reference)
 Cluster corrected energies          -214.44201782 (Pople, relaxed reference)
 Cluster corrected energies          -214.44212062 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95579406 (fixed)   0.95584472 (relaxed)   0.95579406 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00073951   -0.00171851   -0.70701903
 Singles      0.01668478   -0.05844352   -0.06607162
 Pairs        0.07721578    0.00000000   -0.05866913
 Total        1.09464007   -0.06016203   -0.83175979
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53286016
 Nuclear energy                         0.00000000
 Kinetic energy                        69.51037988
 One electron energy                 -372.39156518
 Two electron energy                  158.02694524
 Virial quotient                       -3.08392243
 Correlation energy                    -0.83175979
 !MRCI STATE 5.2 Energy              -214.364619947715

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44333775 (Davidson, fixed reference)
 Cluster corrected energies          -214.44324124 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44333775 (Davidson, rotated reference)

 Cluster corrected energies          -214.44212054 (Pople, fixed reference)
 Cluster corrected energies          -214.44201774 (Pople, relaxed reference)
 Cluster corrected energies          -214.44212054 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95507088 (fixed)   0.95515918 (relaxed)   0.95507088 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00301534   -0.00606292   -0.71734063
 Singles      0.01296146   -0.05163486   -0.05698090
 Pairs        0.08032163   -0.00000000   -0.06121332
 Total        1.09629843   -0.05769778   -0.83553485
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.49570767
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48538857
 One electron energy                 -372.20553872
 Two electron energy                  157.87429620
 Virial quotient                       -3.08455126
 Correlation energy                    -0.83553485
 !MRCI STATE 6.2 Energy              -214.331242524806

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41170322 (Davidson, fixed reference)
 Cluster corrected energies          -214.41153388 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41170322 (Davidson, rotated reference)

 Cluster corrected energies          -214.41057309 (Pople, fixed reference)
 Cluster corrected energies          -214.41039221 (Pople, relaxed reference)
 Cluster corrected energies          -214.41057309 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95507090 (fixed)   0.95515920 (relaxed)   0.95507090 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00301534   -0.00606293   -0.00782848
 Singles      0.01296147   -0.05163487   -0.05698090
 Pairs        0.08032157   -0.77783706   -0.77072547
 Total        1.09629838   -0.83553485   -0.83553485
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.49570767
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48539011
 One electron energy                 -372.20554002
 Two electron energy                  157.87429750
 Virial quotient                       -3.08455119
 Correlation energy                    -0.83553485
 !MRCI STATE 7.2 Energy              -214.331242524544

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41170318 (Davidson, fixed reference)
 Cluster corrected energies          -214.41153384 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41170318 (Davidson, rotated reference)

 Cluster corrected energies          -214.41057305 (Pople, fixed reference)
 Cluster corrected energies          -214.41039217 (Pople, relaxed reference)
 Cluster corrected energies          -214.41057305 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95507085 (fixed)   0.95515914 (relaxed)   0.95507085 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00301534   -0.00606293   -0.71734062
 Singles      0.01296144   -0.05163483   -0.05698086
 Pairs        0.08032173    0.00000000   -0.06121337
 Total        1.09629851   -0.05769776   -0.83553485
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.49570767
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48538736
 One electron energy                 -372.20553684
 Two electron energy                  157.87429432
 Virial quotient                       -3.08455131
 Correlation energy                    -0.83553485
 !MRCI STATE 8.2 Energy              -214.331242523766

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41170328 (Davidson, fixed reference)
 Cluster corrected energies          -214.41153394 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41170328 (Davidson, rotated reference)

 Cluster corrected energies          -214.41057317 (Pople, fixed reference)
 Cluster corrected energies          -214.41039228 (Pople, relaxed reference)
 Cluster corrected energies          -214.41057317 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     3655.78       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      4140.15   1984.85   2136.81      8.08     10.00
 REAL TIME  *      4359.16 SEC
 DISK USED  *         3.66 GB (local),       59.99 GB (total)
 SF USED    *        18.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -214.44333777  AU                              
 SETTING HLSDIAG(12)    =      -214.44333777  AU                              
 SETTING HLSDIAG(13)    =      -214.44333787  AU                              
 SETTING HLSDIAG(14)    =      -214.44333782  AU                              
 SETTING HLSDIAG(15)    =      -214.44333775  AU                              
 SETTING HLSDIAG(16)    =      -214.41170322  AU                              
 SETTING HLSDIAG(17)    =      -214.41170318  AU                              
 SETTING HLSDIAG(18)    =      -214.41170328  AU                              


         HLSDIAG
    -214.4866204
    -214.2432385
    -214.2432385
    -214.2432384
    -214.2432384
    -214.2432384
    -214.2403881
    -214.2392028
    -214.2392028
    -214.2392028
    -214.4433378
    -214.4433378
    -214.4433379
    -214.4433378
    -214.4433378
    -214.4117032
    -214.4117032
    -214.4117033
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=  10

 Original energies:   -214.412773   -214.168969   -214.168969   -214.168969   -214.168969   -214.168969   -214.166261   -214.164707
                      -214.164707   -214.164707
 Replaced energies:   -214.486620   -214.243238   -214.243238   -214.243238   -214.243238   -214.243238   -214.240388   -214.239203
                      -214.239203   -214.239203

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.364620   -214.364620   -214.364620   -214.364620   -214.364620   -214.331243   -214.331243   -214.331243
 Replaced energies:   -214.443338   -214.443338   -214.443338   -214.443338   -214.443338   -214.411703   -214.411703   -214.411703



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.48662041

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00   -2132.84       0.00       0.00

    2   2.2  1.5  1.5       0.00   53416.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00   -5136.13      -0.00      -0.00      -0.00    -824.93      -0.00      -0.00

    3   3.2  1.5  1.5       0.00       0.00   53416.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    1643.16       0.00      -0.00       0.00   -2578.52       0.00       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00   53416.18       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    5136.13   -1643.16      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00   53416.18       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00   -2696.29       0.00      -0.00      -0.00   -2344.58

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   53416.18       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00    2696.29      -0.00      -0.00      -0.00    2344.58       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   54041.75       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00   -3704.02      -0.00       0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54301.90       0.00       0.00
                         2132.84     824.93    2578.52      -0.00       0.00       0.00    3704.02      -0.00       0.00       0.00

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54301.90       0.00
                           -0.00       0.00      -0.00      -0.00       0.00   -2344.58       0.00      -0.00       0.00   -2684.21

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54301.90
                           -0.00       0.00      -0.00      -0.00    2344.58      -0.00      -0.00      -0.00    2684.21       0.00

   11   1.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00    1231.40       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    1231.40

   12   2.2  1.5  0.5      -0.00       0.00       0.00      -0.00   -2304.25      -0.00       0.00       0.00    1051.12       0.00
                            0.00       0.00      -0.00       0.00       0.00     661.09      -0.00       0.00      -0.00   -1527.40

   13   3.2  1.5  0.5      -0.00      -0.00      -0.00       0.00   -2093.72       0.00       0.00      -0.00   -1156.82       0.00
                           -0.00       0.00       0.00       0.00      -0.00   -3042.40       0.00       0.00      -0.00    -331.89

   14   4.2  1.5  0.5      -0.00       0.00      -0.00      -0.00       0.00   -1556.70       0.00       0.00      -0.00    1353.64
                           -0.00      -0.00      -0.00       0.00   -1556.71       0.00      -0.00       0.00    1353.64      -0.00

   15   5.2  1.5  0.5      -0.00    2304.25    2093.72      -0.00      -0.00      -0.00      -0.01       0.00       0.00       0.00
                            0.00      -0.00       0.00    1556.71      -0.00       0.00       0.00    1353.64      -0.00       0.00

   16   6.2  1.5  0.5       0.00       0.00      -0.00    1556.70       0.00       0.00       0.00   -1353.64       0.00       0.00
                           -0.00    -661.09    3042.40      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   17   7.2  1.5  0.5       0.00      -0.00      -0.00      -0.00       0.01      -0.00      -0.00       0.00    2138.51       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    2138.51

   18   8.2  1.5  0.5       0.00      -0.00       0.00      -0.00      -0.00    1353.64      -0.00      -0.00      -0.00   -1549.73
                           -0.00      -0.00      -0.00      -0.00   -1353.64      -0.00      -0.00      -0.00    1549.73      -0.00

   19   9.2  1.5  0.5   -1231.40   -1051.12    1156.82       0.00      -0.00      -0.00   -2138.51       0.00       0.00      -0.00
                           -0.00       0.00       0.00   -1353.64       0.00      -0.00      -0.00   -1549.73       0.00       0.00

   20  10.2  1.5  0.5      -0.00      -0.00      -0.00   -1353.64      -0.00      -0.00      -0.00    1549.73       0.00       0.00
                        -1231.40    1527.40     331.89       0.00      -0.00      -0.00   -2138.51       0.00      -0.00       0.00

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

   41   1.2  0.5  0.5      -0.00   -1240.42   -1127.09      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00    -838.02      -0.00       0.00      -0.00     745.06      -0.00      -0.00

   42   2.2  0.5  0.5      -0.00       0.00      -0.00      -0.00       0.00    -838.01       0.00      -0.00      -0.00    -745.05
                            0.00      -0.00      -0.00       0.00    -838.02       0.00       0.00      -0.00    -745.06       0.00

   43   3.2  0.5  0.5       0.00       0.00       0.00       0.00     777.65       0.00       0.00      -0.00    -762.09       0.00
                            0.00      -0.00       0.00       0.00       0.00    1674.57      -0.00      -0.00       0.00      35.35

   44   4.2  0.5  0.5      -0.00      -0.00       0.00       0.00   -1484.66      -0.00       0.00      -0.00    -399.17       0.00
                            0.00      -0.00       0.00       0.00       0.00     -68.87      -0.00      -0.00      -0.00     859.57

   45   5.2  0.5  0.5       0.00      -0.00      -0.00     838.02       0.00      -0.00       0.00     745.06      -0.00      -0.00
                           -0.00    -355.88    1637.79      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   46   6.2  0.5  0.5      -0.00      -0.00      -0.00      -0.00       0.00    -646.13       0.00      -0.00       0.00    -767.13
                            0.00       0.00      -0.00      -0.00     646.13       0.00      -0.00       0.00     767.13      -0.00

   47   7.2  0.5  0.5   -6275.68     501.73    -552.17       0.00       0.00       0.00     622.55      -0.00      -0.00       0.00
                           -0.00       0.00       0.00     646.13      -0.00       0.00       0.00    -767.13       0.00       0.00

   48   8.2  0.5  0.5       0.00       0.00      -0.00    -646.13       0.00       0.00      -0.00    -767.12       0.00       0.00
                         6275.68     729.07     158.43       0.00      -0.00      -0.00    -622.55      -0.00       0.00      -0.00

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

    1   1.2  1.5  1.5      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00   -1231.40      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    1231.40

    2   2.2  1.5  1.5       0.00       0.00      -0.00       0.00    2304.25       0.00      -0.00      -0.00   -1051.12      -0.00
                            0.00      -0.00      -0.00       0.00       0.00     661.09      -0.00       0.00      -0.00   -1527.40

    3   3.2  1.5  1.5       0.00       0.00      -0.00      -0.00    2093.72      -0.00      -0.00       0.00    1156.82      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00   -3042.40       0.00       0.00      -0.00    -331.89

    4   4.2  1.5  1.5       0.00      -0.00       0.00      -0.00      -0.00    1556.70      -0.00      -0.00       0.00   -1353.64
                           -0.00      -0.00      -0.00      -0.00   -1556.71       0.00      -0.00       0.00    1353.64      -0.00

    5   5.2  1.5  1.5       0.00   -2304.25   -2093.72       0.00      -0.00       0.00       0.01      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00    1556.71       0.00       0.00       0.00    1353.64      -0.00       0.00

    6   6.2  1.5  1.5      -0.00      -0.00       0.00   -1556.70      -0.00       0.00      -0.00    1353.64      -0.00      -0.00
                           -0.00    -661.09    3042.40      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5      -0.00       0.00       0.00       0.00      -0.01       0.00      -0.00      -0.00   -2138.51      -0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    2138.51

    8   8.2  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00   -1353.64       0.00      -0.00       0.00    1549.73
                           -0.00      -0.00      -0.00      -0.00   -1353.64      -0.00      -0.00       0.00    1549.73      -0.00

    9   9.2  1.5  1.5    1231.40    1051.12   -1156.82      -0.00       0.00       0.00    2138.51      -0.00       0.00       0.00
                           -0.00       0.00       0.00   -1353.64       0.00      -0.00      -0.00   -1549.73      -0.00       0.00

   10  10.2  1.5  1.5       0.00       0.00       0.00    1353.64       0.00       0.00       0.00   -1549.73      -0.00       0.00
                        -1231.40    1527.40     331.89       0.00      -0.00      -0.00   -2138.51       0.00      -0.00      -0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -710.95       0.00       0.00

   12   2.2  1.5  0.5       0.00   53416.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00   -1712.04      -0.00      -0.00      -0.00    -274.98      -0.00      -0.00

   13   3.2  1.5  0.5       0.00       0.00   53416.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     547.72       0.00      -0.00       0.00    -859.51       0.00       0.00

   14   4.2  1.5  0.5       0.00       0.00       0.00   53416.18       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1712.04    -547.72      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00   53416.18       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00    -898.76       0.00      -0.00      -0.00    -781.53

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00   53416.18       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     898.76      -0.00      -0.00      -0.00     781.53       0.00

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   54041.75       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00   -1234.67      -0.00       0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54301.90       0.00       0.00
                          710.95     274.98     859.51      -0.00       0.00       0.00    1234.67      -0.00       0.00       0.00

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54301.90       0.00
                           -0.00       0.00      -0.00      -0.00       0.00    -781.53       0.00      -0.00       0.00    -894.74

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54301.90
                           -0.00       0.00      -0.00      -0.00     781.53      -0.00      -0.00      -0.00     894.74       0.00

   21   1.2  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00    1421.89       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    1421.89

   22   2.2  1.5 -0.5      -0.00       0.00       0.00      -0.00   -2660.72      -0.00       0.00       0.00    1213.73       0.00
                            0.00       0.00      -0.00       0.00       0.00     763.37      -0.00       0.00      -0.00   -1763.68

   23   3.2  1.5 -0.5      -0.00      -0.00      -0.00       0.00   -2417.62       0.00       0.00      -0.00   -1335.78       0.00
                           -0.00       0.00       0.00       0.00      -0.00   -3513.06       0.00       0.00      -0.00    -383.24

   24   4.2  1.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00   -1797.53       0.00       0.00      -0.00    1563.05
                           -0.00      -0.00      -0.00       0.00   -1797.53       0.00      -0.00       0.00    1563.05      -0.00

   25   5.2  1.5 -0.5      -0.00    2660.72    2417.62      -0.00      -0.00      -0.00      -0.01       0.00       0.00       0.00
                            0.00      -0.00       0.00    1797.53      -0.00       0.00       0.00    1563.05      -0.00       0.00

   26   6.2  1.5 -0.5       0.00       0.00      -0.00    1797.53       0.00       0.00       0.00   -1563.05       0.00       0.00
                           -0.00    -763.37    3513.06      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   27   7.2  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.01      -0.00      -0.00       0.00    2469.33       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    2469.33

   28   8.2  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00    1563.05      -0.00      -0.00      -0.00   -1789.48
                           -0.00      -0.00      -0.00      -0.00   -1563.05      -0.00      -0.00      -0.00    1789.48      -0.00

   29   9.2  1.5 -0.5   -1421.89   -1213.73    1335.78       0.00      -0.00      -0.00   -2469.33       0.00       0.00      -0.00
                           -0.00       0.00       0.00   -1563.05       0.00      -0.00      -0.00   -1789.48       0.00       0.00

   30  10.2  1.5 -0.5      -0.00      -0.00      -0.00   -1563.05      -0.00      -0.00      -0.00    1789.48       0.00       0.00
                        -1421.89    1763.68     383.24       0.00      -0.00      -0.00   -2469.33       0.00      -0.00       0.00

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
                           -0.00      -0.00      -0.00       0.00       0.00    -967.66       0.00       0.00      -0.00     860.32

   42   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1843.25     589.70       0.00       0.00      -0.00       0.01      -0.00      -0.00      -0.00

   43   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    1035.68       0.00      -0.00       0.00     839.16      -0.00      -0.00

   44   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    1634.82      -0.00      -0.00       0.00    -531.63       0.00       0.00

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00    -967.66       0.00      -0.00       0.00     860.32      -0.00

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -7246.53     262.51     820.53       0.00       0.00       0.00     718.85      -0.00      -0.00       0.00

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    -746.09       0.00      -0.00       0.00     885.80

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -746.08      -0.00      -0.00       0.00     885.79       0.00

   49   1.2  0.5 -0.5      -0.00    -716.16    -650.72      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00    -483.83      -0.00       0.00      -0.00     430.16      -0.00      -0.00

   50   2.2  0.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00    -483.83       0.00      -0.00      -0.00    -430.16
                            0.00      -0.00      -0.00       0.00    -483.83       0.00       0.00      -0.00    -430.16       0.00

   51   3.2  0.5 -0.5       0.00       0.00       0.00       0.00     448.97       0.00       0.00      -0.00    -439.99       0.00
                            0.00      -0.00       0.00       0.00       0.00     966.82      -0.00      -0.00       0.00      20.41

   52   4.2  0.5 -0.5      -0.00      -0.00       0.00       0.00    -857.17      -0.00       0.00      -0.00    -230.46       0.00
                            0.00      -0.00       0.00       0.00       0.00     -39.76      -0.00      -0.00      -0.00     496.28

   53   5.2  0.5 -0.5       0.00      -0.00      -0.00     483.83       0.00      -0.00       0.00     430.16      -0.00      -0.00
                           -0.00    -205.47     945.58      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   54   6.2  0.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00    -373.05       0.00      -0.00       0.00    -442.90
                            0.00       0.00      -0.00      -0.00     373.05       0.00      -0.00       0.00     442.90      -0.00

   55   7.2  0.5 -0.5   -3623.27     289.67    -318.80       0.00       0.00       0.00     359.43      -0.00      -0.00       0.00
                           -0.00       0.00       0.00     373.05      -0.00       0.00       0.00    -442.90       0.00       0.00

   56   8.2  0.5 -0.5       0.00       0.00      -0.00    -373.04       0.00       0.00      -0.00    -442.90       0.00       0.00
                         3623.27     420.93      91.47       0.00      -0.00      -0.00    -359.43      -0.00       0.00      -0.00


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

   11   1.2  1.5  0.5      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00   -1421.89      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    1421.89

   12   2.2  1.5  0.5       0.00       0.00      -0.00       0.00    2660.72       0.00      -0.00      -0.00   -1213.73      -0.00
                            0.00      -0.00      -0.00       0.00       0.00     763.37      -0.00       0.00      -0.00   -1763.68

   13   3.2  1.5  0.5       0.00       0.00      -0.00      -0.00    2417.62      -0.00      -0.00       0.00    1335.78      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00   -3513.06       0.00       0.00      -0.00    -383.24

   14   4.2  1.5  0.5       0.00      -0.00       0.00      -0.00      -0.00    1797.53      -0.00      -0.00       0.00   -1563.05
                           -0.00      -0.00      -0.00      -0.00   -1797.53       0.00      -0.00       0.00    1563.05      -0.00

   15   5.2  1.5  0.5       0.00   -2660.72   -2417.62       0.00      -0.00       0.00       0.01      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00    1797.53       0.00       0.00       0.00    1563.05      -0.00       0.00

   16   6.2  1.5  0.5      -0.00      -0.00       0.00   -1797.53      -0.00       0.00      -0.00    1563.05      -0.00      -0.00
                           -0.00    -763.37    3513.06      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   17   7.2  1.5  0.5      -0.00       0.00       0.00       0.00      -0.01       0.00      -0.00      -0.00   -2469.33      -0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    2469.33

   18   8.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00   -1563.05       0.00      -0.00       0.00    1789.48
                           -0.00      -0.00      -0.00      -0.00   -1563.05      -0.00      -0.00       0.00    1789.48      -0.00

   19   9.2  1.5  0.5    1421.89    1213.73   -1335.78      -0.00       0.00       0.00    2469.33      -0.00       0.00       0.00
                           -0.00       0.00       0.00   -1563.05       0.00      -0.00      -0.00   -1789.48      -0.00       0.00

   20  10.2  1.5  0.5       0.00       0.00       0.00    1563.05       0.00       0.00       0.00   -1789.48      -0.00       0.00
                        -1421.89    1763.68     383.24       0.00      -0.00      -0.00   -2469.33       0.00      -0.00      -0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00     710.95      -0.00      -0.00

   22   2.2  1.5 -0.5       0.00   53416.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    1712.04       0.00       0.00       0.00     274.98       0.00       0.00

   23   3.2  1.5 -0.5       0.00       0.00   53416.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -547.72      -0.00       0.00      -0.00     859.51      -0.00      -0.00

   24   4.2  1.5 -0.5       0.00       0.00       0.00   53416.18       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1712.04     547.72       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00   53416.18       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00     898.76      -0.00       0.00       0.00     781.53

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   53416.18       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00    -898.76       0.00       0.00       0.00    -781.53      -0.00

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   54041.75       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00    1234.67       0.00      -0.00

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54301.90       0.00       0.00
                         -710.95    -274.98    -859.51       0.00      -0.00      -0.00   -1234.67       0.00      -0.00      -0.00

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54301.90       0.00
                            0.00      -0.00       0.00       0.00      -0.00     781.53      -0.00       0.00      -0.00     894.74

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54301.90
                            0.00      -0.00       0.00       0.00    -781.53       0.00       0.00       0.00    -894.74      -0.00

   31   1.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00    1231.40       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    1231.40

   32   2.2  1.5 -1.5      -0.00       0.00       0.00      -0.00   -2304.25      -0.00       0.00       0.00    1051.12       0.00
                            0.00       0.00      -0.00       0.00       0.00     661.09      -0.00       0.00      -0.00   -1527.40

   33   3.2  1.5 -1.5      -0.00      -0.00      -0.00       0.00   -2093.72       0.00       0.00      -0.00   -1156.82       0.00
                           -0.00       0.00       0.00       0.00      -0.00   -3042.40       0.00       0.00      -0.00    -331.89

   34   4.2  1.5 -1.5      -0.00       0.00      -0.00      -0.00       0.00   -1556.70       0.00       0.00      -0.00    1353.64
                           -0.00      -0.00      -0.00       0.00   -1556.71       0.00      -0.00       0.00    1353.64      -0.00

   35   5.2  1.5 -1.5      -0.00    2304.25    2093.72      -0.00      -0.00      -0.00      -0.01       0.00       0.00       0.00
                            0.00      -0.00       0.00    1556.71      -0.00       0.00       0.00    1353.64      -0.00       0.00

   36   6.2  1.5 -1.5       0.00       0.00      -0.00    1556.70       0.00       0.00       0.00   -1353.64       0.00       0.00
                           -0.00    -661.09    3042.40      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   37   7.2  1.5 -1.5       0.00      -0.00      -0.00      -0.00       0.01      -0.00      -0.00       0.00    2138.51       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    2138.51

   38   8.2  1.5 -1.5       0.00      -0.00       0.00      -0.00      -0.00    1353.64      -0.00      -0.00      -0.00   -1549.73
                           -0.00      -0.00      -0.00      -0.00   -1353.64      -0.00      -0.00      -0.00    1549.73      -0.00

   39   9.2  1.5 -1.5   -1231.40   -1051.12    1156.82       0.00      -0.00      -0.00   -2138.51       0.00       0.00      -0.00
                           -0.00       0.00       0.00   -1353.64       0.00      -0.00      -0.00   -1549.73       0.00       0.00

   40  10.2  1.5 -1.5      -0.00      -0.00      -0.00   -1353.64      -0.00      -0.00      -0.00    1549.73       0.00       0.00
                        -1231.40    1527.40     331.89       0.00      -0.00      -0.00   -2138.51       0.00      -0.00       0.00

   41   1.2  0.5  0.5      -0.00    -716.16    -650.72      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00     483.83       0.00      -0.00       0.00    -430.16       0.00       0.00

   42   2.2  0.5  0.5      -0.00       0.00      -0.00      -0.00       0.00    -483.83       0.00      -0.00      -0.00    -430.16
                           -0.00       0.00       0.00      -0.00     483.83      -0.00      -0.00       0.00     430.16      -0.00

   43   3.2  0.5  0.5       0.00       0.00       0.00       0.00     448.97       0.00       0.00      -0.00    -439.99       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00    -966.82       0.00       0.00      -0.00     -20.41

   44   4.2  0.5  0.5      -0.00      -0.00       0.00       0.00    -857.17      -0.00       0.00      -0.00    -230.46       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      39.76       0.00       0.00       0.00    -496.28

   45   5.2  0.5  0.5       0.00      -0.00      -0.00     483.83       0.00      -0.00       0.00     430.16      -0.00      -0.00
                            0.00     205.47    -945.58       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   46   6.2  0.5  0.5      -0.00      -0.00      -0.00      -0.00       0.00    -373.05       0.00      -0.00       0.00    -442.90
                           -0.00      -0.00       0.00       0.00    -373.05      -0.00       0.00      -0.00    -442.90       0.00

   47   7.2  0.5  0.5   -3623.27     289.67    -318.80       0.00       0.00       0.00     359.43      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00    -373.05       0.00      -0.00      -0.00     442.90      -0.00      -0.00

   48   8.2  0.5  0.5       0.00       0.00      -0.00    -373.04       0.00       0.00      -0.00    -442.90       0.00       0.00
                        -3623.27    -420.93     -91.47      -0.00       0.00       0.00     359.43       0.00      -0.00       0.00

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00    -967.66       0.00       0.00      -0.00     860.32

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1843.25     589.70       0.00       0.00      -0.00       0.01      -0.00      -0.00      -0.00

   51   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    1035.68       0.00      -0.00       0.00     839.16      -0.00      -0.00

   52   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    1634.82      -0.00      -0.00       0.00    -531.63       0.00       0.00

   53   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00    -967.66       0.00      -0.00       0.00     860.32      -0.00

   54   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -7246.53     262.51     820.53       0.00       0.00       0.00     718.85      -0.00      -0.00       0.00

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    -746.09       0.00      -0.00       0.00     885.80

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -746.08      -0.00      -0.00       0.00     885.79       0.00


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

   21   1.2  1.5 -0.5      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00   -1231.40      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    1231.40

   22   2.2  1.5 -0.5       0.00       0.00      -0.00       0.00    2304.25       0.00      -0.00      -0.00   -1051.12      -0.00
                            0.00      -0.00      -0.00       0.00       0.00     661.09      -0.00       0.00      -0.00   -1527.40

   23   3.2  1.5 -0.5       0.00       0.00      -0.00      -0.00    2093.72      -0.00      -0.00       0.00    1156.82      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00   -3042.40       0.00       0.00      -0.00    -331.89

   24   4.2  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00    1556.70      -0.00      -0.00       0.00   -1353.64
                           -0.00      -0.00      -0.00      -0.00   -1556.71       0.00      -0.00       0.00    1353.64      -0.00

   25   5.2  1.5 -0.5       0.00   -2304.25   -2093.72       0.00      -0.00       0.00       0.01      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00    1556.71       0.00       0.00       0.00    1353.64      -0.00       0.00

   26   6.2  1.5 -0.5      -0.00      -0.00       0.00   -1556.70      -0.00       0.00      -0.00    1353.64      -0.00      -0.00
                           -0.00    -661.09    3042.40      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   27   7.2  1.5 -0.5      -0.00       0.00       0.00       0.00      -0.01       0.00      -0.00      -0.00   -2138.51      -0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    2138.51

   28   8.2  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00   -1353.64       0.00      -0.00       0.00    1549.73
                           -0.00      -0.00      -0.00      -0.00   -1353.64      -0.00      -0.00       0.00    1549.73      -0.00

   29   9.2  1.5 -0.5    1231.40    1051.12   -1156.82      -0.00       0.00       0.00    2138.51      -0.00       0.00       0.00
                           -0.00       0.00       0.00   -1353.64       0.00      -0.00      -0.00   -1549.73      -0.00       0.00

   30  10.2  1.5 -0.5       0.00       0.00       0.00    1353.64       0.00       0.00       0.00   -1549.73      -0.00       0.00
                        -1231.40    1527.40     331.89       0.00      -0.00      -0.00   -2138.51       0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00    2132.84      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00   53416.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    5136.13       0.00       0.00       0.00     824.93       0.00       0.00

   33   3.2  1.5 -1.5       0.00       0.00   53416.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00   -1643.16      -0.00       0.00      -0.00    2578.52      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00   53416.18       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -5136.13    1643.16       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   53416.18       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00    2696.29      -0.00       0.00       0.00    2344.58

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   53416.18       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00   -2696.29       0.00       0.00       0.00   -2344.58      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   54041.75       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00    3704.02       0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54301.90       0.00       0.00
                        -2132.84    -824.93   -2578.52       0.00      -0.00      -0.00   -3704.02       0.00      -0.00      -0.00

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54301.90       0.00
                            0.00      -0.00       0.00       0.00      -0.00    2344.58      -0.00       0.00      -0.00    2684.21

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54301.90
                            0.00      -0.00       0.00       0.00   -2344.58       0.00       0.00       0.00   -2684.21      -0.00

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

   49   1.2  0.5 -0.5      -0.00   -1240.42   -1127.09      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00     838.02       0.00      -0.00       0.00    -745.06       0.00       0.00

   50   2.2  0.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00    -838.01       0.00      -0.00      -0.00    -745.05
                           -0.00       0.00       0.00      -0.00     838.02      -0.00      -0.00       0.00     745.06      -0.00

   51   3.2  0.5 -0.5       0.00       0.00       0.00       0.00     777.65       0.00       0.00      -0.00    -762.09       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00   -1674.57       0.00       0.00      -0.00     -35.35

   52   4.2  0.5 -0.5      -0.00      -0.00       0.00       0.00   -1484.66      -0.00       0.00      -0.00    -399.17       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      68.87       0.00       0.00       0.00    -859.57

   53   5.2  0.5 -0.5       0.00      -0.00      -0.00     838.02       0.00      -0.00       0.00     745.06      -0.00      -0.00
                            0.00     355.88   -1637.79       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   54   6.2  0.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00    -646.13       0.00      -0.00       0.00    -767.13
                           -0.00      -0.00       0.00       0.00    -646.13      -0.00       0.00      -0.00    -767.13       0.00

   55   7.2  0.5 -0.5   -6275.68     501.73    -552.17       0.00       0.00       0.00     622.55      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00    -646.13       0.00      -0.00      -0.00     767.13      -0.00      -0.00

   56   8.2  0.5 -0.5       0.00       0.00      -0.00    -646.13       0.00       0.00      -0.00    -767.12       0.00       0.00
                        -6275.68    -729.07    -158.43      -0.00       0.00       0.00     622.55       0.00      -0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  1.5  1.5      -0.00      -0.00       0.00      -0.00       0.00      -0.00   -6275.68       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00   -6275.68       0.00       0.00

    2   2.2  1.5  1.5   -1240.42       0.00       0.00      -0.00      -0.00      -0.00     501.73       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00     355.88      -0.00      -0.00    -729.07       0.00       0.00

    3   3.2  1.5  1.5   -1127.09      -0.00       0.00       0.00      -0.00      -0.00    -552.17      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00   -1637.79       0.00      -0.00    -158.43       0.00       0.00

    4   4.2  1.5  1.5      -0.00      -0.00       0.00       0.00     838.02      -0.00       0.00    -646.13       0.00       0.00
                          838.02      -0.00      -0.00      -0.00       0.00       0.00    -646.13      -0.00       0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00     777.65   -1484.66       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     838.02      -0.00      -0.00       0.00    -646.13       0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5       0.00    -838.01       0.00      -0.00      -0.00    -646.13       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -1674.57      68.87       0.00      -0.00      -0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00     622.55      -0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00     622.55       0.00       0.00

    8   8.2  1.5  1.5      -0.00      -0.00      -0.00      -0.00     745.06      -0.00      -0.00    -767.12       0.00       0.00
                         -745.06       0.00       0.00       0.00      -0.00      -0.00     767.13       0.00       0.00       0.00

    9   9.2  1.5  1.5      -0.00      -0.00    -762.09    -399.17      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00     745.06      -0.00       0.00      -0.00    -767.13      -0.00      -0.00       0.00       0.00

   10  10.2  1.5  1.5       0.00    -745.05       0.00       0.00      -0.00    -767.13       0.00       0.00       0.00       0.00
                            0.00      -0.00     -35.35    -859.57      -0.00       0.00      -0.00       0.00       0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00    7246.53       0.00       0.00      -0.00      -0.00

   12   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -716.16       0.00
                            0.00    1843.25      -0.00      -0.00       0.00    -262.51       0.00       0.00       0.00       0.00

   13   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -650.72      -0.00
                            0.00    -589.70       0.00      -0.00      -0.00    -820.53       0.00       0.00       0.00       0.00

   14   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00   -1035.68   -1634.82       0.00      -0.00       0.00      -0.00     483.83      -0.00

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     967.66      -0.00       0.00     746.08       0.00     483.83

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -483.83
                          967.66       0.00       0.00       0.00      -0.00      -0.00     746.09       0.00      -0.00      -0.00

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01      -0.00      -0.00       0.00    -718.85      -0.00       0.00       0.00      -0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00    -839.16     531.63      -0.00       0.00       0.00      -0.00    -430.16       0.00

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00    -860.32       0.00      -0.00    -885.79       0.00     430.16

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -430.16
                         -860.32       0.00       0.00      -0.00       0.00      -0.00    -885.80      -0.00       0.00      -0.00

   21   1.2  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00      -0.00   -3623.27       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    3623.27       0.00       0.00

   22   2.2  1.5 -0.5    -716.16       0.00       0.00      -0.00      -0.00      -0.00     289.67       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -205.47       0.00       0.00     420.93       0.00    1843.25

   23   3.2  1.5 -0.5    -650.72      -0.00       0.00       0.00      -0.00      -0.00    -318.80      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00     945.58      -0.00       0.00      91.47       0.00    -589.70

   24   4.2  1.5 -0.5      -0.00      -0.00       0.00       0.00     483.83      -0.00       0.00    -373.04       0.00       0.00
                         -483.83       0.00       0.00       0.00      -0.00      -0.00     373.05       0.00      -0.00      -0.00

   25   5.2  1.5 -0.5       0.00       0.00     448.97    -857.17       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -483.83       0.00       0.00      -0.00     373.05      -0.00      -0.00      -0.00      -0.00

   26   6.2  1.5 -0.5       0.00    -483.83       0.00      -0.00      -0.00    -373.05       0.00       0.00       0.00       0.00
                            0.00       0.00     966.82     -39.76      -0.00       0.00       0.00      -0.00     967.66       0.00

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00     359.43      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00    -359.43      -0.00      -0.01

   28   8.2  1.5 -0.5      -0.00      -0.00      -0.00      -0.00     430.16      -0.00      -0.00    -442.90       0.00       0.00
                          430.16      -0.00      -0.00      -0.00       0.00       0.00    -442.90      -0.00      -0.00       0.00

   29   9.2  1.5 -0.5      -0.00      -0.00    -439.99    -230.46      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00    -430.16       0.00      -0.00       0.00     442.90       0.00       0.00       0.00       0.00

   30  10.2  1.5 -0.5       0.00    -430.16       0.00       0.00      -0.00    -442.90       0.00       0.00       0.00       0.00
                           -0.00       0.00      20.41     496.28       0.00      -0.00       0.00      -0.00    -860.32       0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1240.42       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1127.09      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -838.02       0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -838.02

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -838.01
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     745.06      -0.00

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -745.06

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -745.05
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   41   1.2  0.5  0.5    9499.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      32.89      -0.00      -0.00   -4468.74      -0.00     -32.89

   42   2.2  0.5  0.5       0.00    9499.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      35.20      55.56      -0.00       0.00      -0.00       0.00      32.89       0.00

   43   3.2  0.5  0.5       0.00       0.00    9499.42       0.00       0.00       0.00       0.00       0.00      30.52       0.00
                           -0.00     -35.20      -0.00       0.00       0.00    4358.97      -0.00       0.00      -0.00      -0.00

   44   4.2  0.5  0.5       0.00       0.00       0.00    9499.43       0.00       0.00       0.00       0.00     -58.26      -0.00
                           -0.00     -55.56      -0.00      -0.00      -0.00   -2761.49       0.00       0.00       0.00      -0.00

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00    9499.45       0.00       0.00       0.00       0.00     -32.89
                          -32.89       0.00      -0.00       0.00       0.00       0.00    4468.74      -0.00       0.00       0.00

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   16442.42       0.00       0.00       0.00       0.00
                            0.00      -0.00   -4358.97    2761.49      -0.00       0.00      -0.00      -0.00    4468.74      -0.00

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   16442.43       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00   -4468.74       0.00      -0.00     159.58      -0.00   -4468.74

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16442.41      -0.00   -4468.74
                         4468.74      -0.00      -0.00      -0.00       0.00       0.00    -159.58       0.00      -0.00       0.00

   49   1.2  0.5 -0.5      -0.00       0.00      30.52     -58.26       0.00       0.00       0.00      -0.00    9499.44       0.00
                            0.00     -32.89       0.00      -0.00      -0.00   -4468.74       0.00       0.00       0.00       0.00

   50   2.2  0.5 -0.5      -0.00       0.00       0.00      -0.00     -32.89       0.00      -0.00   -4468.74       0.00    9499.44
                           32.89      -0.00       0.00       0.00      -0.00       0.00    4468.74      -0.00      -0.00       0.00

   51   3.2  0.5 -0.5     -30.52      -0.00       0.00       0.00      -0.00       0.00    4571.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      65.72       0.00       0.00     212.03       0.00      35.20

   52   4.2  0.5 -0.5      58.26       0.00      -0.00      -0.00      -0.00      -0.00    2394.23      -0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -2.70       0.00      -0.00    5155.72       0.00      55.56

   53   5.2  0.5 -0.5      -0.00      32.89       0.00       0.00      -0.00   -4468.74      -0.00       0.00       0.00       0.00
                            0.00       0.00     -65.72       2.70      -0.00      -0.00      -0.00      -0.00      32.89      -0.00

   54   6.2  0.5 -0.5      -0.00      -0.00      -0.00       0.00    4468.74      -0.00       0.00     159.58       0.00       0.00
                         4468.74      -0.00      -0.00      -0.00       0.00       0.00     159.57      -0.00      -0.00       0.00

   55   7.2  0.5 -0.5      -0.00       0.00   -4571.00   -2394.23       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00   -4468.74      -0.00       0.00       0.00    -159.57      -0.00      -0.00      -0.00      -0.00

   56   8.2  0.5 -0.5       0.00    4468.74       0.00       0.00      -0.00    -159.58       0.00       0.00       0.00       0.00
                           -0.00       0.00    -212.03   -5155.72       0.00       0.00       0.00       0.00   -4468.74       0.00


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

   11   1.2  1.5  0.5       0.00      -0.00       0.00      -0.00   -3623.27       0.00
                           -0.00      -0.00       0.00      -0.00       0.00   -3623.27

   12   2.2  1.5  0.5       0.00      -0.00      -0.00      -0.00     289.67       0.00
                            0.00       0.00     205.47      -0.00      -0.00    -420.93

   13   3.2  1.5  0.5       0.00       0.00      -0.00      -0.00    -318.80      -0.00
                           -0.00      -0.00    -945.58       0.00      -0.00     -91.47

   14   4.2  1.5  0.5       0.00       0.00     483.83      -0.00       0.00    -373.04
                           -0.00      -0.00       0.00       0.00    -373.05      -0.00

   15   5.2  1.5  0.5     448.97    -857.17       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -373.05       0.00       0.00

   16   6.2  1.5  0.5       0.00      -0.00      -0.00    -373.05       0.00       0.00
                         -966.82      39.76       0.00      -0.00      -0.00       0.00

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00     359.43      -0.00
                            0.00       0.00       0.00       0.00      -0.00     359.43

   18   8.2  1.5  0.5      -0.00      -0.00     430.16      -0.00      -0.00    -442.90
                            0.00       0.00      -0.00      -0.00     442.90       0.00

   19   9.2  1.5  0.5    -439.99    -230.46      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00    -442.90      -0.00      -0.00

   20  10.2  1.5  0.5       0.00       0.00      -0.00    -442.90       0.00       0.00
                          -20.41    -496.28      -0.00       0.00      -0.00       0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    7246.53       0.00       0.00

   22   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -262.51       0.00       0.00

   23   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -820.53       0.00       0.00

   24   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                        -1035.68   -1634.82       0.00      -0.00       0.00      -0.00

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     967.66      -0.00       0.00     746.08

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     746.09       0.00

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -718.85      -0.00       0.00

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -839.16     531.63      -0.00       0.00       0.00      -0.00

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -860.32       0.00      -0.00    -885.79

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00    -885.80      -0.00

   31   1.2  1.5 -1.5       0.00      -0.00       0.00      -0.00   -6275.68       0.00
                            0.00       0.00      -0.00       0.00      -0.00    6275.68

   32   2.2  1.5 -1.5       0.00      -0.00      -0.00      -0.00     501.73       0.00
                           -0.00      -0.00    -355.88       0.00       0.00     729.07

   33   3.2  1.5 -1.5       0.00       0.00      -0.00      -0.00    -552.17      -0.00
                            0.00       0.00    1637.79      -0.00       0.00     158.43

   34   4.2  1.5 -1.5       0.00       0.00     838.02      -0.00       0.00    -646.13
                            0.00       0.00      -0.00      -0.00     646.13       0.00

   35   5.2  1.5 -1.5     777.65   -1484.66       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     646.13      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00      -0.00      -0.00    -646.13       0.00       0.00
                         1674.57     -68.87      -0.00       0.00       0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00     622.55      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    -622.55

   38   8.2  1.5 -1.5      -0.00      -0.00     745.06      -0.00      -0.00    -767.12
                           -0.00      -0.00       0.00       0.00    -767.13      -0.00

   39   9.2  1.5 -1.5    -762.09    -399.17      -0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00     767.13       0.00       0.00

   40  10.2  1.5 -1.5       0.00       0.00      -0.00    -767.13       0.00       0.00
                           35.35     859.57       0.00      -0.00       0.00      -0.00

   41   1.2  0.5  0.5     -30.52      58.26      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00   -4468.74       0.00       0.00

   42   2.2  0.5  0.5      -0.00       0.00      32.89      -0.00       0.00    4468.74
                            0.00       0.00      -0.00       0.00    4468.74      -0.00

   43   3.2  0.5  0.5       0.00      -0.00       0.00      -0.00   -4571.00       0.00
                           -0.00       0.00      65.72       0.00       0.00     212.03

   44   4.2  0.5  0.5       0.00      -0.00       0.00       0.00   -2394.23       0.00
                           -0.00       0.00      -2.70       0.00      -0.00    5155.72

   45   5.2  0.5  0.5      -0.00      -0.00      -0.00    4468.74       0.00      -0.00
                          -65.72       2.70       0.00      -0.00      -0.00      -0.00

   46   6.2  0.5  0.5       0.00      -0.00   -4468.74      -0.00      -0.00    -159.58
                           -0.00      -0.00       0.00      -0.00     159.57      -0.00

   47   7.2  0.5  0.5    4571.00    2394.23      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -159.57       0.00      -0.00

   48   8.2  0.5  0.5      -0.00      -0.00       0.00     159.58      -0.00       0.00
                         -212.03   -5155.72       0.00       0.00       0.00      -0.00

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     -32.89       0.00       0.00    4468.74

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          -35.20     -55.56       0.00      -0.00       0.00      -0.00

   51   3.2  0.5 -0.5    9499.42       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00   -4358.97       0.00      -0.00

   52   4.2  0.5 -0.5       0.00    9499.43       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    2761.49      -0.00      -0.00

   53   5.2  0.5 -0.5       0.00       0.00    9499.45       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00   -4468.74       0.00

   54   6.2  0.5 -0.5       0.00       0.00       0.00   16442.42       0.00       0.00
                         4358.97   -2761.49       0.00      -0.00       0.00       0.00

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00   16442.43       0.00
                           -0.00       0.00    4468.74      -0.00       0.00    -159.58

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   16442.41
                            0.00       0.00      -0.00      -0.00     159.58      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -214.51125279    -0.02463238    -5406.18      0.00000000        0.00      0.0000
     2  -214.51125279    -0.02463238    -5406.18      0.00000000        0.00      0.0000
     3  -214.51125278    -0.02463237    -5406.18      0.00000002        0.00      0.0000
     4  -214.51125278    -0.02463237    -5406.18      0.00000002        0.00      0.0000
     5  -214.46225240     0.02436801     5348.16      0.04900039    10754.34      1.3334
     6  -214.46225240     0.02436801     5348.16      0.04900039    10754.34      1.3334
     7  -214.46225237     0.02436804     5348.17      0.04900042    10754.35      1.3334
     8  -214.46225237     0.02436804     5348.17      0.04900042    10754.35      1.3334
     9  -214.44388759     0.04273282     9378.77      0.06736520    14784.95      1.8331
    10  -214.44388759     0.04273282     9378.77      0.06736520    14784.95      1.8331
    11  -214.44388758     0.04273283     9378.77      0.06736521    14784.96      1.8331
    12  -214.44388758     0.04273283     9378.77      0.06736521    14784.96      1.8331
    13  -214.44388754     0.04273287     9378.78      0.06736526    14784.96      1.8331
    14  -214.44388754     0.04273287     9378.78      0.06736526    14784.96      1.8331
    15  -214.41372095     0.07289946    15999.58      0.09753185    21405.77      2.6540
    16  -214.41372095     0.07289946    15999.58      0.09753185    21405.77      2.6540
    17  -214.36937561     0.11724481    25732.26      0.14187719    31138.44      3.8607
    18  -214.36937561     0.11724481    25732.26      0.14187719    31138.44      3.8607
    19  -214.36937559     0.11724482    25732.26      0.14187720    31138.45      3.8607
    20  -214.36937559     0.11724482    25732.26      0.14187720    31138.45      3.8607
    21  -214.28227082     0.20434959    44849.55      0.22898197    50255.73      6.2309
    22  -214.28227082     0.20434959    44849.55      0.22898197    50255.73      6.2309
    23  -214.27806067     0.20855974    45773.57      0.23319212    51179.75      6.3455
    24  -214.27806067     0.20855974    45773.57      0.23319212    51179.75      6.3455
    25  -214.27806066     0.20855975    45773.58      0.23319214    51179.76      6.3455
    26  -214.27806066     0.20855975    45773.58      0.23319214    51179.76      6.3455
    27  -214.25684596     0.22977445    50429.66      0.25440683    55835.85      6.9228
    28  -214.25684596     0.22977445    50429.66      0.25440683    55835.85      6.9228
    29  -214.25657709     0.23004332    50488.67      0.25467571    55894.86      6.9301
    30  -214.25657709     0.23004332    50488.67      0.25467571    55894.86      6.9301
    31  -214.25657701     0.23004340    50488.69      0.25467578    55894.87      6.9301
    32  -214.25657701     0.23004340    50488.69      0.25467578    55894.87      6.9301
    33  -214.25613584     0.23048457    50585.52      0.25511696    55991.70      6.9421
    34  -214.25613584     0.23048457    50585.52      0.25511696    55991.70      6.9421
    35  -214.25613581     0.23048460    50585.52      0.25511698    55991.71      6.9421
    36  -214.25613581     0.23048460    50585.52      0.25511698    55991.71      6.9421
    37  -214.25613578     0.23048463    50585.53      0.25511701    55991.71      6.9421
    38  -214.25613578     0.23048463    50585.53      0.25511701    55991.71      6.9421
    39  -214.21941847     0.26720194    58644.05      0.29183432    64050.23      7.9412
    40  -214.21941847     0.26720194    58644.05      0.29183432    64050.23      7.9412
    41  -214.21941844     0.26720198    58644.06      0.29183436    64050.24      7.9412
    42  -214.21941844     0.26720198    58644.06      0.29183436    64050.24      7.9412
    43  -214.21866817     0.26795224    58808.72      0.29258462    64214.90      7.9616
    44  -214.21866817     0.26795224    58808.72      0.29258462    64214.90      7.9616
    45  -214.21866813     0.26795228    58808.73      0.29258467    64214.91      7.9616
    46  -214.21866813     0.26795228    58808.73      0.29258467    64214.91      7.9616
    47  -214.21866809     0.26795232    58808.74      0.29258470    64214.92      7.9616
    48  -214.21866809     0.26795232    58808.74      0.29258470    64214.92      7.9616
    49  -214.21866804     0.26795237    58808.75      0.29258476    64214.93      7.9616
    50  -214.21866804     0.26795237    58808.75      0.29258476    64214.93      7.9616
    51  -214.21732085     0.26929957    59104.42      0.29393195    64510.61      7.9983
    52  -214.21732085     0.26929957    59104.42      0.29393195    64510.61      7.9983
    53  -214.21732079     0.26929962    59104.44      0.29393201    64510.62      7.9983
    54  -214.21732079     0.26929962    59104.44      0.29393201    64510.62      7.9983
    55  -214.21732077     0.26929964    59104.44      0.29393203    64510.62      7.9983
    56  -214.21732077     0.26929964    59104.44      0.29393203    64510.62      7.9983


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.500506395   0.000053193   0.640251872  -0.000151574   0.000900705   0.250672939   0.439991339   0.001321889
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.010872518   0.000001154  -0.004016538   0.000000984   0.000049053   0.013660320  -0.014861641  -0.000044657
                         0.000000009  -0.000000042   0.000000007  -0.000000004   0.000000010   0.000000003  -0.000000002   0.000000017

    3    3.2  1.5  1.5  -0.004016557   0.000000427   0.010872522  -0.000002584  -0.000053390  -0.014861658  -0.013660331  -0.000041038
                        -0.000000003   0.000000013  -0.000000002   0.000000001  -0.000000003  -0.000000001   0.000000001  -0.000000005

    4    4.2  1.5  1.5   0.000000009  -0.000000044   0.000000007  -0.000000004   0.000000011   0.000000003  -0.000000002   0.000000018
                         0.009131704  -0.000000969   0.007138592  -0.000001724  -0.000062990  -0.017539438   0.009992638   0.000030029

    5    5.2  1.5  1.5  -0.000000873  -0.008027574  -0.000000922  -0.003830265   0.004439693  -0.000015955  -0.000026934   0.008965293
                         0.000000423   0.004352555  -0.000001457  -0.006024011   0.016968119  -0.000060935  -0.000013276   0.004412510

    6    6.2  1.5  1.5   0.000000423   0.004352581  -0.000001457  -0.006023931   0.016967952  -0.000060935  -0.000013276   0.004412622
                         0.000000873   0.008027622   0.000000922   0.003830214  -0.004439649   0.000015955   0.000026934  -0.008965519

    7    7.2  1.5  1.5   0.002003777  -0.000000213  -0.002563220   0.000000607   0.000015065   0.004192795   0.007359397   0.000022110
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    8    8.2  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.022877551  -0.000002431  -0.029265188   0.000006928  -0.000039186  -0.010905800  -0.019142388  -0.000057510

    9    9.2  1.5  1.5  -0.000001615  -0.014853412  -0.000001706  -0.007087088  -0.002797478   0.000010053   0.000016972  -0.005649441
                         0.000000783   0.008053527  -0.000002696  -0.011146148  -0.010691717   0.000038396   0.000008366  -0.002780525

   10   10.2  1.5  1.5   0.000000783   0.008053544  -0.000002696  -0.011146078  -0.010691844   0.000038396   0.000008366  -0.002780443
                         0.000001615   0.014853443   0.000001706   0.007087043   0.002797511  -0.000010053  -0.000016972   0.005649275

   11    1.2  1.5  0.5   0.000061193   0.562842363   0.000064652   0.268550047   0.111373894  -0.000400243  -0.000675671   0.224908651
                        -0.000029653  -0.305173413   0.000102163   0.422359443   0.425661315  -0.001528616  -0.000333049   0.110694847

   12    2.2  1.5  0.5   0.000000369   0.003530932  -0.000001386  -0.005833730   0.003761892  -0.000013518   0.000036823  -0.012256332
                        -0.000000216  -0.001914481  -0.000002182  -0.009174924   0.014377630  -0.000051651   0.000018117  -0.006032287

   13    3.2  1.5  0.5  -0.000001034  -0.009557952  -0.000000525  -0.002155121   0.003457810  -0.000012427  -0.000040059   0.013334089
                         0.000000513   0.005182329  -0.000000832  -0.003389451   0.013215446  -0.000047453  -0.000019735   0.006562732

   14    4.2  1.5  0.5  -0.000000362  -0.003402538  -0.000001824  -0.007705846   0.009667048  -0.000034735   0.000023269  -0.007745117
                        -0.000000667  -0.006275408   0.000001160   0.004899642  -0.002529373   0.000009088  -0.000047278   0.015736441

   15    5.2  1.5  0.5   0.007138472  -0.000000759  -0.009131743   0.000002162   0.000035905   0.009992736   0.017539354   0.000052694
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   16    6.2  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.007138592  -0.000000759  -0.009131635   0.000002162   0.000035904   0.009992449   0.017539418   0.000052695

   17    7.2  1.5  0.5  -0.000000245  -0.002253318  -0.000000259  -0.001075103   0.001862838  -0.000006694  -0.000011302   0.003761905
                         0.000000119   0.001221750  -0.000000409  -0.001690857   0.007119603  -0.000025568  -0.000005571   0.001851523

   18    8.2  1.5  0.5  -0.000000452  -0.004649726   0.000001557   0.006435228   0.006172849  -0.000022168  -0.000004830   0.001605274
                        -0.000000932  -0.008575657  -0.000000985  -0.004091730  -0.001615120   0.000005804   0.000009798  -0.003261580

   19    9.2  1.5  0.5  -0.032718454   0.000003474   0.001644539  -0.000000316  -0.000023207  -0.006465078   0.018322435   0.000055052
                         0.000000020  -0.000000094   0.000000016  -0.000000008  -0.000000008  -0.000000002   0.000000001  -0.000000013

   20   10.2  1.5  0.5   0.000000020  -0.000000094   0.000000016  -0.000000008  -0.000000008  -0.000000002   0.000000001  -0.000000013
                         0.006301720  -0.000000666   0.032147983  -0.000007684   0.000068455   0.019057988   0.003781185   0.000011355

   21    1.2  1.5 -0.5   0.640251778  -0.000067928   0.500506369  -0.000120901   0.001580146   0.439990568  -0.250673593  -0.000753294
                        -0.000000664   0.000003100  -0.000000519   0.000000259   0.000000273   0.000000084  -0.000000050   0.000000448

   22    2.2  1.5 -0.5   0.004016555  -0.000000427  -0.010872518   0.000002584   0.000053390   0.014861631   0.013660386   0.000041038
                         0.000000003  -0.000000013   0.000000002  -0.000000001   0.000000003   0.000000001  -0.000000001   0.000000005

   23    3.2  1.5 -0.5  -0.010872487   0.000001154  -0.004016581   0.000000984   0.000049053   0.013660325  -0.014861607  -0.000044656
                         0.000000009  -0.000000042   0.000000007  -0.000000004   0.000000010   0.000000003  -0.000000002   0.000000017

   24    4.2  1.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.007138487  -0.000000759  -0.009131624   0.000002162   0.000035904   0.009992475   0.017539168   0.000052694

   25    5.2  1.5 -0.5  -0.000000667  -0.006275394   0.000001160   0.004899706  -0.002529439   0.000009089  -0.000047278   0.015736608
                         0.000000362   0.003402530   0.000001824   0.007705947  -0.009667301   0.000034736  -0.000023269   0.007745199

   26    6.2  1.5 -0.5   0.000000362   0.003402587   0.000001824   0.007705855  -0.009667024   0.000034735  -0.000023269   0.007745227
                         0.000000667   0.006275499  -0.000001160  -0.004899648   0.002529366  -0.000009088   0.000047278  -0.015736666

   27    7.2  1.5 -0.5  -0.002563224   0.000000272  -0.002003708   0.000000484   0.000026429   0.007359273  -0.004192858  -0.000012600
                         0.000000003  -0.000000012   0.000000002  -0.000000001   0.000000005   0.000000001  -0.000000001   0.000000008

   28    8.2  1.5 -0.5   0.000000010  -0.000000047   0.000000008  -0.000000004  -0.000000004  -0.000000001   0.000000001  -0.000000007
                         0.009755093  -0.000001035   0.007625904  -0.000001842   0.000022915   0.006380649  -0.003635218  -0.000010924

   29    9.2  1.5 -0.5   0.000003099   0.028762634  -0.000000176  -0.000882403   0.001636493  -0.000005882  -0.000049388   0.016439202
                        -0.000001573  -0.015595130  -0.000000262  -0.001387758   0.006254528  -0.000022449  -0.000024322   0.008090998

   30   10.2  1.5 -0.5   0.000000234   0.003003677  -0.000006489  -0.027128525  -0.018437323   0.000066223  -0.000005002   0.001669734
                         0.000000631   0.005539819   0.000004116   0.017249231   0.004824108  -0.000017335   0.000010193  -0.003392543

   31    1.2  1.5 -1.5  -0.000046761  -0.439992602   0.000081328   0.343531989   0.063452274  -0.000227993   0.001186022  -0.394767745
                         0.000025354   0.238564797   0.000127908   0.540285323   0.242509240  -0.000871371   0.000583733  -0.194295665

   32    2.2  1.5 -1.5  -0.000001034  -0.009557979  -0.000000525  -0.002155098   0.003457809  -0.000012427  -0.000040059   0.013334119
                         0.000000513   0.005182343  -0.000000832  -0.003389415   0.013215442  -0.000047453  -0.000019735   0.006562747

   33    3.2  1.5 -1.5  -0.000000369  -0.003530933   0.000001386   0.005833732  -0.003761899   0.000013518  -0.000036823   0.012256282
                         0.000000216   0.001914482   0.000002182   0.009174928  -0.014377657   0.000051651  -0.000018117   0.006032263

   34    4.2  1.5 -1.5  -0.000000423  -0.004352590   0.000001457   0.006024003  -0.016968228   0.000060936   0.000013276  -0.004412645
                        -0.000000873  -0.008027638  -0.000000922  -0.003830260   0.004439721  -0.000015955  -0.000026934   0.008965566

   35    5.2  1.5 -1.5   0.009131631  -0.000000969   0.007138602  -0.000001724  -0.000062989  -0.017539325   0.009992334   0.000030028
                        -0.000000009   0.000000044  -0.000000007   0.000000004  -0.000000011  -0.000000003   0.000000002  -0.000000018

   36    6.2  1.5 -1.5   0.000000009  -0.000000044   0.000000007  -0.000000004   0.000000011   0.000000003  -0.000000002   0.000000018
                         0.009131686  -0.000000969   0.007138507  -0.000001724  -0.000062989  -0.017539153   0.009992586   0.000030029

   37    7.2  1.5 -1.5   0.000000187   0.001761510  -0.000000326  -0.001375315   0.001061313  -0.000003813   0.000019838  -0.006602976
                        -0.000000102  -0.000955094  -0.000000512  -0.002163008   0.004056248  -0.000014575   0.000009764  -0.003249834

   38    8.2  1.5 -1.5  -0.000001159  -0.010904512  -0.000005847  -0.024695830  -0.010550629   0.000037910  -0.000025396   0.008453082
                        -0.000002137  -0.020111537   0.000003717   0.015702458   0.002760560  -0.000009919   0.000051599  -0.017174877

   39    9.2  1.5 -1.5   0.016896246  -0.000001793   0.013208460  -0.000003191   0.000039690   0.011051638  -0.006296626  -0.000018922
                        -0.000000018   0.000000082  -0.000000014   0.000000007   0.000000007   0.000000002  -0.000000001   0.000000011

   40   10.2  1.5 -1.5   0.000000018  -0.000000082   0.000000014  -0.000000007  -0.000000007  -0.000000002   0.000000001  -0.000000011
                         0.016896282  -0.000001793   0.013208377  -0.000003191   0.000039690   0.011051769  -0.006296441  -0.000018921

   41    1.2  0.5  0.5  -0.203945590   0.000021649  -0.028720566   0.000007328   0.000918801   0.255903378  -0.437421453  -0.001314327
                         0.000000146  -0.000000680   0.000000114  -0.000000057   0.000000237   0.000000073  -0.000000043   0.000000389

   42    2.2  0.5  0.5   0.000006426   0.060460518   0.000032416   0.136926838  -0.242696176   0.000872043  -0.000584182   0.194445132
                         0.000011851   0.111509245  -0.000020611  -0.087062792   0.063501185  -0.000228169   0.001186934  -0.395071431

   43    3.2  0.5  0.5   0.000006758   0.060822556   0.000024872   0.104086769  -0.128139633   0.000460475  -0.000063994   0.021290882
                        -0.000002910  -0.032977941   0.000039220   0.163701275  -0.489738606   0.001758986  -0.000031074   0.010478931

   44    4.2  0.5  0.5  -0.000018311  -0.170535758   0.000008643   0.037123141   0.006006716  -0.000021615  -0.001364541   0.454194229
                         0.000009450   0.092464699   0.000013527   0.058384791   0.022956991  -0.000082034  -0.000671864   0.223543994

   45    5.2  0.5  0.5  -0.000000146   0.000000680  -0.000000114   0.000000057  -0.000000237  -0.000000073   0.000000043  -0.000000389
                        -0.077100230   0.000008168  -0.190982378   0.000045742   0.001820196   0.506768479   0.002908251   0.000008579

   46    6.2  0.5  0.5   0.000014305   0.147218602  -0.000049285  -0.203750430   0.215490232  -0.000773859  -0.000168605   0.056038961
                         0.000029520   0.271520592   0.000031189   0.129551236  -0.056382822   0.000202622   0.000342056  -0.113859384

   47    7.2  0.5  0.5  -0.054669097   0.000005838   0.388208233  -0.000092486  -0.000794863  -0.221273048  -0.129450979  -0.000388870
                        -0.000000160   0.000000748  -0.000000125   0.000000063  -0.000000069  -0.000000021   0.000000013  -0.000000114

   48    8.2  0.5  0.5   0.000000160  -0.000000748   0.000000125  -0.000000063   0.000000069   0.000000021  -0.000000013   0.000000114
                         0.363533189  -0.000038607  -0.146759402   0.000034162  -0.000005082  -0.001471057   0.256354519   0.000770226

   49    1.2  0.5 -0.5  -0.000019356  -0.179287590  -0.000003884  -0.015410142   0.064776310  -0.000232803  -0.001179065   0.392462019
                         0.000009721   0.097209896  -0.000006215  -0.024236304   0.247569320  -0.000888818  -0.000580742   0.193160793

   50    2.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.126845520  -0.000013481  -0.162261791   0.000038414   0.000901399   0.250866167   0.440329814   0.001322906

   51    3.2  0.5 -0.5  -0.069187629   0.000007328  -0.193990110   0.000046442   0.001818260   0.506224918   0.023729933   0.000071139
                         0.000000142  -0.000000664   0.000000111  -0.000000056   0.000000231   0.000000071  -0.000000042   0.000000379

   52    4.2  0.5 -0.5   0.193990116  -0.000020601  -0.069187510   0.000016053  -0.000084834  -0.023729815   0.506225558   0.001520978
                        -0.000000090   0.000000420  -0.000000070   0.000000035  -0.000000146  -0.000000045   0.000000027  -0.000000240

   53    5.2  0.5 -0.5   0.000003295   0.036749454  -0.000038631  -0.161163160   0.490264464  -0.001760857   0.000003440  -0.001284290
                         0.000007505   0.067778485   0.000024495   0.102472946  -0.128277225   0.000460971  -0.000007869   0.002609313

   54    6.2  0.5 -0.5   0.000000320  -0.000001495   0.000000251  -0.000000125   0.000000138   0.000000043  -0.000000025   0.000000227
                         0.308863641  -0.000032769   0.241449291  -0.000058324  -0.000799946  -0.222744389   0.126902815   0.000381353

   55    7.2  0.5 -0.5  -0.000004776  -0.048059247   0.000049571   0.208295961  -0.056010365   0.000201269  -0.000348951   0.116145624
                         0.000003440   0.026057993   0.000078079   0.327594909  -0.214066814   0.000768959  -0.000171619   0.057164236

   56    8.2  0.5 -0.5  -0.000017745  -0.173276810  -0.000028795  -0.123844867  -0.001423143   0.000004899   0.000340226  -0.113203517
                        -0.000034296  -0.319580236   0.000018383   0.078744973   0.000372385  -0.000001353  -0.000691009   0.230005659


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000002  -0.000000093  -0.000000482   0.000000043   0.000000217   0.000000002  -0.000000000   0.000000325
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.000342490  -0.017474753   0.002616933  -0.000234499  -0.009759474  -0.000093332  -0.000000013  -0.024917706
                         0.000000151  -0.000000031   0.000000007   0.000000011   0.000000002  -0.000000008  -0.000000002  -0.000000003

    3    3.2  1.5  1.5  -0.000011074  -0.000564577   0.014445292  -0.001294422  -0.036474366  -0.000348810   0.000000004   0.007971561
                         0.000000009  -0.000000005   0.000000000   0.000000000   0.000000006  -0.000000028   0.000000001   0.000000001

    4    4.2  1.5  1.5   0.000000141  -0.000000028   0.000000007   0.000000010   0.000000000   0.000000001  -0.000000002  -0.000000003
                         0.000322834   0.016472009   0.001909108  -0.000171073  -0.001818606  -0.000017391   0.000000014   0.026161993

    5    5.2  1.5  1.5  -0.019128947   0.000375080   0.000585092   0.006529609  -0.000117340   0.012270183  -0.005244191   0.000000002
                         0.018303699  -0.000358572   0.001834610   0.020473567   0.000021627  -0.002260671   0.011983872  -0.000000007

    6    6.2  1.5  1.5   0.015858932  -0.000310673  -0.002323523  -0.025929729  -0.000012171   0.001272121   0.011983847  -0.000000007
                         0.016573980  -0.000324954   0.000741052   0.008269710  -0.000066029   0.006904664   0.005244180  -0.000000002

    7    7.2  1.5  1.5   0.000000000   0.000000002  -0.000000040   0.000000004   0.000000033   0.000000000  -0.000000000   0.000000095
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    8    8.2  1.5  1.5  -0.000000023   0.000000006  -0.000000001  -0.000000001  -0.000000003   0.000000012  -0.000000000   0.000000000
                        -0.000047923  -0.002444982   0.006070451  -0.000543964  -0.015728451  -0.000150414   0.000000000  -0.000000091

    9    9.2  1.5  1.5   0.003375481  -0.000066173   0.000497740   0.005554563  -0.000060051   0.006279530  -0.005843303   0.000000002
                        -0.003229847   0.000063271   0.001560654   0.017416354   0.000011069  -0.001156946   0.013352945  -0.000000008

   10   10.2  1.5  1.5  -0.004995786   0.000097870  -0.001442917  -0.016102431  -0.000013345   0.001394926   0.013352929  -0.000000008
                        -0.005221021   0.000102381   0.000460182   0.005135522  -0.000072403   0.007571203   0.005843296  -0.000000002

   11    1.2  1.5  0.5   0.000000353  -0.000000007   0.000000006   0.000000062   0.000000004  -0.000000403   0.000000007  -0.000000000
                        -0.000000338   0.000000007   0.000000017   0.000000193  -0.000000001   0.000000074  -0.000000016   0.000000000

   12    2.2  1.5  0.5   0.004910965  -0.000096279   0.000493438   0.005506544  -0.000320833   0.033549406  -0.003195854   0.000000001
                        -0.004699085   0.000092054   0.001547161   0.017265792   0.000059137  -0.006181174   0.007303072  -0.000000004

   13    3.2  1.5  0.5   0.010924223  -0.000214197  -0.000103276  -0.001152629   0.000120600  -0.012611061  -0.009989493   0.000000003
                        -0.010452934   0.000204773  -0.000323852  -0.003614050  -0.000022229   0.002323475   0.022827696  -0.000000013

   14    4.2  1.5  0.5  -0.004113554   0.000080590  -0.003229104  -0.036035654   0.000024072  -0.002516006  -0.000000079   0.000000000
                        -0.004299002   0.000084316   0.001029849   0.011492787   0.000130593  -0.013656060  -0.000000034  -0.000000000

   15    5.2  1.5  0.5  -0.000446810  -0.022797700  -0.005181802   0.000464335   0.008910577   0.000085213   0.000000012   0.022656926
                         0.000000194  -0.000000038   0.000000010   0.000000014  -0.000000001   0.000000006   0.000000002   0.000000002

   16    6.2  1.5  0.5   0.000000213  -0.000000043   0.000000010   0.000000015   0.000000002  -0.000000004   0.000000002   0.000000002
                         0.000485114   0.024751923   0.000329292  -0.000029509   0.003660858   0.000035010  -0.000000012  -0.022657021

   17    7.2  1.5  0.5   0.000000014  -0.000000000  -0.000000002  -0.000000022   0.000000001  -0.000000088   0.000000045  -0.000000000
                        -0.000000013   0.000000000  -0.000000006  -0.000000070  -0.000000000   0.000000016  -0.000000102   0.000000000

   18    8.2  1.5  0.5   0.014247367  -0.000279106  -0.000203907  -0.002275559   0.000003944  -0.000412256   0.015418560  -0.000000009
                         0.014889740  -0.000291946   0.000065045   0.000725730   0.000021398  -0.002237586   0.006747225  -0.000000002

   19    9.2  1.5  0.5   0.000160449   0.008186755   0.006451161  -0.000578080  -0.014758918  -0.000141142  -0.000000004  -0.008414996
                        -0.000000069   0.000000013  -0.000000003  -0.000000005   0.000000002  -0.000000011  -0.000000001  -0.000000001

   20   10.2  1.5  0.5  -0.000000108   0.000000023  -0.000000005  -0.000000008  -0.000000003   0.000000010  -0.000000001  -0.000000001
                        -0.000243452  -0.012421513   0.004062767  -0.000364058  -0.012483505  -0.000119382   0.000000004   0.008415119

   21    1.2  1.5 -0.5  -0.000000010  -0.000000488  -0.000000203   0.000000018   0.000000409   0.000000004  -0.000000000  -0.000000018
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   22    2.2  1.5 -0.5  -0.000133205  -0.006796983  -0.018122627   0.001623943  -0.034114067  -0.000326238   0.000000004   0.007971722
                         0.000000052  -0.000000004   0.000000003   0.000000005   0.000000006  -0.000000026   0.000000001   0.000000001

   23    3.2  1.5 -0.5  -0.000296331  -0.015119606   0.003793403  -0.000339920   0.012823315   0.000122631   0.000000013   0.024917738
                         0.000000131  -0.000000028   0.000000006   0.000000009  -0.000000002   0.000000009   0.000000002   0.000000003

   24    4.2  1.5 -0.5  -0.000000063   0.000000024  -0.000000002  -0.000000003  -0.000000002   0.000000011   0.000000000   0.000000000
                        -0.000116636  -0.005950021   0.037823968  -0.003389351  -0.013885902  -0.000132793   0.000000000  -0.000000086

   25    5.2  1.5 -0.5  -0.016471806   0.000322964  -0.000141101  -0.001574478  -0.000083801   0.008763088   0.009083136  -0.000000003
                         0.015761178  -0.000308761  -0.000442377  -0.004936810   0.000015446  -0.001614521  -0.020756516   0.000000012

   26    6.2  1.5 -0.5  -0.017112231   0.000335229   0.000028109   0.000313726   0.000006347  -0.000663315   0.020756602  -0.000000012
                        -0.017883771   0.000350652  -0.000008981  -0.000100045   0.000034429  -0.003600263   0.009083174  -0.000000003

   27    7.2  1.5 -0.5  -0.000000000  -0.000000019   0.000000074  -0.000000007   0.000000090   0.000000001  -0.000000000  -0.000000111
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   28    8.2  1.5 -0.5   0.000000176  -0.000000035   0.000000009   0.000000012   0.000000000   0.000000001  -0.000000002  -0.000000002
                         0.000403897   0.020608053   0.002388483  -0.000214030  -0.002275246  -0.000021758   0.000000009   0.016830241

   29    9.2  1.5 -0.5   0.005915099  -0.000115975   0.000175654   0.001960177   0.000138803  -0.014514627  -0.003373562   0.000000001
                        -0.005659908   0.000110876   0.000550747   0.006146152  -0.000025585   0.002674189   0.007709166  -0.000000004

   30   10.2  1.5 -0.5   0.008587608  -0.000168232   0.000346848   0.003870678  -0.000021641   0.002261903  -0.007709278   0.000000004
                         0.008974796  -0.000175974  -0.000110612  -0.001234474  -0.000117404   0.012276876  -0.003373611   0.000000001

   31    1.2  1.5 -1.5   0.000000067  -0.000000001   0.000000013   0.000000146   0.000000002  -0.000000213  -0.000000130   0.000000000
                        -0.000000064   0.000000001   0.000000041   0.000000459  -0.000000000   0.000000039   0.000000298   0.000000000

   32    2.2  1.5 -1.5   0.012625866  -0.000247561  -0.000071242  -0.000795160  -0.000091785   0.009597934   0.009989480  -0.000000003
                        -0.012081163   0.000236671  -0.000223415  -0.002493203   0.000016919  -0.001768332  -0.022827667   0.000000013

   33    3.2  1.5 -1.5   0.000407915  -0.000008007  -0.000393309  -0.004389192  -0.000343031   0.035870637  -0.003195790   0.000000001
                        -0.000390323   0.000007650  -0.001233222  -0.013762320   0.000063229  -0.006608840   0.007302925  -0.000000004

   34    4.2  1.5 -1.5   0.011387915  -0.000223089  -0.000162982  -0.001818847   0.000003152  -0.000329516   0.023967586  -0.000000014
                         0.011901364  -0.000233352   0.000051990   0.000580074   0.000017103  -0.001788504   0.010488313  -0.000000003

   35    5.2  1.5 -1.5  -0.000518902  -0.026475310   0.021489596  -0.001925650   0.012476700   0.000119316  -0.000000007  -0.013081082
                         0.000000235  -0.000000055   0.000000011   0.000000016  -0.000000001   0.000000009  -0.000000001  -0.000000001

   36    6.2  1.5 -1.5  -0.000000188   0.000000030  -0.000000010  -0.000000014  -0.000000002   0.000000006   0.000000001   0.000000001
                        -0.000449570  -0.022939105  -0.027216520   0.002438835  -0.007020875  -0.000067142  -0.000000007  -0.013081055

   37    7.2  1.5 -1.5  -0.000000002   0.000000000   0.000000001   0.000000012   0.000000000  -0.000000032  -0.000000038   0.000000000
                         0.000000002  -0.000000000   0.000000003   0.000000039  -0.000000000   0.000000006   0.000000087   0.000000000

   38    8.2  1.5 -1.5  -0.001690338   0.000033115  -0.000518246  -0.005783440   0.000027266  -0.002849860  -0.000000084  -0.000000000
                        -0.001766548   0.000034641   0.000165282   0.001844503   0.000147922  -0.015468112  -0.000000037  -0.000000000

   39    9.2  1.5 -1.5   0.000091553   0.004671807   0.018280661  -0.001638104   0.006385219   0.000061063  -0.000000008  -0.014575504
                        -0.000000034   0.000000001  -0.000000002  -0.000000003  -0.000000001   0.000000005  -0.000000001  -0.000000001

   40   10.2  1.5 -1.5   0.000000068  -0.000000019   0.000000003   0.000000004  -0.000000001   0.000000005   0.000000001   0.000000001
                         0.000141634   0.007226129  -0.016901535   0.001514522  -0.007698632  -0.000073623  -0.000000008  -0.014575487

   41    1.2  0.5  0.5  -0.010410117  -0.531149048   0.173729152  -0.015567592  -0.533796912  -0.005104787   0.000000000   0.000000362
                         0.000004612  -0.000000970   0.000000226   0.000000321   0.000000114  -0.000000430  -0.000000000   0.000000000

   42    2.2  0.5  0.5  -0.001400816   0.000027496  -0.046018288  -0.513547980  -0.000956881   0.100016126   0.000000556  -0.000000000
                        -0.001463646   0.000029036   0.014676537   0.163784900  -0.005191327   0.542855057   0.000000243  -0.000000000

   43    3.2  0.5  0.5   0.429997181  -0.008430774   0.013164572   0.146907722   0.000822650  -0.086024362  -0.000000100  -0.000000000
                        -0.411446033   0.008060167   0.041276344   0.460630355  -0.000151622   0.015849242   0.000000229  -0.000000000

   44    4.2  0.5  0.5  -0.351582988   0.006893966   0.016279174   0.181673171  -0.000182146   0.019047275  -0.000000210   0.000000000
                         0.336415340  -0.006590461   0.051044326   0.569635997   0.000033551  -0.003509302   0.000000480  -0.000000000

   45    5.2  0.5  0.5  -0.000002930   0.000000535  -0.000000145  -0.000000212   0.000000094  -0.000000479   0.000000000  -0.000000000
                        -0.006860853  -0.350069327  -0.275862754   0.024719695   0.631089602   0.006035203  -0.000000000  -0.000000243

   46    6.2  0.5  0.5  -0.000000317   0.000000006   0.000000019   0.000000212  -0.000000000   0.000000044   0.527792444  -0.000000302
                        -0.000000331   0.000000006  -0.000000006  -0.000000068  -0.000000002   0.000000237   0.230964124  -0.000000076

   47    7.2  0.5  0.5   0.000000007   0.000000352   0.000000521  -0.000000047  -0.000000328  -0.000000003   0.000000307   0.576115441
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000052   0.000000059

   48    8.2  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000052  -0.000000059
                         0.000000002   0.000000102  -0.000000319   0.000000029   0.000000086   0.000000001   0.000000307   0.576116046

   49    1.2  0.5 -0.5   0.383766022  -0.007524723  -0.004729896  -0.052787698  -0.005020213   0.524961432  -0.000000145   0.000000000
                        -0.367209682   0.007193684  -0.014831656  -0.165515192   0.000925367  -0.096719373   0.000000332   0.000000000

   50    2.2  0.5 -0.5   0.000000207  -0.000000228  -0.000000007  -0.000000010  -0.000000099   0.000000418   0.000000000  -0.000000000
                         0.000039989   0.002025973  -0.539033414   0.048302004  -0.551991701  -0.005278778  -0.000000000  -0.000000607

   51    3.2  0.5 -0.5   0.011663799   0.595134783   0.483489615  -0.043324849  -0.087472219  -0.000836506  -0.000000000  -0.000000249
                        -0.000004956   0.000000862  -0.000000253  -0.000000366  -0.000000013  -0.000000055  -0.000000000   0.000000000

   52    4.2  0.5 -0.5  -0.009537344  -0.486606497   0.597904931  -0.053577371   0.019367856   0.000185210  -0.000000000  -0.000000524
                         0.000004381  -0.000001073   0.000000200   0.000000285   0.000000013  -0.000000008   0.000000000  -0.000000000

   53    5.2  0.5 -0.5  -0.242020214   0.004741122   0.023550886   0.262820036  -0.001093998   0.114348007  -0.000000223   0.000000000
                        -0.252932304   0.004959141  -0.007511264  -0.083820559  -0.005935221   0.620643714  -0.000000098  -0.000000000

   54    6.2  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000052   0.000000059
                         0.000000009   0.000000458   0.000000222  -0.000000020  -0.000000241  -0.000000002  -0.000000307  -0.576115692

   55    7.2  0.5 -0.5  -0.000000254   0.000000005  -0.000000014  -0.000000158  -0.000000003   0.000000323  -0.230964023   0.000000076
                         0.000000243  -0.000000005  -0.000000044  -0.000000496   0.000000001  -0.000000059   0.527792214  -0.000000302

   56    8.2  0.5 -0.5   0.000000071  -0.000000001   0.000000027   0.000000304  -0.000000000   0.000000016   0.527792769  -0.000000302
                         0.000000074  -0.000000001  -0.000000009  -0.000000097  -0.000000001   0.000000085   0.230964266  -0.000000076


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5   0.001795849  -0.203112723  -0.000000000   0.198898856   0.000000000   0.000000110  -0.015506278   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.000000385  -0.000043526  -0.000000000  -0.000086687  -0.000689011  -0.402574488   0.323660753   0.000000057
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000001152   0.000000124  -0.000000242  -0.000000306

    3    3.2  1.5  1.5  -0.000000765   0.000086562   0.000000000  -0.000043726   0.000220427   0.128791175   0.090131177  -0.000000019
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000369  -0.000000040   0.000000077   0.000000098

    4    4.2  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000001209   0.000000130  -0.000000254  -0.000000322
                        -0.000000601   0.000067903   0.000000000   0.000069050   0.000723411   0.422673868  -0.280805532  -0.000000060

    5    5.2  1.5  1.5  -0.000067221  -0.000000595   0.000069667  -0.000000000  -0.183661088   0.000314637  -0.000000299   0.159776504
                        -0.000009586  -0.000000085   0.000002567  -0.000000000  -0.104552526   0.000178417  -0.000000134  -0.230921983

    6    6.2  1.5  1.5  -0.000009627  -0.000000085   0.000002557  -0.000000000  -0.104552510   0.000178417  -0.000000134  -0.230921379
                         0.000067506   0.000000597  -0.000069387   0.000000000   0.183661061  -0.000314637   0.000000299  -0.159776086

    7    7.2  1.5  1.5   0.000138239  -0.015635001  -0.000000000   0.015310724  -0.000000001  -0.000000763   0.182273446  -0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    8    8.2  1.5  1.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000102769  -0.011623331  -0.000000000   0.011382113   0.000000002   0.000001259  -0.241723103   0.000000001

    9    9.2  1.5  1.5  -0.006505303  -0.000057537   0.006706636  -0.000000019  -0.139144451   0.000238374  -0.000000226   0.120878474
                        -0.000927707  -0.000008222   0.000247115  -0.000000020  -0.079210593   0.000135172  -0.000000101  -0.174703390

   10   10.2  1.5  1.5  -0.000927729  -0.000008223   0.000247109  -0.000000020  -0.079210548   0.000135171  -0.000000101  -0.174703856
                         0.006505455   0.000057538  -0.006706473   0.000000019   0.139144371  -0.000238374   0.000000226  -0.120878796

   11    1.2  1.5  0.5  -0.196899016  -0.001741485   0.202982897  -0.000000587   0.000000019  -0.000000000  -0.000000025   0.013430642
                        -0.028079352  -0.000248872   0.007479190  -0.000000617   0.000000011  -0.000000000  -0.000000011  -0.019411055

   12    2.2  1.5  0.5  -0.000085828  -0.000000759  -0.000043418  -0.000000000  -0.111926909   0.000191746  -0.000000091  -0.051282970
                        -0.000012240  -0.000000108  -0.000001600  -0.000000000  -0.063716496   0.000108731  -0.000000040   0.074118587

   13    3.2  1.5  0.5  -0.000043122  -0.000000381   0.000086569  -0.000000000  -0.349854788   0.000599350  -0.000000285   0.184160249
                        -0.000006150  -0.000000055   0.000003190  -0.000000000  -0.199161412   0.000339866  -0.000000127  -0.266163439

   14    4.2  1.5  0.5  -0.000009825  -0.000000087  -0.000002504   0.000000000  -0.000000474   0.000000001   0.000000000   0.151696599
                         0.000068898   0.000000609   0.000067973   0.000000000   0.000000832  -0.000000001   0.000000000   0.104959719

   15    5.2  1.5  0.5   0.000000611  -0.000069104   0.000000000   0.000067806   0.000626492   0.366045940  -0.184466362   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000001047  -0.000000112  -0.000000000  -0.000000000

   16    6.2  1.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000001047  -0.000000112  -0.000000000  -0.000000000
                         0.000000615  -0.000069514  -0.000000000   0.000067830  -0.000626488  -0.366043902  -0.184468087   0.000000000

   17    7.2  1.5  0.5  -0.015156644  -0.000134054   0.015624945  -0.000000045   0.000000261  -0.000000000   0.000000295  -0.157875187
                        -0.002161457  -0.000019157   0.000575723  -0.000000048   0.000000149  -0.000000000   0.000000132   0.228174045

   18    8.2  1.5  0.5   0.000535617   0.000004747  -0.000142661   0.000000012  -0.091464643   0.000156083   0.000000058   0.100864684
                        -0.003755869  -0.000033219   0.003871764  -0.000000011   0.160670398  -0.000275251  -0.000000131   0.069788967

   19    9.2  1.5  0.5   0.000007781  -0.000877228  -0.000000023  -0.014320604  -0.000158214  -0.092441053   0.384868118   0.000000052
                        -0.000000020   0.000000012   0.000000023   0.000000012  -0.000000265   0.000000028  -0.000000222  -0.000000281

   20   10.2  1.5  0.5  -0.000000020   0.000000012   0.000000023   0.000000012  -0.000000265   0.000000028  -0.000000222  -0.000000281
                        -0.000126448   0.014298586   0.000000023   0.001177779   0.000158212   0.092439767  -0.105750214  -0.000000053

   21    1.2  1.5 -0.5   0.001759178  -0.198891107  -0.000000610  -0.203120642  -0.000000000  -0.000000021   0.023604474   0.000000005
                        -0.000000520   0.000000311   0.000000595   0.000000322  -0.000000000  -0.000000000  -0.000000021  -0.000000027

   22    2.2  1.5 -0.5   0.000000767  -0.000086697  -0.000000000   0.000043448   0.000220429   0.128792177  -0.090130505   0.000000019
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000369  -0.000000040  -0.000000077  -0.000000098

   23    3.2  1.5 -0.5   0.000000385  -0.000043558  -0.000000000  -0.000086627   0.000689005   0.402571287   0.323663365   0.000000057
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000001152  -0.000000124  -0.000000242  -0.000000306

   24    4.2  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000615  -0.000069595  -0.000000000   0.000068019   0.000000002   0.000000958  -0.184467885   0.000000000

   25    5.2  1.5 -0.5   0.000068412   0.000000605   0.000067760  -0.000000000   0.318112416  -0.000544971   0.000000000   0.104958852
                         0.000009756   0.000000086   0.000002497  -0.000000000   0.181091470  -0.000309030  -0.000000000  -0.151695347

   26    6.2  1.5 -0.5   0.000009814   0.000000087   0.000002498  -0.000000000  -0.181090462   0.000309028  -0.000000000  -0.151696765
                        -0.000068817  -0.000000608  -0.000067784  -0.000000000   0.318110645  -0.000544968  -0.000000000  -0.104959834

   27    7.2  1.5 -0.5   0.000135416  -0.015309989  -0.000000047  -0.015635549  -0.000000001  -0.000000301  -0.277467060  -0.000000059
                        -0.000000040   0.000000024   0.000000046   0.000000025  -0.000000000   0.000000000   0.000000251   0.000000318

   28    8.2  1.5 -0.5  -0.000000010   0.000000006   0.000000011   0.000000006  -0.000000529   0.000000057  -0.000000111  -0.000000140
                        -0.000033556   0.003793869   0.000000012   0.003874391   0.000316425   0.184880387  -0.122654737  -0.000000026

   29    9.2  1.5 -0.5   0.000868440   0.000007700  -0.014310893   0.000000022  -0.080335946   0.000137627   0.000000261  -0.218984905
                         0.000123857   0.000001118  -0.000527295   0.000000024  -0.045732747   0.000078042   0.000000117   0.316494991

   30   10.2  1.5 -0.5  -0.002018657  -0.000017871   0.000043378  -0.000000024   0.045732110  -0.000078041  -0.000000116  -0.086963240
                         0.014155373   0.000125179  -0.001176979   0.000000022  -0.080334828   0.000137625   0.000000261  -0.060170612

   31    1.2  1.5 -1.5  -0.201078391  -0.001777862  -0.198763987  -0.000000000  -0.000000096   0.000000000  -0.000000000  -0.008822862
                        -0.028675044  -0.000253534  -0.007323424  -0.000000000  -0.000000054   0.000000000   0.000000000   0.012751540

   32    2.2  1.5 -1.5  -0.000043090  -0.000000381   0.000086628  -0.000000000   0.349857570  -0.000599355  -0.000000285   0.184158763
                        -0.000006145  -0.000000055   0.000003192  -0.000000000   0.199162996  -0.000339868  -0.000000127  -0.266161291

   33    3.2  1.5 -1.5   0.000085695   0.000000758   0.000043696   0.000000000  -0.111926038   0.000191745   0.000000091   0.051283352
                         0.000012221   0.000000108   0.000001610   0.000000000  -0.063716000   0.000108730   0.000000040  -0.074119140

   34    4.2  1.5 -1.5   0.000009587   0.000000085  -0.000002543   0.000000000  -0.209106628   0.000356837   0.000000134   0.230919425
                        -0.000067223  -0.000000595   0.000069003  -0.000000000   0.367324947  -0.000629279  -0.000000299   0.159774734

   35    5.2  1.5 -1.5  -0.000000601   0.000067901   0.000000000   0.000069715  -0.000361703  -0.211335340  -0.280808642  -0.000000060
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000605   0.000000065   0.000000254   0.000000322

   36    6.2  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000605  -0.000000065  -0.000000254  -0.000000322
                        -0.000000603   0.000068189   0.000000000   0.000069434  -0.000361703  -0.211335308  -0.280807908  -0.000000060

   37    7.2  1.5 -1.5  -0.015478404  -0.000136854  -0.015300342  -0.000000000   0.000000664  -0.000000001   0.000000000   0.103711113
                        -0.002207318  -0.000019516  -0.000563738  -0.000000000   0.000000378  -0.000000001  -0.000000000  -0.149892009

   38    8.2  1.5 -1.5  -0.001640958  -0.000014509  -0.000419088  -0.000000000  -0.000000623   0.000000001   0.000000000   0.198780252
                         0.011506915   0.000101740   0.011374395   0.000000000   0.000001094  -0.000000002   0.000000001   0.137537160

   39    9.2  1.5 -1.5  -0.000058121   0.006571119   0.000000020   0.006711187  -0.000274032  -0.160110887  -0.212445004  -0.000000046
                         0.000000017  -0.000000010  -0.000000020  -0.000000011  -0.000000458   0.000000049   0.000000192   0.000000243

   40   10.2  1.5 -1.5  -0.000000017   0.000000010   0.000000020   0.000000011   0.000000458  -0.000000049  -0.000000192  -0.000000243
                        -0.000058122   0.006571272   0.000000020   0.006711024  -0.000274031  -0.160110796  -0.212445571  -0.000000046

   41    1.2  0.5  0.5  -0.000695261   0.078563605   0.000000587   0.306034242   0.000000000   0.000000188  -0.015446537  -0.000000002
                         0.000000501  -0.000000299  -0.000000573  -0.000000310   0.000000000  -0.000000000   0.000000010   0.000000013

   42    2.2  0.5  0.5  -0.031869688  -0.000281780  -0.008139318  -0.000000000  -0.000000112   0.000000000   0.000000000   0.006985665
                         0.223480232   0.001975931   0.220908061   0.000000000   0.000000197  -0.000000000   0.000000000   0.004833421

   43    3.2  0.5  0.5  -0.304459958  -0.002692464   0.072350904  -0.000000552   0.000000018  -0.000000000  -0.000000012   0.003628791
                        -0.043418200  -0.000384456   0.002666058  -0.000000580   0.000000010  -0.000000000  -0.000000005  -0.005244617

   44    4.2  0.5  0.5  -0.071672010  -0.000633356  -0.307344247   0.000000349  -0.000000096   0.000000000   0.000000007  -0.008020759
                        -0.010220693  -0.000090008  -0.011324236   0.000000367  -0.000000055   0.000000000   0.000000003   0.011592263

   45    5.2  0.5  0.5  -0.000000501   0.000000299   0.000000573   0.000000310  -0.000000000   0.000000000  -0.000000010  -0.000000013
                        -0.002691185   0.304305107   0.000000587   0.084976263   0.000000000   0.000000063  -0.006951617  -0.000000002

   46    6.2  0.5  0.5  -0.065947188  -0.000584501   0.017565658  -0.000001450   0.018498166  -0.000031567   0.000000010   0.017215856
                         0.462437181   0.004090052  -0.476726483   0.000001379  -0.032494607   0.000055668  -0.000000022   0.011911769

   47    7.2  0.5  0.5  -0.005718472   0.646679376   0.000000716  -0.166025781  -0.000063995  -0.037390911  -0.001442687   0.000000002
                         0.000000611  -0.000000365  -0.000000699  -0.000000378  -0.000000107   0.000000011  -0.000000009  -0.000000012

   48    8.2  0.5  0.5  -0.000000611   0.000000365   0.000000699   0.000000378   0.000000107  -0.000000011   0.000000009   0.000000012
                         0.001586858  -0.179562564   0.000000715   0.643074587  -0.000063995  -0.037390812   0.022376987   0.000000002

   49    1.2  0.5 -0.5   0.077776689   0.000688227  -0.305826714   0.000000565  -0.000000163   0.000000000   0.000000012  -0.008788878
                         0.011091747   0.000098651  -0.011268441   0.000000594  -0.000000093   0.000000000   0.000000005   0.012702407

   50    2.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.001995921   0.225741204   0.000000000  -0.221057955  -0.000000000  -0.000000227   0.008494791  -0.000000000

   51    3.2  0.5 -0.5  -0.002719774   0.307540251   0.000000572   0.072400010   0.000000000   0.000000020  -0.006377628  -0.000000002
                         0.000000488  -0.000000292  -0.000000559  -0.000000302   0.000000000  -0.000000000   0.000000010   0.000000013

   52    4.2  0.5 -0.5  -0.000639719   0.072397098  -0.000000362  -0.307552800  -0.000000000  -0.000000110   0.014096564   0.000000001
                        -0.000000309   0.000000185   0.000000354   0.000000191  -0.000000000   0.000000000  -0.000000006  -0.000000008

   53    5.2  0.5 -0.5   0.042961477   0.000380432  -0.003129121   0.000000594  -0.000000031   0.000000000   0.000000005   0.005716635
                        -0.301257216  -0.002664160   0.084918629  -0.000000565   0.000000055  -0.000000000  -0.000000012   0.003955384

   54    6.2  0.5 -0.5  -0.000001221   0.000000729   0.000001398   0.000000756  -0.000000107   0.000000011   0.000000019   0.000000024
                        -0.004131606   0.467115806   0.000001432   0.477049992   0.000063995   0.037390930   0.020935041   0.000000004

   55    7.2  0.5 -0.5   0.640202332   0.005661111   0.165913219   0.000000690   0.032494591  -0.000055668  -0.000000011  -0.000820861
                         0.091297250   0.000807927   0.006112665   0.000000725   0.018498157  -0.000031567  -0.000000005   0.001186394

   56    8.2  0.5 -0.5  -0.025349919  -0.000223425  -0.023678280   0.000000725   0.018498107  -0.000031567  -0.000000005  -0.018401641
                         0.177764155   0.001571050   0.642638518  -0.000000689  -0.032494505   0.000055668   0.000000011  -0.012732209


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5  -0.023593558   0.000718716   0.000000107   0.000000367  -0.028208592  -0.000094950   0.000103394  -0.000657249
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.090089881   0.002744529   0.038449965   0.131442646  -0.091678081  -0.000308559  -0.041164943   0.261687091
                         0.000000162   0.000000099   0.000000174  -0.000000028  -0.000000024   0.000000036  -0.000000070   0.000000994

    3    3.2  1.5  1.5   0.323511656  -0.009854990  -0.012298357  -0.042042396  -0.264890659  -0.000891626   0.014246549  -0.090565521
                        -0.000000052  -0.000000032  -0.000000056   0.000000009   0.000000008  -0.000000012   0.000000022  -0.000000318

    4    4.2  1.5  1.5   0.000000170   0.000000104   0.000000183  -0.000000029  -0.000000025   0.000000038  -0.000000074   0.000001044
                         0.184382216  -0.005616906  -0.040368695  -0.138001897   0.006604228   0.000022201   0.043548207  -0.276837492

    5    5.2  1.5  1.5   0.003265928   0.107205408  -0.004640072   0.001357422   0.000020614  -0.006127762  -0.082258629  -0.012939865
                         0.004569802   0.150011770  -0.068787442   0.020121885  -0.000008396   0.002507997   0.264365072   0.041586194

    6    6.2  1.5  1.5   0.004569821   0.150012366  -0.068781747   0.020120220  -0.000008385   0.002504849   0.264361599   0.041585647
                        -0.003265941  -0.107205834   0.004639688  -0.001357310  -0.000020588   0.006120069   0.082257548   0.012939695

    7    7.2  1.5  1.5   0.277338716  -0.008448396  -0.000002222  -0.000007596   0.622648819   0.002095826  -0.002282223   0.014507487
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    8    8.2  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.367794277   0.011203888   0.000000558   0.000001909  -0.360666713  -0.001213998   0.001322639  -0.008407667

    9    9.2  1.5  1.5   0.002470849   0.081106629   0.030580678  -0.008946173  -0.000015320   0.004554136   0.061133382   0.009616714
                         0.003457300   0.113491933   0.453347845  -0.132614517   0.000006240  -0.001863937  -0.196472165  -0.030906237

   10   10.2  1.5  1.5   0.003457281   0.113491293   0.453342757  -0.132613029   0.000006230  -0.001861215  -0.196469258  -0.030905779
                        -0.002470835  -0.081106172  -0.030580334   0.008946073   0.000015298  -0.004547486  -0.061132477  -0.009616572

   11    1.2  1.5  0.5   0.000274532   0.009011631  -0.000000268   0.000000078  -0.000002071   0.000615767   0.008279141   0.001302368
                         0.000384135   0.012609911  -0.000003975   0.000001163   0.000000844  -0.000252024  -0.026607735  -0.004185555

   12    2.2  1.5  0.5   0.005730051   0.188100594  -0.002828757   0.000827534  -0.000825325   0.245194628  -0.026916453  -0.004234160
                         0.008017950   0.263207416  -0.041935326   0.012267033   0.000337802  -0.100353270   0.086504768   0.013607758

   13    3.2  1.5  0.5   0.001595819   0.052380413  -0.008841287   0.002586460   0.000285643  -0.084865072  -0.077759135  -0.012232059
                         0.002232844   0.073295674  -0.131068993   0.038340650  -0.000116869   0.034733609   0.249904500   0.039311446

   14    4.2  1.5  0.5   0.006956318   0.228357677   0.000003083  -0.000000902   0.000357359  -0.106167790   0.006239217   0.000981513
                        -0.004971319  -0.163195359  -0.000000208   0.000000061   0.000873141  -0.259401310   0.001941392   0.000305407

   15    5.2  1.5  0.5  -0.280676029   0.008550059  -0.034952532  -0.119486541   0.280258397   0.000943345  -0.001030282   0.006549233
                        -0.000000000  -0.000000000  -0.000000159   0.000000025  -0.000000000  -0.000000000  -0.000000000   0.000000000

   16    6.2  1.5  0.5   0.000000000  -0.000000000  -0.000000159   0.000000025  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.280677292   0.008550097   0.034950002   0.119477891   0.280251984   0.000943324  -0.001023751   0.006507713

   17    7.2  1.5  0.5  -0.003227092  -0.105930600   0.000005871  -0.000001717   0.000045722  -0.013591506  -0.182746107  -0.028747257
                        -0.004515462  -0.148227940   0.000087029  -0.000025458  -0.000018622   0.005562791   0.587314527   0.092388058

   18    8.2  1.5  0.5  -0.001996078  -0.065524761   0.523526314  -0.153143309  -0.000003577   0.001068588   0.113322421   0.017826289
                         0.001426549   0.046827051  -0.035314582   0.010331045  -0.000008783   0.002610870   0.035260887   0.005546787

   19    9.2  1.5  0.5   0.051272529  -0.001561721  -0.076755003  -0.262389857   0.213876418   0.000719880   0.036593500  -0.232626402
                         0.000000149   0.000000091  -0.000000348   0.000000055   0.000000021  -0.000000033   0.000000063  -0.000000896

   20   10.2  1.5  0.5   0.000000149   0.000000091  -0.000000348   0.000000055   0.000000021  -0.000000033   0.000000063  -0.000000896
                         0.373420074  -0.011375425   0.076752190   0.262380240   0.202538009   0.000681764  -0.038118611   0.242321126

   21    1.2  1.5 -0.5  -0.015499011   0.000472152  -0.000001165  -0.000003984   0.000665346   0.000002237   0.004383495  -0.027866032
                         0.000000014   0.000000009  -0.000000000   0.000000000   0.000000002  -0.000000004   0.000000007  -0.000000105

   22    2.2  1.5 -0.5  -0.323511943   0.009854999  -0.012294914  -0.042030624   0.264936189   0.000891780  -0.014251287   0.090595642
                         0.000000052   0.000000032  -0.000000056   0.000000009  -0.000000008   0.000000012  -0.000000022   0.000000318

   23    3.2  1.5 -0.5  -0.090088642   0.002744491  -0.038427792  -0.131366850  -0.091697895  -0.000308626  -0.041170536   0.261722644
                         0.000000162   0.000000099  -0.000000174   0.000000027  -0.000000024   0.000000036  -0.000000070   0.000000995

   24    4.2  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.280677669   0.008550109   0.000000904   0.000003090   0.280286709   0.000943440  -0.001027930   0.006534282

   25    5.2  1.5 -0.5  -0.004971290  -0.163194405   0.008041716  -0.002352550   0.000873052  -0.259375108   0.001945834   0.000306106
                        -0.006956277  -0.228356342   0.119215621  -0.034873270  -0.000357323   0.106157066  -0.006253494  -0.000983758

   26    6.2  1.5 -0.5  -0.006956308  -0.228357370  -0.119206991   0.034870746  -0.000357315   0.106154637  -0.006213848  -0.000977522
                         0.004971312   0.163195140   0.008041134  -0.002352380  -0.000873032   0.259369173  -0.001933498  -0.000304165

   27    7.2  1.5 -0.5   0.182188951  -0.005550092   0.000025516   0.000087227  -0.014685833  -0.000049368  -0.096757212   0.615089012
                        -0.000000168  -0.000000103   0.000000000  -0.000000000  -0.000000055   0.000000085  -0.000000164   0.000002320

   28    8.2  1.5 -0.5   0.000000074   0.000000045  -0.000000696   0.000000110   0.000000011  -0.000000016   0.000000032  -0.000000448
                         0.080537363  -0.002453441   0.153491380   0.524716039  -0.002821085  -0.000009483  -0.018669318   0.118681512

   29    9.2  1.5 -0.5   0.000907963   0.029811677   0.017659434  -0.005166149   0.000666251  -0.197939535  -0.069114482  -0.010872188
                         0.001270660   0.041714938   0.261794923  -0.076580947  -0.000272648   0.081012732   0.222122109   0.034941090

   30   10.2  1.5 -0.5   0.009254925   0.303812429  -0.261785327   0.076578140  -0.000258271   0.076717899  -0.231379054  -0.036397332
                        -0.006614126  -0.217118769   0.017658786  -0.005165960  -0.000630951   0.187446017  -0.071994869  -0.011325312

   31    1.2  1.5 -1.5   0.000417885   0.013718081   0.000000025  -0.000000007   0.000087875  -0.026106645   0.000195274   0.000030719
                         0.000584743   0.019195578   0.000000367  -0.000000107  -0.000035965   0.010684930  -0.000627570  -0.000098725

   32    2.2  1.5 -1.5   0.001595841   0.052381133   0.008846389  -0.002587952   0.000285581  -0.084846734  -0.077748573  -0.012230397
                         0.002232874   0.073296683   0.131144617  -0.038362772  -0.000116843   0.034726103   0.249870553   0.039306105

   33    3.2  1.5 -1.5  -0.005730046  -0.188100427  -0.002829549   0.000827766   0.000825183  -0.245152490   0.026907504   0.004232753
                        -0.008017943  -0.263207182  -0.041947071   0.012270469  -0.000337744   0.100336024  -0.086476007  -0.013603233

   34    4.2  1.5 -1.5  -0.004569821  -0.150012368  -0.137688996   0.040277151   0.000008374  -0.002501591  -0.264336831  -0.041581751
                         0.003265941   0.107205836   0.009287841  -0.002717096   0.000020561  -0.006112108  -0.082249841  -0.012938483

   35    5.2  1.5 -1.5   0.184381480  -0.005616884   0.020167619   0.068943763   0.006621142   0.000022258   0.043552860  -0.276867068
                        -0.000000170  -0.000000104   0.000000091  -0.000000014   0.000000025  -0.000000038   0.000000074  -0.000001044

   36    6.2  1.5 -1.5   0.000000170   0.000000104  -0.000000091   0.000000014  -0.000000025   0.000000038  -0.000000074   0.000001044
                         0.184382213  -0.005616906   0.020165950   0.068938055   0.006612830   0.000022230   0.043552288  -0.276863430

   37    7.2  1.5 -1.5  -0.004912180  -0.161253980  -0.000000511   0.000000150  -0.001939657   0.576252510  -0.004310301  -0.000678068
                        -0.006873565  -0.225641124  -0.000007578   0.000002217   0.000793863  -0.235848675   0.013852382   0.002179166

   38    8.2  1.5 -1.5   0.009115416   0.299235229   0.000001905  -0.000000557  -0.000459842   0.136614355  -0.008028007  -0.001262913
                        -0.006514314  -0.213847861  -0.000000128   0.000000038  -0.001123538   0.333791846  -0.002497991  -0.000392968

   39    9.2  1.5 -1.5   0.139494459  -0.004249473  -0.132915929  -0.454378087  -0.004920814  -0.000016542  -0.032367834   0.205763461
                        -0.000000129  -0.000000079  -0.000000603   0.000000095  -0.000000018   0.000000028  -0.000000055   0.000000776

   40   10.2  1.5 -1.5   0.000000129   0.000000079   0.000000603  -0.000000095   0.000000018  -0.000000028   0.000000055  -0.000000776
                         0.139493672  -0.004249449  -0.132914437  -0.454372988  -0.004913629  -0.000016518  -0.032367355   0.205760417

   41    1.2  0.5  0.5   0.000890745  -0.000027142  -0.000000833  -0.000002849   0.011289977   0.000038000   0.002880150  -0.018309230
                        -0.000000007  -0.000000004  -0.000000000   0.000000000   0.000000002  -0.000000003   0.000000005  -0.000000070

   42    2.2  0.5  0.5   0.000320352   0.010516333  -0.000000280   0.000000082   0.000027663  -0.008218393   0.000482852   0.000075959
                        -0.000228939  -0.007515476   0.000000019  -0.000000006   0.000067589  -0.020080119   0.000150244   0.000023635

   43    3.2  0.5  0.5   0.000249566   0.008192357   0.000000182  -0.000000053  -0.000034825   0.010345810  -0.005459481  -0.000858816
                         0.000349209   0.011463496   0.000002695  -0.000000788   0.000014256  -0.004234332   0.017545828   0.002760065

   44    4.2  0.5  0.5   0.000112903   0.003706481  -0.000000112   0.000000033  -0.000057950   0.017216392   0.003280877   0.000516104
                         0.000157989   0.005186436  -0.000001663   0.000000486   0.000023716  -0.007046328  -0.010544178  -0.001658659

   45    5.2  0.5  0.5   0.000000007   0.000000004   0.000000000  -0.000000000  -0.000000002   0.000000003  -0.000000005   0.000000070
                         0.013816281  -0.000420884  -0.000000652  -0.000002227  -0.010404153  -0.000035022   0.002959575  -0.018814112

   46    6.2  0.5  0.5  -0.000340691  -0.011183770  -0.004877240   0.001426703   0.000000391  -0.000116841  -0.012338643  -0.001940942
                         0.000243483   0.007992444   0.000328995  -0.000096245   0.000000960  -0.000285476  -0.003839236  -0.000603939

   47    7.2  0.5  0.5  -0.024994712   0.000761405  -0.001429186  -0.004885726   0.011174739   0.000037615  -0.001058062   0.006726127
                         0.000000006   0.000000004  -0.000000006   0.000000001  -0.000000001   0.000000001  -0.000000002   0.000000024

   48    8.2  0.5  0.5  -0.000000006  -0.000000004   0.000000006  -0.000000001   0.000000001  -0.000000001   0.000000002  -0.000000024
                         0.011248503  -0.000342649  -0.001429068  -0.004885321  -0.011483641  -0.000038653  -0.000975005   0.006198152

   49    1.2  0.5 -0.5  -0.000015784  -0.000517904  -0.000000192   0.000000056  -0.000035169   0.010448711   0.005439765   0.000855713
                        -0.000022080  -0.000724709  -0.000002843   0.000000832   0.000014391  -0.004276451  -0.017482472  -0.002750095

   50    2.2  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.012925774  -0.000393750   0.000000082   0.000000280  -0.021696846  -0.000073031   0.000079551  -0.000505687

   51    3.2  0.5 -0.5   0.014089942  -0.000429220  -0.000000790  -0.000002701  -0.011178790  -0.000037630   0.002890592  -0.018375582
                        -0.000000007  -0.000000004  -0.000000000   0.000000000   0.000000002  -0.000000002   0.000000005  -0.000000068

   52    4.2  0.5 -0.5   0.006374725  -0.000194185   0.000000488   0.000001667  -0.018602551  -0.000062615  -0.001737099   0.011042819
                         0.000000004   0.000000003   0.000000000  -0.000000000  -0.000000001   0.000000002  -0.000000003   0.000000043

   53    5.2  0.5 -0.5  -0.000342426  -0.011240848  -0.000002222   0.000000650  -0.000013268   0.003940913  -0.017964556  -0.002825933
                         0.000244719   0.008033241   0.000000150  -0.000000044  -0.000032412   0.009628894  -0.005589770  -0.000879311

   54    6.2  0.5 -0.5  -0.000000013  -0.000000008  -0.000000006   0.000000001   0.000000001  -0.000000002   0.000000003  -0.000000049
                        -0.013746122   0.000418753   0.001429946   0.004888324  -0.000308462  -0.000001037  -0.002032731   0.012922146

   55    7.2  0.5 -0.5   0.000442710   0.014532754  -0.000328820   0.000096194  -0.000034811   0.010342060  -0.001998368  -0.000314358
                         0.000619473   0.020335552  -0.004874648   0.001425945   0.000014249  -0.004232799   0.006422406   0.001010285

   56    8.2  0.5 -0.5  -0.000278780  -0.009151712  -0.004874245   0.001425827  -0.000014640   0.004349806   0.005918273   0.000930978
                         0.000199225   0.006540260   0.000328793  -0.000096186  -0.000035773   0.010627944   0.001841502   0.000289681


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  1.5  1.5  -0.000000000   0.000000668   0.000000081   0.000000485   0.000000148   0.000001267  -0.000751391  -0.002196396
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.000000055   0.100439432   0.041831928   0.250602207   0.016371045   0.140560869  -0.028217454  -0.082482825
                        -0.000000103  -0.000000008   0.000000090  -0.000000101  -0.000000018   0.000000008  -0.000000405   0.000000137

    3    3.2  1.5  1.5   0.000000065   0.139718684  -0.001634065  -0.009789117   0.067287262   0.577724861   0.006409401   0.018735429
                        -0.000000161  -0.000000003  -0.000000014  -0.000000012  -0.000000074   0.000000061   0.000000129  -0.000000044

    4    4.2  1.5  1.5  -0.000000049  -0.000000007   0.000000090  -0.000000093   0.000000005  -0.000000010  -0.000000424   0.000000143
                        -0.000000033  -0.053089545  -0.040340431  -0.241667084   0.004910419   0.042160658   0.028811681   0.084219823

    5    5.2  1.5  1.5   0.448315166  -0.000000309   0.140598923  -0.023469679   0.154099545  -0.017947879  -0.084087645   0.028766434
                        -0.095355640  -0.000000438   0.225495139  -0.037640839  -0.018890797   0.002200172   0.005149677  -0.001762182

    6    6.2  1.5  1.5   0.062220119   0.000000314   0.389725719  -0.065055124   0.003503368  -0.000408029   0.005149226  -0.001762028
                         0.292528234  -0.000000181  -0.242998688   0.040562863   0.028578440  -0.003328530   0.084080275  -0.028763912

    7    7.2  1.5  1.5  -0.000000000  -0.000015415  -0.000001800  -0.000010781  -0.000003235  -0.000027775  -0.019738701  -0.057698299
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    8    8.2  1.5  1.5  -0.000000093  -0.000000003   0.000000007  -0.000000021  -0.000000038   0.000000030  -0.000000000   0.000000000
                        -0.000000039  -0.082160304  -0.005616399  -0.033646151  -0.034675890  -0.297725347  -0.014589781  -0.042647466

    9    9.2  1.5  1.5  -0.299520626   0.000000195   0.100111175  -0.016711177  -0.061232577   0.007131730   0.284295410  -0.097257629
                         0.063707380   0.000000309   0.160560117  -0.026801571   0.007506388  -0.000874253  -0.017410757   0.005957835

   10   10.2  1.5  1.5  -0.073313282  -0.000000345   0.017752656  -0.002963353  -0.011966510   0.001393715  -0.017410720   0.005957822
                        -0.344682858   0.000000232  -0.011068986   0.001847719  -0.097615485   0.011369220  -0.284294804   0.097257422

   11    1.2  1.5  0.5  -0.000000029   0.000000000  -0.000000170   0.000000028   0.000000329  -0.000000038   0.025359517  -0.008675506
                         0.000000006   0.000000000  -0.000000272   0.000000045  -0.000000040   0.000000005  -0.001553062   0.000531447

   12    2.2  1.5  0.5   0.289918233  -0.000000184  -0.117787474   0.019661805   0.461470044  -0.053747152  -0.018690527   0.006394031
                        -0.061664973  -0.000000297  -0.188909706   0.031533838  -0.056570787   0.006588697   0.001144629  -0.000391722

   13    3.2  1.5  0.5  -0.147274404   0.000000103  -0.096564886   0.016119230  -0.191568879   0.022311910  -0.082301971   0.028155556
                         0.031324937   0.000000138  -0.154872528   0.025852147   0.023484093  -0.002735149   0.005040323  -0.001724750

   14    4.2  1.5  0.5   0.113675224   0.000000543   0.056902094  -0.009498426  -0.035177700   0.004097090  -0.000445198   0.000152303
                         0.534444774  -0.000000359  -0.035479166   0.005922397  -0.286958227   0.033421848  -0.007269313   0.002486846

   15    5.2  1.5  0.5   0.000000035   0.049345273   0.056361101   0.337641968  -0.018600483  -0.159702837   0.002487729   0.007271894
                        -0.000000040  -0.000000009   0.000000127  -0.000000127   0.000000020  -0.000000025  -0.000000000   0.000000000

   16    6.2  1.5  0.5  -0.000000102  -0.000000011   0.000000132  -0.000000141  -0.000000005  -0.000000005   0.000000000  -0.000000000
                        -0.000000061  -0.103917053  -0.060092455  -0.359995384  -0.004427177  -0.038011426   0.002490413   0.007279739

   17    7.2  1.5  0.5   0.000000523  -0.000000000   0.000003379  -0.000000564  -0.000008198   0.000000955   0.666181687  -0.227901152
                        -0.000000111   0.000000000   0.000005420  -0.000000905   0.000001005  -0.000000117  -0.040798153   0.013960832

   18    8.2  1.5  0.5   0.016634399   0.000000062  -0.308863160   0.051557094   0.007726137  -0.000899848   0.010051738  -0.003439632
                         0.078206770  -0.000000064   0.192579898  -0.032146656   0.063025038  -0.007340479   0.164132034  -0.056149667

   19    9.2  1.5  0.5  -0.000000009  -0.031182752   0.025513576   0.152843940  -0.033729734  -0.289601740   0.120939650   0.353520294
                         0.000000043  -0.000000003   0.000000061  -0.000000052   0.000000037  -0.000000034   0.000001658  -0.000000560

   20   10.2  1.5  0.5  -0.000000117  -0.000000007   0.000000074  -0.000000088  -0.000000029   0.000000018   0.000001658  -0.000000560
                        -0.000000059  -0.111148575  -0.035244462  -0.211138736  -0.026336111  -0.226120402  -0.104091934  -0.304272647

   21    1.2  1.5 -0.5   0.000000000   0.000000029   0.000000054   0.000000321   0.000000039   0.000000331   0.008691768   0.025407028
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000128  -0.000000043

   22    2.2  1.5 -0.5  -0.000000118  -0.296403696   0.037161397   0.222622475   0.054149490   0.464924569  -0.006406019  -0.018725543
                         0.000000328   0.000000004   0.000000052  -0.000000086  -0.000000065   0.000000043  -0.000000129   0.000000044

   23    3.2  1.5 -0.5   0.000000072   0.150568927   0.030465769   0.182511032  -0.022478932  -0.193002949  -0.028208334  -0.082456166
                        -0.000000157  -0.000000008   0.000000078  -0.000000070   0.000000026  -0.000000025  -0.000000404   0.000000137

   24    4.2  1.5 -0.5   0.000000606   0.000000014   0.000000007  -0.000000004   0.000000032  -0.000000032  -0.000000000   0.000000000
                         0.000000239   0.546400286  -0.011193519  -0.067056837   0.033672037   0.289106373   0.002491506   0.007282933

   25    5.2  1.5 -0.5   0.048265575  -0.000000042   0.178643219  -0.029820259   0.158516196  -0.018462278  -0.007258295   0.002483077
                        -0.010265974  -0.000000032   0.286511254  -0.047825995  -0.019432228   0.002263236   0.000444523  -0.000152072

   26    6.2  1.5 -0.5   0.021619297   0.000000087  -0.305479590   0.050992290  -0.004625120   0.000538681   0.000445003  -0.000152236
                         0.101643297  -0.000000080   0.190470198  -0.031794489  -0.037728992   0.004394283   0.007266125  -0.002485755

   27    7.2  1.5 -0.5  -0.000000000  -0.000000535  -0.000001066  -0.000006387  -0.000000962  -0.000008259   0.228328360   0.667429794
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000003364  -0.000001136

   28    8.2  1.5 -0.5   0.000000074   0.000000010  -0.000000135   0.000000140  -0.000000008   0.000000016   0.000000829  -0.000000280
                         0.000000050   0.079956251   0.060758057   0.363982786  -0.007395428  -0.063496841  -0.056254921  -0.164439539

   29    9.2  1.5 -0.5  -0.030500457   0.000000018   0.080868310  -0.013499056   0.287449913  -0.033479117  -0.352859202   0.120713376
                         0.006487383   0.000000040   0.129698059  -0.021649897  -0.035237978   0.004104105   0.021609768  -0.007394569

   30   10.2  1.5 -0.5   0.023123774   0.000000102  -0.179165007   0.029907181  -0.027513727   0.003204477  -0.018599311   0.006364686
                         0.108716590  -0.000000082   0.111711530  -0.018647590  -0.224440262   0.026140430  -0.303703654   0.103897168

   31    1.2  1.5 -1.5  -0.000000653  -0.000000000  -0.000000257   0.000000043   0.000001258  -0.000000146  -0.002192289   0.000749986
                         0.000000139  -0.000000000  -0.000000412   0.000000069  -0.000000154   0.000000018   0.000134263  -0.000045932

   32    2.2  1.5 -1.5  -0.098241768   0.000000075  -0.132591286   0.022132973   0.139516462  -0.016249406  -0.082328581   0.028164660
                         0.020895802   0.000000089  -0.212652337   0.035497067  -0.017103068   0.001991966   0.005041953  -0.001725307

   33    3.2  1.5 -1.5  -0.136661570   0.000000096   0.005179346  -0.000864581   0.573432195  -0.066787307   0.018700395  -0.006397407
                         0.029067614   0.000000143   0.008306698  -0.001386603  -0.070296033   0.008187256  -0.001145234   0.000391929

   34    4.2  1.5 -1.5  -0.011044949  -0.000000041   0.205070300  -0.034231434  -0.005130004   0.000597481  -0.005148127   0.001761652
                        -0.051927920   0.000000043  -0.127863801   0.021343835  -0.041847391   0.004873934  -0.084062330   0.028757773

   35    5.2  1.5 -1.5   0.000000211   0.458343960   0.044358298   0.265736928  -0.018082232  -0.155253122   0.028820357   0.084245185
                        -0.000000492  -0.000000019   0.000000120  -0.000000112   0.000000024  -0.000000023   0.000000425  -0.000000143

   36    6.2  1.5 -1.5  -0.000000345   0.000000001  -0.000000149   0.000000167   0.000000008   0.000000008  -0.000000425   0.000000143
                        -0.000000112  -0.299072084   0.076664953   0.459276059   0.003353446   0.028792373   0.028817831   0.084237801

   37    7.2  1.5 -1.5   0.000015078  -0.000000000   0.000005704  -0.000000952  -0.000027568   0.000003211  -0.057590395   0.019701787
                        -0.000003207   0.000000000   0.000009149  -0.000001527   0.000003380  -0.000000394   0.003527037  -0.001206606

   38    8.2  1.5 -1.5  -0.017092946  -0.000000082   0.028550960  -0.004765877   0.036226432  -0.004219229   0.002606995  -0.000891858
                        -0.080362595   0.000000058  -0.017801857   0.002971592   0.295513161  -0.034418243   0.042567710  -0.014562497

   39    9.2  1.5 -1.5  -0.000000126  -0.306220893   0.031584611   0.189213632   0.007185116   0.061690958  -0.097439942  -0.284828044
                         0.000000343   0.000000005   0.000000051  -0.000000065  -0.000000012   0.000000002  -0.000001435   0.000000485

   40   10.2  1.5 -1.5   0.000000385   0.000000011  -0.000000027   0.000000016  -0.000000016   0.000000011   0.000001435  -0.000000485
                         0.000000155   0.352393402   0.003492210   0.020920785  -0.011454327  -0.098346227  -0.097439734  -0.284827437

   41    1.2  0.5  0.5  -0.000000005  -0.009408716  -0.002983478  -0.017873097  -0.002229284  -0.019140509   0.004278891   0.012507683
                         0.000000010   0.000000001  -0.000000006   0.000000007   0.000000002  -0.000000002   0.000000060  -0.000000020

   42    2.2  0.5  0.5  -0.004396100  -0.000000021  -0.006281077   0.001048472  -0.002041638   0.000237786  -0.000072698   0.000024870
                        -0.020668291   0.000000014   0.003916327  -0.000653737  -0.016654438   0.001939733  -0.001187037   0.000406088

   43    3.2  0.5  0.5  -0.009369773   0.000000006   0.013323785  -0.002224090   0.006583149  -0.000766735  -0.010962818   0.003750386
                         0.001992931   0.000000011   0.021368930  -0.003567017  -0.000807017   0.000093992   0.000671381  -0.000229745

   44    4.2  0.5  0.5  -0.025504059   0.000000017  -0.005349549   0.000892981   0.001759147  -0.000204887   0.008350251  -0.002856627
                         0.005424657   0.000000025  -0.008579706   0.001432170  -0.000215650   0.000025117  -0.000511386   0.000174987

   45    5.2  0.5  0.5   0.000000004  -0.000000000   0.000000005  -0.000000004   0.000000003  -0.000000003  -0.000000060   0.000000020
                         0.000000001   0.002639815  -0.002159790  -0.012938633   0.002855358   0.024515958   0.003872121   0.011318652

   46    6.2  0.5  0.5   0.000000016   0.000000000  -0.000000188   0.000000031  -0.000000018   0.000000002   0.001483059  -0.000507492
                         0.000000074  -0.000000000   0.000000117  -0.000000020  -0.000000145   0.000000017   0.024216456  -0.008284464

   47    7.2  0.5  0.5   0.000000000  -0.000000115  -0.000000064  -0.000000385  -0.000000056  -0.000000485   0.003528601   0.010314509
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000061  -0.000000021

   48    8.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000061   0.000000021
                        -0.000000000   0.000000285   0.000000007   0.000000040   0.000000072   0.000000620   0.004771392   0.013947316

   49    1.2  0.5 -0.5   0.009202848  -0.000000007   0.009456488  -0.001578536  -0.018998289   0.002212720   0.012484294  -0.004270885
                        -0.001957425  -0.000000009   0.015166490  -0.002531672   0.002328966  -0.000271251  -0.000764561   0.000261624

   50    2.2  0.5 -0.5   0.000000023   0.000000000   0.000000001  -0.000000003  -0.000000002   0.000000002   0.000000000  -0.000000000
                         0.000000009   0.021130640  -0.001235583  -0.007401996  -0.001954253  -0.016779112  -0.000406849  -0.001189261

   51    3.2  0.5 -0.5  -0.000000003  -0.009579375   0.004203592   0.025182423  -0.000772474  -0.006632430   0.003757416   0.010983357
                         0.000000012  -0.000000000   0.000000009  -0.000000009   0.000000001  -0.000000001   0.000000059  -0.000000020

   52    4.2  0.5 -0.5  -0.000000012  -0.026074584  -0.001687757  -0.010110838  -0.000206421  -0.001772315  -0.002861982  -0.008365896
                         0.000000028   0.000000001  -0.000000005   0.000000005  -0.000000000   0.000000000  -0.000000037   0.000000013

   53    5.2  0.5 -0.5   0.000549198   0.000000003   0.010979275  -0.001832720  -0.002983037   0.000347429  -0.000691877   0.000236759
                         0.002582054  -0.000000002  -0.006845711   0.001142730  -0.024333797   0.002834143  -0.011297486   0.003864876

   54    6.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000122   0.000000041
                         0.000000000  -0.000000075  -0.000000037  -0.000000222  -0.000000017  -0.000000146   0.008299993   0.024261826

   55    7.2  0.5 -0.5   0.000000113   0.000000000   0.000000204  -0.000000034  -0.000000481   0.000000056   0.010295220  -0.003521999
                        -0.000000024  -0.000000000   0.000000327  -0.000000055   0.000000059  -0.000000007  -0.000630495   0.000215761

   56    8.2  0.5 -0.5   0.000000059   0.000000000  -0.000000034   0.000000006  -0.000000075   0.000000009  -0.000852564   0.000291731
                         0.000000279   0.000000000   0.000000021  -0.000000004  -0.000000615   0.000000072  -0.013921234   0.004762465


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  1.5  1.5   0.026852621  -0.000028092   0.000000000   0.000000353  -0.000001941   0.000000035   0.000000038   0.000000003
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5   0.019803521  -0.000020696  -0.000036567  -0.338560096   0.053148225  -0.000971225   0.607186789   0.045384004
                        -0.000000000  -0.000000031  -0.000000456  -0.000000005  -0.000000014   0.000000021  -0.000001868  -0.000003974

    3    3.2  1.5  1.5   0.087177921  -0.000091208   0.000003593   0.033271097   0.481763240  -0.008803566  -0.157401991  -0.011764965
                         0.000000000   0.000000010   0.000000048   0.000000003   0.000000000   0.000000104   0.000000475   0.000001046

    4    4.2  1.5  1.5  -0.000000000  -0.000000032   0.000000145   0.000000003   0.000000015   0.000000005   0.000002163   0.000004611
                         0.007690838  -0.000008068  -0.000011701  -0.108334247  -0.067632639   0.001235881   0.703705966   0.052598303

    5    5.2  1.5  1.5  -0.000007519  -0.007178586  -0.241019323   0.000026167  -0.001120768  -0.061334916  -0.004588334   0.061387730
                        -0.000002905  -0.002740433  -0.100061016   0.000010478  -0.003470314  -0.189907754  -0.000897086   0.011996872

    6    6.2  1.5  1.5  -0.000002914  -0.002748997  -0.071922047   0.000007535   0.004463035   0.244232795  -0.001324397   0.017711203
                         0.000007543   0.007201020   0.173240317  -0.000018808  -0.001441375  -0.078880390   0.006773829  -0.090627712

    7    7.2  1.5  1.5   0.705404959  -0.000737963   0.000000001   0.000009821  -0.000049628   0.000000907   0.000000604   0.000000045
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    8    8.2  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.521401531  -0.000545467   0.000000001   0.000008802  -0.000030682   0.000000561  -0.000001072  -0.000000080

    9    9.2  1.5  1.5   0.000025464   0.024310298   0.000001961  -0.000000000   0.000000123   0.000006755   0.000001193  -0.000015967
                         0.000009838   0.009280481   0.000000814  -0.000000000   0.000000382   0.000020914   0.000000233  -0.000003120

   10   10.2  1.5  1.5   0.000009840   0.009282276  -0.000002767   0.000000000  -0.000000438  -0.000023945   0.000000271  -0.000003623
                        -0.000025469  -0.024315001   0.000006665  -0.000000001   0.000000141   0.000007734  -0.000001385   0.000018537

   11    1.2  1.5  0.5   0.000002272   0.002168710  -0.000000403   0.000000000  -0.000000001  -0.000000030   0.000000071  -0.000000948
                         0.000000878   0.000827907  -0.000000167   0.000000000  -0.000000002  -0.000000092   0.000000014  -0.000000185

   12    2.2  1.5  0.5  -0.000085209  -0.081446803   0.248734999  -0.000027004   0.002180705   0.119340654   0.003064919  -0.041005853
                        -0.000032539  -0.031092402   0.103264240  -0.000010816   0.006752271   0.369507557   0.000599243  -0.008013680

   13    3.2  1.5  0.5   0.000019349   0.018503530   0.572838666  -0.000062191  -0.001202562  -0.065811121   0.016911259  -0.226257308
                         0.000007353   0.007063742   0.237818360  -0.000024908  -0.003723583  -0.203767175   0.003306418  -0.044217020

   14    4.2  1.5  0.5  -0.000033223  -0.031757626   0.001516720  -0.000000163   0.000694694   0.038015726  -0.000066656   0.000891563
                         0.000087029   0.083189364  -0.003653352   0.000000396  -0.000224358  -0.012278024   0.000340993  -0.004562126

   15    5.2  1.5  0.5  -0.088997247   0.000093105  -0.000049674  -0.459921381   0.425618684  -0.007777604  -0.099014653  -0.007400821
                        -0.000000000   0.000000000  -0.000000620  -0.000000004  -0.000000002   0.000000093   0.000000297   0.000000665

   16    6.2  1.5  0.5   0.000000000   0.000000000  -0.000000434  -0.000000007   0.000000007  -0.000000117   0.000000531   0.000001093
                        -0.089000966   0.000093109   0.000034233   0.316967865   0.524495331  -0.009584442   0.169212366   0.012647733

   17    7.2  1.5  0.5   0.000059674   0.056970932  -0.000011674   0.000000001  -0.000000016  -0.000000897   0.000001736  -0.000023232
                         0.000023055   0.021748711  -0.000004846   0.000000000  -0.000000051  -0.000002776   0.000000339  -0.000004540

   18    8.2  1.5  0.5  -0.000005681  -0.005358603  -0.000001515   0.000000000   0.000000028   0.000001532  -0.000000440   0.000005890
                         0.000014703   0.014036907   0.000003650  -0.000000000  -0.000000009  -0.000000495   0.000002253  -0.000030141

   19    9.2  1.5  0.5  -0.270991967   0.000283412  -0.000000001  -0.000012445   0.000028179  -0.000000515  -0.000001400  -0.000000105
                         0.000000001   0.000000126  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   20   10.2  1.5  0.5   0.000000001   0.000000126  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.331092224   0.000346461   0.000000001   0.000006623   0.000026335  -0.000000481  -0.000001808  -0.000000135

   21    1.2  1.5 -0.5   0.002321365  -0.000002435  -0.000000000  -0.000000436   0.000000097  -0.000000002   0.000000965   0.000000072
                         0.000000000   0.000000010  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   22    2.2  1.5 -0.5  -0.087179809   0.000091210   0.000029087   0.269318776  -0.388301463   0.007095677   0.041781564   0.003122951
                        -0.000000000  -0.000000010   0.000000365   0.000000005   0.000000005  -0.000000086  -0.000000117  -0.000000276

   23    3.2  1.5 -0.5   0.019805986  -0.000020699   0.000066989   0.620243266   0.214131187  -0.003912956   0.230537447   0.017231457
                        -0.000000000  -0.000000031   0.000000842   0.000000009  -0.000000006   0.000000049  -0.000000716  -0.000001510

   24    4.2  1.5 -0.5  -0.000000000   0.000000000  -0.000000002   0.000000003   0.000000002   0.000000008  -0.000000010  -0.000000017
                        -0.089045029   0.000093155   0.000000428   0.003955681  -0.039949285   0.000730025  -0.004648428  -0.000347447

   25    5.2  1.5 -0.5   0.000086982   0.083144724   0.424770029  -0.000046115   0.002390282   0.130809740   0.007263294  -0.097176358
                         0.000033206   0.031740585   0.176346534  -0.000018474   0.007401194   0.405018611   0.001420105  -0.018990973

   26    6.2  1.5 -0.5   0.000033207   0.031741912  -0.121534212   0.000012725   0.009120588   0.499109600  -0.002426866   0.032454892
                        -0.000086986  -0.083148199   0.292742315  -0.000031783  -0.002945573  -0.161198506   0.012412713  -0.166070782

   27    7.2  1.5 -0.5   0.060981092  -0.000063973  -0.000000001  -0.000012640   0.000002917  -0.000000053   0.000023671   0.000001769
                         0.000000002   0.000000257  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   28    8.2  1.5 -0.5   0.000000000   0.000000063  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.015024959   0.000015762  -0.000000000  -0.000003952  -0.000001609   0.000000029  -0.000030711  -0.000002296

   29    9.2  1.5 -0.5   0.000264820   0.253171342   0.000011494  -0.000000001   0.000000158   0.000008661   0.000000103  -0.000001374
                         0.000100960   0.096648424   0.000004772  -0.000000000   0.000000490   0.000026815   0.000000020  -0.000000268

   30   10.2  1.5 -0.5   0.000123682   0.118082989  -0.000002539   0.000000000   0.000000458   0.000025061   0.000000026  -0.000000347
                        -0.000323632  -0.309319364   0.000006117  -0.000000001  -0.000000148  -0.000008094  -0.000000133   0.000001774

   31    1.2  1.5 -1.5   0.000026245   0.025086774   0.000000326  -0.000000000   0.000000011   0.000000597   0.000000003  -0.000000037
                         0.000010019   0.009576902   0.000000135  -0.000000000   0.000000034   0.000001847   0.000000001  -0.000000007

   32    2.2  1.5 -1.5   0.000019346   0.018501228  -0.312684271   0.000033947  -0.000298476  -0.016334573   0.044540674  -0.595913814
                         0.000007352   0.007062863  -0.129813269   0.000013599  -0.000924224  -0.050575840   0.008708401  -0.116458241

   33    3.2  1.5 -1.5   0.000085207   0.081445039   0.030728220  -0.000003337  -0.002705591  -0.148065223  -0.011546344   0.154479682
                         0.000032538   0.031091728   0.012757053  -0.000001333  -0.008377503  -0.458445753  -0.002257508   0.030189644

   34    4.2  1.5 -1.5   0.000002908   0.002742913  -0.041538334   0.000004353   0.001176065   0.064359194   0.010092705  -0.134970588
                        -0.000007526  -0.007185083   0.100054365  -0.000010863  -0.000379832  -0.020786246  -0.051620914   0.690641026

   35    5.2  1.5 -1.5   0.007683884  -0.000008061   0.000028185   0.260964598  -0.199566848   0.003646807   0.062549007   0.004675208
                         0.000000000   0.000000032   0.000000356   0.000000006   0.000000003  -0.000000044  -0.000000183  -0.000000404

   36    6.2  1.5 -1.5  -0.000000000  -0.000000032  -0.000000253  -0.000000000   0.000000006  -0.000000058   0.000000295   0.000000611
                         0.007707896  -0.000008086   0.000020260   0.187576619   0.256654970  -0.004690015   0.092342129   0.006902086

   37    7.2  1.5 -1.5   0.000689434   0.659017026   0.000009070  -0.000000001   0.000000279   0.000015253   0.000000044  -0.000000593
                         0.000263192   0.251580437   0.000003766  -0.000000000   0.000000863   0.000047226   0.000000009  -0.000000116

   38    8.2  1.5 -1.5   0.000194539   0.185956199   0.000003375  -0.000000000   0.000000534   0.000029197  -0.000000015   0.000000206
                        -0.000509597  -0.487113795  -0.000008129   0.000000001  -0.000000172  -0.000009430   0.000000079  -0.000001052

   39    9.2  1.5 -1.5  -0.026021490   0.000027298  -0.000000000  -0.000002123   0.000021978  -0.000000402  -0.000016269  -0.000001216
                        -0.000000001  -0.000000110   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   40   10.2  1.5 -1.5   0.000000001   0.000000110  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.026026524   0.000027303   0.000000001   0.000007216  -0.000025163   0.000000460  -0.000018887  -0.000001412

   41    1.2  0.5  0.5  -0.006180352   0.000006462  -0.000000000  -0.000000561   0.000000399  -0.000000007   0.000000072   0.000000005
                         0.000000000   0.000000005  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   42    2.2  0.5  0.5  -0.000005425  -0.005185255  -0.000000040   0.000000000  -0.000000002  -0.000000132  -0.000000002   0.000000031
                         0.000014210   0.013582819   0.000000096  -0.000000000   0.000000001   0.000000043   0.000000012  -0.000000157

   43    3.2  0.5  0.5  -0.000008643  -0.008260672  -0.000000353   0.000000000  -0.000000007  -0.000000397  -0.000000119   0.000001593
                        -0.000003304  -0.003153520  -0.000000147   0.000000000  -0.000000022  -0.000001230  -0.000000023   0.000000311

   44    4.2  0.5  0.5  -0.000011345  -0.010845343  -0.000000273   0.000000000  -0.000000013  -0.000000700   0.000000078  -0.000001037
                        -0.000004328  -0.004140221  -0.000000114   0.000000000  -0.000000040  -0.000002168   0.000000015  -0.000000203

   45    5.2  0.5  0.5  -0.000000000  -0.000000005   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.008357252  -0.000008746  -0.000000000  -0.000000130  -0.000000279   0.000000005  -0.000000259  -0.000000019

   46    6.2  0.5  0.5  -0.000000838  -0.000790585   0.000000256  -0.000000000   0.000000002   0.000000089  -0.000000012   0.000000162
                         0.000002169   0.002070943  -0.000000617   0.000000000  -0.000000001  -0.000000029   0.000000062  -0.000000826

   47    7.2  0.5  0.5   0.023315237  -0.000024395   0.000000000   0.000000273  -0.000001348   0.000000025   0.000000318   0.000000024
                         0.000000000   0.000000005  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   48    8.2  0.5  0.5  -0.000000000  -0.000000005   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.021098443   0.000022069  -0.000000000  -0.000000566   0.000001699  -0.000000031   0.000000372   0.000000028

   49    1.2  0.5 -0.5  -0.000006039  -0.005773928  -0.000000518   0.000000000  -0.000000002  -0.000000123   0.000000005  -0.000000071
                        -0.000002301  -0.002204203  -0.000000215   0.000000000  -0.000000007  -0.000000380   0.000000001  -0.000000014

   50    2.2  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.014538907  -0.000015210   0.000000000   0.000000104  -0.000000138   0.000000003   0.000000159   0.000000012

   51    3.2  0.5 -0.5   0.008842137  -0.000009253   0.000000000   0.000000382  -0.000001292   0.000000024   0.000001623   0.000000121
                         0.000000000   0.000000004  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   52    4.2  0.5 -0.5   0.011608743  -0.000012143   0.000000000   0.000000296  -0.000002278   0.000000042  -0.000001057  -0.000000079
                        -0.000000000  -0.000000003   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   53    5.2  0.5 -0.5   0.000003124   0.002980588  -0.000000050   0.000000000   0.000000005   0.000000266  -0.000000004   0.000000050
                        -0.000008169  -0.007807674   0.000000120  -0.000000000  -0.000000002  -0.000000086   0.000000019  -0.000000254

   54    6.2  0.5 -0.5  -0.000000000  -0.000000009   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.002216716  -0.000002325  -0.000000000  -0.000000668   0.000000093  -0.000000002   0.000000842   0.000000063

   55    7.2  0.5 -0.5   0.000022789   0.021782011   0.000000252  -0.000000000   0.000000008   0.000000414   0.000000023  -0.000000312
                         0.000008705   0.008315305   0.000000105  -0.000000000   0.000000023   0.000001283   0.000000005  -0.000000061

   56    8.2  0.5 -0.5  -0.000007866  -0.007524692  -0.000000217   0.000000000  -0.000000030  -0.000001617   0.000000005  -0.000000071
                         0.000020619   0.019710994   0.000000523  -0.000000000   0.000000010   0.000000522  -0.000000027   0.000000365


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  1.5  1.5   0.000000120   0.000000149   0.000000106   0.000000368  -0.000000055  -0.000000004   0.000000004   0.000000040
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.043750137  -0.054449897   0.026741000   0.092667293  -0.080525130  -0.006587206  -0.012447498  -0.120179651
                         0.000000344  -0.000000276  -0.000000025   0.000000008  -0.000000038   0.000000207  -0.000000531   0.000000089

    3    3.2  1.5  1.5  -0.138289325  -0.172110135   0.080828136   0.280098913  -0.150957356  -0.012348753   0.008692686   0.083927185
                         0.000001126  -0.000000883  -0.000000071   0.000000029  -0.000000060   0.000000406   0.000000392  -0.000000067

    4    4.2  1.5  1.5   0.000000023  -0.000000009  -0.000000002  -0.000000001  -0.000000018   0.000000074  -0.000000626   0.000000105
                         0.001191682   0.001483144  -0.000838925  -0.002907175   0.030703717   0.002511668   0.014508720   0.140080582

    5    5.2  1.5  1.5  -0.342018648   0.274811303  -0.102034197   0.029444004  -0.018923237   0.231324895  -0.156400407   0.016199319
                         0.152902869  -0.122852762  -0.018725565   0.005403656   0.005103276  -0.062392600  -0.067222829   0.006961850

    6    6.2  1.5  1.5  -0.153637713   0.123443186   0.020300682  -0.005858193  -0.003141528   0.038408667  -0.098693201   0.010220998
                        -0.343662382   0.276132040  -0.110616868   0.031920709  -0.011649053   0.142402849   0.229619191  -0.023783067

    7    7.2  1.5  1.5   0.000003357   0.000004178   0.000002820   0.000009772  -0.000002484  -0.000000203   0.000000140   0.000001350
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    8    8.2  1.5  1.5  -0.000000000   0.000000000   0.000000118  -0.000000047   0.000000107  -0.000000701  -0.000000329   0.000000057
                        -0.000012077  -0.000015031   0.132472697   0.459066111  -0.261928773  -0.021426547   0.006981478   0.067405587

    9    9.2  1.5  1.5   0.000013826  -0.000011109  -0.290344669   0.083784756  -0.037927355   0.463639173   0.272060790  -0.028179030
                        -0.000006181   0.000004966  -0.053284771   0.015376450   0.010228322  -0.125052030   0.116935152  -0.012110169

   10   10.2  1.5  1.5   0.000006487  -0.000005212   0.051869502  -0.014968040  -0.011990757   0.146599206   0.032123596  -0.003326880
                         0.000014511  -0.000011659  -0.282633003   0.081559398  -0.044462485   0.543526778  -0.074738720   0.007741093

   11    1.2  1.5  0.5  -0.000000036   0.000000029   0.000000013  -0.000000004   0.000000005  -0.000000056   0.000000289  -0.000000030
                         0.000000016  -0.000000013   0.000000002  -0.000000001  -0.000000001   0.000000015   0.000000124  -0.000000013

   12    2.2  1.5  0.5   0.203579114  -0.163575414  -0.302010083   0.087151033  -0.007628330   0.093251821   0.054191737  -0.005612979
                        -0.091012087   0.073125414  -0.055425628   0.015994251   0.002057217  -0.025151735   0.023292295  -0.002412223

   13    3.2  1.5  0.5  -0.067717496   0.054410873   0.093617935  -0.027015321   0.004986020  -0.060950958   0.117747551  -0.012195822
                         0.030273781  -0.024324051   0.017180990  -0.004957941  -0.001344649   0.016439603   0.050609360  -0.005241287

   14    4.2  1.5  0.5   0.169572808  -0.136246551  -0.012980598   0.003745840  -0.007150072   0.087416944  -0.029572279   0.003062579
                         0.379306577  -0.304772078   0.070730329  -0.020410639  -0.026512927   0.324104432   0.068802707  -0.007126340

   15    5.2  1.5  0.5  -0.146287327  -0.182064168  -0.012979275  -0.044977919  -0.016241884  -0.001328654  -0.021687110  -0.209387387
                         0.000001190  -0.000000931   0.000000009  -0.000000007  -0.000000014   0.000000031  -0.000000938   0.000000158

   16    6.2  1.5  0.5  -0.000001164   0.000000920  -0.000000016   0.000000003  -0.000000037   0.000000181  -0.000000868   0.000000146
                        -0.143781910  -0.178946011  -0.015403624  -0.053379154   0.072386569   0.005921455   0.020190984   0.194942418

   17    7.2  1.5  0.5  -0.000000903   0.000000726   0.000000313  -0.000000090   0.000000122  -0.000001494   0.000006778  -0.000000702
                         0.000000404  -0.000000324   0.000000057  -0.000000017  -0.000000033   0.000000403   0.000002913  -0.000000302

   18    8.2  1.5  0.5   0.000000002  -0.000000002   0.002451386  -0.000707406   0.003052576  -0.037320171  -0.258173443   0.026737352
                         0.000000004  -0.000000003  -0.013357374   0.003854543   0.011318985  -0.138367049   0.600665339  -0.062214544

   19    9.2  1.5  0.5  -0.000013372  -0.000016642   0.112762365   0.390762650  -0.155179993  -0.012694150   0.039903844   0.385268526
                         0.000000000  -0.000000000  -0.000000097   0.000000044  -0.000000051   0.000000435   0.000001745  -0.000000295

   20   10.2  1.5  0.5  -0.000000000   0.000000000   0.000000107  -0.000000037   0.000000134  -0.000000778   0.000001176  -0.000000196
                        -0.000014315  -0.000017817   0.116681379   0.404343434  -0.298489966  -0.024417392  -0.027811825  -0.268521088

   21    1.2  1.5 -0.5   0.000000032   0.000000039  -0.000000004  -0.000000013  -0.000000058  -0.000000005  -0.000000033  -0.000000314
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   22    2.2  1.5 -0.5  -0.179176567  -0.222996986   0.088606539   0.307053888   0.096584222   0.007900858  -0.006109366  -0.058985382
                         0.000001466  -0.000001149  -0.000000071   0.000000027   0.000000039  -0.000000272  -0.000000275   0.000000055

   23    3.2  1.5 -0.5   0.059600358   0.074176555  -0.027466502  -0.095181427  -0.063129071  -0.005164153  -0.013274380  -0.128163151
                        -0.000000493   0.000000377   0.000000020  -0.000000010  -0.000000031   0.000000164  -0.000000569   0.000000093

   24    4.2  1.5 -0.5   0.000002724  -0.000002135   0.000000027  -0.000000011   0.000000138  -0.000000909  -0.000000371   0.000000073
                         0.333839995   0.415485759   0.020751517   0.071911579  -0.335686469  -0.027460131   0.007756553   0.074888795

   25    5.2  1.5 -0.5  -0.166210599   0.133549882  -0.044239092   0.012766069  -0.001282820   0.015681498  -0.192370831   0.019925013
                         0.074306110  -0.059702687  -0.008118863   0.002342871   0.000345967  -0.004229597  -0.082683380   0.008562979

   26    6.2  1.5 -0.5   0.073033497  -0.058680184  -0.009635357   0.002780491  -0.001541843   0.018850374   0.076979315  -0.007972252
                         0.163363960  -0.131262614   0.052502324  -0.015150594  -0.005717197   0.069889048  -0.179099780   0.018550446

   27    7.2  1.5 -0.5   0.000000795   0.000000990  -0.000000092  -0.000000318  -0.000001547  -0.000000127  -0.000000764  -0.000007377
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   28    8.2  1.5 -0.5  -0.000000000   0.000000000  -0.000000010  -0.000000007  -0.000000083   0.000000343  -0.000002921   0.000000490
                         0.000000004   0.000000005  -0.003918919  -0.013580454   0.143311666   0.011723381   0.067716581   0.653798423

   29    9.2  1.5 -0.5  -0.000015193   0.000012208   0.384343809  -0.110910060  -0.012256284   0.149825888   0.353958409  -0.036661628
                         0.000006792  -0.000005457   0.070535705  -0.020354594   0.003305292  -0.040410792   0.152135739  -0.015755691

   30   10.2  1.5 -0.5   0.000007271  -0.000005842   0.072987151  -0.021062017   0.006357831  -0.077730523  -0.106034226   0.010981300
                         0.000016265  -0.000013069  -0.397701507   0.114764697   0.023575135  -0.288191302   0.246698838  -0.025552078

   31    1.2  1.5 -1.5  -0.000000136   0.000000109  -0.000000362   0.000000104   0.000000004  -0.000000053  -0.000000037   0.000000004
                         0.000000061  -0.000000049  -0.000000066   0.000000019  -0.000000001   0.000000014  -0.000000016   0.000000002

   32    2.2  1.5 -1.5   0.049708575  -0.039940746  -0.091145098   0.026301735   0.006359986  -0.077746808   0.110412855  -0.011436124
                        -0.022222712   0.017855288  -0.016727171   0.004826987  -0.001715188   0.020969754   0.047456819  -0.004914800

   33    3.2  1.5 -1.5   0.157123331  -0.126248279  -0.275497883   0.079500403   0.011922797  -0.145748943  -0.077106565   0.007986403
                        -0.070243560   0.056438548  -0.050560040   0.014590188  -0.003215373   0.039311176  -0.033141367   0.003432221

   34    4.2  1.5 -1.5   0.000605320  -0.000486336   0.000524770  -0.000151435   0.000653997  -0.007995637  -0.055315346   0.005728652
                         0.001353995  -0.001087926  -0.002859420   0.000825144   0.002425029  -0.029644361   0.128696472  -0.013329872

   35    5.2  1.5 -1.5  -0.301021683  -0.374641219  -0.029935746  -0.103738248  -0.239591408  -0.019599294  -0.017631939  -0.170235122
                         0.000002458  -0.000001928   0.000000017  -0.000000010  -0.000000106   0.000000638  -0.000000740   0.000000116

   36    6.2  1.5 -1.5   0.000002473  -0.000001934   0.000000023  -0.000000006  -0.000000053   0.000000417   0.000001138  -0.000000199
                         0.302468385   0.376441735   0.032453815   0.112464258   0.147491687   0.012065224  -0.025886349  -0.249930631

   37    7.2  1.5 -1.5  -0.000003814   0.000003065  -0.000009612   0.000002774   0.000000196  -0.000002399  -0.000001241   0.000000129
                         0.000001705  -0.000001370  -0.000001764   0.000000509  -0.000000053   0.000000647  -0.000000533   0.000000055

   38    8.2  1.5 -1.5  -0.000006135   0.000004929  -0.082865017   0.023912485  -0.005579056   0.068209519  -0.026617283   0.002756554
                        -0.000013722   0.000011026   0.451525286  -0.130296617  -0.020687461   0.252891564   0.061927649  -0.006414237

   39    9.2  1.5 -1.5   0.000012169   0.000015145  -0.085184040  -0.295193655  -0.480207554  -0.039282348   0.030671061   0.296126493
                        -0.000000000   0.000000000   0.000000057  -0.000000019  -0.000000191   0.000001322   0.000001379  -0.000000254

   40   10.2  1.5 -1.5  -0.000000000   0.000000000   0.000000052  -0.000000023  -0.000000239   0.000001521  -0.000000307   0.000000029
                        -0.000012771  -0.000015895   0.082921515   0.287353197   0.562949984   0.046050959   0.008425713   0.081349878

   41    1.2  0.5  0.5   0.000000681   0.000000847  -0.007999136  -0.027719916   0.020463047   0.001673940   0.001906646   0.018408525
                        -0.000000000   0.000000000   0.000000007  -0.000000003   0.000000009  -0.000000053   0.000000081  -0.000000013

   42    2.2  0.5  0.5  -0.000000555   0.000000446  -0.005581292   0.001610601   0.000493965  -0.006039240   0.001727520  -0.000178906
                        -0.000001242   0.000000998   0.030412039  -0.008776001   0.001831657  -0.022390905  -0.004019238   0.000416299

   43    3.2  0.5  0.5  -0.000000150   0.000000120   0.002599522  -0.000750145   0.001069823  -0.013077970  -0.034243034   0.003546760
                         0.000000067  -0.000000054   0.000477071  -0.000137669  -0.000288510   0.003527368  -0.014718084   0.001524255

   44    4.2  0.5  0.5  -0.000000260   0.000000209   0.002621478  -0.000756480   0.002944395  -0.035993427   0.012583606  -0.001303357
                         0.000000116  -0.000000093   0.000481100  -0.000138831  -0.000794053   0.009708092   0.005408588  -0.000560135

   45    5.2  0.5  0.5  -0.000000000   0.000000000   0.000000007  -0.000000003   0.000000004  -0.000000030  -0.000000120   0.000000020
                        -0.000000690  -0.000000859   0.007730496   0.026788983  -0.010638413  -0.000870251   0.002735625   0.026412249

   46    6.2  0.5  0.5  -0.000000013   0.000000010   0.000000005  -0.000000001   0.000000000  -0.000000004  -0.000000052   0.000000005
                        -0.000000028   0.000000023  -0.000000026   0.000000008   0.000000001  -0.000000015   0.000000122  -0.000000013

   47    7.2  0.5  0.5   0.000000120   0.000000150   0.000000091   0.000000314  -0.000000232  -0.000000019  -0.000000001  -0.000000005
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   48    8.2  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000118  -0.000000147  -0.000000067  -0.000000231   0.000000113   0.000000009  -0.000000012  -0.000000111

   49    1.2  0.5 -0.5  -0.000000774   0.000000622   0.027264576  -0.007867737  -0.001616199   0.019757020  -0.016912496   0.001751729
                         0.000000346  -0.000000278   0.005003662  -0.001443914   0.000435863  -0.005328834  -0.007269201   0.000752826

   50    2.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000007   0.000000003   0.000000010  -0.000000064  -0.000000022   0.000000005
                         0.000001093   0.000001360  -0.008922568  -0.030919944  -0.023191055  -0.001897095   0.000453114   0.004374768

   51    3.2  0.5 -0.5  -0.000000132  -0.000000164   0.000762673   0.002642936   0.013545318   0.001108043  -0.003860422  -0.037272072
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000004  -0.000000039  -0.000000169   0.000000029

   52    4.2  0.5 -0.5  -0.000000229  -0.000000285   0.000769114   0.002665259   0.037279670   0.003049588   0.001418623   0.013696714
                         0.000000000  -0.000000000   0.000000001   0.000000000   0.000000016  -0.000000100   0.000000058  -0.000000009

   53    5.2  0.5 -0.5  -0.000000351   0.000000282  -0.004835620   0.001395422  -0.000226595   0.002770374  -0.010429731   0.001080138
                        -0.000000785   0.000000630   0.026348936  -0.007603510  -0.000840233   0.010271360   0.024265770  -0.002513354

   54    6.2  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000025   0.000000031   0.000000008   0.000000027  -0.000000016  -0.000000001  -0.000000014  -0.000000133

   55    7.2  0.5 -0.5  -0.000000137   0.000000110  -0.000000309   0.000000089   0.000000018  -0.000000224   0.000000005  -0.000000000
                         0.000000061  -0.000000049  -0.000000057   0.000000016  -0.000000005   0.000000060   0.000000002  -0.000000000

   56    8.2  0.5 -0.5  -0.000000060   0.000000048   0.000000042  -0.000000012   0.000000002  -0.000000029   0.000000044  -0.000000005
                        -0.000000134   0.000000108  -0.000000228   0.000000066   0.000000009  -0.000000109  -0.000000102   0.000000011


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  25.051%   0.000%  40.992%   0.000%   0.000%   6.284%  19.359%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.012%   0.000%   0.002%   0.000%   0.000%   0.019%   0.022%   0.000%   0.000%   0.031%
    3    3.2  1.5  1.5   0.002%   0.000%   0.012%   0.000%   0.000%   0.022%   0.019%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.008%   0.000%   0.005%   0.000%   0.000%   0.031%   0.010%   0.000%   0.000%   0.027%
    5    5.2  1.5  1.5   0.000%   0.008%   0.000%   0.005%   0.031%   0.000%   0.000%   0.010%   0.070%   0.000%
    6    6.2  1.5  1.5   0.000%   0.008%   0.000%   0.005%   0.031%   0.000%   0.000%   0.010%   0.053%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%   0.005%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.052%   0.000%   0.086%   0.000%   0.000%   0.012%   0.037%   0.000%   0.000%   0.001%
    9    9.2  1.5  1.5   0.000%   0.029%   0.000%   0.017%   0.012%   0.000%   0.000%   0.004%   0.002%   0.000%
   10   10.2  1.5  1.5   0.000%   0.029%   0.000%   0.017%   0.012%   0.000%   0.000%   0.004%   0.005%   0.000%
   11    1.2  1.5  0.5   0.000%  40.992%   0.000%  25.051%  19.359%   0.000%   0.000%   6.284%   0.000%   0.000%
   12    2.2  1.5  0.5   0.000%   0.002%   0.000%   0.012%   0.022%   0.000%   0.000%   0.019%   0.005%   0.000%
   13    3.2  1.5  0.5   0.000%   0.012%   0.000%   0.002%   0.019%   0.000%   0.000%   0.022%   0.023%   0.000%
   14    4.2  1.5  0.5   0.000%   0.005%   0.000%   0.008%   0.010%   0.000%   0.000%   0.031%   0.004%   0.000%
   15    5.2  1.5  0.5   0.005%   0.000%   0.008%   0.000%   0.000%   0.010%   0.031%   0.000%   0.000%   0.052%
   16    6.2  1.5  0.5   0.005%   0.000%   0.008%   0.000%   0.000%   0.010%   0.031%   0.000%   0.000%   0.061%
   17    7.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.005%   0.000%   0.000%   0.002%   0.000%   0.000%
   18    8.2  1.5  0.5   0.000%   0.010%   0.000%   0.006%   0.004%   0.000%   0.000%   0.001%   0.042%   0.000%
   19    9.2  1.5  0.5   0.107%   0.000%   0.000%   0.000%   0.000%   0.004%   0.034%   0.000%   0.000%   0.007%
   20   10.2  1.5  0.5   0.004%   0.000%   0.103%   0.000%   0.000%   0.036%   0.001%   0.000%   0.000%   0.015%
   21    1.2  1.5 -0.5  40.992%   0.000%  25.051%   0.000%   0.000%  19.359%   6.284%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.002%   0.000%   0.012%   0.000%   0.000%   0.022%   0.019%   0.000%   0.000%   0.005%
   23    3.2  1.5 -0.5   0.012%   0.000%   0.002%   0.000%   0.000%   0.019%   0.022%   0.000%   0.000%   0.023%
   24    4.2  1.5 -0.5   0.005%   0.000%   0.008%   0.000%   0.000%   0.010%   0.031%   0.000%   0.000%   0.004%
   25    5.2  1.5 -0.5   0.000%   0.005%   0.000%   0.008%   0.010%   0.000%   0.000%   0.031%   0.052%   0.000%
   26    6.2  1.5 -0.5   0.000%   0.005%   0.000%   0.008%   0.010%   0.000%   0.000%   0.031%   0.061%   0.000%
   27    7.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.005%   0.002%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.010%   0.000%   0.006%   0.000%   0.000%   0.004%   0.001%   0.000%   0.000%   0.042%
   29    9.2  1.5 -0.5   0.000%   0.107%   0.000%   0.000%   0.004%   0.000%   0.000%   0.034%   0.007%   0.000%
   30   10.2  1.5 -0.5   0.000%   0.004%   0.000%   0.103%   0.036%   0.000%   0.000%   0.001%   0.015%   0.000%
   31    1.2  1.5 -1.5   0.000%  25.051%   0.000%  40.992%   6.284%   0.000%   0.000%  19.359%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.012%   0.000%   0.002%   0.019%   0.000%   0.000%   0.022%   0.031%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.002%   0.000%   0.012%   0.022%   0.000%   0.000%   0.019%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.008%   0.000%   0.005%   0.031%   0.000%   0.000%   0.010%   0.027%   0.000%
   35    5.2  1.5 -1.5   0.008%   0.000%   0.005%   0.000%   0.000%   0.031%   0.010%   0.000%   0.000%   0.070%
   36    6.2  1.5 -1.5   0.008%   0.000%   0.005%   0.000%   0.000%   0.031%   0.010%   0.000%   0.000%   0.053%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%   0.000%   0.005%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.052%   0.000%   0.086%   0.012%   0.000%   0.000%   0.037%   0.001%   0.000%
   39    9.2  1.5 -1.5   0.029%   0.000%   0.017%   0.000%   0.000%   0.012%   0.004%   0.000%   0.000%   0.002%
   40   10.2  1.5 -1.5   0.029%   0.000%   0.017%   0.000%   0.000%   0.012%   0.004%   0.000%   0.000%   0.005%
   41    1.2  0.5  0.5   4.159%   0.000%   0.082%   0.000%   0.000%   6.549%  19.134%   0.000%   0.011%  28.212%
   42    2.2  0.5  0.5   0.000%   1.609%   0.000%   2.633%   6.293%   0.000%   0.000%  19.389%   0.000%   0.000%
   43    3.2  0.5  0.5   0.000%   0.479%   0.000%   3.763%  25.626%   0.000%   0.000%   0.056%  35.419%   0.014%
   44    4.2  0.5  0.5   0.000%   3.763%   0.000%   0.479%   0.056%   0.000%   0.000%  25.626%  23.679%   0.009%
   45    5.2  0.5  0.5   0.594%   0.000%   3.647%   0.000%   0.000%  25.681%   0.001%   0.000%   0.005%  12.255%
   46    6.2  0.5  0.5   0.000%   9.540%   0.000%   5.830%   4.962%   0.000%   0.000%   1.610%   0.000%   0.000%
   47    7.2  0.5  0.5   0.299%   0.000%  15.071%   0.000%   0.000%   4.896%   1.676%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5  13.216%   0.000%   2.154%   0.000%   0.000%   0.000%   6.572%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   4.159%   0.000%   0.082%   6.549%   0.000%   0.000%  19.134%  28.212%   0.011%
   50    2.2  0.5 -0.5   1.609%   0.000%   2.633%   0.000%   0.000%   6.293%  19.389%   0.000%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.479%   0.000%   3.763%   0.000%   0.000%  25.626%   0.056%   0.000%   0.014%  35.419%
   52    4.2  0.5 -0.5   3.763%   0.000%   0.479%   0.000%   0.000%   0.056%  25.626%   0.000%   0.009%  23.679%
   53    5.2  0.5 -0.5   0.000%   0.594%   0.000%   3.647%  25.681%   0.000%   0.000%   0.001%  12.255%   0.005%
   54    6.2  0.5 -0.5   9.540%   0.000%   5.830%   0.000%   0.000%   4.962%   1.610%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   0.299%   0.000%  15.071%   4.896%   0.000%   0.000%   1.676%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.000%  13.216%   0.000%   2.154%   0.000%   0.000%   0.000%   6.572%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.125%   0.000%   3.956%
    2    2.2  1.5  1.5   0.001%   0.000%   0.010%   0.000%   0.000%   0.062%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.021%   0.000%   0.133%   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.068%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.000%   0.046%   0.000%   0.016%   0.017%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  1.5  1.5   0.001%   0.074%   0.000%   0.005%   0.017%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.024%   0.000%   0.023%
    8    8.2  1.5  1.5   0.004%   0.000%   0.025%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.013%
    9    9.2  1.5  1.5   0.000%   0.033%   0.000%   0.004%   0.021%   0.000%   0.004%   0.000%   0.005%   0.000%
   10   10.2  1.5  1.5   0.000%   0.029%   0.000%   0.006%   0.021%   0.000%   0.004%   0.000%   0.005%   0.000%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.956%   0.000%   4.126%   0.000%
   12    2.2  1.5  0.5   0.000%   0.033%   0.000%   0.116%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    3.2  1.5  0.5   0.000%   0.001%   0.000%   0.016%   0.062%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    4.2  1.5  0.5   0.001%   0.143%   0.000%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    5.2  1.5  0.5   0.003%   0.000%   0.008%   0.000%   0.000%   0.051%   0.000%   0.000%   0.000%   0.000%
   16    6.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.051%   0.000%   0.000%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.023%   0.000%   0.024%   0.000%
   18    8.2  1.5  0.5   0.000%   0.001%   0.000%   0.001%   0.028%   0.000%   0.001%   0.000%   0.002%   0.000%
   19    9.2  1.5  0.5   0.004%   0.000%   0.022%   0.000%   0.000%   0.007%   0.000%   0.000%   0.000%   0.021%
   20   10.2  1.5  0.5   0.002%   0.000%   0.016%   0.000%   0.000%   0.007%   0.000%   0.020%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.956%   0.000%   4.126%
   22    2.2  1.5 -0.5   0.033%   0.000%   0.116%   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.001%   0.000%   0.016%   0.000%   0.000%   0.062%   0.000%   0.000%   0.000%   0.000%
   24    4.2  1.5 -0.5   0.143%   0.001%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.2  1.5 -0.5   0.000%   0.003%   0.000%   0.008%   0.051%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.051%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.023%   0.000%   0.024%
   28    8.2  1.5 -0.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.028%   0.000%   0.001%   0.000%   0.002%
   29    9.2  1.5 -0.5   0.000%   0.004%   0.000%   0.022%   0.007%   0.000%   0.000%   0.000%   0.021%   0.000%
   30   10.2  1.5 -0.5   0.000%   0.002%   0.000%   0.016%   0.007%   0.000%   0.020%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.125%   0.000%   3.956%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.001%   0.000%   0.010%   0.062%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.021%   0.000%   0.133%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.068%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.2  1.5 -1.5   0.046%   0.000%   0.016%   0.000%   0.000%   0.017%   0.000%   0.000%   0.000%   0.000%
   36    6.2  1.5 -1.5   0.074%   0.001%   0.005%   0.000%   0.000%   0.017%   0.000%   0.000%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.024%   0.000%   0.023%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.004%   0.000%   0.025%   0.000%   0.000%   0.014%   0.000%   0.013%   0.000%
   39    9.2  1.5 -1.5   0.033%   0.000%   0.004%   0.000%   0.000%   0.021%   0.000%   0.004%   0.000%   0.005%
   40   10.2  1.5 -1.5   0.029%   0.000%   0.006%   0.000%   0.000%   0.021%   0.000%   0.004%   0.000%   0.005%
   41    1.2  0.5  0.5   3.018%   0.024%  28.494%   0.003%   0.000%   0.000%   0.000%   0.617%   0.000%   9.366%
   42    2.2  0.5  0.5   0.233%  29.056%   0.003%  30.469%   0.000%   0.000%   5.096%   0.000%   4.887%   0.000%
   43    3.2  0.5  0.5   0.188%  23.376%   0.000%   0.765%   0.000%   0.000%   9.458%   0.001%   0.524%   0.000%
   44    4.2  0.5  0.5   0.287%  35.749%   0.000%   0.038%   0.000%   0.000%   0.524%   0.000%   9.459%   0.000%
   45    5.2  0.5  0.5   7.610%   0.061%  39.827%   0.004%   0.000%   0.000%   0.001%   9.260%   0.000%   0.722%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.191%   0.000%  21.820%   0.002%  22.758%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.191%   0.003%  41.819%   0.000%   2.756%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.191%   0.000%   3.224%   0.000%  41.354%
   49    1.2  0.5 -0.5   0.024%   3.018%   0.003%  28.494%   0.000%   0.000%   0.617%   0.000%   9.366%   0.000%
   50    2.2  0.5 -0.5  29.056%   0.233%  30.469%   0.003%   0.000%   0.000%   0.000%   5.096%   0.000%   4.887%
   51    3.2  0.5 -0.5  23.376%   0.188%   0.765%   0.000%   0.000%   0.000%   0.001%   9.458%   0.000%   0.524%
   52    4.2  0.5 -0.5  35.749%   0.287%   0.038%   0.000%   0.000%   0.000%   0.000%   0.524%   0.000%   9.459%
   53    5.2  0.5 -0.5   0.061%   7.610%   0.004%  39.827%   0.000%   0.000%   9.260%   0.001%   0.722%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.191%   0.002%  21.820%   0.000%  22.758%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.191%   0.000%  41.819%   0.003%   2.756%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.191%   0.000%   3.224%   0.000%  41.354%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5   0.000%   0.000%   0.024%   0.000%   0.056%   0.000%   0.000%   0.000%   0.080%   0.000%
    2    2.2  1.5  1.5   0.000%  16.207%  10.476%   0.000%   0.812%   0.001%   0.148%   1.728%   0.840%   0.000%
    3    3.2  1.5  1.5   0.000%   1.659%   0.812%   0.000%  10.466%   0.010%   0.015%   0.177%   7.017%   0.000%
    4    4.2  1.5  1.5   0.000%  17.865%   7.885%   0.000%   3.400%   0.003%   0.163%   1.904%   0.004%   0.000%
    5    5.2  1.5  1.5   4.466%   0.000%   0.000%   7.885%   0.003%   3.400%   0.475%   0.041%   0.000%   0.004%
    6    6.2  1.5  1.5   4.466%   0.000%   0.000%   7.885%   0.003%   3.400%   0.475%   0.041%   0.000%   0.004%
    7    7.2  1.5  1.5   0.000%   0.000%   3.322%   0.000%   7.692%   0.007%   0.000%   0.000%  38.769%   0.000%
    8    8.2  1.5  1.5   0.000%   0.000%   5.843%   0.000%  13.527%   0.013%   0.000%   0.000%  13.008%   0.000%
    9    9.2  1.5  1.5   2.564%   0.000%   0.000%   4.513%   0.002%   1.946%  20.646%   1.767%   0.000%   0.002%
   10   10.2  1.5  1.5   2.564%   0.000%   0.000%   4.513%   0.002%   1.946%  20.645%   1.767%   0.000%   0.002%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.056%   0.000%   0.024%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   1.659%   0.000%   0.000%   0.812%   0.010%  10.466%   0.177%   0.015%   0.000%   7.019%
   13    3.2  1.5  0.5  16.206%   0.000%   0.000%  10.476%   0.001%   0.812%   1.726%   0.148%   0.000%   0.841%
   14    4.2  1.5  0.5   0.000%   0.000%   0.000%   3.403%   0.007%   7.878%   0.000%   0.000%   0.000%   7.856%
   15    5.2  1.5  0.5   0.000%  13.399%   3.403%   0.000%   7.878%   0.007%   0.122%   1.428%   7.854%   0.000%
   16    6.2  1.5  0.5   0.000%  13.399%   3.403%   0.000%   7.878%   0.007%   0.122%   1.427%   7.854%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   7.699%   0.003%   3.319%   0.000%   0.000%   0.000%   0.022%
   18    8.2  1.5  0.5   3.418%   0.000%   0.000%   1.504%   0.001%   0.649%  27.533%   2.356%   0.000%   0.001%
   19    9.2  1.5  0.5   0.000%   0.855%  14.812%   0.000%   0.263%   0.000%   0.589%   6.885%   4.574%   0.000%
   20   10.2  1.5  0.5   0.000%   0.855%   1.118%   0.000%  13.944%   0.013%   0.589%   6.884%   4.102%   0.000%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.056%   0.000%   0.024%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.000%   1.659%   0.812%   0.000%  10.466%   0.010%   0.015%   0.177%   7.019%   0.000%
   23    3.2  1.5 -0.5   0.000%  16.206%  10.476%   0.000%   0.812%   0.001%   0.148%   1.726%   0.841%   0.000%
   24    4.2  1.5 -0.5   0.000%   0.000%   3.403%   0.000%   7.878%   0.007%   0.000%   0.000%   7.856%   0.000%
   25    5.2  1.5 -0.5  13.399%   0.000%   0.000%   3.403%   0.007%   7.878%   1.428%   0.122%   0.000%   7.854%
   26    6.2  1.5 -0.5  13.399%   0.000%   0.000%   3.403%   0.007%   7.878%   1.427%   0.122%   0.000%   7.854%
   27    7.2  1.5 -0.5   0.000%   0.000%   7.699%   0.000%   3.319%   0.003%   0.000%   0.000%   0.022%   0.000%
   28    8.2  1.5 -0.5   0.000%   3.418%   1.504%   0.000%   0.649%   0.001%   2.356%  27.533%   0.001%   0.000%
   29    9.2  1.5 -0.5   0.855%   0.000%   0.000%  14.812%   0.000%   0.263%   6.885%   0.589%   0.000%   4.574%
   30   10.2  1.5 -0.5   0.855%   0.000%   0.000%   1.118%   0.013%  13.944%   6.884%   0.589%   0.000%   4.102%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.024%   0.000%   0.056%   0.000%   0.000%   0.000%   0.080%
   32    2.2  1.5 -1.5  16.207%   0.000%   0.000%  10.476%   0.001%   0.812%   1.728%   0.148%   0.000%   0.840%
   33    3.2  1.5 -1.5   1.659%   0.000%   0.000%   0.812%   0.010%  10.466%   0.177%   0.015%   0.000%   7.017%
   34    4.2  1.5 -1.5  17.865%   0.000%   0.000%   7.885%   0.003%   3.400%   1.904%   0.163%   0.000%   0.004%
   35    5.2  1.5 -1.5   0.000%   4.466%   7.885%   0.000%   3.400%   0.003%   0.041%   0.475%   0.004%   0.000%
   36    6.2  1.5 -1.5   0.000%   4.466%   7.885%   0.000%   3.400%   0.003%   0.041%   0.475%   0.004%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   3.322%   0.007%   7.692%   0.000%   0.000%   0.000%  38.769%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   5.843%   0.013%  13.527%   0.000%   0.000%   0.000%  13.008%
   39    9.2  1.5 -1.5   0.000%   2.564%   4.513%   0.000%   1.946%   0.002%   1.767%  20.646%   0.002%   0.000%
   40   10.2  1.5 -1.5   0.000%   2.564%   4.513%   0.000%   1.946%   0.002%   1.767%  20.645%   0.002%   0.000%
   41    1.2  0.5  0.5   0.000%   0.000%   0.024%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.007%   0.000%   0.017%   0.000%   0.000%   0.000%   0.047%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.020%   0.000%   0.000%   0.000%   0.012%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.020%   0.000%   0.004%   0.000%   0.000%   0.000%   0.035%
   45    5.2  0.5  0.5   0.000%   0.000%   0.005%   0.000%   0.019%   0.000%   0.000%   0.000%   0.011%   0.000%
   46    6.2  0.5  0.5   0.140%   0.000%   0.000%   0.044%   0.000%   0.019%   0.002%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.140%   0.000%   0.000%   0.062%   0.000%   0.000%   0.002%   0.012%   0.000%
   48    8.2  0.5  0.5   0.000%   0.140%   0.050%   0.000%   0.013%   0.000%   0.000%   0.002%   0.013%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.024%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.007%   0.000%   0.017%   0.000%   0.000%   0.000%   0.047%   0.000%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.004%   0.000%   0.020%   0.000%   0.000%   0.000%   0.012%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.020%   0.000%   0.004%   0.000%   0.000%   0.000%   0.035%   0.000%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.005%   0.000%   0.019%   0.000%   0.000%   0.000%   0.011%
   54    6.2  0.5 -0.5   0.000%   0.140%   0.044%   0.000%   0.019%   0.000%   0.000%   0.002%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.140%   0.000%   0.000%   0.000%   0.000%   0.062%   0.002%   0.000%   0.000%   0.012%
   56    8.2  0.5 -0.5   0.140%   0.000%   0.000%   0.050%   0.000%   0.013%   0.002%   0.000%   0.000%   0.013%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.169%   6.848%   0.000%   1.009%   0.175%   6.280%   0.027%   1.976%   0.080%   0.680%
    3    3.2  1.5  1.5   0.020%   0.820%   0.000%   1.952%   0.000%   0.010%   0.453%  33.377%   0.004%   0.035%
    4    4.2  1.5  1.5   0.190%   7.664%   0.000%   0.282%   0.163%   5.840%   0.002%   0.178%   0.083%   0.709%
    5    5.2  1.5  1.5   7.666%   0.190%  21.008%   0.000%   7.062%   0.197%   2.410%   0.033%   0.710%   0.083%
    6    6.2  1.5  1.5   7.665%   0.190%   8.944%   0.000%  21.093%   0.588%   0.083%   0.001%   0.710%   0.083%
    7    7.2  1.5  1.5   0.001%   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.039%   0.333%
    8    8.2  1.5  1.5   0.000%   0.007%   0.000%   0.675%   0.003%   0.113%   0.120%   8.864%   0.021%   0.182%
    9    9.2  1.5  1.5   4.234%   0.105%   9.377%   0.000%   3.580%   0.100%   0.381%   0.005%   8.113%   0.949%
   10   10.2  1.5  1.5   4.234%   0.105%  12.418%   0.000%   0.044%   0.001%   0.967%   0.013%   8.113%   0.949%
   11    1.2  1.5  0.5   0.078%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.065%   0.008%
   12    2.2  1.5  0.5   0.821%   0.020%   8.786%   0.000%   4.956%   0.138%  21.615%   0.293%   0.035%   0.004%
   13    3.2  1.5  0.5   6.850%   0.170%   2.267%   0.000%   3.331%   0.093%   3.725%   0.051%   0.680%   0.080%
   14    4.2  1.5  0.5   0.004%   0.000%  29.855%   0.000%   0.450%   0.013%   8.358%   0.113%   0.005%   0.001%
   15    5.2  1.5  0.5   0.000%   0.004%   0.000%   0.243%   0.318%  11.400%   0.035%   2.550%   0.001%   0.005%
   16    6.2  1.5  0.5   0.000%   0.004%   0.000%   1.080%   0.361%  12.960%   0.002%   0.144%   0.001%   0.005%
   17    7.2  1.5  0.5  37.833%   0.936%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  44.546%   5.213%
   18    8.2  1.5  0.5   1.409%   0.035%   0.639%   0.000%  13.248%   0.369%   0.403%   0.005%   2.704%   0.316%
   19    9.2  1.5  0.5   0.134%   5.412%   0.000%   0.097%   0.065%   2.336%   0.114%   8.387%   1.463%  12.498%
   20   10.2  1.5  0.5   0.145%   5.872%   0.000%   1.235%   0.124%   4.458%   0.069%   5.113%   1.084%   9.258%
   21    1.2  1.5 -0.5   0.002%   0.078%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.065%
   22    2.2  1.5 -0.5   0.020%   0.821%   0.000%   8.786%   0.138%   4.956%   0.293%  21.615%   0.004%   0.035%
   23    3.2  1.5 -0.5   0.170%   6.850%   0.000%   2.267%   0.093%   3.331%   0.051%   3.725%   0.080%   0.680%
   24    4.2  1.5 -0.5   0.000%   0.004%   0.000%  29.855%   0.013%   0.450%   0.113%   8.358%   0.001%   0.005%
   25    5.2  1.5 -0.5   0.004%   0.000%   0.243%   0.000%  11.400%   0.318%   2.550%   0.035%   0.005%   0.001%
   26    6.2  1.5 -0.5   0.004%   0.000%   1.080%   0.000%  12.960%   0.361%   0.144%   0.002%   0.005%   0.001%
   27    7.2  1.5 -0.5   0.936%  37.833%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.213%  44.546%
   28    8.2  1.5 -0.5   0.035%   1.409%   0.000%   0.639%   0.369%  13.248%   0.005%   0.403%   0.316%   2.704%
   29    9.2  1.5 -0.5   5.412%   0.134%   0.097%   0.000%   2.336%   0.065%   8.387%   0.114%  12.498%   1.463%
   30   10.2  1.5 -0.5   5.872%   0.145%   1.235%   0.000%   4.458%   0.124%   5.113%   0.069%   9.258%   1.084%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   6.848%   0.169%   1.009%   0.000%   6.280%   0.175%   1.976%   0.027%   0.680%   0.080%
   33    3.2  1.5 -1.5   0.820%   0.020%   1.952%   0.000%   0.010%   0.000%  33.377%   0.453%   0.035%   0.004%
   34    4.2  1.5 -1.5   7.664%   0.190%   0.282%   0.000%   5.840%   0.163%   0.178%   0.002%   0.709%   0.083%
   35    5.2  1.5 -1.5   0.190%   7.666%   0.000%  21.008%   0.197%   7.062%   0.033%   2.410%   0.083%   0.710%
   36    6.2  1.5 -1.5   0.190%   7.665%   0.000%   8.944%   0.588%  21.093%   0.001%   0.083%   0.083%   0.710%
   37    7.2  1.5 -1.5   0.021%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.333%   0.039%
   38    8.2  1.5 -1.5   0.007%   0.000%   0.675%   0.000%   0.113%   0.003%   8.864%   0.120%   0.182%   0.021%
   39    9.2  1.5 -1.5   0.105%   4.234%   0.000%   9.377%   0.100%   3.580%   0.005%   0.381%   0.949%   8.113%
   40   10.2  1.5 -1.5   0.105%   4.234%   0.000%  12.418%   0.001%   0.044%   0.013%   0.967%   0.949%   8.113%
   41    1.2  0.5  0.5   0.001%   0.034%   0.000%   0.009%   0.001%   0.032%   0.000%   0.037%   0.002%   0.016%
   42    2.2  0.5  0.5   0.000%   0.000%   0.045%   0.000%   0.005%   0.000%   0.028%   0.000%   0.000%   0.000%
   43    3.2  0.5  0.5   0.034%   0.001%   0.009%   0.000%   0.063%   0.002%   0.004%   0.000%   0.012%   0.001%
   44    4.2  0.5  0.5   0.012%   0.000%   0.068%   0.000%   0.010%   0.000%   0.000%   0.000%   0.007%   0.001%
   45    5.2  0.5  0.5   0.001%   0.035%   0.000%   0.001%   0.000%   0.017%   0.001%   0.060%   0.001%   0.013%
   46    6.2  0.5  0.5   0.017%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.059%   0.007%
   47    7.2  0.5  0.5   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.011%
   48    8.2  0.5  0.5   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.019%
   49    1.2  0.5 -0.5   0.034%   0.001%   0.009%   0.000%   0.032%   0.001%   0.037%   0.000%   0.016%   0.002%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.045%   0.000%   0.005%   0.000%   0.028%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.001%   0.034%   0.000%   0.009%   0.002%   0.063%   0.000%   0.004%   0.001%   0.012%
   52    4.2  0.5 -0.5   0.000%   0.012%   0.000%   0.068%   0.000%   0.010%   0.000%   0.000%   0.001%   0.007%
   53    5.2  0.5 -0.5   0.035%   0.001%   0.001%   0.000%   0.017%   0.000%   0.060%   0.001%   0.013%   0.001%
   54    6.2  0.5 -0.5   0.000%   0.017%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.059%
   55    7.2  0.5 -0.5   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.001%
   56    8.2  0.5 -0.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%   0.002%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  1.5  1.5   0.072%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.039%   0.000%   0.000%  11.462%   0.282%   0.000%  36.868%   0.206%   0.191%   0.296%
    3    3.2  1.5  1.5   0.760%   0.000%   0.000%   0.111%  23.210%   0.008%   2.478%   0.014%   1.912%   2.962%
    4    4.2  1.5  1.5   0.006%   0.000%   0.000%   1.174%   0.457%   0.000%  49.520%   0.277%   0.000%   0.000%
    5    5.2  1.5  1.5   0.000%   0.006%   6.810%   0.000%   0.001%   3.983%   0.002%   0.391%  14.036%   9.061%
    6    6.2  1.5  1.5   0.000%   0.006%   3.518%   0.000%   0.002%   6.587%   0.005%   0.853%  14.171%   9.149%
    7    7.2  1.5  1.5  49.760%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5  27.186%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5   0.000%   0.068%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  1.5  1.5   0.000%   0.068%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.000%   0.760%   7.253%   0.000%   0.005%  15.078%   0.001%   0.175%   4.973%   3.210%
   13    3.2  1.5  0.5   0.000%   0.039%  38.470%   0.000%   0.002%   4.585%   0.030%   5.315%   0.550%   0.355%
   14    4.2  1.5  0.5   0.000%   0.793%   0.002%   0.000%   0.000%   0.160%   0.000%   0.002%  17.263%  11.145%
   15    5.2  1.5  0.5   0.792%   0.000%   0.000%  21.153%  18.115%   0.006%   0.980%   0.005%   2.140%   3.315%
   16    6.2  1.5  0.5   0.792%   0.000%   0.000%  10.047%  27.510%   0.009%   2.863%   0.016%   2.067%   3.202%
   17    7.2  1.5  0.5   0.000%   0.372%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.000%   0.023%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.2  1.5  0.5   7.344%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.2  1.5  0.5  10.962%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.760%   0.000%   0.000%   7.253%  15.078%   0.005%   0.175%   0.001%   3.210%   4.973%
   23    3.2  1.5 -0.5   0.039%   0.000%   0.000%  38.470%   4.585%   0.002%   5.315%   0.030%   0.355%   0.550%
   24    4.2  1.5 -0.5   0.793%   0.000%   0.000%   0.002%   0.160%   0.000%   0.002%   0.000%  11.145%  17.263%
   25    5.2  1.5 -0.5   0.000%   0.792%  21.153%   0.000%   0.006%  18.115%   0.005%   0.980%   3.315%   2.140%
   26    6.2  1.5 -0.5   0.000%   0.792%  10.047%   0.000%   0.009%  27.510%   0.016%   2.863%   3.202%   2.067%
   27    7.2  1.5 -0.5   0.372%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.023%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.2  1.5 -0.5   0.000%   7.344%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.2  1.5 -0.5   0.000%  10.962%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.072%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.039%  11.462%   0.000%   0.000%   0.282%   0.206%  36.868%   0.296%   0.191%
   33    3.2  1.5 -1.5   0.000%   0.760%   0.111%   0.000%   0.008%  23.210%   0.014%   2.478%   2.962%   1.912%
   34    4.2  1.5 -1.5   0.000%   0.006%   1.174%   0.000%   0.000%   0.457%   0.277%  49.520%   0.000%   0.000%
   35    5.2  1.5 -1.5   0.006%   0.000%   0.000%   6.810%   3.983%   0.001%   0.391%   0.002%   9.061%  14.036%
   36    6.2  1.5 -1.5   0.006%   0.000%   0.000%   3.518%   6.587%   0.002%   0.853%   0.005%   9.149%  14.171%
   37    7.2  1.5 -1.5   0.000%  49.760%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%  27.186%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.2  1.5 -1.5   0.068%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.2  1.5 -1.5   0.068%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.2  0.5  0.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.2  0.5  0.5   0.000%   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.2  0.5  0.5   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  0.5  0.5   0.000%   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.2  0.5  0.5   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.054%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.045%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   0.054%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.045%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      51       52       53       54       55       56

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.072%   0.859%   0.648%   0.004%   0.015%   1.444%
    3    3.2  1.5  1.5   0.653%   7.846%   2.279%   0.015%   0.008%   0.704%
    4    4.2  1.5  1.5   0.000%   0.001%   0.094%   0.001%   0.021%   1.962%
    5    5.2  1.5  1.5   1.076%   0.090%   0.038%   5.740%   2.898%   0.031%
    6    6.2  1.5  1.5   1.265%   0.105%   0.015%   2.175%   6.247%   0.067%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   1.755%  21.074%   6.861%   0.046%   0.005%   0.454%
    9    9.2  1.5  1.5   8.714%   0.726%   0.154%  23.060%   8.769%   0.094%
   10   10.2  1.5  1.5   8.257%   0.688%   0.212%  31.691%   0.662%   0.007%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   9.428%   0.785%   0.006%   0.933%   0.348%   0.004%
   13    3.2  1.5  0.5   0.906%   0.075%   0.003%   0.399%   1.643%   0.018%
   14    4.2  1.5  0.5   0.517%   0.043%   0.075%  11.269%   0.561%   0.006%
   15    5.2  1.5  0.5   0.017%   0.202%   0.026%   0.000%   0.047%   4.384%
   16    6.2  1.5  0.5   0.024%   0.285%   0.524%   0.004%   0.041%   3.800%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.018%   0.002%   0.014%   2.054%  42.745%   0.459%
   19    9.2  1.5  0.5   1.272%  15.270%   2.408%   0.016%   0.159%  14.843%
   20   10.2  1.5  0.5   1.361%  16.349%   8.910%   0.060%   0.077%   7.210%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.785%   9.428%   0.933%   0.006%   0.004%   0.348%
   23    3.2  1.5 -0.5   0.075%   0.906%   0.399%   0.003%   0.018%   1.643%
   24    4.2  1.5 -0.5   0.043%   0.517%  11.269%   0.075%   0.006%   0.561%
   25    5.2  1.5 -0.5   0.202%   0.017%   0.000%   0.026%   4.384%   0.047%
   26    6.2  1.5 -0.5   0.285%   0.024%   0.004%   0.524%   3.800%   0.041%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.002%   0.018%   2.054%   0.014%   0.459%  42.745%
   29    9.2  1.5 -0.5  15.270%   1.272%   0.016%   2.408%  14.843%   0.159%
   30   10.2  1.5 -0.5  16.349%   1.361%   0.060%   8.910%   7.210%   0.077%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.859%   0.072%   0.004%   0.648%   1.444%   0.015%
   33    3.2  1.5 -1.5   7.846%   0.653%   0.015%   2.279%   0.704%   0.008%
   34    4.2  1.5 -1.5   0.001%   0.000%   0.001%   0.094%   1.962%   0.021%
   35    5.2  1.5 -1.5   0.090%   1.076%   5.740%   0.038%   0.031%   2.898%
   36    6.2  1.5 -1.5   0.105%   1.265%   2.175%   0.015%   0.067%   6.247%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5  21.074%   1.755%   0.046%   6.861%   0.454%   0.005%
   39    9.2  1.5 -1.5   0.726%   8.714%  23.060%   0.154%   0.094%   8.769%
   40   10.2  1.5 -1.5   0.688%   8.257%  31.691%   0.212%   0.007%   0.662%
   41    1.2  0.5  0.5   0.006%   0.077%   0.042%   0.000%   0.000%   0.034%
   42    2.2  0.5  0.5   0.096%   0.008%   0.000%   0.054%   0.002%   0.000%
   43    3.2  0.5  0.5   0.001%   0.000%   0.000%   0.018%   0.139%   0.001%
   44    4.2  0.5  0.5   0.001%   0.000%   0.001%   0.139%   0.019%   0.000%
   45    5.2  0.5  0.5   0.006%   0.072%   0.011%   0.000%   0.001%   0.070%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.077%   0.006%   0.000%   0.042%   0.034%   0.000%
   50    2.2  0.5 -0.5   0.008%   0.096%   0.054%   0.000%   0.000%   0.002%
   51    3.2  0.5 -0.5   0.000%   0.001%   0.018%   0.000%   0.001%   0.139%
   52    4.2  0.5 -0.5   0.000%   0.001%   0.139%   0.001%   0.000%   0.019%
   53    5.2  0.5 -0.5   0.072%   0.006%   0.000%   0.011%   0.070%   0.001%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%


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

              2       6     3655.78       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     26195.87  22055.71   1984.85   2136.81      8.08     10.00
 REAL TIME  *     27036.12 SEC
 DISK USED  *         3.66 GB (local),       59.99 GB (total)
 SF USED    *        18.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -214.217320766296

              CI              CI           MULTI
   -214.33124252   -214.16470720   -213.49570767
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
