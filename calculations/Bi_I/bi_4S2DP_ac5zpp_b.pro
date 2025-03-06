
 Working directory              : /wrk/irikura/molpro.IRqYWwGlCY/
 Global scratch directory       : /wrk/irikura/molpro.IRqYWwGlCY/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.IRqYWwGlCY/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.03 sec
 ***,Bi SO-CI
                                                                                 ! valence s2 inactive
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Bi};
 
 basis=aug-cc-pwCV5Z-PP
 
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
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 23-Jan-25          TIME: 12:42:55  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  42000 MW

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

 Library entry Bi   ECP ECP60MDF                 selected for group  1
 Library entry BI     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BI     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BI     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BI     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BI     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BI     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BI     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         459
 NUMBER OF SYMMETRY AOS:          327
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

         1 0.101E-04 0.245E-04 0.245E-04 0.245E-04 0.245E-04 0.245E-04 0.360E-04 0.234E-03
         2 0.187E-05 0.187E-05 0.187E-05 0.296E-03 0.296E-03 0.296E-03 0.213E-02 0.213E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     566.231 MB (compressed) written to integral file ( 13.8%)

     Node minimum: 13.631 MB, node maximum: 28.312 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   11155044.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   11155044      RECORD LENGTH: 524288

 Memory used in sort:      11.71 MW

 SORT1 READ   511790813. AND WROTE     1880633. INTEGRALS IN      6 RECORDS. CPU TIME:     3.68 SEC, REAL TIME:     3.78 SEC
 SORT2 READ    53582233. AND WROTE   312900871. INTEGRALS IN   3024 RECORDS. CPU TIME:     0.22 SEC, REAL TIME:     0.26 SEC

 Node minimum:    11150627.  Node maximum:    11188428. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.29      7.98
 REAL TIME  *         9.47 SEC
 DISK USED  *        30.87 MB (local),        1.94 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     249 (  122  127)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:              20   (20 determinants, 20 intermediate states)

 State symmetry 2

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              70   (90 determinants, 90 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.400D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.419D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.175D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.136D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.390D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 4 3 6 2 1 1 4 6   3 5 2 1 4 6 5 3 213  10 8121514 7 911 4 6   5 3 2 1 4 6 2 5 3 9
                                       111013 71415 812 113  1011 9 7 8121415 2 4   6 5 3 1131011 91415   7 812 2 5 3 4 62216
                                       18202419232617212725  281310 7141511 9 812   1 2 5 3 4 613101514  11 9 812 7 1 5 4 2 6
                                        3 5 4 2 6 3 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.146D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.146D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.214D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.214D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.257D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.604D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.799D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 2   1 3 810 7 9 6 5 4 1   2 3 610 8 9 7 5 4 6  10 8 9 7 5 4 1 2 315
                                       17161421131918201112  10 8 6 5 4 7 9191416  1820151721131211 1 2   3 810 6 5 4 9 71820
                                       171519141621131211 8  10 6 5 4 7 9 3 1 2 8  10 6 4 5 9 718201517  14161321121911 3 2 1
                                        6 810 4 5 9 7 2 3 1   2 1 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  2015  ( 18 closed/active, 1235 closed/virtual, 0 active/active, 762 active/virtual )
 Total number of variables:    2755
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   20    0   -213.52252370    -213.53080569   -0.00828199    0.06284327 0.00010636 0.00000000  0.16E+01      2.98
   2    9   16    0   -213.53110072    -213.53116814   -0.00006742    0.00280466 0.00000296 0.00000000  0.18E+00      5.78
   3    6   12    0   -213.53116816    -213.53116816   -0.00000000    0.00000133 0.00000001 0.00000000  0.19E-03      8.28

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.21E-08)
                       Final energy:   -213.53116816
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.592036092704
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.98894129
 One electron energy                          -372.87938313
 Two electron energy                           159.28734704
 Virial ratio                                    4.09603296
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.536875352497
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92167793
 One electron energy                          -372.62651733
 Two electron energy                           159.08964198
 Virial ratio                                    4.09825416
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.536875352497
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92167793
 One electron energy                          -372.62651733
 Two electron energy                           159.08964198
 Virial ratio                                    4.09825416
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.536875352478
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92167793
 One electron energy                          -372.62651733
 Two electron energy                           159.08964198
 Virial ratio                                    4.09825416
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.536875352473
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92167793
 One electron energy                          -372.62651733
 Two electron energy                           159.08964198
 Virial ratio                                    4.09825416
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.536875352468
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92167793
 One electron energy                          -372.62651733
 Two electron energy                           159.08964198
 Virial ratio                                    4.09825416
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.501366875726
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.88118262
 One electron energy                          -372.46534142
 Two electron energy                           158.96397454
 Virial ratio                                    4.09956012
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.501366875678
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.88118262
 One electron energy                          -372.46534142
 Two electron energy                           158.96397455
 Virial ratio                                    4.09956012
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.501366875671
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.88118262
 One electron energy                          -372.46534142
 Two electron energy                           158.96397454
 Virial ratio                                    4.09956012
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.000000018855
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.681432421984
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000003450
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.999999978246
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.318564082120
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999999999
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999997698
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000000018
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.999999980889
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     3.961602742511
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000022
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000018425
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.038396350808
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000000000132
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999999740
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999999991
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.000000000255
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.356964835505
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999999996528
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000003329
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     2.643039567072
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999869
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000002562
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999999991
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 6 2 1 1 4 6   2 3 5 1 3 5 4 6 211   7 9 81214151310 6 4   5 3 2 1 4 6 2 5 3 9
                                       101314151112 8 7 113  101415 9 812 711 2 5   3 4 6 113101415 9 8  12 711 5 3 2 4 62216
                                       20182419232628172125  2713101415 812 9 711   1 5 3 2 4 613101514   9 81211 7 1 5 3 4 6
                                        2 5 3 4 6 2 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 1 2 3 2   1 3 6 5 810 4 9 7 1   2 3 610 8 9 7 4 510   8 9 7 6 4 5 1 2 319
                                       11211314161517121820  10 8 6 9 7 4 5201815  1714161121131912 1 2   3 810 9 7 6 4 52018
                                       151716141121131912 8  10 9 7 4 6 5 1 2 3 8  10 9 7 4 6 518201517  16141121131912 1 2 3
                                        810 4 7 9 6 5 3 1 2   1 2 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.69411     1  1  s    1.00014
    2.1     2.00000    -1.32239     1  1  d2-  1.00046
    3.1     2.00000    -1.32239     1  1  d2+  1.00046
    4.1     2.00000    -1.32239     1  1  d1+  1.00046
    5.1     2.00000    -1.32239     1  1  d1-  1.00046
    6.1     2.00000    -1.32239     1  1  d0   1.00046
    7.1     2.00000    -0.68796     1  1  s   -0.41781    1  5  s    0.59973    1  6  s    0.46314
    1.2     2.00000    -4.27034     1  1  px   0.99973
    2.2     2.00000    -4.27034     1  1  py   0.99973
    3.2     2.00000    -4.27034     1  1  pz   0.99973
    4.2     0.99668    -0.14243     1  1  pz  -0.27046    1  5  pz   0.43690    1  6  pz   0.38328
    5.2     0.99668    -0.14243     1  1  py  -0.27046    1  5  py   0.43690    1  6  py   0.38328
    6.2     0.99668    -0.14243     1  1  px  -0.27046    1  5  px   0.43690    1  6  px   0.38328
    7.2     0.00332     0.35041     1  1  px   0.27094    1  4  px  -0.81056    1  5  px  -0.71650    1  6  px   0.85256
                                    1  7  px   0.43589
    8.2     0.00332     0.35041     1  1  py   0.27094    1  4  py  -0.81056    1  5  py  -0.71650    1  6  py   0.85256
                                    1  7  py   0.43589
    9.2     0.00332     0.35041     1  1  pz   0.27094    1  4  pz  -0.81056    1  5  pz  -0.71650    1  6  pz   0.85256
                                    1  7  pz   0.43589
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 aaa000         0.99827013
 
 Energy:     -213.59203609
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 aba000        -0.00000173     -0.07981542     -0.00000012     -0.00000046      0.81072243     -0.00000000      0.00000000
 aab000         0.00001329      0.74201393      0.00000005      0.00000019     -0.33623903      0.00000000      0.00000000
 a02000         0.00000440      0.00000000     -0.70550055      0.00002393     -0.00000010     -0.00000805      0.70438073
 a20000        -0.00000440     -0.00000000      0.70550054     -0.00002393      0.00000010     -0.00000805      0.70438073
 0a2000        -0.70550054      0.00001251     -0.00000440     -0.00005611     -0.00000028      0.70438073      0.00000805
 20a000        -0.00005611      0.00000000      0.00002393      0.70550054      0.00000040     -0.00000069     -0.00003380
 2a0000         0.70550054     -0.00001251      0.00000440      0.00005611      0.00000028      0.70438073      0.00000805
 02a000         0.00005611     -0.00000000     -0.00002393     -0.70550054     -0.00000040     -0.00000069     -0.00003380
 baa000        -0.00001156     -0.66219851      0.00000007      0.00000027     -0.47448340     -0.00000000     -0.00000000
 
 Energy:     -213.53687535   -213.53687535   -213.53687535   -213.53687535   -213.53687535   -213.50136688   -213.50136688

 State:              8
 aba000         0.00000000
 aab000        -0.00000000
 a02000         0.00003380
 a20000         0.00003380
 0a2000         0.00000069
 20a000         0.70438073
 2a0000         0.00000069
 02a000         0.70438073
 baa000        -0.00000000
 
 Energy:     -213.50136688
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        1.37       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *        17.08      8.78      7.98
 REAL TIME  *        20.07 SEC
 DISK USED  *        88.44 MB (local),        3.52 GB (total)
 SF USED    *       141.76 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5920361  -0.0
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
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.59203609

 Number of blocks in overlap matrix:   163   Smallest eigenvalue:  0.53D+00
 Number of N-2 electron functions:     226
 Number of N-1 electron functions:   22565

 Number of internal configurations:                10436
 Number of singly external configurations:       2814655
 Number of doubly external configurations:       3503392
 Total number of contracted configurations:      6328483
 Total number of uncontracted configurations:  219510068

 Diagonal Coupling coefficients finished.               Storage:   3418324 words, CPU-Time:      0.09 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2733875 words, CPU-time:      0.85 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59203609    -0.00000000    -1.00304451  0.56D-01  0.11D+00     1.80
    2     1     1     1.10325061    -0.79394482  -214.38598091    -0.79394482    -0.02886813  0.38D-02  0.22D-02     9.47
    3     1     1     1.08850799    -0.82057836  -214.41261445    -0.02663354    -0.00032066  0.40D-04  0.30D-04    17.04
    4     1     1     1.08791757    -0.82089835  -214.41293444    -0.00031999    -0.00000690  0.16D-05  0.45D-06    24.57
    5     1     1     1.08791270    -0.82090554  -214.41294163    -0.00000719    -0.00000019  0.28D-07  0.17D-07    32.09
    6     1     1     1.08791908    -0.82090574  -214.41294184    -0.00000020    -0.00000000  0.68D-09  0.43D-09    39.58


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.0%
 S   2.1%  21.1%
 P   1.6%  27.8%   7.7%

 Initialization:   3.0%
 Other:           34.6%

 Total CPU:       39.6 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9558612


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95787239 (fixed)   0.95801395 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00181630   -0.00547082   -0.00638761
 Singles      0.01979848   -0.09084806   -0.09826957
 Pairs        0.06828028   -0.72458687   -0.71624857
 Total        1.08989507   -0.82090575   -0.82090574
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59203609
 Nuclear energy                         0.00000000
 Kinetic energy                        69.51143327
 One electron energy                 -372.42862126
 Two electron energy                  158.01567942
 Virial quotient                       -3.08457086
 Correlation energy                    -0.82090574
 !MRCI STATE 1.2 Energy              -214.412941836471

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.48673721 (Davidson, fixed reference)
 Cluster corrected energies          -214.48647283 (Davidson, relaxed reference)

 Cluster corrected energies          -214.48444383 (Pople, fixed reference)
 Cluster corrected energies          -214.48416835 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       51.97       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        57.32     40.23      8.78      7.98
 REAL TIME  *        63.18 SEC
 DISK USED  *       139.03 MB (local),        4.90 GB (total)
 SF USED    *       796.47 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.48647283  AU                              


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
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  35

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.53687535
     2      -213.53687535
     3      -213.53687535
     4      -213.53687535
     5      -213.53687535
     6      -213.50136688
     7      -213.50136688
     8      -213.50136688

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1539D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1374D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1671D-06

 Number of blocks in overlap matrix:   886   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    1432
 Number of N-1 electron functions:   28036

 Number of internal configurations:                14896
 Number of singly external configurations:       3498272
 Number of doubly external configurations:      22205643
 Total number of contracted configurations:     25718811
 Total number of uncontracted configurations:  341571406

 Diagonal Coupling coefficients finished.               Storage:   7770309 words, CPU-Time:      2.11 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3215747 words, CPU-time:      5.56 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.53687535    -0.00000000    -1.00716608  0.62D-01  0.11D+00    12.33
    1     2     2     1.00000000     0.00000000  -213.53687535     0.00000000    -1.00822203  0.62D-01  0.11D+00    12.33
    1     3     3     1.00000000     0.00000000  -213.53687535     0.00000000    -1.00550147  0.62D-01  0.11D+00    12.33
    1     4     4     1.00000000     0.00000000  -213.53687535     0.00000000    -1.00588787  0.62D-01  0.11D+00    12.33
    1     5     5     1.00000000     0.00000000  -213.53687535     0.00000000    -1.00631257  0.62D-01  0.11D+00    12.33
    1     6     6     1.00000000     0.00000000  -213.50136688    -0.00000000    -1.00396473  0.49D-01  0.12D+00    12.33
    1     7     7     1.00000000     0.00000000  -213.50136688     0.00000000    -1.00185527  0.49D-01  0.12D+00    12.33
    1     8     8     1.00000000     0.00000000  -213.50136688     0.00000000    -1.00428450  0.49D-01  0.12D+00    12.33
    2     1     1     1.10739260    -0.80253120  -214.33940655    -0.80253120    -0.02832343  0.42D-02  0.19D-02   299.46
    2     2     2     1.10757664    -0.80248509  -214.33936044    -0.80248509    -0.02838310  0.41D-02  0.20D-02   299.46
    2     3     3     1.10743100    -0.80232509  -214.33920045    -0.80232509    -0.02861824  0.41D-02  0.20D-02   299.46
    2     4     4     1.10766998    -0.80227066  -214.33914601    -0.80227066    -0.02861869  0.43D-02  0.19D-02   299.46
    2     5     5     1.10772421    -0.80197620  -214.33885155    -0.80197620    -0.02901999  0.42D-02  0.20D-02   299.46
    2     6     6     1.10374300    -0.80632423  -214.30769111    -0.80632423    -0.02789129  0.38D-02  0.20D-02   299.46
    2     7     7     1.10401782    -0.80597922  -214.30734610    -0.80597922    -0.02832576  0.38D-02  0.21D-02   299.46
    2     8     8     1.10516457    -0.80554839  -214.30691526    -0.80554839    -0.02870562  0.38D-02  0.24D-02   299.46
    3     1     1     1.09265976    -0.82870853  -214.36558388    -0.02617733    -0.00037790  0.54D-04  0.34D-04   586.17
    3     2     2     1.09262333    -0.82870841  -214.36558376    -0.02622332    -0.00037665  0.56D-04  0.33D-04   586.17
    3     3     3     1.09264634    -0.82870803  -214.36558338    -0.02638293    -0.00037838  0.54D-04  0.35D-04   586.17
    3     4     4     1.09263900    -0.82870376  -214.36557911    -0.02643310    -0.00038177  0.56D-04  0.34D-04   586.17
    3     5     5     1.09266416    -0.82870175  -214.36557710    -0.02672555    -0.00038514  0.55D-04  0.36D-04   586.17
    3     6     6     1.09125385    -0.83196583  -214.33333270    -0.02564160    -0.00034745  0.37D-04  0.36D-04   586.17
    3     7     7     1.09129809    -0.83195958  -214.33332646    -0.02598036    -0.00035483  0.37D-04  0.38D-04   586.17
    3     8     8     1.09141520    -0.83194522  -214.33331210    -0.02639684    -0.00036856  0.39D-04  0.41D-04   586.17
    4     1     1     1.09186834    -0.82908634  -214.36596170    -0.00037781    -0.00001175  0.26D-05  0.97D-06   873.18
    4     2     2     1.09187345    -0.82908625  -214.36596160    -0.00037784    -0.00001177  0.25D-05  0.10D-05   873.18
    4     3     3     1.09187059    -0.82908622  -214.36596158    -0.00037820    -0.00001185  0.27D-05  0.97D-06   873.18
    4     4     4     1.09186232    -0.82908606  -214.36596142    -0.00038230    -0.00001189  0.26D-05  0.99D-06   873.18
    4     5     5     1.09186792    -0.82908601  -214.36596136    -0.00038425    -0.00001192  0.26D-05  0.10D-05   873.18
    4     6     6     1.09076923    -0.83230814  -214.33367501    -0.00034231    -0.00000914  0.18D-05  0.84D-06   873.18
    4     7     7     1.09076203    -0.83230811  -214.33367499    -0.00034853    -0.00000902  0.18D-05  0.83D-06   873.18
    4     8     8     1.09079569    -0.83230758  -214.33367446    -0.00036236    -0.00000954  0.17D-05  0.10D-05   873.18
    5     1     1     1.09181063    -0.82909908  -214.36597443    -0.00001274    -0.00000043  0.58D-07  0.51D-07  1160.19
    5     2     2     1.09180993    -0.82909907  -214.36597442    -0.00001283    -0.00000044  0.60D-07  0.52D-07  1160.19
    5     3     3     1.09181280    -0.82909897  -214.36597432    -0.00001275    -0.00000042  0.57D-07  0.47D-07  1160.19
    5     4     4     1.09181077    -0.82909896  -214.36597431    -0.00001290    -0.00000043  0.57D-07  0.49D-07  1160.19
    5     5     5     1.09181139    -0.82909891  -214.36597426    -0.00001290    -0.00000042  0.57D-07  0.49D-07  1160.19
    5     6     6     1.09077520    -0.83231788  -214.33368476    -0.00000974    -0.00000029  0.39D-07  0.35D-07  1160.19
    5     7     7     1.09077515    -0.83231774  -214.33368462    -0.00000963    -0.00000028  0.37D-07  0.33D-07  1160.19
    5     8     8     1.09077998    -0.83231773  -214.33368461    -0.00001015    -0.00000029  0.40D-07  0.34D-07  1160.19
    6     1     1     1.09180097    -0.82909954  -214.36597489    -0.00000046    -0.00000001  0.17D-08  0.19D-08  1447.12
    6     2     2     1.09180090    -0.82909954  -214.36597489    -0.00000047    -0.00000001  0.17D-08  0.19D-08  1447.12
    6     3     3     1.09180107    -0.82909942  -214.36597477    -0.00000045    -0.00000001  0.16D-08  0.18D-08  1447.12
    6     4     4     1.09180159    -0.82909942  -214.36597477    -0.00000046    -0.00000001  0.16D-08  0.17D-08  1447.12
    6     5     5     1.09180136    -0.82909936  -214.36597471    -0.00000045    -0.00000001  0.16D-08  0.17D-08  1447.12
    6     6     6     1.09077653    -0.83231819  -214.33368507    -0.00000031    -0.00000001  0.11D-08  0.12D-08  1447.12
    6     7     7     1.09077727    -0.83231804  -214.33368492    -0.00000030    -0.00000001  0.10D-08  0.11D-08  1447.12
    6     8     8     1.09077656    -0.83231804  -214.33368492    -0.00000031    -0.00000001  0.99D-09  0.11D-08  1447.12


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.4%   4.8%
 P   0.6%  19.9%  27.3%

 Initialization:   0.5%
 Other:           46.0%

 Total CPU:     1447.1 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.0000247   0.8132424  -0.0000185   0.0000002  -0.4987761   0.0000000   0.0000000   0.0000000
 2222222222/\/000          -0.0000397   0.4987763  -0.0000114   0.0000001   0.8132416   0.0000000   0.0000000  -0.0000000
 22222222220/2000           0.6745894  -0.0000002  -0.0000000  -0.0000120   0.0000331   0.6733978  -0.0000000  -0.0000000
 22222222222/0000          -0.6745888   0.0000002   0.0000000   0.0000120  -0.0000331   0.6733985   0.0000000   0.0000000
 222222222220/000          -0.0000120   0.0000000  -0.0072792  -0.6745501  -0.0000000   0.0000000   0.6733154   0.0105011
 2222222222/02000          -0.0000001   0.0000154   0.6745497  -0.0072792   0.0000000   0.0000000  -0.0105011   0.6733159
 2222222222/20000           0.0000001  -0.0000154  -0.6745494   0.0072792  -0.0000000  -0.0000000  -0.0105011   0.6733162
 222222222202/000           0.0000120  -0.0000000   0.0072792   0.6745486   0.0000000  -0.0000000   0.6733163   0.0105011

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955938    0.000006   -0.000000    0.000017   -0.000046    0.000000    0.000000    0.000000
 2          -0.000000    0.948459    0.000022   -0.000000    0.119340   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000022    0.955882    0.010315   -0.000003   -0.000000    0.000000   -0.000000
 4          -0.000017    0.000000   -0.010315    0.955882    0.000000    0.000000   -0.000000   -0.000001
 5           0.000047   -0.119340    0.000000    0.000000    0.948459    0.000000    0.000000    0.000000
 6          -0.000001    0.000000    0.000000   -0.000000    0.000000    0.955365    0.000000   -0.000000
 7          -0.000000    0.000000    0.000000    0.000001    0.000000    0.000000   -0.014898    0.955249
 8          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.955249    0.014898

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955938   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.955938    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.955938   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.955937    0.000000   -0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.955938    0.000000    0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.955365   -0.000000    0.000000
 7           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.955365   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.955365


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95593768 (fixed)   0.95608563 (relaxed)   0.95593768 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229915   -0.00665924   -0.67162867
 Singles      0.02239063   -0.09603500   -0.10472692
 Pairs        0.06962141   -0.00000000   -0.05274396
 Total        1.09431119   -0.10269424   -0.82909954
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53687535
 Nuclear energy                         0.00000000
 Kinetic energy                        69.47648739
 One electron energy                 -372.22972797
 Two electron energy                  157.86375307
 Virial quotient                       -3.08544636
 Correlation energy                    -0.82909954
 !MRCI STATE 1.2 Energy              -214.365974894574

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44416826 (Davidson, fixed reference)
 Cluster corrected energies          -214.44388747 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44416826 (Davidson, rotated reference)

 Cluster corrected energies          -214.44293722 (Pople, fixed reference)
 Cluster corrected energies          -214.44263834 (Pople, relaxed reference)
 Cluster corrected energies          -214.44293722 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.94845926 (fixed)   0.95608566 (relaxed)   0.95593772 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229913   -0.00665924   -0.67162889
 Singles      0.02239042   -0.09603481   -0.10472676
 Pairs        0.06962154    0.00000000   -0.05274390
 Total        1.09431110   -0.10269404   -0.82909954
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53687535
 Nuclear energy                         0.00000000
 Kinetic energy                        69.47649731
 One electron energy                 -372.22973010
 Two electron energy                  157.86375520
 Virial quotient                       -3.08544592
 Correlation energy                    -0.82909954
 !MRCI STATE 2.2 Energy              -214.365974894306

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44416818 (Davidson, fixed reference)
 Cluster corrected energies          -214.44388741 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44416818 (Davidson, rotated reference)

 Cluster corrected energies          -214.44293713 (Pople, fixed reference)
 Cluster corrected energies          -214.44263828 (Pople, relaxed reference)
 Cluster corrected energies          -214.44293713 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95588198 (fixed)   0.95608559 (relaxed)   0.95593763 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229916   -0.00665924   -0.67162894
 Singles      0.02239047   -0.09603452   -0.10472658
 Pairs        0.06962166    0.00000001   -0.05274389
 Total        1.09431129   -0.10269375   -0.82909942
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53687535
 Nuclear energy                         0.00000000
 Kinetic energy                        69.47649089
 One electron energy                 -372.22973528
 Two electron energy                  157.86376051
 Virial quotient                       -3.08544620
 Correlation energy                    -0.82909942
 !MRCI STATE 3.2 Energy              -214.365974769403

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44416821 (Davidson, fixed reference)
 Cluster corrected energies          -214.44388742 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44416821 (Davidson, rotated reference)

 Cluster corrected energies          -214.44293717 (Pople, fixed reference)
 Cluster corrected energies          -214.44263829 (Pople, relaxed reference)
 Cluster corrected energies          -214.44293717 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.95588175 (fixed)   0.95608536 (relaxed)   0.95593741 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229916   -0.00665924   -0.67162906
 Singles      0.02239066   -0.09603465   -0.10472674
 Pairs        0.06962199    0.00000062   -0.05274362
 Total        1.09431181   -0.10269327   -0.82909942
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53687535
 Nuclear energy                         0.00000000
 Kinetic energy                        69.47649116
 One electron energy                 -372.22973277
 Two electron energy                  157.86375801
 Virial quotient                       -3.08544619
 Correlation energy                    -0.82909942
 !MRCI STATE 4.2 Energy              -214.365974768723

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44416864 (Davidson, fixed reference)
 Cluster corrected energies          -214.44388785 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44416864 (Davidson, rotated reference)

 Cluster corrected energies          -214.44293763 (Pople, fixed reference)
 Cluster corrected energies          -214.44263875 (Pople, relaxed reference)
 Cluster corrected energies          -214.44293763 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.94845904 (fixed)   0.95608546 (relaxed)   0.95593752 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229913   -0.00665924   -0.67162885
 Singles      0.02239045   -0.09603435   -0.10472649
 Pairs        0.06962198   -0.00000000   -0.05274402
 Total        1.09431156   -0.10269360   -0.82909936
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53687535
 Nuclear energy                         0.00000000
 Kinetic energy                        69.47650159
 One electron energy                 -372.22974017
 Two electron energy                  157.86376546
 Virial quotient                       -3.08544572
 Correlation energy                    -0.82909936
 !MRCI STATE 5.2 Energy              -214.365974712038

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44416836 (Davidson, fixed reference)
 Cluster corrected energies          -214.44388760 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44416836 (Davidson, rotated reference)

 Cluster corrected energies          -214.44293734 (Pople, fixed reference)
 Cluster corrected energies          -214.44263850 (Pople, relaxed reference)
 Cluster corrected energies          -214.44293734 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95536503 (fixed)   0.95550432 (relaxed)   0.95536503 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00444356   -0.01083958   -0.68180316
 Singles      0.01851747   -0.08901712   -0.09531904
 Pairs        0.07266243   -0.00000000   -0.05519599
 Total        1.09562346   -0.09985670   -0.83231819
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50136688
 Nuclear energy                         0.00000000
 Kinetic energy                        69.45583544
 One electron energy                 -372.09701000
 Two electron energy                  157.76332493
 Virial quotient                       -3.08589888
 Correlation energy                    -0.83231819
 !MRCI STATE 6.2 Energy              -214.333685069783

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41327421 (Davidson, fixed reference)
 Cluster corrected energies          -214.41300836 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41327421 (Davidson, rotated reference)

 Cluster corrected energies          -214.41211039 (Pople, fixed reference)
 Cluster corrected energies          -214.41182677 (Pople, relaxed reference)
 Cluster corrected energies          -214.41211039 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95524851 (fixed)   0.95550398 (relaxed)   0.95536468 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00444362   -0.01083961   -0.01335054
 Singles      0.01851732   -0.08901663   -0.09531871
 Pairs        0.07266333   -0.73237273   -0.72364879
 Total        1.09562426   -0.83222897   -0.83231804
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50136688
 Nuclear energy                         0.00000000
 Kinetic energy                        69.45584282
 One electron energy                 -372.09702517
 Two electron energy                  157.76334025
 Virial quotient                       -3.08589855
 Correlation energy                    -0.83231804
 !MRCI STATE 7.2 Energy              -214.333684918707

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41327472 (Davidson, fixed reference)
 Cluster corrected energies          -214.41300884 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41327472 (Davidson, rotated reference)

 Cluster corrected energies          -214.41211094 (Pople, fixed reference)
 Cluster corrected energies          -214.41182730 (Pople, relaxed reference)
 Cluster corrected energies          -214.41211094 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95524884 (fixed)   0.95550430 (relaxed)   0.95536501 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00444357   -0.01083958   -0.67137790
 Singles      0.01851743   -0.08901691   -0.09531889
 Pairs        0.07266250   -0.01142219   -0.06562124
 Total        1.09562350   -0.11127867   -0.83231804
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50136688
 Nuclear energy                         0.00000000
 Kinetic energy                        69.45584246
 One electron energy                 -372.09702227
 Two electron energy                  157.76333735
 Virial quotient                       -3.08589857
 Correlation energy                    -0.83231804
 !MRCI STATE 8.2 Energy              -214.333684918154

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41327408 (Davidson, fixed reference)
 Cluster corrected energies          -214.41300822 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41327408 (Davidson, rotated reference)

 Cluster corrected energies          -214.41211026 (Pople, fixed reference)
 Cluster corrected energies          -214.41182664 (Pople, relaxed reference)
 Cluster corrected energies          -214.41211026 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1628.38       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      1620.93   1563.58     40.23      8.78      7.98
 REAL TIME  *      1731.30 SEC
 DISK USED  *         1.68 GB (local),       48.01 GB (total)
 SF USED    *        15.08 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -214.44416826  AU                              
 SETTING HLSDIAG(3)     =      -214.44416818  AU                              
 SETTING HLSDIAG(4)     =      -214.44416821  AU                              
 SETTING HLSDIAG(5)     =      -214.44416864  AU                              
 SETTING HLSDIAG(6)     =      -214.44416836  AU                              
 SETTING HLSDIAG(7)     =      -214.41327421  AU                              
 SETTING HLSDIAG(8)     =      -214.41327472  AU                              
 SETTING HLSDIAG(9)     =      -214.41327408  AU                              


         HLSDIAG
    -214.4864728
    -214.4441683
    -214.4441682
    -214.4441682
    -214.4441686
    -214.4441684
    -214.4132742
    -214.4132747
    -214.4132741
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -214.412942
 Replaced energies:   -214.486473

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.365975   -214.365975   -214.365975   -214.365975   -214.365975   -214.333685   -214.333685   -214.333685
 Replaced energies:   -214.444168   -214.444168   -214.444168   -214.444169   -214.444168   -214.413274   -214.413275   -214.413274



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.48647283

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   -6188.50
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.00      -0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   -3572.93
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00    9284.78       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.57      51.98      -0.00       0.08

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00    9284.80       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      49.56      -0.53       0.00      -0.00

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00    9284.79       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.57     -49.56      -0.00       0.00      91.37      47.76

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    9284.70       0.00       0.00
                           -0.01      -0.00       0.00      -0.00     -51.98       0.53      -0.00       0.00      -0.99    4425.71

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    9284.76       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00     -91.37       0.99      -0.00       0.00

   10   6.2  0.5  0.5   -6188.50       0.00   -3572.93       0.00       0.00       0.00       0.00       0.00       0.00   16065.24
                            0.00      -0.00      -0.00      -0.00      -0.08       0.00     -47.76   -4425.71      -0.00      -0.00

   11   7.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         6187.73     111.43   -3572.48      -0.00    4425.42      70.05      -0.00      -0.08      38.22    -211.99

   12   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           96.50   -7145.00     -55.72      -0.00      69.14   -4491.72       0.10      -0.00   -2436.62      -3.31

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00     103.92      -0.00       0.00      -2.76      -0.25
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00     -51.96       0.56      -0.00      -0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00    -103.92       0.00      -0.00       0.00      -0.01     135.70
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.59      54.34       0.00       0.10

   15   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00     -51.98       0.00      -0.00
                           -0.00      -0.00       0.00       0.00      51.96      -0.59      -0.00      -0.00      -0.95    4425.71

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00      51.98       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.01      -0.56     -54.34       0.00      -0.00     -88.61     -47.76

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       2.76       0.01      -0.00      -0.00      -0.00    5108.88
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.95      88.61      -0.00       0.00

   18   6.2  0.5 -0.5       0.00   -3572.93       0.00   -6188.50       0.25    -135.70       0.00      -0.00   -5108.88      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.10   -4425.71      47.76      -0.00      -0.00

   19   7.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.10    4424.43    -116.77       0.00       0.00
                           -0.00    3572.48     111.43   -6187.73     -68.89    4356.02      -0.10       0.00   -2671.63      -3.31

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.08       0.00     116.77    4424.43       0.00      -0.00
                           -0.00      55.72   -7145.00     -96.50    4425.43      67.94      -0.00      -0.08     -41.45     211.97


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -6187.73     -96.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   -3572.93      -0.00       0.00
                         -111.43    7145.00       0.00       0.00       0.00       0.00      -0.00      -0.00   -3572.48     -55.72

    3   1.2  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         3572.48      55.72       0.00      -0.00      -0.00       0.00       0.00       0.00    -111.43    7145.00

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   -6188.50      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.01       0.00       0.00    6187.73      96.50

    5   1.2  0.5  0.5       0.00       0.00      -0.00    -103.92       0.00      -0.00       2.76       0.25      -0.00       0.08
                        -4425.42     -69.14       0.00      -0.00     -51.96       0.56      -0.00      -0.00      68.89   -4425.43

    6   2.2  0.5  0.5       0.00       0.00     103.92       0.00       0.00      -0.00       0.01    -135.70       0.10       0.00
                          -70.05    4491.72       0.00      -0.00       0.59      54.34       0.00       0.10   -4356.02     -67.94

    7   3.2  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      51.98      -0.00       0.00    4424.43     116.77
                            0.00      -0.10      51.96      -0.59       0.00      -0.00      -0.95    4425.71       0.10       0.00

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00     -51.98       0.00      -0.00      -0.00    -116.77    4424.43
                            0.08       0.00      -0.56     -54.34       0.00       0.00     -88.61     -47.76      -0.00       0.08

    9   5.2  0.5  0.5       0.00       0.00      -2.76      -0.01       0.00       0.00      -0.00   -5108.88       0.00       0.00
                          -38.22    2436.62       0.00      -0.00       0.95      88.61       0.00       0.00    2671.63      41.45

   10   6.2  0.5  0.5       0.00       0.00      -0.25     135.70      -0.00       0.00    5108.88      -0.00       0.00      -0.00
                          211.99       3.31       0.00      -0.10   -4425.71      47.76      -0.00       0.00       3.31    -211.97

   11   7.2  0.5  0.5   16065.13       0.00       0.00      -0.10   -4424.43     116.77      -0.00      -0.00      -0.00     212.03
                           -0.00       0.00     -68.89    4356.02      -0.10       0.00   -2671.63      -3.31       0.00       0.00

   12   8.2  0.5  0.5       0.00   16065.27      -0.08      -0.00    -116.77   -4424.43      -0.00       0.00    -212.03       0.00
                           -0.00       0.00    4425.43      67.94      -0.00      -0.08     -41.45     211.97      -0.00      -0.00

   13   1.2  0.5 -0.5       0.00      -0.08    9284.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           68.89   -4425.43      -0.00      -0.00      -0.57     -51.98       0.00      -0.08    4425.42      69.14

   14   2.2  0.5 -0.5      -0.10      -0.00       0.00    9284.80       0.00       0.00       0.00       0.00       0.00       0.00
                        -4356.02     -67.94       0.00      -0.00     -49.56       0.53      -0.00       0.00      70.05   -4491.72

   15   3.2  0.5 -0.5   -4424.43    -116.77       0.00       0.00    9284.79       0.00       0.00       0.00       0.00       0.00
                            0.10       0.00       0.57      49.56       0.00      -0.00     -91.37     -47.76      -0.00       0.10

   16   4.2  0.5 -0.5     116.77   -4424.43       0.00       0.00       0.00    9284.70       0.00       0.00       0.00       0.00
                           -0.00       0.08      51.98      -0.53       0.00      -0.00       0.99   -4425.71      -0.08      -0.00

   17   5.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00    9284.76       0.00       0.00       0.00
                         2671.63      41.45      -0.00       0.00      91.37      -0.99       0.00      -0.00      38.22   -2436.62

   18   6.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   16065.24       0.00       0.00
                            3.31    -211.97       0.08      -0.00      47.76    4425.71       0.00       0.00    -211.99      -3.31

   19   7.2  0.5 -0.5      -0.00    -212.03       0.00       0.00       0.00       0.00       0.00       0.00   16065.13       0.00
                           -0.00       0.00   -4425.42     -70.05       0.00       0.08     -38.22     211.99       0.00      -0.00

   20   8.2  0.5 -0.5     212.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16065.27
                           -0.00       0.00     -69.14    4491.72      -0.10       0.00    2436.62       3.31       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -214.51025928    -0.02378645    -5220.52      0.00000000        0.00      0.0000
     2  -214.51025928    -0.02378645    -5220.52      0.00000000        0.00      0.0000
     3  -214.51025919    -0.02378636    -5220.50      0.00000009        0.02      0.0000
     4  -214.51025919    -0.02378636    -5220.50      0.00000009        0.02      0.0000
     5  -214.46239102     0.02408182     5285.35      0.04786827    10505.87      1.3026
     6  -214.46239102     0.02408182     5285.35      0.04786827    10505.87      1.3026
     7  -214.46239087     0.02408196     5285.38      0.04786841    10505.90      1.3026
     8  -214.46239087     0.02408196     5285.38      0.04786841    10505.90      1.3026
     9  -214.44369487     0.04277797     9388.68      0.06656442    14609.20      1.8113
    10  -214.44369487     0.04277797     9388.68      0.06656442    14609.20      1.8113
    11  -214.44369462     0.04277821     9388.73      0.06656466    14609.25      1.8113
    12  -214.44369462     0.04277821     9388.73      0.06656466    14609.25      1.8113
    13  -214.44369457     0.04277827     9388.74      0.06656472    14609.27      1.8113
    14  -214.44369457     0.04277827     9388.74      0.06656472    14609.27      1.8113
    15  -214.41520634     0.07126649    15641.19      0.09505294    20861.71      2.5865
    16  -214.41520634     0.07126649    15641.19      0.09505294    20861.71      2.5865
    17  -214.37100988     0.11546295    25341.19      0.13924940    30561.71      3.7892
    18  -214.37100988     0.11546295    25341.19      0.13924940    30561.71      3.7892
    19  -214.37100969     0.11546315    25341.23      0.13924960    30561.75      3.7892
    20  -214.37100969     0.11546315    25341.23      0.13924960    30561.75      3.7892


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.018455676   0.567111495   0.577697419   0.003878674  -0.012124507   0.376750296  -0.348295615   0.030826925
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.572592388   0.038438244  -0.021223691   0.265465053  -0.180866041   0.001886760   0.038731673   0.343412383
                        -0.066368471  -0.002159740   0.003363769  -0.501022322  -0.299084600  -0.009624990   0.013270057   0.149929553

    3    1.2  1.5 -0.5  -0.038431624   0.576425893  -0.567005331  -0.012912884  -0.007264364   0.349519761   0.374714382  -0.040808058
                         0.002274510   0.000087179  -0.000128238   0.017176072   0.006590092   0.000243293  -0.000258974  -0.003307458

    4    1.2  1.5 -1.5   0.563349799   0.018333258   0.001816723  -0.270586397  -0.194732529  -0.006266846  -0.028260290  -0.319296685
                        -0.065210830  -0.002122175  -0.003426898   0.510408963  -0.322521359  -0.010379322  -0.012314842  -0.139138284

    5    1.2  0.5  0.5   0.006249286  -0.056110681   0.202925485   0.003415864  -0.000237650   0.112430405   0.490432916  -0.049922708
                        -0.000511178  -0.000023215   0.000029847  -0.003873122   0.005592266   0.000215118  -0.000218176  -0.002819889

    6    2.2  0.5  0.5   0.061064118   0.006516726  -0.005079611   0.094289836   0.065041434  -0.004569741  -0.046736088  -0.446611975
                        -0.007091962  -0.000230771   0.001194500  -0.177914868   0.107300167   0.003453032  -0.017247678  -0.194870548

    7    3.2  0.5  0.5  -0.016962648  -0.000552092  -0.000891815   0.132839009   0.317116583   0.010205251   0.012114369   0.136874921
                        -0.146454805  -0.006967751   0.000094998   0.070431802  -0.191640248  -0.000951649  -0.026196176  -0.314216639

    8    4.2  0.5  0.5   0.000695506   0.000026598  -0.000022870   0.002437098  -0.009035553  -0.000319357   0.000081173   0.001341104
                         0.012642336  -0.203609065   0.052612797   0.001645324  -0.010082394   0.483008743   0.148177080  -0.016209127

    9    5.2  0.5  0.5   0.199887999   0.008959364  -0.002207763  -0.028950378   0.253163338   0.004538330   0.006291305   0.114981665
                        -0.023149015  -0.000753332  -0.000366434   0.054575463   0.419075602   0.013486569   0.004422997   0.049973409

   10    6.2  0.5  0.5  -0.017143403   0.379575435   0.105589680  -0.001508580   0.006968503  -0.247055735   0.056347900  -0.003102878
                         0.000553894   0.000021230  -0.000031229   0.004182752  -0.001624769  -0.000059983   0.000063850   0.000815458

   11    7.2  0.5  0.5  -0.001057901  -0.000037631   0.000056773  -0.007987547   0.003924353   0.000133986  -0.000165882  -0.001968229
                        -0.005923175  -0.099111293  -0.381538768  -0.006796212  -0.004776910   0.074717540  -0.240792788   0.025863198

   12    8.2  0.5  0.5   0.032311746   0.001051428  -0.001637610   0.243923915  -0.147432891  -0.004744491   0.006541570   0.073907378
                         0.278818782   0.017177607  -0.016288588   0.129202307   0.089119904   0.000234864  -0.022856024  -0.168951176

   13    1.2  0.5 -0.5  -0.055735825  -0.006266613   0.005021941  -0.095021441  -0.058296536   0.004664488   0.046892665   0.449512544
                         0.006475098   0.000210804  -0.001203872   0.179303315  -0.096136133  -0.003093942   0.017358182   0.196119774

   14    2.2  0.5 -0.5   0.006500036  -0.061474563   0.201356085   0.003434596  -0.000594026   0.125473767   0.487274803  -0.049735022
                        -0.000520103  -0.000023300   0.000025906  -0.003928464   0.005696761   0.000218763  -0.000231689  -0.002858642

   15    3.2  0.5 -0.5   0.000252776   0.000009637  -0.000007953   0.000501648  -0.004460161  -0.000146408   0.000045523   0.000640798
                         0.006985017  -0.147433853  -0.150355715  -0.000743443  -0.009228204   0.370525155  -0.342734355   0.028854583

   16    4.2  0.5 -0.5   0.023438954   0.000762820  -0.000312175   0.046495329  -0.413320040  -0.013301392   0.005245831   0.059268685
                         0.202255452   0.012638453  -0.002923882   0.024622984   0.249928175  -0.002523658  -0.015395311  -0.135807499

   17    5.2  0.5 -0.5   0.008986560  -0.201223977  -0.061778680   0.000710336  -0.013891076   0.489608030  -0.125371888   0.007534407
                        -0.000281882  -0.000010810   0.000015847  -0.002122243   0.003085771   0.000113953  -0.000120609  -0.001541469

   18    6.2  0.5 -0.5   0.377055240   0.017093381  -0.004402158  -0.049484505   0.127748099   0.002210938   0.002518772   0.051681908
                        -0.043667584  -0.001421061  -0.000626285   0.093276285   0.211463858   0.006805267   0.001987112   0.022451511

   19    7.2  0.5 -0.5   0.011359196   0.000369792   0.002263340  -0.337124873  -0.064032051  -0.002060931  -0.008527561  -0.096344770
                         0.098458207  -0.006005531   0.010240444  -0.178657927   0.038504872   0.005828548   0.024496115   0.220678227

   20    8.2  0.5 -0.5  -0.000930760  -0.000036698   0.000097764  -0.013624306   0.002251247   0.000087837  -0.000260710  -0.003133679
                        -0.017184568   0.280684807  -0.276029170  -0.009076241   0.004182970  -0.172275381  -0.184409144   0.023566290


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000163  -0.000001701   0.000000065   0.000001360  -0.000000015   0.000000310   0.000001101  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000001781   0.000000123   0.000000275  -0.000000024   0.000000444   0.000000044   0.000000017   0.000000840
                         0.000001704   0.000000163  -0.000000084   0.000000004  -0.000000841  -0.000000040  -0.000000000  -0.000000780

    3    1.2  1.5 -0.5   0.000000201  -0.000002465   0.000000024   0.000000287  -0.000000057   0.000000951  -0.000001146   0.000000012
                        -0.000000033  -0.000000002  -0.000000003   0.000000000   0.000000020   0.000000002   0.000000000  -0.000000011

    4    1.2  1.5 -1.5   0.000001228   0.000000117   0.000001300  -0.000000062   0.000000146   0.000000007  -0.000000000  -0.000000806
                         0.000001177   0.000000113  -0.000000397   0.000000019  -0.000000274  -0.000000013   0.000000000   0.000000749

    5    1.2  0.5  0.5   0.018766153  -0.254829170   0.012039422   0.399118855   0.038023047  -0.611167096   0.000003512  -0.000000004
                        -0.005326469  -0.000425266   0.002158661  -0.000106251  -0.016158216  -0.002011799  -0.000000000   0.000000004

    6    2.2  0.5  0.5  -0.145385576  -0.008059252  -0.015821633   0.000317038  -0.347876773  -0.039165308   0.000000035   0.000001612
                        -0.138972073  -0.013286512   0.004719749  -0.000228571   0.659907625   0.031728898  -0.000000000  -0.000001497

    7    3.2  0.5  0.5  -0.085473260  -0.008171809   0.214727891  -0.010294740   0.181253012   0.008714422   0.000000000   0.000002410
                         0.089327370   0.006280332   0.703868064  -0.028176522   0.095778626   0.008417387  -0.000000036   0.000002594

    8    4.2  0.5  0.5  -0.010396120  -0.000684551   0.000210430  -0.000047854   0.001150795   0.000150933   0.000000000  -0.000000054
                        -0.061629299   0.758783116  -0.005212694  -0.123240981   0.004049939  -0.071439428  -0.000000017  -0.000000059

    9    5.2  0.5  0.5  -0.393227479  -0.032606650   0.507820423  -0.025859401   0.063371065   0.004527458   0.000000025  -0.000000851
                        -0.376764528  -0.036018352  -0.154991801   0.007432633  -0.119845655  -0.005763782  -0.000000000   0.000000790

   10    6.2  0.5  0.5  -0.000000198   0.000002144  -0.000000038  -0.000000576   0.000000005  -0.000000143   0.577209979   0.009278228
                         0.000000007  -0.000000000   0.000000003  -0.000000000   0.000000004   0.000000000  -0.000021590  -0.008618045

   11    7.2  0.5  0.5  -0.000000046  -0.000000004   0.000000002   0.000000000   0.000000014  -0.000000000   0.000021593   0.002491286
                        -0.000000006   0.000000566   0.000000064   0.000001176  -0.000000016   0.000000496   0.577342420   0.002682009

   12    8.2  0.5  0.5   0.000001538   0.000000147  -0.000000103   0.000000005  -0.000001332  -0.000000064  -0.000000022   0.392907655
                        -0.000001608  -0.000000100  -0.000000335   0.000000044  -0.000000703  -0.000000066  -0.003660449   0.423013935

   13    1.2  0.5 -0.5   0.184261394   0.009861951   0.381734131  -0.010883365  -0.284936109  -0.032107349  -0.000000006  -0.000002573
                         0.176027910   0.016830974  -0.116511480   0.005582101   0.540685380   0.025999196   0.000000000   0.000002390

   14    2.2  0.5 -0.5   0.015012070  -0.201122168   0.000369986   0.016510247  -0.046394188   0.745983089   0.000002200  -0.000000025
                        -0.004015058  -0.000275720   0.000125966  -0.000108907   0.019703391   0.002356793  -0.000000000   0.000000023

   15    3.2  0.5 -0.5   0.001553599   0.000106993  -0.001613010   0.000295487  -0.003345530  -0.000444803  -0.000000000  -0.000000025
                         0.010188590  -0.123632705   0.029954904   0.735892813  -0.011644783   0.205002443  -0.000003541  -0.000000027

   16    4.2  0.5 -0.5  -0.524563279  -0.050151016   0.035962335  -0.001724274   0.063161295   0.003036768   0.000000000  -0.000000012
                         0.548256921   0.037297793   0.117877275  -0.004923752   0.033380614   0.002916226   0.000000080  -0.000000013

   17    5.2  0.5 -0.5   0.048463230  -0.544590992  -0.026902651  -0.530946343   0.007214121  -0.135568458  -0.000001161  -0.000000018
                        -0.003439565  -0.000107720   0.000447199   0.000144474  -0.001294420  -0.000257349   0.000000000   0.000000017

   18    6.2  0.5 -0.5  -0.000001548  -0.000000138  -0.000000551   0.000000037  -0.000000068   0.000000001   0.012663183  -0.422921374
                        -0.000001484  -0.000000142   0.000000169  -0.000000008   0.000000126   0.000000006  -0.000000358   0.392821679

   19    7.2  0.5 -0.5  -0.000000389  -0.000000037  -0.000000343   0.000000016  -0.000000438  -0.000000021  -0.000000022   0.392911813
                         0.000000411  -0.000000028  -0.000001124   0.000000062  -0.000000233   0.000000005  -0.003660557   0.423018412

   20    8.2  0.5 -0.5  -0.000000037  -0.000000002  -0.000000008   0.000000000   0.000000028   0.000000004  -0.000021593  -0.002491212
                        -0.000000174   0.000002226  -0.000000043  -0.000000350   0.000000087  -0.000001506  -0.577336310  -0.002681930


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5   0.271766842   0.006679572  -0.076276085   0.015059573
                        -0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.004499128   0.072440677  -0.030748365  -0.269061241
                         0.000684760  -0.027863527  -0.004594378  -0.023268915

    3    1.2  1.5 -0.5  -0.077614588   0.003951658  -0.270065297   0.031032410
                         0.000059226  -0.002257309  -0.000359163  -0.001886737

    4    1.2  1.5 -1.5   0.006232468  -0.253575837  -0.015001832  -0.075983629
                        -0.002402713   0.097757411  -0.001317489  -0.006673024

    5    1.2  0.5  0.5   0.227045862  -0.000081832   0.218825671  -0.021615292
                        -0.000058599   0.002181181   0.000353284   0.001826837

    6    2.2  0.5  0.5   0.001098651   0.206354055  -0.022217794  -0.223886064
                         0.001953479  -0.079482895  -0.003811927  -0.019305859

    7    3.2  0.5  0.5  -0.002685260   0.109249057  -0.001475974  -0.007473910
                        -0.007795264   0.283377940   0.020051007   0.084522171

    8    4.2  0.5  0.5   0.000082297  -0.003364418  -0.000335685  -0.001745672
                        -0.076683200  -0.010617714   0.303893196  -0.039375200

    9    5.2  0.5  0.5   0.008533617  -0.210557892  -0.031120899  -0.218087442
                        -0.001995980   0.081207277  -0.003743611  -0.018960474

   10    6.2  0.5  0.5  -0.464683635  -0.018347358   0.475411619  -0.067516663
                        -0.000070011   0.002668344   0.000424562   0.002230285

   11    7.2  0.5  0.5   0.000044757  -0.001640744  -0.000255127  -0.001372151
                         0.648258920   0.011674412   0.161917039  -0.015768431

   12    8.2  0.5  0.5   0.001619833  -0.065909678  -0.010867292  -0.055040273
                        -0.000527610  -0.171105917   0.075229132   0.635943859

   13    1.2  0.5 -0.5  -0.000860948  -0.211869382   0.021372594   0.218017562
                        -0.002005746   0.081616124   0.003710850   0.018792066

   14    2.2  0.5 -0.5   0.221132364  -0.000322424   0.224716621  -0.022466094
                        -0.000065117   0.002217917   0.000354867   0.001853585

   15    3.2  0.5 -0.5   0.000002308  -0.000298520   0.000050820   0.000283850
                        -0.303707777  -0.008239396   0.084851954  -0.020103253

   16    4.2  0.5 -0.5   0.000680087  -0.027660547   0.005183724   0.026251742
                         0.011117223  -0.071520724  -0.039071508  -0.302757383

   17    5.2  0.5 -0.5  -0.225675091  -0.008680385   0.218910016  -0.031329086
                        -0.000031677   0.001207255   0.000191635   0.001006641

   18    6.2  0.5 -0.5  -0.018079090   0.433554354   0.067062675   0.473625950
                         0.004110004  -0.167216950   0.008128438   0.041168520

   19    7.2  0.5 -0.5  -0.005730329   0.233143838   0.002746393   0.013911186
                        -0.010302780   0.604883112  -0.015587930  -0.161318540

   20    8.2  0.5 -0.5   0.000050668  -0.001701195  -0.000806401  -0.004244193
                         0.183361168   0.000090378   0.638320744  -0.075891417


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.034%  32.162%  33.373%   0.002%   0.015%  14.194%  12.131%   0.095%   0.000%   0.000%
    2    1.2  1.5  0.5  33.227%   0.148%   0.046%  32.150%  12.216%   0.010%   0.168%  14.041%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.148%  33.227%  32.150%   0.046%   0.010%  12.216%  14.041%   0.168%   0.000%   0.000%
    4    1.2  1.5 -1.5  32.162%   0.034%   0.002%  33.373%  14.194%   0.015%   0.095%  12.131%   0.000%   0.000%
    5    1.2  0.5  0.5   0.004%   0.315%   4.118%   0.003%   0.003%   1.264%  24.052%   0.250%   0.038%   6.494%
    6    2.2  0.5  0.5   0.378%   0.004%   0.003%   4.054%   1.574%   0.003%   0.248%  23.744%   4.045%   0.024%
    7    3.2  0.5  0.5   2.174%   0.005%   0.000%   2.261%  13.729%   0.011%   0.083%  11.747%   1.529%   0.011%
    8    4.2  0.5  0.5   0.016%   4.146%   0.277%   0.001%   0.018%  23.330%   2.196%   0.026%   0.391%  57.575%
    9    5.2  0.5  0.5   4.049%   0.008%   0.001%   0.382%  23.972%   0.020%   0.006%   1.572%  29.658%   0.236%
   10    6.2  0.5  0.5   0.029%  14.408%   1.115%   0.002%   0.005%   6.104%   0.318%   0.001%   0.000%   0.000%
   11    7.2  0.5  0.5   0.004%   0.982%  14.557%   0.011%   0.004%   0.558%   5.798%   0.067%   0.000%   0.000%
   12    8.2  0.5  0.5   7.878%   0.030%   0.027%   7.619%   2.968%   0.002%   0.057%   3.401%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.315%   0.004%   0.003%   4.118%   1.264%   0.003%   0.250%  24.052%   6.494%   0.038%
   14    2.2  0.5 -0.5   0.004%   0.378%   4.054%   0.003%   0.003%   1.574%  23.744%   0.248%   0.024%   4.045%
   15    3.2  0.5 -0.5   0.005%   2.174%   2.261%   0.000%   0.011%  13.729%  11.747%   0.083%   0.011%   1.529%
   16    4.2  0.5 -0.5   4.146%   0.016%   0.001%   0.277%  23.330%   0.018%   0.026%   2.196%  57.575%   0.391%
   17    5.2  0.5 -0.5   0.008%   4.049%   0.382%   0.001%   0.020%  23.972%   1.572%   0.006%   0.236%  29.658%
   18    6.2  0.5 -0.5  14.408%   0.029%   0.002%   1.115%   6.104%   0.005%   0.001%   0.318%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.982%   0.004%   0.011%  14.557%   0.558%   0.004%   0.067%   5.798%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.030%   7.878%   7.619%   0.027%   0.002%   2.968%   3.401%   0.057%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.386%   0.004%   0.582%   0.023%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.602%   0.097%   7.294%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.602%   0.002%   7.294%   0.097%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   7.386%   0.023%   0.582%
    5    1.2  0.5  0.5   0.015%  15.930%   0.171%  37.353%   0.000%   0.000%   5.155%   0.000%   4.788%   0.047%
    6    2.2  0.5  0.5   0.027%   0.000%  55.650%   0.254%   0.000%   0.000%   0.001%   4.890%   0.051%   5.050%
    7    3.2  0.5  0.5  54.154%   0.090%   4.203%   0.015%   0.000%   0.000%   0.007%   9.224%   0.040%   0.720%
    8    4.2  0.5  0.5   0.003%   1.519%   0.002%   0.510%   0.000%   0.000%   0.588%   0.012%   9.235%   0.155%
    9    5.2  0.5  0.5  28.190%   0.072%   1.838%   0.005%   0.000%   0.000%   0.008%   5.093%   0.098%   4.792%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.317%   0.016%  21.593%   0.034%  22.602%   0.456%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.332%   0.001%  42.024%   0.014%   2.622%   0.025%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%  33.332%   0.000%   3.362%   0.578%  40.745%
   13    1.2  0.5 -0.5  15.930%   0.015%  37.353%   0.171%   0.000%   0.000%   0.000%   5.155%   0.047%   4.788%
   14    2.2  0.5 -0.5   0.000%   0.027%   0.254%  55.650%   0.000%   0.000%   4.890%   0.001%   5.050%   0.051%
   15    3.2  0.5 -0.5   0.090%  54.154%   0.015%   4.203%   0.000%   0.000%   9.224%   0.007%   0.720%   0.040%
   16    4.2  0.5 -0.5   1.519%   0.003%   0.510%   0.002%   0.000%   0.000%   0.012%   0.588%   0.155%   9.235%
   17    5.2  0.5 -0.5   0.072%  28.190%   0.005%   1.838%   0.000%   0.000%   5.093%   0.008%   4.792%   0.098%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.016%  33.317%   0.034%  21.593%   0.456%  22.602%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%  33.332%   0.014%  42.024%   0.025%   2.622%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.332%   0.001%   3.362%   0.000%  40.745%   0.578%


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

              2       6     1628.38       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     11321.38   9700.45   1563.58     40.23      8.78      7.98
 REAL TIME  *     11645.20 SEC
 DISK USED  *         1.68 GB (local),       48.01 GB (total)
 SF USED    *        15.08 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -214.371009686100

              CI              CI           MULTI
   -214.33368492   -214.41294184   -213.50136688
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
