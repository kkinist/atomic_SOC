
 Working directory              : /wrk/irikura/molpro.uRcmUJNSD7/
 Global scratch directory       : /wrk/irikura/molpro.uRcmUJNSD7/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.uRcmUJNSD7/

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
 Default parameters read. Elapsed time= 0.08 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 01-Nov-24          TIME: 10:46:32  
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

     17.564 MB (compressed) written to integral file ( 19.9%)

     Node minimum: 0.524 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     393360.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     393360      RECORD LENGTH: 524288

 Memory used in sort:       0.95 MW

 SORT1 READ    11031004. AND WROTE       78334. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     42 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      392525.  Node maximum:      397927. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.65      0.50
 REAL TIME  *         1.29 SEC
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.569D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.137D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.471D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.265D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.506D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 3   5 4 6 1 4 6 3 5 2 1   4 6 3 5 2 8151412 7   9111310 2 4 6 5 3 1
                                        2 5 4 6 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.463D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.455D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.264D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.687D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.307D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.685D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.734D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.734D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 3 2 1 3   2 1 9 7 810 6 4 5 9   7 5 4 6 810 3 2 1 4   5 7 9 610 8 3 2 1 5
                                        4 9 7 6 810 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  664  ( 24 closed/active, 360 closed/virtual, 0 active/active, 280 active/virtual )
 Total number of variables:    3894
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   20    0   -213.52878582    -213.53955704   -0.01077122    0.05408648 0.00040508 0.00000000  0.14E+01      1.42
   2    7   12    0   -213.53955256    -213.53958455   -0.00003199    0.00602110 0.00001580 0.00000000  0.77E-01      2.41
   3    9   18    0   -213.53958455    -213.53958455   -0.00000000    0.00000600 0.00000001 0.00000000  0.61E-04      3.70

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.68E-08)
                       Final energy:   -213.53958455
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.596698894948
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.97503424
 One electron energy                          -372.78018091
 Two electron energy                           159.18348202
 Virial ratio                                    4.09672480
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.542010869709
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.91904370
 One electron energy                          -372.57712557
 Two electron energy                           159.03511470
 Virial ratio                                    4.09844710
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.542010869705
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.91904370
 One electron energy                          -372.57712557
 Two electron energy                           159.03511470
 Virial ratio                                    4.09844710
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.542010869531
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.91904370
 One electron energy                          -372.57712558
 Two electron energy                           159.03511471
 Virial ratio                                    4.09844710
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.542010869477
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.91904370
 One electron energy                          -372.57712558
 Two electron energy                           159.03511471
 Virial ratio                                    4.09844710
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.542010869433
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.91904370
 One electron energy                          -372.57712558
 Two electron energy                           159.03511471
 Virial ratio                                    4.09844710
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.516502562286
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90874382
 One electron energy                          -372.50581625
 Two electron energy                           158.98931369
 Virial ratio                                    4.09854005
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.516502561940
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90874382
 One electron energy                          -372.50581626
 Two electron energy                           158.98931370
 Virial ratio                                    4.09854005
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.516502561833
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.90874382
 One electron energy                          -372.50581626
 Two electron energy                           158.98931370
 Virial ratio                                    4.09854005
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     3.948604687055
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     4.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000004129
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000000307
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.051395922614
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>    -0.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.635563385601
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999997371
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.999999996953
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.364438629640
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999996059
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.000000005060
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.415831927343
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999999998500
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000002739
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     2.584165447746
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000003941
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999994940
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 2 4 3 5 1 1 6 2   3 5 4 1 4 3 5 2 6 1   6 2 5 3 411 7 812 9  14151310 6 2 4 5 3 1
                                        2 6 4 5 3 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 2 1 1   3 2 5 6 810 7 9 4 5   6 810 4 7 9 1 3 2 5   6 4 810 9 7 3 2 1 5
                                        6 4 810 9 7 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.69427     1  1  s    0.99975
    2.1     2.00000    -1.32323     1  1  d1-  1.00004
    3.1     2.00000    -1.32323     1  1  d0   1.00004
    4.1     2.00000    -1.32323     1  1  d1+  1.00004
    5.1     2.00000    -1.32323     1  1  d2-  1.00004
    6.1     2.00000    -1.32323     1  1  d2+  1.00004
    7.1     1.98408    -0.68698     1  2  s    1.00522
    1.2     2.00000    -4.27119     1  1  pz   0.99988
    2.2     2.00000    -4.27119     1  1  py   0.99988
    3.2     2.00000    -4.27119     1  1  px   0.99988
    4.2     1.00117    -0.14318     1  2  px   0.92354
    5.2     1.00117    -0.14318     1  2  py   0.92354
    6.2     1.00117    -0.14318     1  2  pz   0.92354
    7.2     0.00414     0.43480     1  2  pz  -1.34839    1  3  pz  -0.59450    1  4  pz   1.64822
    8.2     0.00414     0.43480     1  2  py  -1.34839    1  3  py  -0.59450    1  4  py   1.64822
    9.2     0.00414     0.43480     1  2  px  -1.34839    1  3  px  -0.59450    1  4  px   1.64822
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99698457
 
 Energy:     -213.59669889
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 baa000      -0.09219901     -0.00000090     -0.00010168     -0.00001251      0.80813974     -0.00000000     -0.00000000
 2 aba000       0.74596905      0.00000725      0.00011216      0.00001575     -0.32422317     -0.00000000     -0.00000000
 2 0a2000       0.00001066      0.00000000      0.00001441     -0.70440960     -0.00000968      0.00000000      0.00004391
 2 a20000      -0.00000685      0.70440959      0.00000000      0.00000000      0.00000000      0.69950658      0.00000000
 2 a02000       0.00000685     -0.70440959     -0.00000000      0.00000000     -0.00000000      0.69950658     -0.00000000
 2 2a0000      -0.00001066     -0.00000000     -0.00001441      0.70440959      0.00000968     -0.00000000      0.00004391
 2 02a000       0.00007091      0.00000000     -0.70440959     -0.00001441     -0.00008054     -0.00000000      0.69950658
 2 20a000      -0.00007091     -0.00000000      0.70440958      0.00001441      0.00008054     -0.00000000      0.69950659
 2 aab000      -0.65377004     -0.00000635     -0.00001048     -0.00000324     -0.48391656      0.00000000      0.00000000
 0 22a000      -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.11332744
 0 2a2000      -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000711
 0 a22000       0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.11332744     -0.00000000
 
 Energy:     -213.54201087   -213.54201087   -213.54201087   -213.54201087   -213.54201087   -213.51650256   -213.51650256

 State:              8
 2 baa000       0.00000000
 2 aba000       0.00000000
 2 0a2000       0.69950658
 2 a20000      -0.00000000
 2 a02000       0.00000000
 2 2a0000       0.69950659
 2 02a000      -0.00004391
 2 20a000      -0.00004391
 2 aab000      -0.00000000
 0 22a000       0.00000711
 0 2a2000      -0.11332744
 0 a22000       0.00000000
 
 Energy:     -213.51650256
 


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
 CPU TIMES  *         4.36      3.71      0.50
 REAL TIME  *         5.32 SEC
 DISK USED  *        36.88 MB (local),      581.09 MB (total)
 SF USED    *        19.58 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5966989  -0.0
    -213.5420109   6.0
    -213.5420109   6.0
    -213.5420109   6.0
    -213.5420109   6.0
    -213.5420109   6.0
    -213.5165026   2.0
    -213.5165026   2.0
    -213.5165026   2.0
                                                  


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


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.59669889

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3710D-06

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.37D-06
 Number of N-2 electron functions:     251
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       4054760
 Number of doubly external configurations:        402040
 Total number of contracted configurations:      4490480
 Total number of uncontracted configurations:  102101240

 Diagonal Coupling coefficients finished.               Storage:  10293144 words, CPU-Time:      0.67 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1134093 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59669889    -0.00000000    -0.80207197  0.58D-01  0.97D-01     1.69
    2     1     1     1.09056148    -0.61786917  -214.21456807    -0.61786917    -0.01939299  0.26D-02  0.15D-02    17.78
    3     1     1     1.08347699    -0.63562114  -214.23232004    -0.01775197    -0.00029908  0.31D-04  0.36D-04    33.79
    4     1     1     1.08374012    -0.63592723  -214.23262613    -0.00030609    -0.00001205  0.21D-05  0.19D-05    49.67
    5     1     1     1.08390846    -0.63594091  -214.23263980    -0.00001367    -0.00000071  0.61D-07  0.14D-06    65.39
    6     1     1     1.08392327    -0.63594172  -214.23264061    -0.00000081    -0.00000004  0.44D-08  0.88D-08    81.14
    7     1     1     1.08392665    -0.63594177  -214.23264066    -0.00000005    -0.00000000  0.36D-09  0.36D-09    96.90


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.2%
 S   2.1%  26.7%
 P   0.7%  62.2%   3.2%

 Initialization:   0.9%
 Other:            1.0%

 Total CPU:       96.9 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9571851


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95961424 (fixed)   0.95991199 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00185931   -0.00483080   -0.00553731
 Singles      0.02387025   -0.10118484   -0.10715522
 Pairs        0.06021245   -0.52992615   -0.52324925
 Total        1.08594201   -0.63594179   -0.63594177
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59669889
 Nuclear energy                         0.00000000
 Kinetic energy                        69.20602185
 One electron energy                 -372.36060156
 Two electron energy                  158.12796089
 Virial quotient                       -3.09557803
 Correlation energy                    -0.63594177
 !MRCI STATE 1.2 Energy              -214.232640664700

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.28729478 (Davidson, fixed reference)
 Cluster corrected energies          -214.28686641 (Davidson, relaxed reference)

 Cluster corrected energies          -214.28542053 (Pople, fixed reference)
 Cluster corrected energies          -214.28497724 (Pople, relaxed reference)



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
 CPU TIMES  *       102.21     97.85      3.71      0.50
 REAL TIME  *       104.99 SEC
 DISK USED  *        72.03 MB (local),        1.05 GB (total)
 SF USED    *       539.09 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.28686641  AU                              


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


 Number of p-space configurations:  26

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.54201087
     2      -213.54201087
     3      -213.54201087
     4      -213.54201087
     5      -213.54201087
     6      -213.51650256
     7      -213.51650256
     8      -213.51650256

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1260D-06

 Number of blocks in overlap matrix:   778   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    1864
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       4990720
 Number of doubly external configurations:       2984880
 Total number of contracted configurations:      8019686
 Total number of uncontracted configurations:  134742286

 Diagonal Coupling coefficients finished.               Storage:  27653178 words, CPU-Time:     53.26 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1397278 words, CPU-time:      0.20 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.54201087     0.00000000    -0.79491821  0.65D-01  0.90D-01    63.64
    1     2     2     1.00000000     0.00000000  -213.54201087     0.00000000    -0.79488015  0.64D-01  0.90D-01    63.64
    1     3     3     1.00000000     0.00000000  -213.54201087     0.00000000    -0.79505248  0.64D-01  0.90D-01    63.64
    1     4     4     1.00000000     0.00000000  -213.54201087     0.00000000    -0.79493602  0.64D-01  0.90D-01    63.64
    1     5     5     1.00000000     0.00000000  -213.54201087     0.00000000    -0.79454386  0.64D-01  0.90D-01    63.64
    1     6     6     1.00000000     0.00000000  -213.51650256     0.00000000    -0.78155097  0.48D-01  0.92D-01    63.64
    1     7     7     1.00000000     0.00000000  -213.51650256    -0.00000000    -0.78199028  0.48D-01  0.92D-01    63.64
    1     8     8     1.00000000     0.00000000  -213.51650256     0.00000000    -0.78183319  0.48D-01  0.92D-01    63.64
    2     1     1     1.09318072    -0.62482172  -214.16683259    -0.62482172    -0.01944508  0.28D-02  0.15D-02   308.31
    2     2     2     1.09319664    -0.62482009  -214.16683096    -0.62482009    -0.01945121  0.28D-02  0.15D-02   308.31
    2     3     3     1.09329785    -0.62471152  -214.16672239    -0.62471152    -0.01954261  0.29D-02  0.15D-02   308.31
    2     4     4     1.09318845    -0.62465446  -214.16666533    -0.62465446    -0.01960561  0.29D-02  0.15D-02   308.31
    2     5     5     1.09347734    -0.62445646  -214.16646733    -0.62445646    -0.01981163  0.30D-02  0.15D-02   308.31
    2     6     6     1.08715381    -0.62152151  -214.13802407    -0.62152151    -0.01862076  0.25D-02  0.16D-02   308.31
    2     7     7     1.08714295    -0.62147305  -214.13797561    -0.62147305    -0.01865454  0.25D-02  0.16D-02   308.31
    2     8     8     1.08708929    -0.62139056  -214.13789312    -0.62139056    -0.01869118  0.25D-02  0.16D-02   308.31
    3     1     1     1.08739946    -0.64286394  -214.18487481    -0.01804222    -0.00056446  0.46D-04  0.93D-04   551.90
    3     2     2     1.08739867    -0.64286159  -214.18487246    -0.01804150    -0.00056481  0.46D-04  0.93D-04   551.90
    3     3     3     1.08737988    -0.64285158  -214.18486245    -0.01814007    -0.00057615  0.47D-04  0.95D-04   551.90
    3     4     4     1.08738718    -0.64285144  -214.18486231    -0.01819698    -0.00057114  0.47D-04  0.94D-04   551.90
    3     5     5     1.08738450    -0.64283824  -214.18484911    -0.01838178    -0.00058380  0.48D-04  0.96D-04   551.90
    3     6     6     1.08412233    -0.63915232  -214.15565488    -0.01763081    -0.00066504  0.38D-04  0.13D-03   551.90
    3     7     7     1.08410254    -0.63914287  -214.15564543    -0.01766982    -0.00067015  0.38D-04  0.13D-03   551.90
    3     8     8     1.08404670    -0.63911643  -214.15561899    -0.01772587    -0.00068291  0.38D-04  0.13D-03   551.90
    4     1     1     1.08828209    -0.64352760  -214.18553847    -0.00066366    -0.00006713  0.50D-05  0.13D-04   795.70
    4     2     2     1.08828309    -0.64352677  -214.18553764    -0.00066518    -0.00006749  0.50D-05  0.13D-04   795.70
    4     3     3     1.08828490    -0.64352616  -214.18553703    -0.00067458    -0.00006785  0.50D-05  0.13D-04   795.70
    4     4     4     1.08827349    -0.64352494  -214.18553581    -0.00067351    -0.00006845  0.50D-05  0.13D-04   795.70
    4     5     5     1.08827956    -0.64352479  -214.18553566    -0.00068655    -0.00006858  0.51D-05  0.13D-04   795.70
    4     6     6     1.08620291    -0.63999513  -214.15649770    -0.00084281    -0.00009148  0.63D-05  0.17D-04   795.70
    4     7     7     1.08619880    -0.63999374  -214.15649630    -0.00085087    -0.00009241  0.63D-05  0.17D-04   795.70
    4     8     8     1.08618148    -0.63998867  -214.15649123    -0.00087224    -0.00009562  0.65D-05  0.17D-04   795.70
    5     1     1     1.08886780    -0.64361995  -214.18563082    -0.00009235    -0.00000776  0.59D-06  0.12D-05  1039.14
    5     2     2     1.08887031    -0.64361994  -214.18563081    -0.00009317    -0.00000783  0.60D-06  0.12D-05  1039.14
    5     3     3     1.08886997    -0.64361989  -214.18563076    -0.00009373    -0.00000786  0.60D-06  0.12D-05  1039.14
    5     4     4     1.08886866    -0.64361964  -214.18563051    -0.00009470    -0.00000800  0.61D-06  0.13D-05  1039.14
    5     5     5     1.08886607    -0.64361957  -214.18563044    -0.00009478    -0.00000799  0.60D-06  0.13D-05  1039.14
    5     6     6     1.08715357    -0.64011646  -214.15661902    -0.00012132    -0.00000910  0.69D-06  0.15D-05  1039.14
    5     7     7     1.08715237    -0.64011631  -214.15661887    -0.00012257    -0.00000920  0.69D-06  0.15D-05  1039.14
    5     8     8     1.08715027    -0.64011567  -214.15661823    -0.00012700    -0.00000960  0.72D-06  0.16D-05  1039.14
    6     1     1     1.08884931    -0.64362944  -214.18564031    -0.00000949    -0.00000092  0.86D-07  0.14D-06  1281.92
    6     2     2     1.08884909    -0.64362944  -214.18564030    -0.00000950    -0.00000091  0.85D-07  0.14D-06  1281.92
    6     3     3     1.08884828    -0.64362943  -214.18564029    -0.00000953    -0.00000092  0.85D-07  0.14D-06  1281.92
    6     4     4     1.08884692    -0.64362938  -214.18564025    -0.00000975    -0.00000095  0.88D-07  0.14D-06  1281.92
    6     5     5     1.08884693    -0.64362938  -214.18564025    -0.00000981    -0.00000095  0.88D-07  0.14D-06  1281.92
    6     6     6     1.08710682    -0.64012744  -214.15663000    -0.00001098    -0.00000112  0.98D-07  0.18D-06  1281.92
    6     7     7     1.08710573    -0.64012742  -214.15662998    -0.00001111    -0.00000114  0.99D-07  0.19D-06  1281.92
    6     8     8     1.08710201    -0.64012730  -214.15662986    -0.00001163    -0.00000121  0.10D-06  0.20D-06  1281.92
    7     1     1     1.08888378    -0.64363052  -214.18564139    -0.00000108    -0.00000014  0.14D-07  0.23D-07  1524.09
    7     2     2     1.08888367    -0.64363051  -214.18564138    -0.00000108    -0.00000014  0.14D-07  0.23D-07  1524.09
    7     3     3     1.08888354    -0.64363051  -214.18564138    -0.00000109    -0.00000014  0.14D-07  0.24D-07  1524.09
    7     4     4     1.08888366    -0.64363051  -214.18564137    -0.00000112    -0.00000014  0.14D-07  0.24D-07  1524.09
    7     5     5     1.08888361    -0.64363050  -214.18564137    -0.00000112    -0.00000014  0.14D-07  0.24D-07  1524.09
    7     6     6     1.08714776    -0.64012883  -214.15663139    -0.00000139    -0.00000019  0.20D-07  0.30D-07  1524.09
    7     7     7     1.08714754    -0.64012882  -214.15663139    -0.00000141    -0.00000019  0.20D-07  0.30D-07  1524.09
    7     8     8     1.08714632    -0.64012880  -214.15663136    -0.00000150    -0.00000020  0.22D-07  0.32D-07  1524.09
    8     1     1     1.08889138    -0.64363069  -214.18564156    -0.00000017    -0.00000002  0.23D-08  0.39D-08  1766.06
    8     2     2     1.08889143    -0.64363068  -214.18564155    -0.00000017    -0.00000002  0.23D-08  0.39D-08  1766.06
    8     3     3     1.08889139    -0.64363068  -214.18564155    -0.00000017    -0.00000002  0.23D-08  0.39D-08  1766.06
    8     4     4     1.08889135    -0.64363068  -214.18564155    -0.00000017    -0.00000002  0.24D-08  0.40D-08  1766.06
    8     5     5     1.08889130    -0.64363067  -214.18564154    -0.00000017    -0.00000002  0.24D-08  0.41D-08  1766.06
    8     6     6     1.08716359    -0.64012905  -214.15663162    -0.00000023    -0.00000003  0.25D-08  0.50D-08  1766.06
    8     7     7     1.08716358    -0.64012905  -214.15663161    -0.00000023    -0.00000003  0.25D-08  0.50D-08  1766.06
    8     8     8     1.08716328    -0.64012905  -214.15663161    -0.00000025    -0.00000003  0.27D-08  0.55D-08  1766.06


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   1.0%  14.0%
 P   0.5%  59.4%  16.9%

 Initialization:   3.1%
 Other:            3.4%

 Total CPU:     1766.1 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\/000           0.7482825   0.0163341   0.3257786  -0.0622085   0.4908827  -0.0000000   0.0000000  -0.0000000
 2222222222//\000           0.0446770   0.1745407   0.6829860   0.4352263  -0.4720261   0.0000000   0.0000000   0.0000000
 2222222222/02000           0.2278208  -0.1452679   0.0249276  -0.4563080  -0.4168177  -0.1142653  -0.0929138   0.6554270
 2222222222/20000          -0.2278208   0.1452679  -0.0249276   0.4563080   0.4168178  -0.1142653  -0.0929138   0.6554269
 22222222222/0000           0.1234274  -0.5795080  -0.0974735   0.3010934  -0.0660189   0.4155090   0.5077118   0.1444123
 22222222220/2000          -0.1234274   0.5795078   0.0974734  -0.3010933   0.0660188   0.4155090   0.5077118   0.1444123
 222222222220/000           0.3278452   0.2885874  -0.3989452   0.2450723  -0.2135362   0.5153345  -0.4299647   0.0288899
 222222222202/000          -0.3278451  -0.2885874   0.3989451  -0.2450722   0.2135362   0.5153345  -0.4299647   0.0288898
 2222220222/22000           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0160917   0.0130848  -0.0923019
 222222022222/000          -0.0000001  -0.0000000   0.0000001  -0.0000000   0.0000000  -0.0725731   0.0605507  -0.0040685
 22222202222/2000          -0.0000000   0.0000001   0.0000000  -0.0000000   0.0000000  -0.0585150  -0.0714997  -0.0203372

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.410698   -0.323089   -0.464940   -0.175041    0.629602   -0.000000    0.000000    0.000000
 2           0.130886    0.206015   -0.409266    0.821841    0.117356    0.000000    0.000000   -0.000000
 3           0.355841   -0.035352    0.565772    0.138234    0.670214   -0.000000   -0.000000   -0.000000
 4           0.387821    0.647123   -0.347554   -0.427002    0.209689    0.000000    0.000000    0.000000
 5          -0.673376    0.591119    0.302831    0.093626    0.113749    0.000000   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.162956    0.734928    0.592565
 7           0.000000    0.000000   -0.000000    0.000000    0.000000   -0.132506   -0.613180    0.724057
 8           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.934716    0.041200    0.205949

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957218   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.957218    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.957218    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.957218    0.000000    0.000000    0.000000    0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.957218   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.958022    0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.958022   -0.000000
 8           0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.958022


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.62960214 (fixed)   0.95747525 (relaxed)   0.95721832 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229008   -0.00597780   -0.49332215
 Singles      0.02744798   -0.10670026   -0.11395129
 Pairs        0.06164697    0.00000001   -0.03635725
 Total        1.09138503   -0.11267805   -0.64363069
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54201087
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18088908
 One electron energy                 -372.19302899
 Two electron energy                  158.00738743
 Virial quotient                       -3.09602326
 Correlation energy                    -0.64363069
 !MRCI STATE 1.2 Energy              -214.185641557244

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24445977 (Davidson, fixed reference)
 Cluster corrected energies          -214.24408283 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24445977 (Davidson, rotated reference)

 Cluster corrected energies          -214.24338723 (Pople, fixed reference)
 Cluster corrected energies          -214.24298811 (Pople, relaxed reference)
 Cluster corrected energies          -214.24338723 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.82184098 (fixed)   0.95747523 (relaxed)   0.95721831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229008   -0.00597779   -0.49332216
 Singles      0.02744796   -0.10670020   -0.11395129
 Pairs        0.06164704   -0.00000001   -0.03635723
 Total        1.09138507   -0.11267800   -0.64363068
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54201087
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18090303
 One electron energy                 -372.19304381
 Two electron energy                  158.00740225
 Virial quotient                       -3.09602263
 Correlation energy                    -0.64363068
 !MRCI STATE 2.2 Energy              -214.185641551594

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24445979 (Davidson, fixed reference)
 Cluster corrected energies          -214.24408285 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24445979 (Davidson, rotated reference)

 Cluster corrected energies          -214.24338726 (Pople, fixed reference)
 Cluster corrected energies          -214.24298813 (Pople, relaxed reference)
 Cluster corrected energies          -214.24338726 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.67021449 (fixed)   0.95747525 (relaxed)   0.95721832 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229008   -0.00597780   -0.49332217
 Singles      0.02744798   -0.10670022   -0.11395127
 Pairs        0.06164697    0.00000000   -0.03635724
 Total        1.09138504   -0.11267801   -0.64363068
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54201087
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18088968
 One electron energy                 -372.19303065
 Two electron energy                  158.00738910
 Virial quotient                       -3.09602323
 Correlation energy                    -0.64363068
 !MRCI STATE 3.2 Energy              -214.185641550883

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24445976 (Davidson, fixed reference)
 Cluster corrected energies          -214.24408283 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24445976 (Davidson, rotated reference)

 Cluster corrected energies          -214.24338723 (Pople, fixed reference)
 Cluster corrected energies          -214.24298811 (Pople, relaxed reference)
 Cluster corrected energies          -214.24338723 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.64712255 (fixed)   0.95747527 (relaxed)   0.95721834 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229008   -0.00597780   -0.49332223
 Singles      0.02744795   -0.10670019   -0.11395126
 Pairs        0.06164697    0.00000002   -0.03635719
 Total        1.09138500   -0.11267797   -0.64363068
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54201087
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18089775
 One electron energy                 -372.19303892
 Two electron energy                  158.00739737
 Virial quotient                       -3.09602287
 Correlation energy                    -0.64363068
 !MRCI STATE 4.2 Energy              -214.185641547969

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24445974 (Davidson, fixed reference)
 Cluster corrected energies          -214.24408280 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24445974 (Davidson, rotated reference)

 Cluster corrected energies          -214.24338720 (Pople, fixed reference)
 Cluster corrected energies          -214.24298808 (Pople, relaxed reference)
 Cluster corrected energies          -214.24338720 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.67337557 (fixed)   0.95747529 (relaxed)   0.95721836 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00229008   -0.00597780   -0.49332221
 Singles      0.02744796   -0.10670020   -0.11395125
 Pairs        0.06164691   -0.00000000   -0.03635721
 Total        1.09138495   -0.11267800   -0.64363067
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.54201087
 Nuclear energy                         0.00000000
 Kinetic energy                        69.18089184
 One electron energy                 -372.19303298
 Two electron energy                  158.00739144
 Virial quotient                       -3.09602313
 Correlation energy                    -0.64363067
 !MRCI STATE 5.2 Energy              -214.185641542072

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.24445970 (Davidson, fixed reference)
 Cluster corrected energies          -214.24408276 (Davidson, relaxed reference)
 Cluster corrected energies          -214.24445970 (Davidson, rotated reference)

 Cluster corrected energies          -214.24338716 (Pople, fixed reference)
 Cluster corrected energies          -214.24298804 (Pople, relaxed reference)
 Cluster corrected energies          -214.24338716 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.73492769 (fixed)   0.95828287 (relaxed)   0.95802212 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00219914   -0.00572897   -0.19503546
 Singles      0.02173135   -0.09604924   -0.10092002
 Pairs        0.06562392   -0.33298580   -0.34417358
 Total        1.08955442   -0.43476401   -0.64012905
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51650256
 Nuclear energy                         0.00000000
 Kinetic energy                        69.17502951
 One electron energy                 -372.10316633
 Two electron energy                  157.94653471
 Virial quotient                       -3.09586614
 Correlation energy                    -0.64012905
 !MRCI STATE 6.2 Energy              -214.156631616555

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21395800 (Davidson, fixed reference)
 Cluster corrected energies          -214.21357849 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21395800 (Davidson, rotated reference)

 Cluster corrected energies          -214.21282365 (Pople, fixed reference)
 Cluster corrected energies          -214.21242305 (Pople, relaxed reference)
 Cluster corrected energies          -214.21282365 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.72405688 (fixed)   0.95828288 (relaxed)   0.95802213 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00219914   -0.00572897   -0.12721818
 Singles      0.02173135   -0.09604924   -0.10092002
 Pairs        0.06562391   -0.40687642   -0.41199086
 Total        1.08955440   -0.50865463   -0.64012905
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51650256
 Nuclear energy                         0.00000000
 Kinetic energy                        69.17502935
 One electron energy                 -372.10316631
 Two electron energy                  157.94653469
 Virial quotient                       -3.09586615
 Correlation energy                    -0.64012905
 !MRCI STATE 7.2 Energy              -214.156631613271

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21395799 (Davidson, fixed reference)
 Cluster corrected energies          -214.21357848 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21395799 (Davidson, rotated reference)

 Cluster corrected energies          -214.21282363 (Pople, fixed reference)
 Cluster corrected energies          -214.21242304 (Pople, relaxed reference)
 Cluster corrected energies          -214.21282363 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.93471611 (fixed)   0.95828301 (relaxed)   0.95802226 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00219914   -0.00572897   -0.39443337
 Singles      0.02173141   -0.09604938   -0.10092005
 Pairs        0.06562355   -0.11573091   -0.14477563
 Total        1.08955410   -0.21750925   -0.64012905
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.51650256
 Nuclear energy                         0.00000000
 Kinetic energy                        69.17502537
 One electron energy                 -372.10316756
 Two electron energy                  157.94653595
 Virial quotient                       -3.09586633
 Correlation energy                    -0.64012905
 !MRCI STATE 8.2 Energy              -214.156631609687

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.21395779 (Davidson, fixed reference)
 Cluster corrected energies          -214.21357828 (Davidson, relaxed reference)
 Cluster corrected energies          -214.21395779 (Davidson, rotated reference)

 Cluster corrected energies          -214.21282342 (Pople, fixed reference)
 Cluster corrected energies          -214.21242283 (Pople, relaxed reference)
 Cluster corrected energies          -214.21282342 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      535.53       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      2201.66   2099.44     97.85      3.71      0.50
 REAL TIME  *      2248.67 SEC
 DISK USED  *       571.90 MB (local),        7.88 GB (total)
 SF USED    *         5.27 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -214.24445977  AU                              
 SETTING HLSDIAG(3)     =      -214.24445979  AU                              
 SETTING HLSDIAG(4)     =      -214.24445976  AU                              
 SETTING HLSDIAG(5)     =      -214.24445974  AU                              
 SETTING HLSDIAG(6)     =      -214.24445970  AU                              
 SETTING HLSDIAG(7)     =      -214.21395800  AU                              
 SETTING HLSDIAG(8)     =      -214.21395799  AU                              
 SETTING HLSDIAG(9)     =      -214.21395779  AU                              


         HLSDIAG
    -214.2868664
    -214.2444598
    -214.2444598
    -214.2444598
    -214.2444597
    -214.2444597
    -214.2139580
    -214.2139580
    -214.2139578
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -214.232641
 Replaced energies:   -214.286866

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.185642   -214.185642   -214.185642   -214.185642   -214.185642   -214.156632   -214.156632   -214.156632
 Replaced energies:   -214.244460   -214.244460   -214.244460   -214.244460   -214.244460   -214.213958   -214.213958   -214.213958



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.28686641

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    3775.77
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00   -1038.34

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00   -5407.33

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    2179.94
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00     599.49

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00    9307.18       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      17.36     -56.55      39.03     -39.41    -591.95

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00    9307.18       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     -17.36       0.00     -10.73     -26.18     -41.31     647.78

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00    9307.18       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      56.55      10.73       0.00       3.86      12.88    2548.44

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    9307.19       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     -39.03      26.18      -3.86      -0.00       0.40    3902.30

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9307.20       0.00
                           -0.00       0.00       0.00      -0.00      39.41      41.31     -12.88      -0.40       0.00    -315.97

   10   6.2  0.5  0.5    3775.77       0.00    2179.94       0.00       0.00       0.00       0.00       0.00       0.00   16001.55
                         1038.34    5407.33    -599.49      -0.00     591.95    -647.78   -2548.44   -3902.30     315.97      -0.00

   11   7.2  0.5  0.5    4613.62       0.00    2663.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          844.32   -4511.56    -487.47      -0.00    1149.06     396.48    2506.28   -1024.19   -3557.88      -2.48

   12   8.2  0.5  0.5    1312.29       0.00     757.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -5955.92     303.14    3438.65      -0.00    1080.63   -3881.08    -732.25    1161.50    -884.96     -36.93

   13   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      23.89      27.18     -30.32      -7.37    -550.25
                           -0.00       0.00      -0.00      -0.00       0.00     -23.48      15.80      -1.56     -38.15    1295.48

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00     -23.89      -0.00     -61.14     -42.27      -0.24    -163.69
                           -0.00      -0.00      -0.00       0.00      23.48       0.00     -33.30      22.43       7.17    4102.42

   15   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00     -27.18      61.14      -0.00     -18.23      25.00    -120.78
                           -0.00       0.00       0.00      -0.00     -15.80      33.30      -0.00      18.40      22.21    -549.70

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      30.32      42.27      18.23      -0.00     -22.38   -1102.66
                           -0.00      -0.00      -0.00       0.00       1.56     -22.43     -18.40      -0.00      67.16    -364.78

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       7.37       0.24     -25.00      22.38       0.00   -4442.52
                           -0.00      -0.00       0.00       0.00      38.15      -7.17     -22.21     -67.16      -0.00    -355.23

   18   6.2  0.5 -0.5       0.00    2179.94       0.00    3775.77     550.25     163.69     120.78    1102.66    4442.52       0.00
                           -0.00     599.49    5407.33   -1038.34   -1295.48   -4102.42     549.70     364.78     355.23       0.00

   19   7.2  0.5 -0.5       0.00    2663.68       0.00    4613.62    3133.00   -1146.22     222.16   -3177.46    1099.30      12.40
                           -0.00     487.47   -4511.56    -844.32   -2591.51     910.12    1889.63   -2552.50    1173.70     -56.30

   20   8.2  0.5 -0.5       0.00     757.65       0.00    1312.29    2703.62    1770.53   -2580.21    1359.10    -478.86     -43.61
                           -0.00   -3438.65     303.14    5955.92    3018.95     -39.72    3724.01     584.03    1247.27      -7.98


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5    4613.62    1312.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -844.32    5955.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    2179.94    2663.68     757.65
                         4511.56    -303.14      -0.00       0.00      -0.00       0.00       0.00    -599.49    -487.47    3438.65

    3   1.2  1.5 -0.5    2663.68     757.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          487.47   -3438.65       0.00       0.00      -0.00       0.00      -0.00   -5407.33    4511.56    -303.14

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    3775.77    4613.62    1312.29
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00    1038.34     844.32   -5955.92

    5   1.2  0.5  0.5       0.00       0.00       0.00     -23.89     -27.18      30.32       7.37     550.25    3133.00    2703.62
                        -1149.06   -1080.63      -0.00     -23.48      15.80      -1.56     -38.15    1295.48    2591.51   -3018.95

    6   2.2  0.5  0.5       0.00       0.00      23.89      -0.00      61.14      42.27       0.24     163.69   -1146.22    1770.53
                         -396.48    3881.08      23.48      -0.00     -33.30      22.43       7.17    4102.42    -910.12      39.72

    7   3.2  0.5  0.5       0.00       0.00      27.18     -61.14      -0.00      18.23     -25.00     120.78     222.16   -2580.21
                        -2506.28     732.25     -15.80      33.30       0.00      18.40      22.21    -549.70   -1889.63   -3724.01

    8   4.2  0.5  0.5       0.00       0.00     -30.32     -42.27     -18.23      -0.00      22.38    1102.66   -3177.46    1359.10
                         1024.19   -1161.50       1.56     -22.43     -18.40       0.00      67.16    -364.78    2552.50    -584.03

    9   5.2  0.5  0.5       0.00       0.00      -7.37      -0.24      25.00     -22.38       0.00    4442.52    1099.30    -478.86
                         3557.88     884.96      38.15      -7.17     -22.21     -67.16       0.00    -355.23   -1173.70   -1247.27

   10   6.2  0.5  0.5       0.00       0.00    -550.25    -163.69    -120.78   -1102.66   -4442.52       0.00      12.40     -43.61
                            2.48      36.93   -1295.48   -4102.42     549.70     364.78     355.23      -0.00      56.30       7.98

   11   7.2  0.5  0.5   16001.55       0.00   -3133.00    1146.22    -222.16    3177.46   -1099.30     -12.40       0.00      35.69
                            0.00      44.26   -2591.51     910.12    1889.63   -2552.50    1173.70     -56.30       0.00      -9.82

   12   8.2  0.5  0.5       0.00   16001.59   -2703.62   -1770.53    2580.21   -1359.10     478.86      43.61     -35.69      -0.00
                          -44.26       0.00    3018.95     -39.72    3724.01     584.03    1247.27      -7.98       9.82       0.00

   13   1.2  0.5 -0.5   -3133.00   -2703.62    9307.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2591.51   -3018.95       0.00     -17.36      56.55     -39.03      39.41     591.95    1149.06    1080.63

   14   2.2  0.5 -0.5    1146.22   -1770.53       0.00    9307.18       0.00       0.00       0.00       0.00       0.00       0.00
                         -910.12      39.72      17.36      -0.00      10.73      26.18      41.31    -647.78     396.48   -3881.08

   15   3.2  0.5 -0.5    -222.16    2580.21       0.00       0.00    9307.18       0.00       0.00       0.00       0.00       0.00
                        -1889.63   -3724.01     -56.55     -10.73      -0.00      -3.86     -12.88   -2548.44    2506.28    -732.25

   16   4.2  0.5 -0.5    3177.46   -1359.10       0.00       0.00       0.00    9307.19       0.00       0.00       0.00       0.00
                         2552.50    -584.03      39.03     -26.18       3.86       0.00      -0.40   -3902.30   -1024.19    1161.50

   17   5.2  0.5 -0.5   -1099.30     478.86       0.00       0.00       0.00       0.00    9307.20       0.00       0.00       0.00
                        -1173.70   -1247.27     -39.41     -41.31      12.88       0.40      -0.00     315.97   -3557.88    -884.96

   18   6.2  0.5 -0.5     -12.40      43.61       0.00       0.00       0.00       0.00       0.00   16001.55       0.00       0.00
                           56.30       7.98    -591.95     647.78    2548.44    3902.30    -315.97       0.00      -2.48     -36.93

   19   7.2  0.5 -0.5       0.00     -35.69       0.00       0.00       0.00       0.00       0.00       0.00   16001.55       0.00
                           -0.00      -9.82   -1149.06    -396.48   -2506.28    1024.19    3557.88       2.48      -0.00     -44.26

   20   8.2  0.5 -0.5      35.69      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16001.59
                            9.82      -0.00   -1080.63    3881.08     732.25   -1161.50     884.96      36.93      44.26      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -214.31017567    -0.02330926    -5115.79      0.00000000        0.00      0.0000
     2  -214.31017567    -0.02330926    -5115.79      0.00000000        0.00      0.0000
     3  -214.31017566    -0.02330925    -5115.79      0.00000001        0.00      0.0000
     4  -214.31017566    -0.02330925    -5115.79      0.00000001        0.00      0.0000
     5  -214.26250362     0.02436279     5347.01      0.04767205    10462.80      1.2972
     6  -214.26250362     0.02436279     5347.01      0.04767205    10462.80      1.2972
     7  -214.26250359     0.02436283     5347.02      0.04767208    10462.81      1.2972
     8  -214.26250359     0.02436283     5347.02      0.04767208    10462.81      1.2972
     9  -214.24406751     0.04279890     9393.27      0.06610815    14509.06      1.7989
    10  -214.24406751     0.04279890     9393.27      0.06610815    14509.06      1.7989
    11  -214.24406749     0.04279892     9393.28      0.06610818    14509.07      1.7989
    12  -214.24406749     0.04279892     9393.28      0.06610818    14509.07      1.7989
    13  -214.24406746     0.04279896     9393.29      0.06610821    14509.08      1.7989
    14  -214.24406746     0.04279896     9393.29      0.06610821    14509.08      1.7989
    15  -214.21448373     0.07238268    15886.16      0.09569194    21001.95      2.6039
    16  -214.21448373     0.07238268    15886.16      0.09569194    21001.95      2.6039
    17  -214.17293035     0.11393606    25006.07      0.13724532    30121.86      3.7346
    18  -214.17293035     0.11393606    25006.07      0.13724532    30121.86      3.7346
    19  -214.17293028     0.11393613    25006.09      0.13724539    30121.88      3.7346
    20  -214.17293028     0.11393613    25006.09      0.13724539    30121.88      3.7346


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.593303923   0.050292212   0.511297530  -0.211585577   0.416964383  -0.048060778   0.283276923   0.056477095
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.021956383   0.546287452  -0.290008780  -0.509391832  -0.053399773   0.076761071   0.014653328   0.386068857
                        -0.063692101  -0.056787375   0.096378682   0.040803511   0.022241485   0.272391281   0.044927724  -0.157755412

    3    1.2  1.5 -0.5  -0.112709940   0.065613630   0.076187215  -0.116345780  -0.277470806   0.018085775   0.412235315  -0.003755593
                         0.537541860  -0.015284569  -0.505312257   0.282590876  -0.055670672  -0.054946557   0.063229561   0.047107493

    4    1.2  1.5 -1.5   0.005176095  -0.061063086  -0.014738462  -0.035615562  -0.003681403  -0.031939016  -0.054915315   0.275443369
                        -0.050025140   0.590153235   0.211071635   0.510055584  -0.047919574  -0.415739336   0.013189788  -0.066157128

    5    1.2  0.5  0.5   0.028629611  -0.091413554  -0.072081816  -0.042882754   0.074971179  -0.163456738  -0.007675295  -0.236490153
                        -0.004019457   0.103332831  -0.008864763   0.126152970   0.038227874   0.357759975   0.175609766  -0.087777076

    6    2.2  0.5  0.5   0.065171833  -0.096215520   0.055944423  -0.046511338  -0.423174605  -0.138448626   0.204646435   0.019214406
                        -0.087612805   0.005957470   0.108197410  -0.068423332  -0.027907474   0.031322923  -0.028653694  -0.115098352

    7    3.2  0.5  0.5   0.007801436  -0.017316775   0.086240094   0.168705715  -0.071202324   0.317016117   0.050189895   0.213912097
                        -0.012520700   0.070586113   0.016079851   0.035218739   0.021815981   0.308756594   0.021373471   0.078818026

    8    4.2  0.5  0.5  -0.123012486  -0.111170147   0.068233690  -0.029001574   0.124817052  -0.166843176  -0.050837362   0.210244233
                         0.095909263   0.003763545  -0.010403249  -0.024268282   0.051043585   0.134723320  -0.318218650  -0.210000226

    9    5.2  0.5  0.5  -0.064012349   0.109697268   0.052127691  -0.066368467  -0.030016867   0.083952643   0.071247408  -0.287681119
                         0.004719910   0.088325077   0.102504201   0.036246776   0.027236855   0.069066273  -0.346735491   0.186542333

   10    6.2  0.5  0.5  -0.182666663  -0.043301905  -0.087350721   0.075764353   0.058533393  -0.118228331   0.126501140   0.077939181
                        -0.135510792  -0.201364606   0.149949376   0.157079596   0.013572781   0.016827718   0.018946540   0.161511884

   11    7.2  0.5  0.5  -0.165547925  -0.009826243  -0.188792097   0.066188057   0.090243385   0.073794719   0.189300226  -0.031438656
                        -0.129642167   0.171252393  -0.024502899  -0.201050625   0.041607474  -0.038890693   0.010082932  -0.112408808

   12    8.2  0.5  0.5   0.077972454  -0.012731974  -0.167286359   0.092661172   0.037425123   0.004089683   0.032502413  -0.003077575
                         0.240750839  -0.005498658   0.223364372  -0.063137523  -0.250812817   0.023681248  -0.015589704  -0.014102503

   13    1.2  0.5 -0.5  -0.112192413  -0.006944683  -0.128833635  -0.003822212   0.344188264  -0.043858271   0.209450754  -0.048475346
                         0.080293054   0.028063892   0.033991126  -0.072524223  -0.190380524  -0.071822699  -0.140580187  -0.168961063

   14    2.2  0.5 -0.5  -0.015828374  -0.093855058   0.065017280   0.104037663   0.020625882   0.060240194  -0.045563391   0.205679125
                         0.095091431   0.055808598   0.051164539   0.063345264  -0.140441164   0.419793631  -0.107428123  -0.019932264

   15    3.2  0.5 -0.5  -0.071993522  -0.013257137  -0.023381622   0.010033548   0.332132552  -0.016297865  -0.189589374   0.043810368
                         0.009960063   0.006471371  -0.170749165   0.087150693   0.292434302   0.072664211   0.126595954  -0.032503884

   16    4.2  0.5 -0.5  -0.015185237   0.108060442   0.022189165  -0.015130947   0.121547496  -0.060454469  -0.253474201   0.024885958
                         0.110192443  -0.112488219   0.030621589   0.067343288  -0.176672648  -0.120540455  -0.155092108   0.321291512

   17    5.2  0.5 -0.5  -0.076565947   0.011283022  -0.040781774   0.098624147   0.075294036  -0.024857574   0.323291289   0.150254563
                        -0.118205185  -0.063186643   0.063682408   0.059141228   0.078415589   0.032014990   0.114198120   0.320507816

   18    6.2  0.5 -0.5   0.195838627  -0.115991046  -0.151420515   0.155669755   0.007722117  -0.018016498  -0.038064054   0.118578143
                         0.063796482  -0.195643455  -0.086522049  -0.076693490  -0.119169959  -0.057321760   0.175247631  -0.047965965

   19    7.2  0.5 -0.5  -0.171354293  -0.111915453   0.205172747  -0.011292651  -0.033123837  -0.048397775   0.004317067   0.181710651
                        -0.007851305  -0.178011623  -0.052022659  -0.190040323   0.076556894  -0.086791161  -0.116642582  -0.054013705

   20    8.2  0.5 -0.5   0.004159078   0.231447395   0.069438681   0.234474520   0.023924937   0.247209202  -0.000301060   0.035244467
                         0.013230286   0.102336566  -0.088038113  -0.151321077   0.002263710  -0.056527155  -0.014431265   0.007567911


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000256  -0.000000141  -0.000000109  -0.000000096  -0.000000156   0.000000390   0.000000500   0.000000066
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000000163  -0.000000058  -0.000000101   0.000000227  -0.000000036   0.000000107  -0.000000012  -0.000000044
                         0.000000026   0.000000167  -0.000000033   0.000000084  -0.000000179  -0.000000109  -0.000000006  -0.000000256

    3    1.2  1.5 -0.5  -0.000000114   0.000000162  -0.000000215  -0.000000093  -0.000000070   0.000000182  -0.000000234   0.000000002
                        -0.000000135  -0.000000034  -0.000000110  -0.000000052   0.000000136  -0.000000023  -0.000000113   0.000000013

    4    1.2  1.5 -1.5   0.000000132   0.000000239  -0.000000065   0.000000074  -0.000000123  -0.000000049   0.000000018  -0.000000138
                        -0.000000051  -0.000000092  -0.000000071   0.000000080  -0.000000371  -0.000000148  -0.000000063   0.000000481

    5    1.2  0.5  0.5  -0.180361622  -0.083857954  -0.031304993   0.003045128  -0.018368125   0.068054110  -0.000000201  -0.000000855
                         0.241637843   0.120316934   0.359478315   0.558396777  -0.099827417  -0.174977157  -0.000000128   0.000000341

    6    2.2  0.5  0.5   0.589675611  -0.131844749   0.162453258  -0.204862969   0.086856658   0.141472823   0.000001283  -0.000000457
                         0.133632477   0.198217048   0.218995556  -0.095637008  -0.155566819   0.022943617   0.000000369   0.000000043

    7    3.2  0.5  0.5  -0.268034401  -0.454923187  -0.014503666  -0.349334363  -0.008673345  -0.175687407   0.000000132   0.000000714
                        -0.014592962   0.370973584  -0.117609789  -0.125911231   0.022162662   0.002254235   0.000000062   0.000000482

    8    4.2  0.5  0.5  -0.083683856  -0.132164021   0.143022570   0.319032807  -0.019236507  -0.097381224  -0.000000385  -0.000000477
                        -0.073799274   0.114460244   0.316768825  -0.038178103   0.059939865   0.565242325  -0.000000201   0.000000042

    9    5.2  0.5  0.5  -0.000679942   0.017256999  -0.146577095  -0.141714005   0.555647223   0.044928028   0.000000229   0.000000247
                         0.036379894  -0.063663607   0.118692266   0.029835582   0.473773924   0.050558639  -0.000000037   0.000000228

   10    6.2  0.5  0.5  -0.000000080   0.000000142   0.000000040   0.000000048   0.000000018   0.000000332   0.314669960   0.473273020
                        -0.000000014   0.000000083   0.000000024   0.000000164  -0.000000066   0.000000154   0.092891465  -0.041238717

   11    7.2  0.5  0.5  -0.000000194   0.000000030  -0.000000244  -0.000000061  -0.000000189   0.000000193   0.465306234  -0.317826621
                        -0.000000062  -0.000000158   0.000000153  -0.000000311   0.000000040  -0.000000073   0.084434156   0.093172589

   12    8.2  0.5  0.5   0.000000117   0.000000029  -0.000000148   0.000000110  -0.000000072   0.000000108  -0.126887827  -0.020756954
                        -0.000000575   0.000000342  -0.000000022   0.000000147   0.000000060  -0.000000241   0.560129306   0.055280082

   13    1.2  0.5 -0.5   0.121552918  -0.255264967   0.413044953  -0.243385569   0.144556966  -0.100522492  -0.000000564  -0.000000068
                         0.082056134  -0.160495976  -0.375779324   0.266398436  -0.119798377   0.014075856   0.000000727  -0.000000229

   14    2.2  0.5 -0.5   0.194368612   0.502017769  -0.209076501  -0.271158847  -0.066419462  -0.120204596  -0.000000167   0.000000000
                         0.137455005  -0.336976446  -0.086036564   0.028687875  -0.127001670   0.131514141   0.000000427   0.000001335

   15    3.2  0.5 -0.5   0.557979570  -0.244805350  -0.329162010   0.096380148   0.053307414   0.018292718  -0.000000265   0.000000023
                         0.182305529   0.110116918  -0.171873516  -0.068944077   0.167420030  -0.015224551  -0.000000820   0.000000144

   16    4.2  0.5 -0.5   0.164510833  -0.051501266   0.187877857  -0.329966490  -0.505621406   0.050805548  -0.000000173  -0.000000087
                         0.059200183   0.098979494   0.260655731   0.109179023   0.270793246  -0.037170242   0.000000447  -0.000000426

   17    5.2  0.5 -0.5  -0.039021027  -0.013732491  -0.073977640   0.011870762  -0.062153910   0.624921562  -0.000000151  -0.000000099
                        -0.053180997  -0.033695366  -0.124500322   0.188233323  -0.026675741   0.377728221  -0.000000300   0.000000210

   18    6.2  0.5 -0.5  -0.000000102  -0.000000069   0.000000154  -0.000000044  -0.000000251  -0.000000057   0.170378907   0.002346659
                         0.000000128   0.000000042  -0.000000076  -0.000000013  -0.000000266   0.000000038  -0.443462525   0.328086118

   19    7.2  0.5 -0.5  -0.000000085  -0.000000159  -0.000000270   0.000000052   0.000000008  -0.000000022  -0.177348533  -0.047395869
                        -0.000000137   0.000000127   0.000000165   0.000000283  -0.000000206  -0.000000192   0.279718412   0.470523803

   20    8.2  0.5 -0.5   0.000000096   0.000000316   0.000000183   0.000000116   0.000000195   0.000000035  -0.058863046   0.573384848
                         0.000000330   0.000000494  -0.000000019   0.000000094  -0.000000179  -0.000000087   0.004677655   0.032789885


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5   0.144044745   0.019135492  -0.145177087  -0.193575499
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.033857807  -0.117879221  -0.047015458   0.048802309
                         0.010772124  -0.208302510   0.096482816  -0.084935313

    3    1.2  1.5 -0.5   0.213142183   0.012206867   0.088413783   0.093503340
                         0.108884600   0.033367381   0.042174348   0.052692621

    4    1.2  1.5 -1.5   0.000816421  -0.006145707   0.159305567  -0.119475441
                         0.019118068  -0.143913581  -0.109969133   0.082474272

    5    1.2  0.5  0.5   0.047443646   0.090586375   0.247559232  -0.099083099
                        -0.061288156  -0.120984427  -0.009007787   0.027306796

    6    2.2  0.5  0.5  -0.147670085   0.085368765  -0.087260792  -0.234708741
                        -0.030397954   0.014084698   0.020342955  -0.086294905

    7    3.2  0.5  0.5  -0.028591516  -0.002129330   0.003172033  -0.057287589
                        -0.027848851   0.110947680  -0.231864607   0.172684786

    8    4.2  0.5  0.5  -0.040455019   0.098206102   0.104409160   0.004541104
                         0.235842368   0.144676283   0.044991272  -0.000406671

    9    5.2  0.5  0.5  -0.051773719  -0.140510109  -0.014914049  -0.063867883
                         0.184621017  -0.186102903  -0.067884540   0.026974616

   10    6.2  0.5  0.5   0.340740721   0.417805501  -0.285816681  -0.012146607
                         0.148380975  -0.185251196  -0.122814163   0.040835428

   11    7.2  0.5  0.5   0.447586898  -0.269328429   0.007234086  -0.336036967
                         0.052007041   0.211685018   0.053273891  -0.096911930

   12    8.2  0.5  0.5  -0.009115113  -0.005782748  -0.099919040  -0.113618792
                        -0.010816446  -0.027663222   0.398064975   0.513074563

   13    1.2  0.5 -0.5  -0.117009370   0.059208153   0.097054607   0.208849480
                         0.095665722  -0.050015321  -0.033816046  -0.133223903

   14    2.2  0.5 -0.5   0.017714154   0.036670658   0.144133081  -0.083369162
                         0.084690103   0.146238683  -0.204354248   0.032830848

   15    3.2  0.5 -0.5   0.110755805   0.029043357   0.145246832   0.134331424
                        -0.006861004   0.027377303   0.109568521   0.189014091

   16    4.2  0.5 -0.5   0.148734534  -0.233901592  -0.003968190   0.060365643
                         0.091944026   0.050480459   0.002245100  -0.096340420

   17    5.2  0.5 -0.5  -0.191928343  -0.182243966   0.067885060   0.026291101
                        -0.132442034   0.059603480  -0.014083855   0.064339083

   18    6.2  0.5 -0.5  -0.167256728  -0.162783656   0.033194587  -0.165446668
                         0.425328848  -0.334099737   0.026705648   0.263442392

   19    7.2  0.5 -0.5   0.200001293  -0.071056098   0.221491041  -0.024311203
                        -0.278114782  -0.444960441  -0.270655657  -0.047952109

   20    8.2  0.5 -0.5  -0.027884755   0.011195495   0.384978839  -0.308368155
                        -0.004597224   0.008645326   0.357695444  -0.270829504


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  35.201%   0.253%  26.143%   4.477%  17.386%   0.231%   8.025%   0.319%   0.000%   0.000%
    2    1.2  1.5  0.5   0.454%  30.165%   9.339%  26.114%   0.335%   8.009%   0.223%  17.394%   0.000%   0.000%
    3    1.2  1.5 -0.5  30.165%   0.454%  26.114%   9.339%   8.009%   0.335%  17.394%   0.223%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.253%  35.201%   4.477%  26.143%   0.231%  17.386%   0.319%   8.025%   0.000%   0.000%
    5    1.2  0.5  0.5   0.084%   1.903%   0.527%   1.775%   0.708%  15.471%   3.090%   6.363%   9.092%   2.151%
    6    2.2  0.5  0.5   1.192%   0.929%   1.484%   0.685%  17.986%   2.015%   4.270%   1.362%  36.557%   5.667%
    7    3.2  0.5  0.5   0.022%   0.528%   0.770%   2.970%   0.555%  19.583%   0.298%   5.197%   7.206%  34.458%
    8    4.2  0.5  0.5   2.433%   1.237%   0.476%   0.143%   1.818%   4.599%  10.385%   8.830%   1.245%   3.057%
    9    5.2  0.5  0.5   0.412%   1.983%   1.322%   0.572%   0.164%   1.182%  12.530%  11.756%   0.132%   0.435%
   10    6.2  0.5  0.5   5.173%   4.242%   3.011%   3.041%   0.361%   1.426%   1.636%   3.216%   0.000%   0.000%
   11    7.2  0.5  0.5   4.421%   2.942%   3.624%   4.480%   0.988%   0.696%   3.594%   1.362%   0.000%   0.000%
   12    8.2  0.5  0.5   6.404%   0.019%   7.788%   1.257%   6.431%   0.058%   0.130%   0.021%   0.000%   0.000%
   13    1.2  0.5 -0.5   1.903%   0.084%   1.775%   0.527%  15.471%   0.708%   6.363%   3.090%   2.151%   9.092%
   14    2.2  0.5 -0.5   0.929%   1.192%   0.685%   1.484%   2.015%  17.986%   1.362%   4.270%   5.667%  36.557%
   15    3.2  0.5 -0.5   0.528%   0.022%   2.970%   0.770%  19.583%   0.555%   5.197%   0.298%  34.458%   7.206%
   16    4.2  0.5 -0.5   1.237%   2.433%   0.143%   0.476%   4.599%   1.818%   8.830%  10.385%   3.057%   1.245%
   17    5.2  0.5 -0.5   1.983%   0.412%   0.572%   1.322%   1.182%   0.164%  11.756%  12.530%   0.435%   0.132%
   18    6.2  0.5 -0.5   4.242%   5.173%   3.041%   3.011%   1.426%   0.361%   3.216%   1.636%   0.000%   0.000%
   19    7.2  0.5 -0.5   2.942%   4.421%   4.480%   3.624%   0.696%   0.988%   1.362%   3.594%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.019%   6.404%   1.257%   7.788%   0.058%   6.431%   0.021%   0.130%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.075%   0.037%   2.108%   3.747%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.126%   5.729%   1.152%   0.960%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.729%   0.126%   0.960%   1.152%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.037%   2.075%   3.747%   2.108%
    5    1.2  0.5  0.5  13.020%  31.182%   1.030%   3.525%   0.000%   0.000%   0.601%   2.284%   6.137%   1.056%
    6    2.2  0.5  0.5   7.435%   5.112%   3.175%   2.054%   0.000%   0.000%   2.273%   0.749%   0.803%   6.254%
    7    3.2  0.5  0.5   1.404%  13.789%   0.057%   3.087%   0.000%   0.000%   0.159%   1.231%   5.377%   3.310%
    8    4.2  0.5  0.5  12.080%  10.324%   0.396%  32.898%   0.000%   0.000%   5.726%   3.058%   1.293%   0.002%
    9    5.2  0.5  0.5   3.557%   2.097%  53.321%   0.457%   0.000%   0.000%   3.677%   5.438%   0.483%   0.481%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  10.765%  22.569%  13.812%  20.888%   9.677%   0.182%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  22.364%  10.969%  20.304%  11.735%   0.289%  12.231%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  32.985%   0.349%   0.020%   0.080%  16.844%  27.615%
   13    1.2  0.5 -0.5  31.182%  13.020%   3.525%   1.030%   0.000%   0.000%   2.284%   0.601%   1.056%   6.137%
   14    2.2  0.5 -0.5   5.112%   7.435%   2.054%   3.175%   0.000%   0.000%   0.749%   2.273%   6.254%   0.803%
   15    3.2  0.5 -0.5  13.789%   1.404%   3.087%   0.057%   0.000%   0.000%   1.231%   0.159%   3.310%   5.377%
   16    4.2  0.5 -0.5  10.324%  12.080%  32.898%   0.396%   0.000%   0.000%   3.058%   5.726%   0.002%   1.293%
   17    5.2  0.5 -0.5   2.097%   3.557%   0.457%  53.321%   0.000%   0.000%   5.438%   3.677%   0.481%   0.483%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  22.569%  10.765%  20.888%  13.812%   0.182%   9.677%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  10.969%  22.364%  11.735%  20.304%  12.231%   0.289%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.349%  32.985%   0.080%   0.020%  27.615%  16.844%


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

              2       6      535.53       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     22234.23  20032.56   2099.44     97.85      3.71      0.50
 REAL TIME  *     22414.01 SEC
 DISK USED  *       571.90 MB (local),        7.88 GB (total)
 SF USED    *         5.27 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -214.172930281463

              CI              CI           MULTI
   -214.15663161   -214.23264066   -213.51650256
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
