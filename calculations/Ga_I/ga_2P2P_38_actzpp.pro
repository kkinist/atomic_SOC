
 Working directory              : /wrk/irikura/molpro.YH7CdBL2XH/
 Global scratch directory       : /wrk/irikura/molpro.YH7CdBL2XH/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.YH7CdBL2XH/

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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ga SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-Mar-24          TIME: 16:53:12  
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

     16.515 MB (compressed) written to integral file ( 18.1%)

     Node minimum: 0.786 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.05 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     72 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.94      0.59
 REAL TIME  *         1.76 SEC
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
   1     -258.27750421    -258.27750421     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2     -258.29001345      -0.01250924     0.17D-02     0.52D-02     1     0       0.00      0.01    diag2
   3     -258.29367738      -0.00366392     0.13D-02     0.23D-02     2     0       0.01      0.02    diag2
   4     -258.29730128      -0.00362390     0.73D-03     0.33D-02     3     0       0.00      0.02    diag2
   5     -258.29904284      -0.00174156     0.41D-03     0.43D-02     4     0       0.01      0.03    diag2
   6     -258.29906780      -0.00002496     0.95D-04     0.71D-03     5     0       0.00      0.03    diag2
   7     -258.29906925      -0.00000145     0.20D-04     0.23D-03     6     0       0.00      0.03    diag2
   8     -258.29906938      -0.00000013     0.42D-05     0.40D-04     7     0       0.00      0.03    fixocc
   9     -258.29906939      -0.00000000     0.79D-06     0.10D-04     8     0       0.01      0.04    diag2
  10     -258.29906939      -0.00000000     0.90D-07     0.41D-06     9     0       0.00      0.04    diag2/orth
  11     -258.29906939      -0.00000000     0.15D-07     0.41D-07     0     0       0.00      0.04    diag

 Final alpha occupancy:   7   4
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -258.299069387086
  RHF One-electron energy            -463.206560230311
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
    4.1     2.00000    -1.16580     1  1  d2-  0.99855
    5.1     2.00000    -1.16580     1  1  d1-  0.99855
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
 CPU TIMES  *         0.99      0.05      0.59
 REAL TIME  *         2.66 SEC
 DISK USED  *        30.11 MB (local),      417.34 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      79 (   39   40)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.184D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.245D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.612D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.635D-01 HAS BEEN REMOVED
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
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.344D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.195D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.406D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 3 1 2 3 1 2   3 1 6 4 5 8 710 9 1   3 2 4 6 5 8 710 9 1   3 2 4 6 5 8 710 9 6
                                        4 5 810 7 9 1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  702  ( 30 closed/active, 354 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    1422
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9    8    0   -258.23555168    -258.25393880   -0.01838712    0.06023543 0.00003035 0.00000000  0.11E+01      0.36
   2    7    6    0   -258.25370544    -258.25371877   -0.00001333    0.00438822 0.00000391 0.00000000  0.40E-01      0.70
   3    5    5    0   -258.25371877    -258.25371877   -0.00000000    0.00000345 0.00000000 0.00000000  0.10E-03      0.94

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.14E-08)
                       Final energy:   -258.25371877
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -258.316943321168
 Nuclear energy                                  0.00000000
 Kinetic energy                                179.13774212
 One electron energy                          -463.43183745
 Two electron energy                           205.11489412
 Virial ratio                                    2.44200178
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -258.316943321152
 Nuclear energy                                  0.00000000
 Kinetic energy                                179.13774212
 One electron energy                          -463.43183745
 Two electron energy                           205.11489413
 Virial ratio                                    2.44200178
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -258.316943321115
 Nuclear energy                                  0.00000000
 Kinetic energy                                179.13774212
 One electron energy                          -463.43183745
 Two electron energy                           205.11489413
 Virial ratio                                    2.44200178
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -258.190494221101
 Nuclear energy                                  0.00000000
 Kinetic energy                                178.89004902
 One electron energy                          -459.50268350
 Two electron energy                           201.31218928
 Virial ratio                                    2.44329154
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -258.190494221099
 Nuclear energy                                  0.00000000
 Kinetic energy                                178.89004902
 One electron energy                          -459.50268351
 Two electron energy                           201.31218928
 Virial ratio                                    2.44329154
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -258.190494221088
 Nuclear energy                                  0.00000000
 Kinetic energy                                178.89004902
 One electron energy                          -459.50268351
 Two electron energy                           201.31218929
 Virial ratio                                    2.44329154
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999799357
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000176126
 !MCSCF expec                      <3.2|LXLX|3.2>     1.000000000000
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999995995484
 !MCSCF expec                      <5.2|LXLX|5.2>     0.000003565018
 !MCSCF expec                      <6.2|LXLX|6.2>     1.000000000000
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999990
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999999999988
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000000000
 !MCSCF expec                      <4.2|LYLY|4.2>     1.000000000000
 !MCSCF expec                      <5.2|LYLY|5.2>     0.999999999998
 !MCSCF expec                      <6.2|LYLY|6.2>    -0.000000000000
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000200652
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999823886
 !MCSCF expec                      <3.2|LZLZ|3.2>     1.000000000000
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.000004004516
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999996434984
 !MCSCF expec                      <6.2|LZLZ|6.2>     1.000000000000
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 1 2   6 4 3 5 2 6 4 3 5 1   2 6 4 3 5 1 2 6 4 3   511 7 812 914151310
                                        2 6 4 3 5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 3   2 1 5 6 4 810 7 9 3   2 1 5 6 4 810 7 9 3   2 1 5 6 4 810 7 9 5
                                        6 4 810 7 9 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.67811     1  1  s    0.99647
    2.1     2.00000    -1.25209     1  1  d0   1.00030
    3.1     2.00000    -1.25209     1  1  d1-  1.00030
    4.1     2.00000    -1.25209     1  1  d1+  1.00030
    5.1     2.00000    -1.25209     1  1  d2-  1.00030
    6.1     2.00000    -1.25209     1  1  d2+  1.00030
    7.1     1.91981    -0.49056     1  2  s    0.97094
    8.1     0.00566     0.26229     1  2  s   -1.59219    1  3  s   -1.11693    1  4  s    1.22500    1  5  s    1.48972
    1.2     2.00000    -4.65915     1  1  pz   0.99981
    2.2     2.00000    -4.65915     1  1  py   0.99981
    3.2     2.00000    -4.65915     1  1  px   0.99981
    4.2     0.19165    -0.01559     1  2  px  -1.22143    1  4  px   0.25008
    5.2     0.19165    -0.01559     1  2  py   1.22143    1  4  py  -0.25008
    6.2     0.19165    -0.01559     1  2  pz  -1.22143    1  4  pz   0.25008
    7.2     0.16653     0.01933     1  2  px  -0.32882    1  7  px   1.05245
    8.2     0.16653     0.01933     1  2  py  -0.32882    1  7  py   1.05245
    9.2     0.16653     0.01933     1  2  pz  -0.32882    1  7  pz   1.05245
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 00a000      0.94811981      0.00042469     -0.00000299      0.25068735      0.00050166      0.00000007
 20 0a0000      0.00000299     -0.00000325      0.94811974      0.00000007      0.00000037     -0.25068848
 20 a00000     -0.00042469      0.94811947      0.00000325     -0.00050166      0.25068861      0.00000037
 20 0000a0      0.00000079     -0.00000086      0.25072579     -0.00000025     -0.00000139      0.94407432
 20 00000a     -0.25072513     -0.00011231      0.00000079      0.94407260      0.00188921      0.00000026
 20 000a00      0.00011231     -0.25072640     -0.00000086     -0.00188921      0.94407226      0.00000139
 00 02a000     -0.12480662     -0.00005590      0.00000039     -0.03495855     -0.00006996     -0.00000001
 00 20a000     -0.12480662     -0.00005590      0.00000039     -0.03495855     -0.00006996     -0.00000001
 00 0a2000     -0.00000039      0.00000043     -0.12480661     -0.00000001     -0.00000005      0.03495870
 00 2a0000     -0.00000039      0.00000043     -0.12480661     -0.00000001     -0.00000005      0.03495870
 00 a02000      0.00005590     -0.12480658     -0.00000043      0.00006996     -0.03495870     -0.00000005
 00 a20000      0.00005590     -0.12480658     -0.00000043      0.00006996     -0.03495870     -0.00000005
 00 2000a0     -0.00000009      0.00000010     -0.03006546      0.00000003      0.00000017     -0.11339936
 00 0020a0     -0.00000009      0.00000010     -0.03006546      0.00000003      0.00000017     -0.11339935
 00 20000a      0.03006537      0.00001347     -0.00000009     -0.11339916     -0.00022693     -0.00000003
 00 02000a      0.03006537      0.00001347     -0.00000009     -0.11339915     -0.00022693     -0.00000003
 00 020a00     -0.00001347      0.03006554      0.00000010      0.00022693     -0.11339911     -0.00000017
 00 002a00     -0.00001347      0.03006554      0.00000010      0.00022693     -0.11339910     -0.00000017
 00 0200a0     -0.00000009      0.00000010     -0.02971091      0.00000003      0.00000016     -0.11179232
 00 200a00     -0.00001331      0.02971091      0.00000010      0.00022371     -0.11179210     -0.00000016
 00 00200a      0.02971091      0.00001331     -0.00000009     -0.11179210     -0.00022371     -0.00000003
 
 Energy:     -258.31694332   -258.31694332   -258.31694332   -258.19049422   -258.19049422   -258.19049422
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.88      0.89      0.05      0.59
 REAL TIME  *         3.81 SEC
 DISK USED  *        38.05 MB (local),      512.70 MB (total)
 SF USED    *        22.34 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -258.3169433   2.0
    -258.3169433   2.0
    -258.3169433   2.0
    -258.1904942   2.0
    -258.1904942   2.0
    -258.1904942   2.0
                                                  


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
 Number of external orbitals:      79 (  39  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -258.31694332
     2      -258.31694332
     3      -258.31694332
     4      -258.19049422
     5      -258.19049422
     6      -258.19049422

 Number of blocks in overlap matrix:   526   Smallest eigenvalue:  0.31D-05
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       3060250
 Number of doubly external configurations:       2077248
 Total number of contracted configurations:      5190770
 Total number of uncontracted configurations:   40457792

 Diagonal Coupling coefficients finished.               Storage:  22139508 words, CPU-Time:     26.27 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1112961 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -258.31694332     0.00000000    -0.86527870  0.38D-01  0.70D-01    39.50
    1     2     2     1.00000000     0.00000000  -258.31694332     0.00000000    -0.86537477  0.38D-01  0.70D-01    39.50
    1     3     3     1.00000000     0.00000000  -258.31694332     0.00000000    -0.86532641  0.38D-01  0.70D-01    39.50
    1     4     4     1.00000000     0.00000000  -258.19049422     0.00000000    -0.84234373  0.21D-01  0.66D-01    39.50
    1     5     5     1.00000000     0.00000000  -258.19049422     0.00000000    -0.84231068  0.21D-01  0.66D-01    39.50
    1     6     6     1.00000000     0.00000000  -258.19049422     0.00000000    -0.84236277  0.21D-01  0.66D-01    39.50
    2     1     1     1.06716536    -0.68509923  -259.00204255    -0.68509923    -0.02413976  0.33D-02  0.14D-02   267.21
    2     2     2     1.06723063    -0.68505874  -259.00200207    -0.68505874    -0.02417801  0.33D-02  0.14D-02   267.21
    2     3     3     1.06725138    -0.68505555  -259.00199887    -0.68505555    -0.02417923  0.33D-02  0.14D-02   267.21
    2     4     4     1.05492485    -0.67409819  -258.86459241    -0.67409819    -0.02295308  0.25D-02  0.13D-02   267.21
    2     5     5     1.05492004    -0.67409566  -258.86458989    -0.67409566    -0.02295750  0.25D-02  0.13D-02   267.21
    2     6     6     1.05494121    -0.67409052  -258.86458474    -0.67409052    -0.02296024  0.25D-02  0.13D-02   267.21
    3     1     1     1.06138699    -0.70629887  -259.02324219    -0.02119965    -0.00082214  0.13D-03  0.56D-04   492.38
    3     2     2     1.06138509    -0.70629818  -259.02324151    -0.02123944    -0.00082300  0.13D-03  0.56D-04   492.38
    3     3     3     1.06138827    -0.70629793  -259.02324125    -0.02124238    -0.00082330  0.13D-03  0.56D-04   492.38
    3     4     4     1.05303477    -0.69377701  -258.88427123    -0.01967882    -0.00074132  0.76D-04  0.47D-04   492.38
    3     5     5     1.05303656    -0.69377686  -258.88427108    -0.01968119    -0.00074151  0.76D-04  0.47D-04   492.38
    3     6     6     1.05303723    -0.69377667  -258.88427089    -0.01968615    -0.00074171  0.76D-04  0.47D-04   492.38
    4     1     1     1.06051809    -0.70705626  -259.02399958    -0.00075738    -0.00004334  0.89D-05  0.27D-05   717.03
    4     2     2     1.06051584    -0.70705622  -259.02399954    -0.00075804    -0.00004338  0.89D-05  0.27D-05   717.03
    4     3     3     1.06051568    -0.70705620  -259.02399952    -0.00075826    -0.00004340  0.89D-05  0.27D-05   717.03
    4     4     4     1.05323727    -0.69445562  -258.88494984    -0.00067861    -0.00003494  0.62D-05  0.18D-05   717.03
    4     5     5     1.05323690    -0.69445561  -258.88494984    -0.00067876    -0.00003495  0.62D-05  0.18D-05   717.03
    4     6     6     1.05323661    -0.69445560  -258.88494983    -0.00067893    -0.00003496  0.62D-05  0.18D-05   717.03
    5     1     1     1.06063605    -0.70709904  -259.02404236    -0.00004278    -0.00000199  0.27D-06  0.15D-06   940.33
    5     2     2     1.06063606    -0.70709904  -259.02404236    -0.00004282    -0.00000199  0.27D-06  0.15D-06   940.33
    5     3     3     1.06063611    -0.70709904  -259.02404236    -0.00004284    -0.00000199  0.27D-06  0.15D-06   940.33
    5     4     4     1.05344537    -0.69449028  -258.88498450    -0.00003466    -0.00000151  0.20D-06  0.94D-07   940.33
    5     5     5     1.05344535    -0.69449028  -258.88498450    -0.00003467    -0.00000151  0.20D-06  0.94D-07   940.33
    5     6     6     1.05344552    -0.69449028  -258.88498450    -0.00003468    -0.00000151  0.20D-06  0.94D-07   940.33
    6     1     1     1.06064598    -0.70710108  -259.02404440    -0.00000204    -0.00000010  0.14D-07  0.90D-08  1164.29
    6     2     2     1.06064596    -0.70710108  -259.02404440    -0.00000204    -0.00000010  0.14D-07  0.90D-08  1164.29
    6     3     3     1.06064599    -0.70710108  -259.02404440    -0.00000204    -0.00000010  0.14D-07  0.90D-08  1164.29
    6     4     4     1.05347563    -0.69449186  -258.88498608    -0.00000158    -0.00000008  0.94D-08  0.63D-08  1164.29
    6     5     5     1.05347563    -0.69449186  -258.88498608    -0.00000158    -0.00000008  0.94D-08  0.63D-08  1164.29
    6     6     6     1.05347561    -0.69449186  -258.88498608    -0.00000158    -0.00000008  0.94D-08  0.63D-08  1164.29
    7     1     1     1.06064483    -0.70710118  -259.02404450    -0.00000010    -0.00000001  0.16D-08  0.43D-09  1387.57
    7     2     2     1.06064484    -0.70710118  -259.02404450    -0.00000010    -0.00000001  0.16D-08  0.43D-09  1387.57
    7     3     3     1.06064485    -0.70710118  -259.02404450    -0.00000010    -0.00000001  0.16D-08  0.43D-09  1387.57
    7     4     4     1.05347840    -0.69449194  -258.88498616    -0.00000008    -0.00000001  0.14D-08  0.26D-09  1387.57
    7     5     5     1.05347840    -0.69449194  -258.88498616    -0.00000008    -0.00000001  0.14D-08  0.26D-09  1387.57
    7     6     6     1.05347840    -0.69449194  -258.88498616    -0.00000008    -0.00000001  0.14D-08  0.26D-09  1387.57


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.0%
 S   1.2%  51.7%
 P   0.5%  27.6%  11.7%

 Initialization:   1.9%
 Other:            2.3%

 Total CPU:     1387.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222022200/000          -0.0000003   0.0000007   0.9318301   0.2086375  -0.0000637  -0.0019986
 222222202220/0000          -0.0002832   0.9318299  -0.0000007  -0.0014226  -0.1512805  -0.1436873
 22222220222/00000           0.9318298   0.0002832   0.0000003   0.0014052  -0.1436947   0.1512745
 2222222022200000/           0.0000001  -0.0000002  -0.2093083   0.9294030  -0.0002838  -0.0089029
 222222202220000/0          -0.0000636   0.2093089  -0.0000002   0.0063371   0.6738968   0.6400718
 22222220222000/00          -0.2093096  -0.0000636  -0.0000001   0.0062596  -0.6401030   0.6738677
 2222220022202/000           0.0000000  -0.0000001  -0.1131190  -0.0271563   0.0000083   0.0002601
 2222220022220/000           0.0000000  -0.0000001  -0.1131190  -0.0271563   0.0000083   0.0002601
 222222002222/0000           0.0000344  -0.1131190   0.0000001   0.0001852   0.0196907   0.0187024
 22222200222/20000          -0.1131190  -0.0000344  -0.0000000  -0.0001829   0.0187033  -0.0196899
 222222002220/2000           0.0000344  -0.1131190   0.0000001   0.0001852   0.0196907   0.0187024
 22222200222/02000          -0.1131190  -0.0000344  -0.0000000  -0.0001829   0.0187033  -0.0196899
 2222220022220000/          -0.0000000   0.0000000   0.0232037  -0.1032634   0.0000315   0.0009892
 2222220022202000/          -0.0000000   0.0000000   0.0232037  -0.1032634   0.0000315   0.0009892
 2222220022200200/          -0.0000000   0.0000000   0.0227479  -0.1015824   0.0000310   0.0009731
 222222/\22200000/          -0.0000000   0.0000000   0.0197786  -0.0758449   0.0000232   0.0007265
 222222002222000/0           0.0000071  -0.0232038   0.0000000  -0.0007041  -0.0748748  -0.0711166
 222222002220020/0           0.0000071  -0.0232038   0.0000000  -0.0007041  -0.0748748  -0.0711166
 22222200222020/00           0.0232038   0.0000071   0.0000000  -0.0006955   0.0711201  -0.0748716
 22222200222002/00           0.0232038   0.0000071   0.0000000  -0.0006955   0.0711201  -0.0748716
 222222002220200/0           0.0000069  -0.0227478   0.0000000  -0.0006926  -0.0736560  -0.0699590
 22222200222200/00           0.0227478   0.0000069   0.0000000  -0.0006842   0.0699624  -0.0736529
 222222/\2220000/0           0.0000060  -0.0197786   0.0000000  -0.0005171  -0.0549940  -0.0522337
 222222/\222000/00           0.0197785   0.0000060   0.0000000  -0.0005108   0.0522363  -0.0549917

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.969439   -0.000295   -0.000000    0.035883    0.000011
 2           0.000001    0.000295    0.969439    0.000000    0.000011   -0.035883
 3           0.969439    0.000000   -0.000001    0.035883    0.000000    0.000000
 4          -0.038041   -0.000256    0.000259    0.972406    0.006549    0.006630
 5           0.000012    0.026200    0.027583   -0.000297   -0.669720    0.705078
 6           0.000364   -0.027582    0.026198   -0.009315    0.705047    0.669688

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970103    0.000000   -0.000000   -0.000007    0.000704   -0.000741
 2           0.000000    0.970103    0.000000    0.000007    0.000741    0.000704
 3          -0.000000    0.000000    0.970103   -0.001022    0.000000    0.000010
 4          -0.000007    0.000007   -0.001022    0.973194   -0.000000    0.000000
 5           0.000704    0.000741    0.000000   -0.000000    0.973194    0.000000
 6          -0.000741    0.000704    0.000010    0.000000    0.000000    0.973194


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96943939 (fixed)   0.97042485 (relaxed)   0.97010274 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00183121   -0.00255139   -0.61132346
 Singles      0.01621391   -0.05880332   -0.06613111
 Pairs        0.04454197   -0.00000829   -0.02964661
 Total        1.06258709   -0.06136300   -0.70710118
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.31676033
 Nuclear energy                         0.00000000
 Kinetic energy                       178.84908178
 One electron energy                 -462.24228313
 Two electron energy                  203.21823863
 Virial quotient                       -1.44828278
 Correlation energy                    -0.70728417
 !MRCI STATE 1.2 Energy              -259.024044501928

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -259.06831136 (Davidson, fixed reference)
 Cluster corrected energies          -259.06781252 (Davidson, relaxed reference)
 Cluster corrected energies          -259.06831136 (Davidson, rotated reference)

 Cluster corrected energies          -259.06596823 (Pople, fixed reference)
 Cluster corrected energies          -259.06547157 (Pople, relaxed reference)
 Cluster corrected energies          -259.06596823 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96943938 (fixed)   0.97042485 (relaxed)   0.97010274 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00183121   -0.00255139   -0.63700436
 Singles      0.01621392   -0.05880333   -0.06613112
 Pairs        0.04454197    0.02727991   -0.00396570
 Total        1.06258710   -0.03407480   -0.70710118
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.31676033
 Nuclear energy                         0.00000000
 Kinetic energy                       178.84908166
 One electron energy                 -462.24228331
 Two electron energy                  203.21823880
 Virial quotient                       -1.44828278
 Correlation energy                    -0.70728417
 !MRCI STATE 2.2 Energy              -259.024044501914

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -259.06831137 (Davidson, fixed reference)
 Cluster corrected energies          -259.06781253 (Davidson, relaxed reference)
 Cluster corrected energies          -259.06831137 (Davidson, rotated reference)

 Cluster corrected energies          -259.06596824 (Pople, fixed reference)
 Cluster corrected energies          -259.06547158 (Pople, relaxed reference)
 Cluster corrected energies          -259.06596824 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96943942 (fixed)   0.97042484 (relaxed)   0.97010273 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00183121   -0.00255139   -0.61133122
 Singles      0.01621393   -0.05880334   -0.06613113
 Pairs        0.04454197   -0.00000002   -0.02963884
 Total        1.06258711   -0.06135475   -0.70710118
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.31676033
 Nuclear energy                         0.00000000
 Kinetic energy                       178.84908264
 One electron energy                 -462.24228400
 Two electron energy                  203.21823950
 Virial quotient                       -1.44828277
 Correlation energy                    -0.70728417
 !MRCI STATE 3.2 Energy              -259.024044500882

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -259.06831137 (Davidson, fixed reference)
 Cluster corrected energies          -259.06781254 (Davidson, relaxed reference)
 Cluster corrected energies          -259.06831137 (Davidson, rotated reference)

 Cluster corrected energies          -259.06596824 (Pople, fixed reference)
 Cluster corrected energies          -259.06547159 (Pople, relaxed reference)
 Cluster corrected energies          -259.06596824 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.97240583 (fixed)   0.97355556 (relaxed)   0.97319379 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00224917   -0.00318385   -0.60467705
 Singles      0.01124671   -0.05326034   -0.05784194
 Pairs        0.04235197   -0.00434666   -0.03197294
 Total        1.05584786   -0.06079085   -0.69449194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.19067721
 Nuclear energy                         0.00000000
 Kinetic energy                       178.72036251
 One electron energy                 -458.32342554
 Two electron energy                  199.43843938
 Virial quotient                       -1.44854779
 Correlation energy                    -0.69430895
 !MRCI STATE 4.2 Energy              -258.884986159813

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -258.92376183 (Davidson, fixed reference)
 Cluster corrected energies          -258.92321711 (Davidson, relaxed reference)
 Cluster corrected energies          -258.92376183 (Davidson, rotated reference)

 Cluster corrected energies          -258.92150514 (Pople, fixed reference)
 Cluster corrected energies          -258.92096881 (Pople, relaxed reference)
 Cluster corrected energies          -258.92150514 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.70507766 (fixed)   0.97355556 (relaxed)   0.97319379 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00224917   -0.00318385   -0.17101315
 Singles      0.01124671   -0.05326034   -0.05784194
 Pairs        0.04235197   -0.46222977   -0.46563685
 Total        1.05584786   -0.51867396   -0.69449194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.19067721
 Nuclear energy                         0.00000000
 Kinetic energy                       178.72036240
 One electron energy                 -458.32342548
 Two electron energy                  199.43843932
 Virial quotient                       -1.44854779
 Correlation energy                    -0.69430895
 !MRCI STATE 5.2 Energy              -258.884986159148

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -258.92376183 (Davidson, fixed reference)
 Cluster corrected energies          -258.92321711 (Davidson, relaxed reference)
 Cluster corrected energies          -258.92376183 (Davidson, rotated reference)

 Cluster corrected energies          -258.92150514 (Pople, fixed reference)
 Cluster corrected energies          -258.92096880 (Pople, relaxed reference)
 Cluster corrected energies          -258.92150514 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.70504730 (fixed)   0.97355556 (relaxed)   0.97319379 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00224917   -0.00318385   -0.19298673
 Singles      0.01124671   -0.05326034   -0.05784194
 Pairs        0.04235197   -0.43902901   -0.44366327
 Total        1.05584786   -0.49547320   -0.69449194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.19067721
 Nuclear energy                         0.00000000
 Kinetic energy                       178.72036241
 One electron energy                 -458.32342549
 Two electron energy                  199.43843933
 Virial quotient                       -1.44854779
 Correlation energy                    -0.69430895
 !MRCI STATE 6.2 Energy              -258.884986159127

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -258.92376183 (Davidson, fixed reference)
 Cluster corrected energies          -258.92321711 (Davidson, relaxed reference)
 Cluster corrected energies          -258.92376183 (Davidson, rotated reference)

 Cluster corrected energies          -258.92150514 (Pople, fixed reference)
 Cluster corrected energies          -258.92096880 (Pople, relaxed reference)
 Cluster corrected energies          -258.92150514 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      246.07       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1541.03   1539.14      0.89      0.05      0.59
 REAL TIME  *      1571.64 SEC
 DISK USED  *       283.34 MB (local),        3.38 GB (total)
 SF USED    *         2.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -259.06831136  AU                              
 SETTING HLSDIAG(2)     =      -259.06831137  AU                              
 SETTING HLSDIAG(3)     =      -259.06831137  AU                              
 SETTING HLSDIAG(4)     =      -258.92376183  AU                              
 SETTING HLSDIAG(5)     =      -258.92376183  AU                              
 SETTING HLSDIAG(6)     =      -258.92376183  AU                              


         HLSDIAG
    -259.0683114
    -259.0683114
    -259.0683114
    -258.9237618
    -258.9237618
    -258.9237618
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -259.024045   -259.024045   -259.024045   -258.884986   -258.884986   -258.884986
 Replaced energies:   -259.068311   -259.068311   -259.068311   -258.923762   -258.923762   -258.923762



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -259.06831137

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     300.83     117.69
                           -0.00     300.83      -0.00      -0.80     -85.36     -81.03      -0.00       0.00      -0.09      -0.04

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.09       0.04
                         -300.83       0.00      -0.00      -0.79      81.03     -85.36      -0.00      -0.00     300.83     117.69

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -300.83      -0.09      -0.00      -0.79
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.09    -300.83       0.00       0.80

    4   4.2  0.5  0.5       0.00       0.00       0.00   31724.96       0.00       0.00    -117.69      -0.04       0.79       0.00
                            0.80       0.79      -0.00      -0.00      -0.44       0.01       0.04    -117.69      -0.80      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   31724.96       0.00       0.04      -0.00     -81.06     -31.64
                           85.36     -81.03       0.00       0.44       0.00      45.94       0.00       0.04     -85.34     -33.31

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   31724.96       1.13       0.00      85.33      33.31
                           81.03      85.36      -0.00      -0.01     -45.94       0.00      -0.00       1.13     -81.05     -31.64

    7   1.2  0.5 -0.5       0.00      -0.00    -300.83    -117.69       0.04       1.13       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.09      -0.04      -0.00       0.00       0.00    -300.83       0.00       0.80

    8   2.2  0.5 -0.5       0.00      -0.00      -0.09      -0.04      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     300.83     117.69      -0.04      -1.13     300.83      -0.00       0.00       0.79

    9   3.2  0.5 -0.5     300.83       0.09      -0.00       0.79     -81.06      85.33       0.00       0.00       0.00       0.00
                            0.09    -300.83      -0.00       0.80      85.34      81.05      -0.00      -0.00       0.00      -0.00

   10   4.2  0.5 -0.5     117.69       0.04      -0.79       0.00     -31.64      33.31       0.00       0.00       0.00   31724.96
                            0.04    -117.69      -0.80       0.00      33.31      31.64      -0.80      -0.79       0.00       0.00

   11   5.2  0.5 -0.5      -0.04       0.00      81.06      31.64      -0.00      -0.31       0.00       0.00       0.00       0.00
                            0.00       0.04     -85.34     -33.31      -0.00       0.31     -85.36      81.03      -0.00      -0.44

   12   6.2  0.5 -0.5      -1.13      -0.00     -85.33     -33.31       0.31      -0.00       0.00       0.00       0.00       0.00
                           -0.00       1.13     -81.05     -31.64      -0.31      -0.00     -81.03     -85.36       0.00       0.01


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5      -0.04      -1.13
                           -0.00       0.00

    2   2.2  0.5  0.5       0.00      -0.00
                           -0.04      -1.13

    3   3.2  0.5  0.5      81.06     -85.33
                           85.34      81.05

    4   4.2  0.5  0.5      31.64     -33.31
                           33.31      31.64

    5   5.2  0.5  0.5      -0.00       0.31
                            0.00       0.31

    6   6.2  0.5  0.5      -0.31      -0.00
                           -0.31       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                           85.36      81.03

    8   2.2  0.5 -0.5       0.00       0.00
                          -81.03      85.36

    9   3.2  0.5 -0.5       0.00       0.00
                            0.00      -0.00

   10   4.2  0.5 -0.5       0.00       0.00
                            0.44      -0.01

   11   5.2  0.5 -0.5   31724.96       0.00
                           -0.00     -45.94

   12   6.2  0.5 -0.5       0.00   31724.96
                           45.94      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -259.07106054    -0.00274917     -603.37      0.00000000        0.00      0.0000
     2  -259.07106054    -0.00274917     -603.37      0.00000000        0.00      0.0000
     3  -259.06694271     0.00136867      300.39      0.00411784      903.76      0.1121
     4  -259.06694271     0.00136867      300.39      0.00411784      903.76      0.1121
     5  -259.06694270     0.00136867      300.39      0.00411784      903.76      0.1121
     6  -259.06694270     0.00136867      300.39      0.00411784      903.76      0.1121
     7  -258.92417262     0.14413875    31634.80      0.14688792    32238.17      3.9970
     8  -258.92417262     0.14413875    31634.80      0.14688792    32238.17      3.9970
     9  -258.92355051     0.14476087    31771.34      0.14751003    32374.71      4.0140
    10  -258.92355051     0.14476087    31771.34      0.14751003    32374.71      4.0140
    11  -258.92355050     0.14476087    31771.34      0.14751004    32374.71      4.0140
    12  -258.92355050     0.14476087    31771.34      0.14751004    32374.71      4.0140


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.189431454  -0.545371489   0.100356565   0.016267699   0.809335559  -0.036033885  -0.004087967  -0.001030222
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000402   0.000000140   0.000071724  -0.000016634  -0.000008589  -0.000000671   0.000000000  -0.000000003
                         0.189432100  -0.545372713   0.642383133   0.104116953  -0.492624939   0.021936709  -0.004087966  -0.001030224

    3    3.2  0.5  0.5   0.545338361   0.189419947   0.009335689  -0.057773923  -0.013931563  -0.312990397   0.001028739  -0.004082080
                        -0.006164480  -0.002140746  -0.120021899   0.740488530   0.002153299   0.048386574  -0.000055222   0.000219137

    4    4.2  0.5  0.5   0.003991266   0.001356278  -0.000037440   0.000215651   0.000031711   0.001171425  -0.137104649   0.559952267
                        -0.000054439   0.000011510   0.000465227  -0.002766599  -0.000020609  -0.000180396   0.003746700  -0.030970316

    5    5.2  0.5  0.5  -0.000953553   0.002741345   0.000258605   0.000041775   0.002083866  -0.000093140  -0.385384889  -0.097303843
                        -0.001003211   0.002888276   0.001742280   0.000283254  -0.001336214   0.000059557  -0.406025600  -0.102314292

    6    6.2  0.5  0.5   0.000965039  -0.002901399  -0.000271677  -0.000046235  -0.002195686   0.000086522   0.407355359   0.096964340
                        -0.000951859   0.002741780   0.001649653   0.000294596  -0.001268298   0.000058214  -0.385481591  -0.096840980

    7    1.2  0.5 -0.5   0.545338499   0.189419995  -0.001268744   0.007826976   0.035612678   0.799875083   0.001028758  -0.004082156
                        -0.005998559  -0.002083563   0.016218148  -0.100050882  -0.005493453  -0.123385162  -0.000054913   0.000217897

    8    2.2  0.5 -0.5  -0.005998712  -0.002083168   0.103801111  -0.640420845   0.003344967   0.075093372  -0.000054910   0.000217897
                        -0.545339722  -0.189420645   0.008103675  -0.050172050   0.021680185   0.486867865  -0.001028759   0.004082155

    9    3.2  0.5 -0.5  -0.189432034   0.545373176   0.742738894   0.120384419   0.316708445  -0.014096990   0.004087957   0.001030220
                        -0.000057180   0.000165912   0.000154004   0.000053457   0.000104830  -0.000004228   0.000001243   0.000000310

   10    4.2  0.5 -0.5  -0.001356069   0.003991623  -0.002774991  -0.000466730  -0.001185234   0.000034482  -0.560807040  -0.137109453
                         0.000026427   0.000010536  -0.000000778   0.000001042   0.000000299   0.000015534  -0.001079757   0.003566568

   11    5.2  0.5 -0.5  -0.002709411  -0.000942461   0.000279133  -0.001716804   0.000101131   0.002263217   0.091711972  -0.363195097
                         0.002918254   0.001013638   0.000063740  -0.000393701   0.000044662   0.001002904  -0.107355329   0.425990167

   12    6.2  0.5 -0.5   0.002931381   0.000975450   0.000297305  -0.001665817  -0.000076635  -0.001976665  -0.101988310   0.427323190
                         0.002709702   0.000941187  -0.000023118   0.000142190   0.000070724   0.001588210  -0.091534929   0.363220782


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5   0.001545884  -0.000000000  -0.000000000   0.002633404
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000128303  -0.000027259   0.000021339   0.000075317
                         0.001503642  -0.000031958   0.000012358  -0.002653135

    3    3.2  0.5  0.5   0.000034218   0.003026681   0.000013239  -0.000020087
                         0.000024364  -0.000394223   0.000076727  -0.000014301

    4    4.2  0.5  0.5   0.012167091   0.809297036   0.003500714  -0.000764454
                         0.003774204  -0.105345742   0.020491841   0.001011084

    5    5.2  0.5  0.5  -0.259701060   0.005039420  -0.004139264  -0.499379884
                        -0.291596308   0.006229705  -0.002402883   0.514507455

    6    6.2  0.5  0.5   0.323303385  -0.002733456  -0.003961963   0.496844772
                        -0.276851952   0.006892489  -0.002471424   0.488420522

    7    1.2  0.5 -0.5   0.000000000  -0.001540014  -0.002397200  -0.000000000
                        -0.000000000   0.000134581   0.001090067   0.000000000

    8    2.2  0.5 -0.5  -0.000024374   0.000258719  -0.001166796   0.000014310
                         0.000034210   0.001486763  -0.002383985  -0.000020083

    9    3.2  0.5 -0.5   0.003049510  -0.000031967   0.000012365  -0.000019709
                         0.000129231   0.000027251  -0.000021333  -0.000075325

   10    4.2  0.5 -0.5   0.815395506  -0.011792323   0.001114417  -0.005295657
                         0.034490382   0.004819112   0.000603956  -0.020102901

   11    5.2  0.5 -0.5   0.004477941   0.233329391   0.667562396  -0.002773344
                        -0.006644776  -0.313098135   0.261646015   0.003900755

   12    6.2  0.5 -0.5  -0.003323118  -0.346177934  -0.250104101  -0.002583579
                        -0.006628355  -0.247654841   0.650274766   0.003889757


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   3.588%  29.743%   1.007%   0.026%  65.502%   0.130%   0.002%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   3.588%  29.743%  41.266%   1.084%  24.268%   0.048%   0.002%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  29.743%   3.588%   1.449%  55.166%   0.020%  10.030%   0.000%   0.002%   0.000%   0.001%
    4    4.2  0.5  0.5   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%   1.881%  31.451%   0.016%  66.606%
    5    5.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%  31.338%   1.994%  15.247%   0.006%
    6    6.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%  31.453%   1.878%  18.117%   0.005%
    7    1.2  0.5 -0.5  29.743%   3.588%   0.026%   1.007%   0.130%  65.502%   0.000%   0.002%   0.000%   0.000%
    8    2.2  0.5 -0.5  29.743%   3.588%   1.084%  41.266%   0.048%  24.268%   0.000%   0.002%   0.000%   0.000%
    9    3.2  0.5 -0.5   3.588%  29.743%  55.166%   1.449%  10.030%   0.020%   0.002%   0.000%   0.001%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%  31.451%   1.881%  66.606%   0.016%
   11    5.2  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%   1.994%  31.338%   0.006%  15.247%
   12    6.2  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%   1.878%  31.453%   0.005%  18.117%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.001%
    2    2.2  0.5  0.5   0.000%   0.001%
    3    3.2  0.5  0.5   0.000%   0.000%
    4    4.2  0.5  0.5   0.043%   0.000%
    5    5.2  0.5  0.5   0.002%  51.410%
    6    6.2  0.5  0.5   0.002%  48.541%
    7    1.2  0.5 -0.5   0.001%   0.000%
    8    2.2  0.5 -0.5   0.001%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.043%
   11    5.2  0.5 -0.5  51.410%   0.002%
   12    6.2  0.5 -0.5  48.541%   0.002%


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
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      246.07       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6388.27   4847.23   1539.14      0.89      0.05      0.59
 REAL TIME  *      6473.58 SEC
 DISK USED  *       283.34 MB (local),        3.38 GB (total)
 SF USED    *         2.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -258.923550504784

              CI           MULTI         RHF-SCF
   -258.88498616   -258.19049422   -258.29906939
 **********************************************************************************************************************************
 Molpro calculation terminated
