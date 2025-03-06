
 Working directory              : /wrk/irikura/molpro.ve6sVl05mW/
 Global scratch directory       : /wrk/irikura/molpro.ve6sVl05mW/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ve6sVl05mW/

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
 
 basis=aug-cc-pwCVQZ-PP
 
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
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Bi SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 23-Jan-25          TIME: 09:59:51  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  42000 MW

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

     161.743 MB (compressed) written to integral file ( 21.8%)

     Node minimum: 2.621 MB, node maximum: 8.913 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1858160.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1858160      RECORD LENGTH: 524288

 Memory used in sort:       2.42 MW

 SORT1 READ    92659037. AND WROTE      346699. INTEGRALS IN      1 RECORDS. CPU TIME:     0.62 SEC, REAL TIME:     0.65 SEC
 SORT2 READ     9613375. AND WROTE    52200630. INTEGRALS IN    644 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC

 Node minimum:     1855590.  Node maximum:     1873009. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.29      2.11
 REAL TIME  *         3.42 SEC
 DISK USED  *        29.74 MB (local),        1.05 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     153 (   79   74)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:              20   (20 determinants, 20 intermediate states)

 State symmetry 2

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              70   (90 determinants, 90 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.495D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.346D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.273D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.494D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.426D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 3 5 6 1 1 4 2   6 3 5 1 4 2 6 3 5 9   7 8151410111312 1 4   2 6 3 5 7 915 81410
                                       111312 4 2 6 3 5 1 9   7 8151410111312 4 2   6 3 5 1 9 715 81410  111312 4 2 6 3 5 1 4
                                        6 2 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.109D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.161D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.982D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.795D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.795D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.461D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.461D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 1 3 1 2 3 1   2 3 6 4 5 810 7 9 3   1 2 4 6 5 810 7 9 4   6 5 810 7 9 1 3 2 4
                                        6 8 510 7 919112116  14171512132018 3 1 2   6 4 8 510 7 9 4 6 8   510 7 9 2 3 1 3 2 1
                                        3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1237  ( 18 closed/active, 775 closed/virtual, 0 active/active, 444 active/virtual )
 Total number of variables:    1977
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   18    0   -213.52308725    -213.53085032   -0.00776307    0.06041241 0.00022302 0.00000000  0.15E+01      0.96
   2    9   16    0   -213.53109776    -213.53115316   -0.00005540    0.00256555 0.00000406 0.00000000  0.16E+00      1.95
   3    6   12    0   -213.53115317    -213.53115317   -0.00000000    0.00000147 0.00000001 0.00000000  0.14E-03      2.74

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.64E-08)
                       Final energy:   -213.53115317
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -213.592020582696
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.98883487
 One electron energy                          -372.87891087
 Two electron energy                           159.28689029
 Virial ratio                                    4.09603751
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -213.536860784661
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92163575
 One electron energy                          -372.62630966
 Two electron energy                           159.08944888
 Virial ratio                                    4.09825584
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -213.536860784659
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92163575
 One electron energy                          -372.62630966
 Two electron energy                           159.08944888
 Virial ratio                                    4.09825584
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -213.536860784542
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92163575
 One electron energy                          -372.62630966
 Two electron energy                           159.08944888
 Virial ratio                                    4.09825584
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -213.536860784508
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92163575
 One electron energy                          -372.62630966
 Two electron energy                           159.08944888
 Virial ratio                                    4.09825584
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -213.536860784478
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.92163575
 One electron energy                          -372.62630966
 Two electron energy                           159.08944888
 Virial ratio                                    4.09825584
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -213.501351330002
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.88118832
 One electron energy                          -372.46533670
 Two electron energy                           158.96398537
 Virial ratio                                    4.09955964
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -213.501351329730
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.88118832
 One electron energy                          -372.46533670
 Two electron energy                           158.96398537
 Virial ratio                                    4.09955964
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -213.501351329652
 Nuclear energy                                  0.00000000
 Kinetic energy                                 68.88118832
 One electron energy                          -372.46533670
 Two electron energy                           158.96398537
 Virial ratio                                    4.09955964
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.648913586119
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999999985
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000000173
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.999999999654
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.351087617562
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999999998
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999635
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000000112
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.398466808807
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000043
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999999999697
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000000343
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     2.601531634273
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.000000000365
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999999888
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.952619605074
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.999999999971
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000129
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000000003
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.047380748164
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.000000000002
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 3 5   4 6 2 1 2 6 4 3 513  101415 812 9 711 1 3   5 4 2 61310141512 8
                                       11 9 7 3 5 4 6 2 113  10141511 812 7 9 3 5   6 4 2 11113101415 8  12 7 9 6 3 5 2 4 1 6
                                        3 4 2 5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 1 2 2 1 3 3   1 2 9 7 810 4 6 5 1   2 3 7 9 810 4 5 6 7   9 810 5 4 6 1 2 3 7
                                        9 810 5 6 420181517  14161221131911 2 1 3   7 910 8 5 6 4 7 9 5  10 8 6 4 2 1 3 3 1 2
                                        3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.69412     1  1  s    1.00069
    2.1     2.00000    -1.32240     1  1  d2-  1.00034
    3.1     2.00000    -1.32240     1  1  d2+  1.00034
    4.1     2.00000    -1.32240     1  1  d1-  1.00034
    5.1     2.00000    -1.32240     1  1  d0   1.00034
    6.1     2.00000    -1.32240     1  1  d1+  1.00034
    7.1     2.00000    -0.68797     1  2  s    1.00323
    1.2     2.00000    -4.27034     1  1  py   0.99963
    2.2     2.00000    -4.27034     1  1  pz   0.99963
    3.2     2.00000    -4.27034     1  1  px   0.99963
    4.2     0.99668    -0.14244     1  2  pz   0.98652
    5.2     0.99668    -0.14244     1  2  px   0.98652
    6.2     0.99668    -0.14244     1  2  py   0.98652
    7.2     0.00332     0.35072     1  2  py  -1.55023    1  4  py  -0.60820    1  5  py   1.16148    1  6  py   1.10735
    8.2     0.00332     0.35072     1  2  px  -1.55023    1  4  px  -0.60820    1  5  px   1.16148    1  6  px   1.10735
    9.2     0.00332     0.35072     1  2  pz  -1.55023    1  4  pz  -0.60820    1  5  pz   1.16148    1  6  pz   1.10735
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 aaa000         0.99827253
 
 Energy:     -213.59202058
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 baa000        -0.08866193     -0.00000002     -0.00000003      0.00000039      0.80980485     -0.00000000      0.00000000
 aba000         0.74564254      0.00000001      0.00000001     -0.00000016     -0.32811894      0.00000000      0.00000000
 02a000         0.00000000     -0.00000198     -0.70550239     -0.00000536     -0.00000003     -0.00000002      0.70438491
 0a2000        -0.00000000      0.00000064      0.00000536     -0.70550239      0.00000034     -0.00000093      0.00001346
 a20000        -0.00000000      0.70550239     -0.00000198      0.00000064      0.00000002      0.70438491      0.00000002
 a02000         0.00000000     -0.70550239      0.00000198     -0.00000064     -0.00000002      0.70438491      0.00000002
 2a0000         0.00000000     -0.00000064     -0.00000536      0.70550239     -0.00000034     -0.00000093      0.00001346
 20a000        -0.00000000      0.00000198      0.70550239      0.00000536      0.00000003     -0.00000002      0.70438491
 aab000        -0.65698060      0.00000001      0.00000002     -0.00000023     -0.48168591     -0.00000000     -0.00000000
 
 Energy:     -213.53686078   -213.53686078   -213.53686078   -213.53686078   -213.53686078   -213.50135133   -213.50135133

 State:              8
 baa000         0.00000000
 aba000        -0.00000000
 02a000        -0.00001346
 0a2000         0.70438491
 a20000         0.00000093
 a02000         0.00000093
 2a0000         0.70438491
 20a000        -0.00001346
 aab000        -0.00000000
 
 Energy:     -213.50135133
 


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
 CPU TIMES  *         4.87      2.58      2.11
 REAL TIME  *         6.84 SEC
 DISK USED  *        53.25 MB (local),        1.70 GB (total)
 SF USED    *        58.37 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.5920206  -0.0
    -213.5368608   6.0
    -213.5368608   6.0
    -213.5368608   6.0
    -213.5368608   6.0
    -213.5368608   6.0
    -213.5013513   2.0
    -213.5013513   2.0
    -213.5013513   2.0
                                                  


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
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.59202058

 Number of blocks in overlap matrix:   163   Smallest eigenvalue:  0.53D+00
 Number of N-2 electron functions:     226
 Number of N-1 electron functions:   22565

 Number of internal configurations:                10436
 Number of singly external configurations:       1720910
 Number of doubly external configurations:       1322752
 Total number of contracted configurations:      3054098
 Total number of uncontracted configurations:   83448483

 Diagonal Coupling coefficients finished.               Storage:   3418324 words, CPU-Time:      0.08 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1257779 words, CPU-time:      0.34 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.59202058    -0.00000000    -0.94708465  0.57D-01  0.11D+00     0.78
    2     1     1     1.10129801    -0.74026632  -214.33228690    -0.74026632    -0.02692683  0.36D-02  0.21D-02     5.00
    3     1     1     1.08813108    -0.76498925  -214.35700983    -0.02472293    -0.00031578  0.38D-04  0.31D-04     9.06
    4     1     1     1.08762588    -0.76530371  -214.35732429    -0.00031446    -0.00000710  0.17D-05  0.46D-06    13.01
    5     1     1     1.08762910    -0.76531116  -214.35733174    -0.00000745    -0.00000021  0.34D-07  0.18D-07    16.95
    6     1     1     1.08763677    -0.76531138  -214.35733196    -0.00000022    -0.00000001  0.77D-09  0.49D-09    20.90


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.9%
 S   3.5%  25.2%
 P   1.1%  43.3%   5.6%

 Initialization:   2.5%
 Other:           15.0%

 Total CPU:       20.9 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9559612


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95796311 (fixed)   0.95810565 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00188655   -0.00559234   -0.00645701
 Singles      0.02069308   -0.09221067   -0.09915683
 Pairs        0.06710902   -0.66750837   -0.65969753
 Total        1.08968865   -0.76531138   -0.76531138
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.59202058
 Nuclear energy                         0.00000000
 Kinetic energy                        69.42543435
 One electron energy                 -372.42764766
 Two electron energy                  158.07031570
 Virial quotient                       -3.08759079
 Correlation energy                    -0.76531138
 !MRCI STATE 1.2 Energy              -214.357331961639

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.42597171 (Davidson, fixed reference)
 Cluster corrected energies          -214.42572358 (Davidson, relaxed reference)

 Cluster corrected energies          -214.42382700 (Pople, fixed reference)
 Cluster corrected energies          -214.42356855 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       25.24       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        26.23     21.34      2.58      2.11
 REAL TIME  *        29.68 SEC
 DISK USED  *        77.70 MB (local),        2.37 GB (total)
 SF USED    *       373.87 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.42572358  AU                              


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
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  35

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.53686078
     2      -213.53686078
     3      -213.53686078
     4      -213.53686078
     5      -213.53686078
     6      -213.50135133
     7      -213.50135133
     8      -213.50135133

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1674D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1256D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1549D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1366D-06

 Number of blocks in overlap matrix:   886   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    1432
 Number of N-1 electron functions:   28036

 Number of internal configurations:                14896
 Number of singly external configurations:       2136964
 Number of doubly external configurations:       8385867
 Total number of contracted configurations:     10537727
 Total number of uncontracted configurations:  129713442

 Diagonal Coupling coefficients finished.               Storage:   7770309 words, CPU-Time:      2.12 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1623875 words, CPU-time:      1.94 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.53686078    -0.00000000    -0.95267392  0.64D-01  0.11D+00     6.73
    1     2     2     1.00000000     0.00000000  -213.53686078     0.00000000    -0.95183910  0.63D-01  0.11D+00     6.73
    1     3     3     1.00000000     0.00000000  -213.53686078     0.00000000    -0.94908772  0.63D-01  0.11D+00     6.73
    1     4     4     1.00000000     0.00000000  -213.53686078     0.00000000    -0.94974403  0.63D-01  0.11D+00     6.73
    1     5     5     1.00000000     0.00000000  -213.53686078    -0.00000000    -0.94996938  0.63D-01  0.11D+00     6.73
    1     6     6     1.00000000     0.00000000  -213.50135133     0.00000000    -0.94990053  0.50D-01  0.12D+00     6.73
    1     7     7     1.00000000     0.00000000  -213.50135133     0.00000000    -0.94599354  0.50D-01  0.12D+00     6.73
    1     8     8     1.00000000     0.00000000  -213.50135133    -0.00000000    -0.94826629  0.50D-01  0.12D+00     6.73
    2     1     1     1.10539793    -0.74881877  -214.28567956    -0.74881877    -0.02628777  0.39D-02  0.19D-02   109.91
    2     2     2     1.10575026    -0.74864155  -214.28550233    -0.74864155    -0.02649113  0.39D-02  0.20D-02   109.91
    2     3     3     1.10564701    -0.74856581  -214.28542659    -0.74856581    -0.02656992  0.39D-02  0.19D-02   109.91
    2     4     4     1.10606791    -0.74823068  -214.28509146    -0.74823068    -0.02700989  0.39D-02  0.20D-02   109.91
    2     5     5     1.10630587    -0.74794951  -214.28481029    -0.74794951    -0.02734676  0.40D-02  0.21D-02   109.91
    2     6     6     1.10204865    -0.75212022  -214.25347155    -0.75212022    -0.02631891  0.37D-02  0.20D-02   109.91
    2     7     7     1.10344158    -0.75147127  -214.25282260    -0.75147127    -0.02700668  0.36D-02  0.23D-02   109.91
    2     8     8     1.10360104    -0.75125678  -214.25260811    -0.75125678    -0.02730973  0.36D-02  0.24D-02   109.91
    3     1     1     1.09248248    -0.77300804  -214.30986883    -0.02418927    -0.00036127  0.51D-04  0.34D-04   211.68
    3     2     2     1.09252311    -0.77300543  -214.30986621    -0.02436388    -0.00036526  0.51D-04  0.35D-04   211.68
    3     3     3     1.09248857    -0.77300271  -214.30986349    -0.02443690    -0.00036639  0.52D-04  0.34D-04   211.68
    3     4     4     1.09255338    -0.77299879  -214.30985958    -0.02476811    -0.00037327  0.51D-04  0.36D-04   211.68
    3     5     5     1.09257322    -0.77299469  -214.30985548    -0.02504519    -0.00037820  0.52D-04  0.37D-04   211.68
    3     6     6     1.09098133    -0.77622443  -214.27757576    -0.02410421    -0.00034382  0.35D-04  0.37D-04   211.68
    3     7     7     1.09115553    -0.77620712  -214.27755845    -0.02473586    -0.00036182  0.38D-04  0.41D-04   211.68
    3     8     8     1.09120852    -0.77619884  -214.27755017    -0.02494206    -0.00037138  0.38D-04  0.44D-04   211.68
    4     1     1     1.09187655    -0.77336912  -214.31022991    -0.00036108    -0.00001147  0.26D-05  0.98D-06   313.44
    4     2     2     1.09187189    -0.77336904  -214.31022982    -0.00036361    -0.00001153  0.26D-05  0.98D-06   313.44
    4     3     3     1.09186588    -0.77336895  -214.31022973    -0.00036624    -0.00001148  0.26D-05  0.99D-06   313.44
    4     4     4     1.09185458    -0.77336879  -214.31022958    -0.00037000    -0.00001157  0.26D-05  0.98D-06   313.44
    4     5     5     1.09185498    -0.77336860  -214.31022938    -0.00037391    -0.00001168  0.27D-05  0.98D-06   313.44
    4     6     6     1.09061918    -0.77656271  -214.27791404    -0.00033829    -0.00000917  0.19D-05  0.86D-06   313.44
    4     7     7     1.09065651    -0.77656229  -214.27791362    -0.00035516    -0.00000960  0.19D-05  0.10D-05   313.44
    4     8     8     1.09066436    -0.77656212  -214.27791345    -0.00036328    -0.00000990  0.19D-05  0.11D-05   313.44
    5     1     1     1.09181405    -0.77338145  -214.31024223    -0.00001233    -0.00000043  0.65D-07  0.51D-07   415.01
    5     2     2     1.09181385    -0.77338144  -214.31024223    -0.00001241    -0.00000043  0.65D-07  0.50D-07   415.01
    5     3     3     1.09181443    -0.77338132  -214.31024211    -0.00001237    -0.00000042  0.62D-07  0.48D-07   415.01
    5     4     4     1.09181235    -0.77338131  -214.31024210    -0.00001252    -0.00000043  0.62D-07  0.51D-07   415.01
    5     5     5     1.09181171    -0.77338125  -214.31024203    -0.00001265    -0.00000043  0.63D-07  0.51D-07   415.01
    5     6     6     1.09065347    -0.77657263  -214.27792396    -0.00000991    -0.00000032  0.48D-07  0.38D-07   415.01
    5     7     7     1.09064794    -0.77657250  -214.27792383    -0.00001021    -0.00000029  0.40D-07  0.35D-07   415.01
    5     8     8     1.09065379    -0.77657249  -214.27792382    -0.00001037    -0.00000030  0.44D-07  0.35D-07   415.01
    6     1     1     1.09180341    -0.77338190  -214.31024268    -0.00000045    -0.00000001  0.18D-08  0.18D-08   516.68
    6     2     2     1.09180349    -0.77338190  -214.31024268    -0.00000045    -0.00000001  0.18D-08  0.17D-08   516.68
    6     3     3     1.09180309    -0.77338177  -214.31024255    -0.00000044    -0.00000001  0.18D-08  0.20D-08   516.68
    6     4     4     1.09180362    -0.77338177  -214.31024255    -0.00000046    -0.00000001  0.17D-08  0.17D-08   516.68
    6     5     5     1.09180311    -0.77338171  -214.31024249    -0.00000046    -0.00000001  0.18D-08  0.19D-08   516.68
    6     6     6     1.09065205    -0.77657296  -214.27792429    -0.00000034    -0.00000001  0.12D-08  0.12D-08   516.68
    6     7     7     1.09065207    -0.77657281  -214.27792414    -0.00000031    -0.00000001  0.11D-08  0.12D-08   516.68
    6     8     8     1.09065121    -0.77657281  -214.27792414    -0.00000032    -0.00000001  0.11D-08  0.13D-08   516.68


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.4%
 S   1.0%   8.4%
 P   0.5%  30.6%  23.6%

 Initialization:   0.8%
 Other:           33.7%

 Total CPU:      516.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000          -0.0000000   0.8402968   0.0000000   0.0002351   0.4516319   0.0000000   0.0000000   0.0000000
 2222222222/\/000          -0.0000000  -0.4516324   0.0000000   0.0001111   0.8402965  -0.0000000   0.0000000   0.0000000
 22222222220/2000          -0.0000000  -0.0001093  -0.0000000   0.6745635  -0.0001479  -0.0000143   0.6733242   0.0062124
 2222222222/20000          -0.6745634  -0.0000000  -0.0001076  -0.0000000  -0.0000000   0.6733532   0.0000170  -0.0002953
 222222222202/000          -0.0001076   0.0000000   0.6745630   0.0000000  -0.0000000   0.0002955  -0.0062124   0.6733248
 2222222222/02000           0.6745627  -0.0000000   0.0001076  -0.0000000   0.0000000   0.6733539   0.0000170  -0.0002953
 222222222220/000           0.0001076   0.0000000  -0.6745627  -0.0000000  -0.0000000   0.0002955  -0.0062124   0.6733250
 22222222222/0000          -0.0000000   0.0001093   0.0000000  -0.6745619   0.0001479  -0.0000143   0.6733252   0.0062124

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.955891   -0.000153   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2           0.946616   -0.000000    0.000000   -0.000155    0.132837   -0.000000    0.000000   -0.000000
 3           0.000000    0.000153    0.955891   -0.000000    0.000000    0.000000    0.000000    0.000000
 4           0.000124    0.000000    0.000000    0.955891    0.000229   -0.000000    0.000000    0.000001
 5          -0.132837    0.000000   -0.000000   -0.000210    0.946616   -0.000000   -0.000000   -0.000000
 6           0.000000    0.000001   -0.000000    0.000000    0.000000    0.955297    0.000419   -0.000020
 7           0.000000    0.000000    0.000000   -0.000001    0.000000    0.000024   -0.008814    0.955256
 8          -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000419    0.955257    0.008814

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955891   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.955891    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.955891    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.955891   -0.000000    0.000000    0.000000    0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.955891    0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.955297   -0.000000    0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.955297   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.955297


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95589108 (fixed)   0.95603748 (relaxed)   0.95589109 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00239461   -0.00681900   -0.61921764
 Singles      0.02352993   -0.09755101   -0.10576714
 Pairs        0.06849331    0.00000000   -0.04839713
 Total        1.09441786   -0.10437001   -0.77338190
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53686078
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39131599
 One electron energy                 -372.22950973
 Two electron energy                  157.91926705
 Virial quotient                       -3.08843030
 Correlation energy                    -0.77338190
 !MRCI STATE 1.2 Energy              -214.310242684197

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38326375 (Davidson, fixed reference)
 Cluster corrected energies          -214.38300456 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38326375 (Davidson, rotated reference)

 Cluster corrected energies          -214.38212078 (Pople, fixed reference)
 Cluster corrected energies          -214.38184485 (Pople, relaxed reference)
 Cluster corrected energies          -214.38212078 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.94661611 (fixed)   0.95603745 (relaxed)   0.95589107 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00239459   -0.00681900   -0.61921759
 Singles      0.02352997   -0.09755101   -0.10576717
 Pairs        0.06849336    0.00000000   -0.04839714
 Total        1.09441791   -0.10437001   -0.77338190
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53686078
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39132345
 One electron energy                 -372.22951411
 Two electron energy                  157.91927142
 Virial quotient                       -3.08842997
 Correlation energy                    -0.77338190
 !MRCI STATE 2.2 Energy              -214.310242683213

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38326379 (Davidson, fixed reference)
 Cluster corrected energies          -214.38300462 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38326379 (Davidson, rotated reference)

 Cluster corrected energies          -214.38212082 (Pople, fixed reference)
 Cluster corrected energies          -214.38184491 (Pople, relaxed reference)
 Cluster corrected energies          -214.38212082 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95589121 (fixed)   0.95603762 (relaxed)   0.95589122 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00239463   -0.00681900   -0.61921797
 Singles      0.02353009   -0.09755071   -0.10576700
 Pairs        0.06849284   -0.00000000   -0.04839679
 Total        1.09441756   -0.10436971   -0.77338177
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53686078
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39131738
 One electron energy                 -372.22952603
 Two electron energy                  157.91928348
 Virial quotient                       -3.08843023
 Correlation energy                    -0.77338177
 !MRCI STATE 3.2 Energy              -214.310242552657

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38326337 (Davidson, fixed reference)
 Cluster corrected energies          -214.38300417 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38326337 (Davidson, rotated reference)

 Cluster corrected energies          -214.38212039 (Pople, fixed reference)
 Cluster corrected energies          -214.38184444 (Pople, relaxed reference)
 Cluster corrected energies          -214.38212039 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.95589096 (fixed)   0.95603739 (relaxed)   0.95589100 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00239462   -0.00681900   -0.61921702
 Singles      0.02353005   -0.09755074   -0.10576700
 Pairs        0.06849340   -0.00000068   -0.04839774
 Total        1.09441807   -0.10437042   -0.77338177
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53686078
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39132080
 One electron energy                 -372.22952267
 Two electron energy                  157.91928012
 Virial quotient                       -3.08843008
 Correlation energy                    -0.77338177
 !MRCI STATE 4.2 Energy              -214.310242551857

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38326377 (Davidson, fixed reference)
 Cluster corrected energies          -214.38300458 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38326377 (Davidson, rotated reference)

 Cluster corrected energies          -214.38212081 (Pople, fixed reference)
 Cluster corrected energies          -214.38184488 (Pople, relaxed reference)
 Cluster corrected energies          -214.38212081 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.94661622 (fixed)   0.95603761 (relaxed)   0.95589124 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00239459   -0.00681900   -0.61921826
 Singles      0.02352975   -0.09755032   -0.10576670
 Pairs        0.06849319    0.00000000   -0.04839674
 Total        1.09441752   -0.10436932   -0.77338171
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.53686078
 Nuclear energy                         0.00000000
 Kinetic energy                        69.39133162
 One electron energy                 -372.22952761
 Two electron energy                  157.91928512
 Virial quotient                       -3.08842960
 Correlation energy                    -0.77338171
 !MRCI STATE 5.2 Energy              -214.310242492763

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.38326328 (Davidson, fixed reference)
 Cluster corrected energies          -214.38300412 (Davidson, relaxed reference)
 Cluster corrected energies          -214.38326328 (Davidson, rotated reference)

 Cluster corrected energies          -214.38212030 (Pople, fixed reference)
 Cluster corrected energies          -214.38184439 (Pople, relaxed reference)
 Cluster corrected energies          -214.38212030 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95529693 (fixed)   0.95543261 (relaxed)   0.95529702 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00470123   -0.01115797   -0.62972699
 Singles      0.01930318   -0.09019628   -0.09599675
 Pairs        0.07177505    0.00001436   -0.05084923
 Total        1.09577945   -0.10133989   -0.77657296
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50135133
 Nuclear energy                         0.00000000
 Kinetic energy                        69.37110002
 One electron energy                 -372.09693846
 Two electron energy                  157.81901416
 Virial quotient                       -3.08886444
 Correlation energy                    -0.77657296
 !MRCI STATE 6.2 Energy              -214.277924293459

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.35230403 (Davidson, fixed reference)
 Cluster corrected energies          -214.35206253 (Davidson, relaxed reference)
 Cluster corrected energies          -214.35230403 (Davidson, rotated reference)

 Cluster corrected energies          -214.35122630 (Pople, fixed reference)
 Cluster corrected energies          -214.35096859 (Pople, relaxed reference)
 Cluster corrected energies          -214.35122630 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95525636 (fixed)   0.95543260 (relaxed)   0.95529702 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00470122   -0.01115794   -0.01354060
 Singles      0.01930313   -0.09019615   -0.09599663
 Pairs        0.07177511   -0.67518998   -0.66703558
 Total        1.09577946   -0.77654407   -0.77657281
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50135133
 Nuclear energy                         0.00000000
 Kinetic energy                        69.37111099
 One electron energy                 -372.09695513
 Two electron energy                  157.81903100
 Virial quotient                       -3.08886395
 Correlation energy                    -0.77657281
 !MRCI STATE 7.2 Energy              -214.277924138382

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.35230386 (Davidson, fixed reference)
 Cluster corrected energies          -214.35206236 (Davidson, relaxed reference)
 Cluster corrected energies          -214.35230386 (Davidson, rotated reference)

 Cluster corrected energies          -214.35122614 (Pople, fixed reference)
 Cluster corrected energies          -214.35096843 (Pople, relaxed reference)
 Cluster corrected energies          -214.35122614 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95525667 (fixed)   0.95543300 (relaxed)   0.95529742 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00470116   -0.01115790   -0.62402904
 Singles      0.01930329   -0.09019640   -0.09599681
 Pairs        0.07177409   -0.00622957   -0.05654695
 Total        1.09577854   -0.10758387   -0.77657281
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.50135133
 Nuclear energy                         0.00000000
 Kinetic energy                        69.37110869
 One electron energy                 -372.09695383
 Two electron energy                  157.81902970
 Virial quotient                       -3.08886406
 Correlation energy                    -0.77657281
 !MRCI STATE 8.2 Energy              -214.277924137343

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.35230314 (Davidson, fixed reference)
 Cluster corrected energies          -214.35206165 (Davidson, relaxed reference)
 Cluster corrected energies          -214.35230314 (Davidson, rotated reference)

 Cluster corrected energies          -214.35122537 (Pople, fixed reference)
 Cluster corrected energies          -214.35096767 (Pople, relaxed reference)
 Cluster corrected energies          -214.35122537 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      676.92       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *       619.07    592.83     21.34      2.58      2.11
 REAL TIME  *       672.50 SEC
 DISK USED  *       729.38 MB (local),       20.19 GB (total)
 SF USED    *         6.45 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -214.38326375  AU                              
 SETTING HLSDIAG(3)     =      -214.38326379  AU                              
 SETTING HLSDIAG(4)     =      -214.38326337  AU                              
 SETTING HLSDIAG(5)     =      -214.38326377  AU                              
 SETTING HLSDIAG(6)     =      -214.38326328  AU                              
 SETTING HLSDIAG(7)     =      -214.35230403  AU                              
 SETTING HLSDIAG(8)     =      -214.35230386  AU                              
 SETTING HLSDIAG(9)     =      -214.35230314  AU                              


         HLSDIAG
    -214.4257236
    -214.3832637
    -214.3832638
    -214.3832634
    -214.3832638
    -214.3832633
    -214.3523040
    -214.3523039
    -214.3523031
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -214.357332
 Replaced energies:   -214.425724

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -214.310243   -214.310243   -214.310243   -214.310243   -214.310242   -214.277924   -214.277924   -214.277924
 Replaced energies:   -214.383264   -214.383264   -214.383263   -214.383264   -214.383263   -214.352304   -214.352304   -214.352303



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.42572358

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       2.71
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.01      -0.00      -0.13

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00   -7139.90

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       1.57
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.01       0.00       0.08

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00    9318.86       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     102.92      -0.00       0.01      -3.13      -0.00

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00    9318.85       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00    -102.92       0.00      -0.01      -0.00      -0.00    -155.32

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    9318.94       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.01       0.00      51.48      -0.01       0.09

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9318.85       0.00       0.00
                           -0.01      -0.00       0.01      -0.00      -0.01       0.00     -51.48       0.00      -0.00       0.80

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    9318.96       0.00
                            0.00      -0.00      -0.00      -0.00       3.13       0.00       0.01       0.00      -0.00   -5103.20

   10   6.2  0.5  0.5       2.71       0.00       1.57       0.00       0.00       0.00       0.00       0.00       0.00   16113.73
                            0.13    7139.90      -0.08      -0.00       0.00     155.32      -0.09      -0.80    5103.20       0.00

   11   7.2  0.5  0.5     -57.05       0.00     -32.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -6183.07       0.18    3569.80      -0.00      -0.71      -0.00    4421.36      40.79       0.12      -0.09

   12   8.2  0.5  0.5    6183.10       0.00    3569.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -57.05      -3.13      32.94      -0.00      -0.01       0.65      40.79   -4421.36      -1.27      -0.01

   13   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.02       0.00      51.49       0.00      -0.09
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00     -51.48      -0.00       0.00      -1.23

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.02      -0.00     -48.75      -0.00       0.00      -1.26
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00     -54.18      -0.00       0.09

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      48.75       0.00      -0.00     -90.70       0.00
                           -0.00      -0.00       0.00       0.00      51.48       0.00      -0.00       0.00      -0.00   -4421.53

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00     -51.49       0.00       0.00      -0.00       0.00   -4421.53
                           -0.00      -0.01      -0.00       0.01       0.00      54.18      -0.00       0.00      87.56      -0.00

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00      90.70      -0.00      -0.00      -0.09
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00     -87.56       0.00      -0.06

   18   6.2  0.5 -0.5       0.00       1.57       0.00       2.71       0.09       1.26      -0.00    4421.53       0.09      -0.00
                           -0.00       0.08    7139.90      -0.13       1.23      -0.09    4421.53       0.00       0.06       0.00

   19   7.2  0.5 -0.5       0.00     -32.94       0.00     -57.05   -4421.34     -41.49      -0.71       0.10     -22.30    -209.68
                           -0.00   -3569.80       0.18    6183.07     -40.79    4341.63       0.11       0.11   -2686.01       1.93

   20   8.2  0.5 -0.5       0.00    3569.81       0.00    6183.10     -40.79    4496.97      -0.01      -0.68    2416.98      -1.93
                           -0.00     -32.94      -3.13      57.05    4421.35      40.06      -1.23       0.00     -24.78    -209.66


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5     -57.05    6183.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         6183.07      57.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       1.57     -32.94    3569.81
                           -0.18       3.13      -0.00      -0.00       0.00       0.01      -0.00      -0.08    3569.80      32.94

    3   1.2  1.5 -0.5     -32.94    3569.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -3569.80     -32.94      -0.00       0.00      -0.00       0.00       0.00   -7139.90      -0.18       3.13

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       2.71     -57.05    6183.10
                            0.00       0.00       0.00       0.00      -0.00      -0.01       0.00       0.13   -6183.07     -57.05

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.02      -0.00     -51.49      -0.00       0.09   -4421.34     -40.79
                            0.71       0.01       0.00      -0.00     -51.48      -0.00       0.00      -1.23      40.79   -4421.35

    6   2.2  0.5  0.5       0.00       0.00      -0.02      -0.00      48.75       0.00      -0.00       1.26     -41.49    4496.97
                            0.00      -0.65       0.00      -0.00      -0.00     -54.18      -0.00       0.09   -4341.63     -40.06

    7   3.2  0.5  0.5       0.00       0.00       0.00     -48.75       0.00       0.00      90.70      -0.00      -0.71      -0.01
                        -4421.36     -40.79      51.48       0.00       0.00       0.00      -0.00   -4421.53      -0.11       1.23

    8   4.2  0.5  0.5       0.00       0.00      51.49      -0.00      -0.00      -0.00      -0.00    4421.53       0.10      -0.68
                          -40.79    4421.36       0.00      54.18      -0.00      -0.00      87.56      -0.00      -0.11      -0.00

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00     -90.70       0.00      -0.00       0.09     -22.30    2416.98
                           -0.12       1.27      -0.00       0.00       0.00     -87.56      -0.00      -0.06    2686.01      24.78

   10   6.2  0.5  0.5       0.00       0.00      -0.09      -1.26       0.00   -4421.53      -0.09      -0.00    -209.68      -1.93
                            0.09       0.01       1.23      -0.09    4421.53       0.00       0.06      -0.00      -1.93     209.66

   11   7.2  0.5  0.5   16113.77       0.00    4421.34      41.49       0.71      -0.10      22.30     209.68      -0.00      -0.09
                           -0.00    -209.69     -40.79    4341.63       0.11       0.11   -2686.01       1.93       0.00       0.00

   12   8.2  0.5  0.5       0.00   16113.92      40.79   -4496.97       0.01       0.68   -2416.98       1.93       0.09       0.00
                          209.69      -0.00    4421.35      40.06      -1.23       0.00     -24.78    -209.66      -0.00       0.00

   13   1.2  0.5 -0.5    4421.34      40.79    9318.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           40.79   -4421.35      -0.00    -102.92       0.00      -0.01       3.13       0.00      -0.71      -0.01

   14   2.2  0.5 -0.5      41.49   -4496.97       0.00    9318.85       0.00       0.00       0.00       0.00       0.00       0.00
                        -4341.63     -40.06     102.92      -0.00       0.01       0.00       0.00     155.32      -0.00       0.65

   15   3.2  0.5 -0.5       0.71       0.01       0.00       0.00    9318.94       0.00       0.00       0.00       0.00       0.00
                           -0.11       1.23      -0.00      -0.01      -0.00     -51.48       0.01      -0.09    4421.36      40.79

   16   4.2  0.5 -0.5      -0.10       0.68       0.00       0.00       0.00    9318.85       0.00       0.00       0.00       0.00
                           -0.11      -0.00       0.01      -0.00      51.48      -0.00       0.00      -0.80      40.79   -4421.36

   17   5.2  0.5 -0.5      22.30   -2416.98       0.00       0.00       0.00       0.00    9318.96       0.00       0.00       0.00
                         2686.01      24.78      -3.13      -0.00      -0.01      -0.00       0.00    5103.20       0.12      -1.27

   18   6.2  0.5 -0.5     209.68       1.93       0.00       0.00       0.00       0.00       0.00   16113.73       0.00       0.00
                           -1.93     209.66      -0.00    -155.32       0.09       0.80   -5103.20      -0.00      -0.09      -0.01

   19   7.2  0.5 -0.5      -0.00       0.09       0.00       0.00       0.00       0.00       0.00       0.00   16113.77       0.00
                           -0.00       0.00       0.71       0.00   -4421.36     -40.79      -0.12       0.09       0.00     209.69

   20   8.2  0.5 -0.5      -0.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16113.92
                           -0.00      -0.00       0.01      -0.65     -40.79    4421.36       1.27       0.01    -209.69       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -214.44940258    -0.02367900    -5196.94      0.00000000        0.00      0.0000
     2  -214.44940258    -0.02367900    -5196.94      0.00000000        0.00      0.0000
     3  -214.44940253    -0.02367895    -5196.93      0.00000005        0.01      0.0000
     4  -214.44940253    -0.02367895    -5196.93      0.00000005        0.01      0.0000
     5  -214.40150572     0.02421786     5315.21      0.04789686    10512.15      1.3033
     6  -214.40150572     0.02421786     5315.21      0.04789686    10512.15      1.3033
     7  -214.40150561     0.02421798     5315.23      0.04789697    10512.17      1.3033
     8  -214.40150561     0.02421798     5315.23      0.04789697    10512.17      1.3033
     9  -214.38279460     0.04292898     9421.82      0.06660798    14618.76      1.8125
    10  -214.38279460     0.04292898     9421.82      0.06660798    14618.76      1.8125
    11  -214.38279450     0.04292909     9421.85      0.06660809    14618.79      1.8125
    12  -214.38279450     0.04292909     9421.85      0.06660809    14618.79      1.8125
    13  -214.38279417     0.04292941     9421.92      0.06660841    14618.86      1.8125
    14  -214.38279417     0.04292941     9421.92      0.06660841    14618.86      1.8125
    15  -214.35421443     0.07150915    15694.44      0.09518815    20891.38      2.5902
    16  -214.35421443     0.07150915    15694.44      0.09518815    20891.38      2.5902
    17  -214.31013113     0.11559246    25369.61      0.13927145    30566.55      3.7898
    18  -214.31013113     0.11559246    25369.61      0.13927145    30566.55      3.7898
    19  -214.31013088     0.11559270    25369.67      0.13927170    30566.60      3.7898
    20  -214.31013088     0.11559270    25369.67      0.13927170    30566.60      3.7898


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.427863911   0.021474515   0.012956619   0.688434503   0.005801098   0.489698179   0.151106719  -0.002842698
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.025831804   0.516145006  -0.413549319   0.007737459   0.089492471  -0.001056635  -0.007832724  -0.415751173
                        -0.024238387   0.454366712  -0.111520271   0.002989904   0.121776003  -0.001386636  -0.005047305  -0.258655622

    3    1.2  1.5 -0.5   0.687152226   0.035422241  -0.008276128  -0.428016245   0.001742588   0.151112565  -0.489609217   0.009318023
                         0.026011409   0.000215340   0.000559915  -0.016183438   0.000051221   0.001813834  -0.005880728  -0.000036046

    4    1.2  1.5 -1.5  -0.015570465   0.310230073   0.657443418  -0.012373354   0.285233049  -0.003378948   0.002395491   0.127334927
                        -0.014789029   0.294660531   0.204230793  -0.003843707   0.398053281  -0.004715448   0.001530541   0.081357587

    5    1.2  0.5  0.5  -0.003842590   0.076246433   0.052847785  -0.000965093  -0.393043683   0.004638145  -0.001589987  -0.080332590
                         0.004028131  -0.080276094  -0.170121556   0.003202335   0.281643175  -0.003336174   0.002364552   0.125732996

    6    2.2  0.5  0.5  -0.004229599   0.084302009   0.166787659  -0.003139959  -0.284201634   0.003366373  -0.002128177  -0.113187067
                        -0.004049793   0.079786991   0.051944993  -0.000969503  -0.396519646   0.004755694  -0.001414712  -0.072526721

    7    3.2  0.5  0.5   0.098628942   0.005171699  -0.003522541  -0.184986458   0.001311175   0.112545491   0.493276517  -0.009384298
                         0.005829657   0.000035449   0.000098332  -0.003626104   0.000001134  -0.001551560   0.005029108   0.000050883

    8    4.2  0.5  0.5  -0.005831147  -0.000005863  -0.000123052   0.003626572  -0.000019720   0.001551811  -0.005027456   0.000041668
                         0.209343480   0.010754559  -0.000176541  -0.006844740  -0.004442148  -0.370988050   0.344079896  -0.006519925

    9    5.2  0.5  0.5  -0.006557343   0.131054712  -0.112137076   0.002097849  -0.079754993   0.000940988   0.007803555   0.414149962
                        -0.006198557   0.115196432  -0.030451640   0.000805076  -0.108226702   0.001308225   0.004951951   0.257725087

   10    6.2  0.5  0.5  -0.011913831   0.220473131  -0.054116432   0.001369550  -0.060435878   0.000797000   0.002480103   0.128369740
                         0.012531802  -0.250458719   0.200673567  -0.003761223   0.044414929  -0.000520529  -0.003884010  -0.206334955

   11    7.2  0.5  0.5   0.009507455   0.000220377   0.000166181  -0.002215238  -0.000041233  -0.002737833   0.001980996   0.000002135
                         0.013142615   0.000424223   0.007458847   0.393099230  -0.002059814  -0.172972133  -0.186420145   0.003528753

   12    8.2  0.5  0.5  -0.346444373  -0.017714066  -0.003411714  -0.185486741   0.002951971   0.247953466  -0.056533585   0.001034165
                        -0.006195481   0.000061567  -0.000155093   0.007555151  -0.000025783  -0.001145548  -0.003177607   0.000114153

   13    1.2  0.5 -0.5   0.000000607  -0.000012050   0.000028357  -0.000000535  -0.000010257   0.000000119  -0.000001248  -0.000066752
                        -0.110714813  -0.005566974  -0.003344481  -0.178141046   0.005713347   0.483535123   0.149204931  -0.002848633

   14    2.2  0.5 -0.5  -0.116072176  -0.005855748  -0.003286220  -0.174689407   0.005826487   0.487850793   0.134429932  -0.002555074
                        -0.000206025   0.000023539  -0.000005640   0.000127416  -0.000033664   0.000054902  -0.000175757   0.000046318

   15    3.2  0.5 -0.5  -0.003774242   0.075527365  -0.177734688   0.003334797   0.064292846  -0.000764638   0.007880584   0.418383019
                        -0.003535933   0.063696705  -0.051415163   0.001138902   0.092386821  -0.001065133   0.005095492   0.261347784

   16    4.2  0.5 -0.5  -0.007402179   0.139942309   0.001432756   0.000169885  -0.300655361   0.003622306   0.003475289   0.181020007
                         0.007801815  -0.155803867   0.007612470  -0.000132089   0.217349707  -0.002571375  -0.005516659  -0.292656808

   17    5.2  0.5 -0.5  -0.174356736  -0.009023325   0.002242244   0.116122804   0.001611491   0.134427198  -0.487758895   0.009242103
                        -0.006729367  -0.000021529  -0.000146487   0.004185748   0.000002888   0.001790704  -0.005802763   0.000028602

   18    6.2  0.5 -0.5   0.012627622  -0.000007950   0.000192094  -0.007851480   0.000041112  -0.000900960   0.002918220  -0.000001257
                        -0.333434423  -0.017291193   0.003998195   0.207694061   0.000951036   0.074995797  -0.242990510   0.004608301

   19    7.2  0.5 -0.5  -0.000451941   0.015944575   0.114501195  -0.002371440  -0.142195843   0.001698345  -0.001901720  -0.098701390
                         0.000155821  -0.002981702  -0.376060351   0.007073775   0.098525106  -0.001166257   0.002972468   0.158159509

   20    8.2  0.5 -0.5   0.012801488  -0.255462132  -0.174895421   0.003304140   0.143493558  -0.001698468  -0.000932934  -0.049350700
                         0.012243931  -0.234096533  -0.062241489   0.000864007   0.202217291  -0.002414540  -0.000460612  -0.027760617


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000461  -0.000000233  -0.000000068  -0.000001352   0.000000168   0.000001621   0.000001786   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000000251  -0.000000496  -0.000003187   0.000000161  -0.000001611   0.000000167   0.000000000   0.000001596
                         0.000000262  -0.000000516  -0.000001453   0.000000075  -0.000000308   0.000000032   0.000000001   0.000000181

    3    1.2  1.5 -0.5   0.000000716   0.000000363   0.000000178   0.000003502   0.000000170   0.000001640   0.000001606  -0.000000000
                         0.000000000  -0.000000001  -0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000029   0.000000001

    4    1.2  1.5 -1.5  -0.000000161   0.000000319   0.000001230  -0.000000062  -0.000001592   0.000000165   0.000000000   0.000001778
                        -0.000000168   0.000000332   0.000000561  -0.000000028  -0.000000304   0.000000031   0.000000000   0.000000169

    5    1.2  0.5  0.5   0.213253956  -0.419086131   0.166331421  -0.008715754  -0.021609874   0.002210445  -0.000000001   0.000000377
                        -0.203966183   0.403286142  -0.364929698   0.018452902   0.113060544  -0.011702953  -0.000000000  -0.000003830

    6    2.2  0.5  0.5  -0.232771268   0.460239751   0.162841279  -0.008234445  -0.115243887   0.011929062   0.000000000   0.000003018
                        -0.243183505   0.478366588   0.074230942  -0.003717756  -0.022032413   0.002206891  -0.000000002   0.000000286

    7    3.2  0.5  0.5  -0.048313616  -0.024453886  -0.020004809  -0.394022780   0.068369400   0.660864189  -0.000000259  -0.000000000
                        -0.000005505   0.000014988   0.000176086  -0.000011192   0.000192098  -0.000020336  -0.000000023   0.000000001

    8    4.2  0.5  0.5  -0.000025410   0.000058569   0.000238684  -0.000016088  -0.000080744   0.000008607   0.000000036  -0.000000000
                         0.113225224   0.057339460   0.037908838   0.747530223   0.015818123   0.152968220   0.000003551  -0.000000000

    9    5.2  0.5  0.5  -0.012633245   0.024978686   0.273750126  -0.013842382   0.696096247  -0.072053307   0.000000000   0.000002576
                        -0.013173628   0.025975013   0.124780210  -0.006400522   0.133065856  -0.013459450   0.000000001   0.000000293

   10    6.2  0.5  0.5  -0.000000138   0.000000271   0.000001087  -0.000000056   0.000000330  -0.000000033   0.000154068  -0.064938769
                         0.000000132  -0.000000261  -0.000002385   0.000000121  -0.000001727   0.000000179   0.000070743   0.573689545

   11    7.2  0.5  0.5  -0.000000004  -0.000000001  -0.000000000  -0.000000008  -0.000000001  -0.000000016  -0.005075217  -0.000412178
                         0.000000913   0.000000463   0.000000080   0.000001586  -0.000000110  -0.000001060  -0.577329834   0.000025898

   12    8.2  0.5  0.5   0.000000411   0.000000208   0.000000042   0.000000846   0.000000172   0.000001663  -0.577322946   0.000039854
                         0.000000008   0.000000004   0.000000002   0.000000015  -0.000000000  -0.000000010   0.005075087   0.000158927

   13    1.2  0.5 -0.5   0.000347186  -0.000723016   0.000276772  -0.000016702   0.000025677  -0.000002487  -0.000000013  -0.000000001
                        -0.581612223  -0.295091394   0.020405816   0.401048408  -0.011909849  -0.115107225  -0.000003848   0.000000000

   14    2.2  0.5 -0.5   0.663818584   0.336630654   0.009034752   0.178962329  -0.012131272  -0.117331073  -0.000003032   0.000000000
                         0.000330030  -0.000695401   0.000032610  -0.000001159  -0.000071612   0.000007667  -0.000000001   0.000000002

   15    3.2  0.5 -0.5  -0.016934836   0.033483523   0.358534638  -0.018129779  -0.649112459   0.067190085   0.000000000  -0.000000260
                        -0.017640978   0.034828999   0.163422349  -0.008457807  -0.124074544   0.012645325   0.000000001  -0.000000002

   16    4.2  0.5 -0.5   0.041380790  -0.081614723  -0.310045500   0.015940989  -0.028722987   0.002890001   0.000000000   0.000000371
                        -0.039691905   0.078479226   0.680200870  -0.034395084   0.150247351  -0.015552087  -0.000000000  -0.000003531

   17    5.2  0.5 -0.5   0.036036592   0.018252204   0.015250293   0.300847523   0.073298994   0.708700576  -0.000002592   0.000000000
                         0.000009232  -0.000020610  -0.000082441   0.000005655   0.000305349  -0.000032219   0.000000048  -0.000000001

   18    6.2  0.5 -0.5  -0.000000000   0.000000001   0.000000001   0.000000000  -0.000000001   0.000000000   0.010401409   0.000160067
                         0.000000377   0.000000191   0.000000133   0.000002622   0.000000182   0.000001758   0.577259516  -0.000055858

   19    7.2  0.5 -0.5   0.000000333  -0.000000655  -0.000000650   0.000000033   0.000000214  -0.000000021   0.000407883  -0.059643091
                        -0.000000322   0.000000635   0.000001446  -0.000000073  -0.000001038   0.000000107   0.000064757   0.574263178

   20    8.2  0.5 -0.5   0.000000147  -0.000000291  -0.000000776   0.000000039  -0.000001632   0.000000169  -0.000054703  -0.574256332
                         0.000000147  -0.000000291  -0.000000338   0.000000016  -0.000000322   0.000000033   0.000154447  -0.059642311


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5   0.011289093  -0.125668585   0.247509482  -0.050011180
                         0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.243266555   0.021867969   0.024963681   0.123510178
                        -0.063842760  -0.005390931   0.001453439   0.006328261

    3    1.2  1.5 -0.5  -0.022503665   0.251418686   0.123630489  -0.024992396
                         0.000924822  -0.006569559  -0.003211377   0.000823404

    4    1.2  1.5 -1.5  -0.120677612  -0.010840742   0.049995273   0.247430759
                         0.035064331   0.003149908   0.001261259   0.006242078

    5    1.2  0.5  0.5   0.039257676   0.003476091   0.001414905   0.006987134
                         0.135093896   0.012136819  -0.055967076  -0.276988295

    6    2.2  0.5  0.5  -0.126746344  -0.011386451   0.056791371   0.281066573
                         0.037063213   0.003312883   0.001418921   0.007208483

    7    3.2  0.5  0.5  -0.028129670   0.314089065  -0.018681402   0.003764331
                         0.000918157  -0.006367171  -0.003122318   0.000754087

    8    4.2  0.5  0.5  -0.000856531   0.006372673   0.003128319  -0.000724293
                        -0.015507989   0.173404713   0.258395984  -0.052219639

    9    5.2  0.5  0.5   0.276314454   0.024837081   0.026229679   0.129774840
                        -0.072627974  -0.006177515   0.001526705   0.006879874

   10    6.2  0.5  0.5   0.151229653   0.012787452  -0.003155911  -0.015048222
                         0.576252875   0.051785750   0.059139143   0.292565623

   11    7.2  0.5  0.5  -0.001059254   0.007412210  -0.002232101   0.000244053
                        -0.049805927   0.555634590  -0.361268030   0.072988657

   12    8.2  0.5  0.5  -0.003570790   0.040043923   0.654195506  -0.132194331
                         0.000383021  -0.002677605  -0.007162966   0.001520342

   13    1.2  0.5 -0.5  -0.000048405  -0.000004341   0.000000608   0.000002991
                        -0.012624707   0.140682358  -0.277076407   0.055984959

   14    2.2  0.5 -0.5  -0.011858602   0.132054028  -0.281158971   0.056809093
                        -0.000004238   0.000226184   0.000117818   0.000013783

   15    3.2  0.5 -0.5   0.303391487   0.027268676  -0.003782152  -0.018754203
                        -0.081523540  -0.006967112   0.000658913   0.002650188

   16    4.2  0.5 -0.5  -0.042264193  -0.003504560   0.002041018   0.009643954
                        -0.168296000  -0.015131075  -0.052184763  -0.258234903

   17    5.2  0.5 -0.5   0.025574331  -0.285605346  -0.129907071   0.026259839
                        -0.000997925   0.007354352   0.003604823  -0.000864719

   18    6.2  0.5 -0.5  -0.002169782   0.015563859   0.007665062  -0.001663444
                        -0.053297044   0.595563221   0.292852078  -0.059199924

   19    7.2  0.5 -0.5  -0.147916580  -0.012879776  -0.002084716  -0.011342408
                        -0.535635533  -0.048123422   0.072959287   0.361096831

   20    8.2  0.5 -0.5   0.039200676   0.003535846   0.132113942   0.653806784
                        -0.008601882  -0.000628521   0.004853740   0.023659204


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  18.307%   0.046%   0.017%  47.394%   0.003%  23.980%   2.283%   0.001%   0.000%   0.000%
    2    1.2  1.5  0.5   0.125%  47.285%  18.346%   0.007%   2.284%   0.000%   0.009%  23.975%   0.000%   0.000%
    3    1.2  1.5 -0.5  47.285%   0.125%   0.007%  18.346%   0.000%   2.284%  23.975%   0.009%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.046%  18.307%  47.394%   0.017%  23.980%   0.003%   0.001%   2.283%   0.000%   0.000%
    5    1.2  0.5  0.5   0.003%   1.226%   3.173%   0.001%  23.381%   0.003%   0.001%   2.226%   8.708%  33.827%
    6    2.2  0.5  0.5   0.003%   1.347%   3.052%   0.001%  23.800%   0.003%   0.001%   1.807%  11.332%  44.066%
    7    3.2  0.5  0.5   0.976%   0.003%   0.001%   3.423%   0.000%   1.267%  24.335%   0.009%   0.233%   0.060%
    8    4.2  0.5  0.5   4.386%   0.012%   0.000%   0.006%   0.002%  13.763%  11.842%   0.004%   1.282%   0.329%
    9    5.2  0.5  0.5   0.008%   3.045%   1.350%   0.001%   1.807%   0.000%   0.009%  23.794%   0.033%   0.130%
   10    6.2  0.5  0.5   0.030%  11.134%   4.320%   0.002%   0.563%   0.000%   0.002%   5.905%   0.000%   0.000%
   11    7.2  0.5  0.5   0.026%   0.000%   0.006%  15.453%   0.000%   2.993%   3.476%   0.001%   0.000%   0.000%
   12    8.2  0.5  0.5  12.006%   0.031%   0.001%   3.446%   0.001%   6.148%   0.321%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   1.226%   0.003%   0.001%   3.173%   0.003%  23.381%   2.226%   0.001%  33.827%   8.708%
   14    2.2  0.5 -0.5   1.347%   0.003%   0.001%   3.052%   0.003%  23.800%   1.807%   0.001%  44.066%  11.332%
   15    3.2  0.5 -0.5   0.003%   0.976%   3.423%   0.001%   1.267%   0.000%   0.009%  24.335%   0.060%   0.233%
   16    4.2  0.5 -0.5   0.012%   4.386%   0.006%   0.000%  13.763%   0.002%   0.004%  11.842%   0.329%   1.282%
   17    5.2  0.5 -0.5   3.045%   0.008%   0.001%   1.350%   0.000%   1.807%  23.794%   0.009%   0.130%   0.033%
   18    6.2  0.5 -0.5  11.134%   0.030%   0.002%   4.320%   0.000%   0.563%   5.905%   0.002%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.026%  15.453%   0.006%   2.993%   0.000%   0.001%   3.476%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.031%  12.006%   3.446%   0.001%   6.148%   0.001%   0.000%   0.321%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   1.579%   6.126%   0.250%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.325%   0.051%   0.063%   1.529%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.051%   6.325%   1.529%   0.063%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.579%   0.013%   0.250%   6.126%
    5    1.2  0.5  0.5  16.084%   0.042%   1.325%   0.014%   0.000%   0.000%   1.979%   0.016%   0.313%   7.677%
    6    2.2  0.5  0.5   3.203%   0.008%   1.377%   0.015%   0.000%   0.000%   1.744%   0.014%   0.323%   7.905%
    7    3.2  0.5  0.5   0.040%  15.525%   0.467%  43.674%   0.000%   0.000%   0.079%   9.869%   0.036%   0.001%
    8    4.2  0.5  0.5   0.144%  55.880%   0.025%   2.340%   0.000%   0.000%   0.024%   3.011%   6.678%   0.273%
    9    5.2  0.5  0.5   9.051%   0.023%  50.226%   0.537%   0.000%   0.000%   8.162%   0.066%   0.069%   1.689%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.334%  35.494%   0.285%   0.351%   8.582%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.334%   0.000%   0.248%  30.878%  13.052%   0.533%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.333%   0.000%   0.001%   0.161%  42.802%   1.748%
   13    1.2  0.5 -0.5   0.042%  16.084%   0.014%   1.325%   0.000%   0.000%   0.016%   1.979%   7.677%   0.313%
   14    2.2  0.5 -0.5   0.008%   3.203%   0.015%   1.377%   0.000%   0.000%   0.014%   1.744%   7.905%   0.323%
   15    3.2  0.5 -0.5  15.525%   0.040%  43.674%   0.467%   0.000%   0.000%   9.869%   0.079%   0.001%   0.036%
   16    4.2  0.5 -0.5  55.880%   0.144%   2.340%   0.025%   0.000%   0.000%   3.011%   0.024%   0.273%   6.678%
   17    5.2  0.5 -0.5   0.023%   9.051%   0.537%  50.226%   0.000%   0.000%   0.066%   8.162%   1.689%   0.069%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.334%   0.000%   0.285%  35.494%   8.582%   0.351%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.334%  30.878%   0.248%   0.533%  13.052%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  33.333%   0.161%   0.001%   1.748%  42.802%


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

              2       6      676.92       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *      6231.30   5612.22    592.83     21.34      2.58      2.11
 REAL TIME  *      6384.48 SEC
 DISK USED  *       729.38 MB (local),       20.19 GB (total)
 SF USED    *         6.45 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -214.310130882608

              CI              CI           MULTI
   -214.27792414   -214.35733196   -213.50135133
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
