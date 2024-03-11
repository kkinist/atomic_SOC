
 Working directory              : /wrk/irikura/molpro.3iGjB0j8uk/
 Global scratch directory       : /wrk/irikura/molpro.3iGjB0j8uk/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.3iGjB0j8uk/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Ga SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ga};
 
 basis=aug-cc-pwCVTZ-PP
 
                                                                                 ! cation orbitals
                                                                                 !{rhf;wf,nelec=20,sym=1,spin=0}
 rhf
 
 {multi
     closed,6,3
     occ,8,6
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
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.16 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ga SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-Mar-24          TIME: 11:05:01  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ga   ECP ECP10MDF                 selected for group  1
 Library entry GA     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry GA     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry GA     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry GA     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry GA     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  GA     21.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   21
 NUMBER OF PRIMITIVE AOS:         182
 NUMBER OF SYMMETRY AOS:          152
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

         1 0.480E-04 0.522E-02 0.325E-01 0.657E-01 0.657E-01 0.657E-01 0.657E-01 0.657E-01
         2 0.101E-01 0.101E-01 0.101E-01 0.313E-01 0.313E-01 0.313E-01 0.207E+00 0.207E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     15.991 MB (compressed) written to integral file ( 18.7%)

     Node minimum: 0.786 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.05 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     36 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.83      0.59
 REAL TIME  *         1.68 SEC
 DISK USED  *        29.18 MB (local),      406.26 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   7   4
 Initial beta  occupancy:   7   3

 NELEC=   21   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -258.27750421    -258.27750421     0.00D+00     0.13D+00     0     0       0.00      0.00    start
   2     -258.29001345      -0.01250924     0.17D-02     0.52D-02     1     0       0.01      0.01    diag2
   3     -258.29367738      -0.00366392     0.13D-02     0.23D-02     2     0       0.00      0.01    diag2
   4     -258.29730128      -0.00362390     0.73D-03     0.33D-02     3     0       0.01      0.02    diag2
   5     -258.29904284      -0.00174156     0.41D-03     0.43D-02     4     0       0.00      0.02    diag2
   6     -258.29906780      -0.00002496     0.95D-04     0.71D-03     5     0       0.00      0.02    diag2
   7     -258.29906925      -0.00000145     0.20D-04     0.23D-03     6     0       0.01      0.03    diag2
   8     -258.29906938      -0.00000013     0.42D-05     0.40D-04     7     0       0.00      0.03    fixocc
   9     -258.29906939      -0.00000000     0.79D-06     0.10D-04     8     0       0.01      0.04    diag2
  10     -258.29906939      -0.00000000     0.90D-07     0.41D-06     9     0       0.00      0.04    diag2/orth
  11     -258.29906939      -0.00000000     0.15D-07     0.41D-07     0     0       0.00      0.04    diag

 Final alpha occupancy:   7   4
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -258.299069387086
  RHF One-electron energy            -463.206560230312
  RHF Two-electron energy             204.907490843225
  RHF Kinetic energy                  179.011271720768
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.442920699374

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.59395     1  1  s    0.99647
    2.1     2.00000    -1.17189     1  1  d0   0.86535    1  1  d2+ -0.49961
    3.1     2.00000    -1.17189     1  1  d1+  0.99922
    4.1     2.00000    -1.16580     1  1  d2-  0.99617
    5.1     2.00000    -1.16580     1  1  d1-  0.99617
    6.1     2.00000    -1.16377     1  1  d0   0.50043    1  1  d2+  0.86678
    7.1     2.00000    -0.43404     1  2  s    0.96486
    1.2     2.00000    -4.57658     1  1  pz   0.99936
    2.2     2.00000    -4.57658     1  1  px   0.99936
    3.2     2.00000    -4.57170     1  1  py   1.00100
    4.2     1.00000    -0.20759     1  2  py   1.00641


 HOMO      4.2    -0.207595 =      -5.6489eV
 LUMO      5.2     0.009702 =       0.2640eV
 LUMO-HOMO         0.217297 =       5.9129eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.53       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.94      0.11      0.59
 REAL TIME  *         2.89 SEC
 DISK USED  *        30.11 MB (local),      417.34 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:      82 (   39   43)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              20   (24 determinants, 50 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.184D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.245D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.879D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.900D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.394D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.225D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.147D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 3 6 5 1 1 2 4   6 3 5 1 5 6 3 2 4 1   2 4 6 3 5 1 2 4 3 6   5 7 915 81014111312
                                        4 2 6 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.261D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.982D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.286D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.201D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.551D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.350D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 3 1 2 3 1 2   3 1 6 4 5 8 710 9 1   3 2 4 6 5 8 710 9 1   3 2 4 6 5 8 710 9 6
                                        4 5 810 7 9 1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  591  ( 21 closed/active, 363 closed/virtual, 0 active/active, 207 active/virtual )
 Total number of variables:    735
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    6    0   -258.08573840    -258.16234148   -0.07660308    0.10735612 0.00001938 0.00000000  0.10E+01      0.22
   2    6    5    0   -258.16030106    -258.16052695   -0.00022588    0.01935737 0.00000342 0.00000000  0.34E-01      0.47
   3    5    5    0   -258.16052777    -258.16052778   -0.00000001    0.00008924 0.00000000 0.00000000  0.24E-03      0.63
   4    2    2    0   -258.16052778    -258.16052778   -0.00000000    0.00000000 0.00000000 0.00000000  0.13E-07      0.73

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.71E-10)
                       Final energy:   -258.16052778
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -258.310123034491
 Nuclear energy                                  0.00000000
 Kinetic energy                                179.40708986
 One electron energy                          -464.17977483
 Two electron energy                           205.86965179
 Virial ratio                                    2.43979886
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -258.310123034475
 Nuclear energy                                  0.00000000
 Kinetic energy                                179.40708986
 One electron energy                          -464.17977483
 Two electron energy                           205.86965179
 Virial ratio                                    2.43979886
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -258.310123034465
 Nuclear energy                                  0.00000000
 Kinetic energy                                179.40708986
 One electron energy                          -464.17977483
 Two electron energy                           205.86965179
 Virial ratio                                    2.43979886
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -258.010932516190
 Nuclear energy                                  0.00000000
 Kinetic energy                                178.91487932
 One electron energy                          -458.09699221
 Two electron energy                           200.08605969
 Virial ratio                                    2.44208762
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -258.010932516188
 Nuclear energy                                  0.00000000
 Kinetic energy                                178.91487932
 One electron energy                          -458.09699221
 Two electron energy                           200.08605969
 Virial ratio                                    2.44208762
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -258.010932516179
 Nuclear energy                                  0.00000000
 Kinetic energy                                178.91487932
 One electron energy                          -458.09699221
 Two electron energy                           200.08605969
 Virial ratio                                    2.44208762
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.000000000159
 !MCSCF expec                      <2.2|LXLX|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999999841
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999996633
 !MCSCF expec                      <5.2|LXLX|5.2>     1.000000000000
 !MCSCF expec                      <6.2|LXLX|6.2>     0.000000001043
 
 !MCSCF expec                      <1.2|LYLY|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LYLY|2.2>    -0.000000000000
 !MCSCF expec                      <3.2|LYLY|3.2>     1.000000000000
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999999996079
 !MCSCF expec                      <5.2|LYLY|5.2>    -0.000000000000
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999999999960
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999999999841
 !MCSCF expec                      <2.2|LZLZ|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.000000000159
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.000000007288
 !MCSCF expec                      <5.2|LZLZ|5.2>     1.000000000000
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999998996
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 4   6 3 5 1 2 4 6 3 5 1   2 4 6 3 5 1 2 4 6 3   5 7 911 81214151310
                                        2 4 6 3 5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 2 1 3   2 1 6 4 5 810 7 9 3   2 1 6 4 5 810 7 9 3   1 2 6 4 5 810 7 9 6
                                        4 5 810 9 7 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.69034     1  1  s    0.99489
    2.1     2.00000    -1.26587     1  1  d0   1.00084
    3.1     2.00000    -1.26587     1  1  d1+  1.00084
    4.1     2.00000    -1.26587     1  1  d1-  1.00084
    5.1     2.00000    -1.26587     1  1  d2-  1.00084
    6.1     2.00000    -1.26587     1  1  d2+  1.00084
    7.1     1.46443    -0.42340     1  2  s    0.95828
    8.1     0.50058     0.00235     1  5  s   -0.74960    1  8  s    1.54118
    1.2     2.00000    -4.67338     1  1  pz   1.00016
    2.2     2.00000    -4.67338     1  1  px   1.00016
    3.2     2.00000    -4.67338     1  1  py   1.00016
    4.2     0.34500    -0.02905     1  2  py   1.22563    1  4  py  -0.28507
    5.2     0.34500    -0.02905     1  2  px   1.22563    1  4  px  -0.28507
    6.2     0.34500    -0.02905     1  2  pz   1.22563    1  4  pz  -0.28507
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 a00        -0.00000008      0.97960877     -0.00000000      0.00000426     -0.06806609      0.00000000
 20 0a0         0.97960877      0.00000008     -0.00001237      0.00000395      0.00000000     -0.06806609
 20 00a         0.00001237      0.00000000      0.97960877     -0.06806609     -0.00000426     -0.00000395
 ab 0a0         0.05887314      0.00000000     -0.00000074     -0.00004724     -0.00000000      0.81408944
 ab a00        -0.00000000      0.05887314     -0.00000000     -0.00005098      0.81408944     -0.00000000
 ab 00a         0.00000074      0.00000000      0.05887314      0.81408944      0.00005098      0.00004724
 aa 0b0        -0.00863806     -0.00000000      0.00000011      0.00002413      0.00000000     -0.41580682
 aa b00         0.00000000     -0.00863806      0.00000000      0.00002604     -0.41580682      0.00000000
 aa 00b        -0.00000011     -0.00000000     -0.00863806     -0.41580682     -0.00002604     -0.00002413
 ba 0a0        -0.05023508     -0.00000000      0.00000063      0.00002311      0.00000000     -0.39828262
 ba a00         0.00000000     -0.05023508     -0.00000000      0.00002494     -0.39828262      0.00000000
 ba 00a        -0.00000063     -0.00000000     -0.05023508     -0.39828262     -0.00002494     -0.00002311
 00 a02         0.00000001     -0.13090608     -0.00000000     -0.00000119      0.01892995     -0.00000000
 00 0a2        -0.13090608     -0.00000001      0.00000165     -0.00000110     -0.00000000      0.01892995
 00 20a        -0.00000165     -0.00000000     -0.13090608      0.01892995      0.00000119      0.00000110
 00 a20         0.00000001     -0.13090608      0.00000000     -0.00000119      0.01892995     -0.00000000
 00 2a0        -0.13090608     -0.00000001      0.00000165     -0.00000110     -0.00000000      0.01892995
 00 02a        -0.00000165     -0.00000000     -0.13090608      0.01892995      0.00000119      0.00000110
 
 Energy:     -258.31012303   -258.31012303   -258.31012303   -258.01093252   -258.01093252   -258.01093252
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       34.64       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.62      0.68      0.11      0.59
 REAL TIME  *         3.82 SEC
 DISK USED  *        35.51 MB (local),      482.21 MB (total)
 SF USED    *        14.57 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -258.3101230   2.0
    -258.3101230   2.0
    -258.3101230   2.0
    -258.0109325   2.0
    -258.0109325   2.0
    -258.0109325   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 21
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       16 conf       20 CSFs
 N elec internal:     2730 conf     7834 CSFs
 N-1 el internal:     2265 conf    10249 CSFs
 N-2 el internal:      860 conf     5122 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  11

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -258.31012303
     2      -258.31012303
     3      -258.31012303
     4      -258.01093252
     5      -258.01093252
     6      -258.01093252

 Number of blocks in overlap matrix:   620   Smallest eigenvalue:  0.24D-02
 Number of N-2 electron functions:     892
 Number of N-1 electron functions:   10249

 Number of internal configurations:                 3926
 Number of singly external configurations:        420259
 Number of doubly external configurations:       1501938
 Total number of contracted configurations:      1926123
 Total number of uncontracted configurations:    9011751

 Diagonal Coupling coefficients finished.               Storage:   2149075 words, CPU-Time:      0.90 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    609116 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -258.31012303     0.00000000    -0.87443539  0.42D-01  0.75D-01     1.26
    1     2     2     1.00000000     0.00000000  -258.31012303     0.00000000    -0.87443559  0.42D-01  0.75D-01     1.26
    1     3     3     1.00000000     0.00000000  -258.31012303    -0.00000000    -0.87435920  0.42D-01  0.75D-01     1.26
    1     4     4     1.00000000     0.00000000  -258.01093252     0.00000000    -0.82725912  0.31D-01  0.69D-01     1.26
    1     5     5     1.00000000     0.00000000  -258.01093252    -0.00000000    -0.82729602  0.31D-01  0.69D-01     1.26
    1     6     6     1.00000000     0.00000000  -258.01093252    -0.00000000    -0.82729622  0.31D-01  0.69D-01     1.26
    2     1     1     1.07234598    -0.68838717  -258.99851020    -0.68838717    -0.02496641  0.41D-02  0.16D-02    15.27
    2     2     2     1.07242884    -0.68834034  -258.99846337    -0.68834034    -0.02501200  0.42D-02  0.16D-02    15.27
    2     3     3     1.07242730    -0.68834021  -258.99846325    -0.68834021    -0.02501213  0.42D-02  0.16D-02    15.27
    2     4     4     1.06289902    -0.66088158  -258.67181410    -0.66088158    -0.02477980  0.48D-02  0.14D-02    15.27
    2     5     5     1.06294993    -0.66085948  -258.67179200    -0.66085948    -0.02479903  0.48D-02  0.14D-02    15.27
    2     6     6     1.06295031    -0.66085937  -258.67179189    -0.66085937    -0.02479917  0.48D-02  0.14D-02    15.27
    3     1     1     1.06384509    -0.71104875  -259.02117178    -0.02266158    -0.00078920  0.13D-03  0.65D-04    29.11
    3     2     2     1.06384321    -0.71104777  -259.02117080    -0.02270743    -0.00079021  0.13D-03  0.65D-04    29.11
    3     3     3     1.06384333    -0.71104774  -259.02117078    -0.02270753    -0.00079025  0.13D-03  0.65D-04    29.11
    3     4     4     1.05616201    -0.68256953  -258.69350204    -0.02168794    -0.00096047  0.21D-03  0.66D-04    29.11
    3     5     5     1.05616859    -0.68256771  -258.69350022    -0.02170822    -0.00096235  0.21D-03  0.66D-04    29.11
    3     6     6     1.05616863    -0.68256768  -258.69350019    -0.02170831    -0.00096238  0.21D-03  0.66D-04    29.11
    4     1     1     1.06294431    -0.71181615  -259.02193918    -0.00076740    -0.00004704  0.11D-04  0.30D-05    42.60
    4     2     2     1.06294257    -0.71181613  -259.02193916    -0.00076836    -0.00004707  0.11D-04  0.30D-05    42.60
    4     3     3     1.06294258    -0.71181612  -259.02193916    -0.00076838    -0.00004708  0.11D-04  0.30D-05    42.60
    4     4     4     1.05560605    -0.68350106  -258.69443357    -0.00093153    -0.00005434  0.14D-04  0.34D-05    42.60
    4     5     5     1.05560585    -0.68350099  -258.69443351    -0.00093329    -0.00005441  0.14D-04  0.34D-05    42.60
    4     6     6     1.05560586    -0.68350099  -258.69443351    -0.00093332    -0.00005441  0.14D-04  0.34D-05    42.60
    5     1     1     1.06309140    -0.71186012  -259.02198315    -0.00004397    -0.00000239  0.40D-06  0.18D-06    56.32
    5     2     2     1.06309123    -0.71186012  -259.02198315    -0.00004399    -0.00000239  0.41D-06  0.18D-06    56.32
    5     3     3     1.06309123    -0.71186012  -259.02198315    -0.00004400    -0.00000239  0.41D-06  0.18D-06    56.32
    5     4     4     1.05559950    -0.68355708  -258.69448960    -0.00005602    -0.00000309  0.98D-06  0.25D-06    56.32
    5     5     5     1.05559972    -0.68355708  -258.69448960    -0.00005609    -0.00000309  0.98D-06  0.25D-06    56.32
    5     6     6     1.05559950    -0.68355708  -258.69448960    -0.00005609    -0.00000309  0.98D-06  0.25D-06    56.32
    6     1     1     1.06308432    -0.71186252  -259.02198555    -0.00000240    -0.00000012  0.13D-07  0.12D-07    70.14
    6     2     2     1.06308424    -0.71186252  -259.02198555    -0.00000240    -0.00000012  0.13D-07  0.12D-07    70.14
    6     3     3     1.06308423    -0.71186252  -259.02198555    -0.00000240    -0.00000012  0.13D-07  0.12D-07    70.14
    6     4     4     1.05556880    -0.68356047  -258.69449299    -0.00000339    -0.00000019  0.44D-07  0.21D-07    70.14
    6     5     5     1.05556880    -0.68356047  -258.69449299    -0.00000339    -0.00000019  0.44D-07  0.21D-07    70.14
    6     6     6     1.05556879    -0.68356047  -258.69449299    -0.00000339    -0.00000019  0.44D-07  0.21D-07    70.14
    7     1     1     1.06308453    -0.71186263  -259.02198567    -0.00000012    -0.00000001  0.17D-08  0.49D-09    83.98
    7     2     2     1.06308453    -0.71186263  -259.02198567    -0.00000012    -0.00000001  0.17D-08  0.49D-09    83.98
    7     3     3     1.06308454    -0.71186263  -259.02198567    -0.00000012    -0.00000001  0.17D-08  0.49D-09    83.98
    7     4     4     1.05555898    -0.68356067  -258.69449319    -0.00000020    -0.00000002  0.62D-08  0.13D-08    83.98
    7     5     5     1.05555898    -0.68356067  -258.69449319    -0.00000020    -0.00000002  0.62D-08  0.13D-08    83.98
    7     6     6     1.05555897    -0.68356067  -258.69449319    -0.00000020    -0.00000002  0.62D-08  0.13D-08    83.98


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   1.1%  10.1%
 P   0.4%  36.1%  24.3%

 Initialization:   1.2%
 Other:           25.6%

 Total CPU:       84.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/00           0.0000000   0.9539799  -0.0000000  -0.0339429  -0.0000000   0.0000000
 222222202220/0           0.9539799  -0.0000000  -0.0000000   0.0000000  -0.0339429  -0.0000000
 2222222022200/           0.0000000   0.0000000   0.9539799  -0.0000000   0.0000000  -0.0339430
 222222/\22200/           0.0000000  -0.0000000   0.0467129   0.0000000  -0.0000000   0.8358916
 222222/\222/00           0.0000000   0.0467129  -0.0000000   0.8358916  -0.0000000  -0.0000000
 222222/\2220/0           0.0467129  -0.0000000  -0.0000000   0.0000000   0.8358916   0.0000000
 222222//2220\0           0.0027116  -0.0000000  -0.0000000  -0.0000000  -0.4959665  -0.0000000
 222222//222\00           0.0000000   0.0027116  -0.0000000  -0.4959665   0.0000000   0.0000000
 222222//22200\           0.0000000   0.0000000   0.0027116  -0.0000000   0.0000000  -0.4959665
 2222220022202/          -0.0000000  -0.0000000  -0.1171416   0.0000000   0.0000000   0.0109729
 2222220022220/          -0.0000000  -0.0000000  -0.1171416   0.0000000   0.0000000   0.0109729
 222222002220/2          -0.1171416   0.0000000   0.0000000  -0.0000000   0.0109729  -0.0000000
 22222200222/02          -0.0000000  -0.1171416   0.0000000   0.0109729  -0.0000000  -0.0000000
 22222200222/20          -0.0000000  -0.1171416   0.0000000   0.0109729  -0.0000000  -0.0000000
 222222002222/0          -0.1171416   0.0000000   0.0000000  -0.0000000   0.0109729  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968800    0.000000    0.000000   -0.000000   -0.000000   -0.030601
 2          -0.000000    0.968800    0.000000   -0.000000   -0.030601    0.000000
 3          -0.000000   -0.000000    0.968800   -0.030601    0.000000    0.000000
 4           0.000000    0.033752    0.000000    0.000000    0.972388    0.000000
 5           0.033752   -0.000000   -0.000000   -0.000000   -0.000000    0.972388
 6           0.000000    0.000000    0.033752    0.972388   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969282   -0.000000   -0.000000    0.000000    0.001515    0.000000
 2          -0.000000    0.969282   -0.000000    0.001515   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.969282   -0.000000   -0.000000    0.001515
 4           0.000000    0.001515   -0.000000    0.972973   -0.000000    0.000000
 5           0.001515   -0.000000   -0.000000   -0.000000    0.972973   -0.000000
 6           0.000000   -0.000000    0.001515    0.000000   -0.000000    0.972973


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.96879988 (fixed)   0.96940121 (relaxed)   0.96928187 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00122577   -0.00184727   -0.65179338
 Singles      0.01581558   -0.04768574   -0.05538176
 Pairs        0.04734628    0.02871134   -0.00468750
 Total        1.06438763   -0.02082167   -0.71186263
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.30979458
 Nuclear energy                         0.00000000
 Kinetic energy                       178.92236368
 One electron energy                 -462.63891587
 Two electron energy                  203.61693020
 Virial quotient                       -1.44767809
 Correlation energy                    -0.71219108
 !MRCI STATE 1.2 Energy              -259.021985667986

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -259.06784196 (Davidson, fixed reference)
 Cluster corrected energies          -259.06765533 (Davidson, relaxed reference)
 Cluster corrected energies          -259.06784196 (Davidson, rotated reference)

 Cluster corrected energies          -259.06547961 (Pople, fixed reference)
 Cluster corrected energies          -259.06529317 (Pople, relaxed reference)
 Cluster corrected energies          -259.06547961 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.96879988 (fixed)   0.96940121 (relaxed)   0.96928187 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00122577   -0.00184727   -0.62481887
 Singles      0.01581558   -0.04768574   -0.05538175
 Pairs        0.04734628   -0.00000000   -0.03166201
 Total        1.06438763   -0.04953301   -0.71186263
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.30979458
 Nuclear energy                         0.00000000
 Kinetic energy                       178.92236386
 One electron energy                 -462.63891594
 Two electron energy                  203.61693028
 Virial quotient                       -1.44767809
 Correlation energy                    -0.71219108
 !MRCI STATE 2.2 Energy              -259.021985667977

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -259.06784196 (Davidson, fixed reference)
 Cluster corrected energies          -259.06765533 (Davidson, relaxed reference)
 Cluster corrected energies          -259.06784196 (Davidson, rotated reference)

 Cluster corrected energies          -259.06547961 (Pople, fixed reference)
 Cluster corrected energies          -259.06529317 (Pople, relaxed reference)
 Cluster corrected energies          -259.06547961 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96879988 (fixed)   0.96940121 (relaxed)   0.96928187 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00122577   -0.00184727   -0.62481886
 Singles      0.01581558   -0.04768575   -0.05538177
 Pairs        0.04734628   -0.00000000   -0.03166201
 Total        1.06438764   -0.04953301   -0.71186263
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.30979458
 Nuclear energy                         0.00000000
 Kinetic energy                       178.92236441
 One electron energy                 -462.63891638
 Two electron energy                  203.61693071
 Virial quotient                       -1.44767808
 Correlation energy                    -0.71219108
 !MRCI STATE 3.2 Energy              -259.021985667970

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -259.06784197 (Davidson, fixed reference)
 Cluster corrected energies          -259.06765534 (Davidson, relaxed reference)
 Cluster corrected energies          -259.06784197 (Davidson, rotated reference)

 Cluster corrected energies          -259.06547961 (Pople, fixed reference)
 Cluster corrected energies          -259.06529318 (Pople, relaxed reference)
 Cluster corrected energies          -259.06547961 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97238838 (fixed)   0.97300321 (relaxed)   0.97297279 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072813   -0.00137717   -0.61246520
 Singles      0.01122131   -0.03709452   -0.04237833
 Pairs        0.04437812   -0.00000000   -0.02871714
 Total        1.05632756   -0.03847169   -0.68356067
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.01126097
 Nuclear energy                         0.00000000
 Kinetic energy                       178.98372374
 One electron energy                 -457.28623814
 Two electron energy                  198.59174495
 Virial quotient                       -1.44535206
 Correlation energy                    -0.68323222
 !MRCI STATE 4.2 Energy              -258.694493185328

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -258.73297799 (Davidson, fixed reference)
 Cluster corrected energies          -258.73293286 (Davidson, relaxed reference)
 Cluster corrected energies          -258.73297799 (Davidson, rotated reference)

 Cluster corrected energies          -258.73075260 (Pople, fixed reference)
 Cluster corrected energies          -258.73070810 (Pople, relaxed reference)
 Cluster corrected energies          -258.73075260 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97238838 (fixed)   0.97300321 (relaxed)   0.97297279 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072813   -0.00137717   -0.00217900
 Singles      0.01122131   -0.03709452   -0.04237833
 Pairs        0.04437812   -0.64466213   -0.63900333
 Total        1.05632756   -0.68313382   -0.68356067
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.01126097
 Nuclear energy                         0.00000000
 Kinetic energy                       178.98372381
 One electron energy                 -457.28623818
 Two electron energy                  198.59174499
 Virial quotient                       -1.44535206
 Correlation energy                    -0.68323222
 !MRCI STATE 5.2 Energy              -258.694493185318

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -258.73297799 (Davidson, fixed reference)
 Cluster corrected energies          -258.73293286 (Davidson, relaxed reference)
 Cluster corrected energies          -258.73297799 (Davidson, rotated reference)

 Cluster corrected energies          -258.73075260 (Pople, fixed reference)
 Cluster corrected energies          -258.73070810 (Pople, relaxed reference)
 Cluster corrected energies          -258.73075260 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97238839 (fixed)   0.97300321 (relaxed)   0.97297279 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072813   -0.00137717   -0.61246521
 Singles      0.01122131   -0.03709451   -0.04237834
 Pairs        0.04437812   -0.00000000   -0.02871712
 Total        1.05632756   -0.03847168   -0.68356067
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.01126097
 Nuclear energy                         0.00000000
 Kinetic energy                       178.98372530
 One electron energy                 -457.28623907
 Two electron energy                  198.59174588
 Virial quotient                       -1.44535204
 Correlation energy                    -0.68323222
 !MRCI STATE 6.2 Energy              -258.694493185311

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -258.73297799 (Davidson, fixed reference)
 Cluster corrected energies          -258.73293286 (Davidson, relaxed reference)
 Cluster corrected energies          -258.73297799 (Davidson, rotated reference)

 Cluster corrected energies          -258.73075259 (Pople, fixed reference)
 Cluster corrected energies          -258.73070809 (Pople, relaxed reference)
 Cluster corrected energies          -258.73075259 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       34.64       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       90.42       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        92.71     91.08      0.68      0.11      0.59
 REAL TIME  *       103.22 SEC
 DISK USED  *       125.15 MB (local),        1.52 GB (total)
 SF USED    *       949.00 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -259.06784196  AU                              
 SETTING HLSDIAG(2)     =      -259.06784196  AU                              
 SETTING HLSDIAG(3)     =      -259.06784197  AU                              
 SETTING HLSDIAG(4)     =      -258.73297799  AU                              
 SETTING HLSDIAG(5)     =      -258.73297799  AU                              
 SETTING HLSDIAG(6)     =      -258.73297799  AU                              


         HLSDIAG
    -259.0678420
    -259.0678420
    -259.0678420
    -258.7329780
    -258.7329780
    -258.7329780
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -259.021986   -259.021986   -259.021986   -258.694493   -258.694493   -258.694493
 Replaced energies:   -259.067842   -259.067842   -259.067842   -258.732978   -258.732978   -258.732978



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -259.06784197

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     322.57      -0.00
                            0.00    -322.57       0.00     -18.75       0.00      -0.00      -0.00       0.00      -0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                          322.57       0.00      -0.00       0.00      18.75       0.00      -0.00      -0.00    -322.57      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -322.57       0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00     322.57      -0.00      18.75

    4   4.2  0.5  0.5       0.00       0.00       0.00   73494.15       0.00       0.00       0.00       0.00       0.00      -0.00
                           18.75      -0.00      -0.00       0.00     259.09       0.00      -0.00       0.00     -18.75      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   73494.15       0.00       0.00      -0.00      18.75       0.00
                           -0.00     -18.75       0.00    -259.09      -0.00       0.00       0.00      -0.00       0.00      -0.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   73494.15     -18.75       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      18.75      -0.00     259.09

    7   1.2  0.5 -0.5      -0.00      -0.00    -322.57       0.00       0.00     -18.75       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     322.57      -0.00      18.75

    8   2.2  0.5 -0.5       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -322.57      -0.00       0.00     -18.75    -322.57      -0.00       0.00      -0.00

    9   3.2  0.5 -0.5     322.57      -0.00       0.00       0.00      18.75       0.00       0.00       0.00       0.00       0.00
                            0.00     322.57       0.00      18.75      -0.00       0.00       0.00      -0.00       0.00      -0.00

   10   4.2  0.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00   73494.15
                           -0.00       0.00     -18.75       0.00       0.00    -259.09     -18.75       0.00       0.00      -0.00

   11   5.2  0.5 -0.5      -0.00       0.00     -18.75      -0.00      -0.00    -259.09       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      18.75      -0.00     259.09

   12   6.2  0.5 -0.5      18.75      -0.00      -0.00       0.00     259.09       0.00       0.00       0.00       0.00       0.00
                            0.00      18.75      -0.00     259.09      -0.00      -0.00      -0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5      -0.00      18.75
                           -0.00      -0.00

    2   2.2  0.5  0.5       0.00      -0.00
                            0.00     -18.75

    3   3.2  0.5  0.5     -18.75      -0.00
                           -0.00       0.00

    4   4.2  0.5  0.5      -0.00       0.00
                            0.00    -259.09

    5   5.2  0.5  0.5      -0.00     259.09
                            0.00       0.00

    6   6.2  0.5  0.5    -259.09       0.00
                           -0.00       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                           -0.00       0.00

    8   2.2  0.5 -0.5       0.00       0.00
                          -18.75      -0.00

    9   3.2  0.5 -0.5       0.00       0.00
                            0.00       0.00

   10   4.2  0.5 -0.5       0.00       0.00
                         -259.09      -0.00

   11   5.2  0.5 -0.5   73494.15       0.00
                            0.00      -0.00

   12   6.2  0.5 -0.5       0.00   73494.15
                            0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -259.07078155    -0.00293958     -645.16      0.00000000        0.00      0.0000
     2  -259.07078155    -0.00293958     -645.16      0.00000000        0.00      0.0000
     3  -259.06637224     0.00146973      322.57      0.00440931      967.73      0.1200
     4  -259.06637224     0.00146973      322.57      0.00440931      967.73      0.1200
     5  -259.06637224     0.00146973      322.57      0.00440932      967.73      0.1200
     6  -259.06637224     0.00146973      322.57      0.00440932      967.73      0.1200
     7  -258.73533895     0.33250302    72975.98      0.33544261    73621.14      9.1279
     8  -258.73533895     0.33250302    72975.98      0.33544261    73621.14      9.1279
     9  -258.73179745     0.33604452    73753.25      0.33898410    74398.41      9.2242
    10  -258.73179745     0.33604452    73753.25      0.33898410    74398.41      9.2242
    11  -258.73179745     0.33604452    73753.25      0.33898411    74398.41      9.2242
    12  -258.73179745     0.33604452    73753.25      0.33898411    74398.41      9.2242


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.013590056  -0.577190111   0.044524572   0.457654394   0.674617644   0.011305213   0.000294113   0.000000003
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000000  -0.000000000   0.000000013   0.000000067  -0.000000046  -0.000000018  -0.000000000  -0.000000000
                         0.013590054   0.577190018  -0.034318005  -0.352745412   0.735464416   0.012324961  -0.000294113  -0.000000003

    3    3.2  0.5  0.5   0.577189809  -0.013590049   0.117102781  -0.011392759   0.000123692  -0.007381525  -0.000000001   0.000085172
                         0.000924323  -0.000021763   0.801893821  -0.078015041  -0.001012212   0.060397197  -0.000000002   0.000281511

    4    4.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000006923   0.000294032   0.000008764   0.000090080  -0.000187816  -0.000003147   0.577350414   0.000004910

    5    5.2  0.5  0.5  -0.000006923  -0.000294032  -0.000011370  -0.000116871  -0.000172277  -0.000002887  -0.577350420  -0.000004910
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    6    6.2  0.5  0.5   0.000294031  -0.000006923  -0.000029905   0.000002909  -0.000000032   0.000001885   0.000001422  -0.167195122
                         0.000000471  -0.000000011  -0.000204780   0.000019923   0.000000258  -0.000015424   0.000004700  -0.552610643

    7    1.2  0.5 -0.5   0.577189371  -0.013590038  -0.066131078   0.006433802   0.001371486  -0.081840901  -0.000000001   0.000085172
                         0.000924323  -0.000021763  -0.452851208   0.044057279  -0.011221717   0.669635006  -0.000000002   0.000281510

    8    2.2  0.5 -0.5  -0.000924322   0.000021763   0.349043276  -0.033957826  -0.012233931   0.730032366   0.000000002  -0.000281510
                         0.577189278  -0.013590036  -0.050971800   0.004958966  -0.001495179   0.089222447  -0.000000001   0.000085172

    9    3.2  0.5 -0.5   0.013590066   0.577190549   0.078842511   0.810399136  -0.060846607  -0.001019745  -0.000294113  -0.000000003
                        -0.000000000   0.000000000   0.000000012   0.000000067  -0.000000046  -0.000000018   0.000000000  -0.000000000

   10    4.2  0.5 -0.5  -0.000000471   0.000000011  -0.000089135   0.000008672   0.000003124  -0.000186428  -0.000004700   0.552611281
                         0.000294031  -0.000006923   0.000013017  -0.000001266   0.000000382  -0.000022785   0.000001422  -0.167195315

   11    5.2  0.5 -0.5   0.000294031  -0.000006923   0.000016888  -0.000001643  -0.000000350   0.000020900   0.000001422  -0.167195317
                         0.000000471  -0.000000011   0.000115644  -0.000011251   0.000002866  -0.000171005   0.000004700  -0.552611286

   12    6.2  0.5 -0.5   0.000006923   0.000294031  -0.000020134  -0.000206952   0.000015538   0.000000260   0.577349748   0.000004910
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5   0.000181196   0.000000348   0.000091938   0.000046812
                        -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000179945   0.000000346  -0.000093868  -0.000047794

    3    3.2  0.5  0.5   0.000000002  -0.000001250  -0.000094595   0.000185785
                        -0.000000000   0.000000002   0.000001435  -0.000002818

    4    4.2  0.5  0.5  -0.000000099   0.000000081   0.000000090   0.000000206
                         0.704644265   0.001353425  -0.367577331  -0.187157427

    5    5.2  0.5  0.5   0.709541207   0.001362826   0.360018915   0.183308923
                        -0.000000000  -0.000000000  -0.000000000   0.000000000

    6    6.2  0.5  0.5   0.000009417  -0.004896934  -0.370424165   0.727513401
                        -0.000000095   0.000006794   0.005618905  -0.011035218

    7    1.2  0.5 -0.5  -0.000000348   0.000181195   0.000046806  -0.000091927
                         0.000000000  -0.000000256  -0.000000710   0.000001394

    8    2.2  0.5 -0.5   0.000000000  -0.000000254   0.000000725  -0.000001424
                         0.000000346  -0.000179945   0.000047789  -0.000093857

    9    3.2  0.5 -0.5   0.000001251   0.000000002   0.000185806   0.000094606
                        -0.000000000   0.000000000   0.000000000   0.000000000

   10    4.2  0.5 -0.5   0.000001827  -0.000993739   0.002838741  -0.005574975
                         0.001353415  -0.704643573   0.187135877  -0.367535046

   11    5.2  0.5 -0.5  -0.001362833   0.709540494   0.183287858  -0.359977512
                         0.000001922  -0.001000533  -0.002780157   0.005460231

   12    6.2  0.5 -0.5   0.004896955   0.000009400   0.727597089   0.370466778
                        -0.000000099   0.000000081   0.000000090   0.000000206


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.018%  33.315%   0.198%  20.945%  45.511%   0.013%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.018%  33.315%   0.118%  12.443%  54.091%   0.015%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  33.315%   0.018%  65.675%   0.622%   0.000%   0.370%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.333%   0.000%  49.652%   0.000%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.333%   0.000%  50.345%   0.000%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.333%   0.000%   0.002%
    7    1.2  0.5 -0.5  33.315%   0.018%  20.945%   0.198%   0.013%  45.511%   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5  33.315%   0.018%  12.443%   0.118%   0.015%  54.091%   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5   0.018%  33.315%   0.622%  65.675%   0.370%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.333%   0.000%  49.652%
   11    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.333%   0.000%  50.345%
   12    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.333%   0.000%   0.002%   0.000%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%
    4    4.2  0.5  0.5  13.511%   3.503%
    5    5.2  0.5  0.5  12.961%   3.360%
    6    6.2  0.5  0.5  13.725%  52.940%
    7    1.2  0.5 -0.5   0.000%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.000%
   10    4.2  0.5 -0.5   3.503%  13.511%
   11    5.2  0.5 -0.5   3.360%  12.961%
   12    6.2  0.5 -0.5  52.940%  13.725%


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
              1      21       34.64       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       90.42       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       351.72    259.00     91.08      0.68      0.11      0.59
 REAL TIME  *       370.19 SEC
 DISK USED  *       125.15 MB (local),        1.52 GB (total)
 SF USED    *       949.00 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -258.731797445361

              CI           MULTI         RHF-SCF
   -258.69449319   -258.01093252   -258.29906939
 **********************************************************************************************************************************
 Molpro calculation terminated
