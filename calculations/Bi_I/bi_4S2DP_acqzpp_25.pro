
 Working directory              : /wrk/irikura/molpro.f7xkktrphu/
 Global scratch directory       : /wrk/irikura/molpro.f7xkktrphu/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.f7xkktrphu/

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
 
 basis=aug-cc-pwCVQZ-PP
 
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
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 04-Nov-24          TIME: 17:33:15  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  21000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-PP
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =         8.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Bi   ECP ECP60MDF                 selected for group  1
 Library entry BI     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BI     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BI     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BI     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BI     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BI     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         294
 NUMBER OF SYMMETRY AOS:          227
 NUMBER OF CONTRACTIONS:          169   (   86Ag  +   83Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 2 3 4 5 6   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9
                                       101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       192021


 Eigenvalues of metric

         1 0.110E-05 0.332E-03 0.332E-03 0.332E-03 0.332E-03 0.332E-03 0.504E-03 0.159E-02
         2 0.703E-06 0.703E-06 0.703E-06 0.370E-03 0.370E-03 0.370E-03 0.405E-02 0.405E-02


 Contracted 2-electron integrals neglected if value below      1.0D-14
 AO integral compression algorithm  1   Integral accuracy      1.0D-14

     159.908 MB (compressed) written to integral file ( 21.6%)

     Node minimum: 5.767 MB, node maximum: 17.039 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    3731169.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    3731169      RECORD LENGTH: 524288

 Memory used in sort:       4.29 MW

 SORT1 READ    92659037. AND WROTE      698658. INTEGRALS IN      2 RECORDS. CPU TIME:     0.41 SEC, REAL TIME:     0.43 SEC
 SORT2 READ     9613375. AND WROTE    52200630. INTEGRALS IN    560 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.07 SEC

 Node minimum:     3726009.  Node maximum:     3731169. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.67      1.51
 REAL TIME  *         2.42 SEC
 DISK USED  *        29.74 MB (local),      660.89 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     153 (   79   74)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.492D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.348D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.817D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.492D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.828D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 3 5 6 1 1 4 2   6 3 5 1 4 2 6 3 5 9   7 8151410131112 1 4   2 6 3 5 7 915 81014
                                       111312 4 2 6 3 5 1 9   7 8151410111312 4 2   6 3 5 1 9 715 81410  111312 4 2 6 3 5 1 4
                                        6 2 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.649D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.649D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.234D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.234D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.859D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.859D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 1 2 3 1   2 3 6 4 8 510 7 9 3   2 1 4 6 5 810 7 9 4   6 5 810 7 9 1 3 2 4
                                        6 8 510 7 919112116  14171512132018 3 1 2   6 4 8 510 7 9 6 4 8   510 7 9 2 3 1 3 2 1
                                        3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.75758
 Weight factors for state symmetry  2:    0.03030   0.03030   0.03030   0.03030   0.03030   0.03030   0.03030   0.03030
 
 Number of orbital rotations:  1243  ( 24 closed/active, 696 closed/virtual, 0 active/active, 523 active/virtual )
 Total number of variables:    4473
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   15   26    0   -213.56784286    -213.58065557   -0.01281272    0.06730693 0.00078587 0.00000000  0.16E+01      2.30
   2    8   14    0   -213.58142596    -213.58169220   -0.00026624    0.03409960 0.00009095 0.00000000  0.14E+00      3.86
   3   10   18    0   -213.58169271    -213.58169271   -0.00000001    0.00005660 0.00000001 0.00000000  0.13E-02      5.63
   4    3    6    0   -213.58169271    -213.58169271   -0.00000000    0.00000003 0.00000001 0.00000000  0.93E-07      6.42

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.36E-08)
                       Final energy:   -213.58169271
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.597533192937
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.95828865
 One electron energy                          -372.81962466
 Two electron energy                           159.22209146
 Virial ratio                                    4.09748889
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.541938917755
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90843210
 One electron energy                          -372.64337857
 Two electron energy                           159.10143966
 Virial ratio                                    4.09892320
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.541938917755
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90843210
 One electron energy                          -372.64337857
 Two electron energy                           159.10143966
 Virial ratio                                    4.09892320
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.541938917678
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90843210
 One electron energy                          -372.64337858
 Two electron energy                           159.10143966
 Virial ratio                                    4.09892320
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.541938917668
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90843210
 One electron energy                          -372.64337858
 Two electron energy                           159.10143966
 Virial ratio                                    4.09892320
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.541938917646
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90843210
 One electron energy                          -372.64337858
 Two electron energy                           159.10143966
 Virial ratio                                    4.09892320
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.515945059085
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90036342
 One electron energy                          -372.58114378
 Two electron energy                           159.06519872
 Virial ratio                                    4.09890884
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.515945058935
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90036342
 One electron energy                          -372.58114378
 Two electron energy                           159.06519872
 Virial ratio                                    4.09890884
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.515945058917
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90036342
 One electron energy                          -372.58114378
 Two electron energy                           159.06519872
 Virial ratio                                    4.09890884
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.175022718954
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999997791622
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000002802756
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     2.824959001107
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.000000350961
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.999999649039
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.834654999347
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000002562841
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.999997254875
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.165360924642
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999649039
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.000000350961
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.990322281700
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     4.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999645538
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.999999942369
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.009680074251
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>    -0.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 4 5 2 6 1 1 3 5   6 4 2 1 4 2 6 3 513  10141511 812 7 9 1 6   2 3 5 413101514 912
                                        8 711 3 5 4 6 2 113  10 91415 812 711 3 5   4 2 6 11310 91415 8  12 711 4 3 5 2 6 1 4
                                        3 6 5 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 3   1 2 5 9 7 810 6 4 3   2 1 7 9 810 4 6 5 9   7 4 810 6 5 3 2 1 9
                                        7 4 810 6 518201517  11141621131912 3 1 2   7 9 4 810 6 5 7 9 4  10 8 6 5 1 3 2 1 2 3
                                        1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.68410     1  1  s    1.00079
    2.1     2.00000    -1.31395     1  1  d2-  1.00006
    3.1     2.00000    -1.31395     1  1  d1+  1.00006
    4.1     2.00000    -1.31395     1  1  d2+  1.00006
    5.1     2.00000    -1.31395     1  1  d0   1.00006
    6.1     2.00000    -1.31395     1  1  d1-  1.00006
    7.1     1.99088    -0.68242     1  2  s    1.00704
    1.2     2.00000    -4.26180     1  1  px   0.99963
    2.2     2.00000    -4.26180     1  1  pz   0.99963
    3.2     2.00000    -4.26180     1  1  py   0.99963
    4.2     1.00006    -0.13767     1  2  py   0.98634
    5.2     1.00006    -0.13767     1  2  pz   0.98634
    6.2     1.00006    -0.13767     1  2  px   0.98634
    7.2     0.00298     0.48984     1  2  px  -1.98952    1  3  px  -0.38979    1  4  px  -0.39485    1  5  px   1.73949
                                    1  6  px   0.94286    1  9  px   0.25192
    8.2     0.00298     0.48984     1  2  pz  -1.98952    1  3  pz  -0.38979    1  4  pz  -0.39485    1  5  pz   1.73949
                                    1  6  pz   0.94286    1  9  pz   0.25192
    9.2     0.00298     0.48984     1  2  py  -1.98952    1  3  py  -0.38979    1  4  py  -0.39485    1  5  py   1.73949
                                    1  6  py   0.94286    1  9  py   0.25192
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99738708
 
 Energy:     -213.59753319
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba000      -0.04001811      0.00000777     -0.00053238     -0.00019906      0.81260002      0.00000000     -0.00000000
 2 baa000       0.72374145     -0.00014055      0.00038671      0.00011873     -0.37164322      0.00000000      0.00000000
 2 2a0000       0.00013683      0.70458527      0.00000000     -0.00000000      0.00000000      0.69963171     -0.00000000
 2 0a2000      -0.00013683     -0.70458527     -0.00000000     -0.00000000     -0.00000000      0.69963171     -0.00000000
 2 a02000       0.00002754     -0.00000001      0.00058400     -0.70458502     -0.00017086     -0.00000000      0.00041448
 2 a20000      -0.00002754      0.00000001     -0.00058400      0.70458501      0.00017086      0.00000000      0.00041448
 2 20a000      -0.00014308      0.00000003      0.70458488      0.00058388      0.00045471      0.00000000      0.69963159
 2 02a000       0.00014308     -0.00000003     -0.70458487     -0.00058388     -0.00045471      0.00000000      0.69963159
 2 aab000      -0.68372335      0.00013278      0.00014566      0.00008033     -0.44095680     -0.00000000      0.00000000
 0 2a2000       0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.11474150     -0.00000000
 0 22a000       0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.11474148
 0 a22000      -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00006798
 
 Energy:     -213.54193892   -213.54193892   -213.54193892   -213.54193892   -213.54193892   -213.51594506   -213.51594506

 State:              8
 2 aba000      -0.00000000
 2 baa000       0.00000000
 2 2a0000      -0.00000000
 2 0a2000      -0.00000000
 2 a02000       0.69963159
 2 a20000       0.69963159
 2 20a000      -0.00041448
 2 02a000      -0.00041448
 2 aab000      -0.00000000
 0 2a2000      -0.00000000
 0 22a000       0.00006798
 0 a22000      -0.11474148
 
 Energy:     -213.51594506
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.79       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         7.77      6.10      1.51
 REAL TIME  *         9.45 SEC
 DISK USED  *        53.25 MB (local),      990.06 MB (total)
 SF USED    *        60.62 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5975332  -0.0
    -213.5419389   6.0
    -213.5419389   6.0
    -213.5419389   6.0
    -213.5419389   6.0
    -213.5419389   6.0
    -213.5159451   2.0
    -213.5159451   2.0
    -213.5159451   2.0
                                                  


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
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.59753319

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3776D-06

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.38D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       7754546
 Number of doubly external configurations:       1469750
 Total number of contracted configurations:      9257976
 Total number of uncontracted configurations:  367286991

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.67 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1796666 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59753319    -0.00000000    -0.93840102  0.58D-01  0.10D+00     2.03
    2     1     1     1.09846887    -0.73765760  -214.33519080    -0.73765760    -0.02598066  0.34D-02  0.18D-02    34.37
    3     1     1     1.08748202    -0.76139872  -214.35893192    -0.02374112    -0.00033484  0.39D-04  0.32D-04    66.60
    4     1     1     1.08731631    -0.76173300  -214.35926619    -0.00033427    -0.00001114  0.21D-05  0.14D-05    98.69
    5     1     1     1.08742848    -0.76174538  -214.35927858    -0.00001239    -0.00000058  0.43D-07  0.11D-06   130.58
    6     1     1     1.08744970    -0.76174604  -214.35927923    -0.00000066    -0.00000003  0.30D-08  0.60D-08   162.57


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   1.6%  54.9%
 P   0.4%  35.6%   2.6%

 Initialization:   0.6%
 Other:            2.4%

 Total CPU:      162.6 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9562811


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95815245 (fixed)   0.95837268 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00166292   -0.00503739   -0.00578758
 Singles      0.02206848   -0.10319421   -0.11017237
 Pairs        0.06552663   -0.65351439   -0.64578609
 Total        1.08925804   -0.76174599   -0.76174604
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59753319
 Nuclear energy                         0.00000000
 Kinetic energy                        69.41958765
 One electron energy                 -372.41679171
 Two electron energy                  158.05751248
 Virial quotient                       -3.08787889
 Correlation energy                    -0.76174604
 !MRCI STATE 1.2 Energy              -214.359279231873

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.42727119 (Davidson, fixed reference)
 Cluster corrected energies          -214.42688988 (Davidson, relaxed reference)

 Cluster corrected energies          -214.42512285 (Pople, fixed reference)
 Cluster corrected energies          -214.42472602 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       72.94       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       171.60    163.83      6.10      1.51
 REAL TIME  *       176.19 SEC
 DISK USED  *       125.40 MB (local),        1.95 GB (total)
 SF USED    *       995.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.42688988  AU                              


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
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  11

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.54193892
     2      -213.54193892
     3      -213.54193892
     4      -213.54193892
     5      -213.54193892
     6      -213.51594506
     7      -213.51594506
     8      -213.51594506

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2940D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.6824D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.6824D-07

 Number of blocks in overlap matrix:   816   Smallest eigenvalue:  0.68D-07
 Number of N-2 electron functions:    1866
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       9543892
 Number of doubly external configurations:      10924629
 Total number of contracted configurations:     20512607
 Total number of uncontracted configurations:  484809336

 Diagonal Coupling coefficients finished.               Storage:  27632080 words, CPU-Time:     53.51 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2178200 words, CPU-time:      0.73 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.54193892    -0.00000000    -0.93133485  0.65D-01  0.96D-01    65.36
    1     2     2     1.00000000     0.00000000  -213.54193892     0.00000000    -0.93147594  0.64D-01  0.96D-01    65.36
    1     3     3     1.00000000     0.00000000  -213.54193892    -0.00000000    -0.93226741  0.64D-01  0.97D-01    65.36
    1     4     4     1.00000000     0.00000000  -213.54193892    -0.00000000    -0.93245687  0.65D-01  0.97D-01    65.36
    1     5     5     1.00000000     0.00000000  -213.54193892     0.00000000    -0.93200616  0.65D-01  0.96D-01    65.36
    1     6     6     1.00000000     0.00000000  -213.51594506    -0.00000000    -0.91851571  0.49D-01  0.98D-01    65.36
    1     7     7     1.00000000     0.00000000  -213.51594506    -0.00000000    -0.91939818  0.49D-01  0.99D-01    65.36
    1     8     8     1.00000000     0.00000000  -213.51594506    -0.00000000    -0.91942147  0.49D-01  0.99D-01    65.36
    2     1     1     1.10138298    -0.74619766  -214.28813658    -0.74619766    -0.02559025  0.37D-02  0.17D-02   662.52
    2     2     2     1.10130417    -0.74616440  -214.28810331    -0.74616440    -0.02557065  0.37D-02  0.16D-02   662.52
    2     3     3     1.10156169    -0.74604527  -214.28798419    -0.74604527    -0.02575224  0.38D-02  0.17D-02   662.52
    2     4     4     1.10132711    -0.74599608  -214.28793500    -0.74599608    -0.02575641  0.38D-02  0.17D-02   662.52
    2     5     5     1.10165651    -0.74571564  -214.28765455    -0.74571564    -0.02607268  0.39D-02  0.17D-02   662.52
    2     6     6     1.09538517    -0.74448425  -214.26042931    -0.74448425    -0.02401663  0.31D-02  0.17D-02   662.52
    2     7     7     1.09541050    -0.74446531  -214.26041037    -0.74446531    -0.02403941  0.31D-02  0.17D-02   662.52
    2     8     8     1.09518537    -0.74438695  -214.26033201    -0.74438695    -0.02404267  0.31D-02  0.17D-02   662.52
    3     1     1     1.09147776    -0.76979266  -214.31173158    -0.02359500    -0.00058592  0.59D-04  0.80D-04  1258.67
    3     2     2     1.09148045    -0.76978651  -214.31172543    -0.02362212    -0.00059108  0.60D-04  0.81D-04  1258.67
    3     3     3     1.09144075    -0.76978132  -214.31172024    -0.02373605    -0.00059175  0.60D-04  0.81D-04  1258.67
    3     4     4     1.09144160    -0.76977644  -214.31171535    -0.02378035    -0.00060029  0.61D-04  0.82D-04  1258.67
    3     5     5     1.09142802    -0.76976461  -214.31170353    -0.02404898    -0.00060834  0.62D-04  0.83D-04  1258.67
    3     6     6     1.08882217    -0.76684551  -214.28279057    -0.02236126    -0.00061728  0.42D-04  0.10D-03  1258.67
    3     7     7     1.08881830    -0.76684521  -214.28279027    -0.02237990    -0.00061709  0.42D-04  0.10D-03  1258.67
    3     8     8     1.08871632    -0.76681728  -214.28276234    -0.02243033    -0.00063089  0.42D-04  0.10D-03  1258.67
    4     1     1     1.09161114    -0.77045480  -214.31239372    -0.00066214    -0.00005872  0.48D-05  0.10D-04  1854.49
    4     2     2     1.09161590    -0.77045417  -214.31239308    -0.00066765    -0.00005883  0.48D-05  0.10D-04  1854.49
    4     3     3     1.09161481    -0.77045382  -214.31239273    -0.00067249    -0.00005901  0.48D-05  0.10D-04  1854.49
    4     4     4     1.09160938    -0.77045296  -214.31239188    -0.00067653    -0.00005974  0.48D-05  0.10D-04  1854.49
    4     5     5     1.09160444    -0.77045288  -214.31239180    -0.00068827    -0.00005990  0.48D-05  0.10D-04  1854.49
    4     6     6     1.09000068    -0.76758425  -214.28352931    -0.00073874    -0.00007478  0.51D-05  0.13D-04  1854.49
    4     7     7     1.09000003    -0.76758418  -214.28352924    -0.00073897    -0.00007489  0.51D-05  0.13D-04  1854.49
    4     8     8     1.08998231    -0.76757974  -214.28352480    -0.00076246    -0.00007783  0.52D-05  0.13D-04  1854.49
    5     1     1     1.09207625    -0.77053394  -214.31247286    -0.00007914    -0.00000618  0.43D-06  0.96D-06  2450.78
    5     2     2     1.09207645    -0.77053393  -214.31247285    -0.00007977    -0.00000626  0.45D-06  0.95D-06  2450.78
    5     3     3     1.09207527    -0.77053382  -214.31247273    -0.00008000    -0.00000628  0.44D-06  0.96D-06  2450.78
    5     4     4     1.09207705    -0.77053372  -214.31247263    -0.00008075    -0.00000634  0.45D-06  0.97D-06  2450.78
    5     5     5     1.09207638    -0.77053365  -214.31247257    -0.00008077    -0.00000632  0.44D-06  0.98D-06  2450.78
    5     6     6     1.09086746    -0.76768500  -214.28363006    -0.00010074    -0.00000717  0.52D-06  0.11D-05  2450.78
    5     7     7     1.09086714    -0.76768491  -214.28362997    -0.00010073    -0.00000718  0.52D-06  0.11D-05  2450.78
    5     8     8     1.09086842    -0.76768444  -214.28362950    -0.00010470    -0.00000749  0.53D-06  0.11D-05  2450.78
    6     1     1     1.09210111    -0.77054162  -214.31248054    -0.00000768    -0.00000070  0.68D-07  0.96D-07  3045.67
    6     2     2     1.09210188    -0.77054162  -214.31248054    -0.00000769    -0.00000071  0.68D-07  0.96D-07  3045.67
    6     3     3     1.09210033    -0.77054155  -214.31248046    -0.00000773    -0.00000072  0.69D-07  0.99D-07  3045.67
    6     4     4     1.09210067    -0.77054154  -214.31248046    -0.00000782    -0.00000070  0.68D-07  0.97D-07  3045.67
    6     5     5     1.09210081    -0.77054151  -214.31248043    -0.00000786    -0.00000072  0.70D-07  0.99D-07  3045.67
    6     6     6     1.09085845    -0.76769361  -214.28363867    -0.00000861    -0.00000078  0.72D-07  0.11D-06  3045.67
    6     7     7     1.09085831    -0.76769352  -214.28363858    -0.00000861    -0.00000078  0.72D-07  0.11D-06  3045.67
    6     8     8     1.09085585    -0.76769349  -214.28363855    -0.00000905    -0.00000083  0.75D-07  0.12D-06  3045.67
    7     1     1     1.09213334    -0.77054245  -214.31248137    -0.00000083    -0.00000009  0.86D-08  0.14D-07  3641.50
    7     2     2     1.09213320    -0.77054245  -214.31248136    -0.00000083    -0.00000009  0.86D-08  0.14D-07  3641.50
    7     3     3     1.09213296    -0.77054240  -214.31248132    -0.00000085    -0.00000009  0.90D-08  0.14D-07  3641.50
    7     4     4     1.09213333    -0.77054236  -214.31248128    -0.00000083    -0.00000009  0.86D-08  0.14D-07  3641.50
    7     5     5     1.09213339    -0.77054236  -214.31248128    -0.00000085    -0.00000009  0.89D-08  0.14D-07  3641.50
    7     6     6     1.09088680    -0.76769454  -214.28363960    -0.00000093    -0.00000011  0.11D-07  0.16D-07  3641.50
    7     7     7     1.09088579    -0.76769448  -214.28363954    -0.00000096    -0.00000012  0.12D-07  0.17D-07  3641.50
    7     8     8     1.09088669    -0.76769445  -214.28363951    -0.00000097    -0.00000011  0.11D-07  0.16D-07  3641.50
    8     1     1     1.09213632    -0.77054256  -214.31248148    -0.00000011    -0.00000001  0.11D-08  0.22D-08  4237.00
    8     2     2     1.09213642    -0.77054255  -214.31248147    -0.00000011    -0.00000001  0.12D-08  0.22D-08  4237.00
    8     3     3     1.09213629    -0.77054251  -214.31248143    -0.00000011    -0.00000001  0.12D-08  0.23D-08  4237.00
    8     4     4     1.09213629    -0.77054247  -214.31248139    -0.00000011    -0.00000001  0.12D-08  0.22D-08  4237.00
    8     5     5     1.09213617    -0.77054247  -214.31248139    -0.00000011    -0.00000001  0.12D-08  0.23D-08  4237.00
    8     6     6     1.09089530    -0.76769467  -214.28363973    -0.00000013    -0.00000002  0.12D-08  0.27D-08  4237.00
    8     7     7     1.09089496    -0.76769462  -214.28363968    -0.00000014    -0.00000002  0.13D-08  0.29D-08  4237.00
    8     8     8     1.09089520    -0.76769458  -214.28363964    -0.00000013    -0.00000002  0.12D-08  0.27D-08  4237.00


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.8%
 S   0.6%  24.7%
 P   0.3%  43.8%  21.8%

 Initialization:   1.3%
 Other:            6.8%

 Total CPU:     4237.0 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.2027854  -0.0001419  -0.0568272  -0.0016660   0.9299403  -0.0000000  -0.0000000  -0.0000000
 2222222222/\/000           0.9293457  -0.0007294   0.0796090   0.0004661  -0.1977903  -0.0000000  -0.0000000  -0.0000000
 222222222202/000          -0.0005148  -0.6741972  -0.0001798   0.0055453   0.0000083   0.6707431  -0.0008470  -0.0013247
 2222222222/02000          -0.0000826   0.0055453   0.0001367   0.6741953   0.0012350   0.0013251   0.0003257   0.6707445
 2222222222/20000           0.0000826  -0.0055453  -0.0001367  -0.6741950  -0.0012350   0.0013251   0.0003257   0.6707450
 222222222220/000           0.0005148   0.6741950   0.0001798  -0.0055453  -0.0000083   0.6707454  -0.0008470  -0.0013247
 22222222222/0000           0.0465664   0.0001446  -0.6706615   0.0002342  -0.0511370   0.0008463   0.6707465  -0.0003273
 22222222220/2000          -0.0465665  -0.0001446   0.6706631  -0.0002342   0.0511372   0.0008463   0.6707446  -0.0003273
 22222202222/2000           0.0000000   0.0000000  -0.0000001   0.0000000  -0.0000000  -0.0001220  -0.0967240   0.0000472
 2222220222/22000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0001911  -0.0000470  -0.0967238
 222222022222/000          -0.0000000   0.0000001  -0.0000000  -0.0000000  -0.0000000  -0.0967237   0.0001221   0.0001910

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.675159   -0.066022    0.000730   -0.000117    0.673469   -0.000000   -0.000000    0.000000
 2          -0.000515   -0.000205    0.955875    0.007862   -0.000538   -0.000000   -0.000002    0.000000
 3          -0.004718    0.950865    0.000255    0.000194    0.097945    0.000001   -0.000000    0.000000
 4          -0.001152   -0.000332   -0.007862    0.955874    0.001297   -0.000000    0.000000    0.000000
 5           0.676681    0.072502   -0.000012    0.001751   -0.671270    0.000000    0.000000    0.000000
 6          -0.000000   -0.000000    0.000002   -0.000000   -0.000000    0.001207    0.956472    0.001890
 7          -0.000000   -0.000001   -0.000000    0.000000   -0.000000    0.956474   -0.001208    0.000464
 8          -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000467   -0.001889    0.956472

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955908   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.955908    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.955908   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.955908   -0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.955908   -0.000000   -0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.956474    0.000000    0.000000
 7           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956475   -0.000000
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.956474


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.67515859 (fixed)   0.95609876 (relaxed)   0.95590767 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00205429   -0.00612345   -0.60599831
 Singles      0.02527414   -0.10893311   -0.11733328
 Pairs        0.06705146   -0.00000000   -0.04721097
 Total        1.09437989   -0.11505656   -0.77054256
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54193892
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39551596
 One electron energy                 -372.26762423
 Two electron energy                  157.95514275
 Virial quotient                       -3.08827564
 Correlation energy                    -0.77054256
 !MRCI STATE 1.2 Energy              -214.312481475252

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38520520 (Davidson, fixed reference)
 Cluster corrected energies          -214.38486816 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38520520 (Davidson, rotated reference)

 Cluster corrected energies          -214.38406453 (Pople, fixed reference)
 Cluster corrected energies          -214.38370577 (Pople, relaxed reference)
 Cluster corrected energies          -214.38406453 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95587499 (fixed)   0.95609872 (relaxed)   0.95590763 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00205429   -0.00612345   -0.60599824
 Singles      0.02527419   -0.10893313   -0.11733334
 Pairs        0.06705151   -0.00000000   -0.04721098
 Total        1.09437998   -0.11505658   -0.77054255
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54193892
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39553647
 One electron energy                 -372.26764428
 Two electron energy                  157.95516281
 Virial quotient                       -3.08827473
 Correlation energy                    -0.77054255
 !MRCI STATE 2.2 Energy              -214.312481471148

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38520527 (Davidson, fixed reference)
 Cluster corrected energies          -214.38486823 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38520527 (Davidson, rotated reference)

 Cluster corrected energies          -214.38406460 (Pople, fixed reference)
 Cluster corrected energies          -214.38370585 (Pople, relaxed reference)
 Cluster corrected energies          -214.38406460 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95086482 (fixed)   0.95609877 (relaxed)   0.95590769 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00205429   -0.00612346   -0.60599836
 Singles      0.02527413   -0.10893303   -0.11733323
 Pairs        0.06705144   -0.00000000   -0.04721092
 Total        1.09437986   -0.11505648   -0.77054251
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54193892
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39553186
 One electron energy                 -372.26764082
 Two electron energy                  157.95515939
 Virial quotient                       -3.08827493
 Correlation energy                    -0.77054251
 !MRCI STATE 3.2 Energy              -214.312481427039

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38520512 (Davidson, fixed reference)
 Cluster corrected energies          -214.38486809 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38520512 (Davidson, rotated reference)

 Cluster corrected energies          -214.38406445 (Pople, fixed reference)
 Cluster corrected energies          -214.38370570 (Pople, relaxed reference)
 Cluster corrected energies          -214.38406445 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.95587373 (fixed)   0.95609877 (relaxed)   0.95590769 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00205429   -0.00612345   -0.60599818
 Singles      0.02527408   -0.10893301   -0.11733321
 Pairs        0.06705148   -0.00000018   -0.04721108
 Total        1.09437985   -0.11505664   -0.77054247
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54193892
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39553483
 One electron energy                 -372.26764144
 Two electron energy                  157.95516005
 Virial quotient                       -3.08827480
 Correlation energy                    -0.77054247
 !MRCI STATE 4.2 Energy              -214.312481390425

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38520508 (Davidson, fixed reference)
 Cluster corrected energies          -214.38486804 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38520508 (Davidson, rotated reference)

 Cluster corrected energies          -214.38406441 (Pople, fixed reference)
 Cluster corrected energies          -214.38370565 (Pople, relaxed reference)
 Cluster corrected energies          -214.38406441 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.67668058 (fixed)   0.95609883 (relaxed)   0.95590774 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00205429   -0.00612345   -0.60599844
 Singles      0.02527404   -0.10893297   -0.11733315
 Pairs        0.06705140   -0.00000000   -0.04721088
 Total        1.09437974   -0.11505643   -0.77054247
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54193892
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39552024
 One electron energy                 -372.26762851
 Two electron energy                  157.95514712
 Virial quotient                       -3.08827545
 Correlation energy                    -0.77054247
 !MRCI STATE 5.2 Energy              -214.312481385229

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38520498 (Davidson, fixed reference)
 Cluster corrected energies          -214.38486794 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38520498 (Davidson, rotated reference)

 Cluster corrected energies          -214.38406431 (Pople, fixed reference)
 Cluster corrected energies          -214.38370555 (Pople, relaxed reference)
 Cluster corrected energies          -214.38406431 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95647173 (fixed)   0.95668429 (relaxed)   0.95647436 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00200587   -0.00589110   -0.61193628
 Singles      0.02056414   -0.09902772   -0.10503679
 Pairs        0.07051348   -0.00130939   -0.05072160
 Total        1.09308350   -0.10622821   -0.76769467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51594506
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39141953
 One electron energy                 -372.18882014
 Two electron energy                  157.90518042
 Virial quotient                       -3.08804231
 Correlation energy                    -0.76769467
 !MRCI STATE 6.2 Energy              -214.283639725736

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.35509943 (Davidson, fixed reference)
 Cluster corrected energies          -214.35473119 (Davidson, relaxed reference)
 Cluster corrected energies          -214.35509943 (Davidson, rotated reference)

 Cluster corrected energies          -214.35389962 (Pople, fixed reference)
 Cluster corrected energies          -214.35350853 (Pople, relaxed reference)
 Cluster corrected energies          -214.35389962 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95647363 (fixed)   0.95668444 (relaxed)   0.95647451 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00200587   -0.00589110   -0.61283995
 Singles      0.02056412   -0.09902770   -0.10503673
 Pairs        0.07051316   -0.00032180   -0.04981794
 Total        1.09308315   -0.10524060   -0.76769462
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51594506
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39141367
 One electron energy                 -372.18881828
 Two electron energy                  157.90517860
 Virial quotient                       -3.08804257
 Correlation energy                    -0.76769462
 !MRCI STATE 7.2 Energy              -214.283639682602

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.35509912 (Davidson, fixed reference)
 Cluster corrected energies          -214.35473088 (Davidson, relaxed reference)
 Cluster corrected energies          -214.35509912 (Davidson, rotated reference)

 Cluster corrected energies          -214.35389929 (Pople, fixed reference)
 Cluster corrected energies          -214.35350821 (Pople, relaxed reference)
 Cluster corrected energies          -214.35389929 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.95647243 (fixed)   0.95668433 (relaxed)   0.95647441 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00200586   -0.00589110   -0.00679944
 Singles      0.02056410   -0.09902769   -0.10503673
 Pairs        0.07051342   -0.66277443   -0.65585841
 Total        1.09308339   -0.76769321   -0.76769458
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51594506
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39141987
 One electron energy                 -372.18881787
 Two electron energy                  157.90517823
 Virial quotient                       -3.08804230
 Correlation energy                    -0.76769458
 !MRCI STATE 8.2 Energy              -214.283639642386

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.35509925 (Davidson, fixed reference)
 Cluster corrected energies          -214.35473102 (Davidson, relaxed reference)
 Cluster corrected energies          -214.35509925 (Davidson, rotated reference)

 Cluster corrected energies          -214.35389944 (Pople, fixed reference)
 Cluster corrected energies          -214.35350836 (Pople, relaxed reference)
 Cluster corrected energies          -214.35389944 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1339.40       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      4821.26   4649.65    163.83      6.10      1.51
 REAL TIME  *      4927.21 SEC
 DISK USED  *         1.36 GB (local),       19.27 GB (total)
 SF USED    *        12.89 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -214.38520520  AU                              
 SETTING HLSDIAG(3)     =      -214.38520527  AU                              
 SETTING HLSDIAG(4)     =      -214.38520512  AU                              
 SETTING HLSDIAG(5)     =      -214.38520508  AU                              
 SETTING HLSDIAG(6)     =      -214.38520498  AU                              
 SETTING HLSDIAG(7)     =      -214.35509943  AU                              
 SETTING HLSDIAG(8)     =      -214.35509912  AU                              
 SETTING HLSDIAG(9)     =      -214.35509925  AU                              


         HLSDIAG
    -214.4268899
    -214.3852052
    -214.3852053
    -214.3852051
    -214.3852051
    -214.3852050
    -214.3550994
    -214.3550991
    -214.3550993
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -214.359279
 Replaced energies:   -214.426890

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.312481   -214.312481   -214.312481   -214.312481   -214.312481   -214.283640   -214.283640   -214.283640
 Replaced energies:   -214.385205   -214.385205   -214.385205   -214.385205   -214.385205   -214.355099   -214.355099   -214.355099



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.42688988

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      12.17
                            0.00       0.00       0.00       0.00      -0.00      -0.01      -0.00       0.00       0.00    6162.02

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.00      -0.00      -8.98

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       7.03
                           -0.00      -0.00       0.00       0.00       0.00       0.01       0.00      -0.00      -0.00   -3557.65

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00    9148.73       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.01     -51.14      -0.00      -7.83       5.25

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00    9148.72       0.00       0.00       0.00       0.00
                            0.01      -0.00      -0.01      -0.00      -0.01      -0.00       0.03     -38.33      -0.08     -27.39

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00    9148.75       0.00       0.00       0.00
                            0.00       0.01      -0.00      -0.00      51.14      -0.03      -0.00      -0.11      56.55      -0.23

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9148.76       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      38.33       0.11      -0.00      -0.01   -4381.79

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9148.78       0.00
                           -0.00       0.00       0.00      -0.00       7.83       0.08     -56.55       0.01       0.00     -12.29

   10   6.2  0.5  0.5      12.17       0.00       7.03       0.00       0.00       0.00       0.00       0.00       0.00   15756.18
                        -6162.02       8.98    3557.65      -0.00      -5.25      27.39       0.23    4381.79      12.29      -0.00

   11   7.2  0.5  0.5       2.99       0.00       1.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.78    7115.31      -4.49      -0.00   -3732.89       0.80    -516.63     -12.08    3376.37       0.02

   12   8.2  0.5  0.5    6162.03       0.00    3557.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.17      -3.47      -7.03      -0.00      -1.52   -4381.81      -0.92      27.39      -1.61      31.25

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       2.45       0.02     -23.25      -0.03     312.14
                           -0.00       0.00      -0.00      -0.00      -0.00      74.67       0.02      -3.26       0.01    1075.50

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      -2.45       0.00      38.16       0.01       2.31      -4.60
                           -0.00       0.01      -0.00      -0.01     -74.67       0.00      -6.71      -0.05      15.88      -0.80

   15   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.02     -38.16      -0.00      -6.84      -0.03   -4358.34
                           -0.00       0.00       0.01      -0.00      -0.02       6.71      -0.00      38.07       0.07    -292.95

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00      23.25      -0.01       6.84       0.00     -72.70       1.56
                           -0.00      -0.00      -0.00       0.00       3.26       0.05     -38.07       0.00      -3.04     -14.37

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.03      -2.31       0.03      72.70       0.00    -329.27
                           -0.00      -0.00       0.00       0.00      -0.01     -15.88      -0.07       3.04       0.00    4935.44

   18   6.2  0.5 -0.5       0.00       7.03       0.00      12.17    -312.14       4.60    4358.34      -1.56     329.27       0.00
                           -0.00   -3557.65       8.98    6162.02   -1075.50       0.80     292.95      14.37   -4935.44       0.00

   19   7.2  0.5 -0.5       0.00       1.73       0.00       2.99       1.39    4381.74      -4.44     -36.04      -1.23      31.26
                           -0.00       4.49    7115.31      -7.78       0.97      36.04      -1.61    4381.72      14.10       0.06

   20   8.2  0.5 -0.5       0.00    3557.65       0.00    6162.03   -4808.38       1.59    -223.68       2.30   -1559.08      -0.02
                           -0.00       7.03      -3.47     -12.17     304.77       0.92   -4359.36      -0.63    -322.61      -0.04


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5       2.99    6162.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.78     -12.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       7.03       1.73    3557.65
                        -7115.31       3.47      -0.00      -0.01      -0.00       0.00       0.00    3557.65      -4.49      -7.03

    3   1.2  1.5 -0.5       1.73    3557.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.49       7.03       0.00       0.00      -0.01       0.00      -0.00      -8.98   -7115.31       3.47

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      12.17       2.99    6162.03
                            0.00       0.00       0.00       0.01       0.00      -0.00      -0.00   -6162.02       7.78      12.17

    5   1.2  0.5  0.5       0.00       0.00       0.00      -2.45      -0.02      23.25       0.03    -312.14       1.39   -4808.38
                         3732.89       1.52       0.00      74.67       0.02      -3.26       0.01    1075.50      -0.97    -304.77

    6   2.2  0.5  0.5       0.00       0.00       2.45       0.00     -38.16      -0.01      -2.31       4.60    4381.74       1.59
                           -0.80    4381.81     -74.67      -0.00      -6.71      -0.05      15.88      -0.80     -36.04      -0.92

    7   3.2  0.5  0.5       0.00       0.00       0.02      38.16      -0.00       6.84       0.03    4358.34      -4.44    -223.68
                          516.63       0.92      -0.02       6.71       0.00      38.07       0.07    -292.95       1.61    4359.36

    8   4.2  0.5  0.5       0.00       0.00     -23.25       0.01      -6.84       0.00      72.70      -1.56     -36.04       2.30
                           12.08     -27.39       3.26       0.05     -38.07      -0.00      -3.04     -14.37   -4381.72       0.63

    9   5.2  0.5  0.5       0.00       0.00      -0.03       2.31      -0.03     -72.70       0.00     329.27      -1.23   -1559.08
                        -3376.37       1.61      -0.01     -15.88      -0.07       3.04      -0.00    4935.44     -14.10     322.61

   10   6.2  0.5  0.5       0.00       0.00     312.14      -4.60   -4358.34       1.56    -329.27       0.00      31.26      -0.02
                           -0.02     -31.25   -1075.50       0.80     292.95      14.37   -4935.44      -0.00      -0.06       0.04

   11   7.2  0.5  0.5   15756.25       0.00      -1.39   -4381.74       4.44      36.04       1.23     -31.26      -0.00       0.06
                            0.00       0.04       0.97      36.04      -1.61    4381.72      14.10       0.06       0.00      31.24

   12   8.2  0.5  0.5       0.00   15756.22    4808.38      -1.59     223.68      -2.30    1559.08       0.02      -0.06      -0.00
                           -0.04      -0.00     304.77       0.92   -4359.36      -0.63    -322.61      -0.04     -31.24      -0.00

   13   1.2  0.5 -0.5      -1.39    4808.38    9148.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.97    -304.77      -0.00      -0.01      51.14       0.00       7.83      -5.25   -3732.89      -1.52

   14   2.2  0.5 -0.5   -4381.74      -1.59       0.00    9148.72       0.00       0.00       0.00       0.00       0.00       0.00
                          -36.04      -0.92       0.01       0.00      -0.03      38.33       0.08      27.39       0.80   -4381.81

   15   3.2  0.5 -0.5       4.44     223.68       0.00       0.00    9148.75       0.00       0.00       0.00       0.00       0.00
                            1.61    4359.36     -51.14       0.03       0.00       0.11     -56.55       0.23    -516.63      -0.92

   16   4.2  0.5 -0.5      36.04      -2.30       0.00       0.00       0.00    9148.76       0.00       0.00       0.00       0.00
                        -4381.72       0.63      -0.00     -38.33      -0.11       0.00       0.01    4381.79     -12.08      27.39

   17   5.2  0.5 -0.5       1.23    1559.08       0.00       0.00       0.00       0.00    9148.78       0.00       0.00       0.00
                          -14.10     322.61      -7.83      -0.08      56.55      -0.01      -0.00      12.29    3376.37      -1.61

   18   6.2  0.5 -0.5     -31.26       0.02       0.00       0.00       0.00       0.00       0.00   15756.18       0.00       0.00
                           -0.06       0.04       5.25     -27.39      -0.23   -4381.79     -12.29       0.00       0.02      31.25

   19   7.2  0.5 -0.5      -0.00      -0.06       0.00       0.00       0.00       0.00       0.00       0.00   15756.25       0.00
                           -0.00      31.24    3732.89      -0.80     516.63      12.08   -3376.37      -0.02      -0.00      -0.04

   20   8.2  0.5 -0.5       0.06      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15756.22
                          -31.24       0.00       1.52    4381.81       0.92     -27.39       1.61     -31.25       0.04       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -214.45097188    -0.02408200    -5285.39      0.00000000        0.00      0.0000
     2  -214.45097188    -0.02408200    -5285.39      0.00000000        0.00      0.0000
     3  -214.45097186    -0.02408198    -5285.38      0.00000002        0.00      0.0000
     4  -214.45097186    -0.02408198    -5285.38      0.00000002        0.00      0.0000
     5  -214.40313107     0.02375882     5214.46      0.04784081    10499.84      1.3018
     6  -214.40313107     0.02375882     5214.46      0.04784081    10499.84      1.3018
     7  -214.40313100     0.02375889     5214.47      0.04784088    10499.86      1.3018
     8  -214.40313100     0.02375889     5214.47      0.04784088    10499.86      1.3018
     9  -214.38485604     0.04203384     9225.36      0.06611584    14510.75      1.7991
    10  -214.38485604     0.04203384     9225.36      0.06611584    14510.75      1.7991
    11  -214.38485593     0.04203395     9225.39      0.06611595    14510.77      1.7991
    12  -214.38485593     0.04203395     9225.39      0.06611595    14510.77      1.7991
    13  -214.38485583     0.04203405     9225.41      0.06611605    14510.80      1.7991
    14  -214.38485583     0.04203405     9225.41      0.06611605    14510.80      1.7991
    15  -214.35538404     0.07150584    15693.72      0.09558784    20979.11      2.6011
    16  -214.35538404     0.07150584    15693.72      0.09558784    20979.11      2.6011
    17  -214.31347284     0.11341704    24892.16      0.13749904    30177.55      3.7415
    18  -214.31347284     0.11341704    24892.16      0.13749904    30177.55      3.7415
    19  -214.31347273     0.11341715    24892.19      0.13749915    30177.57      3.7415
    20  -214.31347273     0.11341715    24892.19      0.13749915    30177.57      3.7415


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.494484951   0.204953796   0.001517765   0.602319134  -0.285470580  -0.084565766  -0.422729100   0.043238600
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.232042117   0.546144197   0.535256960   0.003311559  -0.093665073   0.318844052  -0.023937105  -0.228828942
                         0.038525113   0.095861007  -0.003081119  -0.000983386   0.075280888  -0.253904625   0.019184164   0.187992767

    3    1.2  1.5 -0.5   0.554329284  -0.235191670  -0.003338410   0.535125008  -0.407338455  -0.120073835   0.295961129  -0.030667563
                        -0.013485644   0.003550574  -0.000887969  -0.012277231  -0.014299341  -0.004757334   0.010534479  -0.000719541

    4    1.2  1.5 -1.5  -0.202669803  -0.488974441   0.602071175  -0.001517140  -0.067960500   0.229415804   0.034364939   0.335974323
                        -0.030512450  -0.073616335  -0.017281166   0.000043546   0.050326328  -0.169887731  -0.026241714  -0.256556321

    5    1.2  0.5  0.5  -0.009785537  -0.020897064  -0.210085501  -0.000376158  -0.114805488   0.389328701   0.007081346   0.072337455
                         0.001639109   0.003256706  -0.007272516   0.000363830   0.082540669  -0.277131968  -0.001095491  -0.010079452

    6    2.2  0.5  0.5   0.004642424  -0.001453503   0.000356433   0.003141334  -0.010268614  -0.003767695   0.005124716  -0.000203000
                         0.061097683  -0.026524703  -0.000598014   0.200659905   0.481068310   0.142314526  -0.043699819   0.004890698

    7    3.2  0.5  0.5   0.001262358   0.003300811  -0.008273907  -0.000094670   0.040006327  -0.134647038  -0.028134868  -0.273663406
                        -0.054012164  -0.130436083   0.157234771  -0.000316693   0.072743495  -0.245059750  -0.031048236  -0.303372106

    8    4.2  0.5  0.5   0.190721626  -0.080706424  -0.000942963   0.042566920   0.203950939   0.060113171  -0.454170941   0.046162563
                        -0.003572790   0.001012991  -0.000256842  -0.004440815   0.008075594   0.002798749  -0.008430070   0.001231579

    9    5.2  0.5  0.5   0.081013959   0.192069927  -0.022994406   0.000952192   0.015874835  -0.053939013   0.037463310   0.371118113
                         0.008640502   0.021373992   0.014806777  -0.000218496  -0.007549388   0.025400257  -0.033851215  -0.331079690

   10    6.2  0.5  0.5  -0.003167247   0.000880439  -0.000221444  -0.003812621   0.003011453   0.001190019  -0.002795747   0.000081222
                        -0.349461028   0.145789413   0.001143501   0.125818026   0.021215531   0.006643057   0.251150396  -0.025927753

   11    7.2  0.5  0.5   0.019118600   0.047455914  -0.001525450  -0.000672896  -0.036891047   0.124016071  -0.009421193  -0.091841583
                        -0.114467066  -0.270641538  -0.265067241  -0.001797317  -0.045790140   0.155767659  -0.012010724  -0.111765207

   12    8.2  0.5  0.5   0.074809513  -0.029687627   0.000176872  -0.390807526  -0.220280649  -0.065175564  -0.106553065   0.010847603
                         0.004085118  -0.001035767   0.000346306   0.002792232  -0.003512794  -0.001250899   0.002083078  -0.000070285

   13    1.2  0.5 -0.5   0.020179348  -0.009432465  -0.000386442   0.209790358   0.477805727   0.141383537   0.063609235  -0.006292933
                         0.006331459  -0.003077662  -0.000352888  -0.013297095  -0.008980668  -0.001989382  -0.035891057   0.003427034

   14    2.2  0.5 -0.5   0.005386164   0.013686593  -0.002617102  -0.000373444  -0.087721335   0.294543087  -0.003129528  -0.030594624
                        -0.026012723  -0.059725674  -0.200667427  -0.000587541  -0.112127548   0.380495116  -0.003763800  -0.031621288

   15    3.2  0.5 -0.5   0.016154616  -0.006792758  -0.000085545   0.012781731   0.037630801   0.011140005  -0.033382717   0.003517553
                        -0.129473917   0.053598189   0.000319279   0.156932655   0.277070440   0.082267992   0.407200060  -0.041751534

   16    4.2  0.5 -0.5   0.079656228   0.188064337   0.042676808   0.000935206   0.046643820  -0.159097391   0.035941378   0.355847248
                         0.013016853   0.031926614   0.003217697  -0.000283791  -0.038023419   0.127864073  -0.028995109  -0.282338532

   17    5.2  0.5 -0.5  -0.193111558   0.081397497   0.000958069   0.023409762  -0.058463658  -0.017250417   0.495889079  -0.050319350
                        -0.007458565   0.003516722   0.000191086   0.014140948   0.011687215   0.003380351   0.037900341  -0.004167421

   18    6.2  0.5 -0.5  -0.022574993  -0.055157882  -0.007420902   0.000254161  -0.002997033   0.010205548   0.015800231   0.154646370
                         0.144033669   0.345095131  -0.125656841   0.001136677  -0.006046830   0.018841826   0.020557424   0.197911187

   19    7.2  0.5 -0.5  -0.006635370   0.001864285  -0.000621052  -0.006080234   0.006964754   0.002396766  -0.005162510   0.000198358
                        -0.274690513   0.116037729   0.001815883  -0.265001886  -0.198985029  -0.058753228   0.144567239  -0.015263585

   20    8.2  0.5 -0.5   0.029510989   0.074584012  -0.390726753  -0.000166863  -0.051633314   0.174936001   0.008664055   0.085949893
                         0.003395514   0.007097656   0.008421594   0.000351238   0.039792208  -0.133915271  -0.006527602  -0.063011990


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000062  -0.000000008   0.000000007  -0.000000128   0.000000097  -0.000000754  -0.000000661  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.000000120  -0.000000822  -0.000000797  -0.000000045   0.000000194   0.000000024   0.000000001   0.000000126
                        -0.000000044  -0.000000270  -0.000000568  -0.000000028  -0.000000723  -0.000000093   0.000000001   0.000000636

    3    1.2  1.5 -0.5   0.000000596  -0.000000091   0.000000031  -0.000000517  -0.000000093   0.000000726   0.000000649  -0.000000001
                         0.000000627  -0.000000090  -0.000000043   0.000000832  -0.000000024   0.000000182   0.000000001  -0.000000000

    4    1.2  1.5 -1.5  -0.000000004  -0.000000026  -0.000000118  -0.000000006  -0.000000367  -0.000000047   0.000000000  -0.000000127
                        -0.000000008  -0.000000056   0.000000049   0.000000003   0.000000659   0.000000085   0.000000000  -0.000000649

    5    1.2  0.5  0.5  -0.089282079  -0.612777286   0.338501934   0.019055054   0.029907804   0.003814143  -0.000000001  -0.000000057
                        -0.037819417  -0.235937786   0.207124501   0.009739738   0.023980958   0.003066682   0.000000001   0.000000204

    6    2.2  0.5  0.5  -0.509809245   0.072567224   0.010197086  -0.204174621   0.002140773  -0.015650127   0.000000013   0.000000000
                         0.518066829  -0.078792321   0.008185152  -0.134361591  -0.000960604   0.007971215   0.000000496  -0.000000001

    7    3.2  0.5  0.5  -0.006929244  -0.046762528  -0.403865125  -0.019257114  -0.273413019  -0.034620567  -0.000000000   0.000001329
                         0.001754568   0.013728458   0.587601533   0.033747557  -0.107331645  -0.014408715   0.000000002  -0.000000326

    8    4.2  0.5  0.5  -0.072461905   0.010719281  -0.014912486   0.232360771  -0.071968270   0.558609644   0.000001891  -0.000000001
                        -0.082105689   0.011582343   0.023183871  -0.456540954  -0.010335908   0.085130050  -0.000000002  -0.000000002

    9    5.2  0.5  0.5   0.009639533   0.067125491   0.066713695   0.004440258  -0.246152150  -0.032964400   0.000000004   0.000000296
                         0.003120817   0.019670000   0.067783829   0.002858974   0.718194713   0.091936153   0.000000001   0.000000968

   10    6.2  0.5  0.5  -0.000000753   0.000000108   0.000000046  -0.000000874   0.000000011  -0.000000071   0.000010148  -0.000480905
                         0.000000698  -0.000000108   0.000000025  -0.000000418  -0.000000083   0.000000647   0.577351450   0.000328960

   11    7.2  0.5  0.5   0.000000070   0.000000424   0.000000945   0.000000045   0.000001262   0.000000162   0.000052734   0.566300206
                        -0.000000184  -0.000001264  -0.000001351  -0.000000077   0.000000321   0.000000041   0.000535746  -0.112409079

   12    8.2  0.5  0.5  -0.000000072   0.000000013   0.000000024  -0.000000431   0.000000077  -0.000000594   0.577348550   0.000194431
                        -0.000000097   0.000000014  -0.000000031   0.000000607  -0.000000004   0.000000017  -0.000010702   0.001250316

   13    1.2  0.5 -0.5  -0.475833487   0.072440015   0.013828135  -0.232502841  -0.000824843   0.006410350  -0.000000189   0.000000001
                        -0.452487717   0.064451860  -0.016332185   0.321599980  -0.004824091   0.037795112   0.000000096  -0.000000001

   14    2.2  0.5 -0.5  -0.040079808  -0.249522935  -0.136604029  -0.006253946  -0.014575802  -0.001880421   0.000000001   0.000000489
                         0.099337007   0.682669035   0.202681159   0.011483267   0.009798610   0.001403456  -0.000000000  -0.000000083

   15    3.2  0.5 -0.5  -0.007641886   0.001385076  -0.030777566   0.599156747  -0.004245618   0.039174091   0.000000064   0.000000002
                        -0.048133212   0.007012453  -0.023716565   0.386514933   0.037258146  -0.291101617  -0.000001367  -0.000000001

   16    4.2  0.5 -0.5   0.015059164   0.105241118   0.390386349   0.022696717   0.197263852   0.025966472   0.000000002   0.000000363
                         0.004719663   0.030271751   0.331692130   0.015643949  -0.529508103  -0.067911746   0.000000001   0.000001856

   17    5.2  0.5 -0.5   0.046545029  -0.006951611   0.002995074  -0.035429589  -0.096363717   0.747257048  -0.000001007   0.000000001
                         0.052213989  -0.007371241  -0.004349615   0.088261594  -0.015904148   0.134169412  -0.000000104   0.000000004

   18    6.2  0.5 -0.5  -0.000000051  -0.000000308  -0.000000646  -0.000000033  -0.000000600  -0.000000078  -0.000230081   0.566523584
                         0.000000143   0.000000980   0.000000723   0.000000041  -0.000000252  -0.000000031   0.000535301  -0.111291173

   19    7.2  0.5 -0.5  -0.000000960   0.000000137   0.000000072  -0.000001393   0.000000043  -0.000000334   0.001129852   0.000535863
                         0.000000925  -0.000000142   0.000000054  -0.000000883  -0.000000161   0.000001259  -0.577347770  -0.000051536

   20    8.2  0.5 -0.5   0.000000018   0.000000118  -0.000000632  -0.000000034  -0.000000304  -0.000000041  -0.001264345   0.111290070
                         0.000000006   0.000000023  -0.000000394  -0.000000020   0.000000510   0.000000065   0.000050250   0.566520846


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5   0.285267247   0.008642618  -0.004639296   0.000146876
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.000539905   0.004142113  -0.029317519  -0.121151539
                         0.000111348  -0.002021373  -0.005045475  -0.256689249

    3    1.2  1.5 -0.5   0.004533522   0.000549942   0.279376315  -0.012502878
                         0.000830798  -0.000038214   0.050159153  -0.026993550

    4    1.2  1.5 -1.5  -0.008323109   0.274721181   0.000038232   0.001207606
                         0.002328242  -0.076848392   0.000141813   0.004479370

    5    1.2  0.5  0.5   0.006881043  -0.215252358   0.024054291   0.099227629
                        -0.001070374   0.038091499   0.004243895   0.207922342

    6    2.2  0.5  0.5  -0.002081013   0.000142783  -0.046261463   0.025914617
                         0.163594275   0.005243587   0.267856718  -0.012384384

    7    3.2  0.5  0.5  -0.002646826   0.087878501   0.003226667   0.008852413
                        -0.009184467   0.304410514   0.000700169   0.030636437

    8    4.2  0.5  0.5  -0.154823047  -0.003938716   0.273081349  -0.012203291
                        -0.000536060  -0.000293414   0.046292483  -0.025616326

    9    5.2  0.5  0.5   0.006000448  -0.217614030  -0.021380362  -0.091638688
                        -0.002547719   0.085306516  -0.003786578  -0.194841641

   10    6.2  0.5  0.5   0.000179615   0.000086265  -0.057851901   0.032205042
                        -0.570892471  -0.016802857   0.335187525  -0.015295299

   11    7.2  0.5  0.5   0.000023861   0.004722705   0.011994884   0.598621013
                        -0.000537785   0.009680282  -0.068771088  -0.282554152

   12    8.2  0.5  0.5   0.581470793   0.018095253   0.316526817  -0.014637578
                         0.002096945  -0.000016067   0.057863233  -0.031310555

   13    1.2  0.5 -0.5   0.217556180   0.006915006   0.226583723  -0.010358915
                        -0.021303728  -0.000822886   0.041685000  -0.022120408

   14    2.2  0.5 -0.5   0.001275070  -0.046074884  -0.005211911  -0.246581323
                         0.005088201  -0.156985740   0.028244934   0.114389667

   15    3.2  0.5 -0.5  -0.002624302  -0.000074764   0.031884614  -0.001515932
                         0.316830404   0.009557957   0.000572607  -0.002933184

   16    4.2  0.5 -0.5   0.003714062  -0.148954972  -0.027909788  -0.115779585
                        -0.001343621   0.042224157  -0.005114705  -0.251617775

   17    5.2  0.5 -0.5   0.232549837   0.006464949  -0.211978543   0.009221341
                         0.023529580   0.000837066  -0.037762563   0.019657694

   18    6.2  0.5 -0.5  -0.004609612   0.153966194  -0.006385087  -0.308574115
                        -0.016158432   0.549738717   0.035076225   0.143106723

   19    7.2  0.5 -0.5  -0.001940331   0.000167854  -0.116993272   0.063278148
                         0.010594665   0.000511476   0.651533990  -0.029482466

   20    8.2  0.5 -0.5  -0.017430616   0.559409457  -0.034041368  -0.138260295
                         0.004859223  -0.158662344  -0.005982874  -0.290553731


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  24.452%   4.201%   0.000%  36.279%   8.149%   0.715%  17.870%   0.187%   0.000%   0.000%
    2    1.2  1.5  0.5   5.533%  30.746%  28.651%   0.001%   1.444%  16.613%   0.094%   8.770%   0.000%   0.000%
    3    1.2  1.5 -0.5  30.746%   5.533%   0.001%  28.651%  16.613%   1.444%   8.770%   0.094%   0.000%   0.000%
    4    1.2  1.5 -1.5   4.201%  24.452%  36.279%   0.000%   0.715%   8.149%   0.187%  17.870%   0.000%   0.000%
    5    1.2  0.5  0.5   0.010%   0.045%   4.419%   0.000%   1.999%  22.838%   0.005%   0.533%   0.940%  43.116%
    6    2.2  0.5  0.5   0.375%   0.071%   0.000%   4.027%  23.153%   2.027%   0.194%   0.002%  52.830%   1.147%
    7    3.2  0.5  0.5   0.292%   1.702%   2.479%   0.000%   0.689%   7.818%   0.176%  16.693%   0.005%   0.238%
    8    4.2  0.5  0.5   3.639%   0.651%   0.000%   0.183%   4.166%   0.362%  20.634%   0.213%   1.199%   0.025%
    9    5.2  0.5  0.5   0.664%   3.735%   0.075%   0.000%   0.031%   0.355%   0.255%  24.734%   0.010%   0.489%
   10    6.2  0.5  0.5  12.213%   2.126%   0.000%   1.584%   0.046%   0.005%   6.308%   0.067%   0.000%   0.000%
   11    7.2  0.5  0.5   1.347%   7.550%   7.026%   0.000%   0.346%   3.964%   0.023%   2.093%   0.000%   0.000%
   12    8.2  0.5  0.5   0.561%   0.088%   0.000%  15.274%   4.854%   0.425%   1.136%   0.012%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.045%   0.010%   0.000%   4.419%  22.838%   1.999%   0.533%   0.005%  43.116%   0.940%
   14    2.2  0.5 -0.5   0.071%   0.375%   4.027%   0.000%   2.027%  23.153%   0.002%   0.194%   1.147%  52.830%
   15    3.2  0.5 -0.5   1.702%   0.292%   0.000%   2.479%   7.818%   0.689%  16.693%   0.176%   0.238%   0.005%
   16    4.2  0.5 -0.5   0.651%   3.639%   0.183%   0.000%   0.362%   4.166%   0.213%  20.634%   0.025%   1.199%
   17    5.2  0.5 -0.5   3.735%   0.664%   0.000%   0.075%   0.355%   0.031%  24.734%   0.255%   0.489%   0.010%
   18    6.2  0.5 -0.5   2.126%  12.213%   1.584%   0.000%   0.005%   0.046%   0.067%   6.308%   0.000%   0.000%
   19    7.2  0.5 -0.5   7.550%   1.347%   0.000%   7.026%   3.964%   0.346%   2.093%   0.023%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.088%   0.561%  15.274%   0.000%   0.425%   4.854%   0.012%   1.136%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.138%   0.007%   0.002%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.088%   8.057%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   8.057%   0.088%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   8.138%   0.000%   0.002%
    5    1.2  0.5  0.5  15.748%   0.046%   0.147%   0.002%   0.000%   0.000%   0.005%   4.778%   0.060%   5.308%
    6    2.2  0.5  0.5   0.017%   5.974%   0.001%   0.031%   0.000%   0.000%   2.677%   0.003%   7.389%   0.082%
    7    3.2  0.5  0.5  50.838%   0.151%   8.627%   0.141%   0.000%   0.000%   0.009%  10.039%   0.001%   0.102%
    8    4.2  0.5  0.5   0.076%  26.242%   0.529%  31.929%   0.000%   0.000%   2.397%   0.002%   7.672%   0.081%
    9    5.2  0.5  0.5   0.905%   0.003%  57.639%   0.954%   0.000%   0.000%   0.004%   5.463%   0.047%   4.636%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.333%   0.000%  32.592%   0.028%  11.570%   0.127%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.333%   0.000%   0.012%   0.487%  43.818%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.333%   0.000%  33.811%   0.033%  10.354%   0.119%
   13    1.2  0.5 -0.5   0.046%  15.748%   0.002%   0.147%   0.000%   0.000%   4.778%   0.005%   5.308%   0.060%
   14    2.2  0.5 -0.5   5.974%   0.017%   0.031%   0.001%   0.000%   0.000%   0.003%   2.677%   0.082%   7.389%
   15    3.2  0.5 -0.5   0.151%  50.838%   0.141%   8.627%   0.000%   0.000%  10.039%   0.009%   0.102%   0.001%
   16    4.2  0.5 -0.5  26.242%   0.076%  31.929%   0.529%   0.000%   0.000%   0.002%   2.397%   0.081%   7.672%
   17    5.2  0.5 -0.5   0.003%   0.905%   0.954%  57.639%   0.000%   0.000%   5.463%   0.004%   4.636%   0.047%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.333%   0.028%  32.592%   0.127%  11.570%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.333%   0.000%   0.012%   0.000%  43.818%   0.487%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.333%   0.033%  33.811%   0.119%  10.354%


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
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1339.40       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     26996.56  22175.29   4649.65    163.83      6.10      1.51
 REAL TIME  *     27298.01 SEC
 DISK USED  *         1.36 GB (local),       19.27 GB (total)
 SF USED    *        12.89 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -214.313472730769

              CI              CI           MULTI
   -214.28363964   -214.35927923   -213.51594506
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
