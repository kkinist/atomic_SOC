
 Working directory              : /wrk/irikura/molpro.aiVzNMZi6D/
 Global scratch directory       : /wrk/irikura/molpro.aiVzNMZi6D/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.aiVzNMZi6D/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.02 sec
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
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 24-Jan-25          TIME: 09:52:40  
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

     697.827 MB (compressed) written to integral file ( 13.5%)

     Node minimum: 17.564 MB, node maximum: 36.438 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   14108412.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   14108412      RECORD LENGTH: 524288

 Memory used in sort:      14.67 MW

 SORT1 READ   646821870. AND WROTE     2419159. INTEGRALS IN      7 RECORDS. CPU TIME:     4.40 SEC, REAL TIME:     4.53 SEC
 SORT2 READ    68065344. AND WROTE   395255076. INTEGRALS IN   2128 RECORDS. CPU TIME:     0.24 SEC, REAL TIME:     0.30 SEC

 Node minimum:    14103376.  Node maximum:    14140936. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.56      9.24
 REAL TIME  *        11.17 SEC
 DISK USED  *        31.11 MB (local),        2.22 GB (total)
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.146D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.147D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.151D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.596D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.494D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 5 3 4 6 1 1 5 3   2 4 6 1 4 6 3 5 2 1   4 6 3 5 212 8131014  15 7 911 4 6 5 3 2 1
                                        4 6 2 3 5 911 7 812  14151013 1 9 711 812  13101415 2 4 6 5 3 1   9 711 81214151310 2
                                        4 6 5 3252817272123  26241918202216 7 911   81214151310 1 2 5 4   3 6 9 711 812141513
                                       10 1 5 3 4 6 2 1 5 3   4 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.182D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.222D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.246D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.464D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.464D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.173D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.173D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 1 2 3 1   2 3 4 5 6 9 7 810 1   2 3 7 910 8 4 5 6 1   2 3 6 810 7 9 4 5 6
                                        810 7 9 4 5 1 2 319  21171416151311121820  10 8 6 4 5 7 9191116  2114131215172018 1 2
                                        310 8 6 4 5 7 91911  12211314161517182010   8 4 6 5 7 9 3 1 210   4 8 6 5 7 919111221
                                       13141615172018 1 3 2   6 4 8 510 7 9 1 2 3   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556   0.05556
 Weight factors for state symmetry  2:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
 
 Number of orbital rotations:  2147  ( 18 closed/active, 1307 closed/virtual, 0 active/active, 822 active/virtual )
 Total number of variables:    3067
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   14    0   -213.41129739    -213.44157842   -0.03028103    0.12714361 0.00014103 0.00000000  0.14E+01      3.10
   2    7   12    0   -213.44068829    -213.44075261   -0.00006432    0.00714592 0.00000267 0.00000000  0.45E-01      6.21
   3    7   14    0   -213.44075269    -213.44075269   -0.00000000    0.00002179 0.00000001 0.00000000  0.11E-03      9.03
   4    2    4    0   -213.44075269    -213.44075269    0.00000000    0.00000000 0.00000001 0.00000000  0.65E-07     11.50

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.88E-08)
                       Final energy:   -213.44075269
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.588533844866
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.17706009
 One electron energy                          -373.44309408
 Two electron energy                           159.85456023
 Virial ratio                                    4.08756304
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -213.358666282331
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.59165782
 One electron energy                          -368.19729987
 Two electron energy                           154.83863358
 Virial ratio                                    4.11056290
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -213.358666282221
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.59165782
 One electron energy                          -368.19729987
 Two electron energy                           154.83863359
 Virial ratio                                    4.11056290
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -213.358666281909
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.59165782
 One electron energy                          -368.19729989
 Two electron energy                           154.83863360
 Virial ratio                                    4.11056290
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -213.358666281360
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.59165782
 One electron energy                          -368.19729991
 Two electron energy                           154.83863363
 Virial ratio                                    4.11056290
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -213.358666281325
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.59165782
 One electron energy                          -368.19729992
 Two electron energy                           154.83863363
 Virial ratio                                    4.11056290
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -213.354723562842
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.67959025
 One electron energy                          -368.56909173
 Two electron energy                           155.21436817
 Virial ratio                                    4.10652295
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -213.354200366337
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.59165782
 One electron energy                          -368.19729987
 Two electron energy                           154.84309951
 Virial ratio                                    4.11049779
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -213.354200365935
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.59165782
 One electron energy                          -368.19729989
 Two electron energy                           154.84309952
 Virial ratio                                    4.11049779
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Quartet
 ==============================
 !MCSCF STATE 10.2 Quartet Energy             -213.354200365212
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.59165782
 One electron energy                          -368.19729991
 Two electron energy                           154.84309955
 Virial ratio                                    4.11049779
 
 !MCSCF STATE 10.2 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.530735525039
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.13178016
 One electron energy                          -373.22310593
 Two electron energy                           159.69237040
 Virial ratio                                    4.08874927
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.530735525026
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.13178015
 One electron energy                          -373.22310593
 Two electron energy                           159.69237040
 Virial ratio                                    4.08874927
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.530735524980
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.13178015
 One electron energy                          -373.22310592
 Two electron energy                           159.69237040
 Virial ratio                                    4.08874927
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.530735524910
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.13178015
 One electron energy                          -373.22310591
 Two electron energy                           159.69237038
 Virial ratio                                    4.08874927
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.530735524904
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.13178015
 One electron energy                          -373.22310591
 Two electron energy                           159.69237038
 Virial ratio                                    4.08874927
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.493560275783
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.08508289
 One electron energy                          -372.97575134
 Two electron energy                           159.48219107
 Virial ratio                                    4.09029897
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.493560275716
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.08508289
 One electron energy                          -372.97575133
 Two electron energy                           159.48219105
 Virial ratio                                    4.09029897
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.493560275623
 Nuclear energy                                  0.00000000
 Kinetic energy                                 69.08508288
 One electron energy                          -372.97575130
 Two electron energy                           159.48219102
 Virial ratio                                    4.09029897
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     2.312770961384
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999999999
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     3.999999999968
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000000000006
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.687230673871
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     0.000000000006
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.999999999995
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.000000000009
 !MCSCF expec    <10.2 Quartet|LXLX|10.2 Quartet>     0.999999999995
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     2.242065832043
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000002134
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999999996275
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000000050
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.757932293104
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.000000000001
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.999999999983
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.132874695636
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999999996
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     0.999999999995
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.999999999969
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.867124710929
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     0.000000000006
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.999999999995
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.999999999995
 !MCSCF expec    <10.2 Quartet|LYLY|10.2 Quartet>     0.000000000010
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.159649457791
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000003
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.999999999948
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.840351281659
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999999999
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.000000000018
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000000
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     3.554354342942
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     3.999999999968
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     0.999999999999
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     0.999999999988
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     0.445644615163
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     0.000000000006
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.000000000010
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.999999999995
 !MCSCF expec    <10.2 Quartet|LZLZ|10.2 Quartet>     0.999999999994
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.598284710164
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.999999997864
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000003720
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.401716425234
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.000000000002
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     0.000000000001
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     5.999999999962
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     5.999999999963
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     5.999999999963
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     5.999999999963
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     5.999999999963
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     0.000000000017
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 5 2 4 1 1 3 5   4 2 6 1 4 3 5 2 6 1   3 5 6 4 211 7 81214  15 91310 6 4 2 3 5 1
                                        6 2 4 5 311 712 814  15 91013 111 7 81215  141310 9 6 2 5 3 4 1  11 7 81214151310 9 6
                                        2 5 3 4272517212326  2419201822162811 713  10 8121415 9 1 6 2 5   3 41113101514 812 7
                                        9 1 2 5 3 6 4 1 2 5   3 6 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 2 3 3 2 1 3   1 2 4 7 9 810 6 5 3   1 2 9 7 810 5 4 6 3   1 2 5 610 8 9 7 4 5
                                        6 810 9 7 4 3 2 112  19211314161517111820   510 8 6 9 7 4121921  1314161517182011 2 3
                                        1 5 810 6 7 9 41219  211316141517201811 5   810 6 9 7 4 2 3 1 5   810 6 9 7 412182015
                                       17161421131911 2 3 1   5 810 7 9 6 4 2 3 1   2 1 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.77913     1  1  s    1.00017
    2.1     2.00000    -1.40710     1  1  d1-  1.00149
    3.1     2.00000    -1.40710     1  1  d2-  1.00149
    4.1     2.00000    -1.40710     1  1  d2+  1.00149
    5.1     2.00000    -1.40710     1  1  d0   1.00149
    6.1     2.00000    -1.40710     1  1  d1+  1.00149
    7.1     2.00000    -0.75906     1  1  s   -0.42478    1  5  s    0.63649    1  6  s    0.46018
    1.2     2.00000    -4.35533     1  1  py   0.99979
    2.2     2.00000    -4.35533     1  1  pz   0.99979
    3.2     2.00000    -4.35533     1  1  px   0.99979
    4.2     0.83089    -0.18412     1  1  px  -0.27999    1  5  px   0.48714    1  6  px   0.36495
    5.2     0.83089    -0.18412     1  1  py  -0.27999    1  5  py   0.48714    1  6  py   0.36495
    6.2     0.83089    -0.18412     1  1  pz  -0.27999    1  5  pz   0.48714    1  6  pz   0.36495
    7.2     0.16911     0.02984     1 12  pz   0.83406
    8.2     0.16911     0.02984     1 12  py   0.83406
    9.2     0.16911     0.02984     1 12  px   0.83406
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 aaa000         0.99985893     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00492874
 a0a0a0         0.00411406      0.80078582     -0.00000034      0.00000004     -0.00000087      0.14843748     -0.57164675
 aa0a00        -0.00411406      0.27184213     -0.00000006     -0.00000000     -0.00000298      0.76771933      0.57164718
 a0aa00        -0.00000000      0.00000003      0.00000066     -0.70531453     -0.00000019     -0.00000001     -0.00000000
 aa00a0        -0.00000000     -0.00000003     -0.00000066      0.70531442      0.00000019      0.00000001      0.00000000
 a0a00a         0.00000000      0.00000031      0.70531451      0.00000066     -0.00000045     -0.00000005     -0.00000000
 0aa0a0         0.00000000     -0.00000031     -0.70531444     -0.00000066      0.00000045      0.00000005     -0.00000000
 0aaa00        -0.00000000      0.00000028      0.00000045     -0.00000019      0.70531450      0.00000264      0.00000000
 aa000a        -0.00000000      0.00000028      0.00000045     -0.00000019      0.70531445      0.00000264     -0.00000000
 0aa00a        -0.00411405      0.52894323     -0.00000028      0.00000004      0.00000211     -0.61928213      0.57164702
 0a0a0a        -0.00875011     -0.05712441      0.00000002     -0.00000000      0.00000006     -0.01058883     -0.08087851
 a00aa0         0.00875011     -0.03773246      0.00000002     -0.00000000     -0.00000015      0.04417676      0.08087849
 00a0aa         0.00875011     -0.01939202      0.00000000      0.00000000      0.00000021     -0.05476564      0.08087848
 0a0aa0         0.00000000      0.00000002      0.05031395      0.00000005     -0.00000003     -0.00000000      0.00000000
 a00a0a         0.00000000     -0.00000002     -0.05031395     -0.00000005      0.00000003      0.00000000      0.00000000
 0a00aa        -0.00000000      0.00000000      0.00000005     -0.05031394     -0.00000001     -0.00000000     -0.00000000
 00aa0a        -0.00000000     -0.00000000     -0.00000005      0.05031395      0.00000001      0.00000000      0.00000000
 a000aa        -0.00000000     -0.00000002     -0.00000003      0.00000001     -0.05031394     -0.00000019     -0.00000000
 00aaa0         0.00000000     -0.00000002     -0.00000003      0.00000001     -0.05031394     -0.00000019     -0.00000000
 
 Energy:     -213.58853384   -213.35866628   -213.35866628   -213.35866628   -213.35866628   -213.35866628   -213.35472356

 State:              8               9              10
 aaa000         0.00000000     -0.00000000      0.00000000
 a0a0a0        -0.00000000     -0.00000000     -0.00000000
 aa0a00         0.00000000      0.00000000     -0.00000000
 a0aa00        -0.00000037      0.70531442      0.00000003
 aa00a0        -0.00000037      0.70531453      0.00000003
 a0a00a         0.70531444      0.00000037      0.00000044
 0aa0a0         0.70531451      0.00000037      0.00000044
 0aaa00         0.00000044      0.00000003     -0.70531445
 aa000a        -0.00000044     -0.00000003      0.70531450
 0aa00a         0.00000000     -0.00000000      0.00000000
 0a0a0a        -0.00000000      0.00000000     -0.00000000
 a00aa0         0.00000000      0.00000000      0.00000000
 00a0aa         0.00000000     -0.00000000      0.00000000
 0a0aa0        -0.05031395     -0.00000003     -0.00000003
 a00a0a        -0.05031395     -0.00000003     -0.00000003
 0a00aa         0.00000003     -0.05031395     -0.00000000
 00aa0a         0.00000003     -0.05031394     -0.00000000
 a000aa         0.00000003      0.00000000     -0.05031394
 00aaa0        -0.00000003     -0.00000000      0.05031394
 
 Energy:     -213.35420037   -213.35420037   -213.35420037
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 aba000         0.79854377      0.00000004     -0.00000005     -0.00000007     -0.16281598      0.00000000      0.00000000
 aab000        -0.25826911     -0.00000017      0.00000024      0.00000032      0.77296718     -0.00000000     -0.00000000
 a20000         0.00000000      0.00001882      0.70578744      0.00000069     -0.00000022      0.00000039      0.70169793
 02a000         0.00000001     -0.70578744      0.00001882      0.00000008     -0.00000015      0.70169794     -0.00000039
 2a0000         0.00000000      0.00000008     -0.00000069      0.70578743     -0.00000029     -0.00000073      0.00000024
 0a2000        -0.00000000     -0.00000008      0.00000069     -0.70578743      0.00000029     -0.00000073      0.00000024
 20a000        -0.00000001      0.70578742     -0.00001882     -0.00000008      0.00000015      0.70169795     -0.00000039
 a02000        -0.00000000     -0.00001882     -0.70578742     -0.00000069      0.00000022      0.00000039      0.70169795
 baa000        -0.54027466      0.00000013     -0.00000019     -0.00000025     -0.61015120      0.00000000      0.00000000
 a0ab00        -0.00000000     -0.00000084     -0.03167078     -0.00000003      0.00000001      0.00000004      0.06531434
 a0a00b         0.00000000     -0.03167078      0.00000084      0.00000000     -0.00000001     -0.06531434      0.00000004
 0aab00        -0.00000000     -0.00000000      0.00000003     -0.03167078      0.00000001     -0.00000007      0.00000002
 aa000b        -0.00000000     -0.00000000      0.00000003     -0.03167078      0.00000001      0.00000007     -0.00000002
 0aa0b0        -0.00000000      0.03167078     -0.00000084     -0.00000000      0.00000001     -0.06531433      0.00000004
 aa00b0         0.00000000      0.00000084      0.03167078      0.00000003     -0.00000001      0.00000004      0.06531433
 
 Energy:     -213.53073553   -213.53073553   -213.53073552   -213.53073552   -213.53073552   -213.49356028   -213.49356028

 State:              8
 aba000         0.00000000
 aab000         0.00000000
 a20000        -0.00000024
 02a000         0.00000073
 2a0000         0.70169794
 0a2000         0.70169795
 20a000         0.00000073
 a02000        -0.00000024
 baa000        -0.00000000
 a0ab00        -0.00000002
 a0a00b        -0.00000007
 0aab00         0.06531434
 aa000b        -0.06531434
 0aa0b0        -0.00000007
 aa00b0        -0.00000002
 
 Energy:     -213.49356028
 


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
 CPU TIMES  *        21.36     11.79      9.24
 REAL TIME  *        25.35 SEC
 DISK USED  *        95.81 MB (local),        3.99 GB (total)
 SF USED    *       162.12 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5885338   0.0
    -213.3586663   6.0
    -213.3586663   6.0
    -213.3586663   6.0
    -213.3586663   6.0
    -213.3586663   6.0
    -213.3547236   0.0
    -213.3542004   2.0
    -213.3542004   2.0
    -213.3542004   2.0
    -213.5307355   6.0
    -213.5307355   6.0
    -213.5307355   6.0
    -213.5307355   6.0
    -213.5307355   6.0
    -213.4935603   2.0
    -213.4935603   2.0
    -213.4935603   2.0
                                                  


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
     1      -213.58853384
     2      -213.35866628
     3      -213.35866628
     4      -213.35866628
     5      -213.35866628
     6      -213.35866628
     7      -213.35472356
     8      -213.35420037
     9      -213.35420037
    10      -213.35420037

 Number of blocks in overlap matrix:  1085   Smallest eigenvalue:  0.40D-04
 Number of N-2 electron functions:    1306
 Number of N-1 electron functions:   22565

 Number of internal configurations:                10436
 Number of singly external configurations:       2999425
 Number of doubly external configurations:      22941849
 Total number of contracted configurations:     25951710
 Total number of uncontracted configurations:  248483850

 Diagonal Coupling coefficients finished.               Storage:   6094488 words, CPU-Time:      1.37 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3494151 words, CPU-time:      6.48 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.58853384     0.00000000    -1.00763525  0.45D-01  0.12D+00    10.94
    1     2     2     1.00000000     0.00000000  -213.35866628     0.00000000    -0.97007609  0.43D-01  0.11D+00    10.94
    1     3     3     1.00000000     0.00000000  -213.35866628    -0.00000000    -0.97061508  0.43D-01  0.11D+00    10.94
    1     4     4     1.00000000     0.00000000  -213.35866628    -0.00000000    -0.97076229  0.43D-01  0.11D+00    10.94
    1     5     5     1.00000000     0.00000000  -213.35866628     0.00000000    -0.97065474  0.43D-01  0.11D+00    10.94
    1     6     6     1.00000000     0.00000000  -213.35866628    -0.00000000    -0.97012306  0.43D-01  0.11D+00    10.94
    1     7     7     1.00000000     0.00000000  -213.35472356    -0.00000000    -0.97544222  0.46D-01  0.11D+00    10.94
    1     8     8     1.00000000     0.00000000  -213.35420037    -0.00000000    -0.97131236  0.43D-01  0.11D+00    10.94
    1     9     9     1.00000000     0.00000000  -213.35420037     0.00000000    -0.97140955  0.43D-01  0.11D+00    10.94
    1    10    10     1.00000000     0.00000000  -213.35420037     0.00000000    -0.97133430  0.43D-01  0.11D+00    10.94
    2     1     1     1.10545614    -0.79734984  -214.38588368    -0.79734984    -0.02778430  0.40D-02  0.23D-02   329.57
    2     2     2     1.10074180    -0.79027066  -214.14893694    -0.79027066    -0.02336025  0.29D-02  0.19D-02   329.57
    2     3     3     1.10089342    -0.79010205  -214.14876834    -0.79010205    -0.02354353  0.30D-02  0.19D-02   329.57
    2     4     4     1.10083820    -0.79010012  -214.14876640    -0.79010012    -0.02356160  0.29D-02  0.19D-02   329.57
    2     5     5     1.10086311    -0.79006557  -214.14873185    -0.79006557    -0.02359769  0.29D-02  0.19D-02   329.57
    2     6     6     1.10092427    -0.78999192  -214.14865820    -0.78999192    -0.02368167  0.30D-02  0.19D-02   329.57
    2     7     7     1.10114858    -0.78977474  -214.14449830    -0.78977474    -0.02370742  0.29D-02  0.20D-02   329.57
    2     8     8     1.10117497    -0.79026370  -214.14446407    -0.79026370    -0.02374695  0.30D-02  0.19D-02   329.57
    2     9     9     1.10120473    -0.79021765  -214.14441801    -0.79021765    -0.02379741  0.30D-02  0.19D-02   329.57
    2    10    10     1.10241270    -0.79019503  -214.14439540    -0.79019503    -0.02517867  0.40D-02  0.19D-02   329.57
    3     1     1     1.08987359    -0.82365411  -214.41218796    -0.02630427    -0.00031475  0.49D-04  0.29D-04   648.99
    3     2     2     1.08792505    -0.81237316  -214.17103944    -0.02210249    -0.00025498  0.33D-04  0.24D-04   648.99
    3     3     3     1.08792960    -0.81237077  -214.17103705    -0.02226872    -0.00025747  0.33D-04  0.25D-04   648.99
    3     4     4     1.08791882    -0.81237041  -214.17103669    -0.02227029    -0.00025782  0.33D-04  0.24D-04   648.99
    3     5     5     1.08792897    -0.81237009  -214.17103637    -0.02230452    -0.00025815  0.33D-04  0.25D-04   648.99
    3     6     6     1.08792745    -0.81236883  -214.17103512    -0.02237691    -0.00025947  0.33D-04  0.25D-04   648.99
    3     7     7     1.08797743    -0.81343308  -214.16815665    -0.02365834    -0.00030428  0.43D-04  0.29D-04   648.99
    3     8     8     1.08808158    -0.81270331  -214.16690367    -0.02243961    -0.00025634  0.30D-04  0.26D-04   648.99
    3     9     9     1.08808061    -0.81270276  -214.16690313    -0.02248512    -0.00025688  0.30D-04  0.26D-04   648.99
    3    10    10     1.08807996    -0.81270189  -214.16690226    -0.02250686    -0.00025779  0.30D-04  0.26D-04   648.99
    4     1     1     1.08947436    -0.82398303  -214.41251688    -0.00032892    -0.00000686  0.10D-05  0.67D-06   969.38
    4     2     2     1.08771043    -0.81263538  -214.17130166    -0.00026222    -0.00000644  0.11D-05  0.51D-06   969.38
    4     3     3     1.08770907    -0.81263534  -214.17130162    -0.00026457    -0.00000648  0.11D-05  0.52D-06   969.38
    4     4     4     1.08771052    -0.81263533  -214.17130162    -0.00026492    -0.00000645  0.11D-05  0.51D-06   969.38
    4     5     5     1.08771038    -0.81263533  -214.17130161    -0.00026524    -0.00000645  0.11D-05  0.52D-06   969.38
    4     6     6     1.08770991    -0.81263530  -214.17130159    -0.00026647    -0.00000648  0.11D-05  0.52D-06   969.38
    4     7     7     1.08771768    -0.81374633  -214.16846989    -0.00031325    -0.00000856  0.18D-05  0.70D-06   969.38
    4     8     8     1.08787441    -0.81296637  -214.16716674    -0.00026306    -0.00000627  0.11D-05  0.51D-06   969.38
    4     9     9     1.08787432    -0.81296636  -214.16716673    -0.00026359    -0.00000628  0.11D-05  0.51D-06   969.38
    4    10    10     1.08787412    -0.81296634  -214.16716671    -0.00026445    -0.00000630  0.11D-05  0.51D-06   969.38
    5     1     1     1.08953683    -0.82399032  -214.41252416    -0.00000728    -0.00000016  0.16D-07  0.17D-07  1290.22
    5     2     2     1.08774039    -0.81264215  -214.17130843    -0.00000677    -0.00000020  0.28D-07  0.19D-07  1290.22
    5     3     3     1.08774018    -0.81264215  -214.17130843    -0.00000681    -0.00000021  0.28D-07  0.19D-07  1290.22
    5     4     4     1.08774030    -0.81264211  -214.17130839    -0.00000678    -0.00000021  0.28D-07  0.19D-07  1290.22
    5     5     5     1.08774026    -0.81264211  -214.17130839    -0.00000679    -0.00000021  0.28D-07  0.19D-07  1290.22
    5     6     6     1.08774019    -0.81264211  -214.17130839    -0.00000681    -0.00000021  0.28D-07  0.20D-07  1290.22
    5     7     7     1.08774158    -0.81375523  -214.16847879    -0.00000889    -0.00000029  0.45D-07  0.27D-07  1290.22
    5     8     8     1.08790633    -0.81297300  -214.16717336    -0.00000662    -0.00000020  0.28D-07  0.19D-07  1290.22
    5     9     9     1.08790632    -0.81297299  -214.16717336    -0.00000664    -0.00000020  0.28D-07  0.19D-07  1290.22
    5    10    10     1.08790630    -0.81297300  -214.16717336    -0.00000665    -0.00000020  0.28D-07  0.19D-07  1290.22
    6     1     1     1.08954061    -0.82399049  -214.41252433    -0.00000017    -0.00000000  0.45D-09  0.45D-09  1611.51
    6     2     2     1.08775242    -0.81264237  -214.17130865    -0.00000021    -0.00000001  0.66D-09  0.69D-09  1611.51
    6     3     3     1.08775241    -0.81264237  -214.17130865    -0.00000022    -0.00000001  0.66D-09  0.68D-09  1611.51
    6     4     4     1.08775235    -0.81264233  -214.17130861    -0.00000022    -0.00000001  0.66D-09  0.70D-09  1611.51
    6     5     5     1.08775232    -0.81264233  -214.17130861    -0.00000022    -0.00000001  0.66D-09  0.70D-09  1611.51
    6     6     6     1.08775234    -0.81264233  -214.17130861    -0.00000022    -0.00000001  0.66D-09  0.70D-09  1611.51
    6     7     7     1.08775071    -0.81375552  -214.16847909    -0.00000030    -0.00000001  0.94D-09  0.11D-08  1611.51
    6     8     8     1.08791911    -0.81297321  -214.16717357    -0.00000021    -0.00000001  0.70D-09  0.69D-09  1611.51
    6     9     9     1.08791910    -0.81297321  -214.16717357    -0.00000021    -0.00000001  0.70D-09  0.69D-09  1611.51
    6    10    10     1.08791911    -0.81297321  -214.16717357    -0.00000021    -0.00000001  0.70D-09  0.69D-09  1611.51


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.4%   5.4%
 P   0.5%  17.2%  17.0%

 Initialization:   0.5%
 Other:           58.7%

 Total CPU:     1611.5 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9573364  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0296531   0.0000000
                           -0.0000000   0.0000000
 2222222222/0/0/0           0.0180764   0.7634588   0.1599423  -0.0000000  -0.0000000   0.0000000   0.5469189   0.0000000
                            0.0000000  -0.0000000
 2222222222//0/00          -0.0180764   0.2432152   0.7411457   0.0000000   0.0000000  -0.0000000  -0.5469193   0.0000000
                           -0.0000000   0.0000000
 2222222222/0//00           0.0000000  -0.0000000   0.0000000  -0.0000000   0.6755281  -0.0000000   0.0000000   0.0000000
                            0.6754649   0.0000000
 2222222222/0/00/          -0.0000000  -0.0000000  -0.0000000   0.6755280   0.0000000   0.0000000   0.0000000   0.6754649
                           -0.0000000   0.0000000
 22222222220///00          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.6755280  -0.0000000  -0.0000000
                           -0.0000000   0.6754649
 2222222222//000/          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.6755280  -0.0000000  -0.0000000
                           -0.0000000  -0.6754650
 22222222220//0/0          -0.0000000  -0.0000000   0.0000000  -0.6755280  -0.0000000  -0.0000000   0.0000000   0.6754650
                           -0.0000000  -0.0000000
 2222222222//00/0           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.6755279   0.0000000  -0.0000000   0.0000000
                            0.6754650  -0.0000000
 22222222220//00/          -0.0180764   0.5202433  -0.5812036  -0.0000000   0.0000000  -0.0000000  -0.5469191   0.0000000
                           -0.0000000   0.0000000
 22222222220/0/0/          -0.0064424  -0.0564665  -0.0118295   0.0000000  -0.0000000   0.0000000   0.0807034  -0.0000000
                            0.0000000  -0.0000000
 2222222222/00//0           0.0064424  -0.0384780   0.0429866   0.0000000   0.0000000  -0.0000000  -0.0807034   0.0000000
                            0.0000000   0.0000000
 222222222200/0//           0.0064424  -0.0179886  -0.0548162  -0.0000000   0.0000000  -0.0000000  -0.0807034   0.0000000
                            0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957595   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.024715   -0.000000    0.000000   -0.000000
 2          -0.000000    0.957688    0.000000   -0.000000   -0.000000   -0.022254   -0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000    0.022254   -0.000000    0.000000   -0.000000    0.957688   -0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000    0.957947   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.957947    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.957947    0.000000    0.000000    0.000000    0.000000    0.000000
 7          -0.025022    0.000000    0.000000    0.000000   -0.000000    0.000000    0.957674    0.000000   -0.000000    0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.957858    0.000000   -0.000000
 9          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.957858    0.000000
 10          0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.957858

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957914   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000153    0.000000   -0.000000   -0.000000
 2          -0.000000    0.957947    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.957947   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.957947    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.957947    0.000000    0.000000    0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.957947    0.000000   -0.000000    0.000000   -0.000000
 7          -0.000153    0.000000   -0.000000    0.000000    0.000000    0.000000    0.958001    0.000000    0.000000   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.957858   -0.000000   -0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.957858   -0.000000
 10         -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.957858


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95759497 (fixed)   0.95791385 (relaxed)   0.95791383 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023878   -0.00066656   -0.70696848
 Singles      0.01387076   -0.05373245   -0.05979586
 Pairs        0.07569123    0.00000000   -0.05722615
 Total        1.08980077   -0.05439900   -0.82399049
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.58837628
 Nuclear energy                         0.00000000
 Kinetic energy                        69.59562348
 One electron energy                 -372.77689714
 Two electron energy                  158.36437281
 Virial quotient                       -3.08083344
 Correlation energy                    -0.82414806
 !MRCI STATE 1.2 Energy              -214.412524334357

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.48653346 (Davidson, fixed reference)
 Cluster corrected energies          -214.48653343 (Davidson, relaxed reference)
 Cluster corrected energies          -214.48653346 (Davidson, rotated reference)

 Cluster corrected energies          -214.48422775 (Pople, fixed reference)
 Cluster corrected energies          -214.48422771 (Pople, relaxed reference)
 Cluster corrected energies          -214.48422775 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95768849 (fixed)   0.95795027 (relaxed)   0.95794700 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00181372   -0.00422487   -0.68943982
 Singles      0.01706594   -0.06281626   -0.07037375
 Pairs        0.07084563    0.00000000   -0.05282880
 Total        1.08972530   -0.06704114   -0.81264237
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35866628
 Nuclear energy                         0.00000000
 Kinetic energy                        69.27486223
 One electron energy                 -368.07217416
 Two electron energy                  153.90086551
 Virial quotient                       -3.09161652
 Correlation energy                    -0.81264237
 !MRCI STATE 2.2 Energy              -214.171308648476

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24422323 (Davidson, fixed reference)
 Cluster corrected energies          -214.24421718 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24422323 (Davidson, rotated reference)

 Cluster corrected energies          -214.24194712 (Pople, fixed reference)
 Cluster corrected energies          -214.24194083 (Pople, relaxed reference)
 Cluster corrected energies          -214.24194712 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95768849 (fixed)   0.95795027 (relaxed)   0.95794701 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00181372   -0.00422487   -0.68943983
 Singles      0.01706593   -0.06281625   -0.07037373
 Pairs        0.07084564    0.00000000   -0.05282880
 Total        1.08972530   -0.06704112   -0.81264237
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35866628
 Nuclear energy                         0.00000000
 Kinetic energy                        69.27486326
 One electron energy                 -368.07217508
 Two electron energy                  153.90086643
 Virial quotient                       -3.09161648
 Correlation energy                    -0.81264237
 !MRCI STATE 3.2 Energy              -214.171308647922

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24422322 (Davidson, fixed reference)
 Cluster corrected energies          -214.24421718 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24422322 (Davidson, rotated reference)

 Cluster corrected energies          -214.24194712 (Pople, fixed reference)
 Cluster corrected energies          -214.24194082 (Pople, relaxed reference)
 Cluster corrected energies          -214.24194712 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95794703 (fixed)   0.95795030 (relaxed)   0.95794703 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00181373   -0.00422488   -0.68943975
 Singles      0.01706593   -0.06281635   -0.07037372
 Pairs        0.07084557   -0.00000000   -0.05282886
 Total        1.08972523   -0.06704123   -0.81264233
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35866628
 Nuclear energy                         0.00000000
 Kinetic energy                        69.27486095
 One electron energy                 -368.07217404
 Two electron energy                  153.90086543
 Virial quotient                       -3.09161658
 Correlation energy                    -0.81264233
 !MRCI STATE 4.2 Energy              -214.171308609135

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24422313 (Davidson, fixed reference)
 Cluster corrected energies          -214.24421709 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24422313 (Davidson, rotated reference)

 Cluster corrected energies          -214.24194703 (Pople, fixed reference)
 Cluster corrected energies          -214.24194073 (Pople, relaxed reference)
 Cluster corrected energies          -214.24194703 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95794704 (fixed)   0.95795031 (relaxed)   0.95794704 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00181373   -0.00422488   -0.68943981
 Singles      0.01706588   -0.06281630   -0.07037368
 Pairs        0.07084559    0.00000000   -0.05282883
 Total        1.08972521   -0.06704118   -0.81264233
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35866628
 Nuclear energy                         0.00000000
 Kinetic energy                        69.27486098
 One electron energy                 -368.07217356
 Two electron energy                  153.90086496
 Virial quotient                       -3.09161658
 Correlation energy                    -0.81264233
 !MRCI STATE 5.2 Energy              -214.171308608945

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24422311 (Davidson, fixed reference)
 Cluster corrected energies          -214.24421707 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24422311 (Davidson, rotated reference)

 Cluster corrected energies          -214.24194700 (Pople, fixed reference)
 Cluster corrected energies          -214.24194071 (Pople, relaxed reference)
 Cluster corrected energies          -214.24194700 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95794704 (fixed)   0.95795030 (relaxed)   0.95794704 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00181373   -0.00422488   -0.68943983
 Singles      0.01706591   -0.06281633   -0.07037370
 Pairs        0.07084558    0.00000006   -0.05282879
 Total        1.08972523   -0.06704115   -0.81264233
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35866628
 Nuclear energy                         0.00000000
 Kinetic energy                        69.27486136
 One electron energy                 -368.07217429
 Two electron energy                  153.90086568
 Virial quotient                       -3.09161656
 Correlation energy                    -0.81264233
 !MRCI STATE 6.2 Energy              -214.171308608657

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24422312 (Davidson, fixed reference)
 Cluster corrected energies          -214.24421708 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24422312 (Davidson, rotated reference)

 Cluster corrected energies          -214.24194702 (Pople, fixed reference)
 Cluster corrected energies          -214.24194072 (Pople, relaxed reference)
 Cluster corrected energies          -214.24194702 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95767368 (fixed)   0.95801528 (relaxed)   0.95800050 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00170341   -0.00395312   -0.69090765
 Singles      0.01683892   -0.06232623   -0.06978026
 Pairs        0.07106127   -0.00000000   -0.05306761
 Total        1.08960360   -0.06627934   -0.81375552
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35488113
 Nuclear energy                         0.00000000
 Kinetic energy                        69.31014520
 One electron energy                 -368.25428380
 Two electron energy                  154.08580472
 Virial quotient                       -3.09000188
 Correlation energy                    -0.81359796
 !MRCI STATE 7.2 Energy              -214.168479085322

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24138039 (Davidson, fixed reference)
 Cluster corrected energies          -214.24135304 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24138039 (Davidson, rotated reference)

 Cluster corrected energies          -214.23909746 (Pople, fixed reference)
 Cluster corrected energies          -214.23906897 (Pople, relaxed reference)
 Cluster corrected energies          -214.23909746 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.95785760 (fixed)   0.95786087 (relaxed)   0.95785760 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00184721   -0.00426133   -0.68961232
 Singles      0.01707239   -0.06284666   -0.07039815
 Pairs        0.07100913   -0.00000000   -0.05296275
 Total        1.08992873   -0.06710799   -0.81297321
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35420037
 Nuclear energy                         0.00000000
 Kinetic energy                        69.27538731
 One electron energy                 -368.06979347
 Two electron energy                  153.90261990
 Virial quotient                       -3.09153340
 Correlation energy                    -0.81297321
 !MRCI STATE 8.2 Energy              -214.167173573924

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24028322 (Davidson, fixed reference)
 Cluster corrected energies          -214.24027718 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24028322 (Davidson, rotated reference)

 Cluster corrected energies          -214.23801316 (Pople, fixed reference)
 Cluster corrected energies          -214.23800686 (Pople, relaxed reference)
 Cluster corrected energies          -214.23801316 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95785760 (fixed)   0.95786087 (relaxed)   0.95785760 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00184722   -0.00426133   -0.68961237
 Singles      0.01707236   -0.06284662   -0.07039811
 Pairs        0.07100915   -0.00000000   -0.05296273
 Total        1.08992872   -0.06710795   -0.81297321
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35420037
 Nuclear energy                         0.00000000
 Kinetic energy                        69.27538716
 One electron energy                 -368.06979275
 Two electron energy                  153.90261918
 Virial quotient                       -3.09153341
 Correlation energy                    -0.81297321
 !MRCI STATE 9.2 Energy              -214.167173573642

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24028322 (Davidson, fixed reference)
 Cluster corrected energies          -214.24027717 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24028322 (Davidson, rotated reference)

 Cluster corrected energies          -214.23801315 (Pople, fixed reference)
 Cluster corrected energies          -214.23800685 (Pople, relaxed reference)
 Cluster corrected energies          -214.23801315 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Coefficient of reference function:   C(0) = 0.95785760 (fixed)   0.95786087 (relaxed)   0.95785760 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00184722   -0.00426133   -0.00528758
 Singles      0.01707238   -0.06284664   -0.07039813
 Pairs        0.07100914   -0.74586522   -0.73728750
 Total        1.08992873   -0.81297319   -0.81297321
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.35420037
 Nuclear energy                         0.00000000
 Kinetic energy                        69.27538754
 One electron energy                 -368.06979345
 Two electron energy                  153.90261988
 Virial quotient                       -3.09153339
 Correlation energy                    -0.81297321
 !MRCI STATE 10.2 Energy             -214.167173573201

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24028322 (Davidson, fixed reference)
 Cluster corrected energies          -214.24027717 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24028322 (Davidson, rotated reference)

 Cluster corrected energies          -214.23801316 (Pople, fixed reference)
 Cluster corrected energies          -214.23800685 (Pople, relaxed reference)
 Cluster corrected energies          -214.23801316 (Pople, rotated reference)



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
 CPU TIMES  *      1769.53   1748.14     11.79      9.24
 REAL TIME  *      1906.76 SEC
 DISK USED  *         2.04 GB (local),       58.44 GB (total)
 SF USED    *        18.89 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.48653346  AU                              
 SETTING HLSDIAG(2)     =      -214.24422323  AU                              
 SETTING HLSDIAG(3)     =      -214.24422322  AU                              
 SETTING HLSDIAG(4)     =      -214.24422313  AU                              
 SETTING HLSDIAG(5)     =      -214.24422311  AU                              
 SETTING HLSDIAG(6)     =      -214.24422312  AU                              
 SETTING HLSDIAG(7)     =      -214.24138039  AU                              
 SETTING HLSDIAG(8)     =      -214.24028322  AU                              
 SETTING HLSDIAG(9)     =      -214.24028322  AU                              
 SETTING HLSDIAG(10)    =      -214.24028322  AU                              


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
     1      -213.53073553
     2      -213.53073553
     3      -213.53073552
     4      -213.53073552
     5      -213.53073552
     6      -213.49356028
     7      -213.49356028
     8      -213.49356028

 Number of blocks in overlap matrix:   886   Smallest eigenvalue:  0.73D-03
 Number of N-2 electron functions:    1332
 Number of N-1 electron functions:   28036

 Number of internal configurations:                14896
 Number of singly external configurations:       3728792
 Number of doubly external configurations:      23394148
 Total number of contracted configurations:     27137836
 Total number of uncontracted configurations:  386701194

 Diagonal Coupling coefficients finished.               Storage:   7754009 words, CPU-Time:      2.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3509159 words, CPU-time:      6.59 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.53073553     0.00000000    -1.02568307  0.56D-01  0.13D+00    12.25
    1     2     2     1.00000000     0.00000000  -213.53073553     0.00000000    -1.02504953  0.55D-01  0.13D+00    12.25
    1     3     3     1.00000000     0.00000000  -213.53073552    -0.00000000    -1.02569676  0.56D-01  0.13D+00    12.25
    1     4     4     1.00000000     0.00000000  -213.53073552     0.00000000    -1.02551091  0.55D-01  0.13D+00    12.25
    1     5     5     1.00000000     0.00000000  -213.53073552     0.00000000    -1.02636714  0.56D-01  0.13D+00    12.25
    1     6     6     1.00000000     0.00000000  -213.49356028     0.00000000    -1.02306499  0.44D-01  0.14D+00    12.25
    1     7     7     1.00000000     0.00000000  -213.49356028    -0.00000000    -1.02465781  0.44D-01  0.14D+00    12.25
    1     8     8     1.00000000     0.00000000  -213.49356028     0.00000000    -1.02478237  0.44D-01  0.14D+00    12.25
    2     1     1     1.11231124    -0.80476850  -214.33550402    -0.80476850    -0.03006496  0.46D-02  0.24D-02   298.69
    2     2     2     1.11249732    -0.80457057  -214.33530610    -0.80457057    -0.03027494  0.47D-02  0.25D-02   298.69
    2     3     3     1.11260368    -0.80455850  -214.33529402    -0.80455850    -0.03029025  0.46D-02  0.25D-02   298.69
    2     4     4     1.11274230    -0.80440850  -214.33514403    -0.80440850    -0.03045508  0.47D-02  0.25D-02   298.69
    2     5     5     1.11314309    -0.80401910  -214.33475462    -0.80401910    -0.03087345  0.48D-02  0.26D-02   298.69
    2     6     6     1.11014474    -0.80809741  -214.30165769    -0.80809741    -0.03044967  0.47D-02  0.26D-02   298.69
    2     7     7     1.11119554    -0.80742742  -214.30098769    -0.80742742    -0.03113630  0.46D-02  0.30D-02   298.69
    2     8     8     1.11124059    -0.80739885  -214.30095913    -0.80739885    -0.03116502  0.46D-02  0.30D-02   298.69
    3     1     1     1.09491157    -0.83285781  -214.36359333    -0.02808931    -0.00043571  0.72D-04  0.44D-04   585.61
    3     2     2     1.09491359    -0.83285458  -214.36359010    -0.02828401    -0.00043911  0.72D-04  0.45D-04   585.61
    3     3     3     1.09492388    -0.83285380  -214.36358932    -0.02829530    -0.00043968  0.72D-04  0.46D-04   585.61
    3     4     4     1.09492290    -0.83284985  -214.36358538    -0.02844135    -0.00044359  0.73D-04  0.46D-04   585.61
    3     5     5     1.09493756    -0.83284343  -214.36357895    -0.02882433    -0.00045045  0.72D-04  0.48D-04   585.61
    3     6     6     1.09387563    -0.83644987  -214.33001015    -0.02835246    -0.00043800  0.57D-04  0.54D-04   585.61
    3     7     7     1.09395464    -0.83642812  -214.32998839    -0.02900070    -0.00045883  0.60D-04  0.60D-04   585.61
    3     8     8     1.09395673    -0.83642761  -214.32998789    -0.02902876    -0.00045921  0.59D-04  0.60D-04   585.61
    4     1     1     1.09392885    -0.83330751  -214.36404303    -0.00044970    -0.00001468  0.28D-05  0.15D-05   873.41
    4     2     2     1.09392895    -0.83330744  -214.36404296    -0.00045286    -0.00001474  0.28D-05  0.15D-05   873.41
    4     3     3     1.09393113    -0.83330738  -214.36404290    -0.00045358    -0.00001479  0.28D-05  0.15D-05   873.41
    4     4     4     1.09393161    -0.83330734  -214.36404287    -0.00045749    -0.00001480  0.28D-05  0.15D-05   873.41
    4     5     5     1.09393133    -0.83330722  -214.36404275    -0.00046380    -0.00001491  0.28D-05  0.15D-05   873.41
    4     6     6     1.09299419    -0.83689802  -214.33045829    -0.00044815    -0.00001390  0.27D-05  0.15D-05   873.41
    4     7     7     1.09300191    -0.83689720  -214.33045748    -0.00046908    -0.00001464  0.27D-05  0.17D-05   873.41
    4     8     8     1.09300213    -0.83689719  -214.33045747    -0.00046958    -0.00001464  0.27D-05  0.17D-05   873.41
    5     1     1     1.09386403    -0.83332314  -214.36405866    -0.00001563    -0.00000049  0.53D-07  0.61D-07  1161.67
    5     2     2     1.09386368    -0.83332313  -214.36405865    -0.00001569    -0.00000050  0.57D-07  0.61D-07  1161.67
    5     3     3     1.09386365    -0.83332313  -214.36405865    -0.00001575    -0.00000050  0.56D-07  0.61D-07  1161.67
    5     4     4     1.09386386    -0.83332312  -214.36405865    -0.00001578    -0.00000050  0.57D-07  0.61D-07  1161.67
    5     5     5     1.09386379    -0.83332312  -214.36405864    -0.00001590    -0.00000050  0.57D-07  0.62D-07  1161.67
    5     6     6     1.09297362    -0.83691294  -214.33047321    -0.00001492    -0.00000045  0.47D-07  0.61D-07  1161.67
    5     7     7     1.09297283    -0.83691292  -214.33047319    -0.00001572    -0.00000047  0.49D-07  0.63D-07  1161.67
    5     8     8     1.09297302    -0.83691292  -214.33047319    -0.00001572    -0.00000047  0.49D-07  0.63D-07  1161.67
    6     1     1     1.09385381    -0.83332364  -214.36405917    -0.00000051    -0.00000001  0.14D-08  0.20D-08  1449.60
    6     2     2     1.09385375    -0.83332363  -214.36405916    -0.00000051    -0.00000001  0.14D-08  0.19D-08  1449.60
    6     3     3     1.09385377    -0.83332363  -214.36405916    -0.00000051    -0.00000001  0.14D-08  0.19D-08  1449.60
    6     4     4     1.09385386    -0.83332363  -214.36405916    -0.00000051    -0.00000001  0.14D-08  0.20D-08  1449.60
    6     5     5     1.09385369    -0.83332363  -214.36405916    -0.00000051    -0.00000001  0.14D-08  0.20D-08  1449.60
    6     6     6     1.09296399    -0.83691341  -214.33047368    -0.00000047    -0.00000001  0.16D-08  0.19D-08  1449.60
    6     7     7     1.09296348    -0.83691341  -214.33047368    -0.00000049    -0.00000001  0.17D-08  0.18D-08  1449.60
    6     8     8     1.09296351    -0.83691340  -214.33047368    -0.00000049    -0.00000001  0.17D-08  0.18D-08  1449.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   5.2%
 P   0.5%  20.4%  22.9%

 Initialization:   0.6%
 Other:           49.5%

 Total CPU:     1449.6 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.0000000  -0.0000000   0.9441795   0.1405642   0.0000000   0.0000000  -0.0000000  -0.0000000
 2222222222/\/000          -0.0000000  -0.0000000  -0.1405643   0.9441795   0.0000000   0.0000000  -0.0000000   0.0000000
 2222222222/20000           0.0000000  -0.0000000   0.0000000  -0.0000000   0.6749939   0.0000000  -0.0000000   0.6713787
 22222222222/0000          -0.0000000   0.6749939   0.0000000   0.0000000   0.0000000   0.0000000   0.6713787   0.0000000
 222222222202/000           0.6749939  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.6713785  -0.0000000  -0.0000000
 222222222220/000          -0.6749939  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.6713785   0.0000000   0.0000000
 22222222220/2000          -0.0000000  -0.6749938  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.6713787  -0.0000000
 2222222222/02000           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.6749938  -0.0000000   0.0000000   0.6713787
 2222222222//00\0          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0304448   0.0000000   0.0000000   0.0672783
 2222222222//000\          -0.0000000  -0.0304453   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0672779   0.0000000
 22222222220//\00           0.0000000  -0.0304447   0.0000000   0.0000000  -0.0000000   0.0000000   0.0672779   0.0000000
 2222222222/0/00\           0.0304452  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0672778  -0.0000000   0.0000000
 2222222222/0/\00           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0304447   0.0000000  -0.0000000   0.0672778
 22222222220//0\0          -0.0304451   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0672778   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.955758   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000   -0.000000   -0.000000    0.955758   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.432492   -0.000000   -0.000000    0.000000    0.852305   -0.000000    0.000000    0.000000
 4           0.852305    0.000000   -0.000000    0.000000    0.432492   -0.000000   -0.000000    0.000000
 5          -0.000000    0.000000    0.955758    0.000000    0.000000   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.955042   -0.000000    0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.955042
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.955042   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955758   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.955758   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.955758    0.000000    0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.955758   -0.000000    0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.955758    0.000000    0.000000    0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.955042   -0.000000   -0.000000
 7          -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.955042   -0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.955042


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95575829 (fixed)   0.95582632 (relaxed)   0.95575829 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00079372   -0.00175839   -0.70724578
 Singles      0.01684553   -0.05974754   -0.06740401
 Pairs        0.07708277   -0.00000000   -0.05867385
 Total        1.09472202   -0.06150592   -0.83332364
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53073553
 Nuclear energy                         0.00000000
 Kinetic energy                        69.55652920
 One electron energy                 -372.52229784
 Two electron energy                  158.15823867
 Virial quotient                       -3.08186825
 Correlation energy                    -0.83332364
 !MRCI STATE 1.2 Energy              -214.364059165942

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44299327 (Davidson, fixed reference)
 Cluster corrected energies          -214.44286340 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44299327 (Davidson, rotated reference)

 Cluster corrected energies          -214.44177824 (Pople, fixed reference)
 Cluster corrected energies          -214.44163989 (Pople, relaxed reference)
 Cluster corrected energies          -214.44177824 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95575831 (fixed)   0.95582635 (relaxed)   0.95575831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00079372   -0.00175839   -0.70724587
 Singles      0.01684546   -0.05974745   -0.06740394
 Pairs        0.07708279   -0.00000002   -0.05867383
 Total        1.09472196   -0.06150586   -0.83332363
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53073552
 Nuclear energy                         0.00000000
 Kinetic energy                        69.55653291
 One electron energy                 -372.52230107
 Two electron energy                  158.15824191
 Virial quotient                       -3.08186809
 Correlation energy                    -0.83332363
 !MRCI STATE 2.2 Energy              -214.364059159529

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44299321 (Davidson, fixed reference)
 Cluster corrected energies          -214.44286335 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44299321 (Davidson, rotated reference)

 Cluster corrected energies          -214.44177818 (Pople, fixed reference)
 Cluster corrected energies          -214.44163983 (Pople, relaxed reference)
 Cluster corrected energies          -214.44177818 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.85230532 (fixed)   0.95582634 (relaxed)   0.95575830 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00079372   -0.00175839   -0.70724581
 Singles      0.01684549   -0.05974752   -0.06740394
 Pairs        0.07708278   -0.00000000   -0.05867388
 Total        1.09472198   -0.06150591   -0.83332363
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53073552
 Nuclear energy                         0.00000000
 Kinetic energy                        69.55654005
 One electron energy                 -372.52231787
 Two electron energy                  158.15825871
 Virial quotient                       -3.08186777
 Correlation energy                    -0.83332363
 !MRCI STATE 3.2 Energy              -214.364059157881

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44299323 (Davidson, fixed reference)
 Cluster corrected energies          -214.44286336 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44299323 (Davidson, rotated reference)

 Cluster corrected energies          -214.44177820 (Pople, fixed reference)
 Cluster corrected energies          -214.44163985 (Pople, relaxed reference)
 Cluster corrected energies          -214.44177820 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.85230528 (fixed)   0.95582630 (relaxed)   0.95575826 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00079372   -0.00175839   -0.70724560
 Singles      0.01684564   -0.05974768   -0.06740413
 Pairs        0.07708272   -0.00000000   -0.05867390
 Total        1.09472208   -0.06150607   -0.83332363
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53073553
 Nuclear energy                         0.00000000
 Kinetic energy                        69.55653454
 One electron energy                 -372.52230991
 Two electron energy                  158.15825076
 Virial quotient                       -3.08186802
 Correlation energy                    -0.83332363
 !MRCI STATE 4.2 Energy              -214.364059157334

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44299330 (Davidson, fixed reference)
 Cluster corrected energies          -214.44286343 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44299330 (Davidson, rotated reference)

 Cluster corrected energies          -214.44177828 (Pople, fixed reference)
 Cluster corrected energies          -214.44163993 (Pople, relaxed reference)
 Cluster corrected energies          -214.44177828 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95575834 (fixed)   0.95582638 (relaxed)   0.95575834 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00079372   -0.00175839   -0.70724603
 Singles      0.01684533   -0.05974733   -0.06740383
 Pairs        0.07708285   -0.00000000   -0.05867377
 Total        1.09472190   -0.06150572   -0.83332363
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53073552
 Nuclear energy                         0.00000000
 Kinetic energy                        69.55653454
 One electron energy                 -372.52230271
 Two electron energy                  158.15824356
 Virial quotient                       -3.08186802
 Correlation energy                    -0.83332363
 !MRCI STATE 5.2 Energy              -214.364059157243

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44299316 (Davidson, fixed reference)
 Cluster corrected energies          -214.44286329 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44299316 (Davidson, rotated reference)

 Cluster corrected energies          -214.44177812 (Pople, fixed reference)
 Cluster corrected energies          -214.44163977 (Pople, relaxed reference)
 Cluster corrected energies          -214.44177812 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95504164 (fixed)   0.95515951 (relaxed)   0.95504164 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00311225   -0.00613718   -0.71751805
 Singles      0.01309719   -0.05285601   -0.05821119
 Pairs        0.08015613   -0.00000000   -0.06118417
 Total        1.09636556   -0.05899319   -0.83691341
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.49356028
 Nuclear energy                         0.00000000
 Kinetic energy                        69.52962920
 One electron energy                 -372.31806362
 Two electron energy                  157.98758994
 Virial quotient                       -3.08257755
 Correlation energy                    -0.83691341
 !MRCI STATE 6.2 Energy              -214.330473681572

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41112331 (Davidson, fixed reference)
 Cluster corrected energies          -214.41089686 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41112331 (Davidson, rotated reference)

 Cluster corrected energies          -214.40999517 (Pople, fixed reference)
 Cluster corrected energies          -214.40975327 (Pople, relaxed reference)
 Cluster corrected energies          -214.40999517 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95504186 (fixed)   0.95515973 (relaxed)   0.95504186 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00311226   -0.00613718   -0.00797351
 Singles      0.01309712   -0.05285584   -0.05821113
 Pairs        0.08015569   -0.77792038   -0.77072877
 Total        1.09636506   -0.83691340   -0.83691341
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.49356028
 Nuclear energy                         0.00000000
 Kinetic energy                        69.52963715
 One electron energy                 -372.31807375
 Two electron energy                  157.98760007
 Virial quotient                       -3.08257719
 Correlation energy                    -0.83691341
 !MRCI STATE 7.2 Energy              -214.330473681520

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41112289 (Davidson, fixed reference)
 Cluster corrected energies          -214.41089645 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41112289 (Davidson, rotated reference)

 Cluster corrected energies          -214.40999472 (Pople, fixed reference)
 Cluster corrected energies          -214.40975283 (Pople, relaxed reference)
 Cluster corrected energies          -214.40999472 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95504184 (fixed)   0.95515971 (relaxed)   0.95504184 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00311226   -0.00613719   -0.71751854
 Singles      0.01309710   -0.05285581   -0.05821110
 Pairs        0.08015574   -0.00000000   -0.06118376
 Total        1.09636510   -0.05899299   -0.83691340
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.49356028
 Nuclear energy                         0.00000000
 Kinetic energy                        69.52963590
 One electron energy                 -372.31807122
 Two electron energy                  157.98759754
 Virial quotient                       -3.08257725
 Correlation energy                    -0.83691340
 !MRCI STATE 8.2 Energy              -214.330473680550

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41112293 (Davidson, fixed reference)
 Cluster corrected energies          -214.41089648 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41112293 (Davidson, rotated reference)

 Cluster corrected energies          -214.40999476 (Pople, fixed reference)
 Cluster corrected energies          -214.40975286 (Pople, relaxed reference)
 Cluster corrected energies          -214.40999476 (Pople, rotated reference)



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
 CPU TIMES  *      3330.85   1561.31   1748.14     11.79      9.24
 REAL TIME  *      3576.71 SEC
 DISK USED  *         3.66 GB (local),      103.92 GB (total)
 SF USED    *        18.89 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -214.44299327  AU                              
 SETTING HLSDIAG(12)    =      -214.44299321  AU                              
 SETTING HLSDIAG(13)    =      -214.44299323  AU                              
 SETTING HLSDIAG(14)    =      -214.44299330  AU                              
 SETTING HLSDIAG(15)    =      -214.44299316  AU                              
 SETTING HLSDIAG(16)    =      -214.41112331  AU                              
 SETTING HLSDIAG(17)    =      -214.41112289  AU                              
 SETTING HLSDIAG(18)    =      -214.41112293  AU                              


         HLSDIAG
    -214.4865335
    -214.2442232
    -214.2442232
    -214.2442231
    -214.2442231
    -214.2442231
    -214.2413804
    -214.2402832
    -214.2402832
    -214.2402832
    -214.4429933
    -214.4429932
    -214.4429932
    -214.4429933
    -214.4429932
    -214.4111233
    -214.4111229
    -214.4111229
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=  10

 Original energies:   -214.412524   -214.171309   -214.171309   -214.171309   -214.171309   -214.171309   -214.168479   -214.167174
                      -214.167174   -214.167174
 Replaced energies:   -214.486533   -214.244223   -214.244223   -214.244223   -214.244223   -214.244223   -214.241380   -214.240283
                      -214.240283   -214.240283

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.364059   -214.364059   -214.364059   -214.364059   -214.364059   -214.330474   -214.330474   -214.330474
 Replaced energies:   -214.442993   -214.442993   -214.442993   -214.442993   -214.442993   -214.411123   -214.411123   -214.411123



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.48653346

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    2111.22      -0.00      -0.00

    2   2.2  1.5  1.5       0.00   53180.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    5177.36       0.00      -0.00      -0.00    -860.60      -0.00      -0.00

    3   3.2  1.5  1.5       0.00       0.00   53180.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00   -1699.01      -0.00       0.00      -0.00   -2622.49      -0.00       0.00

    4   4.2  1.5  1.5       0.00       0.00       0.00   53180.97       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -5177.36    1699.01       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

    5   5.2  1.5  1.5       0.00       0.00       0.00       0.00   53180.98       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00   -2724.52       0.00       0.00       0.00   -2390.32

    6   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   53180.97       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00    2724.52      -0.00       0.00      -0.00    2390.32       0.00

    7   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   53804.88       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00   -3776.96      -0.00      -0.00

    8   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54045.68       0.00       0.00
                        -2111.22     860.60    2622.49       0.00      -0.00       0.00    3776.96       0.00       0.00      -0.00

    9   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54045.68       0.00
                            0.00       0.00       0.00       0.00      -0.00   -2390.32       0.00      -0.00       0.00   -2712.79

   10  10.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54045.68
                            0.00       0.00      -0.00      -0.00    2390.32      -0.00       0.00       0.00    2712.79       0.00

   11   1.2  1.5  0.5      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    1218.91
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00   -1218.91       0.00

   12   2.2  1.5  0.5       0.00      -0.00       0.00      -0.00      -0.00    -645.07       0.00       0.00       0.00    1559.68
                            0.00      -0.00      -0.00       0.00   -2344.08       0.00      -0.00       0.00    1062.81      -0.00

   13   3.2  1.5  0.5      -0.00      -0.00      -0.00       0.00       0.00    3079.14      -0.00      -0.00      -0.00     326.75
                           -0.00       0.00       0.00       0.00   -2098.22       0.00      -0.00      -0.00   -1187.35       0.00

   14   4.2  1.5  0.5       0.00       0.00      -0.00       0.00   -1573.00       0.00      -0.00       0.00    1380.05      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    1573.00      -0.00      -0.00      -0.00   -1380.06

   15   5.2  1.5  0.5       0.00       0.00      -0.00    1573.00      -0.00       0.00      -0.00   -1380.05       0.00       0.00
                            0.00    2344.08    2098.22      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   16   6.2  1.5  0.5       0.00     645.07   -3079.14      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00   -1573.00      -0.00      -0.00      -0.00   -1380.05       0.00      -0.00

   17   7.2  1.5  0.5      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00   -2180.63
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    2180.63      -0.00

   18   8.2  1.5  0.5      -0.00      -0.00       0.00      -0.00    1380.05      -0.00       0.00      -0.00   -1566.23       0.00
                           -0.00      -0.00       0.00       0.00       0.00    1380.05      -0.00      -0.00      -0.00   -1566.23

   19   9.2  1.5  0.5      -0.00      -0.00       0.00   -1380.05      -0.00       0.00       0.00    1566.23       0.00      -0.00
                         1218.91   -1062.81    1187.35       0.00       0.00      -0.00   -2180.63       0.00      -0.00       0.00

   20  10.2  1.5  0.5   -1218.91   -1559.68    -326.75       0.00      -0.00       0.00    2180.63      -0.00       0.00       0.00
                           -0.00       0.00      -0.00    1380.06      -0.00       0.00       0.00    1566.23      -0.00      -0.00

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

   41   1.2  0.5  0.5       0.00      -0.00      -0.00      -0.00     839.32      -0.00      -0.00      -0.00     739.34      -0.00
                           -0.00       0.00       0.00       0.00      -0.00    -839.32       0.00       0.00      -0.00    -739.34

   42   2.2  0.5  0.5       0.00     344.19   -1642.94      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00    -839.33      -0.00       0.00       0.00     739.35       0.00       0.00

   43   3.2  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00   -1314.27       0.00      -0.00      -0.00     531.06
                           -0.00      -0.00      -0.00      -0.00    1561.44      -0.00       0.00       0.00    -313.33       0.00

   44   4.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00   -1044.21       0.00       0.00       0.00    -668.41
                            0.00       0.00      -0.00       0.00    -616.09       0.00       0.00       0.00    -794.12      -0.00

   45   5.2  0.5  0.5       0.00       0.00      -0.00     839.32       0.00      -0.00       0.00     739.34       0.00      -0.00
                            0.00    1250.74    1119.55       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   46   6.2  0.5  0.5      -0.00      -0.00       0.00       0.00    -631.30       0.00      -0.00      -0.00    -764.60      -0.00
                            0.00       0.00       0.00      -0.00      -0.00    -631.30       0.00       0.00       0.00    -764.60

   47   7.2  0.5  0.5    6352.95    -713.46    -149.47      -0.00       0.00       0.00     566.61      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00     631.30       0.00       0.00      -0.00    -764.60      -0.00       0.00

   48   8.2  0.5  0.5       0.00       0.00       0.00    -631.30      -0.00       0.00      -0.00    -764.59      -0.00      -0.00
                        -6352.95    -486.19     543.14       0.00      -0.00      -0.00    -566.62      -0.00      -0.00      -0.00

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

    1   1.2  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   -1218.91
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00   -1218.91       0.00

    2   2.2  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00     645.07      -0.00      -0.00      -0.00   -1559.68
                            0.00       0.00      -0.00       0.00   -2344.08       0.00      -0.00       0.00    1062.81      -0.00

    3   3.2  1.5  1.5       0.00       0.00      -0.00      -0.00      -0.00   -3079.14       0.00       0.00       0.00    -326.75
                           -0.00       0.00      -0.00       0.00   -2098.22       0.00      -0.00      -0.00   -1187.35       0.00

    4   4.2  1.5  1.5      -0.00      -0.00       0.00       0.00    1573.00      -0.00       0.00      -0.00   -1380.05       0.00
                           -0.00      -0.00      -0.00       0.00       0.00    1573.00      -0.00      -0.00      -0.00   -1380.06

    5   5.2  1.5  1.5      -0.00      -0.00       0.00   -1573.00      -0.00      -0.00       0.00    1380.05      -0.00      -0.00
                            0.00    2344.08    2098.22      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

    6   6.2  1.5  1.5      -0.00    -645.07    3079.14       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00   -1573.00      -0.00       0.00      -0.00   -1380.05       0.00      -0.00

    7   7.2  1.5  1.5       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    2180.63
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    2180.63      -0.00

    8   8.2  1.5  1.5       0.00       0.00      -0.00       0.00   -1380.05       0.00      -0.00      -0.00    1566.23      -0.00
                           -0.00      -0.00       0.00       0.00       0.00    1380.05      -0.00       0.00      -0.00   -1566.23

    9   9.2  1.5  1.5       0.00       0.00      -0.00    1380.05       0.00      -0.00      -0.00   -1566.23       0.00       0.00
                         1218.91   -1062.81    1187.35       0.00       0.00      -0.00   -2180.63       0.00       0.00       0.00

   10  10.2  1.5  1.5    1218.91    1559.68     326.75      -0.00       0.00      -0.00   -2180.63       0.00      -0.00       0.00
                           -0.00       0.00      -0.00    1380.06      -0.00       0.00       0.00    1566.23      -0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00     703.74      -0.00      -0.00

   12   2.2  1.5  0.5       0.00   53180.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    1725.79       0.00      -0.00      -0.00    -286.87      -0.00      -0.00

   13   3.2  1.5  0.5       0.00       0.00   53180.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -566.34      -0.00       0.00      -0.00    -874.16      -0.00       0.00

   14   4.2  1.5  0.5       0.00       0.00       0.00   53180.97       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1725.79     566.34       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00   53180.98       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00    -908.17       0.00       0.00       0.00    -796.77

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00   53180.97       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00     908.17      -0.00       0.00      -0.00     796.77       0.00

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   53804.88       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00   -1258.99      -0.00      -0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54045.68       0.00       0.00
                         -703.74     286.87     874.16       0.00      -0.00       0.00    1258.99       0.00       0.00      -0.00

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54045.68       0.00
                            0.00       0.00       0.00       0.00      -0.00    -796.77       0.00      -0.00       0.00    -904.26

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54045.68
                            0.00       0.00      -0.00      -0.00     796.77      -0.00       0.00       0.00     904.26       0.00

   21   1.2  1.5 -0.5      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    1407.48
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00   -1407.48       0.00

   22   2.2  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00    -744.86       0.00       0.00       0.00    1800.96
                            0.00      -0.00      -0.00       0.00   -2706.71       0.00      -0.00       0.00    1227.23      -0.00

   23   3.2  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00    3555.49      -0.00      -0.00      -0.00     377.30
                           -0.00       0.00       0.00       0.00   -2422.82       0.00      -0.00      -0.00   -1371.03       0.00

   24   4.2  1.5 -0.5       0.00       0.00      -0.00       0.00   -1816.34       0.00      -0.00       0.00    1593.55      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    1816.35      -0.00      -0.00      -0.00   -1593.55

   25   5.2  1.5 -0.5       0.00       0.00      -0.00    1816.34      -0.00       0.00      -0.00   -1593.55       0.00       0.00
                            0.00    2706.71    2422.82      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   26   6.2  1.5 -0.5       0.00     744.86   -3555.49      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00   -1816.35      -0.00      -0.00      -0.00   -1593.55       0.00      -0.00

   27   7.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00   -2517.97
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    2517.97      -0.00

   28   8.2  1.5 -0.5      -0.00      -0.00       0.00      -0.00    1593.55      -0.00       0.00      -0.00   -1808.53       0.00
                           -0.00      -0.00       0.00       0.00       0.00    1593.55      -0.00      -0.00      -0.00   -1808.53

   29   9.2  1.5 -0.5      -0.00      -0.00       0.00   -1593.55      -0.00       0.00       0.00    1808.53       0.00      -0.00
                         1407.48   -1227.23    1371.03       0.00       0.00      -0.00   -2517.97       0.00      -0.00       0.00

   30  10.2  1.5 -0.5   -1407.48   -1800.96    -377.30       0.00      -0.00       0.00    2517.97      -0.00       0.00       0.00
                           -0.00       0.00      -0.00    1593.55      -0.00       0.00       0.00    1808.53      -0.00      -0.00

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
                           -0.00   -1841.65     604.36       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   42   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00    -969.15       0.00      -0.00      -0.00     853.71       0.00

   43   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     285.41      -0.00       0.00       0.00     975.02       0.00      -0.00

   44   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00   -1917.15      -0.00      -0.00      -0.00     145.15       0.00       0.00

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00     969.16      -0.00       0.00       0.00    -853.71

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         7335.76     262.45     799.76       0.00       0.00       0.00     654.26       0.00      -0.00       0.00

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00    -728.97       0.00      -0.00       0.00     882.88       0.00

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     728.96      -0.00      -0.00       0.00    -882.87

   49   1.2  0.5 -0.5       0.00      -0.00      -0.00      -0.00     484.58      -0.00      -0.00      -0.00     426.86      -0.00
                           -0.00       0.00       0.00       0.00      -0.00    -484.58       0.00       0.00      -0.00    -426.86

   50   2.2  0.5 -0.5       0.00     198.72    -948.55      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00    -484.58      -0.00       0.00       0.00     426.86       0.00       0.00

   51   3.2  0.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00    -758.79       0.00      -0.00      -0.00     306.61
                           -0.00      -0.00      -0.00      -0.00     901.50      -0.00       0.00       0.00    -180.90       0.00

   52   4.2  0.5 -0.5       0.00       0.00       0.00      -0.00      -0.00    -602.88       0.00       0.00       0.00    -385.91
                            0.00       0.00      -0.00       0.00    -355.70       0.00       0.00       0.00    -458.48      -0.00

   53   5.2  0.5 -0.5       0.00       0.00      -0.00     484.58       0.00      -0.00       0.00     426.86       0.00      -0.00
                            0.00     722.11     646.37       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   54   6.2  0.5 -0.5      -0.00      -0.00       0.00       0.00    -364.48       0.00      -0.00      -0.00    -441.44      -0.00
                            0.00       0.00       0.00      -0.00      -0.00    -364.48       0.00       0.00       0.00    -441.44

   55   7.2  0.5 -0.5    3667.88    -411.92     -86.29      -0.00       0.00       0.00     327.13      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00     364.48       0.00       0.00      -0.00    -441.44      -0.00       0.00

   56   8.2  0.5 -0.5       0.00       0.00       0.00    -364.48      -0.00       0.00      -0.00    -441.44      -0.00      -0.00
                        -3667.88    -280.70     313.58       0.00      -0.00      -0.00    -327.14      -0.00      -0.00      -0.00


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

   11   1.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   -1407.48
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00   -1407.48       0.00

   12   2.2  1.5  0.5      -0.00      -0.00      -0.00       0.00       0.00     744.86      -0.00      -0.00      -0.00   -1800.96
                            0.00       0.00      -0.00       0.00   -2706.71       0.00      -0.00       0.00    1227.23      -0.00

   13   3.2  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00   -3555.49       0.00       0.00       0.00    -377.30
                           -0.00       0.00      -0.00       0.00   -2422.82       0.00      -0.00      -0.00   -1371.03       0.00

   14   4.2  1.5  0.5      -0.00      -0.00       0.00       0.00    1816.34      -0.00       0.00      -0.00   -1593.55       0.00
                           -0.00      -0.00      -0.00       0.00       0.00    1816.35      -0.00      -0.00      -0.00   -1593.55

   15   5.2  1.5  0.5      -0.00      -0.00       0.00   -1816.34      -0.00      -0.00       0.00    1593.55      -0.00      -0.00
                            0.00    2706.71    2422.82      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   16   6.2  1.5  0.5      -0.00    -744.86    3555.49       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00   -1816.35      -0.00       0.00      -0.00   -1593.55       0.00      -0.00

   17   7.2  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    2517.97
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    2517.97      -0.00

   18   8.2  1.5  0.5       0.00       0.00      -0.00       0.00   -1593.55       0.00      -0.00      -0.00    1808.53      -0.00
                           -0.00      -0.00       0.00       0.00       0.00    1593.55      -0.00       0.00      -0.00   -1808.53

   19   9.2  1.5  0.5       0.00       0.00      -0.00    1593.55       0.00      -0.00      -0.00   -1808.53       0.00       0.00
                         1407.48   -1227.23    1371.03       0.00       0.00      -0.00   -2517.97       0.00       0.00       0.00

   20  10.2  1.5  0.5    1407.48    1800.96     377.30      -0.00       0.00      -0.00   -2517.97       0.00      -0.00       0.00
                           -0.00       0.00      -0.00    1593.55      -0.00       0.00       0.00    1808.53      -0.00       0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    -703.74       0.00       0.00

   22   2.2  1.5 -0.5       0.00   53180.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00   -1725.79      -0.00       0.00       0.00     286.87       0.00       0.00

   23   3.2  1.5 -0.5       0.00       0.00   53180.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     566.34       0.00      -0.00       0.00     874.16       0.00      -0.00

   24   4.2  1.5 -0.5       0.00       0.00       0.00   53180.97       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1725.79    -566.34      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00   53180.98       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00     908.17      -0.00      -0.00      -0.00     796.77

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   53180.97       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00    -908.17       0.00      -0.00       0.00    -796.77      -0.00

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   53804.88       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00    1258.99       0.00       0.00

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54045.68       0.00       0.00
                          703.74    -286.87    -874.16      -0.00       0.00      -0.00   -1258.99      -0.00      -0.00       0.00

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54045.68       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     796.77      -0.00       0.00      -0.00     904.26

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54045.68
                           -0.00      -0.00       0.00       0.00    -796.77       0.00      -0.00      -0.00    -904.26      -0.00

   31   1.2  1.5 -1.5      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    1218.91
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00   -1218.91       0.00

   32   2.2  1.5 -1.5       0.00      -0.00       0.00      -0.00      -0.00    -645.07       0.00       0.00       0.00    1559.68
                            0.00      -0.00      -0.00       0.00   -2344.08       0.00      -0.00       0.00    1062.81      -0.00

   33   3.2  1.5 -1.5      -0.00      -0.00      -0.00       0.00       0.00    3079.14      -0.00      -0.00      -0.00     326.75
                           -0.00       0.00       0.00       0.00   -2098.22       0.00      -0.00      -0.00   -1187.35       0.00

   34   4.2  1.5 -1.5       0.00       0.00      -0.00       0.00   -1573.00       0.00      -0.00       0.00    1380.05      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    1573.00      -0.00      -0.00      -0.00   -1380.06

   35   5.2  1.5 -1.5       0.00       0.00      -0.00    1573.00      -0.00       0.00      -0.00   -1380.05       0.00       0.00
                            0.00    2344.08    2098.22      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   36   6.2  1.5 -1.5       0.00     645.07   -3079.14      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00   -1573.00      -0.00      -0.00      -0.00   -1380.05       0.00      -0.00

   37   7.2  1.5 -1.5      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00   -2180.63
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    2180.63      -0.00

   38   8.2  1.5 -1.5      -0.00      -0.00       0.00      -0.00    1380.05      -0.00       0.00      -0.00   -1566.23       0.00
                           -0.00      -0.00       0.00       0.00       0.00    1380.05      -0.00      -0.00      -0.00   -1566.23

   39   9.2  1.5 -1.5      -0.00      -0.00       0.00   -1380.05      -0.00       0.00       0.00    1566.23       0.00      -0.00
                         1218.91   -1062.81    1187.35       0.00       0.00      -0.00   -2180.63       0.00      -0.00       0.00

   40  10.2  1.5 -1.5   -1218.91   -1559.68    -326.75       0.00      -0.00       0.00    2180.63      -0.00       0.00       0.00
                           -0.00       0.00      -0.00    1380.06      -0.00       0.00       0.00    1566.23      -0.00      -0.00

   41   1.2  0.5  0.5       0.00      -0.00      -0.00      -0.00     484.58      -0.00      -0.00      -0.00     426.86      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00     484.58      -0.00      -0.00       0.00     426.86

   42   2.2  0.5  0.5       0.00     198.72    -948.55      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00     484.58       0.00      -0.00      -0.00    -426.86      -0.00      -0.00

   43   3.2  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00    -758.79       0.00      -0.00      -0.00     306.61
                            0.00       0.00       0.00       0.00    -901.50       0.00      -0.00      -0.00     180.90      -0.00

   44   4.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00    -602.88       0.00       0.00       0.00    -385.91
                           -0.00      -0.00       0.00      -0.00     355.70      -0.00      -0.00      -0.00     458.48       0.00

   45   5.2  0.5  0.5       0.00       0.00      -0.00     484.58       0.00      -0.00       0.00     426.86       0.00      -0.00
                           -0.00    -722.11    -646.37      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   46   6.2  0.5  0.5      -0.00      -0.00       0.00       0.00    -364.48       0.00      -0.00      -0.00    -441.44      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00     364.48      -0.00      -0.00      -0.00     441.44

   47   7.2  0.5  0.5    3667.88    -411.92     -86.29      -0.00       0.00       0.00     327.13      -0.00      -0.00       0.00
                            0.00      -0.00       0.00    -364.48      -0.00      -0.00       0.00     441.44       0.00      -0.00

   48   8.2  0.5  0.5       0.00       0.00       0.00    -364.48      -0.00       0.00      -0.00    -441.44      -0.00      -0.00
                         3667.88     280.70    -313.58      -0.00       0.00       0.00     327.14       0.00       0.00       0.00

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1841.65     604.36       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00    -969.15       0.00      -0.00      -0.00     853.71       0.00

   51   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     285.41      -0.00       0.00       0.00     975.02       0.00      -0.00

   52   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00   -1917.15      -0.00      -0.00      -0.00     145.15       0.00       0.00

   53   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00     969.16      -0.00       0.00       0.00    -853.71

   54   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         7335.76     262.45     799.76       0.00       0.00       0.00     654.26       0.00      -0.00       0.00

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00    -728.97       0.00      -0.00       0.00     882.88       0.00

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     728.96      -0.00      -0.00       0.00    -882.87


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

   21   1.2  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   -1218.91
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00   -1218.91       0.00

   22   2.2  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00     645.07      -0.00      -0.00      -0.00   -1559.68
                            0.00       0.00      -0.00       0.00   -2344.08       0.00      -0.00       0.00    1062.81      -0.00

   23   3.2  1.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00   -3079.14       0.00       0.00       0.00    -326.75
                           -0.00       0.00      -0.00       0.00   -2098.22       0.00      -0.00      -0.00   -1187.35       0.00

   24   4.2  1.5 -0.5      -0.00      -0.00       0.00       0.00    1573.00      -0.00       0.00      -0.00   -1380.05       0.00
                           -0.00      -0.00      -0.00       0.00       0.00    1573.00      -0.00      -0.00      -0.00   -1380.06

   25   5.2  1.5 -0.5      -0.00      -0.00       0.00   -1573.00      -0.00      -0.00       0.00    1380.05      -0.00      -0.00
                            0.00    2344.08    2098.22      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   26   6.2  1.5 -0.5      -0.00    -645.07    3079.14       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00   -1573.00      -0.00       0.00      -0.00   -1380.05       0.00      -0.00

   27   7.2  1.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    2180.63
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    2180.63      -0.00

   28   8.2  1.5 -0.5       0.00       0.00      -0.00       0.00   -1380.05       0.00      -0.00      -0.00    1566.23      -0.00
                           -0.00      -0.00       0.00       0.00       0.00    1380.05      -0.00       0.00      -0.00   -1566.23

   29   9.2  1.5 -0.5       0.00       0.00      -0.00    1380.05       0.00      -0.00      -0.00   -1566.23       0.00       0.00
                         1218.91   -1062.81    1187.35       0.00       0.00      -0.00   -2180.63       0.00       0.00       0.00

   30  10.2  1.5 -0.5    1218.91    1559.68     326.75      -0.00       0.00      -0.00   -2180.63       0.00      -0.00       0.00
                           -0.00       0.00      -0.00    1380.06      -0.00       0.00       0.00    1566.23      -0.00       0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00   -2111.22       0.00       0.00

   32   2.2  1.5 -1.5       0.00   53180.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00   -5177.36      -0.00       0.00       0.00     860.60       0.00       0.00

   33   3.2  1.5 -1.5       0.00       0.00   53180.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    1699.01       0.00      -0.00       0.00    2622.49       0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00   53180.97       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    5177.36   -1699.01      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   53180.98       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00    2724.52      -0.00      -0.00      -0.00    2390.32

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   53180.97       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00   -2724.52       0.00      -0.00       0.00   -2390.32      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   53804.88       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00    3776.96       0.00       0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54045.68       0.00       0.00
                         2111.22    -860.60   -2622.49      -0.00       0.00      -0.00   -3776.96      -0.00      -0.00       0.00

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54045.68       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    2390.32      -0.00       0.00      -0.00    2712.79

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54045.68
                           -0.00      -0.00       0.00       0.00   -2390.32       0.00      -0.00      -0.00   -2712.79      -0.00

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

   49   1.2  0.5 -0.5       0.00      -0.00      -0.00      -0.00     839.32      -0.00      -0.00      -0.00     739.34      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00     839.32      -0.00      -0.00       0.00     739.34

   50   2.2  0.5 -0.5       0.00     344.19   -1642.94      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00     839.33       0.00      -0.00      -0.00    -739.35      -0.00      -0.00

   51   3.2  0.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00   -1314.27       0.00      -0.00      -0.00     531.06
                            0.00       0.00       0.00       0.00   -1561.44       0.00      -0.00      -0.00     313.33      -0.00

   52   4.2  0.5 -0.5       0.00       0.00       0.00      -0.00      -0.00   -1044.21       0.00       0.00       0.00    -668.41
                           -0.00      -0.00       0.00      -0.00     616.09      -0.00      -0.00      -0.00     794.12       0.00

   53   5.2  0.5 -0.5       0.00       0.00      -0.00     839.32       0.00      -0.00       0.00     739.34       0.00      -0.00
                           -0.00   -1250.74   -1119.55      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   54   6.2  0.5 -0.5      -0.00      -0.00       0.00       0.00    -631.30       0.00      -0.00      -0.00    -764.60      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00     631.30      -0.00      -0.00      -0.00     764.60

   55   7.2  0.5 -0.5    6352.95    -713.46    -149.47      -0.00       0.00       0.00     566.61      -0.00      -0.00       0.00
                            0.00      -0.00       0.00    -631.30      -0.00      -0.00       0.00     764.60       0.00      -0.00

   56   8.2  0.5 -0.5       0.00       0.00       0.00    -631.30      -0.00       0.00      -0.00    -764.59      -0.00      -0.00
                         6352.95     486.19    -543.14      -0.00       0.00       0.00     566.62       0.00       0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -0.00    6352.95       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00    6352.95       0.00       0.00

    2   2.2  1.5  1.5      -0.00     344.19       0.00       0.00       0.00      -0.00    -713.46       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00   -1250.74      -0.00      -0.00     486.19       0.00       0.00

    3   3.2  1.5  1.5      -0.00   -1642.94      -0.00       0.00      -0.00       0.00    -149.47       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00   -1119.55      -0.00       0.00    -543.14       0.00       0.00

    4   4.2  1.5  1.5      -0.00      -0.00      -0.00      -0.00     839.32       0.00      -0.00    -631.30       0.00       0.00
                           -0.00     839.33       0.00      -0.00      -0.00       0.00    -631.30      -0.00       0.00       0.00

    5   5.2  1.5  1.5     839.32      -0.00      -0.00      -0.00       0.00    -631.30       0.00      -0.00       0.00       0.00
                            0.00       0.00   -1561.44     616.09      -0.00       0.00      -0.00       0.00       0.00       0.00

    6   6.2  1.5  1.5      -0.00       0.00   -1314.27   -1044.21      -0.00       0.00       0.00       0.00       0.00       0.00
                          839.32      -0.00       0.00      -0.00      -0.00     631.30      -0.00       0.00       0.00       0.00

    7   7.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00      -0.00     566.61      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     566.62       0.00       0.00

    8   8.2  1.5  1.5      -0.00      -0.00      -0.00       0.00     739.34      -0.00      -0.00    -764.59       0.00       0.00
                           -0.00    -739.35      -0.00      -0.00      -0.00      -0.00     764.60       0.00       0.00       0.00

    9   9.2  1.5  1.5     739.34      -0.00      -0.00       0.00       0.00    -764.60      -0.00      -0.00       0.00       0.00
                            0.00      -0.00     313.33     794.12      -0.00      -0.00       0.00       0.00       0.00       0.00

   10  10.2  1.5  1.5      -0.00       0.00     531.06    -668.41      -0.00      -0.00       0.00      -0.00       0.00       0.00
                          739.34      -0.00      -0.00       0.00      -0.00     764.60      -0.00       0.00       0.00       0.00

   11   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00   -7335.76       0.00      -0.00       0.00      -0.00

   12   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     198.72
                         1841.65      -0.00       0.00       0.00       0.00    -262.45      -0.00      -0.00      -0.00       0.00

   13   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -948.55
                         -604.36       0.00       0.00      -0.00      -0.00    -799.76       0.00       0.00      -0.00      -0.00

   14   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00    -285.41    1917.15      -0.00      -0.00      -0.00       0.00      -0.00     484.58

   15   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     484.58      -0.00
                            0.00     969.15       0.00       0.00      -0.00      -0.00     728.97      -0.00       0.00       0.00

   16   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00    -969.16      -0.00      -0.00    -728.96     484.58      -0.00

   17   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00    -654.26       0.00       0.00      -0.00      -0.00

   18   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00    -975.02    -145.15      -0.00      -0.00      -0.00       0.00      -0.00    -426.86

   19   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     426.86      -0.00
                           -0.00    -853.71      -0.00      -0.00      -0.00       0.00    -882.88      -0.00       0.00      -0.00

   20  10.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00     853.71      -0.00      -0.00     882.87     426.86      -0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00    3667.88       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00   -3667.88       0.00       0.00

   22   2.2  1.5 -0.5      -0.00     198.72       0.00       0.00       0.00      -0.00    -411.92       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00     722.11       0.00       0.00    -280.70    1841.65      -0.00

   23   3.2  1.5 -0.5      -0.00    -948.55      -0.00       0.00      -0.00       0.00     -86.29       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     646.37       0.00      -0.00     313.58    -604.36       0.00

   24   4.2  1.5 -0.5      -0.00      -0.00      -0.00      -0.00     484.58       0.00      -0.00    -364.48       0.00       0.00
                            0.00    -484.58      -0.00       0.00       0.00      -0.00     364.48       0.00      -0.00      -0.00

   25   5.2  1.5 -0.5     484.58      -0.00      -0.00      -0.00       0.00    -364.48       0.00      -0.00       0.00       0.00
                           -0.00      -0.00     901.50    -355.70       0.00      -0.00       0.00      -0.00       0.00     969.15

   26   6.2  1.5 -0.5      -0.00       0.00    -758.79    -602.88      -0.00       0.00       0.00       0.00       0.00       0.00
                         -484.58       0.00      -0.00       0.00       0.00    -364.48       0.00      -0.00       0.00      -0.00

   27   7.2  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00      -0.00     327.13      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    -327.14      -0.00       0.00

   28   8.2  1.5 -0.5      -0.00      -0.00      -0.00       0.00     426.86      -0.00      -0.00    -441.44       0.00       0.00
                            0.00     426.86       0.00       0.00       0.00       0.00    -441.44      -0.00       0.00       0.00

   29   9.2  1.5 -0.5     426.86      -0.00      -0.00       0.00       0.00    -441.44      -0.00      -0.00       0.00       0.00
                           -0.00       0.00    -180.90    -458.48       0.00       0.00      -0.00      -0.00      -0.00    -853.71

   30  10.2  1.5 -0.5      -0.00       0.00     306.61    -385.91      -0.00      -0.00       0.00      -0.00       0.00       0.00
                         -426.86       0.00       0.00      -0.00       0.00    -441.44       0.00      -0.00       0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     344.19
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00   -1642.94
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -839.33

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     839.32      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -839.32       0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     739.35

   39   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     739.34      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   40  10.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -739.34       0.00

   41   1.2  0.5  0.5    9555.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -10.50      70.54      -0.00       0.00      -0.00      -0.00      -0.00     -35.66

   42   2.2  0.5  0.5       0.00    9555.98       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      35.66      -0.00      -0.00   -4527.00      35.66       0.00

   43   3.2  0.5  0.5       0.00       0.00    9555.98       0.00       0.00       0.00       0.00       0.00       0.00      55.84
                           10.50       0.00       0.00       0.00      -0.00    5170.36      -0.00      -0.00      -0.00      -0.00

   44   4.2  0.5  0.5       0.00       0.00       0.00    9555.96       0.00       0.00       0.00       0.00      -0.00      44.36
                          -70.54      -0.00      -0.00       0.00      -0.00     769.74      -0.00      -0.00      -0.00      -0.00

   45   5.2  0.5  0.5       0.00       0.00       0.00       0.00    9555.99       0.00       0.00       0.00      35.66       0.00
                            0.00     -35.66       0.00       0.00       0.00       0.00    4527.00       0.00       0.00      -0.00

   46   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   16550.62       0.00       0.00      -0.00       0.00
                           -0.00       0.00   -5170.36    -769.74      -0.00       0.00       0.00       0.00      -0.00    4526.99

   47   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   16550.71       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00   -4527.00      -0.00       0.00     173.62    4527.00      -0.00

   48   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16550.70    4527.00      -0.00
                            0.00    4527.00       0.00       0.00      -0.00      -0.00    -173.62      -0.00      -0.00      -0.00

   49   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      35.66      -0.00       0.00    4527.00    9555.97       0.00
                            0.00     -35.66       0.00       0.00      -0.00       0.00   -4527.00       0.00       0.00      -0.00

   50   2.2  0.5 -0.5       0.00       0.00      55.84      44.36       0.00       0.00      -0.00      -0.00       0.00    9555.98
                           35.66      -0.00       0.00       0.00       0.00   -4526.99       0.00       0.00       0.00       0.00

   51   3.2  0.5 -0.5      -0.00     -55.84       0.00       0.00      -0.00       0.00    3251.79      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      66.35      -0.00       0.00   -1918.57     -10.50      -0.00

   52   4.2  0.5 -0.5       0.00     -44.36      -0.00      -0.00      -0.00       0.00   -4092.80       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -26.18      -0.00      -0.00   -4862.53      70.54       0.00

   53   5.2  0.5 -0.5     -35.66      -0.00       0.00       0.00      -0.00   -4526.99       0.00      -0.00       0.00       0.00
                            0.00      -0.00     -66.35      26.18      -0.00      -0.00      -0.00      -0.00      -0.00      35.66

   54   6.2  0.5 -0.5       0.00      -0.00      -0.00      -0.00    4526.99       0.00      -0.00     173.62       0.00       0.00
                           -0.00    4526.99       0.00       0.00       0.00      -0.00     173.62      -0.00       0.00      -0.00

   55   7.2  0.5 -0.5      -0.00       0.00   -3251.79    4092.80      -0.00       0.00      -0.00       0.00       0.00       0.00
                         4527.00      -0.00      -0.00       0.00       0.00    -173.62       0.00      -0.00      -0.00      -0.00

   56   8.2  0.5 -0.5   -4527.00       0.00       0.00      -0.00       0.00    -173.62      -0.00       0.00       0.00       0.00
                           -0.00      -0.00    1918.57    4862.53       0.00       0.00       0.00       0.00      -0.00   -4527.00


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

   11   1.2  1.5  0.5       0.00       0.00       0.00      -0.00    3667.88       0.00
                            0.00      -0.00      -0.00      -0.00       0.00    3667.88

   12   2.2  1.5  0.5       0.00       0.00       0.00      -0.00    -411.92       0.00
                            0.00      -0.00    -722.11      -0.00      -0.00     280.70

   13   3.2  1.5  0.5      -0.00       0.00      -0.00       0.00     -86.29       0.00
                            0.00       0.00    -646.37      -0.00       0.00    -313.58

   14   4.2  1.5  0.5      -0.00      -0.00     484.58       0.00      -0.00    -364.48
                            0.00      -0.00      -0.00       0.00    -364.48      -0.00

   15   5.2  1.5  0.5      -0.00      -0.00       0.00    -364.48       0.00      -0.00
                         -901.50     355.70      -0.00       0.00      -0.00       0.00

   16   6.2  1.5  0.5    -758.79    -602.88      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     364.48      -0.00       0.00

   17   7.2  1.5  0.5       0.00       0.00       0.00      -0.00     327.13      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00     327.14

   18   8.2  1.5  0.5      -0.00       0.00     426.86      -0.00      -0.00    -441.44
                           -0.00      -0.00      -0.00      -0.00     441.44       0.00

   19   9.2  1.5  0.5      -0.00       0.00       0.00    -441.44      -0.00      -0.00
                          180.90     458.48      -0.00      -0.00       0.00       0.00

   20  10.2  1.5  0.5     306.61    -385.91      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00     441.44      -0.00       0.00

   21   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00   -7335.76       0.00      -0.00

   22   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -262.45      -0.00      -0.00

   23   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -799.76       0.00       0.00

   24   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -285.41    1917.15      -0.00      -0.00      -0.00       0.00

   25   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     728.97      -0.00

   26   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -969.16      -0.00      -0.00    -728.96

   27   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -654.26       0.00       0.00

   28   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                         -975.02    -145.15      -0.00      -0.00      -0.00       0.00

   29   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -882.88      -0.00

   30  10.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     853.71      -0.00      -0.00     882.87

   31   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00    6352.95       0.00
                           -0.00       0.00       0.00       0.00      -0.00   -6352.95

   32   2.2  1.5 -1.5       0.00       0.00       0.00      -0.00    -713.46       0.00
                           -0.00       0.00    1250.74       0.00       0.00    -486.19

   33   3.2  1.5 -1.5      -0.00       0.00      -0.00       0.00    -149.47       0.00
                           -0.00      -0.00    1119.55       0.00      -0.00     543.14

   34   4.2  1.5 -1.5      -0.00      -0.00     839.32       0.00      -0.00    -631.30
                           -0.00       0.00       0.00      -0.00     631.30       0.00

   35   5.2  1.5 -1.5      -0.00      -0.00       0.00    -631.30       0.00      -0.00
                         1561.44    -616.09       0.00      -0.00       0.00      -0.00

   36   6.2  1.5 -1.5   -1314.27   -1044.21      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -631.30       0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00      -0.00     566.61      -0.00
                            0.00       0.00      -0.00       0.00      -0.00    -566.62

   38   8.2  1.5 -1.5      -0.00       0.00     739.34      -0.00      -0.00    -764.59
                            0.00       0.00       0.00       0.00    -764.60      -0.00

   39   9.2  1.5 -1.5      -0.00       0.00       0.00    -764.60      -0.00      -0.00
                         -313.33    -794.12       0.00       0.00      -0.00      -0.00

   40  10.2  1.5 -1.5     531.06    -668.41      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00    -764.60       0.00      -0.00

   41   1.2  0.5  0.5      -0.00       0.00     -35.66       0.00      -0.00   -4527.00
                            0.00       0.00      -0.00       0.00   -4527.00       0.00

   42   2.2  0.5  0.5     -55.84     -44.36      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00   -4526.99       0.00       0.00

   43   3.2  0.5  0.5       0.00      -0.00       0.00      -0.00   -3251.79       0.00
                           -0.00       0.00      66.35      -0.00       0.00   -1918.57

   44   4.2  0.5  0.5       0.00      -0.00       0.00      -0.00    4092.80      -0.00
                           -0.00       0.00     -26.18      -0.00      -0.00   -4862.53

   45   5.2  0.5  0.5      -0.00      -0.00      -0.00    4526.99      -0.00       0.00
                          -66.35      26.18       0.00      -0.00      -0.00      -0.00

   46   6.2  0.5  0.5       0.00       0.00   -4526.99       0.00       0.00    -173.62
                            0.00       0.00       0.00       0.00     173.62      -0.00

   47   7.2  0.5  0.5    3251.79   -4092.80       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00    -173.62      -0.00      -0.00

   48   8.2  0.5  0.5      -0.00       0.00      -0.00     173.62       0.00       0.00
                         1918.57    4862.53       0.00       0.00       0.00      -0.00

   49   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                           10.50     -70.54       0.00      -0.00       0.00       0.00

   50   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -35.66       0.00       0.00    4527.00

   51   3.2  0.5 -0.5    9555.98       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00   -5170.36       0.00       0.00

   52   4.2  0.5 -0.5       0.00    9555.96       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -769.74       0.00       0.00

   53   5.2  0.5 -0.5       0.00       0.00    9555.99       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -4527.00      -0.00

   54   6.2  0.5 -0.5       0.00       0.00       0.00   16550.62       0.00       0.00
                         5170.36     769.74       0.00      -0.00      -0.00      -0.00

   55   7.2  0.5 -0.5       0.00       0.00       0.00       0.00   16550.71       0.00
                           -0.00      -0.00    4527.00       0.00      -0.00    -173.62

   56   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   16550.70
                           -0.00      -0.00       0.00       0.00     173.62       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -214.51157914    -0.02504568    -5496.89      0.00000000        0.00      0.0000
     2  -214.51157914    -0.02504568    -5496.89      0.00000000        0.00      0.0000
     3  -214.51157908    -0.02504561    -5496.88      0.00000006        0.01      0.0000
     4  -214.51157908    -0.02504561    -5496.88      0.00000006        0.01      0.0000
     5  -214.46210400     0.02442947     5361.65      0.04947514    10858.54      1.3463
     6  -214.46210400     0.02442947     5361.65      0.04947514    10858.54      1.3463
     7  -214.46210399     0.02442947     5361.65      0.04947515    10858.54      1.3463
     8  -214.46210399     0.02442947     5361.65      0.04947515    10858.54      1.3463
     9  -214.44352160     0.04301186     9440.01      0.06805754    14936.90      1.8519
    10  -214.44352160     0.04301186     9440.01      0.06805754    14936.90      1.8519
    11  -214.44352154     0.04301192     9440.03      0.06805760    14936.92      1.8519
    12  -214.44352154     0.04301192     9440.03      0.06805760    14936.92      1.8519
    13  -214.44352150     0.04301196     9440.03      0.06805764    14936.93      1.8519
    14  -214.44352150     0.04301196     9440.03      0.06805764    14936.93      1.8519
    15  -214.41325588     0.07327759    16082.57      0.09832326    21579.46      2.6755
    16  -214.41325588     0.07327759    16082.57      0.09832326    21579.46      2.6755
    17  -214.36813362     0.11839985    25985.76      0.14344553    31482.65      3.9034
    18  -214.36813362     0.11839985    25985.76      0.14344553    31482.65      3.9034
    19  -214.36813340     0.11840007    25985.81      0.14344575    31482.70      3.9034
    20  -214.36813340     0.11840007    25985.81      0.14344575    31482.70      3.9034
    21  -214.28374257     0.20279089    44507.46      0.22783657    50004.35      6.1997
    22  -214.28374257     0.20279089    44507.46      0.22783657    50004.35      6.1997
    23  -214.27965127     0.20688220    45405.39      0.23192787    50902.28      6.3111
    24  -214.27965127     0.20688220    45405.39      0.23192787    50902.28      6.3111
    25  -214.27965126     0.20688220    45405.40      0.23192788    50902.29      6.3111
    26  -214.27965126     0.20688220    45405.40      0.23192788    50902.29      6.3111
    27  -214.25805513     0.22847834    50145.20      0.25352402    55642.09      6.8987
    28  -214.25805513     0.22847834    50145.20      0.25352402    55642.09      6.8987
    29  -214.25780072     0.22873274    50201.03      0.25377842    55697.92      6.9057
    30  -214.25780072     0.22873274    50201.03      0.25377842    55697.92      6.9057
    31  -214.25780072     0.22873274    50201.03      0.25377842    55697.93      6.9057
    32  -214.25780072     0.22873274    50201.03      0.25377842    55697.93      6.9057
    33  -214.25741350     0.22911996    50286.02      0.25416564    55782.91      6.9162
    34  -214.25741350     0.22911996    50286.02      0.25416564    55782.91      6.9162
    35  -214.25741349     0.22911997    50286.02      0.25416565    55782.91      6.9162
    36  -214.25741349     0.22911997    50286.02      0.25416565    55782.91      6.9162
    37  -214.25741347     0.22912000    50286.03      0.25416568    55782.92      6.9162
    38  -214.25741347     0.22912000    50286.03      0.25416568    55782.92      6.9162
    39  -214.22003212     0.26650134    58490.28      0.29154702    63987.17      7.9334
    40  -214.22003212     0.26650134    58490.28      0.29154702    63987.17      7.9334
    41  -214.22003211     0.26650135    58490.29      0.29154703    63987.18      7.9334
    42  -214.22003211     0.26650135    58490.29      0.29154703    63987.18      7.9334
    43  -214.21939567     0.26713779    58629.97      0.29218347    64126.86      7.9507
    44  -214.21939567     0.26713779    58629.97      0.29218347    64126.86      7.9507
    45  -214.21939563     0.26713784    58629.98      0.29218352    64126.87      7.9507
    46  -214.21939563     0.26713784    58629.98      0.29218352    64126.87      7.9507
    47  -214.21939562     0.26713785    58629.98      0.29218352    64126.87      7.9507
    48  -214.21939562     0.26713785    58629.98      0.29218352    64126.87      7.9507
    49  -214.21939554     0.26713793    58630.00      0.29218361    64126.89      7.9507
    50  -214.21939554     0.26713793    58630.00      0.29218361    64126.89      7.9507
    51  -214.21801718     0.26851629    58932.51      0.29356196    64429.40      7.9882
    52  -214.21801718     0.26851629    58932.51      0.29356196    64429.40      7.9882
    53  -214.21801711     0.26851635    58932.53      0.29356203    64429.42      7.9882
    54  -214.21801711     0.26851635    58932.53      0.29356203    64429.42      7.9882
    55  -214.21801710     0.26851636    58932.53      0.29356204    64429.42      7.9882
    56  -214.21801710     0.26851636    58932.53      0.29356204    64429.42      7.9882


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.001090375  -0.087079844   0.806211437  -0.000045732   0.503676736  -0.000245291  -0.004133706  -0.072608393
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.000132438  -0.010573152  -0.004781606   0.000000273   0.008982157  -0.000004277   0.001029828   0.018077924
                         0.000000011  -0.000000004  -0.000000000  -0.000000005   0.000000010  -0.000000024  -0.000000301   0.000000084

    3    3.2  1.5  1.5   0.000059884   0.004781263  -0.010573920   0.000000599   0.018107131  -0.000008850  -0.000510746  -0.008967645
                        -0.000000004   0.000000001   0.000000000   0.000000002  -0.000000003   0.000000008   0.000000099  -0.000000028

    4    4.2  1.5  1.5  -0.000000012   0.000000005   0.000000000   0.000000005  -0.000000010   0.000000025   0.000000317  -0.000000089
                        -0.000144510  -0.011536995  -0.001246333   0.000000072   0.002888609  -0.000001304   0.001137758   0.019973140

    5    5.2  1.5  1.5  -0.004520085   0.000056606   0.000000071   0.001240657  -0.000000099  -0.000274232   0.002330275  -0.000132423
                        -0.010614572   0.000132960   0.000000012   0.000117936   0.000001301   0.002875312   0.019836384  -0.001130005

    6    6.2  1.5  1.5  -0.010614563   0.000132960   0.000000012   0.000117948   0.000001301   0.002875672   0.019836382  -0.001130005
                         0.004520081  -0.000056606  -0.000000071  -0.001240776   0.000000099   0.000274267  -0.002330275   0.000132423

    7    7.2  1.5  1.5  -0.000003477  -0.000277646   0.002570189  -0.000000146  -0.007937933   0.000003866   0.000065151   0.001144369
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    8    8.2  1.5  1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000049696  -0.003968838   0.036745166  -0.000002084   0.021740609  -0.000010588  -0.000178433  -0.003134161

    9    9.2  1.5  1.5  -0.008311198   0.000104084   0.000000131   0.002281303   0.000000062   0.000172083  -0.001462086   0.000083086
                        -0.019517290   0.000244478   0.000000022   0.000216860  -0.000000816  -0.001804282  -0.012445952   0.000709000

   10   10.2  1.5  1.5  -0.019517297   0.000244478   0.000000022   0.000216869  -0.000000816  -0.001804018  -0.012445956   0.000709000
                         0.008311201  -0.000104084  -0.000000131  -0.002281398  -0.000000062  -0.000172058   0.001462086  -0.000083086

   11    1.2  1.5  0.5   0.741698809  -0.009290674  -0.000000841  -0.008241268   0.000032753   0.072397380   0.499427855  -0.028450556
                        -0.315843327   0.003955401   0.000004977   0.086695877   0.000002481   0.006904888  -0.058670179   0.003334064

   12    2.2  1.5  0.5   0.004399061  -0.000055098   0.000000055   0.001000649   0.000008809   0.018025412  -0.008906419   0.000507271
                        -0.001873286   0.000023459  -0.000000597  -0.010526503   0.000000848   0.001719238   0.001046267  -0.000059490

   13    3.2  1.5  0.5   0.009727858  -0.000121855  -0.000000031  -0.000452504  -0.000004260  -0.008941642  -0.017954479   0.001022831
                        -0.004142489   0.000051878   0.000000271   0.004760199  -0.000000382  -0.000852830   0.002109203  -0.000119849

   14    4.2  1.5  0.5   0.000488249  -0.000006114   0.000000652   0.011485976  -0.000000925  -0.001899435  -0.000336451   0.000019155
                         0.001146563  -0.000014357   0.000000062   0.001091856   0.000009698   0.019914738  -0.002864133   0.000163059

   15    5.2  1.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000015605  -0.001246276   0.011537830  -0.000000654  -0.020005299   0.000009743   0.000164192   0.002884028

   16    6.2  1.5  0.5   0.000015603   0.001246116  -0.011537836   0.000000654   0.020005385  -0.000009743  -0.000164173  -0.002883697
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   17    7.2  1.5  0.5   0.002364465  -0.000029618  -0.000000003  -0.000026271  -0.000000516  -0.001140972  -0.007870863   0.000448374
                        -0.001006879   0.000012609   0.000000016   0.000276365  -0.000000039  -0.000108820   0.000924628  -0.000052544

   18    8.2  1.5  0.5   0.004798488  -0.000060093  -0.000000076  -0.001317156  -0.000000036  -0.000099344   0.000844118  -0.000047969
                         0.011268349  -0.000141150  -0.000000013  -0.000125208   0.000000471   0.001041617   0.007185523  -0.000409333

   19    9.2  1.5  0.5  -0.000000026   0.000000010   0.000000001   0.000000011   0.000000007  -0.000000018  -0.000000230   0.000000064
                        -0.000278125  -0.022203433  -0.023860985   0.000001356  -0.014644687   0.000007058  -0.000721275  -0.012660806

   20   10.2  1.5  0.5  -0.000335509  -0.026786274   0.018568693  -0.000001050   0.010459178  -0.000005168  -0.000927308  -0.016279766
                         0.000000026  -0.000000010  -0.000000001  -0.000000011  -0.000000007   0.000000018   0.000000230  -0.000000064

   21    1.2  1.5 -0.5   0.010097614   0.806147710   0.087086702  -0.000005035   0.072725913  -0.000032840   0.028645245   0.502862180
                        -0.000000841   0.000000316   0.000000033   0.000000366   0.000000256  -0.000000640  -0.000007976   0.000002235

   22    2.2  1.5 -0.5   0.000059885   0.004781311  -0.010573957   0.000000599   0.018107216  -0.000008850  -0.000510747  -0.008967662
                        -0.000000004   0.000000001   0.000000000   0.000000002  -0.000000003   0.000000008   0.000000099  -0.000000028

   23    3.2  1.5 -0.5   0.000132438   0.010573147   0.004781658  -0.000000273  -0.008982221   0.000004277  -0.001029829  -0.018077943
                        -0.000000011   0.000000004   0.000000000   0.000000005  -0.000000010   0.000000024   0.000000301  -0.000000084

   24    4.2  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000015604  -0.001246192   0.011537755  -0.000000654  -0.020005115   0.000009743   0.000164181   0.002883827

   25    5.2  1.5 -0.5  -0.000488282   0.000006114  -0.000000652  -0.011486050   0.000000925   0.001899453   0.000336474  -0.000019156
                        -0.001146641   0.000014358  -0.000000062  -0.001091863  -0.000009699  -0.019914921   0.002864333  -0.000163071

   26    6.2  1.5 -0.5  -0.001146493   0.000014356  -0.000000062  -0.001091863  -0.000009699  -0.019915006   0.002864004  -0.000163052
                         0.000488219  -0.000006113   0.000000652   0.011486056  -0.000000925  -0.001899461  -0.000336435   0.000019154

   27    7.2  1.5 -0.5   0.000032190   0.002569922   0.000277610  -0.000000016  -0.001146150   0.000000518  -0.000451442  -0.007924987
                        -0.000000003   0.000000001   0.000000000   0.000000001  -0.000000004   0.000000010   0.000000126  -0.000000035

   28    8.2  1.5 -0.5  -0.000000013   0.000000005   0.000000001   0.000000006   0.000000004  -0.000000009  -0.000000115   0.000000032
                        -0.000153409  -0.012247497  -0.001323094   0.000000076  -0.001046344   0.000000472  -0.000412134  -0.007234934

   29    9.2  1.5 -0.5  -0.008699159   0.000108944   0.000001349   0.023753902   0.000000652   0.001390469  -0.001477176   0.000083922
                        -0.020428340   0.000255899   0.000000139   0.002258043  -0.000007028  -0.014578527  -0.012574338   0.000716376

   30   10.2  1.5 -0.5   0.024644799  -0.000308696   0.000000088   0.001757218  -0.000005143  -0.010411926   0.016168584  -0.000921002
                        -0.010494684   0.000131427  -0.000001047  -0.018485361  -0.000000509  -0.000993080  -0.001899393   0.000107959

   31    1.2  1.5 -1.5  -0.080118105   0.001003203  -0.000004328  -0.076294445   0.000244183   0.501401267  -0.072112545   0.004105476
                         0.034117273  -0.000427201   0.000045527   0.802593321   0.000023290   0.047822842   0.008471081  -0.000482271

   32    2.2  1.5 -1.5  -0.009727863   0.000121855   0.000000031   0.000452499   0.000004260   0.008941579   0.017954460  -0.001022830
                         0.004142491  -0.000051878  -0.000000271  -0.004760147   0.000000382   0.000852824  -0.002109200   0.000119849

   33    3.2  1.5 -1.5   0.004399017  -0.000055098   0.000000055   0.001000645   0.000008809   0.018025328  -0.008906401   0.000507270
                        -0.001873267   0.000023459  -0.000000597  -0.010526467   0.000000848   0.001719230   0.001046265  -0.000059490

   34    4.2  1.5 -1.5   0.004520118  -0.000056607  -0.000000071  -0.001240739   0.000000099   0.000274256  -0.002330316   0.000132425
                         0.010614650  -0.000132961  -0.000000012  -0.000117944  -0.000001301  -0.002875560  -0.019836732   0.001130025

   35    5.2  1.5 -1.5  -0.000000012   0.000000005   0.000000000   0.000000005  -0.000000010   0.000000025   0.000000317  -0.000000089
                        -0.000144509  -0.011536911  -0.001246250   0.000000072   0.002888360  -0.000001304   0.001137738   0.019972789

   36    6.2  1.5 -1.5   0.000144508   0.011536901   0.001246370  -0.000000072  -0.002888722   0.000001304  -0.001137738  -0.019972787
                        -0.000000012   0.000000005   0.000000000   0.000000005  -0.000000010   0.000000025   0.000000317  -0.000000089

   37    7.2  1.5 -1.5  -0.000255449   0.000003199  -0.000000014  -0.000243225  -0.000003848  -0.007902071   0.001136554  -0.000064706
                         0.000108780  -0.000001362   0.000000145   0.002558654  -0.000000367  -0.000753687  -0.000133511   0.000007601

   38    8.2  1.5 -1.5   0.001554963  -0.000019471   0.000002075   0.036580261   0.000001005   0.002064216   0.000365657  -0.000020817
                         0.003651543  -0.000045723   0.000000197   0.003477316  -0.000010540  -0.021642391   0.003112757  -0.000177214

   39    9.2  1.5 -1.5  -0.000000022   0.000000008   0.000000001   0.000000010   0.000000006  -0.000000016  -0.000000199   0.000000056
                        -0.000265712  -0.021213218  -0.002291587   0.000000132  -0.001812470   0.000000818  -0.000713852  -0.012531537

   40   10.2  1.5 -1.5   0.000265712   0.021213225   0.002291682  -0.000000132   0.001812204  -0.000000818   0.000713852   0.012531541
                        -0.000000022   0.000000008   0.000000001   0.000000010   0.000000006  -0.000000016  -0.000000199   0.000000056

   41    1.2  0.5  0.5   0.008724221  -0.000109241   0.000011642   0.205232764  -0.000023166  -0.047568421  -0.008425922   0.000479700
                         0.020487220  -0.000256532   0.000001107   0.019509407   0.000242884   0.498733782  -0.071728116   0.004083590

   42    2.2  0.5  0.5   0.002375560   0.189657664  -0.083793199   0.000004732   0.187849477  -0.000093703  -0.026731328  -0.469284558
                        -0.000000186   0.000000070   0.000000007   0.000000081  -0.000000221   0.000000552   0.000006871  -0.000001926

   43    3.2  0.5  0.5  -0.184577772   0.002312074   0.000000376   0.004957222   0.000067989   0.144666772   0.480793797  -0.027389411
                         0.078600178  -0.000984336  -0.000002973  -0.052148494   0.000005852   0.013797830  -0.056481195   0.003209541

   44    4.2  0.5  0.5  -0.048192033   0.000603569  -0.000001063  -0.018986500  -0.000235440  -0.482695237   0.144097761  -0.008206248
                         0.020521976  -0.000256988   0.000011327   0.199731929  -0.000022550  -0.046038728  -0.016927534   0.000962814

   45    5.2  0.5  0.5   0.000000186  -0.000000070  -0.000000007  -0.000000081   0.000000221  -0.000000552  -0.000006871   0.000001926
                         0.002096738   0.167390286   0.122364437  -0.000006962  -0.313144404   0.000150282  -0.022619581  -0.397061870

   46    6.2  0.5  0.5  -0.153177093   0.001918283   0.000002414   0.042045648  -0.000001243  -0.003459813   0.029397579  -0.001670583
                        -0.359707671   0.004505773   0.000000408   0.003996839   0.000016411   0.036275959   0.250245868  -0.014255581

   47    7.2  0.5  0.5  -0.001990592  -0.158907531  -0.359727668   0.000020428   0.236782695  -0.000114668   0.005382772   0.094475410
                         0.000000204  -0.000000077  -0.000000008  -0.000000089   0.000000064  -0.000000160  -0.000001998   0.000000560

   48    8.2  0.5  0.5  -0.000000204   0.000000077   0.000000008   0.000000089  -0.000000064   0.000000160   0.000001998  -0.000000560
                        -0.002906512  -0.232055010   0.317492885  -0.000017987  -0.200342532   0.000098213   0.008970281   0.157489877

   49    1.2  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000278823   0.022267425  -0.206157959   0.000011694   0.500997145  -0.000243986  -0.004111669  -0.072221320

   50    2.2  0.5 -0.5   0.174495150  -0.002185715   0.000000367   0.007929634   0.000093227   0.187000806  -0.466079571   0.026549580
                        -0.074306611   0.000930556  -0.000004719  -0.083417151   0.000009446   0.017836056   0.054752435  -0.003111869

   51    3.2  0.5 -0.5   0.002512887   0.200616404   0.052383580  -0.000002995  -0.145323280   0.000068237  -0.027576818  -0.484099990
                        -0.000000213   0.000000080   0.000000008   0.000000093  -0.000000252   0.000000630   0.000007847  -0.000002199

   52    4.2  0.5 -0.5   0.000656002   0.052379610  -0.200632327   0.000011377   0.484885817  -0.000236517  -0.008262537  -0.145088616
                        -0.000000032   0.000000012   0.000000001   0.000000014  -0.000000038   0.000000094   0.000001168  -0.000000327

   53    5.2  0.5 -0.5  -0.065582408   0.000821316   0.000006923   0.121815290  -0.000013720  -0.029732055   0.046326354  -0.002632159
                        -0.154007973   0.001929184   0.000000739   0.011579743   0.000149655   0.311729726   0.394350097  -0.022465913

   54    6.2  0.5 -0.5  -0.000000408   0.000000153   0.000000016   0.000000177  -0.000000129   0.000000321   0.000003996  -0.000001120
                        -0.004897122  -0.390963975  -0.042235190   0.000002442   0.036440576  -0.000016455   0.014353133   0.251966689

   55    7.2  0.5 -0.5  -0.146203383   0.001831531   0.000002022   0.034042207   0.000114165   0.235712984   0.093830169  -0.005346246
                         0.062258930  -0.000779712  -0.000020328  -0.358113282   0.000010728   0.022481859  -0.011022820   0.000626013

   56    8.2  0.5 -0.5   0.090917600  -0.001138563   0.000017914   0.316068039  -0.000009485  -0.019022084  -0.018374596   0.001044561
                         0.213502968  -0.002674226   0.000001614   0.030045406   0.000097754   0.199437435  -0.156414307   0.008909255


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000175   0.000000004  -0.000000012   0.000000803  -0.000000441   0.000000005   0.000000112   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.000800422  -0.000016988  -0.000028153   0.001844395  -0.020408762   0.000215766  -0.024665167  -0.000000008
                         0.000000001   0.000000003   0.000000001  -0.000000001  -0.000000001  -0.000000022   0.000000015   0.000000080

    3    3.2  1.5  1.5  -0.005252856   0.000111481  -0.000533888   0.034977459  -0.017584743   0.000185910   0.008094076   0.000000003
                         0.000000000  -0.000000023  -0.000000004   0.000000003   0.000000001  -0.000000021  -0.000000005  -0.000000026

    4    4.2  1.5  1.5  -0.000000001  -0.000000010  -0.000000002   0.000000001   0.000000001   0.000000015  -0.000000016  -0.000000084
                         0.002398432  -0.000050903   0.000139723  -0.009153875  -0.013908577   0.000147045  -0.025959430  -0.000000008

    5    5.2  1.5  1.5   0.000406592   0.019160373  -0.015896432  -0.000242641  -0.000231946  -0.021939536   0.000000042   0.000254059
                         0.000252284   0.011883477  -0.009235340  -0.000140963  -0.000042737  -0.004040189  -0.000000005   0.012977176

    6    6.2  1.5  1.5  -0.000332794  -0.015675746  -0.004559304  -0.000069589  -0.000037196  -0.003516325  -0.000000005   0.012977208
                         0.000536346   0.025274858   0.007847754   0.000119788   0.000201869   0.019094800  -0.000000042  -0.000254059

    7    7.2  1.5  1.5   0.000000040  -0.000000001   0.000000002  -0.000000126   0.000000025  -0.000000000  -0.000000108  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    8    8.2  1.5  1.5  -0.000000000   0.000000009   0.000000001  -0.000000001  -0.000000000   0.000000011   0.000000000   0.000000000
                        -0.001946789   0.000041317  -0.000211888   0.013881739  -0.009472965   0.000100150   0.000000144   0.000000000

    9    9.2  1.5  1.5   0.000350665   0.016524820  -0.000047635  -0.000000727   0.000040724   0.003852091   0.000000047   0.000288094
                         0.000217582   0.010248876  -0.000027674  -0.000000423   0.000007504   0.000709366  -0.000000006   0.014715685

   10   10.2  1.5  1.5  -0.000198497  -0.009349917   0.003297722   0.000050335   0.000011444   0.001081908  -0.000000006   0.014715690
                         0.000319907   0.015075378  -0.005676241  -0.000086641  -0.000062113  -0.005875109  -0.000000047  -0.000288094

   11    1.2  1.5  0.5   0.000000003   0.000000130  -0.000000211  -0.000000003   0.000000001   0.000000064  -0.000000000   0.000001236
                        -0.000000004  -0.000000209   0.000000363   0.000000006  -0.000000004  -0.000000346  -0.000000000  -0.000000024

   12    2.2  1.5  0.5  -0.000295714  -0.013929217   0.011889239   0.000181474  -0.000033267  -0.003144715   0.000000003  -0.008092452
                         0.000476589   0.022458835  -0.020464482  -0.000312366   0.000180535   0.017076825   0.000000026   0.000158429

   13    3.2  1.5  0.5   0.000068797   0.003240607  -0.008741120  -0.000133420  -0.000017126  -0.001619071   0.000000009  -0.024660193
                        -0.000110877  -0.005225006   0.015045749   0.000229656   0.000092951   0.008792085   0.000000079   0.000482781

   14    4.2  1.5  0.5   0.000601400   0.028340566   0.014842254   0.000226550  -0.000177285  -0.016769153  -0.000000000  -0.000000002
                         0.000373160   0.017577134   0.008622897   0.000131616  -0.000032667  -0.003088059  -0.000000000  -0.000000079

   15    5.2  1.5  0.5  -0.000000001  -0.000000018  -0.000000004   0.000000002   0.000000002   0.000000017   0.000000013   0.000000073
                         0.004252195  -0.000090245   0.000287675  -0.018846910  -0.016229455   0.000171581   0.022481561   0.000000007

   16    6.2  1.5  0.5   0.002671234  -0.000056693   0.000115655  -0.007577136  -0.023920248   0.000252890   0.022481427   0.000000007
                         0.000000001   0.000000011   0.000000003  -0.000000002  -0.000000002  -0.000000026  -0.000000013  -0.000000073

   17    7.2  1.5  0.5   0.000000000   0.000000008   0.000000024   0.000000000  -0.000000000  -0.000000002  -0.000000000   0.000000102
                        -0.000000000  -0.000000012  -0.000000041  -0.000000001   0.000000000   0.000000012  -0.000000000  -0.000000002

   18    8.2  1.5  0.5  -0.000053275  -0.002510518  -0.009749134  -0.000148810  -0.000178120  -0.016848213   0.000000055   0.000332660
                        -0.000033056  -0.001557050  -0.005663948  -0.000086451  -0.000032819  -0.003102615  -0.000000006   0.016992091

   19    9.2  1.5  0.5   0.000000000   0.000000014   0.000000003  -0.000000002  -0.000000001   0.000000001  -0.000000005  -0.000000027
                        -0.003162865   0.000067126  -0.000269545   0.017659138   0.000362081  -0.000003828  -0.008497693  -0.000000003

   20   10.2  1.5  0.5   0.000208638  -0.000004427   0.000097448  -0.006384239   0.016769590  -0.000177292  -0.008497554  -0.000000003
                        -0.000000001   0.000000001  -0.000000000   0.000000000   0.000000001   0.000000019   0.000000005   0.000000027

   21    1.2  1.5 -0.5   0.000000246  -0.000000005  -0.000000006   0.000000420  -0.000000352   0.000000004   0.000001236   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   22    2.2  1.5 -0.5  -0.026427682   0.000560878   0.000361255  -0.023667468   0.017363962  -0.000183574  -0.008094003  -0.000000003
                        -0.000000005  -0.000000109   0.000000001  -0.000000002   0.000000001   0.000000021   0.000000005   0.000000026

   23    3.2  1.5 -0.5   0.006148351  -0.000130487  -0.000265599   0.017400625   0.008939918  -0.000094515  -0.024664919  -0.000000008
                         0.000000001   0.000000025  -0.000000003   0.000000002   0.000000001   0.000000009   0.000000015   0.000000080

   24    4.2  1.5 -0.5   0.000000004   0.000000140   0.000000002  -0.000000001  -0.000000001   0.000000019  -0.000000000   0.000000000
                        -0.033348813   0.000707764  -0.000262007   0.017165280  -0.017051117   0.000180269   0.000000079  -0.000000000

   25    5.2  1.5 -0.5   0.000076683   0.003613611   0.016296304   0.000248745   0.000168741   0.015961079   0.000000072   0.000440045
                         0.000047581   0.002241201   0.009467654   0.000144509   0.000031091   0.002939248  -0.000000009   0.022477254

   26    6.2  1.5 -0.5  -0.000029890  -0.001407924  -0.003806337  -0.000058097  -0.000045825  -0.004332096   0.000000009  -0.022477120
                         0.000048173   0.002270075   0.006551701   0.000100005   0.000248704   0.023524694   0.000000072   0.000440043

   27    7.2  1.5 -0.5   0.000000014  -0.000000000   0.000000001  -0.000000047   0.000000012  -0.000000000   0.000000102   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   28    8.2  1.5 -0.5  -0.000000001  -0.000000012  -0.000000003   0.000000002   0.000000001   0.000000018  -0.000000010  -0.000000055
                         0.002954168  -0.000062697   0.000172099  -0.011275013  -0.017131506   0.000181118  -0.016995347  -0.000000005

   29    9.2  1.5 -0.5  -0.000057038  -0.002687873  -0.015269277  -0.000233068  -0.000003765  -0.000356093  -0.000000027  -0.000166330
                        -0.000035392  -0.001667049  -0.008870983  -0.000135403  -0.000000693  -0.000065574   0.000000003  -0.008496065

   30   10.2  1.5 -0.5  -0.000002335  -0.000109967  -0.003207092  -0.000048953   0.000032127   0.003037071  -0.000000003   0.008495926
                         0.000003762   0.000177305   0.005520241   0.000084260  -0.000174357  -0.016492282  -0.000000027  -0.000166328

   31    1.2  1.5 -1.5  -0.000000002  -0.000000092  -0.000000403  -0.000000006   0.000000001   0.000000080   0.000000000   0.000000112
                         0.000000003   0.000000149   0.000000694   0.000000011  -0.000000005  -0.000000433   0.000000000  -0.000000002

   32    2.2  1.5 -1.5   0.000008956   0.000421877  -0.000926524  -0.000014143   0.000039099   0.003696146   0.000000009  -0.024660442
                        -0.000014435  -0.000680217   0.001594788   0.000024342  -0.000212194  -0.020071274   0.000000079   0.000482786

   33    3.2  1.5 -1.5  -0.000058778  -0.002768620  -0.017570759  -0.000268193   0.000033690   0.003184701  -0.000000003   0.008092525
                         0.000094727   0.004463994   0.030243860   0.000461638  -0.000182831  -0.017293955  -0.000000026  -0.000158430

   34    4.2  1.5 -1.5  -0.000043253  -0.002038241  -0.007915056  -0.000120815  -0.000144610  -0.013678579   0.000000084   0.000508120
                        -0.000026838  -0.001264139  -0.004598405  -0.000070187  -0.000026645  -0.002518924  -0.000000010   0.025954456

   35    5.2  1.5 -1.5  -0.000000003  -0.000000094   0.000000003  -0.000000003  -0.000000001  -0.000000023   0.000000008   0.000000042
                         0.022546328  -0.000478502  -0.000280616   0.018384451   0.022308437  -0.000235851   0.012979663   0.000000004

   36    6.2  1.5 -1.5   0.029741343  -0.000631204   0.000138534  -0.009076040  -0.019415868   0.000205268  -0.012979694  -0.000000004
                         0.000000006   0.000000124   0.000000003  -0.000000001  -0.000000003  -0.000000021   0.000000008   0.000000042

   37    7.2  1.5 -1.5   0.000000000   0.000000021   0.000000063   0.000000001  -0.000000000  -0.000000005   0.000000000  -0.000000108
                        -0.000000001  -0.000000034  -0.000000109  -0.000000002   0.000000000   0.000000025   0.000000000   0.000000002

   38    8.2  1.5 -1.5   0.000035107   0.001654425   0.012003084   0.000183213  -0.000098492  -0.009316316  -0.000000000  -0.000000003
                         0.000021784   0.001026093   0.006973425   0.000106440  -0.000018149  -0.001715610   0.000000000  -0.000000144

   39    9.2  1.5 -1.5  -0.000000003  -0.000000081  -0.000000001  -0.000000000   0.000000001   0.000000004   0.000000009   0.000000047
                         0.019445029  -0.000412684  -0.000000841   0.000055090  -0.003916861   0.000041409   0.014718505   0.000000005

   40   10.2  1.5 -1.5   0.017739447  -0.000376486  -0.000100201   0.006564654   0.005973896  -0.000063158  -0.014718510  -0.000000005
                         0.000000003   0.000000074  -0.000000001   0.000000001  -0.000000000   0.000000006   0.000000009   0.000000047

   41    1.2  0.5  0.5  -0.011853003  -0.558563108   0.330640817   0.005046840  -0.001438094  -0.136031769  -0.000000000  -0.000000003
                        -0.007354575  -0.346427018   0.192092205   0.002932035  -0.000265007  -0.025050374  -0.000000000  -0.000000151

   42    2.2  0.5  0.5  -0.136250329   0.002891655  -0.011610912   0.760684040   0.015598092  -0.000164909   0.000001145   0.000000000
                        -0.000000017  -0.000000594  -0.000000108   0.000000070   0.000000035  -0.000000027  -0.000000000  -0.000000000

   43    3.2  0.5  0.5  -0.000017089  -0.000804360  -0.198969515  -0.003036943  -0.001271648  -0.120216516   0.000000000  -0.000002063
                         0.000027544   0.001296967   0.342478511   0.005227556   0.006901578   0.652814864   0.000000000   0.000000040

   44    4.2  0.5  0.5  -0.008259727  -0.389062132  -0.098414014  -0.001502132   0.000227242   0.021481035   0.000000000  -0.000000118
                         0.013311741   0.627305987   0.169396180   0.002585648  -0.001233240  -0.116648774   0.000000000   0.000000002

   45    5.2  0.5  0.5   0.000000035  -0.000000062   0.000000006  -0.000000001  -0.000000027  -0.000000806   0.000000000   0.000000000
                         0.008995323  -0.000190882   0.004197591  -0.275002922   0.722362768  -0.007636974   0.000001288   0.000000000

   46    6.2  0.5  0.5   0.000000002   0.000000072  -0.000000355  -0.000000005   0.000000000   0.000000045   0.000001855   0.011276898
                         0.000000001   0.000000045  -0.000000206  -0.000000003   0.000000000   0.000000008  -0.000000220   0.576017500

   47    7.2  0.5  0.5  -0.000000089   0.000000002  -0.000000009   0.000000593  -0.000000765   0.000000008  -0.576125234  -0.000000184
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000345   0.000001859

   48    8.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000345  -0.000001859
                         0.000000239  -0.000000005   0.000000010  -0.000000634  -0.000000012   0.000000000  -0.576125358  -0.000000184

   49    1.2  0.5 -0.5   0.000000113   0.000002727  -0.000000021   0.000000036  -0.000000024  -0.000000177   0.000000000  -0.000000000
                        -0.657270435   0.013949317   0.005836730  -0.382390854   0.138319064  -0.001462308  -0.000000151   0.000000000

   50    2.2  0.5 -0.5  -0.001524607  -0.071813361  -0.382125968  -0.005832593  -0.000029839  -0.002824871  -0.000000000   0.000001145
                         0.002457080   0.115788572   0.657738515   0.010039628   0.000162187   0.015340163  -0.000000000  -0.000000022

   51    3.2  0.5 -0.5   0.001526145  -0.000032414   0.006045690  -0.396081304  -0.663791576   0.007017754   0.000002063   0.000000000
                         0.000000029   0.000000005   0.000000093  -0.000000061  -0.000000049  -0.000000703  -0.000000000  -0.000000000

   52    4.2  0.5 -0.5   0.738161327  -0.015666064   0.002990314  -0.195909122   0.118610166  -0.001254001   0.000000118   0.000000000
                         0.000000110   0.000003089   0.000000044  -0.000000008  -0.000000036   0.000000137  -0.000000000  -0.000000000

   53    5.2  0.5 -0.5  -0.000162183  -0.007644408  -0.237785985  -0.003629516   0.007510540   0.710417495  -0.000000000  -0.000000025
                        -0.000100661  -0.004741189  -0.138146419  -0.002108645   0.001383894   0.130824126   0.000000000  -0.000001288

   54    6.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000345   0.000001859
                         0.000000085  -0.000000002  -0.000000006   0.000000410  -0.000000046   0.000000000   0.576127876   0.000000184

   55    7.2  0.5 -0.5  -0.000000001  -0.000000047  -0.000000298  -0.000000005   0.000000001   0.000000138   0.000000220  -0.576014859
                         0.000000002   0.000000076   0.000000513   0.000000008  -0.000000008  -0.000000752   0.000001855   0.011276846

   56    8.2  0.5 -0.5  -0.000000004  -0.000000203  -0.000000548  -0.000000008  -0.000000000  -0.000000012   0.000001855   0.011276849
                        -0.000000003  -0.000000126  -0.000000318  -0.000000005  -0.000000000  -0.000000002  -0.000000220   0.576014983


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5  -0.000263607   0.004943409  -0.000095154  -0.284887585   0.000000001  -0.000000079   0.001063240  -0.027234069
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.000016571  -0.000310757   0.000000032   0.000096414  -0.005626581   0.401044097   0.000750233  -0.019206515
                        -0.000000002   0.000000001   0.000000000   0.000000000   0.000000097  -0.000000032   0.000000243  -0.000000106

    3    3.2  1.5  1.5  -0.000005121   0.000096036   0.000000104   0.000311505   0.001846431  -0.131607487   0.013009507  -0.333231848
                         0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000032   0.000000011  -0.000000080   0.000000035

    4    4.2  1.5  1.5   0.000000002  -0.000000001  -0.000000000  -0.000000000  -0.000000103   0.000000034  -0.000000256   0.000000112
                         0.000017353  -0.000325411  -0.000000002  -0.000005860  -0.005921797   0.422086161  -0.003343556   0.085653262

    5    5.2  1.5  1.5   0.000004558   0.000000245   0.000003779  -0.000000001  -0.022263541  -0.000312404   0.017749124   0.000693100
                        -0.000325051  -0.000017333   0.000004479  -0.000000001   0.209864837   0.002944363  -0.083794692  -0.003270954

    6    6.2  1.5  1.5  -0.000325046  -0.000017333   0.000004165  -0.000000001   0.209864847   0.002944363  -0.083795668  -0.003270992
                        -0.000004557  -0.000000245  -0.000003514   0.000000001   0.022263542   0.000312404  -0.017749331  -0.000693108

    7    7.2  1.5  1.5   0.000018279  -0.000342788   0.000006599   0.019756684   0.000000006  -0.000000400   0.012636277  -0.323668522
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    8    8.2  1.5  1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000015496  -0.000290598   0.000005593   0.016744461  -0.000000007   0.000000469  -0.016711754   0.428058735

    9    9.2  1.5  1.5  -0.000135339  -0.000007281  -0.000108277   0.000000035  -0.017080939  -0.000239682   0.013597202   0.000530968
                         0.009652687   0.000514733  -0.000128318   0.000000043   0.161011604   0.002258961  -0.064193216  -0.002505803

   10   10.2  1.5  1.5   0.009652694   0.000514734  -0.000128503   0.000000043   0.161011639   0.002258962  -0.064192291  -0.002505767
                         0.000135340   0.000007281   0.000108434  -0.000000035   0.017080943   0.000239682  -0.013597006  -0.000530961

   11    1.2  1.5  0.5   0.284455778   0.015168715  -0.003783442   0.000001266  -0.000000039  -0.000000001  -0.007073841  -0.000276130
                         0.003988330   0.000214570   0.003192547  -0.000001033  -0.000000004  -0.000000000  -0.001498358  -0.000058511

   12    2.2  1.5  0.5   0.000096108   0.000005125  -0.000237799   0.000000079  -0.130872266  -0.001836112   0.325999330   0.012727130
                         0.000001348   0.000000073   0.000200661  -0.000000067  -0.013883603  -0.000194816   0.069051734   0.002695885

   13    3.2  1.5  0.5   0.000311005   0.000016584   0.000073562  -0.000000025  -0.398805846  -0.005595168  -0.018788435  -0.000733951
                         0.000004361   0.000000235  -0.000062073   0.000000021  -0.042307375  -0.000593662  -0.003979574  -0.000155214

   14    4.2  1.5  0.5   0.000000078   0.000000004  -0.000209841   0.000000070  -0.000000044  -0.000000001  -0.066850364  -0.002609891
                        -0.000005597  -0.000000298  -0.000248679   0.000000083   0.000000410   0.000000006   0.315606630   0.012321534

   15    5.2  1.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000089  -0.000000029   0.000000000  -0.000000000
                        -0.000000287   0.000005390  -0.000000109  -0.000325664   0.005128416  -0.365536578  -0.012594886   0.322608339

   16    6.2  1.5  0.5   0.000000312  -0.000005849   0.000000109   0.000325948   0.005128428  -0.365537399   0.012594859  -0.322607641
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000089   0.000000029   0.000000000  -0.000000000

   17    7.2  1.5  0.5  -0.019726523  -0.001051925   0.000262463  -0.000000088  -0.000000341  -0.000000005  -0.084070248  -0.003281710
                        -0.000276584  -0.000014880  -0.000221472   0.000000072  -0.000000036  -0.000000001  -0.017807492  -0.000695379

   18    8.2  1.5  0.5   0.000078137   0.000004204   0.000062444  -0.000000020  -0.019723437  -0.000276761  -0.007850250  -0.000306551
                        -0.005572864  -0.000297175   0.000074001  -0.000000025   0.185920823   0.002608433   0.037061506   0.001446708

   19    9.2  1.5  0.5  -0.000000075   0.000000018   0.000000001   0.000000000  -0.000000023   0.000000008  -0.000000226   0.000000099
                        -0.000603374   0.011314926  -0.000003165  -0.009473494  -0.001311537   0.093482033   0.006690891  -0.171372621

   20   10.2  1.5  0.5  -0.000585483   0.010979413   0.000003293   0.009861210  -0.001311545   0.093482613  -0.012606205   0.322907690
                         0.000000075  -0.000000018  -0.000000001  -0.000000000   0.000000023  -0.000000008   0.000000226  -0.000000099

   21    1.2  1.5 -0.5  -0.015170232   0.284483736   0.000001634   0.004950433  -0.000000001   0.000000039  -0.000282261   0.007230788
                         0.000001915  -0.000000464  -0.000000027  -0.000000010   0.000000000   0.000000000   0.000000022  -0.000000009

   22    2.2  1.5 -0.5  -0.000005125   0.000096117   0.000000104   0.000311148  -0.001846419   0.131606627   0.013009521  -0.333232209
                         0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000032  -0.000000011  -0.000000080   0.000000035

   23    3.2  1.5 -0.5  -0.000016586   0.000311035  -0.000000032  -0.000096252  -0.005626575   0.401043660  -0.000750184   0.019205267
                         0.000000002  -0.000000001  -0.000000000  -0.000000000   0.000000097  -0.000000032  -0.000000243   0.000000106

   24    4.2  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000299   0.000005598  -0.000000109  -0.000325384  -0.000000006   0.000000412  -0.012594909   0.322608922

   25    5.2  1.5 -0.5  -0.000000076  -0.000000004   0.000210022  -0.000000070  -0.038561620  -0.000541101   0.066850244   0.002609887
                         0.000005390   0.000000287   0.000248893  -0.000000083   0.363496893   0.005099791  -0.315606060  -0.012321512

   26    6.2  1.5 -0.5   0.000005849   0.000000312   0.000249110  -0.000000083  -0.363497709  -0.005099802  -0.315605377  -0.012321485
                         0.000000082   0.000000004  -0.000210205   0.000000070  -0.038561706  -0.000541102  -0.066850099  -0.002609881

   27    7.2  1.5 -0.5   0.001052030  -0.019728462  -0.000000113  -0.000343419  -0.000000005   0.000000343  -0.003354574   0.085935519
                        -0.000000133   0.000000032   0.000000002   0.000000001   0.000000000   0.000000000   0.000000257  -0.000000112

   28    8.2  1.5 -0.5  -0.000000038   0.000000009   0.000000001   0.000000000  -0.000000045   0.000000015  -0.000000113   0.000000049
                        -0.000297205   0.005573412   0.000000032   0.000096827  -0.002623074   0.186964078  -0.001478829   0.037883791

   29    9.2  1.5 -0.5  -0.000158630  -0.000008533   0.006109496  -0.000002042   0.009861718   0.000138381  -0.035511390  -0.001386251
                         0.011313814   0.000603313   0.007240246  -0.000002418  -0.092960406  -0.001304216   0.167652963   0.006545710

   30   10.2  1.5 -0.5  -0.010978334  -0.000585424   0.007536563  -0.000002517   0.092960982   0.001304224   0.315898894   0.012332539
                        -0.000153927  -0.000008282  -0.006359534   0.000002123   0.009861779   0.000138382   0.066912370   0.002612454

   31    1.2  1.5 -1.5   0.004942923   0.000263581   0.217729183  -0.000072723   0.000000079   0.000000001   0.026642948   0.001040162
                         0.000069296   0.000003695  -0.183725172   0.000061365   0.000000008   0.000000000   0.005643388   0.000220322

   32    2.2  1.5 -1.5  -0.000310727  -0.000016570  -0.000073685   0.000000025  -0.398806281  -0.005595174   0.018789655   0.000733998
                        -0.000004357  -0.000000234   0.000062178  -0.000000021  -0.042307421  -0.000593662   0.003979832   0.000155224

   33    3.2  1.5 -1.5   0.000096026   0.000005121  -0.000238072   0.000000080   0.130873121   0.001836124   0.325998977   0.012727117
                         0.000001346   0.000000072   0.000200891  -0.000000067   0.013883694   0.000194818   0.069051659   0.002695882

   34    4.2  1.5 -1.5  -0.000004562  -0.000000245  -0.000003779   0.000000001  -0.044527216  -0.000624811  -0.017749003  -0.000693095
                         0.000325379   0.000017351  -0.000004478   0.000000001   0.419730931   0.005888743   0.083794118   0.003270931

   35    5.2  1.5 -1.5   0.000000002  -0.000000001  -0.000000000  -0.000000000   0.000000051  -0.000000017  -0.000000256   0.000000112
                         0.000017335  -0.000325083  -0.000000002  -0.000005860   0.002960890  -0.211042449  -0.003343579   0.085653849

   36    6.2  1.5 -1.5  -0.000017335   0.000325078   0.000000002   0.000005450  -0.002960890   0.211042459   0.003343618  -0.085654846
                         0.000000002  -0.000000001  -0.000000000  -0.000000000   0.000000051  -0.000000017  -0.000000256   0.000000112

   37    7.2  1.5 -1.5  -0.000342754  -0.000018277  -0.015099312   0.000005043   0.000000398   0.000000006   0.316643232   0.012362004
                        -0.000004805  -0.000000256   0.012741166  -0.000004256   0.000000042   0.000000001   0.067069933   0.002618464

   38    8.2  1.5 -1.5  -0.000004074  -0.000000217   0.010798572  -0.000003607  -0.000000049  -0.000000001  -0.088701460  -0.003462976
                         0.000290569   0.000015495   0.012797181  -0.000004274   0.000000466   0.000000007   0.418767634   0.016349022

   39    9.2  1.5 -1.5  -0.000000065   0.000000016   0.000000001   0.000000000   0.000000039  -0.000000013  -0.000000196   0.000000085
                        -0.000514785   0.009653636   0.000000055   0.000167897   0.002271641  -0.161915086  -0.002561440   0.065617474

   40   10.2  1.5 -1.5   0.000514785  -0.009653642  -0.000000056  -0.000168140  -0.002271642   0.161915121   0.002561403  -0.065616529
                        -0.000000065   0.000000016   0.000000001   0.000000000   0.000000039  -0.000000013  -0.000000196   0.000000085

   41    1.2  0.5  0.5   0.000076841   0.000004098  -0.203728989   0.000068047   0.000000009   0.000000000   0.003082304   0.000120336
                        -0.005481080  -0.000292278  -0.241435323   0.000080641  -0.000000085  -0.000000001  -0.014551839  -0.000568115

   42    2.2  0.5  0.5  -0.014422094   0.270454039   0.000054327   0.162707161  -0.000000003   0.000000192  -0.000423864   0.010857384
                         0.000001839  -0.000000445  -0.000000026  -0.000000009   0.000000000  -0.000000000   0.000000010  -0.000000004

   43    3.2  0.5  0.5  -0.312797037  -0.016680023  -0.031402147   0.000010486   0.000000022   0.000000000   0.001678683   0.000065516
                        -0.004385699  -0.000235943   0.026497908  -0.000008887   0.000000002   0.000000000   0.000355576   0.000013889

   44    4.2  0.5  0.5  -0.041026054  -0.002187733   0.239422133  -0.000079969   0.000000071   0.000000001   0.014962030   0.000584126
                        -0.000575232  -0.000030983  -0.202030208   0.000067474   0.000000008   0.000000000   0.003169190   0.000123729

   45    5.2  0.5  0.5  -0.000001839   0.000000445   0.000000026   0.000000009  -0.000000000  -0.000000000  -0.000000010   0.000000004
                        -0.014714417   0.275935976  -0.000051188  -0.153199224  -0.000000000   0.000000011   0.000156849  -0.004017142

   46    6.2  0.5  0.5  -0.009343696  -0.000502686  -0.007479465   0.000002421   0.003925698   0.000055086  -0.001348184  -0.000052646
                         0.666411391   0.035536646  -0.008863807   0.000002967  -0.037005165  -0.000519175   0.006364857   0.000248454

   47    7.2  0.5  0.5  -0.018305089   0.343271066  -0.000191144  -0.572209331   0.000522091  -0.037212933  -0.000701517   0.017968417
                         0.000002243  -0.000000543  -0.000000031  -0.000000011  -0.000000009   0.000000003  -0.000000010   0.000000004

   48    8.2  0.5  0.5  -0.000002243   0.000000543   0.000000031   0.000000011   0.000000009  -0.000000003   0.000000010  -0.000000004
                        -0.017235425   0.323211693   0.000194973   0.583806881   0.000522088  -0.037212727   0.000955468  -0.024473979

   49    1.2  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000292307  -0.005481618   0.000105515   0.315905866  -0.000000001   0.000000086  -0.000580720   0.014874697

   50    2.2  0.5 -0.5   0.270427459   0.014420651  -0.124351151   0.000041537  -0.000000191  -0.000000003  -0.010621722  -0.000414662
                         0.003791644   0.000204007   0.104930508  -0.000035016  -0.000000020  -0.000000000  -0.002249849  -0.000087842

   51    3.2  0.5 -0.5  -0.016681692   0.312827781  -0.000013745  -0.041088124  -0.000000000   0.000000022  -0.000066972   0.001715929
                         0.000002101  -0.000000508  -0.000000029  -0.000000011  -0.000000000  -0.000000000   0.000000012  -0.000000005

   52    4.2  0.5 -0.5  -0.002187953   0.041030087   0.000104632   0.313271708  -0.000000001   0.000000072  -0.000597087   0.015293989
                         0.000000313  -0.000000076  -0.000000004  -0.000000002   0.000000000   0.000000000   0.000000002  -0.000000001

   53    5.2  0.5 -0.5   0.003868490   0.000208104  -0.098798815   0.000033031  -0.000000001  -0.000000000   0.000832420   0.000032492
                        -0.275908858  -0.014712946  -0.117084569   0.000039105   0.000000011   0.000000000  -0.003929950  -0.000153447

   54    6.2  0.5 -0.5  -0.000004487   0.000001086   0.000000063   0.000000023  -0.000000009   0.000000003   0.000000019  -0.000000008
                        -0.035540201   0.666476891   0.000003829   0.011597822  -0.000522089   0.037212812   0.000253971  -0.006506074

   55    7.2  0.5 -0.5   0.343237330   0.018303259   0.437318699  -0.000146064   0.037005286   0.000519177  -0.017578410  -0.000686292
                         0.004812485   0.000258842  -0.369020153   0.000123294   0.003925711   0.000055086  -0.003723375  -0.000145357

   56    8.2  0.5 -0.5   0.004531294   0.000243848   0.376499443  -0.000125715   0.003925689   0.000055086   0.005071452   0.000198000
                        -0.323179928  -0.017233701   0.446182298  -0.000149031  -0.037005081  -0.000519174  -0.023942765  -0.000934727


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5   0.006897536  -0.002187986   0.000000023  -0.000000104  -0.001159200  -0.000072604   0.000400638   0.027557728
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  1.5  1.5   0.317875306  -0.100835871   0.030062599  -0.134820399  -0.263905502  -0.016509003  -0.001442559  -0.099278775
                        -0.000000390   0.000000209   0.000000034  -0.000000136  -0.000000579  -0.000009408  -0.000000535  -0.000000041

    3    3.2  1.5  1.5  -0.018320516   0.005812095  -0.009865828   0.044244841   0.099094972   0.006199988  -0.003843998  -0.264390331
                         0.000000128  -0.000000069  -0.000000011   0.000000045   0.000000190   0.000003087   0.000000176   0.000000014

    4    4.2  1.5  1.5   0.000000410  -0.000000220  -0.000000036   0.000000143   0.000000610   0.000009901   0.000000563   0.000000044
                         0.307740553  -0.097621095   0.031639904  -0.141894067  -0.281645706  -0.017619065  -0.000172080  -0.011892200

    5    5.2  1.5  1.5   0.036516144   0.115113686  -0.054175732  -0.012080243  -0.006387732   0.102256595   0.002323820  -0.000033074
                         0.090534718   0.285401364   0.045809938   0.010214819   0.016420618  -0.262430947  -0.011665387   0.000168913

    6    6.2  1.5  1.5   0.090534674   0.285401227   0.045812067   0.010215294   0.016420836  -0.262434445  -0.011656040   0.000168777
                        -0.036516127  -0.115113631   0.054178250   0.012080804   0.006387817  -0.102257958  -0.002321958   0.000033047

    7    7.2  1.5  1.5   0.081975389  -0.026003627   0.000000422  -0.000001892  -0.026105826  -0.001635082   0.009022805   0.620629675
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    8    8.2  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.108414290   0.034390379  -0.000000141   0.000000634   0.015021478   0.000940838  -0.005191722  -0.357110352

    9    9.2  1.5  1.5   0.027973828   0.088184844   0.352392542   0.078577386   0.004667326  -0.074715857  -0.001698034   0.000024167
                         0.069355698   0.218636686  -0.297976230  -0.066443516  -0.011998057   0.191750498   0.008523992  -0.000123426

   10   10.2  1.5  1.5   0.069355757   0.218636873  -0.297978144  -0.066443943  -0.011998244   0.191753477   0.008515841  -0.000123307
                        -0.027973852  -0.088184920  -0.352394805  -0.078577891  -0.004667399   0.074717018   0.001696410  -0.000024144

   11    1.2  1.5  0.5   0.007642765   0.024093030  -0.000000005  -0.000000001  -0.001603693   0.025629898   0.001138941  -0.000016492
                        -0.003082622  -0.009717674  -0.000000006  -0.000000001  -0.000623848   0.009986726   0.000226884  -0.000003229

   12    2.2  1.5  0.5  -0.005390237  -0.016990726  -0.028565129  -0.006369527  -0.005777969   0.092331898  -0.259298212   0.003769927
                         0.002174030   0.006852923  -0.033781683  -0.007532726  -0.002248093   0.035977276  -0.051654705   0.000751185

   13    3.2  1.5  0.5  -0.093515905  -0.294799723  -0.087050441  -0.019410734  -0.015385924   0.245898098   0.097365603  -0.001414869
                         0.037718592   0.118904453  -0.102947561  -0.022955509  -0.005985090   0.095814540   0.019396128  -0.000281309

   14    4.2  1.5  0.5   0.009695079   0.030563345   0.000001284   0.000000286   0.000269952  -0.004310075   0.055129208  -0.000801476
                         0.024036915   0.075775415  -0.000001086  -0.000000242  -0.000692805   0.011061308  -0.276739711   0.004023282

   15    5.2  1.5  0.5   0.000000000   0.000000000   0.000000031  -0.000000124  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.081706887   0.025918454  -0.027399744   0.122878412  -0.011865456  -0.000743167   0.004102189   0.282167261

   16    6.2  1.5  0.5   0.081706692  -0.025918392  -0.027400235   0.122880613   0.011872425   0.000743603  -0.004102204  -0.282168326
                         0.000000000  -0.000000000  -0.000000031   0.000000124   0.000000000   0.000000000   0.000000000   0.000000000

   17    7.2  1.5  0.5   0.090832178   0.286339075  -0.000000364  -0.000000081  -0.036116928   0.577213341   0.025650380  -0.000371412
                        -0.036636121  -0.115491902  -0.000000431  -0.000000096  -0.014049730   0.224912006   0.005109720  -0.000072723

   18    8.2  1.5  0.5  -0.016150734  -0.050913660   0.406912007   0.090734276  -0.002694649   0.043136689   0.000980569  -0.000013956
                        -0.040042622  -0.126230238  -0.344076822  -0.076723146   0.006926996  -0.110705838  -0.004922378   0.000071275

   19    9.2  1.5  0.5   0.000000363  -0.000000195   0.000000068  -0.000000268  -0.000000515  -0.000008354  -0.000000475  -0.000000037
                         0.334814533  -0.106209082  -0.059411058   0.266438125   0.228962130   0.014322657   0.003142571   0.216207376

   20   10.2  1.5  0.5   0.209628361  -0.066498451  -0.059411554   0.266440349   0.246306846   0.015409005  -0.002852212  -0.196141149
                        -0.000000363   0.000000195  -0.000000068   0.000000268   0.000000515   0.000008354   0.000000475   0.000000037

   21    1.2  1.5 -0.5   0.025978978  -0.008241021   0.000000002  -0.000000008   0.027506842   0.001720761   0.000016804   0.001161319
                        -0.000000035   0.000000019   0.000000000  -0.000000000   0.000000060   0.000000967   0.000000055   0.000000004

   22    2.2  1.5 -0.5  -0.018320680   0.005812147   0.009864726  -0.044239899   0.099093597   0.006199902  -0.003844040  -0.264393218
                         0.000000128  -0.000000069   0.000000011  -0.000000045   0.000000190   0.000003087   0.000000176   0.000000014

   23    3.2  1.5 -0.5  -0.317875991   0.100836088   0.030062136  -0.134818321   0.263905861   0.016509025   0.001442559   0.099278738
                         0.000000390  -0.000000209   0.000000034  -0.000000136   0.000000580   0.000009408   0.000000535   0.000000041

   24    4.2  1.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.081706985   0.025918485  -0.000000375   0.000001682  -0.011871349  -0.000743536   0.004102336   0.282177422

   25    5.2  1.5 -0.5  -0.009695067  -0.030563309  -0.093830221  -0.020922502  -0.000269818   0.004307935  -0.055127222   0.000801448
                        -0.024036887  -0.075775324   0.079340997   0.017691662   0.000692462  -0.011055817   0.276729746  -0.004023137

   26    6.2  1.5 -0.5  -0.024036829  -0.075775143  -0.079342418  -0.017691979   0.000692868  -0.011062310   0.276730790  -0.004023152
                         0.009695044   0.030563236  -0.093831901  -0.020922876   0.000269976  -0.004310465   0.055127431  -0.000801451

   27    7.2  1.5 -0.5   0.308753050  -0.097942278   0.000000126  -0.000000564   0.619484183   0.038753412   0.000378453   0.026154341
                        -0.000000412   0.000000221   0.000000000  -0.000000000   0.000001342   0.000021778   0.000001239   0.000000096

   28    8.2  1.5 -0.5   0.000000181  -0.000000097   0.000000135  -0.000000536  -0.000000257  -0.000004177  -0.000000238  -0.000000018
                         0.136111255  -0.043177052  -0.118824029   0.532884829   0.118813116   0.007432657   0.000072626   0.005019090

   29    9.2  1.5 -0.5   0.039728429   0.125240515  -0.203452728  -0.045366408   0.005192277  -0.083127743  -0.042240564   0.000613500
                         0.098498837   0.310508591   0.172035642   0.038360956  -0.013348360   0.213338769   0.212040961  -0.003082108

   30   10.2  1.5 -0.5  -0.061671026  -0.194410389  -0.172037077  -0.038361276   0.014360588  -0.229499968   0.192361385  -0.002797152
                         0.024874255   0.078413329  -0.203454426  -0.045366786   0.005586692  -0.089425007   0.038320266  -0.000557705

   31    1.2  1.5 -1.5   0.002029147   0.006396805  -0.000000067  -0.000000015   0.000067650  -0.001080102   0.027026676  -0.000392918
                        -0.000818439  -0.002580095  -0.000000079  -0.000000018   0.000026360  -0.000420865   0.005383973  -0.000078273

   32    2.2  1.5 -1.5   0.093515704   0.294799088  -0.087051783  -0.019411033   0.015385903  -0.245897764  -0.097365640   0.001414869
                        -0.037718511  -0.118904197  -0.102949148  -0.022955863   0.005985082  -0.095814410  -0.019396135   0.000281309

   33    3.2  1.5 -1.5  -0.005390189  -0.016990573   0.028568320   0.006370238  -0.005778049   0.092333179  -0.259295380   0.003769886
                         0.002174011   0.006852861   0.033785456   0.007533567  -0.002248124   0.035977775  -0.051654141   0.000751177

   34    4.2  1.5 -1.5  -0.036515980  -0.115113168  -0.108350617  -0.024160296   0.006387647  -0.102255235  -0.002323355   0.000033067
                        -0.090534311  -0.285400081   0.091619159   0.020429479  -0.016420399   0.262427457   0.011663052  -0.000168879

   35    5.2  1.5 -1.5   0.000000410  -0.000000220   0.000000018  -0.000000071   0.000000610   0.000009901   0.000000563   0.000000044
                         0.307741937  -0.097621534  -0.015820076   0.070947589  -0.281649451  -0.017619299  -0.000172115  -0.011894580

   36    6.2  1.5 -1.5  -0.307741789   0.097621487   0.015820811  -0.070950886   0.281653205   0.017619534   0.000171976   0.011885049
                         0.000000410  -0.000000220   0.000000018  -0.000000071   0.000000610   0.000009901   0.000000563   0.000000044

   37    7.2  1.5 -1.5   0.024115876   0.076024334  -0.000001222  -0.000000272   0.001523521  -0.024324495   0.608669807  -0.008848930
                        -0.009726927  -0.030663745  -0.000001445  -0.000000322   0.000593641  -0.009478119   0.121252870  -0.001762792

   38    8.2  1.5 -1.5   0.012864078   0.040553490   0.000000484   0.000000108  -0.000341585   0.005453777  -0.069768908   0.001014311
                         0.031893786   0.100543885  -0.000000409  -0.000000091   0.000876645  -0.013996487   0.350228643  -0.005091675

   39    9.2  1.5 -1.5   0.000000314  -0.000000169  -0.000000117   0.000000465  -0.000000446  -0.000007235  -0.000000412  -0.000000032
                         0.235751071  -0.074784677   0.102903579  -0.461487093   0.205792888   0.012873899   0.000125766   0.008691466

   40   10.2  1.5 -1.5  -0.235751272   0.074784740  -0.102904240   0.461490057  -0.205796086  -0.012874099  -0.000125645  -0.008683155
                         0.000000314  -0.000000169  -0.000000117   0.000000465  -0.000000446  -0.000007235  -0.000000412  -0.000000032

   41    1.2  0.5  0.5  -0.000447019  -0.001409208   0.000000111   0.000000025  -0.000021262   0.000339469  -0.004343449   0.000063146
                        -0.001108289  -0.003493837  -0.000000094  -0.000000021   0.000054567  -0.000871209   0.021803412  -0.000316981

   42    2.2  0.5  0.5   0.010404768  -0.003300600   0.000000024  -0.000000109  -0.019685367  -0.001231504   0.000149864   0.010304540
                        -0.000000016   0.000000009  -0.000000000   0.000000000  -0.000000042  -0.000000676  -0.000000038  -0.000000003

   43    3.2  0.5  0.5  -0.004291968  -0.013529996  -0.000000157  -0.000000035  -0.001271622   0.020322932   0.004119345  -0.000059835
                         0.001731117   0.005457185  -0.000000186  -0.000000042  -0.000494664   0.007918859   0.000820610  -0.000011875

   44    4.2  0.5  0.5   0.000481516   0.001517999  -0.000000094  -0.000000021  -0.000244495   0.003906616  -0.021430658   0.000311570
                        -0.000194217  -0.000612274  -0.000000111  -0.000000025  -0.000095145   0.001522220  -0.004269193   0.000062074

   45    5.2  0.5  0.5   0.000000016  -0.000000009   0.000000000  -0.000000000   0.000000042   0.000000676   0.000000038   0.000000003
                         0.014171934  -0.004495593   0.000000008  -0.000000037  -0.018750340  -0.001172940  -0.000173345  -0.011927292

   46    6.2  0.5  0.5  -0.002773655  -0.008743684  -0.003866888  -0.000862248   0.000261013  -0.004178366  -0.000094935   0.000001351
                        -0.006876741  -0.021678216   0.003269765   0.000729101  -0.000670972   0.010723344   0.000476567  -0.000006901

   47    7.2  0.5  0.5  -0.017062281   0.005412443   0.001129192  -0.005064038   0.005334376   0.000333674   0.000148683   0.010228228
                         0.000000016  -0.000000008   0.000000001  -0.000000005   0.000000012   0.000000202   0.000000012   0.000000001

   48    8.2  0.5  0.5  -0.000000016   0.000000008  -0.000000001   0.000000005  -0.000000012  -0.000000202  -0.000000012  -0.000000001
                        -0.006312786   0.002002568   0.001129148  -0.005063842   0.006174601   0.000386300  -0.000141654  -0.009742489

   49    1.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.003767329   0.001195044   0.000000032  -0.000000146  -0.000935009  -0.000058562   0.000323210   0.022231831

   50    2.2  0.5 -0.5   0.003060994   0.009649433  -0.000000070  -0.000000016   0.001147716  -0.018342125   0.010105965  -0.000146968
                        -0.001234616  -0.003891996  -0.000000083  -0.000000019   0.000446487  -0.007147036   0.002013208  -0.000029317

   51    3.2  0.5 -0.5   0.014589094  -0.004627932  -0.000000054   0.000000244  -0.021811233  -0.001364447  -0.000061001  -0.004200285
                        -0.000000019   0.000000010  -0.000000000   0.000000000  -0.000000048  -0.000000772  -0.000000044  -0.000000003

   52    4.2  0.5 -0.5  -0.001636826   0.000519209  -0.000000032   0.000000146  -0.004192707  -0.000262355   0.000317693   0.021851753
                        -0.000000003   0.000000001   0.000000000   0.000000000  -0.000000007  -0.000000115  -0.000000007  -0.000000001

   53    5.2  0.5 -0.5  -0.001681615  -0.005301144  -0.000000028  -0.000000006   0.000425224  -0.006807561  -0.002330241   0.000033829
                        -0.004169235  -0.013143120   0.000000024   0.000000005  -0.001093148   0.017470900   0.011697448  -0.000170013

   54    6.2  0.5 -0.5  -0.000000031   0.000000017   0.000000001  -0.000000005  -0.000000025  -0.000000405  -0.000000023  -0.000000002
                        -0.023375138   0.007415034  -0.001129186   0.005064008   0.011508642   0.000719952   0.000007031   0.000485930

   55    7.2  0.5 -0.5  -0.005019527  -0.015823640  -0.003269784  -0.000729105  -0.000310978   0.004970382   0.010031125  -0.000145820
                         0.002024573   0.006382309  -0.003866910  -0.000862254  -0.000120957   0.001936716   0.001998296  -0.000029037

   56    8.2  0.5 -0.5   0.000749074   0.002361349  -0.003866761  -0.000862220  -0.000140063   0.002241772  -0.001903398   0.000027686
                         0.001857193   0.005854511   0.003269657   0.000729077   0.000360014  -0.005753274   0.009554745  -0.000138922


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  1.5  1.5   0.000000012  -0.000000316   0.000000019   0.000000000   0.000000002  -0.000000028  -0.025313064  -0.002897164
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  1.5  1.5   0.000594525  -0.016252948  -0.256522847  -0.006406933  -0.011989844   0.171613951   0.000184991   0.000021022
                         0.000000044  -0.000000030  -0.000003629   0.000002372   0.000001792   0.000002484  -0.000000028   0.000000157

    3    3.2  1.5  1.5  -0.008877551   0.242693922  -0.022639956  -0.000565490  -0.037892777   0.542370181   0.089426783   0.010235241
                        -0.000000443   0.000000094  -0.000000224   0.000000205   0.000005628   0.000007959   0.000000009  -0.000000052

    4    4.2  1.5  1.5  -0.000000180   0.000000058   0.000003378  -0.000002190   0.000000053   0.000000121   0.000000029  -0.000000165
                         0.003332910  -0.091114740  -0.236674551  -0.005911190   0.000422907  -0.006053309  -0.027683477  -0.003168625

    5    5.2  1.5  1.5   0.208056995   0.007610599  -0.001411647   0.056704663  -0.166163313  -0.011608741   0.002017104  -0.017624067
                        -0.000530170  -0.000019758  -0.011998871   0.480393325  -0.025696948  -0.001797192   0.002443039  -0.021343278

    6    6.2  1.5  1.5   0.001226849   0.000045774  -0.005613037   0.224727238   0.022921375   0.001603099   0.002445568  -0.021365375
                         0.481392683   0.017609015   0.000660358  -0.026526392  -0.148215112  -0.010354840  -0.002019193   0.017642314

    7    7.2  1.5  1.5   0.000000289  -0.000007907   0.000001185   0.000000030   0.000000115  -0.000001648   0.668804352   0.076546876
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    8    8.2  1.5  1.5  -0.000000206   0.000000041  -0.000000680   0.000000473   0.000002989   0.000004218   0.000000000  -0.000000000
                         0.004174170  -0.114113197   0.051357076   0.001282714   0.020109927  -0.287839125   0.494144061   0.056556426

    9    9.2  1.5  1.5  -0.342063873  -0.012512467   0.000026552  -0.001066368   0.135145647   0.009441753  -0.006774385   0.059189903
                         0.000871743   0.000032518   0.000225661  -0.009034307   0.020900160   0.001461729  -0.008204873   0.071680763

   10   10.2  1.5  1.5  -0.000668183  -0.000024917  -0.005371157   0.215042397  -0.021710941  -0.001518426  -0.008205354   0.071684969
                        -0.262198953  -0.009591068   0.000631910  -0.025383161   0.140388553   0.009808034   0.006774782  -0.059193376

   11    1.2  1.5  0.5   0.000000000   0.000000000  -0.000000003   0.000000124   0.000000006   0.000000000  -0.000728013   0.006360191
                         0.000000161   0.000000006   0.000000000  -0.000000015  -0.000000036  -0.000000002   0.000601087  -0.005251885

   12    2.2  1.5  0.5   0.000672205   0.000025080   0.000077845  -0.003117085   0.081450736   0.005696567  -0.007892217   0.068955147
                         0.263772293   0.009648634  -0.000009160   0.000367972  -0.526680983  -0.036795744   0.006516864  -0.056939134

   13    3.2  1.5  0.5   0.000023832   0.000000897  -0.006204336   0.248400522  -0.027702620  -0.001937479   0.000016247  -0.000143864
                         0.009337691   0.000341553   0.000729928  -0.029320725   0.179132352   0.012514794  -0.000013619   0.000118758

   14    4.2  1.5  0.5   0.548398036   0.020060017  -0.000631220   0.025355052   0.193263340   0.013502012  -0.006194153   0.054119471
                        -0.001397571  -0.000052120  -0.005365253   0.214804927   0.029888007   0.002090347  -0.007501323   0.065540457

   15    5.2  1.5  0.5  -0.000000328   0.000000096   0.000004652  -0.000003005   0.000001060   0.000001565  -0.000000000   0.000000000
                         0.006185674  -0.169103389  -0.324693015  -0.008109535   0.007234164  -0.103544831  -0.084967360  -0.009724796

   16    6.2  1.5  0.5   0.003435571  -0.093921232  -0.358525875  -0.008954558  -0.006013270   0.086069476   0.084976724   0.009725868
                         0.000000192  -0.000000070  -0.000005100   0.000003316   0.000000909   0.000001214   0.000000000  -0.000000000

   17    7.2  1.5  0.5   0.000000010   0.000000000  -0.000000085   0.000003401   0.000000105   0.000000007   0.019235062  -0.168044522
                         0.000003835   0.000000140   0.000000010  -0.000000401  -0.000000677  -0.000000047  -0.015881502   0.138761622

   18    8.2  1.5  0.5   0.138310958   0.005059312   0.001048464  -0.042116071   0.009081546   0.000634457   0.003911234  -0.034173668
                        -0.000352528  -0.000013164   0.008911870  -0.356800803   0.001404402   0.000098209   0.004737136  -0.041385346

   19    9.2  1.5  0.5  -0.000000315   0.000000079   0.000001975  -0.000001253   0.000002628   0.000003745  -0.000000114   0.000000640
                         0.006144909  -0.167989043  -0.135163015  -0.003375819   0.017736820  -0.253872264  -0.177946735  -0.020365978

   20   10.2  1.5  0.5  -0.001085429   0.029673490  -0.224117868  -0.005597589  -0.017094757   0.244682049   0.392636879   0.044939209
                        -0.000000042  -0.000000009  -0.000003153   0.000002071   0.000002548   0.000003561   0.000000114  -0.000000640

   21    1.2  1.5 -0.5  -0.000000006   0.000000161   0.000000125   0.000000003   0.000000003  -0.000000036   0.008248292   0.000944092
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000009  -0.000000049

   22    2.2  1.5 -0.5  -0.009648667   0.263773148  -0.003138730  -0.000078381   0.037234092  -0.532941911   0.089425261   0.010235067
                        -0.000000493   0.000000070  -0.000000082   0.000000027  -0.000005521  -0.000007807   0.000000009  -0.000000052

   23    3.2  1.5 -0.5  -0.000341554   0.009337721   0.250125018   0.006247125  -0.012663881   0.181261785  -0.000186549  -0.000021200
                        -0.000000028   0.000000038   0.000003583  -0.000002314   0.000001867   0.000002690   0.000000028  -0.000000157

   24    4.2  1.5 -0.5   0.000001003  -0.000000161   0.000002987  -0.000001993  -0.000002047  -0.000002858  -0.000000000   0.000000000
                        -0.020060085   0.548399817  -0.216296174  -0.005402255  -0.013662865   0.195560761  -0.084996875  -0.009728174

   25    5.2  1.5 -0.5   0.169102840   0.006185654   0.000947535  -0.038061907   0.102328409   0.007149000   0.006192002  -0.054100678
                        -0.000431000  -0.000016089   0.008053989  -0.322454408   0.015824947   0.001106767   0.007498718  -0.065517698

   26    6.2  1.5 -0.5   0.000239397   0.000008945  -0.008893224   0.356054011   0.013154242   0.000920006   0.007499544  -0.065524919
                         0.093920928   0.003435560   0.001046271  -0.042027903  -0.085058336  -0.005942474  -0.006192684   0.054106641

   27    7.2  1.5 -0.5  -0.000000140   0.000003835   0.000003425   0.000000086   0.000000048  -0.000000685  -0.217930603  -0.024944131
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000231   0.000001299

   28    8.2  1.5 -0.5   0.000000273  -0.000000087  -0.000005129   0.000003324  -0.000000080  -0.000000184  -0.000000057   0.000000320
                        -0.005059329   0.138311406   0.359277854   0.008973333  -0.000642013   0.009189495   0.053671095   0.006143143

   29    9.2  1.5 -0.5   0.167988497   0.006144888   0.000394436  -0.015844427   0.250889812   0.017528009   0.012967981  -0.113302703
                        -0.000428142  -0.000015973   0.003352696  -0.134231124   0.038799855   0.002713613   0.015703646  -0.137213473

   30   10.2  1.5 -0.5  -0.000075604  -0.000002808  -0.005559249   0.222572687   0.037395342   0.002615397   0.034652697  -0.302759303
                        -0.029673393  -0.001085425   0.000654037  -0.026271999  -0.241807555  -0.016893502  -0.028613338   0.250001048

   31    1.2  1.5 -1.5  -0.000000001  -0.000000000  -0.000000000   0.000000019   0.000000004   0.000000000   0.002233982  -0.019518715
                        -0.000000316  -0.000000012   0.000000000  -0.000000002  -0.000000028  -0.000000002  -0.001844691   0.016117412

   32    2.2  1.5 -1.5  -0.000041445  -0.000001558   0.006363049  -0.254754247  -0.026228184  -0.001834379  -0.000016110   0.000142662
                        -0.016252896  -0.000594523  -0.000748602   0.030070661   0.169597849   0.011848688   0.000013506  -0.000117766

   33    3.2  1.5 -1.5   0.000618517   0.000023065   0.000561618  -0.022483876  -0.082891667  -0.005797351  -0.007892351   0.068956321
                         0.242693133   0.008877522  -0.000066078   0.002653852   0.535998493   0.037446673   0.006516975  -0.056940103

   34    4.2  1.5 -1.5  -0.091114444  -0.003332898  -0.000690676   0.027743992  -0.005982201  -0.000417930  -0.002017409   0.017626731
                         0.000232233   0.000008672  -0.005870701   0.235042792  -0.000925109  -0.000064692  -0.002443408   0.021346505

   35    5.2  1.5 -1.5  -0.000000364   0.000000007  -0.000006879   0.000004471  -0.000001716  -0.000002520   0.000000029  -0.000000165
                         0.007610625  -0.208057671   0.483728400   0.012081623  -0.011747032   0.168138574  -0.027679292  -0.003168146

   36    6.2  1.5 -1.5   0.017609074  -0.481394245  -0.226287387  -0.005651749  -0.010478198   0.149977029   0.027707950   0.003171426
                         0.000000904  -0.000000180  -0.000003257   0.000002098   0.000001559   0.000002156   0.000000029  -0.000000165

   37    7.2  1.5 -1.5  -0.000000020  -0.000000001  -0.000000029   0.000001177   0.000000252   0.000000018  -0.059024725   0.515710055
                        -0.000007907  -0.000000289   0.000000003  -0.000000139  -0.000001628  -0.000000114   0.048739162  -0.425843161

   38    8.2  1.5 -1.5  -0.114112826  -0.004174156   0.000149878  -0.006020241  -0.284457631  -0.019873176   0.036010781  -0.314632925
                         0.000290819   0.000010843   0.001273928  -0.051002999  -0.043991113  -0.003076691   0.043610239  -0.381030806

   39    9.2  1.5 -1.5   0.000000634  -0.000000107   0.000000107  -0.000000080   0.000001412   0.000001996  -0.000000099   0.000000554
                        -0.012512510   0.342064983  -0.009097024  -0.000227216   0.009554232  -0.136752195   0.092960079   0.010640123

   40   10.2  1.5 -1.5  -0.009591101   0.262199804  -0.216535302  -0.005408200   0.009924875  -0.142057421  -0.092965533  -0.010640747
                        -0.000000477   0.000000057  -0.000003068   0.000002000  -0.000001458  -0.000002102  -0.000000099   0.000000554

   41    1.2  0.5  0.5   0.018024479   0.000659324  -0.000018702   0.000751254  -0.020592329  -0.001438651   0.001002539  -0.008759367
                        -0.000045934  -0.000001713  -0.000158967   0.006364503  -0.003184584  -0.000222726   0.001214107  -0.010607882

   42    2.2  0.5  0.5   0.000521853  -0.014266366  -0.011478625  -0.000286689   0.001506263  -0.021559587  -0.010760691  -0.001231619
                         0.000000027  -0.000000007  -0.000000168   0.000000106  -0.000000223  -0.000000318  -0.000000004   0.000000023

   43    3.2  0.5  0.5  -0.000015731  -0.000000588   0.000685481  -0.027444312   0.000094694   0.000006622  -0.000212555   0.001856812
                        -0.006171428  -0.000225746  -0.000080646   0.003239473  -0.000612341  -0.000042780   0.000175481  -0.001533253

   44    4.2  0.5  0.5  -0.000070405  -0.000002626  -0.000153387   0.006141018   0.000065395   0.000004574  -0.001259090   0.011000855
                        -0.027626213  -0.001010548   0.000018046  -0.000724870  -0.000422860  -0.000029541   0.001039678  -0.009083863

   45    5.2  0.5  0.5   0.000000004   0.000000001   0.000000268  -0.000000176  -0.000000216  -0.000000302   0.000000004  -0.000000023
                        -0.000092174   0.002519852  -0.019033108  -0.000475373  -0.001451748   0.020779282   0.002996376   0.000342923

   46    6.2  0.5  0.5   0.000000034   0.000000001   0.000000000  -0.000000015   0.000000007   0.000000001   0.000557129  -0.004867813
                        -0.000000000  -0.000000000   0.000000003  -0.000000123   0.000000001   0.000000000   0.000674774  -0.005895068

   47    7.2  0.5  0.5  -0.000000002   0.000000063  -0.000000061  -0.000000002  -0.000000002   0.000000027   0.016496153   0.001888017
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000004   0.000000023

   48    8.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000004  -0.000000023
                        -0.000000005   0.000000147   0.000000139   0.000000003   0.000000012  -0.000000178  -0.024141220  -0.002763065

   49    1.2  0.5 -0.5  -0.000000033   0.000000005  -0.000000092   0.000000059  -0.000000215  -0.000000306   0.000000000   0.000000000
                         0.000659326  -0.018024537   0.006408688   0.000160064  -0.001455790   0.020837120  -0.013756950  -0.001574529

   50    2.2  0.5 -0.5  -0.000036360  -0.000001357   0.000284725  -0.011399484   0.003294999   0.000230448   0.000949707  -0.008297486
                        -0.014266319  -0.000521851  -0.000033497   0.001345577  -0.021306309  -0.001488531  -0.000784182   0.006851584

   51    3.2  0.5 -0.5  -0.000225747   0.006171448   0.027634841   0.000690209  -0.000043289   0.000619619  -0.002408031  -0.000275633
                        -0.000000013   0.000000005   0.000000394  -0.000000256   0.000000005   0.000000013  -0.000000005   0.000000026

   52    4.2  0.5 -0.5  -0.001010551   0.027626303  -0.006183651  -0.000154444  -0.000029893   0.000427886  -0.014266583  -0.001632861
                        -0.000000051   0.000000008  -0.000000085   0.000000057   0.000000005   0.000000006  -0.000000001   0.000000004

   53    5.2  0.5 -0.5   0.002519844   0.000092174  -0.000055544   0.002231138   0.020535170   0.001434657   0.000218365  -0.001907859
                        -0.000006420  -0.000000238  -0.000472117   0.018901884   0.003175747   0.000222109   0.000264411  -0.002310486

   54    6.2  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000008  -0.000000046
                         0.000000001  -0.000000034  -0.000000124  -0.000000003   0.000000001  -0.000000008  -0.007645092  -0.000875050

   55    7.2  0.5 -0.5   0.000000000   0.000000000   0.000000002  -0.000000060  -0.000000004  -0.000000000  -0.001455822   0.012720063
                         0.000000063   0.000000002  -0.000000000   0.000000007   0.000000027   0.000000002   0.001202162  -0.010503478

   56    8.2  0.5 -0.5   0.000000147   0.000000005   0.000000000  -0.000000016  -0.000000176  -0.000000012  -0.001759289   0.015371275
                        -0.000000000  -0.000000000   0.000000003  -0.000000138  -0.000000027  -0.000000002  -0.002130593   0.018615112


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  1.5  1.5   0.000451591  -0.008289847  -0.000000080   0.000000015  -0.000000490  -0.000000026  -0.000000067   0.000001592
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  1.5  1.5  -0.004895387   0.089875450   0.550870150  -0.104394606  -0.410898076  -0.022006537  -0.001479000   0.035196170
                        -0.000000314   0.000000013  -0.000000314  -0.000001523   0.000000171  -0.000000676  -0.000000028   0.000000018

    3    3.2  1.5  1.5   0.000009965  -0.000186512  -0.200751976   0.038044216  -0.022619513  -0.001211461  -0.018735798   0.445860807
                         0.000000103  -0.000000004   0.000000113   0.000000561  -0.000000017  -0.000000060  -0.000000056  -0.000000033

    4    4.2  1.5  1.5   0.000000331  -0.000000014  -0.000000241  -0.000001180   0.000000243  -0.000000890  -0.000000015   0.000000042
                        -0.004651186   0.085393218  -0.425229608   0.080584654   0.545545565   0.029217855  -0.007087586   0.168665211

    5    5.2  1.5  1.5   0.030193676   0.001644894   0.011593674   0.061175521   0.003666941  -0.068467277   0.082823158   0.003480386
                         0.079908089   0.004352306   0.025885449   0.136593463   0.001544587  -0.028842127   0.308443896   0.012961299

    6    6.2  1.5  1.5   0.079899877   0.004351859   0.029726846   0.156863904   0.005199649  -0.097093294  -0.186578332  -0.007840311
                        -0.030190573  -0.001644724  -0.013314169  -0.070253953  -0.012344356   0.230486368   0.050099912   0.002105314

    7    7.2  1.5  1.5  -0.011931628   0.219028684   0.000002889  -0.000000548   0.000011879   0.000000636   0.000001705  -0.000040577
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    8    8.2  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.008815670   0.161829096   0.000001469  -0.000000278   0.000005794   0.000000310   0.000000924  -0.000021980

    9    9.2  1.5  1.5  -0.101348845  -0.005521291   0.000000261   0.000001380  -0.000000855   0.000015968  -0.000007712  -0.000000324
                        -0.268221485  -0.014609059   0.000000584   0.000003081  -0.000000360   0.000006727  -0.000028721  -0.000001207

   10   10.2  1.5  1.5  -0.268220827  -0.014609023   0.000000411   0.000002167  -0.000000648   0.000012096   0.000012917   0.000000543
                         0.101348597   0.005521277  -0.000000184  -0.000000970   0.000001538  -0.000028715  -0.000003468  -0.000000146

   11    1.2  1.5  0.5  -0.023798386  -0.001296212   0.000000036   0.000000189  -0.000000031   0.000000584  -0.000000477  -0.000000020
                         0.008992340   0.000489885  -0.000000016  -0.000000085   0.000000074  -0.000001386   0.000000128   0.000000005

   12    2.2  1.5  0.5  -0.000175435  -0.000009338   0.022870195   0.120682435   0.000172537  -0.003221722   0.460070212   0.019332879
                         0.000066293   0.000003639  -0.010243187  -0.054049517  -0.000409572   0.007647870  -0.123537766  -0.005191304

   13    3.2  1.5  0.5  -0.084072219  -0.004579182   0.080290962   0.423682829   0.010589647  -0.197740973   0.041398503   0.001739637
                         0.031767112   0.001730602  -0.035961018  -0.189752984  -0.025140592   0.469410327  -0.011116270  -0.000467089

   14    4.2  1.5  0.5   0.009839217   0.000535993   0.000009889   0.000052200   0.000065634  -0.001225604  -0.001209783  -0.000050831
                         0.026039671   0.001418516   0.000022090   0.000116556   0.000027652  -0.000516297  -0.004505387  -0.000189319

   15    5.2  1.5  0.5  -0.000000000   0.000000000   0.000000151   0.000000708   0.000000092  -0.000000194   0.000000051   0.000000051
                         0.001516648  -0.027841084   0.259487425  -0.049175077   0.131293192   0.007031647  -0.022854697   0.543879451

   16    6.2  1.5  0.5  -0.001515167   0.027813887   0.297451315  -0.056369558   0.430516202   0.023057229   0.013671552  -0.325345529
                         0.000000000  -0.000000000  -0.000000171  -0.000000824  -0.000000167   0.000000730   0.000000073   0.000000000

   17    7.2  1.5  0.5   0.628784165   0.034247610  -0.000000990  -0.000005224   0.000000790  -0.000014751   0.000012306   0.000000517
                        -0.237589279  -0.012943408   0.000000443   0.000002340  -0.000001875   0.000035017  -0.000003304  -0.000000139

   18    8.2  1.5  0.5   0.058512953   0.003187673  -0.000000354  -0.000001868   0.000001751  -0.000032700   0.000003074   0.000000129
                         0.154855549   0.008434424  -0.000000790  -0.000004170   0.000000738  -0.000013775   0.000011449   0.000000481

   19    9.2  1.5  0.5  -0.000001282   0.000000054   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.023123391  -0.424520192  -0.000000303   0.000000057  -0.000014327  -0.000000767  -0.000000976   0.000023236

   20   10.2  1.5  0.5   0.012944076  -0.237658709   0.000003675  -0.000000696   0.000001561   0.000000084   0.000001162  -0.000027652
                         0.000001282  -0.000000054  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   21    1.2  1.5 -0.5   0.001385696  -0.025440624   0.000000207  -0.000000039  -0.000001504  -0.000000081   0.000000021  -0.000000494
                         0.000000098  -0.000000004  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   22    2.2  1.5 -0.5   0.000010021  -0.000187543   0.132233130  -0.025059304   0.008298768   0.000444430  -0.020017738   0.476367694
                         0.000000103  -0.000000004  -0.000000076  -0.000000362  -0.000000029  -0.000000003  -0.000000048  -0.000000039

   23    3.2  1.5 -0.5   0.004895293  -0.089873730   0.464234137  -0.087976323   0.509359940   0.027279845  -0.001801253   0.042864983
                         0.000000314  -0.000000013  -0.000000268  -0.000001277  -0.000000227   0.000000843   0.000000036  -0.000000033

   24    4.2  1.5 -0.5   0.000000000  -0.000000000  -0.000000002   0.000000004  -0.000000006  -0.000000003  -0.000000005   0.000000001
                         0.001516402  -0.027836570  -0.000127711   0.000024202  -0.001329912  -0.000071221  -0.000196024   0.004664985

   25    5.2  1.5 -0.5  -0.009840812  -0.000536080   0.020100696   0.106063964   0.006480225  -0.120995714   0.141045773   0.005927024
                        -0.026043893  -0.001418746   0.044879284   0.236820943   0.002729608  -0.050969963   0.525272263   0.022072779

   26    6.2  1.5 -0.5  -0.026018452  -0.001417360  -0.051445271  -0.271468650  -0.008950471   0.167132662   0.314214801   0.013203803
                         0.009831199   0.000535556   0.023041508   0.121581484   0.021249115  -0.396750398  -0.084372789  -0.003545554

   27    7.2  1.5 -0.5  -0.036611891   0.672174228  -0.000005724   0.000001085   0.000037998   0.000002035  -0.000000535   0.000012742
                        -0.000002602   0.000000110   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   28    8.2  1.5 -0.5  -0.000000641   0.000000027   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.009016694  -0.165541556   0.000004569  -0.000000866  -0.000035483  -0.000001900   0.000000498  -0.000011855

   29    9.2  1.5 -0.5  -0.150052521  -0.008174478  -0.000000023  -0.000000124  -0.000000707   0.000013203   0.000006026   0.000000253
                        -0.397116652  -0.021630282  -0.000000052  -0.000000277  -0.000000298   0.000005562   0.000022441   0.000000943

   30   10.2  1.5 -0.5   0.222317402   0.012108061  -0.000000636  -0.000003354  -0.000000032   0.000000606   0.000026706   0.000001122
                        -0.084003771  -0.004576460   0.000000285   0.000001502   0.000000077  -0.000001438  -0.000007171  -0.000000301

   31    1.2  1.5 -1.5  -0.007754723  -0.000422440  -0.000000014  -0.000000073  -0.000000010   0.000000190   0.000001537   0.000000065
                         0.002930160   0.000159621   0.000000006   0.000000033   0.000000024  -0.000000452  -0.000000413  -0.000000017

   32    2.2  1.5 -1.5   0.084073828   0.004579270   0.095274987   0.502751098  -0.008542627   0.159516629   0.033992028   0.001428394
                        -0.031767720  -0.001730636  -0.042672129  -0.225164950   0.020280808  -0.378670932  -0.009127540  -0.000383581

   33    3.2  1.5 -1.5  -0.000174470  -0.000009285  -0.034720778  -0.183216092  -0.000470250   0.008781204   0.430607025   0.018094794
                         0.000065929   0.000003619   0.015550883   0.082056197   0.001116468  -0.020845459  -0.115626333  -0.004858863

   34    4.2  1.5 -1.5  -0.030183414  -0.001644335   0.032939625   0.173810115  -0.026926619   0.502757876  -0.043740396  -0.001838028
                        -0.079880932  -0.004350827   0.073545004   0.388085381  -0.011341966   0.211788761  -0.162894856  -0.006845108

   35    5.2  1.5 -1.5   0.000000331  -0.000000014   0.000000085   0.000000413   0.000000046  -0.000000115   0.000000024   0.000000030
                        -0.004652767   0.085422250   0.149667026  -0.028363176   0.074294261   0.003978970  -0.013420446   0.319370180

   36    6.2  1.5 -1.5   0.004652289  -0.085413471  -0.171877579   0.032572265  -0.250102123  -0.013394756  -0.008118055   0.193187673
                         0.000000331  -0.000000014   0.000000101   0.000000471   0.000000103  -0.000000418  -0.000000037  -0.000000001

   37    7.2  1.5 -1.5   0.204890002   0.011161420   0.000000500   0.000002637   0.000000247  -0.000004612  -0.000039189  -0.000001647
                        -0.077418687  -0.004217397  -0.000000224  -0.000001181  -0.000000586   0.000010948   0.000010523   0.000000442

   38    8.2  1.5 -1.5  -0.057200710  -0.003116019  -0.000000114  -0.000000601  -0.000000286   0.000005339   0.000005700   0.000000240
                        -0.151382747  -0.008246603  -0.000000254  -0.000001341  -0.000000120   0.000002249   0.000021228   0.000000892

   39    9.2  1.5 -1.5  -0.000001110   0.000000047   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.015617594  -0.286730455   0.000003375  -0.000000640  -0.000017327  -0.000000928   0.000001250  -0.000029739

   40   10.2  1.5 -1.5  -0.015617556   0.286729752  -0.000002374   0.000000450   0.000031159   0.000001669   0.000000562  -0.000013374
                        -0.000001110   0.000000047   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   41    1.2  0.5  0.5  -0.001592440  -0.000086748  -0.000000007  -0.000000039  -0.000000003   0.000000057   0.000000069   0.000000003
                        -0.004214423  -0.000229581  -0.000000016  -0.000000087  -0.000000001   0.000000024   0.000000255   0.000000011

   42    2.2  0.5  0.5  -0.000529474   0.009721152  -0.000000187   0.000000035   0.000000188   0.000000010  -0.000000002   0.000000037
                        -0.000000046   0.000000002   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   43    3.2  0.5  0.5  -0.013412922  -0.000730559   0.000000046   0.000000244  -0.000000050   0.000000934  -0.000000409  -0.000000017
                         0.005068140   0.000276102  -0.000000021  -0.000000109   0.000000119  -0.000002218   0.000000110   0.000000005

   44    4.2  0.5  0.5   0.002263954   0.000123346   0.000000031   0.000000164   0.000000008  -0.000000149  -0.000002391  -0.000000100
                        -0.000855446  -0.000046598  -0.000000014  -0.000000073  -0.000000019   0.000000355   0.000000642   0.000000027

   45    5.2  0.5  0.5   0.000000046  -0.000000002  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000774907   0.014226571  -0.000000055   0.000000010   0.000000034   0.000000002   0.000000001  -0.000000013

   46    6.2  0.5  0.5   0.008334713   0.000454059  -0.000000033  -0.000000174   0.000000059  -0.000001099   0.000000104   0.000000004
                         0.022057964   0.001201418  -0.000000074  -0.000000388   0.000000025  -0.000000463   0.000000386   0.000000016

   47    7.2  0.5  0.5  -0.001004672   0.018444324   0.000000226  -0.000000043   0.000000939   0.000000050   0.000000038  -0.000000910
                        -0.000000046   0.000000002  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   48    8.2  0.5  0.5   0.000000046  -0.000000002  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000279689   0.005135839  -0.000000207   0.000000039   0.000000424   0.000000023  -0.000000062   0.000001487

   49    1.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000245424  -0.004505244  -0.000000095   0.000000018  -0.000000061  -0.000000003  -0.000000011   0.000000264

   50    2.2  0.5 -0.5   0.009093634   0.000495279  -0.000000032  -0.000000170   0.000000004  -0.000000073   0.000000035   0.000000001
                        -0.003436076  -0.000187193   0.000000014   0.000000076  -0.000000009   0.000000173  -0.000000009  -0.000000000

   51    3.2  0.5 -0.5  -0.000780992   0.014338498  -0.000000268   0.000000051   0.000002407   0.000000129  -0.000000018   0.000000424
                        -0.000000053   0.000000002  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   52    4.2  0.5 -0.5   0.000131855  -0.002420181  -0.000000179   0.000000034  -0.000000385  -0.000000021  -0.000000104   0.000002475
                        -0.000000008   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   53    5.2  0.5 -0.5  -0.005028578  -0.000273945   0.000000004   0.000000023  -0.000000002   0.000000031   0.000000003   0.000000000
                        -0.013308220  -0.000724869   0.000000010   0.000000051  -0.000000001   0.000000013   0.000000012   0.000000001

   54    6.2  0.5 -0.5   0.000000091  -0.000000004  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.001284358   0.023580102  -0.000000425   0.000000081   0.000001193   0.000000064  -0.000000017   0.000000399

   55    7.2  0.5 -0.5   0.017253710   0.000939802   0.000000039   0.000000206   0.000000020  -0.000000364  -0.000000879  -0.000000037
                        -0.006519400  -0.000355158  -0.000000017  -0.000000092  -0.000000046   0.000000865   0.000000236   0.000000010

   56    8.2  0.5 -0.5  -0.001815334  -0.000098903   0.000000016   0.000000085  -0.000000021   0.000000391  -0.000000386  -0.000000016
                        -0.004804311  -0.000261619   0.000000036   0.000000189  -0.000000009   0.000000165  -0.000001436  -0.000000060


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  1.5  1.5  -0.000000000  -0.000000041   0.000000041  -0.000000000  -0.000000000  -0.000000173   0.000000003   0.000000029
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  1.5  1.5  -0.000003849  -0.084532781   0.098947468  -0.000000232  -0.000037157  -0.021573273   0.014248716   0.144189543
                        -0.000001116   0.000000134  -0.000000127   0.000000240  -0.000000046   0.000000002  -0.000000333  -0.000000006

    3    3.2  1.5  1.5  -0.000011747  -0.257952121   0.304721982  -0.000000716  -0.000260524  -0.151181842  -0.001534635  -0.015529552
                        -0.000003408   0.000000414  -0.000000391   0.000000730  -0.000000266   0.000000021   0.000000058  -0.000000001

    4    4.2  1.5  1.5   0.000000002  -0.000000004  -0.000000001  -0.000000000  -0.000000039   0.000000005   0.000000335   0.000000005
                        -0.000000013  -0.000217904  -0.000998896   0.000000003   0.000045941   0.026649101   0.014021048   0.141885616

    5    5.2  1.5  1.5   0.148121476  -0.000001002   0.000000023  -0.068645259   0.158250572  -0.000272572  -0.141487401   0.013982149
                        -0.435884659   0.000021797  -0.000000332  -0.073463641  -0.040974389   0.000070899   0.206033340  -0.020359759

    6    6.2  1.5  1.5   0.436087243  -0.000021810   0.000000326   0.071274648   0.061009545  -0.000105551   0.144785405  -0.014307363
                         0.148190323  -0.000001007   0.000000030  -0.066599839   0.235630001  -0.000405937   0.099427158  -0.009825703

    7    7.2  1.5  1.5  -0.000000000   0.000000844  -0.000000962  -0.000000000   0.000000006   0.000003639  -0.000000036  -0.000000365
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    8    8.2  1.5  1.5   0.000000000  -0.000000000   0.000000635  -0.000001186   0.000000412  -0.000000032   0.000000076   0.000000004
                        -0.000000001  -0.000025966   0.494644604  -0.000001162  -0.000400091  -0.232177874   0.004608353   0.046634337

    9    9.2  1.5  1.5  -0.000004156   0.000000000   0.000000073  -0.179869434   0.561084463  -0.000966569   0.051139988  -0.005053884
                         0.000012229  -0.000000001  -0.000000877  -0.192494919  -0.145276525   0.000251348  -0.074469843   0.007358926

   10   10.2  1.5  1.5  -0.000011860   0.000000001   0.000000881   0.194445463   0.127417641  -0.000220460  -0.238239356   0.023542296
                        -0.000004030   0.000000000   0.000000067  -0.181692046   0.492110192  -0.000847690  -0.163603951   0.016167714

   11    1.2  1.5  0.5   0.000000020   0.000000000  -0.000000000  -0.000000014  -0.000000009   0.000000000  -0.000000110   0.000000011
                         0.000000007  -0.000000000   0.000000000   0.000000013  -0.000000034   0.000000000  -0.000000075   0.000000007

   12    2.2  1.5  0.5  -0.236581063   0.000011828   0.000001041   0.227429733   0.034142098  -0.000059073   0.018636837  -0.001841643
                        -0.080394517   0.000000548   0.000000060  -0.212512915   0.131863009  -0.000227146   0.012798304  -0.001264783

   13    3.2  1.5  0.5   0.077956789  -0.000003903  -0.000000343  -0.075402030  -0.004176187   0.000007231   0.116946118  -0.011556355
                         0.026491133  -0.000000188  -0.000000017   0.070456510  -0.016129194   0.000027759   0.080309342  -0.007936388

   14    4.2  1.5  0.5  -0.171972736   0.000001161  -0.000000002   0.067785846   0.324457845  -0.000558931  -0.035682220   0.003526161
                         0.506072981  -0.000025311   0.000000337   0.072543910  -0.084008933   0.000145347   0.051960286  -0.005134606

   15    5.2  1.5  0.5   0.000003586  -0.000000440  -0.000000070   0.000000127  -0.000000101   0.000000010   0.000000475   0.000000007
                        -0.000012373  -0.271616192  -0.054854232   0.000000130   0.000109527   0.063543651   0.019737472   0.199732794

   16    6.2  1.5  0.5   0.000012348   0.271245718   0.051972389  -0.000000121   0.000023079   0.013376899   0.020733157   0.209808652
                         0.000003587  -0.000000431  -0.000000067   0.000000129   0.000000012  -0.000000003  -0.000000491  -0.000000008

   17    7.2  1.5  0.5  -0.000000652  -0.000000000  -0.000000000   0.000000471   0.000000198  -0.000000000   0.000002012  -0.000000199
                        -0.000000222   0.000000000  -0.000000000  -0.000000440   0.000000766  -0.000000001   0.000001381  -0.000000137

   18    8.2  1.5  0.5  -0.000000067   0.000000000  -0.000000011  -0.003157430  -0.119465762   0.000205902  -0.371945367   0.036756684
                         0.000000197  -0.000000000  -0.000000008  -0.003379057   0.030932189  -0.000053498   0.541625242  -0.053522191

   19    9.2  1.5  0.5   0.000000000  -0.000000000   0.000000553  -0.000001026   0.000000447  -0.000000038  -0.000000709  -0.000000008
                        -0.000000001  -0.000023932   0.430688402  -0.000001013  -0.000452866  -0.262778223  -0.028472967  -0.288131230

   20   10.2  1.5  0.5   0.000000001   0.000022765  -0.426062942   0.000000999   0.000240125   0.139373957  -0.036454957  -0.368905160
                         0.000000000  -0.000000000   0.000000548  -0.000001029   0.000000266  -0.000000017   0.000000841   0.000000015

   21    1.2  1.5 -0.5   0.000000000  -0.000000021   0.000000019  -0.000000000   0.000000000   0.000000035   0.000000013   0.000000133
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   22    2.2  1.5 -0.5   0.000011375   0.249867720  -0.311265197   0.000000720  -0.000234702  -0.136211365  -0.002234127  -0.022608148
                         0.000003287  -0.000000403   0.000000398  -0.000000754  -0.000000252   0.000000015   0.000000072   0.000000001

   23    3.2  1.5 -0.5  -0.000003756  -0.082334933   0.103196831  -0.000000239   0.000028684   0.016661078  -0.014019116  -0.141866081
                        -0.000001078   0.000000140  -0.000000132   0.000000247   0.000000041  -0.000000000   0.000000328   0.000000005

   24    4.2  1.5 -0.5  -0.000007045   0.000000862   0.000000130  -0.000000231   0.000000608  -0.000000042   0.000000099   0.000000005
                         0.000024338   0.534494606   0.099285145  -0.000000245  -0.000577520  -0.335157268   0.006228805   0.063032465

   25    5.2  1.5 -0.5  -0.087392052   0.000000586  -0.000000005   0.037451128   0.061515113  -0.000106004   0.113067260  -0.011173628
                         0.257173064  -0.000012869   0.000000182   0.040079917  -0.015927551   0.000027550  -0.164648059   0.016270152

   26    6.2  1.5 -0.5   0.256822293  -0.000012845   0.000000177   0.037974264   0.003352991  -0.000005796   0.172954008  -0.017090927
                         0.087272845  -0.000000577   0.000000011  -0.035483581   0.012949863  -0.000022338   0.118771131  -0.011737292

   27    7.2  1.5 -0.5  -0.000000000   0.000000689  -0.000000645  -0.000000000  -0.000000001  -0.000000791  -0.000000241  -0.000002440
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   28    8.2  1.5 -0.5  -0.000000000   0.000000000  -0.000000005  -0.000000002  -0.000000181   0.000000021   0.000001550   0.000000023
                         0.000000000   0.000000209  -0.004624652   0.000000013   0.000212743   0.123405293   0.064928258   0.657039771

   29    9.2  1.5 -0.5  -0.000007700   0.000000000   0.000000059  -0.294047802  -0.254389404   0.000438296  -0.163108959   0.016118921
                         0.000022660  -0.000000001  -0.000001441  -0.314687764   0.065866743  -0.000113945   0.237518571  -0.023471053

   30   10.2  1.5 -0.5   0.000021554  -0.000000001  -0.000001432  -0.311308116   0.034934811  -0.000060448  -0.304103884   0.030050863
                         0.000007325  -0.000000000  -0.000000069   0.290889820   0.134924636  -0.000232395  -0.208834494   0.020637573

   31    1.2  1.5 -1.5   0.000000039  -0.000000000   0.000000000  -0.000000030   0.000000043  -0.000000000  -0.000000024   0.000000002
                         0.000000013   0.000000000   0.000000000   0.000000028   0.000000167  -0.000000000  -0.000000017   0.000000002

   32    2.2  1.5 -1.5   0.080037771  -0.000004003  -0.000000333  -0.072297181   0.005407453  -0.000009359  -0.118861444   0.011745621
                         0.027198277  -0.000000182  -0.000000017   0.067555303   0.020884575  -0.000035960  -0.081624638   0.008066367

   33    3.2  1.5 -1.5   0.244235579  -0.000012219  -0.000001021  -0.222648854   0.037894522  -0.000065559   0.012801656  -0.001265031
                         0.082995657  -0.000000552  -0.000000045   0.208045605   0.146355576  -0.000252140   0.008791161  -0.000868793

   34    4.2  1.5 -1.5   0.000070114  -0.000000002  -0.000000002  -0.000681985  -0.025798368   0.000044464  -0.080320400   0.007937487
                        -0.000206315   0.000000013  -0.000000002  -0.000729855   0.006679738  -0.000011553   0.116962221  -0.011557944

   35    5.2  1.5 -1.5  -0.000006064   0.000000742   0.000000127  -0.000000243  -0.000000314   0.000000018  -0.000000559  -0.000000010
                         0.000020960   0.460364428   0.100543912  -0.000000227   0.000281640   0.163469096  -0.024698589  -0.249936833

   36    6.2  1.5 -1.5   0.000020975   0.460578393   0.097548009  -0.000000218   0.000419436   0.243400207   0.017356412   0.175637623
                         0.000006064  -0.000000747  -0.000000124   0.000000244   0.000000431  -0.000000031  -0.000000444  -0.000000005

   37    7.2  1.5 -1.5  -0.000000799  -0.000000000  -0.000000000   0.000000703  -0.000000912   0.000000002   0.000000301  -0.000000030
                        -0.000000272  -0.000000000  -0.000000000  -0.000000657  -0.000003522   0.000000006   0.000000206  -0.000000020

   38    8.2  1.5 -1.5   0.000008355  -0.000000000  -0.000000074   0.337713201   0.224765924  -0.000387215  -0.026399359   0.002608816
                        -0.000024585   0.000000001   0.000001659   0.361418148  -0.058196602   0.000100684   0.038442625  -0.003798813

   39    9.2  1.5 -1.5   0.000000000  -0.000000000   0.000000334  -0.000000652  -0.000001048   0.000000072   0.000000293   0.000000001
                        -0.000000001  -0.000012916   0.263452665  -0.000000591   0.000998715   0.579586958   0.008927233   0.090338571

   40   10.2  1.5 -1.5  -0.000000001  -0.000012526   0.266122223  -0.000000598   0.000875887   0.508338176  -0.028559321  -0.289005604
                        -0.000000000   0.000000000  -0.000000337   0.000000651   0.000000944  -0.000000060   0.000000601   0.000000013

   41    1.2  0.5  0.5  -0.000000415   0.000000000   0.000000006  -0.020872620   0.024727734  -0.000042596  -0.002568949   0.000253867
                         0.000001222  -0.000000000  -0.000000102  -0.022337722  -0.006402529   0.000011078   0.003740892  -0.000369668

   42    2.2  0.5  0.5   0.000000000   0.000001383  -0.029688694   0.000000070   0.000031218   0.018114136   0.001962749   0.019861967
                         0.000000000  -0.000000000   0.000000038  -0.000000071   0.000000031  -0.000000003  -0.000000049  -0.000000001

   43    3.2  0.5  0.5   0.000000007   0.000000000   0.000000001   0.000311692  -0.000372083   0.000000643  -0.032869691   0.003248109
                         0.000000002  -0.000000000  -0.000000000  -0.000291249  -0.001437054   0.000002482  -0.022572304   0.002230657

   44    4.2  0.5  0.5  -0.000000052   0.000000000  -0.000000003  -0.000723780  -0.010040884   0.000017372   0.001208787  -0.000119451
                        -0.000000018   0.000000000  -0.000000002   0.000676309  -0.038779728   0.000066805   0.000830100  -0.000082026

   45    5.2  0.5  0.5   0.000000000  -0.000000000   0.000000038  -0.000000071   0.000000018  -0.000000001   0.000000058   0.000000001
                        -0.000000000  -0.000001357   0.029369899  -0.000000069  -0.000016552  -0.009607388   0.002512976   0.025430007

   46    6.2  0.5  0.5   0.000000010  -0.000000000   0.000000000   0.000000002   0.000000014  -0.000000000   0.000000035  -0.000000004
                        -0.000000029   0.000000000  -0.000000000   0.000000002  -0.000000004   0.000000000  -0.000000052   0.000000005

   47    7.2  0.5  0.5  -0.000000000   0.000000026   0.000000012   0.000000000  -0.000000000  -0.000000048   0.000000003   0.000000031
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   48    8.2  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000052  -0.000000079   0.000000000  -0.000000000  -0.000000011  -0.000000005  -0.000000050

   49    1.2  0.5 -0.5   0.000000000  -0.000000000   0.000000039  -0.000000074  -0.000000047   0.000000003  -0.000000007  -0.000000000
                        -0.000000000  -0.000001291   0.030571884  -0.000000070   0.000044013   0.025543163  -0.000448445  -0.004538036

   50    2.2  0.5 -0.5  -0.000001309   0.000000000   0.000000099   0.021692408  -0.004540403   0.000007855  -0.016373047   0.001617948
                        -0.000000445   0.000000000   0.000000004  -0.020269631  -0.017535868   0.000030213  -0.011243713   0.001111138

   51    3.2  0.5 -0.5  -0.000000000   0.000000007   0.000426589  -0.000000001  -0.000002564  -0.001484442  -0.003940310  -0.039873870
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001   0.000000093   0.000000001

   52    4.2  0.5 -0.5  -0.000000000  -0.000000055  -0.000990581   0.000000001  -0.000069026  -0.040058541   0.000144903   0.001466367
                        -0.000000000   0.000000000   0.000000001  -0.000000003  -0.000000073   0.000000005   0.000000002  -0.000000000

   53    5.2  0.5 -0.5   0.000000437  -0.000000000  -0.000000005   0.020051978   0.009300686  -0.000016020  -0.014395740   0.001422625
                        -0.000001285   0.000000000   0.000000099   0.021459477  -0.002408142   0.000004167   0.020963013  -0.002071518

   54    6.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000030  -0.000000003   0.000000000   0.000000000   0.000000015   0.000000006   0.000000063

   55    7.2  0.5 -0.5  -0.000000025  -0.000000000  -0.000000000  -0.000000009   0.000000012  -0.000000000  -0.000000026   0.000000003
                        -0.000000009   0.000000000  -0.000000000   0.000000008   0.000000046  -0.000000000  -0.000000018   0.000000002

   56    8.2  0.5 -0.5  -0.000000017   0.000000000   0.000000000  -0.000000054   0.000000011  -0.000000000   0.000000028  -0.000000003
                         0.000000049  -0.000000000  -0.000000000  -0.000000058  -0.000000003   0.000000000  -0.000000041   0.000000004


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%   0.758%  64.998%   0.000%  25.369%   0.000%   0.002%   0.527%   0.000%   0.000%
    2    2.2  1.5  1.5   0.000%   0.011%   0.002%   0.000%   0.008%   0.000%   0.000%   0.033%   0.000%   0.000%
    3    3.2  1.5  1.5   0.000%   0.002%   0.011%   0.000%   0.033%   0.000%   0.000%   0.008%   0.003%   0.000%
    4    4.2  1.5  1.5   0.000%   0.013%   0.000%   0.000%   0.001%   0.000%   0.000%   0.040%   0.001%   0.000%
    5    5.2  1.5  1.5   0.013%   0.000%   0.000%   0.000%   0.000%   0.001%   0.040%   0.000%   0.000%   0.051%
    6    6.2  1.5  1.5   0.013%   0.000%   0.000%   0.000%   0.000%   0.001%   0.040%   0.000%   0.000%   0.088%
    7    7.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.000%   0.002%   0.135%   0.000%   0.047%   0.000%   0.000%   0.001%   0.000%   0.000%
    9    9.2  1.5  1.5   0.045%   0.000%   0.000%   0.001%   0.000%   0.000%   0.016%   0.000%   0.000%   0.038%
   10   10.2  1.5  1.5   0.045%   0.000%   0.000%   0.001%   0.000%   0.000%   0.016%   0.000%   0.000%   0.031%
   11    1.2  1.5  0.5  64.987%   0.010%   0.000%   0.758%   0.000%   0.529%  25.287%   0.082%   0.000%   0.000%
   12    2.2  1.5  0.5   0.002%   0.000%   0.000%   0.011%   0.000%   0.033%   0.008%   0.000%   0.000%   0.070%
   13    3.2  1.5  0.5   0.011%   0.000%   0.000%   0.002%   0.000%   0.008%   0.033%   0.000%   0.000%   0.004%
   14    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.013%   0.000%   0.040%   0.001%   0.000%   0.000%   0.111%
   15    5.2  1.5  0.5   0.000%   0.000%   0.013%   0.000%   0.040%   0.000%   0.000%   0.001%   0.002%   0.000%
   16    6.2  1.5  0.5   0.000%   0.000%   0.013%   0.000%   0.040%   0.000%   0.000%   0.001%   0.001%   0.000%
   17    7.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.001%
   19    9.2  1.5  0.5   0.000%   0.049%   0.057%   0.000%   0.021%   0.000%   0.000%   0.016%   0.001%   0.000%
   20   10.2  1.5  0.5   0.000%   0.072%   0.034%   0.000%   0.011%   0.000%   0.000%   0.027%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.010%  64.987%   0.758%   0.000%   0.529%   0.000%   0.082%  25.287%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.000%   0.002%   0.011%   0.000%   0.033%   0.000%   0.000%   0.008%   0.070%   0.000%
   23    3.2  1.5 -0.5   0.000%   0.011%   0.002%   0.000%   0.008%   0.000%   0.000%   0.033%   0.004%   0.000%
   24    4.2  1.5 -0.5   0.000%   0.000%   0.013%   0.000%   0.040%   0.000%   0.000%   0.001%   0.111%   0.000%
   25    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.013%   0.000%   0.040%   0.001%   0.000%   0.000%   0.002%
   26    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.013%   0.000%   0.040%   0.001%   0.000%   0.000%   0.001%
   27    7.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.000%   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.001%   0.000%
   29    9.2  1.5 -0.5   0.049%   0.000%   0.000%   0.057%   0.000%   0.021%   0.016%   0.000%   0.000%   0.001%
   30   10.2  1.5 -0.5   0.072%   0.000%   0.000%   0.034%   0.000%   0.011%   0.027%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.758%   0.000%   0.000%  64.998%   0.000%  25.369%   0.527%   0.002%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.011%   0.000%   0.000%   0.002%   0.000%   0.008%   0.033%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.002%   0.000%   0.000%   0.011%   0.000%   0.033%   0.008%   0.000%   0.000%   0.003%
   34    4.2  1.5 -1.5   0.013%   0.000%   0.000%   0.000%   0.000%   0.001%   0.040%   0.000%   0.000%   0.001%
   35    5.2  1.5 -1.5   0.000%   0.013%   0.000%   0.000%   0.001%   0.000%   0.000%   0.040%   0.051%   0.000%
   36    6.2  1.5 -1.5   0.000%   0.013%   0.000%   0.000%   0.001%   0.000%   0.000%   0.040%   0.088%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.002%   0.000%   0.000%   0.135%   0.000%   0.047%   0.001%   0.000%   0.000%   0.000%
   39    9.2  1.5 -1.5   0.000%   0.045%   0.001%   0.000%   0.000%   0.000%   0.000%   0.016%   0.038%   0.000%
   40   10.2  1.5 -1.5   0.000%   0.045%   0.001%   0.000%   0.000%   0.000%   0.000%   0.016%   0.031%   0.000%
   41    1.2  0.5  0.5   0.050%   0.000%   0.000%   4.250%   0.000%  25.100%   0.522%   0.002%   0.019%  43.200%
   42    2.2  0.5  0.5   0.001%   3.597%   0.702%   0.000%   3.529%   0.000%   0.071%  22.023%   1.856%   0.001%
   43    3.2  0.5  0.5   4.025%   0.001%   0.000%   0.274%   0.000%   2.112%  23.435%   0.076%   0.000%   0.000%
   44    4.2  0.5  0.5   0.274%   0.000%   0.000%   4.025%   0.000%  23.511%   2.105%   0.007%   0.025%  54.488%
   45    5.2  0.5  0.5   0.000%   2.802%   1.497%   0.000%   9.806%   0.000%   0.051%  15.766%   0.008%   0.000%
   46    6.2  0.5  0.5  15.285%   0.002%   0.000%   0.178%   0.000%   0.133%   6.349%   0.021%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   2.525%  12.940%   0.000%   5.607%   0.000%   0.003%   0.893%   0.000%   0.000%
   48    8.2  0.5  0.5   0.001%   5.385%  10.080%   0.000%   4.014%   0.000%   0.008%   2.480%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.050%   4.250%   0.000%  25.100%   0.000%   0.002%   0.522%  43.200%   0.019%
   50    2.2  0.5 -0.5   3.597%   0.001%   0.000%   0.702%   0.000%   3.529%  22.023%   0.071%   0.001%   1.856%
   51    3.2  0.5 -0.5   0.001%   4.025%   0.274%   0.000%   2.112%   0.000%   0.076%  23.435%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.274%   4.025%   0.000%  23.511%   0.000%   0.007%   2.105%  54.488%   0.025%
   53    5.2  0.5 -0.5   2.802%   0.000%   0.000%   1.497%   0.000%   9.806%  15.766%   0.051%   0.000%   0.008%
   54    6.2  0.5 -0.5   0.002%  15.285%   0.178%   0.000%   0.133%   0.000%   0.021%   6.349%   0.000%   0.000%
   55    7.2  0.5 -0.5   2.525%   0.000%   0.000%  12.940%   0.000%   5.607%   0.893%   0.003%   0.000%   0.000%
   56    8.2  0.5 -0.5   5.385%   0.001%   0.000%  10.080%   0.000%   4.014%   2.480%   0.008%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   8.116%
    2    2.2  1.5  1.5   0.000%   0.000%   0.042%   0.000%   0.061%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  1.5  1.5   0.000%   0.122%   0.031%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  1.5  1.5   0.000%   0.008%   0.019%   0.000%   0.067%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  1.5  1.5   0.034%   0.000%   0.000%   0.050%   0.000%   0.017%   0.000%   0.000%   0.000%   0.000%
    6    6.2  1.5  1.5   0.008%   0.000%   0.000%   0.038%   0.000%   0.017%   0.000%   0.000%   0.000%   0.000%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.039%
    8    8.2  1.5  1.5   0.000%   0.019%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.028%
    9    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.022%   0.009%   0.000%   0.000%   0.000%
   10   10.2  1.5  1.5   0.004%   0.000%   0.000%   0.004%   0.000%   0.022%   0.009%   0.000%   0.000%   0.000%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.093%   0.023%   0.002%   0.000%
   12    2.2  1.5  0.5   0.056%   0.000%   0.000%   0.030%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%
   13    3.2  1.5  0.5   0.030%   0.000%   0.000%   0.008%   0.000%   0.061%   0.000%   0.000%   0.000%   0.000%
   14    4.2  1.5  0.5   0.029%   0.000%   0.000%   0.029%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    5.2  1.5  0.5   0.000%   0.036%   0.026%   0.000%   0.051%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    6.2  1.5  0.5   0.000%   0.006%   0.057%   0.000%   0.051%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.039%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.013%   0.000%   0.000%   0.029%   0.000%   0.029%   0.003%   0.000%   0.000%   0.000%
   19    9.2  1.5  0.5   0.000%   0.031%   0.000%   0.000%   0.007%   0.000%   0.000%   0.013%   0.000%   0.009%
   20   10.2  1.5  0.5   0.000%   0.004%   0.028%   0.000%   0.007%   0.000%   0.000%   0.012%   0.000%   0.010%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.023%   8.093%   0.000%   0.002%
   22    2.2  1.5 -0.5   0.000%   0.056%   0.030%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.2  1.5 -0.5   0.000%   0.030%   0.008%   0.000%   0.061%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.2  1.5 -0.5   0.000%   0.029%   0.029%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.2  1.5 -0.5   0.036%   0.000%   0.000%   0.026%   0.000%   0.051%   0.000%   0.000%   0.000%   0.000%
   26    6.2  1.5 -0.5   0.006%   0.000%   0.000%   0.057%   0.000%   0.051%   0.000%   0.000%   0.000%   0.000%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.039%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.000%   0.013%   0.029%   0.000%   0.029%   0.000%   0.000%   0.003%   0.000%   0.000%
   29    9.2  1.5 -0.5   0.031%   0.000%   0.000%   0.000%   0.000%   0.007%   0.013%   0.000%   0.009%   0.000%
   30   10.2  1.5 -0.5   0.004%   0.000%   0.000%   0.028%   0.000%   0.007%   0.012%   0.000%   0.010%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   8.116%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.042%   0.000%   0.061%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.122%   0.000%   0.000%   0.031%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.008%   0.000%   0.000%   0.019%   0.000%   0.067%   0.000%   0.000%   0.000%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.034%   0.050%   0.000%   0.017%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.2  1.5 -1.5   0.000%   0.008%   0.038%   0.000%   0.017%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.039%   0.000%
   38    8.2  1.5 -1.5   0.019%   0.000%   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.028%   0.000%
   39    9.2  1.5 -1.5   0.000%   0.000%   0.002%   0.000%   0.022%   0.000%   0.000%   0.009%   0.000%   0.000%
   40   10.2  1.5 -1.5   0.000%   0.004%   0.004%   0.000%   0.022%   0.000%   0.000%   0.009%   0.000%   0.000%
   41    1.2  0.5  0.5  14.622%   0.003%   0.000%   1.913%   0.000%   0.000%   0.003%   0.000%   9.980%   0.000%
   42    2.2  0.5  0.5   0.013%  57.864%   0.024%   0.000%   0.000%   0.000%   0.021%   7.315%   0.000%   2.647%
   43    3.2  0.5  0.5  15.688%   0.004%   0.005%  44.062%   0.000%   0.000%   9.786%   0.028%   0.169%   0.000%
   44    4.2  0.5  0.5   3.838%   0.001%   0.000%   1.407%   0.000%   0.000%   0.168%   0.000%   9.814%   0.000%
   45    5.2  0.5  0.5   0.002%   7.563%  52.181%   0.006%   0.000%   0.000%   0.022%   7.614%   0.000%   2.347%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.192%  44.419%   0.126%   0.013%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.192%   0.000%   0.034%  11.784%   0.000%  32.742%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.192%   0.000%   0.030%  10.447%   0.000%  34.083%
   49    1.2  0.5 -0.5   0.003%  14.622%   1.913%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   9.980%
   50    2.2  0.5 -0.5  57.864%   0.013%   0.000%   0.024%   0.000%   0.000%   7.315%   0.021%   2.647%   0.000%
   51    3.2  0.5 -0.5   0.004%  15.688%  44.062%   0.005%   0.000%   0.000%   0.028%   9.786%   0.000%   0.169%
   52    4.2  0.5 -0.5   0.001%   3.838%   1.407%   0.000%   0.000%   0.000%   0.000%   0.168%   0.000%   9.814%
   53    5.2  0.5 -0.5   7.563%   0.002%   0.006%  52.181%   0.000%   0.000%   7.614%   0.022%   2.347%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.192%   0.000%   0.126%  44.419%   0.000%   0.013%
   55    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.192%  11.784%   0.034%  32.742%   0.000%
   56    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.192%  10.447%   0.030%  34.083%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.074%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.003%  16.084%   0.000%   0.037%  10.104%   1.017%   0.090%   1.818%   6.965%   0.027%
    3    3.2  1.5  1.5   0.000%   1.732%   0.017%  11.104%   0.034%   0.003%   0.010%   0.196%   0.982%   0.004%
    4    4.2  1.5  1.5   0.004%  17.816%   0.001%   0.734%   9.470%   0.953%   0.100%   2.013%   7.932%   0.031%
    5    5.2  1.5  1.5   4.454%   0.001%   0.734%   0.001%   0.953%   9.471%   0.503%   0.025%   0.031%   7.933%
    6    6.2  1.5  1.5   4.454%   0.001%   0.734%   0.001%   0.953%   9.471%   0.503%   0.025%   0.031%   7.933%
    7    7.2  1.5  1.5   0.000%   0.000%   0.016%  10.476%   0.672%   0.068%   0.000%   0.000%   0.068%   0.000%
    8    8.2  1.5  1.5   0.000%   0.000%   0.028%  18.323%   1.175%   0.118%   0.000%   0.000%   0.023%   0.000%
    9    9.2  1.5  1.5   2.622%   0.001%   0.431%   0.001%   0.559%   5.558%  21.297%   1.059%   0.017%   4.235%
   10   10.2  1.5  1.5   2.622%   0.001%   0.431%   0.001%   0.559%   5.558%  21.297%   1.059%   0.017%   4.235%
   11    1.2  1.5  0.5   0.000%   0.000%   0.005%   0.000%   0.007%   0.067%   0.000%   0.000%   0.000%   0.076%
   12    2.2  1.5  0.5   1.732%   0.000%  11.104%   0.017%   0.003%   0.034%   0.196%   0.010%   0.004%   0.982%
   13    3.2  1.5  0.5  16.084%   0.003%   0.037%   0.000%   1.017%  10.105%   1.818%   0.090%   0.027%   6.965%
   14    4.2  1.5  0.5   0.000%   0.000%  10.408%   0.016%   0.067%   0.668%   0.000%   0.000%   0.000%   0.014%
   15    5.2  1.5  0.5   0.003%  13.362%   0.016%  10.408%   0.668%   0.067%   0.075%   1.510%   0.014%   0.000%
   16    6.2  1.5  0.5   0.003%  13.362%   0.016%  10.408%   0.668%   0.067%   0.075%   1.510%   0.014%   0.000%
   17    7.2  1.5  0.5   0.000%   0.000%   0.738%   0.001%   0.959%   9.533%   0.000%   0.000%   0.150%  38.376%
   18    8.2  1.5  0.5   3.496%   0.001%   0.144%   0.000%   0.186%   1.853%  28.397%   1.412%   0.006%   1.412%
   19    9.2  1.5  0.5   0.000%   0.874%   0.004%   2.937%  11.210%   1.128%   0.353%   7.099%   5.242%   0.021%
   20   10.2  1.5  0.5   0.000%   0.874%   0.016%  10.427%   4.394%   0.442%   0.353%   7.099%   6.067%   0.024%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.005%   0.067%   0.007%   0.000%   0.000%   0.076%   0.000%
   22    2.2  1.5 -0.5   0.000%   1.732%   0.017%  11.104%   0.034%   0.003%   0.010%   0.196%   0.982%   0.004%
   23    3.2  1.5 -0.5   0.003%  16.084%   0.000%   0.037%  10.105%   1.017%   0.090%   1.818%   6.965%   0.027%
   24    4.2  1.5 -0.5   0.000%   0.000%   0.016%  10.408%   0.668%   0.067%   0.000%   0.000%   0.014%   0.000%
   25    5.2  1.5 -0.5  13.362%   0.003%  10.408%   0.016%   0.067%   0.668%   1.510%   0.075%   0.000%   0.014%
   26    6.2  1.5 -0.5  13.362%   0.003%  10.408%   0.016%   0.067%   0.668%   1.510%   0.075%   0.000%   0.014%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.001%   0.738%   9.533%   0.959%   0.000%   0.000%  38.376%   0.150%
   28    8.2  1.5 -0.5   0.001%   3.496%   0.000%   0.144%   1.853%   0.186%   1.412%  28.397%   1.412%   0.006%
   29    9.2  1.5 -0.5   0.874%   0.000%   2.937%   0.004%   1.128%  11.210%   7.099%   0.353%   0.021%   5.242%
   30   10.2  1.5 -0.5   0.874%   0.000%  10.427%   0.016%   0.442%   4.394%   7.099%   0.353%   0.024%   6.067%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.074%   0.000%   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5  16.084%   0.003%   0.037%   0.000%   1.017%  10.104%   1.818%   0.090%   0.027%   6.965%
   33    3.2  1.5 -1.5   1.732%   0.000%  11.104%   0.017%   0.003%   0.034%   0.196%   0.010%   0.004%   0.982%
   34    4.2  1.5 -1.5  17.816%   0.004%   0.734%   0.001%   0.953%   9.470%   2.013%   0.100%   0.031%   7.932%
   35    5.2  1.5 -1.5   0.001%   4.454%   0.001%   0.734%   9.471%   0.953%   0.025%   0.503%   7.933%   0.031%
   36    6.2  1.5 -1.5   0.001%   4.454%   0.001%   0.734%   9.471%   0.953%   0.025%   0.503%   7.933%   0.031%
   37    7.2  1.5 -1.5   0.000%   0.000%  10.476%   0.016%   0.068%   0.672%   0.000%   0.000%   0.000%   0.068%
   38    8.2  1.5 -1.5   0.000%   0.000%  18.323%   0.028%   0.118%   1.175%   0.000%   0.000%   0.000%   0.023%
   39    9.2  1.5 -1.5   0.001%   2.622%   0.001%   0.431%   5.558%   0.559%   1.059%  21.297%   4.235%   0.017%
   40   10.2  1.5 -1.5   0.001%   2.622%   0.001%   0.431%   5.558%   0.559%   1.059%  21.297%   4.235%   0.017%
   41    1.2  0.5  0.5   0.000%   0.000%   0.022%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   42    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.012%   0.011%   0.001%   0.000%   0.000%   0.039%   0.000%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.021%   0.000%   0.000%   0.000%   0.048%
   44    4.2  0.5  0.5   0.000%   0.000%   0.023%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   45    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.002%   0.020%   0.002%   0.000%   0.000%   0.035%   0.000%
   46    6.2  0.5  0.5   0.138%   0.000%   0.004%   0.000%   0.005%   0.055%   0.003%   0.000%   0.000%   0.013%
   47    7.2  0.5  0.5   0.000%   0.138%   0.000%   0.032%   0.029%   0.003%   0.000%   0.003%   0.003%   0.000%
   48    8.2  0.5  0.5   0.000%   0.138%   0.000%   0.060%   0.004%   0.000%   0.000%   0.003%   0.004%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.022%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.000%   0.000%   0.012%   0.000%   0.001%   0.011%   0.000%   0.000%   0.000%   0.039%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.021%   0.002%   0.000%   0.000%   0.048%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.023%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   53    5.2  0.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.002%   0.020%   0.000%   0.000%   0.000%   0.035%
   54    6.2  0.5 -0.5   0.000%   0.138%   0.000%   0.004%   0.055%   0.005%   0.000%   0.003%   0.013%   0.000%
   55    7.2  0.5 -0.5   0.138%   0.000%   0.032%   0.000%   0.003%   0.029%   0.003%   0.000%   0.000%   0.003%
   56    8.2  0.5 -0.5   0.138%   0.000%   0.060%   0.000%   0.000%   0.004%   0.003%   0.000%   0.000%   0.004%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  1.5  1.5   0.000%   0.076%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.064%   0.001%
    2    2.2  1.5  1.5   0.000%   0.986%   0.000%   0.026%   6.580%   0.004%   0.014%   2.945%   0.000%   0.000%
    3    3.2  1.5  1.5   0.001%   6.990%   0.008%   5.890%   0.051%   0.000%   0.144%  29.417%   0.800%   0.010%
    4    4.2  1.5  1.5   0.000%   0.014%   0.001%   0.830%   5.601%   0.003%   0.000%   0.004%   0.077%   0.001%
    5    5.2  1.5  1.5   0.014%   0.000%   4.329%   0.006%   0.015%  23.399%   2.827%   0.014%   0.001%   0.077%
    6    6.2  1.5  1.5   0.014%   0.000%  23.174%   0.031%   0.003%   5.121%   2.249%   0.011%   0.001%   0.077%
    7    7.2  1.5  1.5   0.008%  38.518%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  44.730%   0.586%
    8    8.2  1.5  1.5   0.003%  12.753%   0.002%   1.302%   0.264%   0.000%   0.040%   8.285%  24.418%   0.320%
    9    9.2  1.5  1.5   0.008%   0.000%  11.701%   0.016%   0.000%   0.008%   1.870%   0.009%   0.011%   0.864%
   10   10.2  1.5  1.5   0.008%   0.000%   6.875%   0.009%   0.003%   4.689%   2.018%   0.010%   0.011%   0.864%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%
   12    2.2  1.5  0.5   6.990%   0.001%   6.958%   0.009%   0.000%   0.001%  28.403%   0.139%   0.010%   0.800%
   13    3.2  1.5  0.5   0.986%   0.000%   0.009%   0.000%   0.004%   6.256%   3.286%   0.016%   0.000%   0.000%
   14    4.2  1.5  0.5   7.962%   0.002%  30.074%   0.040%   0.003%   4.678%   3.824%   0.019%   0.009%   0.722%
   15    5.2  1.5  0.5   0.002%   7.962%   0.004%   2.860%  10.543%   0.007%   0.005%   1.072%   0.722%   0.009%
   16    6.2  1.5  0.5   0.002%   7.962%   0.001%   0.882%  12.854%   0.008%   0.004%   0.741%   0.722%   0.009%
   17    7.2  1.5  0.5   0.068%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.062%   4.749%
   18    8.2  1.5  0.5   0.003%   0.000%   1.913%   0.003%   0.008%  12.908%   0.008%   0.000%   0.004%   0.288%
   19    9.2  1.5  0.5   0.001%   4.675%   0.004%   2.822%   1.827%   0.001%   0.031%   6.445%   3.167%   0.041%
   20   10.2  1.5  0.5   0.001%   3.847%   0.000%   0.088%   5.023%   0.003%   0.029%   5.987%  15.416%   0.202%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%
   22    2.2  1.5 -0.5   0.001%   6.990%   0.009%   6.958%   0.001%   0.000%   0.139%  28.403%   0.800%   0.010%
   23    3.2  1.5 -0.5   0.000%   0.986%   0.000%   0.009%   6.256%   0.004%   0.016%   3.286%   0.000%   0.000%
   24    4.2  1.5 -0.5   0.002%   7.962%   0.040%  30.074%   4.678%   0.003%   0.019%   3.824%   0.722%   0.009%
   25    5.2  1.5 -0.5   7.962%   0.002%   2.860%   0.004%   0.007%  10.543%   1.072%   0.005%   0.009%   0.722%
   26    6.2  1.5 -0.5   7.962%   0.002%   0.882%   0.001%   0.008%  12.854%   0.741%   0.004%   0.009%   0.722%
   27    7.2  1.5 -0.5   0.000%   0.068%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.749%   0.062%
   28    8.2  1.5 -0.5   0.000%   0.003%   0.003%   1.913%  12.908%   0.008%   0.000%   0.008%   0.288%   0.004%
   29    9.2  1.5 -0.5   4.675%   0.001%   2.822%   0.004%   0.001%   1.827%   6.445%   0.031%   0.041%   3.167%
   30   10.2  1.5 -0.5   3.847%   0.001%   0.088%   0.000%   0.003%   5.023%   5.987%   0.029%   0.202%  15.416%
   31    1.2  1.5 -1.5   0.076%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.064%
   32    2.2  1.5 -1.5   0.986%   0.000%   0.026%   0.000%   0.004%   6.580%   2.945%   0.014%   0.000%   0.000%
   33    3.2  1.5 -1.5   6.990%   0.001%   5.890%   0.008%   0.000%   0.051%  29.417%   0.144%   0.010%   0.800%
   34    4.2  1.5 -1.5   0.014%   0.000%   0.830%   0.001%   0.003%   5.601%   0.004%   0.000%   0.001%   0.077%
   35    5.2  1.5 -1.5   0.000%   0.014%   0.006%   4.329%  23.399%   0.015%   0.014%   2.827%   0.077%   0.001%
   36    6.2  1.5 -1.5   0.000%   0.014%   0.031%  23.174%   5.121%   0.003%   0.011%   2.249%   0.077%   0.001%
   37    7.2  1.5 -1.5  38.518%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.586%  44.730%
   38    8.2  1.5 -1.5  12.753%   0.003%   1.302%   0.002%   0.000%   0.264%   8.285%   0.040%   0.320%  24.418%
   39    9.2  1.5 -1.5   0.000%   0.008%   0.016%  11.701%   0.008%   0.000%   0.009%   1.870%   0.864%   0.011%
   40   10.2  1.5 -1.5   0.000%   0.008%   0.009%   6.875%   4.689%   0.003%   0.010%   2.018%   0.864%   0.011%
   41    1.2  0.5  0.5   0.049%   0.000%   0.032%   0.000%   0.000%   0.004%   0.043%   0.000%   0.000%   0.019%
   42    2.2  0.5  0.5   0.000%   0.011%   0.000%   0.020%   0.013%   0.000%   0.000%   0.046%   0.012%   0.000%
   43    3.2  0.5  0.5   0.002%   0.000%   0.004%   0.000%   0.000%   0.076%   0.000%   0.000%   0.000%   0.001%
   44    4.2  0.5  0.5   0.048%   0.000%   0.076%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.020%
   45    5.2  0.5  0.5   0.000%   0.014%   0.000%   0.001%   0.036%   0.000%   0.000%   0.043%   0.001%   0.000%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%
   47    7.2  0.5  0.5   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.027%   0.000%
   48    8.2  0.5  0.5   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.058%   0.001%
   49    1.2  0.5 -0.5   0.000%   0.049%   0.000%   0.032%   0.004%   0.000%   0.000%   0.043%   0.019%   0.000%
   50    2.2  0.5 -0.5   0.011%   0.000%   0.020%   0.000%   0.000%   0.013%   0.046%   0.000%   0.000%   0.012%
   51    3.2  0.5 -0.5   0.000%   0.002%   0.000%   0.004%   0.076%   0.000%   0.000%   0.000%   0.001%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.048%   0.000%   0.076%   0.004%   0.000%   0.000%   0.000%   0.020%   0.000%
   53    5.2  0.5 -0.5   0.014%   0.000%   0.001%   0.000%   0.000%   0.036%   0.043%   0.000%   0.000%   0.001%
   54    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%
   55    7.2  0.5 -0.5   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.027%
   56    8.2  0.5 -0.5   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.058%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  1.5  1.5   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.002%   0.808%  30.346%   1.090%  16.884%   0.048%   0.000%   0.124%   0.000%   0.715%
    3    3.2  1.5  1.5   0.000%   0.000%   4.030%   0.145%   0.051%   0.000%   0.035%  19.879%   0.000%   6.654%
    4    4.2  1.5  1.5   0.002%   0.729%  18.082%   0.649%  29.762%   0.085%   0.005%   2.845%   0.000%   0.000%
    5    5.2  1.5  1.5   0.730%   0.002%   0.080%   2.240%   0.002%   0.552%  10.200%   0.018%  21.194%   0.000%
    6    6.2  1.5  1.5   0.730%   0.002%   0.106%   2.954%   0.018%   6.255%   3.732%   0.007%  21.213%   0.000%
    7    7.2  1.5  1.5   0.014%   4.797%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5   0.008%   2.619%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.2  1.5  1.5   8.221%   0.024%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  1.5  1.5   8.221%   0.024%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.2  1.5  0.5   0.065%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.000%   0.000%   0.063%   1.749%   0.000%   0.007%  22.693%   0.040%   6.243%   0.000%
   13    3.2  1.5  0.5   0.808%   0.002%   0.774%  21.551%   0.074%  25.945%   0.184%   0.000%   0.678%   0.000%
   14    4.2  1.5  0.5   0.077%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%  28.568%   0.000%
   15    5.2  1.5  0.5   0.000%   0.078%   6.733%   0.242%   1.724%   0.005%   0.052%  29.580%   0.000%   7.378%
   16    6.2  1.5  0.5   0.000%   0.077%   8.848%   0.318%  18.534%   0.053%   0.019%  10.585%   0.000%   7.357%
   17    7.2  1.5  0.5  45.182%   0.134%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   2.740%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.2  1.5  0.5   0.053%  18.022%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.2  1.5  0.5   0.017%   5.648%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.2  1.5 -0.5   0.000%   0.065%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   0.000%   0.000%   1.749%   0.063%   0.007%   0.000%   0.040%  22.693%   0.000%   6.243%
   23    3.2  1.5 -0.5   0.002%   0.808%  21.551%   0.774%  25.945%   0.074%   0.000%   0.184%   0.000%   0.678%
   24    4.2  1.5 -0.5   0.000%   0.077%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%  28.568%
   25    5.2  1.5 -0.5   0.078%   0.000%   0.242%   6.733%   0.005%   1.724%  29.580%   0.052%   7.378%   0.000%
   26    6.2  1.5 -0.5   0.077%   0.000%   0.318%   8.848%   0.053%  18.534%  10.585%   0.019%   7.357%   0.000%
   27    7.2  1.5 -0.5   0.134%  45.182%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.008%   2.740%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.2  1.5 -0.5  18.022%   0.053%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.2  1.5 -0.5   5.648%   0.017%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.808%   0.002%   1.090%  30.346%   0.048%  16.884%   0.124%   0.000%   0.715%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.145%   4.030%   0.000%   0.051%  19.879%   0.035%   6.654%   0.000%
   34    4.2  1.5 -1.5   0.729%   0.002%   0.649%  18.082%   0.085%  29.762%   2.845%   0.005%   0.000%   0.000%
   35    5.2  1.5 -1.5   0.002%   0.730%   2.240%   0.080%   0.552%   0.002%   0.018%  10.200%   0.000%  21.194%
   36    6.2  1.5 -1.5   0.002%   0.730%   2.954%   0.106%   6.255%   0.018%   0.007%   3.732%   0.000%  21.213%
   37    7.2  1.5 -1.5   4.797%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   2.619%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.2  1.5 -1.5   0.024%   8.221%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.2  1.5 -1.5   0.024%   8.221%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.2  0.5  0.5   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.2  0.5  0.5   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.2  0.5  0.5   0.000%   0.020%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.2  0.5  0.5   0.056%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.034%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50    2.2  0.5 -0.5   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51    3.2  0.5 -0.5   0.000%   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    4.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.020%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    6.2  0.5 -0.5   0.000%   0.056%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    7.2  0.5 -0.5   0.034%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    8.2  0.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      51       52       53       54       55       56

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  1.5  1.5   0.979%   0.000%   0.000%   0.047%   0.020%   2.079%
    3    3.2  1.5  1.5   9.286%   0.000%   0.000%   2.286%   0.000%   0.024%
    4    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.071%   0.020%   2.013%
    5    5.2  1.5  1.5   0.000%   1.011%   2.672%   0.000%   6.247%   0.061%
    6    6.2  1.5  1.5   0.000%   0.952%   5.924%   0.000%   3.085%   0.030%
    7    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.2  1.5  1.5  24.467%   0.000%   0.000%   5.391%   0.002%   0.217%
    9    9.2  1.5  1.5   0.000%   6.941%  33.592%   0.000%   0.816%   0.008%
   10   10.2  1.5  1.5   0.000%   7.082%  25.841%   0.000%   8.352%   0.082%
   11    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    2.2  1.5  0.5   0.000%   9.689%   1.855%   0.000%   0.051%   0.000%
   13    3.2  1.5  0.5   0.000%   1.065%   0.028%   0.000%   2.013%   0.020%
   14    4.2  1.5  0.5   0.000%   0.986%  11.233%   0.000%   0.397%   0.004%
   15    5.2  1.5  0.5   0.301%   0.000%   0.000%   0.404%   0.039%   3.989%
   16    6.2  1.5  0.5   0.270%   0.000%   0.000%   0.018%   0.043%   4.402%
   17    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    8.2  1.5  0.5   0.000%   0.002%   1.523%   0.000%  43.170%   0.422%
   19    9.2  1.5  0.5  18.549%   0.000%   0.000%   6.905%   0.081%   8.302%
   20   10.2  1.5  0.5  18.153%   0.000%   0.000%   1.943%   0.133%  13.609%
   21    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.2  1.5 -0.5   9.689%   0.000%   0.000%   1.855%   0.000%   0.051%
   23    3.2  1.5 -0.5   1.065%   0.000%   0.000%   0.028%   0.020%   2.013%
   24    4.2  1.5 -0.5   0.986%   0.000%   0.000%  11.233%   0.004%   0.397%
   25    5.2  1.5 -0.5   0.000%   0.301%   0.404%   0.000%   3.989%   0.039%
   26    6.2  1.5 -0.5   0.000%   0.270%   0.018%   0.000%   4.402%   0.043%
   27    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.2  1.5 -0.5   0.002%   0.000%   0.000%   1.523%   0.422%  43.170%
   29    9.2  1.5 -0.5   0.000%  18.549%   6.905%   0.000%   8.302%   0.081%
   30   10.2  1.5 -0.5   0.000%  18.153%   1.943%   0.000%  13.609%   0.133%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.979%   0.047%   0.000%   2.079%   0.020%
   33    3.2  1.5 -1.5   0.000%   9.286%   2.286%   0.000%   0.024%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.071%   0.000%   2.013%   0.020%
   35    5.2  1.5 -1.5   1.011%   0.000%   0.000%   2.672%   0.061%   6.247%
   36    6.2  1.5 -1.5   0.952%   0.000%   0.000%   5.924%   0.030%   3.085%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.000%  24.467%   5.391%   0.000%   0.217%   0.002%
   39    9.2  1.5 -1.5   6.941%   0.000%   0.000%  33.592%   0.008%   0.816%
   40   10.2  1.5 -1.5   7.082%   0.000%   0.000%  25.841%   0.082%   8.352%
   41    1.2  0.5  0.5   0.000%   0.093%   0.065%   0.000%   0.002%   0.000%
   42    2.2  0.5  0.5   0.088%   0.000%   0.000%   0.033%   0.000%   0.039%
   43    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.159%   0.002%
   44    4.2  0.5  0.5   0.000%   0.000%   0.160%   0.000%   0.000%   0.000%
   45    5.2  0.5  0.5   0.086%   0.000%   0.000%   0.009%   0.001%   0.065%
   46    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    1.2  0.5 -0.5   0.093%   0.000%   0.000%   0.065%   0.000%   0.002%
   50    2.2  0.5 -0.5   0.000%   0.088%   0.033%   0.000%   0.039%   0.000%
   51    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.159%
   52    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.160%   0.000%   0.000%
   53    5.2  0.5 -0.5   0.000%   0.086%   0.009%   0.000%   0.065%   0.001%
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
 CPU TIMES  *     31346.00  28015.13   1561.31   1748.14     11.79      9.24
 REAL TIME  *     32236.61 SEC
 DISK USED  *         3.66 GB (local),      103.92 GB (total)
 SF USED    *        18.89 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -214.218017104770

              CI              CI           MULTI
   -214.33047368   -214.16717357   -213.49356028
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
