
 Working directory              : /wrk/irikura/molpro.ktvqv5Hy1s/
 Global scratch directory       : /wrk/irikura/molpro.ktvqv5Hy1s/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ktvqv5Hy1s/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
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
 NQ=1
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 23-Jan-25          TIME: 16:33:12  
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

     Node minimum: 13.369 MB, node maximum: 34.603 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   14108412.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   14108412      RECORD LENGTH: 524288

 Memory used in sort:      14.67 MW

 SORT1 READ   646821870. AND WROTE     2419159. INTEGRALS IN      7 RECORDS. CPU TIME:     4.51 SEC, REAL TIME:     4.64 SEC
 SORT2 READ    68065344. AND WROTE   395255076. INTEGRALS IN   2548 RECORDS. CPU TIME:     0.28 SEC, REAL TIME:     0.33 SEC

 Node minimum:    14103376.  Node maximum:    14140936. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.58      9.40
 REAL TIME  *        10.97 SEC
 DISK USED  *        31.11 MB (local),        2.23 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     265 (  128  137)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:              20   (20 determinants, 20 intermediate states)

 State symmetry 2

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              70   (90 determinants, 90 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.148D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.148D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.180D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.577D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.498D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 5 3 4 6 1 1 5 3   2 4 6 1 4 6 3 5 2 1   4 6 3 5 212 8131014   715 911 4 6 5 3 2 1
                                        4 6 2 3 5 911 7 812  14151013 1 9 711 812  13101415 2 4 6 5 3 1   9 711 81214151310 2
                                        4 6 5 3252817272123  26241918202216 7 911   81214151310 1 2 5 4   3 6 9 711 812141513
                                       10 1 5 3 4 6 2 1 5 3   4 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.109D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.109D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.801D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.801D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.429D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.425D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.591D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 1 2 3 1   2 3 4 5 6 7 9 810 1   2 3 7 9 810 4 5 6 1   2 3 6 810 7 9 4 5 6
                                        810 7 9 4 5 1 2 319  21171416151311121820  10 8 6 4 5 7 9191116  2114131215172018 1 2
                                        310 8 6 4 5 7 91911  12211314161517182010   8 4 6 5 7 9 3 1 210   4 8 6 5 7 919111221
                                       13141615172018 1 3 2   6 4 8 510 7 9 1 2 3   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  2147  ( 18 closed/active, 1307 closed/virtual, 0 active/active, 822 active/virtual )
 Total number of variables:    2887
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9   16    0   -213.52136075    -213.53079339   -0.00943263    0.06752780 0.00037795 0.00000000  0.17E+01      3.11
   2    7   12    0   -213.53108556    -213.53116817   -0.00008261    0.00380955 0.00000883 0.00000000  0.20E+00      6.14
   3    5   10    0   -213.53116820    -213.53116820   -0.00000000    0.00000312 0.00000000 0.00000000  0.20E-03      8.86

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.10E-08)
                       Final energy:   -213.53116820
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.592036154144
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.98894073
 One electron energy                          -372.87938385
 Two electron energy                           159.28734769
 Virial ratio                                    4.09603299
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.536875393470
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92167817
 One electron energy                          -372.62652154
 Two electron energy                           159.08964614
 Virial ratio                                    4.09825415
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.536875393470
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92167817
 One electron energy                          -372.62652154
 Two electron energy                           159.08964614
 Virial ratio                                    4.09825415
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.536875393450
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92167817
 One electron energy                          -372.62652154
 Two electron energy                           159.08964614
 Virial ratio                                    4.09825415
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.536875393441
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92167817
 One electron energy                          -372.62652154
 Two electron energy                           159.08964614
 Virial ratio                                    4.09825415
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.536875393436
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92167817
 One electron energy                          -372.62652154
 Two electron energy                           159.08964614
 Virial ratio                                    4.09825415
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.501366892177
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.88118346
 One electron energy                          -372.46534831
 Two electron energy                           158.96398141
 Virial ratio                                    4.09956009
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.501366892130
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.88118346
 One electron energy                          -372.46534831
 Two electron energy                           158.96398141
 Virial ratio                                    4.09956009
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.501366892108
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.88118346
 One electron energy                          -372.46534831
 Two electron energy                           158.96398142
 Virial ratio                                    4.09956009
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.542576202545
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999959246
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000021738
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.999999981049
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.457424256286
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999999999
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999971
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.914855610914
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     3.999999992301
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000001146
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000000023
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.085144582498
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000000000029
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999999405
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.542568186541
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000048453
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999999977116
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000018928
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     2.457431161216
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999972
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000000624
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 3 5   6 2 4 1 4 3 5 6 2 1   6 4 3 5 213101415 8  12 9 711 6 4 3 5 2 1
                                        4 6 2 5 3 911 712 8  14151013 1 9 711 812  13101415 2 4 6 5 3 1   9 711 81214151310 2
                                        4 6 5 3282517212723  26241920182216 7 911   81214151310 1 5 2 3   6 411 9 71514 81213
                                       10 1 5 3 6 4 2 1 5 3   6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 3 1 2 2   3 1 2 3 1 5 9 7 6 4   810 9 7 810 4 5 6 3   2 1 610 8 9 7 4 5 6
                                       10 8 9 7 4 5 3 2 111  15171921131416182012  10 8 6 4 5 7 9111921  1314161215172018 2 1
                                        310 8 6 4 5 7 91911  122113161415171820 8  10 4 5 6 7 9 3 1 2 8  10 5 4 6 7 919121113
                                       21141615171820 3 2 1   6 5 4 810 7 9 3 2 1   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.69411     1  1  s    1.00015
    2.1     2.00000    -1.32239     1  1  d0   1.00047
    3.1     2.00000    -1.32239     1  1  d1+  1.00047
    4.1     2.00000    -1.32239     1  1  d1-  1.00047
    5.1     2.00000    -1.32239     1  1  d2-  1.00047
    6.1     2.00000    -1.32239     1  1  d2+  1.00047
    7.1     2.00000    -0.68796     1  1  s   -0.41784    1  5  s    0.60038    1  6  s    0.46238
    1.2     2.00000    -4.27034     1  1  pz   0.99974
    2.2     2.00000    -4.27034     1  1  py   0.99974
    3.2     2.00000    -4.27034     1  1  px   0.99974
    4.2     0.99668    -0.14243     1  1  py  -0.27049    1  5  py   0.43702    1  6  py   0.38308
    5.2     0.99668    -0.14243     1  1  px  -0.27049    1  5  px   0.43702    1  6  px   0.38308
    6.2     0.99668    -0.14243     1  1  pz  -0.27049    1  5  pz   0.43702    1  6  pz   0.38308
    7.2     0.00332     0.35042     1  1  pz   0.27127    1  4  pz  -0.81003    1  5  pz  -0.71737    1  6  pz   0.85381
                                    1  7  pz   0.43447
    8.2     0.00332     0.35042     1  1  px   0.27127    1  4  px  -0.81003    1  5  px  -0.71737    1  6  px   0.85381
                                    1  7  px   0.43447
    9.2     0.00332     0.35042     1  1  py   0.27127    1  4  py  -0.81003    1  5  py  -0.71737    1  6  py   0.85381
                                    1  7  py   0.43447
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 aaa000         0.99827016
 
 Energy:     -213.59203615
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 baa000        -0.11885426      0.00000016     -0.00000018     -0.00000150      0.80592498     -0.00000000     -0.00000000
 aba000         0.75737863     -0.00000006      0.00000007      0.00000056     -0.30003168      0.00000000      0.00000000
 a20000        -0.00000000      0.70550057      0.00000346     -0.00000063     -0.00000014      0.70438078     -0.00000376
 a02000         0.00000000     -0.70550057     -0.00000346      0.00000063      0.00000014      0.70438078     -0.00000376
 02a000        -0.00000000      0.00000346     -0.70550057      0.00006005     -0.00000015      0.00000376      0.70438078
 0a2000        -0.00000000     -0.00000063     -0.00006005     -0.70550057     -0.00000131      0.00000061      0.00000381
 2a0000        -0.00000000      0.00000063      0.00006005      0.70550057      0.00000131      0.00000061      0.00000381
 20a000         0.00000000     -0.00000346      0.70550057     -0.00006005      0.00000015      0.00000376      0.70438078
 aab000        -0.63852437     -0.00000010      0.00000011      0.00000094     -0.50589330     -0.00000000     -0.00000000
 
 Energy:     -213.53687539   -213.53687539   -213.53687539   -213.53687539   -213.53687539   -213.50136689   -213.50136689

 State:              8
 baa000         0.00000000
 aba000        -0.00000000
 a20000        -0.00000061
 a02000        -0.00000061
 02a000        -0.00000381
 0a2000         0.70438078
 2a0000         0.70438078
 20a000        -0.00000381
 aab000        -0.00000000
 
 Energy:     -213.50136689
 


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
 CPU TIMES  *        19.06      9.47      9.40
 REAL TIME  *        22.47 SEC
 DISK USED  *        95.81 MB (local),        4.00 GB (total)
 SF USED    *       161.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5920362  -0.0
    -213.5368754   6.0
    -213.5368754   6.0
    -213.5368754   6.0
    -213.5368754   6.0
    -213.5368754   6.0
    -213.5013669   2.0
    -213.5013669   2.0
    -213.5013669   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

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
     1      -213.59203615

 Number of blocks in overlap matrix:   163   Smallest eigenvalue:  0.53D+00
 Number of N-2 electron functions:     226
 Number of N-1 electron functions:   22565

 Number of internal configurations:                10436
 Number of singly external configurations:       2999425
 Number of doubly external configurations:       3967716
 Total number of contracted configurations:      6977577
 Total number of uncontracted configurations:  248483850

 Diagonal Coupling coefficients finished.               Storage:   3418324 words, CPU-Time:      0.09 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3049191 words, CPU-time:      1.12 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59203615    -0.00000000    -1.00161752  0.55D-01  0.11D+00     1.79
    2     1     1     1.10293597    -0.79432377  -214.38635992    -0.79432377    -0.02843749  0.37D-02  0.21D-02    10.06
    3     1     1     1.08849581    -0.82058704  -214.41262319    -0.02626327    -0.00031393  0.39D-04  0.29D-04    18.28
    4     1     1     1.08791660    -0.82090112  -214.41293727    -0.00031408    -0.00000685  0.15D-05  0.44D-06    26.40
    5     1     1     1.08791273    -0.82090828  -214.41294444    -0.00000716    -0.00000020  0.28D-07  0.17D-07    34.57
    6     1     1     1.08791904    -0.82090849  -214.41294464    -0.00000021    -0.00000000  0.69D-09  0.44D-09    42.73


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   2.0%  21.6%
 P   0.9%  26.7%   7.5%

 Initialization:   3.3%
 Other:           36.1%

 Total CPU:       42.7 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9558612


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95787241 (fixed)   0.95801396 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00181631   -0.00547087   -0.00638766
 Singles      0.01979843   -0.09084823   -0.09826977
 Pairs        0.06828030   -0.72458940   -0.71625105
 Total        1.08989504   -0.82090850   -0.82090849
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59203615
 Nuclear energy                         0.00000000
 Kinetic energy                        69.51143572
 One electron energy                 -372.42862234
 Two electron energy                  158.01567770
 Virial quotient                       -3.08457080
 Correlation energy                    -0.82090849
 !MRCI STATE 1.2 Energy              -214.412944644151

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.48674024 (Davidson, fixed reference)
 Cluster corrected energies          -214.48647586 (Davidson, relaxed reference)

 Cluster corrected energies          -214.48444685 (Pople, fixed reference)
 Cluster corrected energies          -214.48417138 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       57.30       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        62.48     43.40      9.47      9.40
 REAL TIME  *        69.17 SEC
 DISK USED  *       151.61 MB (local),        5.52 GB (total)
 SF USED    *       881.58 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.48647586  AU                              


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
     1      -213.53687539
     2      -213.53687539
     3      -213.53687539
     4      -213.53687539
     5      -213.53687539
     6      -213.50136689
     7      -213.50136689
     8      -213.50136689

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1663D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1566D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1329D-06

 Number of blocks in overlap matrix:   886   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    1432
 Number of N-1 electron functions:   28036

 Number of internal configurations:                14896
 Number of singly external configurations:       3728792
 Number of doubly external configurations:      25148963
 Total number of contracted configurations:     28892651
 Total number of uncontracted configurations:  386701194

 Diagonal Coupling coefficients finished.               Storage:   7770309 words, CPU-Time:      2.11 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3550359 words, CPU-time:      7.38 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.53687539    -0.00000000    -1.00695193  0.62D-01  0.11D+00    13.24
    1     2     2     1.00000000     0.00000000  -213.53687539     0.00000000    -1.00600419  0.62D-01  0.11D+00    13.24
    1     3     3     1.00000000     0.00000000  -213.53687539    -0.00000000    -1.00396432  0.61D-01  0.11D+00    13.24
    1     4     4     1.00000000     0.00000000  -213.53687539    -0.00000000    -1.00460649  0.61D-01  0.11D+00    13.24
    1     5     5     1.00000000     0.00000000  -213.53687539    -0.00000000    -1.00489125  0.61D-01  0.11D+00    13.24
    1     6     6     1.00000000     0.00000000  -213.50136689    -0.00000000    -1.00232431  0.49D-01  0.12D+00    13.24
    1     7     7     1.00000000     0.00000000  -213.50136689     0.00000000    -1.00074467  0.49D-01  0.12D+00    13.24
    1     8     8     1.00000000     0.00000000  -213.50136689    -0.00000000    -1.00270489  0.49D-01  0.12D+00    13.24
    2     1     1     1.10698725    -0.80295721  -214.33983260    -0.80295721    -0.02784142  0.41D-02  0.18D-02   331.50
    2     2     2     1.10727480    -0.80275700  -214.33963240    -0.80275700    -0.02807282  0.41D-02  0.19D-02   331.50
    2     3     3     1.10718672    -0.80271642  -214.33959181    -0.80271642    -0.02811457  0.41D-02  0.19D-02   331.50
    2     4     4     1.10723636    -0.80251009  -214.33938548    -0.80251009    -0.02839963  0.41D-02  0.19D-02   331.50
    2     5     5     1.10759296    -0.80212990  -214.33900530    -0.80212990    -0.02883619  0.42D-02  0.20D-02   331.50
    2     6     6     1.10353410    -0.80653877  -214.30790566    -0.80653877    -0.02763449  0.38D-02  0.20D-02   331.50
    2     7     7     1.10362999    -0.80630859  -214.30767548    -0.80630859    -0.02794580  0.37D-02  0.20D-02   331.50
    2     8     8     1.10463345    -0.80593215  -214.30729904    -0.80593215    -0.02828183  0.37D-02  0.22D-02   331.50
    3     1     1     1.09259065    -0.82871942  -214.36559482    -0.02576222    -0.00036786  0.54D-04  0.32D-04   649.24
    3     2     2     1.09261859    -0.82871737  -214.36559276    -0.02596037    -0.00037106  0.53D-04  0.33D-04   649.24
    3     3     3     1.09259632    -0.82871519  -214.36559058    -0.02599877    -0.00037223  0.54D-04  0.33D-04   649.24
    3     4     4     1.09260744    -0.82871446  -214.36558985    -0.02620437    -0.00037385  0.54D-04  0.34D-04   649.24
    3     5     5     1.09263018    -0.82870826  -214.36558365    -0.02657835    -0.00038085  0.55D-04  0.35D-04   649.24
    3     6     6     1.09120676    -0.83197297  -214.33333986    -0.02543420    -0.00034239  0.36D-04  0.35D-04   649.24
    3     7     7     1.09123934    -0.83196787  -214.33333477    -0.02565928    -0.00034840  0.36D-04  0.36D-04   649.24
    3     8     8     1.09134345    -0.83195803  -214.33332492    -0.02602588    -0.00035811  0.38D-04  0.38D-04   649.24
    4     1     1     1.09186659    -0.82908930  -214.36596470    -0.00036988    -0.00001172  0.26D-05  0.97D-06   967.22
    4     2     2     1.09186519    -0.82908930  -214.36596469    -0.00037192    -0.00001165  0.25D-05  0.98D-06   967.22
    4     3     3     1.09186002    -0.82908929  -214.36596468    -0.00037410    -0.00001171  0.26D-05  0.96D-06   967.22
    4     4     4     1.09185537    -0.82908915  -214.36596454    -0.00037469    -0.00001174  0.25D-05  0.98D-06   967.22
    4     5     5     1.09185618    -0.82908899  -214.36596438    -0.00038073    -0.00001184  0.26D-05  0.98D-06   967.22
    4     6     6     1.09074996    -0.83231122  -214.33367811    -0.00033825    -0.00000897  0.18D-05  0.82D-06   967.22
    4     7     7     1.09075531    -0.83231118  -214.33367807    -0.00034330    -0.00000914  0.18D-05  0.84D-06   967.22
    4     8     8     1.09078226    -0.83231087  -214.33367777    -0.00035285    -0.00000933  0.17D-05  0.94D-06   967.22
    5     1     1     1.09180910    -0.82910204  -214.36597743    -0.00001274    -0.00000044  0.58D-07  0.53D-07  1285.51
    5     2     2     1.09180925    -0.82910204  -214.36597743    -0.00001274    -0.00000044  0.58D-07  0.53D-07  1285.51
    5     3     3     1.09181160    -0.82910193  -214.36597733    -0.00001265    -0.00000042  0.57D-07  0.48D-07  1285.51
    5     4     4     1.09180960    -0.82910193  -214.36597732    -0.00001278    -0.00000043  0.56D-07  0.50D-07  1285.51
    5     5     5     1.09180955    -0.82910187  -214.36597726    -0.00001287    -0.00000043  0.58D-07  0.50D-07  1285.51
    5     6     6     1.09077258    -0.83232098  -214.33368787    -0.00000976    -0.00000030  0.39D-07  0.37D-07  1285.51
    5     7     7     1.09077249    -0.83232084  -214.33368773    -0.00000967    -0.00000028  0.37D-07  0.34D-07  1285.51
    5     8     8     1.09077808    -0.83232084  -214.33368773    -0.00000996    -0.00000029  0.40D-07  0.34D-07  1285.51
    6     1     1     1.09180057    -0.82910251  -214.36597790    -0.00000047    -0.00000001  0.17D-08  0.20D-08  1603.01
    6     2     2     1.09180064    -0.82910251  -214.36597790    -0.00000047    -0.00000001  0.17D-08  0.20D-08  1603.01
    6     3     3     1.09180084    -0.82910239  -214.36597778    -0.00000045    -0.00000001  0.16D-08  0.19D-08  1603.01
    6     4     4     1.09180134    -0.82910238  -214.36597778    -0.00000046    -0.00000001  0.16D-08  0.17D-08  1603.01
    6     5     5     1.09180110    -0.82910233  -214.36597772    -0.00000046    -0.00000001  0.17D-08  0.18D-08  1603.01
    6     6     6     1.09077592    -0.83232130  -214.33368819    -0.00000032    -0.00000001  0.11D-08  0.13D-08  1603.01
    6     7     7     1.09077695    -0.83232115  -214.33368804    -0.00000031    -0.00000001  0.10D-08  0.12D-08  1603.01
    6     8     8     1.09077594    -0.83232115  -214.33368804    -0.00000031    -0.00000001  0.10D-08  0.13D-08  1603.01


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   4.8%
 P   0.5%  19.9%  25.7%

 Initialization:   0.6%
 Other:           47.7%

 Total CPU:     1603.0 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.0000044   0.8447368   0.0000031  -0.0000000   0.4433515   0.0000000   0.0000000   0.0000000
 2222222222/\/000           0.0000132  -0.4433520  -0.0000551   0.0000001   0.8447362  -0.0000000  -0.0000000   0.0000000
 2222222222/20000          -0.6745897  -0.0000016   0.0000001   0.0000236   0.0000097   0.6733980  -0.0000504   0.0000002
 2222222222/02000           0.6745888   0.0000016  -0.0000001  -0.0000236  -0.0000097   0.6733988  -0.0000504   0.0000002
 22222222220/2000           0.0000236   0.0000000   0.0015489   0.6745878   0.0000000   0.0000504   0.6733930  -0.0023981
 222222222202/000           0.0000000  -0.0000201   0.6745872  -0.0015489   0.0000335  -0.0000000   0.0023981   0.6733938
 222222222220/000          -0.0000000   0.0000201  -0.6745871   0.0015489  -0.0000335  -0.0000000   0.0023981   0.6733940
 22222222222/0000          -0.0000236  -0.0000000  -0.0015489  -0.6745861   0.0000000   0.0000504   0.6733942  -0.0023981

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000005    0.955938    0.000000    0.000033    0.000013   -0.000001   -0.000000    0.000000
 2           0.940081    0.000002   -0.000028    0.000000    0.173392   -0.000000   -0.000000   -0.000000
 3           0.000037   -0.000000    0.955935    0.002195   -0.000042    0.000000    0.000000    0.000000
 4          -0.000000   -0.000033   -0.002195    0.955935    0.000000    0.000000    0.000000    0.000001
 5          -0.173392   -0.000014    0.000047   -0.000000    0.940081    0.000000   -0.000000    0.000000
 6           0.000000    0.000001   -0.000000   -0.000000    0.000000    0.955365   -0.000000    0.000072
 7           0.000000    0.000000   -0.000000   -0.000001   -0.000000   -0.000072    0.003402    0.955359
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.955359   -0.003402

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955938   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.955938   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.955938   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.955938    0.000000    0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.955938    0.000000    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.955365    0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.955365    0.000000
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.955365


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95593785 (fixed)   0.95608581 (relaxed)   0.95593785 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229916   -0.00665927   -0.67163165
 Singles      0.02239037   -0.09603498   -0.10472695
 Pairs        0.06962127   -0.00000000   -0.05274390
 Total        1.09431080   -0.10269425   -0.82910251
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53687539
 Nuclear energy                         0.00000000
 Kinetic energy                        69.47648956
 One electron energy                 -372.22973074
 Two electron energy                  157.86375283
 Virial quotient                       -3.08544630
 Correlation energy                    -0.82910251
 !MRCI STATE 1.2 Energy              -214.365977904989

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44417122 (Davidson, fixed reference)
 Cluster corrected energies          -214.44389043 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44417122 (Davidson, rotated reference)

 Cluster corrected energies          -214.44294016 (Pople, fixed reference)
 Cluster corrected energies          -214.44264128 (Pople, relaxed reference)
 Cluster corrected energies          -214.44294016 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.94008112 (fixed)   0.95608578 (relaxed)   0.95593783 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229914   -0.00665927   -0.67163166
 Singles      0.02239035   -0.09603493   -0.10472693
 Pairs        0.06962135    0.00000000   -0.05274392
 Total        1.09431083   -0.10269420   -0.82910251
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53687539
 Nuclear energy                         0.00000000
 Kinetic energy                        69.47649831
 One electron energy                 -372.22973626
 Two electron energy                  157.86375836
 Virial quotient                       -3.08544591
 Correlation energy                    -0.82910251
 !MRCI STATE 2.2 Energy              -214.365977904445

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44417125 (Davidson, fixed reference)
 Cluster corrected energies          -214.44389048 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44417125 (Davidson, rotated reference)

 Cluster corrected energies          -214.44294019 (Pople, fixed reference)
 Cluster corrected energies          -214.44264133 (Pople, relaxed reference)
 Cluster corrected energies          -214.44294019 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95593521 (fixed)   0.95608569 (relaxed)   0.95593773 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229917   -0.00665928   -0.67163158
 Singles      0.02239052   -0.09603475   -0.10472687
 Pairs        0.06962138   -0.00000000   -0.05274393
 Total        1.09431108   -0.10269403   -0.82910239
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53687539
 Nuclear energy                         0.00000000
 Kinetic energy                        69.47649225
 One electron energy                 -372.22973831
 Two electron energy                  157.86376053
 Virial quotient                       -3.08544618
 Correlation energy                    -0.82910239
 !MRCI STATE 3.2 Energy              -214.365977779437

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44417132 (Davidson, fixed reference)
 Cluster corrected energies          -214.44389052 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44417132 (Davidson, rotated reference)

 Cluster corrected energies          -214.44294027 (Pople, fixed reference)
 Cluster corrected energies          -214.44264138 (Pople, relaxed reference)
 Cluster corrected energies          -214.44294027 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.95593500 (fixed)   0.95608547 (relaxed)   0.95593752 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229916   -0.00665928   -0.67163054
 Singles      0.02239056   -0.09603477   -0.10472691
 Pairs        0.06962184   -0.00000078   -0.05274493
 Total        1.09431156   -0.10269483   -0.82910238
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53687539
 Nuclear energy                         0.00000000
 Kinetic energy                        69.47649379
 One electron energy                 -372.22973510
 Two electron energy                  157.86375732
 Virial quotient                       -3.08544611
 Correlation energy                    -0.82910238
 !MRCI STATE 4.2 Energy              -214.365977777932

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44417172 (Davidson, fixed reference)
 Cluster corrected energies          -214.44389093 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44417172 (Davidson, rotated reference)

 Cluster corrected energies          -214.44294069 (Pople, fixed reference)
 Cluster corrected energies          -214.44264182 (Pople, relaxed reference)
 Cluster corrected energies          -214.44294069 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.94008087 (fixed)   0.95608557 (relaxed)   0.95593763 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229913   -0.00665928   -0.67163164
 Singles      0.02239034   -0.09603445   -0.10472665
 Pairs        0.06962182   -0.00000000   -0.05274403
 Total        1.09431129   -0.10269373   -0.82910233
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53687539
 Nuclear energy                         0.00000000
 Kinetic energy                        69.47650619
 One electron energy                 -372.22974123
 Two electron energy                  157.86376351
 Virial quotient                       -3.08544556
 Correlation energy                    -0.82910233
 !MRCI STATE 5.2 Energy              -214.365977719893

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44417143 (Davidson, fixed reference)
 Cluster corrected energies          -214.44389067 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44417143 (Davidson, rotated reference)

 Cluster corrected energies          -214.44294039 (Pople, fixed reference)
 Cluster corrected energies          -214.44264155 (Pople, relaxed reference)
 Cluster corrected energies          -214.44294039 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95536529 (fixed)   0.95550458 (relaxed)   0.95536529 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00444357   -0.01083962   -0.68175631
 Singles      0.01851734   -0.08901714   -0.09531916
 Pairs        0.07266194   -0.00005484   -0.05524582
 Total        1.09562286   -0.09991160   -0.83232130
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50136689
 Nuclear energy                         0.00000000
 Kinetic energy                        69.45583577
 One electron energy                 -372.09701579
 Two electron energy                  157.76332760
 Virial quotient                       -3.08589891
 Correlation energy                    -0.83232130
 !MRCI STATE 6.2 Energy              -214.333688194582

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41327713 (Davidson, fixed reference)
 Cluster corrected energies          -214.41301127 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41327713 (Davidson, rotated reference)

 Cluster corrected energies          -214.41211327 (Pople, fixed reference)
 Cluster corrected energies          -214.41182965 (Pople, relaxed reference)
 Cluster corrected energies          -214.41211327 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95535876 (fixed)   0.95550412 (relaxed)   0.95536482 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00444361   -0.01083963   -0.01327352
 Singles      0.01851725   -0.08901679   -0.09531891
 Pairs        0.07266307   -0.73246008   -0.72372872
 Total        1.09562393   -0.83231650   -0.83232115
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50136689
 Nuclear energy                         0.00000000
 Kinetic energy                        69.45584480
 One electron energy                 -372.09702841
 Two electron energy                  157.76334037
 Virial quotient                       -3.08589851
 Correlation energy                    -0.83232115
 !MRCI STATE 7.2 Energy              -214.333688043157

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41327786 (Davidson, fixed reference)
 Cluster corrected energies          -214.41301199 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41327786 (Davidson, rotated reference)

 Cluster corrected energies          -214.41211406 (Pople, fixed reference)
 Cluster corrected energies          -214.41183042 (Pople, relaxed reference)
 Cluster corrected energies          -214.41211406 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95535923 (fixed)   0.95550458 (relaxed)   0.95536528 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00444356   -0.01083959   -0.68418710
 Singles      0.01851734   -0.08901703   -0.09531907
 Pairs        0.07266197    0.00260845   -0.05281498
 Total        1.09562287   -0.09724818   -0.83232115
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50136689
 Nuclear energy                         0.00000000
 Kinetic energy                        69.45584522
 One electron energy                 -372.09702951
 Two electron energy                  157.76334147
 Virial quotient                       -3.08589849
 Correlation energy                    -0.83232115
 !MRCI STATE 8.2 Energy              -214.333688041630

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41327698 (Davidson, fixed reference)
 Cluster corrected energies          -214.41301111 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41327698 (Davidson, rotated reference)

 Cluster corrected energies          -214.41211311 (Pople, fixed reference)
 Cluster corrected energies          -214.41182948 (Pople, relaxed reference)
 Cluster corrected energies          -214.41211311 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1827.74       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      1786.58   1724.08     43.40      9.47      9.40
 REAL TIME  *      1911.37 SEC
 DISK USED  *         1.88 GB (local),       53.94 GB (total)
 SF USED    *        16.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -214.44417122  AU                              
 SETTING HLSDIAG(3)     =      -214.44417125  AU                              
 SETTING HLSDIAG(4)     =      -214.44417132  AU                              
 SETTING HLSDIAG(5)     =      -214.44417172  AU                              
 SETTING HLSDIAG(6)     =      -214.44417143  AU                              
 SETTING HLSDIAG(7)     =      -214.41327713  AU                              
 SETTING HLSDIAG(8)     =      -214.41327786  AU                              
 SETTING HLSDIAG(9)     =      -214.41327698  AU                              


         HLSDIAG
    -214.4864759
    -214.4441712
    -214.4441713
    -214.4441713
    -214.4441717
    -214.4441714
    -214.4132771
    -214.4132779
    -214.4132770
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -214.412945
 Replaced energies:   -214.486476

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.365978   -214.365978   -214.365978   -214.365978   -214.365978   -214.333688   -214.333688   -214.333688
 Replaced energies:   -214.444171   -214.444171   -214.444171   -214.444172   -214.444171   -214.413277   -214.413278   -214.413277



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.48647586

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00   -6188.52
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01      -0.00      -0.46

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01       0.00      -0.00      -0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00   -3572.94
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.27

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00    9284.79       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00       0.12      51.98      -0.00       0.18

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00    9284.79       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00     -48.30       0.11       0.00       0.00

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00    9284.77       0.00       0.00       0.00
                            0.00       0.01      -0.00      -0.00      -0.12      48.30       0.00       0.00     -92.05     -10.16

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    9284.69       0.00       0.00
                            0.01      -0.00      -0.00      -0.00     -51.98      -0.11      -0.00      -0.00       0.21   -4425.97

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9284.75       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      92.05      -0.21       0.00       0.00

   10   6.2  0.5  0.5   -6188.52       0.00   -3572.94       0.00       0.00       0.00       0.00       0.00       0.00   16065.26
                            0.46       0.00      -0.27      -0.00      -0.18      -0.00      10.16    4425.97      -0.00       0.00

   11   7.2  0.5  0.5       0.46       0.00       0.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         6188.45     -25.45   -3572.90      -0.00   -4425.94      16.11      -0.00      -0.18       8.52    -212.01

   12   8.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -22.04   -7145.84      12.72      -0.00      15.79    4525.26       0.02       0.00    2375.04       0.76

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00     103.87       0.00      -0.00      -4.18      -0.07
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      51.97      -0.12      -0.00      -0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00    -103.87      -0.00       0.00       0.00       0.00    -205.78
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.13      55.56      -0.00       0.19

   15   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      51.98      -0.00      -0.08
                           -0.00       0.00       0.01      -0.00     -51.97      -0.13      -0.00      -0.00      -0.20    4425.97

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00     -51.98      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.01       0.12     -55.56       0.00       0.00     -87.86     -10.16

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       4.18      -0.00       0.00       0.00       0.00   -5106.55
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.20      87.86       0.00       0.02

   18   6.2  0.5 -0.5       0.00   -3572.94       0.00   -6188.52       0.07     205.78       0.08      -0.00    5106.55       0.00
                           -0.00       0.27       0.00      -0.46       0.00      -0.19   -4425.97      10.16      -0.02      -0.00

   19   7.2  0.5 -0.5       0.00       0.27       0.00       0.46      -0.00      -0.15    4425.90     -25.92      -0.16       0.00
                           -0.00    3572.90     -25.45   -6188.45     -15.71   -4319.46       0.07       0.00    2731.47       0.75

   20   8.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.15       0.00     -25.92   -4425.91       0.00       0.02
                           -0.00     -12.72   -7145.84      22.04   -4425.95      15.37       0.00       0.15      -9.66     211.99


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5       0.46      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -6188.45      22.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00   -3572.94       0.27      -0.00
                           25.45    7145.84       0.00       0.00      -0.00      -0.00      -0.00      -0.27   -3572.90      12.72

    3   1.2  1.5 -0.5       0.27      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         3572.90     -12.72      -0.00      -0.00      -0.01       0.00      -0.00      -0.00      25.45    7145.84

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00   -6188.52       0.46      -0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.01       0.00       0.46    6188.45     -22.04

    5   1.2  0.5  0.5       0.00       0.00       0.00    -103.87      -0.00       0.00       4.18       0.07      -0.00      -0.15
                         4425.94     -15.79       0.00      -0.00      51.97      -0.12      -0.00      -0.00      15.71    4425.95

    6   2.2  0.5  0.5       0.00       0.00     103.87      -0.00      -0.00      -0.00      -0.00     205.78      -0.15       0.00
                          -16.11   -4525.26       0.00       0.00       0.13      55.56      -0.00       0.19    4319.46     -15.37

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00     -51.98       0.00       0.08    4425.90     -25.92
                            0.00      -0.02     -51.97      -0.13       0.00      -0.00      -0.20    4425.97      -0.07      -0.00

    8   4.2  0.5  0.5       0.00       0.00      -0.00       0.00      51.98      -0.00       0.00      -0.00     -25.92   -4425.91
                            0.18      -0.00       0.12     -55.56       0.00      -0.00     -87.86     -10.16      -0.00      -0.15

    9   5.2  0.5  0.5       0.00       0.00      -4.18       0.00      -0.00      -0.00       0.00    5106.55      -0.16       0.00
                           -8.52   -2375.04       0.00       0.00       0.20      87.86      -0.00       0.02   -2731.47       9.66

   10   6.2  0.5  0.5       0.00       0.00      -0.07    -205.78      -0.08       0.00   -5106.55       0.00       0.00       0.02
                          212.01      -0.76       0.00      -0.19   -4425.97      10.16      -0.02       0.00      -0.75    -211.99

   11   7.2  0.5  0.5   16065.10       0.00       0.00       0.15   -4425.90      25.92       0.16      -0.00       0.00     212.03
                           -0.00      -0.00     -15.71   -4319.46       0.07       0.00    2731.47       0.75      -0.00       0.02

   12   8.2  0.5  0.5       0.00   16065.30       0.15      -0.00      25.92    4425.91      -0.00      -0.02    -212.03      -0.00
                            0.00       0.00   -4425.95      15.37       0.00       0.15      -9.66     211.99      -0.02      -0.00

   13   1.2  0.5 -0.5       0.00       0.15    9284.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.71    4425.95      -0.00       0.00      -0.12     -51.98       0.00      -0.18   -4425.94      15.79

   14   2.2  0.5 -0.5       0.15      -0.00       0.00    9284.79       0.00       0.00       0.00       0.00       0.00       0.00
                         4319.46     -15.37      -0.00       0.00      48.30      -0.11      -0.00      -0.00      16.11    4525.26

   15   3.2  0.5 -0.5   -4425.90      25.92       0.00       0.00    9284.77       0.00       0.00       0.00       0.00       0.00
                           -0.07      -0.00       0.12     -48.30      -0.00      -0.00      92.05      10.16      -0.00       0.02

   16   4.2  0.5 -0.5      25.92    4425.91       0.00       0.00       0.00    9284.69       0.00       0.00       0.00       0.00
                           -0.00      -0.15      51.98       0.11       0.00       0.00      -0.21    4425.97      -0.18       0.00

   17   5.2  0.5 -0.5       0.16      -0.00       0.00       0.00       0.00       0.00    9284.75       0.00       0.00       0.00
                        -2731.47       9.66      -0.00       0.00     -92.05       0.21      -0.00      -0.00       8.52    2375.04

   18   6.2  0.5 -0.5      -0.00      -0.02       0.00       0.00       0.00       0.00       0.00   16065.26       0.00       0.00
                           -0.75    -211.99       0.18       0.00     -10.16   -4425.97       0.00      -0.00    -212.01       0.76

   19   7.2  0.5 -0.5       0.00    -212.03       0.00       0.00       0.00       0.00       0.00       0.00   16065.10       0.00
                            0.00       0.02    4425.94     -16.11       0.00       0.18      -8.52     212.01       0.00       0.00

   20   8.2  0.5 -0.5     212.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16065.30
                           -0.02       0.00     -15.79   -4525.26      -0.02      -0.00   -2375.04      -0.76      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -214.51026241    -0.02378655    -5220.54      0.00000000        0.00      0.0000
     2  -214.51026241    -0.02378655    -5220.54      0.00000000        0.00      0.0000
     3  -214.51026232    -0.02378646    -5220.53      0.00000009        0.02      0.0000
     4  -214.51026232    -0.02378646    -5220.53      0.00000009        0.02      0.0000
     5  -214.46239408     0.02408178     5285.34      0.04786833    10505.89      1.3026
     6  -214.46239408     0.02408178     5285.34      0.04786833    10505.89      1.3026
     7  -214.46239392     0.02408194     5285.37      0.04786849    10505.92      1.3026
     8  -214.46239392     0.02408194     5285.37      0.04786849    10505.92      1.3026
     9  -214.44369795     0.04277791     9388.67      0.06656446    14609.21      1.8113
    10  -214.44369795     0.04277791     9388.67      0.06656446    14609.21      1.8113
    11  -214.44369772     0.04277814     9388.72      0.06656470    14609.26      1.8113
    12  -214.44369772     0.04277814     9388.72      0.06656470    14609.26      1.8113
    13  -214.44369760     0.04277826     9388.74      0.06656482    14609.29      1.8113
    14  -214.44369760     0.04277826     9388.74      0.06656482    14609.29      1.8113
    15  -214.41520932     0.07126654    15641.20      0.09505310    20861.74      2.5865
    16  -214.41520932     0.07126654    15641.20      0.09505310    20861.74      2.5865
    17  -214.37101280     0.11546306    25341.21      0.13924961    30561.76      3.7892
    18  -214.37101280     0.11546306    25341.21      0.13924961    30561.76      3.7892
    19  -214.37101252     0.11546335    25341.28      0.13924990    30561.82      3.7892
    20  -214.37101252     0.11546335    25341.28      0.13924990    30561.82      3.7892


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.265141631   0.651968053  -0.380832882  -0.123725064  -0.001909871  -0.406784668   0.314438778   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.367549897  -0.154804350  -0.225687736   0.666595660   0.044882632   0.001355116   0.002025683  -0.403779033
                        -0.033195799   0.013498498   0.002743615  -0.008453077   0.311212378  -0.001460281   0.000001131   0.049343666

    3    1.2  1.5 -0.5   0.155391161   0.369045894   0.666649254   0.225704373  -0.001251659  -0.314432174  -0.406782865  -0.002010544
                        -0.000428346   0.000124865  -0.000041460  -0.000132350   0.001549875   0.000048144   0.000071697   0.000247196

    4    1.2  1.5 -1.5   0.649344945  -0.264074869   0.123715020  -0.380801965   0.058126844  -0.000272908  -0.000000000   0.312110116
                        -0.058425036   0.023760228  -0.001576521   0.004852623   0.402610278  -0.001890272   0.000000000  -0.038197133

    5    1.2  0.5  0.5   0.000518064  -0.001659282   0.199767308   0.066956873   0.000127945   0.067776300   0.501095063   0.001714848
                        -0.000093842   0.000033911  -0.000005819  -0.000028615  -0.001313098  -0.000024676  -0.000054355  -0.000210779

    6    2.2  0.5  0.5  -0.006161615   0.003733699   0.066957248  -0.199626275   0.012530085   0.001304908   0.001765205  -0.494281513
                         0.000588342  -0.000238913  -0.000821789   0.002531374   0.086998646  -0.000407700   0.000000985   0.060419744

    7    3.2  0.5  0.5  -0.015192448   0.006178478  -0.000408150   0.001256413  -0.395962479   0.001859168   0.000000107   0.037548198
                        -0.168800035   0.069098015  -0.031959159   0.099163493   0.057149759   0.000805915   0.000440502   0.306965440

    8    4.2  0.5  0.5   0.000131390  -0.000042265   0.000003292   0.000024597   0.002229280   0.000034366   0.000043542   0.000124276
                         0.069898513   0.167823560   0.100750270   0.034536072   0.001874105   0.467852865   0.191850089   0.001007667

    9    5.2  0.5  0.5  -0.194051441   0.079561098  -0.001215945   0.007128893   0.071113380   0.000380817   0.000918648   0.087253122
                         0.017466546  -0.007103090   0.000029864  -0.000090948   0.492853431  -0.002313567   0.000000518  -0.010695881

   10    6.2  0.5  0.5   0.149676017   0.364866244   0.001711709   0.002777814   0.001124183   0.251229427  -0.033982783   0.000495709
                        -0.000109852   0.000016548   0.000014084  -0.000024210  -0.000382155  -0.000019071  -0.000000116  -0.000060911

   11    7.2  0.5  0.5   0.000150683  -0.000081136   0.000005210   0.000046684   0.000928516  -0.000009503   0.000020223   0.000147556
                        -0.073355997  -0.185392743   0.322583383   0.108306011  -0.000585767  -0.096189922   0.234562878   0.001204737

   12    8.2  0.5  0.5   0.016167382  -0.006574114  -0.001336284   0.004116866   0.153453455  -0.000720020   0.000000485   0.024330507
                         0.179275357  -0.074736792  -0.111068969   0.324276699  -0.022129242  -0.000325641  -0.001834171   0.199096463

   13    1.2  0.5 -0.5  -0.001655645  -0.000524389  -0.066951802   0.199751165  -0.009660363  -0.001281340  -0.001727753   0.497390669
                         0.000114919  -0.000047039   0.000824561  -0.002539643  -0.067084311   0.000314265  -0.000000903  -0.060817659

   14    2.2  0.5 -0.5   0.003740087   0.006189548   0.199642324   0.066962284   0.000217054   0.087896340   0.497960595   0.001752012
                        -0.000096638   0.000033812  -0.000012496  -0.000031456  -0.001349775  -0.000030030  -0.000071631  -0.000215410

   15    3.2  0.5 -0.5  -0.000038485   0.000004588   0.000007243  -0.000000889  -0.001063307  -0.000017132   0.000019169  -0.000053405
                        -0.069373682  -0.169482336   0.099171452   0.031961765  -0.001724930  -0.400065469   0.309253372  -0.000437253

   16    4.2  0.5 -0.5  -0.015081325   0.006132978   0.000415468  -0.001280481  -0.463056709   0.002173423  -0.000000948  -0.023262187
                        -0.167144556   0.069629060   0.034533581  -0.100742133   0.066819073   0.001938606   0.001015301  -0.190434580

   17    5.2  0.5 -0.5   0.079877526   0.194835936  -0.007129473  -0.001216227   0.002235409   0.497957443  -0.087906250   0.000911781
                        -0.000055225   0.000006673  -0.000000103  -0.000014368  -0.000707502  -0.000041881  -0.000017407  -0.000112109

   18    6.2  0.5 -0.5   0.363396769  -0.149083659  -0.002777897   0.001711390  -0.035880151  -0.000217595  -0.000499437  -0.033731101
                        -0.032713365   0.013303558   0.000011187  -0.000035894  -0.248654057   0.001167254  -0.000000242   0.004128247

   19    7.2  0.5 -0.5   0.016532854  -0.006723753   0.001333370  -0.004105191   0.095204187  -0.000447077  -0.000000115  -0.028473962
                         0.184654111  -0.073047356   0.108297814  -0.322557261  -0.013735499   0.001002690   0.001213739  -0.232828215

   20    8.2  0.5 -0.5   0.000149750  -0.000036871   0.000015445   0.000079080   0.000425186   0.000025332   0.000035354   0.000223292
                         0.075025227   0.180002879   0.324302831   0.111076979   0.000666099   0.155040851   0.200577600   0.001820529


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000001283   0.000000293   0.000000737  -0.000000354   0.000000542  -0.000000000   0.000001656   0.000000067
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000000586  -0.000002655   0.000000382   0.000000799   0.000000000  -0.000000025  -0.000000031   0.000000622
                         0.000000285  -0.000001251  -0.000000017  -0.000000035  -0.000000000  -0.000000007   0.000000057  -0.000001406

    3    1.2  1.5 -0.5   0.000002935   0.000000652   0.000000799  -0.000000383  -0.000000026  -0.000000000  -0.000001538  -0.000000064
                         0.000000005  -0.000000007   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000005

    4    1.2  1.5 -1.5   0.000000265  -0.000001160   0.000000354   0.000000737  -0.000000000   0.000000525   0.000000027  -0.000000670
                         0.000000125  -0.000000549  -0.000000015  -0.000000032  -0.000000000   0.000000136  -0.000000061   0.000001514

    5    1.2  0.5  0.5  -0.204711313  -0.045020317  -0.184198749   0.087399107   0.717283925   0.000175555  -0.000004451  -0.000000181
                        -0.000383809   0.000701110  -0.000137734   0.000115245  -0.001904718   0.000045550   0.000000000   0.000000004

    6    2.2  0.5  0.5   0.049675358  -0.227191064   0.095304424   0.201472556  -0.000214700   0.673146946   0.000000067  -0.000001438
                         0.024414264  -0.107053471  -0.004236383  -0.008813848   0.000000278   0.175966935  -0.000000131   0.000003249

    7    3.2  0.5  0.5  -0.012064731   0.052901775   0.014614320   0.030409870  -0.000000387   0.006168397  -0.000000171   0.000004247
                         0.024847878  -0.112084125   0.328303811   0.688729548  -0.000136182  -0.023857491  -0.000000066   0.000001881

    8    4.2  0.5  0.5  -0.001300536   0.001834299  -0.000018210   0.000023950  -0.000041338  -0.000008916   0.000000000  -0.000000023
                         0.744488473   0.165289836   0.121365136  -0.057979150  -0.017746968   0.000034617   0.000000270   0.000000000

    9    5.2  0.5  0.5   0.106500631  -0.477107706  -0.239312857  -0.499428394   0.000099166  -0.021331042  -0.000000015   0.000000492
                         0.051306382  -0.224957995   0.010625730   0.022112428  -0.000000268  -0.005627022   0.000000045  -0.000001110

   10    6.2  0.5  0.5  -0.000002494  -0.000000561  -0.000000131   0.000000065   0.000000036  -0.000000000   0.576920723   0.022068067
                        -0.000000003   0.000000003   0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000173111   0.002540521

   11    7.2  0.5  0.5   0.000000004  -0.000000008  -0.000000001   0.000000000   0.000000002   0.000000000   0.000097587  -0.000662094
                        -0.000001159  -0.000000245   0.000000920  -0.000000447   0.000000709  -0.000000001   0.576900351   0.022900411

   12    8.2  0.5  0.5   0.000000222  -0.000000974  -0.000000021  -0.000000044   0.000000000   0.000000068  -0.021208089   0.527476927
                        -0.000000451   0.000002070  -0.000000476  -0.000000986  -0.000000003  -0.000000259  -0.008664322   0.233609377

   13    1.2  0.5 -0.5  -0.040390110   0.185185805  -0.087311001  -0.184017644  -0.000181368   0.693981891  -0.000000076   0.000001802
                        -0.019898732   0.087253002   0.003925082   0.008167289   0.000000165   0.181353221   0.000000164  -0.000004071

   14    2.2  0.5 -0.5  -0.251149380  -0.055344765  -0.201665253   0.095398501  -0.695764003  -0.000207798  -0.000003553  -0.000000147
                        -0.000462664   0.000808989  -0.000022775   0.000077797   0.001904034  -0.000054001   0.000000000   0.000000009

   15    3.2  0.5 -0.5  -0.000149422   0.000271425  -0.000357512   0.000288840  -0.000001476  -0.000034456  -0.000000001   0.000000009
                         0.123941223   0.027620665   0.689400481  -0.328628799  -0.024642017   0.000131752  -0.000004645  -0.000000183

   16    4.2  0.5 -0.5   0.072388561  -0.317405444  -0.002551384  -0.005308804  -0.000000031  -0.004481420  -0.000000010   0.000000247
                        -0.148606833   0.673437868  -0.057922991  -0.121248971   0.000035747   0.017171880   0.000000021   0.000000109

   17    5.2  0.5 -0.5  -0.527481898  -0.118212067   0.499917571  -0.239548567   0.022060479   0.000095943   0.000001214   0.000000047
                        -0.000842672   0.000797919   0.000320071  -0.000183381  -0.000109604   0.000025077  -0.000000000   0.000000005

   18    6.2  0.5 -0.5  -0.000000506   0.000002255  -0.000000065  -0.000000131   0.000000000   0.000000034   0.006608257  -0.233650273
                        -0.000000243   0.000001064   0.000000003   0.000000005  -0.000000000   0.000000010  -0.021208130   0.527489432

   19    7.2  0.5 -0.5  -0.000000112   0.000000493  -0.000000020  -0.000000041  -0.000000000   0.000000179  -0.021209020   0.527501369
                         0.000000218  -0.000001049  -0.000000446  -0.000000919  -0.000000001  -0.000000686  -0.008662833   0.233572965

   20    8.2  0.5 -0.5   0.000000005  -0.000000008   0.000000001  -0.000000000  -0.000000001  -0.000000001  -0.000140776   0.000660356
                        -0.000002288  -0.000000503  -0.000000987   0.000000476  -0.000000268   0.000000003  -0.576892737  -0.022900162


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5   0.263295267  -0.031191054  -0.098229799  -0.000682381
                         0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.007051894   0.071227845  -0.004267558   0.079517325
                         0.007915153   0.066810627  -0.001755460   0.252889483

    3    1.2  1.5 -0.5  -0.097657853   0.010559311  -0.265096382  -0.002955499
                        -0.000098198  -0.000937979   0.000059245  -0.003543828

    4    1.2  1.5 -1.5  -0.022728064  -0.191856024  -0.000204830   0.029485586
                        -0.021361577  -0.180321001  -0.000650914   0.093700020

    5    1.2  0.5  0.5  -0.241715372   0.027659800  -0.201742641  -0.002480645
                        -0.000092940  -0.000905904   0.000046478  -0.003433771

    6    2.2  0.5  0.5  -0.018787843  -0.170171900   0.004117404  -0.063395384
                        -0.018933340  -0.159819273   0.001399481  -0.201643896

    7    3.2  0.5  0.5  -0.023881424  -0.201591927  -0.000727764   0.104755916
                         0.025527181   0.214447939  -0.000486424  -0.032963982

    8    4.2  0.5  0.5   0.000158357   0.001369989  -0.000048629   0.003190438
                         0.052564668  -0.007703797  -0.311551575  -0.003166910

    9    5.2  0.5  0.5   0.018836214   0.152895280   0.002422675  -0.070491544
                         0.017034084   0.143793169   0.001556306  -0.224130536

   10    6.2  0.5  0.5  -0.423646386   0.051380324   0.514486563   0.004890471
                         0.000165081   0.001103062  -0.000061629   0.004189259

   11    7.2  0.5  0.5  -0.000017722  -0.000550110   0.000016735  -0.002060306
                         0.654454069  -0.076942685   0.112282950   0.001426720

   12    8.2  0.5  0.5   0.018713489   0.157959206  -0.004150325   0.597889920
                        -0.019003198  -0.168126651   0.009689525  -0.188000338

   13    1.2  0.5 -0.5   0.019534517   0.176194999  -0.004020039   0.060512644
                         0.019603262   0.165474023  -0.001335539   0.192453410

   14    2.2  0.5 -0.5  -0.233453780   0.026656915  -0.211374625  -0.002570864
                        -0.000088407  -0.000929119   0.000055376  -0.003507452

   15    3.2  0.5 -0.5  -0.000027188  -0.000080867   0.000000649   0.000682446
                        -0.294325029   0.034956442   0.109819971   0.000548194

   16    4.2  0.5 -0.5  -0.004277767  -0.036114950  -0.002063198   0.297199249
                         0.006551799   0.038193976   0.003993924  -0.093471881

   17    5.2  0.5 -0.5   0.209889108  -0.025391433  -0.234954365  -0.002211752
                        -0.000065917  -0.000487944   0.000036252  -0.001843800

   18    6.2  0.5 -0.5   0.038194875   0.308586419   0.005464045  -0.154374366
                         0.034384676   0.290259727   0.003407464  -0.490779974

   19    7.2  0.5 -0.5  -0.053095994  -0.448198004   0.000742487  -0.107110146
                         0.055689270   0.476894830  -0.002393554   0.033687949

   20    8.2  0.5 -0.5  -0.000043073  -0.000621431   0.000137423  -0.007996900
                         0.230689574  -0.026663271   0.626750720   0.006867436


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   7.030%  42.506%  14.503%   1.531%   0.000%  16.547%   9.887%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5  13.619%   2.415%   5.094%  44.442%   9.887%   0.000%   0.000%  16.547%   0.000%   0.000%
    3    1.2  1.5 -0.5   2.415%  13.619%  44.442%   5.094%   0.000%   9.887%  16.547%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5  42.506%   7.030%   1.531%  14.503%  16.547%   0.000%   0.000%   9.887%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   3.991%   0.448%   0.000%   0.459%  25.110%   0.000%   4.191%   0.203%
    6    2.2  0.5  0.5   0.004%   0.001%   0.448%   3.986%   0.773%   0.000%   0.000%  24.796%   0.306%   6.308%
    7    3.2  0.5  0.5   2.872%   0.481%   0.102%   0.983%  16.005%   0.000%   0.000%   9.564%   0.076%   1.536%
    8    4.2  0.5  0.5   0.489%   2.816%   1.015%   0.119%   0.001%  21.889%   3.681%   0.000%  55.426%   2.732%
    9    5.2  0.5  0.5   3.796%   0.638%   0.000%   0.005%  24.796%   0.001%   0.000%   0.773%   1.397%  27.824%
   10    6.2  0.5  0.5   2.240%  13.313%   0.000%   0.001%   0.000%   6.312%   0.115%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.538%   3.437%  10.406%   1.173%   0.000%   0.925%   5.502%   0.000%   0.000%   0.000%
   12    8.2  0.5  0.5   3.240%   0.563%   1.234%  10.517%   2.404%   0.000%   0.000%   4.023%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.448%   3.991%   0.459%   0.000%   0.000%  25.110%   0.203%   4.191%
   14    2.2  0.5 -0.5   0.001%   0.004%   3.986%   0.448%   0.000%   0.773%  24.796%   0.000%   6.308%   0.306%
   15    3.2  0.5 -0.5   0.481%   2.872%   0.983%   0.102%   0.000%  16.005%   9.564%   0.000%   1.536%   0.076%
   16    4.2  0.5 -0.5   2.816%   0.489%   0.119%   1.015%  21.889%   0.001%   0.000%   3.681%   2.732%  55.426%
   17    5.2  0.5 -0.5   0.638%   3.796%   0.005%   0.000%   0.001%  24.796%   0.773%   0.000%  27.824%   1.397%
   18    6.2  0.5 -0.5  13.313%   2.240%   0.001%   0.000%   6.312%   0.000%   0.000%   0.115%   0.000%   0.000%
   19    7.2  0.5 -0.5   3.437%   0.538%   1.173%  10.406%   0.925%   0.000%   0.000%   5.502%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.563%   3.240%  10.517%   1.234%   0.000%   2.404%   4.023%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.932%   0.097%   0.965%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.954%   0.002%   7.028%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.954%   0.011%   7.028%   0.002%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.097%   6.932%   0.000%   0.965%
    5    1.2  0.5  0.5   3.393%   0.764%  51.450%   0.000%   0.000%   0.000%   5.843%   0.077%   4.070%   0.002%
    6    2.2  0.5  0.5   0.910%   4.067%   0.000%  48.409%   0.000%   0.000%   0.071%   5.450%   0.002%   4.468%
    7    3.2  0.5  0.5  10.800%  47.527%   0.000%   0.061%   0.000%   0.000%   0.122%   8.663%   0.000%   1.206%
    8    4.2  0.5  0.5   1.473%   0.336%   0.031%   0.000%   0.000%   0.000%   0.276%   0.006%   9.706%   0.002%
    9    5.2  0.5  0.5   5.738%  24.992%   0.000%   0.049%   0.000%   0.000%   0.064%   4.405%   0.001%   5.520%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.284%   0.049%  17.948%   0.264%  26.470%   0.004%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.281%   0.052%  42.831%   0.592%   1.261%   0.001%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.052%  33.281%   0.071%   5.322%   0.011%  39.282%
   13    1.2  0.5 -0.5   0.764%   3.393%   0.000%  51.450%   0.000%   0.000%   0.077%   5.843%   0.002%   4.070%
   14    2.2  0.5 -0.5   4.067%   0.910%  48.409%   0.000%   0.000%   0.000%   5.450%   0.071%   4.468%   0.002%
   15    3.2  0.5 -0.5  47.527%  10.800%   0.061%   0.000%   0.000%   0.000%   8.663%   0.122%   1.206%   0.000%
   16    4.2  0.5 -0.5   0.336%   1.473%   0.000%   0.031%   0.000%   0.000%   0.006%   0.276%   0.002%   9.706%
   17    5.2  0.5 -0.5  24.992%   5.738%   0.049%   0.000%   0.000%   0.000%   4.405%   0.064%   5.520%   0.001%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.049%  33.284%   0.264%  17.948%   0.004%  26.470%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.052%  33.281%   0.592%  42.831%   0.001%   1.261%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.281%   0.052%   5.322%   0.071%  39.282%   0.011%


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

              2       6     1827.74       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     12050.76  10264.17   1724.08     43.40      9.47      9.40
 REAL TIME  *     12406.49 SEC
 DISK USED  *         1.88 GB (local),       53.94 GB (total)
 SF USED    *        16.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -214.371012515416

              CI              CI           MULTI
   -214.33368804   -214.41294464   -213.50136689
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
