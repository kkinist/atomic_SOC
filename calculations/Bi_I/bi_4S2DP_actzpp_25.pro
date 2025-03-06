
 Working directory              : /wrk/irikura/molpro.OOtKsw1tE2/
 Global scratch directory       : /wrk/irikura/molpro.OOtKsw1tE2/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.OOtKsw1tE2/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   14
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Bi SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Bi};
 
 basis=aug-cc-pwCVTZ-PP
 
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
  (64 PROC) 64 bit mpp version                                                           DATE: 04-Nov-24          TIME: 11:29:00  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  21000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =         8.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Bi   ECP ECP60MDF                 selected for group  1
 Library entry BI     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BI     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BI     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BI     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry BI     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         178
 NUMBER OF SYMMETRY AOS:          149
 NUMBER OF CONTRACTIONS:           96   (   47Ag  +   49Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.321E-04 0.177E-02 0.876E-02 0.879E-02 0.879E-02 0.879E-02 0.879E-02 0.879E-02
         2 0.588E-02 0.588E-02 0.588E-02 0.101E-01 0.101E-01 0.101E-01 0.679E-01 0.679E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     17.826 MB (compressed) written to integral file ( 19.6%)

     Node minimum: 0.786 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     393360.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     393360      RECORD LENGTH: 524288

 Memory used in sort:       0.95 MW

 SORT1 READ    11031004. AND WROTE       78334. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     70 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      392525.  Node maximum:      397927. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.75      0.59
 REAL TIME  *         1.43 SEC
 DISK USED  *        29.19 MB (local),      473.39 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      80 (   40   40)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.583D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.950D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.525D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.670D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.703D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 3   5 6 4 1 6 4 3 5 2 1   4 6 3 5 2 8151412 7   9111310 2 4 6 5 3 1
                                        2 5 4 6 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.346D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.359D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.372D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.119D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.245D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.331D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.882D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.769D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.302D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 2 1 3   2 1 7 9 810 6 5 4 9   7 5 4 6 810 3 2 1 4   5 7 9 610 8 3 2 1 5
                                        4 9 7 6 810 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.75758
 Weight factors for state symmetry  2:    0.03030   0.03030   0.03030   0.03030   0.03030   0.03030   0.03030   0.03030
 
 Number of orbital rotations:  664  ( 24 closed/active, 360 closed/virtual, 0 active/active, 280 active/virtual )
 Total number of variables:    3894
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   20   30    0   -213.57093196    -213.58200667   -0.01107471    0.05584133 0.00009579 0.00000000  0.15E+01      2.07
   2    8   14    0   -213.58134585    -213.58147312   -0.00012727    0.02638586 0.00004720 0.00000000  0.73E-01      3.22
   3    7   14    0   -213.58147321    -213.58147321   -0.00000000    0.00004488 0.00000001 0.00000000  0.33E-04      4.27

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.15E-07)
                       Final energy:   -213.58147321
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.597320350509
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.95790705
 One electron energy                          -372.81899823
 Two electron energy                           159.22167788
 Virial ratio                                    4.09750295
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.541706001641
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90784735
 One electron energy                          -372.64226404
 Two electron energy                           159.10055804
 Virial ratio                                    4.09894612
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.541706001641
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90784735
 One electron energy                          -372.64226404
 Two electron energy                           159.10055804
 Virial ratio                                    4.09894612
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.541706001630
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90784735
 One electron energy                          -372.64226404
 Two electron energy                           159.10055804
 Virial ratio                                    4.09894612
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.541706001623
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90784735
 One electron energy                          -372.64226404
 Two electron energy                           159.10055804
 Virial ratio                                    4.09894612
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.541706001621
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90784735
 One electron energy                          -372.64226404
 Two electron energy                           159.10055804
 Virial ratio                                    4.09894612
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.515692438037
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.89967650
 One electron energy                          -372.57973527
 Two electron energy                           159.06404283
 Virial ratio                                    4.09893607
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.515692438015
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.89967650
 One electron energy                          -372.57973527
 Two electron energy                           159.06404283
 Virial ratio                                    4.09893607
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.515692438003
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.89967650
 One electron energy                          -372.57973527
 Two electron energy                           159.06404283
 Virial ratio                                    4.09893607
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.445465036384
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000006130719
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.999997465804
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.554462137940
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999552
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000002621
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.687515000301
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999997348814
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000003442951
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     2.312593132257
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.000000000448
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999997380
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.867019963315
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     4.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999996520466
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.999999091245
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.132944729802
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>    -0.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999999999999
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999999999
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 3 5 6 1 1 3 5   2 4 6 1 4 6 3 5 2 1   6 3 5 4 2 9 7 81214  15131011 4 2 5 3 6 1
                                        4 2 5 3 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 3   2 1 7 9 5 810 6 4 4   6 810 9 7 5 3 1 2 4   6 810 7 9 5 1 3 2 4
                                        6 810 7 9 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.68412     1  1  s    0.99974
    2.1     2.00000    -1.31398     1  1  d1+  0.99986
    3.1     2.00000    -1.31398     1  1  d0   0.99986
    4.1     2.00000    -1.31398     1  1  d2-  0.99986
    5.1     2.00000    -1.31398     1  1  d2+ -0.99986
    6.1     2.00000    -1.31398     1  1  d1-  0.99986
    7.1     1.99089    -0.68243     1  2  s    1.00356
    1.2     2.00000    -4.26181     1  1  px   0.99996
    2.2     2.00000    -4.26181     1  1  pz   0.99996
    3.2     2.00000    -4.26181     1  1  py   0.99996
    4.2     1.00006    -0.13767     1  2  py   0.96614
    5.2     1.00006    -0.13767     1  2  pz   0.96614
    6.2     1.00006    -0.13767     1  2  px   0.96614
    7.2     0.00297     0.48639     1  2  px  -1.14232    1  3  px  -0.74844    1  4  px   1.55686
    8.2     0.00297     0.48639     1  2  pz  -1.14232    1  3  pz  -0.74844    1  4  pz   1.55686
    9.2     0.00297     0.48639     1  2  py  -1.14232    1  3  py  -0.74844    1  4  py   1.55686
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99739108
 
 Energy:     -213.59732035
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba000      -0.14834283     -0.00002122      0.00165876      0.00079159      0.79995221     -0.00000000     -0.00000000
 2 aab000       0.76695192      0.00010969     -0.00113189     -0.00048085     -0.27150644      0.00000000      0.00000000
 2 0a2000       0.00010077     -0.70459164      0.00000000     -0.00000000      0.00000000      0.69964152     -0.00000000
 2 2a0000      -0.00010077      0.70459164     -0.00000000      0.00000000     -0.00000000      0.69964152     -0.00000000
 2 20a000       0.00020826      0.00000003     -0.00044799      0.70459116     -0.00065768      0.00000000      0.00001480
 2 02a000      -0.00020826     -0.00000003      0.00044799     -0.70459116      0.00065768     -0.00000000      0.00001480
 2 a02000      -0.00055950     -0.00000008     -0.70458997     -0.00044656      0.00135771      0.00000000      0.69964152
 2 a20000       0.00055950      0.00000008      0.70458997      0.00044656     -0.00135771     -0.00000000      0.69964152
 2 baa000      -0.61860908     -0.00008847     -0.00052687     -0.00031075     -0.52844577      0.00000000     -0.00000000
 0 22a000       0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000243
 0 2a2000      -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.11474841     -0.00000000
 0 a22000       0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.11474841
 
 Energy:     -213.54170600   -213.54170600   -213.54170600   -213.54170600   -213.54170600   -213.51569244   -213.51569244

 State:              8
 2 aba000      -0.00000000
 2 aab000      -0.00000000
 2 0a2000       0.00000000
 2 2a0000      -0.00000000
 2 20a000       0.69964152
 2 02a000       0.69964152
 2 a02000      -0.00001480
 2 a20000      -0.00001480
 2 baa000       0.00000000
 0 22a000      -0.11474841
 0 2a2000       0.00000000
 0 a22000       0.00000243
 
 Energy:     -213.51569244
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.51       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         4.99      4.24      0.59
 REAL TIME  *         6.04 SEC
 DISK USED  *        36.88 MB (local),      581.09 MB (total)
 SF USED    *        19.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5973204  -0.0
    -213.5417060   6.0
    -213.5417060   6.0
    -213.5417060   6.0
    -213.5417060   6.0
    -213.5417060   6.0
    -213.5156924   2.0
    -213.5156924   2.0
    -213.5156924   2.0
                                                  


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
 Number of external orbitals:      80 (  40  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.59732035

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3722D-06

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.37D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       4054760
 Number of doubly external configurations:        402040
 Total number of contracted configurations:      4490480
 Total number of uncontracted configurations:  102101240

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.66 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1134093 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59732035    -0.00000000    -0.80241979  0.58D-01  0.97D-01     1.81
    2     1     1     1.09030563    -0.61747354  -214.21479389    -0.61747354    -0.01970518  0.26D-02  0.15D-02    17.94
    3     1     1     1.08324312    -0.63545851  -214.23277886    -0.01798497    -0.00031292  0.32D-04  0.38D-04    33.96
    4     1     1     1.08353141    -0.63577821  -214.23309856    -0.00031970    -0.00001298  0.22D-05  0.21D-05    49.88
    5     1     1     1.08371828    -0.63579294  -214.23311329    -0.00001472    -0.00000078  0.69D-07  0.15D-06    65.61
    6     1     1     1.08373428    -0.63579382  -214.23311417    -0.00000088    -0.00000005  0.51D-08  0.98D-08    81.38
    7     1     1     1.08373785    -0.63579388  -214.23311423    -0.00000006    -0.00000000  0.41D-09  0.42D-09    97.15


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.3%
 S   2.2%  26.7%
 P   0.7%  62.0%   3.2%

 Initialization:   0.9%
 Other:            1.0%

 Total CPU:       97.2 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9579252


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95974239 (fixed)   0.95996516 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176626   -0.00524395   -0.00586460
 Singles      0.02410623   -0.10427716   -0.11016725
 Pairs        0.05977952   -0.52627278   -0.51976202
 Total        1.08565202   -0.63579389   -0.63579388
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59732035
 Nuclear energy                         0.00000000
 Kinetic energy                        69.20675020
 One electron energy                 -372.40806215
 Two electron energy                  158.17494792
 Virial quotient                       -3.09555229
 Correlation energy                    -0.63579388
 !MRCI STATE 1.2 Energy              -214.233114228376

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.28757126 (Davidson, fixed reference)
 Cluster corrected energies          -214.28725093 (Davidson, relaxed reference)

 Cluster corrected energies          -214.28569096 (Pople, fixed reference)
 Cluster corrected energies          -214.28535958 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       35.66       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       103.12     98.12      4.24      0.59
 REAL TIME  *       106.02 SEC
 DISK USED  *        72.03 MB (local),        1.05 GB (total)
 SF USED    *       539.06 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.28725093  AU                              


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
 Number of external orbitals:      80 (  40  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  11

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.54170600
     2      -213.54170600
     3      -213.54170600
     4      -213.54170600
     5      -213.54170600
     6      -213.51569244
     7      -213.51569244
     8      -213.51569244

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2852D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.6298D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.6298D-07

 Number of blocks in overlap matrix:   816   Smallest eigenvalue:  0.63D-07
 Number of N-2 electron functions:    1865
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       4990720
 Number of doubly external configurations:       2986520
 Total number of contracted configurations:      8021326
 Total number of uncontracted configurations:  134742286

 Diagonal Coupling coefficients finished.               Storage:  27631767 words, CPU-Time:     53.65 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1397505 words, CPU-time:      0.20 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.54170600     0.00000000    -0.79527637  0.66D-01  0.89D-01    64.08
    1     2     2     1.00000000     0.00000000  -213.54170600    -0.00000000    -0.79539864  0.65D-01  0.89D-01    64.08
    1     3     3     1.00000000     0.00000000  -213.54170600     0.00000000    -0.79551251  0.65D-01  0.89D-01    64.08
    1     4     4     1.00000000     0.00000000  -213.54170600    -0.00000000    -0.79548646  0.65D-01  0.89D-01    64.08
    1     5     5     1.00000000     0.00000000  -213.54170600     0.00000000    -0.79504279  0.66D-01  0.89D-01    64.08
    1     6     6     1.00000000     0.00000000  -213.51569244     0.00000000    -0.78209453  0.49D-01  0.91D-01    64.08
    1     7     7     1.00000000     0.00000000  -213.51569244     0.00000000    -0.78199151  0.49D-01  0.91D-01    64.08
    1     8     8     1.00000000     0.00000000  -213.51569244    -0.00000000    -0.78225834  0.49D-01  0.91D-01    64.08
    2     1     1     1.09317813    -0.62491864  -214.16662464    -0.62491864    -0.01978229  0.29D-02  0.15D-02   306.96
    2     2     2     1.09322429    -0.62489708  -214.16660309    -0.62489708    -0.01979225  0.29D-02  0.15D-02   306.96
    2     3     3     1.09324177    -0.62479388  -214.16649988    -0.62479388    -0.01989248  0.29D-02  0.15D-02   306.96
    2     4     4     1.09318419    -0.62471937  -214.16642537    -0.62471937    -0.01996881  0.29D-02  0.15D-02   306.96
    2     5     5     1.09342177    -0.62449407  -214.16620007    -0.62449407    -0.02018365  0.30D-02  0.15D-02   306.96
    2     6     6     1.08711655    -0.62164102  -214.13733346    -0.62164102    -0.01903868  0.26D-02  0.16D-02   306.96
    2     7     7     1.08708468    -0.62162535  -214.13731778    -0.62162535    -0.01903565  0.26D-02  0.16D-02   306.96
    2     8     8     1.08697564    -0.62151377  -214.13720621    -0.62151377    -0.01910710  0.26D-02  0.16D-02   306.96
    3     1     1     1.08742516    -0.64325621  -214.18496222    -0.01833758    -0.00059218  0.48D-04  0.97D-04   549.86
    3     2     2     1.08742702    -0.64325237  -214.18495837    -0.01835528    -0.00059452  0.48D-04  0.97D-04   549.86
    3     3     3     1.08739013    -0.64324555  -214.18495155    -0.01845167    -0.00059752  0.48D-04  0.98D-04   549.86
    3     4     4     1.08739691    -0.64324211  -214.18494811    -0.01852274    -0.00060500  0.49D-04  0.99D-04   549.86
    3     5     5     1.08738010    -0.64322532  -214.18493132    -0.01873125    -0.00061620  0.49D-04  0.10D-03   549.86
    3     6     6     1.08414548    -0.63966621  -214.15535865    -0.01802519    -0.00071960  0.41D-04  0.14D-03   549.86
    3     7     7     1.08412923    -0.63965956  -214.15535200    -0.01803422    -0.00072257  0.41D-04  0.14D-03   549.86
    3     8     8     1.08404520    -0.63963887  -214.15533131    -0.01812510    -0.00073274  0.41D-04  0.14D-03   549.86
    4     1     1     1.08835128    -0.64395948  -214.18566548    -0.00070326    -0.00007302  0.53D-05  0.13D-04   791.54
    4     2     2     1.08835490    -0.64395880  -214.18566480    -0.00070643    -0.00007330  0.53D-05  0.14D-04   791.54
    4     3     3     1.08835323    -0.64395830  -214.18566430    -0.00071275    -0.00007367  0.54D-05  0.14D-04   791.54
    4     4     4     1.08834456    -0.64395728  -214.18566328    -0.00071517    -0.00007432  0.53D-05  0.14D-04   791.54
    4     5     5     1.08835241    -0.64395697  -214.18566297    -0.00073165    -0.00007440  0.53D-05  0.14D-04   791.54
    4     6     6     1.08634751    -0.64058930  -214.15628174    -0.00092309    -0.00010306  0.69D-05  0.18D-04   791.54
    4     7     7     1.08634549    -0.64058818  -214.15628062    -0.00092862    -0.00010382  0.69D-05  0.18D-04   791.54
    4     8     8     1.08633936    -0.64058536  -214.15627779    -0.00094648    -0.00010587  0.69D-05  0.18D-04   791.54
    5     1     1     1.08897272    -0.64406050  -214.18576650    -0.00010102    -0.00000876  0.67D-06  0.14D-05  1033.49
    5     2     2     1.08897172    -0.64406049  -214.18576649    -0.00010170    -0.00000878  0.66D-06  0.14D-05  1033.49
    5     3     3     1.08897123    -0.64406049  -214.18576649    -0.00010219    -0.00000874  0.66D-06  0.14D-05  1033.49
    5     4     4     1.08897315    -0.64406033  -214.18576633    -0.00010305    -0.00000889  0.67D-06  0.14D-05  1033.49
    5     5     5     1.08896845    -0.64406018  -214.18576618    -0.00010321    -0.00000890  0.66D-06  0.14D-05  1033.49
    5     6     6     1.08735560    -0.64072637  -214.15641881    -0.00013707    -0.00001060  0.79D-06  0.17D-05  1033.49
    5     7     7     1.08735552    -0.64072628  -214.15641872    -0.00013810    -0.00001070  0.80D-06  0.17D-05  1033.49
    5     8     8     1.08735794    -0.64072601  -214.15641845    -0.00014066    -0.00001084  0.79D-06  0.17D-05  1033.49
    6     1     1     1.08894170    -0.64407122  -214.18577722    -0.00001072    -0.00000108  0.99D-07  0.16D-06  1273.56
    6     2     2     1.08894201    -0.64407121  -214.18577721    -0.00001072    -0.00000109  0.10D-06  0.16D-06  1273.56
    6     3     3     1.08894136    -0.64407116  -214.18577716    -0.00001067    -0.00000108  0.99D-07  0.16D-06  1273.56
    6     4     4     1.08894237    -0.64407115  -214.18577715    -0.00001082    -0.00000107  0.98D-07  0.16D-06  1273.56
    6     5     5     1.08894150    -0.64407112  -214.18577712    -0.00001095    -0.00000109  0.10D-06  0.16D-06  1273.56
    6     6     6     1.08729797    -0.64073922  -214.15643166    -0.00001285    -0.00000139  0.12D-06  0.22D-06  1273.56
    6     7     7     1.08729904    -0.64073917  -214.15643161    -0.00001289    -0.00000137  0.12D-06  0.22D-06  1273.56
    6     8     8     1.08729664    -0.64073915  -214.15643158    -0.00001313    -0.00000142  0.12D-06  0.22D-06  1273.56
    7     1     1     1.08898032    -0.64407250  -214.18577850    -0.00000128    -0.00000017  0.17D-07  0.28D-07  1515.68
    7     2     2     1.08898012    -0.64407250  -214.18577850    -0.00000129    -0.00000017  0.17D-07  0.28D-07  1515.68
    7     3     3     1.08897993    -0.64407244  -214.18577844    -0.00000129    -0.00000017  0.17D-07  0.28D-07  1515.68
    7     4     4     1.08898004    -0.64407241  -214.18577841    -0.00000126    -0.00000016  0.16D-07  0.28D-07  1515.68
    7     5     5     1.08898033    -0.64407240  -214.18577841    -0.00000128    -0.00000016  0.17D-07  0.27D-07  1515.68
    7     6     6     1.08734525    -0.64074095  -214.15643339    -0.00000173    -0.00000024  0.25D-07  0.38D-07  1515.68
    7     7     7     1.08734461    -0.64074090  -214.15643334    -0.00000174    -0.00000025  0.26D-07  0.39D-07  1515.68
    7     8     8     1.08734547    -0.64074087  -214.15643331    -0.00000173    -0.00000024  0.25D-07  0.37D-07  1515.68
    8     1     1     1.08898931    -0.64407271  -214.18577871    -0.00000021    -0.00000003  0.29D-08  0.49D-08  1756.39
    8     2     2     1.08898945    -0.64407270  -214.18577870    -0.00000021    -0.00000003  0.30D-08  0.49D-08  1756.39
    8     3     3     1.08898931    -0.64407265  -214.18577865    -0.00000021    -0.00000003  0.30D-08  0.49D-08  1756.39
    8     4     4     1.08898932    -0.64407261  -214.18577861    -0.00000020    -0.00000003  0.29D-08  0.48D-08  1756.39
    8     5     5     1.08898923    -0.64407261  -214.18577861    -0.00000020    -0.00000003  0.28D-08  0.48D-08  1756.39
    8     6     6     1.08736518    -0.64074125  -214.15643368    -0.00000030    -0.00000004  0.35D-08  0.67D-08  1756.39
    8     7     7     1.08736498    -0.64074121  -214.15643365    -0.00000030    -0.00000004  0.35D-08  0.68D-08  1756.39
    8     8     8     1.08736508    -0.64074116  -214.15643360    -0.00000029    -0.00000004  0.34D-08  0.66D-08  1756.39
    9     1     1     1.08898931    -0.64407271  -214.18577871    -0.00000000    -0.00000003  0.29D-08  0.49D-08  1917.67
    9     2     2     1.08898945    -0.64407270  -214.18577870    -0.00000000    -0.00000003  0.30D-08  0.49D-08  1917.67
    9     3     3     1.08898931    -0.64407265  -214.18577865    -0.00000000    -0.00000003  0.30D-08  0.49D-08  1917.67
    9     4     4     1.08898932    -0.64407261  -214.18577861    -0.00000000    -0.00000003  0.29D-08  0.48D-08  1917.67
    9     5     5     1.08898923    -0.64407261  -214.18577861    -0.00000000    -0.00000003  0.28D-08  0.48D-08  1917.67
    9     6     6     1.08737302    -0.64074130  -214.15643374    -0.00000005    -0.00000000  0.25D-09  0.39D-09  1917.67
    9     7     7     1.08737301    -0.64074126  -214.15643370    -0.00000005    -0.00000000  0.25D-09  0.40D-09  1917.67
    9     8     8     1.08736508    -0.64074116  -214.15643360    -0.00000000    -0.00000004  0.34D-08  0.66D-08  1917.67


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   1.0%  13.4%
 P   0.5%  60.3%  17.0%

 Initialization:   2.8%
 Other:            3.2%

 Total CPU:     1917.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000           0.2728777  -0.0524955   0.0000405   0.0007653   0.9134832   0.0000000  -0.0000000   0.0000000
 2222222222//\000           0.8901846  -0.2052257   0.0001394  -0.0000732  -0.2777117   0.0000000   0.0000000  -0.0000000
 2222222222/20000           0.0000666  -0.0001477  -0.6744844   0.0301158  -0.0000237   0.0001501   0.6717552   0.0099317
 222222222202/000          -0.0001179  -0.0000120   0.0301157   0.6744837  -0.0005319  -0.0001367  -0.0099317   0.6717580
 222222222220/000           0.0001179   0.0000120  -0.0301157  -0.6744831   0.0005319  -0.0001367  -0.0099317   0.6717587
 2222222222/02000          -0.0000666   0.0001477   0.6744826  -0.0301157   0.0000237   0.0001501   0.6717572   0.0099318
 22222222220/2000           0.1496312   0.6583289  -0.0001274   0.0000382  -0.0068657   0.6718306  -0.0001521   0.0001345
 22222222222/0000          -0.1496316  -0.6583308   0.0001274  -0.0000382   0.0068657   0.6718285  -0.0001521   0.0001345
 22222202222/2000           0.0000000   0.0000002   0.0000000   0.0000000  -0.0000000  -0.0958255   0.0000217  -0.0000192
 222222022222/000          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000195   0.0014166  -0.0958158
 2222220222/22000           0.0000000   0.0000000   0.0000003  -0.0000000  -0.0000000  -0.0000214  -0.0958151  -0.0014166

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.932780    0.212144   -0.000094   -0.000167   -0.034445   -0.000000    0.000000   -0.000000
 2          -0.211620    0.933365    0.000209   -0.000017    0.017804   -0.000001   -0.000000   -0.000000
 3           0.000145   -0.000181    0.956267    0.042697   -0.000007    0.000000   -0.000001    0.000000
 4           0.000182    0.000054   -0.042697    0.956267    0.000749   -0.000000    0.000000    0.000000
 5           0.037532   -0.009734    0.000034   -0.000754    0.956434    0.000000    0.000000   -0.000000
 6           0.000000    0.000002    0.000000    0.000000    0.000000    0.957946    0.000214   -0.000195
 7          -0.000000   -0.000000    0.000001    0.000000   -0.000000   -0.000217    0.957841   -0.014161
 8           0.000000    0.000000    0.000000   -0.000000    0.000000    0.000192    0.014161    0.957845

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957220   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.957220   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.957220   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.957220    0.000000    0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.957220   -0.000000    0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.957946    0.000000    0.000000
 7           0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.957946    0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.957950


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.93278019 (fixed)   0.95739813 (relaxed)   0.95722017 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00219608   -0.00641372   -0.49043367
 Singles      0.02795690   -0.11023725   -0.11750377
 Pairs        0.06122784    0.00000000   -0.03613528
 Total        1.09138082   -0.11665096   -0.64407271
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54170600
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18408260
 One electron energy                 -372.25604527
 Two electron energy                  158.07026656
 Virial quotient                       -3.09588233
 Correlation energy                    -0.64407271
 !MRCI STATE 1.2 Energy              -214.185778709786

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24463460 (Davidson, fixed reference)
 Cluster corrected energies          -214.24437330 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24463460 (Davidson, rotated reference)

 Cluster corrected energies          -214.24356117 (Pople, fixed reference)
 Cluster corrected energies          -214.24328445 (Pople, relaxed reference)
 Cluster corrected energies          -214.24356117 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.93336515 (fixed)   0.95739808 (relaxed)   0.95722012 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00219606   -0.00641371   -0.49043366
 Singles      0.02795687   -0.11023718   -0.11750376
 Pairs        0.06122800    0.00000000   -0.03613528
 Total        1.09138093   -0.11665089   -0.64407270
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54170600
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18410453
 One electron energy                 -372.25606590
 Two electron energy                  158.07028720
 Virial quotient                       -3.09588135
 Correlation energy                    -0.64407270
 !MRCI STATE 2.2 Energy              -214.185778703681

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24463467 (Davidson, fixed reference)
 Cluster corrected energies          -214.24437338 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24463467 (Davidson, rotated reference)

 Cluster corrected energies          -214.24356124 (Pople, fixed reference)
 Cluster corrected energies          -214.24328453 (Pople, relaxed reference)
 Cluster corrected energies          -214.24356124 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95626741 (fixed)   0.95739813 (relaxed)   0.95722018 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00219606   -0.00641372   -0.49043373
 Singles      0.02795678   -0.11023711   -0.11750369
 Pairs        0.06122795   -0.00000001   -0.03613522
 Total        1.09138080   -0.11665083   -0.64407265
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54170600
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18409963
 One electron energy                 -372.25606069
 Two electron energy                  158.07028203
 Virial quotient                       -3.09588157
 Correlation energy                    -0.64407265
 !MRCI STATE 3.2 Energy              -214.185778652714

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24463453 (Davidson, fixed reference)
 Cluster corrected energies          -214.24437324 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24463453 (Davidson, rotated reference)

 Cluster corrected energies          -214.24356110 (Pople, fixed reference)
 Cluster corrected energies          -214.24328439 (Pople, relaxed reference)
 Cluster corrected energies          -214.24356110 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.95626712 (fixed)   0.95739813 (relaxed)   0.95722018 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00219606   -0.00641371   -0.49043350
 Singles      0.02795675   -0.11023707   -0.11750364
 Pairs        0.06122799   -0.00000025   -0.03613547
 Total        1.09138080   -0.11665103   -0.64407261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54170600
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18410618
 One electron energy                 -372.25606723
 Two electron energy                  158.07028862
 Virial quotient                       -3.09588127
 Correlation energy                    -0.64407261
 !MRCI STATE 4.2 Energy              -214.185778613891

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24463449 (Davidson, fixed reference)
 Cluster corrected energies          -214.24437320 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24463449 (Davidson, rotated reference)

 Cluster corrected energies          -214.24356106 (Pople, fixed reference)
 Cluster corrected energies          -214.24328435 (Pople, relaxed reference)
 Cluster corrected energies          -214.24356106 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.95643428 (fixed)   0.95739817 (relaxed)   0.95722020 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00219609   -0.00641372   -0.49043375
 Singles      0.02795680   -0.11023710   -0.11750359
 Pairs        0.06122786    0.00000000   -0.03613527
 Total        1.09138074   -0.11665082   -0.64407261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54170600
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18407380
 One electron energy                 -372.25603616
 Two electron energy                  158.07025755
 Virial quotient                       -3.09588272
 Correlation energy                    -0.64407261
 !MRCI STATE 5.2 Energy              -214.185778607979

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24463444 (Davidson, fixed reference)
 Cluster corrected energies          -214.24437314 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24463444 (Davidson, rotated reference)

 Cluster corrected energies          -214.24356101 (Pople, fixed reference)
 Cluster corrected energies          -214.24328429 (Pople, relaxed reference)
 Cluster corrected energies          -214.24356101 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95794603 (fixed)   0.95815664 (relaxed)   0.95794607 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00216522   -0.00616713   -0.49798055
 Singles      0.02229325   -0.09957445   -0.10448228
 Pairs        0.06526896    0.00010887   -0.03827847
 Total        1.08972742   -0.10563271   -0.64074130
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51569244
 Nuclear energy                         0.00000000
 Kinetic energy                        69.17898620
 One electron energy                 -372.17208708
 Two electron energy                  158.01565334
 Virial quotient                       -3.09568621
 Correlation energy                    -0.64074130
 !MRCI STATE 6.2 Energy              -214.156433737064

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21392580 (Davidson, fixed reference)
 Cluster corrected energies          -214.21361895 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21392580 (Davidson, rotated reference)

 Cluster corrected energies          -214.21279659 (Pople, fixed reference)
 Cluster corrected energies          -214.21247257 (Pople, relaxed reference)
 Cluster corrected energies          -214.21279659 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95784137 (fixed)   0.95815664 (relaxed)   0.95794608 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00216521   -0.00616713   -0.50513836
 Singles      0.02229323   -0.09957442   -0.10448223
 Pairs        0.06526896    0.00790894   -0.03112067
 Total        1.08972740   -0.09783261   -0.64074126
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51569244
 Nuclear energy                         0.00000000
 Kinetic energy                        69.17898582
 One electron energy                 -372.17208608
 Two electron energy                  158.01565238
 Virial quotient                       -3.09568623
 Correlation energy                    -0.64074126
 !MRCI STATE 7.2 Energy              -214.156433700048

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21392575 (Davidson, fixed reference)
 Cluster corrected energies          -214.21361890 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21392575 (Davidson, rotated reference)

 Cluster corrected energies          -214.21279654 (Pople, fixed reference)
 Cluster corrected energies          -214.21247252 (Pople, relaxed reference)
 Cluster corrected energies          -214.21279654 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.95784486 (fixed)   0.95816014 (relaxed)   0.95794956 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00216523   -0.00616710   -0.00698614
 Singles      0.02229411   -0.09957577   -0.10448353
 Pairs        0.06526014   -0.53493981   -0.52927150
 Total        1.08971948   -0.64068268   -0.64074116
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51569244
 Nuclear energy                         0.00000000
 Kinetic energy                        69.17904620
 One electron energy                 -372.17225048
 Two electron energy                  158.01581688
 Virial quotient                       -3.09568353
 Correlation energy                    -0.64074116
 !MRCI STATE 8.2 Energy              -214.156433601561

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21392057 (Davidson, fixed reference)
 Cluster corrected energies          -214.21361370 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21392057 (Davidson, rotated reference)

 Cluster corrected energies          -214.21279107 (Pople, fixed reference)
 Cluster corrected energies          -214.21246703 (Pople, relaxed reference)
 Cluster corrected energies          -214.21279107 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      535.47       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      2352.60   2249.46     98.12      4.24      0.59
 REAL TIME  *      2403.78 SEC
 DISK USED  *       571.84 MB (local),        7.88 GB (total)
 SF USED    *         5.27 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -214.24463460  AU                              
 SETTING HLSDIAG(3)     =      -214.24463467  AU                              
 SETTING HLSDIAG(4)     =      -214.24463453  AU                              
 SETTING HLSDIAG(5)     =      -214.24463449  AU                              
 SETTING HLSDIAG(6)     =      -214.24463444  AU                              
 SETTING HLSDIAG(7)     =      -214.21392580  AU                              
 SETTING HLSDIAG(8)     =      -214.21392575  AU                              
 SETTING HLSDIAG(9)     =      -214.21392057  AU                              


         HLSDIAG
    -214.2872509
    -214.2446346
    -214.2446347
    -214.2446345
    -214.2446345
    -214.2446344
    -214.2139258
    -214.2139257
    -214.2139206
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -214.233114
 Replaced energies:   -214.287251

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.185779   -214.185779   -214.185779   -214.185779   -214.185779   -214.156434   -214.156434   -214.156434
 Replaced energies:   -214.244635   -214.244635   -214.244635   -214.244634   -214.244634   -214.213926   -214.213926   -214.213921



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.28725093

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01       0.00      -0.00       1.37
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -1.25

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.01       0.00      -0.00      -0.00   -7076.53

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01       0.00      -0.00       0.79
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.72

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00    9353.20       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00     -75.28       0.01       0.01       4.63   -1100.23

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00    9353.19       0.00       0.00       0.00       0.00
                            0.00      -0.01      -0.00      -0.00      75.28      -0.00       0.01       0.02      16.91     301.18

    7   3.2  0.5  0.5      -0.01       0.00      -0.01       0.00       0.00       0.00    9353.22       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.01      -0.01      -0.00     -38.66       0.03       0.66

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9353.23       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.01      -0.02      38.66       0.00       0.00       2.67

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    9353.24       0.00
                            0.00       0.00      -0.00      -0.00      -4.63     -16.91      -0.03      -0.00      -0.00    4900.85

   10   6.2  0.5  0.5       1.37       0.00       0.79       0.00       0.00       0.00       0.00       0.00       0.00   16093.01
                            1.25    7076.53      -0.72      -0.00    1100.23    -301.18      -0.66      -2.67   -4900.85       0.00

   11   7.2  0.5  0.5    6127.79       0.00    3537.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           90.60      -1.60     -52.31      -0.00      -1.00      -0.02     130.00    4355.77      -2.33      -0.01

   12   8.2  0.5  0.5      90.60       0.00      52.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -6127.74       1.42    3537.85      -0.00      -0.22       0.89    4355.75    -130.00      -0.88      -0.01

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.02      51.69       6.27      -0.01       0.24
                           -0.00       0.00      -0.00      -0.00       0.00       0.01       7.57     -22.45       0.00      -0.31

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.02      -0.00     -10.57      38.20      -0.02       0.61
                           -0.00       0.00      -0.01      -0.00      -0.01      -0.00      37.82       2.56      -0.00       0.22

   15   3.2  0.5 -0.5       0.00      -0.01       0.00      -0.01     -51.69      10.57      -0.00       0.03      56.41     194.38
                           -0.00      -0.00      -0.00       0.00      -7.57     -37.82      -0.00      -0.00       3.69   -4353.37

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00      -6.27     -38.20      -0.03       0.00      -2.13    4353.37
                           -0.00      -0.00       0.00       0.00      22.45      -2.56       0.00      -0.00      73.86     194.38

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.01       0.02     -56.41       2.13       0.00      -2.67
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -3.69     -73.86      -0.00       0.13

   18   6.2  0.5 -0.5       0.00       0.79       0.00       1.37      -0.24      -0.61    -194.38   -4353.37       2.67      -0.00
                           -0.00       0.72    7076.53      -1.25       0.31      -0.22    4353.37    -194.38      -0.13       0.00

   19   7.2  0.5 -0.5       0.00    3537.88       0.00    6127.79   -3604.91     717.45      -0.50      -2.32   -3436.28       0.65
                           -0.00      52.31      -1.60     -90.60    -896.32   -4264.63      -0.15      -0.21      22.67     -43.98

   20   8.2  0.5 -0.5       0.00      52.31       0.00      90.60     912.58    4260.16      -0.87      -0.67     -95.12     -43.93
                           -0.00   -3537.85       1.42    6127.74   -4705.00    1018.60       0.15       0.34    1464.02      -0.65


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5    6127.79      90.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -90.60    6127.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00       0.00      -0.00      -0.01       0.00      -0.00       0.79    3537.88      52.31
                            1.60      -1.42      -0.00      -0.00       0.00       0.00      -0.00      -0.72     -52.31    3537.85

    3   1.2  1.5 -0.5    3537.88      52.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           52.31   -3537.85       0.00       0.01       0.00      -0.00      -0.00   -7076.53       1.60      -1.42

    4   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.01       0.00      -0.00       1.37    6127.79      90.60
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       1.25      90.60   -6127.74

    5   1.2  0.5  0.5       0.00       0.00      -0.00      -0.02     -51.69      -6.27       0.01      -0.24   -3604.91     912.58
                            1.00       0.22      -0.00       0.01       7.57     -22.45       0.00      -0.31     896.32    4705.00

    6   2.2  0.5  0.5       0.00       0.00       0.02      -0.00      10.57     -38.20       0.02      -0.61     717.45    4260.16
                            0.02      -0.89      -0.01       0.00      37.82       2.56      -0.00       0.22    4264.63   -1018.60

    7   3.2  0.5  0.5       0.00       0.00      51.69     -10.57      -0.00      -0.03     -56.41    -194.38      -0.50      -0.87
                         -130.00   -4355.75      -7.57     -37.82       0.00      -0.00       3.69   -4353.37       0.15      -0.15

    8   4.2  0.5  0.5       0.00       0.00       6.27      38.20       0.03       0.00       2.13   -4353.37      -2.32      -0.67
                        -4355.77     130.00      22.45      -2.56       0.00       0.00      73.86     194.38       0.21      -0.34

    9   5.2  0.5  0.5       0.00       0.00      -0.01      -0.02      56.41      -2.13       0.00       2.67   -3436.28     -95.12
                            2.33       0.88      -0.00       0.00      -3.69     -73.86       0.00       0.13     -22.67   -1464.02

   10   6.2  0.5  0.5       0.00       0.00       0.24       0.61     194.38    4353.37      -2.67      -0.00       0.65     -43.93
                            0.01       0.01       0.31      -0.22    4353.37    -194.38      -0.13      -0.00      43.98       0.65

   11   7.2  0.5  0.5   16093.02       0.00    3604.91    -717.45       0.50       2.32    3436.28      -0.65      -0.00       0.01
                            0.00      43.93    -896.32   -4264.63      -0.15      -0.21      22.67     -43.98      -0.00      -0.01

   12   8.2  0.5  0.5       0.00   16094.15    -912.58   -4260.16       0.87       0.67      95.12      43.93      -0.01       0.00
                          -43.93      -0.00   -4705.00    1018.60       0.15       0.34    1464.02      -0.65       0.01      -0.00

   13   1.2  0.5 -0.5    3604.91    -912.58    9353.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          896.32    4705.00      -0.00      75.28      -0.01      -0.01      -4.63    1100.23      -1.00      -0.22

   14   2.2  0.5 -0.5    -717.45   -4260.16       0.00    9353.19       0.00       0.00       0.00       0.00       0.00       0.00
                         4264.63   -1018.60     -75.28       0.00      -0.01      -0.02     -16.91    -301.18      -0.02       0.89

   15   3.2  0.5 -0.5       0.50       0.87       0.00       0.00    9353.22       0.00       0.00       0.00       0.00       0.00
                            0.15      -0.15       0.01       0.01       0.00      38.66      -0.03      -0.66     130.00    4355.75

   16   4.2  0.5 -0.5       2.32       0.67       0.00       0.00       0.00    9353.23       0.00       0.00       0.00       0.00
                            0.21      -0.34       0.01       0.02     -38.66      -0.00      -0.00      -2.67    4355.77    -130.00

   17   5.2  0.5 -0.5    3436.28      95.12       0.00       0.00       0.00       0.00    9353.24       0.00       0.00       0.00
                          -22.67   -1464.02       4.63      16.91       0.03       0.00       0.00   -4900.85      -2.33      -0.88

   18   6.2  0.5 -0.5      -0.65      43.93       0.00       0.00       0.00       0.00       0.00   16093.01       0.00       0.00
                           43.98       0.65   -1100.23     301.18       0.66       2.67    4900.85      -0.00      -0.01      -0.01

   19   7.2  0.5 -0.5      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00   16093.02       0.00
                            0.00      -0.01       1.00       0.02    -130.00   -4355.77       2.33       0.01      -0.00     -43.93

   20   8.2  0.5 -0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16094.15
                            0.01       0.00       0.22      -0.89   -4355.75     130.00       0.88       0.01      43.93       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -214.31060821    -0.02335728    -5126.33      0.00000000        0.00      0.0000
     2  -214.31060821    -0.02335728    -5126.33      0.00000000        0.00      0.0000
     3  -214.31060724    -0.02335631    -5126.12      0.00000097        0.21      0.0000
     4  -214.31060724    -0.02335631    -5126.12      0.00000097        0.21      0.0000
     5  -214.26269053     0.02456040     5390.39      0.04791768    10516.72      1.3039
     6  -214.26269053     0.02456040     5390.39      0.04791768    10516.72      1.3039
     7  -214.26269022     0.02456071     5390.45      0.04791799    10516.78      1.3039
     8  -214.26269022     0.02456071     5390.45      0.04791799    10516.78      1.3039
     9  -214.24428247     0.04296846     9430.49      0.06632574    14556.82      1.8048
    10  -214.24428247     0.04296846     9430.49      0.06632574    14556.82      1.8048
    11  -214.24428235     0.04296858     9430.51      0.06632586    14556.84      1.8048
    12  -214.24428235     0.04296858     9430.51      0.06632586    14556.84      1.8048
    13  -214.24428229     0.04296864     9430.53      0.06632592    14556.86      1.8048
    14  -214.24428229     0.04296864     9430.53      0.06632592    14556.86      1.8048
    15  -214.21432450     0.07292643    16005.50      0.09628371    21131.83      2.6200
    16  -214.21432450     0.07292643    16005.50      0.09628371    21131.83      2.6200
    17  -214.17284040     0.11441053    25110.21      0.13776781    30236.54      3.7489
    18  -214.17284040     0.11441053    25110.21      0.13776781    30236.54      3.7489
    19  -214.17283849     0.11441244    25110.63      0.13776972    30236.96      3.7489
    20  -214.17283849     0.11441244    25110.63      0.13776972    30236.96      3.7489


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.004802197   0.405498792   0.002723619   0.705285928  -0.004457764   0.287745601  -0.003411065  -0.419105473
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.062767569   0.000997186  -0.388944371   0.001356044  -0.418517876  -0.006337364  -0.287357192   0.002439237
                         0.702435014  -0.008310142   0.114787861  -0.000448212  -0.021747799  -0.000290595   0.015303342  -0.000092749

    3    1.2  1.5 -0.5   0.008369754   0.704930683  -0.001425492  -0.405355009  -0.006338402   0.418810954   0.002440471   0.287577880
                        -0.000008239   0.020674823  -0.000087865  -0.011886705  -0.000266996   0.015085235   0.000050786   0.010359124

    4    1.2  1.5 -1.5  -0.047915426   0.000567448   0.682002927  -0.002633707  -0.286634171  -0.004440545   0.419043489  -0.003410561
                         0.402657897  -0.004768553  -0.179722699   0.000694039  -0.025266238  -0.000391425  -0.007207755   0.000058663

    5    1.2  0.5  0.5  -0.014574473   0.000175678  -0.175943930   0.000689431  -0.185800827  -0.002886510   0.457796564  -0.003701188
                        -0.060823590   0.000756398   0.088067776  -0.000340039   0.044110675   0.000586370  -0.102694742   0.000822902

    6    2.2  0.5  0.5  -0.101283183   0.001218168   0.087352822  -0.000374135   0.011505868   0.000139501  -0.113340133   0.000828647
                        -0.000696672   0.000012796   0.157271442  -0.000607829   0.282558445   0.004368314  -0.404682044   0.003292914

    7    3.2  0.5  0.5   0.001249341   0.103574384  -0.000696808  -0.178513392   0.003233227  -0.218396722  -0.003730055  -0.456892257
                        -0.000117372  -0.004666302  -0.000045609  -0.002627710  -0.000169697   0.009509203   0.000051546  -0.007175229

    8    4.2  0.5  0.5  -0.000046727  -0.000076417   0.000027112   0.005355642  -0.000317105  -0.003284323   0.000055420   0.011453062
                        -0.002611722  -0.206375010  -0.000027708  -0.000287628  -0.007700750   0.504807253   0.000393202   0.039713844

    9    5.2  0.5  0.5   0.019307158  -0.000291338   0.056473191  -0.000186223  -0.470558042  -0.007145301  -0.184234169   0.001587952
                        -0.196635915   0.002489344  -0.019802342   0.000077916  -0.029703744  -0.000813391   0.017470224  -0.000142646

   10    6.2  0.5  0.5   0.339234211  -0.004090239   0.055436036  -0.000259906   0.011043004   0.000200370  -0.007772097   0.000022774
                         0.030313071  -0.000482571   0.187838422  -0.000734194  -0.212529769  -0.003213242  -0.145937928   0.001187012

   11    7.2  0.5  0.5  -0.004105842  -0.339851506  -0.000807065  -0.197034497  -0.003572945   0.232917057  -0.000878522  -0.111258004
                        -0.000004686  -0.004982474  -0.000043235  -0.002937570  -0.000024864   0.004129259   0.000014590  -0.001174684

   12    8.2  0.5  0.5   0.000006343  -0.000032519  -0.000021868  -0.005783407   0.000017221  -0.000387046  -0.000027465  -0.004275215
                        -0.000006482  -0.000698137   0.001521003   0.392837048   0.000307487  -0.020147323   0.002090498   0.257340311

   13    1.2  0.5 -0.5   0.000730339   0.058675284   0.000753321   0.192577291   0.002823873  -0.181209913   0.003714793   0.459494997
                         0.000263826   0.021659534   0.000153131   0.040326004   0.000837563  -0.060255012   0.000759128   0.094806392

   14    2.2  0.5 -0.5  -0.000131237  -0.011276251  -0.000206895  -0.044392821  -0.000522534   0.036272192  -0.000771893  -0.106363669
                         0.001211146   0.100655923   0.000683101   0.174339036   0.004339191  -0.280456749   0.003306678   0.406571411

   15    3.2  0.5 -0.5  -0.016872390   0.000264177  -0.171950682   0.000662183   0.216718176   0.003205838   0.456701285  -0.003730390
                         0.102297360  -0.001226719   0.048030186  -0.000221665   0.028649356   0.000452943  -0.015031778   0.000012611

   16    4.2  0.5 -0.5  -0.204920132   0.002587903   0.005252135  -0.000033278  -0.041054254  -0.000992064  -0.010768371   0.000048649
                        -0.024462012   0.000355012  -0.001086605  -0.000019884   0.503145801   0.007643161   0.039904940  -0.000394097

   17    5.2  0.5 -0.5   0.002506330   0.197539713  -0.000199930  -0.059654971   0.007189124  -0.471348705  -0.001590171  -0.184507374
                         0.000004854   0.004063425  -0.000027890  -0.004757987  -0.000182838  -0.011729539  -0.000115315  -0.014299190

   18    6.2  0.5 -0.5   0.000004130   0.009984628  -0.000064237  -0.005740524   0.000082551  -0.007661370  -0.000002357  -0.005261114
                        -0.004118606  -0.340439479   0.000776187   0.195763820  -0.003218424   0.212678523   0.001187229   0.146050009

   19    7.2  0.5 -0.5   0.035210702  -0.000480510  -0.189781407   0.000769405  -0.232379985  -0.003561328   0.111221348  -0.000878643
                        -0.338059281   0.004077630   0.053049410  -0.000247466  -0.016338568  -0.000288963  -0.003087920   0.000000520

   20    8.2  0.5 -0.5  -0.000689404   0.000007186  -0.105696189   0.000408732   0.002154638   0.000044155   0.008700308  -0.000063413
                        -0.000114786  -0.000005532  -0.378394913   0.001465219  -0.020035518  -0.000304787   0.257228727  -0.002089716


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000730  -0.000000115   0.000000784  -0.000000000  -0.000000211  -0.000000034  -0.000014325  -0.000001777
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000000044  -0.000000286   0.000000001   0.000000447  -0.000000008   0.000000060  -0.000000797   0.000006457
                        -0.000000036  -0.000000227   0.000000000   0.000000084  -0.000000075   0.000000472   0.000000680  -0.000005478

    3    1.2  1.5 -0.5   0.000000325  -0.000000051   0.000000454  -0.000000001  -0.000000470  -0.000000075   0.000008464   0.000001047
                         0.000000166  -0.000000025   0.000000035   0.000000000   0.000000075   0.000000013   0.000000244   0.000000033

    4    1.2  1.5 -1.5  -0.000000047  -0.000000302   0.000000000   0.000000757  -0.000000009   0.000000060   0.000001388  -0.000011186
                        -0.000000104  -0.000000664   0.000000000   0.000000203  -0.000000032   0.000000203  -0.000001110   0.000008948

    5    1.2  0.5  0.5  -0.061603637  -0.394471921  -0.000417684  -0.371622729   0.000791423  -0.004783682  -0.000002007   0.000016162
                        -0.084808808  -0.543180123  -0.000116915   0.010143388  -0.001903857   0.011226331   0.000002423  -0.000019533

    6    2.2  0.5  0.5   0.091789774   0.588894606  -0.000143845  -0.025514985  -0.000695719   0.005233388   0.000002287  -0.000018388
                        -0.063424638  -0.405583865   0.000086135   0.274899848  -0.000203469   0.002464754   0.000001716  -0.000013832

    7    3.2  0.5  0.5   0.001113587  -0.000271219   0.734293434  -0.000473796  -0.231062165  -0.036417014   0.000023517   0.000002919
                        -0.040604923   0.006152459   0.035177997   0.000312460   0.055520741   0.009423334   0.000000325   0.000000045

    8    4.2  0.5  0.5  -0.013686098   0.002015270  -0.030417059  -0.000070149   0.102362578   0.017080448  -0.000000699  -0.000000086
                         0.088000311  -0.013827423   0.470361279  -0.000483439   0.591732059   0.093767482  -0.000000518  -0.000000060

    9    5.2  0.5  0.5  -0.007463673  -0.046689417  -0.000150132   0.148207248  -0.015011978   0.103073062   0.000000696  -0.000005649
                        -0.007764161  -0.050060982  -0.000183527   0.031894011  -0.117483946   0.739976127  -0.000000656   0.000005294

   10    6.2  0.5  0.5   0.000000096   0.000000607   0.000000000  -0.000000225   0.000000063  -0.000000395  -0.046129670   0.370728335
                        -0.000000104  -0.000000674   0.000000001   0.000000834  -0.000000007   0.000000053  -0.054190705   0.436855060

   11    7.2  0.5  0.5   0.000001070  -0.000000167   0.000001866  -0.000000000  -0.000000749  -0.000000119  -0.572889533  -0.071244414
                         0.000000169  -0.000000026   0.000000024   0.000000001   0.000000088   0.000000015  -0.008163868  -0.001046774

   12    8.2  0.5  0.5  -0.000000213   0.000000033   0.000000036   0.000000000  -0.000000104  -0.000000017   0.008166444   0.001022031
                        -0.000000104   0.000000016  -0.000000721   0.000000001  -0.000000387  -0.000000060  -0.572877924  -0.071068970

   13    1.2  0.5 -0.5  -0.657680344   0.102691634   0.356299756  -0.000433713   0.009423423   0.001603693  -0.000024822  -0.000003081
                        -0.134570822   0.021023093   0.106098185   0.000004683  -0.007753272  -0.001295835  -0.000005158  -0.000000639

   14    2.2  0.5 -0.5  -0.125785881   0.019794574  -0.046593384  -0.000116611   0.003839577   0.000391268   0.000005720   0.000000714
                         0.703898459  -0.109800829   0.272121292  -0.000120469   0.004326778   0.000610192  -0.000022288  -0.000002769

   15    3.2  0.5 -0.5   0.005489722   0.036510685   0.000376641   0.718326273  -0.001220386   0.011839548  -0.000002252   0.000018161
                        -0.002790925  -0.017803646   0.000424564   0.156306444  -0.037596659   0.237343848   0.000001858  -0.000014944

   16    4.2  0.5 -0.5  -0.011756697  -0.074466000   0.000193030   0.092510099   0.094780784  -0.596597705   0.000000030  -0.000000222
                         0.007552417   0.048848528  -0.000448747  -0.462176170  -0.010034204   0.068528133  -0.000000101   0.000000842

   17    5.2  0.5 -0.5  -0.064886556   0.010155489  -0.151409491  -0.000192562   0.739034664   0.116953314   0.000007719   0.000000953
                        -0.021811430   0.003585340  -0.007601490   0.000138353  -0.109619755  -0.018701854   0.000000606   0.000000078

   18    6.2  0.5 -0.5  -0.000000362   0.000000056   0.000000002   0.000000000  -0.000000060  -0.000000011  -0.016622999  -0.002172778
                         0.000000832  -0.000000130   0.000000864  -0.000000001  -0.000000394  -0.000000062   0.572717659   0.071132679

   19    7.2  0.5 -0.5  -0.000000093  -0.000000597   0.000000000   0.000001809  -0.000000019   0.000000127   0.054981317  -0.442273262
                        -0.000000141  -0.000000904   0.000000001   0.000000460  -0.000000119   0.000000744  -0.045320162   0.364229910

   20    8.2  0.5 -0.5   0.000000028   0.000000182  -0.000000000  -0.000000152  -0.000000063   0.000000400  -0.045191250   0.364224671
                         0.000000023   0.000000151   0.000000001   0.000000705   0.000000000  -0.000000009  -0.054859767   0.442262587


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5   0.007740225   0.141830213   0.025710308  -0.242480585
                        -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.124320213   0.006889798  -0.134519821  -0.014201678
                         0.209346011  -0.011425344   0.043093615   0.004568929

    3    1.2  1.5 -0.5   0.013338092   0.243361767  -0.014910885   0.141186856
                         0.000321109   0.007504543  -0.000477786   0.004348987

    4    1.2  1.5 -1.5  -0.076143187   0.004155429   0.233088924   0.024714506
                         0.119657948  -0.006530199  -0.066831039  -0.007086120

    5    1.2  0.5  0.5   0.020985504  -0.001136248  -0.265582709  -0.028172795
                        -0.095399060   0.005260956   0.140146430   0.014859485

    6    2.2  0.5  0.5  -0.141169435   0.007731468   0.138364741   0.014727242
                        -0.068855925   0.003765042   0.236695902   0.025097934

    7    3.2  0.5  0.5   0.008678411   0.157470999  -0.029036012   0.273825988
                        -0.000456438  -0.006829907  -0.000498692   0.004176742

    8    4.2  0.5  0.5   0.000050562   0.000279925   0.000855383  -0.007982970
                        -0.017565838  -0.316842177   0.000090449  -0.001347142

    9    5.2  0.5  0.5   0.156968942  -0.008681850   0.087232510   0.009188258
                        -0.258953375   0.014383270  -0.032853533  -0.003482071

   10    6.2  0.5  0.5  -0.495218561   0.027158631  -0.101927637  -0.010880138
                        -0.294089913   0.016300938  -0.318184211  -0.033727105

   11    7.2  0.5  0.5   0.031747536   0.578470056   0.035043800  -0.329629451
                         0.000447534   0.008911820   0.000546308  -0.004661019

   12    8.2  0.5  0.5  -0.000011251  -0.000319290   0.001062650  -0.010021126
                        -0.000134095  -0.002579867  -0.070376888   0.663792946

   13    1.2  0.5 -0.5   0.005048521   0.091751670   0.031177099  -0.293922581
                         0.001865787   0.033511239   0.006519137  -0.061520027

   14    2.2  0.5 -0.5  -0.000974273  -0.017696738  -0.007239491   0.067768954
                         0.008544117   0.156066567   0.028184885  -0.265663548

   15    3.2  0.5 -0.5  -0.090302314   0.005044188  -0.262069101  -0.027773954
                         0.129186901  -0.007076675   0.079485240   0.008482107

   16    4.2  0.5 -0.5  -0.267460636   0.014846922   0.007302485   0.000797323
                        -0.169864216   0.009387765  -0.003495184  -0.000322701

   17    5.2  0.5 -0.5   0.016795690   0.302741877  -0.009792089   0.092908748
                         0.000397205   0.006592064  -0.000814792   0.007538564

   18    6.2  0.5 -0.5  -0.000827806  -0.017748858   0.001163071  -0.010283800
                         0.031664279   0.575686788  -0.035419518   0.333953109

   19    7.2  0.5 -0.5  -0.303039689   0.016666460   0.315577733   0.033535928
                         0.492822456  -0.027024719  -0.095330975  -0.010183710

   20    8.2  0.5 -0.5  -0.002005143   0.000107092   0.192583607   0.020418346
                        -0.001654407   0.000081483   0.635321220   0.067358198


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.002%  16.443%   0.001%  49.743%   0.002%   8.280%   0.001%  17.565%   0.000%   0.000%
    2    1.2  1.5  0.5  49.735%   0.007%  16.445%   0.000%  17.563%   0.004%   8.281%   0.001%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.007%  49.735%   0.000%  16.445%   0.004%  17.563%   0.001%   8.281%   0.000%   0.000%
    4    1.2  1.5 -1.5  16.443%   0.002%  49.743%   0.001%   8.280%   0.002%  17.565%   0.001%   0.000%   0.000%
    5    1.2  0.5  0.5   0.391%   0.000%   3.871%   0.000%   3.647%   0.001%  22.012%   0.001%   1.099%  45.065%
    6    2.2  0.5  0.5   1.026%   0.000%   3.236%   0.000%   7.997%   0.002%  17.661%   0.001%   1.245%  51.130%
    7    3.2  0.5  0.5   0.000%   1.075%   0.000%   3.187%   0.001%   4.779%   0.001%  20.880%   0.165%   0.004%
    8    4.2  0.5  0.5   0.001%   4.259%   0.000%   0.003%   0.006%  25.484%   0.000%   0.171%   0.793%   0.020%
    9    5.2  0.5  0.5   3.904%   0.001%   0.358%   0.000%  22.231%   0.005%   3.425%   0.000%   0.012%   0.469%
   10    6.2  0.5  0.5  11.600%   0.002%   3.836%   0.000%   4.529%   0.001%   2.136%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.002%  11.552%   0.000%   3.883%   0.001%   5.427%   0.000%   1.238%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%  15.435%   0.000%   0.041%   0.000%   6.624%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.391%   0.000%   3.871%   0.001%   3.647%   0.001%  22.012%  45.065%   1.099%
   14    2.2  0.5 -0.5   0.000%   1.026%   0.000%   3.236%   0.002%   7.997%   0.001%  17.661%  51.130%   1.245%
   15    3.2  0.5 -0.5   1.075%   0.000%   3.187%   0.000%   4.779%   0.001%  20.880%   0.001%   0.004%   0.165%
   16    4.2  0.5 -0.5   4.259%   0.001%   0.003%   0.000%  25.484%   0.006%   0.171%   0.000%   0.020%   0.793%
   17    5.2  0.5 -0.5   0.001%   3.904%   0.000%   0.358%   0.005%  22.231%   0.000%   3.425%   0.469%   0.012%
   18    6.2  0.5 -0.5   0.002%  11.600%   0.000%   3.836%   0.001%   4.529%   0.000%   2.136%   0.000%   0.000%
   19    7.2  0.5 -0.5  11.552%   0.002%   3.883%   0.000%   5.427%   0.001%   1.238%   0.000%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.000%   0.000%  15.435%   0.000%   0.041%   0.000%   6.624%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   2.012%   0.066%   5.880%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.928%   0.018%   1.995%   0.022%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   5.928%   0.022%   1.995%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.012%   0.006%   5.880%   0.066%
    5    1.2  0.5  0.5   0.000%  13.821%   0.000%   0.015%   0.000%   0.000%   0.954%   0.003%   9.018%   0.101%
    6    2.2  0.5  0.5   0.000%   7.622%   0.000%   0.003%   0.000%   0.000%   2.467%   0.007%   7.517%   0.085%
    7    3.2  0.5  0.5  54.042%   0.000%   5.647%   0.141%   0.000%   0.000%   0.008%   2.484%   0.084%   7.500%
    8    4.2  0.5  0.5  22.216%   0.000%  36.062%   0.908%   0.000%   0.000%   0.031%  10.039%   0.000%   0.007%
    9    5.2  0.5  0.5   0.000%   2.298%   1.403%  55.819%   0.000%   0.000%   9.170%   0.028%   0.869%   0.010%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.506%  32.828%  33.173%   0.100%  11.163%   0.126%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  32.827%   0.508%   0.101%  33.471%   0.123%  10.868%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  32.826%   0.505%   0.000%   0.001%   0.495%  44.072%
   13    1.2  0.5 -0.5  13.821%   0.000%   0.015%   0.000%   0.000%   0.000%   0.003%   0.954%   0.101%   9.018%
   14    2.2  0.5 -0.5   7.622%   0.000%   0.003%   0.000%   0.000%   0.000%   0.007%   2.467%   0.085%   7.517%
   15    3.2  0.5 -0.5   0.000%  54.042%   0.141%   5.647%   0.000%   0.000%   2.484%   0.008%   7.500%   0.084%
   16    4.2  0.5 -0.5   0.000%  22.216%   0.908%  36.062%   0.000%   0.000%  10.039%   0.031%   0.007%   0.000%
   17    5.2  0.5 -0.5   2.298%   0.000%  55.819%   1.403%   0.000%   0.000%   0.028%   9.170%   0.010%   0.869%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  32.828%   0.506%   0.100%  33.173%   0.126%  11.163%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.508%  32.827%  33.471%   0.101%  10.868%   0.123%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.505%  32.826%   0.001%   0.000%  44.072%   0.495%


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
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      535.47       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     19334.88  16982.27   2249.46     98.12      4.24      0.59
 REAL TIME  *     19500.53 SEC
 DISK USED  *       571.84 MB (local),        7.88 GB (total)
 SF USED    *         5.27 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -214.172838491038

              CI              CI           MULTI
   -214.15643360   -214.23311423   -213.51569244
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
