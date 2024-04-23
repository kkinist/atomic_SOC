
 Working directory              : /wrk/irikura/molpro.HF43R9SYPC/
 Global scratch directory       : /wrk/irikura/molpro.HF43R9SYPC/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.HF43R9SYPC/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Tl SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Tl};
 
 basis=aug-cc-pwCVTZ-PP
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=20,sym=1,spin=0}
 
 {multi
     closed,6,3
     occ,9,9
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.22 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Tl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 19-Mar-24          TIME: 16:43:54  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Tl   ECP ECP60MDF                 selected for group  1
 Library entry TL     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TL     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TL     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TL     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TL     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

         1 0.290E-04 0.259E-02 0.126E-01 0.126E-01 0.126E-01 0.126E-01 0.126E-01 0.126E-01
         2 0.944E-02 0.944E-02 0.944E-02 0.148E-01 0.148E-01 0.148E-01 0.795E-01 0.795E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     15.991 MB (compressed) written to integral file ( 18.2%)

     Node minimum: 1.049 MB, node maximum: 3.408 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     922392.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     922392      RECORD LENGTH: 524288

 Memory used in sort:       1.48 MW

 SORT1 READ    11031004. AND WROTE      179214. INTEGRALS IN      1 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.12 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     72 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.08 SEC

 Node minimum:      920824.  Node maximum:      925041. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.84      1.48
 REAL TIME  *         2.76 SEC
 DISK USED  *        29.19 MB (local),      206.79 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial occupancy:   7   3

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -171.32585509    -171.32585509     0.00D+00     0.13D+00     0     0       0.02      0.04    start
   2     -171.33066991      -0.00481481     0.25D-02     0.68D-02     1     0       0.02      0.06    diag
   3     -171.33113511      -0.00046520     0.14D-02     0.14D-02     2     0       0.02      0.08    diag
   4     -171.33119635      -0.00006124     0.22D-03     0.98D-03     3     0       0.01      0.09    diag
   5     -171.33119885      -0.00000250     0.50D-04     0.20D-03     4     0       0.01      0.10    diag
   6     -171.33119886      -0.00000001     0.41D-05     0.15D-04     5     0       0.02      0.12    diag
   7     -171.33119886      -0.00000000     0.22D-06     0.13D-05     6     0       0.01      0.13    diag
   8     -171.33119886       0.00000000     0.13D-07     0.47D-07     0     0       0.01      0.14    fixocc

 Final occupancy:   7   3

 !RHF STATE 1.1 Energy               -171.331198862995
  RHF One-electron energy            -295.976713623750
  RHF Two-electron energy             124.645514760755
  RHF Kinetic energy                   56.457737189083
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.034680583977

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.91018     1  1  s    0.99814
    2.1     2.00000    -1.10792     1  1  d2-  0.81108    1  1  d1- -0.58477
    3.1     2.00000    -1.10792     1  1  d2+  0.98699
    4.1     2.00000    -1.10792     1  1  d2-  0.52495    1  1  d1+  0.41175    1  1  d1-  0.73200
    5.1     2.00000    -1.10792     1  1  d0   1.00137
    6.1     2.00000    -1.10792     1  1  d1+  0.91270    1  1  d1- -0.33896
    7.1     2.00000    -0.68793     1  2  s    1.05909
    1.2     2.00000    -3.73505     1  1  px   0.96780
    2.2     2.00000    -3.73505     1  1  pz   0.98574
    3.2     2.00000    -3.73505     1  1  py   0.95521


 HOMO      7.1    -0.687926 =     -18.7194eV
 LUMO      4.2    -0.176439 =      -4.8012eV
 LUMO-HOMO         0.511487 =      13.9183eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.46       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.99      0.15      1.48
 REAL TIME  *         3.33 SEC
 DISK USED  *        29.66 MB (local),      209.63 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        9 (    3    6)
 Number of external orbitals:      78 (   38   40)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:             124   (162 determinants, 324 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.445D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.195D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.597D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.162D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.408D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.121D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 2 6   4 3 5 1 2 6 4 3 5 1   2 3 5 4 6 812 71513  141011 9 2 3 5 4 6 1
                                        2 6 3 4 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.226D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.140D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.296D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.518D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.518D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.974D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.116D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.930D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 2 1 3 1 2 3   1 2 6 810 5 4 7 9 3   1 2 810 6 7 9 5 4 8  10 7 9 4 5 6 3 1 2 4
                                        5 7 9 810 6 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  738  ( 36 closed/active, 348 closed/virtual, 0 active/active, 354 active/virtual )
 Total number of variables:    1710
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    6    0   -171.46248155    -171.46842746   -0.00594591    0.04764918 0.00023069 0.00000000  0.12E+01      0.82
   2    8    7    0   -171.46838139    -171.46838476   -0.00000338    0.00128182 0.00000047 0.00000000  0.38E-01      1.71
   3    5    5    0   -171.46838476    -171.46838476   -0.00000000    0.00000024 0.00000000 0.00000000  0.35E-04      2.41

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.69E-09)
                       Final energy:   -171.46838476
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -171.529456656965
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67888464
 One electron energy                          -301.62468052
 Two electron energy                           130.09522387
 Virial ratio                                    4.02633790
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -171.526201158750
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67361212
 One electron energy                          -301.60763352
 Two electron energy                           130.08143236
 Virial ratio                                    4.02656201
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -171.526201158733
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.67361212
 One electron energy                          -301.60763352
 Two electron energy                           130.08143236
 Virial ratio                                    4.02656201
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -171.409683146271
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.47507783
 One electron energy                          -298.24274777
 Two electron energy                           126.83306462
 Virial ratio                                    4.03513850
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -171.409383233999
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.47630405
 One electron energy                          -298.25357620
 Two electron energy                           126.84419297
 Virial ratio                                    4.03506729
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -171.409383233999
 Nuclear energy                                  0.00000000
 Kinetic energy                                 56.47630405
 One electron energy                          -298.25357620
 Two electron energy                           126.84419297
 Virial ratio                                    4.03506729
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     1.020754014493
 !MCSCF expec                      <2.2|LXLX|2.2>     0.006158346882
 !MCSCF expec                      <3.2|LXLX|3.2>     1.006156724635
 !MCSCF expec                      <4.2|LXLX|4.2>     1.002790074427
 !MCSCF expec                      <5.2|LXLX|5.2>     0.001149077059
 !MCSCF expec                      <6.2|LXLX|6.2>     1.001147175306
 
 !MCSCF expec                      <1.2|LYLY|1.2>     1.020754014493
 !MCSCF expec                      <2.2|LYLY|2.2>     1.006156724650
 !MCSCF expec                      <3.2|LYLY|3.2>     0.006158346901
 !MCSCF expec                      <4.2|LYLY|4.2>     1.002790074427
 !MCSCF expec                      <5.2|LYLY|5.2>     1.001147318589
 !MCSCF expec                      <6.2|LYLY|6.2>     0.001149220343
 
 !MCSCF expec                      <1.2|LZLZ|1.2>    -0.000000000000
 !MCSCF expec                      <2.2|LZLZ|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LZLZ|3.2>     1.000000000000
 !MCSCF expec                      <4.2|LZLZ|4.2>    -0.000000000000
 !MCSCF expec                      <5.2|LZLZ|5.2>     1.000000000000
 !MCSCF expec                      <6.2|LZLZ|6.2>     1.000000000000
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.041508028986
 !MCSCF expec                      <2.2|L**2|2.2>     2.012315071533
 !MCSCF expec                      <3.2|L**2|3.2>     2.012315071536
 !MCSCF expec                      <4.2|L**2|4.2>     2.005580148855
 !MCSCF expec                      <5.2|L**2|5.2>     2.002296395648
 !MCSCF expec                      <6.2|L**2|6.2>     2.002296395649
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 2 6 4 1 1 2 3   5 6 4 1 2 3 5 6 4 1   2 5 3 6 413101415 8  1211 9 7 2 3 5 6 4 1
                                        3 5 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 1 2 3 3   2 1 7 9 810 5 4 6 2   1 3 7 9 810 5 4 6 7   9 810 5 4 6 2 1 3 7
                                        9 810 5 4 6 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.71592     1  1  s    0.99947
    2.1     2.00000    -0.91381     1  1  d2-  1.00067
    3.1     2.00000    -0.91381     1  1  d2+  1.00067
    4.1     2.00000    -0.91377     1  1  d0   1.00088
    5.1     2.00000    -0.91372     1  1  d1-  1.00067
    6.1     2.00000    -0.91372     1  1  d1+  1.00067
    7.1     1.94911    -0.50129     1  2  s    1.01122
    8.1     0.00377     0.29620     1  2  s   -1.54023    1  3  s   -1.28414    1  4  s    0.89739    1  5  s    1.74388
    9.1     0.00212     0.40920     1  1  d0  -0.54816    1  2  d0   0.70606    1  3  d0   0.57866
    1.2     2.00000    -3.54103     1  1  py   0.99960
    2.2     2.00000    -3.54103     1  1  px   0.99960
    3.2     2.00000    -3.54095     1  1  pz   0.99962
    4.2     0.18185    -0.01394     1  2  pz   1.29961    1  4  pz  -0.26709
    5.2     0.18166    -0.01437     1  2  px   1.28315
    6.2     0.18166    -0.01437     1  2  py   1.28315
    7.2     0.16662     0.01753     1  2  px  -0.27677    1  7  px   1.10989
    8.2     0.16662     0.01753     1  2  py  -0.27677    1  7  py   1.10989
    9.2     0.16661     0.01784     1  2  pz  -0.28795    1  7  pz   1.10901
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 200 00000a      0.26202686     -0.00000000     -0.00000000      0.95073408     -0.00000000     -0.00000000
 200 a00000      0.94913142     -0.00000000     -0.00000000     -0.26085252      0.00000000      0.00000000
 200 00a000      0.00000000     -0.00000269      0.94838138     -0.00000000      0.00018911     -0.27282247
 200 0a0000      0.00000000      0.94838115      0.00000269     -0.00000000     -0.27282327     -0.00018911
 200 0000a0      0.00000000     -0.00000077      0.27297536      0.00000000     -0.00065691      0.94768103
 200 000a00      0.00000000      0.27297616      0.00000077      0.00000000      0.94768080      0.00065691
 000 20a000     -0.00000000      0.00000028     -0.09783264      0.00000000     -0.00002064      0.02977274
 000 2a0000     -0.00000000     -0.09783262     -0.00000028      0.00000000      0.02977281      0.00002064
 000 02a000     -0.00000000      0.00000028     -0.09714159      0.00000000     -0.00002033      0.02932367
 000 0a2000     -0.00000000     -0.09714157     -0.00000028      0.00000000      0.02932374      0.00002033
 000 a02000     -0.09702368      0.00000000      0.00000000      0.02822357     -0.00000000     -0.00000000
 000 a20000     -0.09702368      0.00000000      0.00000000      0.02822357     -0.00000000     -0.00000000
 000 02000a     -0.02409680      0.00000000      0.00000000     -0.08736645      0.00000000      0.00000000
 000 00200a     -0.02409680      0.00000000      0.00000000     -0.08736645      0.00000000      0.00000000
 000 2000a0     -0.00000000      0.00000007     -0.02525862     -0.00000000      0.00006052     -0.08730786
 000 200a00     -0.00000000     -0.02525870     -0.00000007     -0.00000000     -0.08730784     -0.00006052
 000 0200a0     -0.00000000      0.00000007     -0.02502331     -0.00000000      0.00006012     -0.08673004
 000 002a00     -0.00000000     -0.02502339     -0.00000007     -0.00000000     -0.08673001     -0.00006012
 000 20000a     -0.02359822      0.00000000      0.00000000     -0.08587560      0.00000000      0.00000000
 000 020a00     -0.00000000     -0.02440054     -0.00000007     -0.00000000     -0.08569541     -0.00005940
 000 0020a0     -0.00000000      0.00000007     -0.02440054     -0.00000000      0.00005940     -0.08569541
 a0a b00000      0.06519753     -0.00000000     -0.00000000     -0.02217222      0.00000000      0.00000000
 
 Energy:      -171.52945666   -171.52620116   -171.52620116   -171.40968315   -171.40938323   -171.40938323
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       38.14       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.74       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.38      2.38      0.15      1.48
 REAL TIME  *         6.22 SEC
 DISK USED  *        38.95 MB (local),      265.41 MB (total)
 SF USED    *        25.30 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY      LL
    -171.5294567   2.04150803
    -171.5262012   2.01231507
    -171.5262012   2.01231507
    -171.4096831   2.00558015
    -171.4093832   2.00229640
    -171.4093832   2.00229640
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 21
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       86 conf      124 CSFs
 N elec internal:    43437 conf   199905 CSFs
 N-1 el internal:    19809 conf   126306 CSFs
 N-2 el internal:     4284 conf    32166 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        9 (   3   6 )
 Number of external orbitals:      78 (  38  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -171.52945666
     2      -171.52620116
     3      -171.52620116
     4      -171.40968315
     5      -171.40938323
     6      -171.40938323

 Number of blocks in overlap matrix:   562   Smallest eigenvalue:  0.11D-05
 Number of N-2 electron functions:    1458
 Number of N-1 electron functions:  126306

 Number of internal configurations:               100042
 Number of singly external configurations:       4925892
 Number of doubly external configurations:       2219682
 Total number of contracted configurations:      7245616
 Total number of uncontracted configurations:   53792890

 Diagonal Coupling coefficients finished.               Storage:  41681907 words, CPU-Time:    293.15 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1446136 words, CPU-time:      0.12 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -171.52945666     0.00000000    -0.73662685  0.55D-01  0.10D+00   479.87
    1     2     2     1.00000000     0.00000000  -171.52620116     0.00000000    -0.74108262  0.57D-01  0.10D+00   479.87
    1     3     3     1.00000000     0.00000000  -171.52620116    -0.00000000    -0.74114279  0.57D-01  0.10D+00   479.87
    1     4     4     1.00000000     0.00000000  -171.40968315     0.00000000    -0.72130781  0.47D-01  0.97D-01   479.87
    1     5     5     1.00000000     0.00000000  -171.40938323    -0.00000000    -0.72201146  0.47D-01  0.97D-01   479.87
    1     6     6     1.00000000     0.00000000  -171.40938323     0.00000000    -0.72194112  0.47D-01  0.97D-01   479.87
    2     1     1     1.09115675    -0.57208330  -172.10153995    -0.57208330    -0.01690389  0.25D-02  0.13D-02  2199.30
    2     2     2     1.09300979    -0.57399551  -172.10019667    -0.57399551    -0.01727708  0.26D-02  0.14D-02  2199.30
    2     3     3     1.09298240    -0.57398171  -172.10018287    -0.57398171    -0.01729534  0.26D-02  0.14D-02  2199.30
    2     4     4     1.08531222    -0.56504945  -171.97473260    -0.56504945    -0.01600273  0.22D-02  0.12D-02  2199.30
    2     5     5     1.08545989    -0.56524810  -171.97463134    -0.56524810    -0.01605663  0.22D-02  0.12D-02  2199.30
    2     6     6     1.08548699    -0.56524468  -171.97462791    -0.56524468    -0.01606091  0.22D-02  0.12D-02  2199.30
    3     1     1     1.08462589    -0.58774004  -172.11719670    -0.01565675    -0.00028504  0.32D-04  0.31D-04  4065.64
    3     2     2     1.08592767    -0.58997176  -172.11617292    -0.01597624    -0.00030110  0.36D-04  0.34D-04  4065.64
    3     3     3     1.08593870    -0.58997162  -172.11617278    -0.01598991    -0.00030120  0.36D-04  0.34D-04  4065.64
    3     4     4     1.07999017    -0.57988483  -171.98956798    -0.01483538    -0.00025030  0.25D-04  0.25D-04  4065.64
    3     5     5     1.08008011    -0.58012678  -171.98951002    -0.01487868    -0.00025209  0.26D-04  0.25D-04  4065.64
    3     6     6     1.08008660    -0.58012643  -171.98950966    -0.01488175    -0.00025251  0.26D-04  0.25D-04  4065.64
    4     1     1     1.08499379    -0.58802379  -172.11748045    -0.00028375    -0.00001151  0.33D-05  0.11D-05  5521.73
    4     2     2     1.08626488    -0.59027226  -172.11647341    -0.00030050    -0.00001271  0.37D-05  0.12D-05  5521.73
    4     3     3     1.08626593    -0.59027222  -172.11647338    -0.00030060    -0.00001273  0.37D-05  0.12D-05  5521.73
    4     4     4     1.08053089    -0.58013188  -171.98981502    -0.00024704    -0.00000890  0.26D-05  0.68D-06  5521.73
    4     5     5     1.08062163    -0.58037568  -171.98975892    -0.00024890    -0.00000905  0.26D-05  0.69D-06  5521.73
    4     6     6     1.08062233    -0.58037567  -171.98975890    -0.00024924    -0.00000906  0.26D-05  0.70D-06  5521.73
    5     1     1     1.08503905    -0.58803674  -172.11749339    -0.00001294    -0.00000050  0.86D-07  0.58D-07  7168.17
    5     2     2     1.08629517    -0.59028667  -172.11648783    -0.00001442    -0.00000057  0.96D-07  0.67D-07  7168.17
    5     3     3     1.08629501    -0.59028667  -172.11648783    -0.00001445    -0.00000057  0.96D-07  0.67D-07  7168.17
    5     4     4     1.08063334    -0.58014172  -171.98982486    -0.00000984    -0.00000038  0.70D-07  0.41D-07  7168.17
    5     5     5     1.08072476    -0.58038571  -171.98976895    -0.00001003    -0.00000039  0.72D-07  0.42D-07  7168.17
    5     6     6     1.08072475    -0.58038571  -171.98976894    -0.00001004    -0.00000039  0.72D-07  0.42D-07  7168.17
    6     1     1     1.08502231    -0.58803730  -172.11749395    -0.00000056    -0.00000002  0.46D-08  0.25D-08  8653.42
    6     2     2     1.08627613    -0.59028730  -172.11648846    -0.00000063    -0.00000003  0.52D-08  0.30D-08  8653.42
    6     3     3     1.08627607    -0.59028730  -172.11648846    -0.00000063    -0.00000003  0.53D-08  0.30D-08  8653.42
    6     4     4     1.08063213    -0.58014214  -171.98982528    -0.00000042    -0.00000002  0.56D-08  0.19D-08  8653.42
    6     5     5     1.08072383    -0.58038614  -171.98976938    -0.00000043    -0.00000002  0.61D-08  0.19D-08  8653.42
    6     6     6     1.08072381    -0.58038614  -171.98976937    -0.00000043    -0.00000002  0.61D-08  0.19D-08  8653.42


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.9%
 S   0.7%  57.2%
 P   0.4%  21.3%  11.0%

 Initialization:   3.4%
 Other:            1.2%

 Total CPU:     8653.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220022200000/           0.2262537   0.0000000   0.0000000   0.9210086   0.0000001  -0.0000001
 22222220022200/000          -0.0000000   0.0066401   0.9204091   0.0000000  -0.2308895   0.0001683
 2222222002220/0000          -0.0000000   0.9204088  -0.0066401  -0.0000000  -0.0001683  -0.2308903
 222222200222/00000           0.9203053   0.0000000  -0.0000000  -0.2256293  -0.0000000   0.0000000
 2222222002220000/0           0.0000000   0.0016666   0.2310074  -0.0000001   0.9198468  -0.0006703
 222222200222000/00          -0.0000000   0.2310082  -0.0016666   0.0000001   0.0006703   0.9198466
 22222200022220/000           0.0000000  -0.0005835  -0.0808843  -0.0000000   0.0217385  -0.0000158
 2222220002222/0000           0.0000000  -0.0808843   0.0005835   0.0000000   0.0000158   0.0217382
 22222200022202/000           0.0000000  -0.0005792  -0.0802905  -0.0000000   0.0214003  -0.0000156
 2222220002220/2000           0.0000000  -0.0802904   0.0005792   0.0000000   0.0000156   0.0214005
 222222000222/20000          -0.0802324  -0.0000000   0.0000000   0.0210713   0.0000000  -0.0000000
 222222000222/02000          -0.0802323  -0.0000000  -0.0000000   0.0210713   0.0000000  -0.0000000
 2222220002222000/0          -0.0000000  -0.0001312  -0.0181928   0.0000000  -0.0722752   0.0000527
 222222000222200/00           0.0000000  -0.0181929   0.0001312  -0.0000000  -0.0000527  -0.0722751
 222222/\022200000/          -0.0187643  -0.0000000   0.0000000  -0.0721181  -0.0000000   0.0000000
 222222/\02220000/0          -0.0000000  -0.0001363  -0.0188944   0.0000000  -0.0721079   0.0000525
 222222/\0222000/00           0.0000000  -0.0188944   0.0001363  -0.0000000  -0.0000525  -0.0721079
 22222200022202000/          -0.0176879  -0.0000000  -0.0000000  -0.0721012  -0.0000000   0.0000000
 22222200022200200/          -0.0176879  -0.0000000  -0.0000000  -0.0721012  -0.0000000   0.0000000
 2222220002220200/0          -0.0000000  -0.0001301  -0.0180386   0.0000000  -0.0718029   0.0000523
 222222000222002/00           0.0000000  -0.0180387   0.0001301  -0.0000000  -0.0000523  -0.0718029
 22222200022220000/          -0.0172482  -0.0000000  -0.0000000  -0.0709470  -0.0000000   0.0000000
 222222000222020/00           0.0000000  -0.0173973   0.0001255  -0.0000000  -0.0000516  -0.0707783
 2222220002220020/0          -0.0000000  -0.0001255  -0.0173973   0.0000000  -0.0707782   0.0000516
 222222/0/222\00000           0.0677701   0.0000000  -0.0000000  -0.0195497  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957086   -0.000000   -0.000000   -0.026074    0.000000    0.000000
 2           0.000000    0.956486    0.006900   -0.000000   -0.032105   -0.000232
 3           0.000000   -0.006900    0.956486    0.000000    0.000232   -0.032105
 4           0.027402    0.000000   -0.000000    0.958878    0.000000   -0.000000
 5           0.000000    0.000025    0.033660    0.000000    0.000699    0.958651
 6          -0.000000    0.033660   -0.000025   -0.000000    0.958651   -0.000699

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957441    0.000000   -0.000000    0.000639    0.000000   -0.000000
 2           0.000000    0.957049    0.000000    0.000000    0.000006    0.000740
 3          -0.000000    0.000000    0.957049   -0.000000    0.000740   -0.000006
 4           0.000639    0.000000   -0.000000    0.959270    0.000000   -0.000000
 5           0.000000    0.000006    0.000740    0.000000    0.959242    0.000000
 6          -0.000000    0.000740   -0.000006   -0.000000    0.000000    0.959242


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95708619 (fixed)   0.95820316 (relaxed)   0.95744108 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00539615   -0.00780506   -0.46197801
 Singles      0.02364170   -0.08724913   -0.09272983
 Pairs        0.06183940   -0.00000000   -0.03332946
 Total        1.09087725   -0.09505419   -0.58803730
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52936342
 Nuclear energy                         0.00000000
 Kinetic energy                        56.81604158
 One electron energy                 -301.08689580
 Two electron energy                  128.96940185
 Virial quotient                       -3.02938200
 Correlation energy                    -0.58813053
 !MRCI STATE 1.2 Energy              -172.117493952626

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.17094164 (Davidson, fixed reference)
 Cluster corrected energies          -172.16992152 (Davidson, relaxed reference)
 Cluster corrected energies          -172.17094164 (Davidson, rotated reference)

 Cluster corrected energies          -172.16932346 (Pople, fixed reference)
 Cluster corrected energies          -172.16826004 (Pople, relaxed reference)
 Cluster corrected energies          -172.16932346 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95648576 (fixed)   0.95777160 (relaxed)   0.95704904 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00505860   -0.00741371   -0.46330734
 Singles      0.02423205   -0.08759563   -0.09333944
 Pairs        0.06248051    0.00014790   -0.03364051
 Total        1.09177116   -0.09486144   -0.59028730
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52606357
 Nuclear energy                         0.00000000
 Kinetic energy                        56.81349660
 One electron energy                 -301.08340637
 Two electron energy                  128.96691791
 Virial quotient                       -3.02950001
 Correlation energy                    -0.59042489
 !MRCI STATE 2.2 Energy              -172.116488461494

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.17067244 (Davidson, fixed reference)
 Cluster corrected energies          -172.16970019 (Davidson, relaxed reference)
 Cluster corrected energies          -172.17067244 (Davidson, rotated reference)

 Cluster corrected energies          -172.16907155 (Pople, fixed reference)
 Cluster corrected energies          -172.16805646 (Pople, relaxed reference)
 Cluster corrected energies          -172.16907155 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95648579 (fixed)   0.95777163 (relaxed)   0.95704906 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00505859   -0.00741371   -0.48194945
 Singles      0.02423202   -0.08759559   -0.09333942
 Pairs        0.06248049    0.02050074   -0.01499843
 Total        1.09177110   -0.07450856   -0.59028730
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.52606357
 Nuclear energy                         0.00000000
 Kinetic energy                        56.81349609
 One electron energy                 -301.08340566
 Two electron energy                  128.96691720
 Virial quotient                       -3.02950004
 Correlation energy                    -0.59042489
 !MRCI STATE 3.2 Energy              -172.116488459469

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.17067240 (Davidson, fixed reference)
 Cluster corrected energies          -172.16970016 (Davidson, relaxed reference)
 Cluster corrected energies          -172.17067240 (Davidson, rotated reference)

 Cluster corrected energies          -172.16907151 (Pople, fixed reference)
 Cluster corrected energies          -172.16805642 (Pople, relaxed reference)
 Cluster corrected energies          -172.16907151 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.95887832 (fixed)   0.96004303 (relaxed)   0.95926956 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00563596   -0.00845311   -0.45840074
 Singles      0.02115022   -0.08525741   -0.08974993
 Pairs        0.05993635    0.00000003   -0.03199147
 Total        1.08672253   -0.09371049   -0.58014214
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.40977638
 Nuclear energy                         0.00000000
 Kinetic energy                        56.68677299
 One electron energy                 -297.77805977
 Two electron energy                  125.78823449
 Virial quotient                       -3.03403803
 Correlation energy                    -0.58004890
 !MRCI STATE 4.2 Energy              -171.989825281513

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.04012859 (Davidson, fixed reference)
 Cluster corrected energies          -172.03911330 (Davidson, relaxed reference)
 Cluster corrected energies          -172.04012859 (Davidson, rotated reference)

 Cluster corrected energies          -172.03843541 (Pople, fixed reference)
 Cluster corrected energies          -172.03738432 (Pople, relaxed reference)
 Cluster corrected energies          -172.03843541 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95865084 (fixed)   0.96000729 (relaxed)   0.95924156 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00560935   -0.00843611   -0.01103282
 Singles      0.02119187   -0.08529922   -0.08981028
 Pairs        0.05998476   -0.48635221   -0.47954305
 Total        1.08678599   -0.58008753   -0.58038614
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.40952082
 Nuclear energy                         0.00000000
 Kinetic energy                        56.68638129
 One electron energy                 -297.77542924
 Two electron energy                  125.78565987
 Virial quotient                       -3.03405801
 Correlation energy                    -0.58024856
 !MRCI STATE 5.2 Energy              -171.989769378508

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.04012682 (Davidson, fixed reference)
 Cluster corrected energies          -172.03912123 (Davidson, relaxed reference)
 Cluster corrected energies          -172.04012682 (Davidson, rotated reference)

 Cluster corrected energies          -172.03843441 (Pople, fixed reference)
 Cluster corrected energies          -172.03739324 (Pople, relaxed reference)
 Cluster corrected energies          -172.03843441 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95865085 (fixed)   0.96000730 (relaxed)   0.95924156 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00560935   -0.00843611   -0.45887318
 Singles      0.02119187   -0.08529922   -0.08981027
 Pairs        0.05998475    0.00035442   -0.03170269
 Total        1.08678597   -0.09338090   -0.58038614
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -171.40952082
 Nuclear energy                         0.00000000
 Kinetic energy                        56.68638085
 One electron energy                 -297.77542846
 Two electron energy                  125.78565908
 Virial quotient                       -3.03405804
 Correlation energy                    -0.58024855
 !MRCI STATE 6.2 Energy              -171.989769374494

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -172.04012681 (Davidson, fixed reference)
 Cluster corrected energies          -172.03912122 (Davidson, relaxed reference)
 Cluster corrected energies          -172.04012681 (Davidson, rotated reference)

 Cluster corrected energies          -172.03843439 (Pople, fixed reference)
 Cluster corrected energies          -172.03739323 (Pople, relaxed reference)
 Cluster corrected energies          -172.03843439 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       38.14       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      344.56       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      9993.50   9989.10      2.38      0.15      1.48
 REAL TIME  *     10144.24 SEC
 DISK USED  *       382.78 MB (local),        2.27 GB (total)
 SF USED    *         3.62 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -172.17094164  AU                              
 SETTING HLSDIAG(2)     =      -172.17067244  AU                              
 SETTING HLSDIAG(3)     =      -172.17067240  AU                              
 SETTING HLSDIAG(4)     =      -172.04012859  AU                              
 SETTING HLSDIAG(5)     =      -172.04012682  AU                              
 SETTING HLSDIAG(6)     =      -172.04012681  AU                              


         HLSDIAG
    -172.1709416
    -172.1706724
    -172.1706724
    -172.0401286
    -172.0401268
    -172.0401268
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -172.117494   -172.116488   -172.116488   -171.989825   -171.989769   -171.989769
 Replaced energies:   -172.170942   -172.170672   -172.170672   -172.040129   -172.040127   -172.040127



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -172.17094164

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00   -2494.69      18.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      18.00    2494.69       0.00

    2   2.2  0.5  0.5       0.00      59.08       0.00       0.00       0.00       0.00    2494.69      -0.00       0.00    -987.67
                            0.00      -0.00   -2485.04      -0.00     985.98      -7.83     -18.00      -0.00       0.00       7.13

    3   3.2  0.5  0.5       0.00       0.00      59.09       0.00       0.00       0.00     -18.00      -0.00       0.00       7.13
                           -0.00    2485.04      -0.00      -0.00      -7.83    -985.98   -2494.69      -0.00       0.00     987.67

    4   4.2  0.5  0.5       0.00       0.00       0.00   28710.15       0.00       0.00      -0.00     987.67      -7.13      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -7.13    -987.67      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   28710.53       0.00      -0.72       0.00      -0.00       0.28
                            0.00    -985.98       7.83       0.00       0.00     390.51     989.56       0.00      -0.00    -391.03

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   28710.54    -989.56      -0.00       0.00     391.03
                           -0.00       7.83     985.98       0.00    -390.51       0.00      -0.72       0.00       0.00       0.28

    7   1.2  0.5 -0.5      -0.00    2494.69     -18.00      -0.00      -0.72    -989.56       0.00       0.00       0.00       0.00
                            0.00      18.00    2494.69       0.00    -989.56       0.72      -0.00       0.00      -0.00       0.00

    8   2.2  0.5 -0.5   -2494.69      -0.00      -0.00     987.67       0.00      -0.00       0.00      59.08       0.00       0.00
                          -18.00       0.00       0.00       7.13      -0.00      -0.00      -0.00       0.00    2485.04       0.00

    9   3.2  0.5 -0.5      18.00       0.00       0.00      -7.13      -0.00       0.00       0.00       0.00      59.09       0.00
                        -2494.69      -0.00      -0.00     987.67       0.00      -0.00       0.00   -2485.04       0.00       0.00

   10   4.2  0.5 -0.5       0.00    -987.67       7.13      -0.00       0.28     391.03       0.00       0.00       0.00   28710.15
                           -0.00      -7.13    -987.67       0.00     391.03      -0.28      -0.00      -0.00      -0.00       0.00

   11   5.2  0.5 -0.5       0.72      -0.00       0.00      -0.28      -0.00       0.00       0.00       0.00       0.00       0.00
                          989.56       0.00      -0.00    -391.03       0.00       0.00      -0.00     985.98      -7.83      -0.00

   12   6.2  0.5 -0.5     989.56       0.00      -0.00    -391.03      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.72       0.00       0.00       0.28      -0.00      -0.00       0.00      -7.83    -985.98      -0.00


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5       0.72     989.56
                         -989.56       0.72

    2   2.2  0.5  0.5      -0.00       0.00
                           -0.00      -0.00

    3   3.2  0.5  0.5       0.00      -0.00
                            0.00      -0.00

    4   4.2  0.5  0.5      -0.28    -391.03
                          391.03      -0.28

    5   5.2  0.5  0.5      -0.00      -0.00
                           -0.00       0.00

    6   6.2  0.5  0.5       0.00       0.00
                           -0.00       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            0.00      -0.00

    8   2.2  0.5 -0.5       0.00       0.00
                         -985.98       7.83

    9   3.2  0.5 -0.5       0.00       0.00
                            7.83     985.98

   10   4.2  0.5 -0.5       0.00       0.00
                            0.00       0.00

   11   5.2  0.5 -0.5   28710.53       0.00
                           -0.00    -390.51

   12   6.2  0.5 -0.5       0.00   28710.54
                          390.51      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -172.19400617    -0.02306453    -5062.08      0.00000000        0.00      0.0000
     2  -172.19400617    -0.02306453    -5062.08      0.00000000        0.00      0.0000
     3  -172.15963715     0.01130449     2481.05      0.03436902     7543.13      0.9352
     4  -172.15963715     0.01130449     2481.05      0.03436902     7543.13      0.9352
     5  -172.15951632     0.01142532     2507.57      0.03448985     7569.65      0.9385
     6  -172.15951632     0.01142532     2507.57      0.03448985     7569.65      0.9385
     7  -172.04315014     0.12779150    28046.99      0.15085603    33109.07      4.1050
     8  -172.04315014     0.12779150    28046.99      0.15085603    33109.07      4.1050
     9  -172.03818096     0.13276068    29137.60      0.15582521    34199.68      4.2402
    10  -172.03818096     0.13276068    29137.60      0.15582521    34199.68      4.2402
    11  -172.03817797     0.13276367    29138.26      0.15582819    34200.34      4.2403
    12  -172.03817797     0.13276367    29138.26      0.15582819    34200.34      4.2403


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.579629812  -0.015231722   0.031685720   0.812823699  -0.000001182  -0.000080792   0.034513734  -0.000443864
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.002587081  -0.098449115  -0.241665631   0.009420675  -0.302210675   0.004398881   0.000161854   0.012585367
                        -0.014869757  -0.565855556   0.331461530  -0.012921127  -0.638606025   0.009334940  -0.000413176  -0.032127531

    3    3.2  0.5  0.5  -0.014869742  -0.565854964   0.331347942  -0.012916697   0.638680345  -0.009336028  -0.000413175  -0.032127465
                         0.002587082   0.098449012   0.241582594  -0.009417444  -0.302245960   0.004399401  -0.000161854  -0.012585340

    4    4.2  0.5  0.5  -0.034395163   0.000903847   0.001186654   0.030440891  -0.000000047  -0.000003062   0.576611087  -0.007415461
                        -0.000000000   0.000000003   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000001  -0.000000020

    5    5.2  0.5  0.5   0.000895684   0.034084545   0.012061808  -0.000470195   0.023590728  -0.000344847  -0.006876807  -0.534725896
                        -0.000148514  -0.005651576   0.008941792  -0.000348572  -0.011394149   0.000165861  -0.002757076  -0.214383442

    6    6.2  0.5  0.5   0.000148516   0.005651570  -0.008944838   0.000348688  -0.011392891   0.000165843   0.002757033   0.214382755
                         0.000895685   0.034084513   0.012066045  -0.000470362  -0.023588026   0.000344808  -0.006876821  -0.534724180

    7    1.2  0.5 -0.5   0.002502511   0.095230872  -0.483586240   0.018851293   0.000034125  -0.000000499  -0.000164874  -0.012820192
                         0.015024739   0.571753269   0.653319764  -0.025467893   0.000073232  -0.000001072   0.000412106   0.032044353

    8    2.2  0.5 -0.5   0.574340988  -0.015092740  -0.015990351  -0.410195400  -0.010319365  -0.706492265   0.034503736  -0.000443735
                         0.004143482  -0.000108884  -0.000115358  -0.002959193  -0.000044387  -0.004198465   0.000248920  -0.000003201

    9    3.2  0.5 -0.5  -0.004143477   0.000108887   0.000115319   0.002958356  -0.000044399  -0.004199057  -0.000248921   0.000003201
                         0.574340387  -0.015092725  -0.015984868  -0.410054699   0.010320570   0.706574534   0.034503664  -0.000443734

   10    4.2  0.5 -0.5  -0.000148501  -0.005650988  -0.018110688   0.000705995   0.000001293  -0.000000021  -0.002754468  -0.214183281
                        -0.000891564  -0.033927769   0.024467343  -0.000953792   0.000002776  -0.000000042   0.006884908   0.535355833

   11    5.2  0.5 -0.5  -0.000025178   0.000000661  -0.000000429  -0.000010980  -0.000004685  -0.000363746   0.000419832  -0.000005410
                        -0.034549904   0.000907913  -0.000585308  -0.015014751   0.000382633   0.026195740   0.576100571  -0.007408908

   12    6.2  0.5 -0.5  -0.034549872   0.000907914  -0.000585511  -0.015019968  -0.000382589  -0.026192759   0.576098722  -0.007408905
                         0.000025178  -0.000000659   0.000000424   0.000010908  -0.000004685  -0.000363748  -0.000419832   0.000005365


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5   0.000038372  -0.000038372  -0.030323219  -0.000151447
                         0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.018505961  -0.018507229  -0.000016176   0.003239128
                         0.000034928   0.000033798   0.000074255  -0.014867316

    3    3.2  0.5  0.5  -0.000035606  -0.000034477   0.000073796  -0.014775973
                        -0.018544433  -0.018545701   0.000016072  -0.003217719

    4    4.2  0.5  0.5  -0.001033484   0.001033546   0.815680104   0.004073810
                        -0.000000032  -0.000000031   0.000000000   0.000000020

    5    5.2  0.5  0.5   0.004924710   0.004894517  -0.001982257   0.396913192
                         0.500130971   0.500165412  -0.000448359   0.089763095

    6    6.2  0.5  0.5   0.499098184   0.499132630   0.000451005  -0.090321090
                        -0.004914697  -0.004884505  -0.001994715   0.399381922

    7    1.2  0.5 -0.5   0.000038370   0.000038370  -0.000033299   0.006667203
                        -0.000000400  -0.000000400   0.000147741  -0.029581177

    8    2.2  0.5 -0.5   0.018506576  -0.018505320   0.015215688   0.000075994
                        -0.000159102   0.000157959   0.000109031   0.000000546

    9    3.2  0.5 -0.5  -0.000158824   0.000157681  -0.000109834  -0.000000547
                        -0.018545053   0.018543797   0.015121872   0.000075524

   10    4.2  0.5 -0.5  -0.001033490  -0.001033427   0.000895694  -0.179344576
                         0.000010741   0.000010804  -0.003974124   0.795719521

   11    5.2  0.5 -0.5   0.000318902  -0.000288352  -0.000296708  -0.000001546
                         0.500189258  -0.500155134  -0.406936614  -0.002032331

   12    6.2  0.5 -0.5  -0.499156428   0.499122298  -0.409467618  -0.002045065
                         0.000318150  -0.000287600   0.000298245   0.000001388


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  33.597%   0.023%   0.100%  66.068%   0.000%   0.000%   0.119%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.023%  32.988%  16.827%   0.026%  49.915%   0.011%   0.000%   0.119%   0.034%   0.034%
    3    3.2  0.5  0.5   0.023%  32.988%  16.815%   0.026%  49.927%   0.011%   0.000%   0.119%   0.034%   0.034%
    4    4.2  0.5  0.5   0.118%   0.000%   0.000%   0.093%   0.000%   0.000%  33.248%   0.005%   0.000%   0.000%
    5    5.2  0.5  0.5   0.000%   0.119%   0.023%   0.000%   0.069%   0.000%   0.005%  33.189%  25.016%  25.019%
    6    6.2  0.5  0.5   0.000%   0.119%   0.023%   0.000%   0.069%   0.000%   0.005%  33.189%  24.912%  24.916%
    7    1.2  0.5 -0.5   0.023%  33.597%  66.068%   0.100%   0.000%   0.000%   0.000%   0.119%   0.000%   0.000%
    8    2.2  0.5 -0.5  32.988%   0.023%   0.026%  16.827%   0.011%  49.915%   0.119%   0.000%   0.034%   0.034%
    9    3.2  0.5 -0.5  32.988%   0.023%   0.026%  16.815%   0.011%  49.927%   0.119%   0.000%   0.034%   0.034%
   10    4.2  0.5 -0.5   0.000%   0.118%   0.093%   0.000%   0.000%   0.000%   0.005%  33.248%   0.000%   0.000%
   11    5.2  0.5 -0.5   0.119%   0.000%   0.000%   0.023%   0.000%   0.069%  33.189%   0.005%  25.019%  25.016%
   12    6.2  0.5 -0.5   0.119%   0.000%   0.000%   0.023%   0.000%   0.069%  33.189%   0.005%  24.916%  24.912%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.092%   0.000%
    2    2.2  0.5  0.5   0.000%   0.023%
    3    3.2  0.5  0.5   0.000%   0.023%
    4    4.2  0.5  0.5  66.533%   0.002%
    5    5.2  0.5  0.5   0.000%  16.560%
    6    6.2  0.5  0.5   0.000%  16.766%
    7    1.2  0.5 -0.5   0.000%   0.092%
    8    2.2  0.5 -0.5   0.023%   0.000%
    9    3.2  0.5 -0.5   0.023%   0.000%
   10    4.2  0.5 -0.5   0.002%  66.533%
   11    5.2  0.5 -0.5  16.560%   0.000%
   12    6.2  0.5 -0.5  16.766%   0.000%


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
              1      21       38.14       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      344.56       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     20664.40  10670.89   9989.10      2.38      0.15      1.48
 REAL TIME  *     20939.83 SEC
 DISK USED  *       382.78 MB (local),        2.27 GB (total)
 SF USED    *         3.62 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -172.038177972887

              CI           MULTI         RHF-SCF
   -171.98976937   -171.40938323   -171.33119886
 **********************************************************************************************************************************
 Molpro calculation terminated with 2 warning(s)
