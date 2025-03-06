
 Working directory              : /wrk/irikura/molpro.Co8rm6qPoe/
 Global scratch directory       : /wrk/irikura/molpro.Co8rm6qPoe/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Co8rm6qPoe/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   14
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Bi SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Bi};
 
 basis=aug-cc-pwCV5Z-PP
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=1
 ND=8
 
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
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 07-Nov-24          TIME: 14:43:49  
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

     564.134 MB (compressed) written to integral file ( 13.8%)

     Node minimum: 29.884 MB, node maximum: 51.118 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   22335719.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15996659      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ   511790813. AND WROTE     3785106. INTEGRALS IN     12 RECORDS. CPU TIME:     1.95 SEC, REAL TIME:     2.04 SEC
 SORT2 READ    53582233. AND WROTE   312900871. INTEGRALS IN   1918 RECORDS. CPU TIME:     0.27 SEC, REAL TIME:     0.32 SEC

 Node minimum:    22335257.  Node maximum:    22368464. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         6.34      6.15
 REAL TIME  *         7.36 SEC
 DISK USED  *        30.87 MB (local),        1.49 GB (total)
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.380D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.166D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.143D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.376D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 4 3 6 2 1 1 6 4   3 5 2 1 4 6 3 5 213  10 8121415 7 911 4 6   5 3 2 1 4 6 2 5 3 9
                                       111013 71415 812 113  1011 9 7 8121415 2 4   6 5 3 1131011 91415   7 812 2 5 3 4 62216
                                       20182419232617212725  281310 7141511 9 812   1 2 5 3 6 413101514  11 9 812 7 1 5 4 2 6
                                        3 5 4 2 6 3 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.155D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.155D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.181D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.181D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.453D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.208D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.399D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 2 1 3 2   1 3 810 9 7 6 4 5 1   2 3 610 8 9 7 5 4 6  10 8 9 7 5 4 1 2 315
                                       17161421131918201112  10 8 6 5 4 7 9191416  2018151721131112 1 2   3 810 6 5 4 9 71820
                                       171519141621131211 8  10 6 5 4 7 9 2 3 1 8  10 6 5 4 9 720181517  14161321121911 3 2 1
                                        6 810 4 5 9 7 2 3 1   2 1 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.75758
 Weight factors for state symmetry  2:    0.03030   0.03030   0.03030   0.03030   0.03030   0.03030   0.03030   0.03030
 
 Number of orbital rotations:  2021  ( 24 closed/active, 1113 closed/virtual, 0 active/active, 884 active/virtual )
 Total number of variables:    5251
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   15   26    0   -213.56688621    -213.58075793   -0.01387172    0.07034304 0.00094964 0.00000000  0.17E+01      3.42
   2    8   14    0   -213.58132913    -213.58170760   -0.00037847    0.04155169 0.00011587 0.00000000  0.16E+00      6.05
   3   12   22    0   -213.58170846    -213.58170848   -0.00000002    0.00008439 0.00000001 0.00000000  0.17E-02      9.22
   4    2    4    0   -213.58170848    -213.58170848    0.00000000    0.00000001 0.00000000 0.00000000  0.16E-06     10.79

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.18E-07)
                       Final energy:   -213.58170848
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.597549163669
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.95831951
 One electron energy                          -372.81981639
 Two electron energy                           159.22226723
 Virial ratio                                    4.09748774
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.541954093172
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90852651
 One electron energy                          -372.64379978
 Two electron energy                           159.10184569
 Virial ratio                                    4.09891917
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.541954093165
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90852651
 One electron energy                          -372.64379978
 Two electron energy                           159.10184569
 Virial ratio                                    4.09891917
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.541954093142
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90852651
 One electron energy                          -372.64379978
 Two electron energy                           159.10184569
 Virial ratio                                    4.09891917
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.541954093105
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90852651
 One electron energy                          -372.64379978
 Two electron energy                           159.10184569
 Virial ratio                                    4.09891917
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.541954093102
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90852651
 One electron energy                          -372.64379978
 Two electron energy                           159.10184569
 Virial ratio                                    4.09891917
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.515960050672
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90049068
 One electron energy                          -372.58167887
 Two electron energy                           159.06571882
 Virial ratio                                    4.09890333
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.515960050626
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90049069
 One electron energy                          -372.58167887
 Two electron energy                           159.06571882
 Virial ratio                                    4.09890333
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.515960050555
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90049069
 One electron energy                          -372.58167887
 Two electron energy                           159.06571882
 Virial ratio                                    4.09890333
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     3.586650732624
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     3.999999730949
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000120589
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.413272161070
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999998585
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.152205847313
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999999666396
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999999127
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     4.000000000000
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.847745761373
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>    -0.000000000000
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     2.261143420064
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000602655
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999999880284
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.738982077557
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000001415
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 6 2 1 1 2 6   4 3 5 1 3 5 4 6 2 7  11 9 81215141310 4 6   2 5 3 1 6 4 2 5 310
                                       1315141112 8 9 7 113  101514 812 911 7 5 3   2 6 4 113101514 812   911 7 5 3 4 6 22216
                                       20182419232617212825  2713101514 812 911 7   1 5 3 4 6 213101514   812 911 7 1 5 3 4 6
                                        2 5 3 4 6 2 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 1 2 3 1   3 2 6 5 4 810 9 7 1   3 2 610 8 5 7 9 4 9   710 8 6 4 5 1 3 212
                                       19211311141615171820   9 710 8 6 4 5201815  1714162113111219 1 3   2 7 910 8 4 6 51820
                                       151716142113111219 7   9 810 4 5 6 1 2 3 9   7 810 4 5 618201517  16142113111219 1 2 3
                                        7 9 810 4 5 6 1 2 3   1 2 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.68409     1  1  s    0.99354
    2.1     2.00000    -1.31394     1  1  d2-  1.00015
    3.1     2.00000    -1.31394     1  1  d2+  1.00015
    4.1     2.00000    -1.31394     1  1  d1+  1.00015
    5.1     2.00000    -1.31394     1  1  d1-  1.00015
    6.1     2.00000    -1.31394     1  1  d0   1.00015
    7.1     1.99088    -0.68241     1  1  s   -0.43337    1  5  s    0.60528    1  6  s    0.46367
    1.2     2.00000    -4.26179     1  1  px   0.99994
    2.2     2.00000    -4.26179     1  1  py   0.99994
    3.2     2.00000    -4.26179     1  1  pz   0.99994
    4.2     1.00006    -0.13766     1  1  pz  -0.27155    1  5  pz   0.45655    1  6  pz   0.38656
    5.2     1.00006    -0.13766     1  1  py  -0.27155    1  5  py   0.45655    1  6  py   0.38656
    6.2     1.00006    -0.13766     1  1  px  -0.27155    1  5  px   0.45655    1  6  px   0.38656
    7.2     0.00298     0.49026     1  1  px   0.42824    1  4  px  -1.17751    1  5  px  -0.26410    1  6  px   0.83393
                                    1  7  px   0.27641
    8.2     0.00298     0.49026     1  1  py   0.42824    1  4  py  -1.17751    1  5  py  -0.26410    1  6  py   0.83393
                                    1  7  py   0.27641
    9.2     0.00298     0.49026     1  1  pz   0.42824    1  4  pz  -1.17751    1  5  pz  -0.26410    1  6  pz   0.83393
                                    1  7  pz   0.27641
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99738777
 
 Energy:     -213.59754916
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba000       0.79795712      0.00026888     -0.00005070     -0.00000019     -0.15870448      0.00000000      0.00000000
 2 aab000      -0.26153646     -0.00007606     -0.00000100      0.00000006      0.77040342     -0.00000000     -0.00000000
 2 2a0000       0.00000016      0.00000007     -0.00000005      0.70458645     -0.00000000     -0.00000002      0.00000001
 2 0a2000      -0.00000016     -0.00000007      0.00000005     -0.70458645      0.00000000     -0.00000002      0.00000001
 2 a20000       0.00004826     -0.00014283      0.70458643      0.00000005      0.00001728      0.00000015      0.69963302
 2 a02000      -0.00004826      0.00014283     -0.70458643     -0.00000005     -0.00001728      0.00000015      0.69963303
 2 02a000       0.00023976     -0.70458639     -0.00014284      0.00000007      0.00001183      0.69963302     -0.00000015
 2 20a000      -0.00023976      0.70458639      0.00014284     -0.00000007     -0.00001183      0.69963303     -0.00000015
 2 baa000      -0.53642066     -0.00019282      0.00005171      0.00000012     -0.61169893      0.00000000      0.00000000
 0 22a000      -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.11474422      0.00000002
 0 2a2000      -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 0 a22000      -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000002     -0.11474421
 
 Energy:     -213.54195409   -213.54195409   -213.54195409   -213.54195409   -213.54195409   -213.51596005   -213.51596005

 State:              8
 2 aba000       0.00000000
 2 aab000      -0.00000000
 2 2a0000       0.69963302
 2 0a2000       0.69963303
 2 a20000      -0.00000001
 2 a02000      -0.00000001
 2 02a000       0.00000002
 2 20a000       0.00000002
 2 baa000      -0.00000000
 0 22a000      -0.00000000
 0 2a2000      -0.11474422
 0 a22000       0.00000000
 
 Energy:     -213.51596005
 


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
 CPU TIMES  *        16.93     10.58      6.15
 REAL TIME  *        19.77 SEC
 DISK USED  *        88.44 MB (local),        2.28 GB (total)
 SF USED    *       148.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5975492  -0.0
    -213.5419541   6.0
    -213.5419541   6.0
    -213.5419541   6.0
    -213.5419541   6.0
    -213.5419541   6.0
    -213.5159601   2.0
    -213.5159601   2.0
    -213.5159601   2.0
                                                  


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


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.59754916

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3779D-06

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.38D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:      12620623
 Number of doubly external configurations:       3891926
 Total number of contracted configurations:     16546229
 Total number of uncontracted configurations:  965890508

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.67 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3275162 words, CPU-time:      0.34 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59754916    -0.00000000    -0.99429477  0.56D-01  0.10D+00     2.45
    2     1     1     1.10048959    -0.79146858  -214.38901775    -0.79146858    -0.02785686  0.36D-02  0.19D-02    74.37
    3     1     1     1.08790702    -0.81701302  -214.41456219    -0.02554444    -0.00033895  0.41D-04  0.30D-04   146.14
    4     1     1     1.08762012    -0.81735167  -214.41490083    -0.00033864    -0.00001072  0.20D-05  0.12D-05   217.76
    5     1     1     1.08771188    -0.81736352  -214.41491268    -0.00001185    -0.00000054  0.36D-07  0.97D-07   289.29
    6     1     1     1.08773325    -0.81736413  -214.41491330    -0.00000062    -0.00000003  0.26D-08  0.52D-08   360.97


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.8%
 S   0.9%  70.7%
 P   0.2%  20.3%   2.4%

 Initialization:   0.4%
 Other:            4.2%

 Total CPU:      361.0 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9561591


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95805215 (fixed)   0.95826839 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00161148   -0.00495137   -0.00575371
 Singles      0.02115578   -0.10181767   -0.10932844
 Pairs        0.06671885   -0.71059505   -0.70228199
 Total        1.08948611   -0.81736409   -0.81736413
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59754916
 Nuclear energy                         0.00000000
 Kinetic energy                        69.50527987
 One electron energy                 -372.41665006
 Two electron energy                  158.00173676
 Virial quotient                       -3.08487231
 Correlation energy                    -0.81736413
 !MRCI STATE 1.2 Energy              -214.414913297642

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.48805604 (Davidson, fixed reference)
 Cluster corrected energies          -214.48765419 (Davidson, relaxed reference)

 Cluster corrected energies          -214.48575855 (Pople, fixed reference)
 Cluster corrected energies          -214.48534018 (Pople, relaxed reference)



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
 CPU TIMES  *       379.60    362.66     10.58      6.15
 REAL TIME  *       388.15 SEC
 DISK USED  *       217.36 MB (local),        4.04 GB (total)
 SF USED    *         1.78 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.48765419  AU                              


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


 Number of p-space configurations:  11

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.54195409
     2      -213.54195409
     3      -213.54195409
     4      -213.54195409
     5      -213.54195409
     6      -213.51596005
     7      -213.51596005
     8      -213.51596005

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2940D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.7236D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.6823D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.7236D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.6823D-07

 Number of blocks in overlap matrix:   836   Smallest eigenvalue:  0.68D-07
 Number of N-2 electron functions:    1867
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:      15534476
 Number of doubly external configurations:      28946379
 Total number of contracted configurations:     44524941
 Total number of uncontracted configurations: 1275044416

 Diagonal Coupling coefficients finished.               Storage:  27621565 words, CPU-Time:     53.68 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3812132 words, CPU-time:      2.29 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.54195409     0.00000000    -0.98726138  0.64D-01  0.96D-01    68.78
    1     2     2     1.00000000     0.00000000  -213.54195409     0.00000000    -0.98797120  0.63D-01  0.97D-01    68.78
    1     3     3     1.00000000     0.00000000  -213.54195409     0.00000000    -0.98845223  0.63D-01  0.97D-01    68.78
    1     4     4     1.00000000     0.00000000  -213.54195409     0.00000000    -0.98824375  0.63D-01  0.97D-01    68.78
    1     5     5     1.00000000     0.00000000  -213.54195409     0.00000000    -0.98807541  0.64D-01  0.97D-01    68.78
    1     6     6     1.00000000     0.00000000  -213.51596005    -0.00000000    -0.97523511  0.48D-01  0.99D-01    68.78
    1     7     7     1.00000000     0.00000000  -213.51596005     0.00000000    -0.97539407  0.48D-01  0.99D-01    68.78
    1     8     8     1.00000000     0.00000000  -213.51596005     0.00000000    -0.97546378  0.48D-01  0.99D-01    68.78
    2     1     1     1.10328556    -0.80027768  -214.34223177    -0.80027768    -0.02731645  0.40D-02  0.16D-02  1550.09
    2     2     2     1.10338107    -0.80023070  -214.34218480    -0.80023070    -0.02737532  0.40D-02  0.17D-02  1550.09
    2     3     3     1.10350527    -0.80009532  -214.34204942    -0.80009532    -0.02751356  0.41D-02  0.16D-02  1550.09
    2     4     4     1.10332466    -0.80005872  -214.34201281    -0.80005872    -0.02752780  0.41D-02  0.16D-02  1550.09
    2     5     5     1.10352903    -0.79984935  -214.34180344    -0.79984935    -0.02775082  0.42D-02  0.16D-02  1550.09
    2     6     6     1.09723732    -0.79906341  -214.31502346    -0.79906341    -0.02548569  0.33D-02  0.17D-02  1550.09
    2     7     7     1.09732199    -0.79905690  -214.31501695    -0.79905690    -0.02549641  0.33D-02  0.17D-02  1550.09
    2     8     8     1.09723053    -0.79901027  -214.31497032    -0.79901027    -0.02552431  0.33D-02  0.17D-02  1550.09
    3     1     1     1.09167706    -0.82554020  -214.36749429    -0.02526252    -0.00058365  0.64D-04  0.74D-04  3031.86
    3     2     2     1.09169032    -0.82553861  -214.36749270    -0.02530791    -0.00058544  0.64D-04  0.74D-04  3031.86
    3     3     3     1.09168124    -0.82553132  -214.36748541    -0.02543599    -0.00059010  0.65D-04  0.75D-04  3031.86
    3     4     4     1.09165707    -0.82552821  -214.36748230    -0.02546949    -0.00059500  0.65D-04  0.75D-04  3031.86
    3     5     5     1.09164030    -0.82551368  -214.36746777    -0.02566433    -0.00060496  0.66D-04  0.76D-04  3031.86
    3     6     6     1.08915658    -0.82279127  -214.33875132    -0.02372786    -0.00059950  0.43D-04  0.93D-04  3031.86
    3     7     7     1.08917930    -0.82279021  -214.33875026    -0.02373331    -0.00060042  0.43D-04  0.93D-04  3031.86
    3     8     8     1.08912881    -0.82277992  -214.33873997    -0.02376964    -0.00060460  0.43D-04  0.94D-04  3031.86
    4     1     1     1.09159881    -0.82619858  -214.36815268    -0.00065839    -0.00005550  0.45D-05  0.92D-05  4513.81
    4     2     2     1.09160268    -0.82619826  -214.36815235    -0.00065965    -0.00005547  0.44D-05  0.92D-05  4513.81
    4     3     3     1.09160246    -0.82619789  -214.36815198    -0.00066657    -0.00005570  0.45D-05  0.93D-05  4513.81
    4     4     4     1.09159034    -0.82619684  -214.36815093    -0.00066862    -0.00005657  0.45D-05  0.94D-05  4513.81
    4     5     5     1.09159695    -0.82619676  -214.36815086    -0.00068309    -0.00005629  0.45D-05  0.94D-05  4513.81
    4     6     6     1.09010173    -0.82350687  -214.33946692    -0.00071560    -0.00007089  0.46D-05  0.12D-04  4513.81
    4     7     7     1.09009920    -0.82350629  -214.33946634    -0.00071608    -0.00007123  0.47D-05  0.12D-04  4513.81
    4     8     8     1.09008899    -0.82350416  -214.33946421    -0.00072424    -0.00007264  0.47D-05  0.12D-04  4513.81
    5     1     1     1.09202584    -0.82627339  -214.36822748    -0.00007481    -0.00000573  0.39D-06  0.86D-06  5997.28
    5     2     2     1.09202524    -0.82627336  -214.36822745    -0.00007510    -0.00000583  0.41D-06  0.86D-06  5997.28
    5     3     3     1.09202570    -0.82627331  -214.36822740    -0.00007542    -0.00000578  0.40D-06  0.86D-06  5997.28
    5     4     4     1.09202381    -0.82627314  -214.36822724    -0.00007631    -0.00000589  0.41D-06  0.87D-06  5997.28
    5     5     5     1.09202452    -0.82627310  -214.36822719    -0.00007634    -0.00000586  0.40D-06  0.88D-06  5997.28
    5     6     6     1.09093210    -0.82360314  -214.33956319    -0.00009627    -0.00000673  0.49D-06  0.96D-06  5997.28
    5     7     7     1.09093317    -0.82360313  -214.33956318    -0.00009684    -0.00000665  0.48D-06  0.95D-06  5997.28
    5     8     8     1.09093389    -0.82360288  -214.33956293    -0.00009872    -0.00000683  0.50D-06  0.97D-06  5997.28
    6     1     1     1.09205902    -0.82628059  -214.36823468    -0.00000720    -0.00000063  0.60D-07  0.83D-07  7479.06
    6     2     2     1.09205984    -0.82628059  -214.36823468    -0.00000723    -0.00000064  0.60D-07  0.83D-07  7479.06
    6     3     3     1.09205944    -0.82628048  -214.36823458    -0.00000717    -0.00000063  0.59D-07  0.82D-07  7479.06
    6     4     4     1.09205884    -0.82628047  -214.36823456    -0.00000732    -0.00000064  0.60D-07  0.84D-07  7479.06
    6     5     5     1.09206021    -0.82628043  -214.36823452    -0.00000733    -0.00000064  0.60D-07  0.84D-07  7479.06
    6     6     6     1.09093277    -0.82361123  -214.33957128    -0.00000809    -0.00000070  0.62D-07  0.96D-07  7479.06
    6     7     7     1.09093325    -0.82361112  -214.33957118    -0.00000800    -0.00000069  0.61D-07  0.95D-07  7479.06
    6     8     8     1.09093226    -0.82361109  -214.33957114    -0.00000820    -0.00000071  0.63D-07  0.99D-07  7479.06
    7     1     1     1.09209166    -0.82628133  -214.36823543    -0.00000075    -0.00000008  0.72D-08  0.11D-07  8961.94
    7     2     2     1.09209139    -0.82628133  -214.36823543    -0.00000075    -0.00000008  0.71D-08  0.11D-07  8961.94
    7     3     3     1.09209126    -0.82628122  -214.36823531    -0.00000074    -0.00000008  0.70D-08  0.11D-07  8961.94
    7     4     4     1.09209137    -0.82628122  -214.36823531    -0.00000075    -0.00000008  0.73D-08  0.12D-07  8961.94
    7     5     5     1.09209141    -0.82628119  -214.36823528    -0.00000075    -0.00000008  0.72D-08  0.11D-07  8961.94
    7     6     6     1.09096111    -0.82361207  -214.33957212    -0.00000084    -0.00000010  0.92D-08  0.14D-07  8961.94
    7     7     7     1.09096108    -0.82361195  -214.33957200    -0.00000083    -0.00000009  0.90D-08  0.13D-07  8961.94
    7     8     8     1.09096066    -0.82361194  -214.33957200    -0.00000086    -0.00000010  0.95D-08  0.14D-07  8961.94
    8     1     1     1.09209359    -0.82628143  -214.36823552    -0.00000009    -0.00000001  0.88D-09  0.18D-08 10444.44
    8     2     2     1.09209350    -0.82628143  -214.36823552    -0.00000009    -0.00000001  0.87D-09  0.18D-08 10444.44
    8     3     3     1.09209345    -0.82628131  -214.36823541    -0.00000009    -0.00000001  0.87D-09  0.18D-08 10444.44
    8     4     4     1.09209338    -0.82628131  -214.36823540    -0.00000009    -0.00000001  0.90D-09  0.18D-08 10444.44
    8     5     5     1.09209325    -0.82628128  -214.36823537    -0.00000009    -0.00000001  0.86D-09  0.18D-08 10444.44
    8     6     6     1.09096763    -0.82361218  -214.33957223    -0.00000012    -0.00000001  0.96D-09  0.22D-08 10444.44
    8     7     7     1.09096738    -0.82361206  -214.33957211    -0.00000011    -0.00000001  0.99D-09  0.22D-08 10444.44
    8     8     8     1.09096750    -0.82361206  -214.33957211    -0.00000012    -0.00000001  0.93D-09  0.21D-08 10444.44


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.3%  28.8%
 P   0.2%  33.1%  26.1%

 Initialization:   0.5%
 Other:           10.7%

 Total CPU:    10444.4 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000           0.0199796   0.4703819  -0.0000115   0.0000068   0.8291915   0.0000000  -0.0000000  -0.0000000
 2222222222//\000           0.0350045   0.8284521  -0.0000197  -0.0001923  -0.4708061   0.0000000   0.0000000  -0.0000000
 2222222222/20000           0.0000290   0.0001148  -0.0015607   0.6742458  -0.0000713  -0.0000561   0.6706170  -0.0114125
 222222222202/000          -0.0000789   0.0000197   0.6742458   0.0015607   0.0000000   0.0000551   0.0114125   0.6706169
 2222222222/02000          -0.0000290  -0.0001147   0.0015607  -0.6742436   0.0000713  -0.0000561   0.6706192  -0.0114125
 222222222220/000           0.0000789  -0.0000197  -0.6742436  -0.0015607  -0.0000000   0.0000551   0.0114125   0.6706192
 22222222220/2000           0.6736438  -0.0284999   0.0000797  -0.0000239  -0.0000643   0.6707151   0.0000552  -0.0000560
 22222222222/0000          -0.6736438   0.0284999  -0.0000797   0.0000239   0.0000643   0.6707151   0.0000552  -0.0000560
 22222202222/2000           0.0000001  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0972073  -0.0000080   0.0000081
 2222220222/22000          -0.0000000  -0.0000000   0.0000000  -0.0000002   0.0000000   0.0000081  -0.0971932   0.0016540
 222222022222/000           0.0000000  -0.0000000  -0.0000001  -0.0000000  -0.0000000  -0.0000080  -0.0016540  -0.0971932

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.007724   -0.000112    0.000041    0.955105    0.039663   -0.000000   -0.000000    0.000000
 2           0.180456    0.000028    0.000163   -0.040408    0.937903    0.000000    0.000000   -0.000000
 3          -0.000005    0.955957   -0.002213    0.000113   -0.000022    0.000002   -0.000000   -0.000000
 4           0.000068    0.002213    0.955957   -0.000034   -0.000180    0.000000    0.000002    0.000000
 5           0.938741    0.000000   -0.000101   -0.000091   -0.180621    0.000000    0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000079   -0.000080    0.956478
 7          -0.000000   -0.000000   -0.000002    0.000000    0.000000    0.016275    0.956339    0.000079
 8          -0.000000   -0.000002    0.000000    0.000000    0.000000    0.956339   -0.016275   -0.000080

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955960    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.955960    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.955960   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.955960    0.000000    0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.955960    0.000000   -0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.956478    0.000000   -0.000000
 7          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956478   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.956478


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95510515 (fixed)   0.95615103 (relaxed)   0.95595955 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00198475   -0.00600406   -0.65848352
 Singles      0.02407789   -0.10736846   -0.11630043
 Pairs        0.06819848   -0.00000002   -0.05149748
 Total        1.09426112   -0.11337254   -0.82628143
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54195409
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48056800
 One electron energy                 -372.26823171
 Two electron energy                  157.89999620
 Virial quotient                       -3.08529768
 Correlation energy                    -0.82628143
 !MRCI STATE 1.2 Energy              -214.368235519154

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44612174 (Davidson, fixed reference)
 Cluster corrected energies          -214.44575962 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44612174 (Davidson, rotated reference)

 Cluster corrected energies          -214.44489220 (Pople, fixed reference)
 Cluster corrected energies          -214.44450683 (Pople, relaxed reference)
 Cluster corrected energies          -214.44489220 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.93790273 (fixed)   0.95615108 (relaxed)   0.95595959 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00198476   -0.00600406   -0.65848362
 Singles      0.02407784   -0.10736843   -0.11630039
 Pairs        0.06819844    0.00000000   -0.05149742
 Total        1.09426103   -0.11337249   -0.82628143
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54195409
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48055498
 One electron energy                 -372.26821901
 Two electron energy                  157.89998349
 Virial quotient                       -3.08529826
 Correlation energy                    -0.82628143
 !MRCI STATE 2.2 Energy              -214.368235518892

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44612166 (Davidson, fixed reference)
 Cluster corrected energies          -214.44575954 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44612166 (Davidson, rotated reference)

 Cluster corrected energies          -214.44489212 (Pople, fixed reference)
 Cluster corrected energies          -214.44450674 (Pople, relaxed reference)
 Cluster corrected energies          -214.44489212 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95595704 (fixed)   0.95615110 (relaxed)   0.95595961 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00198475   -0.00600406   -0.65848363
 Singles      0.02407780   -0.10736833   -0.11630027
 Pairs        0.06819844    0.00000000   -0.05149741
 Total        1.09426098   -0.11337239   -0.82628131
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54195409
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48056597
 One electron energy                 -372.26822949
 Two electron energy                  157.89999408
 Virial quotient                       -3.08529777
 Correlation energy                    -0.82628131
 !MRCI STATE 3.2 Energy              -214.368235405376

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44612149 (Davidson, fixed reference)
 Cluster corrected energies          -214.44575938 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44612149 (Davidson, rotated reference)

 Cluster corrected energies          -214.44489195 (Pople, fixed reference)
 Cluster corrected energies          -214.44450658 (Pople, relaxed reference)
 Cluster corrected energies          -214.44489195 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95595706 (fixed)   0.95615113 (relaxed)   0.95595964 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00198475   -0.00600406   -0.65848369
 Singles      0.02407776   -0.10736830   -0.11630026
 Pairs        0.06819840   -0.00000000   -0.05149735
 Total        1.09426091   -0.11337237   -0.82628131
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54195409
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48056614
 One electron energy                 -372.26822890
 Two electron energy                  157.89999349
 Virial quotient                       -3.08529776
 Correlation energy                    -0.82628131
 !MRCI STATE 4.2 Energy              -214.368235403269

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44612144 (Davidson, fixed reference)
 Cluster corrected energies          -214.44575932 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44612144 (Davidson, rotated reference)

 Cluster corrected energies          -214.44489189 (Pople, fixed reference)
 Cluster corrected energies          -214.44450652 (Pople, relaxed reference)
 Cluster corrected energies          -214.44489189 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.93874110 (fixed)   0.95615118 (relaxed)   0.95595969 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00198476   -0.00600406   -0.65848381
 Singles      0.02407767   -0.10736824   -0.11630016
 Pairs        0.06819835   -0.00000000   -0.05149731
 Total        1.09426079   -0.11337230   -0.82628128
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54195409
 Nuclear energy                         0.00000000
 Kinetic energy                        69.48055142
 One electron energy                 -372.26821536
 Two electron energy                  157.89997999
 Virial quotient                       -3.08529842
 Correlation energy                    -0.82628128
 !MRCI STATE 5.2 Energy              -214.368235370463

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.44612129 (Davidson, fixed reference)
 Cluster corrected energies          -214.44575917 (Davidson, relaxed reference)
 Cluster corrected energies          -214.44612129 (Davidson, rotated reference)

 Cluster corrected energies          -214.44489174 (Pople, fixed reference)
 Cluster corrected energies          -214.44450636 (Pople, relaxed reference)
 Cluster corrected energies          -214.44489174 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95647754 (fixed)   0.95668434 (relaxed)   0.95647755 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00193275   -0.00577667   -0.00674108
 Singles      0.01972220   -0.09777483   -0.10430897
 Pairs        0.07142124   -0.72006068   -0.71256213
 Total        1.09307620   -0.82361218   -0.82361218
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51596005
 Nuclear energy                         0.00000000
 Kinetic energy                        69.47675639
 One electron energy                 -372.19113176
 Two electron energy                  157.85155953
 Virial quotient                       -3.08505439
 Correlation energy                    -0.82361218
 !MRCI STATE 6.2 Energy              -214.339572234035

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41623092 (Davidson, fixed reference)
 Cluster corrected energies          -214.41584177 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41623092 (Davidson, rotated reference)

 Cluster corrected energies          -214.41494335 (Pople, fixed reference)
 Cluster corrected energies          -214.41453005 (Pople, relaxed reference)
 Cluster corrected energies          -214.41494335 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95633919 (fixed)   0.95668445 (relaxed)   0.95647766 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00193274   -0.00577667   -0.66543398
 Singles      0.01972215   -0.09777478   -0.10430888
 Pairs        0.07142105   -0.00005924   -0.05386921
 Total        1.09307594   -0.10361069   -0.82361206
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51596005
 Nuclear energy                         0.00000000
 Kinetic energy                        69.47675389
 One electron energy                 -372.19112685
 Two electron energy                  157.85155474
 Virial quotient                       -3.08505450
 Correlation energy                    -0.82361206
 !MRCI STATE 7.2 Energy              -214.339572114549

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41623058 (Davidson, fixed reference)
 Cluster corrected energies          -214.41584144 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41623058 (Davidson, rotated reference)

 Cluster corrected energies          -214.41494299 (Pople, fixed reference)
 Cluster corrected energies          -214.41452971 (Pople, relaxed reference)
 Cluster corrected energies          -214.41494299 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95633914 (fixed)   0.95668440 (relaxed)   0.95647761 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00193274   -0.00577667   -0.66554318
 Singles      0.01972212   -0.09777472   -0.10430885
 Pairs        0.07142120    0.00006014   -0.05376003
 Total        1.09307606   -0.10349125   -0.82361206
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51596005
 Nuclear energy                         0.00000000
 Kinetic energy                        69.47675337
 One electron energy                 -372.19112518
 Two electron energy                  157.85155307
 Virial quotient                       -3.08505452
 Correlation energy                    -0.82361206
 !MRCI STATE 8.2 Energy              -214.339572113371

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.41623068 (Davidson, fixed reference)
 Cluster corrected energies          -214.41584153 (Davidson, relaxed reference)
 Cluster corrected energies          -214.41623068 (Davidson, rotated reference)

 Cluster corrected energies          -214.41494309 (Pople, fixed reference)
 Cluster corrected energies          -214.41452981 (Pople, relaxed reference)
 Cluster corrected energies          -214.41494309 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     2860.22       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *     11353.94  10974.34    362.66     10.58      6.15
 REAL TIME  *     11582.20 SEC
 DISK USED  *         2.88 GB (local),       41.37 GB (total)
 SF USED    *        26.93 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -214.44612174  AU                              
 SETTING HLSDIAG(3)     =      -214.44612166  AU                              
 SETTING HLSDIAG(4)     =      -214.44612149  AU                              
 SETTING HLSDIAG(5)     =      -214.44612144  AU                              
 SETTING HLSDIAG(6)     =      -214.44612129  AU                              
 SETTING HLSDIAG(7)     =      -214.41623092  AU                              
 SETTING HLSDIAG(8)     =      -214.41623058  AU                              
 SETTING HLSDIAG(9)     =      -214.41623068  AU                              


         HLSDIAG
    -214.4876542
    -214.4461217
    -214.4461217
    -214.4461215
    -214.4461214
    -214.4461213
    -214.4162309
    -214.4162306
    -214.4162307
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -214.414913
 Replaced energies:   -214.487654

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.368236   -214.368236   -214.368235   -214.368235   -214.368235   -214.339572   -214.339572   -214.339572
 Replaced energies:   -214.446122   -214.446122   -214.446121   -214.446121   -214.446121   -214.416231   -214.416231   -214.416231



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.48765419

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00   -6164.81
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.01      -0.00      -0.00      -0.51

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.01      -0.00      -0.60

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00   -3559.26
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.01       0.00       0.00       0.29

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00    9115.32       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      38.38      -1.55      -0.00      -0.89

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00    9115.34       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.53     -38.86      -0.01      -0.22

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    9115.37       0.00       0.00       0.00
                            0.01       0.00      -0.01      -0.00     -38.38       1.53      -0.00       0.00       0.16    4384.14

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    9115.39       0.00       0.00
                            0.00      -0.01      -0.00      -0.00       1.55      38.86      -0.00      -0.00     -66.27      10.15

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    9115.42       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.01      -0.16      66.27      -0.00      -0.21

   10   6.2  0.5  0.5   -6164.81       0.00   -3559.26       0.00       0.00       0.00       0.00       0.00       0.00   15675.60
                            0.51       0.60      -0.29      -0.00       0.89       0.22   -4384.14     -10.15       0.21      -0.00

   11   7.2  0.5  0.5      -0.51       0.00      -0.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          104.90   -7117.49     -60.56      -0.00    -110.23   -4364.42      -0.25       0.48   -2562.33      -0.47

   12   8.2  0.5  0.5       0.51       0.00       0.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         6163.92     121.12   -3558.74      -0.00    4382.74    -111.07       0.88      -0.16      43.19     -27.58

   13   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      76.83      -0.00      -0.01       0.55      -1.06
                           -0.00      -0.00       0.00       0.00       0.00       0.01       1.52      38.38       0.00       0.16

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00     -76.83      -0.00      -0.00       0.00      -0.02     -36.44
                           -0.00       0.00      -0.00      -0.00      -0.01       0.00      37.90      -1.54      -0.00      -1.12

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -38.43       0.00       0.37
                           -0.00       0.01       0.00      -0.01      -1.52     -37.90       0.00       0.00     -66.82      10.15

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.01      -0.00      38.43      -0.00      -0.00       0.90
                           -0.00       0.00      -0.01      -0.00     -38.38       1.54      -0.00      -0.00      -0.15   -4384.14

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.55       0.02      -0.00       0.00       0.00    5062.25
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      66.82       0.15      -0.00       0.67

   18   6.2  0.5 -0.5       0.00   -3559.26       0.00   -6164.81       1.06      36.44      -0.37      -0.90   -5062.25       0.00
                           -0.00       0.29       0.60      -0.51      -0.16       1.12     -10.15    4384.14      -0.67      -0.00

   19   7.2  0.5 -0.5       0.00      -0.29       0.00      -0.51      -0.52       0.12    4383.67     -64.45      -0.41       0.00
                           -0.00      60.56   -7117.49    -104.90    4382.76    -110.45       0.52       0.19     -42.95      27.58

   20   8.2  0.5 -0.5       0.00       0.30       0.00       0.51      -0.18      -0.75     -64.45   -4383.67       0.89       0.00
                           -0.00    3558.74     121.12   -6163.92     111.28    4400.85      -0.11      -1.38   -2499.19      -0.47


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5      -0.51       0.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -104.90   -6163.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00   -3559.26      -0.29       0.30
                         7117.49    -121.12       0.00      -0.00      -0.01      -0.00      -0.00      -0.29     -60.56   -3558.74

    3   1.2  1.5 -0.5      -0.29       0.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           60.56    3558.74      -0.00       0.00      -0.00       0.01      -0.00      -0.60    7117.49    -121.12

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00   -6164.81      -0.51       0.51
                            0.00       0.00      -0.00       0.00       0.01       0.00       0.00       0.51     104.90    6163.92

    5   1.2  0.5  0.5       0.00       0.00      -0.00     -76.83       0.00       0.01      -0.55       1.06      -0.52      -0.18
                          110.23   -4382.74      -0.00       0.01       1.52      38.38       0.00       0.16   -4382.76    -111.28

    6   2.2  0.5  0.5       0.00       0.00      76.83      -0.00       0.00      -0.00       0.02      36.44       0.12      -0.75
                         4364.42     111.07      -0.01      -0.00      37.90      -1.54      -0.00      -1.12     110.45   -4400.85

    7   3.2  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      38.43      -0.00      -0.37    4383.67     -64.45
                            0.25      -0.88      -1.52     -37.90      -0.00       0.00     -66.82      10.15      -0.52       0.11

    8   4.2  0.5  0.5       0.00       0.00      -0.01       0.00     -38.43      -0.00       0.00      -0.90     -64.45   -4383.67
                           -0.48       0.16     -38.38       1.54      -0.00       0.00      -0.15   -4384.14      -0.19       1.38

    9   5.2  0.5  0.5       0.00       0.00       0.55      -0.02       0.00      -0.00       0.00   -5062.25      -0.41       0.89
                         2562.33     -43.19      -0.00       0.00      66.82       0.15       0.00       0.67      42.95    2499.19

   10   6.2  0.5  0.5       0.00       0.00      -1.06     -36.44       0.37       0.90    5062.25       0.00       0.00       0.00
                            0.47      27.58      -0.16       1.12     -10.15    4384.14      -0.67       0.00     -27.58       0.47

   11   7.2  0.5  0.5   15675.67       0.00       0.52      -0.12   -4383.67      64.45       0.41      -0.00       0.00     -27.56
                           -0.00       0.00    4382.76    -110.45       0.52       0.19     -42.95      27.58      -0.00      -0.00

   12   8.2  0.5  0.5       0.00   15675.65       0.18       0.75      64.45    4383.67      -0.89      -0.00      27.56      -0.00
                           -0.00      -0.00     111.28    4400.85      -0.11      -1.38   -2499.19      -0.47       0.00       0.00

   13   1.2  0.5 -0.5       0.52       0.18    9115.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -4382.76    -111.28       0.00      -0.00     -38.38       1.55       0.00       0.89    -110.23    4382.74

   14   2.2  0.5 -0.5      -0.12       0.75       0.00    9115.34       0.00       0.00       0.00       0.00       0.00       0.00
                          110.45   -4400.85       0.00       0.00       1.53      38.86       0.01       0.22   -4364.42    -111.07

   15   3.2  0.5 -0.5   -4383.67      64.45       0.00       0.00    9115.37       0.00       0.00       0.00       0.00       0.00
                           -0.52       0.11      38.38      -1.53       0.00      -0.00      -0.16   -4384.14      -0.25       0.88

   16   4.2  0.5 -0.5      64.45    4383.67       0.00       0.00       0.00    9115.39       0.00       0.00       0.00       0.00
                           -0.19       1.38      -1.55     -38.86       0.00       0.00      66.27     -10.15       0.48      -0.16

   17   5.2  0.5 -0.5       0.41      -0.89       0.00       0.00       0.00       0.00    9115.42       0.00       0.00       0.00
                           42.95    2499.19      -0.00      -0.01       0.16     -66.27       0.00       0.21   -2562.33      43.19

   18   6.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00   15675.60       0.00       0.00
                          -27.58       0.47      -0.89      -0.22    4384.14      10.15      -0.21       0.00      -0.47     -27.58

   19   7.2  0.5 -0.5       0.00      27.56       0.00       0.00       0.00       0.00       0.00       0.00   15675.67       0.00
                            0.00      -0.00     110.23    4364.42       0.25      -0.48    2562.33       0.47       0.00      -0.00

   20   8.2  0.5 -0.5     -27.56      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15675.65
                            0.00      -0.00   -4382.74     111.07      -0.88       0.16     -43.19      27.58       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -214.51186702    -0.02421283    -5314.10      0.00000000        0.00      0.0000
     2  -214.51186702    -0.02421283    -5314.10      0.00000000        0.00      0.0000
     3  -214.51186699    -0.02421280    -5314.09      0.00000003        0.01      0.0000
     4  -214.51186699    -0.02421280    -5314.09      0.00000003        0.01      0.0000
     5  -214.46403512     0.02361908     5183.79      0.04783191    10497.89      1.3016
     6  -214.46403512     0.02361908     5183.79      0.04783191    10497.89      1.3016
     7  -214.46403500     0.02361920     5183.81      0.04783202    10497.92      1.3016
     8  -214.46403500     0.02361920     5183.81      0.04783202    10497.92      1.3016
     9  -214.44577162     0.04188257     9192.16      0.06609540    14506.26      1.7985
    10  -214.44577162     0.04188257     9192.16      0.06609540    14506.26      1.7985
    11  -214.44577142     0.04188277     9192.21      0.06609560    14506.31      1.7986
    12  -214.44577142     0.04188277     9192.21      0.06609560    14506.31      1.7986
    13  -214.44577126     0.04188293     9192.24      0.06609576    14506.34      1.7986
    14  -214.44577126     0.04188293     9192.24      0.06609576    14506.34      1.7986
    15  -214.41648203     0.07117217    15620.49      0.09538499    20934.59      2.5956
    16  -214.41648203     0.07117217    15620.49      0.09538499    20934.59      2.5956
    17  -214.37450389     0.11315031    24833.62      0.13736314    30147.72      3.7378
    18  -214.37450389     0.11315031    24833.62      0.13736314    30147.72      3.7378
    19  -214.37450384     0.11315035    24833.63      0.13736318    30147.73      3.7378
    20  -214.37450384     0.11315035    24833.63      0.13736318    30147.73      3.7378


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.005606997   0.701583009  -0.393281600   0.000000000  -0.004432310  -0.245541386   0.046396003   0.456956248
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.387429312   0.010473153   0.013159718   0.699726752  -0.308767419   0.005044392  -0.066930337   0.006511253
                        -0.066775715  -0.000515567   0.000032287   0.049593508   0.339942948  -0.006118953  -0.234986155   0.023868138

    3    1.2  1.5 -0.5  -0.010408962   0.393141771   0.701482001  -0.013128798   0.007921277   0.459236814   0.024738667   0.244332049
                         0.001267373   0.000129630   0.000213181  -0.000902152   0.000375288  -0.000275450  -0.000287711  -0.000115158

    4    1.2  1.5 -1.5   0.691428032   0.005525839  -0.000000000  -0.392289044   0.164980431  -0.002978090  -0.125381989   0.012730372
                        -0.118936936  -0.000950535   0.000000000  -0.027923514  -0.181857168   0.003282735  -0.439418217   0.044615319

    5    1.2  0.5  0.5   0.001482157   0.002792267  -0.211989009   0.011950330   0.023036295   0.502090846  -0.001951839  -0.016257448
                        -0.000256222  -0.000007812  -0.000035694   0.000836358  -0.015424593   0.000022164  -0.001002604  -0.000069461

    6    2.2  0.5  0.5  -0.004257941   0.001529456   0.011967607   0.211433359   0.337197768  -0.026905045  -0.005550160   0.001496824
                         0.000734919   0.000005805   0.000006231   0.014984099  -0.371832063   0.006714783  -0.019070587   0.001946171

    7    3.2  0.5  0.5   0.000217332   0.000029338   0.000023567  -0.000228038   0.000085637   0.000282673   0.001223121  -0.000005369
                         0.002697504  -0.182506449  -0.108471803   0.003241188   0.004863664   0.265577197   0.042824488   0.425135552

    8    4.2  0.5  0.5   0.031424471   0.000250925   0.000007312   0.007335573  -0.175725701   0.003154694  -0.424454410   0.043096841
                         0.182549970   0.001036433  -0.000251066  -0.103564213  -0.159292853   0.003490373   0.121270788  -0.011318813

    9    5.2  0.5  0.5   0.209204756   0.002657603   0.001779030   0.004198431   0.013565874  -0.000034042   0.137224846  -0.013792185
                        -0.036024095  -0.000285483   0.000004318   0.000281293  -0.014716752   0.000257163   0.480957690  -0.048837493

   10    6.2  0.5  0.5  -0.005009601   0.400213531   0.005051066  -0.003264882  -0.000073107  -0.008240045  -0.025502033  -0.251430589
                         0.000299224   0.000015023   0.000080752  -0.000253899  -0.000103947   0.000049437   0.000068229   0.000039125

   11    7.2  0.5  0.5   0.033222153   0.000288924  -0.000016553  -0.024674490   0.165011510  -0.002971985  -0.114066310   0.011564510
                         0.192783845   0.001730929   0.012402707   0.348132807   0.149812779  -0.006101917   0.032717935  -0.000900744

   12    8.2  0.5  0.5  -0.000880378  -0.000070047  -0.000053189   0.000644700  -0.002717035  -0.000015617   0.001873412  -0.000204112
                        -0.003454364  -0.204613339   0.343900356  -0.009191910  -0.006336332  -0.214635617   0.012946577   0.132845577

   13    1.2  0.5 -0.5   0.002753176  -0.001504140  -0.011979552  -0.211456530  -0.337340824   0.026902229   0.004527597  -0.001499679
                        -0.000465664  -0.000001248  -0.000014242  -0.015015896   0.371882221  -0.006697687   0.015614427  -0.001601827

   14    2.2  0.5 -0.5   0.001506334   0.004320897  -0.211963639   0.011937846   0.023050848   0.501957577  -0.002282183  -0.019861537
                        -0.000265004   0.000002447  -0.000065766   0.000843500  -0.015415192   0.000094415  -0.000905375  -0.000104460

   15    3.2  0.5 -0.5   0.030968599   0.000243112  -0.000002666  -0.007678134   0.196506513  -0.003544672  -0.408817330   0.041516485
                         0.179859808   0.002695303   0.003249199   0.108199718   0.178651947  -0.003331345   0.116656027  -0.010574224

   16    4.2  0.5 -0.5   0.000071590  -0.000022557   0.000036137  -0.000010533   0.000465448  -0.000092671  -0.000940736   0.000152433
                        -0.001063970   0.185234954  -0.103823675   0.000250951   0.004681683   0.237178681  -0.044548493  -0.441438701

   17    5.2  0.5 -0.5   0.002667532  -0.212283688  -0.004207807   0.001774847   0.000213338   0.020014755   0.050747475   0.500150935
                        -0.000169184  -0.000036912  -0.000017511   0.000122006   0.000147576  -0.000159139  -0.000137442  -0.000009486

   18    6.2  0.5 -0.5   0.394418142   0.004987817   0.003274669   0.005044053   0.005573140   0.000027866   0.068951186  -0.006931768
                        -0.067861619  -0.000554367  -0.000021447   0.000278084  -0.006069670   0.000123988   0.241791391  -0.024541983

   19    7.2  0.5 -0.5  -0.000008696  -0.000059306  -0.000105673   0.000864097  -0.002522417  -0.000084946  -0.002306956   0.000164120
                        -0.001754855   0.195625456   0.349006118  -0.012372581  -0.006301071  -0.222873642  -0.011367813  -0.118665747

   20    8.2  0.5 -0.5   0.034618357   0.000282029   0.000009565   0.024364325  -0.158956702   0.002867336  -0.127690944   0.012963722
                         0.201663564  -0.003553612  -0.009214486  -0.343036203  -0.144226264   0.006269750   0.036647125  -0.001750838


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000094   0.000000378  -0.000000300  -0.000001291   0.000000392   0.000001115  -0.000000998  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000000708   0.000000162   0.000000262  -0.000000065  -0.000000791   0.000000277   0.000000010  -0.000000692
                        -0.000000095   0.000000024   0.000001082  -0.000000252  -0.000000762   0.000000268  -0.000000000  -0.000000469

    3    1.2  1.5 -0.5  -0.000000164  -0.000000714   0.000000260   0.000001113   0.000000385   0.000001099  -0.000000836  -0.000000009
                         0.000000001  -0.000000002   0.000000004   0.000000001  -0.000000001  -0.000000000   0.000000001  -0.000000006

    4    1.2  1.5 -1.5   0.000000374  -0.000000093  -0.000000302   0.000000070  -0.000000803   0.000000283   0.000000000  -0.000000827
                         0.000000051  -0.000000013  -0.000001255   0.000000292  -0.000000773   0.000000272  -0.000000000  -0.000000559

    5    1.2  0.5  0.5   0.136656218   0.715620098  -0.056835790  -0.254540386  -0.011805603  -0.030459565   0.000000558   0.000000001
                        -0.004811603   0.002194752   0.009322522  -0.002513898  -0.000936625   0.000279193  -0.000000001   0.000000000

    6    2.2  0.5  0.5   0.663864811  -0.125612708   0.087316285  -0.004582215  -0.028667888   0.011485264  -0.000000007  -0.000000275
                         0.088433520  -0.021726731   0.345359393  -0.080280431  -0.028218557   0.009925755   0.000000000  -0.000000186

    7    3.2  0.5  0.5  -0.000051712  -0.000063442  -0.000048105  -0.001268128  -0.000591873   0.000674886   0.000000003  -0.000000012
                        -0.011640429  -0.047607204   0.153194504   0.658797453  -0.123462158  -0.353369030   0.000002331   0.000000017

    8    4.2  0.5  0.5   0.005794811  -0.001452523  -0.546419848   0.127085756   0.336443292  -0.118450153   0.000000000   0.000000999
                        -0.043009869   0.010412369   0.132460830  -0.030616789  -0.350404846   0.121613774   0.000000005  -0.000001481

    9    5.2  0.5  0.5   0.001206117   0.000202761   0.020490440  -0.004456137   0.523504414  -0.183588183   0.000000005  -0.000001126
                         0.000051811  -0.000001149   0.083719991  -0.019513219   0.503051120  -0.177059379  -0.000000000  -0.000000762

   10    6.2  0.5  0.5  -0.000000014  -0.000000071   0.000000103   0.000000443  -0.000000470  -0.000001337   0.577346870   0.002041622
                         0.000000001   0.000000000  -0.000000001  -0.000000001   0.000000000  -0.000000001  -0.000190514   0.001371425

   11    7.2  0.5  0.5  -0.000000102   0.000000025   0.000001790  -0.000000416  -0.000001189   0.000000418  -0.000004928   0.323609706
                         0.000000760  -0.000000159  -0.000000440   0.000000063   0.000001241  -0.000000417   0.012282842  -0.477972484

   12    8.2  0.5  0.5   0.000000002  -0.000000000  -0.000000027   0.000000012   0.000000019  -0.000000008   0.000190419  -0.006838766
                         0.000000134   0.000000591  -0.000000587  -0.000002552   0.000000294   0.000000901   0.577219016   0.010203086

   13    1.2  0.5 -0.5   0.709332554  -0.134747593  -0.061997603   0.004233795   0.021743683  -0.009152335  -0.000000001   0.000000462
                         0.094679830  -0.023262834  -0.246887475   0.057439459   0.021332494  -0.007515604  -0.000000000   0.000000314

   14    2.2  0.5 -0.5  -0.127397483  -0.669725319  -0.079124331  -0.356202903  -0.015157859  -0.040223694   0.000000332  -0.000000006
                         0.004525979  -0.002229833   0.014327755  -0.004090905  -0.000819279   0.000434935  -0.000000001  -0.000000004

   15    3.2  0.5 -0.5  -0.006506174   0.001626690   0.640215886  -0.148931348   0.244664782  -0.086078524   0.000000000   0.000001309
                         0.047160572  -0.011526324  -0.155368312   0.035888884  -0.254969157   0.088508432   0.000000020  -0.000001929

   16    4.2  0.5 -0.5  -0.000029914   0.000079606  -0.000033436  -0.000941408   0.000939407  -0.000783615   0.000000002   0.000000003
                        -0.010513152  -0.043398414   0.130721750   0.562245174   0.169762970   0.485774670  -0.000001787  -0.000000004

   17    5.2  0.5 -0.5   0.000200739  -0.001202031  -0.020014210  -0.086190390   0.255058073   0.726027912   0.000001360   0.000000004
                         0.000028581  -0.000111906   0.000232948  -0.000334203  -0.000155596   0.000878853   0.000000000   0.000000003

   18    6.2  0.5 -0.5  -0.000000070   0.000000013   0.000000103  -0.000000023   0.000000964  -0.000000338  -0.002459464   0.478106118
                        -0.000000010   0.000000002   0.000000430  -0.000000100   0.000000926  -0.000000326  -0.000007966   0.323641754

   19    7.2  0.5 -0.5   0.000000004  -0.000000002  -0.000000036   0.000000009  -0.000000012   0.000000005  -0.000238843   0.006877920
                         0.000000161   0.000000767  -0.000000419  -0.000001843  -0.000000591  -0.000001719  -0.577218226  -0.010176564

   20    8.2  0.5 -0.5   0.000000080  -0.000000020  -0.000002478   0.000000577  -0.000000619   0.000000218  -0.000052219   0.323570040
                        -0.000000585   0.000000133   0.000000609  -0.000000111   0.000000654  -0.000000198   0.012282873  -0.478000270


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.000084572  -0.285111226   0.001495980   0.022736548
                         0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.022030725  -0.003949416  -0.236848998  -0.034022951
                         0.004269368  -0.000030425  -0.154716481   0.009814120

    3    1.2  1.5 -0.5   0.003881596  -0.022438588   0.022585299  -0.282849276
                        -0.000729401  -0.000300150   0.027272375  -0.005560946

    4    1.2  1.5 -1.5  -0.280604231   0.000083235   0.018787089  -0.001236120
                         0.050494323  -0.000014978   0.012806088  -0.000842593

    5    1.2  0.5  0.5   0.001978897  -0.137370557  -0.031056624   0.284289508
                        -0.000335759   0.000267651  -0.032920314   0.005755881

    6    2.2  0.5  0.5   0.137277077   0.001962300  -0.237338188  -0.044085397
                        -0.024465722  -0.000027744  -0.154799006   0.009687581

    7    3.2  0.5  0.5  -0.000577862  -0.000306117   0.026380268  -0.005339241
                        -0.002977170   0.180679331  -0.022698616   0.260543991

    8    4.2  0.5  0.5  -0.056375902   0.000021339  -0.014193657   0.000920619
                        -0.312982669   0.000511061   0.020922871  -0.000777000

    9    5.2  0.5  0.5  -0.282352384  -0.002136840  -0.115659035  -0.020427101
                         0.051015267  -0.000031622  -0.075040258   0.004730567

   10    6.2  0.5  0.5  -0.004344322   0.600346014  -0.029243941   0.283117317
                         0.000843521   0.000303253  -0.031761967   0.006490753

   11    7.2  0.5  0.5   0.009913523  -0.000027301  -0.359240321   0.022735005
                         0.051152426  -0.000143243   0.550370189   0.085493335

   12    8.2  0.5  0.5  -0.001016666  -0.000397923   0.037834435  -0.006877686
                        -0.005555349  -0.548240199  -0.032617289   0.373307524

   13    1.2  0.5 -0.5  -0.135246427  -0.002007079   0.238148848   0.044203896
                         0.024065448   0.000020019   0.155366601  -0.009709610

   14    2.2  0.5 -0.5   0.001936193  -0.139439998  -0.030971117   0.283299973
                        -0.000320226   0.000233340  -0.032835368   0.005768287

   15    3.2  0.5 -0.5  -0.032300300   0.000041458   0.142336491  -0.009013153
                        -0.177768965  -0.003032449  -0.218293386  -0.033614116

   16    4.2  0.5 -0.5  -0.000069510   0.000054255   0.000323067  -0.000056412
                        -0.000506762  -0.318019481   0.001160559   0.025282865

   17    5.2  0.5 -0.5  -0.002097461   0.286924005  -0.014214370   0.137833974
                         0.000409565   0.000203104  -0.015414162   0.003138196

   18    6.2  0.5 -0.5   0.590802128   0.004425039   0.237594181   0.042053661
                        -0.106622107   0.000060790   0.154099157  -0.009773446

   19    7.2  0.5 -0.5  -0.000001500  -0.000697516   0.066938909  -0.013151028
                         0.000145813   0.052099540  -0.057837472   0.657105778

   20    8.2  0.5 -0.5   0.096703869   0.000016720   0.204577988  -0.012891097
                         0.539644175  -0.005647586  -0.312335807  -0.048261285


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.003%  49.222%  15.467%   0.000%   0.002%   6.029%   0.215%  20.881%   0.000%   0.000%
    2    1.2  1.5  0.5  15.456%   0.011%   0.017%  49.208%  21.090%   0.006%   5.970%   0.061%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.011%  15.456%  49.208%   0.017%   0.006%  21.090%   0.061%   5.970%   0.000%   0.000%
    4    1.2  1.5 -1.5  49.222%   0.003%   0.000%  15.467%   6.029%   0.002%  20.881%   0.215%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.001%   4.494%   0.014%   0.077%  25.210%   0.000%   0.026%   1.870%  51.212%
    6    2.2  0.5  0.5   0.002%   0.000%   0.014%   4.493%  25.196%   0.077%   0.039%   0.001%  44.854%   1.625%
    7    3.2  0.5  0.5   0.001%   3.331%   1.177%   0.001%   0.002%   7.053%   0.184%  18.074%   0.014%   0.227%
    8    4.2  0.5  0.5   3.431%   0.000%   0.000%   1.078%   5.625%   0.002%  19.487%   0.199%   0.188%   0.011%
    9    5.2  0.5  0.5   4.506%   0.001%   0.000%   0.002%   0.040%   0.000%  25.015%   0.258%   0.000%   0.000%
   10    6.2  0.5  0.5   0.003%  16.017%   0.003%   0.001%   0.000%   0.007%   0.065%   6.322%   0.000%   0.000%
   11    7.2  0.5  0.5   3.827%   0.000%   0.015%  12.181%   4.967%   0.005%   1.408%   0.013%   0.000%   0.000%
   12    8.2  0.5  0.5   0.001%   4.187%  11.827%   0.008%   0.005%   4.607%   0.017%   1.765%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.001%   0.000%   0.014%   4.494%  25.210%   0.077%   0.026%   0.000%  51.212%   1.870%
   14    2.2  0.5 -0.5   0.000%   0.002%   4.493%   0.014%   0.077%  25.196%   0.001%   0.039%   1.625%  44.854%
   15    3.2  0.5 -0.5   3.331%   0.001%   0.001%   1.177%   7.053%   0.002%  18.074%   0.184%   0.227%   0.014%
   16    4.2  0.5 -0.5   0.000%   3.431%   1.078%   0.000%   0.002%   5.625%   0.199%  19.487%   0.011%   0.188%
   17    5.2  0.5 -0.5   0.001%   4.506%   0.002%   0.000%   0.000%   0.040%   0.258%  25.015%   0.000%   0.000%
   18    6.2  0.5 -0.5  16.017%   0.003%   0.001%   0.003%   0.007%   0.000%   6.322%   0.065%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   3.827%  12.181%   0.015%   0.005%   4.967%   0.013%   1.408%   0.000%   0.000%
   20    8.2  0.5 -0.5   4.187%   0.001%   0.008%  11.827%   4.607%   0.005%   1.765%   0.017%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.129%   0.000%   0.052%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.050%   0.002%   8.003%   0.125%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.050%   0.125%   8.003%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.129%   0.000%   0.052%   0.000%
    5    1.2  0.5  0.5   0.332%   6.480%   0.014%   0.093%   0.000%   0.000%   0.000%   1.887%   0.205%   8.085%
    6    2.2  0.5  0.5  12.690%   0.647%   0.162%   0.023%   0.000%   0.000%   1.944%   0.000%   8.029%   0.204%
    7    3.2  0.5  0.5   2.347%  43.402%   1.524%  12.487%   0.000%   0.000%   0.001%   3.265%   0.121%   6.791%
    8    4.2  0.5  0.5  31.612%   1.709%  23.598%   2.882%   0.000%   0.000%  10.114%   0.000%   0.064%   0.000%
    9    5.2  0.5  0.5   0.743%   0.040%  52.712%   6.505%   0.000%   0.000%   8.233%   0.000%   1.901%   0.044%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.333%   0.001%   0.002%  36.042%   0.186%   8.020%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.015%  33.318%   0.271%   0.000%  43.196%   0.783%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.318%   0.015%   0.003%  30.057%   0.250%  13.941%
   13    1.2  0.5 -0.5   6.480%   0.332%   0.093%   0.014%   0.000%   0.000%   1.887%   0.000%   8.085%   0.205%
   14    2.2  0.5 -0.5   0.647%  12.690%   0.023%   0.162%   0.000%   0.000%   0.000%   1.944%   0.204%   8.029%
   15    3.2  0.5 -0.5  43.402%   2.347%  12.487%   1.524%   0.000%   0.000%   3.265%   0.001%   6.791%   0.121%
   16    4.2  0.5 -0.5   1.709%  31.612%   2.882%  23.598%   0.000%   0.000%   0.000%  10.114%   0.000%   0.064%
   17    5.2  0.5 -0.5   0.040%   0.743%   6.505%  52.712%   0.000%   0.000%   0.000%   8.233%   0.044%   1.901%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%  33.333%  36.042%   0.002%   8.020%   0.186%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.318%   0.015%   0.000%   0.271%   0.783%  43.196%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.015%  33.318%  30.057%   0.003%  13.941%   0.250%


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

              2       6     2860.22       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     41161.81  29807.87  10974.34    362.66     10.58      6.15
 REAL TIME  *     41710.69 SEC
 DISK USED  *         2.88 GB (local),       41.37 GB (total)
 SF USED    *        26.93 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -214.374503842902

              CI              CI           MULTI
   -214.33957211   -214.41491330   -213.51596005
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
