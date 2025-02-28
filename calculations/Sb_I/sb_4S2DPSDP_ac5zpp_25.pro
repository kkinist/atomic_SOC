
 Working directory              : /wrk/irikura/molpro.eoQYYrLWGv/
 Global scratch directory       : /wrk/irikura/molpro.eoQYYrLWGv/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.eoQYYrLWGv/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   32
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.03 sec
 ***,Sb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 gexpec,lz
 
 symmetry,xyz
 geometry={Sb};
 
 basis=aug-cc-pwCV5Z-PP
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=1
 ND=17
 
 {multi
     closed,6,3
     occ,7,9
     wf,charge=0,sym=PAR,spin=3;state,NQ; weight,25
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
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=2}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.03 sec, 718 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Sb SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 23-Dec-24          TIME: 10:37:31  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =        17.00000000                                  


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

     745.800 MB (compressed) written to integral file ( 18.2%)

     Node minimum: 14.156 MB, node maximum: 33.817 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    9782153.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    9782153      RECORD LENGTH: 524288

 Memory used in sort:      10.34 MW

 SORT1 READ   511790813. AND WROTE     1698625. INTEGRALS IN      5 RECORDS. CPU TIME:     4.37 SEC, REAL TIME:     4.49 SEC
 SORT2 READ    53582287. AND WROTE   312900871. INTEGRALS IN   2144 RECORDS. CPU TIME:     0.21 SEC, REAL TIME:     0.25 SEC

 Node minimum:     9767222.  Node maximum:     9807863. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000
 OPERATOR LOP     FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      20       30.87       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.55      9.22
 REAL TIME  *        11.08 SEC
 DISK USED  *        31.28 MB (local),        2.20 GB (total)
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
 Number of states:            17
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.494D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.171D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.212D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.446D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.489D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 3 4 5 1 1 2 6   3 4 5 1 2 6 3 4 512  1114 8101513 9 7 2 6   3 4 5 11112 8141015
                                       13 9 7 2 6 3 4 5 111  12 814101513 9 7 2 6   3 4 5 11112 8141015  13 9 7 2 6 3 4 52721
                                       24231920221816261728  251112 814101513 9 7   1 6 2 3 4 511121314  1015 8 9 7 1 6 2 3 4
                                        5 6 2 3 4 5 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.606D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.619D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.602D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.864D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.864D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.342D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.342D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 3 1 2 3 1 3   2 1 510 7 8 9 4 6 3   2 1 5 6 7 8 910 4 5   6 7 8 910 412131421
                                       18172015161911 3 2 1   5 6 7 8 910 4131214  2118172015161911 5 6   7 8 910 4 3 2 1 510
                                        7 8 9 6 41213142118  172015161911 1 2 3 5  10 7 8 9 6 4 1 2 312  13141518172021161911
                                        510 7 8 9 6 4 1 3 2   1 3 2 1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.59524
 Weight factors for state symmetry  2:    0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381
                                          0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381
                                          0.02381
 
 Number of orbital rotations:  2021  ( 24 closed/active, 1113 closed/virtual, 0 active/active, 884 active/virtual )
 Total number of variables:    8761
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   16    0   -239.19581275    -239.21040991   -0.01459716    0.09297484 0.00029762 0.00000000  0.58E+00      4.40
   2    7   12    0   -239.20825560    -239.20940370   -0.00114810    0.08689530 0.00006677 0.00000000  0.72E-01      8.64
   3    4    8    0   -239.20940865    -239.20940873   -0.00000007    0.00043841 0.00000265 0.00000000  0.19E-02     12.09
   4    2    4    0   -239.20940873    -239.20940873    0.00000000    0.00000004 0.00000000 0.00000000  0.17E-06     14.91

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.15E-07)
                       Final energy:   -239.20940873
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -239.276553112971
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.40218201
 One electron energy                          -419.83206347
 Two electron energy                           180.55551036
 Virial ratio                                    3.58951193
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -239.217061327689
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.35600925
 One electron energy                          -419.60089454
 Two electron energy                           180.38383321
 Virial ratio                                    3.59016239
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -239.217061327688
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.35600925
 One electron energy                          -419.60089454
 Two electron energy                           180.38383321
 Virial ratio                                    3.59016239
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -239.217061327654
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.35600925
 One electron energy                          -419.60089454
 Two electron energy                           180.38383321
 Virial ratio                                    3.59016239
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -239.217061327645
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.35600925
 One electron energy                          -419.60089454
 Two electron energy                           180.38383321
 Virial ratio                                    3.59016239
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -239.217061327636
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.35600925
 One electron energy                          -419.60089454
 Two electron energy                           180.38383321
 Virial ratio                                    3.59016239
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -239.193982826313
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.32999182
 One electron energy                          -419.41247893
 Two electron energy                           180.21849610
 Virial ratio                                    3.59064230
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -239.193982826247
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.32999183
 One electron energy                          -419.41247894
 Two electron energy                           180.21849611
 Virial ratio                                    3.59064230
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -239.193982826235
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.32999183
 One electron energy                          -419.41247893
 Two electron energy                           180.21849611
 Virial ratio                                    3.59064230
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -239.040722285857
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.82121979
 One electron energy                          -414.39361706
 Two electron energy                           175.35289477
 Virial ratio                                    3.60332767
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -239.024377729565
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.87595729
 One electron energy                          -414.64889221
 Two electron energy                           175.62451448
 Virial ratio                                    3.60159877
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -239.024377729399
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.87595729
 One electron energy                          -414.64889222
 Two electron energy                           175.62451449
 Virial ratio                                    3.60159877
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -239.024377729346
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.87595729
 One electron energy                          -414.64889222
 Two electron energy                           175.62451449
 Virial ratio                                    3.60159877
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.2 Doublet
 ==============================
 !MCSCF STATE 13.2 Doublet Energy             -239.024377728796
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.87595730
 One electron energy                          -414.64889226
 Two electron energy                           175.62451453
 Virial ratio                                    3.60159877
 
 !MCSCF STATE 13.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.2 Doublet
 ==============================
 !MCSCF STATE 14.2 Doublet Energy             -239.024377728795
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.87595730
 One electron energy                          -414.64889226
 Two electron energy                           175.62451453
 Virial ratio                                    3.60159877
 
 !MCSCF STATE 14.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.2 Doublet
 ==============================
 !MCSCF STATE 15.2 Doublet Energy             -239.017157541233
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.89072432
 One electron energy                          -414.71899117
 Two electron energy                           175.70183363
 Virial ratio                                    3.60110212
 
 !MCSCF STATE 15.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.2 Doublet
 ==============================
 !MCSCF STATE 16.2 Doublet Energy             -239.017157541173
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.89072432
 One electron energy                          -414.71899117
 Two electron energy                           175.70183363
 Virial ratio                                    3.60110212
 
 !MCSCF STATE 16.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.2 Doublet
 ==============================
 !MCSCF STATE 17.2 Doublet Energy             -239.017157540453
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.89072433
 One electron energy                          -414.71899121
 Two electron energy                           175.70183367
 Virial ratio                                    3.60110212
 
 !MCSCF STATE 17.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.376608583363
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999999812519
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000271474
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     2.623227315125
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.000000007552
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.999999990975
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>    -0.000000000000
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     3.133464364965
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     3.999999967180
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>     1.000000034453
 !MCSCF expec    <13.2 Doublet|LXLX|13.2 Doublet>     1.000000000002
 !MCSCF expec    <14.2 Doublet|LXLX|14.2 Doublet>     0.866516412236
 !MCSCF expec    <15.2 Doublet|LXLX|15.2 Doublet>     0.000000000001
 !MCSCF expec    <16.2 Doublet|LXLX|16.2 Doublet>     0.999999999743
 !MCSCF expec    <17.2 Doublet|LXLX|17.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.665932300788
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000416047
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.999999734786
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.334196237147
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999992448
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.000000009025
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>    -0.000000000000
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     2.860308065512
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     1.000000034377
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>     3.999999970436
 !MCSCF expec    <13.2 Doublet|LYLY|13.2 Doublet>     1.000000000001
 !MCSCF expec    <14.2 Doublet|LYLY|14.2 Doublet>     1.139712987127
 !MCSCF expec    <15.2 Doublet|LYLY|15.2 Doublet>     0.999999999999
 !MCSCF expec    <16.2 Doublet|LYLY|16.2 Doublet>     0.000000000257
 !MCSCF expec    <17.2 Doublet|LYLY|17.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.957459115849
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     4.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999771434
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.999999993740
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.042576447727
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>    -0.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.000000000000
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>    -0.000000000000
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     0.006227569523
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     0.999999998442
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>     0.999999995110
 !MCSCF expec    <13.2 Doublet|LZLZ|13.2 Doublet>     3.999999999997
 !MCSCF expec    <14.2 Doublet|LZLZ|14.2 Doublet>     3.993770600638
 !MCSCF expec    <15.2 Doublet|LZLZ|15.2 Doublet>     1.000000000000
 !MCSCF expec    <16.2 Doublet|LZLZ|16.2 Doublet>     1.000000000000
 !MCSCF expec    <17.2 Doublet|LZLZ|17.2 Doublet>    -0.000000000000
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>    -0.000000000000
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     6.000000000000
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     6.000000000000
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>     6.000000000000
 !MCSCF expec    <13.2 Doublet|L**2|13.2 Doublet>     6.000000000000
 !MCSCF expec    <14.2 Doublet|L**2|14.2 Doublet>     6.000000000000
 !MCSCF expec    <15.2 Doublet|L**2|15.2 Doublet>     2.000000000000
 !MCSCF expec    <16.2 Doublet|L**2|16.2 Doublet>     2.000000000000
 !MCSCF expec    <17.2 Doublet|L**2|17.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 3 5 6 1 1 4 3   5 2 6 1 6 2 3 5 4 9   7 8121415131011 4 2   3 5 6 1 9 7 8121415
                                       131011 4 2 3 5 6 1 9   7 8121415131011 4 2   3 5 6 1 9 7 8121415  131011 4 2 5 3 62825
                                       17212326241918202216  27 9 7 8121514131011   1 4 2 5 3 6 9 7 812  1514131011 1 4 2 5 3
                                        6 4 2 5 3 6 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 2   1 3 5 6 810 9 7 4 1   2 3 4 610 8 7 9 5 4   610 8 7 9 511192113
                                       14161517201812 1 3 2   4 610 8 9 7 5111921  1314161517201812 4 6  10 8 9 7 5 1 3 2 4 6
                                       10 8 7 9 51119211314  161517201812 1 3 2 4   610 8 7 9 5 1 3 211  19211314161517201812
                                        4 610 8 7 9 5 1 3 2   1 2 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.56237     1  1  s    1.00022
    2.1     2.00000    -1.65693     1  1  d1+  1.00017
    3.1     2.00000    -1.65693     1  1  d0   1.00017
    4.1     2.00000    -1.65693     1  1  d2-  1.00017
    5.1     2.00000    -1.65693     1  1  d2+  1.00017
    6.1     2.00000    -1.65693     1  1  d1-  1.00017
    7.1     1.99040    -0.65172     1  1  s   -0.37357    1  5  s    0.56960    1  6  s    0.52317
    1.2     2.00000    -4.62935     1  1  px   0.99917
    2.2     2.00000    -4.62935     1  1  pz   0.99917
    3.2     2.00000    -4.62935     1  1  py   0.99917
    4.2     0.93065    -0.16395     1  5  py   0.46897    1  6  py   0.40071
    5.2     0.93065    -0.16395     1  5  pz   0.46897    1  6  pz   0.40071
    6.2     0.93065    -0.16395     1  5  px   0.46897    1  6  px   0.40071
    7.2     0.07255     0.05062     1 12  px   1.11499
    8.2     0.07255     0.05062     1 12  pz   1.11499
    9.2     0.07255     0.05062     1 12  py   1.11499
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99934769
 
 Energy:     -239.27655311
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba000      -0.08390880      0.00000112     -0.00040937     -0.00006600      0.80930594     -0.00000000      0.00000000
 2 baa000       0.74283399     -0.00000993      0.00026876      0.00003980     -0.33198578      0.00000000      0.00000000
 2 0a2000      -0.00000942     -0.70463659     -0.00000000     -0.00000000     -0.00000000      0.69483838      0.00000000
 2 2a0000       0.00000942      0.70463659      0.00000000      0.00000000      0.00000000      0.69483837      0.00000000
 2 a02000       0.00001268     -0.00000000     -0.00010565     -0.70463659     -0.00005620     -0.00000000      0.00006038
 2 a20000      -0.00001268      0.00000000      0.00010565      0.70463658      0.00005620     -0.00000000      0.00006038
 2 20a000      -0.00010029      0.00000000      0.70463649     -0.00010567      0.00034602     -0.00000000      0.69483837
 2 02a000       0.00010029     -0.00000000     -0.70463649      0.00010567     -0.00034602     -0.00000000      0.69483837
 2 aab000      -0.65892519      0.00000880      0.00014062      0.00002620     -0.47732017     -0.00000000     -0.00000000
 2 a0a0b0       0.00465946     -0.00000006      0.00002273      0.00000366     -0.04494083     -0.00000000     -0.00000000
 2 aa0b00      -0.03659014      0.00000049      0.00000781      0.00000145     -0.02650561      0.00000000     -0.00000000
 2 aa00b0      -0.00000070      0.00000000      0.00000587      0.03912853      0.00000312      0.00000000      0.00000479
 2 0aa0b0      -0.00000557      0.00000000      0.03912853     -0.00000587      0.00001921      0.00000000     -0.05515601
 2 aa000b      -0.00000052     -0.03912854     -0.00000000     -0.00000000     -0.00000000     -0.05515603     -0.00000000
 2 0aab00      -0.00000052     -0.03912850     -0.00000000     -0.00000000     -0.00000000      0.05515598     -0.00000000
 2 a0a00b       0.00000557     -0.00000000     -0.03912854      0.00000587     -0.00001921      0.00000000     -0.05515603
 2 a0ab00       0.00000070     -0.00000000     -0.00000587     -0.03912850     -0.00000312     -0.00000000      0.00000479
 2 0aa00b       0.04124965     -0.00000055      0.00001492      0.00000221     -0.01843521     -0.00000000      0.00000000
 2 b0aa00      -0.00000023      0.00000000      0.00000191      0.01275946      0.00000102      0.00000000     -0.00000134
 2 a0b00a      -0.00000182      0.00000000      0.01275946     -0.00000191      0.00000627     -0.00000000      0.01543195
 2 0baa00       0.00000017      0.01275946      0.00000000      0.00000000     -0.00000000     -0.01543195     -0.00000000
 2 ab000a       0.00000017      0.01275946     -0.00000000      0.00000000      0.00000000      0.01543195      0.00000000
 2 ba00a0       0.00000023     -0.00000000     -0.00000191     -0.01275946     -0.00000102     -0.00000000     -0.00000134
 2 0ab0a0       0.00000182     -0.00000000     -0.01275946      0.00000191     -0.00000627     -0.00000000      0.01543195
 2 ab0a00       0.01031108     -0.00000014     -0.00001045     -0.00000175      0.02427445     -0.00000000      0.00000000
 2 0ba00a      -0.01507178      0.00000020     -0.00001277     -0.00000200      0.02164280      0.00000000      0.00000000
 2 a0b0a0       0.01120732     -0.00000015     -0.00001013     -0.00000170      0.02387394      0.00000000      0.00000000
 2 b0a0a0      -0.01586678      0.00000021     -0.00001260     -0.00000196      0.02106689      0.00000000     -0.00000000
 2 0ab00a      -0.02617787      0.00000035     -0.00000215     -0.00000021     -0.00320760      0.00000000     -0.00000000
 2 ba0a00       0.02627906     -0.00000035      0.00000264      0.00000029      0.00223116     -0.00000000      0.00000000
 2 ab00a0       0.00000047     -0.00000000     -0.00000395     -0.02636907     -0.00000210     -0.00000000     -0.00000345
 2 0ba0a0       0.00000375     -0.00000000     -0.02636907      0.00000395     -0.00001295     -0.00000000      0.03972406
 2 ba000a       0.00000035      0.02636909      0.00000000      0.00000000      0.00000000      0.03972408     -0.00000000
 2 0aba00       0.00000035      0.02636904      0.00000000      0.00000000      0.00000000     -0.03972403      0.00000000
 2 b0a00a      -0.00000375      0.00000000      0.02636908     -0.00000395      0.00001295     -0.00000000      0.03972408
 2 a0ba00      -0.00000047      0.00000000      0.00000395      0.02636904      0.00000210      0.00000000     -0.00000345
 0 22a000       0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.15132907
 0 2a2000       0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.15132907     -0.00000000
 0 a22000      -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00001315
 2 02000a      -0.00000024      0.00000000      0.00000204      0.01360963      0.00000109     -0.00000000      0.00000109
 2 0020a0      -0.00000018     -0.01360961     -0.00000000      0.00000000     -0.00000000      0.01254384      0.00000000
 2 020a00       0.00000194     -0.00000000     -0.01360958      0.00000204     -0.00000668      0.00000000      0.01254381
 2 2000a0       0.00000018      0.01360961      0.00000000     -0.00000000      0.00000000      0.01254384     -0.00000000
 2 00200a       0.00000024     -0.00000000     -0.00000204     -0.01360963     -0.00000109      0.00000000      0.00000109
 2 200a00      -0.00000194      0.00000000      0.01360958     -0.00000204      0.00000668     -0.00000000      0.01254381
 2 0200a0       0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.01174827      0.00000000
 2 20000a       0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000102
 2 002a00      -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.01174827
 0 a2a0b0      -0.00183714      0.00000002     -0.00000896     -0.00000144      0.01771933      0.00000000      0.00000000
 0 a2ab00      -0.00000028      0.00000000      0.00000231      0.01542765      0.00000123      0.00000000      0.00000058
 0 a2a00b      -0.00000220      0.00000000      0.01542765     -0.00000231      0.00000758     -0.00000000     -0.00671691
 0 2aab00       0.00000021      0.01542765      0.00000000      0.00000000      0.00000000      0.00671692     -0.00000000
 0 aa200b       0.00000021      0.01542765      0.00000000      0.00000000      0.00000000     -0.00671691      0.00000000
 0 2aa0b0       0.00000220     -0.00000000     -0.01542765      0.00000231     -0.00000758     -0.00000000     -0.00671691
 0 aa20b0       0.00000028     -0.00000000     -0.00000231     -0.01542765     -0.00000123     -0.00000000      0.00000058
 0 aa2b00       0.01442683     -0.00000019     -0.00000308     -0.00000057      0.01045068     -0.00000000      0.00000000
 0 2aa00b      -0.01626397      0.00000022     -0.00000588     -0.00000087      0.00726866      0.00000000     -0.00000000
 
 Energy:     -239.21706133   -239.21706133   -239.21706133   -239.21706133   -239.21706133   -239.19398283   -239.19398283

 State:              8               9              10              11              12              13              14
 2 aba000      -0.00000000     -0.00000001      0.05209699     -0.00000279     -0.00000427      0.00000000      0.00205719
 2 baa000       0.00000000     -0.00000002     -0.02783011      0.00000167      0.00000256      0.00000000      0.04408871
 2 0a2000       0.00000000     -0.00000000      0.00000000      0.00000002     -0.00000001     -0.04515245      0.00000000
 2 2a0000      -0.00000000      0.00000000     -0.00000000     -0.00000002      0.00000001      0.04515249     -0.00000000
 2 a02000       0.69483837     -0.00000000      0.00000371     -0.00000465      0.04515244     -0.00000001     -0.00000028
 2 a20000       0.69483837     -0.00000000     -0.00000371      0.00000465     -0.04515248      0.00000001      0.00000028
 2 20a000      -0.00006038     -0.00000000      0.00000243      0.04515249      0.00000465      0.00000002     -0.00000018
 2 02a000      -0.00006038      0.00000000     -0.00000243     -0.04515249     -0.00000465     -0.00000002      0.00000018
 2 aab000      -0.00000000      0.00000002     -0.02426687      0.00000112      0.00000171     -0.00000000     -0.04614590
 2 a0a0b0      -0.00000000     -0.46801292      0.64034481     -0.00003433     -0.00005248      0.00000001      0.02528606
 2 aa0b00       0.00000000      0.46801291      0.29827404     -0.00001378     -0.00002101      0.00000006      0.56719792
 2 aa00b0       0.05515601      0.00000000      0.00004562     -0.00005719      0.55498712     -0.00000006     -0.00000343
 2 0aa0b0       0.00000479     -0.00000000     -0.00002984     -0.55498711     -0.00005719     -0.00000024      0.00000220
 2 aa000b       0.00000000      0.00000000     -0.00000001     -0.00000024      0.00000006      0.55498708     -0.00000005
 2 0aab00       0.00000000      0.00000000     -0.00000001     -0.00000024      0.00000006      0.55498708     -0.00000005
 2 a0a00b       0.00000479      0.00000000      0.00002984      0.55498703      0.00005719      0.00000024     -0.00000220
 2 a0ab00       0.05515598     -0.00000000     -0.00004562      0.00005719     -0.55498703      0.00000006      0.00000343
 2 0aa00b       0.00000000      0.46801291      0.34207079     -0.00002054     -0.00003147     -0.00000005     -0.54191185
 2 b0aa00      -0.01543195      0.00000000      0.00002832     -0.00003551      0.34455937     -0.00000004     -0.00000213
 2 a0b00a      -0.00000134     -0.00000000     -0.00001853     -0.34455937     -0.00003551     -0.00000015      0.00000137
 2 0baa00       0.00000000     -0.00000000      0.00000000      0.00000015     -0.00000004     -0.34455940      0.00000003
 2 ab000a       0.00000000     -0.00000000      0.00000000      0.00000015     -0.00000004     -0.34455940      0.00000003
 2 ba00a0      -0.01543195     -0.00000000     -0.00002832      0.00003551     -0.34455941      0.00000004      0.00000213
 2 0ab0a0      -0.00000134      0.00000000      0.00001853      0.34455941      0.00003551      0.00000015     -0.00000137
 2 ab0a00      -0.00000000     -0.23400645     -0.03041977      0.00000026      0.00000036     -0.00000003     -0.34602915
 2 0ba00a      -0.00000000     -0.23400645     -0.05761064      0.00000446      0.00000685      0.00000003      0.34255299
 2 a0b0a0       0.00000000      0.23400646     -0.32546490      0.00001798      0.00002751      0.00000001      0.12138422
 2 b0a0a0       0.00000000      0.23400646     -0.31487991      0.00001635      0.00002498     -0.00000002     -0.14667028
 2 0ab00a      -0.00000000     -0.23400646     -0.28446015      0.00001608      0.00002462      0.00000002      0.19935886
 2 ba0a00      -0.00000000     -0.23400646     -0.26785427      0.00001352      0.00002065     -0.00000002     -0.22116877
 2 ab00a0      -0.03972406     -0.00000000     -0.00001730      0.00002169     -0.21042770      0.00000002      0.00000130
 2 0ba0a0      -0.00000345      0.00000000      0.00001131      0.21042770      0.00002168      0.00000009     -0.00000084
 2 ba000a      -0.00000000     -0.00000000      0.00000000      0.00000009     -0.00000002     -0.21042768      0.00000002
 2 0aba00      -0.00000000      0.00000000      0.00000000      0.00000009     -0.00000002     -0.21042768      0.00000002
 2 b0a00a      -0.00000345     -0.00000000     -0.00001131     -0.21042767     -0.00002168     -0.00000009      0.00000084
 2 a0ba00      -0.03972403      0.00000000      0.00001730     -0.00002169      0.21042767     -0.00000002     -0.00000130
 0 22a000       0.00001315      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0 2a2000      -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 a22000      -0.15132906      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 2 02000a       0.01254385     -0.00000000     -0.00001103      0.00001382     -0.13413171      0.00000002      0.00000083
 2 0020a0      -0.00000000      0.00000000      0.00000000      0.00000006     -0.00000002     -0.13413171      0.00000001
 2 020a00      -0.00000109     -0.00000000     -0.00000721     -0.13413171     -0.00001382     -0.00000006      0.00000053
 2 2000a0      -0.00000000      0.00000000     -0.00000000     -0.00000006      0.00000002      0.13413171     -0.00000001
 2 00200a       0.01254385     -0.00000000      0.00001103     -0.00001382      0.13413170     -0.00000002     -0.00000083
 2 200a00      -0.00000109      0.00000000      0.00000721      0.13413170      0.00001382      0.00000006     -0.00000053
 2 0200a0       0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 2 20000a      -0.01174827      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2 002a00       0.00000102      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0 a2a0b0       0.00000000      0.04742476     -0.06548104      0.00000351      0.00000537     -0.00000000     -0.00258573
 0 a2ab00       0.00671692     -0.00000000      0.00000467     -0.00000585      0.05675244     -0.00000001     -0.00000035
 0 a2a00b       0.00000058     -0.00000000     -0.00000305     -0.05675244     -0.00000585     -0.00000002      0.00000023
 0 2aab00       0.00000000     -0.00000000      0.00000000      0.00000002     -0.00000001     -0.05675244      0.00000001
 0 aa200b       0.00000000     -0.00000000      0.00000000      0.00000002     -0.00000001     -0.05675244      0.00000001
 0 2aa0b0       0.00000058      0.00000000      0.00000305      0.05675245      0.00000585      0.00000002     -0.00000023
 0 aa20b0       0.00671691     -0.00000000     -0.00000467      0.00000585     -0.05675245      0.00000001      0.00000035
 0 aa2b00      -0.00000000     -0.04742475     -0.03050121      0.00000141      0.00000215     -0.00000001     -0.05800111
 0 2aa00b      -0.00000000     -0.04742475     -0.03497983      0.00000210      0.00000322      0.00000000      0.05541538
 
 Energy:     -239.19398283   -239.04072229   -239.02437773   -239.02437773   -239.02437773   -239.02437773   -239.02437773

 State:             15              16              17
 2 aba000       0.00000000      0.00000000      0.00000000
 2 baa000      -0.00000000     -0.00000000     -0.00000000
 2 0a2000       0.00000002     -0.00000002      0.05957778
 2 2a0000       0.00000002     -0.00000002      0.05957783
 2 a02000      -0.00000004     -0.05957778     -0.00000002
 2 a20000      -0.00000004     -0.05957781     -0.00000002
 2 20a000       0.05957784     -0.00000004     -0.00000002
 2 02a000       0.05957782     -0.00000004     -0.00000002
 2 aab000       0.00000000      0.00000000     -0.00000000
 2 a0a0b0      -0.00000000      0.00000000      0.00000000
 2 aa0b00      -0.00000000     -0.00000000      0.00000000
 2 aa00b0       0.00000039      0.55260934      0.00000019
 2 0aa0b0       0.55260934     -0.00000039     -0.00000016
 2 aa000b       0.00000016     -0.00000019      0.55260938
 2 0aab00      -0.00000016      0.00000019     -0.55260938
 2 a0a00b       0.55260941     -0.00000039     -0.00000016
 2 a0ab00       0.00000039      0.55260942      0.00000019
 2 0aa00b       0.00000000      0.00000000     -0.00000000
 2 b0aa00      -0.00000025     -0.36247235     -0.00000012
 2 a0b00a      -0.36247235      0.00000025      0.00000010
 2 0baa00       0.00000010     -0.00000012      0.36247232
 2 ab000a      -0.00000010      0.00000012     -0.36247232
 2 ba00a0      -0.00000025     -0.36247229     -0.00000012
 2 0ab0a0      -0.36247229      0.00000025      0.00000010
 2 ab0a00       0.00000000      0.00000000     -0.00000000
 2 0ba00a      -0.00000000     -0.00000000      0.00000000
 2 a0b0a0      -0.00000000     -0.00000000      0.00000000
 2 b0a0a0       0.00000000      0.00000000     -0.00000000
 2 0ab00a      -0.00000000      0.00000000      0.00000000
 2 ba0a00       0.00000000      0.00000000     -0.00000000
 2 ab00a0      -0.00000013     -0.19013705     -0.00000006
 2 0ba0a0      -0.19013705      0.00000013      0.00000005
 2 ba000a      -0.00000005      0.00000006     -0.19013705
 2 0aba00       0.00000005     -0.00000006      0.19013705
 2 b0a00a      -0.19013707      0.00000013      0.00000005
 2 a0ba00      -0.00000013     -0.19013707     -0.00000006
 0 22a000      -0.01500018      0.00000001      0.00000000
 0 2a2000      -0.00000000      0.00000001     -0.01500018
 0 a22000       0.00000001      0.01500018      0.00000001
 2 02000a      -0.00000007     -0.10626467     -0.00000004
 2 0020a0       0.00000003     -0.00000004      0.10626469
 2 020a00       0.10626467     -0.00000007     -0.00000003
 2 2000a0       0.00000003     -0.00000004      0.10626468
 2 00200a      -0.00000007     -0.10626470     -0.00000004
 2 200a00       0.10626470     -0.00000007     -0.00000003
 2 0200a0      -0.00000002      0.00000002     -0.06607058
 2 20000a       0.00000005      0.06607058      0.00000002
 2 002a00      -0.06607058      0.00000005      0.00000002
 0 a2a0b0       0.00000000     -0.00000000     -0.00000000
 0 a2ab00      -0.00000004     -0.05912337     -0.00000002
 0 a2a00b      -0.05912337      0.00000004      0.00000002
 0 2aab00       0.00000002     -0.00000002      0.05912337
 0 aa200b      -0.00000002      0.00000002     -0.05912337
 0 2aa0b0      -0.05912337      0.00000004      0.00000002
 0 aa20b0      -0.00000004     -0.05912336     -0.00000002
 0 aa2b00       0.00000000      0.00000000     -0.00000000
 0 2aa00b      -0.00000000     -0.00000000      0.00000000
 
 Energy:     -239.01715754   -239.01715754   -239.01715754
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1700(2)
                                         JKOP     OPER   

              2       4        1.38       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *        24.82     15.26      9.22
 REAL TIME  *        28.83 SEC
 DISK USED  *        88.44 MB (local),        3.99 GB (total)
 SF USED    *       147.84 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -239.2765531  -0.0
    -239.2170613   6.0
    -239.2170613   6.0
    -239.2170613   6.0
    -239.2170613   6.0
    -239.2170613   6.0
    -239.1939828   2.0
    -239.1939828   2.0
    -239.1939828   2.0
    -239.0407223  -0.0
    -239.0243777   6.0
    -239.0243777   6.0
    -239.0243777   6.0
    -239.0243777   6.0
    -239.0243777   6.0
    -239.0171575   2.0
    -239.0171575   2.0
    -239.0171575   2.0
                                                  


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
     1      -239.27655311

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.27D-04
 Number of N-2 electron functions:     250
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:      12620623
 Number of doubly external configurations:       3876295
 Total number of contracted configurations:     16530598
 Total number of uncontracted configurations:  965890508

 Diagonal Coupling coefficients finished.               Storage:  10292981 words, CPU-Time:      0.59 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3274766 words, CPU-time:      0.78 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.27655311    -0.00000000    -1.09409773  0.46D-01  0.12D+00     3.47
    2     1     1     1.10589175    -0.87606015  -240.15261327    -0.87606015    -0.02943332  0.47D-02  0.19D-02    25.34
    3     1     1     1.08899421    -0.90394800  -240.18050111    -0.02788784    -0.00039723  0.54D-04  0.35D-04    47.00
    4     1     1     1.08848088    -0.90435167  -240.18090478    -0.00040367    -0.00000891  0.16D-05  0.76D-06    68.61
    5     1     1     1.08852392    -0.90436079  -240.18091391    -0.00000913    -0.00000026  0.20D-07  0.38D-07    90.22
    6     1     1     1.08853652    -0.90436106  -240.18091418    -0.00000027    -0.00000001  0.89D-09  0.18D-08   111.72


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.0%
 S   2.5%  27.4%
 P   1.4%  45.3%   4.6%

 Initialization:   1.6%
 Other:           15.3%

 Total CPU:      111.7 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9580020


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95840048 (fixed)   0.95843774 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014496   -0.00026388   -0.00036280
 Singles      0.01324895   -0.04983042   -0.05677849
 Pairs        0.07530041   -0.85426676   -0.84721977
 Total        1.08869432   -0.90436106   -0.90436106
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.27655311
 Nuclear energy                         0.00000000
 Kinetic energy                        93.19424094
 One electron energy                 -419.31907432
 Two electron energy                  179.13816014
 Virial quotient                       -2.57720769
 Correlation energy                    -0.90436106
 !MRCI STATE 1.2 Energy              -240.180914177173

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.26112586 (Davidson, fixed reference)
 Cluster corrected energies          -240.26104931 (Davidson, relaxed reference)

 Cluster corrected energies          -240.25855459 (Pople, fixed reference)
 Cluster corrected energies          -240.25847496 (Pople, relaxed reference)





 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1700(2)
                                         JKOP     OPER   

              2       5      131.40       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       138.51    113.67     15.26      9.22
 REAL TIME  *       148.21 SEC
 DISK USED  *       218.47 MB (local),        8.05 GB (total)
 SF USED    *         1.78 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -240.26104931  AU                              


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
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  35

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -239.21706133
     2      -239.21706133
     3      -239.21706133
     4      -239.21706133
     5      -239.21706133
     6      -239.19398283
     7      -239.19398283
     8      -239.19398283
     9      -239.04072229
    10      -239.02437773
    11      -239.02437773
    12      -239.02437773
    13      -239.02437773
    14      -239.02437773
    15      -239.01715754
    16      -239.01715754
    17      -239.01715754

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2590D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1512D-06

 Number of blocks in overlap matrix:  1471   Smallest eigenvalue:  0.15D-06
 Number of N-2 electron functions:    3628
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:      15534476
 Number of doubly external configurations:      56251186
 Total number of contracted configurations:     71829748
 Total number of uncontracted configurations: 1275044416

 Diagonal Coupling coefficients finished.               Storage:  46705908 words, CPU-Time:    317.27 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4509488 words, CPU-time:     11.14 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.21706133     0.00000000    -1.08963936  0.54D-01  0.11D+00   365.63
    1     2     2     1.00000000     0.00000000  -239.21706133     0.00000000    -1.08972382  0.54D-01  0.11D+00   365.63
    1     3     3     1.00000000     0.00000000  -239.21706133     0.00000000    -1.09045182  0.54D-01  0.11D+00   365.63
    1     4     4     1.00000000     0.00000000  -239.21706133    -0.00000000    -1.09084686  0.55D-01  0.11D+00   365.63
    1     5     5     1.00000000     0.00000000  -239.21706133     0.00000000    -1.09287474  0.55D-01  0.11D+00   365.63
    1     6     6     1.00000000     0.00000000  -239.19398283     0.00000000    -1.07129963  0.35D-01  0.11D+00   365.63
    1     7     7     1.00000000     0.00000000  -239.19398283    -0.00000000    -1.07156830  0.35D-01  0.11D+00   365.63
    1     8     8     1.00000000     0.00000000  -239.19398283     0.00000000    -1.07169543  0.35D-01  0.11D+00   365.63
    1     9     9     1.00000000     0.00000000  -239.04072229     0.00000000    -1.04672986  0.46D-01  0.10D+00   365.63
    1    10    10     1.00000000     0.00000000  -239.02437773     0.00000000    -1.05250460  0.50D-01  0.10D+00   365.63
    1    11    11     1.00000000     0.00000000  -239.02437773     0.00000000    -1.05238621  0.49D-01  0.10D+00   365.63
    1    12    12     1.00000000     0.00000000  -239.02437773     0.00000000    -1.05255478  0.49D-01  0.10D+00   365.63
    1    13    13     1.00000000     0.00000000  -239.02437773     0.00000000    -1.05256612  0.49D-01  0.10D+00   365.63
    1    14    14     1.00000000     0.00000000  -239.02437773     0.00000000    -1.05246377  0.50D-01  0.10D+00   365.63
    1    15    15     1.00000000     0.00000000  -239.01715754     0.00000000    -1.05335506  0.51D-01  0.10D+00   365.63
    1    16    16     1.00000000     0.00000000  -239.01715754     0.00000000    -1.05354754  0.52D-01  0.10D+00   365.63
    1    17    17     1.00000000     0.00000000  -239.01715754     0.00000000    -1.05354307  0.51D-01  0.10D+00   365.63

 GPQ1:   2 BATCHES OF G-OPERATORS PROCESSED

    2     1     1     1.10866646    -0.88602948  -240.10309080    -0.88602948    -0.02872318  0.53D-02  0.16D-02  3880.46
    2     2     2     1.10873731    -0.88590883  -240.10297016    -0.88590883    -0.02887605  0.52D-02  0.16D-02  3880.46
    2     3     3     1.10870840    -0.88589221  -240.10295354    -0.88589221    -0.02884132  0.53D-02  0.16D-02  3880.46
    2     4     4     1.10914860    -0.88559787  -240.10265920    -0.88559787    -0.02921832  0.54D-02  0.16D-02  3880.46
    2     5     5     1.10978203    -0.88527031  -240.10233164    -0.88527031    -0.02955599  0.56D-02  0.17D-02  3880.46
    2     6     6     1.10094484    -0.88500520  -240.07898802    -0.88500520    -0.02478693  0.42D-02  0.15D-02  3880.46
    2     7     7     1.10109599    -0.88490185  -240.07888468    -0.88490185    -0.02490117  0.43D-02  0.15D-02  3880.46
    2     8     8     1.10095325    -0.88480979  -240.07879262    -0.88480979    -0.02493923  0.42D-02  0.15D-02  3880.46
    2     9     9     1.10222433    -0.87024353  -239.91096581    -0.87024353    -0.02216197  0.34D-02  0.13D-02  3880.46
    2    10    10     1.10400648    -0.87158927  -239.89596700    -0.87158927    -0.02337586  0.40D-02  0.14D-02  3880.46
    2    11    11     1.10412350    -0.87151430  -239.89589203    -0.87151430    -0.02345544  0.40D-02  0.14D-02  3880.46
    2    12    12     1.10413737    -0.87145977  -239.89583750    -0.87145977    -0.02352012  0.41D-02  0.14D-02  3880.46
    2    13    13     1.10432100    -0.87135164  -239.89572937    -0.87135164    -0.02361518  0.42D-02  0.14D-02  3880.46
    2    14    14     1.10452079    -0.87117062  -239.89554834    -0.87117062    -0.02381441  0.43D-02  0.14D-02  3880.46
    2    15    15     1.10578208    -0.87107443  -239.88823197    -0.87107443    -0.02426301  0.49D-02  0.13D-02  3880.46
    2    16    16     1.10589549    -0.87098048  -239.88813802    -0.87098048    -0.02437257  0.49D-02  0.14D-02  3880.46
    2    17    17     1.10589509    -0.87096215  -239.88811969    -0.87096215    -0.02439458  0.49D-02  0.14D-02  3880.46
    3     1     1     1.09322025    -0.91329692  -240.13035825    -0.02726744    -0.00067054  0.10D-03  0.68D-04  7418.18
    3     2     2     1.09313831    -0.91328889  -240.13035022    -0.02738006    -0.00067688  0.10D-03  0.70D-04  7418.18
    3     3     3     1.09322404    -0.91328585  -240.13034718    -0.02739364    -0.00067762  0.10D-03  0.70D-04  7418.18
    3     4     4     1.09325418    -0.91328517  -240.13034649    -0.02768730    -0.00068276  0.10D-03  0.70D-04  7418.18
    3     5     5     1.09339942    -0.91327010  -240.13033143    -0.02799979    -0.00069535  0.10D-03  0.74D-04  7418.18
    3     6     6     1.09042220    -0.90883621  -240.10281904    -0.02383102    -0.00052136  0.61D-04  0.63D-04  7418.18
    3     7     7     1.09044145    -0.90883156  -240.10281439    -0.02392971    -0.00052627  0.61D-04  0.64D-04  7418.18
    3     8     8     1.09034035    -0.90880399  -240.10278682    -0.02399420    -0.00054016  0.61D-04  0.67D-04  7418.18
    3     9     9     1.08886138    -0.89156556  -239.93228784    -0.02132203    -0.00034652  0.41D-04  0.34D-04  7418.18
    3    10    10     1.08961351    -0.89410274  -239.91848047    -0.02251347    -0.00041265  0.55D-04  0.44D-04  7418.18
    3    11    11     1.08960531    -0.89410196  -239.91847969    -0.02258766    -0.00041140  0.54D-04  0.44D-04  7418.18
    3    12    12     1.08960798    -0.89410148  -239.91847921    -0.02264171    -0.00041407  0.55D-04  0.44D-04  7418.18
    3    13    13     1.08960913    -0.89409383  -239.91847156    -0.02274219    -0.00042015  0.55D-04  0.45D-04  7418.18
    3    14    14     1.08961701    -0.89409115  -239.91846888    -0.02292054    -0.00042376  0.56D-04  0.45D-04  7418.18
    3    15    15     1.08988330    -0.89460225  -239.91175979    -0.02352782    -0.00045420  0.62D-04  0.51D-04  7418.18
    3    16    16     1.08989383    -0.89460134  -239.91175888    -0.02362086    -0.00045499  0.63D-04  0.51D-04  7418.18
    3    17    17     1.08988392    -0.89459881  -239.91175635    -0.02363666    -0.00045429  0.62D-04  0.51D-04  7418.18
    4     1     1     1.09279717    -0.91400521  -240.13106654    -0.00070830    -0.00003832  0.33D-05  0.57D-05 11056.80
    4     2     2     1.09280807    -0.91400477  -240.13106609    -0.00071587    -0.00003844  0.34D-05  0.57D-05 11056.80
    4     3     3     1.09281109    -0.91400437  -240.13106570    -0.00071852    -0.00003871  0.34D-05  0.58D-05 11056.80
    4     4     4     1.09279611    -0.91400219  -240.13106352    -0.00071703    -0.00003995  0.34D-05  0.60D-05 11056.80
    4     5     5     1.09280448    -0.91400183  -240.13106316    -0.00073172    -0.00004036  0.35D-05  0.61D-05 11056.80
    4     6     6     1.09091194    -0.90940645  -240.10338928    -0.00057024    -0.00003521  0.22D-05  0.59D-05 11056.80
    4     7     7     1.09091166    -0.90940637  -240.10338920    -0.00057481    -0.00003538  0.22D-05  0.59D-05 11056.80
    4     8     8     1.09086503    -0.90940050  -240.10338332    -0.00059650    -0.00003901  0.23D-05  0.66D-05 11056.80
    4     9     9     1.08853770    -0.89192845  -239.93265074    -0.00036290    -0.00001543  0.21D-05  0.21D-05 11056.80
    4    10    10     1.08927226    -0.89454399  -239.91892172    -0.00044125    -0.00002350  0.28D-05  0.38D-05 11056.80
    4    11    11     1.08927182    -0.89454390  -239.91892163    -0.00044194    -0.00002352  0.28D-05  0.38D-05 11056.80
    4    12    12     1.08927216    -0.89454389  -239.91892162    -0.00044241    -0.00002374  0.28D-05  0.38D-05 11056.80
    4    13    13     1.08926757    -0.89454282  -239.91892055    -0.00044899    -0.00002394  0.28D-05  0.39D-05 11056.80
    4    14    14     1.08926701    -0.89454250  -239.91892023    -0.00045135    -0.00002426  0.28D-05  0.40D-05 11056.80
    4    15    15     1.08951600    -0.89509653  -239.91225407    -0.00049428    -0.00002793  0.33D-05  0.46D-05 11056.80
    4    16    16     1.08951491    -0.89509649  -239.91225403    -0.00049515    -0.00002785  0.32D-05  0.46D-05 11056.80
    4    17    17     1.08950802    -0.89509490  -239.91225244    -0.00049609    -0.00002865  0.33D-05  0.48D-05 11056.80
    5     1     1     1.09302689    -0.91405046  -240.13111179    -0.00004524    -0.00000252  0.12D-06  0.44D-06 14608.14
    5     2     2     1.09302830    -0.91405032  -240.13111165    -0.00004556    -0.00000258  0.12D-06  0.45D-06 14608.14
    5     3     3     1.09302736    -0.91405031  -240.13111164    -0.00004594    -0.00000260  0.12D-06  0.45D-06 14608.14
    5     4     4     1.09301950    -0.91405005  -240.13111138    -0.00004786    -0.00000280  0.14D-06  0.48D-06 14608.14
    5     5     5     1.09302308    -0.91404998  -240.13111131    -0.00004815    -0.00000282  0.14D-06  0.48D-06 14608.14
    5     6     6     1.09137551    -0.90944995  -240.10343277    -0.00004349    -0.00000262  0.12D-06  0.42D-06 14608.14
    5     7     7     1.09137668    -0.90944992  -240.10343274    -0.00004355    -0.00000264  0.13D-06  0.43D-06 14608.14
    5     8     8     1.09137270    -0.90944932  -240.10343214    -0.00004882    -0.00000307  0.15D-06  0.48D-06 14608.14
    5     9     9     1.08857809    -0.89194675  -239.93266903    -0.00001829    -0.00000119  0.51D-07  0.24D-06 14608.14
    5    10    10     1.08938756    -0.89457363  -239.91895136    -0.00002964    -0.00000227  0.12D-06  0.43D-06 14608.14
    5    11    11     1.08938710    -0.89457360  -239.91895133    -0.00002970    -0.00000229  0.12D-06  0.43D-06 14608.14
    5    12    12     1.08938684    -0.89457355  -239.91895128    -0.00002966    -0.00000230  0.12D-06  0.44D-06 14608.14
    5    13    13     1.08938527    -0.89457327  -239.91895100    -0.00003045    -0.00000245  0.13D-06  0.46D-06 14608.14
    5    14    14     1.08938544    -0.89457325  -239.91895098    -0.00003074    -0.00000247  0.13D-06  0.46D-06 14608.14
    5    15    15     1.08965510    -0.89513171  -239.91228925    -0.00003518    -0.00000266  0.14D-06  0.49D-06 14608.14
    5    16    16     1.08965533    -0.89513166  -239.91228920    -0.00003517    -0.00000268  0.14D-06  0.50D-06 14608.14
    5    17    17     1.08965230    -0.89513138  -239.91228892    -0.00003647    -0.00000286  0.16D-06  0.52D-06 14608.14
    6     1     1     1.09306759    -0.91405360  -240.13111493    -0.00000315    -0.00000023  0.21D-07  0.31D-07 18157.19
    6     2     2     1.09306633    -0.91405355  -240.13111488    -0.00000323    -0.00000023  0.21D-07  0.32D-07 18157.19
    6     3     3     1.09306692    -0.91405355  -240.13111488    -0.00000324    -0.00000023  0.21D-07  0.32D-07 18157.19
    6     4     4     1.09306388    -0.91405354  -240.13111487    -0.00000349    -0.00000025  0.23D-07  0.35D-07 18157.19
    6     5     5     1.09306531    -0.91405351  -240.13111484    -0.00000353    -0.00000025  0.24D-07  0.35D-07 18157.19
    6     6     6     1.09142512    -0.90945322  -240.10343605    -0.00000328    -0.00000020  0.18D-07  0.26D-07 18157.19
    6     7     7     1.09142486    -0.90945322  -240.10343605    -0.00000330    -0.00000020  0.18D-07  0.26D-07 18157.19
    6     8     8     1.09142307    -0.90945317  -240.10343599    -0.00000385    -0.00000024  0.20D-07  0.31D-07 18157.19
    6     9     9     1.08859472    -0.89194839  -239.93267068    -0.00000165    -0.00000014  0.12D-07  0.21D-07 18157.19
    6    10    10     1.08941877    -0.89457672  -239.91895445    -0.00000309    -0.00000024  0.21D-07  0.35D-07 18157.19
    6    11    11     1.08941855    -0.89457672  -239.91895445    -0.00000312    -0.00000024  0.21D-07  0.36D-07 18157.19
    6    12    12     1.08941864    -0.89457669  -239.91895442    -0.00000313    -0.00000024  0.21D-07  0.36D-07 18157.19
    6    13    13     1.08941814    -0.89457663  -239.91895436    -0.00000336    -0.00000027  0.23D-07  0.39D-07 18157.19
    6    14    14     1.08941775    -0.89457662  -239.91895435    -0.00000338    -0.00000027  0.24D-07  0.40D-07 18157.19
    6    15    15     1.08968745    -0.89513523  -239.91229277    -0.00000352    -0.00000027  0.23D-07  0.42D-07 18157.19
    6    16    16     1.08968754    -0.89513521  -239.91229275    -0.00000355    -0.00000027  0.24D-07  0.42D-07 18157.19
    6    17    17     1.08968657    -0.89513520  -239.91229274    -0.00000382    -0.00000030  0.26D-07  0.46D-07 18157.19
    7     1     1     1.09308469    -0.91405387  -240.13111520    -0.00000026    -0.00000002  0.17D-08  0.30D-08 21779.58
    7     2     2     1.09308431    -0.91405383  -240.13111515    -0.00000027    -0.00000002  0.18D-08  0.32D-08 21779.58
    7     3     3     1.09308449    -0.91405382  -240.13111515    -0.00000027    -0.00000002  0.17D-08  0.30D-08 21779.58
    7     4     4     1.09308440    -0.91405382  -240.13111514    -0.00000027    -0.00000002  0.17D-08  0.30D-08 21779.58
    7     5     5     1.09308414    -0.91405381  -240.13111513    -0.00000029    -0.00000002  0.19D-08  0.33D-08 21779.58
    7     6     6     1.09144069    -0.90945345  -240.10343628    -0.00000023    -0.00000002  0.17D-08  0.25D-08 21779.58
    7     7     7     1.09144072    -0.90945345  -240.10343627    -0.00000023    -0.00000002  0.16D-08  0.25D-08 21779.58
    7     8     8     1.09144011    -0.90945344  -240.10343626    -0.00000027    -0.00000002  0.21D-08  0.31D-08 21779.58
    7     9     9     1.08860326    -0.89194856  -239.93267085    -0.00000017    -0.00000001  0.10D-08  0.22D-08 21779.58
    7    10    10     1.08943248    -0.89457701  -239.91895474    -0.00000029    -0.00000002  0.19D-08  0.41D-08 21779.58
    7    11    11     1.08943255    -0.89457701  -239.91895474    -0.00000029    -0.00000002  0.19D-08  0.40D-08 21779.58
    7    12    12     1.08943254    -0.89457698  -239.91895471    -0.00000029    -0.00000002  0.19D-08  0.41D-08 21779.58
    7    13    13     1.08943241    -0.89457695  -239.91895468    -0.00000032    -0.00000003  0.22D-08  0.46D-08 21779.58
    7    14    14     1.08943241    -0.89457695  -239.91895467    -0.00000032    -0.00000003  0.22D-08  0.46D-08 21779.58
    7    15    15     1.08970405    -0.89513556  -239.91229310    -0.00000034    -0.00000003  0.26D-08  0.58D-08 21779.58
    7    16    16     1.08970410    -0.89513555  -239.91229309    -0.00000035    -0.00000003  0.22D-08  0.50D-08 21779.58
    7    17    17     1.08970410    -0.89513553  -239.91229307    -0.00000034    -0.00000003  0.22D-08  0.51D-08 21779.58


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%   2.6%
 P   0.3%  25.5%  44.8%

 Initialization:   1.5%
 Other:           24.9%

 Total CPU:    21779.6 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.7527088  -0.5862696   0.0085405  -0.0331919  -0.0174841   0.0000000  -0.0000000  -0.0000000
                           -0.0000001  -0.0258579  -0.0113066  -0.0012410  -0.0072724   0.0073732  -0.0000000  -0.0000000
                           -0.0000000
 2222222222/\/000           0.5873346   0.7523164   0.0011447   0.0278316   0.0067352   0.0000000   0.0000000   0.0000000
                            0.0000001  -0.0099972  -0.0028820  -0.0001194   0.0215164  -0.0182767   0.0000000  -0.0000000
                           -0.0000000
 2222222222/20000           0.0053565  -0.0035365  -0.6750798   0.0103966  -0.0003078  -0.0426823   0.6665911  -0.0067729
                           -0.0000000   0.0082184  -0.0195870  -0.0006532   0.0004106  -0.0009192  -0.0017181  -0.0363679
                            0.0019404
 2222222222/02000          -0.0053565   0.0035365   0.6750789  -0.0103966   0.0003078  -0.0426823   0.6665921  -0.0067729
                            0.0000000  -0.0082183   0.0195868   0.0006532  -0.0004106   0.0009191  -0.0017181  -0.0363677
                            0.0019404
 222222222220/000          -0.0067905   0.0112075   0.0002523   0.0037040  -0.6750528  -0.0050432   0.0064637   0.6679409
                            0.0000000   0.0006845  -0.0002217   0.0014573   0.0139046   0.0160203   0.0364194  -0.0017198
                            0.0000141
 222222222202/000           0.0067905  -0.0112075  -0.0002523  -0.0037040   0.6750527  -0.0050432   0.0064637   0.6679410
                            0.0000000  -0.0006845   0.0002217  -0.0014573  -0.0139045  -0.0160202   0.0364194  -0.0017198
                            0.0000141
 22222222222/0000          -0.0063584   0.0299576  -0.0105922  -0.6744048  -0.0031431   0.6666068   0.0427302   0.0046196
                           -0.0000000  -0.0005789  -0.0009275   0.0211966  -0.0010956  -0.0009654   0.0000774   0.0019389
                            0.0364085
 22222222220/2000           0.0063584  -0.0299576   0.0105922   0.6744046   0.0031431   0.6666071   0.0427302   0.0046196
                            0.0000000   0.0005789   0.0009275  -0.0211967   0.0010956   0.0009654   0.0000774   0.0019389
                            0.0364082
 22222222220//\00           0.0002266  -0.0010675   0.0003775   0.0240323   0.0001120   0.0433126   0.0027764   0.0003002
                           -0.0000000  -0.0177606  -0.0284551   0.6503265  -0.0336139  -0.0296180  -0.0013815  -0.0345936
                           -0.6495970
 2222222222//000\           0.0002266  -0.0010675   0.0003775   0.0240325   0.0001120  -0.0433127  -0.0027764  -0.0003002
                           -0.0000001  -0.0177605  -0.0284549   0.6503233  -0.0336136  -0.0296178   0.0013814   0.0345936
                            0.6496003
 2222222222/0/00\           0.0002420  -0.0003994  -0.0000090  -0.0001320   0.0240556   0.0003277  -0.0004200  -0.0433995
                            0.0000000   0.0210009  -0.0068026   0.0447107   0.4265986   0.4915092   0.6497969  -0.0306851
                            0.0002522
 22222222220//0\0          -0.0002420   0.0003994   0.0000090   0.0001320  -0.0240555   0.0003277  -0.0004200  -0.0433993
                            0.0000001  -0.0210010   0.0068026  -0.0447107  -0.4265992  -0.4915101   0.6497958  -0.0306851
                            0.0002523
 2222222222/0/\00          -0.0001909   0.0001260   0.0240564  -0.0003705   0.0000110  -0.0027733   0.0433116  -0.0004401
                            0.0000001   0.2521417  -0.6009348  -0.0200410   0.0125961  -0.0282000   0.0306551   0.6488759
                           -0.0346203
 2222222222//00\0           0.0001909  -0.0001260  -0.0240565   0.0003705  -0.0000110  -0.0027733   0.0433117  -0.0004401
                           -0.0000000  -0.2521428   0.6009364   0.0200412  -0.0125962   0.0282001   0.0306550   0.6488740
                           -0.0346202
 2222222222//0\00           0.0219008  -0.0170581   0.0002485  -0.0009658  -0.0005087   0.0000000  -0.0000000  -0.0000000
                            0.5497415   0.6477495   0.2832340   0.0310875   0.1821783  -0.1847036  -0.0000001   0.0000002
                           -0.0000000
 2222222222/0/0\0          -0.0038492  -0.0274858   0.0000954  -0.0011842  -0.0004241   0.0000000   0.0000000   0.0000000
                           -0.5497394   0.1069949   0.0790951   0.0129540   0.5578741  -0.4888544   0.0000000   0.0000001
                           -0.0000001
 22222222220//00\          -0.0257502  -0.0104278  -0.0001531  -0.0002184   0.0000846  -0.0000000  -0.0000000  -0.0000000
                            0.5497399  -0.5407569  -0.2041398  -0.0181335   0.3756948  -0.3041497  -0.0000001  -0.0000002
                            0.0000000
 2222222222/0\0/0          -0.0174770   0.0024318  -0.0001473   0.0002741   0.0002176   0.0000000  -0.0000000   0.0000000
                            0.0000002   0.1646550   0.0675205   0.0068191  -0.0268101   0.0165483   0.0000000   0.0000001
                           -0.0000000
 222222022222/000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0010069  -0.0012906  -0.1333620
                           -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0093820   0.0004430
                           -0.0000036
 22222202222/2000           0.0000000   0.0000000  -0.0000000  -0.0000001  -0.0000000  -0.1330959  -0.0085316  -0.0009224
                           -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000199  -0.0004995
                           -0.0093790
 2222220222/22000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0085220  -0.1330929   0.0013523
                           -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0004426   0.0093686
                           -0.0004999
 2222222222/\0/00           0.0108564   0.0139059   0.0000212   0.0005144   0.0001245  -0.0000000  -0.0000000  -0.0000000
                            0.0000001  -0.0600933  -0.0173237  -0.0007176   0.1293363  -0.1098624  -0.0000000  -0.0000000
                           -0.0000000
 22222222220020/0           0.0001175  -0.0005537   0.0001958   0.0124653   0.0000581   0.0109185   0.0006999   0.0000757
                           -0.0000000   0.0034797   0.0055751  -0.1274150   0.0065858   0.0058029   0.0002137   0.0053513
                            0.1004868
 22222222222000/0          -0.0001175   0.0005537  -0.0001958  -0.0124654  -0.0000581   0.0109186   0.0006999   0.0000757
                           -0.0000000  -0.0034797  -0.0055750   0.1274141  -0.0065857  -0.0058029   0.0002137   0.0053513
                            0.1004872
 222222222202000/           0.0000990  -0.0000654  -0.0124779   0.0001922  -0.0000057  -0.0006991   0.0109185  -0.0001109
                            0.0000000   0.0494009  -0.1177380  -0.0039266   0.0024679  -0.0055251  -0.0047420  -0.1003747
                            0.0053554
 222222222200200/          -0.0000990   0.0000654   0.0124780  -0.0001922   0.0000057  -0.0006991   0.0109183  -0.0001109
                           -0.0000000  -0.0494008   0.1177380   0.0039266  -0.0024679   0.0055251  -0.0047421  -0.1003755
                            0.0053555
 2222222222/0\00/           0.0000888  -0.0001465  -0.0000033  -0.0000484   0.0088229   0.0001280  -0.0001640  -0.0169518
                           -0.0000000  -0.0029095   0.0009424  -0.0061942  -0.0591011  -0.0680939  -0.1159776   0.0054768
                           -0.0000450
 22222222220/\0/0          -0.0000888   0.0001465   0.0000033   0.0000484  -0.0088229   0.0001280  -0.0001640  -0.0169516
                           -0.0000000   0.0029095  -0.0009424   0.0061942   0.0591012   0.0680940  -0.1159775   0.0054768
                           -0.0000450
 2222222222/\000/           0.0000831  -0.0003915   0.0001384   0.0088144   0.0000411  -0.0169179  -0.0010845  -0.0001172
                            0.0000000   0.0024605   0.0039421  -0.0900956   0.0046568   0.0041032  -0.0002466  -0.0061743
                           -0.1159418
 22222222220/\/00          -0.0000831   0.0003915  -0.0001384  -0.0088146  -0.0000411  -0.0169181  -0.0010845  -0.0001172
                            0.0000000  -0.0024606  -0.0039422   0.0900960  -0.0046569  -0.0041033  -0.0002466  -0.0061743
                           -0.1159414
 2222222222/0\/00           0.0000700  -0.0000462  -0.0088234   0.0001359  -0.0000040   0.0010833  -0.0169177   0.0001719
                            0.0000000   0.0349315  -0.0832530  -0.0027765   0.0017451  -0.0039068   0.0054714   0.1158124
                           -0.0061791
 2222222222/\00/0          -0.0000700   0.0000462   0.0088232  -0.0001359   0.0000040   0.0010832  -0.0169175   0.0001719
                            0.0000000  -0.0349317   0.0832534   0.0027765  -0.0017451   0.0039068   0.0054714   0.1158123
                           -0.0061791
 22222222220/\00/           0.0066209  -0.0163375   0.0001261  -0.0007885  -0.0003421  -0.0000000  -0.0000000  -0.0000000
                           -0.0000002  -0.1045618  -0.0501969  -0.0061015  -0.1025269   0.0933148  -0.0000000  -0.0000000
                            0.0000000
 2222222222200/00          -0.0001255   0.0002072   0.0000047   0.0000685  -0.0124777  -0.0000826   0.0001059   0.0109409
                            0.0000000   0.0041146  -0.0013328   0.0087599   0.0835811   0.0962987   0.1005177  -0.0047467
                            0.0000390
 2222222222020/00           0.0001255  -0.0002072  -0.0000047  -0.0000685   0.0124776  -0.0000826   0.0001059   0.0109409
                            0.0000000  -0.0041146   0.0013328  -0.0087599  -0.0835813  -0.0962989   0.1005174  -0.0047467
                            0.0000390
 2222222222002/00          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000984  -0.0001261  -0.0130327
                           -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0635001   0.0029986
                           -0.0000247
 22222222220200/0          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0130068  -0.0008337  -0.0000901
                            0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0001350  -0.0033806
                           -0.0634807
 222222222220000/          -0.0000000   0.0000000   0.0000001  -0.0000000  -0.0000000   0.0008328  -0.0130066   0.0001322
                            0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0029957   0.0634100
                           -0.0033832
 2222220222/2/00\          -0.0001421   0.0002345   0.0000053   0.0000775  -0.0141241   0.0000696  -0.0000892  -0.0092223
                           -0.0000000  -0.0019620   0.0006355  -0.0041771  -0.0398548  -0.0459190  -0.0628074   0.0029659
                           -0.0000244
 22222202222//0\0           0.0001421  -0.0002345  -0.0000053  -0.0000775   0.0141241   0.0000696  -0.0000892  -0.0092224
                           -0.0000000   0.0019620  -0.0006355   0.0041771   0.0398549   0.0459191  -0.0628074   0.0029659
                           -0.0000244
 2222220222//200\          -0.0001330   0.0006268  -0.0002216  -0.0141106  -0.0000658  -0.0092039  -0.0005900  -0.0000638
                            0.0000000   0.0016593   0.0026584  -0.0607563   0.0031403   0.0027670  -0.0001335  -0.0033437
                           -0.0627886
 22222202222//\00          -0.0001330   0.0006268  -0.0002216  -0.0141106  -0.0000658   0.0092040   0.0005900   0.0000638
                            0.0000000   0.0016593   0.0026584  -0.0607566   0.0031404   0.0027671   0.0001335   0.0033437
                            0.0627882
 2222220222/2/\00           0.0001121  -0.0000740  -0.0141248   0.0002175  -0.0000064  -0.0005893   0.0092038  -0.0000935
                           -0.0000000  -0.0235562   0.0561421   0.0018723  -0.0011768   0.0026346  -0.0029630  -0.0627184
                            0.0033463
 2222220222//20\0          -0.0001121   0.0000740   0.0141248  -0.0002175   0.0000064  -0.0005893   0.0092037  -0.0000935
                           -0.0000000   0.0235563  -0.0561422  -0.0018723   0.0011768  -0.0026346  -0.0029630  -0.0627183
                            0.0033463
 2222220222//2\00          -0.0128589   0.0100156  -0.0001459   0.0005670   0.0002987   0.0000000  -0.0000000  -0.0000000
                           -0.0502410  -0.0605158  -0.0264611  -0.0029043  -0.0170200   0.0172559   0.0000000  -0.0000000
                           -0.0000000
 22222222220/0/0\           0.0121310   0.0032374   0.0000798   0.0000285  -0.0000681  -0.0000000  -0.0000000   0.0000000
                           -0.0172213   0.0535072   0.0217350   0.0021659  -0.0120908   0.0083116  -0.0000001   0.0000000
                            0.0000000
 2222220222/2/0\0           0.0022600   0.0161381  -0.0000560   0.0006953   0.0002490  -0.0000000   0.0000000  -0.0000000
                            0.0502410  -0.0099960  -0.0073895  -0.0012102  -0.0521192   0.0456711   0.0000000  -0.0000000
                            0.0000000
 22222202222//00\           0.0151189   0.0061225   0.0000899   0.0001283  -0.0000497  -0.0000000   0.0000000  -0.0000000
                           -0.0502410   0.0505200   0.0190717   0.0016941  -0.0350991   0.0284151   0.0000000   0.0000000
                            0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955103    0.009001    0.009613   -0.007583    0.033557   -0.000000    0.000000    0.000000   -0.000000    0.005372
            -0.000304   -0.000240   -0.000285   -0.029767   -0.000000    0.000000    0.000000
 2          -0.032925   -0.042409   -0.015866    0.005006    0.954160    0.000000   -0.000000   -0.000000   -0.000000    0.029740
             0.000502    0.000158    0.001342    0.005348   -0.000000   -0.000000   -0.000000
 3           0.007593    0.014995   -0.000357    0.955657   -0.004092   -0.000000   -0.000000   -0.000001   -0.000000   -0.000094
             0.000011    0.030246   -0.000475   -0.000256   -0.000000   -0.000000   -0.000000
 4          -0.010539    0.954702   -0.005243   -0.014718    0.042059   -0.000000    0.000000    0.000000   -0.000000    0.001270
             0.000166   -0.000466   -0.030216    0.000520   -0.000000   -0.000000    0.000000
 5          -0.010209    0.004449    0.955619    0.000436    0.015733    0.000000   -0.000000    0.000000    0.000000    0.000447
            -0.030245    0.000014   -0.000141    0.000391   -0.000000   -0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.954537   -0.007222   -0.061118   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000222    0.001881    0.029379
 7          -0.000000    0.000000   -0.000000    0.000001    0.000000    0.061187    0.009256    0.954515   -0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000285   -0.029378    0.001883
 8          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.006615    0.956447   -0.009698   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.029438    0.000298    0.000204
 9           0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.958230    0.000001
            -0.000000   -0.000000   -0.000000    0.000001    0.000000    0.000000   -0.000000
 10          0.027704   -0.000846    0.001001    0.012014   -0.007328   -0.000000   -0.000000   -0.000000   -0.000001    0.101354
             0.030802   -0.369815   -0.026049    0.876277   -0.000000   -0.000001    0.000000
 11          0.011210   -0.001356   -0.000324   -0.028633   -0.004450   -0.000000    0.000000   -0.000000   -0.000001    0.086263
            -0.009977    0.881388   -0.041735    0.361105    0.000000    0.000001    0.000000
 12          0.001111    0.030987    0.002130   -0.000955   -0.000653    0.000000    0.000000    0.000000    0.000000    0.015015
             0.065577    0.029394    0.953828    0.036718    0.000000    0.000000   -0.000002
 13         -0.006973   -0.001602    0.020327    0.000600   -0.022418   -0.000000    0.000000   -0.000000   -0.000001    0.713663
             0.625690   -0.018475   -0.049301   -0.113801   -0.000000   -0.000000    0.000000
 14          0.004922   -0.001411    0.023419   -0.001344    0.019768   -0.000000    0.000000   -0.000000    0.000001   -0.623916
             0.720894    0.041361   -0.043440    0.062989   -0.000001    0.000000    0.000000
 15          0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000064   -0.029936    0.001412   -0.000000   -0.000000
             0.000001   -0.000000   -0.000000    0.000000    0.956202    0.045110    0.002033
 16          0.000000   -0.000000    0.000000    0.000000    0.000000   -0.001594    0.001414    0.029894   -0.000000    0.000000
            -0.000000   -0.000001    0.000000    0.000000   -0.045154    0.954846    0.050906
 17         -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.029927   -0.000012   -0.001595    0.000000   -0.000000
            -0.000000    0.000000    0.000002   -0.000000    0.000371   -0.050945    0.955911

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956292    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000352
             0.000145    0.000018   -0.000097    0.000075    0.000000   -0.000000   -0.000000
 2           0.000000    0.956292    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000105
            -0.000063   -0.000027   -0.000288    0.000247    0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.956292    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000158
            -0.000367   -0.000006    0.000008   -0.000018    0.000000    0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.956292   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000021
            -0.000016    0.000398   -0.000034   -0.000009    0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.956292    0.000000   -0.000000   -0.000000    0.000000    0.000008
            -0.000007    0.000029    0.000257    0.000305   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.956972    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000001   -0.000030   -0.000251
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.956972    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000009    0.000251   -0.000030
 8          -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.956972    0.000000   -0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000253    0.000009   -0.000002
 9          -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.958230   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 10          0.000352   -0.000105    0.000158   -0.000021    0.000008   -0.000000    0.000000   -0.000000   -0.000000    0.957858
             0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 11          0.000145   -0.000063   -0.000367   -0.000016   -0.000007   -0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.957858    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 12          0.000018   -0.000027   -0.000006    0.000398    0.000029    0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.957858    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 13         -0.000097   -0.000288    0.000008   -0.000034    0.000257   -0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.957858   -0.000000    0.000000    0.000000    0.000000
 14          0.000075    0.000247   -0.000018   -0.000009    0.000305   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000   -0.000000    0.957858    0.000000   -0.000000    0.000000
 15          0.000000    0.000000    0.000000    0.000000   -0.000000    0.000001    0.000009   -0.000253   -0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.957736   -0.000000    0.000000
 16         -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000030    0.000251    0.000009   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.957736   -0.000000
 17         -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000251   -0.000030   -0.000002    0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.957736


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95510348 (fixed)   0.95633581 (relaxed)   0.95629212 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038007   -0.00087417   -0.78474196
 Singles      0.01642882   -0.05628583   -0.06519856
 Pairs        0.07669125   -0.00000000   -0.06411335
 Total        1.09350014   -0.05716000   -0.91405387
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21686338
 Nuclear energy                         0.00000000
 Kinetic energy                        93.17253881
 One electron energy                 -419.16206450
 Two electron energy                  179.03094930
 Virial quotient                       -2.57727350
 Correlation energy                    -0.91425182
 !MRCI STATE 1.2 Energy              -240.131115196131

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.21659787 (Davidson, fixed reference)
 Cluster corrected energies          -240.21650654 (Davidson, relaxed reference)
 Cluster corrected energies          -240.21659787 (Davidson, rotated reference)

 Cluster corrected energies          -240.21519296 (Pople, fixed reference)
 Cluster corrected energies          -240.21509586 (Pople, relaxed reference)
 Cluster corrected energies          -240.21519296 (Pople, rotated reference)





 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95415966 (fixed)   0.95633597 (relaxed)   0.95629229 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038007   -0.00087417   -0.78474206
 Singles      0.01642897   -0.05628599   -0.06519860
 Pairs        0.07669072    0.00000001   -0.06411317
 Total        1.09349976   -0.05716015   -0.91405383
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21686338
 Nuclear energy                         0.00000000
 Kinetic energy                        93.17254157
 One electron energy                 -419.16207116
 Two electron energy                  179.03095601
 Virial quotient                       -2.57727342
 Correlation energy                    -0.91425178
 !MRCI STATE 2.2 Energy              -240.131115154909

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.21659748 (Davidson, fixed reference)
 Cluster corrected energies          -240.21650615 (Davidson, relaxed reference)
 Cluster corrected energies          -240.21659748 (Davidson, rotated reference)

 Cluster corrected energies          -240.21519254 (Pople, fixed reference)
 Cluster corrected energies          -240.21509544 (Pople, relaxed reference)
 Cluster corrected energies          -240.21519254 (Pople, rotated reference)





 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95565707 (fixed)   0.95633589 (relaxed)   0.95629221 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038008   -0.00087417   -0.78474217
 Singles      0.01642882   -0.05628571   -0.06519842
 Pairs        0.07669105   -0.00000000   -0.06411322
 Total        1.09349995   -0.05715987   -0.91405382
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21686338
 Nuclear energy                         0.00000000
 Kinetic energy                        93.17254071
 One electron energy                 -419.16207623
 Two electron energy                  179.03096108
 Virial quotient                       -2.57727345
 Correlation energy                    -0.91425177
 !MRCI STATE 3.2 Energy              -240.131115145902

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.21659764 (Davidson, fixed reference)
 Cluster corrected energies          -240.21650630 (Davidson, relaxed reference)
 Cluster corrected energies          -240.21659764 (Davidson, rotated reference)

 Cluster corrected energies          -240.21519271 (Pople, fixed reference)
 Cluster corrected energies          -240.21509561 (Pople, relaxed reference)
 Cluster corrected energies          -240.21519271 (Pople, rotated reference)





 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95470190 (fixed)   0.95633593 (relaxed)   0.95629224 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038008   -0.00087417   -0.78474224
 Singles      0.01642866   -0.05628558   -0.06519830
 Pairs        0.07669112   -0.00000012   -0.06411328
 Total        1.09349986   -0.05715987   -0.91405382
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21686338
 Nuclear energy                         0.00000000
 Kinetic energy                        93.17254233
 One electron energy                 -419.16207501
 Two electron energy                  179.03095986
 Virial quotient                       -2.57727340
 Correlation energy                    -0.91425177
 !MRCI STATE 4.2 Energy              -240.131115144720

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.21659756 (Davidson, fixed reference)
 Cluster corrected energies          -240.21650622 (Davidson, relaxed reference)
 Cluster corrected energies          -240.21659756 (Davidson, rotated reference)

 Cluster corrected energies          -240.21519263 (Pople, fixed reference)
 Cluster corrected energies          -240.21509552 (Pople, relaxed reference)
 Cluster corrected energies          -240.21519263 (Pople, rotated reference)





 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95561935 (fixed)   0.95633605 (relaxed)   0.95629236 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038008   -0.00087417   -0.78474208
 Singles      0.01642896   -0.05628607   -0.06519859
 Pairs        0.07669056   -0.00000000   -0.06411314
 Total        1.09349960   -0.05716023   -0.91405381
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21686338
 Nuclear energy                         0.00000000
 Kinetic energy                        93.17254308
 One electron energy                 -419.16206951
 Two electron energy                  179.03095438
 Virial quotient                       -2.57727338
 Correlation energy                    -0.91425176
 !MRCI STATE 5.2 Energy              -240.131115133675

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.21659731 (Davidson, fixed reference)
 Cluster corrected energies          -240.21650597 (Davidson, relaxed reference)
 Cluster corrected energies          -240.21659731 (Davidson, rotated reference)

 Cluster corrected energies          -240.21519236 (Pople, fixed reference)
 Cluster corrected energies          -240.21509526 (Pople, relaxed reference)
 Cluster corrected energies          -240.21519236 (Pople, rotated reference)





 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95453676 (fixed)   0.95708107 (relaxed)   0.95697161 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046466   -0.00074311   -0.75922279
 Singles      0.01134419   -0.04431392   -0.05002496
 Pairs        0.08013899   -0.03653043   -0.10020569
 Total        1.09194784   -0.08158746   -0.90945345
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19381259
 Nuclear energy                         0.00000000
 Kinetic energy                        93.16472072
 One electron energy                 -419.00728643
 Two electron energy                  178.90385015
 Virial quotient                       -2.57719268
 Correlation energy                    -0.90962369
 !MRCI STATE 6.2 Energy              -240.103436279024

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.18707421 (Davidson, fixed reference)
 Cluster corrected energies          -240.18684703 (Davidson, relaxed reference)
 Cluster corrected energies          -240.18707421 (Davidson, rotated reference)

 Cluster corrected energies          -240.18558910 (Pople, fixed reference)
 Cluster corrected energies          -240.18534825 (Pople, relaxed reference)
 Cluster corrected energies          -240.18558910 (Pople, rotated reference)





 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95451479 (fixed)   0.95708105 (relaxed)   0.95697160 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046466   -0.00074311   -0.79053269
 Singles      0.01134419   -0.04431391   -0.05002495
 Pairs        0.08013902   -0.00234164   -0.06889581
 Total        1.09194787   -0.04739865   -0.90945345
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19381259
 Nuclear energy                         0.00000000
 Kinetic energy                        93.16471894
 One electron energy                 -419.00728731
 Two electron energy                  178.90385104
 Virial quotient                       -2.57719273
 Correlation energy                    -0.90962369
 !MRCI STATE 7.2 Energy              -240.103436274036

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.18707423 (Davidson, fixed reference)
 Cluster corrected energies          -240.18684706 (Davidson, relaxed reference)
 Cluster corrected energies          -240.18707423 (Davidson, rotated reference)

 Cluster corrected energies          -240.18558913 (Pople, fixed reference)
 Cluster corrected energies          -240.18534828 (Pople, relaxed reference)
 Cluster corrected energies          -240.18558913 (Pople, rotated reference)





 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95644690 (fixed)   0.95708132 (relaxed)   0.95697186 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00046466   -0.00074311   -0.79244489
 Singles      0.01134463   -0.04431485   -0.05002554
 Pairs        0.08013797   -0.00025315   -0.06698301
 Total        1.09194726   -0.04531111   -0.90945344
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19381259
 Nuclear energy                         0.00000000
 Kinetic energy                        93.16472921
 One electron energy                 -419.00727550
 Two electron energy                  178.90383924
 Virial quotient                       -2.57719245
 Correlation energy                    -0.90962368
 !MRCI STATE 8.2 Energy              -240.103436264900

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.18707367 (Davidson, fixed reference)
 Cluster corrected energies          -240.18684649 (Davidson, relaxed reference)
 Cluster corrected energies          -240.18707367 (Davidson, rotated reference)

 Cluster corrected energies          -240.18558853 (Pople, fixed reference)
 Cluster corrected energies          -240.18534767 (Pople, relaxed reference)
 Cluster corrected energies          -240.18558853 (Pople, rotated reference)





 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95823003 (fixed)   0.95828347 (relaxed)   0.95823003 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043945   -0.00101838   -0.76430235
 Singles      0.01805216   -0.05995291   -0.06982783
 Pairs        0.07059004    0.00000005   -0.05781838
 Total        1.08908165   -0.06097124   -0.89194856
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.04072229
 Nuclear energy                         0.00000000
 Kinetic energy                        92.88841527
 One electron energy                 -414.51390112
 Two electron energy                  174.58123027
 Virial quotient                       -2.58302039
 Correlation energy                    -0.89194856
 !MRCI STATE 9.2 Energy              -239.932670847873

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.01212710 (Davidson, fixed reference)
 Cluster corrected energies          -240.01201878 (Davidson, relaxed reference)
 Cluster corrected energies          -240.01212710 (Davidson, rotated reference)

 Cluster corrected energies          -240.01052303 (Pople, fixed reference)
 Cluster corrected energies          -240.01040874 (Pople, relaxed reference)
 Cluster corrected energies          -240.01052303 (Pople, rotated reference)





 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.87627719 (fixed)   0.95791065 (relaxed)   0.95785813 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045440   -0.00106427   -0.76583337
 Singles      0.01819549   -0.06028058   -0.07023330
 Pairs        0.07127763   -0.00000006   -0.05851034
 Total        1.08992752   -0.06134491   -0.89457701
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02457568
 Nuclear energy                         0.00000000
 Kinetic energy                        92.91007718
 One electron energy                 -414.62706249
 Two electron energy                  174.70810775
 Virial quotient                       -2.58227054
 Correlation energy                    -0.89437906
 !MRCI STATE 10.2 Energy             -239.918954737488

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99938403 (Davidson, fixed reference)
 Cluster corrected energies          -239.99927714 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99938403 (Davidson, rotated reference)

 Cluster corrected energies          -239.99781795 (Pople, fixed reference)
 Cluster corrected energies          -239.99770500 (Pople, relaxed reference)
 Cluster corrected energies          -239.99781795 (Pople, rotated reference)





 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.88138840 (fixed)   0.95791062 (relaxed)   0.95785810 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045441   -0.00106427   -0.76583324
 Singles      0.01819549   -0.06028062   -0.07023332
 Pairs        0.07127770   -0.00000012   -0.05851045
 Total        1.08992759   -0.06134500   -0.89457701
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02457568
 Nuclear energy                         0.00000000
 Kinetic energy                        92.91007354
 One electron energy                 -414.62706032
 Two electron energy                  174.70810559
 Virial quotient                       -2.58227064
 Correlation energy                    -0.89437906
 !MRCI STATE 11.2 Energy             -239.918954736405

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99938409 (Davidson, fixed reference)
 Cluster corrected energies          -239.99927720 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99938409 (Davidson, rotated reference)

 Cluster corrected energies          -239.99781801 (Pople, fixed reference)
 Cluster corrected energies          -239.99770506 (Pople, relaxed reference)
 Cluster corrected energies          -239.99781801 (Pople, rotated reference)





 RESULTS FOR STATE 12.2
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95382756 (fixed)   0.95791062 (relaxed)   0.95785810 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045440   -0.00106427   -0.76583498
 Singles      0.01819548   -0.06028064   -0.07023331
 Pairs        0.07127770    0.00000184   -0.05850868
 Total        1.08992759   -0.06134307   -0.89457698
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02457568
 Nuclear energy                         0.00000000
 Kinetic energy                        92.91007532
 One electron energy                 -414.62706209
 Two electron energy                  174.70810738
 Virial quotient                       -2.58227059
 Correlation energy                    -0.89437903
 !MRCI STATE 12.2 Energy             -239.918954708013

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99938406 (Davidson, fixed reference)
 Cluster corrected energies          -239.99927716 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99938406 (Davidson, rotated reference)

 Cluster corrected energies          -239.99781798 (Pople, fixed reference)
 Cluster corrected energies          -239.99770503 (Pople, relaxed reference)
 Cluster corrected energies          -239.99781798 (Pople, rotated reference)





 RESULTS FOR STATE 13.2
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.71366272 (fixed)   0.95791069 (relaxed)   0.95785816 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045441   -0.00106427   -0.76583272
 Singles      0.01819575   -0.06028117   -0.07023359
 Pairs        0.07127729   -0.00000018   -0.05851064
 Total        1.08992745   -0.06134562   -0.89457695
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02457568
 Nuclear energy                         0.00000000
 Kinetic energy                        92.91009495
 One electron energy                 -414.62707212
 Two electron energy                  174.70811745
 Virial quotient                       -2.58227004
 Correlation energy                    -0.89437900
 !MRCI STATE 13.2 Energy             -239.918954677318

 Properties without orbital relaxation:

 !MRCI STATE 13.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99938390 (Davidson, fixed reference)
 Cluster corrected energies          -239.99927701 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99938390 (Davidson, rotated reference)

 Cluster corrected energies          -239.99781782 (Pople, fixed reference)
 Cluster corrected energies          -239.99770487 (Pople, relaxed reference)
 Cluster corrected energies          -239.99781782 (Pople, rotated reference)





 RESULTS FOR STATE 14.2
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.72089419 (fixed)   0.95791068 (relaxed)   0.95785816 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045441   -0.00106427   -0.76583279
 Singles      0.01819574   -0.06028117   -0.07023358
 Pairs        0.07127731   -0.00000009   -0.05851058
 Total        1.08992746   -0.06134553   -0.89457695
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02457568
 Nuclear energy                         0.00000000
 Kinetic energy                        92.91009372
 One electron energy                 -414.62707121
 Two electron energy                  174.70811653
 Virial quotient                       -2.58227007
 Correlation energy                    -0.89437899
 !MRCI STATE 14.2 Energy             -239.918954674404

 Properties without orbital relaxation:

 !MRCI STATE 14.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99938391 (Davidson, fixed reference)
 Cluster corrected energies          -239.99927701 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99938391 (Davidson, rotated reference)

 Cluster corrected energies          -239.99781782 (Pople, fixed reference)
 Cluster corrected energies          -239.99770487 (Pople, relaxed reference)
 Cluster corrected energies          -239.99781782 (Pople, rotated reference)





 RESULTS FOR STATE 15.2
 ======================

 Coefficient of reference function:   C(0) = 0.95620163 (fixed)   0.95779307 (relaxed)   0.95773625 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045966   -0.00105144   -0.76526386
 Singles      0.01798200   -0.05948078   -0.06931482
 Pairs        0.07176329   -0.00177180   -0.06055689
 Total        1.09020495   -0.06230402   -0.89513556
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.01732778
 Nuclear energy                         0.00000000
 Kinetic energy                        92.91855185
 One electron energy                 -414.67099287
 Two electron energy                  174.75869977
 Virial quotient                       -2.58196333
 Correlation energy                    -0.89496532
 !MRCI STATE 15.2 Energy             -239.912293104153

 Properties without orbital relaxation:

 !MRCI STATE 15.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99302340 (Davidson, fixed reference)
 Cluster corrected energies          -239.99290764 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99302340 (Davidson, rotated reference)

 Cluster corrected energies          -239.99147045 (Pople, fixed reference)
 Cluster corrected energies          -239.99134807 (Pople, relaxed reference)
 Cluster corrected energies          -239.99147045 (Pople, rotated reference)





 RESULTS FOR STATE 16.2
 ======================

 Coefficient of reference function:   C(0) = 0.95484566 (fixed)   0.95779305 (relaxed)   0.95773623 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045966   -0.00105144   -0.72619167
 Singles      0.01798157   -0.05947992   -0.06931431
 Pairs        0.07176377   -0.04436930   -0.09962958
 Total        1.09020499   -0.10490067   -0.89513555
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.01732778
 Nuclear energy                         0.00000000
 Kinetic energy                        92.91852761
 One electron energy                 -414.67098291
 Two electron energy                  174.75868982
 Virial quotient                       -2.58196400
 Correlation energy                    -0.89496531
 !MRCI STATE 16.2 Energy             -239.912293093095

 Properties without orbital relaxation:

 !MRCI STATE 16.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99302343 (Davidson, fixed reference)
 Cluster corrected energies          -239.99290768 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99302343 (Davidson, rotated reference)

 Cluster corrected energies          -239.99147048 (Pople, fixed reference)
 Cluster corrected energies          -239.99134811 (Pople, relaxed reference)
 Cluster corrected energies          -239.99147048 (Pople, rotated reference)





 RESULTS FOR STATE 17.2
 ======================

 Coefficient of reference function:   C(0) = 0.95591058 (fixed)   0.95779305 (relaxed)   0.95773623 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045966   -0.00105144   -0.00266083
 Singles      0.01798156   -0.05947988   -0.06931426
 Pairs        0.07176377   -0.83316625   -0.82316044
 Total        1.09020499   -0.89369758   -0.89513553
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.01732778
 Nuclear energy                         0.00000000
 Kinetic energy                        92.91852714
 One electron energy                 -414.67098229
 Two electron energy                  174.75868921
 Virial quotient                       -2.58196401
 Correlation energy                    -0.89496530
 !MRCI STATE 17.2 Energy             -239.912293074260

 Properties without orbital relaxation:

 !MRCI STATE 17.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.99302341 (Davidson, fixed reference)
 Cluster corrected energies          -239.99290765 (Davidson, relaxed reference)
 Cluster corrected energies          -239.99302341 (Davidson, rotated reference)

 Cluster corrected energies          -239.99147046 (Pople, fixed reference)
 Cluster corrected energies          -239.99134808 (Pople, relaxed reference)
 Cluster corrected energies          -239.99147046 (Pople, rotated reference)



 !MRCI trans           <2.2|LZ|1.2>    -0.085197028738i
 !MRCI trans           <3.2|LZ|1.2>     0.020859132127i
 !MRCI trans           <3.2|LZ|2.2>     0.013011791557i
 !MRCI trans           <4.2|LZ|1.2>     1.978643978664i
 !MRCI trans           <4.2|LZ|2.2>    -0.276912888915i
 !MRCI trans           <4.2|LZ|3.2>     0.011667759797i
 !MRCI trans           <5.2|LZ|1.2>     0.001515187702i
 !MRCI trans           <5.2|LZ|2.2>     0.002867332446i
 !MRCI trans           <5.2|LZ|3.2>     1.000097450137i
 !MRCI trans           <5.2|LZ|4.2>     0.009095495832i
 !MRCI trans           <6.2|LZ|1.2>     0.000000316632i
 !MRCI trans           <6.2|LZ|2.2>    -0.000000042022i
 !MRCI trans           <6.2|LZ|4.2>    -0.000000040374i
 !MRCI trans           <6.2|LZ|5.2>     0.000000041890i
 !MRCI trans           <7.2|LZ|1.2>     0.000000028786i
 !MRCI trans           <7.2|LZ|3.2>    -0.000000010509i
 !MRCI trans           <7.2|LZ|4.2>     0.000000019797i
 !MRCI trans           <7.2|LZ|5.2>    -0.000000783454i
 !MRCI trans           <7.2|LZ|6.2>    -0.006915676401i
 !MRCI trans           <8.2|LZ|1.2>    -0.000000032518i
 !MRCI trans           <8.2|LZ|2.2>     0.000000012561i
 !MRCI trans           <8.2|LZ|3.2>     0.000000783515i
 !MRCI trans           <8.2|LZ|6.2>     0.063968228565i
 !MRCI trans           <8.2|LZ|7.2>    -0.997927971076i
 !MRCI trans           <9.2|LZ|4.2>     0.000000021756i
 !MRCI trans           <9.2|LZ|7.2>    -0.000000018434i
 !MRCI trans          <10.2|LZ|2.2>    -0.000000012194i
 !MRCI trans          <10.2|LZ|4.2>     0.000000373530i
 !MRCI trans          <10.2|LZ|6.2>     0.000000049017i
 !MRCI trans          <10.2|LZ|7.2>     0.000000011847i
 !MRCI trans          <10.2|LZ|8.2>     0.000000055942i
 !MRCI trans          <10.2|LZ|9.2>     0.000000086387i
 !MRCI trans          <11.2|LZ|1.2>    -0.000000012422i
 !MRCI trans          <11.2|LZ|2.2>    -0.000000011505i
 !MRCI trans          <11.2|LZ|4.2>     0.000000153826i
 !MRCI trans          <11.2|LZ|5.2>    -0.000000023742i
 !MRCI trans          <11.2|LZ|6.2>     0.000000024700i
 !MRCI trans          <11.2|LZ|8.2>    -0.000000131560i
 !MRCI trans          <11.2|LZ|9.2>    -0.000000114519i
 !MRCI trans         <11.2|LZ|10.2>    -0.033464964268i
 !MRCI trans          <12.2|LZ|1.2>     0.000000420539i
 !MRCI trans          <12.2|LZ|5.2>     0.000000013730i
 !MRCI trans          <12.2|LZ|6.2>     0.000000017477i
 !MRCI trans          <12.2|LZ|8.2>     0.000000016038i
 !MRCI trans          <12.2|LZ|9.2>     0.000002559996i
 !MRCI trans         <12.2|LZ|10.2>     1.843621682275i
 !MRCI trans         <12.2|LZ|11.2>     0.683825988401i
 !MRCI trans          <13.2|LZ|1.2>    -0.000000020169i
 !MRCI trans          <13.2|LZ|3.2>     0.000000021525i
 !MRCI trans          <13.2|LZ|4.2>    -0.000000119114i
 !MRCI trans          <13.2|LZ|7.2>    -0.000000092973i
 !MRCI trans          <13.2|LZ|9.2>    -0.000000087410i
 !MRCI trans         <13.2|LZ|10.2>     0.150008806533i
 !MRCI trans         <13.2|LZ|11.2>    -0.652877906688i
 !MRCI trans         <13.2|LZ|12.2>     0.270109473320i
 !MRCI trans          <14.2|LZ|1.2>    -0.000000020847i
 !MRCI trans          <14.2|LZ|3.2>     0.000000012854i
 !MRCI trans          <14.2|LZ|4.2>     0.000000088072i
 !MRCI trans          <14.2|LZ|6.2>     0.000000010813i
 !MRCI trans          <14.2|LZ|7.2>    -0.000000107506i
 !MRCI trans          <14.2|LZ|9.2>    -0.000000031644i
 !MRCI trans         <14.2|LZ|10.2>     0.214627204244i
 !MRCI trans         <14.2|LZ|11.2>    -0.719610768871i
 !MRCI trans         <14.2|LZ|12.2>    -0.205903466854i
 !MRCI trans         <14.2|LZ|13.2>     0.065643721343i
 !MRCI trans          <15.2|LZ|3.2>    -0.000000080530i
 !MRCI trans          <15.2|LZ|9.2>     0.000000066071i
 !MRCI trans         <15.2|LZ|10.2>    -0.000000742093i
 !MRCI trans         <15.2|LZ|11.2>     0.000000418211i
 !MRCI trans         <15.2|LZ|12.2>     0.000000040714i
 !MRCI trans         <15.2|LZ|13.2>    -0.000000054261i
 !MRCI trans          <16.2|LZ|5.2>    -0.000000080585i
 !MRCI trans          <16.2|LZ|9.2>    -0.000000104551i
 !MRCI trans         <16.2|LZ|10.2>     0.000000099576i
 !MRCI trans         <16.2|LZ|11.2>     0.000000020756i
 !MRCI trans         <16.2|LZ|12.2>    -0.000000752803i
 !MRCI trans         <16.2|LZ|13.2>    -0.000000452622i
 !MRCI trans         <16.2|LZ|14.2>    -0.000000427846i
 !MRCI trans         <16.2|LZ|15.2>    -0.998582769892i
 !MRCI trans          <17.2|LZ|1.2>    -0.000000163993i
 !MRCI trans          <17.2|LZ|2.2>     0.000000022137i
 !MRCI trans         <17.2|LZ|10.2>     0.000004494312i
 !MRCI trans         <17.2|LZ|11.2>     0.000001916472i
 !MRCI trans         <17.2|LZ|12.2>     0.000000258832i
 !MRCI trans         <17.2|LZ|13.2>    -0.000000738791i
 !MRCI trans         <17.2|LZ|14.2>     0.000000457906i
 !MRCI trans         <17.2|LZ|15.2>     0.053178367345i
 !MRCI trans         <17.2|LZ|16.2>    -0.002123572665i


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1700(2)
                                         JKOP     OPER   

              2       6     9486.25       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *     28779.97  28641.44    113.67     15.26      9.22
 REAL TIME  *     30008.53 SEC
 DISK USED  *         9.35 GB (local),      300.39 GB (total)
 SF USED    *        89.95 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -240.21659787  AU                              
 SETTING HLSDIAG(3)     =      -240.21659748  AU                              
 SETTING HLSDIAG(4)     =      -240.21659764  AU                              
 SETTING HLSDIAG(5)     =      -240.21659756  AU                              
 SETTING HLSDIAG(6)     =      -240.21659731  AU                              
 SETTING HLSDIAG(7)     =      -240.18707421  AU                              
 SETTING HLSDIAG(8)     =      -240.18707423  AU                              
 SETTING HLSDIAG(9)     =      -240.18707367  AU                              
 SETTING HLSDIAG(10)    =      -240.01212710  AU                              
 SETTING HLSDIAG(11)    =      -239.99938403  AU                              
 SETTING HLSDIAG(12)    =      -239.99938409  AU                              
 SETTING HLSDIAG(13)    =      -239.99938406  AU                              
 SETTING HLSDIAG(14)    =      -239.99938390  AU                              
 SETTING HLSDIAG(15)    =      -239.99938391  AU                              
 SETTING HLSDIAG(16)    =      -239.99302340  AU                              
 SETTING HLSDIAG(17)    =      -239.99302343  AU                              
 SETTING HLSDIAG(18)    =      -239.99302341  AU                              


         HLSDIAG
    -240.2610493
    -240.2165979
    -240.2165975
    -240.2165976
    -240.2165976
    -240.2165973
    -240.1870742
    -240.1870742
    -240.1870737
    -240.0121271
    -239.9993840
    -239.9993841
    -239.9993841
    -239.9993839
    -239.9993839
    -239.9930234
    -239.9930234
    -239.9930234
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -240.180914
 Replaced energies:   -240.261049


 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5302.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 0.5
 Symmetry of ket wavefunction:            2   S= 1.5  MS= 1.5


 !MRCI expec       <1.2|ECPLSX|1.2>     0.000000000000i

 !MRCI overlap           <1.2||1.2>     1.000000000000
 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=  17

 Original energies:   -240.131115   -240.131115   -240.131115   -240.131115   -240.131115   -240.103436   -240.103436   -240.103436
                      -239.932671   -239.918955   -239.918955   -239.918955   -239.918955   -239.918955   -239.912293   -239.912293
                      -239.912293
 Replaced energies:   -240.216598   -240.216597   -240.216598   -240.216598   -240.216597   -240.187074   -240.187074   -240.187074
                      -240.012127   -239.999384   -239.999384   -239.999384   -239.999384   -239.999384   -239.993023   -239.993023
                      -239.993023


 Bra-wavefunction restored from record   5302.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 1.5  MS= 1.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <1.2|ECPLSX|1.2>     0.000000000024i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|2.2>    -0.000000000106i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|3.2>    -0.000000000073i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|4.2>     0.000000000121i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|5.2>    -0.000000001104i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|6.2>    -0.000070033029i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|7.2>     0.000089759730i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|8.2>     0.009275469552i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|9.2>     0.000000000463i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|10.2>    -0.000000000186i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|11.2>     0.000000000054i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|12.2>     0.000000000246i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|13.2>    -0.000000000778i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|14.2>    -0.000000001169i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|15.2>     0.002981069900i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|16.2>    -0.000140773925i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|17.2>     0.000001157270i

 !MRCI expec       <1.2|ECPLSX|1.2>    -0.000000000055i
 !MRCI trans       <1.2|ECPLSX|2.2>    -0.000000000037i
 !MRCI trans       <1.2|ECPLSX|3.2>    -0.000000000085i
 !MRCI trans       <1.2|ECPLSX|4.2>     0.000000000143i
 !MRCI trans       <1.2|ECPLSX|5.2>    -0.000000005756i
 !MRCI trans       <1.2|ECPLSX|6.2>    -0.000071897319i
 !MRCI trans       <1.2|ECPLSX|7.2>     0.000092149018i
 !MRCI trans       <1.2|ECPLSX|8.2>     0.009522386127i
 !MRCI trans       <1.2|ECPLSX|9.2>     0.000000000439i
 !MRCI trans      <1.2|ECPLSX|10.2>    -0.000000000025i
 !MRCI trans      <1.2|ECPLSX|11.2>     0.000000000019i
 !MRCI trans      <1.2|ECPLSX|12.2>     0.000000000551i
 !MRCI trans      <1.2|ECPLSX|13.2>     0.000000002143i
 !MRCI trans      <1.2|ECPLSX|14.2>     0.000000002158i
 !MRCI trans      <1.2|ECPLSX|15.2>     0.002924878631i
 !MRCI trans      <1.2|ECPLSX|16.2>    -0.000138120586i
 !MRCI trans      <1.2|ECPLSX|17.2>     0.000001135410i

 Bra-wavefunction restored from record   5102.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 0.5  MS=-0.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <2.2|ECPLSX|1.2>    -0.000000837508i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|1.2>    -0.000000233221i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|1.2>    -0.000000352003i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|1.2>     0.000028639471i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|1.2>    -0.000002902696i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|1.2>    -0.000122612038i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|1.2>    -0.005963449934i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|1.2>    -0.000000000172i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|1.2>     0.000017833524i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|1.2>    -0.000003467811i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|1.2>     0.000046328163i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|1.2>     0.000495291858i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|1.2>     0.000553540883i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|1.2>    -0.000225617648i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|1.2>     0.000012886449i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|1.2>    -0.000002178878i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|2.2>     0.000000837508i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|2.2>     0.000001021872i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|2.2>    -0.000000072846i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|2.2>     0.000036694559i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|2.2>    -0.000019398734i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|2.2>     0.000337256935i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|2.2>     0.004642306850i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|2.2>     0.000000000047i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|2.2>     0.000047631680i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|2.2>    -0.000032864803i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|2.2>     0.000067717883i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|2.2>     0.000609086564i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|2.2>     0.000728802662i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|2.2>     0.000175296951i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|2.2>    -0.000019220324i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|2.2>     0.000001952940i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|3.2>     0.000000233221i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|3.2>    -0.000001021872i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|3.2>     0.000023257308i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|3.2>     0.000000164174i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|3.2>     0.006544739374i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|3.2>     0.000315840467i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|3.2>    -0.000021318074i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|3.2>    -0.000000000019i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|3.2>    -0.000019929643i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|3.2>    -0.000017604692i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|3.2>     0.000603095823i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|3.2>    -0.000030710736i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|3.2>    -0.000025672111i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|3.2>    -0.000001850502i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|3.2>     0.000017205712i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|3.2>     0.000247661713i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|4.2>     0.000000352003i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|4.2>     0.000000072846i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|4.2>    -0.000023257308i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|4.2>     0.000001346711i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|4.2>     0.000315512908i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|4.2>    -0.006534885238i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|4.2>     0.000328640296i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|4.2>    -0.000000000136i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|4.2>    -0.000229852069i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|4.2>     0.000557050800i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|4.2>     0.000011715437i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|4.2>     0.000007121561i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|4.2>     0.000057122802i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|4.2>     0.000021630845i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|4.2>     0.000246669068i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|4.2>    -0.000017010307i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|5.2>    -0.000028639471i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|5.2>    -0.000036694559i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|5.2>    -0.000000164174i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|5.2>    -0.000001346711i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|5.2>     0.000003884049i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|5.2>    -0.000028905999i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|5.2>     0.000138856460i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|5.2>     0.000000000098i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|5.2>    -0.000402804075i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|5.2>    -0.000113391453i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|5.2>    -0.000003854121i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|5.2>     0.000870683344i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|5.2>    -0.000728370349i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|5.2>     0.000005297837i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|5.2>     0.000000911118i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|5.2>     0.000000053475i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|6.2>     0.000002902696i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|6.2>     0.000019398734i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|6.2>    -0.006544739374i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|6.2>    -0.000315512908i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|6.2>    -0.000003884049i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|6.2>    -0.000016889567i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|6.2>     0.000000163243i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|6.2>    -0.000004837377i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|6.2>     0.000067170743i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|6.2>    -0.000157650662i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|6.2>     0.000005730842i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|6.2>     0.000003103127i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|6.2>    -0.000008266584i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|6.2>    -0.000025947140i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|6.2>    -0.000548931324i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|6.2>     0.000064695555i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|7.2>     0.000122612038i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|7.2>    -0.000337256935i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|7.2>    -0.000315840467i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|7.2>     0.006534885238i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|7.2>     0.000028905999i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|7.2>     0.000016889567i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|7.2>     0.000000127454i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|7.2>     0.000006199879i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|7.2>     0.000007255408i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|7.2>    -0.000003363275i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|7.2>    -0.000171107924i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|7.2>     0.000008570879i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|7.2>     0.000007769433i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|7.2>    -0.000002840633i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|7.2>    -0.000064672441i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|7.2>    -0.000549529618i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|8.2>     0.005963449934i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|8.2>    -0.004642306850i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|8.2>     0.000021318074i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|8.2>    -0.000328640296i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|8.2>    -0.000138856460i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|8.2>    -0.000000163243i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|8.2>    -0.000000127454i
 !MRCI LS_I-I(ECP) <9.2|ECPLSX|8.2>     0.000640667191i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|8.2>    -0.000169951103i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|8.2>    -0.000075661325i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|8.2>    -0.000006478274i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|8.2>    -0.000047980258i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|8.2>     0.000048447553i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|8.2>    -0.000000168425i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|8.2>    -0.000003518909i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|8.2>     0.000005806336i
 !MRCI LS_I-I(ECP) <1.2|ECPLSX|9.2>     0.000000000172i
 !MRCI LS_I-I(ECP) <2.2|ECPLSX|9.2>    -0.000000000047i
 !MRCI LS_I-I(ECP) <3.2|ECPLSX|9.2>     0.000000000019i
 !MRCI LS_I-I(ECP) <4.2|ECPLSX|9.2>     0.000000000136i
 !MRCI LS_I-I(ECP) <5.2|ECPLSX|9.2>    -0.000000000098i
 !MRCI LS_I-I(ECP) <6.2|ECPLSX|9.2>     0.000004837377i
 !MRCI LS_I-I(ECP) <7.2|ECPLSX|9.2>    -0.000006199879i
 !MRCI LS_I-I(ECP) <8.2|ECPLSX|9.2>    -0.000640667191i
 !MRCI LS_I-I(ECP <10.2|ECPLSX|9.2>     0.000000000065i
 !MRCI LS_I-I(ECP <11.2|ECPLSX|9.2>    -0.000000000223i
 !MRCI LS_I-I(ECP <12.2|ECPLSX|9.2>    -0.000000000006i
 !MRCI LS_I-I(ECP <13.2|ECPLSX|9.2>     0.000000001290i
 !MRCI LS_I-I(ECP <14.2|ECPLSX|9.2>     0.000000002547i
 !MRCI LS_I-I(ECP <15.2|ECPLSX|9.2>    -0.005075502683i
 !MRCI LS_I-I(ECP <16.2|ECPLSX|9.2>     0.000239678542i
 !MRCI LS_I-I(ECP <17.2|ECPLSX|9.2>    -0.000001970481i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|10.2>    -0.000017833524i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|10.2>    -0.000047631680i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|10.2>     0.000019929643i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|10.2>     0.000229852069i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|10.2>     0.000402804075i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|10.2>    -0.000067170743i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|10.2>    -0.000007255408i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|10.2>     0.000169951103i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|10.2>    -0.000000000065i
 !MRCI LS_I-I(EC <11.2|ECPLSX|10.2>    -0.000138945877i
 !MRCI LS_I-I(EC <12.2|ECPLSX|10.2>     0.001084922551i
 !MRCI LS_I-I(EC <13.2|ECPLSX|10.2>     0.001164958772i
 !MRCI LS_I-I(EC <14.2|ECPLSX|10.2>     0.001118567674i
 !MRCI LS_I-I(EC <15.2|ECPLSX|10.2>     0.001035979746i
 !MRCI LS_I-I(EC <16.2|ECPLSX|10.2>    -0.000042005506i
 !MRCI LS_I-I(EC <17.2|ECPLSX|10.2>    -0.000404058555i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|11.2>     0.000003467811i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|11.2>     0.000032864803i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|11.2>     0.000017604692i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|11.2>    -0.000557050800i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|11.2>     0.000113391453i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|11.2>     0.000157650662i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|11.2>     0.000003363275i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|11.2>     0.000075661325i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|11.2>     0.000000000223i
 !MRCI LS_I-I(EC <10.2|ECPLSX|11.2>     0.000138945877i
 !MRCI LS_I-I(EC <12.2|ECPLSX|11.2>    -0.002288127119i
 !MRCI LS_I-I(EC <13.2|ECPLSX|11.2>     0.000400692100i
 !MRCI LS_I-I(EC <14.2|ECPLSX|11.2>     0.000497376900i
 !MRCI LS_I-I(EC <15.2|ECPLSX|11.2>     0.000456967992i
 !MRCI LS_I-I(EC <16.2|ECPLSX|11.2>     0.000075185585i
 !MRCI LS_I-I(EC <17.2|ECPLSX|11.2>     0.000958106887i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|12.2>    -0.000046328163i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|12.2>    -0.000067717883i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|12.2>    -0.000603095823i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|12.2>    -0.000011715437i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|12.2>     0.000003854121i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|12.2>    -0.000005730842i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|12.2>     0.000171107924i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|12.2>     0.000006478274i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|12.2>     0.000000000006i
 !MRCI LS_I-I(EC <10.2|ECPLSX|12.2>    -0.001084922551i
 !MRCI LS_I-I(EC <11.2|ECPLSX|12.2>     0.002288127119i
 !MRCI LS_I-I(EC <13.2|ECPLSX|12.2>     0.000216103764i
 !MRCI LS_I-I(EC <14.2|ECPLSX|12.2>    -0.000082908726i
 !MRCI LS_I-I(EC <15.2|ECPLSX|12.2>     0.000000718864i
 !MRCI LS_I-I(EC <16.2|ECPLSX|12.2>    -0.001038786396i
 !MRCI LS_I-I(EC <17.2|ECPLSX|12.2>     0.000087436542i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|13.2>    -0.000495291858i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|13.2>    -0.000609086564i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|13.2>     0.000030710736i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|13.2>    -0.000007121561i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|13.2>    -0.000870683344i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|13.2>    -0.000003103127i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|13.2>    -0.000008570879i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|13.2>     0.000047980258i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|13.2>    -0.000000001290i
 !MRCI LS_I-I(EC <10.2|ECPLSX|13.2>    -0.001164958772i
 !MRCI LS_I-I(EC <11.2|ECPLSX|13.2>    -0.000400692100i
 !MRCI LS_I-I(EC <12.2|ECPLSX|13.2>    -0.000216103764i
 !MRCI LS_I-I(EC <14.2|ECPLSX|13.2>    -0.004736288049i
 !MRCI LS_I-I(EC <15.2|ECPLSX|13.2>     0.000293721209i
 !MRCI LS_I-I(EC <16.2|ECPLSX|13.2>     0.000038834531i
 !MRCI LS_I-I(EC <17.2|ECPLSX|13.2>    -0.000022879650i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|14.2>    -0.000553540883i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|14.2>    -0.000728802662i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|14.2>     0.000025672111i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|14.2>    -0.000057122802i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|14.2>     0.000728370349i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|14.2>     0.000008266584i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|14.2>    -0.000007769433i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|14.2>    -0.000048447553i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|14.2>    -0.000000002547i
 !MRCI LS_I-I(EC <10.2|ECPLSX|14.2>    -0.001118567674i
 !MRCI LS_I-I(EC <11.2|ECPLSX|14.2>    -0.000497376900i
 !MRCI LS_I-I(EC <12.2|ECPLSX|14.2>     0.000082908726i
 !MRCI LS_I-I(EC <13.2|ECPLSX|14.2>     0.004736288049i
 !MRCI LS_I-I(EC <15.2|ECPLSX|14.2>    -0.000292937642i
 !MRCI LS_I-I(EC <16.2|ECPLSX|14.2>     0.000063623543i
 !MRCI LS_I-I(EC <17.2|ECPLSX|14.2>     0.000042428740i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|15.2>     0.000225617648i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|15.2>    -0.000175296951i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|15.2>     0.000001850502i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|15.2>    -0.000021630845i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|15.2>    -0.000005297837i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|15.2>     0.000025947140i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|15.2>     0.000002840633i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|15.2>     0.000000168425i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|15.2>     0.005075502683i
 !MRCI LS_I-I(EC <10.2|ECPLSX|15.2>    -0.001035979746i
 !MRCI LS_I-I(EC <11.2|ECPLSX|15.2>    -0.000456967992i
 !MRCI LS_I-I(EC <12.2|ECPLSX|15.2>    -0.000000718864i
 !MRCI LS_I-I(EC <13.2|ECPLSX|15.2>    -0.000293721209i
 !MRCI LS_I-I(EC <14.2|ECPLSX|15.2>     0.000292937642i
 !MRCI LS_I-I(EC <16.2|ECPLSX|15.2>    -0.000000640228i
 !MRCI LS_I-I(EC <17.2|ECPLSX|15.2>    -0.000077787899i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|16.2>    -0.000012886449i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|16.2>     0.000019220324i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|16.2>    -0.000017205712i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|16.2>    -0.000246669068i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|16.2>    -0.000000911118i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|16.2>     0.000548931324i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|16.2>     0.000064672441i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|16.2>     0.000003518909i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|16.2>    -0.000239678542i
 !MRCI LS_I-I(EC <10.2|ECPLSX|16.2>     0.000042005506i
 !MRCI LS_I-I(EC <11.2|ECPLSX|16.2>    -0.000075185585i
 !MRCI LS_I-I(EC <12.2|ECPLSX|16.2>     0.001038786396i
 !MRCI LS_I-I(EC <13.2|ECPLSX|16.2>    -0.000038834531i
 !MRCI LS_I-I(EC <14.2|ECPLSX|16.2>    -0.000063623543i
 !MRCI LS_I-I(EC <15.2|ECPLSX|16.2>     0.000000640228i
 !MRCI LS_I-I(EC <17.2|ECPLSX|16.2>    -0.001647269040i
 !MRCI LS_I-I(ECP <1.2|ECPLSX|17.2>     0.000002178878i
 !MRCI LS_I-I(ECP <2.2|ECPLSX|17.2>    -0.000001952940i
 !MRCI LS_I-I(ECP <3.2|ECPLSX|17.2>    -0.000247661713i
 !MRCI LS_I-I(ECP <4.2|ECPLSX|17.2>     0.000017010307i
 !MRCI LS_I-I(ECP <5.2|ECPLSX|17.2>    -0.000000053475i
 !MRCI LS_I-I(ECP <6.2|ECPLSX|17.2>    -0.000064695555i
 !MRCI LS_I-I(ECP <7.2|ECPLSX|17.2>     0.000549529618i
 !MRCI LS_I-I(ECP <8.2|ECPLSX|17.2>    -0.000005806336i
 !MRCI LS_I-I(ECP <9.2|ECPLSX|17.2>     0.000001970481i
 !MRCI LS_I-I(EC <10.2|ECPLSX|17.2>     0.000404058555i
 !MRCI LS_I-I(EC <11.2|ECPLSX|17.2>    -0.000958106887i
 !MRCI LS_I-I(EC <12.2|ECPLSX|17.2>    -0.000087436542i
 !MRCI LS_I-I(EC <13.2|ECPLSX|17.2>     0.000022879650i
 !MRCI LS_I-I(EC <14.2|ECPLSX|17.2>    -0.000042428740i
 !MRCI LS_I-I(EC <15.2|ECPLSX|17.2>     0.000077787899i
 !MRCI LS_I-I(EC <16.2|ECPLSX|17.2>     0.001647269040i

 !MRCI expec       <1.2|ECPLSX|1.2>    -0.000000009512i
 !MRCI trans       <2.2|ECPLSX|1.2>    -0.000000715959i
 !MRCI trans       <3.2|ECPLSX|1.2>     0.000004303647i
 !MRCI trans       <4.2|ECPLSX|1.2>    -0.000000586491i
 !MRCI trans       <5.2|ECPLSX|1.2>     0.000021897607i
 !MRCI trans       <6.2|ECPLSX|1.2>    -0.000001397910i
 !MRCI trans       <7.2|ECPLSX|1.2>    -0.000148336097i
 !MRCI trans       <8.2|ECPLSX|1.2>    -0.006171732949i
 !MRCI trans       <9.2|ECPLSX|1.2>     0.000000029059i
 !MRCI trans      <10.2|ECPLSX|1.2>     0.000018201323i
 !MRCI trans      <11.2|ECPLSX|1.2>    -0.000001565652i
 !MRCI trans      <12.2|ECPLSX|1.2>     0.000049981859i
 !MRCI trans      <13.2|ECPLSX|1.2>     0.000531868384i
 !MRCI trans      <14.2|ECPLSX|1.2>     0.000594804424i
 !MRCI trans      <15.2|ECPLSX|1.2>    -0.000076504011i
 !MRCI trans      <16.2|ECPLSX|1.2>     0.000007519138i
 !MRCI trans      <17.2|ECPLSX|1.2>    -0.000000928993i
 !MRCI expec       <2.2|ECPLSX|2.2>    -0.000001289418i
 !MRCI trans       <3.2|ECPLSX|2.2>    -0.000004727767i
 !MRCI trans       <4.2|ECPLSX|2.2>     0.000000024503i
 !MRCI trans       <5.2|ECPLSX|2.2>     0.000033597477i
 !MRCI trans       <6.2|ECPLSX|2.2>    -0.000020921655i
 !MRCI trans       <7.2|ECPLSX|2.2>     0.000368362228i
 !MRCI trans       <8.2|ECPLSX|2.2>     0.004808122551i
 !MRCI trans       <9.2|ECPLSX|2.2>     0.000000463877i
 !MRCI trans      <10.2|ECPLSX|2.2>     0.000052819696i
 !MRCI trans      <11.2|ECPLSX|2.2>    -0.000038274317i
 !MRCI trans      <12.2|ECPLSX|2.2>     0.000072907137i
 !MRCI trans      <13.2|ECPLSX|2.2>     0.000655210317i
 !MRCI trans      <14.2|ECPLSX|2.2>     0.000784362673i
 !MRCI trans      <15.2|ECPLSX|2.2>     0.000057455256i
 !MRCI trans      <16.2|ECPLSX|2.2>    -0.000011980333i
 !MRCI trans      <17.2|ECPLSX|2.2>     0.000001190351i
 !MRCI expec       <3.2|ECPLSX|3.2>     0.000000135143i
 !MRCI trans       <4.2|ECPLSX|3.2>     0.000019931413i
 !MRCI trans       <5.2|ECPLSX|3.2>     0.000000557591i
 !MRCI trans       <6.2|ECPLSX|3.2>     0.006789339763i
 !MRCI trans       <7.2|ECPLSX|3.2>     0.000327558287i
 !MRCI trans       <8.2|ECPLSX|3.2>    -0.000022225454i
 !MRCI trans       <9.2|ECPLSX|3.2>    -0.000002765104i
 !MRCI trans      <10.2|ECPLSX|3.2>    -0.000019977985i
 !MRCI trans      <11.2|ECPLSX|3.2>    -0.000017525360i
 !MRCI trans      <12.2|ECPLSX|3.2>     0.000643572786i
 !MRCI trans      <13.2|ECPLSX|3.2>    -0.000029660935i
 !MRCI trans      <14.2|ECPLSX|3.2>    -0.000030202008i
 !MRCI trans      <15.2|ECPLSX|3.2>    -0.000000690557i
 !MRCI trans      <16.2|ECPLSX|3.2>     0.000007103312i
 !MRCI trans      <17.2|ECPLSX|3.2>     0.000100946774i
 !MRCI expec       <4.2|ECPLSX|4.2>     0.000000361777i
 !MRCI trans       <5.2|ECPLSX|4.2>     0.000016916706i
 !MRCI trans       <6.2|ECPLSX|4.2>     0.000326495992i
 !MRCI trans       <7.2|ECPLSX|4.2>    -0.006767837351i
 !MRCI trans       <8.2|ECPLSX|4.2>     0.000335062407i
 !MRCI trans       <9.2|ECPLSX|4.2>    -0.000000211598i
 !MRCI trans      <10.2|ECPLSX|4.2>    -0.000255401528i
 !MRCI trans      <11.2|ECPLSX|4.2>     0.000619001789i
 !MRCI trans      <12.2|ECPLSX|4.2>     0.000013051159i
 !MRCI trans      <13.2|ECPLSX|4.2>     0.000004480926i
 !MRCI trans      <14.2|ECPLSX|4.2>     0.000060197023i
 !MRCI trans      <15.2|ECPLSX|4.2>     0.000010052066i
 !MRCI trans      <16.2|ECPLSX|4.2>     0.000122309969i
 !MRCI trans      <17.2|ECPLSX|4.2>    -0.000008359493i
 !MRCI expec       <5.2|ECPLSX|5.2>     0.000001672817i
 !MRCI trans       <6.2|ECPLSX|5.2>     0.000004656720i
 !MRCI trans       <7.2|ECPLSX|5.2>    -0.000028680993i
 !MRCI trans       <8.2|ECPLSX|5.2>     0.000149635525i
 !MRCI trans       <9.2|ECPLSX|5.2>    -0.000000483045i
 !MRCI trans      <10.2|ECPLSX|5.2>    -0.000430063555i
 !MRCI trans      <11.2|ECPLSX|5.2>    -0.000120628968i
 !MRCI trans      <12.2|ECPLSX|5.2>    -0.000003623963i
 !MRCI trans      <13.2|ECPLSX|5.2>     0.000928443101i
 !MRCI trans      <14.2|ECPLSX|5.2>    -0.000778378075i
 !MRCI trans      <15.2|ECPLSX|5.2>     0.000004838892i
 !MRCI trans      <16.2|ECPLSX|5.2>     0.000000132284i
 !MRCI trans      <17.2|ECPLSX|5.2>     0.000001121415i
 !MRCI expec       <6.2|ECPLSX|6.2>     0.000004248892i
 !MRCI trans       <7.2|ECPLSX|6.2>    -0.000002797758i
 !MRCI trans       <8.2|ECPLSX|6.2>     0.000002206900i
 !MRCI trans       <9.2|ECPLSX|6.2>    -0.000005160964i
 !MRCI trans      <10.2|ECPLSX|6.2>     0.000019327075i
 !MRCI trans      <11.2|ECPLSX|6.2>    -0.000049027285i
 !MRCI trans      <12.2|ECPLSX|6.2>     0.000003788348i
 !MRCI trans      <13.2|ECPLSX|6.2>     0.000006156740i
 !MRCI trans      <14.2|ECPLSX|6.2>    -0.000001271377i
 !MRCI trans      <15.2|ECPLSX|6.2>    -0.000027995098i
 !MRCI trans      <16.2|ECPLSX|6.2>    -0.000577485372i
 !MRCI trans      <17.2|ECPLSX|6.2>     0.000070115484i
 !MRCI expec       <7.2|ECPLSX|7.2>     0.000000245558i
 !MRCI trans       <8.2|ECPLSX|7.2>    -0.000000865028i
 !MRCI trans       <9.2|ECPLSX|7.2>     0.000009299425i
 !MRCI trans      <10.2|ECPLSX|7.2>     0.000001098407i
 !MRCI trans      <11.2|ECPLSX|7.2>    -0.000001783225i
 !MRCI trans      <12.2|ECPLSX|7.2>    -0.000056926528i
 !MRCI trans      <13.2|ECPLSX|7.2>    -0.000000697417i
 !MRCI trans      <14.2|ECPLSX|7.2>     0.000007027829i
 !MRCI trans      <15.2|ECPLSX|7.2>    -0.000002542920i
 !MRCI trans      <16.2|ECPLSX|7.2>    -0.000068146062i
 !MRCI trans      <17.2|ECPLSX|7.2>    -0.000581620619i
 !MRCI expec       <8.2|ECPLSX|8.2>    -0.000000625078i
 !MRCI trans       <9.2|ECPLSX|8.2>     0.000681934475i
 !MRCI trans      <10.2|ECPLSX|8.2>    -0.000058215090i
 !MRCI trans      <11.2|ECPLSX|8.2>    -0.000027473731i
 !MRCI trans      <12.2|ECPLSX|8.2>    -0.000002637460i
 !MRCI trans      <13.2|ECPLSX|8.2>    -0.000016437199i
 !MRCI trans      <14.2|ECPLSX|8.2>     0.000019103006i
 !MRCI trans      <15.2|ECPLSX|8.2>    -0.000000990121i
 !MRCI trans      <16.2|ECPLSX|8.2>    -0.000002194083i
 !MRCI trans      <17.2|ECPLSX|8.2>     0.000006552757i
 !MRCI expec       <9.2|ECPLSX|9.2>    -0.000000008735i
 !MRCI trans      <10.2|ECPLSX|9.2>     0.000001874705i
 !MRCI trans      <11.2|ECPLSX|9.2>    -0.000004494019i
 !MRCI trans      <12.2|ECPLSX|9.2>     0.000000823975i
 !MRCI trans      <13.2|ECPLSX|9.2>     0.000011428072i
 !MRCI trans      <14.2|ECPLSX|9.2>     0.000012058099i
 !MRCI trans      <15.2|ECPLSX|9.2>    -0.005668191718i
 !MRCI trans      <16.2|ECPLSX|9.2>     0.000259848733i
 !MRCI trans      <17.2|ECPLSX|9.2>    -0.000002063438i
 !MRCI expec     <10.2|ECPLSX|10.2>     0.000001604429i
 !MRCI trans     <11.2|ECPLSX|10.2>    -0.000154986435i
 !MRCI trans     <12.2|ECPLSX|10.2>     0.001196975600i
 !MRCI trans     <13.2|ECPLSX|10.2>     0.001298419912i
 !MRCI trans     <14.2|ECPLSX|10.2>     0.001246490798i
 !MRCI trans     <15.2|ECPLSX|10.2>     0.001134045372i
 !MRCI trans     <16.2|ECPLSX|10.2>    -0.000045688585i
 !MRCI trans     <17.2|ECPLSX|10.2>    -0.000431573092i
 !MRCI expec     <11.2|ECPLSX|11.2>    -0.000003042009i
 !MRCI trans     <12.2|ECPLSX|11.2>    -0.002521992605i
 !MRCI trans     <13.2|ECPLSX|11.2>     0.000442703615i
 !MRCI trans     <14.2|ECPLSX|11.2>     0.000555402868i
 !MRCI trans     <15.2|ECPLSX|11.2>     0.000500544441i
 !MRCI trans     <16.2|ECPLSX|11.2>     0.000081200695i
 !MRCI trans     <17.2|ECPLSX|11.2>     0.001024146947i
 !MRCI expec     <12.2|ECPLSX|12.2>     0.000000772762i
 !MRCI trans     <13.2|ECPLSX|12.2>     0.000233511049i
 !MRCI trans     <14.2|ECPLSX|12.2>    -0.000092069394i
 !MRCI trans     <15.2|ECPLSX|12.2>     0.000007536223i
 !MRCI trans     <16.2|ECPLSX|12.2>    -0.001099542777i
 !MRCI trans     <17.2|ECPLSX|12.2>     0.000090873999i
 !MRCI expec     <13.2|ECPLSX|13.2>    -0.000029627371i
 !MRCI trans     <14.2|ECPLSX|13.2>    -0.005257086132i
 !MRCI trans     <15.2|ECPLSX|13.2>     0.000335092325i
 !MRCI trans     <16.2|ECPLSX|13.2>     0.000044679031i
 !MRCI trans     <17.2|ECPLSX|13.2>    -0.000021245382i
 !MRCI expec     <14.2|ECPLSX|14.2>     0.000024835867i
 !MRCI trans     <15.2|ECPLSX|14.2>    -0.000325424015i
 !MRCI trans     <16.2|ECPLSX|14.2>     0.000064368048i
 !MRCI trans     <17.2|ECPLSX|14.2>     0.000049512619i
 !MRCI expec     <15.2|ECPLSX|15.2>     0.000001112302i
 !MRCI trans     <16.2|ECPLSX|15.2>    -0.000000464124i
 !MRCI trans     <17.2|ECPLSX|15.2>    -0.000087011026i
 !MRCI expec     <16.2|ECPLSX|16.2>     0.000000091196i
 !MRCI trans     <17.2|ECPLSX|16.2>    -0.001830074022i
 !MRCI expec     <17.2|ECPLSX|17.2>    -0.000001578319i

 !MRCI overlap           <1.2||1.2>     1.000000000001
 !MRCI trans           <1.2|LZ|2.2>     0.085197028753i
 !MRCI trans           <1.2|LZ|3.2>    -0.020859132125i
 !MRCI trans           <1.2|LZ|4.2>    -1.978643978671i
 !MRCI trans           <1.2|LZ|5.2>    -0.001515187701i
 !MRCI trans           <1.2|LZ|6.2>    -0.000000316631i
 !MRCI trans           <1.2|LZ|7.2>    -0.000000028789i
 !MRCI trans           <1.2|LZ|8.2>     0.000000032514i
 !MRCI trans          <1.2|LZ|11.2>     0.000000012415i
 !MRCI trans          <1.2|LZ|12.2>    -0.000000420535i
 !MRCI trans          <1.2|LZ|13.2>     0.000000020155i
 !MRCI trans          <1.2|LZ|14.2>     0.000000020861i
 !MRCI trans          <1.2|LZ|17.2>     0.000000163992i
 !MRCI trans           <2.2|LZ|1.2>    -0.085197028753i

 !MRCI overlap           <2.2||2.2>     1.000000000001
 !MRCI trans           <2.2|LZ|3.2>    -0.013011791556i
 !MRCI trans           <2.2|LZ|4.2>     0.276912888911i
 !MRCI trans           <2.2|LZ|5.2>    -0.002867332448i
 !MRCI trans           <2.2|LZ|6.2>     0.000000042023i
 !MRCI trans           <2.2|LZ|8.2>    -0.000000012562i
 !MRCI trans          <2.2|LZ|10.2>     0.000000012191i
 !MRCI trans          <2.2|LZ|11.2>     0.000000011515i
 !MRCI trans          <2.2|LZ|17.2>    -0.000000022140i
 !MRCI trans           <3.2|LZ|1.2>     0.020859132125i
 !MRCI trans           <3.2|LZ|2.2>     0.013011791556i

 !MRCI overlap           <3.2||3.2>     1.000000000001
 !MRCI trans           <3.2|LZ|4.2>    -0.011667759797i
 !MRCI trans           <3.2|LZ|5.2>    -1.000097450142i
 !MRCI trans           <3.2|LZ|7.2>     0.000000010497i
 !MRCI trans           <3.2|LZ|8.2>    -0.000000783511i
 !MRCI trans          <3.2|LZ|13.2>    -0.000000021517i
 !MRCI trans          <3.2|LZ|14.2>    -0.000000012856i
 !MRCI trans          <3.2|LZ|15.2>     0.000000080532i
 !MRCI trans           <4.2|LZ|1.2>     1.978643978671i
 !MRCI trans           <4.2|LZ|2.2>    -0.276912888911i
 !MRCI trans           <4.2|LZ|3.2>     0.011667759797i

 !MRCI overlap           <4.2||4.2>     1.000000000000
 !MRCI trans           <4.2|LZ|5.2>    -0.009095495833i
 !MRCI trans           <4.2|LZ|6.2>     0.000000040367i
 !MRCI trans           <4.2|LZ|7.2>    -0.000000019800i
 !MRCI trans           <4.2|LZ|9.2>    -0.000000021754i
 !MRCI trans          <4.2|LZ|10.2>    -0.000000373534i
 !MRCI trans          <4.2|LZ|11.2>    -0.000000153828i
 !MRCI trans          <4.2|LZ|13.2>     0.000000119114i
 !MRCI trans          <4.2|LZ|14.2>    -0.000000088083i
 !MRCI trans           <5.2|LZ|1.2>     0.001515187701i
 !MRCI trans           <5.2|LZ|2.2>     0.002867332448i
 !MRCI trans           <5.2|LZ|3.2>     1.000097450142i
 !MRCI trans           <5.2|LZ|4.2>     0.009095495833i

 !MRCI overlap           <5.2||5.2>     1.000000000001
 !MRCI trans           <5.2|LZ|6.2>    -0.000000041892i
 !MRCI trans           <5.2|LZ|7.2>     0.000000783454i
 !MRCI trans          <5.2|LZ|11.2>     0.000000023747i
 !MRCI trans          <5.2|LZ|12.2>    -0.000000013737i
 !MRCI trans          <5.2|LZ|16.2>     0.000000080582i
 !MRCI trans           <6.2|LZ|1.2>     0.000000316631i
 !MRCI trans           <6.2|LZ|2.2>    -0.000000042023i
 !MRCI trans           <6.2|LZ|4.2>    -0.000000040367i
 !MRCI trans           <6.2|LZ|5.2>     0.000000041892i

 !MRCI overlap           <6.2||6.2>     1.000000000000
 !MRCI trans           <6.2|LZ|7.2>     0.006915676398i
 !MRCI trans           <6.2|LZ|8.2>    -0.063968228564i
 !MRCI trans          <6.2|LZ|10.2>    -0.000000049016i
 !MRCI trans          <6.2|LZ|11.2>    -0.000000024699i
 !MRCI trans          <6.2|LZ|12.2>    -0.000000017512i
 !MRCI trans          <6.2|LZ|14.2>    -0.000000010808i
 !MRCI trans           <7.2|LZ|1.2>     0.000000028789i
 !MRCI trans           <7.2|LZ|3.2>    -0.000000010497i
 !MRCI trans           <7.2|LZ|4.2>     0.000000019800i
 !MRCI trans           <7.2|LZ|5.2>    -0.000000783454i
 !MRCI trans           <7.2|LZ|6.2>    -0.006915676398i

 !MRCI overlap           <7.2||7.2>     1.000000000000
 !MRCI trans           <7.2|LZ|8.2>     0.997927971077i
 !MRCI trans           <7.2|LZ|9.2>     0.000000018426i
 !MRCI trans          <7.2|LZ|10.2>    -0.000000011828i
 !MRCI trans          <7.2|LZ|13.2>     0.000000092973i
 !MRCI trans          <7.2|LZ|14.2>     0.000000107508i
 !MRCI trans           <8.2|LZ|1.2>    -0.000000032514i
 !MRCI trans           <8.2|LZ|2.2>     0.000000012562i
 !MRCI trans           <8.2|LZ|3.2>     0.000000783511i
 !MRCI trans           <8.2|LZ|6.2>     0.063968228564i
 !MRCI trans           <8.2|LZ|7.2>    -0.997927971077i

 !MRCI overlap           <8.2||8.2>     1.000000000001
 !MRCI trans          <8.2|LZ|10.2>    -0.000000055947i
 !MRCI trans          <8.2|LZ|11.2>     0.000000131556i
 !MRCI trans          <8.2|LZ|12.2>    -0.000000016034i
 !MRCI trans           <9.2|LZ|4.2>     0.000000021754i
 !MRCI trans           <9.2|LZ|7.2>    -0.000000018426i

 !MRCI overlap           <9.2||9.2>     1.000000000003
 !MRCI trans          <9.2|LZ|10.2>    -0.000000086400i
 !MRCI trans          <9.2|LZ|11.2>     0.000000114531i
 !MRCI trans          <9.2|LZ|12.2>    -0.000002559995i
 !MRCI trans          <9.2|LZ|13.2>     0.000000087454i
 !MRCI trans          <9.2|LZ|14.2>     0.000000031600i
 !MRCI trans          <9.2|LZ|15.2>    -0.000000066079i
 !MRCI trans          <9.2|LZ|16.2>     0.000000104566i
 !MRCI trans          <10.2|LZ|2.2>    -0.000000012191i
 !MRCI trans          <10.2|LZ|4.2>     0.000000373534i
 !MRCI trans          <10.2|LZ|6.2>     0.000000049016i
 !MRCI trans          <10.2|LZ|7.2>     0.000000011828i
 !MRCI trans          <10.2|LZ|8.2>     0.000000055947i
 !MRCI trans          <10.2|LZ|9.2>     0.000000086400i

 !MRCI overlap         <10.2||10.2>     1.000000000004
 !MRCI trans         <10.2|LZ|11.2>     0.033464964268i
 !MRCI trans         <10.2|LZ|12.2>    -1.843621682280i
 !MRCI trans         <10.2|LZ|13.2>    -0.150008806572i
 !MRCI trans         <10.2|LZ|14.2>    -0.214627204213i
 !MRCI trans         <10.2|LZ|15.2>     0.000000742086i
 !MRCI trans         <10.2|LZ|16.2>    -0.000000099609i
 !MRCI trans         <10.2|LZ|17.2>    -0.000004494303i
 !MRCI trans          <11.2|LZ|1.2>    -0.000000012415i
 !MRCI trans          <11.2|LZ|2.2>    -0.000000011515i
 !MRCI trans          <11.2|LZ|4.2>     0.000000153828i
 !MRCI trans          <11.2|LZ|5.2>    -0.000000023747i
 !MRCI trans          <11.2|LZ|6.2>     0.000000024699i
 !MRCI trans          <11.2|LZ|8.2>    -0.000000131556i
 !MRCI trans          <11.2|LZ|9.2>    -0.000000114531i
 !MRCI trans         <11.2|LZ|10.2>    -0.033464964268i

 !MRCI overlap         <11.2||11.2>     1.000000000002
 !MRCI trans         <11.2|LZ|12.2>    -0.683825988402i
 !MRCI trans         <11.2|LZ|13.2>     0.652877906670i
 !MRCI trans         <11.2|LZ|14.2>     0.719610768888i
 !MRCI trans         <11.2|LZ|15.2>    -0.000000418212i
 !MRCI trans         <11.2|LZ|16.2>    -0.000000020692i
 !MRCI trans         <11.2|LZ|17.2>    -0.000001916485i
 !MRCI trans          <12.2|LZ|1.2>     0.000000420535i
 !MRCI trans          <12.2|LZ|5.2>     0.000000013737i
 !MRCI trans          <12.2|LZ|6.2>     0.000000017512i
 !MRCI trans          <12.2|LZ|8.2>     0.000000016034i
 !MRCI trans          <12.2|LZ|9.2>     0.000002559995i
 !MRCI trans         <12.2|LZ|10.2>     1.843621682280i
 !MRCI trans         <12.2|LZ|11.2>     0.683825988402i

 !MRCI overlap         <12.2||12.2>     1.000000000002
 !MRCI trans         <12.2|LZ|13.2>    -0.270109473325i
 !MRCI trans         <12.2|LZ|14.2>     0.205903466859i
 !MRCI trans         <12.2|LZ|15.2>    -0.000000040698i
 !MRCI trans         <12.2|LZ|16.2>     0.000000752800i
 !MRCI trans         <12.2|LZ|17.2>    -0.000000258876i
 !MRCI trans          <13.2|LZ|1.2>    -0.000000020155i
 !MRCI trans          <13.2|LZ|3.2>     0.000000021517i
 !MRCI trans          <13.2|LZ|4.2>    -0.000000119114i
 !MRCI trans          <13.2|LZ|7.2>    -0.000000092973i
 !MRCI trans          <13.2|LZ|9.2>    -0.000000087454i
 !MRCI trans         <13.2|LZ|10.2>     0.150008806572i
 !MRCI trans         <13.2|LZ|11.2>    -0.652877906670i
 !MRCI trans         <13.2|LZ|12.2>     0.270109473325i

 !MRCI overlap         <13.2||13.2>     1.000000000007
 !MRCI trans         <13.2|LZ|14.2>    -0.065643721350i
 !MRCI trans         <13.2|LZ|15.2>     0.000000054288i
 !MRCI trans         <13.2|LZ|16.2>     0.000000452618i
 !MRCI trans         <13.2|LZ|17.2>     0.000000738796i
 !MRCI trans          <14.2|LZ|1.2>    -0.000000020861i
 !MRCI trans          <14.2|LZ|3.2>     0.000000012856i
 !MRCI trans          <14.2|LZ|4.2>     0.000000088083i
 !MRCI trans          <14.2|LZ|6.2>     0.000000010808i
 !MRCI trans          <14.2|LZ|7.2>    -0.000000107508i
 !MRCI trans          <14.2|LZ|9.2>    -0.000000031600i
 !MRCI trans         <14.2|LZ|10.2>     0.214627204213i
 !MRCI trans         <14.2|LZ|11.2>    -0.719610768888i
 !MRCI trans         <14.2|LZ|12.2>    -0.205903466859i
 !MRCI trans         <14.2|LZ|13.2>     0.065643721350i

 !MRCI overlap         <14.2||14.2>     0.999999999994
 !MRCI trans         <14.2|LZ|16.2>     0.000000427847i
 !MRCI trans         <14.2|LZ|17.2>    -0.000000457908i
 !MRCI trans          <15.2|LZ|3.2>    -0.000000080532i
 !MRCI trans          <15.2|LZ|9.2>     0.000000066079i
 !MRCI trans         <15.2|LZ|10.2>    -0.000000742086i
 !MRCI trans         <15.2|LZ|11.2>     0.000000418212i
 !MRCI trans         <15.2|LZ|12.2>     0.000000040698i
 !MRCI trans         <15.2|LZ|13.2>    -0.000000054288i

 !MRCI overlap         <15.2||15.2>     1.000000000001
 !MRCI trans         <15.2|LZ|16.2>     0.998582769894i
 !MRCI trans         <15.2|LZ|17.2>    -0.053178367331i
 !MRCI trans          <16.2|LZ|5.2>    -0.000000080582i
 !MRCI trans          <16.2|LZ|9.2>    -0.000000104566i
 !MRCI trans         <16.2|LZ|10.2>     0.000000099609i
 !MRCI trans         <16.2|LZ|11.2>     0.000000020692i
 !MRCI trans         <16.2|LZ|12.2>    -0.000000752800i
 !MRCI trans         <16.2|LZ|13.2>    -0.000000452618i
 !MRCI trans         <16.2|LZ|14.2>    -0.000000427847i
 !MRCI trans         <16.2|LZ|15.2>    -0.998582769894i

 !MRCI overlap         <16.2||16.2>     1.000000000002
 !MRCI trans         <16.2|LZ|17.2>     0.002123572681i
 !MRCI trans          <17.2|LZ|1.2>    -0.000000163992i
 !MRCI trans          <17.2|LZ|2.2>     0.000000022140i
 !MRCI trans         <17.2|LZ|10.2>     0.000004494303i
 !MRCI trans         <17.2|LZ|11.2>     0.000001916485i
 !MRCI trans         <17.2|LZ|12.2>     0.000000258876i
 !MRCI trans         <17.2|LZ|13.2>    -0.000000738796i
 !MRCI trans         <17.2|LZ|14.2>     0.000000457908i
 !MRCI trans         <17.2|LZ|15.2>     0.053178367331i
 !MRCI trans         <17.2|LZ|16.2>    -0.002123572681i

 !MRCI overlap         <17.2||17.2>     1.000000000001

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

 !MRCI LS_I-I(ECP) <1.2|ECPLSY|1.2>     0.000000000066
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|2.2>    -0.000000000063
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|3.2>    -0.000000006471
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|4.2>     0.000000000048
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|5.2>     0.000000000097
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|6.2>    -0.000592714645
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|7.2>     0.009256735767
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|8.2>    -0.000094053594
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|9.2>    -0.000000000135
 !MRCI LS_I-I(ECP <1.2|ECPLSY|10.2>     0.000000002761
 !MRCI LS_I-I(ECP <1.2|ECPLSY|11.2>    -0.000000004186
 !MRCI LS_I-I(ECP <1.2|ECPLSY|12.2>    -0.000000000410
 !MRCI LS_I-I(ECP <1.2|ECPLSY|13.2>     0.000000000230
 !MRCI LS_I-I(ECP <1.2|ECPLSY|14.2>    -0.000000000285
 !MRCI LS_I-I(ECP <1.2|ECPLSY|15.2>    -0.000140636049
 !MRCI LS_I-I(ECP <1.2|ECPLSY|16.2>    -0.002976844667
 !MRCI LS_I-I(ECP <1.2|ECPLSY|17.2>     0.000158827518

 !MRCI expec       <1.2|ECPLSY|1.2>     0.000000000111
 !MRCI trans       <1.2|ECPLSY|2.2>    -0.000000000045
 !MRCI trans       <1.2|ECPLSY|3.2>    -0.000000010780
 !MRCI trans       <1.2|ECPLSY|4.2>     0.000000000106
 !MRCI trans       <1.2|ECPLSY|5.2>     0.000000000117
 !MRCI trans       <1.2|ECPLSY|6.2>    -0.000608493970
 !MRCI trans       <1.2|ECPLSY|7.2>     0.009503170203
 !MRCI trans       <1.2|ECPLSY|8.2>    -0.000096557419
 !MRCI trans       <1.2|ECPLSY|9.2>    -0.000000000156
 !MRCI trans      <1.2|ECPLSY|10.2>     0.000000002946
 !MRCI trans      <1.2|ECPLSY|11.2>    -0.000000004701
 !MRCI trans      <1.2|ECPLSY|12.2>    -0.000000000415
 !MRCI trans      <1.2|ECPLSY|13.2>     0.000000000237
 !MRCI trans      <1.2|ECPLSY|14.2>    -0.000000000290
 !MRCI trans      <1.2|ECPLSY|15.2>    -0.000137985400
 !MRCI trans      <1.2|ECPLSY|16.2>    -0.002920734918
 !MRCI trans      <1.2|ECPLSY|17.2>     0.000155833774

 Bra-wavefunction restored from record   5102.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 0.5  MS=-0.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <2.2|ECPLSY|1.2>     0.000000243836
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|1.2>    -0.000017462898
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|1.2>     0.000000520642
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|1.2>    -0.000000219154
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|1.2>     0.000381840299
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|1.2>    -0.007001323876
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|1.2>     0.000132344821
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|1.2>    -0.000000000106
 !MRCI LS_I-I(ECP <10.2|ECPLSY|1.2>    -0.000181248056
 !MRCI LS_I-I(ECP <11.2|ECPLSY|1.2>     0.000415042635
 !MRCI LS_I-I(ECP <12.2|ECPLSY|1.2>     0.000019285698
 !MRCI LS_I-I(ECP <13.2|ECPLSY|1.2>    -0.000018239018
 !MRCI LS_I-I(ECP <14.2|ECPLSY|1.2>     0.000019997923
 !MRCI LS_I-I(ECP <15.2|ECPLSY|1.2>     0.000014850523
 !MRCI LS_I-I(ECP <16.2|ECPLSY|1.2>     0.000264780077
 !MRCI LS_I-I(ECP <17.2|ECPLSY|1.2>    -0.000016632516
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|2.2>    -0.000000243836
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|2.2>     0.000043103258
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|2.2>    -0.000001066498
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|2.2>     0.000001046289
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|2.2>     0.000292180854
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|2.2>    -0.002829648269
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|2.2>    -0.000261153256
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|2.2>     0.000000000070
 !MRCI LS_I-I(ECP <10.2|ECPLSY|2.2>     0.000437487868
 !MRCI LS_I-I(ECP <11.2|ECPLSY|2.2>    -0.001029313291
 !MRCI LS_I-I(ECP <12.2|ECPLSY|2.2>    -0.000042344714
 !MRCI LS_I-I(ECP <13.2|ECPLSY|2.2>     0.000043270388
 !MRCI LS_I-I(ECP <14.2|ECPLSY|2.2>    -0.000030992650
 !MRCI LS_I-I(ECP <15.2|ECPLSY|2.2>    -0.000005923578
 !MRCI LS_I-I(ECP <16.2|ECPLSY|2.2>     0.000108063591
 !MRCI LS_I-I(ECP <17.2|ECPLSY|2.2>    -0.000001615486
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|3.2>     0.000017462898
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|3.2>    -0.000043103258
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|3.2>    -0.000002082074
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|3.2>    -0.000001268162
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|3.2>     0.000004330777
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|3.2>    -0.000040451841
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|3.2>     0.000103222853
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|3.2>     0.000000001905
 !MRCI LS_I-I(ECP <10.2|ECPLSY|3.2>     0.000695836115
 !MRCI LS_I-I(ECP <11.2|ECPLSY|3.2>     0.000343866854
 !MRCI LS_I-I(ECP <12.2|ECPLSY|3.2>     0.000040206608
 !MRCI LS_I-I(ECP <13.2|ECPLSY|3.2>     0.000679502090
 !MRCI LS_I-I(ECP <14.2|ECPLSY|3.2>    -0.000630998749
 !MRCI LS_I-I(ECP <15.2|ECPLSY|3.2>     0.000003964862
 !MRCI LS_I-I(ECP <16.2|ECPLSY|3.2>     0.000001397268
 !MRCI LS_I-I(ECP <17.2|ECPLSY|3.2>     0.000000010013
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|4.2>    -0.000000520642
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|4.2>     0.000001066498
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|4.2>     0.000002082074
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|4.2>    -0.000023243380
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|4.2>    -0.000009739756
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|4.2>     0.000006270844
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|4.2>     0.006545045022
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|4.2>     0.000000000120
 !MRCI LS_I-I(ECP <10.2|ECPLSY|4.2>    -0.000009242010
 !MRCI LS_I-I(ECP <11.2|ECPLSY|4.2>    -0.000048501283
 !MRCI LS_I-I(ECP <12.2|ECPLSY|4.2>    -0.000046990552
 !MRCI LS_I-I(ECP <13.2|ECPLSY|4.2>    -0.000404313605
 !MRCI LS_I-I(ECP <14.2|ECPLSY|4.2>    -0.000447633956
 !MRCI LS_I-I(ECP <15.2|ECPLSY|4.2>     0.000247802368
 !MRCI LS_I-I(ECP <16.2|ECPLSY|4.2>    -0.000009376158
 !MRCI LS_I-I(ECP <17.2|ECPLSY|4.2>     0.000001336230
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|5.2>     0.000000219154
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|5.2>    -0.000001046289
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|5.2>     0.000001268162
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|5.2>     0.000023243380
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|5.2>    -0.006539104155
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|5.2>    -0.000395756399
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|5.2>    -0.000015038890
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|5.2>    -0.000000000044
 !MRCI LS_I-I(ECP <10.2|ECPLSY|5.2>    -0.000007170154
 !MRCI LS_I-I(ECP <11.2|ECPLSY|5.2>    -0.000047782674
 !MRCI LS_I-I(ECP <12.2|ECPLSY|5.2>     0.000601784756
 !MRCI LS_I-I(ECP <13.2|ECPLSY|5.2>    -0.000032226403
 !MRCI LS_I-I(ECP <14.2|ECPLSY|5.2>    -0.000030866776
 !MRCI LS_I-I(ECP <15.2|ECPLSY|5.2>     0.000000586101
 !MRCI LS_I-I(ECP <16.2|ECPLSY|5.2>    -0.000014125034
 !MRCI LS_I-I(ECP <17.2|ECPLSY|5.2>    -0.000247808988
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|6.2>    -0.000381840299
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|6.2>    -0.000292180854
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|6.2>    -0.000004330777
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|6.2>     0.000009739756
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|6.2>     0.006539104155
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|6.2>    -0.000000171331
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|6.2>    -0.000016846689
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|6.2>     0.000040939494
 !MRCI LS_I-I(ECP <10.2|ECPLSY|6.2>     0.000003611153
 !MRCI LS_I-I(ECP <11.2|ECPLSY|6.2>     0.000005272942
 !MRCI LS_I-I(ECP <12.2|ECPLSY|6.2>    -0.000012722333
 !MRCI LS_I-I(ECP <13.2|ECPLSY|6.2>    -0.000118221832
 !MRCI LS_I-I(ECP <14.2|ECPLSY|6.2>    -0.000123841802
 !MRCI LS_I-I(ECP <15.2|ECPLSY|6.2>     0.000551600273
 !MRCI LS_I-I(ECP <16.2|ECPLSY|6.2>    -0.000025825471
 !MRCI LS_I-I(ECP <17.2|ECPLSY|6.2>     0.000004385867
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|7.2>     0.007001323876
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|7.2>     0.002829648269
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|7.2>     0.000040451841
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|7.2>    -0.000006270844
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|7.2>     0.000395756399
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|7.2>     0.000000171331
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|7.2>    -0.000001078657
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|7.2>    -0.000639371976
 !MRCI LS_I-I(ECP <10.2|ECPLSY|7.2>    -0.000142335007
 !MRCI LS_I-I(ECP <11.2|ECPLSY|7.2>    -0.000053540126
 !MRCI LS_I-I(ECP <12.2|ECPLSY|7.2>    -0.000003856775
 !MRCI LS_I-I(ECP <13.2|ECPLSY|7.2>     0.000091348625
 !MRCI LS_I-I(ECP <14.2|ECPLSY|7.2>    -0.000088178110
 !MRCI LS_I-I(ECP <15.2|ECPLSY|7.2>     0.000035346341
 !MRCI LS_I-I(ECP <16.2|ECPLSY|7.2>    -0.000001954450
 !MRCI LS_I-I(ECP <17.2|ECPLSY|7.2>    -0.000005333207
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|8.2>    -0.000132344821
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|8.2>     0.000261153256
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|8.2>    -0.000103222853
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|8.2>    -0.006545045022
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|8.2>     0.000015038890
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|8.2>     0.000016846689
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|8.2>     0.000001078657
 !MRCI LS_I-I(ECP) <9.2|ECPLSY|8.2>     0.000006496329
 !MRCI LS_I-I(ECP <10.2|ECPLSY|8.2>    -0.000003267194
 !MRCI LS_I-I(ECP <11.2|ECPLSY|8.2>    -0.000006927068
 !MRCI LS_I-I(ECP <12.2|ECPLSY|8.2>     0.000171007020
 !MRCI LS_I-I(ECP <13.2|ECPLSY|8.2>    -0.000010618629
 !MRCI LS_I-I(ECP <14.2|ECPLSY|8.2>    -0.000007872619
 !MRCI LS_I-I(ECP <15.2|ECPLSY|8.2>     0.000002647513
 !MRCI LS_I-I(ECP <16.2|ECPLSY|8.2>    -0.000029604499
 !MRCI LS_I-I(ECP <17.2|ECPLSY|8.2>    -0.000552522666
 !MRCI LS_I-I(ECP) <1.2|ECPLSY|9.2>     0.000000000106
 !MRCI LS_I-I(ECP) <2.2|ECPLSY|9.2>    -0.000000000070
 !MRCI LS_I-I(ECP) <3.2|ECPLSY|9.2>    -0.000000001905
 !MRCI LS_I-I(ECP) <4.2|ECPLSY|9.2>    -0.000000000120
 !MRCI LS_I-I(ECP) <5.2|ECPLSY|9.2>     0.000000000044
 !MRCI LS_I-I(ECP) <6.2|ECPLSY|9.2>    -0.000040939494
 !MRCI LS_I-I(ECP) <7.2|ECPLSY|9.2>     0.000639371976
 !MRCI LS_I-I(ECP) <8.2|ECPLSY|9.2>    -0.000006496329
 !MRCI LS_I-I(ECP <10.2|ECPLSY|9.2>     0.000000001602
 !MRCI LS_I-I(ECP <11.2|ECPLSY|9.2>     0.000000001364
 !MRCI LS_I-I(ECP <12.2|ECPLSY|9.2>    -0.000000000357
 !MRCI LS_I-I(ECP <13.2|ECPLSY|9.2>     0.000000000610
 !MRCI LS_I-I(ECP <14.2|ECPLSY|9.2>    -0.000000000091
 !MRCI LS_I-I(ECP <15.2|ECPLSY|9.2>    -0.000239443520
 !MRCI LS_I-I(ECP <16.2|ECPLSY|9.2>    -0.005068305370
 !MRCI LS_I-I(ECP <17.2|ECPLSY|9.2>     0.000270416066
 !MRCI LS_I-I(ECP <1.2|ECPLSY|10.2>     0.000181248056
 !MRCI LS_I-I(ECP <2.2|ECPLSY|10.2>    -0.000437487868
 !MRCI LS_I-I(ECP <3.2|ECPLSY|10.2>    -0.000695836115
 !MRCI LS_I-I(ECP <4.2|ECPLSY|10.2>     0.000009242010
 !MRCI LS_I-I(ECP <5.2|ECPLSY|10.2>     0.000007170154
 !MRCI LS_I-I(ECP <6.2|ECPLSY|10.2>    -0.000003611153
 !MRCI LS_I-I(ECP <7.2|ECPLSY|10.2>     0.000142335007
 !MRCI LS_I-I(ECP <8.2|ECPLSY|10.2>     0.000003267194
 !MRCI LS_I-I(ECP <9.2|ECPLSY|10.2>    -0.000000001602
 !MRCI LS_I-I(EC <11.2|ECPLSY|10.2>     0.003227967622
 !MRCI LS_I-I(EC <12.2|ECPLSY|10.2>     0.000241312873
 !MRCI LS_I-I(EC <13.2|ECPLSY|10.2>     0.001091203663
 !MRCI LS_I-I(EC <14.2|ECPLSY|10.2>    -0.000833050686
 !MRCI LS_I-I(EC <15.2|ECPLSY|10.2>    -0.000012318210
 !MRCI LS_I-I(EC <16.2|ECPLSY|10.2>    -0.000862770208
 !MRCI LS_I-I(EC <17.2|ECPLSY|10.2>     0.000079628991
 !MRCI LS_I-I(ECP <1.2|ECPLSY|11.2>    -0.000415042635
 !MRCI LS_I-I(ECP <2.2|ECPLSY|11.2>     0.001029313291
 !MRCI LS_I-I(ECP <3.2|ECPLSY|11.2>    -0.000343866854
 !MRCI LS_I-I(ECP <4.2|ECPLSY|11.2>     0.000048501283
 !MRCI LS_I-I(ECP <5.2|ECPLSY|11.2>     0.000047782674
 !MRCI LS_I-I(ECP <6.2|ECPLSY|11.2>    -0.000005272942
 !MRCI LS_I-I(ECP <7.2|ECPLSY|11.2>     0.000053540126
 !MRCI LS_I-I(ECP <8.2|ECPLSY|11.2>     0.000006927068
 !MRCI LS_I-I(ECP <9.2|ECPLSY|11.2>    -0.000000001364
 !MRCI LS_I-I(EC <10.2|ECPLSY|11.2>    -0.003227967622
 !MRCI LS_I-I(EC <12.2|ECPLSY|11.2>    -0.000132609965
 !MRCI LS_I-I(EC <13.2|ECPLSY|11.2>    -0.002591666308
 !MRCI LS_I-I(EC <14.2|ECPLSY|11.2>     0.002545694092
 !MRCI LS_I-I(EC <15.2|ECPLSY|11.2>     0.000030069683
 !MRCI LS_I-I(EC <16.2|ECPLSY|11.2>    -0.000328599606
 !MRCI LS_I-I(EC <17.2|ECPLSY|11.2>     0.000006533408
 !MRCI LS_I-I(ECP <1.2|ECPLSY|12.2>    -0.000019285698
 !MRCI LS_I-I(ECP <2.2|ECPLSY|12.2>     0.000042344714
 !MRCI LS_I-I(ECP <3.2|ECPLSY|12.2>    -0.000040206608
 !MRCI LS_I-I(ECP <4.2|ECPLSY|12.2>     0.000046990552
 !MRCI LS_I-I(ECP <5.2|ECPLSY|12.2>    -0.000601784756
 !MRCI LS_I-I(ECP <6.2|ECPLSY|12.2>     0.000012722333
 !MRCI LS_I-I(ECP <7.2|ECPLSY|12.2>     0.000003856775
 !MRCI LS_I-I(ECP <8.2|ECPLSY|12.2>    -0.000171007020
 !MRCI LS_I-I(ECP <9.2|ECPLSY|12.2>     0.000000000357
 !MRCI LS_I-I(EC <10.2|ECPLSY|12.2>    -0.000241312873
 !MRCI LS_I-I(EC <11.2|ECPLSY|12.2>     0.000132609965
 !MRCI LS_I-I(EC <13.2|ECPLSY|12.2>    -0.001745789025
 !MRCI LS_I-I(EC <14.2|ECPLSY|12.2>    -0.001816418930
 !MRCI LS_I-I(EC <15.2|ECPLSY|12.2>    -0.001040817933
 !MRCI LS_I-I(EC <16.2|ECPLSY|12.2>     0.000023950466
 !MRCI LS_I-I(EC <17.2|ECPLSY|12.2>     0.000072593875
 !MRCI LS_I-I(ECP <1.2|ECPLSY|13.2>     0.000018239018
 !MRCI LS_I-I(ECP <2.2|ECPLSY|13.2>    -0.000043270388
 !MRCI LS_I-I(ECP <3.2|ECPLSY|13.2>    -0.000679502090
 !MRCI LS_I-I(ECP <4.2|ECPLSY|13.2>     0.000404313605
 !MRCI LS_I-I(ECP <5.2|ECPLSY|13.2>     0.000032226403
 !MRCI LS_I-I(ECP <6.2|ECPLSY|13.2>     0.000118221832
 !MRCI LS_I-I(ECP <7.2|ECPLSY|13.2>    -0.000091348625
 !MRCI LS_I-I(ECP <8.2|ECPLSY|13.2>     0.000010618629
 !MRCI LS_I-I(ECP <9.2|ECPLSY|13.2>    -0.000000000610
 !MRCI LS_I-I(EC <10.2|ECPLSY|13.2>    -0.001091203663
 !MRCI LS_I-I(EC <11.2|ECPLSY|13.2>     0.002591666308
 !MRCI LS_I-I(EC <12.2|ECPLSY|13.2>     0.001745789025
 !MRCI LS_I-I(EC <14.2|ECPLSY|13.2>     0.000096518591
 !MRCI LS_I-I(EC <15.2|ECPLSY|13.2>     0.000083517191
 !MRCI LS_I-I(EC <16.2|ECPLSY|13.2>     0.000633496526
 !MRCI LS_I-I(EC <17.2|ECPLSY|13.2>     0.000649776518
 !MRCI LS_I-I(ECP <1.2|ECPLSY|14.2>    -0.000019997923
 !MRCI LS_I-I(ECP <2.2|ECPLSY|14.2>     0.000030992650
 !MRCI LS_I-I(ECP <3.2|ECPLSY|14.2>     0.000630998749
 !MRCI LS_I-I(ECP <4.2|ECPLSY|14.2>     0.000447633956
 !MRCI LS_I-I(ECP <5.2|ECPLSY|14.2>     0.000030866776
 !MRCI LS_I-I(ECP <6.2|ECPLSY|14.2>     0.000123841802
 !MRCI LS_I-I(ECP <7.2|ECPLSY|14.2>     0.000088178110
 !MRCI LS_I-I(ECP <8.2|ECPLSY|14.2>     0.000007872619
 !MRCI LS_I-I(ECP <9.2|ECPLSY|14.2>     0.000000000091
 !MRCI LS_I-I(EC <10.2|ECPLSY|14.2>     0.000833050686
 !MRCI LS_I-I(EC <11.2|ECPLSY|14.2>    -0.002545694092
 !MRCI LS_I-I(EC <12.2|ECPLSY|14.2>     0.001816418930
 !MRCI LS_I-I(EC <13.2|ECPLSY|14.2>    -0.000096518591
 !MRCI LS_I-I(EC <15.2|ECPLSY|14.2>     0.000026079500
 !MRCI LS_I-I(EC <16.2|ECPLSY|14.2>    -0.000445925603
 !MRCI LS_I-I(EC <17.2|ECPLSY|14.2>     0.000811411603
 !MRCI LS_I-I(ECP <1.2|ECPLSY|15.2>    -0.000014850523
 !MRCI LS_I-I(ECP <2.2|ECPLSY|15.2>     0.000005923578
 !MRCI LS_I-I(ECP <3.2|ECPLSY|15.2>    -0.000003964862
 !MRCI LS_I-I(ECP <4.2|ECPLSY|15.2>    -0.000247802368
 !MRCI LS_I-I(ECP <5.2|ECPLSY|15.2>    -0.000000586101
 !MRCI LS_I-I(ECP <6.2|ECPLSY|15.2>    -0.000551600273
 !MRCI LS_I-I(ECP <7.2|ECPLSY|15.2>    -0.000035346341
 !MRCI LS_I-I(ECP <8.2|ECPLSY|15.2>    -0.000002647513
 !MRCI LS_I-I(ECP <9.2|ECPLSY|15.2>     0.000239443520
 !MRCI LS_I-I(EC <10.2|ECPLSY|15.2>     0.000012318210
 !MRCI LS_I-I(EC <11.2|ECPLSY|15.2>    -0.000030069683
 !MRCI LS_I-I(EC <12.2|ECPLSY|15.2>     0.001040817933
 !MRCI LS_I-I(EC <13.2|ECPLSY|15.2>    -0.000083517191
 !MRCI LS_I-I(EC <14.2|ECPLSY|15.2>    -0.000026079500
 !MRCI LS_I-I(EC <16.2|ECPLSY|15.2>     0.000087764614
 !MRCI LS_I-I(EC <17.2|ECPLSY|15.2>     0.001644936413
 !MRCI LS_I-I(ECP <1.2|ECPLSY|16.2>    -0.000264780077
 !MRCI LS_I-I(ECP <2.2|ECPLSY|16.2>    -0.000108063591
 !MRCI LS_I-I(ECP <3.2|ECPLSY|16.2>    -0.000001397268
 !MRCI LS_I-I(ECP <4.2|ECPLSY|16.2>     0.000009376158
 !MRCI LS_I-I(ECP <5.2|ECPLSY|16.2>     0.000014125034
 !MRCI LS_I-I(ECP <6.2|ECPLSY|16.2>     0.000025825471
 !MRCI LS_I-I(ECP <7.2|ECPLSY|16.2>     0.000001954450
 !MRCI LS_I-I(ECP <8.2|ECPLSY|16.2>     0.000029604499
 !MRCI LS_I-I(ECP <9.2|ECPLSY|16.2>     0.005068305370
 !MRCI LS_I-I(EC <10.2|ECPLSY|16.2>     0.000862770208
 !MRCI LS_I-I(EC <11.2|ECPLSY|16.2>     0.000328599606
 !MRCI LS_I-I(EC <12.2|ECPLSY|16.2>    -0.000023950466
 !MRCI LS_I-I(EC <13.2|ECPLSY|16.2>    -0.000633496526
 !MRCI LS_I-I(EC <14.2|ECPLSY|16.2>     0.000445925603
 !MRCI LS_I-I(EC <15.2|ECPLSY|16.2>    -0.000087764614
 !MRCI LS_I-I(EC <17.2|ECPLSY|16.2>    -0.000077711948
 !MRCI LS_I-I(ECP <1.2|ECPLSY|17.2>     0.000016632516
 !MRCI LS_I-I(ECP <2.2|ECPLSY|17.2>     0.000001615486
 !MRCI LS_I-I(ECP <3.2|ECPLSY|17.2>    -0.000000010013
 !MRCI LS_I-I(ECP <4.2|ECPLSY|17.2>    -0.000001336230
 !MRCI LS_I-I(ECP <5.2|ECPLSY|17.2>     0.000247808988
 !MRCI LS_I-I(ECP <6.2|ECPLSY|17.2>    -0.000004385867
 !MRCI LS_I-I(ECP <7.2|ECPLSY|17.2>     0.000005333207
 !MRCI LS_I-I(ECP <8.2|ECPLSY|17.2>     0.000552522666
 !MRCI LS_I-I(ECP <9.2|ECPLSY|17.2>    -0.000270416066
 !MRCI LS_I-I(EC <10.2|ECPLSY|17.2>    -0.000079628991
 !MRCI LS_I-I(EC <11.2|ECPLSY|17.2>    -0.000006533408
 !MRCI LS_I-I(EC <12.2|ECPLSY|17.2>    -0.000072593875
 !MRCI LS_I-I(EC <13.2|ECPLSY|17.2>    -0.000649776518
 !MRCI LS_I-I(EC <14.2|ECPLSY|17.2>    -0.000811411603
 !MRCI LS_I-I(EC <15.2|ECPLSY|17.2>    -0.001644936413
 !MRCI LS_I-I(EC <16.2|ECPLSY|17.2>     0.000077711948

 !MRCI expec       <1.2|ECPLSY|1.2>     0.000000001141
 !MRCI trans       <2.2|ECPLSY|1.2>     0.000000092774
 !MRCI trans       <3.2|ECPLSY|1.2>    -0.000019380849
 !MRCI trans       <4.2|ECPLSY|1.2>     0.000001207288
 !MRCI trans       <5.2|ECPLSY|1.2>     0.000008023545
 !MRCI trans       <6.2|ECPLSY|1.2>     0.000394202107
 !MRCI trans       <7.2|ECPLSY|1.2>    -0.007249179908
 !MRCI trans       <8.2|ECPLSY|1.2>     0.000137189095
 !MRCI trans       <9.2|ECPLSY|1.2>    -0.000000011278
 !MRCI trans      <10.2|ECPLSY|1.2>    -0.000202835552
 !MRCI trans      <11.2|ECPLSY|1.2>     0.000465417179
 !MRCI trans      <12.2|ECPLSY|1.2>     0.000021089413
 !MRCI trans      <13.2|ECPLSY|1.2>    -0.000019967241
 !MRCI trans      <14.2|ECPLSY|1.2>     0.000022349303
 !MRCI trans      <15.2|ECPLSY|1.2>     0.000010868749
 !MRCI trans      <16.2|ECPLSY|1.2>     0.000127249692
 !MRCI trans      <17.2|ECPLSY|1.2>    -0.000008113093
 !MRCI expec       <2.2|ECPLSY|2.2>     0.000000043838
 !MRCI trans       <3.2|ECPLSY|2.2>     0.000040603735
 !MRCI trans       <4.2|ECPLSY|2.2>     0.000001341051
 !MRCI trans       <5.2|ECPLSY|2.2>    -0.000004456586
 !MRCI trans       <6.2|ECPLSY|2.2>     0.000299269659
 !MRCI trans       <7.2|ECPLSY|2.2>    -0.002930734456
 !MRCI trans       <8.2|ECPLSY|2.2>    -0.000267321986
 !MRCI trans       <9.2|ECPLSY|2.2>    -0.000000175371
 !MRCI trans      <10.2|ECPLSY|2.2>     0.000469585398
 !MRCI trans      <11.2|ECPLSY|2.2>    -0.001104987097
 !MRCI trans      <12.2|ECPLSY|2.2>    -0.000046050016
 !MRCI trans      <13.2|ECPLSY|2.2>     0.000046713795
 !MRCI trans      <14.2|ECPLSY|2.2>    -0.000032875008
 !MRCI trans      <15.2|ECPLSY|2.2>    -0.000002178546
 !MRCI trans      <16.2|ECPLSY|2.2>     0.000046936203
 !MRCI trans      <17.2|ECPLSY|2.2>    -0.000002123153
 !MRCI expec       <3.2|ECPLSY|3.2>    -0.000000012729
 !MRCI trans       <4.2|ECPLSY|3.2>    -0.000005923246
 !MRCI trans       <5.2|ECPLSY|3.2>    -0.000002998947
 !MRCI trans       <6.2|ECPLSY|3.2>     0.000005241151
 !MRCI trans       <7.2|ECPLSY|3.2>    -0.000041309314
 !MRCI trans       <8.2|ECPLSY|3.2>     0.000109183084
 !MRCI trans       <9.2|ECPLSY|3.2>     0.000000221010
 !MRCI trans      <10.2|ECPLSY|3.2>     0.000740833269
 !MRCI trans      <11.2|ECPLSY|3.2>     0.000366380486
 !MRCI trans      <12.2|ECPLSY|3.2>     0.000041997578
 !MRCI trans      <13.2|ECPLSY|3.2>     0.000724451710
 !MRCI trans      <14.2|ECPLSY|3.2>    -0.000671871647
 !MRCI trans      <15.2|ECPLSY|3.2>     0.000002372465
 !MRCI trans      <16.2|ECPLSY|3.2>     0.000000408203
 !MRCI trans      <17.2|ECPLSY|3.2>    -0.000001976617
 !MRCI expec       <4.2|ECPLSY|4.2>     0.000001119973
 !MRCI trans       <5.2|ECPLSY|4.2>    -0.000016726242
 !MRCI trans       <6.2|ECPLSY|4.2>    -0.000010970254
 !MRCI trans       <7.2|ECPLSY|4.2>     0.000035585963
 !MRCI trans       <8.2|ECPLSY|4.2>     0.006772003596
 !MRCI trans       <9.2|ECPLSY|4.2>    -0.000000007965
 !MRCI trans      <10.2|ECPLSY|4.2>    -0.000009945554
 !MRCI trans      <11.2|ECPLSY|4.2>    -0.000051494157
 !MRCI trans      <12.2|ECPLSY|4.2>    -0.000050720311
 !MRCI trans      <13.2|ECPLSY|4.2>    -0.000433380084
 !MRCI trans      <14.2|ECPLSY|4.2>    -0.000479773867
 !MRCI trans      <15.2|ECPLSY|4.2>     0.000080532665
 !MRCI trans      <16.2|ECPLSY|4.2>    -0.000009490599
 !MRCI trans      <17.2|ECPLSY|4.2>     0.000001398353
 !MRCI expec       <5.2|ECPLSY|5.2>    -0.000000631003
 !MRCI trans       <6.2|ECPLSY|5.2>    -0.006778248190
 !MRCI trans       <7.2|ECPLSY|5.2>    -0.000410463461
 !MRCI trans       <8.2|ECPLSY|5.2>    -0.000012848365
 !MRCI trans       <9.2|ECPLSY|5.2>     0.000001078531
 !MRCI trans      <10.2|ECPLSY|5.2>    -0.000006984064
 !MRCI trans      <11.2|ECPLSY|5.2>    -0.000051003293
 !MRCI trans      <12.2|ECPLSY|5.2>     0.000640746568
 !MRCI trans      <13.2|ECPLSY|5.2>    -0.000033978819
 !MRCI trans      <14.2|ECPLSY|5.2>    -0.000033123466
 !MRCI trans      <15.2|ECPLSY|5.2>     0.000000098623
 !MRCI trans      <16.2|ECPLSY|5.2>    -0.000005396849
 !MRCI trans      <17.2|ECPLSY|5.2>    -0.000096762481
 !MRCI expec       <6.2|ECPLSY|6.2>    -0.000005776026
 !MRCI trans       <7.2|ECPLSY|6.2>    -0.000011344877
 !MRCI trans       <8.2|ECPLSY|6.2>    -0.000004470462
 !MRCI trans       <9.2|ECPLSY|6.2>     0.000044102922
 !MRCI trans      <10.2|ECPLSY|6.2>     0.000004186409
 !MRCI trans      <11.2|ECPLSY|6.2>    -0.000002505974
 !MRCI trans      <12.2|ECPLSY|6.2>    -0.000002498753
 !MRCI trans      <13.2|ECPLSY|6.2>    -0.000042704231
 !MRCI trans      <14.2|ECPLSY|6.2>    -0.000044157797
 !MRCI trans      <15.2|ECPLSY|6.2>     0.000596022291
 !MRCI trans      <16.2|ECPLSY|6.2>    -0.000026125084
 !MRCI trans      <17.2|ECPLSY|6.2>     0.000002016145
 !MRCI expec       <7.2|ECPLSY|7.2>    -0.000001733278
 !MRCI trans       <8.2|ECPLSY|7.2>    -0.000001697898
 !MRCI trans       <9.2|ECPLSY|7.2>    -0.000679744071
 !MRCI trans      <10.2|ECPLSY|7.2>    -0.000049397854
 !MRCI trans      <11.2|ECPLSY|7.2>    -0.000019204200
 !MRCI trans      <12.2|ECPLSY|7.2>    -0.000002329893
 !MRCI trans      <13.2|ECPLSY|7.2>     0.000031811237
 !MRCI trans      <14.2|ECPLSY|7.2>    -0.000031285840
 !MRCI trans      <15.2|ECPLSY|7.2>     0.000037763916
 !MRCI trans      <16.2|ECPLSY|7.2>    -0.000001524220
 !MRCI trans      <17.2|ECPLSY|7.2>    -0.000006064864
 !MRCI expec       <8.2|ECPLSY|8.2>    -0.000050826617
 !MRCI trans       <9.2|ECPLSY|8.2>     0.000012264099
 !MRCI trans      <10.2|ECPLSY|8.2>    -0.000003656404
 !MRCI trans      <11.2|ECPLSY|8.2>    -0.000003743103
 !MRCI trans      <12.2|ECPLSY|8.2>     0.000061620985
 !MRCI trans      <13.2|ECPLSY|8.2>    -0.000007731985
 !MRCI trans      <14.2|ECPLSY|8.2>    -0.000000370856
 !MRCI trans      <15.2|ECPLSY|8.2>     0.000002615701
 !MRCI trans      <16.2|ECPLSY|8.2>    -0.000030908594
 !MRCI trans      <17.2|ECPLSY|8.2>    -0.000585747781
 !MRCI expec       <9.2|ECPLSY|9.2>     0.000000047576
 !MRCI trans      <10.2|ECPLSY|9.2>     0.000011289417
 !MRCI trans      <11.2|ECPLSY|9.2>    -0.000026798577
 !MRCI trans      <12.2|ECPLSY|9.2>     0.000000142099
 !MRCI trans      <13.2|ECPLSY|9.2>     0.000004360047
 !MRCI trans      <14.2|ECPLSY|9.2>     0.000003301540
 !MRCI trans      <15.2|ECPLSY|9.2>    -0.000276483079
 !MRCI trans      <16.2|ECPLSY|9.2>    -0.005568864169
 !MRCI trans      <17.2|ECPLSY|9.2>     0.000299066092
 !MRCI expec     <10.2|ECPLSY|10.2>    -0.000021752751
 !MRCI trans     <11.2|ECPLSY|10.2>     0.003610884873
 !MRCI trans     <12.2|ECPLSY|10.2>     0.000268417500
 !MRCI trans     <13.2|ECPLSY|10.2>     0.001200655599
 !MRCI trans     <14.2|ECPLSY|10.2>    -0.000917224430
 !MRCI trans     <15.2|ECPLSY|10.2>    -0.000005625454
 !MRCI trans     <16.2|ECPLSY|10.2>    -0.000910764196
 !MRCI trans     <17.2|ECPLSY|10.2>     0.000082102347
 !MRCI expec     <11.2|ECPLSY|11.2>     0.000025113698
 !MRCI trans     <12.2|ECPLSY|11.2>    -0.000148444717
 !MRCI trans     <13.2|ECPLSY|11.2>    -0.002856781710
 !MRCI trans     <14.2|ECPLSY|11.2>     0.002806853583
 !MRCI trans     <15.2|ECPLSY|11.2>     0.000036032221
 !MRCI trans     <16.2|ECPLSY|11.2>    -0.000344665346
 !MRCI trans     <17.2|ECPLSY|11.2>     0.000008840773
 !MRCI expec     <12.2|ECPLSY|12.2>    -0.000001967960
 !MRCI trans     <13.2|ECPLSY|12.2>    -0.001942494911
 !MRCI trans     <14.2|ECPLSY|12.2>    -0.002022776313
 !MRCI trans     <15.2|ECPLSY|12.2>    -0.001141405106
 !MRCI trans     <16.2|ECPLSY|12.2>     0.000025131619
 !MRCI trans     <17.2|ECPLSY|12.2>     0.000078016858
 !MRCI expec     <13.2|ECPLSY|13.2>    -0.000000903373
 !MRCI trans     <14.2|ECPLSY|13.2>     0.000102215779
 !MRCI trans     <15.2|ECPLSY|13.2>     0.000098430616
 !MRCI trans     <16.2|ECPLSY|13.2>     0.000706387373
 !MRCI trans     <17.2|ECPLSY|13.2>     0.000698025147
 !MRCI expec     <14.2|ECPLSY|14.2>    -0.000001282542
 !MRCI trans     <15.2|ECPLSY|14.2>     0.000022017195
 !MRCI trans     <16.2|ECPLSY|14.2>    -0.000497837284
 !MRCI trans     <17.2|ECPLSY|14.2>     0.000870886260
 !MRCI expec     <15.2|ECPLSY|15.2>     0.000000289172
 !MRCI trans     <16.2|ECPLSY|15.2>     0.000096593169
 !MRCI trans     <17.2|ECPLSY|15.2>     0.001825351947
 !MRCI expec     <16.2|ECPLSY|16.2>    -0.000000164421
 !MRCI trans     <17.2|ECPLSY|16.2>    -0.000081311861
 !MRCI expec     <17.2|ECPLSY|17.2>    -0.000000010193

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

 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|1.2>     0.000000000174i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|2.2>    -0.000000000195i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|3.2>     0.000000000074i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|4.2>     0.000000001726i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|5.2>    -0.000000000066i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|6.2>    -0.010689003644i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|7.2>    -0.000685176325i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|8.2>    -0.000074075124i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|9.2>     0.000000000139i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|10.2>    -0.000000000196i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|11.2>    -0.000000000441i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|12.2>     0.000000007974i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|13.2>    -0.000000000743i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|14.2>    -0.000000000330i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|15.2>    -0.000007318016i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|16.2>    -0.000183257046i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|17.2>    -0.003441197954i

 !MRCI expec       <1.2|ECPLSZ|1.2>     0.000000000302i
 !MRCI trans       <1.2|ECPLSZ|2.2>    -0.000000000689i
 !MRCI trans       <1.2|ECPLSZ|3.2>     0.000000000256i
 !MRCI trans       <1.2|ECPLSZ|4.2>     0.000000012916i
 !MRCI trans       <1.2|ECPLSZ|5.2>    -0.000000000059i
 !MRCI trans       <1.2|ECPLSZ|6.2>    -0.010973562729i
 !MRCI trans       <1.2|ECPLSZ|7.2>    -0.000703416814i
 !MRCI trans       <1.2|ECPLSZ|8.2>    -0.000076047075i
 !MRCI trans       <1.2|ECPLSZ|9.2>     0.000000000158i
 !MRCI trans      <1.2|ECPLSZ|10.2>     0.000000000004i
 !MRCI trans      <1.2|ECPLSZ|11.2>    -0.000000000182i
 !MRCI trans      <1.2|ECPLSZ|12.2>     0.000000001402i
 !MRCI trans      <1.2|ECPLSZ|13.2>    -0.000000000409i
 !MRCI trans      <1.2|ECPLSZ|14.2>    -0.000000000049i
 !MRCI trans      <1.2|ECPLSZ|15.2>    -0.000007180157i
 !MRCI trans      <1.2|ECPLSZ|16.2>    -0.000179802621i
 !MRCI trans      <1.2|ECPLSZ|17.2>    -0.003376332489i

 Bra-wavefunction restored from record   5102.2
 Ket-wavefunction restored from record   5102.2


 Symmetry of spin-orbit operator:         1
 Symmetry of bra wavefunction:            2   S= 0.5  MS= 0.5
 Symmetry of ket wavefunction:            2   S= 0.5  MS= 0.5

 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|1.2>    -0.000001984202i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|1.2>     0.000000485704i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|1.2>     0.000046078244i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|1.2>     0.000000035222i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|1.2>    -0.001049877756i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|1.2>    -0.000001796648i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|1.2>    -0.000059894747i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|1.2>    -0.000000000089i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|1.2>    -0.000045483206i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|1.2>    -0.000050838047i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|1.2>     0.001193253211i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|1.2>    -0.000063271224i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|1.2>    -0.000058764754i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|1.2>    -0.000002169447i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|1.2>    -0.000004509633i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|1.2>    -0.000039525399i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|2.2>     0.000001984202i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|2.2>     0.000000303212i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|2.2>    -0.000006447266i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|2.2>     0.000000066792i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|2.2>    -0.007462908644i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|2.2>    -0.000587010991i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|2.2>    -0.000016344488i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|2.2>     0.000000000024i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|2.2>     0.000057397641i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|2.2>     0.000018033515i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|2.2>    -0.000164181838i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|2.2>     0.000002892306i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|2.2>     0.000014430338i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|2.2>     0.000000890837i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|2.2>    -0.000011032593i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|2.2>    -0.000283422785i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|3.2>    -0.000000485704i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|3.2>    -0.000000303212i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|3.2>     0.000000271778i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|3.2>     0.000023294020i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|3.2>    -0.000023376604i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|3.2>     0.000062611306i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|3.2>     0.006550945206i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|3.2>     0.000000000025i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|3.2>     0.000001993054i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|3.2>    -0.000014039850i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|3.2>     0.000050775224i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|3.2>     0.000397658941i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|3.2>     0.000453313279i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|3.2>     0.000247948291i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|3.2>    -0.000011563531i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|3.2>     0.000001074355i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|4.2>    -0.000046078244i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|4.2>     0.000006447266i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|4.2>    -0.000000271778i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|4.2>     0.000000211763i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|4.2>    -0.000318754791i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|4.2>    -0.000057474548i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|4.2>    -0.000102751233i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|4.2>    -0.000000001180i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|4.2>    -0.001098880306i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|4.2>    -0.000453372583i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|4.2>    -0.000065034507i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|4.2>     0.000174109861i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|4.2>    -0.000116894900i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|4.2>    -0.000003780335i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|4.2>     0.000000888686i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|4.2>    -0.000012275262i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|5.2>    -0.000000035222i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|5.2>    -0.000000066792i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|5.2>    -0.000023294020i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|5.2>    -0.000000211763i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|5.2>    -0.000533853493i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|5.2>     0.006529891639i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|5.2>    -0.000064233785i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|5.2>    -0.000000000017i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|5.2>    -0.000238382345i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|5.2>     0.000555452464i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|5.2>     0.000003513475i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|5.2>    -0.000009889603i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|5.2>     0.000026503305i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|5.2>    -0.000011592773i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|5.2>    -0.000247820462i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|5.2>     0.000008840161i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|6.2>     0.001049877756i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|6.2>     0.007462908644i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|6.2>     0.000023376604i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|6.2>     0.000318754791i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|6.2>     0.000533853493i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|6.2>    -0.000000116732i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|6.2>     0.000001079888i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|6.2>     0.000639387213i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|6.2>     0.000027229954i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|6.2>     0.000022068510i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|6.2>     0.000002688689i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|6.2>     0.000139237280i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|6.2>    -0.000136520002i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|6.2>    -0.000035514950i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|6.2>    -0.000002499300i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|6.2>     0.000000208671i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|7.2>     0.000001796648i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|7.2>     0.000587010991i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|7.2>    -0.000062611306i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|7.2>     0.000057474548i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|7.2>    -0.006529891639i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|7.2>     0.000000116732i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|7.2>    -0.000016844912i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|7.2>     0.000040985464i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|7.2>     0.000007954166i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|7.2>    -0.000001984143i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|7.2>     0.000011902480i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|7.2>     0.000121390214i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|7.2>     0.000120712195i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|7.2>     0.000551831477i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|7.2>    -0.000020706135i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|7.2>    -0.000000070809i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|8.2>     0.000059894747i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|8.2>     0.000016344488i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|8.2>    -0.006550945206i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|8.2>     0.000102751233i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|8.2>     0.000064233785i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|8.2>    -0.000001079888i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|8.2>     0.000016844912i
 !MRCI LS_I-I(ECP) <9.2|ECPLSZ|8.2>     0.000004430890i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|8.2>     0.000066452762i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|8.2>    -0.000157886303i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|8.2>    -0.000005366418i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|8.2>     0.000003189902i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|8.2>    -0.000009616696i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|8.2>     0.000020469698i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|8.2>     0.000552173815i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|8.2>    -0.000029448805i
 !MRCI LS_I-I(ECP) <1.2|ECPLSZ|9.2>     0.000000000089i
 !MRCI LS_I-I(ECP) <2.2|ECPLSZ|9.2>    -0.000000000024i
 !MRCI LS_I-I(ECP) <3.2|ECPLSZ|9.2>    -0.000000000025i
 !MRCI LS_I-I(ECP) <4.2|ECPLSZ|9.2>     0.000000001180i
 !MRCI LS_I-I(ECP) <5.2|ECPLSZ|9.2>     0.000000000017i
 !MRCI LS_I-I(ECP) <6.2|ECPLSZ|9.2>    -0.000639387213i
 !MRCI LS_I-I(ECP) <7.2|ECPLSZ|9.2>    -0.000040985464i
 !MRCI LS_I-I(ECP) <8.2|ECPLSZ|9.2>    -0.000004430890i
 !MRCI LS_I-I(ECP <10.2|ECPLSZ|9.2>    -0.000000000092i
 !MRCI LS_I-I(ECP <11.2|ECPLSZ|9.2>    -0.000000001376i
 !MRCI LS_I-I(ECP <12.2|ECPLSZ|9.2>     0.000000019432i
 !MRCI LS_I-I(ECP <13.2|ECPLSZ|9.2>    -0.000000001479i
 !MRCI LS_I-I(ECP <14.2|ECPLSZ|9.2>    -0.000000000726i
 !MRCI LS_I-I(ECP <15.2|ECPLSZ|9.2>    -0.000010790246i
 !MRCI LS_I-I(ECP <16.2|ECPLSZ|9.2>    -0.000270207817i
 !MRCI LS_I-I(ECP <17.2|ECPLSZ|9.2>    -0.005073958414i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|10.2>     0.000045483206i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|10.2>    -0.000057397641i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|10.2>    -0.000001993054i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|10.2>     0.001098880306i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|10.2>     0.000238382345i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|10.2>    -0.000027229954i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|10.2>    -0.000007954166i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|10.2>    -0.000066452762i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|10.2>     0.000000000092i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|10.2>    -0.000084573184i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|10.2>     0.004659229623i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|10.2>     0.000379105277i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|10.2>     0.000542409938i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|10.2>    -0.000401853916i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|10.2>     0.000043453204i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|10.2>    -0.000172915687i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|11.2>     0.000050838047i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|11.2>    -0.000018033515i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|11.2>     0.000014039850i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|11.2>     0.000453372583i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|11.2>    -0.000555452464i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|11.2>    -0.000022068510i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|11.2>     0.000001984143i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|11.2>     0.000157886303i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|11.2>     0.000000001376i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|11.2>     0.000084573184i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|11.2>     0.001728175893i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|11.2>    -0.001649964008i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|11.2>    -0.001818612992i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|11.2>     0.000959870024i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|11.2>    -0.000062954658i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|11.2>    -0.000125442063i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|12.2>    -0.001193253211i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|12.2>     0.000164181838i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|12.2>    -0.000050775224i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|12.2>     0.000065034507i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|12.2>    -0.000003513475i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|12.2>    -0.000002688689i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|12.2>    -0.000011902480i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|12.2>     0.000005366418i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|12.2>    -0.000000019432i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|12.2>    -0.004659229623i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|12.2>    -0.001728175893i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|12.2>     0.000682622968i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|12.2>    -0.000520360854i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|12.2>     0.000035365530i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|12.2>     0.000068755662i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|12.2>    -0.000024496859i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|13.2>     0.000063271224i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|13.2>    -0.000002892306i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|13.2>    -0.000397658941i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|13.2>    -0.000174109861i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|13.2>     0.000009889603i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|13.2>    -0.000139237280i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|13.2>    -0.000121390214i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|13.2>    -0.000003189902i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|13.2>     0.000000001479i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|13.2>    -0.000379105277i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|13.2>     0.001649964008i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|13.2>    -0.000682622968i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|13.2>     0.000165895790i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|13.2>     0.000010140155i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|13.2>     0.000634462966i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|13.2>    -0.000927877657i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|14.2>     0.000058764754i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|14.2>    -0.000014430338i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|14.2>    -0.000453313279i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|14.2>     0.000116894900i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|14.2>    -0.000026503305i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|14.2>     0.000136520002i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|14.2>    -0.000120712195i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|14.2>     0.000009616696i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|14.2>     0.000000000726i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|14.2>    -0.000542409938i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|14.2>     0.001818612992i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|14.2>     0.000520360854i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|14.2>    -0.000165895790i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|14.2>     0.000083809435i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|14.2>     0.000824083426i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|14.2>     0.000739389759i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|15.2>     0.000002169447i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|15.2>    -0.000000890837i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|15.2>    -0.000247948291i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|15.2>     0.000003780335i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|15.2>     0.000011592773i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|15.2>     0.000035514950i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|15.2>    -0.000551831477i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|15.2>    -0.000020469698i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|15.2>     0.000010790246i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|15.2>     0.000401853916i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|15.2>    -0.000959870024i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|15.2>    -0.000035365530i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|15.2>    -0.000010140155i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|15.2>    -0.000083809435i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|15.2>    -0.001646764904i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|15.2>     0.000087696835i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|16.2>     0.000004509633i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|16.2>     0.000011032593i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|16.2>     0.000011563531i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|16.2>    -0.000000888686i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|16.2>     0.000247820462i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|16.2>     0.000002499300i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|16.2>     0.000020706135i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|16.2>    -0.000552173815i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|16.2>     0.000270207817i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|16.2>    -0.000043453204i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|16.2>     0.000062954658i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|16.2>    -0.000068755662i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|16.2>    -0.000634462966i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|16.2>    -0.000824083426i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|16.2>     0.001646764904i
 !MRCI LS_I-I(EC <17.2|ECPLSZ|16.2>    -0.000003501806i
 !MRCI LS_I-I(ECP <1.2|ECPLSZ|17.2>     0.000039525399i
 !MRCI LS_I-I(ECP <2.2|ECPLSZ|17.2>     0.000283422785i
 !MRCI LS_I-I(ECP <3.2|ECPLSZ|17.2>    -0.000001074355i
 !MRCI LS_I-I(ECP <4.2|ECPLSZ|17.2>     0.000012275262i
 !MRCI LS_I-I(ECP <5.2|ECPLSZ|17.2>    -0.000008840161i
 !MRCI LS_I-I(ECP <6.2|ECPLSZ|17.2>    -0.000000208671i
 !MRCI LS_I-I(ECP <7.2|ECPLSZ|17.2>     0.000000070809i
 !MRCI LS_I-I(ECP <8.2|ECPLSZ|17.2>     0.000029448805i
 !MRCI LS_I-I(ECP <9.2|ECPLSZ|17.2>     0.005073958414i
 !MRCI LS_I-I(EC <10.2|ECPLSZ|17.2>     0.000172915687i
 !MRCI LS_I-I(EC <11.2|ECPLSZ|17.2>     0.000125442063i
 !MRCI LS_I-I(EC <12.2|ECPLSZ|17.2>     0.000024496859i
 !MRCI LS_I-I(EC <13.2|ECPLSZ|17.2>     0.000927877657i
 !MRCI LS_I-I(EC <14.2|ECPLSZ|17.2>    -0.000739389759i
 !MRCI LS_I-I(EC <15.2|ECPLSZ|17.2>    -0.000087696835i
 !MRCI LS_I-I(EC <16.2|ECPLSZ|17.2>     0.000003501806i

 !MRCI expec       <1.2|ECPLSZ|1.2>     0.000008344206i
 !MRCI trans       <2.2|ECPLSZ|1.2>    -0.000003470073i
 !MRCI trans       <3.2|ECPLSZ|1.2>     0.000000653876i
 !MRCI trans       <4.2|ECPLSZ|1.2>     0.000036887400i
 !MRCI trans       <5.2|ECPLSZ|1.2>    -0.000000084628i
 !MRCI trans       <6.2|ECPLSZ|1.2>    -0.001085858638i
 !MRCI trans       <7.2|ECPLSZ|1.2>    -0.000001864841i
 !MRCI trans       <8.2|ECPLSZ|1.2>    -0.000061971213i
 !MRCI trans       <9.2|ECPLSZ|1.2>    -0.000001332864i
 !MRCI trans      <10.2|ECPLSZ|1.2>    -0.000050605581i
 !MRCI trans      <11.2|ECPLSZ|1.2>    -0.000055254378i
 !MRCI trans      <12.2|ECPLSZ|1.2>     0.001271963063i
 !MRCI trans      <13.2|ECPLSZ|1.2>    -0.000068096899i
 !MRCI trans      <14.2|ECPLSZ|1.2>    -0.000062464522i
 !MRCI trans      <15.2|ECPLSZ|1.2>    -0.000000794434i
 !MRCI trans      <16.2|ECPLSZ|1.2>    -0.000001426390i
 !MRCI trans      <17.2|ECPLSZ|1.2>    -0.000013608795i
 !MRCI expec       <2.2|ECPLSZ|2.2>    -0.000001238903i
 !MRCI trans       <3.2|ECPLSZ|2.2>     0.000000324766i
 !MRCI trans       <4.2|ECPLSZ|2.2>    -0.000004538934i
 !MRCI trans       <5.2|ECPLSZ|2.2>     0.000000245810i
 !MRCI trans       <6.2|ECPLSZ|2.2>    -0.007735991387i
 !MRCI trans       <7.2|ECPLSZ|2.2>    -0.000607854035i
 !MRCI trans       <8.2|ECPLSZ|2.2>    -0.000016880043i
 !MRCI trans       <9.2|ECPLSZ|2.2>     0.000002530816i
 !MRCI trans      <10.2|ECPLSZ|2.2>     0.000063504959i
 !MRCI trans      <11.2|ECPLSZ|2.2>     0.000020183785i
 !MRCI trans      <12.2|ECPLSZ|2.2>    -0.000175617970i
 !MRCI trans      <13.2|ECPLSZ|2.2>     0.000003490379i
 !MRCI trans      <14.2|ECPLSZ|2.2>     0.000014433685i
 !MRCI trans      <15.2|ECPLSZ|2.2>     0.000000191004i
 !MRCI trans      <16.2|ECPLSZ|2.2>    -0.000003456801i
 !MRCI trans      <17.2|ECPLSZ|2.2>    -0.000112235471i
 !MRCI expec       <3.2|ECPLSZ|3.2>     0.000007628173i
 !MRCI trans       <4.2|ECPLSZ|3.2>    -0.000000099624i
 !MRCI trans       <5.2|ECPLSZ|3.2>     0.000021754190i
 !MRCI trans       <6.2|ECPLSZ|3.2>    -0.000025577150i
 !MRCI trans       <7.2|ECPLSZ|3.2>     0.000089817429i
 !MRCI trans       <8.2|ECPLSZ|3.2>     0.006777956908i
 !MRCI trans       <9.2|ECPLSZ|3.2>     0.000000345616i
 !MRCI trans      <10.2|ECPLSZ|3.2>     0.000001153613i
 !MRCI trans      <11.2|ECPLSZ|3.2>    -0.000011057876i
 !MRCI trans      <12.2|ECPLSZ|3.2>     0.000054700709i
 !MRCI trans      <13.2|ECPLSZ|3.2>     0.000428142818i
 !MRCI trans      <14.2|ECPLSZ|3.2>     0.000488890783i
 !MRCI trans      <15.2|ECPLSZ|3.2>     0.000079867933i
 !MRCI trans      <16.2|ECPLSZ|3.2>    -0.000008060541i
 !MRCI trans      <17.2|ECPLSZ|3.2>     0.000000478861i
 !MRCI expec       <4.2|ECPLSZ|4.2>     0.000010147254i
 !MRCI trans       <5.2|ECPLSZ|4.2>     0.000000617529i
 !MRCI trans       <6.2|ECPLSZ|4.2>    -0.000335528674i
 !MRCI trans       <7.2|ECPLSZ|4.2>    -0.000059975565i
 !MRCI trans       <8.2|ECPLSZ|4.2>    -0.000105278056i
 !MRCI trans       <9.2|ECPLSZ|4.2>     0.000000332386i
 !MRCI trans      <10.2|ECPLSZ|4.2>    -0.001172102946i
 !MRCI trans      <11.2|ECPLSZ|4.2>    -0.000483087157i
 !MRCI trans      <12.2|ECPLSZ|4.2>    -0.000072110637i
 !MRCI trans      <13.2|ECPLSZ|4.2>     0.000185937806i
 !MRCI trans      <14.2|ECPLSZ|4.2>    -0.000125218294i
 !MRCI trans      <15.2|ECPLSZ|4.2>    -0.000000821822i
 !MRCI trans      <16.2|ECPLSZ|4.2>     0.000000439261i
 !MRCI trans      <17.2|ECPLSZ|4.2>    -0.000005416988i
 !MRCI expec       <5.2|ECPLSZ|5.2>    -0.000003088984i
 !MRCI trans       <6.2|ECPLSZ|5.2>    -0.000542739518i
 !MRCI trans       <7.2|ECPLSZ|5.2>     0.006760379514i
 !MRCI trans       <8.2|ECPLSZ|5.2>    -0.000068826377i
 !MRCI trans       <9.2|ECPLSZ|5.2>     0.000000130414i
 !MRCI trans      <10.2|ECPLSZ|5.2>    -0.000250714870i
 !MRCI trans      <11.2|ECPLSZ|5.2>     0.000584774173i
 !MRCI trans      <12.2|ECPLSZ|5.2>     0.000003023597i
 !MRCI trans      <13.2|ECPLSZ|5.2>    -0.000010140477i
 !MRCI trans      <14.2|ECPLSZ|5.2>     0.000027087591i
 !MRCI trans      <15.2|ECPLSZ|5.2>    -0.000007347144i
 !MRCI trans      <16.2|ECPLSZ|5.2>    -0.000114279024i
 !MRCI trans      <17.2|ECPLSZ|5.2>     0.000008870208i
 !MRCI expec       <6.2|ECPLSZ|6.2>    -0.000003628417i
 !MRCI trans       <7.2|ECPLSZ|6.2>     0.000000554550i
 !MRCI trans       <8.2|ECPLSZ|6.2>    -0.000000530960i
 !MRCI trans       <9.2|ECPLSZ|6.2>     0.000680252353i
 !MRCI trans      <10.2|ECPLSZ|6.2>     0.000010233814i
 !MRCI trans      <11.2|ECPLSZ|6.2>     0.000007885555i
 !MRCI trans      <12.2|ECPLSZ|6.2>     0.000000981419i
 !MRCI trans      <13.2|ECPLSZ|6.2>     0.000049029794i
 !MRCI trans      <14.2|ECPLSZ|6.2>    -0.000047726922i
 !MRCI trans      <15.2|ECPLSZ|6.2>    -0.000038810601i
 !MRCI trans      <16.2|ECPLSZ|6.2>    -0.000002904040i
 !MRCI trans      <17.2|ECPLSZ|6.2>    -0.000001149133i
 !MRCI expec       <7.2|ECPLSZ|7.2>    -0.000014059653i
 !MRCI trans       <8.2|ECPLSZ|7.2>    -0.000004567312i
 !MRCI trans       <9.2|ECPLSZ|7.2>     0.000043949449i
 !MRCI trans      <10.2|ECPLSZ|7.2>     0.000004782346i
 !MRCI trans      <11.2|ECPLSZ|7.2>    -0.000003895656i
 !MRCI trans      <12.2|ECPLSZ|7.2>     0.000003820710i
 !MRCI trans      <13.2|ECPLSZ|7.2>     0.000039640304i
 !MRCI trans      <14.2|ECPLSZ|7.2>     0.000039070516i
 !MRCI trans      <15.2|ECPLSZ|7.2>     0.000597132731i
 !MRCI trans      <16.2|ECPLSZ|7.2>    -0.000018527558i
 !MRCI trans      <17.2|ECPLSZ|7.2>    -0.000000380329i
 !MRCI expec       <8.2|ECPLSZ|8.2>    -0.000014421804i
 !MRCI trans       <9.2|ECPLSZ|8.2>     0.000004643879i
 !MRCI trans      <10.2|ECPLSZ|8.2>     0.000023885717i
 !MRCI trans      <11.2|ECPLSZ|8.2>    -0.000057597109i
 !MRCI trans      <12.2|ECPLSZ|8.2>    -0.000002417987i
 !MRCI trans      <13.2|ECPLSZ|8.2>    -0.000001400340i
 !MRCI trans      <14.2|ECPLSZ|8.2>    -0.000005893204i
 !MRCI trans      <15.2|ECPLSZ|8.2>     0.000019683772i
 !MRCI trans      <16.2|ECPLSZ|8.2>     0.000582396833i
 !MRCI trans      <17.2|ECPLSZ|8.2>    -0.000034326032i
 !MRCI expec       <9.2|ECPLSZ|9.2>     0.000007778496i
 !MRCI trans      <10.2|ECPLSZ|9.2>     0.000006321152i
 !MRCI trans      <11.2|ECPLSZ|9.2>     0.000002588744i
 !MRCI trans      <12.2|ECPLSZ|9.2>     0.000003520428i
 !MRCI trans      <13.2|ECPLSZ|9.2>    -0.000003345044i
 !MRCI trans      <14.2|ECPLSZ|9.2>     0.000002180761i
 !MRCI trans      <15.2|ECPLSZ|9.2>    -0.000011868875i
 !MRCI trans      <16.2|ECPLSZ|9.2>    -0.000295063042i
 !MRCI trans      <17.2|ECPLSZ|9.2>    -0.005565046277i
 !MRCI expec     <10.2|ECPLSZ|10.2>    -0.000001931610i
 !MRCI trans     <11.2|ECPLSZ|10.2>    -0.000091446335i
 !MRCI trans     <12.2|ECPLSZ|10.2>     0.005135583417i
 !MRCI trans     <13.2|ECPLSZ|10.2>     0.000429160413i
 !MRCI trans     <14.2|ECPLSZ|10.2>     0.000606208722i
 !MRCI trans     <15.2|ECPLSZ|10.2>    -0.000445509175i
 !MRCI trans     <16.2|ECPLSZ|10.2>     0.000048075045i
 !MRCI trans     <17.2|ECPLSZ|10.2>    -0.000182756864i
 !MRCI expec     <11.2|ECPLSZ|11.2>    -0.000002274817i
 !MRCI trans     <12.2|ECPLSZ|11.2>     0.001902179787i
 !MRCI trans     <13.2|ECPLSZ|11.2>    -0.001837977113i
 !MRCI trans     <14.2|ECPLSZ|11.2>    -0.002029305804i
 !MRCI trans     <15.2|ECPLSZ|11.2>     0.001064651437i
 !MRCI trans     <16.2|ECPLSZ|11.2>    -0.000067324621i
 !MRCI trans     <17.2|ECPLSZ|11.2>    -0.000133746518i
 !MRCI expec     <12.2|ECPLSZ|12.2>    -0.000001117714i
 !MRCI trans     <13.2|ECPLSZ|12.2>     0.000753441174i
 !MRCI trans     <14.2|ECPLSZ|12.2>    -0.000576172960i
 !MRCI trans     <15.2|ECPLSZ|12.2>     0.000040053514i
 !MRCI trans     <16.2|ECPLSZ|12.2>     0.000074347306i
 !MRCI trans     <17.2|ECPLSZ|12.2>    -0.000023277821i
 !MRCI expec     <13.2|ECPLSZ|13.2>     0.000005750640i
 !MRCI trans     <14.2|ECPLSZ|13.2>     0.000184990168i
 !MRCI trans     <15.2|ECPLSZ|13.2>     0.000013931035i
 !MRCI trans     <16.2|ECPLSZ|13.2>     0.000696019011i
 !MRCI trans     <17.2|ECPLSZ|13.2>    -0.000987054728i
 !MRCI expec     <14.2|ECPLSZ|14.2>     0.000005601964i
 !MRCI trans     <15.2|ECPLSZ|14.2>     0.000096381221i
 !MRCI trans     <16.2|ECPLSZ|14.2>     0.000905081490i
 !MRCI trans     <17.2|ECPLSZ|14.2>     0.000799490402i
 !MRCI expec     <15.2|ECPLSZ|15.2>    -0.000003370876i
 !MRCI trans     <16.2|ECPLSZ|15.2>    -0.001831053908i
 !MRCI trans     <17.2|ECPLSZ|15.2>     0.000101854733i
 !MRCI expec     <16.2|ECPLSZ|16.2>    -0.000000784908i
 !MRCI trans     <17.2|ECPLSZ|16.2>    -0.000004081733i
 !MRCI expec     <17.2|ECPLSZ|17.2>    -0.000000145224i



   Property matrices in the basis of the zeroth-order wave-functions
   =================================================================

 The property matrix for the DMX operator/operator component
 contains only zero matrix elements

 The property matrix for the DMY operator/operator component
 contains only zero matrix elements

 The property matrix for the DMZ operator/operator component
 contains only zero matrix elements

 Property matrix for the LZ operator


   Nr  Nr'  State  S          1             2             3             4             5             6             7             8
    1   2    1.2  1.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    2   5    1.2  0.5    -0.000000      0.000000      0.085197     -0.020859     -1.978644     -0.001515     -0.000000     -0.000000
    3   6    2.2  0.5    -0.000000     -0.085197      0.000000     -0.013012      0.276913     -0.002867      0.000000      0.000000
    4   7    3.2  0.5    -0.000000      0.020859      0.013012      0.000000     -0.011668     -1.000097      0.000000      0.000000
    5   8    4.2  0.5    -0.000000      1.978644     -0.276913      0.011668      0.000000     -0.009095      0.000000     -0.000000
    6   9    5.2  0.5    -0.000000      0.001515      0.002867      1.000097      0.009095      0.000000     -0.000000      0.000001
    7  10    6.2  0.5    -0.000000      0.000000     -0.000000     -0.000000     -0.000000      0.000000      0.000000      0.006916
    8  11    7.2  0.5    -0.000000      0.000000     -0.000000     -0.000000      0.000000     -0.000001     -0.006916      0.000000
    9  12    8.2  0.5    -0.000000     -0.000000      0.000000      0.000001     -0.000000     -0.000000      0.063968     -0.997928
   10  13    9.2  0.5    -0.000000     -0.000000     -0.000000     -0.000000      0.000000     -0.000000     -0.000000     -0.000000
   11  14   10.2  0.5    -0.000000     -0.000000     -0.000000     -0.000000      0.000000     -0.000000      0.000000      0.000000
   12  15   11.2  0.5    -0.000000     -0.000000     -0.000000     -0.000000      0.000000     -0.000000      0.000000     -0.000000
   13  16   12.2  0.5    -0.000000      0.000000     -0.000000     -0.000000     -0.000000      0.000000      0.000000     -0.000000
   14  17   13.2  0.5    -0.000000     -0.000000     -0.000000      0.000000     -0.000000     -0.000000     -0.000000     -0.000000
   15  18   14.2  0.5    -0.000000     -0.000000     -0.000000      0.000000      0.000000     -0.000000      0.000000     -0.000000
   16  19   15.2  0.5    -0.000000     -0.000000     -0.000000     -0.000000     -0.000000     -0.000000     -0.000000     -0.000000
   17  20   16.2  0.5    -0.000000     -0.000000     -0.000000     -0.000000     -0.000000     -0.000000     -0.000000     -0.000000
   18  21   17.2  0.5    -0.000000     -0.000000      0.000000     -0.000000     -0.000000     -0.000000     -0.000000     -0.000000

   Nr  Nr'  State  S          9            10            11            12            13            14            15            16
    1   2    1.2  1.5     0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    2   5    1.2  0.5     0.000000      0.000000      0.000000      0.000000     -0.000000      0.000000      0.000000      0.000000
    3   6    2.2  0.5    -0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    4   7    3.2  0.5    -0.000001      0.000000      0.000000      0.000000      0.000000     -0.000000     -0.000000      0.000000
    5   8    4.2  0.5     0.000000     -0.000000     -0.000000     -0.000000      0.000000      0.000000     -0.000000      0.000000
    6   9    5.2  0.5     0.000000      0.000000      0.000000      0.000000     -0.000000      0.000000      0.000000      0.000000
    7  10    6.2  0.5    -0.063968      0.000000     -0.000000     -0.000000     -0.000000      0.000000     -0.000000      0.000000
    8  11    7.2  0.5     0.997928      0.000000     -0.000000      0.000000      0.000000      0.000000      0.000000      0.000000
    9  12    8.2  0.5     0.000000      0.000000     -0.000000      0.000000     -0.000000      0.000000      0.000000      0.000000
   10  13    9.2  0.5    -0.000000      0.000000     -0.000000      0.000000     -0.000003      0.000000      0.000000     -0.000000
   11  14   10.2  0.5     0.000000      0.000000      0.000000      0.033465     -1.843622     -0.150009     -0.214627      0.000001
   12  15   11.2  0.5    -0.000000     -0.000000     -0.033465      0.000000     -0.683826      0.652878      0.719611     -0.000000
   13  16   12.2  0.5     0.000000      0.000003      1.843622      0.683826      0.000000     -0.270109      0.205903     -0.000000
   14  17   13.2  0.5    -0.000000     -0.000000      0.150009     -0.652878      0.270109      0.000000     -0.065644      0.000000
   15  18   14.2  0.5    -0.000000     -0.000000      0.214627     -0.719611     -0.205903      0.065644      0.000000      0.000000
   16  19   15.2  0.5    -0.000000      0.000000     -0.000001      0.000000      0.000000     -0.000000     -0.000000      0.000000
   17  20   16.2  0.5    -0.000000     -0.000000      0.000000      0.000000     -0.000001     -0.000000     -0.000000     -0.998583
   18  21   17.2  0.5    -0.000000     -0.000000      0.000004      0.000002      0.000000     -0.000001      0.000000      0.053178

   Nr  Nr'  State  S         17            18
    1   2    1.2  1.5     0.000000      0.000000
    2   5    1.2  0.5     0.000000      0.000000
    3   6    2.2  0.5     0.000000     -0.000000
    4   7    3.2  0.5     0.000000      0.000000
    5   8    4.2  0.5     0.000000      0.000000
    6   9    5.2  0.5     0.000000      0.000000
    7  10    6.2  0.5     0.000000      0.000000
    8  11    7.2  0.5     0.000000      0.000000
    9  12    8.2  0.5     0.000000      0.000000
   10  13    9.2  0.5     0.000000      0.000000
   11  14   10.2  0.5    -0.000000     -0.000004
   12  15   11.2  0.5    -0.000000     -0.000002
   13  16   12.2  0.5     0.000001     -0.000000
   14  17   13.2  0.5     0.000000      0.000001
   15  18   14.2  0.5     0.000000     -0.000000
   16  19   15.2  0.5     0.998583     -0.053178
   17  20   16.2  0.5     0.000000      0.002124
   18  21   17.2  0.5    -0.002124      0.000000



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -240.26104931

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00    -133.55
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00     -15.78

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00   -2408.42

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00     -77.10
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       9.11

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00    9755.96       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       1.83      -2.29      -0.52      -8.17      -0.23     236.99

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00    9756.05       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       2.29      -0.27      -0.27       1.72      -4.66    1688.28

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00    9756.01       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.52       0.27       1.67       0.08      -4.22       5.28

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9756.03       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       8.17      -1.72      -0.08       2.23       0.64      72.33

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9756.09       0.00
                            0.00       0.00      -0.00      -0.00       0.23       4.66       4.22      -0.64      -0.68     120.69

   10   6.2  0.5  0.5    -133.55       0.00     -77.10       0.00       0.00       0.00       0.00       0.00       0.00   16235.66
                           15.78    2408.42      -9.11      -0.00    -236.99   -1688.28      -5.28     -72.33    -120.69      -0.80

   11   7.2  0.5  0.5    2085.70       0.00    1204.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.22     154.38      11.68      -0.00       0.12    -132.61      16.33     -13.00    1475.82      -0.01

   12   8.2  0.5  0.5     -21.19       0.00     -12.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2089.92      16.69    1206.62      -0.00     -13.72      -6.76    1482.32     -22.97     -19.40       1.69

   13   9.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       8.85       3.25       0.03      -0.78       0.03     148.07

   14  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     -11.92      12.42       0.39    -257.16     -56.57       1.16

   15  11.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     -12.86       3.05      -2.52    -106.01     131.80       1.47

   16  12.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     281.03     -34.28       8.58     -15.34       1.00      -1.51

   17  13.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     -20.20       6.92      94.81      39.66       0.34       5.42

   18  14.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -8.58      15.63     107.82     -30.06       9.24     -13.21

   19  15.2  0.5  0.5     -30.28       0.00     -17.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -641.94       1.58     370.62      -0.00      -0.01       5.07      25.11      -1.10       3.97     -10.52

   20  16.2  0.5  0.5    -641.03       0.00    -370.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           30.31      39.46     -17.50      -0.00       0.11      -1.13      -0.94       0.01     -26.29      -0.37

   21  17.2  0.5  0.5      34.20       0.00      19.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.25     741.02       0.14      -0.00      -2.33     -26.18      -3.40      -3.49       1.99       1.70

   22   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.02       4.25      -0.26      -1.76     -86.52
                           -0.00       0.00      -0.00      -0.00       0.00       0.16      -0.94       0.13      -4.81       0.31

   23   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.02      -0.01      -8.91      -0.29       0.98     -65.68
                           -0.00       0.00       0.00      -0.00       0.42       0.28       1.04      -0.01      -7.37       4.59

   24   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -3.57       8.62       0.00       1.30       0.66      -1.15
                           -0.00       0.00      -0.00      -0.00      -1.61      -2.85      -0.03      -4.37      -0.12   -1490.09

   25   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.18      -0.13      -0.72      -0.25       3.67       2.41
                           -0.00      -0.00      -0.00       0.00       0.20       0.30       5.79      -0.08      -3.71     -71.66

   26   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.70       0.14      -0.29      -4.42       0.14    1487.65
                           -0.00       0.00       0.00      -0.00       5.09       7.04      -0.05       0.75      -0.37      -1.02

   27   6.2  0.5 -0.5       0.00     -77.10       0.00    -133.55      87.24      66.46       3.92      -1.09   -1480.44       1.27
                           -0.00       9.11    2408.42     -15.78      -2.02      -6.12    1480.50      71.97       4.91      -0.93

   28   7.2  0.5 -0.5       0.00    1204.18       0.00    2085.70   -1583.88    -640.27      -8.72       1.04     -89.84      -0.31
                           -0.00     -11.68     154.38      20.22     -25.66      79.78      71.54   -1476.27      -6.11      -2.58

   29   8.2  0.5 -0.5       0.00     -12.24       0.00     -21.19      32.85     -53.97      22.89    1482.30      -5.24      -2.08
                           -0.00   -1206.62      16.69    2089.92   -1348.44    1050.52      -3.81      75.46      32.08      -1.43

   30   9.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.05      -0.20      -0.65       0.52       8.69       8.45
                           -0.00      -0.00      -0.00       0.00      -0.74      -0.46       1.85      -0.04      -0.26      -0.86

   31  10.2  0.5 -0.5       0.00       0.00       0.00       0.00     -41.99     103.17     164.71      -2.02      -5.60       1.80
                           -0.00       0.00      -0.00      -0.00       2.56       9.99      -4.73     -53.44     -94.24       4.02

   32  11.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      96.18    -242.43      81.49     -12.90     -13.11      -0.80
                           -0.00      -0.00       0.00       0.00       2.08      -4.40      -4.18     129.79     -26.17      -9.53

   33  12.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       5.24      -9.94       7.99     -11.23     141.05      -0.80
                           -0.00      -0.00      -0.00       0.00      10.69      10.38     146.48       2.24      -6.20       1.22

   34  13.2  0.5 -0.5       0.00       0.00       0.00       0.00      -2.46       8.73     161.33     -95.03     -10.68      -8.60
                           -0.00      -0.00       0.00       0.00     116.54     143.53      -8.33       2.74     205.04      -1.12

   35  14.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       6.76      -9.12    -149.81    -105.95      -4.71      -6.86
                           -0.00      -0.00       0.00       0.00     130.39     171.63      -5.43      14.47    -173.76      -2.31

   36  15.2  0.5 -0.5       0.00     -17.48       0.00     -30.28      -4.78      -2.16       0.30      25.78       0.07     128.98
                           -0.00    -370.62       1.58     641.94     -23.15      18.70      -0.40      -4.18       0.27       0.19

   37  16.2  0.5 -0.5       0.00    -370.10       0.00    -641.03      28.00      10.51       0.04      -3.57      -1.23      -6.60
                           -0.00      17.50      39.46     -30.31       3.98       0.44       2.15      25.95       0.01    -128.71

   38  17.2  0.5 -0.5       0.00      19.75       0.00      34.20      -2.42      -0.50      -0.53       0.44     -25.36       1.59
                           -0.00      -0.14     741.02       0.25      -0.88      -6.75      29.02      -2.57      -3.43      16.48


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5    2085.70     -21.19      -0.00       0.00      -0.00      -0.00       0.00      -0.00     -30.28    -641.03
                           20.22    2089.92       0.00      -0.00       0.00       0.00       0.00       0.00     641.94     -30.31

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -154.38     -16.69       0.00       0.00      -0.00       0.00      -0.00      -0.00      -1.58     -39.46

    3   1.2  1.5 -0.5    1204.18     -12.24      -0.00       0.00      -0.00      -0.00       0.00      -0.00     -17.48    -370.10
                          -11.68   -1206.62      -0.00       0.00      -0.00      -0.00      -0.00      -0.00    -370.62      17.50

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.12      13.72      -8.85      11.92      12.86    -281.03      20.20       8.58       0.01      -0.11

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          132.61       6.76      -3.25     -12.42      -3.05      34.28      -6.92     -15.63      -5.07       1.13

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -16.33   -1482.32      -0.03      -0.39       2.52      -8.58     -94.81    -107.82     -25.11       0.94

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.00      22.97       0.78     257.16     106.01      15.34     -39.66      30.06       1.10      -0.01

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1475.82      19.40      -0.03      56.57    -131.80      -1.00      -0.34      -9.24      -3.97      26.29

   10   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -1.69    -148.07      -1.16      -1.47       1.51      -5.42      13.21      10.52       0.37

   11   7.2  0.5  0.5   16235.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.09       0.11      -9.90      -0.04      -1.59       0.07      -9.75     -10.89    -127.72       2.30

   12   8.2  0.5  0.5       0.00   16235.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.11      -3.17      -0.74      -3.81       8.42       1.04       3.16       4.12      -0.89    -131.44

   13   9.2  0.5  0.5       0.00       0.00   54632.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.90       0.74       1.71       0.04      -0.13      -0.00      -0.96       0.91       2.55      64.83

   14  10.2  0.5  0.5       0.00       0.00       0.00   57428.89       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04       3.81      -0.04      -0.42      20.30   -1128.15     -96.27    -134.57      96.59     -10.28

   15  11.2  0.5  0.5       0.00       0.00       0.00       0.00   57428.88       0.00       0.00       0.00       0.00       0.00
                            1.59      -8.42       0.13     -20.30      -0.50    -415.19     407.71     450.55    -230.64      15.11

   16  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   57428.88       0.00       0.00       0.00       0.00
                           -0.07      -1.04       0.00    1128.15     415.19      -0.25    -165.54     125.98      -8.69     -16.47

   17  13.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   57428.92       0.00       0.00       0.00
                            9.75      -3.16       0.96      96.27    -407.71     165.54       1.26     -40.18      -2.71    -151.63

   18  14.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   57428.92       0.00       0.00
                           10.89      -4.12      -0.91     134.57    -450.55    -125.98      40.18       1.23     -20.50    -196.46

   19  15.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   58824.89       0.00
                          127.72       0.89      -2.55     -96.59     230.64       8.69       2.71      20.50      -0.74     408.75

   20  16.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   58824.88
                           -2.30     131.44     -64.83      10.28     -15.11      16.47     151.63     196.46    -408.75      -0.17

   21  17.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.05      -7.33   -1216.83     -40.19     -31.44      -5.29    -218.62     173.29      21.56      -0.59

   22   1.2  0.5 -0.5    1591.01     -30.11       0.00      44.52    -102.15      -4.63       4.38      -4.91      -2.39     -27.93
                           32.56    1354.54      -0.01      -3.99       0.34     -10.97    -116.73    -130.54      16.79      -1.65

   23   2.2  0.5 -0.5     643.22      58.67       0.04    -103.06     242.52      10.11     -10.25       7.22       0.48     -10.30
                          -80.85   -1055.26      -0.10     -11.59       8.40     -16.00    -143.80    -172.15     -12.61       2.63

   24   3.2  0.5 -0.5       9.07     -23.96      -0.05    -162.59     -80.41      -9.22    -159.00     147.46      -0.52      -0.09
                          -71.89       4.88       0.61       4.38       3.85    -141.25       6.51       6.63       0.15      -1.56

   25   4.2  0.5 -0.5      -7.81   -1486.28       0.00       2.18      11.30      11.13      95.12     105.30     -17.67       2.08
                         1485.37     -73.54       0.05      56.05    -135.86      -2.86      -0.98     -13.21      -2.21     -26.84

   26   5.2  0.5 -0.5      90.09       2.82      -0.24       1.53      11.19    -140.63       7.46       7.27      -0.02       1.18
                            6.29     -32.84       0.11      94.39      26.47       0.80    -203.77     170.83      -1.06      -0.03

   27   6.2  0.5 -0.5       2.49       0.98      -9.68      -0.92       0.55       0.55       9.37       9.69    -130.81       5.73
                            0.61      -0.48       1.13      -4.24      10.76      -0.83      -1.35       0.28       6.14     126.74

   28   7.2  0.5 -0.5       0.38       0.37     149.19      10.84       4.21       0.51      -6.98       6.87      -8.29       0.33
                           -0.05       0.19      -2.04      -0.24       0.39      12.49       0.15      -1.54       0.56      14.96

   29   8.2  0.5 -0.5       0.05      11.16      -2.69       0.80       0.82     -13.52       1.70       0.08      -0.57       6.78
                            0.92       0.14    -149.67      12.78       6.03       0.58       3.61      -4.19       0.22       0.48

   30   9.2  0.5 -0.5    -150.01       2.92      -0.01      -2.48       5.88      -0.03      -0.96      -0.72      60.68    1222.22
                           -6.70     141.22       0.00      -0.41       0.99      -0.18      -2.51      -2.65    1244.02     -57.03

   31  10.2  0.5 -0.5      -8.60      -0.97       0.12       4.77    -792.50     -58.91    -263.51     201.31       1.23     199.89
                            2.50     -10.10       0.33      -0.35      34.02    -262.71    -284.97    -273.57    -248.89      10.03

   32  11.2  0.5 -0.5      -3.08      -0.74      -0.04     783.44      -5.51      32.58     626.99    -616.03      -7.91      75.65
                            1.03      -4.31      -0.90     -33.63       0.67     553.51     -97.16    -121.90    -109.86     -17.82

   33  12.2  0.5 -0.5      -2.83      10.41      -0.05      59.07     -33.60       0.43     426.33     443.95     250.51      -5.52
                          -11.08       0.46       0.04     266.75    -563.59      -0.17     -51.25      20.21      -1.65     241.32

   34  13.2  0.5 -0.5       9.28      -4.61      -0.89     269.61    -640.68    -422.69       0.20     -22.43     -21.60    -155.03
                            2.41      -4.00       0.02     282.10      96.94      52.62       6.50    1153.80     -73.54      -9.81

   35  14.2  0.5 -0.5      -7.46       4.03      -0.85    -206.76     628.01    -439.02      21.16       0.28      -4.83     109.26
                           -1.42       0.10      -0.21     269.98     121.11     -20.98   -1150.96      -5.45      71.42     -14.13

   36  15.2  0.5 -0.5       7.97       0.84     -55.12      -3.04       7.15    -244.26      20.19       5.72      -0.06     -21.20
                           -0.36      -0.65   -1217.46     243.13     107.27       0.49      69.01     -68.99      -0.24       0.10

   37  16.2  0.5 -0.5      -0.78      -7.19   -1216.18    -202.79     -77.20       6.21     148.87    -104.86      21.60       0.04
                          -14.94      -0.78      56.68      -9.88      18.03    -244.32       9.94      14.41      -0.13      -0.02

   38  17.2  0.5 -0.5      -5.51    -130.58      65.14      18.99       1.44      17.06     153.45     191.75     406.72     -18.12
                         -128.74       2.44      -0.37     -96.37     228.76      20.98      -4.90      10.78     -19.10    -398.78


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  1.5  1.5      34.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00       0.00     -77.10    1204.18     -12.24      -0.00
                         -741.02      -0.00      -0.00      -0.00       0.00      -0.00      -9.11      11.68    1206.62       0.00

    3   1.2  1.5 -0.5      19.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.14       0.00      -0.00       0.00       0.00      -0.00   -2408.42    -154.38     -16.69       0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00       0.00    -133.55    2085.70     -21.19      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      15.78     -20.22   -2089.92      -0.00

    5   1.2  0.5  0.5       0.00      -0.00       0.02      -3.57       0.18       0.70      87.24   -1583.88      32.85       0.05
                            2.33      -0.00      -0.42       1.61      -0.20      -5.09       2.02      25.66    1348.44       0.74

    6   2.2  0.5  0.5       0.00      -0.02      -0.01       8.62      -0.13       0.14      66.46    -640.27     -53.97      -0.20
                           26.18      -0.16      -0.28       2.85      -0.30      -7.04       6.12     -79.78   -1050.52       0.46

    7   3.2  0.5  0.5       0.00       4.25      -8.91       0.00      -0.72      -0.29       3.92      -8.72      22.89      -0.65
                            3.40       0.94      -1.04       0.03      -5.79       0.05   -1480.50     -71.54       3.81      -1.85

    8   4.2  0.5  0.5       0.00      -0.26      -0.29       1.30      -0.25      -4.42      -1.09       1.04    1482.30       0.52
                            3.49      -0.13       0.01       4.37       0.08      -0.75     -71.97    1476.27     -75.46       0.04

    9   5.2  0.5  0.5       0.00      -1.76       0.98       0.66       3.67       0.14   -1480.44     -89.84      -5.24       8.69
                           -1.99       4.81       7.37       0.12       3.71       0.37      -4.91       6.11     -32.08       0.26

   10   6.2  0.5  0.5       0.00     -86.52     -65.68      -1.15       2.41    1487.65       1.27      -0.31      -2.08       8.45
                           -1.70      -0.31      -4.59    1490.09      71.66       1.02       0.93       2.58       1.43       0.86

   11   7.2  0.5  0.5       0.00    1591.01     643.22       9.07      -7.81      90.09       2.49       0.38       0.05    -150.01
                            1.05     -32.56      80.85      71.89   -1485.37      -6.29      -0.61       0.05      -0.92       6.70

   12   8.2  0.5  0.5       0.00     -30.11      58.67     -23.96   -1486.28       2.82       0.98       0.37      11.16       2.92
                            7.33   -1354.54    1055.26      -4.88      73.54      32.84       0.48      -0.19      -0.14    -141.22

   13   9.2  0.5  0.5       0.00       0.00       0.04      -0.05       0.00      -0.24      -9.68     149.19      -2.69      -0.01
                         1216.83       0.01       0.10      -0.61      -0.05      -0.11      -1.13       2.04     149.67      -0.00

   14  10.2  0.5  0.5       0.00      44.52    -103.06    -162.59       2.18       1.53      -0.92      10.84       0.80      -2.48
                           40.19       3.99      11.59      -4.38     -56.05     -94.39       4.24       0.24     -12.78       0.41

   15  11.2  0.5  0.5       0.00    -102.15     242.52     -80.41      11.30      11.19       0.55       4.21       0.82       5.88
                           31.44      -0.34      -8.40      -3.85     135.86     -26.47     -10.76      -0.39      -6.03      -0.99

   16  12.2  0.5  0.5       0.00      -4.63      10.11      -9.22      11.13    -140.63       0.55       0.51     -13.52      -0.03
                            5.29      10.97      16.00     141.25       2.86      -0.80       0.83     -12.49      -0.58       0.18

   17  13.2  0.5  0.5       0.00       4.38     -10.25    -159.00      95.12       7.46       9.37      -6.98       1.70      -0.96
                          218.62     116.73     143.80      -6.51       0.98     203.77       1.35      -0.15      -3.61       2.51

   18  14.2  0.5  0.5       0.00      -4.91       7.22     147.46     105.30       7.27       9.69       6.87       0.08      -0.72
                         -173.29     130.54     172.15      -6.63      13.21    -170.83      -0.28       1.54       4.19       2.65

   19  15.2  0.5  0.5       0.00      -2.39       0.48      -0.52     -17.67      -0.02    -130.81      -8.29      -0.57      60.68
                          -21.56     -16.79      12.61      -0.15       2.21       1.06      -6.14      -0.56      -0.22   -1244.02

   20  16.2  0.5  0.5       0.00     -27.93     -10.30      -0.09       2.08       1.18       5.73       0.33       6.78    1222.22
                            0.59       1.65      -2.63       1.56      26.84       0.03    -126.74     -14.96      -0.48      57.03

   21  17.2  0.5  0.5   58824.89       1.78       0.47       0.43      -0.31      21.24      -0.44       1.33     128.56     -65.64
                           -0.03      -0.20       0.26      22.16      -1.83       0.25      15.39    -127.65       1.44      -0.45

   22   1.2  0.5 -0.5       1.78    9755.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.20      -1.83       2.29       0.52       8.17       0.23    -236.99       0.12     -13.72       8.85

   23   2.2  0.5 -0.5       0.47       0.00    9756.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.26      -2.29       0.27       0.27      -1.72       4.66   -1688.28    -132.61      -6.76       3.25

   24   3.2  0.5 -0.5       0.43       0.00       0.00    9756.01       0.00       0.00       0.00       0.00       0.00       0.00
                          -22.16      -0.52      -0.27      -1.67      -0.08       4.22      -5.28      16.33    1482.32       0.03

   25   4.2  0.5 -0.5      -0.31       0.00       0.00       0.00    9756.03       0.00       0.00       0.00       0.00       0.00
                            1.83      -8.17       1.72       0.08      -2.23      -0.64     -72.33     -13.00     -22.97      -0.78

   26   5.2  0.5 -0.5      21.24       0.00       0.00       0.00       0.00    9756.09       0.00       0.00       0.00       0.00
                           -0.25      -0.23      -4.66      -4.22       0.64       0.68    -120.69    1475.82     -19.40       0.03

   27   6.2  0.5 -0.5      -0.44       0.00       0.00       0.00       0.00       0.00   16235.66       0.00       0.00       0.00
                          -15.39     236.99    1688.28       5.28      72.33     120.69       0.80      -0.01       1.69     148.07

   28   7.2  0.5 -0.5       1.33       0.00       0.00       0.00       0.00       0.00       0.00   16235.65       0.00       0.00
                          127.65      -0.12     132.61     -16.33      13.00   -1475.82       0.01       3.09      -0.11       9.90

   29   8.2  0.5 -0.5     128.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16235.78       0.00
                           -1.44      13.72       6.76   -1482.32      22.97      19.40      -1.69       0.11       3.17       0.74

   30   9.2  0.5 -0.5     -65.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54632.11
                            0.45      -8.85      -3.25      -0.03       0.78      -0.03    -148.07      -9.90      -0.74      -1.71

   31  10.2  0.5 -0.5     -18.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           94.72      11.92     -12.42      -0.39     257.16      56.57      -1.16      -0.04      -3.81       0.04

   32  11.2  0.5 -0.5      -1.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -224.77      12.86      -3.05       2.52     106.01    -131.80      -1.47      -1.59       8.42      -0.13

   33  12.2  0.5 -0.5     -17.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -19.94    -281.03      34.28      -8.58      15.34      -1.00       1.51       0.07       1.04      -0.00

   34  13.2  0.5 -0.5    -153.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.66      20.20      -6.92     -94.81     -39.66      -0.34      -5.42      -9.75       3.16      -0.96

   35  14.2  0.5 -0.5    -191.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.87       8.58     -15.63    -107.82      30.06      -9.24      13.21     -10.89       4.12       0.91

   36  15.2  0.5 -0.5    -400.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           19.10       0.01      -5.07     -25.11       1.10      -3.97      10.52    -127.72      -0.89       2.55

   37  16.2  0.5 -0.5      17.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          401.65      -0.11       1.13       0.94      -0.01      26.29       0.37       2.30    -131.44      64.83

   38  17.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.35       2.33      26.18       3.40       3.49      -1.99      -1.70       1.05       7.33    1216.83


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00      -0.00      -0.00       0.00      -0.00     -17.48    -370.10      19.75
                           -0.00       0.00       0.00       0.00       0.00     370.62     -17.50       0.14

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -1.58     -39.46    -741.02

    4   1.2  1.5 -1.5       0.00      -0.00      -0.00       0.00      -0.00     -30.28    -641.03      34.20
                            0.00      -0.00      -0.00      -0.00      -0.00    -641.94      30.31      -0.25

    5   1.2  0.5  0.5     -41.99      96.18       5.24      -2.46       6.76      -4.78      28.00      -2.42
                           -2.56      -2.08     -10.69    -116.54    -130.39      23.15      -3.98       0.88

    6   2.2  0.5  0.5     103.17    -242.43      -9.94       8.73      -9.12      -2.16      10.51      -0.50
                           -9.99       4.40     -10.38    -143.53    -171.63     -18.70      -0.44       6.75

    7   3.2  0.5  0.5     164.71      81.49       7.99     161.33    -149.81       0.30       0.04      -0.53
                            4.73       4.18    -146.48       8.33       5.43       0.40      -2.15     -29.02

    8   4.2  0.5  0.5      -2.02     -12.90     -11.23     -95.03    -105.95      25.78      -3.57       0.44
                           53.44    -129.79      -2.24      -2.74     -14.47       4.18     -25.95       2.57

    9   5.2  0.5  0.5      -5.60     -13.11     141.05     -10.68      -4.71       0.07      -1.23     -25.36
                           94.24      26.17       6.20    -205.04     173.76      -0.27      -0.01       3.43

   10   6.2  0.5  0.5       1.80      -0.80      -0.80      -8.60      -6.86     128.98      -6.60       1.59
                           -4.02       9.53      -1.22       1.12       2.31      -0.19     128.71     -16.48

   11   7.2  0.5  0.5      -8.60      -3.08      -2.83       9.28      -7.46       7.97      -0.78      -5.51
                           -2.50      -1.03      11.08      -2.41       1.42       0.36      14.94     128.74

   12   8.2  0.5  0.5      -0.97      -0.74      10.41      -4.61       4.03       0.84      -7.19    -130.58
                           10.10       4.31      -0.46       4.00      -0.10       0.65       0.78      -2.44

   13   9.2  0.5  0.5       0.12      -0.04      -0.05      -0.89      -0.85     -55.12   -1216.18      65.14
                           -0.33       0.90      -0.04      -0.02       0.21    1217.46     -56.68       0.37

   14  10.2  0.5  0.5       4.77     783.44      59.07     269.61    -206.76      -3.04    -202.79      18.99
                            0.35      33.63    -266.75    -282.10    -269.98    -243.13       9.88      96.37

   15  11.2  0.5  0.5    -792.50      -5.51     -33.60    -640.68     628.01       7.15     -77.20       1.44
                          -34.02      -0.67     563.59     -96.94    -121.11    -107.27     -18.03    -228.76

   16  12.2  0.5  0.5     -58.91      32.58       0.43    -422.69    -439.02    -244.26       6.21      17.06
                          262.71    -553.51       0.17     -52.62      20.98      -0.49     244.32     -20.98

   17  13.2  0.5  0.5    -263.51     626.99     426.33       0.20      21.16      20.19     148.87     153.45
                          284.97      97.16      51.25      -6.50    1150.96     -69.01      -9.94       4.90

   18  14.2  0.5  0.5     201.31    -616.03     443.95     -22.43       0.28       5.72    -104.86     191.75
                          273.57     121.90     -20.21   -1153.80       5.45      68.99     -14.41     -10.78

   19  15.2  0.5  0.5       1.23      -7.91     250.51     -21.60      -4.83      -0.06      21.60     406.72
                          248.89     109.86       1.65      73.54     -71.42       0.24       0.13      19.10

   20  16.2  0.5  0.5     199.89      75.65      -5.52    -155.03     109.26     -21.20       0.04     -18.12
                          -10.03      17.82    -241.32       9.81      14.13      -0.10       0.02     398.78

   21  17.2  0.5  0.5     -18.02      -1.94     -17.12    -153.20    -191.14    -400.62      17.85       0.00
                          -94.72     224.77      19.94      -4.66      10.87     -19.10    -401.65      -0.35

   22   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -11.92     -12.86     281.03     -20.20      -8.58      -0.01       0.11      -2.33

   23   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.42       3.05     -34.28       6.92      15.63       5.07      -1.13     -26.18

   24   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.39      -2.52       8.58      94.81     107.82      25.11      -0.94      -3.40

   25   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -257.16    -106.01     -15.34      39.66     -30.06      -1.10       0.01      -3.49

   26   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -56.57     131.80       1.00       0.34       9.24       3.97     -26.29       1.99

   27   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.16       1.47      -1.51       5.42     -13.21     -10.52      -0.37       1.70

   28   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04       1.59      -0.07       9.75      10.89     127.72      -2.30      -1.05

   29   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.81      -8.42      -1.04      -3.16      -4.12       0.89     131.44      -7.33

   30   9.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04       0.13       0.00       0.96      -0.91      -2.55     -64.83   -1216.83

   31  10.2  0.5 -0.5   57428.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.42     -20.30    1128.15      96.27     134.57     -96.59      10.28     -40.19

   32  11.2  0.5 -0.5       0.00   57428.88       0.00       0.00       0.00       0.00       0.00       0.00
                           20.30       0.50     415.19    -407.71    -450.55     230.64     -15.11     -31.44

   33  12.2  0.5 -0.5       0.00       0.00   57428.88       0.00       0.00       0.00       0.00       0.00
                        -1128.15    -415.19       0.25     165.54    -125.98       8.69      16.47      -5.29

   34  13.2  0.5 -0.5       0.00       0.00       0.00   57428.92       0.00       0.00       0.00       0.00
                          -96.27     407.71    -165.54      -1.26      40.18       2.71     151.63    -218.62

   35  14.2  0.5 -0.5       0.00       0.00       0.00       0.00   57428.92       0.00       0.00       0.00
                         -134.57     450.55     125.98     -40.18      -1.23      20.50     196.46     173.29

   36  15.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   58824.89       0.00       0.00
                           96.59    -230.64      -8.69      -2.71     -20.50       0.74    -408.75      21.56

   37  16.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   58824.88       0.00
                          -10.28      15.11     -16.47    -151.63    -196.46     408.75       0.17      -0.59

   38  17.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   58824.89
                           40.19      31.44       5.29     218.62    -173.29     -21.56       0.59       0.03


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -240.26364698    -0.00259767     -570.12      0.00000000        0.00      0.0000
     2  -240.26364551    -0.00259620     -569.80      0.00000147        0.32      0.0000
     3  -240.26364534    -0.00259603     -569.76      0.00000164        0.36      0.0000
     4  -240.26364449    -0.00259518     -569.58      0.00000249        0.55      0.0001
     5  -240.22241916     0.03863015     8478.34      0.04122782     9048.46      1.1219
     6  -240.22240785     0.03864146     8480.82      0.04123913     9050.94      1.1222
     7  -240.22238204     0.03866727     8486.48      0.04126494     9056.61      1.1229
     8  -240.22236172     0.03868759     8490.94      0.04128526     9061.07      1.1234
     9  -240.21658101     0.04446830     9759.66      0.04706597    10329.79      1.2807
    10  -240.21657792     0.04447138     9760.34      0.04706905    10330.46      1.2808
    11  -240.21656667     0.04448264     9762.81      0.04708031    10332.93      1.2811
    12  -240.21656489     0.04448442     9763.20      0.04708208    10333.32      1.2812
    13  -240.21655048     0.04449883     9766.36      0.04709650    10336.49      1.2816
    14  -240.21654738     0.04450193     9767.05      0.04709960    10337.17      1.2816
    15  -240.18711568     0.07393363    16226.56      0.07653130    16796.68      2.0825
    16  -240.18708168     0.07396762    16234.02      0.07656529    16804.14      2.0834
    17  -240.17886046     0.08218884    18038.37      0.08478651    18608.49      2.3072
    18  -240.17882709     0.08222222    18045.69      0.08481989    18615.81      2.3081
    19  -240.17881262     0.08223669    18048.87      0.08483436    18618.99      2.3085
    20  -240.17878470     0.08226461    18054.99      0.08486228    18625.12      2.3092
    21  -240.01681306     0.24423625    53603.66      0.24683392    54173.78      6.7167
    22  -240.01674289     0.24430642    53619.06      0.24690409    54189.18      6.7186
    23  -240.00825208     0.25279723    55482.58      0.25539490    56052.70      6.9496
    24  -240.00814083     0.25290848    55507.00      0.25550615    56077.12      6.9527
    25  -240.00813373     0.25291558    55508.55      0.25551325    56078.68      6.9529
    26  -240.00807965     0.25296965    55520.42      0.25556732    56090.54      6.9543
    27  -239.99383301     0.26721629    58647.20      0.26981396    59217.32      7.3420
    28  -239.99380666     0.26724265    58652.98      0.26984031    59223.10      7.3427
    29  -239.99380413     0.26724518    58653.54      0.26984285    59223.66      7.3428
    30  -239.99375106     0.26729825    58665.19      0.26989592    59235.31      7.3442
    31  -239.99374058     0.26730873    58667.49      0.26990640    59237.61      7.3445
    32  -239.99367290     0.26737641    58682.34      0.26997408    59252.46      7.3464
    33  -239.99207768     0.26897163    59032.45      0.27156930    59602.57      7.3898
    34  -239.99201795     0.26903136    59045.56      0.27162903    59615.68      7.3914
    35  -239.99076851     0.27028080    59319.78      0.27287847    59889.90      7.4254
    36  -239.99076557     0.27028374    59320.42      0.27288141    59890.55      7.4255
    37  -239.99072200     0.27032731    59329.99      0.27292498    59900.11      7.4267
    38  -239.99070588     0.27034343    59333.52      0.27294110    59903.65      7.4271


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.786396727   0.379683060   0.265478882  -0.359365849  -0.098261980   0.054003958   0.048203286  -0.009462354
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.373969671   0.469818923   0.109421183  -0.241188123   0.064555724   0.080414267   0.044155853   0.014978881
                        -0.126038660   0.010420785   0.678057788   0.236105253   0.001374158   0.002408145   0.009007603   0.045313874

    3    1.2  1.5 -0.5  -0.128648380   0.550209964   0.108221842   0.379740199   0.018063968  -0.024648282   0.057756117  -0.033957411
                        -0.045598883   0.538245104  -0.409314386   0.166512349  -0.014123743   0.046490678  -0.083521647  -0.012390287

    4    1.2  1.5 -1.5   0.409933472  -0.065935972  -0.171316448   0.700892510  -0.014220682  -0.009527163   0.002790910   0.105893730
                        -0.036763928  -0.021323560   0.459815060   0.236707390   0.020798372   0.051881952  -0.015917471  -0.001000674

    5    1.2  0.5  0.5  -0.013406985   0.000093998   0.005653543  -0.025449883  -0.020606360   0.006905052   0.045810691   0.514024772
                         0.002127894   0.000300236  -0.021049542  -0.010041244   0.098844897   0.251512353  -0.068390232   0.018603518

    6    2.2  0.5  0.5   0.016223602  -0.018415869  -0.004008822   0.013217049   0.308728113   0.380954349   0.203373414   0.000493938
                         0.004094557   0.000068618  -0.022879348  -0.008712331  -0.005996730  -0.025217178   0.051354895   0.241239985

    7    3.2  0.5  0.5  -0.019475719   0.011033411  -0.001688520   0.019067354  -0.310206398   0.234515949  -0.126796501   0.122629142
                        -0.001298481   0.017824742  -0.013722625   0.005915194   0.059389874  -0.189584551   0.346515192   0.043188842

    8    4.2  0.5  0.5   0.002566938  -0.000270113  -0.017729981  -0.008546224   0.117979069   0.263034331  -0.067526194  -0.012084241
                         0.015951591  -0.002682650  -0.007138441   0.026489303   0.066797460   0.045261081  -0.017432635  -0.500150170

    9    5.2  0.5  0.5  -0.001037809   0.017578389  -0.013777769   0.005937754   0.067028653  -0.186585514   0.349389550   0.047890726
                        -0.010661897  -0.025483479  -0.008877173  -0.005639284  -0.160967918   0.022320166   0.356797877  -0.163386829

   10    6.2  0.5  0.5  -0.013248662   0.007204982   0.106881186   0.034858586   0.007809775  -0.010667823  -0.032548731  -0.102742197
                         0.056198876  -0.069382785  -0.018965605   0.038345203   0.150418832   0.185895458   0.110026315   0.036091672

   11    7.2  0.5  0.5  -0.095750634  -0.092000989  -0.037153106   0.021044174  -0.177778765   0.079587497   0.165202463  -0.065781417
                         0.008282069  -0.045740635   0.030534020  -0.011128485  -0.004449594   0.064845093  -0.091405927  -0.012519686

   12    8.2  0.5  0.5  -0.002679058   0.042241427  -0.030246320   0.012839300   0.018091081  -0.055082062   0.096118148   0.014451428
                         0.114832904   0.008148082   0.026527243  -0.076451022   0.221869077  -0.137783980  -0.028101369  -0.020376348

   13    9.2  0.5  0.5  -0.000001560   0.000001418  -0.000005873  -0.000003367   0.000010570   0.000044354  -0.000009113   0.000035112
                         0.000000203   0.000003381   0.000001907   0.000002460  -0.000020831  -0.000035641  -0.000030043  -0.000102894

   14   10.2  0.5  0.5  -0.000088174   0.000035950   0.000020114  -0.000057174  -0.002042954  -0.000153274  -0.000450283   0.004401724
                        -0.000003196   0.000023157  -0.000060934  -0.000018159   0.000942609   0.001318017   0.000642889  -0.000051894

   15   11.2  0.5  0.5   0.000048962  -0.000027329   0.000023784  -0.000106142   0.002081575  -0.002540793   0.000819657   0.000630743
                         0.000006840  -0.000054861   0.000036183  -0.000030353  -0.000163883   0.002384771  -0.003170265  -0.000423112

   16   12.2  0.5  0.5   0.000001559   0.000008689  -0.000064792  -0.000036917   0.000922789   0.001945837  -0.000474344   0.000128138
                         0.000046783  -0.000016102  -0.000020593   0.000090517   0.000462727   0.000536035  -0.000052243  -0.004623916

   17   13.2  0.5  0.5  -0.000046630   0.000088233  -0.000019388   0.000005195  -0.001744761  -0.003688069   0.000655578  -0.000791986
                        -0.000042105  -0.000052414   0.000065828   0.000010135  -0.001142997  -0.000330602   0.001917750  -0.002083905

   18   14.2  0.5  0.5   0.000016085   0.000005731  -0.000047969   0.000021586   0.002154913   0.000699114   0.003659194   0.001206348
                        -0.000019562  -0.000060225  -0.000077610  -0.000042972  -0.001063298   0.000418783   0.002345185   0.000265804

   19   15.2  0.5  0.5   0.000067458   0.003803990  -0.002429360   0.000999074  -0.000065313   0.000062932  -0.000083282  -0.000011420
                         0.009504145   0.000831792   0.002119211  -0.006338661  -0.000408869   0.000205947   0.000020361   0.000002466

   20   16.2  0.5  0.5   0.007800339   0.007545068   0.004208953  -0.001443098  -0.000129365   0.000058946   0.000153724  -0.000047442
                        -0.000482042   0.003081523  -0.002787688   0.001526039  -0.000021813   0.000042925  -0.000117597  -0.000023923

   21   17.2  0.5  0.5  -0.002028270  -0.000280608   0.008457798   0.003095410   0.000010751   0.000035667   0.000009957   0.000167394
                         0.004789879  -0.006179307  -0.001260244   0.003020334  -0.000226527  -0.000226603  -0.000158153  -0.000054609

   22    1.2  0.5 -0.5   0.029468861   0.017218722   0.010305437  -0.011614724   0.457401986  -0.236643199  -0.266428391   0.068280935
                         0.000067900   0.003167113  -0.002161191   0.000772230   0.011557187  -0.037472541   0.052063168   0.006501966

   23    2.2  0.5 -0.5  -0.009216858   0.018952117   0.003218094   0.016420455  -0.153619001   0.147950226  -0.244343357   0.152550622
                        -0.003037425   0.019498606  -0.015899692   0.006860070   0.050616679  -0.204639959   0.411000418   0.060420622

   24    3.2  0.5 -0.5  -0.020032566   0.016945987   0.006991382  -0.021593827  -0.297883687  -0.360070702  -0.179060456   0.191982840
                        -0.002995279   0.000910509   0.013976081   0.003094922   0.052058979   0.111605168  -0.080691260  -0.191245593

   25    4.2  0.5 -0.5  -0.000439736   0.000362188   0.000066885   0.001236557  -0.006746925   0.014005938  -0.004988924   0.002780912
                         0.030205819   0.015342400   0.009318985  -0.013598746   0.474046351  -0.268929770  -0.212081721   0.052716583

   26    5.2  0.5 -0.5   0.004463633   0.000187616  -0.031397216  -0.011927988   0.048280674   0.139882431  -0.003619137   0.188184831
                        -0.004485567   0.014752892   0.000183217   0.005422687  -0.231117259  -0.316198987  -0.186563805  -0.316089691

   27    6.2  0.5 -0.5  -0.005367670   0.084209437  -0.063661874   0.030151006   0.030581100  -0.112965559   0.191447283   0.013666770
                         0.019388457  -0.084715575  -0.009565744  -0.054152762   0.040105211  -0.063639490   0.136527962  -0.084078991

   28    7.2  0.5 -0.5  -0.026128156  -0.021974636   0.010411975  -0.072720643   0.048310906   0.066506468   0.070064555   0.234701795
                         0.014981806  -0.002940167  -0.113635371  -0.054260304   0.045166375   0.102804066  -0.013654053   0.047525852

   29    8.2  0.5 -0.5   0.004990702  -0.002785412   0.008522136   0.014274573  -0.041071403  -0.104278918   0.043528309   0.052667095
                        -0.083251967   0.044199552   0.032198811  -0.111479614  -0.104518737  -0.114819925  -0.044734376   0.196418566

   30    9.2  0.5 -0.5  -0.000016141  -0.000002806  -0.000001107   0.000009285  -0.000062773   0.000057669  -0.000069609  -0.000012586
                        -0.000010332  -0.000006190  -0.000005344   0.000004901   0.000095874  -0.000034385  -0.000076428   0.000058975

   31   10.2  0.5 -0.5   0.000078391   0.000062948   0.000035579  -0.000088552   0.002893370  -0.003459133  -0.002077993   0.000856418
                        -0.000005085  -0.000007417   0.000030515   0.000000051  -0.000122585   0.000641682  -0.000745026  -0.000835961

   32   11.2  0.5 -0.5   0.000116126  -0.000046522  -0.000008022   0.000050866   0.004127567   0.001951546   0.000973338  -0.001547403
                         0.000010987  -0.000013793  -0.000044801  -0.000014123  -0.000593592  -0.000601642   0.000345427   0.001476733

   33   12.2  0.5 -0.5   0.000005720  -0.000005959  -0.000006981  -0.000004526   0.000288166   0.000095546  -0.000022594   0.000025975
                         0.000116464   0.000051072   0.000037040  -0.000049203   0.004081960  -0.002436122  -0.002135302   0.000244873

   34   13.2  0.5 -0.5   0.000008513  -0.000059833  -0.000082758  -0.000070998   0.000264434   0.000273663   0.002073351  -0.000029555
                        -0.000006979  -0.000024593   0.000047525  -0.000008528  -0.002086855  -0.000159887  -0.003650102  -0.002261771

   35   14.2  0.5 -0.5   0.000003734   0.000040973  -0.000066500  -0.000006625   0.000376005   0.001597227  -0.001839302   0.002138630
                        -0.000035767   0.000085852  -0.000035888   0.000034371  -0.001386847  -0.003299430   0.001076751  -0.001636294

   36   15.2  0.5 -0.5   0.000496643  -0.000192127   0.000686714   0.001395396   0.000076647   0.000179113  -0.000035049   0.000137999
                        -0.006974528   0.003706814   0.003018001  -0.009114456   0.000118579   0.000216344  -0.000009185  -0.000137754

   37   16.2  0.5 -0.5   0.002095128   0.002647572  -0.001506772   0.006270229   0.000054251   0.000097791   0.000041303   0.000206162
                        -0.000794309  -0.000719692   0.009209491   0.004300521   0.000030546   0.000065049  -0.000039646   0.000018383

   38   17.2  0.5 -0.5  -0.000700254   0.006748926  -0.005163791   0.001797171  -0.000001855   0.000116369  -0.000221124  -0.000047096
                         0.001711376  -0.007018055  -0.001886535  -0.005072238   0.000064874   0.000102750  -0.000079711   0.000078168


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000090941   0.000127032  -0.000116020  -0.000126641  -0.000111421   0.000196973   0.000302157  -0.000216488
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000043238  -0.000277969  -0.000039446   0.000031318  -0.000088254   0.000196953  -0.000249407  -0.000022694
                         0.000166599   0.000042439  -0.000035201   0.000022452   0.000101527   0.000016758   0.000125578  -0.000270123

    3    1.2  1.5 -0.5  -0.000167577   0.000160778  -0.000065024   0.000055613  -0.000087397  -0.000028190  -0.000280550   0.000421894
                         0.000009151   0.000192437   0.000039476  -0.000042081   0.000141924  -0.000051588  -0.000214974  -0.000146530

    4    1.2  1.5 -1.5  -0.000005725   0.000031662   0.000029147   0.000019112   0.000103760   0.000023695   0.000228017   0.000293516
                         0.000092634   0.000031304   0.000009384  -0.000041601   0.000036301  -0.000012602   0.000127910   0.000096938

    5    1.2  0.5  0.5  -0.013749147  -0.137461524  -0.274613157  -0.083800208   0.018322815  -0.143509311  -0.000172344  -0.000614599
                         0.027218915   0.297189107   0.615126355  -0.082596928  -0.049329469  -0.029030284   0.000130724  -0.000325468

    6    2.2  0.5  0.5  -0.207324443   0.209972821  -0.043010217  -0.011052814  -0.087195817   0.016378046   0.000845263   0.000325592
                        -0.198720433   0.358837780  -0.104153566  -0.023411153   0.543082477  -0.173579438   0.000363353   0.000097787

    7    3.2  0.5  0.5   0.104180153  -0.120973390   0.082364443  -0.071642178  -0.123361609  -0.246998386  -0.000611862   0.000610130
                        -0.103079272  -0.373203335   0.172101477   0.317318595   0.204049183  -0.407018568  -0.000098617   0.000102066

    8    4.2  0.5  0.5   0.220917908  -0.183373490  -0.396366995  -0.080225926   0.011295247  -0.144359817   0.000022108  -0.000190665
                         0.190160615  -0.192580037  -0.201217467  -0.378408969   0.275581675   0.015396380   0.000666379   0.000418034

    9    5.2  0.5  0.5  -0.367336342   0.125085895  -0.170270914  -0.316455040  -0.354206127   0.082471943   0.000133347   0.000352163
                        -0.003127035  -0.281309944   0.091857774   0.061100790   0.036226581   0.310151566  -0.000213135  -0.000289899

   10    6.2  0.5  0.5  -0.000478000   0.000116571   0.000257775  -0.000036242   0.000071344  -0.000118514   0.174901655   0.131283012
                         0.000298774  -0.000960065  -0.000040169   0.000206237  -0.000364727   0.000545471   0.425085444  -0.322529942

   11    7.2  0.5  0.5  -0.000572993   0.000805593  -0.000429753  -0.000415169  -0.000559470   0.000243197  -0.333940679  -0.408924736
                        -0.000218727   0.000006003   0.000106952  -0.000112568   0.000130357   0.000017851   0.105468223  -0.207263746

   12    8.2  0.5  0.5   0.000247171  -0.000060378  -0.000110526   0.000115401  -0.000172141   0.000020858  -0.077021308   0.186943856
                        -0.000130416   0.000204566   0.000090072   0.000165507  -0.000067287  -0.000664489  -0.343823442  -0.417133472

   13    9.2  0.5  0.5  -0.000004079   0.000082425   0.000120822  -0.000011903   0.000018284  -0.000017895   0.004777057  -0.003745754
                         0.000022930   0.000007260   0.000047243   0.000013253   0.000002973   0.000026091  -0.001681051  -0.001170568

   14   10.2  0.5  0.5  -0.000376149   0.001228338   0.001016154   0.000582900   0.000099226   0.001273216  -0.000016163   0.000001414
                        -0.000156857  -0.000129737  -0.003774143  -0.000479720   0.000666381   0.000784450  -0.000003865   0.000010507

   15   11.2  0.5  0.5   0.000404283  -0.000242362   0.000873131  -0.000240743  -0.000812418  -0.001021618  -0.000018074  -0.000031121
                        -0.000732684  -0.002375144  -0.000485174   0.001794459   0.001792300  -0.002251013   0.000004467  -0.000003380

   16   12.2  0.5  0.5  -0.001192459   0.001182839   0.002418522   0.000581439   0.000063275   0.000826029  -0.000003201   0.000024568
                        -0.001155384   0.001232344   0.000954835   0.002188803  -0.001368408  -0.000334637   0.000014178   0.000004110

   17   13.2  0.5  0.5   0.000550338   0.000145270  -0.000209219   0.001018313   0.001091830  -0.000504640  -0.000024106   0.000075956
                        -0.000639049   0.002866315  -0.000057921  -0.000648091   0.002185457  -0.001888156  -0.000005060   0.000048191

   18   14.2  0.5  0.5   0.002396914  -0.001114030   0.001235409   0.001520061   0.001939564  -0.000378829   0.000015839   0.000052325
                         0.000772268  -0.000527710  -0.000665549  -0.000034091  -0.001905441  -0.000822204   0.000035087   0.000030803

   19   15.2  0.5  0.5  -0.000041543  -0.000043080   0.000028396   0.000053406   0.000079195  -0.000049884   0.000394659  -0.001124777
                         0.000057414  -0.000017418   0.000006132   0.000052747   0.000073165   0.000018061   0.002044346   0.002436812

   20   16.2  0.5  0.5  -0.000005533  -0.000005480   0.000013534  -0.000004036  -0.000004842  -0.000019018  -0.002079206  -0.002459172
                        -0.000012093  -0.000002921   0.000000307   0.000000007  -0.000002829  -0.000005037   0.000276180  -0.001051400

   21   17.2  0.5  0.5  -0.000002153   0.000026136   0.000009380   0.000003243  -0.000047580   0.000038538  -0.000762898  -0.000481266
                         0.000016919  -0.000008853  -0.000000696   0.000001058  -0.000010480  -0.000028207  -0.002549229   0.002010060

   22    1.2  0.5 -0.5   0.318719433   0.126285773  -0.190886710   0.164494742  -0.145507534  -0.054442379   0.000301468  -0.000283008
                         0.235204323   0.023904222   0.034482794   0.538742672   0.175541411   0.126588960  -0.000292271  -0.000400402

   23    2.2  0.5 -0.5  -0.129037141  -0.170104705   0.045266454   0.078192212   0.159673973   0.476193722  -0.000717099  -0.000034250
                         0.394503516   0.226000302  -0.016168411  -0.078225420   0.105788919   0.262539349  -0.000089831  -0.000242395

   24    3.2  0.5 -0.5   0.066133317   0.065438174   0.008240536  -0.308638247   0.168964762   0.160466041  -0.000018488  -0.000829593
                        -0.390564280   0.162194723  -0.240228228   0.126557010   0.428572315   0.066905486  -0.000261798  -0.000501900

   25    4.2  0.5 -0.5   0.045612721   0.234030618  -0.133234561   0.232015236  -0.104657323   0.351552774   0.000321695   0.000578668
                        -0.261638508  -0.342786249   0.290767005  -0.157671227   0.110624462   0.169810290   0.000356777  -0.000239002

   26    5.2  0.5 -0.5  -0.177558829  -0.276616400  -0.214810197   0.184109882  -0.192739945   0.269362720   0.000179505   0.000124591
                        -0.294973500   0.156760457  -0.126062338   0.269671538  -0.271504371  -0.165831964   0.000404260  -0.000352666

   27    6.2  0.5 -0.5  -0.000246397  -0.000682786  -0.000052762   0.000040271  -0.000426473   0.000191087   0.109131222  -0.203061611
                        -0.000351824   0.000110758  -0.000085049   0.000342351  -0.000077855   0.000087270   0.329118946   0.415341905

   28    7.2  0.5 -0.5  -0.000143563  -0.000122926  -0.000057779  -0.000029842   0.000229020   0.000325885  -0.421682653   0.327721794
                         0.000363570   0.000429561   0.000110084  -0.000049098   0.000524168  -0.000047987   0.179776678   0.128124487

   29    8.2  0.5 -0.5  -0.000039615   0.000276754   0.000066797   0.000124035   0.000343494   0.000013432   0.157877778   0.099271761
                         0.000095771   0.000243089   0.000189611   0.000119941   0.000232423  -0.000220655   0.431921731  -0.334842624

   30    9.2  0.5 -0.5  -0.000010105  -0.000070182   0.000035810  -0.000028094   0.000030188  -0.000075524  -0.003758618  -0.004519906
                         0.000037985   0.000064072  -0.000056086   0.000028542  -0.000021408  -0.000039317   0.000839752  -0.002062530

   31   10.2  0.5 -0.5  -0.001949559  -0.000944231   0.000974171   0.000042156   0.000571332   0.000732923   0.000004935  -0.000017134
                         0.000240373  -0.000275060   0.000447480  -0.003252675  -0.001672168  -0.000293691  -0.000006347   0.000019948

   32   11.2  0.5 -0.5  -0.000435865  -0.000011979   0.000447795  -0.001858503   0.001321733   0.001517238  -0.000003323   0.000002302
                        -0.002282114   0.000957368  -0.001301276  -0.000555527   0.002043306   0.000375507   0.000009428   0.000018134

   33   12.2  0.5 -0.5  -0.000367123  -0.001395267   0.000940642  -0.001413896   0.000775438  -0.002013673   0.000005280  -0.000024860
                         0.001616809   0.002019707  -0.001699177   0.000655176  -0.000512488  -0.000793931   0.000005524  -0.000032323

   34   13.2  0.5 -0.5   0.000552612   0.000599585   0.000668364   0.000039456   0.001118372   0.001083253   0.000082087   0.000063947
                         0.002946230   0.000155056   0.000633087  -0.000682885   0.001769822   0.002074537  -0.000055520   0.000017272

   35   14.2  0.5 -0.5   0.000846876   0.001673650   0.001021682  -0.001390847   0.000470482  -0.002852990   0.000052132   0.000023243
                        -0.000553705  -0.001575789   0.000504366  -0.001473191   0.000794751  -0.000225383  -0.000041921   0.000087935

   36   15.2  0.5 -0.5  -0.000053924  -0.000020609   0.000005500   0.000011745  -0.000010073  -0.000029225  -0.000889985  -0.000569550
                        -0.000006331  -0.000022918   0.000012001   0.000005067   0.000007075   0.000039541  -0.002511924   0.001981411

   37   16.2  0.5 -0.5  -0.000001933   0.000027733   0.000013117  -0.000013140   0.000021802  -0.000025345  -0.002537903   0.002074009
                         0.000021849  -0.000002228   0.000003000  -0.000016177   0.000030392   0.000003198   0.000899737   0.000409075

   38   17.2  0.5 -0.5  -0.000046522  -0.000079451   0.000012418   0.000010635  -0.000041577  -0.000035994  -0.000388440   0.000882726
                        -0.000071295   0.000022283  -0.000027640   0.000008207  -0.000033802   0.000020363  -0.002064954  -0.002549407


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5   0.042827662   0.078812688  -0.050804146  -0.109333824  -0.000055436  -0.000000350   0.000524034   0.001781798
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.008624284  -0.013802371   0.113568958  -0.066067484  -0.000000003  -0.000008905   0.000030114   0.001045601
                        -0.002739487  -0.005752306   0.062116424  -0.034059845   0.000001586  -0.000002592  -0.000020870   0.000922937

    3    1.2  1.5 -0.5  -0.074934105   0.086974482   0.017534377   0.025202729   0.000051078  -0.000000743  -0.002154800   0.000387153
                         0.025894464   0.068673411   0.034942297   0.043320447   0.000007208  -0.000000529  -0.000653266   0.000138160

    4    1.2  1.5 -1.5   0.111836942   0.031911944   0.039001268   0.048626900  -0.000000050   0.000002076   0.000034767   0.000072588
                        -0.043732819   0.053551233   0.014247951   0.014848512   0.000000365   0.000002865   0.000010302  -0.000091444

    5    1.2  0.5  0.5  -0.166746249  -0.046117780  -0.083946771  -0.060675659   0.000004538  -0.000136443   0.000075151   0.000463484
                         0.069343707  -0.082547247  -0.034711324  -0.014571777   0.000020672  -0.000190440  -0.000026904   0.000238174

    6    2.2  0.5  0.5   0.032879133   0.030098741  -0.164254089   0.111368624   0.000060740  -0.000052223   0.000184784   0.002415364
                        -0.013753076   0.021221628  -0.094662258   0.051220175   0.000011499  -0.000081812   0.000060180   0.002322410

    7    3.2  0.5  0.5  -0.133417179   0.053514637   0.062213357   0.116390933  -0.000058045  -0.000017853   0.005382887   0.001398407
                         0.037610278   0.091755508   0.047747305   0.058661875  -0.000031594   0.000010855   0.001427010  -0.000357535

    8    4.2  0.5  0.5   0.072406865  -0.082092544  -0.029640319  -0.019463012   0.000010809  -0.000040902  -0.000084344  -0.000091933
                         0.170381066   0.050443389   0.055360920   0.076336819  -0.000000435   0.000053259  -0.000097538  -0.000094214

    9    5.2  0.5  0.5   0.037121740   0.092482512   0.044576576   0.060091471   0.000238880   0.000001159   0.001374699  -0.000400223
                         0.067015734  -0.175227541   0.014768230   0.052001031   0.000025600  -0.000004800  -0.004073310   0.003126083

   10    6.2  0.5  0.5   0.013514467  -0.006309625  -0.298058172   0.196414686   0.000061888  -0.001117250  -0.000108959   0.000704541
                        -0.044834943  -0.078733957   0.558360594  -0.338754551  -0.000004159  -0.001466479  -0.000075683  -0.000619919

   11    7.2  0.5  0.5  -0.001086773   0.556296682  -0.196895229  -0.398183477  -0.001890111  -0.000077290   0.000470623  -0.001079986
                         0.056740518   0.166434479   0.126147529   0.092550255   0.000196121  -0.000097519   0.000146278  -0.000127458

   12    8.2  0.5  0.5  -0.063159044  -0.177824524  -0.087832642  -0.103244329   0.000069605  -0.000012255  -0.000324170   0.000116037
                        -0.371927289  -0.125540902   0.265304108   0.532464358  -0.001654017   0.000007577   0.000820764   0.000788640

   13    9.2  0.5  0.5   0.000011906  -0.000018050  -0.000023428   0.000016272   0.002488770   0.705520696  -0.000194211   0.000813636
                         0.000056354   0.000012491   0.000029704   0.000025902  -0.003628700  -0.561032551  -0.000141952   0.000068026

   14   10.2  0.5  0.5  -0.002780775  -0.000298579  -0.000065165  -0.000452514   0.001340593  -0.000122977  -0.235153069  -0.035593649
                         0.000930764  -0.000629746   0.000118809  -0.000090887  -0.000089053  -0.000020099  -0.048828115   0.059558351

   15   11.2  0.5  0.5   0.000688557  -0.000872880  -0.000794522  -0.001930107  -0.003284686   0.000042753   0.530355641   0.157865299
                        -0.000189137  -0.001561121  -0.000568059  -0.000914544   0.000228302  -0.000164534   0.134004259   0.006984551

   16   12.2  0.5  0.5   0.000882779  -0.001061998  -0.000311074  -0.000356843  -0.000040857  -0.000129089   0.004103062   0.035308446
                         0.002340456   0.000429005   0.000797903   0.000993899  -0.000096707   0.000075675   0.043798698   0.001653569

   17   13.2  0.5  0.5   0.000448935   0.000803098   0.002166887  -0.000277217   0.000196673  -0.000397628  -0.103643185   0.229500388
                         0.000276920  -0.001518189   0.001074444  -0.000079118  -0.001321593  -0.000194798   0.275133309  -0.037879650

   18   14.2  0.5  0.5   0.000323543   0.001077429  -0.001224700   0.001310010   0.000087570   0.000471835  -0.095610694  -0.155307094
                         0.000678275  -0.001936677  -0.000730285   0.000848618  -0.001475904   0.000202195   0.336326684  -0.415310997

   19   15.2  0.5  0.5   0.000083669   0.000151577  -0.000003622   0.000045763  -0.018877914   0.000798844   0.018381507  -0.007940345
                         0.000287279   0.000095407  -0.000225984  -0.000477493   0.253607640  -0.000770077  -0.077388030  -0.070011837

   20   16.2  0.5  0.5  -0.000024770   0.000547201  -0.000137515  -0.000367047  -0.249309909   0.009401071   0.031078284  -0.092232214
                         0.000043458   0.000154384   0.000100866   0.000199626  -0.018171030   0.010832011   0.020061122   0.002617775

   21   17.2  0.5  0.5  -0.000016861  -0.000066116   0.000303382  -0.000156611   0.014403967   0.155150748  -0.000444550  -0.042866604
                         0.000042772   0.000062027  -0.000509681   0.000272744   0.001126940   0.195048856   0.000796993   0.054379966

   22    1.2  0.5 -0.5   0.050735942   0.139226918  -0.076097392  -0.160783806   0.000047815   0.000000363  -0.000592649  -0.004585094
                         0.006650818   0.016681908   0.007947318   0.007358073   0.000188814   0.000001552   0.000088416  -0.000071973

   23    2.2  0.5 -0.5  -0.124536735   0.116469446   0.039681007   0.060773625  -0.000047461  -0.000020561   0.005563474  -0.000528053
                         0.035465438   0.098793686   0.054247684   0.074416879   0.000064046   0.000015325   0.001651046  -0.000188631

   24    3.2  0.5 -0.5  -0.096739400  -0.042579938   0.121300306  -0.127443419  -0.000018797   0.000001727  -0.000046841  -0.002171005
                         0.031096810  -0.047401287   0.070919844  -0.059939029   0.000000614   0.000025722   0.000040440  -0.002207344

   25    4.2  0.5 -0.5  -0.004617699   0.004136669   0.001105278   0.006235931  -0.000029918   0.000003717   0.000262038   0.000054182
                         0.066914942   0.126927585  -0.078414873  -0.164981283   0.000041080  -0.000003327  -0.001314779  -0.004448242

   26    5.2  0.5 -0.5   0.034945166  -0.032848172  -0.092648883   0.037127227   0.000006102  -0.000042251   0.000055980   0.001931828
                         0.075499617   0.008317213   0.182428409  -0.050745654   0.000001539   0.000006472  -0.000089047  -0.002418354

   27    6.2  0.5 -0.5  -0.160952807  -0.345297918  -0.203041368  -0.216816697  -0.000047525  -0.000070361  -0.000363830   0.000174585
                        -0.364556234   0.417493540   0.075213070   0.123311867   0.001817754   0.000069352   0.001361453  -0.000217779

   28    7.2  0.5 -0.5   0.454398859   0.078922218   0.439725491   0.028817587  -0.000004719   0.001475670  -0.000051034  -0.000360340
                        -0.214904840   0.245221823   0.219682444  -0.009227442   0.000118107  -0.001174660   0.000083823  -0.000274962

   29    8.2  0.5 -0.5   0.175684410  -0.249612458   0.086707720  -0.151128187  -0.000009693  -0.001184816   0.000014114  -0.000275588
                         0.502908165   0.173032098  -0.115583025   0.377083149   0.000004979  -0.001444454   0.000009709   0.000302354

   30    9.2  0.5 -0.5   0.000058652  -0.000001339  -0.000117884  -0.000150632   0.900060396  -0.004179459   0.005230344   0.001503813
                        -0.000021403   0.000204753  -0.000061123  -0.000181674   0.023488985  -0.001409115   0.001682365   0.000009988

   31   10.2  0.5 -0.5   0.000522149   0.000981342  -0.000366665  -0.002652147  -0.001763439  -0.000324339   0.213041657   0.509031623
                         0.000074213  -0.000525249   0.000345566  -0.000313864   0.000165444  -0.000052275   0.018597961   0.077770738

   32   11.2  0.5 -0.5   0.001624123   0.000895027  -0.001876418   0.000630516  -0.000656838   0.000752130   0.112355979  -0.046411463
                        -0.000410246   0.000322707  -0.000848225   0.000691529   0.000103628   0.000081141   0.018696823  -0.240063736

   33   12.2  0.5 -0.5   0.000098504   0.000088457  -0.000143949  -0.000036441  -0.000218508   0.000050480   0.015586199  -0.004169951
                         0.000917193   0.001639346  -0.000905535  -0.002170783  -0.001538519  -0.000068186   0.145783517   0.491136661

   34   13.2  0.5 -0.5   0.001316510  -0.001835926  -0.000935236   0.000282535  -0.001857094   0.000122594   0.413092048  -0.281432490
                         0.000156375  -0.001078100   0.001174066  -0.000843800   0.000246559  -0.000457071   0.129887450   0.119014642

   35   14.2  0.5 -0.5  -0.000427375   0.001051669  -0.000959062   0.000516477   0.001601556   0.000095444  -0.361374934  -0.051254233
                         0.001057211   0.001096521   0.002216565   0.000175158  -0.000163882  -0.000410191  -0.111669855   0.185898270

   36   15.2  0.5 -0.5  -0.000195737   0.000262426  -0.000044065   0.000102224   0.001069551   0.164349132  -0.001110074   0.026760213
                        -0.000498167  -0.000133954   0.000128530  -0.000363126   0.000133549   0.188489879   0.000515742  -0.024670150

   37   16.2  0.5 -0.5   0.000461616   0.000074240   0.000413298   0.000024422   0.000983661   0.188124110  -0.000467107  -0.031925862
                        -0.000093855   0.000185405   0.000250505  -0.000013902  -0.014277296  -0.164293075  -0.005903576  -0.018031555

   38   17.2  0.5 -0.5   0.000098591   0.000370202   0.000157057   0.000122829   0.006515450  -0.010782106   0.034251674  -0.005915879
                         0.000365937  -0.000390083  -0.000137012  -0.000070194  -0.248325746   0.009509754  -0.112440313   0.021270162


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5   0.001367110   0.000028477   0.000004387   0.000005192  -0.000002963   0.000013781  -0.000021422   0.000068769
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.001367579  -0.000187842  -0.000013220   0.000001902   0.000002605  -0.000017224   0.000012620   0.000027315
                        -0.001196021  -0.000140832  -0.000004097   0.000005263  -0.000001632  -0.000012489  -0.000015649   0.000007807

    3    1.2  1.5 -0.5   0.000295005   0.000024036  -0.000017436   0.000009065  -0.000002143  -0.000019040  -0.000029765   0.000024505
                         0.000064212  -0.000031579  -0.000007447   0.000008526  -0.000009279   0.000009298  -0.000009046   0.000021812

    4    1.2  1.5 -1.5  -0.000137531   0.001414205  -0.000005914   0.000000276  -0.000003510   0.000090071   0.000030021  -0.000004486
                         0.000152723  -0.001794982   0.000019183   0.000004453  -0.000001816  -0.000075200  -0.000017218  -0.000001484

    5    1.2  0.5  0.5  -0.000761692   0.003421559  -0.000863436   0.001462886   0.002947641   0.001374685   0.000405065  -0.000119643
                        -0.000131575  -0.004590915  -0.000086022   0.001774679   0.001488954  -0.001125779  -0.000192535  -0.000049559

    6    2.2  0.5  0.5  -0.003480526  -0.000774101  -0.001897996  -0.000160634   0.000359294   0.000005699  -0.000137790  -0.000083263
                        -0.003124081   0.000355838  -0.003839221  -0.000139535  -0.001230142   0.000408387  -0.000038725   0.000014087

    7    3.2  0.5  0.5   0.001094871  -0.000101609   0.000017764  -0.000167221  -0.000082427  -0.000020886  -0.000047856  -0.003977894
                        -0.000143632   0.000012211   0.000000680  -0.000131727  -0.000042495  -0.000190954   0.000589850  -0.002155939

    8    4.2  0.5  0.5   0.000181030  -0.004590264  -0.000610736  -0.001585311  -0.001729387  -0.001063644  -0.000324357   0.000091504
                         0.000211613  -0.003488188  -0.000954934   0.001526712   0.002804816  -0.001316297  -0.000439641  -0.000089398

    9    5.2  0.5  0.5  -0.000262234  -0.000015854   0.000008400   0.000002918   0.000016302  -0.000859776   0.003168264   0.000699270
                         0.002348561   0.000149970   0.000024225   0.000263722  -0.000132382   0.000808074  -0.002242210  -0.001868898

   10    6.2  0.5  0.5  -0.000593567  -0.000111758  -0.000008110  -0.000010208  -0.000017511  -0.000044104   0.000026761   0.000036652
                         0.000835450   0.000131430   0.000016359   0.000001092  -0.000001715   0.000024222   0.000069296   0.000020819

   11    7.2  0.5  0.5  -0.000878467  -0.000037985   0.000001337  -0.000017949  -0.000007530   0.000005844   0.000009538  -0.000013962
                        -0.000010948   0.000036619   0.000013195  -0.000003450  -0.000014184   0.000006711  -0.000053007   0.000045285

   12    8.2  0.5  0.5   0.000117836  -0.000013127   0.000008687   0.000008596  -0.000007686  -0.000025198   0.000042255   0.000024838
                         0.000633131   0.000033796   0.000026952  -0.000009806   0.000006120   0.000046200  -0.000048518   0.000105779

   13    9.2  0.5  0.5  -0.001061877   0.000018922  -0.001469820  -0.000432468   0.000130784  -0.000663622  -0.000720442  -0.000951591
                        -0.000111251   0.000155903  -0.002284256   0.000068810  -0.000006793   0.000915567   0.000675707  -0.000288755

   14   10.2  0.5  0.5  -0.059627897  -0.370299045  -0.029932014   0.230681715   0.443949779   0.212308210   0.074900924  -0.280797398
                        -0.084331564   0.426506296   0.170113597   0.259463368   0.251420878  -0.186826537   0.004007319  -0.156439941

   15   11.2  0.5  0.5   0.081222547  -0.173121955   0.002517650   0.131041760   0.193287558   0.101808811   0.023739161   0.608667608
                        -0.059066787   0.168385754   0.103133202   0.114755774   0.114902819  -0.048496197  -0.098645807   0.336810398

   16   12.2  0.5  0.5  -0.040989467   0.471456225  -0.085944552  -0.257629882  -0.278244300  -0.180752778  -0.016787424   0.029663175
                        -0.063755076   0.401044137  -0.115632612   0.281189599   0.506487552  -0.227465054  -0.112864109  -0.036193950

   17   13.2  0.5  0.5  -0.270792330  -0.010364233   0.273115028  -0.019495222  -0.137599820  -0.141298163   0.344806192   0.064483668
                        -0.400007201  -0.128004081   0.498679858  -0.041610358   0.031980560   0.100076736  -0.235336104  -0.217218734

   18   14.2  0.5  0.5   0.262102728  -0.030503759  -0.221576210   0.039707434   0.140993178  -0.057481822   0.431935933   0.109710882
                         0.012482779   0.044064591  -0.412334316   0.060248174  -0.107740210   0.113258862  -0.279010923  -0.229147491

   19   15.2  0.5  0.5  -0.004919261   0.000725808  -0.000699342  -0.001240402   0.000686817  -0.000420468   0.005109179  -0.006983315
                        -0.053952477  -0.000651482  -0.000736698   0.000258143  -0.000069244   0.000184893  -0.002271837   0.004383809

   20   16.2  0.5  0.5  -0.065542751  -0.001635544   0.000136110  -0.000764107   0.000301519  -0.001462147   0.004488756  -0.011066737
                        -0.002892659   0.000358803  -0.000553419  -0.001169575   0.000602758  -0.000438324   0.005020936  -0.006308917

   21   17.2  0.5  0.5   0.065019892   0.007499134  -0.002335653  -0.000170284   0.000094678   0.001991368   0.001338770  -0.000208813
                        -0.070857041  -0.009907798   0.000977144   0.000602396  -0.000059621  -0.000235462   0.001051078   0.002802921

   22    1.2  0.5 -0.5  -0.003583344  -0.000126512   0.000442036  -0.001890323   0.000596179   0.000113033  -0.001069597  -0.001201384
                        -0.000018927   0.000018290   0.000445628   0.002751233  -0.002089055   0.000391281  -0.001123439  -0.000537567

   23    2.2  0.5 -0.5  -0.000173481  -0.000061188  -0.000031928   0.000491847  -0.000084888   0.000482625  -0.001753067   0.001887838
                         0.000020988   0.000184172   0.000040177  -0.000372114   0.000362792   0.000849688  -0.003184489   0.001470540

   24    3.2  0.5 -0.5   0.002804380   0.002185631  -0.001357399   0.000115531   0.000333771  -0.002642883  -0.000819691  -0.000014629
                         0.002744057  -0.001931790  -0.002168737  -0.000110486  -0.000376844   0.002358285   0.000512338  -0.000019701

   25    4.2  0.5 -0.5  -0.000036766  -0.000013217   0.000443614   0.002832219  -0.002030518  -0.000012984   0.000609042   0.000805588
                        -0.003528437  -0.000049774  -0.000345174   0.001982444  -0.000668171   0.000304067  -0.000306404  -0.001538200

   26    5.2  0.5 -0.5  -0.002357716  -0.002574453   0.002307881  -0.000195418   0.000593554   0.002077663   0.000455467   0.000078415
                         0.003168808  -0.001329703  -0.000877125  -0.000099531   0.000436687   0.002884304   0.000875870   0.000006539

   27    6.2  0.5 -0.5  -0.000039780   0.000047521  -0.000007598   0.000026584  -0.000000901   0.000063463   0.000000357   0.000054998
                        -0.000237969  -0.000142965  -0.000052631  -0.000007451  -0.000004393  -0.000046449  -0.000016956  -0.000077079

   28    7.2  0.5 -0.5   0.000540276  -0.000727605  -0.000046414   0.000005302  -0.000005387  -0.000013533  -0.000003799  -0.000014287
                         0.000305720   0.001049056   0.000006948  -0.000011197   0.000015580   0.000053340   0.000009217  -0.000009000

   29    8.2  0.5 -0.5   0.000379929  -0.000920073  -0.000069772   0.000000189   0.000009490   0.000100458   0.000039826  -0.000010357
                        -0.000375065  -0.000885570   0.000012315  -0.000002959  -0.000016609  -0.000004712  -0.000003138   0.000010430

   30    9.2  0.5 -0.5   0.001039156  -0.000131650   0.000064920  -0.000167626   0.000113572  -0.001012688   0.001927537  -0.005975499
                        -0.000184806   0.000094474  -0.000831089  -0.000847341   0.000386498   0.000020873   0.003861442  -0.004569920

   31   10.2  0.5 -0.5   0.216601902  -0.076369427  -0.018940231  -0.328345730   0.136925487  -0.178682952  -0.154555229  -0.261865790
                        -0.140734865   0.086739521  -0.076956413   0.407851969  -0.351138432   0.187387942   0.020766054  -0.134588285

   32   11.2  0.5 -0.5   0.406004427   0.216549477   0.234904739  -0.163457943  -0.002314477   0.402584150   0.098398799  -0.127048437
                         0.263082486  -0.194722408   0.376447235   0.179921419  -0.071386318  -0.377466519  -0.063011147  -0.061545395

   33   12.2  0.5 -0.5   0.040613276   0.026563725   0.114259030   0.462829947  -0.337379485   0.019612225   0.124350749   0.100838577
                         0.354398264   0.011331099  -0.056762680   0.365078165  -0.127497403   0.080709876  -0.015436545  -0.272211709

   34   13.2  0.5 -0.5   0.047632437   0.169186453   0.234744146  -0.046241071   0.080512838   0.141099374   0.303267102  -0.191061956
                        -0.261158410   0.106486993  -0.112694755  -0.104049272   0.097378259   0.210609527   0.540767716  -0.132087179

   35   14.2  0.5 -0.5   0.297720960   0.224752408   0.316491694  -0.044755686   0.097147738   0.369853585  -0.157434047   0.172809530
                        -0.250408293   0.095947352  -0.094230612   0.024902406   0.032775331   0.443980198  -0.263345702   0.139995436

   36   15.2  0.5 -0.5  -0.035989765   0.074193681  -0.003215024  -0.000017895  -0.000027757   0.003741252   0.001044645   0.000060303
                         0.030420762   0.072453338   0.001817622   0.000395412  -0.000338551   0.005430656   0.001925097   0.000145164

   37   16.2  0.5 -0.5   0.043191942  -0.062216635   0.002389309   0.000413763  -0.000093218  -0.003190488  -0.001136534   0.000774744
                         0.023978644   0.081132609   0.001704889  -0.000410500   0.000228916   0.002453381   0.000361194  -0.000193084

   38   17.2  0.5 -0.5  -0.005596641   0.004774288   0.001183231   0.000393000   0.000095215  -0.000348211  -0.004263818   0.004438926
                         0.014168836  -0.003075174  -0.000883175   0.000246359   0.000043849  -0.002495265   0.001323558  -0.005970903


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  1.5  1.5   0.000019366  -0.000195765  -0.002404035   0.006823806   0.000388376  -0.013208882
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000003818  -0.000010445  -0.005939888  -0.001885711  -0.001437643   0.000065375
                         0.000136749   0.000003431  -0.012834118  -0.004629421  -0.000262286  -0.000061662

    3    1.2  1.5 -0.5  -0.000026875   0.000219709  -0.004290487   0.012213318  -0.000115957   0.007074344
                        -0.000013678  -0.000007794   0.001127061  -0.002428993  -0.000235016  -0.001468418

    4    1.2  1.5 -1.5  -0.000053341  -0.000000374  -0.001016782  -0.000602881  -0.000622362  -0.000144751
                         0.000008347   0.000003031   0.000788252   0.000407466  -0.014977158  -0.000373520

    5    1.2  0.5  0.5  -0.000021402  -0.000004683   0.000213461   0.000081385   0.000043748  -0.000000161
                        -0.000020519  -0.000001124   0.000066774  -0.000005059   0.001445493   0.000028299

    6    2.2  0.5  0.5  -0.000021668  -0.000127848   0.000576110   0.000113611   0.000083052   0.000015525
                        -0.000071937   0.000035388   0.001174813   0.000452323  -0.000190121  -0.000002878

    7    3.2  0.5  0.5  -0.000000917  -0.000027991  -0.000246395   0.000764060  -0.000000601   0.001239655
                         0.000029268  -0.000006248   0.000129393  -0.000195622  -0.000011942  -0.000151945

    8    4.2  0.5  0.5   0.000012417   0.000004393  -0.000050032  -0.000057829   0.001461228  -0.000002453
                         0.000106860  -0.000002021  -0.000077286  -0.000034848  -0.000031436  -0.000010675

    9    5.2  0.5  0.5   0.000001451  -0.000016876   0.000111851  -0.000234896  -0.000012401  -0.000086692
                        -0.000002787   0.000015071   0.000476833  -0.001349795  -0.000022022   0.000047770

   10    6.2  0.5  0.5   0.004604826   0.000364949  -0.001166189  -0.000337148  -0.000024074  -0.000076129
                        -0.000606812  -0.000044519   0.000544558   0.000178004  -0.000007244   0.000000712

   11    7.2  0.5  0.5   0.000332502  -0.004536431   0.000314053  -0.001088435  -0.000031600   0.000770864
                        -0.000018794   0.000992155   0.000017744   0.000079957   0.000011699  -0.000051967

   12    8.2  0.5  0.5   0.000027634  -0.000903331   0.000027229  -0.000100791  -0.000009280  -0.000122905
                         0.000051068  -0.004549300  -0.000008267   0.000022968   0.000039720  -0.001320991

   13    9.2  0.5  0.5   0.048790363   0.001482667   0.001272851   0.000886298   0.001973235   0.000313866
                         0.430115869   0.003241610   0.002911944   0.001273605   0.000004124   0.000693802

   14   10.2  0.5  0.5  -0.000957729  -0.005061475   0.004401493  -0.017193608   0.001127209  -0.031328939
                         0.000805578   0.002078818   0.011659729   0.013739242  -0.080602482   0.000054555

   15   11.2  0.5  0.5  -0.000820659   0.013814180  -0.011711496   0.038246168   0.002045468   0.073571559
                         0.002383769  -0.004159149   0.017077055  -0.008936313  -0.034591829  -0.006418921

   16   12.2  0.5  0.5   0.000758406   0.000410985   0.004310753   0.004722557  -0.089247390   0.000644254
                        -0.000517726  -0.000567370   0.006317940   0.009450659   0.000397671  -0.000138633

   17   13.2  0.5  0.5   0.000549954  -0.000616542   0.024269624   0.017751308   0.013398075   0.003965235
                         0.002687945   0.000779137   0.036907082   0.077035502   0.014932449  -0.001827251

   18   14.2  0.5  0.5   0.000389730  -0.000847923  -0.029170824   0.004049698  -0.001769104   0.009559329
                        -0.001118461   0.002301131  -0.072503405   0.046084349  -0.009227148  -0.004170259

   19   15.2  0.5  0.5   0.000796473  -0.091308787  -0.019096754   0.036606893   0.005637141   0.061726734
                         0.002471022  -0.496669438  -0.006257973   0.016041703  -0.021238369   0.812100585

   20   16.2  0.5  0.5   0.022691546   0.514112796   0.264988832  -0.634776630  -0.014201735   0.412494811
                        -0.003229341  -0.091813839  -0.047993765   0.060257781   0.003102813   0.003498950

   21   17.2  0.5  0.5   0.509361908  -0.023561340   0.678406634   0.283767159   0.014844264  -0.017854847
                        -0.057838582   0.003577841  -0.318062271  -0.105700632  -0.079293212   0.001213633

   22    1.2  0.5 -0.5   0.000007380  -0.000082644  -0.000266540   0.000793286   0.000033265  -0.001095312
                        -0.000002144   0.000106109   0.000018092  -0.000040252  -0.000007058  -0.000066828

   23    2.2  0.5 -0.5   0.000011814   0.000136794  -0.000385681   0.001003063  -0.000030464   0.000737271
                         0.000057352   0.000016777   0.000066639  -0.000284208   0.000037263  -0.000062536

   24    3.2  0.5 -0.5   0.000009481   0.000026400  -0.000428452  -0.000079430  -0.000099244   0.000027015
                         0.000019382  -0.000006652  -0.001054831  -0.000382416   0.000657457  -0.000011492

   25    4.2  0.5 -0.5   0.000001409   0.000011428  -0.000014755   0.000060587  -0.000003672   0.000088789
                        -0.000002040  -0.000150250  -0.000201606   0.000670517   0.000016136  -0.001170186

   26    5.2  0.5 -0.5  -0.000055866  -0.000020186   0.000953542   0.000338497   0.000714176   0.000052291
                         0.000053698   0.000008481  -0.000570287  -0.000191931  -0.000081879  -0.000003071

   27    6.2  0.5 -0.5  -0.000066511   0.001006375   0.000107452  -0.000253593  -0.000020356  -0.000176829
                        -0.000359536   0.004508488   0.000369082  -0.001104004  -0.000089100  -0.000780114

   28    7.2  0.5 -0.5   0.000611132   0.000094167   0.000346994   0.000138249   0.000079743   0.000010785
                         0.004576242   0.000323310   0.000584154   0.000121187   0.001157159  -0.000009964

   29    8.2  0.5 -0.5   0.004632390   0.000044254   0.000662202   0.000255089  -0.001193225  -0.000023443
                        -0.000624933   0.000000448  -0.000154093  -0.000036806  -0.000099289   0.000002087

   30    9.2  0.5 -0.5  -0.003572777   0.423865284   0.000836629  -0.002976981   0.000320214  -0.010253347
                        -0.000333918  -0.096787657  -0.000935634   0.001387242   0.000042778   0.002977661

   31   10.2  0.5 -0.5  -0.000280946  -0.003395518   0.018514093  -0.024386801  -0.001975593   0.078587276
                        -0.002718174   0.002203776   0.028738169   0.008957024  -0.019173026  -0.004760783

   32   11.2  0.5 -0.5   0.000218427   0.000030006  -0.023866149  -0.013396188  -0.005102811   0.036171614
                         0.004752219   0.000786824  -0.065527784  -0.024251602   0.045743728  -0.004431314

   33   12.2  0.5 -0.5   0.000708109  -0.002205594  -0.004712025  -0.002199041  -0.003945946   0.004554884
                         0.000596847  -0.003721328   0.014387708  -0.040413736  -0.000257032   0.080550456

   34   13.2  0.5 -0.5   0.000614622  -0.009862332  -0.066002040   0.048576890  -0.034073415   0.019053116
                        -0.000957409   0.002660107   0.027475552   0.000110528   0.004359626  -0.012120064

   35   14.2  0.5 -0.5   0.001997663   0.007388967  -0.032067179  -0.071570656  -0.038984604  -0.020738331
                         0.000553797  -0.001007821   0.017702420   0.018683556   0.010144414   0.003863190

   36   15.2  0.5 -0.5   0.517062008   0.004022659  -0.366773114  -0.137278510   0.690570416   0.016892603
                        -0.085273614  -0.000584504   0.123680226   0.027527417   0.040482014  -0.007196927

   37   16.2  0.5 -0.5  -0.080242734   0.004523340   0.218522057   0.090657797   0.032932355   0.007870597
                        -0.517289063   0.023506329   0.285458958   0.136917857   0.699662184   0.038266415

   38   17.2  0.5 -0.5   0.004337946   0.115804783  -0.070287425   0.124341647   0.009385852   0.075814915
                         0.022143937   0.517806726  -0.244977598   0.645303042  -0.043239879   0.369706745


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  61.842%  14.416%   7.048%  12.914%   0.966%   0.292%   0.232%   0.009%   0.000%   0.000%
    2    1.2  1.5  0.5  15.574%  22.084%  47.174%  11.392%   0.417%   0.647%   0.203%   0.228%   0.000%   0.000%
    3    1.2  1.5 -0.5   1.863%  59.244%  17.925%  17.193%   0.053%   0.277%   1.031%   0.131%   0.000%   0.000%
    4    1.2  1.5 -1.5  16.940%   0.480%  24.078%  54.728%   0.063%   0.278%   0.026%   1.121%   0.000%   0.000%
    5    1.2  0.5  0.5   0.018%   0.000%   0.048%   0.075%   1.019%   6.331%   0.678%  26.457%   0.093%  10.722%
    6    2.2  0.5  0.5   0.028%   0.034%   0.054%   0.025%   9.535%  14.576%   4.400%   5.820%   8.247%  17.285%
    7    3.2  0.5  0.5   0.038%   0.044%   0.019%   0.040%   9.976%   9.094%  13.615%   1.690%   2.148%  15.392%
    8    4.2  0.5  0.5   0.026%   0.001%   0.037%   0.077%   1.838%   7.124%   0.486%  25.030%   8.497%   7.071%
    9    5.2  0.5  0.5   0.011%   0.096%   0.027%   0.007%   3.040%   3.531%  24.938%   2.899%  13.495%   9.478%
   10    6.2  0.5  0.5   0.333%   0.487%   1.178%   0.269%   2.269%   3.467%   1.317%   1.186%   0.000%   0.000%
   11    7.2  0.5  0.5   0.924%   1.056%   0.231%   0.057%   3.163%   1.054%   3.565%   0.448%   0.000%   0.000%
   12    8.2  0.5  0.5   1.319%   0.185%   0.162%   0.601%   4.955%   2.202%   1.003%   0.062%   0.000%   0.000%
   13    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%
   15   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.001%
   16   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
   17   13.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%
   18   14.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.001%   0.000%
   19   15.2  0.5  0.5   0.009%   0.002%   0.001%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   16.2  0.5  0.5   0.006%   0.007%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21   17.2  0.5  0.5   0.003%   0.004%   0.007%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    1.2  0.5 -0.5   0.087%   0.031%   0.011%   0.014%  20.935%   5.740%   7.369%   0.470%  15.690%   1.652%
   23    2.2  0.5 -0.5   0.009%   0.074%   0.026%   0.032%   2.616%   6.377%  22.863%   2.692%  17.228%   8.001%
   24    3.2  0.5 -0.5   0.041%   0.029%   0.024%   0.048%   9.144%  14.211%   3.857%   7.343%  15.691%   3.059%
   25    4.2  0.5 -0.5   0.091%   0.024%   0.009%   0.019%  22.477%   7.252%   4.500%   0.279%   7.054%  17.227%
   26    5.2  0.5 -0.5   0.004%   0.022%   0.099%   0.017%   5.575%  11.955%   3.482%  13.533%  11.854%  10.109%
   27    6.2  0.5 -0.5   0.040%   1.427%   0.414%   0.384%   0.254%   1.681%   5.529%   0.726%   0.000%   0.000%
   28    7.2  0.5 -0.5   0.091%   0.049%   1.302%   0.823%   0.437%   1.499%   0.510%   5.734%   0.000%   0.000%
   29    8.2  0.5 -0.5   0.696%   0.196%   0.111%   1.263%   1.261%   2.406%   0.390%   4.135%   0.000%   0.000%
   30    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%
   32   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%
   33   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%   0.001%
   34   13.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.001%   0.000%
   35   14.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.001%
   36   15.2  0.5 -0.5   0.005%   0.001%   0.001%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37   16.2  0.5 -0.5   0.001%   0.001%   0.009%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38   17.2  0.5 -0.5   0.000%   0.009%   0.003%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.183%   0.621%   0.258%   1.195%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.022%   1.676%   0.552%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.629%   1.228%   0.153%   0.251%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.442%   0.389%   0.172%   0.259%
    5    1.2  0.5  0.5  45.379%   1.384%   0.277%   2.144%   0.000%   0.000%   3.261%   0.894%   0.825%   0.389%
    6    2.2  0.5  0.5   1.270%   0.067%  30.254%   3.040%   0.000%   0.000%   0.127%   0.136%   3.594%   1.503%
    7    3.2  0.5  0.5   3.640%  10.582%   5.685%  22.667%   0.000%   0.000%   1.921%   1.128%   0.615%   1.699%
    8    4.2  0.5  0.5  19.760%  14.963%   7.607%   2.108%   0.000%   0.000%   3.427%   0.928%   0.394%   0.621%
    9    5.2  0.5  0.5   3.743%  10.388%  12.677%  10.300%   0.000%   0.000%   0.587%   3.926%   0.221%   0.632%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  21.129%  12.126%   0.219%   0.624%  40.061%  15.333%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  12.264%  21.018%   0.322%  33.717%   5.468%  16.712%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  12.415%  20.895%  14.232%   4.738%   7.810%  29.418%
   13    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.003%   0.002%   0.000%   0.000%   0.000%   0.000%
   14   10.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   15   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   12.2  0.5  0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   17   13.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   18   14.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19   15.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   20   16.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   21   17.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    1.2  0.5 -0.5   3.763%  31.730%   5.199%   1.899%   0.000%   0.000%   0.262%   1.966%   0.585%   2.591%
   23    2.2  0.5 -0.5   0.231%   1.223%   3.669%  29.569%   0.000%   0.000%   1.677%   2.333%   0.452%   0.923%
   24    3.2  0.5 -0.5   5.778%  11.127%  21.222%   3.023%   0.000%   0.000%   1.033%   0.406%   1.974%   1.983%
   25    4.2  0.5 -0.5  10.230%   7.869%   2.319%  15.242%   0.000%   0.000%   0.450%   1.613%   0.615%   2.726%
   26    5.2  0.5 -0.5   6.204%  10.662%  11.086%  10.006%   0.000%   0.000%   0.692%   0.115%   4.186%   0.395%
   27    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  12.023%  21.374%  15.881%  29.353%   4.688%   6.222%
   28    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  21.014%  12.382%  25.266%   6.636%  24.162%   0.092%
   29    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  21.148%  12.197%  28.378%   9.225%   2.088%  16.503%
   30    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%
   31   10.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   32   11.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   13.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35   14.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   36   15.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   37   16.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   38   17.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.001%   0.001%   0.000%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%
    7    3.2  0.5  0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.001%   0.000%
    9    5.2  0.5  0.5   0.000%   0.000%   0.002%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    9.2  0.5  0.5   0.002%  81.252%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   14   10.2  0.5  0.5   0.000%   0.000%   5.768%   0.481%   1.067%  31.903%   2.983%  12.054%  26.030%   7.998%
   15   11.2  0.5  0.5   0.001%   0.000%  29.923%   2.497%   1.009%   5.832%   1.064%   3.034%   5.056%   1.272%
   16   12.2  0.5  0.5   0.000%   0.000%   0.194%   0.125%   0.574%  38.311%   2.076%  14.544%  33.395%   8.441%
   17   13.2  0.5  0.5   0.000%   0.000%   8.644%   5.411%  23.333%   1.649%  32.327%   0.211%   1.996%   2.998%
   18   14.2  0.5  0.5   0.000%   0.000%  12.226%  19.660%   6.885%   0.287%  21.912%   0.521%   3.149%   1.613%
   19   15.2  0.5  0.5   6.467%   0.000%   0.633%   0.496%   0.294%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   16.2  0.5  0.5   6.249%   0.021%   0.137%   0.851%   0.430%   0.000%   0.000%   0.000%   0.000%   0.000%
   21   17.2  0.5  0.5   0.021%   6.212%   0.000%   0.479%   0.925%   0.015%   0.001%   0.000%   0.000%   0.000%
   22    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   23    2.2  0.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.002%   0.001%   0.001%   0.000%   0.000%   0.001%
   25    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   26    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.002%   0.001%   0.001%   0.000%   0.000%   0.001%
   27    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30    9.2  0.5 -0.5  81.066%   0.002%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   10.2  0.5 -0.5   0.000%   0.000%   4.573%  26.516%   6.672%   1.336%   0.628%  27.415%  14.205%   6.704%
   32   11.2  0.5 -0.5   0.000%   0.000%   1.297%   5.978%  23.405%   8.481%  19.689%   5.909%   0.510%  30.455%
   33   12.2  0.5 -0.5   0.000%   0.000%   2.150%  24.123%  12.725%   0.083%   1.628%  34.749%  13.008%   0.690%
   34   13.2  0.5 -0.5   0.000%   0.000%  18.752%   9.337%   7.047%   3.996%   6.780%   1.296%   1.596%   6.427%
   35   14.2  0.5 -0.5   0.000%   0.000%  14.306%   3.719%  15.134%   5.972%  10.905%   0.262%   1.051%  33.391%
   36   15.2  0.5 -0.5   0.000%   6.254%   0.000%   0.132%   0.222%   1.075%   0.001%   0.000%   0.000%   0.004%
   37   16.2  0.5 -0.5   0.020%   6.238%   0.004%   0.134%   0.244%   1.045%   0.001%   0.000%   0.000%   0.002%
   38   17.2  0.5 -0.5   6.171%   0.021%   1.382%   0.049%   0.023%   0.003%   0.000%   0.000%   0.000%   0.001%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.005%   0.000%   0.017%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.020%   0.002%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.016%   0.000%   0.005%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    3.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    5.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   13    9.2  0.5  0.5   0.000%   0.000%  18.738%   0.001%   0.001%   0.000%   0.000%   0.000%
   14   10.2  0.5  0.5   0.563%  10.332%   0.000%   0.003%   0.016%   0.048%   0.650%   0.098%
   15   11.2  0.5  0.5   1.029%  48.392%   0.001%   0.021%   0.043%   0.154%   0.120%   0.545%
   16   12.2  0.5  0.5   1.302%   0.219%   0.000%   0.000%   0.006%   0.011%   0.797%   0.000%
   17   13.2  0.5  0.5  17.427%   5.134%   0.001%   0.000%   0.195%   0.625%   0.040%   0.002%
   18   14.2  0.5  0.5  26.442%   6.455%   0.000%   0.001%   0.611%   0.214%   0.009%   0.011%
   19   15.2  0.5  0.5   0.003%   0.007%   0.001%  25.502%   0.040%   0.160%   0.048%  66.332%
   20   16.2  0.5  0.5   0.005%   0.016%   0.053%  27.274%   7.252%  40.657%   0.021%  17.016%
   21   17.2  0.5  0.5   0.000%   0.001%  26.279%   0.057%  56.140%   9.170%   0.651%   0.032%
   22    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    2.2  0.5 -0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   28    7.2  0.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    8.2  0.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   30    9.2  0.5 -0.5   0.002%   0.006%   0.001%  18.903%   0.000%   0.001%   0.000%   0.011%
   31   10.2  0.5 -0.5   2.432%   8.669%   0.001%   0.002%   0.117%   0.067%   0.037%   0.620%
   32   11.2  0.5 -0.5   1.365%   1.993%   0.002%   0.000%   0.486%   0.077%   0.212%   0.133%
   33   12.2  0.5 -0.5   1.570%   8.427%   0.000%   0.002%   0.023%   0.164%   0.002%   0.651%
   34   13.2  0.5 -0.5  38.440%   5.395%   0.000%   0.010%   0.511%   0.236%   0.118%   0.051%
   35   14.2  0.5 -0.5   9.414%   4.946%   0.000%   0.006%   0.134%   0.547%   0.162%   0.045%
   36   15.2  0.5 -0.5   0.000%   0.000%  27.462%   0.002%  14.982%   1.960%  47.853%   0.034%
   37   16.2  0.5 -0.5   0.000%   0.000%  27.403%   0.057%  12.924%   2.697%  49.061%   0.153%
   38   17.2  0.5 -0.5   0.002%   0.006%   0.051%  28.153%   6.495%  43.188%   0.196%  14.243%


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

 LZ (TRANSFORMED, REAL)          
              1             2             3             4             5             6             7             8
    1    0.02091703    0.01256469    0.01065128   -0.02203687    0.10707933   -0.05179114   -0.04319364    0.07720553
    2    0.01256469    0.00066046    0.00727208   -0.00934914    0.03889878   -0.04078083   -0.04039317   -0.01963871
    3    0.01065128    0.00727208   -0.00306115   -0.00128878    0.05199499    0.00057452   -0.01470762   -0.03617531
    4   -0.02203687   -0.00934914   -0.00128878   -0.01842107   -0.04615116    0.04203421    0.02882580    0.08650715
    5    0.10707933    0.03889878    0.05199499   -0.04615116    1.14276537   -0.49428749   -0.46414594    0.33019996
    6   -0.05179114   -0.04078083    0.00057452    0.04203421   -0.49428749    0.15260758    0.71997131    0.10101340
    7   -0.04319364   -0.04039317   -0.01470762    0.02882580   -0.46414594    0.71997131   -0.07718747   -0.01183972
    8    0.07720553   -0.01963871   -0.03617531    0.08650715    0.33019996    0.10101340   -0.01183972   -1.21600570
    9    0.00197370    0.00385249   -0.00572113   -0.00150609    0.08396342   -0.11288423    0.25006528    0.16106703
   10   -0.00966656    0.00184927    0.00527574    0.00562965   -0.12849703   -0.10051377    0.12092235   -0.14033142
   11    0.00312530   -0.00016192    0.00447371   -0.00032932    0.04908730   -0.04502628    0.01585172    0.05555580
   12    0.00504964    0.00112795   -0.00554037    0.00796770    0.03378864    0.07971100   -0.04086103   -0.12051732
   13   -0.00681897    0.00404574    0.01109642    0.00210141   -0.00511781    0.04468289    0.01653168    0.02606472
   14   -0.00336901    0.01658387   -0.00837842    0.00118405    0.00177130    0.02523608   -0.02796691    0.21742888
   15   -0.01562779    0.00828575   -0.01962100   -0.03919385   -0.04706456   -0.10941090    0.02144934   -0.02332756
   16    0.03120856   -0.07477457   -0.01201502   -0.02014671    0.06328354    0.06030620    0.05858757   -0.01503699
   17    0.01367974   -0.02694119   -0.04916414    0.06605994    0.02123778   -0.06914247   -0.04899255    0.20790922
   18   -0.05079331   -0.00225069   -0.00541715    0.06837823    0.14048572   -0.01715010   -0.07257674    0.04713862
   19    0.06245573    0.00698147   -0.00782552    0.01838616   -0.12357929    0.00614199   -0.00279696    0.02747071
   20    0.08276445    0.05381234    0.02873379    0.00122665   -0.15445886    0.13444990    0.08785752    0.07088227
   21   -0.00031795    0.00171009    0.00029900    0.00110052    0.00024442   -0.00017690    0.00015840   -0.00013225
   22   -0.00062352    0.00104206   -0.00098176   -0.00099524    0.00028833    0.00044271    0.00009207    0.00013216
   23   -0.00035618   -0.00081341   -0.00016256   -0.00008438   -0.00012602    0.00014410    0.00021830   -0.00001790
   24   -0.00134591   -0.00084671   -0.00087481    0.00081730    0.00006629   -0.00009265    0.00021998    0.00002987
   25   -0.00151891   -0.00027263    0.00006106    0.00051300    0.00010580    0.00011981    0.00010417   -0.00013759
   26    0.00067354   -0.00003613   -0.00116020    0.00064333    0.00003028   -0.00002123    0.00004389   -0.00005120
   27    0.00006009   -0.00004732   -0.00014110   -0.00001950    0.00169498    0.00211998    0.00135748    0.00222688
   28   -0.00001364    0.00003167    0.00000357    0.00001952   -0.00014304   -0.00012638   -0.00015025    0.00021987
   29   -0.00001150    0.00000870   -0.00002595   -0.00002964   -0.00055354   -0.00054066   -0.00019395    0.00024902
   30    0.00009802    0.00007192   -0.00016799    0.00015098    0.00120755    0.00097999   -0.00038619   -0.00323691
   31    0.00003421   -0.00025170    0.00004525   -0.00005408   -0.00115105    0.00223661   -0.00164748   -0.00249671
   32   -0.00024789    0.00010746   -0.00011477    0.00019306   -0.00375317    0.00185474    0.00179999    0.00065862
   33    0.00118992   -0.00044628   -0.00507246   -0.00156378    0.00008351    0.00014037    0.00012845    0.00071282
   34    0.00098620   -0.00297235   -0.00142723   -0.00248922   -0.00018799   -0.00012361    0.00079940   -0.00033333
   35    0.00034597    0.00133967    0.00391413   -0.00132787   -0.00018166    0.00057979    0.00011953    0.00003068
   36   -0.00649095   -0.00043744    0.00035715    0.00373813    0.00127152   -0.00064846    0.00001134   -0.00014373
   37   -0.00018651    0.00036554   -0.00670395   -0.00393756   -0.00039956   -0.00111638    0.00035413   -0.00000150
   38    0.01001212    0.00606180    0.00382662   -0.00406130   -0.00161694    0.00080117    0.00106746   -0.00029285
              9            10            11            12            13            14            15            16
    1    0.00197370   -0.00966656    0.00312530    0.00504964   -0.00681897   -0.00336901   -0.01562779    0.03120856
    2    0.00385249    0.00184927   -0.00016192    0.00112795    0.00404574    0.01658387    0.00828575   -0.07477457
    3   -0.00572113    0.00527574    0.00447371   -0.00554037    0.01109642   -0.00837842   -0.01962100   -0.01201502
    4   -0.00150609    0.00562965   -0.00032932    0.00796770    0.00210141    0.00118405   -0.03919385   -0.02014671
    5    0.08396342   -0.12849703    0.04908730    0.03378864   -0.00511781    0.00177130   -0.04706456    0.06328354
    6   -0.11288423   -0.10051377   -0.04502628    0.07971100    0.04468289    0.02523608   -0.10941090    0.06030620
    7    0.25006528    0.12092235    0.01585172   -0.04086103    0.01653168   -0.02796691    0.02144934    0.05858757
    8    0.16106703   -0.14033142    0.05555580   -0.12051732    0.02606472    0.21742888   -0.02332756   -0.01503699
    9   -0.70288985   -0.80893884   -0.09156787   -0.03029798    0.23687551   -0.04379479   -0.00023624   -0.00041229
   10   -0.80893884    0.39508684    0.65748256   -0.40999996   -0.05064345    0.32087157    0.00068385    0.00048952
   11   -0.09156787    0.65748256    0.95126744    0.76451029   -0.23801839    0.06909150   -0.00027645   -0.00034815
   12   -0.03029798   -0.40999996    0.76451029   -0.50741227    0.29103528   -0.37788107   -0.00034044   -0.00035803
   13    0.23687551   -0.05064345   -0.23801839    0.29103528    0.25062376   -0.65513161   -0.00054409   -0.00066739
   14   -0.04379479    0.32087157    0.06909150   -0.37788107   -0.65513161   -0.39041566   -0.00034467    0.00045746
   15   -0.00023624    0.00068385   -0.00027645   -0.00034044   -0.00054409   -0.00034467    0.16626534   -0.51696540
   16   -0.00041229    0.00048952   -0.00034815   -0.00035803   -0.00066739    0.00045746   -0.51696540   -0.16480801
   17   -0.01687017    0.01285316   -0.02080426    0.04812246   -0.04452318   -0.05850717   -0.12361063   -0.14962502
   18    0.05872648   -0.02190422    0.03104988    0.01787759    0.00211907    0.07873246    0.14706460    0.21599989
   19   -0.04265646    0.09698943   -0.02635723    0.00693027    0.03513319   -0.00554402   -0.18161288    0.29024397
   20    0.03872388    0.00819798   -0.00451778    0.02888175   -0.01727507    0.02599362    0.14075081   -0.03698056
   21   -0.00001514   -0.00000039    0.00003126   -0.00015863   -0.00003748   -0.00004334   -0.00225725   -0.00271280
   22    0.00000651    0.00000058   -0.00007037    0.00004933   -0.00004135   -0.00008217   -0.00287518    0.00133569
   23    0.00012912   -0.00012159   -0.00012483    0.00100123    0.00165135    0.00504160    0.00062567    0.00089994
   24    0.00104321   -0.00067439   -0.00014483    0.00012162   -0.00166270   -0.00046748    0.00011421   -0.00072227
   25   -0.00259659    0.00409890   -0.00148378   -0.00035938    0.00216726   -0.00183084   -0.00045617    0.00034003
   26    0.00294519    0.00050200    0.00196335   -0.00290251    0.00069937   -0.00040636   -0.00009560    0.00004165
   27   -0.00004887    0.00004947    0.00009467    0.00002967   -0.00003018   -0.00001806    0.00008154    0.00001030
   28    0.00005572    0.00000492   -0.00000053   -0.00004812   -0.00000761    0.00000564   -0.00002523   -0.00002453
   29   -0.00003015   -0.00009438    0.00001505    0.00001980   -0.00003670   -0.00005460    0.00000959   -0.00001152
   30    0.00004131    0.00008839    0.00002275   -0.00007409   -0.00002053   -0.00002954    0.00005024    0.00000631
   31   -0.00000474   -0.00009876    0.00001564    0.00003336    0.00005418    0.00000054    0.00001517   -0.00003615
   32   -0.00006856    0.00008149   -0.00003710   -0.00007694    0.00001519   -0.00006578   -0.00001157   -0.00001436
   33   -0.00004433   -0.00002739   -0.00007613    0.00000496    0.00004657   -0.00005295    0.00037527    0.00046649
   34   -0.00004860   -0.00004229   -0.00001377   -0.00003663    0.00007162   -0.00003828   -0.00116734   -0.00116324
   35    0.00068049   -0.00061375    0.00010208    0.00000103   -0.00075897    0.00006916    0.00037136    0.00200795
   36   -0.00005987   -0.00074473    0.00013991    0.00016053   -0.00021180    0.00080540   -0.00183526   -0.00144277
   37   -0.00051022   -0.00013726   -0.00044016    0.00029107    0.00020747    0.00034675   -0.00032731    0.00027463
   38   -0.00026191    0.00016979   -0.00016417    0.00009598    0.00012962    0.00038236   -0.00102186   -0.00112419
             17            18            19            20            21            22            23            24
    1    0.01367974   -0.05079331    0.06245573    0.08276445   -0.00031795   -0.00062352   -0.00035618   -0.00134591
    2   -0.02694119   -0.00225069    0.00698147    0.05381234    0.00171009    0.00104206   -0.00081341   -0.00084671
    3   -0.04916414   -0.00541715   -0.00782552    0.02873379    0.00029900   -0.00098176   -0.00016256   -0.00087481
    4    0.06605994    0.06837823    0.01838616    0.00122665    0.00110052   -0.00099524   -0.00008438    0.00081730
    5    0.02123778    0.14048572   -0.12357929   -0.15445886    0.00024442    0.00028833   -0.00012602    0.00006629
    6   -0.06914247   -0.01715010    0.00614199    0.13444990   -0.00017690    0.00044271    0.00014410   -0.00009265
    7   -0.04899255   -0.07257674   -0.00279696    0.08785752    0.00015840    0.00009207    0.00021830    0.00021998
    8    0.20790922    0.04713862    0.02747071    0.07088227   -0.00013225    0.00013216   -0.00001790    0.00002987
    9   -0.01687017    0.05872648   -0.04265646    0.03872388   -0.00001514    0.00000651    0.00012912    0.00104321
   10    0.01285316   -0.02190422    0.09698943    0.00819798   -0.00000039    0.00000058   -0.00012159   -0.00067439
   11   -0.02080426    0.03104988   -0.02635723   -0.00451778    0.00003126   -0.00007037   -0.00012483   -0.00014483
   12    0.04812246    0.01787759    0.00693027    0.02888175   -0.00015863    0.00004933    0.00100123    0.00012162
   13   -0.04452318    0.00211907    0.03513319   -0.01727507   -0.00003748   -0.00004135    0.00165135   -0.00166270
   14   -0.05850717    0.07873246   -0.00554402    0.02599362   -0.00004334   -0.00008217    0.00504160   -0.00046748
   15   -0.12361063    0.14706460   -0.18161288    0.14075081   -0.00225725   -0.00287518    0.00062567    0.00011421
   16   -0.14962502    0.21599989    0.29024397   -0.03698056   -0.00271280    0.00133569    0.00089994   -0.00072227
   17   -0.70186601    0.18118286   -0.29565283   -0.43163500   -0.00079165   -0.00011670   -0.00003890    0.00006631
   18    0.18118286   -0.08185056   -0.38253728   -0.59230404    0.00077974   -0.00014420    0.00036745    0.00044775
   19   -0.29565283   -0.38253728    0.28409206   -0.01990933    0.00018859    0.00049237   -0.00008185    0.00000908
   20   -0.43163500   -0.59230404   -0.01990933    0.49963143    0.00032379   -0.00037682   -0.00011554   -0.00035946
   21   -0.00079165    0.00077974    0.00018859    0.00032379   -0.12735852    0.00119298    0.02975412   -0.00922777
   22   -0.00011670   -0.00014420    0.00049237   -0.00037682    0.00119298    0.12513197   -0.00069928   -0.00344800
   23   -0.00003890    0.00036745   -0.00008185   -0.00011554    0.02975412   -0.00069928   -0.47144673    0.41916585
   24    0.00006631    0.00044775    0.00000908   -0.00035946   -0.00922777   -0.00344800    0.41916585    1.25835477
   25    0.00029744    0.00021604   -0.00027619   -0.00015262   -0.00696950    0.00471095    0.31952716    0.52380517
   26   -0.00052150    0.00003916    0.00001495   -0.00011743   -0.00058159    0.00087284   -0.00055503   -0.11091001
   27    0.00033932    0.00023192   -0.00233613    0.00135097    0.00023501    0.00031109    0.00028675   -0.25847913
   28   -0.00020520    0.00021184    0.00007303    0.00002875    0.00000147    0.00029940   -0.03574853    0.01386402
   29    0.00003730   -0.00001158    0.00016584    0.00000125    0.00003982   -0.00004423    0.00500365   -0.01155701
   30    0.00196419    0.00045559    0.00075435    0.00046841   -0.00013908    0.00045420   -0.08174109    0.08452816
   31    0.00062751   -0.00231746   -0.00023739   -0.00030262    0.00118998    0.00023110    0.25913066   -0.13641874
   32   -0.00115767    0.00004559    0.00109978    0.00217501   -0.00238754    0.00019545   -0.28386251   -0.20248527
   33   -0.00017789   -0.00017415    0.00153516   -0.00091091   -0.00079472    0.13896857   -0.00045115    0.02684506
   34   -0.00170150    0.00139406    0.00027170    0.00039923    0.25118834   -0.00042874   -0.06032857    0.00785338
   35    0.00006635    0.00002919    0.00032249   -0.00056831    0.05769613   -0.04440719    0.01230485    0.03228556
   36   -0.00059861   -0.00025153    0.00051832    0.00063222   -0.16629641   -0.01801229   -0.03830005   -0.02720786
   37    0.00052657   -0.00083971   -0.00021094   -0.00019187    0.00176719    0.01212202   -0.00086785    0.00368805
   38    0.00036035    0.00119293   -0.00062666   -0.00137210   -0.09724999   -0.00068534    0.00779360    0.08112280
             25            26            27            28            29            30            31            32
    1   -0.00151891    0.00067354    0.00006009   -0.00001364   -0.00001150    0.00009802    0.00003421   -0.00024789
    2   -0.00027263   -0.00003613   -0.00004732    0.00003167    0.00000870    0.00007192   -0.00025170    0.00010746
    3    0.00006106   -0.00116020   -0.00014110    0.00000357   -0.00002595   -0.00016799    0.00004525   -0.00011477
    4    0.00051300    0.00064333   -0.00001950    0.00001952   -0.00002964    0.00015098   -0.00005408    0.00019306
    5    0.00010580    0.00003028    0.00169498   -0.00014304   -0.00055354    0.00120755   -0.00115105   -0.00375317
    6    0.00011981   -0.00002123    0.00211998   -0.00012638   -0.00054066    0.00097999    0.00223661    0.00185474
    7    0.00010417    0.00004389    0.00135748   -0.00015025   -0.00019395   -0.00038619   -0.00164748    0.00179999
    8   -0.00013759   -0.00005120    0.00222688    0.00021987    0.00024902   -0.00323691   -0.00249671    0.00065862
    9   -0.00259659    0.00294519   -0.00004887    0.00005572   -0.00003015    0.00004131   -0.00000474   -0.00006856
   10    0.00409890    0.00050200    0.00004947    0.00000492   -0.00009438    0.00008839   -0.00009876    0.00008149
   11   -0.00148378    0.00196335    0.00009467   -0.00000053    0.00001505    0.00002275    0.00001564   -0.00003710
   12   -0.00035938   -0.00290251    0.00002967   -0.00004812    0.00001980   -0.00007409    0.00003336   -0.00007694
   13    0.00216726    0.00069937   -0.00003018   -0.00000761   -0.00003670   -0.00002053    0.00005418    0.00001519
   14   -0.00183084   -0.00040636   -0.00001806    0.00000564   -0.00005460   -0.00002954    0.00000054   -0.00006578
   15   -0.00045617   -0.00009560    0.00008154   -0.00002523    0.00000959    0.00005024    0.00001517   -0.00001157
   16    0.00034003    0.00004165    0.00001030   -0.00002453   -0.00001152    0.00000631   -0.00003615   -0.00001436
   17    0.00029744   -0.00052150    0.00033932   -0.00020520    0.00003730    0.00196419    0.00062751   -0.00115767
   18    0.00021604    0.00003916    0.00023192    0.00021184   -0.00001158    0.00045559   -0.00231746    0.00004559
   19   -0.00027619    0.00001495   -0.00233613    0.00007303    0.00016584    0.00075435   -0.00023739    0.00109978
   20   -0.00015262   -0.00011743    0.00135097    0.00002875    0.00000125    0.00046841   -0.00030262    0.00217501
   21   -0.00696950   -0.00058159    0.00023501    0.00000147    0.00003982   -0.00013908    0.00118998   -0.00238754
   22    0.00471095    0.00087284    0.00031109    0.00029940   -0.00004423    0.00045420    0.00023110    0.00019545
   23    0.31952716   -0.00055503    0.00028675   -0.03574853    0.00500365   -0.08174109    0.25913066   -0.28386251
   24    0.52380517   -0.11091001   -0.25847913    0.01386402   -0.01155701    0.08452816   -0.13641874   -0.20248527
   25    0.97091793    0.21874106    0.34442574    0.00594935   -0.00046624   -0.02007218   -0.12109172   -0.15628343
   26    0.21874106   -1.75844830    0.06479390   -0.02001304    0.01089492    0.36510568    0.09888937   -0.00150947
   27    0.34442574    0.06479390    0.40326876   -0.08242936   -0.00600402   -0.09386432   -0.00548127   -0.00298738
   28    0.00594935   -0.02001304   -0.08242936   -0.78540319    1.68295070   -0.02387716   -0.05530890   -0.02539940
   29   -0.00046624    0.01089492   -0.00600402    1.68295070    0.78455194   -0.00453172    0.04325217   -0.03885536
   30   -0.02007218    0.36510568   -0.09386432   -0.02387716   -0.00453172   -1.10465808   -0.31087932   -0.18040743
   31   -0.12109172    0.09888937   -0.00548127   -0.05530890    0.04325217   -0.31087932   -0.12840463    0.59199519
   32   -0.15628343   -0.00150947   -0.00298738   -0.02539940   -0.03885536   -0.18040743    0.59199519    0.83033536
   33   -0.03412092   -0.00514334    0.00071983   -0.00135564   -0.00089314    0.00221893    0.00173321   -0.00023338
   34    0.00551211    0.00110354   -0.00166122    0.00189999   -0.00066105   -0.00169227    0.00064761    0.01027449
   35   -0.01652307   -0.01298649   -0.06250575    0.00264012   -0.00737950    0.01334152   -0.00301988    0.00082277
   36   -0.03381064   -0.00613623   -0.02186652   -0.00407129   -0.00219561   -0.00592502    0.02373246   -0.00207241
   37   -0.01108078    0.08440903   -0.00307220    0.00327392   -0.00091618   -0.03181515   -0.00763875    0.00160776
   38    0.06266332    0.00330558    0.00056086   -0.00271373   -0.00071459   -0.00249160   -0.00264511   -0.05623924
             33            34            35            36            37            38
    1    0.00118992    0.00098620    0.00034597   -0.00649095   -0.00018651    0.01001212
    2   -0.00044628   -0.00297235    0.00133967   -0.00043744    0.00036554    0.00606180
    3   -0.00507246   -0.00142723    0.00391413    0.00035715   -0.00670395    0.00382662
    4   -0.00156378   -0.00248922   -0.00132787    0.00373813   -0.00393756   -0.00406130
    5    0.00008351   -0.00018799   -0.00018166    0.00127152   -0.00039956   -0.00161694
    6    0.00014037   -0.00012361    0.00057979   -0.00064846   -0.00111638    0.00080117
    7    0.00012845    0.00079940    0.00011953    0.00001134    0.00035413    0.00106746
    8    0.00071282   -0.00033333    0.00003068   -0.00014373   -0.00000150   -0.00029285
    9   -0.00004433   -0.00004860    0.00068049   -0.00005987   -0.00051022   -0.00026191
   10   -0.00002739   -0.00004229   -0.00061375   -0.00074473   -0.00013726    0.00016979
   11   -0.00007613   -0.00001377    0.00010208    0.00013991   -0.00044016   -0.00016417
   12    0.00000496   -0.00003663    0.00000103    0.00016053    0.00029107    0.00009598
   13    0.00004657    0.00007162   -0.00075897   -0.00021180    0.00020747    0.00012962
   14   -0.00005295   -0.00003828    0.00006916    0.00080540    0.00034675    0.00038236
   15    0.00037527   -0.00116734    0.00037136   -0.00183526   -0.00032731   -0.00102186
   16    0.00046649   -0.00116324    0.00200795   -0.00144277    0.00027463   -0.00112419
   17   -0.00017789   -0.00170150    0.00006635   -0.00059861    0.00052657    0.00036035
   18   -0.00017415    0.00139406    0.00002919   -0.00025153   -0.00083971    0.00119293
   19    0.00153516    0.00027170    0.00032249    0.00051832   -0.00021094   -0.00062666
   20   -0.00091091    0.00039923   -0.00056831    0.00063222   -0.00019187   -0.00137210
   21   -0.00079472    0.25118834    0.05769613   -0.16629641    0.00176719   -0.09724999
   22    0.13896857   -0.00042874   -0.04440719   -0.01801229    0.01212202   -0.00068534
   23   -0.00045115   -0.06032857    0.01230485   -0.03830005   -0.00086785    0.00779360
   24    0.02684506    0.00785338    0.03228556   -0.02720786    0.00368805    0.08112280
   25   -0.03412092    0.00551211   -0.01652307   -0.03381064   -0.01108078    0.06266332
   26   -0.00514334    0.00110354   -0.01298649   -0.00613623    0.08440903    0.00330558
   27    0.00071983   -0.00166122   -0.06250575   -0.02186652   -0.00307220    0.00056086
   28   -0.00135564    0.00189999    0.00264012   -0.00407129    0.00327392   -0.00271373
   29   -0.00089314   -0.00066105   -0.00737950   -0.00219561   -0.00091618   -0.00071459
   30    0.00221893   -0.00169227    0.01334152   -0.00592502   -0.03181515   -0.00249160
   31    0.00173321    0.00064761   -0.00301988    0.02373246   -0.00763875   -0.00264511
   32   -0.00023338    0.01027449    0.00082277   -0.00207241    0.00160776   -0.05623924
   33    0.54914974    0.00779775   -0.37278429   -0.13537188   -0.01074355   -0.00311366
   34    0.00779775   -0.52802273   -0.12387337    0.33789481   -0.00214010    0.21791875
   35   -0.37278429   -0.12387337    0.28095391    0.10870307    0.06207543    0.19286789
   36   -0.13537188    0.33789481    0.10870307    0.00705459    0.04435340   -0.54429659
   37   -0.01074355   -0.00214010    0.06207543    0.04435340   -1.00209787   -0.04777098
   38   -0.00311366    0.21791875    0.19286789   -0.54429659   -0.04777098    0.69612154

 LZ (TRANSFORMED, IMAG)          
              1             2             3             4             5             6             7             8
    1    0.00000000    0.00187273   -0.01187299   -0.00678732    0.00861347    0.02117971   -0.00372064    0.01163811
    2   -0.00187273    0.00000000    0.00987956    0.00320898   -0.01025263    0.01269464   -0.03527500   -0.00131714
    3    0.01187299   -0.00987956    0.00000000    0.01551312    0.02659718    0.01622714    0.02192089   -0.07098030
    4    0.00678732   -0.00320898   -0.01551312    0.00000000    0.02772421    0.07158568   -0.02922460   -0.02818761
    5   -0.00861347    0.01025263   -0.02659718   -0.02772421    0.00000000    0.04440099    0.02565391    0.38014172
    6   -0.02117971   -0.01269464   -0.01622714   -0.07158568   -0.04440099    0.00000000    0.04437528    0.68109450
    7    0.00372064    0.03527500   -0.02192089    0.02922460   -0.02565391   -0.04437528    0.00000000    0.01525425
    8   -0.01163811    0.00131714    0.07098030    0.02818761   -0.38014172   -0.68109450   -0.01525425    0.00000000
    9   -0.00759395   -0.00813831   -0.00746330   -0.01749602   -0.08862708   -0.03273299    0.06736703    0.09571605
   10    0.01237861   -0.01063949    0.00830804   -0.00324033    0.23311737    0.07265989    0.02300970   -0.01787853
   11   -0.00853308   -0.00125085   -0.00403027   -0.00557518   -0.09509848    0.03997058    0.03987313    0.13048493
   12   -0.00843260   -0.00184560   -0.00141748    0.01130779   -0.17708957   -0.02852038    0.12856050   -0.08076398
   13    0.00235094   -0.01395028   -0.01444579    0.00801043    0.08838322    0.29650767    0.25250045   -0.02757055
   14    0.00836550    0.01030069   -0.00970343   -0.00321229    0.14741331   -0.22233843    0.16516230   -0.09915287
   15   -0.01313177   -0.02356414    0.06771318   -0.00372272   -0.03157387    0.00143091   -0.08159213   -0.06723852
   16   -0.00011960   -0.01209846   -0.00401559   -0.01618383   -0.03543525    0.03788046   -0.11129890    0.03416877
   17    0.01420811   -0.02093714    0.04848601    0.04469452    0.02965129    0.06920959   -0.00144025    0.08323398
   18   -0.01883671    0.00427179    0.01088187   -0.02848719    0.00687196    0.06286431   -0.06938960   -0.08130287
   19   -0.00792206    0.00525085   -0.00572792   -0.01594543    0.03176847    0.06813298   -0.01901556   -0.04203451
   20   -0.00437166   -0.00759006    0.02969330    0.00438990    0.00207499    0.04010219   -0.04172118   -0.00608833
   21   -0.00012825    0.00154990   -0.00121243    0.00045221   -0.00030065    0.00035118   -0.00032520   -0.00001915
   22   -0.00095590    0.00086903    0.00174186    0.00011238    0.00028818    0.00038102    0.00013699   -0.00003469
   23   -0.00000736   -0.00030617    0.00036126   -0.00004228    0.00006917   -0.00007861   -0.00003678    0.00001228
   24   -0.00004035    0.00020552   -0.00026538   -0.00008149   -0.00000182   -0.00003214    0.00008566    0.00014461
   25    0.00003390   -0.00013938    0.00021508    0.00007835   -0.00004624   -0.00003685    0.00000597   -0.00011948
   26    0.00078163   -0.00017311    0.00041891    0.00181408    0.00012194   -0.00000113   -0.00000695   -0.00006375
   27   -0.00007778    0.00009346   -0.00003394   -0.00009560   -0.00306001   -0.00384864   -0.00185454    0.00033395
   28   -0.00000268    0.00000334   -0.00000938   -0.00001621    0.00012539   -0.00020093    0.00043690    0.00025999
   29   -0.00001098    0.00002381    0.00003491    0.00000335   -0.00045566   -0.00087817   -0.00054548   -0.00067263
   30    0.00005707   -0.00002809    0.00006737    0.00020281   -0.00021377   -0.00170362    0.00199716   -0.00319294
   31    0.00004675    0.00008824    0.00015390    0.00009913    0.00042033    0.00077998   -0.00480339    0.00059860
   32    0.00007541    0.00006725   -0.00008198   -0.00005812    0.00221688   -0.00232386    0.00186812   -0.00005752
   33   -0.00264722    0.00348055    0.00018331   -0.00198504   -0.00054612   -0.00063694   -0.00046946   -0.00007011
   34    0.00051511   -0.00469069    0.00272127   -0.00181939   -0.00017623    0.00039609   -0.00055217   -0.00018981
   35    0.00116199   -0.00286451    0.00108401    0.00030344   -0.00036576   -0.00067380   -0.00004089   -0.00010832
   36    0.00004666    0.00198880   -0.00153993    0.00108236   -0.00018929   -0.00000555   -0.00051142   -0.00021444
   37    0.00609531   -0.00098511   -0.00251239    0.01044201   -0.00031131   -0.00025738    0.00008757    0.00225043
   38   -0.00001521    0.00158216   -0.00109568    0.00083162    0.00000269    0.00008463   -0.00025453   -0.00003808
              9            10            11            12            13            14            15            16
    1    0.00759395   -0.01237861    0.00853308    0.00843260   -0.00235094   -0.00836550    0.01313177    0.00011960
    2    0.00813831    0.01063949    0.00125085    0.00184560    0.01395028   -0.01030069    0.02356414    0.01209846
    3    0.00746330   -0.00830804    0.00403027    0.00141748    0.01444579    0.00970343   -0.06771318    0.00401559
    4    0.01749602    0.00324033    0.00557518   -0.01130779   -0.00801043    0.00321229    0.00372272    0.01618383
    5    0.08862708   -0.23311737    0.09509848    0.17708957   -0.08838322   -0.14741331    0.03157387    0.03543525
    6    0.03273299   -0.07265989   -0.03997058    0.02852038   -0.29650767    0.22233843   -0.00143091   -0.03788046
    7   -0.06736703   -0.02300970   -0.03987313   -0.12856050   -0.25250045   -0.16516230    0.08159213    0.11129890
    8   -0.09571605    0.01787853   -0.13048493    0.08076398    0.02757055    0.09915287    0.06723852   -0.03416877
    9    0.00000000    0.04993959    0.14044119   -0.23842486   -0.30480901   -0.42833948    0.00041481   -0.00079105
   10   -0.04993959    0.00000000   -0.30178658   -0.22695983   -0.26790257   -0.02720618   -0.00005474    0.00011128
   11   -0.14044119    0.30178658    0.00000000    1.06027429   -0.28879064    0.07603628   -0.00053356   -0.00003518
   12    0.23842486    0.22695983   -1.06027429    0.00000000    0.05646397   -0.23487890    0.00015303    0.00020092
   13    0.30480901    0.26790257    0.28879064   -0.05646397    0.00000000    0.10920121    0.00050000   -0.00005618
   14    0.42833948    0.02720618   -0.07603628    0.23487890   -0.10920121    0.00000000    0.00024222   -0.00006798
   15   -0.00041481    0.00005474    0.00053356   -0.00015303   -0.00050000   -0.00024222    0.00000000   -0.38712246
   16    0.00079105   -0.00011128    0.00003518   -0.00020092    0.00005618    0.00006798    0.38712246    0.00000000
   17    0.00229857   -0.02729444    0.04578527    0.01102083   -0.04422321   -0.10462878   -0.02713102   -0.12106907
   18    0.11039022    0.00686405    0.03635258   -0.00539891    0.03720154   -0.03408304   -0.17746536   -0.06164998
   19    0.01365549    0.08472140    0.00679267   -0.05319705    0.07585584   -0.03386213    0.15187822   -0.10243608
   20    0.03300035    0.03304688   -0.01299387   -0.07661161   -0.11353730    0.02854112   -0.20919416   -0.04442841
   21    0.00006379    0.00003053   -0.00005551    0.00006826   -0.00003870   -0.00015163    0.00050516   -0.00118801
   22    0.00014557   -0.00007702   -0.00007847   -0.00016797    0.00008771   -0.00001969   -0.00102329    0.00196754
   23    0.00347450    0.00276296   -0.00038691   -0.00108203    0.00023464    0.00185946   -0.00038649    0.00014335
   24   -0.00155291    0.00054521   -0.00159040   -0.00212559   -0.00465484    0.00246635   -0.00038593    0.00023757
   25   -0.00126780    0.00237495   -0.00046087   -0.00188457    0.00174200    0.00022129    0.00077706   -0.00009076
   26   -0.00043220   -0.00038095   -0.00081849   -0.00142197    0.00269447    0.00191196    0.00012090   -0.00004424
   27   -0.00005074   -0.00006548   -0.00006887   -0.00003824    0.00005448    0.00003317   -0.00002080    0.00006138
   28    0.00000322   -0.00005300    0.00000915    0.00002220   -0.00002212   -0.00005254   -0.00000426    0.00003201
   29   -0.00006533   -0.00003737   -0.00004655    0.00002623   -0.00002139    0.00004555    0.00001835   -0.00002617
   30    0.00000179   -0.00006629   -0.00000294    0.00001864   -0.00005261   -0.00010891    0.00012751   -0.00006383
   31   -0.00008563   -0.00001794    0.00006978   -0.00005151   -0.00002324   -0.00005153    0.00006156   -0.00001508
   32   -0.00005528    0.00004240   -0.00004746    0.00002959    0.00003304   -0.00005694    0.00002177    0.00006808
   33   -0.00000222    0.00005154    0.00013272   -0.00004185    0.00002124   -0.00001607    0.00138122   -0.00101698
   34    0.00007836    0.00013545   -0.00009176   -0.00007123   -0.00008775    0.00002915    0.00003795   -0.00088763
   35   -0.00041402   -0.00000558   -0.00025336   -0.00015353   -0.00071721   -0.00000067    0.00259689   -0.00102954
   36    0.00066958    0.00010056    0.00011661    0.00037284    0.00039977    0.00040934    0.00100332   -0.00181717
   37   -0.00035384    0.00005305   -0.00013644    0.00060008   -0.00048581   -0.00032712    0.00006891    0.00004958
   38    0.00018970    0.00058156   -0.00025547   -0.00047050   -0.00029355    0.00075438    0.00006772   -0.00075670
             17            18            19            20            21            22            23            24
    1   -0.01420811    0.01883671    0.00792206    0.00437166    0.00012825    0.00095590    0.00000736    0.00004035
    2    0.02093714   -0.00427179   -0.00525085    0.00759006   -0.00154990   -0.00086903    0.00030617   -0.00020552
    3   -0.04848601   -0.01088187    0.00572792   -0.02969330    0.00121243   -0.00174186   -0.00036126    0.00026538
    4   -0.04469452    0.02848719    0.01594543   -0.00438990   -0.00045221   -0.00011238    0.00004228    0.00008149
    5   -0.02965129   -0.00687196   -0.03176847   -0.00207499    0.00030065   -0.00028818   -0.00006917    0.00000182
    6   -0.06920959   -0.06286431   -0.06813298   -0.04010219   -0.00035118   -0.00038102    0.00007861    0.00003214
    7    0.00144025    0.06938960    0.01901556    0.04172118    0.00032520   -0.00013699    0.00003678   -0.00008566
    8   -0.08323398    0.08130287    0.04203451    0.00608833    0.00001915    0.00003469   -0.00001228   -0.00014461
    9   -0.00229857   -0.11039022   -0.01365549   -0.03300035   -0.00006379   -0.00014557   -0.00347450    0.00155291
   10    0.02729444   -0.00686405   -0.08472140   -0.03304688   -0.00003053    0.00007702   -0.00276296   -0.00054521
   11   -0.04578527   -0.03635258   -0.00679267    0.01299387    0.00005551    0.00007847    0.00038691    0.00159040
   12   -0.01102083    0.00539891    0.05319705    0.07661161   -0.00006826    0.00016797    0.00108203    0.00212559
   13    0.04422321   -0.03720154   -0.07585584    0.11353730    0.00003870   -0.00008771   -0.00023464    0.00465484
   14    0.10462878    0.03408304    0.03386213   -0.02854112    0.00015163    0.00001969   -0.00185946   -0.00246635
   15    0.02713102    0.17746536   -0.15187822    0.20919416   -0.00050516    0.00102329    0.00038649    0.00038593
   16    0.12106907    0.06164998    0.10243608    0.04442841    0.00118801   -0.00196754   -0.00014335   -0.00023757
   17    0.00000000   -0.23593793   -0.11229767   -0.11795651   -0.00011996   -0.00005125   -0.00017278    0.00003129
   18    0.23593793    0.00000000    0.04592087    0.07123614   -0.00057957    0.00015605   -0.00016991    0.00024424
   19    0.11229767   -0.04592087    0.00000000    0.01163485   -0.00045597   -0.00126093    0.00010632    0.00017286
   20    0.11795651   -0.07123614   -0.01163485    0.00000000   -0.00067262    0.00069121    0.00005027    0.00001002
   21    0.00011996    0.00057957    0.00045597    0.00067262    0.00000000    0.00036997    0.00838499   -0.00224932
   22    0.00005125   -0.00015605    0.00126093   -0.00069121   -0.00036997    0.00000000   -0.00012019   -0.01811619
   23    0.00017278    0.00016991   -0.00010632   -0.00005027   -0.00838499    0.00012019    0.00000000    0.01162911
   24   -0.00003129   -0.00024424   -0.00017286   -0.00001002    0.00224932    0.01811619   -0.01162911    0.00000000
   25    0.00021915   -0.00003496    0.00006875    0.00011784    0.00080683   -0.02362885    0.01739438   -0.00452794
   26   -0.00030279   -0.00034610   -0.00029155   -0.00024875   -0.00050261   -0.00326778   -0.01533161   -0.00673774
   27   -0.00009938   -0.00004881    0.00166163   -0.00084654    0.00025370   -0.00215856    0.00299060    0.10476052
   28   -0.00002760    0.00004468    0.00004382   -0.00000279    0.00063431   -0.00000841   -0.00394940    0.00107774
   29    0.00006781   -0.00001135    0.00067164   -0.00041816   -0.00043988   -0.00008149    0.00933179    0.07728740
   30    0.00098580    0.00087733    0.00058333    0.00102586   -0.00029393   -0.00003713    0.05933506   -0.04579336
   31   -0.00110603    0.00163933   -0.00024261   -0.00052815   -0.00091088   -0.00011377   -0.24162886    0.15710281
   32    0.00101385    0.00062810   -0.00020066   -0.00049810    0.00219830   -0.00013984    0.10774795    0.10367032
   33    0.00013883    0.00022807   -0.00219404    0.00123822    0.00081896    0.22223798   -0.00015612   -0.02333941
   34    0.00013935    0.00177627    0.00084948    0.00109486    0.06488567    0.00135285   -0.03417342    0.00398192
   35   -0.00001222   -0.00014192   -0.00044393    0.00016024    0.01661236   -0.18227218    0.00541641   -0.01009790
   36    0.00007744    0.00029755   -0.00009513    0.00017038   -0.03845723   -0.06284175   -0.01480102   -0.00028955
   37    0.00161223    0.00039368    0.00056625    0.00064626   -0.00323207   -0.01395528    0.00103520    0.00541180
   38    0.00012684    0.00024357    0.00008818    0.00009405   -0.02317880    0.00058686   -0.00754315    0.00221492
             25            26            27            28            29            30            31            32
    1   -0.00003390   -0.00078163    0.00007778    0.00000268    0.00001098   -0.00005707   -0.00004675   -0.00007541
    2    0.00013938    0.00017311   -0.00009346   -0.00000334   -0.00002381    0.00002809   -0.00008824   -0.00006725
    3   -0.00021508   -0.00041891    0.00003394    0.00000938   -0.00003491   -0.00006737   -0.00015390    0.00008198
    4   -0.00007835   -0.00181408    0.00009560    0.00001621   -0.00000335   -0.00020281   -0.00009913    0.00005812
    5    0.00004624   -0.00012194    0.00306001   -0.00012539    0.00045566    0.00021377   -0.00042033   -0.00221688
    6    0.00003685    0.00000113    0.00384864    0.00020093    0.00087817    0.00170362   -0.00077998    0.00232386
    7   -0.00000597    0.00000695    0.00185454   -0.00043690    0.00054548   -0.00199716    0.00480339   -0.00186812
    8    0.00011948    0.00006375   -0.00033395   -0.00025999    0.00067263    0.00319294   -0.00059860    0.00005752
    9    0.00126780    0.00043220    0.00005074   -0.00000322    0.00006533   -0.00000179    0.00008563    0.00005528
   10   -0.00237495    0.00038095    0.00006548    0.00005300    0.00003737    0.00006629    0.00001794   -0.00004240
   11    0.00046087    0.00081849    0.00006887   -0.00000915    0.00004655    0.00000294   -0.00006978    0.00004746
   12    0.00188457    0.00142197    0.00003824   -0.00002220   -0.00002623   -0.00001864    0.00005151   -0.00002959
   13   -0.00174200   -0.00269447   -0.00005448    0.00002212    0.00002139    0.00005261    0.00002324   -0.00003304
   14   -0.00022129   -0.00191196   -0.00003317    0.00005254   -0.00004555    0.00010891    0.00005153    0.00005694
   15   -0.00077706   -0.00012090    0.00002080    0.00000426   -0.00001835   -0.00012751   -0.00006156   -0.00002177
   16    0.00009076    0.00004424   -0.00006138   -0.00003201    0.00002617    0.00006383    0.00001508   -0.00006808
   17   -0.00021915    0.00030279    0.00009938    0.00002760   -0.00006781   -0.00098580    0.00110603   -0.00101385
   18    0.00003496    0.00034610    0.00004881   -0.00004468    0.00001135   -0.00087733   -0.00163933   -0.00062810
   19   -0.00006875    0.00029155   -0.00166163   -0.00004382   -0.00067164   -0.00058333    0.00024261    0.00020066
   20   -0.00011784    0.00024875    0.00084654    0.00000279    0.00041816   -0.00102586    0.00052815    0.00049810
   21   -0.00080683    0.00050261   -0.00025370   -0.00063431    0.00043988    0.00029393    0.00091088   -0.00219830
   22    0.02362885    0.00326778    0.00215856    0.00000841    0.00008149    0.00003713    0.00011377    0.00013984
   23   -0.01739438    0.01533161   -0.00299060    0.00394940   -0.00933179   -0.05933506    0.24162886   -0.10774795
   24    0.00452794    0.00673774   -0.10476052   -0.00107774   -0.07728740    0.04579336   -0.15710281   -0.10367032
   25    0.00000000   -0.01725677    0.13607041   -0.01235587    0.08933232    0.02390654   -0.12629975   -0.07597067
   26    0.01725677    0.00000000    0.03695421    0.00599938    0.00556182    0.08477977    0.03102976    0.00027551
   27   -0.13607041   -0.03695421    0.00000000   -0.45169789   -0.07859506    0.02628324   -0.01693843    0.00599003
   28    0.01235587   -0.00599938    0.45169789    0.00000000   -0.54260298   -0.02648650   -0.07433582    0.01306602
   29   -0.08933232   -0.00556182    0.07859506    0.54260298    0.00000000   -0.00824105    0.11844626   -0.00556059
   30   -0.02390654   -0.08477977   -0.02628324    0.02648650    0.00824105    0.00000000   -0.04689756    0.06482907
   31    0.12629975   -0.03102976    0.01693843    0.07433582   -0.11844626    0.04689756    0.00000000   -0.26727332
   32    0.07597067   -0.00027551   -0.00599003   -0.01306602    0.00556059   -0.06482907    0.26727332    0.00000000
   33    0.03140889    0.00370293    0.00064850   -0.00040785   -0.00155588    0.00416668    0.00032308   -0.00171041
   34    0.00343527   -0.00135652    0.00094310   -0.00167625    0.00126452   -0.00073517    0.00662154    0.01441449
   35    0.01168525    0.00447627    0.00240516    0.00072504   -0.01462993    0.00303512   -0.02274369    0.00506656
   36    0.00684474    0.00196898    0.00209921   -0.00060692   -0.00502072   -0.01565732    0.05825994   -0.01828183
   37   -0.00902422    0.07244075   -0.00785954    0.00103849   -0.00176682   -0.04343970   -0.01287310    0.00060238
   38    0.00141767    0.00213892    0.00039213   -0.00194799   -0.00151701   -0.00416085    0.01110535   -0.03531902
             33            34            35            36            37            38
    1    0.00264722   -0.00051511   -0.00116199   -0.00004666   -0.00609531    0.00001521
    2   -0.00348055    0.00469069    0.00286451   -0.00198880    0.00098511   -0.00158216
    3   -0.00018331   -0.00272127   -0.00108401    0.00153993    0.00251239    0.00109568
    4    0.00198504    0.00181939   -0.00030344   -0.00108236   -0.01044201   -0.00083162
    5    0.00054612    0.00017623    0.00036576    0.00018929    0.00031131   -0.00000269
    6    0.00063694   -0.00039609    0.00067380    0.00000555    0.00025738   -0.00008463
    7    0.00046946    0.00055217    0.00004089    0.00051142   -0.00008757    0.00025453
    8    0.00007011    0.00018981    0.00010832    0.00021444   -0.00225043    0.00003808
    9    0.00000222   -0.00007836    0.00041402   -0.00066958    0.00035384   -0.00018970
   10   -0.00005154   -0.00013545    0.00000558   -0.00010056   -0.00005305   -0.00058156
   11   -0.00013272    0.00009176    0.00025336   -0.00011661    0.00013644    0.00025547
   12    0.00004185    0.00007123    0.00015353   -0.00037284   -0.00060008    0.00047050
   13   -0.00002124    0.00008775    0.00071721   -0.00039977    0.00048581    0.00029355
   14    0.00001607   -0.00002915    0.00000067   -0.00040934    0.00032712   -0.00075438
   15   -0.00138122   -0.00003795   -0.00259689   -0.00100332   -0.00006891   -0.00006772
   16    0.00101698    0.00088763    0.00102954    0.00181717   -0.00004958    0.00075670
   17   -0.00013883   -0.00013935    0.00001222   -0.00007744   -0.00161223   -0.00012684
   18   -0.00022807   -0.00177627    0.00014192   -0.00029755   -0.00039368   -0.00024357
   19    0.00219404   -0.00084948    0.00044393    0.00009513   -0.00056625   -0.00008818
   20   -0.00123822   -0.00109486   -0.00016024   -0.00017038   -0.00064626   -0.00009405
   21   -0.00081896   -0.06488567   -0.01661236    0.03845723    0.00323207    0.02317880
   22   -0.22223798   -0.00135285    0.18227218    0.06284175    0.01395528   -0.00058686
   23    0.00015612    0.03417342   -0.00541641    0.01480102   -0.00103520    0.00754315
   24    0.02333941   -0.00398192    0.01009790    0.00028955   -0.00541180   -0.00221492
   25   -0.03140889   -0.00343527   -0.01168525   -0.00684474    0.00902422   -0.00141767
   26   -0.00370293    0.00135652   -0.00447627   -0.00196898   -0.07244075   -0.00213892
   27   -0.00064850   -0.00094310   -0.00240516   -0.00209921    0.00785954   -0.00039213
   28    0.00040785    0.00167625   -0.00072504    0.00060692   -0.00103849    0.00194799
   29    0.00155588   -0.00126452    0.01462993    0.00502072    0.00176682    0.00151701
   30   -0.00416668    0.00073517   -0.00303512    0.01565732    0.04343970    0.00416085
   31   -0.00032308   -0.00662154    0.02274369   -0.05825994    0.01287310   -0.01110535
   32    0.00171041   -0.01441449   -0.00506656    0.01828183   -0.00060238    0.03531902
   33    0.00000000   -0.00193871    0.12408580    0.03775228    0.03343689   -0.00200125
   34    0.00193871    0.00000000    0.00463574    0.00969088   -0.00674865    0.00311049
   35   -0.12408580   -0.00463574    0.00000000    0.01038704   -0.09549565    0.00237297
   36   -0.03775228   -0.00969088   -0.01038704    0.00000000   -0.04528681    0.00094196
   37   -0.03343689    0.00674865    0.09549565    0.04528681    0.00000000    0.00585489
   38    0.00200125   -0.00311049   -0.00237297   -0.00094196   -0.00585489    0.00000000

 Expectation values <i|LZ|i>

 STATE:         1           2           3           4           5           6           7           8
 VALUE:      0.020917    0.000660   -0.003061   -0.018421    1.142765    0.152608   -0.077187   -1.216006

 STATE:         9          10          11          12          13          14          15          16
 VALUE:     -0.702890    0.395087    0.951267   -0.507412    0.250624   -0.390416    0.166265   -0.164808

 STATE:        17          18          19          20          21          22          23          24
 VALUE:     -0.701866   -0.081851    0.284092    0.499631   -0.127359    0.125132   -0.471447    1.258355

 STATE:        25          26          27          28          29          30          31          32
 VALUE:      0.970918   -1.758448    0.403269   -0.785403    0.784552   -1.104658   -0.128405    0.830335

 STATE:        33          34          35          36          37          38
 VALUE:      0.549150   -0.528023    0.280954    0.007055   -1.002098    0.696122


 Transition matrix elements <i|LZ|1>

                            1           2           3           4           5           6           7           8
 REAL PART  (a.u.):      0.020917    0.012565    0.010651   -0.022037    0.107079   -0.051791   -0.043194    0.077206
 IMAG PART  (a.u.):      0.000000   -0.001873    0.011873    0.006787   -0.008613   -0.021180    0.003721   -0.011638
 ABS. VALUE (a.u.):      0.020917    0.012703    0.015950    0.023058    0.107425    0.055954    0.043354    0.078078
                            9          10          11          12          13          14          15          16
 REAL PART  (a.u.):      0.001974   -0.009667    0.003125    0.005050   -0.006819   -0.003369   -0.015628    0.031209
 IMAG PART  (a.u.):     -0.007594    0.012379   -0.008533   -0.008433    0.002351    0.008366   -0.013132   -0.000120
 ABS. VALUE (a.u.):      0.007846    0.015706    0.009087    0.009829    0.007213    0.009018    0.020413    0.031209
                           17          18          19          20          21          22          23          24
 REAL PART  (a.u.):      0.013680   -0.050793    0.062456    0.082764   -0.000318   -0.000624   -0.000356   -0.001346
 IMAG PART  (a.u.):      0.014208   -0.018837   -0.007922   -0.004372   -0.000128   -0.000956   -0.000007   -0.000040
 ABS. VALUE (a.u.):      0.019723    0.054174    0.062956    0.082880    0.000343    0.001141    0.000356    0.001347
                           25          26          27          28          29          30          31          32
 REAL PART  (a.u.):     -0.001519    0.000674    0.000060   -0.000014   -0.000012    0.000098    0.000034   -0.000248
 IMAG PART  (a.u.):      0.000034    0.000782   -0.000078   -0.000003   -0.000011    0.000057    0.000047    0.000075
 ABS. VALUE (a.u.):      0.001519    0.001032    0.000098    0.000014    0.000016    0.000113    0.000058    0.000259
                           33          34          35          36          37          38
 REAL PART  (a.u.):      0.001190    0.000986    0.000346   -0.006491   -0.000187    0.010012
 IMAG PART  (a.u.):     -0.002647    0.000515    0.001162    0.000047    0.006095   -0.000015
 ABS. VALUE (a.u.):      0.002902    0.001113    0.001212    0.006491    0.006098    0.010012


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1700(1)
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    OPER   
                                         1380     1700(2)
                                         JKOP     OPER   

              2       6     9486.25       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *   1387645.091358865.11  28641.44    113.67     15.26      9.22
 REAL TIME  *   1399812.78 SEC
 DISK USED  *         9.35 GB (local),      300.39 GB (total)
 SF USED    *        89.95 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -239.990705882179

              CI              CI           MULTI
   -239.91229307   -240.18091418   -239.02437773
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
