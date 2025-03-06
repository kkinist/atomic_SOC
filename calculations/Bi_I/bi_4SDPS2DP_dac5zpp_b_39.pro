
 Working directory              : /wrk/irikura/molpro.2T2UcsUZoA/
 Global scratch directory       : /wrk/irikura/molpro.2T2UcsUZoA/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.2T2UcsUZoA/

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
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 21-Feb-25          TIME: 10:39:00  
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

     695.468 MB (compressed) written to integral file ( 13.5%)

     Node minimum: 29.360 MB, node maximum: 62.915 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   24679576.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15976936      RECORD LENGTH: 524288

 Memory used in sort:      16.53 MW

 SORT1 READ   646821870. AND WROTE     4259373. INTEGRALS IN     14 RECORDS. CPU TIME:     3.24 SEC, REAL TIME:     3.35 SEC
 SORT2 READ    68065344. AND WROTE   395255076. INTEGRALS IN   1792 RECORDS. CPU TIME:     0.50 SEC, REAL TIME:     0.55 SEC

 Node minimum:    24675847.  Node maximum:    24720811. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        10.31     10.10
 REAL TIME  *        11.68 SEC
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.216D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.841D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.455D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.455D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.978D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 5 2 6 1 1 5 6   4 2 3 1 3 2 4 6 5 1   3 6 2 4 51214 813 7  111510 9 3 6 4 2 5 1
                                        5 6 3 2 4 9 81211 7  10141315 1 9 810 711  13141215 6 4 2 3 5 1  10141311 7 9 81215 4
                                        3 5 2 6242327161825  17281920222621131411   9101512 7 8 1 4 6 5   3 21113151014 9 712
                                        8 1 4 6 5 3 2 1 6 4   5 3 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.164D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.164D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.224D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.229D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.362D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.362D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 2 3 1 2   3 1 7 610 8 4 5 9 2   1 3 4 6 8 710 5 9 2   1 310 5 6 9 7 8 4 5
                                       10 4 8 6 9 7 3 2 119  15181114201612171321   510 8 4 9 6 7191120  1612151814172113 3 2
                                        110 4 5 8 9 7 62011  161718211912151413 9   5 710 6 8 4 2 1 3 9   5 7 810 6 417182120
                                       16121119151413 2 1 3   9 810 7 4 5 6 1 2 3   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556   0.05556
 Weight factors for state symmetry  2:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
 
 Number of orbital rotations:  2531  ( 27 closed/active, 1298 closed/virtual, 0 active/active, 1206 active/virtual )
 Total number of variables:    5963
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9   16    0   -213.42298228    -213.44576802   -0.02278575    0.11910935 0.00082771 0.00000000  0.17E+01      4.39
   2    7   12    0   -213.44541089    -213.44542795   -0.00001706    0.00397985 0.00000501 0.00000000  0.87E-01      8.35
   3    8   16    0   -213.44542795    -213.44542795   -0.00000000    0.00000307 0.00000001 0.00000000  0.14E-03     12.22

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.67E-08)
                       Final energy:   -213.44542795
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.591268927442
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.08663539
 One electron energy                          -373.11545885
 Two electron energy                           159.52418992
 Virial ratio                                    4.09164381
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -213.362038369054
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71559379
 One electron energy                          -368.50961745
 Two electron energy                           155.14757908
 Virial ratio                                    4.10500174
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -213.362038369052
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71559379
 One electron energy                          -368.50961745
 Two electron energy                           155.14757908
 Virial ratio                                    4.10500174
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -213.362038369030
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71559379
 One electron energy                          -368.50961744
 Two electron energy                           155.14757907
 Virial ratio                                    4.10500174
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -213.362038369020
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71559379
 One electron energy                          -368.50961745
 Two electron energy                           155.14757908
 Virial ratio                                    4.10500174
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -213.362038369012
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71559379
 One electron energy                          -368.50961744
 Two electron energy                           155.14757908
 Virial ratio                                    4.10500174
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -213.359594334556
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.72334083
 One electron energy                          -368.50595269
 Two electron energy                           155.14635836
 Virial ratio                                    4.10461616
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -213.358261259349
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71579331
 One electron energy                          -368.48887526
 Two electron energy                           155.13061400
 Virial ratio                                    4.10493776
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -213.358261259344
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71579331
 One electron energy                          -368.48887526
 Two electron energy                           155.13061401
 Virial ratio                                    4.10493776
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Quartet
 ==============================
 !MCSCF STATE 10.2 Quartet Energy             -213.358261259311
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.71579331
 One electron energy                          -368.48887526
 Two electron energy                           155.13061401
 Virial ratio                                    4.10493776
 
 !MCSCF STATE 10.2 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.535917860952
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01508154
 One electron energy                          -372.81617245
 Two electron energy                           159.28025459
 Virial ratio                                    4.09404717
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.535917860952
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01508154
 One electron energy                          -372.81617245
 Two electron energy                           159.28025459
 Virial ratio                                    4.09404717
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.535917860939
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01508154
 One electron energy                          -372.81617245
 Two electron energy                           159.28025459
 Virial ratio                                    4.09404717
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.535917860935
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01508154
 One electron energy                          -372.81617245
 Two electron energy                           159.28025459
 Virial ratio                                    4.09404717
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.535917860931
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.01508154
 One electron energy                          -372.81617245
 Two electron energy                           159.28025459
 Virial ratio                                    4.09404717
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.500758308763
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.96833210
 One electron energy                          -372.59228531
 Two electron energy                           159.09152700
 Virial ratio                                    4.09563465
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.500758308732
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.96833210
 One electron energy                          -372.59228531
 Two electron energy                           159.09152700
 Virial ratio                                    4.09563465
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.500758308726
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.96833210
 One electron energy                          -372.59228531
 Two electron energy                           159.09152700
 Virial ratio                                    4.09563465
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     1.000000001355
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     1.511238538227
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     3.999999994597
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000000006814
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     2.488772288075
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     0.000000000007
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.000000014090
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.999999991356
 !MCSCF expec    <10.2 Quartet|LXLX|10.2 Quartet>     0.999999997246
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.000000002289
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.380544651048
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999999879657
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000200428
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     2.619475812073
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.000000008198
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.999999993541
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     3.999999998352
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     3.923914646865
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.000000000815
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000000003560
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     0.076082303310
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     0.000000000007
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.999999988589
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.000000008808
 !MCSCF expec    <10.2 Quartet|LYLY|10.2 Quartet>     0.999999999977
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.999999977259
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     3.956605418266
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000002394
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000011246
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.043390123016
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000000000002
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999999998
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999999840
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     1.000000000249
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.564846814864
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     1.000000004544
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.999999989583
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     3.435145408571
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     0.000000000007
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.999999997321
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.999999999836
 !MCSCF expec    <10.2 Quartet|LZLZ|10.2 Quartet>     0.000000002777
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.000000020452
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.662849930686
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000117948
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     3.999999788326
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     3.337134064911
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999999
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999999991804
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.000000006620
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     5.999999999956
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     5.999999999956
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     5.999999999956
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     5.999999999956
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     5.999999999956
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     0.000000000021
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 2 4 3 5 1 1 3 5   4 2 6 1 3 5 4 2 6 1   3 5 4 6 211 7 812 9  14151310 6 2 4 3 5 1
                                        6 2 4 5 311 712 8 9  14151013 111 7 812 9  14151310 6 2 4 5 3 1  11 7 812 914151310 6
                                        2 4 5 3272517212326  2824191820221611 7 8  12 914151310 1 6 2 4   5 311 7 812 9151413
                                       10 1 2 6 4 5 3 1 2 5   6 3 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 2 1 3   2 1 1 3 2 9 7 4 810   6 5 7 9 810 4 6 5 1   3 2 5 610 8 4 9 7 5
                                        610 8 4 9 7 3 2 112  19211314161115171820   5 610 8 4 9 7121921  1314161115172018 3 2
                                        1 5 6 810 4 7 91219  211316141115172018 5   6 810 4 7 9 3 2 1 5   6 810 4 9 712191321
                                       16141115171820 3 2 1   5 6 810 4 7 9 3 2 1   3 2 1 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.78185     1  1  s    1.00017
    2.1     2.00000    -1.40987     1  1  d1-  1.00146
    3.1     2.00000    -1.40987     1  1  d0   1.00146
    4.1     2.00000    -1.40987     1  1  d1+  1.00146
    5.1     2.00000    -1.40987     1  1  d2-  1.00146
    6.1     2.00000    -1.40987     1  1  d2+  1.00146
    7.1     2.00000    -0.76175     1  1  s   -0.42490    1  5  s    0.63812    1  6  s    0.45873
    1.2     2.00000    -4.35805     1  1  pz   0.99974
    2.2     2.00000    -4.35805     1  1  py   0.99974
    3.2     2.00000    -4.35805     1  1  px   0.99974
    4.2     0.82815    -0.18635     1  1  px  -0.28020    1  4  px   0.25582    1  5  px   0.48295    1  6  px   0.35795
    5.2     0.82815    -0.18635     1  1  py  -0.28020    1  4  py   0.25582    1  5  py   0.48295    1  6  py   0.35795
    6.2     0.82815    -0.18635     1  1  pz  -0.28020    1  4  pz   0.25582    1  5  pz   0.48295    1  6  pz   0.35795
    7.2     0.16854     0.02506     1 12  pz   0.83865    1 13  pz   0.26260
    8.2     0.16854     0.02506     1 12  py   0.83865    1 13  py   0.26260
    9.2     0.16854     0.02506     1 12  px   0.83865    1 13  px   0.26260
   10.2     0.00331     0.29757     1  4  pz   0.58794    1  5  pz   0.93458    1  6  pz  -1.01924    1  7  pz  -0.75995
                                    1 12  pz   0.61222
   11.2     0.00331     0.29757     1  4  py   0.58794    1  5  py   0.93458    1  6  py  -1.01924    1  7  py  -0.75995
                                    1 12  py   0.61222
   12.2     0.00331     0.29757     1  4  px   0.58794    1  5  px   0.93458    1  6  px  -1.01924    1  7  px  -0.75995
                                    1 12  px   0.61222
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 aaa000000      0.99778589      0.00000000      0.00000004      0.00000000      0.00000000     -0.00000002     -0.00007406
 a0a0a0000     -0.00081138      0.00000983      0.11198933     -0.00000426     -0.00000603      0.80424043     -0.56973418
 aa0a00000      0.00081136      0.00001460      0.75248732     -0.00000082     -0.00000051      0.30513462      0.56973417
 aa00a0000     -0.00000000     -0.00000898     -0.00000079      0.70321279     -0.00002691      0.00000383     -0.00000000
 aa000a000      0.00000000      0.70321279     -0.00001077      0.00000898      0.00000943     -0.00000710      0.00000000
 0aa0a0000      0.00000000      0.00000943      0.00000176     -0.00002691     -0.70321279     -0.00000552     -0.00000000
 0aaa00000     -0.00000000      0.70321278     -0.00001077      0.00000898      0.00000943     -0.00000710      0.00000000
 a0aa00000     -0.00000000      0.00000898      0.00000079     -0.70321278      0.00002691     -0.00000383      0.00000000
 a0a00a000     -0.00000000     -0.00000943     -0.00000176      0.00002691      0.70321278      0.00000552     -0.00000000
 0aa00a000      0.00081142     -0.00000477     -0.64049798     -0.00000344     -0.00000552      0.49910583      0.56973417
 a00aa0000      0.00742407      0.00000029      0.03942979      0.00000021      0.00000034     -0.03072554      0.07100398
 0a0a0a000     -0.00742407     -0.00000061     -0.00689415      0.00000026      0.00000037     -0.04950996     -0.07100396
 00a0aa000      0.00742407     -0.00000090     -0.04632398      0.00000005      0.00000003     -0.01878440      0.07100395
 
 Energy:     -213.59126893   -213.36203837   -213.36203837   -213.36203837   -213.36203837   -213.36203837   -213.35959433

 State:              8               9              10
 aaa000000      0.00000000     -0.00000000     -0.00000000
 a0a0a0000      0.00000000      0.00000000      0.00000000
 aa0a00000      0.00000000      0.00000000      0.00000000
 aa00a0000      0.70290870     -0.00007507     -0.00003634
 aa000a000      0.00007507      0.70290870      0.00000884
 0aa0a0000      0.00003634     -0.00000884      0.70290870
 0aaa00000     -0.00007507     -0.70290871     -0.00000884
 a0aa00000      0.70290871     -0.00007507     -0.00003634
 a0a00a000      0.00003634     -0.00000884      0.70290871
 0aa00a000      0.00000000      0.00000000     -0.00000000
 a00aa0000     -0.00000000     -0.00000000      0.00000000
 0a0a0a000     -0.00000000     -0.00000000     -0.00000000
 00a0aa000     -0.00000000     -0.00000000     -0.00000000
 
 Energy:     -213.35826126   -213.35826126   -213.35826126
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 aba000000     -0.00000070     -0.08455141     -0.00000006     -0.00000008      0.80735488      0.00000000     -0.00000000
 aab000000      0.00000562      0.74146554      0.00000003      0.00000003     -0.33045377     -0.00000000      0.00000000
 0a2000000     -0.70301361      0.00000531     -0.00001931      0.00005808     -0.00000006      0.69897313      0.00000039
 2a0000000      0.70301360     -0.00000531      0.00001931     -0.00005808      0.00000006      0.69897313      0.00000039
 a02000000      0.00001932     -0.00000000     -0.70301360      0.00013939     -0.00000006     -0.00000039      0.69897313
 a20000000     -0.00001932      0.00000000      0.70301359     -0.00013939      0.00000006     -0.00000039      0.69897313
 02a000000     -0.00005808      0.00000000     -0.00013940     -0.70301359     -0.00000007     -0.00000066     -0.00006328
 20a000000      0.00005808     -0.00000000      0.00013940      0.70301359      0.00000007     -0.00000066     -0.00006328
 baa000000     -0.00000492     -0.65691413      0.00000004      0.00000005     -0.47690111      0.00000000     -0.00000000
 aa000b000     -0.02873923      0.00000022     -0.00000079      0.00000237     -0.00000000     -0.05437240     -0.00000003
 a0a00b000     -0.00000237      0.00000000     -0.00000570     -0.02873923     -0.00000000      0.00000005      0.00000492
 aa00b0000     -0.00000079      0.00000000      0.02873920     -0.00000570      0.00000000     -0.00000003      0.05437237
 0aa0b0000      0.00000237     -0.00000000      0.00000570      0.02873920      0.00000000      0.00000005      0.00000492
 a0ab00000      0.00000079     -0.00000000     -0.02873919      0.00000570     -0.00000000     -0.00000003      0.05437236
 0aab00000     -0.02873919      0.00000022     -0.00000079      0.00000237     -0.00000000      0.05437236      0.00000003
 
 Energy:     -213.53591786   -213.53591786   -213.53591786   -213.53591786   -213.53591786   -213.50075831   -213.50075831

 State:              8
 aba000000      0.00000000
 aab000000     -0.00000000
 0a2000000      0.00000066
 2a0000000      0.00000066
 a02000000      0.00006328
 a20000000      0.00006328
 02a000000      0.69897313
 20a000000      0.69897312
 baa000000      0.00000000
 aa000b000     -0.00000005
 a0a00b000     -0.05437240
 aa00b0000      0.00000492
 0aa0b0000     -0.05437237
 a0ab00000      0.00000492
 0aab00000      0.00000005
 
 Energy:     -213.50075831
 


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
 CPU TIMES  *        24.04     13.72     10.10
 REAL TIME  *        27.06 SEC
 DISK USED  *       120.25 MB (local),        3.27 GB (total)
 SF USED    *       236.45 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5912689  -0.0
    -213.3620384   6.0
    -213.3620384   6.0
    -213.3620384   6.0
    -213.3620384   6.0
    -213.3620384   6.0
    -213.3595943   0.0
    -213.3582613   2.0
    -213.3582613   2.0
    -213.3582613   2.0
    -213.5359179   6.0
    -213.5359179   6.0
    -213.5359179   6.0
    -213.5359179   6.0
    -213.5359179   6.0
    -213.5007583   2.0
    -213.5007583   2.0
    -213.5007583   2.0
                                                  


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
     1      -213.59126893
     2      -213.36203837
     3      -213.36203837
     4      -213.36203837
     5      -213.36203837
     6      -213.36203837
     7      -213.35959433
     8      -213.35826126
     9      -213.35826126
    10      -213.35826126

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1930D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1685D-06

 Number of blocks in overlap matrix:  1041   Smallest eigenvalue:  0.17D-06
 Number of N-2 electron functions:    1729
 Number of N-1 electron functions:  136416

 Number of internal configurations:               109200
 Number of singly external configurations:      17913336
 Number of doubly external configurations:      29682219
 Total number of contracted configurations:     47704755
 Total number of uncontracted configurations: 1006932663

 Diagonal Coupling coefficients finished.               Storage:  54830172 words, CPU-Time:     78.93 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   5506953 words, CPU-time:      8.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59126893    -0.00000000    -1.00289043  0.57D-01  0.11D+00   141.58
    1     2     2     1.00000000     0.00000000  -213.36203837    -0.00000000    -0.96617638  0.49D-01  0.99D-01   141.58
    1     3     3     1.00000000     0.00000000  -213.36203837     0.00000000    -0.96627620  0.49D-01  0.10D+00   141.58
    1     4     4     1.00000000     0.00000000  -213.36203837     0.00000000    -0.96669337  0.49D-01  0.10D+00   141.58
    1     5     5     1.00000000     0.00000000  -213.36203837    -0.00000000    -0.96661936  0.48D-01  0.10D+00   141.58
    1     6     6     1.00000000     0.00000000  -213.36203837    -0.00000000    -0.96642095  0.49D-01  0.10D+00   141.58
    1     7     7     1.00000000     0.00000000  -213.35959433    -0.00000000    -0.96681905  0.49D-01  0.99D-01   141.58
    1     8     8     1.00000000     0.00000000  -213.35826126    -0.00000000    -0.96697581  0.48D-01  0.10D+00   141.58
    1     9     9     1.00000000     0.00000000  -213.35826126    -0.00000000    -0.96691406  0.48D-01  0.10D+00   141.58
    1    10    10     1.00000000     0.00000000  -213.35826126    -0.00000000    -0.96686560  0.48D-01  0.10D+00   141.58
    2     1     1     1.10374821    -0.79454406  -214.38581299    -0.79454406    -0.02911870  0.44D-02  0.20D-02  3855.57
    2     2     2     1.09659741    -0.78976758  -214.15180595    -0.78976758    -0.02321991  0.30D-02  0.15D-02  3855.57
    2     3     3     1.09665403    -0.78970051  -214.15173888    -0.78970051    -0.02329249  0.30D-02  0.15D-02  3855.57
    2     4     4     1.09670238    -0.78963278  -214.15167115    -0.78963278    -0.02338436  0.30D-02  0.15D-02  3855.57
    2     5     5     1.09677452    -0.78956755  -214.15160592    -0.78956755    -0.02345121  0.31D-02  0.15D-02  3855.57
    2     6     6     1.09677003    -0.78955373  -214.15159210    -0.78955373    -0.02347127  0.31D-02  0.15D-02  3855.57
    2     7     7     1.09662577    -0.78960971  -214.14920404    -0.78960971    -0.02344898  0.31D-02  0.14D-02  3855.57
    2     8     8     1.09654978    -0.78978974  -214.14805100    -0.78978974    -0.02336101  0.29D-02  0.15D-02  3855.57
    2     9     9     1.09655024    -0.78975846  -214.14801972    -0.78975846    -0.02340459  0.30D-02  0.15D-02  3855.57
    2    10    10     1.09659885    -0.78971740  -214.14797866    -0.78971740    -0.02344119  0.30D-02  0.15D-02  3855.57
    3     1     1     1.08835907    -0.82165256  -214.41292149    -0.02710850    -0.00033100  0.48D-04  0.27D-04  7564.22
    3     2     2     1.08498207    -0.81165906  -214.17369743    -0.02189149    -0.00024360  0.34D-04  0.19D-04  7564.22
    3     3     3     1.08498049    -0.81165864  -214.17369701    -0.02195813    -0.00024427  0.34D-04  0.19D-04  7564.22
    3     4     4     1.08497680    -0.81165830  -214.17369666    -0.02202552    -0.00024438  0.34D-04  0.19D-04  7564.22
    3     5     5     1.08497737    -0.81165724  -214.17369561    -0.02208969    -0.00024562  0.34D-04  0.19D-04  7564.22
    3     6     6     1.08497798    -0.81165714  -214.17369551    -0.02210342    -0.00024583  0.34D-04  0.19D-04  7564.22
    3     7     7     1.08492774    -0.81166455  -214.17125888    -0.02205484    -0.00024349  0.32D-04  0.19D-04  7564.22
    3     8     8     1.08498632    -0.81176527  -214.17002653    -0.02197553    -0.00023748  0.29D-04  0.19D-04  7564.22
    3     9     9     1.08498154    -0.81176522  -214.17002648    -0.02200676    -0.00023753  0.29D-04  0.19D-04  7564.22
    3    10    10     1.08498487    -0.81176384  -214.17002510    -0.02204644    -0.00023900  0.29D-04  0.19D-04  7564.22
    4     1     1     1.08784903    -0.82198771  -214.41325663    -0.00033514    -0.00000778  0.15D-05  0.65D-06 11266.38
    4     2     2     1.08469933    -0.81191037  -214.17394874    -0.00025131    -0.00000635  0.12D-05  0.45D-06 11266.38
    4     3     3     1.08469974    -0.81191036  -214.17394873    -0.00025172    -0.00000632  0.12D-05  0.45D-06 11266.38
    4     4     4     1.08469876    -0.81191034  -214.17394871    -0.00025205    -0.00000637  0.12D-05  0.46D-06 11266.38
    4     5     5     1.08469907    -0.81191033  -214.17394870    -0.00025309    -0.00000635  0.12D-05  0.45D-06 11266.38
    4     6     6     1.08469830    -0.81191030  -214.17394866    -0.00025315    -0.00000638  0.12D-05  0.45D-06 11266.38
    4     7     7     1.08467079    -0.81191468  -214.17150901    -0.00025013    -0.00000640  0.13D-05  0.43D-06 11266.38
    4     8     8     1.08472736    -0.81200880  -214.17027006    -0.00024353    -0.00000581  0.11D-05  0.42D-06 11266.38
    4     9     9     1.08472715    -0.81200879  -214.17027005    -0.00024357    -0.00000582  0.11D-05  0.42D-06 11266.38
    4    10    10     1.08472696    -0.81200877  -214.17027003    -0.00024493    -0.00000584  0.11D-05  0.43D-06 11266.38
    5     1     1     1.08788396    -0.82199589  -214.41326481    -0.00000818    -0.00000021  0.21D-07  0.21D-07 14966.46
    5     2     2     1.08472503    -0.81191714  -214.17395551    -0.00000677    -0.00000019  0.27D-07  0.15D-07 14966.46
    5     3     3     1.08472472    -0.81191714  -214.17395551    -0.00000678    -0.00000019  0.27D-07  0.15D-07 14966.46
    5     4     4     1.08472481    -0.81191710  -214.17395547    -0.00000676    -0.00000019  0.27D-07  0.15D-07 14966.46
    5     5     5     1.08472469    -0.81191710  -214.17395547    -0.00000677    -0.00000019  0.27D-07  0.15D-07 14966.46
    5     6     6     1.08472487    -0.81191710  -214.17395547    -0.00000680    -0.00000019  0.27D-07  0.15D-07 14966.46
    5     7     7     1.08469534    -0.81192146  -214.17151580    -0.00000679    -0.00000020  0.29D-07  0.15D-07 14966.46
    5     8     8     1.08475449    -0.81201498  -214.17027624    -0.00000618    -0.00000017  0.23D-07  0.14D-07 14966.46
    5     9     9     1.08475441    -0.81201498  -214.17027624    -0.00000619    -0.00000017  0.23D-07  0.14D-07 14966.46
    5    10    10     1.08475450    -0.81201498  -214.17027624    -0.00000620    -0.00000017  0.23D-07  0.14D-07 14966.46
    6     1     1     1.08788521    -0.82199610  -214.41326503    -0.00000022    -0.00000001  0.65D-09  0.55D-09 18663.59
    6     2     2     1.08472919    -0.81191734  -214.17395571    -0.00000020    -0.00000001  0.66D-09  0.54D-09 18663.59
    6     3     3     1.08472912    -0.81191734  -214.17395571    -0.00000020    -0.00000001  0.66D-09  0.54D-09 18663.59
    6     4     4     1.08472907    -0.81191730  -214.17395567    -0.00000020    -0.00000001  0.66D-09  0.54D-09 18663.59
    6     5     5     1.08472910    -0.81191730  -214.17395567    -0.00000020    -0.00000001  0.66D-09  0.54D-09 18663.59
    6     6     6     1.08472905    -0.81191730  -214.17395567    -0.00000020    -0.00000001  0.66D-09  0.55D-09 18663.59
    6     7     7     1.08470041    -0.81192167  -214.17151601    -0.00000021    -0.00000001  0.76D-09  0.52D-09 18663.59
    6     8     8     1.08475954    -0.81201516  -214.17027642    -0.00000018    -0.00000000  0.58D-09  0.43D-09 18663.59
    6     9     9     1.08475954    -0.81201516  -214.17027642    -0.00000018    -0.00000000  0.58D-09  0.43D-09 18663.59
    6    10    10     1.08475953    -0.81201516  -214.17027642    -0.00000018    -0.00000000  0.58D-09  0.43D-09 18663.59


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.9%
 S   0.4%  68.5%
 P   0.2%  16.2%   6.8%

 Initialization:   0.5%
 Other:            6.5%

 Total CPU:    18663.6 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000000           0.9564938  -0.0000001  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0168219   0.0000000
                               0.0000000   0.0000000
 22222222220//00/000          -0.0096151   0.7765421  -0.0421330   0.0000079   0.0001272   0.0001033   0.5456811   0.0000000
                               0.0000000   0.0000000
 2222222222//0/00000          -0.0096151  -0.3517828   0.6935717  -0.0000541   0.0000902  -0.0000437   0.5456812   0.0000000
                               0.0000000   0.0000001
 2222222222/0//00000           0.0000000   0.0000974   0.0000034  -0.1475492  -0.0520559  -0.6550680  -0.0000001  -0.0123519
                              -0.0113383   0.6730109
 2222222222//00/0000          -0.0000000  -0.0000974  -0.0000035   0.1475492   0.0520559   0.6550680   0.0000001  -0.0123519
                              -0.0113383   0.6730109
 2222222222/0/0/0000           0.0096151   0.4247593   0.6514387  -0.0000462   0.0002174   0.0000598  -0.5456812  -0.0000000
                              -0.0000000   0.0000000
 2222222222//000/000           0.0000000  -0.0001102  -0.0001560  -0.2243050   0.6350448   0.0000583   0.0000000  -0.4594843
                               0.4920355  -0.0001437
 22222222220///00000           0.0000000  -0.0001102  -0.0001560  -0.2243049   0.6350448   0.0000583  -0.0000000   0.4594843
                              -0.4920355   0.0001437
 2222222222/0/00/000           0.0000000  -0.0000212  -0.0000008   0.6176660   0.2181809  -0.1564627  -0.0000000   0.4918804
                               0.4593445   0.0167662
 22222222220//0/0000           0.0000000   0.0000213   0.0000008  -0.6176659  -0.2181809   0.1564627  -0.0000000   0.4918805
                               0.4593444   0.0167662
 2222222222/00//0000           0.0059119  -0.0497711   0.0027004  -0.0000005  -0.0000082  -0.0000066   0.0708807   0.0000000
                              -0.0000000   0.0000000
 222222222200/0//000           0.0059119   0.0225469  -0.0444533   0.0000035  -0.0000058   0.0000028   0.0708807  -0.0000000
                               0.0000000  -0.0000000
 22222222220/0/0/000          -0.0059120  -0.0272243  -0.0417528   0.0000030  -0.0000140  -0.0000039  -0.0708806  -0.0000000
                               0.0000000  -0.0000000
 222222222200/00/0/0           0.0103425   0.0511306   0.0024952   0.0000001   0.0000095   0.0000068   0.0279114   0.0000000
                              -0.0000000   0.0000000
 22222222220/000//00          -0.0103425  -0.0505604   0.0080127  -0.0000009  -0.0000071  -0.0000067  -0.0279114   0.0000000
                              -0.0000000   0.0000000
 2222222222/000/00/0          -0.0000000   0.0000068   0.0000002  -0.0102374  -0.0036118  -0.0454506  -0.0000000   0.0009184
                               0.0008430  -0.0500409
 2222222222/00/00/00          -0.0000000  -0.0000068  -0.0000002   0.0102374   0.0036118   0.0454506   0.0000000   0.0009184
                               0.0008430  -0.0500409

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957817    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.017058   -0.000000    0.000000    0.000000
 2          -0.000000   -0.000157   -0.721293   -0.000139   -0.000030    0.631395   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000   -0.000222    0.631395   -0.000005   -0.000001    0.721293   -0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000   -0.319260   -0.000052    0.210011    0.879142   -0.000050   -0.000000   -0.000000   -0.000000    0.000000
 5          -0.000000    0.903878    0.000012    0.074093    0.310543    0.000269   -0.000000    0.000000   -0.000000   -0.000000
 6          -0.000000    0.000083   -0.000093    0.932378   -0.222698    0.000088   -0.000000   -0.000000    0.000000    0.000000
 7           0.017500   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.958478   -0.000000    0.000000   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.017588   -0.654248    0.700377
 9           0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.016144    0.700597    0.654049
 10          0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.958284   -0.000205    0.023873

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957969   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000215    0.000000    0.000000   -0.000000
 2          -0.000000    0.958604    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.958605    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.958605    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.958605    0.000000    0.000000   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.958605    0.000000   -0.000000   -0.000000    0.000000
 7           0.000215   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.958638   -0.000000    0.000000   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958581    0.000000    0.000000
 9           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.958581    0.000000
 10         -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.958581


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95781683 (fixed)   0.95808433 (relaxed)   0.95796869 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00164609   -0.00496054   -0.67516957
 Singles      0.01913560   -0.08763313   -0.09486033
 Pairs        0.06889427   -0.00000000   -0.05196621
 Total        1.08967597   -0.09259367   -0.82199610
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59119361
 Nuclear energy                         0.00000000
 Kinetic energy                        69.55248205
 One electron energy                 -372.56956494
 Two electron energy                  158.15629991
 Virial quotient                       -3.08275505
 Correlation energy                    -0.82207142
 !MRCI STATE 1.2 Energy              -214.413265031591

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.48698508 (Davidson, fixed reference)
 Cluster corrected energies          -214.48676884 (Davidson, relaxed reference)
 Cluster corrected energies          -214.48698508 (Davidson, rotated reference)

 Cluster corrected energies          -214.48468087 (Pople, fixed reference)
 Cluster corrected energies          -214.48445563 (Pople, relaxed reference)
 Cluster corrected energies          -214.48468087 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.72129259 (fixed)   0.95866925 (relaxed)   0.95860447 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00322829   -0.00869287   -0.66545912
 Singles      0.01971497   -0.09036519   -0.09775090
 Pairs        0.06528775   -0.00000000   -0.04870733
 Total        1.08823102   -0.09905807   -0.81191734
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36203837
 Nuclear energy                         0.00000000
 Kinetic energy                        69.32561005
 One electron energy                 -368.18745335
 Two electron energy                  154.01349764
 Virial quotient                       -3.08939158
 Correlation energy                    -0.81191734
 !MRCI STATE 2.2 Energy              -214.173955711830

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24559200 (Davidson, fixed reference)
 Cluster corrected energies          -214.24547261 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24559200 (Davidson, rotated reference)

 Cluster corrected energies          -214.24326860 (Pople, fixed reference)
 Cluster corrected energies          -214.24314452 (Pople, relaxed reference)
 Cluster corrected energies          -214.24326860 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.72129259 (fixed)   0.95866928 (relaxed)   0.95860450 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00322830   -0.00869288   -0.66545924
 Singles      0.01971486   -0.09036512   -0.09775082
 Pairs        0.06528779    0.00000000   -0.04870729
 Total        1.08823095   -0.09905799   -0.81191734
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36203837
 Nuclear energy                         0.00000000
 Kinetic energy                        69.32561006
 One electron energy                 -368.18745250
 Two electron energy                  154.01349678
 Virial quotient                       -3.08939158
 Correlation energy                    -0.81191734
 !MRCI STATE 3.2 Energy              -214.173955711782

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24559195 (Davidson, fixed reference)
 Cluster corrected energies          -214.24547255 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24559195 (Davidson, rotated reference)

 Cluster corrected energies          -214.24326854 (Pople, fixed reference)
 Cluster corrected energies          -214.24314446 (Pople, relaxed reference)
 Cluster corrected energies          -214.24326854 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.87914224 (fixed)   0.95866930 (relaxed)   0.95860453 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00322829   -0.00869287   -0.66545918
 Singles      0.01971483   -0.09036514   -0.09775077
 Pairs        0.06528777   -0.00000002   -0.04870734
 Total        1.08823089   -0.09905804   -0.81191730
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36203837
 Nuclear energy                         0.00000000
 Kinetic energy                        69.32560842
 One electron energy                 -368.18745024
 Two electron energy                  154.01349457
 Virial quotient                       -3.08939165
 Correlation energy                    -0.81191730
 !MRCI STATE 4.2 Energy              -214.173955669501

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24559185 (Davidson, fixed reference)
 Cluster corrected energies          -214.24547246 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24559185 (Davidson, rotated reference)

 Cluster corrected energies          -214.24326845 (Pople, fixed reference)
 Cluster corrected energies          -214.24314437 (Pople, relaxed reference)
 Cluster corrected energies          -214.24326845 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.90387811 (fixed)   0.95866929 (relaxed)   0.95860451 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00322829   -0.00869287   -0.66545923
 Singles      0.01971487   -0.09036512   -0.09775078
 Pairs        0.06528777    0.00000003   -0.04870729
 Total        1.08823093   -0.09905797   -0.81191730
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36203837
 Nuclear energy                         0.00000000
 Kinetic energy                        69.32560826
 One electron energy                 -368.18745131
 Two electron energy                  154.01349565
 Virial quotient                       -3.08939166
 Correlation energy                    -0.81191730
 !MRCI STATE 5.2 Energy              -214.173955669488

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24559188 (Davidson, fixed reference)
 Cluster corrected energies          -214.24547249 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24559188 (Davidson, rotated reference)

 Cluster corrected energies          -214.24326848 (Pople, fixed reference)
 Cluster corrected energies          -214.24314440 (Pople, relaxed reference)
 Cluster corrected energies          -214.24326848 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.93237774 (fixed)   0.95866931 (relaxed)   0.95860453 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00322829   -0.00869287   -0.66545925
 Singles      0.01971480   -0.09036510   -0.09775074
 Pairs        0.06528778   -0.00000000   -0.04870730
 Total        1.08823087   -0.09905798   -0.81191730
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.36203837
 Nuclear energy                         0.00000000
 Kinetic energy                        69.32560826
 One electron energy                 -368.18744996
 Two electron energy                  154.01349429
 Virial quotient                       -3.08939166
 Correlation energy                    -0.81191730
 !MRCI STATE 6.2 Energy              -214.173955669451

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24559184 (Davidson, fixed reference)
 Cluster corrected energies          -214.24547244 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24559184 (Davidson, rotated reference)

 Cluster corrected energies          -214.24326844 (Pople, fixed reference)
 Cluster corrected energies          -214.24314436 (Pople, relaxed reference)
 Cluster corrected energies          -214.24326844 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95847846 (fixed)   0.95871668 (relaxed)   0.95863819 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00318434   -0.00858668   -0.66527155
 Singles      0.01983292   -0.09058890   -0.09805154
 Pairs        0.06513720    0.00000001   -0.04859858
 Total        1.08815446   -0.09917557   -0.81192167
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35966966
 Nuclear energy                         0.00000000
 Kinetic energy                        69.32733889
 One electron energy                 -368.14907727
 Two electron energy                  153.97756127
 Virial quotient                       -3.08927934
 Correlation energy                    -0.81184635
 !MRCI STATE 7.2 Energy              -214.171516005627

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24308388 (Davidson, fixed reference)
 Cluster corrected energies          -214.24293923 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24308388 (Davidson, rotated reference)

 Cluster corrected energies          -214.24075824 (Pople, fixed reference)
 Cluster corrected energies          -214.24060794 (Pople, relaxed reference)
 Cluster corrected energies          -214.24075824 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.70037650 (fixed)   0.95864132 (relaxed)   0.95858105 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00324925   -0.00872286   -0.18692888
 Singles      0.01962198   -0.09023338   -0.09755729
 Pairs        0.06541297   -0.52098847   -0.52752898
 Total        1.08828420   -0.61994471   -0.81201516
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35826126
 Nuclear energy                         0.00000000
 Kinetic energy                        69.32549061
 One electron energy                 -368.16367929
 Two electron energy                  153.99340287
 Virial quotient                       -3.08934383
 Correlation energy                    -0.81201516
 !MRCI STATE 8.2 Energy              -214.170276419099

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24196453 (Davidson, fixed reference)
 Cluster corrected energies          -214.24185342 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24196453 (Davidson, rotated reference)

 Cluster corrected energies          -214.23964255 (Pople, fixed reference)
 Cluster corrected energies          -214.23952707 (Pople, relaxed reference)
 Cluster corrected energies          -214.23964255 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.70059725 (fixed)   0.95864131 (relaxed)   0.95858105 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00324925   -0.00872286   -0.21859468
 Singles      0.01962198   -0.09023338   -0.09755729
 Pairs        0.06541297   -0.48652709   -0.49586319
 Total        1.08828420   -0.58548333   -0.81201516
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35826126
 Nuclear energy                         0.00000000
 Kinetic energy                        69.32549061
 One electron energy                 -368.16367935
 Two electron energy                  153.99340293
 Virial quotient                       -3.08934383
 Correlation energy                    -0.81201516
 !MRCI STATE 9.2 Energy              -214.170276418988

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24196453 (Davidson, fixed reference)
 Cluster corrected energies          -214.24185342 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24196453 (Davidson, rotated reference)

 Cluster corrected energies          -214.23964255 (Pople, fixed reference)
 Cluster corrected energies          -214.23952707 (Pople, relaxed reference)
 Cluster corrected energies          -214.23964255 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95828371 (fixed)   0.95864132 (relaxed)   0.95858105 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00324925   -0.00872286   -0.64933576
 Singles      0.01962196   -0.09023335   -0.09755728
 Pairs        0.06541297   -0.01775841   -0.06512212
 Total        1.08828419   -0.11671462   -0.81201516
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35826126
 Nuclear energy                         0.00000000
 Kinetic energy                        69.32549035
 One electron energy                 -368.16367804
 Two electron energy                  153.99340162
 Virial quotient                       -3.08934384
 Correlation energy                    -0.81201516
 !MRCI STATE 10.2 Energy             -214.170276418710

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24196452 (Davidson, fixed reference)
 Cluster corrected energies          -214.24185341 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24196452 (Davidson, rotated reference)

 Cluster corrected energies          -214.23964254 (Pople, fixed reference)
 Cluster corrected energies          -214.23952706 (Pople, relaxed reference)
 Cluster corrected energies          -214.23964254 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21      118.64       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5     3677.79       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *     20668.87  20644.82     13.72     10.10
 REAL TIME  *     20994.29 SEC
 DISK USED  *         3.71 GB (local),       60.71 GB (total)
 SF USED    *        36.43 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.48698508  AU                              
 SETTING HLSDIAG(2)     =      -214.24559200  AU                              
 SETTING HLSDIAG(3)     =      -214.24559195  AU                              
 SETTING HLSDIAG(4)     =      -214.24559185  AU                              
 SETTING HLSDIAG(5)     =      -214.24559188  AU                              
 SETTING HLSDIAG(6)     =      -214.24559184  AU                              
 SETTING HLSDIAG(7)     =      -214.24308388  AU                              
 SETTING HLSDIAG(8)     =      -214.24196453  AU                              
 SETTING HLSDIAG(9)     =      -214.24196453  AU                              
 SETTING HLSDIAG(10)    =      -214.24196452  AU                              


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


 Number of p-space configurations:  62

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.53591786
     2      -213.53591786
     3      -213.53591786
     4      -213.53591786
     5      -213.53591786
     6      -213.50075831
     7      -213.50075831
     8      -213.50075831

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3097D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3316D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2495D-06

 Number of blocks in overlap matrix:   883   Smallest eigenvalue:  0.25D-06
 Number of N-2 electron functions:    1838
 Number of N-1 electron functions:  156741

 Number of internal configurations:               137562
 Number of singly external configurations:      20589510
 Number of doubly external configurations:      31550040
 Total number of contracted configurations:     52277112
 Total number of uncontracted configurations: 1336649436

 Diagonal Coupling coefficients finished.               Storage:  65681225 words, CPU-Time:    136.94 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   5581966 words, CPU-time:      8.61 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.53591786    -0.00000000    -1.01006184  0.64D-01  0.11D+00   197.36
    1     2     2     1.00000000     0.00000000  -213.53591786     0.00000000    -1.01073697  0.64D-01  0.11D+00   197.36
    1     3     3     1.00000000     0.00000000  -213.53591786     0.00000000    -1.01081265  0.64D-01  0.11D+00   197.36
    1     4     4     1.00000000     0.00000000  -213.53591786     0.00000000    -1.01023525  0.64D-01  0.11D+00   197.36
    1     5     5     1.00000000     0.00000000  -213.53591786    -0.00000000    -1.01097294  0.65D-01  0.11D+00   197.36
    1     6     6     1.00000000     0.00000000  -213.50075831    -0.00000000    -1.00576033  0.51D-01  0.12D+00   197.36
    1     7     7     1.00000000     0.00000000  -213.50075831     0.00000000    -1.00621737  0.51D-01  0.12D+00   197.36
    1     8     8     1.00000000     0.00000000  -213.50075831     0.00000000    -1.00596721  0.51D-01  0.12D+00   197.36
    2     1     1     1.10790466    -0.80262325  -214.33854111    -0.80262325    -0.02925704  0.47D-02  0.17D-02  3481.05
    2     2     2     1.10796177    -0.80260645  -214.33852432    -0.80260645    -0.02927674  0.47D-02  0.18D-02  3481.05
    2     3     3     1.10798974    -0.80253754  -214.33845540    -0.80253754    -0.02935271  0.47D-02  0.18D-02  3481.05
    2     4     4     1.10812090    -0.80239790  -214.33831576    -0.80239790    -0.02951752  0.48D-02  0.18D-02  3481.05
    2     5     5     1.10834439    -0.80215260  -214.33807046    -0.80215260    -0.02978866  0.49D-02  0.18D-02  3481.05
    2     6     6     1.10398841    -0.80605722  -214.30681552    -0.80605722    -0.02881397  0.44D-02  0.18D-02  3481.05
    2     7     7     1.10409963    -0.80601682  -214.30677513    -0.80601682    -0.02885556  0.43D-02  0.19D-02  3481.05
    2     8     8     1.10409794    -0.80599426  -214.30675257    -0.80599426    -0.02889321  0.44D-02  0.18D-02  3481.05
    3     1     1     1.09261416    -0.82963536  -214.36555322    -0.02701211    -0.00040255  0.66D-04  0.32D-04  6757.25
    3     2     2     1.09262326    -0.82963513  -214.36555300    -0.02702868    -0.00040307  0.66D-04  0.32D-04  6757.25
    3     3     3     1.09261837    -0.82963376  -214.36555162    -0.02709622    -0.00040418  0.66D-04  0.32D-04  6757.25
    3     4     4     1.09262303    -0.82963237  -214.36555023    -0.02723447    -0.00040591  0.66D-04  0.33D-04  6757.25
    3     5     5     1.09263373    -0.82962687  -214.36554473    -0.02747427    -0.00041156  0.67D-04  0.33D-04  6757.25
    3     6     6     1.09111513    -0.83250425  -214.33326256    -0.02644703    -0.00036317  0.42D-04  0.34D-04  6757.25
    3     7     7     1.09113170    -0.83250310  -214.33326141    -0.02648628    -0.00036446  0.42D-04  0.34D-04  6757.25
    3     8     8     1.09114138    -0.83250288  -214.33326119    -0.02650861    -0.00036485  0.43D-04  0.34D-04  6757.25
    4     1     1     1.09181063    -0.83003971  -214.36595757    -0.00040435    -0.00001303  0.28D-05  0.11D-05 10029.18
    4     2     2     1.09181082    -0.83003969  -214.36595755    -0.00040456    -0.00001305  0.28D-05  0.11D-05 10029.18
    4     3     3     1.09180838    -0.83003969  -214.36595755    -0.00040593    -0.00001304  0.28D-05  0.11D-05 10029.18
    4     4     4     1.09181026    -0.83003964  -214.36595751    -0.00040728    -0.00001310  0.28D-05  0.11D-05 10029.18
    4     5     5     1.09181136    -0.83003962  -214.36595748    -0.00041275    -0.00001311  0.28D-05  0.11D-05 10029.18
    4     6     6     1.09063077    -0.83286282  -214.33362113    -0.00035857    -0.00000946  0.18D-05  0.82D-06 10029.18
    4     7     7     1.09063705    -0.83286280  -214.33362110    -0.00035970    -0.00000949  0.19D-05  0.82D-06 10029.18
    4     8     8     1.09063474    -0.83286279  -214.33362110    -0.00035991    -0.00000950  0.19D-05  0.83D-06 10029.18
    5     1     1     1.09175046    -0.83005377  -214.36597163    -0.00001406    -0.00000046  0.59D-07  0.54D-07 13296.01
    5     2     2     1.09175071    -0.83005377  -214.36597163    -0.00001408    -0.00000047  0.61D-07  0.54D-07 13296.01
    5     3     3     1.09175041    -0.83005377  -214.36597163    -0.00001408    -0.00000047  0.60D-07  0.54D-07 13296.01
    5     4     4     1.09175058    -0.83005377  -214.36597163    -0.00001412    -0.00000047  0.61D-07  0.54D-07 13296.01
    5     5     5     1.09175001    -0.83005376  -214.36597163    -0.00001415    -0.00000047  0.62D-07  0.54D-07 13296.01
    5     6     6     1.09064341    -0.83287292  -214.33363123    -0.00001010    -0.00000028  0.36D-07  0.33D-07 13296.01
    5     7     7     1.09064415    -0.83287292  -214.33363123    -0.00001012    -0.00000029  0.36D-07  0.33D-07 13296.01
    5     8     8     1.09064449    -0.83287292  -214.33363123    -0.00001013    -0.00000029  0.37D-07  0.33D-07 13296.01
    6     1     1     1.09174007    -0.83005426  -214.36597212    -0.00000049    -0.00000002  0.17D-08  0.22D-08 16564.31
    6     2     2     1.09174012    -0.83005426  -214.36597212    -0.00000049    -0.00000002  0.17D-08  0.22D-08 16564.31
    6     3     3     1.09174015    -0.83005426  -214.36597212    -0.00000049    -0.00000002  0.17D-08  0.22D-08 16564.31
    6     4     4     1.09174002    -0.83005426  -214.36597212    -0.00000049    -0.00000002  0.17D-08  0.22D-08 16564.31
    6     5     5     1.09174003    -0.83005426  -214.36597212    -0.00000050    -0.00000002  0.17D-08  0.22D-08 16564.31
    6     6     6     1.09064505    -0.83287322  -214.33363153    -0.00000030    -0.00000001  0.88D-09  0.12D-08 16564.31
    6     7     7     1.09064513    -0.83287322  -214.33363153    -0.00000031    -0.00000001  0.88D-09  0.12D-08 16564.31
    6     8     8     1.09064518    -0.83287322  -214.33363153    -0.00000031    -0.00000001  0.88D-09  0.12D-08 16564.31


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.9%
 S   0.4%  62.9%
 P   0.2%  19.2%   9.5%

 Initialization:   0.9%
 Other:            5.9%

 Total CPU:    16564.3 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000000           0.8902316  -0.0921057   0.3206848   0.0504344   0.0125921   0.0000000   0.0000000   0.0000000
 2222222222/\/000000          -0.3194435   0.0588040   0.8895925   0.0731546   0.0656369   0.0000000   0.0000000   0.0000000
 222222222202/000000           0.0764840   0.6668103  -0.0144257  -0.0459349   0.0215515   0.2515873   0.6070033   0.1289635
 222222222220/000000          -0.0764840  -0.6668103   0.0144257   0.0459349  -0.0215515   0.2515873   0.6070033   0.1289635
 2222222222/20000000           0.0057480  -0.0226133   0.0771569  -0.5324824  -0.4040215  -0.2832773  -0.0114736   0.6066326
 2222222222/02000000          -0.0057480   0.0226133  -0.0771569   0.5324824   0.4040215  -0.2832773  -0.0114736   0.6066326
 22222222222/0000000          -0.0103587   0.0463717  -0.0005034   0.4045656  -0.5360384   0.5521220  -0.2824821   0.2524799
 22222222220/2000000           0.0103587  -0.0463717   0.0005034  -0.4045656   0.5360384   0.5521219  -0.2824820   0.2524799
 22222222220//0\0000          -0.0032225  -0.0280948   0.0006078   0.0019354  -0.0009080  -0.0213290  -0.0514603  -0.0109332
 2222222222/0/00\000           0.0032225   0.0280948  -0.0006078  -0.0019354   0.0009080  -0.0213290  -0.0514603  -0.0109332
 2222222222//00\0000           0.0002422  -0.0009528   0.0032509  -0.0224351  -0.0170227  -0.0240156  -0.0009727   0.0514289
 2222222222/0/\00000          -0.0002422   0.0009528  -0.0032509   0.0224351   0.0170227  -0.0240156  -0.0009727   0.0514289

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.014709    0.679796   -0.008162    0.108605   -0.663128   -0.000000    0.000000   -0.000000
 2          -0.065847   -0.059590    0.032110    0.946854    0.092130   -0.000000   -0.000000    0.000000
 3           0.000715    0.663995   -0.109561   -0.020484    0.678694   -0.000000    0.000000   -0.000000
 4          -0.574473    0.076580    0.756112   -0.065226    0.045773   -0.000000   -0.000000    0.000000
 5           0.761161    0.038882    0.573701    0.030603    0.054694    0.000000   -0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.787811   -0.404202    0.358984
 7           0.000000    0.000000   -0.000000    0.000000    0.000000   -0.403067   -0.016371    0.866120
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.360258    0.865591    0.184015

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956001   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.956001   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.956001   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.956001    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.956001    0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.955455   -0.000000    0.000000
 7           0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.955455   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.955455


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.67979579 (fixed)   0.95616046 (relaxed)   0.95600139 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00222148   -0.00619426   -0.67540530
 Singles      0.02176545   -0.09289314   -0.10141489
 Pairs        0.07017842   -0.00000000   -0.05323408
 Total        1.09416535   -0.09908740   -0.83005426
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53591786
 Nuclear energy                         0.00000000
 Kinetic energy                        69.50856887
 One electron energy                 -372.30379046
 Two electron energy                  157.93781834
 Virial quotient                       -3.08402224
 Correlation energy                    -0.83005426
 !MRCI STATE 1.2 Energy              -214.365972122547

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44413447 (Davidson, fixed reference)
 Cluster corrected energies          -214.44383230 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44413447 (Davidson, rotated reference)

 Cluster corrected energies          -214.44289419 (Pople, fixed reference)
 Cluster corrected energies          -214.44257265 (Pople, relaxed reference)
 Cluster corrected energies          -214.44289419 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.94685420 (fixed)   0.95616044 (relaxed)   0.95600136 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00222149   -0.00619425   -0.67540503
 Singles      0.02176560   -0.09289336   -0.10141505
 Pairs        0.07017831   -0.00000004   -0.05323419
 Total        1.09416540   -0.09908766   -0.83005426
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53591786
 Nuclear energy                         0.00000000
 Kinetic energy                        69.50855898
 One electron energy                 -372.30378060
 Two electron energy                  157.93780848
 Virial quotient                       -3.08402268
 Correlation energy                    -0.83005426
 !MRCI STATE 2.2 Energy              -214.365972122211

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44413452 (Davidson, fixed reference)
 Cluster corrected energies          -214.44383234 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44413452 (Davidson, rotated reference)

 Cluster corrected energies          -214.44289424 (Pople, fixed reference)
 Cluster corrected energies          -214.44257269 (Pople, relaxed reference)
 Cluster corrected energies          -214.44289424 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.67869422 (fixed)   0.95616042 (relaxed)   0.95600135 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00222148   -0.00619426   -0.67540523
 Singles      0.02176550   -0.09289315   -0.10141493
 Pairs        0.07017845    0.00000000   -0.05323410
 Total        1.09416543   -0.09908741   -0.83005426
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53591786
 Nuclear energy                         0.00000000
 Kinetic energy                        69.50857043
 One electron energy                 -372.30378650
 Two electron energy                  157.93781438
 Virial quotient                       -3.08402217
 Correlation energy                    -0.83005426
 !MRCI STATE 3.2 Energy              -214.365972122004

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44413454 (Davidson, fixed reference)
 Cluster corrected energies          -214.44383237 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44413454 (Davidson, rotated reference)

 Cluster corrected energies          -214.44289427 (Pople, fixed reference)
 Cluster corrected energies          -214.44257272 (Pople, relaxed reference)
 Cluster corrected energies          -214.44289427 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.75611186 (fixed)   0.95616048 (relaxed)   0.95600140 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00222149   -0.00619425   -0.67540520
 Singles      0.02176551   -0.09289329   -0.10141498
 Pairs        0.07017831    0.00000000   -0.05323409
 Total        1.09416531   -0.09908754   -0.83005426
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53591786
 Nuclear energy                         0.00000000
 Kinetic energy                        69.50856004
 One electron energy                 -372.30378205
 Two electron energy                  157.93780993
 Virial quotient                       -3.08402263
 Correlation energy                    -0.83005426
 !MRCI STATE 4.2 Energy              -214.365972121897

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44413443 (Davidson, fixed reference)
 Cluster corrected energies          -214.44383226 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44413443 (Davidson, rotated reference)

 Cluster corrected energies          -214.44289415 (Pople, fixed reference)
 Cluster corrected energies          -214.44257260 (Pople, relaxed reference)
 Cluster corrected energies          -214.44289415 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.76116137 (fixed)   0.95616048 (relaxed)   0.95600140 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00222149   -0.00619425   -0.67540516
 Singles      0.02176555   -0.09289331   -0.10141501
 Pairs        0.07017828   -0.00000000   -0.05323409
 Total        1.09416532   -0.09908756   -0.83005426
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53591786
 Nuclear energy                         0.00000000
 Kinetic energy                        69.50855969
 One electron energy                 -372.30378227
 Two electron energy                  157.93781015
 Virial quotient                       -3.08402265
 Correlation energy                    -0.83005426
 !MRCI STATE 5.2 Energy              -214.365972121856

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44413445 (Davidson, fixed reference)
 Cluster corrected energies          -214.44383227 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44413445 (Davidson, rotated reference)

 Cluster corrected energies          -214.44289417 (Pople, fixed reference)
 Cluster corrected energies          -214.44257261 (Pople, relaxed reference)
 Cluster corrected energies          -214.44289417 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.78781067 (fixed)   0.95563291 (relaxed)   0.95545527 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00437489   -0.01025879   -0.43250125
 Singles      0.01791810   -0.08597860   -0.09211700
 Pairs        0.07312351   -0.27676935   -0.30825497
 Total        1.09541651   -0.37300674   -0.83287322
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50075831
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48315332
 One electron energy                 -372.12022741
 Two electron energy                  157.78659588
 Virial quotient                       -3.08468487
 Correlation energy                    -0.83287322
 !MRCI STATE 6.2 Energy              -214.333631532450

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41310139 (Davidson, fixed reference)
 Cluster corrected energies          -214.41276223 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41310139 (Davidson, rotated reference)

 Cluster corrected energies          -214.41192525 (Pople, fixed reference)
 Cluster corrected energies          -214.41156358 (Pople, relaxed reference)
 Cluster corrected energies          -214.41192525 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.86611971 (fixed)   0.95563288 (relaxed)   0.95545524 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00437489   -0.01025879   -0.07556791
 Singles      0.01791810   -0.08597860   -0.09211700
 Pairs        0.07312359   -0.66776001   -0.66518831
 Total        1.09541658   -0.76399740   -0.83287322
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50075831
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48315353
 One electron energy                 -372.12022733
 Two electron energy                  157.78659580
 Virial quotient                       -3.08468486
 Correlation energy                    -0.83287322
 !MRCI STATE 7.2 Energy              -214.333631532418

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41310145 (Davidson, fixed reference)
 Cluster corrected energies          -214.41276229 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41310145 (Davidson, rotated reference)

 Cluster corrected energies          -214.41192531 (Pople, fixed reference)
 Cluster corrected energies          -214.41156365 (Pople, relaxed reference)
 Cluster corrected energies          -214.41192531 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.86559069 (fixed)   0.95563285 (relaxed)   0.95545521 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00437490   -0.01025879   -0.55564847
 Singles      0.01791809   -0.08597857   -0.09211698
 Pairs        0.07312365   -0.14187180   -0.18510777
 Total        1.09541664   -0.23810917   -0.83287322
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50075831
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48315315
 One electron energy                 -372.12022655
 Two electron energy                  157.78659501
 Virial quotient                       -3.08468487
 Correlation energy                    -0.83287322
 !MRCI STATE 8.2 Energy              -214.333631532355

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41310150 (Davidson, fixed reference)
 Cluster corrected energies          -214.41276234 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41310150 (Davidson, rotated reference)

 Cluster corrected energies          -214.41192537 (Pople, fixed reference)
 Cluster corrected energies          -214.41156370 (Pople, relaxed reference)
 Cluster corrected energies          -214.41192537 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21      118.64       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     6899.74       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *     39137.62  18468.75  20644.82     13.72     10.10
 REAL TIME  *     39746.31 SEC
 DISK USED  *         6.85 GB (local),      111.06 GB (total)
 SF USED    *        36.43 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -214.44413447  AU                              
 SETTING HLSDIAG(12)    =      -214.44413452  AU                              
 SETTING HLSDIAG(13)    =      -214.44413454  AU                              
 SETTING HLSDIAG(14)    =      -214.44413443  AU                              
 SETTING HLSDIAG(15)    =      -214.44413445  AU                              
 SETTING HLSDIAG(16)    =      -214.41310139  AU                              
 SETTING HLSDIAG(17)    =      -214.41310145  AU                              
 SETTING HLSDIAG(18)    =      -214.41310150  AU                              


         HLSDIAG
    -214.4869851
    -214.2455920
    -214.2455919
    -214.2455919
    -214.2455919
    -214.2455918
    -214.2430839
    -214.2419645
    -214.2419645
    -214.2419645
    -214.4441345
    -214.4441345
    -214.4441345
    -214.4441344
    -214.4441344
    -214.4131014
    -214.4131014
    -214.4131015
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=  10

 Original energies:   -214.413265   -214.173956   -214.173956   -214.173956   -214.173956   -214.173956   -214.171516   -214.170276
                      -214.170276   -214.170276
 Replaced energies:   -214.486985   -214.245592   -214.245592   -214.245592   -214.245592   -214.245592   -214.243084   -214.241965
                      -214.241965   -214.241965

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.365972   -214.365972   -214.365972   -214.365972   -214.365972   -214.333632   -214.333632   -214.333632
 Replaced energies:   -214.444134   -214.444135   -214.444135   -214.444134   -214.444134   -214.413101   -214.413101   -214.413101



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.48698508

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00    1378.23    1287.06      46.98

    2   2.2  1.5  1.5       0.00   52979.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.08    4675.87    1651.24   -1183.94       0.00     971.34     907.59      32.70

    3   3.2  1.5  1.5       0.00       0.00   52979.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.08      -0.00    2371.65     837.73    -600.09       0.00   -1915.56   -1788.84     -65.88

    4   4.2  1.5  1.5       0.00       0.00       0.00   52979.69       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -4675.87   -2371.65      -0.00     662.62     925.35       0.00     396.38    -393.22    -847.51

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00   52979.68       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1651.24    -837.73    -662.62       0.00   -2621.89      -0.00      90.01    -184.48    2399.82

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   52979.69       0.00       0.00       0.00       0.00
                            0.00    1183.94     600.09    -925.35    2621.89      -0.00      -0.00    1690.18   -1809.68       0.75

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   53530.13       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00    3035.92    2835.10     103.48

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53775.80       0.00       0.00
                        -1378.23    -971.34    1915.56    -396.38     -90.01   -1690.18   -3035.92       0.00     -70.31    1926.34

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53775.80       0.00
                        -1287.06    -907.59    1788.84     393.22     184.48    1809.68   -2835.10      70.31       0.00   -2062.78

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53775.80
                          -46.98     -32.70      65.88     847.51   -2399.82      -0.75    -103.48   -1926.34    2062.78       0.00

   11   1.2  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     743.31    -795.97       0.23
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      19.98      18.34   -1088.74

   12   2.2  1.5  0.5      -0.00       0.00       0.94     920.97   -2606.75      -0.35      -0.00     632.55    -677.67       0.15
                           -0.00       0.00       0.48      39.44      13.86     173.85      -0.00     -30.89     -28.41    1694.23

   13   3.2  1.5  0.5       0.00      -0.94      -0.00    -600.36    1699.74       0.15      -0.00     970.35   -1039.10       0.30
                           -0.00      -0.48      -0.00     722.35     254.85    3205.34       0.00       1.94       1.78     -91.92

   14   4.2  1.5  0.5      -0.00    -920.97     600.36      -0.00      -0.32    1555.89       0.00     210.48     197.09    1355.62
                           -0.00     -39.44    -722.35      -0.00    1604.88    -127.80      -0.00    -562.38    1319.24      11.92

   15   5.2  1.5  0.5       0.00    2606.75   -1699.74       0.32      -0.00     549.94      -0.00      74.59      69.15     478.85
                           -0.00     -13.86    -254.85   -1604.88       0.00     362.26       0.00   -1337.62    -597.63     -34.34

   16   6.2  1.5  0.5       0.00       0.35      -0.15   -1555.89    -549.94       0.00      -0.00    1050.91     981.12    -305.76
                           -0.00    -173.85   -3205.34     127.80    -362.26       0.00      -0.00     232.96    -249.66       0.30

   17   7.2  1.5  0.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    1637.35   -1753.34       0.51
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      44.02      40.40   -2398.24

   18   8.2  1.5  0.5    -743.31    -632.55    -970.35    -210.48     -74.59   -1050.91   -1637.35       0.00      -0.35   -1191.33
                          -19.98      30.89      -1.94     562.38    1337.62    -232.96     -44.02       0.00    1629.51      27.45

   19   9.2  1.5  0.5     795.97     677.67    1039.10    -197.09     -69.15    -981.12    1753.34       0.35       0.00   -1112.51
                          -18.34      28.41      -1.78   -1319.24     597.63     249.66     -40.40   -1629.51      -0.00     -29.91

   20  10.2  1.5  0.5      -0.23      -0.15      -0.30   -1355.62    -478.85     305.76      -0.51    1191.33    1112.51       0.00
                         1088.74   -1694.23      91.92     -11.92      34.34      -0.30    2398.24     -27.45      29.91       0.00

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

   41   1.2  0.5  0.5      -0.00     -19.64      13.15     315.61    -935.31     -86.56      -0.00     387.02    -409.05      73.32
                           -0.00       0.94      13.14    -289.32    -194.68   -1464.52      -0.00     -54.70      48.88    -131.66

   42   2.2  0.5  0.5       0.00      88.81     -57.86    -217.57       9.47    -734.57      -0.00     -79.12      29.82     636.44
                            0.00      -2.70     -51.39     243.65    -721.49     183.70       0.00    -402.45     496.00      -2.83

   43   3.2  0.5  0.5       0.00      -0.78       0.90     472.98   -1070.30      -4.55       0.00    -270.74     398.42     -12.05
                           -0.00       9.50     175.94      54.13      36.61     262.28       0.00      22.38       1.83    -725.97

   44   4.2  0.5  0.5       0.00     773.96    -504.59    -502.93    -315.09     192.36       0.00    -391.28    -324.70     -56.56
                            0.00     -65.87   -1214.26    -443.56    -101.36      96.16      -0.00     313.69     232.86     -59.45

   45   5.2  0.5  0.5      -0.00   -1025.40     668.63    -405.03    -217.96      83.10      -0.00    -309.38    -234.95      10.96
                            0.00     -50.01    -921.31     577.37     177.61    -107.79      -0.00    -387.41    -333.62     -62.01

   46   6.2  0.5  0.5    5025.38    -294.68    -451.88     266.50      93.96     151.33    -272.37     209.99     196.02    -242.60
                         2578.37     276.39     -14.95     499.37     -49.34    -108.52    -139.74    -570.76    -191.38     -13.70

   47   7.2  0.5  0.5   -2571.13     150.67     231.19     121.41      42.92     497.34     139.35      19.37      17.91    -601.94
                          104.43      11.29      -0.49     -48.15    -561.74      55.49      -5.66    -206.32     631.56       6.85

   48   8.2  0.5  0.5    2298.06    -134.74    -206.64    -446.84    -157.92     225.37    -124.55    -437.52    -408.62    -142.94
                        -5521.53    -591.83      32.14     232.27     -33.78     -49.72     299.26    -270.43     -77.42      -6.27

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

    1   1.2  1.5  1.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -743.31     795.97      -0.23
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      19.98      18.34   -1088.74

    2   2.2  1.5  1.5       0.00       0.00      -0.94    -920.97    2606.75       0.35       0.00    -632.55     677.67      -0.15
                           -0.00      -0.00       0.48      39.44      13.86     173.85      -0.00     -30.89     -28.41    1694.23

    3   3.2  1.5  1.5      -0.00       0.94      -0.00     600.36   -1699.74      -0.15       0.00    -970.35    1039.10      -0.30
                           -0.00      -0.48       0.00     722.35     254.85    3205.34       0.00       1.94       1.78     -91.92

    4   4.2  1.5  1.5       0.00     920.97    -600.36      -0.00       0.32   -1555.89      -0.00    -210.48    -197.09   -1355.62
                           -0.00     -39.44    -722.35       0.00    1604.88    -127.80      -0.00    -562.38    1319.24      11.92

    5   5.2  1.5  1.5      -0.00   -2606.75    1699.74      -0.32      -0.00    -549.94       0.00     -74.59     -69.15    -478.85
                           -0.00     -13.86    -254.85   -1604.88      -0.00     362.26       0.00   -1337.62    -597.63     -34.34

    6   6.2  1.5  1.5      -0.00      -0.35       0.15    1555.89     549.94       0.00       0.00   -1050.91    -981.12     305.76
                           -0.00    -173.85   -3205.34     127.80    -362.26      -0.00      -0.00     232.96    -249.66       0.30

    7   7.2  1.5  1.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00   -1637.35    1753.34      -0.51
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      44.02      40.40   -2398.24

    8   8.2  1.5  1.5     743.31     632.55     970.35     210.48      74.59    1050.91    1637.35       0.00       0.35    1191.33
                          -19.98      30.89      -1.94     562.38    1337.62    -232.96     -44.02      -0.00    1629.51      27.45

    9   9.2  1.5  1.5    -795.97    -677.67   -1039.10     197.09      69.15     981.12   -1753.34      -0.35       0.00    1112.51
                          -18.34      28.41      -1.78   -1319.24     597.63     249.66     -40.40   -1629.51       0.00     -29.91

   10  10.2  1.5  1.5       0.23       0.15       0.30    1355.62     478.85    -305.76       0.51   -1191.33   -1112.51       0.00
                         1088.74   -1694.23      91.92     -11.92      34.34      -0.30    2398.24     -27.45      29.91      -0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00     459.41     429.02      15.66

   12   2.2  1.5  0.5       0.00   52979.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.03    1558.62     550.41    -394.65       0.00     323.78     302.53      10.90

   13   3.2  1.5  0.5       0.00       0.00   52979.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.03      -0.00     790.55     279.24    -200.03       0.00    -638.52    -596.28     -21.96

   14   4.2  1.5  0.5       0.00       0.00       0.00   52979.69       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1558.62    -790.55      -0.00     220.87     308.45       0.00     132.13    -131.07    -282.50

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00   52979.68       0.00       0.00       0.00       0.00       0.00
                           -0.00    -550.41    -279.24    -220.87       0.00    -873.96      -0.00      30.00     -61.49     799.94

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00   52979.69       0.00       0.00       0.00       0.00
                            0.00     394.65     200.03    -308.45     873.96      -0.00      -0.00     563.39    -603.23       0.25

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   53530.13       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00    1011.97     945.03      34.49

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53775.80       0.00       0.00
                         -459.41    -323.78     638.52    -132.13     -30.00    -563.39   -1011.97       0.00     -23.44     642.11

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53775.80       0.00
                         -429.02    -302.53     596.28     131.07      61.49     603.23    -945.03      23.44       0.00    -687.59

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53775.80
                          -15.66     -10.90      21.96     282.50    -799.94      -0.25     -34.49    -642.11     687.59       0.00

   21   1.2  1.5 -0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     858.30    -919.11       0.27
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      23.07      21.18   -1257.16

   22   2.2  1.5 -0.5      -0.00       0.00       1.08    1063.44   -3010.02      -0.40      -0.00     730.40    -782.50       0.17
                           -0.00       0.00       0.55      45.54      16.00     200.75      -0.00     -35.67     -32.81    1956.33

   23   3.2  1.5 -0.5       0.00      -1.08      -0.00    -693.23    1962.69       0.18      -0.00    1120.46   -1199.85       0.35
                           -0.00      -0.55      -0.00     834.10     294.27    3701.20       0.00       2.24       2.05    -106.14

   24   4.2  1.5 -0.5      -0.00   -1063.44     693.23      -0.00      -0.37    1796.58       0.00     243.04     227.58    1565.33
                           -0.00     -45.54    -834.10      -0.00    1853.16    -147.57      -0.00    -649.38    1523.32      13.77

   25   5.2  1.5 -0.5       0.00    3010.02   -1962.69       0.37      -0.00     635.01      -0.00      86.13      79.85     552.93
                           -0.00     -16.00    -294.27   -1853.16       0.00     418.30       0.00   -1544.55    -690.09     -39.65

   26   6.2  1.5 -0.5       0.00       0.40      -0.18   -1796.58    -635.01       0.00      -0.00    1213.48    1132.90    -353.06
                           -0.00    -200.75   -3701.20     147.57    -418.30       0.00      -0.00     269.00    -288.28       0.34

   27   7.2  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    1890.65   -2024.58       0.59
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      50.82      46.65   -2769.25

   28   8.2  1.5 -0.5    -858.30    -730.40   -1120.46    -243.04     -86.13   -1213.48   -1890.65       0.00      -0.40   -1375.62
                          -23.07      35.67      -2.24     649.38    1544.55    -269.00     -50.82       0.00    1881.59      31.70

   29   9.2  1.5 -0.5     919.11     782.50    1199.85    -227.58     -79.85   -1132.90    2024.58       0.40       0.00   -1284.62
                          -21.18      32.81      -2.05   -1523.32     690.09     288.28     -46.65   -1881.59      -0.00     -34.53

   30  10.2  1.5 -0.5      -0.27      -0.17      -0.35   -1565.33    -552.93     353.06      -0.59    1375.62    1284.62       0.00
                         1257.16   -1956.33     106.14     -13.77      39.65      -0.34    2769.25     -31.70      34.53       0.00

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
                            0.00    -179.89     -91.24     540.76     199.00    -151.68      -0.00     581.86     552.05       8.55

   42   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1568.20    -795.39     -77.18     -59.36      84.73      -0.00     -44.54     -75.72      49.09

   43   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      33.96      17.19   -1555.28    -441.47     384.72      -0.00     152.99     259.36       6.62

   44   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     108.07      54.95     225.59    -664.94     550.48       0.00     426.02    -405.94     447.52

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -50.49     -25.58     -89.66    -596.59    -659.06      -0.00     323.41    -308.12    -590.91

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2644.18    -128.43     253.20     210.35    -219.25     524.67    -143.31     209.95    -247.91     632.58

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         6379.61    -309.74     610.76     -56.78     -31.82    -268.49    -345.77      14.91      -4.16    -323.61

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1355.41     -65.95     129.62    -143.37     577.97     239.99     -73.46    -479.78     503.21     289.09

   49   1.2  0.5 -0.5      -0.00     -11.34       7.59     182.22    -540.00     -49.97      -0.00     223.44    -236.17      42.33
                           -0.00       0.54       7.58    -167.04    -112.40    -845.54      -0.00     -31.58      28.22     -76.02

   50   2.2  0.5 -0.5       0.00      51.27     -33.40    -125.62       5.47    -424.10      -0.00     -45.68      17.22     367.45
                            0.00      -1.56     -29.67     140.67    -416.55     106.06       0.00    -232.35     286.37      -1.64

   51   3.2  0.5 -0.5       0.00      -0.45       0.52     273.08    -617.94      -2.63       0.00    -156.31     230.03      -6.95
                           -0.00       5.49     101.58      31.25      21.14     151.43       0.00      12.92       1.05    -419.14

   52   4.2  0.5 -0.5       0.00     446.85    -291.33    -290.37    -181.92     111.06       0.00    -225.90    -187.46     -32.65
                            0.00     -38.03    -701.05    -256.09     -58.52      55.52      -0.00     181.11     134.44     -34.32

   53   5.2  0.5 -0.5      -0.00    -592.02     386.03    -233.85    -125.84      47.98      -0.00    -178.62    -135.65       6.33
                            0.00     -28.87    -531.92     333.34     102.54     -62.23      -0.00    -223.67    -192.61     -35.80

   54   6.2  0.5 -0.5    2901.40    -170.13    -260.89     153.87      54.25      87.37    -157.25     121.24     113.17    -140.07
                         1488.62     159.57      -8.63     288.31     -28.49     -62.65     -80.68    -329.53    -110.49      -7.91

   55   7.2  0.5 -0.5   -1484.44      86.99     133.48      70.10      24.78     287.14      80.46      11.18      10.34    -347.53
                           60.29       6.52      -0.28     -27.80    -324.32      32.04      -3.27    -119.12     364.63       3.96

   56   8.2  0.5 -0.5    1326.78     -77.79    -119.30    -257.98     -91.18     130.12     -71.91    -252.60    -235.92     -82.53
                        -3187.86    -341.69      18.55     134.10     -19.50     -28.71     172.78    -156.13     -44.70      -3.62


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

   11   1.2  1.5  0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -858.30     919.11      -0.27
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      23.07      21.18   -1257.16

   12   2.2  1.5  0.5       0.00       0.00      -1.08   -1063.44    3010.02       0.40       0.00    -730.40     782.50      -0.17
                           -0.00      -0.00       0.55      45.54      16.00     200.75      -0.00     -35.67     -32.81    1956.33

   13   3.2  1.5  0.5      -0.00       1.08      -0.00     693.23   -1962.69      -0.18       0.00   -1120.46    1199.85      -0.35
                           -0.00      -0.55       0.00     834.10     294.27    3701.20       0.00       2.24       2.05    -106.14

   14   4.2  1.5  0.5       0.00    1063.44    -693.23      -0.00       0.37   -1796.58      -0.00    -243.04    -227.58   -1565.33
                           -0.00     -45.54    -834.10       0.00    1853.16    -147.57      -0.00    -649.38    1523.32      13.77

   15   5.2  1.5  0.5      -0.00   -3010.02    1962.69      -0.37      -0.00    -635.01       0.00     -86.13     -79.85    -552.93
                           -0.00     -16.00    -294.27   -1853.16      -0.00     418.30       0.00   -1544.55    -690.09     -39.65

   16   6.2  1.5  0.5      -0.00      -0.40       0.18    1796.58     635.01       0.00       0.00   -1213.48   -1132.90     353.06
                           -0.00    -200.75   -3701.20     147.57    -418.30      -0.00      -0.00     269.00    -288.28       0.34

   17   7.2  1.5  0.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00   -1890.65    2024.58      -0.59
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      50.82      46.65   -2769.25

   18   8.2  1.5  0.5     858.30     730.40    1120.46     243.04      86.13    1213.48    1890.65       0.00       0.40    1375.62
                          -23.07      35.67      -2.24     649.38    1544.55    -269.00     -50.82      -0.00    1881.59      31.70

   19   9.2  1.5  0.5    -919.11    -782.50   -1199.85     227.58      79.85    1132.90   -2024.58      -0.40       0.00    1284.62
                          -21.18      32.81      -2.05   -1523.32     690.09     288.28     -46.65   -1881.59       0.00     -34.53

   20  10.2  1.5  0.5       0.27       0.17       0.35    1565.33     552.93    -353.06       0.59   -1375.62   -1284.62       0.00
                         1257.16   -1956.33     106.14     -13.77      39.65      -0.34    2769.25     -31.70      34.53      -0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00    -459.41    -429.02     -15.66

   22   2.2  1.5 -0.5       0.00   52979.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.03   -1558.62    -550.41     394.65      -0.00    -323.78    -302.53     -10.90

   23   3.2  1.5 -0.5       0.00       0.00   52979.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.03       0.00    -790.55    -279.24     200.03      -0.00     638.52     596.28      21.96

   24   4.2  1.5 -0.5       0.00       0.00       0.00   52979.69       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1558.62     790.55       0.00    -220.87    -308.45      -0.00    -132.13     131.07     282.50

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00   52979.68       0.00       0.00       0.00       0.00       0.00
                            0.00     550.41     279.24     220.87      -0.00     873.96       0.00     -30.00      61.49    -799.94

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   52979.69       0.00       0.00       0.00       0.00
                           -0.00    -394.65    -200.03     308.45    -873.96       0.00       0.00    -563.39     603.23      -0.25

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   53530.13       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00   -1011.97    -945.03     -34.49

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53775.80       0.00       0.00
                          459.41     323.78    -638.52     132.13      30.00     563.39    1011.97      -0.00      23.44    -642.11

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53775.80       0.00
                          429.02     302.53    -596.28    -131.07     -61.49    -603.23     945.03     -23.44      -0.00     687.59

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53775.80
                           15.66      10.90     -21.96    -282.50     799.94       0.25      34.49     642.11    -687.59      -0.00

   31   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     743.31    -795.97       0.23
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      19.98      18.34   -1088.74

   32   2.2  1.5 -1.5      -0.00       0.00       0.94     920.97   -2606.75      -0.35      -0.00     632.55    -677.67       0.15
                           -0.00       0.00       0.48      39.44      13.86     173.85      -0.00     -30.89     -28.41    1694.23

   33   3.2  1.5 -1.5       0.00      -0.94      -0.00    -600.36    1699.74       0.15      -0.00     970.35   -1039.10       0.30
                           -0.00      -0.48      -0.00     722.35     254.85    3205.34       0.00       1.94       1.78     -91.92

   34   4.2  1.5 -1.5      -0.00    -920.97     600.36      -0.00      -0.32    1555.89       0.00     210.48     197.09    1355.62
                           -0.00     -39.44    -722.35      -0.00    1604.88    -127.80      -0.00    -562.38    1319.24      11.92

   35   5.2  1.5 -1.5       0.00    2606.75   -1699.74       0.32      -0.00     549.94      -0.00      74.59      69.15     478.85
                           -0.00     -13.86    -254.85   -1604.88       0.00     362.26       0.00   -1337.62    -597.63     -34.34

   36   6.2  1.5 -1.5       0.00       0.35      -0.15   -1555.89    -549.94       0.00      -0.00    1050.91     981.12    -305.76
                           -0.00    -173.85   -3205.34     127.80    -362.26       0.00      -0.00     232.96    -249.66       0.30

   37   7.2  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    1637.35   -1753.34       0.51
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      44.02      40.40   -2398.24

   38   8.2  1.5 -1.5    -743.31    -632.55    -970.35    -210.48     -74.59   -1050.91   -1637.35       0.00      -0.35   -1191.33
                          -19.98      30.89      -1.94     562.38    1337.62    -232.96     -44.02       0.00    1629.51      27.45

   39   9.2  1.5 -1.5     795.97     677.67    1039.10    -197.09     -69.15    -981.12    1753.34       0.35       0.00   -1112.51
                          -18.34      28.41      -1.78   -1319.24     597.63     249.66     -40.40   -1629.51      -0.00     -29.91

   40  10.2  1.5 -1.5      -0.23      -0.15      -0.30   -1355.62    -478.85     305.76      -0.51    1191.33    1112.51       0.00
                         1088.74   -1694.23      91.92     -11.92      34.34      -0.30    2398.24     -27.45      29.91       0.00

   41   1.2  0.5  0.5      -0.00     -11.34       7.59     182.22    -540.00     -49.97      -0.00     223.44    -236.17      42.33
                            0.00      -0.54      -7.58     167.04     112.40     845.54       0.00      31.58     -28.22      76.02

   42   2.2  0.5  0.5       0.00      51.27     -33.40    -125.62       5.47    -424.10      -0.00     -45.68      17.22     367.45
                           -0.00       1.56      29.67    -140.67     416.55    -106.06      -0.00     232.35    -286.37       1.64

   43   3.2  0.5  0.5       0.00      -0.45       0.52     273.08    -617.94      -2.63       0.00    -156.31     230.03      -6.95
                            0.00      -5.49    -101.58     -31.25     -21.14    -151.43      -0.00     -12.92      -1.05     419.14

   44   4.2  0.5  0.5       0.00     446.85    -291.33    -290.37    -181.92     111.06       0.00    -225.90    -187.46     -32.65
                           -0.00      38.03     701.05     256.09      58.52     -55.52       0.00    -181.11    -134.44      34.32

   45   5.2  0.5  0.5      -0.00    -592.02     386.03    -233.85    -125.84      47.98      -0.00    -178.62    -135.65       6.33
                           -0.00      28.87     531.92    -333.34    -102.54      62.23       0.00     223.67     192.61      35.80

   46   6.2  0.5  0.5    2901.40    -170.13    -260.89     153.87      54.25      87.37    -157.25     121.24     113.17    -140.07
                        -1488.62    -159.57       8.63    -288.31      28.49      62.65      80.68     329.53     110.49       7.91

   47   7.2  0.5  0.5   -1484.44      86.99     133.48      70.10      24.78     287.14      80.46      11.18      10.34    -347.53
                          -60.29      -6.52       0.28      27.80     324.32     -32.04       3.27     119.12    -364.63      -3.96

   48   8.2  0.5  0.5    1326.78     -77.79    -119.30    -257.98     -91.18     130.12     -71.91    -252.60    -235.92     -82.53
                         3187.86     341.69     -18.55    -134.10      19.50      28.71    -172.78     156.13      44.70       3.62

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -179.89     -91.24     540.76     199.00    -151.68      -0.00     581.86     552.05       8.55

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1568.20    -795.39     -77.18     -59.36      84.73      -0.00     -44.54     -75.72      49.09

   51   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      33.96      17.19   -1555.28    -441.47     384.72      -0.00     152.99     259.36       6.62

   52   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     108.07      54.95     225.59    -664.94     550.48       0.00     426.02    -405.94     447.52

   53   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -50.49     -25.58     -89.66    -596.59    -659.06      -0.00     323.41    -308.12    -590.91

   54   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2644.18    -128.43     253.20     210.35    -219.25     524.67    -143.31     209.95    -247.91     632.58

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         6379.61    -309.74     610.76     -56.78     -31.82    -268.49    -345.77      14.91      -4.16    -323.61

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1355.41     -65.95     129.62    -143.37     577.97     239.99     -73.46    -479.78     503.21     289.09


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

   21   1.2  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -743.31     795.97      -0.23
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      19.98      18.34   -1088.74

   22   2.2  1.5 -0.5       0.00       0.00      -0.94    -920.97    2606.75       0.35       0.00    -632.55     677.67      -0.15
                           -0.00      -0.00       0.48      39.44      13.86     173.85      -0.00     -30.89     -28.41    1694.23

   23   3.2  1.5 -0.5      -0.00       0.94      -0.00     600.36   -1699.74      -0.15       0.00    -970.35    1039.10      -0.30
                           -0.00      -0.48       0.00     722.35     254.85    3205.34       0.00       1.94       1.78     -91.92

   24   4.2  1.5 -0.5       0.00     920.97    -600.36      -0.00       0.32   -1555.89      -0.00    -210.48    -197.09   -1355.62
                           -0.00     -39.44    -722.35       0.00    1604.88    -127.80      -0.00    -562.38    1319.24      11.92

   25   5.2  1.5 -0.5      -0.00   -2606.75    1699.74      -0.32      -0.00    -549.94       0.00     -74.59     -69.15    -478.85
                           -0.00     -13.86    -254.85   -1604.88      -0.00     362.26       0.00   -1337.62    -597.63     -34.34

   26   6.2  1.5 -0.5      -0.00      -0.35       0.15    1555.89     549.94       0.00       0.00   -1050.91    -981.12     305.76
                           -0.00    -173.85   -3205.34     127.80    -362.26      -0.00      -0.00     232.96    -249.66       0.30

   27   7.2  1.5 -0.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00   -1637.35    1753.34      -0.51
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      44.02      40.40   -2398.24

   28   8.2  1.5 -0.5     743.31     632.55     970.35     210.48      74.59    1050.91    1637.35       0.00       0.35    1191.33
                          -19.98      30.89      -1.94     562.38    1337.62    -232.96     -44.02      -0.00    1629.51      27.45

   29   9.2  1.5 -0.5    -795.97    -677.67   -1039.10     197.09      69.15     981.12   -1753.34      -0.35       0.00    1112.51
                          -18.34      28.41      -1.78   -1319.24     597.63     249.66     -40.40   -1629.51       0.00     -29.91

   30  10.2  1.5 -0.5       0.23       0.15       0.30    1355.62     478.85    -305.76       0.51   -1191.33   -1112.51       0.00
                         1088.74   -1694.23      91.92     -11.92      34.34      -0.30    2398.24     -27.45      29.91      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00   -1378.23   -1287.06     -46.98

   32   2.2  1.5 -1.5       0.00   52979.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.08   -4675.87   -1651.24    1183.94      -0.00    -971.34    -907.59     -32.70

   33   3.2  1.5 -1.5       0.00       0.00   52979.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.08       0.00   -2371.65    -837.73     600.09      -0.00    1915.56    1788.84      65.88

   34   4.2  1.5 -1.5       0.00       0.00       0.00   52979.69       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    4675.87    2371.65       0.00    -662.62    -925.35      -0.00    -396.38     393.22     847.51

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   52979.68       0.00       0.00       0.00       0.00       0.00
                            0.00    1651.24     837.73     662.62      -0.00    2621.89       0.00     -90.01     184.48   -2399.82

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   52979.69       0.00       0.00       0.00       0.00
                           -0.00   -1183.94    -600.09     925.35   -2621.89       0.00       0.00   -1690.18    1809.68      -0.75

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   53530.13       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00   -3035.92   -2835.10    -103.48

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53775.80       0.00       0.00
                         1378.23     971.34   -1915.56     396.38      90.01    1690.18    3035.92      -0.00      70.31   -1926.34

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53775.80       0.00
                         1287.06     907.59   -1788.84    -393.22    -184.48   -1809.68    2835.10     -70.31      -0.00    2062.78

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53775.80
                           46.98      32.70     -65.88    -847.51    2399.82       0.75     103.48    1926.34   -2062.78      -0.00

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

   49   1.2  0.5 -0.5      -0.00     -19.64      13.15     315.61    -935.31     -86.56      -0.00     387.02    -409.05      73.32
                            0.00      -0.94     -13.14     289.32     194.68    1464.52       0.00      54.70     -48.88     131.66

   50   2.2  0.5 -0.5       0.00      88.81     -57.86    -217.57       9.47    -734.57      -0.00     -79.12      29.82     636.44
                           -0.00       2.70      51.39    -243.65     721.49    -183.70      -0.00     402.45    -496.00       2.83

   51   3.2  0.5 -0.5       0.00      -0.78       0.90     472.98   -1070.30      -4.55       0.00    -270.74     398.42     -12.05
                            0.00      -9.50    -175.94     -54.13     -36.61    -262.28      -0.00     -22.38      -1.83     725.97

   52   4.2  0.5 -0.5       0.00     773.96    -504.59    -502.93    -315.09     192.36       0.00    -391.28    -324.70     -56.56
                           -0.00      65.87    1214.26     443.56     101.36     -96.16       0.00    -313.69    -232.86      59.45

   53   5.2  0.5 -0.5      -0.00   -1025.40     668.63    -405.03    -217.96      83.10      -0.00    -309.38    -234.95      10.96
                           -0.00      50.01     921.31    -577.37    -177.61     107.79       0.00     387.41     333.62      62.01

   54   6.2  0.5 -0.5    5025.38    -294.68    -451.88     266.50      93.96     151.33    -272.37     209.99     196.02    -242.60
                        -2578.37    -276.39      14.95    -499.37      49.34     108.52     139.74     570.76     191.38      13.70

   55   7.2  0.5 -0.5   -2571.13     150.67     231.19     121.41      42.92     497.34     139.35      19.37      17.91    -601.94
                         -104.43     -11.29       0.49      48.15     561.74     -55.49       5.66     206.32    -631.56      -6.85

   56   8.2  0.5 -0.5    2298.06    -134.74    -206.64    -446.84    -157.92     225.37    -124.55    -437.52    -408.62    -142.94
                         5521.53     591.83     -32.14    -232.27      33.78      49.72    -299.26     270.43      77.42       6.27


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  1.5  1.5      -0.00       0.00       0.00       0.00      -0.00    5025.38   -2571.13    2298.06       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00   -2578.37    -104.43    5521.53       0.00       0.00

    2   2.2  1.5  1.5     -19.64      88.81      -0.78     773.96   -1025.40    -294.68     150.67    -134.74       0.00       0.00
                           -0.94       2.70      -9.50      65.87      50.01    -276.39     -11.29     591.83       0.00       0.00

    3   3.2  1.5  1.5      13.15     -57.86       0.90    -504.59     668.63    -451.88     231.19    -206.64       0.00       0.00
                          -13.14      51.39    -175.94    1214.26     921.31      14.95       0.49     -32.14       0.00       0.00

    4   4.2  1.5  1.5     315.61    -217.57     472.98    -502.93    -405.03     266.50     121.41    -446.84       0.00       0.00
                          289.32    -243.65     -54.13     443.56    -577.37    -499.37      48.15    -232.27       0.00       0.00

    5   5.2  1.5  1.5    -935.31       9.47   -1070.30    -315.09    -217.96      93.96      42.92    -157.92       0.00       0.00
                          194.68     721.49     -36.61     101.36    -177.61      49.34     561.74      33.78       0.00       0.00

    6   6.2  1.5  1.5     -86.56    -734.57      -4.55     192.36      83.10     151.33     497.34     225.37       0.00       0.00
                         1464.52    -183.70    -262.28     -96.16     107.79     108.52     -55.49      49.72       0.00       0.00

    7   7.2  1.5  1.5      -0.00      -0.00       0.00       0.00      -0.00    -272.37     139.35    -124.55       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00     139.74       5.66    -299.26       0.00       0.00

    8   8.2  1.5  1.5     387.02     -79.12    -270.74    -391.28    -309.38     209.99      19.37    -437.52       0.00       0.00
                           54.70     402.45     -22.38    -313.69     387.41     570.76     206.32     270.43       0.00       0.00

    9   9.2  1.5  1.5    -409.05      29.82     398.42    -324.70    -234.95     196.02      17.91    -408.62       0.00       0.00
                          -48.88    -496.00      -1.83    -232.86     333.62     191.38    -631.56      77.42       0.00       0.00

   10  10.2  1.5  1.5      73.32     636.44     -12.05     -56.56      10.96    -242.60    -601.94    -142.94       0.00       0.00
                          131.66       2.83     725.97      59.45      62.01      13.70      -6.85       6.27       0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00   -2644.18   -6379.61   -1355.41       0.00      -0.00

   12   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -11.34      51.27
                          179.89    1568.20     -33.96    -108.07      50.49     128.43     309.74      65.95      -0.54       1.56

   13   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       7.59     -33.40
                           91.24     795.39     -17.19     -54.95      25.58    -253.20    -610.76    -129.62      -7.58      29.67

   14   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     182.22    -125.62
                         -540.76      77.18    1555.28    -225.59      89.66    -210.35      56.78     143.37     167.04    -140.67

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -540.00       5.47
                         -199.00      59.36     441.47     664.94     596.59     219.25      31.82    -577.97     112.40     416.55

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -49.97    -424.10
                          151.68     -84.73    -384.72    -550.48     659.06    -524.67     268.49    -239.99     845.54    -106.06

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00     143.31     345.77      73.46       0.00      -0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     223.44     -45.68
                         -581.86      44.54    -152.99    -426.02    -323.41    -209.95     -14.91     479.78      31.58     232.35

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -236.17      17.22
                         -552.05      75.72    -259.36     405.94     308.12     247.91       4.16    -503.21     -28.22    -286.37

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      42.33     367.45
                           -8.55     -49.09      -6.62    -447.52     590.91    -632.58     323.61    -289.09      76.02       1.64

   21   1.2  1.5 -0.5      -0.00       0.00       0.00       0.00      -0.00    2901.40   -1484.44    1326.78       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00    1488.62      60.29   -3187.86      -0.00      -0.00

   22   2.2  1.5 -0.5     -11.34      51.27      -0.45     446.85    -592.02    -170.13      86.99     -77.79       0.00       0.00
                            0.54      -1.56       5.49     -38.03     -28.87     159.57       6.52    -341.69     179.89    1568.20

   23   3.2  1.5 -0.5       7.59     -33.40       0.52    -291.33     386.03    -260.89     133.48    -119.30       0.00       0.00
                            7.58     -29.67     101.58    -701.05    -531.92      -8.63      -0.28      18.55      91.24     795.39

   24   4.2  1.5 -0.5     182.22    -125.62     273.08    -290.37    -233.85     153.87      70.10    -257.98       0.00       0.00
                         -167.04     140.67      31.25    -256.09     333.34     288.31     -27.80     134.10    -540.76      77.18

   25   5.2  1.5 -0.5    -540.00       5.47    -617.94    -181.92    -125.84      54.25      24.78     -91.18       0.00       0.00
                         -112.40    -416.55      21.14     -58.52     102.54     -28.49    -324.32     -19.50    -199.00      59.36

   26   6.2  1.5 -0.5     -49.97    -424.10      -2.63     111.06      47.98      87.37     287.14     130.12       0.00       0.00
                         -845.54     106.06     151.43      55.52     -62.23     -62.65      32.04     -28.71     151.68     -84.73

   27   7.2  1.5 -0.5      -0.00      -0.00       0.00       0.00      -0.00    -157.25      80.46     -71.91       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00     -80.68      -3.27     172.78       0.00       0.00

   28   8.2  1.5 -0.5     223.44     -45.68    -156.31    -225.90    -178.62     121.24      11.18    -252.60       0.00       0.00
                          -31.58    -232.35      12.92     181.11    -223.67    -329.53    -119.12    -156.13    -581.86      44.54

   29   9.2  1.5 -0.5    -236.17      17.22     230.03    -187.46    -135.65     113.17      10.34    -235.92       0.00       0.00
                           28.22     286.37       1.05     134.44    -192.61    -110.49     364.63     -44.70    -552.05      75.72

   30  10.2  1.5 -0.5      42.33     367.45      -6.95     -32.65       6.33    -140.07    -347.53     -82.53       0.00       0.00
                          -76.02      -1.64    -419.14     -34.32     -35.80      -7.91       3.96      -3.62      -8.55     -49.09

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -19.64      88.81
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.94      -2.70

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      13.15     -57.86
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      13.14     -51.39

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     315.61    -217.57
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -289.32     243.65

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -935.31       9.47
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -194.68    -721.49

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -86.56    -734.57
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1464.52     183.70

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     387.02     -79.12
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -54.70    -402.45

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -409.05      29.82
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      48.88     496.00

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      73.32     636.44
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -131.66      -2.83

   41   1.2  0.5  0.5    9404.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   42   2.2  0.5  0.5       0.00    9404.61       0.00       0.00       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   43   3.2  0.5  0.5       0.00       0.00    9404.61       0.00       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   44   4.2  0.5  0.5       0.00       0.00       0.00    9404.63       0.00       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00    9404.63       0.00       0.00       0.00**********************
                     **************************************************************************************************************

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   16215.60       0.00       0.00**********************
                     **************************************************************************************************************

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   16215.58       0.00**********************
                     **************************************************************************************************************

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16215.57**********************
                     66832947.82***************************************************************************************************

   49   1.2  0.5 -0.5****************************************************************************************    9404.62       0.00
                     **************************************************************************************************************

   50   2.2  0.5 -0.5****************************************************************************************       0.00    9404.61
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

   11   1.2  1.5  0.5       0.00       0.00      -0.00    2901.40   -1484.44    1326.78
                            0.00      -0.00      -0.00   -1488.62     -60.29    3187.86

   12   2.2  1.5  0.5      -0.45     446.85    -592.02    -170.13      86.99     -77.79
                           -5.49      38.03      28.87    -159.57      -6.52     341.69

   13   3.2  1.5  0.5       0.52    -291.33     386.03    -260.89     133.48    -119.30
                         -101.58     701.05     531.92       8.63       0.28     -18.55

   14   4.2  1.5  0.5     273.08    -290.37    -233.85     153.87      70.10    -257.98
                          -31.25     256.09    -333.34    -288.31      27.80    -134.10

   15   5.2  1.5  0.5    -617.94    -181.92    -125.84      54.25      24.78     -91.18
                          -21.14      58.52    -102.54      28.49     324.32      19.50

   16   6.2  1.5  0.5      -2.63     111.06      47.98      87.37     287.14     130.12
                         -151.43     -55.52      62.23      62.65     -32.04      28.71

   17   7.2  1.5  0.5       0.00       0.00      -0.00    -157.25      80.46     -71.91
                           -0.00       0.00       0.00      80.68       3.27    -172.78

   18   8.2  1.5  0.5    -156.31    -225.90    -178.62     121.24      11.18    -252.60
                          -12.92    -181.11     223.67     329.53     119.12     156.13

   19   9.2  1.5  0.5     230.03    -187.46    -135.65     113.17      10.34    -235.92
                           -1.05    -134.44     192.61     110.49    -364.63      44.70

   20  10.2  1.5  0.5      -6.95     -32.65       6.33    -140.07    -347.53     -82.53
                          419.14      34.32      35.80       7.91      -3.96       3.62

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00   -2644.18   -6379.61   -1355.41

   22   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          -33.96    -108.07      50.49     128.43     309.74      65.95

   23   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.19     -54.95      25.58    -253.20    -610.76    -129.62

   24   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         1555.28    -225.59      89.66    -210.35      56.78     143.37

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                          441.47     664.94     596.59     219.25      31.82    -577.97

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -384.72    -550.48     659.06    -524.67     268.49    -239.99

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     143.31     345.77      73.46

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -152.99    -426.02    -323.41    -209.95     -14.91     479.78

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -259.36     405.94     308.12     247.91       4.16    -503.21

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.62    -447.52     590.91    -632.58     323.61    -289.09

   31   1.2  1.5 -1.5       0.00       0.00      -0.00    5025.38   -2571.13    2298.06
                           -0.00       0.00       0.00    2578.37     104.43   -5521.53

   32   2.2  1.5 -1.5      -0.78     773.96   -1025.40    -294.68     150.67    -134.74
                            9.50     -65.87     -50.01     276.39      11.29    -591.83

   33   3.2  1.5 -1.5       0.90    -504.59     668.63    -451.88     231.19    -206.64
                          175.94   -1214.26    -921.31     -14.95      -0.49      32.14

   34   4.2  1.5 -1.5     472.98    -502.93    -405.03     266.50     121.41    -446.84
                           54.13    -443.56     577.37     499.37     -48.15     232.27

   35   5.2  1.5 -1.5   -1070.30    -315.09    -217.96      93.96      42.92    -157.92
                           36.61    -101.36     177.61     -49.34    -561.74     -33.78

   36   6.2  1.5 -1.5      -4.55     192.36      83.10     151.33     497.34     225.37
                          262.28      96.16    -107.79    -108.52      55.49     -49.72

   37   7.2  1.5 -1.5       0.00       0.00      -0.00    -272.37     139.35    -124.55
                            0.00      -0.00      -0.00    -139.74      -5.66     299.26

   38   8.2  1.5 -1.5    -270.74    -391.28    -309.38     209.99      19.37    -437.52
                           22.38     313.69    -387.41    -570.76    -206.32    -270.43

   39   9.2  1.5 -1.5     398.42    -324.70    -234.95     196.02      17.91    -408.62
                            1.83     232.86    -333.62    -191.38     631.56     -77.42

   40  10.2  1.5 -1.5     -12.05     -56.56      10.96    -242.60    -601.94    -142.94
                         -725.97     -59.45     -62.01     -13.70       6.85      -6.27

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
                     *******************************************************66832947.82

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                     ******************************************************************

   51   3.2  0.5 -0.5    9404.61       0.00       0.00       0.00       0.00       0.00
                     ******************************************************************

   52   4.2  0.5 -0.5       0.00    9404.63       0.00       0.00       0.00       0.00
                     ******************************************************************

   53   5.2  0.5 -0.5       0.00       0.00    9404.63       0.00       0.00       0.00
                     ******************************************************************

   54   6.2  0.5 -0.5       0.00       0.00       0.00   16215.60       0.00       0.00
                     ******************************************************************

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00   16215.58       0.00
                     ******************************************************************

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   16215.57
                     ******************************************************************


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1******************************************      0.00000000        0.00      0.0000
     2****************************************** 314265.00862636************8551586.5333
     3****************************************** 475212.48050698************************
     4****************************************** 757509.35874647************************
     5****************************************** 769383.50489160************************
     6-91880.85144759-91666.36446251************ 857578.74487267************************
     7-20013.11771431-19798.63072923************ 929446.47860595************************
     8 -3276.64302687 -3062.15604179************ 946182.95329339************************
     9  -214.48751255    -0.00052747     -115.77 949245.10880770************************
    10  -214.48751252    -0.00052744     -115.76 949245.10880773************************
    11  -214.48751252    -0.00052743     -115.76 949245.10880774************************
    12  -214.48751245    -0.00052737     -115.74 949245.10880781************************
    13  -214.28773399     0.19925109    43730.56 949245.30858626************************
    14  -214.28773399     0.19925109    43730.56 949245.30858627************************
    15  -214.28396079     0.20302429    44558.68 949245.31235947************************
    16  -214.28396079     0.20302429    44558.68 949245.31235947************************
    17  -214.28396078     0.20302430    44558.68 949245.31235948************************
    18  -214.28396078     0.20302430    44558.68 949245.31235948************************
    19  -214.26097050     0.22601459    49604.47 949245.33534976************************
    20  -214.26097049     0.22601459    49604.47 949245.33534976************************
    21  -214.26097049     0.22601459    49604.47 949245.33534977************************
    22  -214.26097049     0.22601460    49604.47 949245.33534977************************
    23  -214.26033159     0.22665349    49744.69 949245.33598867************************
    24  -214.26033159     0.22665349    49744.69 949245.33598867************************
    25  -214.26007074     0.22691434    49801.94 949245.33624952************************
    26  -214.26007074     0.22691434    49801.94 949245.33624952************************
    27  -214.26007069     0.22691439    49801.95 949245.33624956************************
    28  -214.26007069     0.22691439    49801.95 949245.33624956************************
    29  -214.26007068     0.22691440    49801.95 949245.33624958************************
    30  -214.26007068     0.22691441    49801.96 949245.33624958************************
    31  -214.21980381     0.26718127    58639.51 949245.37651644************************
    32  -214.21980381     0.26718127    58639.51 949245.37651644************************
    33  -214.21980380     0.26718128    58639.51 949245.37651645************************
    34  -214.21980380     0.26718128    58639.51 949245.37651645************************
    35  -214.21954554     0.26743954    58696.19 949245.37677471************************
    36  -214.21954554     0.26743954    58696.19 949245.37677471************************
    37  -214.21954552     0.26743956    58696.20 949245.37677474************************
    38  -214.21954552     0.26743956    58696.20 949245.37677474************************
    39  -214.21954549     0.26743959    58696.21 949245.37677477************************
    40  -214.21954549     0.26743959    58696.21 949245.37677477************************
    41  -214.21954548     0.26743960    58696.21 949245.37677477************************
    42  -214.21954548     0.26743960    58696.21 949245.37677477************************
    43  -214.21896308     0.26802200    58824.03 949245.37735718************************
    44  -214.21896308     0.26802201    58824.03 949245.37735718************************
    45  -214.21896306     0.26802203    58824.04 949245.37735720************************
    46  -214.21896305     0.26802203    58824.04 949245.37735721************************
    47  -214.21896304     0.26802204    58824.04 949245.37735722************************
    48  -214.21896303     0.26802205    58824.04 949245.37735722************************
    49 16648.18646170 16862.67344678************ 966107.78278196************************
    50 56322.32329520 56536.81028028************1005781.91961546************************
    51 90018.63457032 90233.12155540************1039478.23089058************************
    52121232.39401858121446.88100366************1070691.99033884************************
    53302522.20997935302736.69696444************1251981.80629961************************
    54472046.85905092472261.34603600************1421506.45537118************************
    55539902.20825641540116.69524150************1489361.80457667************************
    56943974.50543260944188.99241768************1893434.10175285************************


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.000000008   0.000000016  -0.000000014  -0.000000010  -0.000000095  -0.000000065   0.000000512   0.000001684
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.000000001   0.000000000  -0.000000004  -0.000000014   0.000000002  -0.000000004   0.000000035  -0.000000213
                         0.000000001  -0.000000001  -0.000000003   0.000000005   0.000000008  -0.000000008   0.000000096   0.000000681

    3    3.2  1.5  1.5  -0.000000002  -0.000000002   0.000000005  -0.000000001   0.000000002   0.000000015   0.000000077   0.000000831
                        -0.000000001   0.000000002   0.000000003  -0.000000003   0.000000007  -0.000000019   0.000000022   0.000000327

    4    4.2  1.5  1.5   0.000000000   0.000000000   0.000000001  -0.000000006  -0.000000004   0.000000023  -0.000000118  -0.000000774
                         0.000000000   0.000000000  -0.000000001  -0.000000009   0.000000006  -0.000000004   0.000000075   0.000000006

    5    5.2  1.5  1.5  -0.000000000  -0.000000000   0.000000000   0.000000003  -0.000000012   0.000000013   0.000000051   0.000000641
                         0.000000000  -0.000000001   0.000000000  -0.000000013  -0.000000004   0.000000023  -0.000000026   0.000000236

    6    6.2  1.5  1.5   0.000000000   0.000000000  -0.000000004  -0.000000009   0.000000010   0.000000041   0.000000015   0.000001089
                         0.000000001   0.000000003   0.000000001   0.000000000   0.000000005   0.000000004  -0.000000025  -0.000000448

    7    7.2  1.5  1.5  -0.000000000  -0.000000001   0.000000001   0.000000001   0.000000005   0.000000004  -0.000000028  -0.000000091
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    8    8.2  1.5  1.5   0.000000001  -0.000000001  -0.000000000   0.000000003  -0.000000004   0.000000013   0.000000030   0.000000116
                        -0.000000000   0.000000000   0.000000002  -0.000000001  -0.000000017  -0.000000011   0.000000062   0.000000240

    9    9.2  1.5  1.5   0.000000000  -0.000000000  -0.000000003   0.000000000   0.000000002  -0.000000004  -0.000000014  -0.000000103
                         0.000000000   0.000000002  -0.000000001   0.000000002  -0.000000000   0.000000009   0.000000074   0.000000676

   10   10.2  1.5  1.5   0.000000001   0.000000000   0.000000001   0.000000003   0.000000000  -0.000000005  -0.000000024  -0.000000271
                        -0.000000001  -0.000000002   0.000000001   0.000000000  -0.000000001   0.000000003  -0.000000032  -0.000000202

   11    1.2  1.5  0.5   0.000000011   0.000000016  -0.000000003  -0.000000014   0.000000078  -0.000000103  -0.000000393   0.000000778
                         0.000000009   0.000000010   0.000000001   0.000000029   0.000000064  -0.000000096   0.000000325  -0.000001883

   12    2.2  1.5  0.5   0.000000001   0.000000007   0.000000002   0.000000011  -0.000000008   0.000000003  -0.000000010   0.000000482
                        -0.000000001   0.000000001   0.000000004  -0.000000011  -0.000000003  -0.000000007   0.000000030  -0.000000097

   13    3.2  1.5  0.5   0.000000001   0.000000006   0.000000002  -0.000000004   0.000000004   0.000000016   0.000000078  -0.000000475
                         0.000000001   0.000000002   0.000000001   0.000000006   0.000000000   0.000000004  -0.000000112  -0.000000009

   14    4.2  1.5  0.5   0.000000001  -0.000000003   0.000000001   0.000000007  -0.000000015  -0.000000027  -0.000000044  -0.000000571
                         0.000000001   0.000000005   0.000000002   0.000000009  -0.000000001   0.000000009  -0.000000065  -0.000000255

   15    5.2  1.5  0.5  -0.000000002  -0.000000001  -0.000000001   0.000000011   0.000000005   0.000000005   0.000000077  -0.000000333
                        -0.000000002   0.000000002   0.000000000  -0.000000004   0.000000005  -0.000000027  -0.000000046   0.000000192

   16    6.2  1.5  0.5  -0.000000000  -0.000000001   0.000000000   0.000000007   0.000000005  -0.000000010   0.000000044   0.000000469
                        -0.000000001  -0.000000004   0.000000003   0.000000007   0.000000011   0.000000006  -0.000000050   0.000000548

   17    7.2  1.5  0.5  -0.000000001  -0.000000001   0.000000000   0.000000001  -0.000000004   0.000000006   0.000000021  -0.000000042
                        -0.000000001  -0.000000001  -0.000000000  -0.000000002  -0.000000003   0.000000005  -0.000000018   0.000000102

   18    8.2  1.5  0.5   0.000000001  -0.000000001  -0.000000002   0.000000006  -0.000000002  -0.000000018   0.000000036  -0.000000298
                         0.000000001  -0.000000000  -0.000000000  -0.000000007   0.000000003   0.000000005  -0.000000000   0.000000205

   19    9.2  1.5  0.5  -0.000000003   0.000000000   0.000000003  -0.000000002  -0.000000002  -0.000000007   0.000000007  -0.000000108
                        -0.000000000   0.000000001   0.000000002   0.000000006   0.000000002  -0.000000005   0.000000041   0.000000323

   20   10.2  1.5  0.5  -0.000000001   0.000000000  -0.000000003   0.000000002  -0.000000002  -0.000000003   0.000000006   0.000000074
                         0.000000002  -0.000000003   0.000000004  -0.000000001  -0.000000001   0.000000004  -0.000000018   0.000000249

   21    1.2  1.5 -0.5  -0.000000026   0.000000020   0.000000015   0.000000004   0.000000011  -0.000000000  -0.000000382  -0.000000011
                        -0.000000005   0.000000008  -0.000000002   0.000000042  -0.000000057   0.000000061  -0.000000070  -0.000001451

   22    2.2  1.5 -0.5  -0.000000002   0.000000001  -0.000000006   0.000000009   0.000000014  -0.000000002   0.000000007  -0.000000451
                        -0.000000001  -0.000000001  -0.000000004  -0.000000009   0.000000005  -0.000000021   0.000000008   0.000000003

   23    3.2  1.5 -0.5  -0.000000000   0.000000000   0.000000002   0.000000011   0.000000010  -0.000000002  -0.000000024  -0.000000274
                         0.000000001   0.000000001  -0.000000001  -0.000000009  -0.000000007   0.000000004  -0.000000054  -0.000000289

   24    4.2  1.5 -0.5   0.000000000  -0.000000000  -0.000000005  -0.000000007  -0.000000001   0.000000007  -0.000000078  -0.000000128
                         0.000000000   0.000000003   0.000000005  -0.000000009  -0.000000021  -0.000000014   0.000000107   0.000000396

   25    5.2  1.5 -0.5  -0.000000000  -0.000000001  -0.000000005  -0.000000008  -0.000000006   0.000000011   0.000000103  -0.000000086
                         0.000000001   0.000000001  -0.000000002   0.000000001  -0.000000006   0.000000016  -0.000000095  -0.000000127

   26    6.2  1.5 -0.5  -0.000000001  -0.000000001   0.000000001  -0.000000000  -0.000000002  -0.000000035   0.000000087  -0.000000977
                        -0.000000000   0.000000002   0.000000002   0.000000001   0.000000007   0.000000010   0.000000034  -0.000000381

   27    7.2  1.5 -0.5   0.000000001  -0.000000001  -0.000000001  -0.000000000  -0.000000001   0.000000000   0.000000021   0.000000001
                         0.000000000  -0.000000000   0.000000000  -0.000000002   0.000000003  -0.000000003   0.000000004   0.000000079

   28    8.2  1.5 -0.5   0.000000000  -0.000000001  -0.000000001   0.000000001   0.000000002   0.000000009  -0.000000087  -0.000000410
                         0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000004  -0.000000006   0.000000157  -0.000000152

   29    9.2  1.5 -0.5  -0.000000001   0.000000001   0.000000002   0.000000003  -0.000000012   0.000000032   0.000000036  -0.000000579
                        -0.000000000  -0.000000000  -0.000000001  -0.000000005  -0.000000000   0.000000014   0.000000019  -0.000000177

   30   10.2  1.5 -0.5   0.000000000   0.000000001   0.000000001  -0.000000004   0.000000007  -0.000000019   0.000000079  -0.000000600
                        -0.000000001  -0.000000002  -0.000000000  -0.000000006   0.000000000   0.000000014   0.000000072  -0.000000380

   31    1.2  1.5 -1.5  -0.000000005  -0.000000025   0.000000010   0.000000010  -0.000000026  -0.000000007   0.000000104   0.000001328
                         0.000000002  -0.000000011  -0.000000000   0.000000007  -0.000000010  -0.000000072  -0.000000006  -0.000004011

   32    2.2  1.5 -1.5  -0.000000002   0.000000000  -0.000000006   0.000000006  -0.000000014  -0.000000008   0.000000006   0.000000160
                        -0.000000002  -0.000000000  -0.000000001  -0.000000004   0.000000002  -0.000000002   0.000000022  -0.000000410

   33    3.2  1.5 -1.5  -0.000000001  -0.000000003   0.000000002   0.000000000   0.000000005  -0.000000009  -0.000000060  -0.000000158
                        -0.000000000  -0.000000001   0.000000002   0.000000005  -0.000000003   0.000000003   0.000000065   0.000000815

   34    4.2  1.5 -1.5  -0.000000001  -0.000000001  -0.000000001  -0.000000000  -0.000000002   0.000000005   0.000000009   0.000000067
                         0.000000001   0.000000001   0.000000005  -0.000000004   0.000000011   0.000000014   0.000000065  -0.000000376

   35    5.2  1.5 -1.5  -0.000000001  -0.000000000   0.000000002  -0.000000001   0.000000006   0.000000015   0.000000115  -0.000000454
                         0.000000001   0.000000001   0.000000001  -0.000000003   0.000000000  -0.000000007  -0.000000013   0.000000475

   36    6.2  1.5 -1.5   0.000000001  -0.000000000  -0.000000001   0.000000005   0.000000000   0.000000041  -0.000000014  -0.000000382
                        -0.000000002   0.000000002   0.000000000   0.000000005  -0.000000002  -0.000000001   0.000000144  -0.000000519

   37    7.2  1.5 -1.5   0.000000000   0.000000001  -0.000000001  -0.000000001   0.000000001   0.000000000  -0.000000006  -0.000000072
                        -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000001   0.000000004   0.000000000   0.000000217

   38    8.2  1.5 -1.5  -0.000000000  -0.000000001   0.000000002  -0.000000000   0.000000000  -0.000000003  -0.000000032   0.000000088
                         0.000000001   0.000000004  -0.000000004   0.000000003  -0.000000004   0.000000018   0.000000009  -0.000000047

   39    9.2  1.5 -1.5   0.000000001  -0.000000001  -0.000000001   0.000000006  -0.000000005  -0.000000008   0.000000067  -0.000000237
                         0.000000000   0.000000003  -0.000000001  -0.000000004   0.000000002  -0.000000016   0.000000009  -0.000000055

   40   10.2  1.5 -1.5  -0.000000000   0.000000001   0.000000000   0.000000002  -0.000000002  -0.000000002   0.000000030  -0.000000146
                         0.000000002  -0.000000002  -0.000000002   0.000000001   0.000000000   0.000000006   0.000000031  -0.000000152

   41    1.2  0.5  0.5  -0.062020724   0.053827159  -0.054838039   0.124710437  -0.110913284  -0.081665047   0.065330273   0.220860041
                         0.091619770   0.136234404  -0.096788124  -0.187589176   0.206686751   0.514864571  -0.041933998   0.337432304

   42    2.2  0.5  0.5   0.020258070  -0.082561136  -0.268131703   0.109818311   0.095676068   0.118651576   0.016052922   0.014199941
                         0.107556216   0.437689325   0.313911388   0.182995072  -0.127485482   0.035044328   0.030232035   0.044498242

   43    3.2  0.5  0.5  -0.030778177  -0.231552550  -0.237946704  -0.084871768  -0.022412192  -0.022053000   0.231788807   0.209148143
                         0.056472207  -0.119950860  -0.068135002   0.086292528  -0.182910452  -0.041252091  -0.148966950  -0.219090749

   44    4.2  0.5  0.5   0.228462493  -0.179718875   0.147695350   0.114807463  -0.224336815   0.227416564  -0.070539422  -0.013558800
                        -0.305330312   0.056094315   0.167810702  -0.289264429  -0.113094592   0.118554627   0.002901491   0.093613048

   45    5.2  0.5  0.5   0.063455283   0.028714406  -0.346051215  -0.309797264  -0.057023496   0.103971336  -0.128678045  -0.246009796
                        -0.209621836  -0.065481452  -0.169432495   0.096262385   0.048528674   0.030042292   0.302104394   0.309087891

   46    6.2  0.5  0.5   0.225487123  -0.260530448   0.115825046  -0.028077823   0.465285412   0.021990937   0.025598826   0.000489361
                        -0.094453130  -0.100337264   0.064443937   0.021445773   0.127342087   0.032732122  -0.040588722   0.146617269

   47    7.2  0.5  0.5   0.087389893   0.292458087  -0.128877979   0.288864933   0.090841076  -0.168125846   0.021000003  -0.074108135
                        -0.171659557  -0.238513725   0.164788448   0.149285307  -0.258221293   0.200865073   0.008532170   0.024764428

   48    8.2  0.5  0.5  -0.051062302  -0.111184160   0.079612168   0.114557192   0.071786157   0.102270268  -0.095627307  -0.214465581
                         0.394142468  -0.059316988  -0.023742821  -0.173494557  -0.213688319  -0.075535822   0.357744386   0.219562243

   49    1.2  0.5 -0.5   0.014426639   0.083917037   0.086494297   0.052434409  -0.085725638   0.076390573   0.431222093  -0.243750972
                        -0.033043422  -0.000039198   0.118800594  -0.026401970   0.060150787  -0.472123859   0.000518030   0.188609857

   50    2.2  0.5 -0.5   0.123609074  -0.063424267   0.153751431   0.313875665  -0.012862961   0.251678790   0.035952366   0.065648260
                        -0.193821981   0.118346415  -0.229994848   0.354063737   0.221095365   0.050145933   0.113462565  -0.056094696

   51    3.2  0.5 -0.5  -0.043405601  -0.086886980  -0.163207804   0.241257066   0.362195087   0.152925628   0.098458258  -0.110284667
                        -0.025116885  -0.002152871  -0.240169308  -0.273098245  -0.029213581  -0.030757705  -0.211182657   0.117934298

   52    4.2  0.5 -0.5  -0.062948603  -0.165441222   0.306231768  -0.126061184   0.197558632   0.026108618   0.369867115  -0.045677906
                         0.247770656   0.221179278   0.042990721  -0.024847904  -0.120818765   0.267360045   0.074071463   0.044358889

   53    5.2  0.5 -0.5  -0.098700290   0.074294042  -0.254433908   0.177649293  -0.174378101  -0.205824453   0.131071143   0.239550948
                        -0.059462607   0.219945456  -0.074859152  -0.267742446   0.104546572   0.074982107   0.317283399  -0.260307853

   54    6.2  0.5 -0.5  -0.078268791   0.324029052  -0.165870231  -0.050107451  -0.121256092   0.123927616   0.220465973  -0.136617005
                        -0.068354502  -0.165049092  -0.178201564   0.109620892  -0.216986229   0.257608131  -0.033662150   0.174144008

   55    7.2  0.5 -0.5   0.056820253   0.035955264   0.036920747   0.149881489  -0.114855077   0.024990700  -0.008116460   0.164874167
                         0.512392071  -0.223956381  -0.231538394   0.066051149  -0.095419238  -0.130428247   0.153043283  -0.164072721

   56    8.2  0.5 -0.5  -0.131729188  -0.039999157  -0.156867963   0.118154973  -0.194066798   0.092046493  -0.109459816  -0.225851922
                         0.306940556   0.295382603  -0.044660218   0.039770243   0.222876166   0.005352101  -0.253726744   0.211680685


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.753256117   0.129210143   0.552984302  -0.328374391   0.000000098  -0.000000096  -0.024301930  -0.014102568
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.000242238  -0.000495459   0.000914339  -0.000192838  -0.287873050   0.229622481   0.255311229   0.082085357
                         0.000016501  -0.000983913  -0.000035616  -0.000409218   0.003345553  -0.075049975   0.004901557   0.004836758

    3    3.2  1.5  1.5  -0.001163447  -0.000472016  -0.000480780   0.000462980  -0.146023708   0.116455687  -0.150369592  -0.120776334
                         0.000008359  -0.000499155  -0.000017973  -0.000207480   0.001708956  -0.038037103   0.002479947   0.002483379

    4    4.2  1.5  1.5   0.000196771   0.000882298  -0.000351869   0.000205601  -0.043914741   0.043860173   0.002782518  -0.020267325
                        -0.000283218  -0.000864020   0.000689323   0.000171123  -0.260366520   0.291148204   0.126810625   0.087678619

    5    5.2  1.5  1.5  -0.000407868   0.000984254   0.000533901   0.000351371   0.022321202   0.009173711   0.012313064  -0.076443767
                         0.000209425   0.000090142  -0.000637942  -0.000558428  -0.230501785  -0.068242617   0.099884474  -0.148529877

    6    6.2  1.5  1.5   0.000288163   0.000106467  -0.000817584  -0.000674082  -0.126225943  -0.176406631   0.051835892  -0.163357258
                         0.000509688  -0.000464971  -0.000742547  -0.000264283   0.040215314  -0.053960137  -0.047481213   0.059221746

    7    7.2  1.5  1.5   0.003580447   0.000614174   0.002628500  -0.001560866  -0.000000849   0.000000747   0.265876771   0.154290127
                        -0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000074  -0.000000223   0.000000037  -0.000000205

    8    8.2  1.5  1.5  -0.004210826   0.006139258   0.005698370   0.002352610   0.017480199  -0.005625645   0.006567310  -0.037998432
                         0.023160032   0.006866922   0.006799996  -0.014459873  -0.071365923  -0.087389136   0.279746381   0.054960123

    9    9.2  1.5  1.5   0.004657761  -0.006384210  -0.006525374  -0.002816447  -0.022506214   0.001347828  -0.005522570   0.035770407
                         0.016052988  -0.000707949   0.022225788  -0.002359352   0.075383625   0.093756661   0.204621310   0.235808253

   10   10.2  1.5  1.5  -0.004073378  -0.005202622   0.011599313   0.008142246   0.103771892   0.128128750  -0.041369386   0.134790740
                        -0.005585491   0.008971912   0.009162839   0.003361863   0.028370797  -0.004823189   0.017093935  -0.047084112

   11    1.2  1.5  0.5   0.295365168  -0.416540356  -0.407407336  -0.172441829   0.000000001  -0.000000034   0.001039944  -0.006360779
                        -0.191607302  -0.244895185   0.545711739   0.383092331   0.000000008   0.000000039   0.005057383  -0.016478752

   12    2.2  1.5  0.5   0.000338119   0.000081299  -0.000086599   0.000661055   0.032291000  -0.005436078  -0.005327647  -0.027532394
                        -0.000309704   0.000334263  -0.000361203  -0.001187844  -0.118136286  -0.145969119  -0.091188980   0.128874750

   13    3.2  1.5  0.5   0.000676098  -0.000670105  -0.000739570   0.000040680  -0.063818084   0.010819717  -0.014639588   0.059305707
                        -0.000484378  -0.000248708   0.000748710   0.000051802   0.232997196   0.287683879  -0.104511306   0.255130378

   14    4.2  1.5  0.5   0.000836434  -0.000104602   0.000265513   0.000783375  -0.093801989   0.090223836   0.201099081  -0.162996878
                         0.000305463  -0.000254647  -0.000562406   0.000667221  -0.060191768   0.024544620  -0.065159368  -0.029706116

   15    5.2  1.5  0.5  -0.000921079  -0.000245806  -0.000799678   0.000807265   0.263336326  -0.204590292  -0.193678279  -0.211179067
                         0.000107833  -0.000089915  -0.000198455   0.000235468  -0.024606373   0.086002729  -0.023034493  -0.010394237

   16    6.2  1.5  0.5  -0.000115160   0.000043104   0.000003725  -0.000240487  -0.003096987   0.070879284  -0.029905935   0.053491507
                        -0.001256952  -0.000137782  -0.000723529   0.000345071  -0.271916959   0.216841141  -0.240125551  -0.141379740

   17    7.2  1.5  0.5   0.001403957  -0.001979941  -0.001936529  -0.000819669  -0.000000002   0.000000075  -0.011377537   0.069590473
                        -0.000910765  -0.001164059   0.002593931   0.001820958  -0.000000093  -0.000000401  -0.055330575   0.180286642

   18    8.2  1.5  0.5   0.009239595  -0.003462023   0.009696003  -0.007923823   0.037048563   0.148085098   0.253543229   0.033611236
                         0.003239105  -0.015627522  -0.004056381  -0.006735054   0.025901160  -0.018308760   0.000822912   0.027153507

   19    9.2  1.5  0.5  -0.006438617   0.007461006  -0.020216958   0.001328201   0.135911643   0.057493662  -0.236324275  -0.149840100
                         0.002608104   0.009731852  -0.002903084   0.003835430   0.023001745   0.009337363  -0.006181706   0.018526933

   20   10.2  1.5  0.5  -0.000239091   0.017849301   0.000484813   0.007277618   0.002118433   0.022999942  -0.004398119  -0.006880511
                        -0.020917547  -0.013432740  -0.002241610   0.007527601  -0.073205566   0.058893570  -0.052054776  -0.097566574

   21    1.2  1.5 -0.5   0.203739346   0.430145973  -0.392632493  -0.024583143  -0.000000041  -0.000000012   0.015548079   0.001804785
                        -0.012225405   0.724382062   0.026367718   0.301392511   0.000000000   0.000000004   0.000536428   0.000526132

   22    2.2  1.5 -0.5  -0.001163538  -0.000471876  -0.000480705   0.000462910   0.146060364  -0.116416541  -0.150385999  -0.120758097
                         0.000008221  -0.000499011  -0.000018130  -0.000207895  -0.001706366   0.038027503   0.002464898   0.002477398

   23    3.2  1.5 -0.5  -0.000242076   0.000495217  -0.000914414   0.000192962  -0.287869002   0.229598973  -0.255326100  -0.082049427
                        -0.000016729   0.000984008   0.000035824   0.000409133   0.003256654  -0.075131979  -0.004943608  -0.004766174

   24    4.2  1.5 -0.5   0.000310757  -0.000117519  -0.000140742   0.000429438  -0.028926124  -0.064705421   0.024392055  -0.049711635
                         0.001020159   0.000191674   0.000687632  -0.000670458  -0.088915995  -0.090747425   0.183560838   0.210032732

   25    5.2  1.5 -0.5  -0.000534431   0.000203191   0.000386915  -0.000493203  -0.075898583  -0.011703502   0.020639769  -0.019943530
                         0.000885767  -0.000128929   0.000225530   0.000861749   0.208549916   0.264224413   0.201263397  -0.170079708

   26    6.2  1.5 -0.5   0.000481697  -0.000180539  -0.000016009   0.001007460  -0.220046732  -0.271743179   0.125095416  -0.224040451
                         0.000324014  -0.000270153  -0.000596382   0.000707673  -0.060194300   0.010199103  -0.069093198  -0.031500239

   27    7.2  1.5 -0.5   0.000968432   0.002044612  -0.001866300  -0.000116851   0.000000305  -0.000000038  -0.170104664  -0.019745428
                        -0.000058110   0.003443204   0.000125333   0.001432613  -0.000000017  -0.000000070  -0.005868787  -0.005756248

   28    8.2  1.5 -0.5   0.010581833  -0.002522309  -0.010755481   0.005168768   0.011047794   0.027681228  -0.015778456   0.040926536
                        -0.009779550  -0.006321018   0.012742208  -0.003462505  -0.148803080   0.035737978  -0.048907811   0.238815002

   29    9.2  1.5 -0.5  -0.011631960   0.016037320   0.011511012  -0.000987469  -0.012136808   0.029618342   0.011188319  -0.046452130
                         0.006765022  -0.001219680  -0.006741520   0.003685549  -0.056968401   0.134624780   0.159935485  -0.241116665

   30   10.2  1.5 -0.5   0.002210853  -0.008380497   0.013167228   0.023947530  -0.059947575  -0.073014524   0.054616153  -0.027841351
                         0.001158213   0.006871015   0.004372071   0.012723015  -0.020093486   0.005694314   0.002514653  -0.058022438

   31    1.2  1.5 -1.5  -0.398604164   0.151446602   0.270492213  -0.399253549   0.000000023  -0.000000076  -0.001113120   0.000217051
                         0.325297152  -0.121842666  -0.010778306   0.680103366  -0.000000093  -0.000000123  -0.012524478   0.022425454

   32    2.2  1.5 -1.5  -0.000675907   0.000670191   0.000739890  -0.000040730  -0.063735183   0.010731209   0.014720639  -0.059264364
                         0.000484337   0.000248454  -0.000748597  -0.000051890   0.233016864   0.287692587   0.104535707  -0.255125737

   33    3.2  1.5 -1.5   0.000337890   0.000081114  -0.000086591   0.000661122  -0.032298782   0.005431163  -0.005327691  -0.027558777
                        -0.000309870   0.000333971  -0.000361345  -0.001187814   0.118175963   0.145932674  -0.091223997   0.128856435

   34    4.2  1.5 -1.5   0.000168353  -0.000117830  -0.000571894  -0.000623241   0.292944338   0.262202166   0.102027490  -0.147857191
                         0.000486799  -0.000805777  -0.000713454  -0.000401884   0.029574954   0.031134323  -0.042937711   0.057641374

   35    5.2  1.5 -1.5   0.000388528   0.000653433  -0.000836126  -0.000259705  -0.067712696   0.229135105  -0.133318661  -0.071904856
                         0.000152167   0.000885528  -0.000209582   0.000344620   0.012498907  -0.033562702  -0.020999339   0.014618971

   36    6.2  1.5 -1.5  -0.000049736  -0.001159623   0.000154075  -0.000310969  -0.062519458  -0.033996574  -0.006720017   0.044564626
                         0.000197358   0.000784744  -0.000437605   0.000024586  -0.173558009   0.128040983  -0.152826061  -0.033240345

   37    7.2  1.5 -1.5  -0.001894682   0.000719870   0.001285731  -0.001897778  -0.000000189   0.000000161   0.012178163  -0.002374753
                         0.001546232  -0.000579154  -0.000051233   0.003232744   0.000000750   0.000000900   0.137024825  -0.245347365

   38    8.2  1.5 -1.5   0.011712312   0.002680695  -0.005997099   0.017822462  -0.087559728   0.070426165   0.042941460  -0.242226528
                         0.010625660   0.006603759  -0.007047570   0.015104475  -0.001346838  -0.020948278  -0.016857085  -0.000961687

   39    9.2  1.5 -1.5   0.005011361  -0.010003731   0.005820198   0.017360481   0.093710504  -0.074193259   0.214178726  -0.205998419
                         0.010277148  -0.014905738  -0.007345916   0.005338949  -0.003237122   0.026164285  -0.009699004   0.004997014

   40   10.2  1.5 -1.5   0.000039413   0.015284783   0.000548699   0.007028738   0.001446233  -0.033409830   0.000005545  -0.012222831
                        -0.003964397  -0.009277051   0.008096297   0.000889916   0.128211419  -0.102260967   0.126794891   0.014839647

   41    1.2  0.5  0.5  -0.000000377  -0.000000016  -0.000000054   0.000000845   0.000000014  -0.000000316   0.000000013  -0.000000188
                        -0.000000008  -0.000000006   0.000000083   0.000002044  -0.000000015   0.000000196   0.000000041  -0.000000062

   42    2.2  0.5  0.5  -0.000000120   0.000000029   0.000000017   0.000000016   0.000000002  -0.000000045   0.000000001  -0.000000020
                        -0.000000020  -0.000000030  -0.000000044   0.000000307  -0.000000001   0.000000011   0.000000012  -0.000000022

   43    3.2  0.5  0.5   0.000000392  -0.000000081  -0.000000281   0.000001348  -0.000000003   0.000000232   0.000000010   0.000000005
                        -0.000000069  -0.000000018   0.000000141  -0.000001017  -0.000000047   0.000000209  -0.000000026   0.000000186

   44    4.2  0.5  0.5   0.000000182  -0.000000045  -0.000000008  -0.000000124  -0.000000002  -0.000000100   0.000000005  -0.000000028
                         0.000000100  -0.000000032   0.000000096   0.000000496   0.000000001   0.000000004   0.000000002  -0.000000031

   45    5.2  0.5  0.5  -0.000000442   0.000000043   0.000000091  -0.000001522   0.000000040  -0.000000303  -0.000000030  -0.000000044
                        -0.000000008   0.000000057  -0.000000149   0.000001483   0.000000041  -0.000000239   0.000000039  -0.000000234

   46    6.2  0.5  0.5  -0.000000509   0.000000051   0.000000033  -0.000000098   0.000000006  -0.000000125  -0.000000004  -0.000000038
                        -0.000000235   0.000000013   0.000000006   0.000000858   0.000000014  -0.000000016   0.000000035  -0.000000089

   47    7.2  0.5  0.5   0.000000004  -0.000000012   0.000000009  -0.000000418   0.000000001  -0.000000004  -0.000000003   0.000000021
                        -0.000000116  -0.000000028   0.000000025   0.000000109  -0.000000003  -0.000000070   0.000000014  -0.000000036

   48    8.2  0.5  0.5  -0.000000147  -0.000000021   0.000000091  -0.000001190   0.000000038  -0.000000212  -0.000000006  -0.000000037
                         0.000000167   0.000000036  -0.000000163   0.000000971   0.000000040  -0.000000183   0.000000030  -0.000000174

   49    1.2  0.5 -0.5  -0.000000475   0.000000039  -0.000000390  -0.000001361   0.000000061  -0.000000166  -0.000000041   0.000000031
                        -0.000000464   0.000000174   0.000000101   0.000000969  -0.000000004  -0.000000251   0.000000048  -0.000000166

   50    2.2  0.5 -0.5  -0.000000012  -0.000000012  -0.000000033   0.000000434   0.000000006   0.000000051  -0.000000000  -0.000000017
                         0.000000043  -0.000000007  -0.000000046  -0.000000182   0.000000001   0.000000072   0.000000015   0.000000045

   51    3.2  0.5 -0.5   0.000000312   0.000000047  -0.000000003  -0.000000781  -0.000000011  -0.000000119   0.000000017   0.000000032
                        -0.000000174   0.000000002   0.000000176   0.000000522  -0.000000029  -0.000000106   0.000000002  -0.000000059

   52    4.2  0.5 -0.5  -0.000000062   0.000000030  -0.000000310  -0.000000431   0.000000046  -0.000000021  -0.000000023   0.000000016
                        -0.000000349  -0.000000026   0.000000008   0.000000200  -0.000000010  -0.000000038   0.000000017  -0.000000011

   53    5.2  0.5 -0.5  -0.000000378   0.000000018  -0.000000231   0.000001297   0.000000026   0.000000262  -0.000000024  -0.000000011
                        -0.000000028   0.000000028  -0.000000279  -0.000001038   0.000000034   0.000000231  -0.000000014   0.000000163

   54    6.2  0.5 -0.5   0.000000012  -0.000000020  -0.000000183  -0.000000848   0.000000017  -0.000000155  -0.000000015  -0.000000004
                        -0.000000316  -0.000000034   0.000000068   0.000000687  -0.000000013  -0.000000134   0.000000016  -0.000000083

   55    7.2  0.5 -0.5  -0.000000131  -0.000000020  -0.000000041   0.000000960  -0.000000000   0.000000154  -0.000000002  -0.000000021
                         0.000000030   0.000000017  -0.000000168  -0.000000608   0.000000016   0.000000156  -0.000000015   0.000000103

   56    8.2  0.5 -0.5   0.000000113  -0.000000024   0.000000156  -0.000001116  -0.000000015  -0.000000214   0.000000013   0.000000016
                         0.000000157   0.000000025   0.000000226   0.000000826  -0.000000018  -0.000000226   0.000000020  -0.000000146


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5   0.014501121   0.004198210  -0.021125409  -0.005192841   0.003136809  -0.001300015  -0.000000019   0.000000005
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.151481407   0.104557371  -0.085789191  -0.067685172   0.221225940  -0.029562756   0.098125155  -0.051892663
                         0.022009583  -0.031401932   0.006006463  -0.023493593   0.058398407   0.137147940   0.062238262   0.040527622

    3    3.2  1.5  1.5   0.243839881   0.101349660   0.269331684   0.042584036   0.065771780   0.004271717   0.049766728  -0.026309028
                         0.011187867  -0.015946519   0.003049629  -0.011910243   0.029635531   0.069524960   0.031567730   0.020546240

    4    4.2  1.5  1.5  -0.005857074  -0.031917850  -0.009652861   0.055622103  -0.009526826  -0.088651208  -0.055663075  -0.016590408
                         0.279225254   0.064123616   0.047504978  -0.019371268   0.249002534  -0.093754766   0.113014408  -0.060053472

    5    5.2  1.5  1.5  -0.118574923   0.224348678  -0.004362049  -0.077149139  -0.175358499  -0.043514303  -0.055908306  -0.051892821
                         0.002710507   0.069898055  -0.001483678  -0.001595302   0.071154935   0.202173118   0.025179066   0.030350191

    6    6.2  1.5  1.5  -0.082219269   0.035168513  -0.015194965  -0.001322536  -0.000175819   0.251474690   0.002696023   0.057809181
                         0.049930165  -0.248383891  -0.009607017   0.098321239   0.105055663   0.016866092   0.007704930   0.055707803

    7    7.2  1.5  1.5  -0.158650668  -0.045930641   0.588008199   0.144538787  -0.087310739   0.036185291   0.000000508  -0.000000158
                         0.000000069  -0.000000302   0.000000153  -0.000000134   0.000000159   0.000000817   0.000000054  -0.000000083

    8    8.2  1.5  1.5  -0.061106764   0.121442473   0.000663826   0.042904243   0.076571945   0.002596072   0.148469994   0.180671404
                        -0.197738358  -0.022502149   0.251630747   0.056370588  -0.030753867  -0.089585710   0.055799899  -0.213731908

    9    9.2  1.5  1.5   0.062806344  -0.128750454  -0.000277737  -0.046067422  -0.081598620  -0.008366564  -0.155797910  -0.204631711
                        -0.086093475  -0.069514002   0.218732493   0.057347520  -0.043640525   0.125687857  -0.067599868   0.218913116

   10   10.2  1.5  1.5   0.072015618  -0.035436274  -0.011873219   0.003423905  -0.010902045   0.152953397  -0.087458557   0.305758599
                        -0.092701122   0.175449798   0.008956819   0.064972498   0.110630828   0.008387946   0.215121340   0.272769687

   11    1.2  1.5  0.5  -0.010704610   0.021627984   0.000071743   0.006910688   0.012283469   0.000868957   0.000000029   0.000000035
                        -0.008805781   0.004336507   0.001303970  -0.000375233   0.001199767  -0.016795720   0.000000022  -0.000000060

   12    2.2  1.5  0.5  -0.102497228   0.230303772   0.002436268  -0.019032089  -0.054964169  -0.096997463  -0.030919077  -0.039249995
                        -0.062098574   0.119191666  -0.066366449   0.235645925  -0.011738711   0.108154126  -0.012590695   0.043989657

   13    3.2  1.5  0.5   0.071267770  -0.132269686   0.002257496   0.092673614   0.154035297  -0.036331927   0.061015272   0.077352156
                         0.069922332   0.010519891  -0.014331869   0.113968207   0.011811444  -0.193874876   0.024826749  -0.086674008

   14    4.2  1.5  0.5  -0.027840890  -0.116210408  -0.032732073  -0.262856470   0.018490482  -0.013741587   0.018478839  -0.025396756
                        -0.021610117   0.142949314   0.064120076   0.037907293   0.009858797  -0.090619644   0.041009568   0.002090994

   15    5.2  1.5  0.5   0.148119656   0.004686907   0.284342327  -0.020096295  -0.037371755   0.013330793  -0.094498598   0.044485383
                        -0.007640986   0.050513702   0.022608555   0.013451529   0.003489548  -0.032036824  -0.049620075  -0.041020242

   16    6.2  1.5  0.5  -0.005514263   0.025835949  -0.015222217   0.060799921  -0.001199843   0.002025518  -0.058796412  -0.038292110
                         0.158591322   0.008136454   0.270603592   0.060941533  -0.045100004   0.040623560   0.092654903  -0.049011242

   17    7.2  1.5  0.5   0.117114650  -0.236622785  -0.001996967  -0.192353248  -0.341900000  -0.024185783  -0.000000691  -0.000000990
                         0.096340326  -0.047444258  -0.036294839   0.010443871  -0.033394375   0.467495212  -0.000000537   0.000001529

   18    8.2  1.5  0.5   0.043092498   0.078303943   0.111625336   0.053581029  -0.139242227  -0.045441594  -0.212562291   0.328618481
                         0.046133886  -0.099758069   0.000257543  -0.011980079  -0.080022300  -0.087091302   0.098680370   0.171968285

   19    9.2  1.5  0.5  -0.106250835  -0.055025279  -0.109683053  -0.059503731   0.156447373  -0.085206261   0.074949439   0.162295728
                         0.012105898  -0.048762037   0.007510719  -0.039881106  -0.003386909   0.086289311   0.265548871   0.273596344

   20   10.2  1.5  0.5  -0.023719214   0.032933671   0.005564746  -0.020992860   0.052269523   0.120271286   0.124167970   0.091355082
                         0.345540935   0.159771676  -0.228473001  -0.015449533  -0.153786739   0.007458383  -0.193601891   0.113487117

   21    1.2  1.5 -0.5   0.023889105   0.013548885  -0.003431224   0.003113633  -0.017187692   0.001848397   0.000000064  -0.000000023
                         0.002403817  -0.003430492  -0.000509812   0.001993409  -0.004960156  -0.011646470   0.000000047   0.000000034

   22    2.2  1.5 -0.5   0.243800925   0.101441421   0.269328615   0.042606485   0.065743258   0.004254583  -0.049778475   0.026300881
                         0.011177317  -0.015939194   0.003043724  -0.011868815   0.029630107   0.069600897  -0.031587195  -0.020561608

   23    3.2  1.5 -0.5  -0.151462237  -0.104566413   0.085795780   0.067706463  -0.221185950   0.029513508   0.098094915  -0.051907084
                        -0.022023647   0.031447988  -0.006019920   0.023540759  -0.058426256  -0.137177873   0.062234421   0.040557101

   24    4.2  1.5 -0.5  -0.014482170   0.024157173   0.015461723  -0.049029505   0.008017218  -0.036197604  -0.025001301  -0.006567920
                        -0.157448569   0.029335772  -0.277010454   0.029732994   0.040813432  -0.035369830   0.004929685   0.044498697

   25    5.2  1.5 -0.5   0.057603395  -0.145849178   0.002059630  -0.043737895  -0.019108700   0.096387993   0.054003004   0.077339811
                        -0.030441616  -0.107439563  -0.028244091  -0.267058310   0.019848570  -0.021794007   0.027300679  -0.073557524

   26    6.2  1.5 -0.5   0.023122272  -0.108029730   0.063872577  -0.254547704   0.004995639  -0.008496200  -0.023439314   0.081880707
                        -0.022914156   0.151592596   0.067996656   0.040185904   0.010469792  -0.096118208   0.057610681   0.073058708

   27    7.2  1.5 -0.5  -0.261360555  -0.148232810   0.095505167  -0.086665543   0.478405263  -0.051448101  -0.000001693   0.000000559
                        -0.026299146   0.037531427   0.014190146  -0.055485132   0.138061904   0.324169657  -0.000001234  -0.000000941

   28    8.2  1.5 -0.5   0.026705982  -0.046103481   0.000989062  -0.072407785  -0.078547411   0.083623720   0.269109991   0.231438956
                         0.129062442   0.073321197   0.008376480  -0.109563240  -0.074359790   0.122090814  -0.255231757   0.036831227

   29    9.2  1.5 -0.5  -0.048957877   0.077831749   0.005020919   0.055449091   0.122916557  -0.006488867   0.081344063   0.000477215
                         0.032513277   0.003551950  -0.035350116   0.139288456  -0.056983404  -0.119426814  -0.307535456   0.275923164

   30   10.2  1.5 -0.5   0.101810946  -0.129040989  -0.058900756   0.184123029  -0.015534588   0.184183796   0.056861237  -0.172351975
                        -0.145389540   0.321841931  -0.001939826   0.055828625   0.112670892   0.080389207  -0.134133755  -0.152296726

   31    1.2  1.5 -1.5  -0.005757711   0.014173369  -0.000247264  -0.001889743  -0.001563588   0.007793709   0.000000005  -0.000000031
                        -0.002310957   0.010814098   0.004969467  -0.019816036   0.000388513  -0.000662664   0.000000007  -0.000000005

   32    2.2  1.5 -1.5  -0.071263383   0.132287063  -0.002315078  -0.092694227  -0.154000502   0.036292394   0.060993137   0.077380248
                        -0.069886599  -0.010497357   0.014336826  -0.113978873  -0.011772923   0.193900670   0.024803120  -0.086685823

   33    3.2  1.5 -1.5  -0.102415304   0.230339384   0.002494161  -0.019035860  -0.054913821  -0.096997199   0.030922323   0.039244547
                        -0.062071651   0.119195791  -0.066322043   0.235644703  -0.011728084   0.108181309   0.012573646  -0.043967228

   34    4.2  1.5 -1.5   0.004187243   0.079457861   0.000775204  -0.014915698   0.075421323   0.229013800  -0.000453599  -0.084430137
                         0.055304091  -0.245949860  -0.006809286   0.083928924   0.120872713   0.067093626  -0.062301156  -0.093499499

   35    5.2  1.5 -1.5  -0.258774370  -0.119432154  -0.047794433   0.038322686  -0.214145188   0.106755361   0.058212335  -0.060661609
                        -0.006652690  -0.049470607  -0.009555315   0.057601427  -0.026761441  -0.139369762   0.015012699  -0.008941323

   36    6.2  1.5 -1.5   0.044992793  -0.044609933   0.010545136  -0.026766297   0.067354784   0.098075069  -0.040384342   0.000487553
                        -0.264196375  -0.083741252  -0.044285233   0.018781191  -0.258478263   0.021091400   0.069386088  -0.008148796

   37    7.2  1.5 -1.5   0.062992661  -0.155065208   0.006882436   0.052599570   0.043521181  -0.216929559  -0.000000016   0.000000764
                         0.025283141  -0.118313112  -0.138321106   0.551562427  -0.010814057   0.018444662  -0.000000153   0.000000028

   38    8.2  1.5 -1.5  -0.109127407  -0.188170291  -0.036035011   0.209414879   0.101555532  -0.005798213  -0.232205468   0.127567957
                        -0.076635465   0.163896870   0.000892648  -0.034699217   0.015688156   0.161948239  -0.156217937  -0.094252215

   39    9.2  1.5 -1.5   0.165550336  -0.024020226  -0.076428014   0.234365002  -0.119377492   0.017654544   0.256669880  -0.131391523
                        -0.044595715   0.114679775  -0.005530187  -0.007549082  -0.047219516   0.006077967   0.154653573   0.107605121

   40   10.2  1.5 -1.5  -0.018890070   0.024221811   0.002696763  -0.010373160   0.045050694   0.106316266  -0.219571402  -0.142921262
                         0.193384071   0.115843271  -0.031336190   0.027609790  -0.157126612   0.019916911   0.345948038  -0.183029360

   41    1.2  0.5  0.5   0.000000001  -0.000000450  -0.000000018  -0.000000148  -0.000000011   0.000000284   0.000000028  -0.000000044
                        -0.000000005  -0.000000053  -0.000000014  -0.000000164   0.000000001  -0.000000397  -0.000000010   0.000000006

   42    2.2  0.5  0.5   0.000000002  -0.000000048  -0.000000005  -0.000000009  -0.000000003   0.000000035   0.000000004  -0.000000005
                         0.000000017  -0.000000016   0.000000007  -0.000000029   0.000000018  -0.000000038  -0.000000000  -0.000000001

   43    3.2  0.5  0.5  -0.000000002   0.000000045   0.000000010  -0.000000094  -0.000000001  -0.000000377  -0.000000010   0.000000018
                        -0.000000019   0.000000363  -0.000000028   0.000000136  -0.000000025  -0.000000124  -0.000000022   0.000000033

   44    4.2  0.5  0.5   0.000000013  -0.000000090   0.000000013   0.000000005   0.000000015   0.000000118   0.000000007  -0.000000011
                         0.000000004  -0.000000081   0.000000017  -0.000000056  -0.000000003  -0.000000038   0.000000001  -0.000000005

   45    5.2  0.5  0.5  -0.000000009  -0.000000100   0.000000000   0.000000091  -0.000000034   0.000000476   0.000000018  -0.000000023
                         0.000000032  -0.000000434   0.000000035  -0.000000189   0.000000043   0.000000118   0.000000028  -0.000000038

   46    6.2  0.5  0.5  -0.000000011  -0.000000102  -0.000000037  -0.000000025  -0.000000029   0.000000156   0.000000008  -0.000000014
                         0.000000012  -0.000000096  -0.000000009  -0.000000088   0.000000022  -0.000000037   0.000000004  -0.000000007

   47    7.2  0.5  0.5   0.000000000   0.000000030  -0.000000002   0.000000032  -0.000000006   0.000000057  -0.000000000   0.000000003
                         0.000000008  -0.000000078  -0.000000008  -0.000000030   0.000000014   0.000000074   0.000000005  -0.000000008

   48    8.2  0.5  0.5   0.000000014  -0.000000052   0.000000021   0.000000070  -0.000000000   0.000000354   0.000000012  -0.000000016
                         0.000000023  -0.000000335   0.000000038  -0.000000148   0.000000044   0.000000118   0.000000023  -0.000000027

   49    1.2  0.5 -0.5  -0.000000048   0.000000037  -0.000000057   0.000000081  -0.000000071   0.000000274   0.000000014  -0.000000004
                         0.000000027  -0.000000303  -0.000000022  -0.000000114   0.000000048   0.000000225   0.000000026  -0.000000032

   50    2.2  0.5 -0.5  -0.000000001  -0.000000009   0.000000004  -0.000000029  -0.000000012  -0.000000108  -0.000000002   0.000000002
                         0.000000016   0.000000108  -0.000000004   0.000000021   0.000000030  -0.000000068  -0.000000005   0.000000011

   51    3.2  0.5 -0.5  -0.000000011  -0.000000017  -0.000000018   0.000000039   0.000000016   0.000000168   0.000000009  -0.000000006
                        -0.000000012  -0.000000170  -0.000000019  -0.000000056  -0.000000021   0.000000094   0.000000006  -0.000000019

   52    4.2  0.5 -0.5  -0.000000011   0.000000003  -0.000000008   0.000000023  -0.000000018   0.000000022   0.000000006   0.000000002
                         0.000000029  -0.000000051  -0.000000024  -0.000000029   0.000000029   0.000000029   0.000000007  -0.000000002

   53    5.2  0.5 -0.5  -0.000000013   0.000000023  -0.000000010  -0.000000080  -0.000000027  -0.000000411  -0.000000018   0.000000016
                         0.000000038   0.000000380   0.000000009   0.000000134   0.000000033  -0.000000212  -0.000000015   0.000000042

   54    6.2  0.5 -0.5  -0.000000006  -0.000000025  -0.000000000   0.000000049  -0.000000011   0.000000231   0.000000012  -0.000000009
                         0.000000008  -0.000000221  -0.000000025  -0.000000083   0.000000015   0.000000094   0.000000012  -0.000000022

   55    7.2  0.5 -0.5  -0.000000005   0.000000006   0.000000002  -0.000000071  -0.000000015  -0.000000258  -0.000000011   0.000000008
                         0.000000013   0.000000257   0.000000009   0.000000091   0.000000014  -0.000000140  -0.000000012   0.000000026

   56    8.2  0.5 -0.5   0.000000016   0.000000002  -0.000000002   0.000000091   0.000000028   0.000000353   0.000000013  -0.000000012
                        -0.000000022  -0.000000341   0.000000003  -0.000000115  -0.000000011   0.000000204   0.000000016  -0.000000037


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5  -0.000000118   0.000000113   0.000000069   0.000000389   0.000000122   0.000000158  -0.014438448   0.018262763
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.173984945   0.184775257  -0.023771495  -0.196506695   0.012403161   0.116679795  -0.049985097   0.060733234
                        -0.011840140   0.010304271   0.066432144  -0.005353989   0.078107010  -0.049879663   0.000636883  -0.000756963

    3    3.2  1.5  1.5   0.310243521  -0.340685746   0.016792292   0.232581917   0.099393397   0.185513676   0.026673817  -0.035013447
                         0.017738639  -0.001387509   0.013603813   0.000452180   0.084661242  -0.052262365   0.000324683  -0.000381385

    4    4.2  1.5  1.5  -0.009859125  -0.020518247   0.073075213  -0.012929239  -0.085190875   0.016856668  -0.015981842  -0.011631360
                        -0.070249745  -0.039942697  -0.080680071  -0.099463283   0.179558149   0.185245224  -0.028535868   0.036527939

    5    5.2  1.5  1.5  -0.072673599  -0.055700166  -0.433731040   0.086617511  -0.176223349   0.043111360   0.026626669   0.021440813
                         0.096055176   0.095589673   0.056970684   0.064644953  -0.089289762  -0.103141325  -0.035270164  -0.008385814

    6    6.2  1.5  1.5  -0.151080161  -0.121765397  -0.034843600   0.050179081  -0.117293525  -0.166852349  -0.022929462  -0.019705273
                        -0.079387218  -0.070245702  -0.180000561  -0.001118782   0.343416250  -0.221630659  -0.022036250  -0.032310708

    7    7.2  1.5  1.5   0.000003066  -0.000003939  -0.000001880  -0.000010999  -0.000003475  -0.000004684  -0.365016124   0.461698065
                         0.000000080   0.000000105  -0.000000062   0.000000329   0.000000037  -0.000000729   0.000000033   0.000000057

    8    8.2  1.5  1.5   0.056712898   0.036404870   0.155583804  -0.008209614  -0.104271454   0.056057225  -0.068133083  -0.053853457
                        -0.214038118   0.072518520  -0.040283000  -0.107825200  -0.060669743  -0.071084727   0.252962283  -0.201486237

    9    9.2  1.5  1.5  -0.040997972  -0.039778408  -0.177572442   0.012329473   0.139812177  -0.079537559   0.075863945   0.060123142
                        -0.031155749   0.210375943   0.035373819  -0.105187194   0.002637907  -0.005962181   0.127291676  -0.280228890

   10   10.2  1.5  1.5  -0.111151821  -0.097371335  -0.062069799  -0.039418154   0.041709513   0.047074653  -0.079589083  -0.067266036
                        -0.067334984  -0.042039070  -0.307590556   0.041138852   0.025400221  -0.034349141  -0.095204366  -0.089152300

   11    1.2  1.5  0.5  -0.000000090  -0.000000048   0.000000091  -0.000000060   0.000000291  -0.000000155  -0.009468494  -0.007494929
                         0.000000152   0.000000164  -0.000000019  -0.000000159   0.000000170   0.000000269   0.007391322   0.006246985

   12    2.2  1.5  0.5  -0.198538868  -0.161677851  -0.127043345   0.014430649   0.109816536  -0.066479543  -0.026807896  -0.022166361
                         0.348785973   0.313383697   0.028613664  -0.015512958   0.028298225   0.035702580   0.022068244   0.016939872

   13    3.2  1.5  0.5  -0.093279339  -0.073013764  -0.155985685   0.046137972  -0.132768435   0.047670999  -0.047729125  -0.038246810
                         0.161688419   0.150040291   0.025408080   0.046997790  -0.094201907  -0.099330503   0.037834836   0.031101453

   14    4.2  1.5  0.5  -0.082000803  -0.054946899   0.132278085   0.052671733   0.019603023  -0.109126892  -0.049179076  -0.007194952
                        -0.024023728  -0.061723717   0.464555944  -0.006174689  -0.276112402   0.100971191  -0.031541212  -0.046850425

   15    5.2  1.5  0.5   0.011040063  -0.071626962   0.030186639  -0.036203537   0.107239591   0.269115999   0.031808107  -0.064783511
                        -0.008501259  -0.009609398   0.261053650  -0.008651956   0.074830936  -0.072958494  -0.011133824  -0.016533838

   16    6.2  1.5  0.5   0.010193906   0.031784163   0.067903135  -0.016225815   0.140430085  -0.093878674   0.008545350   0.006765570
                         0.089100351  -0.067485964  -0.100615191   0.156766638  -0.012575093  -0.276575144   0.055674004  -0.048443739

   17    7.2  1.5  0.5   0.000002648   0.000001376  -0.000002269   0.000002107  -0.000008391   0.000003779  -0.239371364  -0.189478168
                        -0.000004649  -0.000004484   0.000000408   0.000004340  -0.000004937  -0.000007643   0.186858907   0.157929080

   18    8.2  1.5  0.5   0.083089785  -0.118660290   0.012366029   0.106218146  -0.052196861   0.014114623   0.225470945  -0.206980686
                         0.000747242  -0.009437787   0.119135002  -0.036436802   0.253542328  -0.124442974   0.041697363   0.035414722

   19    9.2  1.5  0.5  -0.119491558   0.109784392   0.010392627  -0.005443081  -0.156356562  -0.248836608  -0.174235328   0.278651671
                        -0.009416891  -0.014131826   0.054219791  -0.031063807   0.100962016  -0.031185270   0.042656001   0.028561462

   20   10.2  1.5  0.5   0.010683051  -0.009395358  -0.056935868   0.006545370  -0.067799126   0.037175546   0.003926162  -0.002412581
                        -0.166746459   0.177002372  -0.018513459  -0.183744538   0.012433280   0.090249393  -0.028259231   0.049550498

   21    1.2  1.5 -0.5  -0.000000156   0.000000196  -0.000000017  -0.000000080   0.000000100   0.000000304   0.010112724  -0.011923152
                         0.000000007   0.000000048   0.000000152  -0.000000062   0.000000206  -0.000000083  -0.000218998   0.000265965

   22    2.2  1.5 -0.5  -0.356586661   0.404345069   0.011952317   0.120393434   0.048782841   0.106892863   0.026683544  -0.035017854
                        -0.020669433   0.005807856   0.011607524  -0.013217900   0.038776462  -0.003863091   0.000332115  -0.000378509

   23    3.2  1.5 -0.5  -0.164187194   0.193148833   0.021459290   0.139573190  -0.037958088  -0.156549609   0.049971358  -0.060740507
                        -0.007661696  -0.006679030  -0.067450928  -0.001599466  -0.101387392   0.074526349  -0.000619195   0.000768480

   24    4.2  1.5 -0.5   0.018838310   0.024789458   0.059847883  -0.024590475   0.079543243  -0.004682674  -0.023202760  -0.018726137
                         0.071600440  -0.068301800   0.013241561   0.507841163   0.125729412   0.231939688  -0.040251769   0.055400697

   25    5.2  1.5 -0.5  -0.018411206  -0.008203703  -0.057435815   0.042884776  -0.254154800   0.122161552   0.040045767   0.032680535
                         0.065241935   0.020498078   0.009182971   0.249909025  -0.108709147  -0.081320463  -0.053226571  -0.011346400

   26    6.2  1.5 -0.5   0.076203741   0.061963342  -0.033395618  -0.074682791   0.141106034   0.143959776  -0.035762584  -0.028352002
                         0.022543171   0.054085843  -0.169876932  -0.081450005  -0.244935387   0.049728515  -0.033441037  -0.049679941

   27    7.2  1.5 -0.5   0.000004824  -0.000006028   0.000000510   0.000002332  -0.000002973  -0.000009574   0.255658262  -0.301427330
                        -0.000000196  -0.000000957  -0.000004460   0.000001550  -0.000006181   0.000002839  -0.005536387   0.006723794

   28    8.2  1.5 -0.5  -0.055640034  -0.033184763   0.107851649   0.009475344  -0.008375432  -0.015197781   0.184793124   0.146833767
                         0.113607297   0.081363015  -0.000547795   0.095891115  -0.121477365  -0.266504524  -0.101577289  -0.174444284

   29    9.2  1.5 -0.5   0.059851625   0.059899208   0.028299685  -0.021983979   0.250585034  -0.132273495  -0.197033942  -0.160389250
                        -0.085338375  -0.107889192   0.024566485   0.053628157   0.003599480  -0.130520664   0.199597477   0.077093978

   30   10.2  1.5 -0.5  -0.160509213  -0.146034644   0.035474438   0.047634714  -0.056937935  -0.074579192   0.031464382   0.020040948
                        -0.091164443  -0.078935797   0.177014884  -0.027200692   0.063415006  -0.030757988   0.036170277   0.029156876

   31    1.2  1.5 -1.5  -0.000000048  -0.000000071  -0.000000387   0.000000103   0.000000208  -0.000000215   0.014152083   0.011537870
                         0.000000095   0.000000177   0.000000084  -0.000000065  -0.000000001   0.000000026  -0.011449080  -0.009074595

   32    2.2  1.5 -1.5  -0.095749376  -0.082193542   0.191616340  -0.034583823   0.086101310  -0.032411607   0.047715792   0.038268769
                         0.167580858   0.152369043  -0.035238499  -0.054827093   0.073573657   0.085887956  -0.037839170  -0.031096429

   33    3.2  1.5 -1.5   0.174065386   0.144424745  -0.197245966  -0.008098316   0.201864984  -0.096809578  -0.026802682  -0.022164182
                        -0.300342882  -0.282915486   0.047924445  -0.000120106   0.068788285   0.062154912   0.022067466   0.016927750

   34    4.2  1.5 -1.5  -0.022645752   0.054176170  -0.006635008   0.099778935   0.045928079   0.050620485  -0.032435547  -0.005822870
                        -0.029240527   0.042075345  -0.114214589   0.077787660  -0.169770051   0.185455986  -0.020537862  -0.030749541

   35    5.2  1.5 -1.5   0.111063943  -0.138128075  -0.058592600  -0.414216187   0.030355322   0.225314340   0.023010809  -0.042694771
                        -0.007245335   0.030057904   0.093189882   0.029922382   0.097658706  -0.056016193  -0.008006140  -0.009953868

   36    6.2  1.5 -1.5   0.007046886  -0.012913259  -0.066092240   0.026876853  -0.192984018   0.063195785   0.006206934   0.003830204
                        -0.154076195   0.173508074   0.030510926   0.199826947   0.189491476   0.341346877   0.038651763  -0.031658573

   37    7.2  1.5 -1.5   0.000001613   0.000001629   0.000010891  -0.000002220  -0.000005815   0.000004874   0.357776504   0.291687251
                        -0.000002996  -0.000003988  -0.000002366   0.000001267  -0.000000072  -0.000000068  -0.289442168  -0.229413369

   38    8.2  1.5 -1.5   0.041917493   0.219511681  -0.007351741   0.160029758   0.047856627   0.102199134   0.081654527   0.211354852
                         0.070486290   0.060291132  -0.094526253  -0.009409666   0.091498615  -0.039296183   0.192474015   0.157637562

   39    9.2  1.5 -1.5   0.208915417   0.002169341  -0.037441083  -0.189825330  -0.073295781  -0.120185850   0.225259911   0.021691889
                         0.075323168   0.053024005  -0.094114393   0.004978767   0.004941456  -0.010641899   0.176547446   0.151091899

   40   10.2  1.5 -1.5   0.009057542   0.009139725   0.052129715   0.005760146   0.035169214  -0.040710013   0.007652964   0.001379647
                        -0.108566675   0.140977138   0.031044024   0.309202293   0.039113640  -0.007580701   0.115438082  -0.122993899

   41    1.2  0.5  0.5  -0.000000022   0.000000164  -0.000000029   0.000000007   0.000000013  -0.000000083  -0.000000084  -0.000000010
                        -0.000000011   0.000000285   0.000000056  -0.000000213  -0.000000028   0.000000340  -0.000000052   0.000000013

   42    2.2  0.5  0.5  -0.000000014   0.000000009   0.000000015   0.000000003   0.000000007  -0.000000021  -0.000000016  -0.000000003
                         0.000000003   0.000000043  -0.000000006  -0.000000024  -0.000000010   0.000000025  -0.000000009   0.000000012

   43    3.2  0.5  0.5   0.000000056   0.000000182  -0.000000042  -0.000000143  -0.000000055   0.000000236   0.000000019   0.000000045
                        -0.000000033  -0.000000168   0.000000021   0.000000031   0.000000016   0.000000081   0.000000036   0.000000010

   44    4.2  0.5  0.5   0.000000026  -0.000000011  -0.000000035   0.000000037   0.000000029  -0.000000071   0.000000020  -0.000000007
                         0.000000018   0.000000067  -0.000000023  -0.000000034  -0.000000019   0.000000030  -0.000000002  -0.000000015

   45    5.2  0.5  0.5  -0.000000056  -0.000000199  -0.000000004   0.000000215   0.000000054  -0.000000337  -0.000000014  -0.000000033
                         0.000000030   0.000000252   0.000000005  -0.000000066  -0.000000034  -0.000000080  -0.000000073  -0.000000010

   46    6.2  0.5  0.5  -0.000000064  -0.000000014   0.000000024   0.000000055   0.000000011  -0.000000063  -0.000000056   0.000000008
                        -0.000000024   0.000000136   0.000000040  -0.000000056  -0.000000014   0.000000090  -0.000000054   0.000000008

   47    7.2  0.5  0.5   0.000000004  -0.000000063  -0.000000009   0.000000049   0.000000004  -0.000000048   0.000000013  -0.000000000
                        -0.000000024   0.000000025   0.000000018   0.000000007   0.000000022  -0.000000034  -0.000000026   0.000000000

   48    8.2  0.5  0.5  -0.000000009  -0.000000162  -0.000000018   0.000000197   0.000000033  -0.000000289   0.000000011  -0.000000023
                         0.000000045   0.000000184  -0.000000013  -0.000000039  -0.000000028  -0.000000119  -0.000000043  -0.000000012

   49    1.2  0.5 -0.5  -0.000000043  -0.000000190   0.000000026   0.000000154   0.000000003  -0.000000300  -0.000000029   0.000000054
                        -0.000000054   0.000000137   0.000000024  -0.000000011   0.000000024  -0.000000036  -0.000000108  -0.000000002

   50    2.2  0.5 -0.5   0.000000003   0.000000061   0.000000012  -0.000000040  -0.000000003   0.000000058  -0.000000007   0.000000005
                         0.000000005  -0.000000031   0.000000004   0.000000029  -0.000000010  -0.000000011   0.000000004   0.000000022

   51    3.2  0.5 -0.5   0.000000042  -0.000000106  -0.000000027   0.000000050   0.000000034  -0.000000148   0.000000028  -0.000000003
                        -0.000000020   0.000000064  -0.000000012  -0.000000031   0.000000008   0.000000053  -0.000000031  -0.000000021

   52    4.2  0.5 -0.5  -0.000000009  -0.000000031   0.000000022   0.000000029   0.000000004  -0.000000109  -0.000000005   0.000000021
                        -0.000000043   0.000000028   0.000000049  -0.000000018   0.000000017   0.000000031  -0.000000053   0.000000021

   53    5.2  0.5 -0.5  -0.000000041   0.000000191   0.000000087  -0.000000196  -0.000000074   0.000000284  -0.000000065   0.000000022
                         0.000000000  -0.000000178   0.000000060   0.000000058   0.000000005  -0.000000032   0.000000036   0.000000063

   54    6.2  0.5 -0.5   0.000000007  -0.000000103  -0.000000017   0.000000118   0.000000048  -0.000000229   0.000000016   0.000000006
                        -0.000000044   0.000000122   0.000000024  -0.000000058   0.000000012   0.000000041  -0.000000070  -0.000000008

   55    7.2  0.5 -0.5  -0.000000012   0.000000133   0.000000042  -0.000000129  -0.000000048   0.000000204  -0.000000033   0.000000006
                         0.000000009  -0.000000113   0.000000022   0.000000039  -0.000000007  -0.000000014   0.000000028   0.000000034

   56    8.2  0.5 -0.5   0.000000016  -0.000000175  -0.000000057   0.000000178   0.000000075  -0.000000253   0.000000037  -0.000000004
                         0.000000018   0.000000149  -0.000000070  -0.000000030   0.000000009  -0.000000011  -0.000000017  -0.000000053


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  1.5  1.5   0.012798307   0.008979782  -0.000000862  -0.000000148  -0.000000044  -0.000000545  -0.000000008   0.000000866
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.035530885  -0.025908157   0.549310458   0.020134469   0.093958752  -0.362245365  -0.020315144  -0.054023586
                         0.000485404   0.001872042  -0.000091258  -0.037083531  -0.068632489   0.007727103  -0.040850222  -0.008547802

    3    3.2  1.5  1.5  -0.064151180  -0.045493114   0.004989072  -0.028674587   0.020470799  -0.380919508  -0.010325681   0.052644710
                         0.000241404   0.000954224   0.006897851  -0.011981170  -0.044829153   0.006611910   0.086037500   0.081422161

    4    4.2  1.5  1.5  -0.013838557   0.017700370   0.009709340  -0.016087453  -0.157240756   0.006584731   0.105521631   0.055013158
                        -0.066516742  -0.025389452  -0.303719199  -0.078756082  -0.145932940   0.527017792   0.038217116   0.135069299

    5    5.2  1.5  1.5   0.040692212  -0.058822577   0.017037297  -0.092386516   0.098381756  -0.009702219   0.043525049  -0.091235373
                        -0.018810750  -0.012850300  -0.215069895   0.277587661   0.235787684   0.181958123  -0.187058191   0.075215938

    6    6.2  1.5  1.5   0.004417034  -0.003075289   0.048552858  -0.036562726  -0.115154138  -0.020691320   0.465129843   0.002035205
                        -0.027740818   0.069822056   0.079258810  -0.019139754   0.087507380  -0.122422052  -0.130735716  -0.158505531

    7    7.2  1.5  1.5   0.323551885   0.227016644  -0.000021925  -0.000003731  -0.000001195  -0.000013542  -0.000000082   0.000021661
                         0.000000096  -0.000000014  -0.000000003   0.000000015   0.000000038   0.000000004   0.000000015  -0.000000004

    8    8.2  1.5  1.5  -0.098645623   0.140568659  -0.000000225   0.000000743  -0.000010079   0.000001500  -0.000003729  -0.000001758
                        -0.181869440  -0.117786277   0.000014491   0.000000886  -0.000018718   0.000010148   0.000001422  -0.000017942

    9    9.2  1.5  1.5   0.105094061  -0.150080017   0.000000065  -0.000001047   0.000009824  -0.000001736  -0.000004924  -0.000004034
                        -0.149635734  -0.126698398   0.000007537   0.000004396   0.000019218   0.000010891   0.000000196  -0.000018689

   10   10.2  1.5  1.5   0.014761308  -0.012205953   0.000001712  -0.000015294   0.000008540   0.000005176   0.000023463   0.000002185
                        -0.150038953   0.201394996   0.000001602  -0.000004390  -0.000004202   0.000000960  -0.000009522  -0.000002744

   11    1.2  1.5  0.5  -0.013384636   0.019094928   0.000000043  -0.000000115  -0.000000624   0.000000086  -0.000000281  -0.000000043
                        -0.001374059   0.001137843   0.000000061   0.000000402  -0.000001187  -0.000000168  -0.000000862  -0.000000006

   12    2.2  1.5  0.5   0.045825860  -0.063288185  -0.022204282   0.114545811  -0.169341560   0.023662105  -0.001329974   0.037151261
                         0.003846610  -0.004410523   0.107582501  -0.397033714  -0.318081020   0.017669627   0.077639328  -0.013300192

   13    3.2  1.5  0.5  -0.024984924   0.036716304   0.020317865  -0.055185082   0.038085312  -0.024445751   0.233423602   0.043057511
                        -0.003004058   0.001860598  -0.031280842   0.205230582   0.060809117  -0.030301478   0.526721852   0.048560763

   14    4.2  1.5  0.5   0.011797421   0.012440881  -0.106500191  -0.052536344  -0.107832278  -0.114800722   0.279585094  -0.073051844
                         0.018090574  -0.042850995   0.003637984  -0.004941181   0.043368128   0.018171123   0.033343743  -0.185102127

   15    5.2  1.5  0.5  -0.039426031  -0.026195678   0.451801137   0.068027592   0.015664881   0.284346506   0.065976829   0.193629455
                         0.006394525  -0.015134932  -0.005495474  -0.012361884   0.032387174   0.007884691  -0.089763152  -0.130334625

   16    6.2  1.5  0.5   0.000482379  -0.000729756  -0.005781797   0.008769155   0.021297614   0.009615161   0.028944973   0.095345622
                        -0.046859575  -0.018809484   0.026978032  -0.010563010  -0.014726248   0.041944015   0.031563328  -0.307458256

   17    7.2  1.5  0.5  -0.338374851   0.482735973   0.000001087  -0.000002987  -0.000015457   0.000002123  -0.000007011  -0.000001063
                        -0.034737346   0.028765350   0.000001441   0.000010447  -0.000029431  -0.000004221  -0.000021589  -0.000000211

   18    8.2  1.5  0.5   0.059916873   0.054404914   0.000010203   0.000008005  -0.000017069  -0.000007594  -0.000009457  -0.000006349
                         0.052550812  -0.097181800  -0.000000483   0.000000907   0.000008831  -0.000001713   0.000001770  -0.000001813

   19    9.2  1.5  0.5  -0.076750010  -0.048196524  -0.000006856   0.000005347  -0.000018200  -0.000000102  -0.000007804   0.000005156
                         0.052015699  -0.079517459   0.000000166   0.000001958   0.000008899  -0.000001318   0.000006615   0.000001087

   20   10.2  1.5  0.5   0.001876977   0.008344265   0.000000390   0.000000057  -0.000000990   0.000000144  -0.000006255  -0.000004908
                         0.374583582   0.262718882  -0.000007923  -0.000000291  -0.000001726  -0.000008532   0.000000693  -0.000006407

   21    1.2  1.5 -0.5   0.018883337   0.013595767   0.000000419  -0.000000048   0.000000109  -0.000001340   0.000000021  -0.000000907
                        -0.000166445  -0.000655789  -0.000000007  -0.000000057  -0.000000155   0.000000004   0.000000037   0.000000070

   22    2.2  1.5 -0.5  -0.064131303  -0.045512250  -0.413798173  -0.109799664  -0.026706062  -0.359763250  -0.001870074   0.070762797
                         0.000236478   0.000958543   0.003916486  -0.007407905  -0.012910718  -0.002178464  -0.039395068  -0.030785289

   23    3.2  1.5 -0.5   0.035525912   0.025905662   0.212408992   0.035463545   0.037914844   0.070942785  -0.061137720   0.576371265
                        -0.000476613  -0.001881244   0.001553485  -0.011201555   0.007534815   0.006234735  -0.021296467   0.013925276

   24    4.2  1.5 -0.5   0.009381465  -0.012584665   0.009556709  -0.031889542   0.037835286  -0.011996210   0.198694726   0.137142078
                         0.044874325   0.016704210  -0.052082900   0.101295070   0.110131615  -0.116267834  -0.003377407   0.245366803

   25    5.2  1.5 -0.5  -0.028014802   0.037779729  -0.030055274   0.126038084  -0.139273897   0.036379324   0.046867756  -0.057851928
                         0.013659000   0.009186403   0.062172610  -0.433466174  -0.249341510  -0.001102638  -0.228674215   0.095121109

   26    6.2  1.5 -0.5  -0.002020942   0.003007632  -0.012613218  -0.027234671  -0.041698011  -0.003076075   0.246954242   0.040494583
                         0.019186612  -0.045443478   0.005674676  -0.001554162   0.011718626   0.025397779  -0.206349287   0.014693301

   27    7.2  1.5 -0.5   0.477386573   0.343712399   0.000010866  -0.000001121   0.000002742  -0.000033214   0.000000583  -0.000022703
                        -0.004207874  -0.016579108  -0.000000191  -0.000001430  -0.000003856   0.000000097   0.000000904   0.000001774

   28    8.2  1.5 -0.5   0.046317384  -0.067515944  -0.000001208   0.000003163   0.000005065  -0.000000167   0.000004093  -0.000001981
                         0.097584109   0.052376404   0.000007969  -0.000009723   0.000005884  -0.000019215   0.000005125  -0.000009421

   29    9.2  1.5 -0.5  -0.048959294   0.079163819   0.000000522  -0.000001975   0.000001221  -0.000000656  -0.000002983   0.000003109
                         0.077149046   0.054184851   0.000005670   0.000006554  -0.000000510  -0.000020246  -0.000004317  -0.000009757

   30   10.2  1.5 -0.5   0.024043475  -0.024436549  -0.000000296   0.000007729   0.000007534  -0.000002001   0.000007789  -0.000001755
                        -0.262458280   0.372923274  -0.000000035   0.000001751  -0.000004134  -0.000000046   0.000002129  -0.000006044

   31    1.2  1.5 -1.5  -0.009196512   0.012396747  -0.000000039   0.000000231  -0.000000254   0.000000021   0.000000332   0.000000004
                        -0.000643080   0.000963381   0.000000142  -0.000000829  -0.000000483   0.000000039   0.000000800   0.000000008

   32    2.2  1.5 -1.5   0.024987814  -0.036720870   0.041280275  -0.145359679  -0.163160505   0.016408725  -0.028576771   0.045477705
                         0.002995300  -0.001870122  -0.010007589   0.530204577  -0.322465087  -0.115532471  -0.046412103   0.002966866

   33    3.2  1.5 -1.5   0.045807831  -0.063308240   0.003927830   0.006054531  -0.172550078   0.030343644   0.096039329  -0.075509837
                         0.003841128  -0.004415455   0.030543147   0.007579902  -0.340049099  -0.039004365   0.017305588   0.042366616

   34    4.2  1.5 -1.5  -0.016042180  -0.017431805   0.072217621  -0.296363136   0.468397009   0.202668924   0.145479676  -0.075221744
                        -0.025955775   0.066520100   0.036904406  -0.070183036  -0.240697528   0.071008221  -0.000622294  -0.083033830

   35    5.2  1.5 -1.5   0.058687452   0.040142279  -0.292474031  -0.212449225   0.155778733  -0.254230306   0.034568596   0.155849260
                        -0.009739708   0.021258290   0.014542849  -0.040521899  -0.094144589   0.022338874  -0.113016326  -0.111301810

   36    6.2  1.5 -1.5  -0.000496207   0.002896561   0.008183599   0.063689162  -0.118030490  -0.023570254  -0.145672193  -0.056903839
                         0.069003718   0.028242119   0.040669943   0.067819201   0.039514611   0.143146109   0.062256504  -0.479687699

   37    7.2  1.5 -1.5  -0.232495508   0.313400540  -0.000001010   0.000005867  -0.000006321   0.000000524   0.000008296   0.000000036
                        -0.016257732   0.024354459   0.000003578  -0.000021097  -0.000012026   0.000001073   0.000020005   0.000000092

   38    8.2  1.5 -1.5  -0.130057087  -0.113183406  -0.000000627   0.000014012   0.000009680   0.000021248  -0.000017262   0.000000128
                        -0.127837114   0.171076549  -0.000000885   0.000003674  -0.000003397   0.000000155   0.000005228   0.000004006

   39    9.2  1.5 -1.5   0.156774724   0.094625951  -0.000004510   0.000007204   0.000008828  -0.000021558  -0.000018821   0.000001675
                        -0.121774440   0.150140623  -0.000000220   0.000002096  -0.000006616   0.000000271   0.000003423   0.000004629

   40   10.2  1.5 -1.5   0.002046923   0.006580347   0.000000181   0.000001079   0.000003271  -0.000000299  -0.000001701  -0.000000187
                         0.199014705   0.152123257   0.000015929   0.000002073   0.000004120  -0.000009514   0.000003047  -0.000025351

   41    1.2  0.5  0.5   0.000000048   0.000000085  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000025   0.000000201   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   42    2.2  0.5  0.5   0.000000007   0.000000006  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000001   0.000000022  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   43    3.2  0.5  0.5   0.000000006   0.000000098   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000009  -0.000000105  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   44    4.2  0.5  0.5  -0.000000014  -0.000000023  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000005   0.000000046   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   45    5.2  0.5  0.5   0.000000004  -0.000000128  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000008   0.000000137   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   46    6.2  0.5  0.5   0.000000044  -0.000000005  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000016   0.000000093  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   47    7.2  0.5  0.5   0.000000000  -0.000000046  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000006   0.000000011  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   48    8.2  0.5  0.5  -0.000000025  -0.000000106  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000023   0.000000084   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   49    1.2  0.5 -0.5   0.000000049  -0.000000167  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000023   0.000000075  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   50    2.2  0.5 -0.5   0.000000005   0.000000045   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000014  -0.000000029  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   51    3.2  0.5 -0.5  -0.000000015  -0.000000105  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000034   0.000000054   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   52    4.2  0.5 -0.5   0.000000012  -0.000000042  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000033  -0.000000007  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   53    5.2  0.5 -0.5   0.000000032   0.000000185   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000018  -0.000000143  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   54    6.2  0.5 -0.5   0.000000004  -0.000000101  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000033   0.000000074  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   55    7.2  0.5 -0.5   0.000000016   0.000000115   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000017  -0.000000079  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   56    8.2  0.5 -0.5  -0.000000023  -0.000000151  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000008   0.000000117   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  1.5  1.5   0.000000012  -0.000000592  -0.000000010  -0.000000025  -0.000000066  -0.000000203  -0.000000112   0.000000050
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.054472485   0.104754977   0.096641972  -0.031651840   0.060490129   0.124096339  -0.010429398   0.060542874
                        -0.010502555  -0.007014449  -0.024372805  -0.087309685   0.007105755   0.023554731  -0.007414985   0.026562071

    3    3.2  1.5  1.5   0.184932530  -0.330705938  -0.173771423   0.104421137  -0.006267174  -0.105307926  -0.119081923   0.097787690
                         0.102821896   0.113258167   0.050096697   0.159038192   0.000581950  -0.015301435  -0.010730431  -0.032735946

    4    4.2  1.5  1.5   0.106380921   0.073697197   0.015027515  -0.017388099   0.009722853  -0.014976560   0.003839238  -0.020137670
                        -0.018510835  -0.116078068   0.031774205   0.039737542  -0.040968607   0.105675552  -0.112893172   0.065541037

    5    5.2  1.5  1.5  -0.192338521  -0.160303880   0.015996369   0.063139248  -0.053965467   0.007859213   0.018119166   0.014293003
                        -0.078587176   0.102467967  -0.059172357  -0.013571970   0.272066949  -0.072319757  -0.014537750  -0.034565161

    6    6.2  1.5  1.5   0.080403226  -0.101177617   0.085534999  -0.006103942  -0.008158565   0.012402327  -0.009051439  -0.021488856
                        -0.028407933  -0.171333879   0.010194660   0.056056676  -0.002344432   0.044864897  -0.193974840  -0.212432047

    7    7.2  1.5  1.5   0.000000396  -0.000014919  -0.000000584  -0.000001139  -0.000001609  -0.000004676  -0.000002463   0.000000734
                         0.000000014  -0.000000014   0.000000252  -0.000000352   0.000000121   0.000000504  -0.000000134   0.000000751

    8    8.2  1.5  1.5  -0.000004741  -0.000004449  -0.038040404  -0.088252520  -0.026997746   0.112796451  -0.244888612  -0.176773192
                         0.000007006   0.000000395  -0.370096344   0.114252677   0.137500059  -0.241780582  -0.094814903   0.061215928

    9    9.2  1.5  1.5  -0.000002649  -0.000003634  -0.077851285  -0.313353255   0.017045803  -0.058859707   0.274470037   0.285084927
                         0.000008095  -0.000000332  -0.051246482   0.126519976  -0.224861763  -0.077103078  -0.133544445   0.064512843

   10   10.2  1.5  1.5   0.000002925   0.000000038  -0.198243077  -0.048947489   0.489718466  -0.191332410   0.048481734  -0.073804100
                         0.000010171  -0.000002274  -0.036604209  -0.167375098   0.086415748  -0.082299923   0.158781752   0.139860847

   11    1.2  1.5  0.5   0.000000239  -0.000000136  -0.000000014  -0.000000077   0.000000035   0.000000029  -0.000000060  -0.000000061
                        -0.000000177   0.000000056   0.000000074  -0.000000022  -0.000000101   0.000000079  -0.000000002   0.000000089

   12    2.2  1.5  0.5   0.061612695   0.056993399   0.041598279   0.191843562  -0.002905037   0.004902060  -0.083181604  -0.094600410
                         0.026978788  -0.059858743  -0.218570505  -0.013893467   0.050135922  -0.013984650   0.008990362  -0.001144812

   13    3.2  1.5  0.5  -0.269857959   0.043196438   0.020281160   0.098456822  -0.025362237  -0.015758928   0.043918165   0.032383082
                         0.045107029   0.037918466  -0.102891894  -0.018602710   0.122663631  -0.042240162   0.011041750  -0.029982811

   14    4.2  1.5  0.5   0.174594634  -0.186645313   0.063965302  -0.026969047   0.184266725  -0.107068338   0.052880478  -0.064867102
                        -0.284719220  -0.080810590   0.005523549   0.053487519   0.013667863  -0.111288169   0.182692089   0.090332545

   15    5.2  1.5  0.5  -0.140877382   0.132408375  -0.000882872   0.038651832   0.137479025   0.032160499  -0.095975055   0.138050983
                        -0.165079770  -0.128406770   0.013130152   0.041870932   0.014616678  -0.022070179   0.045840917   0.038170134

   16    6.2  1.5  0.5   0.107618225   0.149041182  -0.022525152  -0.036833460  -0.042074227   0.046611708  -0.020288300   0.023817162
                        -0.116175184   0.540066267  -0.047651281  -0.025196900  -0.085723034  -0.092480401   0.031558325  -0.158921891

   17    7.2  1.5  0.5   0.000005974  -0.000003411  -0.000000513  -0.000002559   0.000000923   0.000001311  -0.000001275  -0.000000405
                        -0.000004496   0.000001542   0.000002139  -0.000000355  -0.000002308   0.000001631  -0.000000039   0.000002326

   18    8.2  1.5  0.5  -0.000006384   0.000010471   0.146349190  -0.088416785  -0.344003839   0.141911099   0.172992146  -0.122354461
                        -0.000007787  -0.000001544  -0.049463710  -0.154173220  -0.077101087  -0.048649725   0.283030628   0.268527484

   19    9.2  1.5  0.5   0.000004504  -0.000012654  -0.202231218   0.173804585  -0.219784467   0.057918255  -0.223680851   0.305849886
                        -0.000002703   0.000002752   0.058329506   0.168500226  -0.055802054  -0.045435854   0.216632476   0.203441929

   20   10.2  1.5  0.5  -0.000005732  -0.000006880  -0.072988469  -0.254531540   0.008966638   0.068601140  -0.018895144   0.078394424
                         0.000011833  -0.000015638  -0.282839355   0.099496816  -0.164568188  -0.347879521   0.019427922  -0.138973796

   21    1.2  1.5 -0.5   0.000000144   0.000000264  -0.000000071   0.000000065   0.000000062   0.000000078  -0.000000048   0.000000081
                         0.000000034   0.000000136   0.000000009   0.000000031   0.000000012   0.000000031   0.000000003   0.000000030

   22    2.2  1.5 -0.5  -0.066142105   0.056174478   0.197072360  -0.118367801  -0.003406385  -0.035250391  -0.070553884   0.064700311
                        -0.049564323  -0.036371578  -0.056593852  -0.191305533   0.007846406   0.030676702  -0.003206694   0.033352887

   23    3.2  1.5 -0.5  -0.036221180  -0.273144230   0.091427347  -0.081369581  -0.059030313  -0.088561299   0.035024927  -0.077347603
                         0.044013681   0.001154306  -0.029721212  -0.090386086  -0.003520765  -0.000216632   0.011260500   0.007011306

   24    4.2  1.5 -0.5   0.170871412   0.219588955  -0.022509342  -0.037285862  -0.023243081   0.028092206  -0.038494349  -0.008417148
                        -0.110892046   0.251854599  -0.036633015  -0.000946605  -0.111548783  -0.239477274  -0.148682882   0.127355933

   25    5.2  1.5 -0.5  -0.151463577  -0.111416522  -0.000171591   0.026045852  -0.037751239  -0.027003665   0.119955680   0.115051633
                        -0.104176275   0.186067405  -0.042522679  -0.018431815   0.077045105  -0.123666959  -0.044895807   0.005606757

   26    6.2  1.5 -0.5  -0.056155818   0.125799852  -0.044646972   0.019399427  -0.136310212   0.050933725  -0.010609585   0.032403813
                         0.557421346   0.096461243   0.001967235  -0.033325371  -0.015584235   0.051266868   0.135490253   0.069241318

   27    7.2  1.5 -0.5   0.000003619   0.000006621  -0.000001981   0.000001433   0.000001515   0.000002407  -0.000001226   0.000002875
                         0.000000986   0.000003454   0.000000288   0.000001182   0.000000310   0.000000472   0.000000048   0.000000604

   28    8.2  1.5 -0.5  -0.000010595  -0.000005005  -0.041566017  -0.175879759   0.001200990   0.037377884  -0.164422715  -0.186919876
                         0.000000218   0.000008709   0.224190192   0.097423907   0.121239412   0.215730447  -0.217374638   0.367523607

   29    9.2  1.5 -0.5   0.000012911   0.000004877   0.050094329   0.228229184  -0.034659729  -0.140429334   0.254730190   0.137821810
                         0.000000598   0.000001876  -0.186091916   0.034821733   0.218950967   0.194127728  -0.197179274   0.268113195

   30   10.2  1.5 -0.5   0.000004164  -0.000007614  -0.321903255   0.007284742  -0.324449291   0.137903127  -0.021189338   0.065238605
                        -0.000016582  -0.000010704  -0.067478271  -0.279758740  -0.066531154   0.060213412   0.049391659   0.114547733

   31    1.2  1.5 -1.5  -0.000000584  -0.000000012  -0.000000008   0.000000024  -0.000000032   0.000000018  -0.000000119  -0.000000150
                         0.000000100   0.000000003   0.000000025  -0.000000025   0.000000193  -0.000000057   0.000000026  -0.000000023

   32    2.2  1.5 -1.5   0.104986528   0.051799129   0.023275193   0.095428810   0.026829796  -0.016221543  -0.027525575  -0.042764491
                        -0.010330695  -0.019587379  -0.109854870   0.003367859  -0.119102721   0.050679923  -0.008205543   0.025280164

   33    3.2  1.5 -1.5  -0.344525542  -0.165234954  -0.044244141  -0.190520621  -0.005871118   0.067804618  -0.115466307  -0.074211634
                        -0.055746044   0.132164599   0.200838609   0.016108904   0.043099763  -0.030640456   0.003477835   0.008042338

   34    4.2  1.5 -1.5   0.091519991  -0.107567215   0.018892613  -0.001296228  -0.122895882  -0.058958726  -0.002680661  -0.010901168
                         0.102939514  -0.000892159   0.009688672  -0.029407070  -0.014846180  -0.030590373   0.033103417   0.107085966

   35    5.2  1.5 -1.5  -0.175289377   0.176728688  -0.059009472   0.094742835   0.085414387   0.237057132   0.003887216   0.094878820
                        -0.074210339  -0.109288185   0.029510936   0.063454647   0.002000203   0.001452180  -0.004833687   0.046875958

   36    6.2  1.5 -1.5  -0.071581029  -0.083499597   0.022900991   0.082629541   0.007355483  -0.037085133   0.019696659  -0.023591901
                         0.185573639  -0.014883422   0.082568275  -0.032069753   0.035905357  -0.048726158  -0.206639694   0.179444883

   37    7.2  1.5 -1.5  -0.000014723  -0.000000381  -0.000000037  -0.000000387  -0.000000711   0.000001449  -0.000002350  -0.000001449
                         0.000002543   0.000000099   0.000000299  -0.000000414   0.000004371  -0.000001778   0.000000378  -0.000000389

   38    8.2  1.5 -1.5  -0.000004482   0.000005833   0.118338609   0.112468623   0.139081094   0.156553752   0.246071832  -0.193194743
                         0.000000345   0.000006089   0.101178874   0.384941493   0.004256933  -0.115461875   0.112096482   0.036329716

   39    9.2  1.5 -1.5  -0.000003559   0.000003933   0.392184353  -0.084056096   0.059524334  -0.281346431  -0.248500205   0.197198438
                         0.000000921   0.000007573   0.011308624   0.061975826   0.027773003  -0.047084322   0.077762766   0.067331751

   40   10.2  1.5 -1.5   0.000000371  -0.000001166  -0.054421555  -0.201071174   0.003095708   0.004855928   0.011302792   0.000574976
                         0.000002231   0.000010487  -0.183596917   0.197113235   0.188465052   0.478059256   0.184333380  -0.011886433

   41    1.2  0.5  0.5   0.000000000   0.000000000   0.000000048   0.000000193   0.000000061  -0.000000146  -0.000000051  -0.000000429
                        -0.000000000   0.000000000   0.000000012  -0.000000373   0.000000076   0.000000343   0.000000057   0.000000483

   42    2.2  0.5  0.5   0.000000000   0.000000000   0.000000021   0.000000044  -0.000000004  -0.000000026   0.000000004  -0.000000055
                        -0.000000000  -0.000000000  -0.000000012  -0.000000042  -0.000000023   0.000000039   0.000000019   0.000000026

   43    3.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000070  -0.000000321   0.000000024   0.000000267   0.000000045   0.000000327
                        -0.000000000  -0.000000000   0.000000077  -0.000000069   0.000000069   0.000000046  -0.000000058   0.000000320

   44    4.2  0.5  0.5   0.000000000  -0.000000000  -0.000000051   0.000000076  -0.000000059  -0.000000059  -0.000000039  -0.000000155
                        -0.000000000   0.000000000  -0.000000011  -0.000000039   0.000000030   0.000000029   0.000000030  -0.000000012

   45    5.2  0.5  0.5   0.000000000   0.000000000   0.000000073   0.000000415  -0.000000015  -0.000000390  -0.000000063  -0.000000503
                         0.000000000   0.000000000  -0.000000068   0.000000014   0.000000024  -0.000000048   0.000000087  -0.000000385

   46    6.2  0.5  0.5   0.000000000   0.000000000   0.000000117   0.000000167   0.000000046  -0.000000153  -0.000000028  -0.000000175
                         0.000000000   0.000000000   0.000000007  -0.000000076  -0.000000006   0.000000063   0.000000029   0.000000092

   47    7.2  0.5  0.5   0.000000000  -0.000000000   0.000000005   0.000000072   0.000000026  -0.000000072  -0.000000031  -0.000000053
                         0.000000000   0.000000000   0.000000042   0.000000050   0.000000021  -0.000000041  -0.000000024  -0.000000099

   48    8.2  0.5  0.5   0.000000000  -0.000000000  -0.000000010   0.000000309  -0.000000038  -0.000000329  -0.000000040  -0.000000387
                         0.000000000   0.000000000  -0.000000068   0.000000013   0.000000043  -0.000000069   0.000000064  -0.000000408

   49    1.2  0.5 -0.5   0.000000000  -0.000000000   0.000000095   0.000000266   0.000000051  -0.000000306   0.000000004  -0.000000423
                         0.000000000   0.000000000   0.000000065   0.000000106  -0.000000028  -0.000000087  -0.000000047  -0.000000297

   50    2.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000005  -0.000000073   0.000000005   0.000000073   0.000000022   0.000000107
                        -0.000000000  -0.000000000  -0.000000009  -0.000000057  -0.000000021  -0.000000024   0.000000014   0.000000046

   51    3.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000057   0.000000134  -0.000000027  -0.000000101  -0.000000041  -0.000000281
                         0.000000000   0.000000000   0.000000058   0.000000090   0.000000003   0.000000002  -0.000000017  -0.000000052

   52    4.2  0.5 -0.5  -0.000000000   0.000000000   0.000000039   0.000000034   0.000000089  -0.000000088   0.000000002  -0.000000177
                         0.000000000   0.000000000   0.000000065   0.000000018  -0.000000023  -0.000000013  -0.000000012  -0.000000027

   53    5.2  0.5 -0.5  -0.000000000   0.000000000   0.000000072  -0.000000312   0.000000149   0.000000306   0.000000138   0.000000507
                        -0.000000000  -0.000000000  -0.000000031  -0.000000090  -0.000000077   0.000000012   0.000000006   0.000000220

   54    6.2  0.5 -0.5   0.000000000  -0.000000000   0.000000012   0.000000182   0.000000025  -0.000000225  -0.000000076  -0.000000399
                         0.000000000   0.000000000   0.000000079   0.000000030   0.000000012   0.000000002   0.000000007  -0.000000123

   55    7.2  0.5 -0.5  -0.000000000   0.000000000   0.000000019  -0.000000203   0.000000059   0.000000210   0.000000088   0.000000349
                        -0.000000000  -0.000000000  -0.000000026  -0.000000070  -0.000000034   0.000000015   0.000000008   0.000000165

   56    8.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000042   0.000000273  -0.000000142  -0.000000265  -0.000000131  -0.000000417
                         0.000000000   0.000000000  -0.000000014   0.000000085   0.000000027  -0.000000036  -0.000000019  -0.000000261


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  1.5  1.5   0.000000983   0.000000193  -0.000000042   0.000000086  -0.000000032   0.000000029   0.000000011   0.000000007
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.000000070   0.000000019   0.000000019   0.000000007   0.000000000   0.000000001   0.000000004   0.000000001
                        -0.000000013   0.000000014   0.000000010  -0.000000003   0.000000007  -0.000000001   0.000000003   0.000000001

    3    3.2  1.5  1.5   0.000000088  -0.000000016   0.000000001   0.000000012   0.000000003  -0.000000006  -0.000000005  -0.000000001
                         0.000000029  -0.000000002   0.000000031   0.000000002  -0.000000006   0.000000000  -0.000000001  -0.000000002

    4    4.2  1.5  1.5  -0.000000028   0.000000015  -0.000000029   0.000000004  -0.000000005   0.000000002  -0.000000003   0.000000000
                         0.000000006   0.000000002   0.000000014   0.000000003  -0.000000002  -0.000000003  -0.000000000   0.000000000

    5    5.2  1.5  1.5   0.000000031  -0.000000076   0.000000008  -0.000000003   0.000000001   0.000000000   0.000000001  -0.000000000
                        -0.000000032   0.000000032  -0.000000004   0.000000014   0.000000010  -0.000000002   0.000000004   0.000000001

    6    6.2  1.5  1.5  -0.000000057   0.000000004  -0.000000009   0.000000004  -0.000000002   0.000000004  -0.000000003  -0.000000000
                         0.000000076   0.000000014  -0.000000025  -0.000000018  -0.000000002  -0.000000004   0.000000001   0.000000001

    7    7.2  1.5  1.5  -0.000000053  -0.000000010   0.000000002  -0.000000005   0.000000002  -0.000000002  -0.000000001  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    8    8.2  1.5  1.5   0.000000006   0.000000001  -0.000000005  -0.000000007   0.000000001  -0.000000002   0.000000002   0.000000000
                         0.000000173   0.000000022  -0.000000006   0.000000005   0.000000004  -0.000000000   0.000000000  -0.000000000

    9    9.2  1.5  1.5  -0.000000028   0.000000004  -0.000000011   0.000000004   0.000000005   0.000000001  -0.000000001   0.000000001
                         0.000000090  -0.000000004  -0.000000008   0.000000016  -0.000000009   0.000000002  -0.000000003   0.000000000

   10   10.2  1.5  1.5  -0.000000030   0.000000006   0.000000004   0.000000015   0.000000002  -0.000000003   0.000000004   0.000000001
                        -0.000000064   0.000000048   0.000000008   0.000000009  -0.000000004   0.000000002  -0.000000001  -0.000000001

   11    1.2  1.5  0.5   0.000000282  -0.000000100  -0.000000100   0.000000007   0.000000017   0.000000005  -0.000000003   0.000000003
                        -0.000000284  -0.000000099   0.000000013   0.000000129  -0.000000015  -0.000000006  -0.000000007  -0.000000002

   12    2.2  1.5  0.5  -0.000000037  -0.000000012   0.000000012  -0.000000008   0.000000003  -0.000000006   0.000000002   0.000000000
                         0.000000062   0.000000007  -0.000000006  -0.000000009   0.000000009  -0.000000002   0.000000005   0.000000001

   13    3.2  1.5  0.5   0.000000015  -0.000000013  -0.000000003  -0.000000008   0.000000005  -0.000000001   0.000000001   0.000000000
                         0.000000054  -0.000000014   0.000000019   0.000000012  -0.000000000  -0.000000002   0.000000002   0.000000000

   14    4.2  1.5  0.5  -0.000000050   0.000000034   0.000000001   0.000000011   0.000000006  -0.000000002   0.000000003   0.000000000
                        -0.000000116   0.000000049   0.000000016   0.000000007   0.000000004  -0.000000001  -0.000000003   0.000000000

   15    5.2  1.5  0.5  -0.000000042   0.000000003  -0.000000010   0.000000009   0.000000006  -0.000000002  -0.000000000  -0.000000003
                        -0.000000058   0.000000016   0.000000001   0.000000011   0.000000000  -0.000000000   0.000000001  -0.000000002

   16    6.2  1.5  0.5  -0.000000046  -0.000000004  -0.000000032   0.000000000  -0.000000000   0.000000001   0.000000002  -0.000000001
                         0.000000130  -0.000000009   0.000000001  -0.000000007   0.000000003  -0.000000003  -0.000000002   0.000000002

   17    7.2  1.5  0.5  -0.000000015   0.000000005   0.000000005  -0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000
                         0.000000015   0.000000005  -0.000000001  -0.000000007   0.000000001   0.000000000   0.000000000   0.000000000

   18    8.2  1.5  0.5   0.000000065   0.000000019   0.000000004  -0.000000017  -0.000000003   0.000000001   0.000000002   0.000000002
                         0.000000014  -0.000000024   0.000000012  -0.000000000   0.000000003   0.000000003   0.000000001   0.000000000

   19    9.2  1.5  0.5  -0.000000031  -0.000000022  -0.000000002  -0.000000010  -0.000000002  -0.000000003   0.000000000  -0.000000001
                         0.000000001  -0.000000025  -0.000000001   0.000000008   0.000000000   0.000000002  -0.000000000  -0.000000002

   20   10.2  1.5  0.5  -0.000000007   0.000000003  -0.000000011   0.000000005   0.000000006  -0.000000001   0.000000001  -0.000000001
                        -0.000000025  -0.000000023   0.000000006  -0.000000009   0.000000002  -0.000000004  -0.000000003  -0.000000000

   21    1.2  1.5 -0.5   0.000000067  -0.000000045  -0.000000059   0.000000037  -0.000000016   0.000000006   0.000000006   0.000000007
                        -0.000000066  -0.000000036  -0.000000104   0.000000041   0.000000016  -0.000000008  -0.000000018  -0.000000001

   22    2.2  1.5 -0.5  -0.000000110  -0.000000004   0.000000018  -0.000000018   0.000000006   0.000000006   0.000000001  -0.000000000
                         0.000000050   0.000000035   0.000000024  -0.000000004   0.000000003  -0.000000001  -0.000000000  -0.000000001

   23    3.2  1.5 -0.5  -0.000000014  -0.000000007   0.000000005  -0.000000012  -0.000000000   0.000000003  -0.000000001   0.000000004
                        -0.000000018   0.000000008   0.000000002  -0.000000005   0.000000001  -0.000000001  -0.000000005   0.000000002

   24    4.2  1.5 -0.5   0.000000016  -0.000000017  -0.000000013   0.000000006   0.000000008   0.000000000   0.000000004   0.000000000
                        -0.000000015  -0.000000039   0.000000007  -0.000000016  -0.000000001   0.000000005  -0.000000002  -0.000000000

   25    5.2  1.5 -0.5  -0.000000050  -0.000000047   0.000000002   0.000000005   0.000000003   0.000000001   0.000000001   0.000000000
                         0.000000005  -0.000000032   0.000000018   0.000000023  -0.000000003   0.000000002  -0.000000002   0.000000001

   26    6.2  1.5 -0.5   0.000000051  -0.000000005   0.000000002  -0.000000000   0.000000002   0.000000000  -0.000000004  -0.000000000
                         0.000000081  -0.000000015  -0.000000002  -0.000000003   0.000000009   0.000000002   0.000000001   0.000000000

   27    7.2  1.5 -0.5  -0.000000004   0.000000002   0.000000003  -0.000000002   0.000000001  -0.000000000  -0.000000000  -0.000000000
                         0.000000004   0.000000002   0.000000006  -0.000000002  -0.000000001   0.000000000   0.000000001   0.000000000

   28    8.2  1.5 -0.5   0.000000148  -0.000000007  -0.000000008  -0.000000006  -0.000000002  -0.000000000  -0.000000001  -0.000000000
                        -0.000000104   0.000000018  -0.000000004   0.000000005  -0.000000000  -0.000000001  -0.000000001  -0.000000000

   29    9.2  1.5 -0.5  -0.000000054   0.000000002   0.000000019   0.000000005   0.000000000   0.000000001   0.000000000  -0.000000000
                         0.000000030  -0.000000021   0.000000010   0.000000010  -0.000000000  -0.000000001   0.000000001   0.000000000

   30   10.2  1.5 -0.5   0.000000038  -0.000000036  -0.000000002   0.000000010  -0.000000001  -0.000000001   0.000000001   0.000000000
                         0.000000111  -0.000000009  -0.000000001  -0.000000010  -0.000000001   0.000000001  -0.000000000  -0.000000001

   31    1.2  1.5 -1.5  -0.000000748   0.000000001   0.000000037   0.000000094   0.000000005   0.000000024   0.000000004   0.000000009
                         0.000000266  -0.000000230   0.000000032   0.000000092  -0.000000009  -0.000000009   0.000000017  -0.000000001

   32    2.2  1.5 -1.5  -0.000000113   0.000000003   0.000000005   0.000000001  -0.000000002  -0.000000006  -0.000000001   0.000000001
                         0.000000023  -0.000000014  -0.000000003  -0.000000005  -0.000000004  -0.000000001   0.000000001   0.000000002

   33    3.2  1.5 -1.5   0.000000188  -0.000000004  -0.000000016  -0.000000009   0.000000004   0.000000004  -0.000000000   0.000000001
                        -0.000000126   0.000000045  -0.000000015  -0.000000026  -0.000000004  -0.000000001   0.000000004  -0.000000001

   34    4.2  1.5 -1.5  -0.000000011  -0.000000001   0.000000003  -0.000000023  -0.000000003   0.000000001   0.000000004   0.000000001
                         0.000000037   0.000000002   0.000000020  -0.000000001  -0.000000002   0.000000004   0.000000000  -0.000000001

   35    5.2  1.5 -1.5  -0.000000004   0.000000010  -0.000000023   0.000000016  -0.000000005  -0.000000005   0.000000002   0.000000001
                        -0.000000139  -0.000000033  -0.000000045   0.000000011   0.000000003   0.000000002   0.000000001   0.000000000

   36    6.2  1.5 -1.5   0.000000106  -0.000000025   0.000000021   0.000000004   0.000000002   0.000000002   0.000000004  -0.000000001
                        -0.000000118  -0.000000033   0.000000004  -0.000000002  -0.000000002   0.000000003  -0.000000001   0.000000002

   37    7.2  1.5 -1.5   0.000000041  -0.000000000  -0.000000002  -0.000000005  -0.000000000  -0.000000001  -0.000000000  -0.000000001
                        -0.000000014   0.000000012  -0.000000002  -0.000000005   0.000000000   0.000000000  -0.000000001   0.000000000

   38    8.2  1.5 -1.5   0.000000034   0.000000007  -0.000000007   0.000000011  -0.000000002  -0.000000004   0.000000004   0.000000000
                        -0.000000006  -0.000000015  -0.000000002  -0.000000003   0.000000000  -0.000000004   0.000000000  -0.000000000

   39    9.2  1.5 -1.5  -0.000000072  -0.000000021   0.000000005  -0.000000008  -0.000000000   0.000000002   0.000000002  -0.000000001
                        -0.000000002   0.000000018   0.000000007  -0.000000010  -0.000000005  -0.000000004  -0.000000001  -0.000000001

   40   10.2  1.5 -1.5   0.000000033   0.000000023   0.000000019  -0.000000004   0.000000000  -0.000000002  -0.000000004   0.000000000
                         0.000000022   0.000000017  -0.000000014   0.000000007   0.000000000  -0.000000004   0.000000000  -0.000000002

   41    1.2  0.5  0.5   0.107831220   0.343637218  -0.207505602  -0.164532049  -0.217308556  -0.226990302   0.085879784   0.047847197
                         0.153638556   0.022558356   0.133650690  -0.199329478   0.046477148  -0.084022723  -0.060687307  -0.069823551

   42    2.2  0.5  0.5   0.085095885  -0.028719133   0.056949834  -0.021134812   0.263318090  -0.180712919   0.510103924   0.034090098
                        -0.006289452   0.128371000  -0.088531693   0.106324767  -0.259724518   0.125830100  -0.158427153  -0.102059386

   43    3.2  0.5  0.5  -0.277073117   0.493596089   0.030805399   0.183730238   0.111111910   0.138771664  -0.086579377   0.014326436
                         0.131194152  -0.251975184  -0.028832655  -0.252921213  -0.302275617   0.082777328  -0.057583292  -0.081739061

   44    4.2  0.5  0.5  -0.137788962   0.135024719   0.339008491   0.099815417  -0.043879790   0.099082150   0.238919956  -0.275404171
                        -0.118395135   0.050286577  -0.028623100  -0.248107251   0.117899204   0.121372763   0.263685554   0.213581215

   45    5.2  0.5  0.5   0.265616262  -0.029279343   0.057859128   0.038757882  -0.056013825  -0.110987746  -0.206328992  -0.116641650
                        -0.088565360  -0.083179494   0.015166676  -0.186074022  -0.361838993   0.194355150  -0.119609104   0.177493115

   46    6.2  0.5  0.5   0.304543390   0.160579253  -0.332888930   0.034752241  -0.036983240   0.395848584   0.093370318  -0.232047200
                         0.217211924   0.015994671  -0.233637729   0.161079079  -0.014451795   0.043188048   0.005913107   0.064426441

   47    7.2  0.5  0.5  -0.005977798   0.079316751   0.003717488  -0.328856230   0.429098026  -0.047820848  -0.140931557  -0.016570913
                         0.095203424  -0.111817346  -0.164063817  -0.100391819   0.210621897  -0.022982400  -0.099228549   0.294084066

   48    8.2  0.5  0.5   0.088233114   0.121352085   0.077694391  -0.101242169   0.032180346   0.167152154   0.018384708   0.121661039
                        -0.239059195  -0.267882872  -0.232643130  -0.197267188   0.167938699  -0.079811836  -0.069768361  -0.365277432

   49    1.2  0.5 -0.5   0.281256661   0.234808437   0.095370305  -0.052157801   0.129741815  -0.075268597   0.037017792   0.038906066
                         0.278438547  -0.045482540   0.415410872  -0.008791458   0.075939585  -0.030513734   0.121276001  -0.029794878

   50    2.2  0.5 -0.5   0.051701003   0.185351960   0.340135814  -0.055790791  -0.001529800  -0.095945700  -0.212994979  -0.051734081
                        -0.023266875   0.010654928  -0.194728791   0.183445965  -0.155257773  -0.400161052  -0.006981429  -0.150290871

   51    3.2  0.5 -0.5  -0.239196424  -0.265792526   0.202387310  -0.290763104  -0.057449228   0.222475192  -0.048509190  -0.001308697
                         0.081737099   0.221197827   0.227877044  -0.145925120  -0.184951482  -0.053615339  -0.248272945  -0.004852557

   52    4.2  0.5 -0.5   0.021869429  -0.198239855   0.246775641   0.249054048  -0.007996930  -0.201509180  -0.269612740   0.077518456
                         0.226556983  -0.075270605  -0.141965892  -0.036324599   0.062923064   0.111830832  -0.089807051   0.298357697

   53    5.2  0.5 -0.5   0.351680896  -0.145860711   0.124681581   0.134698469   0.183542510   0.412018355  -0.124668397  -0.042335117
                         0.104662676   0.077289279  -0.002521905  -0.018095253   0.045713397   0.052958780   0.031423451  -0.065993739

   54    6.2  0.5 -0.5  -0.090063792  -0.106200606   0.131816663   0.235273977  -0.213534215   0.249792210   0.339332756  -0.002656299
                         0.172281410  -0.232430327  -0.036669508   0.345634526   0.073478945  -0.096286773  -0.006897107  -0.080235930

   55    7.2  0.5 -0.5   0.162331444   0.029869626   0.050737379  -0.176796577  -0.166905514  -0.011244204   0.260978985  -0.177431647
                         0.022411670   0.080726537   0.017344642   0.015882400  -0.199705749  -0.054274763   0.066267945   0.489907661

   56    8.2  0.5 -0.5  -0.153675033   0.188685456  -0.073991503   0.085568515   0.210170237   0.251011309  -0.234697245  -0.138118536
                        -0.199246115  -0.073063307   0.050652136   0.284012299   0.118285712   0.069035643  -0.010787756   0.298217975


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  56.739%   1.670%
    2    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
    8    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.055%   0.008%
    9    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.028%   0.004%
   10   10.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.011%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.395%  23.348%
   12    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   18    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.026%
   19    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.015%
   20   10.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.044%   0.050%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.166%  70.975%
   22    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   28    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.021%   0.005%
   29    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   0.026%
   30   10.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.012%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  26.470%   3.778%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.025%   0.005%
   39    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.032%
   40   10.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.032%
   41    1.2  0.5  0.5   1.224%   2.146%   1.238%   5.074%   5.502%  27.175%   0.603%  16.264%   0.000%   0.000%
   42    2.2  0.5  0.5   1.198%  19.839%  17.043%   4.555%   2.541%   1.531%   0.117%   0.218%   0.000%   0.000%
   43    3.2  0.5  0.5   0.414%   6.800%   6.126%   1.465%   3.396%   0.219%   7.592%   9.174%   0.000%   0.000%
   44    4.2  0.5  0.5  14.542%   3.545%   4.997%   9.685%   6.312%   6.577%   0.498%   0.895%   0.000%   0.000%
   45    5.2  0.5  0.5   4.797%   0.511%  14.846%  10.524%   0.561%   1.171%  10.783%  15.606%   0.000%   0.000%
   46    6.2  0.5  0.5   5.977%   7.794%   1.757%   0.125%  23.271%   0.155%   0.230%   2.150%   0.000%   0.000%
   47    7.2  0.5  0.5   3.710%  14.242%   4.376%  10.573%   7.493%   6.861%   0.051%   0.611%   0.000%   0.000%
   48    8.2  0.5  0.5  15.796%   1.588%   0.690%   4.322%   5.082%   1.616%  13.713%   9.420%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.130%   0.704%   2.159%   0.345%   1.097%  22.874%  18.595%   9.499%   0.000%   0.000%
   50    2.2  0.5 -0.5   5.285%   1.803%   7.654%  22.388%   4.905%   6.586%   1.417%   0.746%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.251%   0.755%   8.432%  13.279%  13.204%   2.433%   5.429%   2.607%   0.000%   0.000%
   52    4.2  0.5 -0.5   6.535%   7.629%   9.563%   1.651%   5.363%   7.216%  14.229%   0.405%   0.000%   0.000%
   53    5.2  0.5 -0.5   1.328%   5.390%   7.034%  10.325%   4.134%   4.799%  11.785%  12.514%   0.000%   0.000%
   54    6.2  0.5 -0.5   1.080%  13.224%   5.927%   1.453%   6.179%   8.172%   4.974%   4.899%   0.000%   0.000%
   55    7.2  0.5 -0.5  26.577%   5.145%   5.497%   2.683%   2.230%   1.764%   2.349%   5.410%   0.000%   0.000%
   56    8.2  0.5 -0.5  11.157%   8.885%   2.660%   1.554%   8.734%   0.850%   7.636%   9.582%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5  30.579%  10.783%   0.000%   0.000%   0.059%   0.020%   0.021%   0.002%   0.045%   0.003%
    2    2.2  1.5  1.5   0.000%   0.000%   8.288%   5.836%   6.521%   0.676%   2.343%   1.192%   0.740%   0.513%
    3    3.2  1.5  1.5   0.000%   0.000%   2.133%   1.501%   2.262%   1.459%   5.958%   1.053%   7.255%   0.196%
    4    4.2  1.5  1.5   0.000%   0.000%   6.972%   8.669%   1.609%   0.810%   7.800%   0.513%   0.235%   0.347%
    5    5.2  1.5  1.5   0.000%   0.000%   5.363%   0.474%   1.013%   2.790%   1.407%   5.522%   0.002%   0.595%
    6    6.2  1.5  1.5   0.000%   0.000%   1.755%   3.403%   0.494%   3.019%   0.925%   6.293%   0.032%   0.967%
    7    7.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   7.069%   2.381%   2.517%   0.211%  34.575%   2.089%
    8    8.2  1.5  1.5   0.008%   0.021%   0.540%   0.767%   7.830%   0.446%   4.283%   1.525%   6.332%   0.502%
    9    9.2  1.5  1.5   0.054%   0.001%   0.619%   0.879%   4.190%   5.689%   1.136%   2.141%   4.784%   0.541%
   10   10.2  1.5  1.5   0.022%   0.008%   1.157%   1.644%   0.200%   2.039%   1.378%   3.204%   0.022%   0.423%
   11    1.2  1.5  0.5  46.378%  17.650%   0.000%   0.000%   0.003%   0.031%   0.019%   0.049%   0.000%   0.005%
   12    2.2  1.5  0.5   0.000%   0.000%   1.500%   2.134%   0.834%   1.737%   1.436%   6.725%   0.441%   5.589%
   13    3.2  1.5  0.5   0.000%   0.000%   5.836%   8.288%   1.114%   6.861%   0.997%   1.761%   0.021%   2.158%
   14    4.2  1.5  0.5   0.000%   0.000%   1.242%   0.874%   4.469%   2.745%   0.124%   3.394%   0.518%   7.053%
   15    5.2  1.5  0.5   0.000%   0.000%   6.995%   4.925%   3.804%   4.470%   2.200%   0.257%   8.136%   0.058%
   16    6.2  1.5  0.5   0.000%   0.000%   7.395%   5.204%   5.855%   2.285%   2.518%   0.073%   7.346%   0.741%
   17    7.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.319%   3.735%   2.300%   5.824%   0.132%   3.711%
   18    8.2  1.5  0.5   0.011%   0.011%   0.204%   2.226%   6.428%   0.187%   0.399%   1.608%   1.246%   0.301%
   19    9.2  1.5  0.5   0.042%   0.002%   1.900%   0.339%   5.589%   2.280%   1.144%   0.541%   1.209%   0.513%
   20   10.2  1.5  0.5   0.001%   0.011%   0.536%   0.400%   0.273%   0.957%  11.996%   2.661%   5.223%   0.068%
   21    1.2  1.5 -0.5  15.486%   9.144%   0.000%   0.000%   0.024%   0.000%   0.058%   0.020%   0.001%   0.001%
   22    2.2  1.5 -0.5   0.000%   0.000%   2.134%   1.500%   2.262%   1.459%   5.956%   1.054%   7.255%   0.196%
   23    3.2  1.5 -0.5   0.000%   0.000%   8.288%   5.836%   6.522%   0.675%   2.343%   1.192%   0.740%   0.514%
   24    4.2  1.5 -0.5   0.000%   0.000%   0.874%   1.242%   3.429%   4.658%   2.500%   0.144%   7.697%   0.329%
   25    5.2  1.5 -0.5   0.000%   0.000%   4.925%   6.995%   4.093%   2.932%   0.424%   3.282%   0.080%   7.323%
   26    6.2  1.5 -0.5   0.000%   0.000%   5.204%   7.395%   2.042%   5.119%   0.106%   3.465%   0.870%   6.641%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   2.897%   0.042%   6.900%   2.338%   0.932%   1.059%
   28    8.2  1.5 -0.5   0.028%   0.004%   2.226%   0.204%   0.264%   5.871%   1.737%   0.750%   0.007%   1.725%
   29    9.2  1.5 -0.5   0.018%   0.001%   0.339%   1.900%   2.570%   6.030%   0.345%   0.607%   0.127%   2.248%
   30   10.2  1.5 -0.5   0.019%   0.074%   0.400%   0.536%   0.299%   0.414%   3.150%  12.023%   0.347%   3.702%
   31    1.2  1.5 -1.5   7.328%  62.194%   0.000%   0.000%   0.016%   0.050%   0.004%   0.032%   0.002%   0.040%
   32    2.2  1.5 -1.5   0.000%   0.000%   5.836%   8.288%   1.114%   6.860%   0.996%   1.761%   0.021%   2.158%
   33    3.2  1.5 -1.5   0.000%   0.000%   1.501%   2.133%   0.835%   1.736%   1.434%   6.726%   0.440%   5.589%
   34    4.2  1.5 -1.5   0.000%   0.000%   8.669%   6.972%   1.225%   2.518%   0.308%   6.680%   0.005%   0.727%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.474%   5.363%   1.821%   0.538%   6.701%   1.671%   0.238%   0.479%
   36    6.2  1.5 -1.5   0.000%   0.000%   3.403%   1.755%   2.340%   0.309%   7.182%   0.900%   0.207%   0.107%
   37    7.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   1.892%   6.020%   0.461%   3.804%   1.918%  30.699%
   38    8.2  1.5 -1.5   0.009%   0.055%   0.767%   0.540%   0.213%   5.867%   1.778%   6.227%   0.130%   4.506%
   39    9.2  1.5 -1.5   0.009%   0.033%   0.879%   0.619%   4.597%   4.246%   2.940%   1.373%   0.587%   5.498%
   40   10.2  1.5 -1.5   0.007%   0.005%   1.644%   1.157%   1.608%   0.037%   3.775%   1.401%   0.099%   0.087%
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

    1    1.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   5.235%   1.968%   1.350%   0.434%   3.041%   3.425%   0.498%   3.864%   0.625%   1.610%
    3    3.2  1.5  1.5   0.520%   0.485%   0.347%   0.111%   9.657%  11.607%   0.047%   5.409%   1.705%   3.715%
    4    4.2  1.5  1.5   6.209%   1.665%   1.587%   0.388%   0.503%   0.202%   1.185%   1.006%   3.950%   3.460%
    5    5.2  1.5  1.5   3.581%   4.277%   0.376%   0.361%   1.451%   1.224%  19.137%   1.168%   3.903%   1.250%
    6    6.2  1.5  1.5   1.104%   6.352%   0.007%   0.645%   2.913%   1.976%   3.361%   0.252%  13.169%   7.696%
    7    7.2  1.5  1.5   0.762%   0.131%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.681%   0.803%   2.516%   7.832%   4.903%   0.658%   2.583%   1.169%   1.455%   0.820%
    9    9.2  1.5  1.5   0.856%   1.587%   2.884%   8.980%   0.265%   4.584%   3.278%   1.122%   1.955%   0.636%
   10   10.2  1.5  1.5   1.236%   2.347%   5.393%  16.789%   1.689%   1.125%   9.846%   0.325%   0.238%   0.340%
   11    1.2  1.5  0.5   0.015%   0.028%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.316%   2.111%   0.111%   0.348%  16.107%  12.435%   1.696%   0.045%   1.286%   0.569%
   13    3.2  1.5  0.5   2.387%   3.891%   0.434%   1.350%   3.484%   2.784%   2.498%   0.434%   2.650%   1.214%
   14    4.2  1.5  0.5   0.044%   0.840%   0.202%   0.065%   0.730%   0.683%  23.331%   0.281%   7.662%   2.210%
   15    5.2  1.5  0.5   0.141%   0.120%   1.139%   0.366%   0.019%   0.522%   6.906%   0.139%   1.710%   7.775%
   16    6.2  1.5  0.5   0.204%   0.165%   1.204%   0.387%   0.804%   0.556%   1.473%   2.484%   1.988%   8.531%
   17    7.2  1.5  0.5  11.801%  21.914%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   2.579%   0.965%   5.492%  13.756%   0.690%   1.417%   1.435%   1.261%   6.701%   1.569%
   19    9.2  1.5  0.5   2.449%   1.471%   7.613%  10.119%   1.437%   1.225%   0.305%   0.099%   3.464%   6.289%
   20   10.2  1.5  0.5   2.638%   1.452%   5.290%   2.123%   2.792%   3.142%   0.358%   3.380%   0.475%   0.953%
   21    1.2  1.5 -0.5   0.032%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.520%   0.486%   0.348%   0.111%  12.758%  16.353%   0.028%   1.467%   0.388%   1.144%
   23    3.2  1.5 -0.5   5.234%   1.969%   1.350%   0.434%   2.702%   3.735%   0.501%   1.948%   1.172%   3.006%
   24    4.2  1.5 -0.5   0.173%   0.256%   0.065%   0.202%   0.548%   0.528%   0.376%  25.851%   2.214%   5.382%
   25    5.2  1.5 -0.5   0.076%   0.977%   0.366%   1.139%   0.460%   0.049%   0.338%   6.429%   7.641%   2.154%
   26    6.2  1.5 -0.5   0.013%   0.931%   0.387%   1.204%   0.632%   0.676%   2.997%   1.221%   7.990%   2.320%
   27    7.2  1.5 -0.5  24.793%  10.773%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   1.170%   2.190%  13.756%   5.492%   1.600%   0.772%   1.163%   0.928%   1.483%   7.126%
   29    9.2  1.5 -0.5   1.836%   1.430%  10.119%   7.613%   1.086%   1.523%   0.140%   0.336%   6.281%   3.453%
   30   10.2  1.5 -0.5   1.294%   4.039%   2.123%   5.290%   3.407%   2.756%   3.259%   0.301%   0.726%   0.651%
   31    1.2  1.5 -1.5   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   2.385%   3.891%   0.434%   1.350%   3.725%   2.997%   3.796%   0.420%   1.283%   0.843%
   33    3.2  1.5 -1.5   0.315%   2.111%   0.111%   0.347%  12.050%  10.090%   4.120%   0.007%   4.548%   1.324%
   34    4.2  1.5 -1.5   2.030%   5.695%   0.388%   1.587%   0.137%   0.471%   1.309%   1.601%   3.093%   3.696%
   35    5.2  1.5 -1.5   4.657%   3.082%   0.361%   0.376%   1.239%   1.998%   1.212%  17.247%   1.046%   5.390%
   36    6.2  1.5 -1.5   7.135%   1.006%   0.645%   0.007%   2.379%   3.027%   0.530%   4.065%   7.315%  12.051%
   37    7.2  1.5 -1.5   0.201%   4.740%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   1.056%   2.626%   7.832%   2.516%   0.673%   5.182%   0.899%   2.570%   1.066%   1.199%
   39    9.2  1.5 -1.5   1.648%   0.035%   8.980%   2.884%   4.932%   0.282%   1.026%   3.606%   0.540%   1.456%
   40   10.2  1.5 -1.5   2.672%   1.170%  16.789%   5.393%   1.187%   1.996%   0.368%   9.564%   0.277%   0.171%
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

    1    1.2  1.5  1.5   0.021%   0.033%   0.016%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.250%   0.369%   0.126%   0.067%  30.174%   0.178%   1.354%  13.128%   0.208%   0.299%
    3    3.2  1.5  1.5   0.071%   0.123%   0.412%   0.207%   0.007%   0.097%   0.243%  14.514%   0.751%   0.940%
    4    4.2  1.5  1.5   0.107%   0.147%   0.462%   0.096%   9.234%   0.646%   4.602%  27.779%   1.260%   2.127%
    5    5.2  1.5  1.5   0.195%   0.053%   0.201%   0.363%   4.655%   8.559%   6.527%   3.320%   3.689%   1.398%
    6    6.2  1.5  1.5   0.101%   0.143%   0.079%   0.488%   0.864%   0.170%   2.092%   1.542%  23.344%   2.513%
    7    7.2  1.5  1.5  13.324%  21.317%  10.469%   5.154%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   6.863%   4.350%   4.281%   3.363%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5   2.196%   8.214%   3.344%   3.858%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  1.5  1.5   1.540%   1.247%   2.273%   4.071%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.2  1.5  0.5   0.014%   0.010%   0.018%   0.037%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.121%   0.078%   0.211%   0.402%   1.207%  17.076%  12.985%   0.087%   0.603%   0.156%
   13    3.2  1.5  0.5   0.371%   0.243%   0.063%   0.135%   0.139%   4.516%   0.515%   0.152%  33.192%   0.421%
   14    4.2  1.5  0.5   0.341%   0.225%   0.047%   0.199%   1.136%   0.278%   1.351%   1.351%   7.928%   3.960%
   15    5.2  1.5  0.5   0.114%   0.447%   0.160%   0.092%  20.415%   0.478%   0.129%   8.092%   1.241%   5.448%
   16    6.2  1.5  0.5   0.317%   0.239%   0.220%   0.035%   0.076%   0.019%   0.067%   0.185%   0.183%  10.362%
   17    7.2  1.5  0.5   9.221%   6.084%  11.570%  23.386%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   5.258%   4.410%   0.635%   1.240%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.2  1.5  0.5   3.218%   7.846%   0.860%   0.865%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.2  1.5  0.5   0.081%   0.246%  14.032%   6.909%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.010%   0.014%   0.036%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.071%   0.123%   0.411%   0.207%  17.124%   1.211%   0.088%  12.943%   0.156%   0.596%
   23    3.2  1.5 -0.5   0.250%   0.369%   0.126%   0.067%   4.512%   0.138%   0.149%   0.507%   0.419%  33.240%
   24    4.2  1.5 -0.5   0.216%   0.342%   0.210%   0.044%   0.280%   1.128%   1.356%   1.366%   3.949%   7.901%
   25    5.2  1.5 -0.5   0.444%   0.120%   0.097%   0.151%   0.477%  20.378%   8.157%   0.132%   5.449%   1.239%
   26    6.2  1.5 -0.5   0.240%   0.327%   0.037%   0.207%   0.019%   0.074%   0.188%   0.065%  10.357%   0.186%
   27    7.2  1.5 -0.5   6.539%   9.090%  22.792%  11.841%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   4.447%   5.199%   1.167%   0.730%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.2  1.5 -0.5   7.866%   3.167%   0.835%   0.920%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.2  1.5 -0.5   0.230%   0.125%   6.946%  13.967%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.033%   0.022%   0.008%   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.371%   0.243%   0.063%   0.135%   0.180%  30.225%  13.061%   1.362%   0.297%   0.208%
   33    3.2  1.5 -1.5   0.121%   0.078%   0.211%   0.403%   0.095%   0.009%  14.541%   0.244%   0.952%   0.750%
   34    4.2  1.5 -1.5   0.147%   0.098%   0.093%   0.473%   0.658%   9.276%  27.733%   4.612%   2.116%   1.255%
   35    5.2  1.5 -1.5   0.059%   0.192%   0.354%   0.206%   8.575%   4.678%   3.313%   6.513%   1.397%   3.668%
   36    6.2  1.5 -1.5   0.153%   0.102%   0.476%   0.081%   0.172%   0.866%   1.549%   2.105%   2.510%  23.334%
   37    7.2  1.5 -1.5  21.178%  13.771%   5.432%   9.881%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   4.371%   6.952%   3.326%   4.208%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.2  1.5 -1.5   8.191%   2.330%   3.941%   3.150%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.2  1.5 -1.5   1.338%   1.513%   3.961%   2.318%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
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
    2    2.2  1.5  1.5   0.308%   1.102%   0.993%   0.862%   0.371%   1.595%   0.016%   0.437%   0.000%   0.000%
    3    3.2  1.5  1.5   4.477%  12.219%   3.271%   3.620%   0.004%   1.132%   1.430%   1.063%   0.000%   0.000%
    4    4.2  1.5  1.5   1.166%   1.891%   0.124%   0.188%   0.177%   1.139%   1.276%   0.470%   0.000%   0.000%
    5    5.2  1.5  1.5   4.317%   3.620%   0.376%   0.417%   7.693%   0.529%   0.054%   0.140%   0.000%   0.000%
    6    6.2  1.5  1.5   0.727%   3.959%   0.742%   0.318%   0.007%   0.217%   3.771%   4.559%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.000%   0.000%  13.842%   2.084%   1.964%   7.118%   6.896%   3.500%   0.000%   0.000%
    9    9.2  1.5  1.5   0.000%   0.000%   0.869%  11.420%   5.085%   0.941%   9.317%   8.544%   0.000%   0.000%
   10   10.2  1.5  1.5   0.000%   0.000%   4.064%   3.041%  24.729%   4.338%   2.756%   2.501%   0.000%   0.000%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.452%   0.683%   4.950%   3.700%   0.252%   0.022%   0.700%   0.895%   0.000%   0.000%
   13    3.2  1.5  0.5   7.486%   0.330%   1.100%   1.004%   1.569%   0.203%   0.205%   0.195%   0.000%   0.000%
   14    4.2  1.5  0.5  11.155%   4.137%   0.412%   0.359%   3.414%   2.385%   3.617%   1.237%   0.000%   0.000%
   15    5.2  1.5  0.5   4.710%   3.402%   0.017%   0.325%   1.911%   0.152%   1.131%   2.052%   0.000%   0.000%
   16    6.2  1.5  0.5   2.508%  31.388%   0.278%   0.199%   0.912%   1.073%   0.141%   2.582%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.000%   0.000%   2.386%   3.159%  12.428%   2.251%  11.003%   8.708%   0.000%   0.000%
   19    9.2  1.5  0.5   0.000%   0.000%   4.430%   5.860%   5.142%   0.542%   9.696%  13.493%   0.000%   0.000%
   20   10.2  1.5  0.5   0.000%   0.000%   8.533%   7.469%   2.716%  12.573%   0.073%   2.546%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.683%   0.448%   4.204%   5.061%   0.007%   0.218%   0.499%   0.530%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.325%   7.461%   0.924%   1.479%   0.350%   0.784%   0.135%   0.603%   0.000%   0.000%
   24    4.2  1.5 -0.5   4.149%  11.165%   0.185%   0.139%   1.298%   5.814%   2.359%   1.629%   0.000%   0.000%
   25    5.2  1.5 -0.5   3.379%   4.703%   0.181%   0.102%   0.736%   1.602%   1.640%   1.327%   0.000%   0.000%
   26    6.2  1.5 -0.5  31.387%   2.513%   0.200%   0.149%   1.882%   0.522%   1.847%   0.584%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.000%   0.000%   5.199%   4.043%   1.470%   4.794%   7.429%  17.001%   0.000%   0.000%
   29    9.2  1.5 -0.5   0.000%   0.000%   3.714%   5.330%   4.914%   5.741%  10.377%   9.088%   0.000%   0.000%
   30   10.2  1.5 -0.5   0.000%   0.000%  10.818%   7.832%  10.969%   2.264%   0.289%   1.738%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   1.113%   0.307%   1.261%   0.912%   1.491%   0.283%   0.082%   0.247%   0.000%   0.000%
   33    3.2  1.5 -1.5  12.181%   4.477%   4.229%   3.656%   0.189%   0.554%   1.334%   0.557%   0.000%   0.000%
   34    4.2  1.5 -1.5   1.897%   1.157%   0.045%   0.087%   1.532%   0.441%   0.110%   1.159%   0.000%   0.000%
   35    5.2  1.5 -1.5   3.623%   4.318%   0.435%   1.300%   0.730%   5.620%   0.004%   1.120%   0.000%   0.000%
   36    6.2  1.5 -1.5   3.956%   0.719%   0.734%   0.786%   0.134%   0.375%   4.309%   3.276%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   2.424%  16.083%   1.936%   3.784%   7.312%   3.864%   0.000%   0.000%
   39    9.2  1.5 -1.5   0.000%   0.000%  15.394%   1.091%   0.431%   8.137%   6.780%   4.342%   0.000%   0.000%
   40   10.2  1.5 -1.5   0.000%   0.000%   3.667%   7.928%   3.553%  22.856%   3.411%   0.014%   0.000%   0.000%
   41    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.523%  11.860%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.728%   1.730%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.398%  30.713%
   44    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.300%   2.076%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.840%   0.778%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  13.993%   2.604%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.910%   1.879%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.493%   8.649%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  15.663%   5.720%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.321%   3.447%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.390%  11.957%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.181%   4.496%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  13.463%   2.725%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.779%   6.530%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.685%   0.741%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.332%   4.094%

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
   41    1.2  0.5  0.5   6.092%   6.680%   4.938%   5.858%   1.106%   0.716%
   42    2.2  0.5  0.5   1.108%   1.175%  13.679%   4.849%  28.531%   1.158%
   43    3.2  0.5  0.5   0.178%   9.773%  10.372%   2.611%   1.081%   0.689%
   44    4.2  0.5  0.5  11.575%   7.152%   1.583%   2.455%  12.661%  12.146%
   45    5.2  0.5  0.5   0.358%   3.613%  13.407%   5.009%   5.688%   4.511%
   46    6.2  0.5  0.5  16.540%   2.715%   0.158%  15.856%   0.875%   5.800%
   47    7.2  0.5  0.5   2.693%  11.822%  22.849%   0.282%   2.971%   8.676%
   48    8.2  0.5  0.5   6.016%   4.916%   2.924%   3.431%   0.521%  14.823%
   49    1.2  0.5 -0.5  18.166%   0.280%   2.260%   0.660%   1.608%   0.240%
   50    2.2  0.5 -0.5  15.361%   3.677%   2.411%  16.933%   4.542%   2.526%
   51    3.2  0.5 -0.5   9.289%  10.584%   3.751%   5.237%   6.399%   0.003%
   52    4.2  0.5 -0.5   8.105%   6.335%   0.402%   5.311%   8.076%   9.503%
   53    5.2  0.5 -0.5   1.555%   1.847%   3.578%  17.256%   1.653%   0.615%
   54    6.2  0.5 -0.5   1.872%  17.482%   5.100%   7.167%  11.519%   0.644%
   55    7.2  0.5 -0.5   0.288%   3.151%   6.774%   0.307%   7.250%  27.149%
   56    8.2  0.5 -0.5   0.804%   8.798%   5.816%   6.777%   5.520%  10.801%


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

              2       6     6899.74       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *    194619.66 155482.03  18468.75  20644.82     13.72     10.10
 REAL TIME  *    197199.91 SEC
 DISK USED  *         6.85 GB (local),      111.06 GB (total)
 SF USED    *        36.43 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy= 943974.505432596547

              CI              CI           MULTI
   -214.33363153   -214.17027642   -213.50075831
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
