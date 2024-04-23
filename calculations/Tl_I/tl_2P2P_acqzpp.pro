
 Working directory              : /wrk/irikura/molpro.fJqOmJqSgx/
 Global scratch directory       : /wrk/irikura/molpro.fJqOmJqSgx/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.fJqOmJqSgx/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Tl SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Tl};
 
 basis=aug-cc-pwCVQZ-PP
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=20,sym=1,spin=0}
 
 {multi
     closed,6,3
     occ,8,9
     wf,nelec=21,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Tl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 15-Apr-24          TIME: 18:04:50  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Tl   ECP ECP60MDF                 selected for group  1
 Library entry TL     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TL     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TL     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TL     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TL     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TL     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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

   1  TL     21.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   21
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

         1 0.385E-04 0.874E-03 0.874E-03 0.874E-03 0.874E-03 0.874E-03 0.107E-02 0.509E-02
         2 0.467E-03 0.467E-03 0.467E-03 0.437E-02 0.437E-02 0.437E-02 0.153E-01 0.153E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     112.722 MB (compressed) written to integral file ( 15.3%)

     Node minimum: 11.534 MB, node maximum: 24.379 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    8701245.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    8701245      RECORD LENGTH: 524288

 Memory used in sort:       9.26 MW

 SORT1 READ    92659037. AND WROTE     1541321. INTEGRALS IN      5 RECORDS. CPU TIME:     0.33 SEC, REAL TIME:     0.36 SEC
 SORT2 READ     9613375. AND WROTE    52200630. INTEGRALS IN    468 RECORDS. CPU TIME:     0.18 SEC, REAL TIME:     0.20 SEC

 Node minimum:     8698837.  Node maximum:     8701374. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.20      2.01
 REAL TIME  *         3.10 SEC
 DISK USED  *        29.74 MB (local),      387.72 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   3

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -171.32591606    -171.32591606     0.00D+00     0.73D-01     0     0       0.04      0.08    start
   2     -171.33073741      -0.00482135     0.18D-02     0.32D-02     1     0       0.04      0.12    diag
   3     -171.33120351      -0.00046610     0.10D-02     0.71D-03     2     0       0.04      0.16    diag
   4     -171.33126497      -0.00006147     0.16D-03     0.43D-03     3     0       0.03      0.19    diag
   5     -171.33126752      -0.00000255     0.37D-04     0.87D-04     4     0       0.04      0.23    diag
   6     -171.33126754      -0.00000002     0.33D-05     0.65D-05     5     0       0.04      0.27    diag
   7     -171.33126754      -0.00000000     0.14D-06     0.87D-06     6     0       0.03      0.30    diag
   8     -171.33126754      -0.00000000     0.98D-08     0.56D-07     0     0       0.04      0.34    fixocc

 Final occupancy:   7   3

 !RHF STATE 1.1 Energy               -171.331267537416
  RHF One-electron energy            -295.976562780591
  RHF Two-electron energy             124.645295243175
  RHF Kinetic energy                   56.458767767825
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.034626406336

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.91020     1  1  s    0.99980
    2.1     2.00000    -1.10793     1  1  d1+  0.82531    1  1  d2+ -0.55444
    3.1     2.00000    -1.10793     1  1  d0   1.00263
    4.1     2.00000    -1.10793     1  1  d2-  0.29540    1  1  d1-  0.94529
    5.1     2.00000    -1.10793     1  1  d2-  0.51284    1  1  d1+  0.48996    1  1  d2+  0.70396
    6.1     2.00000    -1.10793     1  1  d2-  0.80798    1  1  d1+ -0.28428    1  1  d2+ -0.42560    1  1  d1- -0.30082
    7.1     2.00000    -0.68791     1  1  s   -0.36065    1  4  s    0.60205    1  5  s    0.62034    1  9  s   -0.28589
    1.2     2.00000    -3.73507     1  1  py  -0.70514    1  1  pz   0.70834
    2.2     2.00000    -3.73507     1  1  px   0.99949
    3.2     2.00000    -3.73507     1  1  py   0.70834    1  1  pz   0.70514


 HOMO      7.1    -0.687913 =     -18.7191eV
 LUMO      4.2    -0.176434 =      -4.8010eV
 LUMO-HOMO         0.511479 =      13.9181eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.62       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.54      0.35      2.01
 REAL TIME  *         3.47 SEC
 DISK USED  *        30.92 MB (local),      394.80 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     152 (   78   74)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.467D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.212D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.345D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.606D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.556D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 6 5 3 1 1 3 5   6 4 2 1 2 5 3 6 4 2   3 5 4 6 1 7 9111415  1310 812 2 3 5 6 411
                                        91514 7131012 8 1 2   3 5 6 41415 9111310   812 7 11415131011 9   812 7 2 6 4 3 5 2 3
                                        6 4 5 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.499D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.499D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.424D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.424D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.746D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.746D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 1 2 3   1 2 9 7 810 6 4 5 3   1 2 9 7 4 5 810 6 1   2 3 4 5 7 910 8 6 9
                                        7 810 4 5 6 1 2 316  14211311122018151719   7 9 810 5 4 6 3 2 1   9 7 810 5 4 6 2 1 3
                                        3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  1320  ( 30 closed/active, 690 closed/virtual, 0 active/active, 600 active/virtual )
 Total number of variables:    2040
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    6    0   -171.46233793    -171.46735377   -0.00501584    0.04711281 0.00013938 0.00000000  0.85E+00      0.71
   2    8    7    0   -171.46729664    -171.46729944   -0.00000279    0.00151820 0.00000139 0.00000000  0.26E-01      1.48
   3    5    5    0   -171.46729944    -171.46729944   -0.00000000    0.00000032 0.00000000 0.00000000  0.11E-04      2.08

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.19E-08)
                       Final energy:   -171.46729944
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -171.524539567296
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67545719
 One electron energy                          -301.62774826
 Two electron energy                           130.10320869
 Virial ratio                                    4.02643416
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -171.524539566953
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67545719
 One electron energy                          -301.62774827
 Two electron energy                           130.10320870
 Virial ratio                                    4.02643416
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -171.524539566652
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67545719
 One electron energy                          -301.62774828
 Two electron energy                           130.10320872
 Virial ratio                                    4.02643416
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -171.410059304893
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.46368172
 One electron energy                          -298.10880697
 Two electron energy                           126.69874767
 Virial ratio                                    4.03575775
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -171.410059304884
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.46368172
 One electron energy                          -298.10880697
 Two electron energy                           126.69874767
 Virial ratio                                    4.03575775
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -171.410059304883
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.46368172
 One electron energy                          -298.10880697
 Two electron energy                           126.69874767
 Virial ratio                                    4.03575775
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999999998
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000000005
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999999997
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999999554
 !MCSCF expec                      <5.2|LXLX|5.2>     0.999999557501
 !MCSCF expec                      <6.2|LXLX|6.2>     0.000001147662
 
 !MCSCF expec                      <1.2|LYLY|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999999999996
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000000003
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999999999914
 !MCSCF expec                      <5.2|LYLY|5.2>     0.000000442569
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999998876866
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000000002
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999999998
 !MCSCF expec                      <3.2|LZLZ|3.2>     1.000000000000
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.000000000532
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999999999930
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999975472
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 3 5 6 1 1 1 4   5 3 2 6 4 5 3 2 6 1   4 2 5 3 6 913101415   812 711 4 2 3 5 6 9
                                       1415 71310 81211 1 4   2 3 5 6 9 7 8121415  131011 1 9 7 8121415  131011 4 2 5 3 6 4 2
                                        3 5 6 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 2 3 1 1   3 2 4 7 9 810 6 5 1   3 2 4 7 9 810 6 5 1   3 2 4 7 9 810 6 5 4
                                        6 810 7 9 5 1 3 211  19211314161517201812   4 6 810 7 9 5 1 3 2   4 6 810 7 9 5 1 3 2
                                        1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.71926     1  1  s    0.99855
    2.1     2.00000    -0.91704     1  1  d1+  1.00109
    3.1     2.00000    -0.91704     1  1  d0   1.00109
    4.1     2.00000    -0.91704     1  1  d2-  1.00109
    5.1     2.00000    -0.91704     1  1  d2+  1.00109
    6.1     2.00000    -0.91704     1  1  d1-  1.00109
    7.1     1.95119    -0.50473     1  1  s   -0.35167    1  4  s    0.53440    1  5  s    0.61572    1  9  s   -0.27636
    8.1     0.00369     0.29992     1  1  s    0.36194    1  4  s   -2.07226    1  5  s    0.86106    1  6  s    0.85720
                                    1  9  s    0.54629
    1.2     2.00000    -3.54430     1  1  px   0.99990
    2.2     2.00000    -3.54430     1  1  pz   0.99990
    3.2     2.00000    -3.54430     1  1  py   0.99990
    4.2     0.18174    -0.01849     1  1  py  -0.29144    1  4  py   0.53572    1  5  py   0.44293
    5.2     0.18174    -0.01849     1  1  pz  -0.29144    1  4  pz   0.53572    1  5  pz   0.44293
    6.2     0.18174    -0.01849     1  1  px  -0.29144    1  4  px   0.53572    1  5  px   0.44293
    7.2     0.16663     0.01226     1  5  py  -0.25992    1  6  py   0.36545    1 10  py   0.83040
    8.2     0.16663     0.01226     1  5  pz  -0.25992    1  6  pz   0.36545    1 10  pz   0.83040
    9.2     0.16663     0.01226     1  5  px  -0.25992    1  6  px   0.36545    1 10  px   0.83040
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 00a000     -0.00000122      0.95254834     -0.00000181      0.00000553     -0.00017413     -0.26176293
 20 0a0000      0.95254781      0.00000122     -0.00000040     -0.26176492     -0.00000243     -0.00000553
 20 a00000      0.00000040      0.00000181      0.95254733      0.00000243     -0.26176661      0.00017413
 20 00000a     -0.00000034      0.26155342     -0.00000050     -0.00002009      0.00063267      0.95108965
 20 0000a0      0.26155535      0.00000034     -0.00000011      0.95108933      0.00000885      0.00002008
 20 000a00      0.00000011      0.00000050      0.26155710     -0.00000883      0.95108864     -0.00063267
 00 02a000      0.00000013     -0.09817588      0.00000019     -0.00000060      0.00001888      0.02838828
 00 20a000      0.00000013     -0.09817588      0.00000019     -0.00000060      0.00001888      0.02838828
 00 0a2000     -0.09817583     -0.00000013      0.00000004      0.02838846      0.00000026      0.00000060
 00 2a0000     -0.09817583     -0.00000013      0.00000004      0.02838846      0.00000026      0.00000060
 00 a02000     -0.00000004     -0.00000019     -0.09817578     -0.00000026      0.02838861     -0.00001888
 00 a20000     -0.00000004     -0.00000019     -0.09817578     -0.00000026      0.02838861     -0.00001888
 00 20000a      0.00000003     -0.02401298      0.00000005      0.00000184     -0.00005784     -0.08694440
 00 02000a      0.00000003     -0.02401298      0.00000005      0.00000184     -0.00005784     -0.08694439
 00 2000a0     -0.02401318     -0.00000003      0.00000001     -0.08694436     -0.00000081     -0.00000184
 00 0020a0     -0.02401318     -0.00000003      0.00000001     -0.08694435     -0.00000081     -0.00000184
 00 020a00     -0.00000001     -0.00000005     -0.02401336      0.00000081     -0.08694428      0.00005784
 00 002a00     -0.00000001     -0.00000005     -0.02401336      0.00000081     -0.08694428      0.00005784
 00 0200a0     -0.02332962     -0.00000003      0.00000001     -0.08604131     -0.00000080     -0.00000182
 00 200a00     -0.00000001     -0.00000004     -0.02332962      0.00000080     -0.08604129      0.00005724
 00 00200a      0.00000003     -0.02332962      0.00000004      0.00000182     -0.00005724     -0.08604129
 
 Energy:     -171.52453957   -171.52453957   -171.52453957   -171.41005930   -171.41005930   -171.41005930
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       55.14       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.27       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.57      2.02      0.35      2.01
 REAL TIME  *         6.01 SEC
 DISK USED  *        56.52 MB (local),      548.40 MB (total)
 SF USED    *        69.18 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -171.5245396   2.0
    -171.5245396   2.0
    -171.5245396   2.0
    -171.4100593   2.0
    -171.4100593   2.0
    -171.4100593   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 21
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     152 (  78  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -171.52453957
     2      -171.52453957
     3      -171.52453957
     4      -171.41005930
     5      -171.41005930
     6      -171.41005930

 Number of blocks in overlap matrix:   564   Smallest eigenvalue:  0.90D-06
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       5887682
 Number of doubly external configurations:       7685904
 Total number of contracted configurations:     13626858
 Total number of uncontracted configurations:  144403386

 Diagonal Coupling coefficients finished.               Storage:  22137756 words, CPU-Time:     42.10 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1916547 words, CPU-time:      0.34 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -171.52453957     0.00000000    -0.86933424  0.53D-01  0.11D+00    59.73
    1     2     2     1.00000000     0.00000000  -171.52453957     0.00000000    -0.86933009  0.53D-01  0.11D+00    59.73
    1     3     3     1.00000000     0.00000000  -171.52453957     0.00000000    -0.86935623  0.54D-01  0.11D+00    59.73
    1     4     4     1.00000000     0.00000000  -171.41005930     0.00000000    -0.84540512  0.42D-01  0.11D+00    59.73
    1     5     5     1.00000000     0.00000000  -171.41005930     0.00000000    -0.84540928  0.42D-01  0.11D+00    59.73
    1     6     6     1.00000000     0.00000000  -171.41005930     0.00000000    -0.84540768  0.42D-01  0.11D+00    59.73
    2     1     1     1.10217729    -0.68576322  -172.21030279    -0.68576322    -0.02291029  0.34D-02  0.18D-02   884.32
    2     2     2     1.10219462    -0.68575652  -172.21029609    -0.68575652    -0.02291476  0.34D-02  0.17D-02   884.32
    2     3     3     1.10220184    -0.68574048  -172.21028005    -0.68574048    -0.02293487  0.34D-02  0.18D-02   884.32
    2     4     4     1.09332999    -0.67654711  -172.08660642    -0.67654711    -0.02066285  0.25D-02  0.15D-02   884.32
    2     5     5     1.09333373    -0.67654475  -172.08660405    -0.67654475    -0.02066539  0.25D-02  0.15D-02   884.32
    2     6     6     1.09333441    -0.67654361  -172.08660292    -0.67654361    -0.02066695  0.25D-02  0.15D-02   884.32
    3     1     1     1.09065758    -0.70696867  -172.23150824    -0.02120545    -0.00033919  0.51D-04  0.32D-04  1707.02
    3     2     2     1.09065650    -0.70696866  -172.23150823    -0.02121214    -0.00033906  0.50D-04  0.32D-04  1707.02
    3     3     3     1.09065672    -0.70696819  -172.23150776    -0.02122771    -0.00033955  0.51D-04  0.32D-04  1707.02
    3     4     4     1.08465389    -0.69559989  -172.10565920    -0.01905278    -0.00025636  0.26D-04  0.22D-04  1707.02
    3     5     5     1.08465386    -0.69559981  -172.10565912    -0.01905507    -0.00025643  0.26D-04  0.22D-04  1707.02
    3     6     6     1.08465387    -0.69559977  -172.10565908    -0.01905616    -0.00025647  0.26D-04  0.22D-04  1707.02
    4     1     1     1.09047154    -0.70730924  -172.23184881    -0.00034058    -0.00001382  0.37D-05  0.12D-05  2527.11
    4     2     2     1.09047154    -0.70730923  -172.23184880    -0.00034057    -0.00001383  0.37D-05  0.12D-05  2527.11
    4     3     3     1.09047148    -0.70730921  -172.23184878    -0.00034103    -0.00001385  0.37D-05  0.12D-05  2527.11
    4     4     4     1.08487322    -0.69584969  -172.10590899    -0.00024980    -0.00000803  0.19D-05  0.61D-06  2527.11
    4     5     5     1.08487322    -0.69584969  -172.10590899    -0.00024987    -0.00000803  0.19D-05  0.61D-06  2527.11
    4     6     6     1.08487322    -0.69584969  -172.10590899    -0.00024991    -0.00000803  0.19D-05  0.61D-06  2527.11
    5     1     1     1.09045129    -0.70732477  -172.23186433    -0.00001552    -0.00000058  0.85D-07  0.64D-07  3346.26
    5     2     2     1.09045129    -0.70732477  -172.23186433    -0.00001553    -0.00000058  0.85D-07  0.64D-07  3346.26
    5     3     3     1.09045147    -0.70732476  -172.23186433    -0.00001555    -0.00000059  0.86D-07  0.64D-07  3346.26
    5     4     4     1.08492543    -0.69585842  -172.10591772    -0.00000873    -0.00000032  0.52D-07  0.34D-07  3346.26
    5     5     5     1.08492543    -0.69585842  -172.10591772    -0.00000873    -0.00000032  0.52D-07  0.34D-07  3346.26
    5     6     6     1.08492544    -0.69585842  -172.10591772    -0.00000873    -0.00000032  0.52D-07  0.34D-07  3346.26
    6     1     1     1.09044487    -0.70732539  -172.23186496    -0.00000063    -0.00000002  0.35D-08  0.28D-08  4166.08
    6     2     2     1.09044488    -0.70732539  -172.23186496    -0.00000063    -0.00000002  0.35D-08  0.28D-08  4166.08
    6     3     3     1.09044488    -0.70732539  -172.23186496    -0.00000063    -0.00000002  0.35D-08  0.28D-08  4166.08
    6     4     4     1.08493233    -0.69585877  -172.10591807    -0.00000035    -0.00000001  0.24D-08  0.15D-08  4166.08
    6     5     5     1.08493233    -0.69585877  -172.10591807    -0.00000035    -0.00000001  0.24D-08  0.15D-08  4166.08
    6     6     6     1.08493234    -0.69585877  -172.10591807    -0.00000035    -0.00000001  0.24D-08  0.15D-08  4166.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.3%
 S   0.4%  61.9%
 P   0.2%  21.7%   9.7%

 Initialization:   1.0%
 Other:            3.8%

 Total CPU:     4166.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222022200/000           0.0035086  -0.0000427   0.9228770  -0.2174468   0.0000003   0.0010060
 22222220222/00000           0.0113466   0.9228130  -0.0000004   0.0000141  -0.2174302   0.0031308
 222222202220/0000           0.9228068  -0.0113466  -0.0035088  -0.0010059  -0.0031308  -0.2174261
 2222222022200000/           0.0008264  -0.0000101   0.2173702   0.9217683  -0.0000015  -0.0042645
 22222220222000/00           0.0026726   0.2173589  -0.0000001  -0.0000599   0.9216817  -0.0132714
 222222202220000/0           0.2173556  -0.0026725  -0.0008265   0.0042641   0.0132716   0.9216723
 2222220022202/000          -0.0003133   0.0000038  -0.0824191   0.0206925  -0.0000000  -0.0000957
 2222220022220/000          -0.0003133   0.0000038  -0.0824190   0.0206924  -0.0000000  -0.0000957
 22222200222/20000          -0.0010133  -0.0824134   0.0000000  -0.0000013   0.0206908  -0.0002979
 22222200222/02000          -0.0010133  -0.0824133   0.0000000  -0.0000013   0.0206908  -0.0002979
 222222002222/0000          -0.0824127   0.0010133   0.0003134   0.0000957   0.0002979   0.0206904
 222222002220/2000          -0.0824127   0.0010133   0.0003134   0.0000957   0.0002979   0.0206904
 2222220022202000/          -0.0000658   0.0000008  -0.0173026  -0.0731157   0.0000001   0.0003383
 2222220022220000/          -0.0000658   0.0000008  -0.0173027  -0.0731156   0.0000001   0.0003383
 22222200222020/00          -0.0002127  -0.0173018   0.0000000   0.0000048  -0.0731088   0.0010527
 22222200222002/00          -0.0002127  -0.0173018   0.0000000   0.0000048  -0.0731087   0.0010527
 222222002222000/0          -0.0173015   0.0002127   0.0000658  -0.0003382  -0.0010527  -0.0731079
 222222002220020/0          -0.0173015   0.0002127   0.0000658  -0.0003382  -0.0010527  -0.0731079
 2222220022200200/          -0.0000631   0.0000008  -0.0165929  -0.0722392   0.0000001   0.0003342
 22222200222200/00          -0.0002040  -0.0165918   0.0000000   0.0000047  -0.0722325   0.0010401
 222222002220200/0          -0.0165916   0.0002040   0.0000631  -0.0003342  -0.0010401  -0.0722318
 222222/\22200000/          -0.0000647   0.0000008  -0.0170178  -0.0693204   0.0000001   0.0003207
 222222/\222000/00          -0.0002092  -0.0170166   0.0000000   0.0000045  -0.0693140   0.0009981
 222222/\2220000/0          -0.0170164   0.0002092   0.0000647  -0.0003207  -0.0009981  -0.0693132

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955217    0.003632    0.011745   -0.034470   -0.000424   -0.000131
 2          -0.011745   -0.000044    0.955224    0.000424   -0.034470    0.000002
 3          -0.003632    0.955289   -0.000000    0.000131    0.000000   -0.034473
 4           0.000166    0.035833   -0.000002    0.004429   -0.000062    0.957317
 5           0.000516   -0.000000    0.035830    0.013783    0.957228   -0.000002
 6           0.035830   -0.000166   -0.000516    0.957218   -0.013783   -0.004429

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955918   -0.000000   -0.000000    0.000005    0.000017    0.000642
 2          -0.000000    0.955918   -0.000000   -0.000000    0.000642   -0.000017
 3          -0.000000   -0.000000    0.955918    0.000643   -0.000000   -0.000005
 4           0.000005   -0.000000    0.000643    0.957997   -0.000000    0.000000
 5           0.000017    0.000642   -0.000000   -0.000000    0.957997   -0.000000
 6           0.000642   -0.000017   -0.000005    0.000000   -0.000000    0.957997


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95521699 (fixed)   0.95651014 (relaxed)   0.95591768 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00358763   -0.00487882   -0.58321042
 Singles      0.01988418   -0.07172603   -0.07840084
 Pairs        0.07088517    0.00010341   -0.04571413
 Total        1.09435698   -0.07650144   -0.70732539
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52438508
 Nuclear energy                         0.00000000
 Kinetic energy                        57.02046998
 One electron energy                 -301.13402584
 Two electron energy                  128.90216088
 Virial quotient                       -3.02052693
 Correlation energy                    -0.70747987
 !MRCI STATE 1.2 Energy              -172.231864959408

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.29862062 (Davidson, fixed reference)
 Cluster corrected energies          -172.29766180 (Davidson, relaxed reference)
 Cluster corrected energies          -172.29862062 (Davidson, rotated reference)

 Cluster corrected energies          -172.29678972 (Pople, fixed reference)
 Cluster corrected energies          -172.29578408 (Pople, relaxed reference)
 Cluster corrected energies          -172.29678972 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95522389 (fixed)   0.95651014 (relaxed)   0.95591768 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00358762   -0.00487882   -0.58311476
 Singles      0.01988419   -0.07172604   -0.07840084
 Pairs        0.07088518   -0.00000126   -0.04580979
 Total        1.09435698   -0.07660612   -0.70732539
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52438508
 Nuclear energy                         0.00000000
 Kinetic energy                        57.02047371
 One electron energy                 -301.13403021
 Two electron energy                  128.90216525
 Virial quotient                       -3.02052673
 Correlation energy                    -0.70747988
 !MRCI STATE 2.2 Energy              -172.231864959216

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.29862063 (Davidson, fixed reference)
 Cluster corrected energies          -172.29766180 (Davidson, relaxed reference)
 Cluster corrected energies          -172.29862063 (Davidson, rotated reference)

 Cluster corrected energies          -172.29678973 (Pople, fixed reference)
 Cluster corrected energies          -172.29578408 (Pople, relaxed reference)
 Cluster corrected energies          -172.29678973 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95528919 (fixed)   0.95651014 (relaxed)   0.95591768 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00358763   -0.00487882   -0.60797045
 Singles      0.01988420   -0.07172607   -0.07840085
 Pairs        0.07088516    0.02719976   -0.02095409
 Total        1.09435699   -0.04940512   -0.70732539
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52438508
 Nuclear energy                         0.00000000
 Kinetic energy                        57.02047325
 One electron energy                 -301.13402983
 Two electron energy                  128.90216487
 Virial quotient                       -3.02052675
 Correlation energy                    -0.70747987
 !MRCI STATE 3.2 Energy              -172.231864958431

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.29862063 (Davidson, fixed reference)
 Cluster corrected energies          -172.29766180 (Davidson, relaxed reference)
 Cluster corrected energies          -172.29862063 (Davidson, rotated reference)

 Cluster corrected energies          -172.29678973 (Pople, fixed reference)
 Cluster corrected energies          -172.29578408 (Pople, relaxed reference)
 Cluster corrected energies          -172.29678973 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95731681 (fixed)   0.95864230 (relaxed)   0.95799725 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00431239   -0.00611499   -0.00875593
 Singles      0.01743358   -0.07022640   -0.07559026
 Pairs        0.06786501   -0.61909262   -0.61151258
 Total        1.08961098   -0.69543401   -0.69585877
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.41021379
 Nuclear energy                         0.00000000
 Kinetic energy                        56.87971892
 One electron energy                 -297.65116249
 Two electron energy                  125.54524442
 Virial quotient                       -3.02578707
 Correlation energy                    -0.69570429
 !MRCI STATE 4.2 Energy              -172.105918074007

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.16826082 (Davidson, fixed reference)
 Cluster corrected energies          -172.16724102 (Davidson, relaxed reference)
 Cluster corrected energies          -172.16826082 (Davidson, rotated reference)

 Cluster corrected energies          -172.16630891 (Pople, fixed reference)
 Cluster corrected energies          -172.16524783 (Pople, relaxed reference)
 Cluster corrected energies          -172.16630891 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.95722783 (fixed)   0.95864230 (relaxed)   0.95799725 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00431239   -0.00611499   -0.57693449
 Singles      0.01743358   -0.07022640   -0.07559026
 Pairs        0.06786501    0.00000098   -0.04333402
 Total        1.08961098   -0.07634041   -0.69585877
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.41021379
 Nuclear energy                         0.00000000
 Kinetic energy                        56.87971904
 One electron energy                 -297.65116267
 Two electron energy                  125.54524459
 Virial quotient                       -3.02578706
 Correlation energy                    -0.69570429
 !MRCI STATE 5.2 Energy              -172.105918073859

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.16826082 (Davidson, fixed reference)
 Cluster corrected energies          -172.16724102 (Davidson, relaxed reference)
 Cluster corrected energies          -172.16826082 (Davidson, rotated reference)

 Cluster corrected energies          -172.16630891 (Pople, fixed reference)
 Cluster corrected energies          -172.16524783 (Pople, relaxed reference)
 Cluster corrected energies          -172.16630891 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95721758 (fixed)   0.95864230 (relaxed)   0.95799725 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00431239   -0.00611499   -0.57956222
 Singles      0.01743358   -0.07022640   -0.07559026
 Pairs        0.06786502    0.00286418   -0.04070629
 Total        1.08961098   -0.07347721   -0.69585877
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.41021379
 Nuclear energy                         0.00000000
 Kinetic energy                        56.87971895
 One electron energy                 -297.65116261
 Two electron energy                  125.54524454
 Virial quotient                       -3.02578707
 Correlation energy                    -0.69570429
 !MRCI STATE 6.2 Energy              -172.105918073545

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.16826082 (Davidson, fixed reference)
 Cluster corrected energies          -172.16724102 (Davidson, relaxed reference)
 Cluster corrected energies          -172.16826082 (Davidson, rotated reference)

 Cluster corrected energies          -172.16630891 (Pople, fixed reference)
 Cluster corrected energies          -172.16524783 (Pople, relaxed reference)
 Cluster corrected energies          -172.16630891 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       55.14       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      635.38       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4406.04   4401.47      2.02      0.35      2.01
 REAL TIME  *      4459.62 SEC
 DISK USED  *       690.62 MB (local),        4.25 GB (total)
 SF USED    *         6.46 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -172.29862062  AU                              
 SETTING HLSDIAG(2)     =      -172.29862063  AU                              
 SETTING HLSDIAG(3)     =      -172.29862063  AU                              
 SETTING HLSDIAG(4)     =      -172.16826082  AU                              
 SETTING HLSDIAG(5)     =      -172.16826082  AU                              
 SETTING HLSDIAG(6)     =      -172.16826082  AU                              


         HLSDIAG
    -172.2986206
    -172.2986206
    -172.2986206
    -172.1682608
    -172.1682608
    -172.1682608
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -172.231865   -172.231865   -172.231865   -172.105918   -172.105918   -172.105918
 Replaced energies:   -172.298621   -172.298621   -172.298621   -172.168261   -172.168261   -172.168261



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -172.29862063

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00   -2539.07     933.35
                            0.00      -9.65      31.22     -11.48       3.55       0.00      -0.00    2539.25       0.12       0.11

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      31.22     -11.48
                            9.65      -0.00    2539.05    -933.37      -0.04       4.32   -2539.25      -0.00       9.65       4.32

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    2539.07     -31.22      -0.00      -7.87
                          -31.22   -2539.05      -0.00      -0.06     933.35     -13.44      -0.12      -9.65       0.00      -0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00   28610.67       0.00       0.00    -933.35      11.48       7.87      -0.00
                           11.48     933.37       0.06      -0.00    -342.54       4.93      -0.11      -4.32       0.00      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   28610.67       0.00       0.05      -0.00      13.44      -4.93
                           -3.55       0.04    -933.35     342.54      -0.00      -1.58     933.11     -24.91      -3.55      -1.58

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   28610.67       7.87      -0.10     933.32    -342.54
                           -0.00      -4.32      13.44      -4.93       1.58       0.00     -24.91    -933.11       0.05       0.00

    7   1.2  0.5 -0.5      -0.00       0.00    2539.07    -933.35       0.05       7.87       0.00       0.00       0.00       0.00
                            0.00    2539.25       0.12       0.11    -933.11      24.91      -0.00       9.65     -31.22      11.48

    8   2.2  0.5 -0.5      -0.00       0.00     -31.22      11.48      -0.00      -0.10       0.00       0.00       0.00       0.00
                        -2539.25       0.00       9.65       4.32      24.91     933.11      -9.65       0.00   -2539.05     933.37

    9   3.2  0.5 -0.5   -2539.07      31.22      -0.00       7.87      13.44     933.32       0.00       0.00       0.00       0.00
                           -0.12      -9.65      -0.00      -0.00       3.55      -0.05      31.22    2539.05       0.00       0.06

   10   4.2  0.5 -0.5     933.35     -11.48      -7.87      -0.00      -4.93    -342.54       0.00       0.00       0.00   28610.67
                           -0.11      -4.32       0.00       0.00       1.58      -0.00     -11.48    -933.37      -0.06       0.00

   11   5.2  0.5 -0.5      -0.05       0.00     -13.44       4.93       0.00      -0.02       0.00       0.00       0.00       0.00
                          933.11     -24.91      -3.55      -1.58       0.00    -342.57       3.55      -0.04     933.35    -342.54

   12   6.2  0.5 -0.5      -7.87       0.10    -933.32     342.54       0.02      -0.00       0.00       0.00       0.00       0.00
                          -24.91    -933.11       0.05       0.00     342.57       0.00       0.00       4.32     -13.44       4.93


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5      -0.05      -7.87
                         -933.11      24.91

    2   2.2  0.5  0.5       0.00       0.10
                           24.91     933.11

    3   3.2  0.5  0.5     -13.44    -933.32
                            3.55      -0.05

    4   4.2  0.5  0.5       4.93     342.54
                            1.58      -0.00

    5   5.2  0.5  0.5       0.00       0.02
                           -0.00    -342.57

    6   6.2  0.5  0.5      -0.02      -0.00
                          342.57      -0.00

    7   1.2  0.5 -0.5       0.00       0.00
                           -3.55      -0.00

    8   2.2  0.5 -0.5       0.00       0.00
                            0.04      -4.32

    9   3.2  0.5 -0.5       0.00       0.00
                         -933.35      13.44

   10   4.2  0.5 -0.5       0.00       0.00
                          342.54      -4.93

   11   5.2  0.5 -0.5   28610.67       0.00
                            0.00       1.58

   12   6.2  0.5 -0.5       0.00   28610.67
                           -1.58      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -172.32223974    -0.02361911    -5183.80      0.00000000        0.00      0.0000
     2  -172.32223974    -0.02361911    -5183.80      0.00000000        0.00      0.0000
     3  -172.28720100     0.01141963     2506.32      0.03503874     7690.11      0.9535
     4  -172.28720100     0.01141963     2506.32      0.03503874     7690.11      0.9535
     5  -172.28720100     0.01141963     2506.32      0.03503874     7690.11      0.9535
     6  -172.28720100     0.01141963     2506.32      0.03503874     7690.11      0.9535
     7  -172.17090298     0.12771765    28030.78      0.15133676    33214.58      4.1181
     8  -172.17090298     0.12771765    28030.78      0.15133676    33214.58      4.1181
     9  -172.16654981     0.13207082    28986.19      0.15568993    34169.99      4.2365
    10  -172.16654981     0.13207082    28986.19      0.15568993    34169.99      4.2365
    11  -172.16654981     0.13207082    28986.19      0.15568993    34169.99      4.2365
    12  -172.16654981     0.13207082    28986.19      0.15568993    34169.99      4.2365


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.575149365   0.038470721  -0.338662432   0.741829709  -0.001052408  -0.028855577   0.007420001   0.031644512
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.021990397  -0.328763322   0.105743746   0.035074997   0.535886926  -0.358881413   0.000917364  -0.000215103
                        -0.033752501   0.471771979  -0.335554543  -0.155707677   0.293884957  -0.119349936   0.031602794  -0.007537147

    3    3.2  0.5  0.5   0.031564648  -0.471901392   0.375888464   0.167470494   0.282214781  -0.116501499  -0.031628788   0.007416314
                         0.029058696  -0.328245830   0.109044594   0.057177652  -0.514858746   0.350772428   0.001010006   0.000173624

    4    4.2  0.5  0.5  -0.002052803   0.026586253   0.013165238   0.006131117   0.009956982  -0.004118250  -0.559808108   0.136252781
                        -0.001638763   0.018512261   0.003850607   0.002018950  -0.018173148   0.012380856   0.017817467   0.003101593

    5    5.2  0.5  0.5  -0.002104975   0.018471611   0.003411132   0.001936029   0.018905941  -0.012689228   0.019807638   0.011157883
                         0.001902581  -0.026592870  -0.011839461  -0.005493889   0.010370064  -0.004211682   0.560271998  -0.133623179

    6    6.2  0.5  0.5  -0.032369545  -0.002887376  -0.012159900   0.026089909  -0.000625893  -0.000645337   0.135834937   0.559986605
                        -0.000036986   0.000553991   0.000283661   0.000129671  -0.000123691   0.000008087  -0.015109776   0.003541669

    7    1.2  0.5 -0.5  -0.031566006   0.471921701   0.710718494   0.324459442  -0.013902191   0.000507035   0.031631211  -0.007416883
                        -0.021990536   0.328765419   0.212580668   0.097047995   0.025285834  -0.000922214  -0.000917384   0.000215108

    8    2.2  0.5 -0.5   0.000083863  -0.001249953  -0.011015996  -0.005151624  -0.068318707  -0.000654184   0.000003492  -0.000000804
                         0.575025317   0.040264706   0.159228715  -0.351784099   0.371984986   0.611181427   0.007540215   0.031616106

    9    3.2  0.5 -0.5   0.574835695   0.042509890   0.176832013  -0.391372375  -0.363506834  -0.587132139   0.007408164   0.031644774
                         0.000414724  -0.005800344  -0.006788923  -0.003244156  -0.066907972  -0.000749568  -0.000388552   0.000092653

   10    4.2  0.5 -0.5  -0.032396491  -0.002621112   0.006452543  -0.013716548  -0.012833324  -0.020722062   0.136105597   0.560089350
                        -0.000007481   0.000171221  -0.000177329  -0.000083547  -0.002356135  -0.000030358  -0.007050298   0.001580976

   11    5.2  0.5 -0.5   0.000044618  -0.000639626   0.000280492   0.000124672  -0.002422831  -0.000021427   0.015026969  -0.003556862
                        -0.032378683  -0.002764346   0.005818277  -0.012320435   0.013148561   0.021563218   0.133243546   0.560610741

   12    6.2  0.5 -0.5   0.002052480  -0.026581009   0.025032897   0.011568646  -0.000318000   0.000193157   0.559648565  -0.136215882
                         0.002105035  -0.018472650   0.007352160   0.003756337   0.000561606  -0.000608056  -0.019774357  -0.011165531


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.026828888  -0.004689838   0.008855477   0.003043679
                        -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.001008867  -0.000119806   0.003203322  -0.000611777
                        -0.000920836   0.005500286   0.009385742  -0.026431162

    3    3.2  0.5  0.5   0.003787522  -0.021335295   0.006241841  -0.017649216
                        -0.000782271   0.000363257  -0.002916189   0.000473569

    4    4.2  0.5  0.5  -0.100896011   0.605579032  -0.178939254   0.499298145
                         0.022158478  -0.010265385   0.082664574  -0.013542852

    5    5.2  0.5  0.5  -0.008279512   0.006905321  -0.097412147   0.014996971
                         0.026079034  -0.155780683  -0.265831220   0.748594116

    6    6.2  0.5  0.5   0.761498096   0.127637487  -0.246886364  -0.090878074
                        -0.000883117   0.004245975   0.006400990  -0.019873689

    7    1.2  0.5 -0.5   0.004689708  -0.026828145  -0.003042862   0.008853098
                        -0.000034902   0.000199664   0.000070553  -0.000205271

    8    2.2  0.5 -0.5   0.000160736   0.001015692  -0.000001067   0.002984898
                         0.005499242   0.000913304  -0.026438241  -0.009457473

    9    3.2  0.5 -0.5   0.021337407   0.003793238   0.017655451   0.006307763
                         0.000204467   0.000754062   0.000064329   0.002770719

   10    4.2  0.5 -0.5  -0.605638657  -0.101058104  -0.499477908  -0.180807377
                        -0.005758297  -0.021406982  -0.001965386  -0.078494515

   11    5.2  0.5 -0.5  -0.008064459  -0.008473365   0.002359607  -0.091223957
                        -0.155724980  -0.026016723   0.748740604   0.268017818

   12    6.2  0.5 -0.5  -0.127602344   0.761483579   0.090393009  -0.246968399
                         0.005195751  -0.004784071  -0.021974916  -0.000676405


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  33.080%   0.148%  11.469%  55.031%   0.000%   0.083%   0.006%   0.100%   0.072%   0.002%
    2    2.2  0.5  0.5   0.162%  33.065%  12.378%   2.548%  37.354%  14.304%   0.100%   0.006%   0.000%   0.003%
    3    3.2  0.5  0.5   0.184%  33.044%  15.318%   3.132%  34.472%  13.661%   0.100%   0.006%   0.001%   0.046%
    4    4.2  0.5  0.5   0.001%   0.105%   0.019%   0.004%   0.043%   0.017%  31.370%   1.857%   1.067%  36.683%
    5    5.2  0.5  0.5   0.001%   0.105%   0.015%   0.003%   0.046%   0.018%  31.430%   1.798%   0.075%   2.432%
    6    6.2  0.5  0.5   0.105%   0.001%   0.015%   0.068%   0.000%   0.000%   1.868%  31.360%  57.988%   1.631%
    7    1.2  0.5 -0.5   0.148%  33.080%  55.031%  11.469%   0.083%   0.000%   0.100%   0.006%   0.002%   0.072%
    8    2.2  0.5 -0.5  33.065%   0.162%   2.548%  12.378%  14.304%  37.354%   0.006%   0.100%   0.003%   0.000%
    9    3.2  0.5 -0.5  33.044%   0.184%   3.132%  15.318%  13.661%  34.472%   0.006%   0.100%   0.046%   0.001%
   10    4.2  0.5 -0.5   0.105%   0.001%   0.004%   0.019%   0.017%   0.043%   1.857%  31.370%  36.683%   1.067%
   11    5.2  0.5 -0.5   0.105%   0.001%   0.003%   0.015%   0.018%   0.046%   1.798%  31.430%   2.432%   0.075%
   12    6.2  0.5 -0.5   0.001%   0.105%   0.068%   0.015%   0.000%   0.000%  31.360%   1.868%   1.631%  57.988%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.008%   0.001%
    2    2.2  0.5  0.5   0.010%   0.070%
    3    3.2  0.5  0.5   0.005%   0.031%
    4    4.2  0.5  0.5   3.885%  24.948%
    5    5.2  0.5  0.5   8.016%  56.062%
    6    6.2  0.5  0.5   6.099%   0.865%
    7    1.2  0.5 -0.5   0.001%   0.008%
    8    2.2  0.5 -0.5   0.070%   0.010%
    9    3.2  0.5 -0.5   0.031%   0.005%
   10    4.2  0.5 -0.5  24.948%   3.885%
   11    5.2  0.5 -0.5  56.062%   8.016%
   12    6.2  0.5 -0.5   0.865%   6.099%


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
              1      21       55.14       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      635.38       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      8596.90   4190.86   4401.47      2.02      0.35      2.01
 REAL TIME  *      8721.75 SEC
 DISK USED  *       690.62 MB (local),        4.25 GB (total)
 SF USED    *         6.46 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -172.166549806798

              CI           MULTI         RHF-SCF
   -172.10591807   -171.41005930   -171.33126754
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
