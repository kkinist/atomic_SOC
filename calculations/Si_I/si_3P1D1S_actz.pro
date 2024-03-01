
 Working directory              : /wrk/irikura/molpro.Qmsw5YqFfP/
 Global scratch directory       : /wrk/irikura/molpro.Qmsw5YqFfP/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Qmsw5YqFfP/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Si SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Si};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=14,sym=1,spin=2}
 
 {multi
     wf,sym=1,spin=2;state,3;
     wf,sym=1,spin=0;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=2;state,3; save,5102.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,6; save,5101.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5102.2,5101.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Si SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 23-Feb-24          TIME: 16:21:41  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry SI     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SI     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SI     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SI     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  SI     14.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   14
 NUMBER OF PRIMITIVE AOS:         114
 NUMBER OF SYMMETRY AOS:          100
 NUMBER OF CONTRACTIONS:           75   (   33Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     6.816 MB (compressed) written to integral file ( 19.3%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     36 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      172985.  Node maximum:      175449. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.221E-02 0.681E-02 0.586E-01 0.168E+00 0.168E+00 0.168E+00 0.168E+00 0.168E+00
         2 0.131E-01 0.131E-01 0.131E-01 0.287E-01 0.287E-01 0.287E-01 0.105E+00 0.105E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.64      0.41
 REAL TIME  *         1.20 SEC
 DISK USED  *        29.14 MB (local),      400.68 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   5
 Initial beta  occupancy:   3   3

 NELEC=   14   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -289.44294747    -289.44294747     0.00D+00     0.13D+00     0     0       0.00      0.00    start
   2     -289.45368710      -0.01073964     0.25D-02     0.98D-02     1     0       0.00      0.00    diag2
   3     -289.45491227      -0.00122516     0.94D-03     0.28D-02     2     0       0.01      0.01    diag2
   4     -289.45514213      -0.00022986     0.35D-03     0.14D-02     3     0       0.00      0.01    diag2
   5     -289.45517477      -0.00003265     0.13D-03     0.85D-03     4     0       0.01      0.02    diag2
   6     -289.45517525      -0.00000047     0.19D-04     0.16D-03     5     0       0.00      0.02    diag2
   7     -289.45517525      -0.00000000     0.18D-05     0.10D-04     6     0       0.00      0.02    diag2
   8     -289.45517525      -0.00000000     0.29D-06     0.18D-05     7     0       0.01      0.03    fixocc
   9     -289.45517525      -0.00000000     0.25D-07     0.26D-06     0     0       0.00      0.03    diag

 Final alpha occupancy:   3   5
 Final beta  occupancy:   3   3

 !RHF STATE 1.1 Energy               -289.455175250784
  RHF One-electron energy            -401.378079999733
  RHF Two-electron energy             111.922904748949
  RHF Kinetic energy                  293.246498577839
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.987071206833

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -68.97749     1  1  s    0.99951
    2.1     2.00000    -6.18343     1  2  s    0.99996
    3.1     2.00000    -0.54237     1  3  s    1.00893
    1.2     2.00000    -4.25613     1  1  px   0.99691
    2.2     2.00000    -4.25495     1  1  pz   1.00096
    3.2     2.00000    -4.25495     1  1  py   1.00030
    4.2     1.00000    -0.29682     1  2  py   1.00849
    5.2     1.00000    -0.29682     1  2  pz   1.00915


 HOMO      5.2    -0.296819 =      -8.0769eV
 LUMO      6.2    -0.016452 =      -0.4477eV
 LUMO-HOMO         0.280368 =       7.6292eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.47       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.67      0.03      0.41
 REAL TIME  *         2.28 SEC
 DISK USED  *        29.72 MB (local),      407.64 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.317D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.216D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.145D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 3 5 1   6 2 4 3 5 5 4 3 2 6   1 5 4 3 2 6 1 5 4 3   6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.536D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.196D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.412D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.420D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.195D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.576D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 3 2 1 3   2 1 7 910 4 8 5 6 7  10 9 8 4 6 5 1 3 2 7  10 9 8 4 6 5 1 3 2 1
                                        3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  317  ( 11 closed/active, 168 closed/virtual, 0 active/active, 138 active/virtual )
 Total number of variables:    443
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0   -289.41783814    -289.43555579   -0.01771764    0.06354702 0.00000257 0.00000000  0.32E+00      0.13
   2    7   12    0   -289.43526066    -289.43527870   -0.00001804    0.00448440 0.00000002 0.00000000  0.65E-02      0.32
   3    7   14    0   -289.43527871    -289.43527871   -0.00000000    0.00000636 0.00000001 0.00000000  0.92E-05      0.47

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.88E-08)
                       Final energy:   -289.43527871
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -289.464888778648
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22999015
 One electron energy                          -401.31080987
 Two electron energy                           111.84592109
 Virial ratio                                    1.98715990
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -289.464888778515
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22999016
 One electron energy                          -401.31080991
 Two electron energy                           111.84592113
 Virial ratio                                    1.98715990
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -289.464888778502
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22999016
 One electron energy                          -401.31080991
 Two electron energy                           111.84592113
 Virial ratio                                    1.98715990
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -289.425599747660
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22999015
 One electron energy                          -401.31080987
 Two electron energy                           111.88521013
 Virial ratio                                    1.98702592
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -289.425599747642
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22999015
 One electron energy                          -401.31080987
 Two electron energy                           111.88521013
 Virial ratio                                    1.98702592
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -289.425599747342
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22999016
 One electron energy                          -401.31080991
 Two electron energy                           111.88521016
 Virial ratio                                    1.98702592
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -289.425599747316
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22999016
 One electron energy                          -401.31080991
 Two electron energy                           111.88521016
 Virial ratio                                    1.98702592
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -289.425599747200
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22999017
 One electron energy                          -401.31080992
 Two electron energy                           111.88521017
 Virial ratio                                    1.98702592
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -289.394843355479
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.19551388
 One electron energy                          -401.20237625
 Two electron energy                           111.80753290
 Virial ratio                                    1.98703708
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999873
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999939504
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000046411
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000000016
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.886581361305
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000052282
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999980576
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.113422411195
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000863
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999510
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999905
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.999999999914
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.995536689242
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000154
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999999838
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.004463613937
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999264
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000060986
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999953684
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.000000000070
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.117881949454
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999947564
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000019586
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.882113974868
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 3 4 6 2 1   5 3 4 6 2 5 3 4 6 2   1 5 3 4 6 2 1 5 3 4   6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 2 1 3 1   2 3 9 710 8 4 6 5 9   7 810 4 6 5 1 2 3 7   9 810 4 6 5 1 2 3 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -68.98359     1  1  s    0.99951
    2.1     2.00000    -6.18898     1  2  s    0.99984
    3.1     1.95834    -0.53909     1  3  s    1.01629
    1.2     2.00000    -4.26139     1  1  px   1.00003
    2.2     2.00000    -4.26139     1  1  py   1.00003
    3.2     2.00000    -4.26139     1  1  pz   1.00003
    4.2     0.68055    -0.07070     1  2  pz   0.99624
    5.2     0.68055    -0.07070     1  2  py   0.99624
    6.2     0.68055    -0.07070     1  2  px   0.99624
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a          0.99181496     -0.00002691     -0.00001117
 2 aa0          0.00001116     -0.00024395      0.99181493
 2 0aa          0.00002691      0.99181493      0.00024395
 0 a2a         -0.12768353      0.00000346      0.00000144
 0 2aa         -0.00000346     -0.12768353     -0.00003141
 0 aa2         -0.00000144      0.00003141     -0.12768353
 
 Energy:     -289.46488878   -289.46488878   -289.46488878
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.00000004     -0.02705102      0.00000558      0.00001679      0.80936159      0.56063921
 2 002         -0.00007770      0.71445320     -0.00000539     -0.00000162     -0.38125393      0.56063920
 2 b0a         -0.70131908     -0.00007764      0.00000282      0.00000247     -0.00000256      0.00000000
 2 a0b          0.70131908      0.00007764     -0.00000282     -0.00000247      0.00000256     -0.00000000
 2 0ab          0.00000282      0.00000276      0.70131908     -0.00009261     -0.00000474     -0.00000000
 2 0ba         -0.00000282     -0.00000276     -0.70131908      0.00009261      0.00000474      0.00000000
 2 ba0         -0.00000247      0.00000628     -0.00009261     -0.70131908      0.00001476      0.00000000
 2 ab0          0.00000247     -0.00000628      0.00009261      0.70131908     -0.00001476     -0.00000000
 2 200          0.00007766     -0.68740219     -0.00000020     -0.00001517     -0.42810767      0.56063920
 0 220         -0.00001000      0.09197674     -0.00000069     -0.00000021     -0.04908158     -0.13790220
 0 022          0.00001000     -0.08849427     -0.00000003     -0.00000195     -0.05511340     -0.13790220
 0 202          0.00000001     -0.00348247      0.00000072      0.00000216      0.10419499     -0.13790220
 0 a2b         -0.09028589     -0.00001000      0.00000036      0.00000032     -0.00000033      0.00000000
 0 b2a          0.09028589      0.00001000     -0.00000036     -0.00000032      0.00000033     -0.00000000
 0 2ab         -0.00000036     -0.00000035     -0.09028589      0.00001192      0.00000061      0.00000000
 0 2ba          0.00000036      0.00000035      0.09028589     -0.00001192     -0.00000061     -0.00000000
 0 ab2         -0.00000032      0.00000081     -0.00001192     -0.09028589      0.00000190      0.00000000
 0 ba2          0.00000032     -0.00000081      0.00001192      0.09028589     -0.00000190     -0.00000000
 
 Energy:     -289.42559975   -289.42559975   -289.42559975   -289.42559975   -289.42559975   -289.39484336
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.67       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.16      0.48      0.03      0.41
 REAL TIME  *         2.89 SEC
 DISK USED  *        31.13 MB (local),      424.59 MB (total)
 SF USED    *         4.18 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -289.4648888   2.0
    -289.4648888   2.0
    -289.4648888   2.0
    -289.4255997   6.0
    -289.4255997   6.0
    -289.4255997   6.0
    -289.4255997   6.0
    -289.4255997   6.0
    -289.3948434  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 14
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      161 conf      267 CSFs
 N-1 el internal:      222 conf      690 CSFs
 N-2 el internal:      122 conf      670 CSFs

 Number of electrons in valence space:                     12
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.19 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -289.46488878
     2      -289.46488878
     3      -289.46488878

 Number of blocks in overlap matrix:   117   Smallest eigenvalue:  0.16D-01
 Number of N-2 electron functions:     162
 Number of N-1 electron functions:     690

 Number of internal configurations:                  132
 Number of singly external configurations:         22788
 Number of doubly external configurations:        176994
 Total number of contracted configurations:       199914
 Total number of uncontracted configurations:     749106

 Diagonal Coupling coefficients finished.               Storage:    238061 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    259818 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.46488878     0.00000000    -0.33651195  0.40D-01  0.28D-01     0.03
    1     2     2     1.00000000     0.00000000  -289.46488878    -0.00000000    -0.33632809  0.40D-01  0.28D-01     0.03
    1     3     3     1.00000000     0.00000000  -289.46488878     0.00000000    -0.33673359  0.41D-01  0.28D-01     0.03
    2     1     1     1.05788214    -0.30976904  -289.77465782    -0.30976904    -0.00359967  0.10D-02  0.51D-03     0.37
    2     2     2     1.05810331    -0.30972259  -289.77461137    -0.30972259    -0.00365369  0.11D-02  0.52D-03     0.37
    2     3     3     1.05840033    -0.30966572  -289.77455450    -0.30966572    -0.00371700  0.11D-02  0.53D-03     0.37
    3     1     1     1.05126595    -0.31332437  -289.77821315    -0.00355534    -0.00008496  0.11D-04  0.20D-04     0.74
    3     2     2     1.05128500    -0.31332296  -289.77821174    -0.00360037    -0.00008601  0.11D-04  0.20D-04     0.74
    3     3     3     1.05131098    -0.31332146  -289.77821024    -0.00365574    -0.00008713  0.12D-04  0.21D-04     0.74
    4     1     1     1.05177002    -0.31342188  -289.77831066    -0.00009751    -0.00000457  0.53D-06  0.15D-05     1.06
    4     2     2     1.05177044    -0.31342175  -289.77831053    -0.00009878    -0.00000465  0.54D-06  0.15D-05     1.06
    4     3     3     1.05177157    -0.31342162  -289.77831040    -0.00010016    -0.00000473  0.55D-06  0.16D-05     1.06
    5     1     1     1.05197780    -0.31342779  -289.77831657    -0.00000591    -0.00000038  0.55D-07  0.94D-07     1.41
    5     2     2     1.05197762    -0.31342778  -289.77831656    -0.00000604    -0.00000038  0.56D-07  0.95D-07     1.41
    5     3     3     1.05197716    -0.31342778  -289.77831656    -0.00000615    -0.00000039  0.57D-07  0.97D-07     1.41
    6     1     1     1.05193484    -0.31342825  -289.77831703    -0.00000046    -0.00000002  0.28D-08  0.48D-08     1.73
    6     2     2     1.05193448    -0.31342825  -289.77831703    -0.00000047    -0.00000002  0.28D-08  0.48D-08     1.73
    6     3     3     1.05193405    -0.31342825  -289.77831703    -0.00000047    -0.00000002  0.29D-08  0.49D-08     1.73


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   0.6%   2.3%
 P   1.2%  20.2%  22.5%

 Initialization:   1.2%
 Other:           50.9%

 Total CPU:        1.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//0           0.0000000  -0.0000000   0.9681904
 22222/0/          -0.0000000   0.9681902   0.0000000
 222220//           0.9681901   0.0000000  -0.0000000
 20222//2          -0.0000000   0.0000000  -0.1149006
 20222/2/           0.0000000  -0.1149002  -0.0000000
 202222//          -0.1148997  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.974936    0.000000
 2           0.974936    0.000000   -0.000000
 3           0.000000   -0.000000    0.974937

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.974936    0.000000   -0.000000
 2           0.000000    0.974936   -0.000000
 3          -0.000000   -0.000000    0.974937


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97493624 (fixed)   0.97498413 (relaxed)   0.97493624 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013524   -0.00022905   -0.25709228
 Singles      0.02628218   -0.04298974   -0.04869262
 Pairs        0.02565968   -0.00000000   -0.00764336
 Total        1.05207710   -0.04321879   -0.31342825
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46488878
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45506198
 One electron energy                 -401.14157744
 Two electron energy                  111.36326041
 Virial quotient                       -0.98747084
 Correlation energy                    -0.31342825
 !MRCI STATE 1.1 Energy              -289.778317029334

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79463946 (Davidson, fixed reference)
 Cluster corrected energies          -289.79460708 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79463946 (Davidson, rotated reference)

 Cluster corrected energies          -289.79178992 (Pople, fixed reference)
 Cluster corrected energies          -289.79176235 (Pople, relaxed reference)
 Cluster corrected energies          -289.79178992 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97493641 (fixed)   0.97498429 (relaxed)   0.97493641 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013523   -0.00022905   -0.25709250
 Singles      0.02628181   -0.04298960   -0.04869250
 Pairs        0.02565969    0.00000000   -0.00764325
 Total        1.05207674   -0.04321865   -0.31342825
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46488878
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45506061
 One electron energy                 -401.14157776
 Two electron energy                  111.36326073
 Virial quotient                       -0.98747085
 Correlation energy                    -0.31342825
 !MRCI STATE 2.1 Energy              -289.778317029243

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79463935 (Davidson, fixed reference)
 Cluster corrected energies          -289.79460697 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79463935 (Davidson, rotated reference)

 Cluster corrected energies          -289.79178983 (Pople, fixed reference)
 Cluster corrected energies          -289.79176226 (Pople, relaxed reference)
 Cluster corrected energies          -289.79178983 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97493662 (fixed)   0.97498449 (relaxed)   0.97493662 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013523   -0.00022905   -0.00025799
 Singles      0.02628131   -0.04298937   -0.04869233
 Pairs        0.02565976   -0.27020983   -0.26447793
 Total        1.05207629   -0.31342826   -0.31342825
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46488878
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45506059
 One electron energy                 -401.14157831
 Two electron energy                  111.36326129
 Virial quotient                       -0.98747085
 Correlation energy                    -0.31342825
 !MRCI STATE 3.1 Energy              -289.778317029157

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79463921 (Davidson, fixed reference)
 Cluster corrected energies          -289.79460683 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79463921 (Davidson, rotated reference)

 Cluster corrected energies          -289.79178971 (Pople, fixed reference)
 Cluster corrected energies          -289.79176214 (Pople, relaxed reference)
 Cluster corrected energies          -289.79178971 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.56       700     1000      520     2100     2140     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.01      1.83      0.48      0.03      0.41
 REAL TIME  *         5.20 SEC
 DISK USED  *        36.02 MB (local),      483.26 MB (total)
 SF USED    *        50.62 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -289.79463946  AU                              
 SETTING HLSDIAG(2)     =      -289.79463935  AU                              
 SETTING HLSDIAG(3)     =      -289.79463921  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 14
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      183 conf      236 CSFs
 N-1 el internal:      252 conf      504 CSFs
 N-2 el internal:      194 conf      516 CSFs

 Number of electrons in valence space:                     12
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -289.42559975
     2      -289.42559975
     3      -289.42559975
     4      -289.42559975
     5      -289.42559975
     6      -289.39484336

 Number of blocks in overlap matrix:   181   Smallest eigenvalue:  0.30D-01
 Number of N-2 electron functions:     248
 Number of N-1 electron functions:     504

 Number of internal configurations:                  130
 Number of singly external configurations:         16668
 Number of doubly external configurations:        271428
 Total number of contracted configurations:       288226
 Total number of uncontracted configurations:     579574

 Diagonal Coupling coefficients finished.               Storage:    261303 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    263334 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.42559975     0.00000000    -0.34588601  0.44D-01  0.32D-01     0.04
    1     2     2     1.00000000     0.00000000  -289.42559975     0.00000000    -0.34467289  0.42D-01  0.32D-01     0.04
    1     3     3     1.00000000     0.00000000  -289.42559975     0.00000000    -0.34564928  0.43D-01  0.32D-01     0.04
    1     4     4     1.00000000     0.00000000  -289.42559975     0.00000000    -0.34582027  0.44D-01  0.32D-01     0.04
    1     5     5     1.00000000     0.00000000  -289.42559975     0.00000000    -0.34507312  0.43D-01  0.32D-01     0.04
    1     6     6     1.00000000     0.00000000  -289.39484336    -0.00000000    -0.33033838  0.10D-01  0.50D-01     0.04
    2     1     1     1.06305883    -0.31729962  -289.74289937    -0.31729962    -0.00505107  0.13D-02  0.95D-03     1.01
    2     2     2     1.06272031    -0.31725482  -289.74285457    -0.31725482    -0.00509168  0.13D-02  0.97D-03     1.01
    2     3     3     1.06358931    -0.31712795  -289.74272770    -0.31712795    -0.00526850  0.14D-02  0.97D-03     1.01
    2     4     4     1.06378629    -0.31701089  -289.74261063    -0.31701089    -0.00541311  0.15D-02  0.10D-02     1.01
    2     5     5     1.06393126    -0.31694263  -289.74254238    -0.31694263    -0.00549589  0.15D-02  0.10D-02     1.01
    2     6     6     1.05278495    -0.30900582  -289.70384917    -0.30900582    -0.00392363  0.13D-02  0.74D-03     1.01
    3     1     1     1.05756155    -0.32202576  -289.74762551    -0.00472614    -0.00013334  0.27D-04  0.23D-04     1.94
    3     2     2     1.05760436    -0.32202118  -289.74762093    -0.00476636    -0.00013729  0.28D-04  0.24D-04     1.94
    3     3     3     1.05740168    -0.32201541  -289.74761515    -0.00488745    -0.00014029  0.28D-04  0.26D-04     1.94
    3     4     4     1.05759566    -0.32201540  -289.74761515    -0.00500452    -0.00014138  0.28D-04  0.26D-04     1.94
    3     5     5     1.05759765    -0.32201463  -289.74761438    -0.00507200    -0.00014271  0.28D-04  0.27D-04     1.94
    3     6     6     1.05025912    -0.31270813  -289.70755148    -0.00370231    -0.00012804  0.13D-04  0.33D-04     1.94
    4     1     1     1.05912298    -0.32217501  -289.74777476    -0.00014925    -0.00000483  0.11D-05  0.11D-05     2.87
    4     2     2     1.05911188    -0.32217459  -289.74777433    -0.00015341    -0.00000516  0.12D-05  0.12D-05     2.87
    4     3     3     1.05909571    -0.32217415  -289.74777390    -0.00015874    -0.00000545  0.12D-05  0.13D-05     2.87
    4     4     4     1.05910867    -0.32217410  -289.74777385    -0.00015870    -0.00000545  0.12D-05  0.12D-05     2.87
    4     5     5     1.05909840    -0.32217396  -289.74777371    -0.00015933    -0.00000557  0.13D-05  0.13D-05     2.87
    4     6     6     1.05166069    -0.31284675  -289.70769011    -0.00013862    -0.00000519  0.69D-06  0.16D-05     2.87
    5     1     1     1.05951434    -0.32218067  -289.74778041    -0.00000565    -0.00000021  0.36D-07  0.51D-07     3.85
    5     2     2     1.05951411    -0.32218063  -289.74778038    -0.00000605    -0.00000024  0.44D-07  0.57D-07     3.85
    5     3     3     1.05952077    -0.32218060  -289.74778035    -0.00000645    -0.00000026  0.47D-07  0.61D-07     3.85
    5     4     4     1.05951473    -0.32218060  -289.74778035    -0.00000650    -0.00000027  0.50D-07  0.63D-07     3.85
    5     5     5     1.05951782    -0.32218058  -289.74778033    -0.00000662    -0.00000028  0.54D-07  0.65D-07     3.85
    5     6     6     1.05198324    -0.31285280  -289.70769615    -0.00000605    -0.00000030  0.64D-07  0.75D-07     3.85
    6     1     1     1.05951608    -0.32218091  -289.74778066    -0.00000025    -0.00000001  0.22D-08  0.27D-08     4.90
    6     2     2     1.05951582    -0.32218091  -289.74778066    -0.00000028    -0.00000001  0.27D-08  0.32D-08     4.90
    6     3     3     1.05951650    -0.32218091  -289.74778066    -0.00000031    -0.00000001  0.29D-08  0.34D-08     4.90
    6     4     4     1.05951593    -0.32218091  -289.74778066    -0.00000031    -0.00000001  0.31D-08  0.36D-08     4.90
    6     5     5     1.05951625    -0.32218091  -289.74778066    -0.00000033    -0.00000001  0.31D-08  0.38D-08     4.90
    6     6     6     1.05198001    -0.31285315  -289.70769650    -0.00000035    -0.00000002  0.28D-08  0.50D-08     4.90


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.4%   1.2%
 P   1.2%  14.7%  28.8%

 Initialization:   0.4%
 Other:           53.1%

 Total CPU:        4.9 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222/0\          -0.0000000   0.0000000  -0.0000000   0.9646856   0.0000000  -0.0000000
 222220/\           0.0000000   0.9646855   0.0000000  -0.0000000  -0.0000000  -0.0000000
 22222/\0           0.0000000   0.0000000   0.0000000  -0.0000000   0.9646854  -0.0000000
 22222200          -0.1918525  -0.0000000   0.7639402   0.0000000  -0.0000000   0.5485158
 22222002           0.7575178   0.0000000  -0.2158206  -0.0000000   0.0000000   0.5485159
 22222020          -0.5656652   0.0000000  -0.5481188  -0.0000000   0.0000000   0.5485155
 20222220           0.0901106   0.0000000  -0.0256722  -0.0000000  -0.0000000  -0.1263989
 20222202          -0.0672884   0.0000000  -0.0652010  -0.0000000   0.0000000  -0.1263984
 20222022          -0.0228222  -0.0000000   0.0908744   0.0000000  -0.0000000  -0.1263971
 202222/\          -0.0000000  -0.1147533  -0.0000000   0.0000000   0.0000000   0.0000000
 20222/\2          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.1147528   0.0000000
 20222/2\           0.0000000  -0.0000000   0.0000000  -0.1147526  -0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\2220/\  11.1     0.0000000   0.0836527   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2\222/\0  14.1     0.0194935  -0.0000000   0.0814297   0.0000000  -0.0000000   0.0054157
 2\2220/\  12.1    -0.0802649   0.0000000  -0.0238340  -0.0000000   0.0000000   0.0054149
 2\222/0\  15.1     0.0000000  -0.0000000   0.0000000  -0.0706688  -0.0000000   0.0000000
 2\222/\0  15.1    -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0706685   0.0000000
 2\222/0\  13.1    -0.0556541  -0.0000000   0.0625579   0.0000000  -0.0000000   0.0054151
 2\2220/\   5.1     0.0000000   0.0519553   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2\2220/\   6.1    -0.0503412   0.0000000  -0.0128618  -0.0000000   0.0000000   0.0003863
 2\222/\0   8.1     0.0140335  -0.0000000   0.0500251   0.0000000  -0.0000000   0.0003849

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.698936    0.000000    0.000000   -0.674676   -0.000000
 2           0.000000    0.000000    0.971442    0.000000    0.000000    0.000000
 3          -0.000000   -0.674676    0.000000    0.000000   -0.698935    0.000000
 4           0.971442   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 5           0.000000    0.000000   -0.000000    0.971441    0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.974850

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971442   -0.000000   -0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.971442   -0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.971441    0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.971442   -0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.971441    0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.974850


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.69893552 (fixed)   0.97148663 (relaxed)   0.97144154 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013611   -0.00025745   -0.25825610
 Singles      0.03045934   -0.04856099   -0.05508830
 Pairs        0.02906484   -0.00000004   -0.00883651
 Total        1.05966029   -0.04881848   -0.32218091
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42559975
 Nuclear energy                         0.00000000
 Kinetic energy                       293.43858670
 One electron energy                 -401.06387547
 Two electron energy                  111.31609480
 Virial quotient                       -0.98742222
 Correlation energy                    -0.32218091
 !MRCI STATE 1.1 Energy              -289.747780661396

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76700207 (Davidson, fixed reference)
 Cluster corrected energies          -289.76697038 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76700207 (Davidson, rotated reference)

 Cluster corrected energies          -289.76445304 (Pople, fixed reference)
 Cluster corrected energies          -289.76442445 (Pople, relaxed reference)
 Cluster corrected energies          -289.76445304 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97144165 (fixed)   0.97148675 (relaxed)   0.97144165 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013613   -0.00025745   -0.25825602
 Singles      0.03045953   -0.04856119   -0.05508846
 Pairs        0.02906439   -0.00000000   -0.00883643
 Total        1.05966005   -0.04881864   -0.32218091
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42559975
 Nuclear energy                         0.00000000
 Kinetic energy                       293.43855907
 One electron energy                 -401.06388817
 Two electron energy                  111.31610751
 Virial quotient                       -0.98742231
 Correlation energy                    -0.32218091
 !MRCI STATE 2.1 Energy              -289.747780659294

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76700199 (Davidson, fixed reference)
 Cluster corrected energies          -289.76697029 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76700199 (Davidson, rotated reference)

 Cluster corrected energies          -289.76445297 (Pople, fixed reference)
 Cluster corrected energies          -289.76442437 (Pople, relaxed reference)
 Cluster corrected energies          -289.76445297 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.69893531 (fixed)   0.97148643 (relaxed)   0.97144134 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013612   -0.00025745   -0.25825527
 Singles      0.03046052   -0.04856140   -0.05508880
 Pairs        0.02906408   -0.00000039   -0.00883684
 Total        1.05966072   -0.04881925   -0.32218091
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42559975
 Nuclear energy                         0.00000000
 Kinetic energy                       293.43862403
 One electron energy                 -401.06393461
 Two electron energy                  111.31615395
 Virial quotient                       -0.98742209
 Correlation energy                    -0.32218091
 !MRCI STATE 3.1 Energy              -289.747780657746

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76700220 (Davidson, fixed reference)
 Cluster corrected energies          -289.76697051 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76700220 (Davidson, rotated reference)

 Cluster corrected energies          -289.76445316 (Pople, fixed reference)
 Cluster corrected energies          -289.76442457 (Pople, relaxed reference)
 Cluster corrected energies          -289.76445316 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97144159 (fixed)   0.97148670 (relaxed)   0.97144159 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013614   -0.00025745   -0.25825582
 Singles      0.03046004   -0.04856136   -0.05508865
 Pairs        0.02906399   -0.00000000   -0.00883644
 Total        1.05966017   -0.04881882   -0.32218091
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42559975
 Nuclear energy                         0.00000000
 Kinetic energy                       293.43857295
 One electron energy                 -401.06392298
 Two electron energy                  111.31614232
 Virial quotient                       -0.98742227
 Correlation energy                    -0.32218091
 !MRCI STATE 4.1 Energy              -289.747780657300

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76700203 (Davidson, fixed reference)
 Cluster corrected energies          -289.76697033 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76700203 (Davidson, rotated reference)

 Cluster corrected energies          -289.76445300 (Pople, fixed reference)
 Cluster corrected energies          -289.76442440 (Pople, relaxed reference)
 Cluster corrected energies          -289.76445300 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97144145 (fixed)   0.97148655 (relaxed)   0.97144145 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013614   -0.00025745   -0.25825556
 Singles      0.03046047   -0.04856155   -0.05508881
 Pairs        0.02906388   -0.00000000   -0.00883653
 Total        1.05966049   -0.04881901   -0.32218091
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42559975
 Nuclear energy                         0.00000000
 Kinetic energy                       293.43857989
 One electron energy                 -401.06393462
 Two electron energy                  111.31615396
 Virial quotient                       -0.98742224
 Correlation energy                    -0.32218091
 !MRCI STATE 5.1 Energy              -289.747780656509

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76700213 (Davidson, fixed reference)
 Cluster corrected energies          -289.76697043 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76700213 (Davidson, rotated reference)

 Cluster corrected energies          -289.76445309 (Pople, fixed reference)
 Cluster corrected energies          -289.76442449 (Pople, relaxed reference)
 Cluster corrected energies          -289.76445309 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97485002 (fixed)   0.97495539 (relaxed)   0.97485002 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026922   -0.00028639   -0.00035220
 Singles      0.00629904   -0.01908388   -0.02000806
 Pairs        0.04569496   -0.29348288   -0.29249289
 Total        1.05226322   -0.31285315   -0.31285315
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.39484336
 Nuclear energy                         0.00000000
 Kinetic energy                       293.40576181
 One electron energy                 -400.92100711
 Two electron energy                  111.21331061
 Virial quotient                       -0.98739607
 Correlation energy                    -0.31285315
 !MRCI STATE 6.1 Energy              -289.707696503832

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.72404722 (Davidson, fixed reference)
 Cluster corrected energies          -289.72397606 (Davidson, relaxed reference)
 Cluster corrected energies          -289.72404722 (Davidson, rotated reference)

 Cluster corrected energies          -289.72180824 (Pople, fixed reference)
 Cluster corrected energies          -289.72174467 (Pople, relaxed reference)
 Cluster corrected energies          -289.72180824 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       19.13       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.24      5.20      1.83      0.48      0.03      0.41
 REAL TIME  *        11.74 SEC
 DISK USED  *        49.59 MB (local),      646.13 MB (total)
 SF USED    *       138.72 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -289.76700207  AU                              
 SETTING HLSDIAG(5)     =      -289.76700199  AU                              
 SETTING HLSDIAG(6)     =      -289.76700220  AU                              
 SETTING HLSDIAG(7)     =      -289.76700203  AU                              
 SETTING HLSDIAG(8)     =      -289.76700213  AU                              
 SETTING HLSDIAG(9)     =      -289.72404722  AU                              


         HLSDIAG
    -289.7946395
    -289.7946394
    -289.7946392
    -289.7670021
    -289.7670020
    -289.7670022
    -289.7670020
    -289.7670021
    -289.7240472
                                                  

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  

 PROGRAM * SEWLS (Spin-orbit & spin-spin integral evaluation)

 Modified from original SEWARD code by Alexander Mitrushchenkov

 Original version: December 2001, 2D-derivatives modifications: Stuttgart 2004
  
  
 The following spin-orbit components are calculated:
  
    Operator      Symmetry
  
      LSX            1
      LSY            1
      LSZ            1
  
 Integral cutoff:   0.10E-09

 Time for Seward_LS:       0.66 sec

 CPU time:      0.66 sec, REAL time:      0.70 sec


 SORTLS1 read     2507997. and wrote     2507997. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.04 sec
 SORTLS2 read     2507997. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    31.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    31.9 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.42       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       19.13       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.70      1.45      5.20      1.83      0.48      0.03      0.41
 REAL TIME  *        13.33 SEC
 DISK USED  *        49.63 MB (local),      835.62 MB (total)
 SF USED    *       138.72 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5102.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -289.778317   -289.778317   -289.778317
 Replaced energies:   -289.794639   -289.794639   -289.794639

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -289.747781   -289.747781   -289.747781   -289.747781   -289.747781   -289.707697
 Replaced energies:   -289.767002   -289.767002   -289.767002   -289.767002   -289.767002   -289.724047



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -289.79463946

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00     -51.23       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00     -51.23      -0.00       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.03       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      42.40
                           -0.00       0.00     -72.45      51.23       0.00      -0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.06      51.23       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      72.45      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      56.77

    4   1.1  1.0  0.0       0.00      -0.00      51.23       0.00       0.00       0.00       0.00       0.00     -51.23       0.00
                           -0.00     -51.23      -0.00       0.00       0.00       0.00       0.00     -51.23      -0.00      20.33

    5   2.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.03       0.00      -0.00      -0.00      -0.00       0.00
                           51.23      -0.00      -0.00      -0.00       0.00       0.00      51.23       0.00      -0.00       0.00

    6   3.1  1.0  0.0     -51.23      -0.00      -0.00       0.00       0.00       0.06      51.23       0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      51.23       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -51.23      -0.00      -0.00      -0.00      -0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.03       0.00      42.40
                           -0.00      -0.00      -0.00      51.23      -0.00      -0.00       0.00      -0.00      72.45       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00     -51.23      -0.00      -0.00       0.00       0.00       0.06       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     -72.45       0.00     -56.77

   10   1.1  0.0  0.0       0.00      42.40       0.00       0.00       0.00       0.00       0.00      42.40       0.00    6065.71
                            0.00       0.00     -56.77     -20.33      -0.00      -0.00      -0.00      -0.00      56.77       0.00

   11   2.1  0.0  0.0       0.00      -0.00      51.12       0.00       0.00       0.00       0.00      -0.00      51.12       0.00
                           -0.00      51.12      -0.00      -0.00      -0.00       0.00       0.00     -51.12       0.00      -0.00

   12   3.1  0.0  0.0       0.00      41.08       0.00       0.00       0.00       0.00       0.00      41.08       0.00       0.00
                            0.00       0.00      16.17      80.97      -0.00      -0.00      -0.00      -0.00     -16.17      -0.00

   13   4.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                          -51.12      -0.00       0.00       0.00      -0.00      72.30      51.12       0.00      -0.00      -0.00

   14   5.1  0.0  0.0      51.12      -0.00      -0.00       0.00       0.00       0.00      51.12      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00     -72.30      -0.00       0.00       0.00      -0.00      -0.00

   15   6.1  0.0  0.0      -0.00      84.54       0.00       0.00       0.00       0.00      -0.00      84.54       0.00       0.00
                            0.00      -0.00      84.54    -119.56       0.00       0.00      -0.00       0.00     -84.54      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00       0.00      -0.00      51.12      -0.00
                            0.00      -0.00      51.12       0.00      -0.00

    2   2.1  1.0  1.0      -0.00      41.08       0.00      -0.00      84.54
                          -51.12      -0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0      51.12       0.00      -0.00      -0.00       0.00
                            0.00     -16.17      -0.00      -0.00     -84.54

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00     -80.97      -0.00       0.00     119.56

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      72.30      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -72.30       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00      -0.00      51.12      -0.00
                           -0.00       0.00     -51.12      -0.00       0.00

    8   2.1  1.0 -1.0      -0.00      41.08       0.00      -0.00      84.54
                           51.12       0.00      -0.00      -0.00      -0.00

    9   3.1  1.0 -1.0      51.12       0.00      -0.00      -0.00       0.00
                           -0.00      16.17       0.00       0.00      84.54

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6065.72       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6065.68       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6065.72       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6065.69       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15493.21
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -289.79463946 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -72.452      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.025       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      72.452       0.000      -0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.056       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      72.452

    1    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000     -72.452      -0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.025       0.000       0.000       0.000
                               72.452       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.056     -72.452      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     -72.452       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.025
                               -0.000       0.000     -72.452       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      72.452       0.000       0.000       0.000       0.000
                               -0.000      72.452      -0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000      59.958       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -20.334      -0.000      -0.000       0.000       0.000

    2    1  |0 0>               0.000      -0.000      72.298       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      72.297

    3    1  |0 0>               0.000      58.098       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      80.968      -0.000      -0.000       0.000       0.000

    4    1  |0 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      72.296     -72.296      -0.000

    5    1  |0 0>              72.300      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -72.300      -0.000      -0.000      -0.000

    6    1  |0 0>              -0.000     119.562       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -119.559       0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      72.300      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      59.958      -0.000      58.098       0.000      -0.000     119.562
                              -72.452       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000      72.298       0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              72.452       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      20.334       0.000     -80.968      -0.000       0.000     119.559

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      72.300      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000     -72.296       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      72.296       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -72.297      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.056       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      80.283       0.000     -22.873      -0.000      -0.000    -119.556

    1    1  |0 0>               0.000    6065.708       0.000       0.000       0.000       0.000       0.000
                              -80.283       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6065.725       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6065.678       0.000       0.000       0.000
                               22.873      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6065.717       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6065.695       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15493.208
                              119.556      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -289.79531207    -0.00067260     -147.62      0.00000000        0.00      0.0000
    2  -289.79496952    -0.00033006      -72.44      0.00034254       75.18      0.0093
    3  -289.79496945    -0.00032999      -72.42      0.00034261       75.19      0.0093
    4  -289.79496940    -0.00032993      -72.41      0.00034267       75.21      0.0093
    5  -289.79431725     0.00032222       70.72      0.00099482      218.34      0.0271
    6  -289.79431724     0.00032223       70.72      0.00099483      218.34      0.0271
    7  -289.79431717     0.00032230       70.74      0.00099490      218.36      0.0271
    8  -289.79431711     0.00032236       70.75      0.00099496      218.37      0.0271
    9  -289.79431710     0.00032237       70.75      0.00099497      218.37      0.0271
   10  -289.76699426     0.02764521     6067.42      0.02831781     6215.04      0.7706
   11  -289.76699418     0.02764528     6067.44      0.02831789     6215.06      0.7706
   12  -289.76699412     0.02764534     6067.45      0.02831794     6215.07      0.7706
   13  -289.76699408     0.02764538     6067.46      0.02831799     6215.08      0.7706
   14  -289.76699404     0.02764542     6067.47      0.02831802     6215.09      0.7706
   15  -289.72403472     0.07060474    15495.95      0.07127734    15643.57      1.9396

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000  0.70716882  0.00000000  0.00000000  0.00000000  0.70694190  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.57730497  0.00000000 -0.00000000 -0.00000000 -0.59500969  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.70703127  0.00000000  0.00000000  0.00000000  0.70707948
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.57737069  0.00000000  0.00000000 -0.00000000  0.78155615 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.70704474 -0.00000000 -0.00000000  0.00000000  0.70706601  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00184694 -0.00000000 -0.00000000 -0.00000000  0.00155520  0.00000000
                          -0.00000000 -0.00000000  0.70696679  0.00000000  0.00000000 -0.00000000  0.70713983 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00184766 -0.00000000  0.00000000  0.00000000 -0.00155459 -0.00000000
                          -0.00000000 -0.00000000  0.70724191  0.00000000 -0.00000000  0.00000000 -0.70686467  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.70718228 -0.00000000 -0.00000000 -0.00000000 -0.70692844

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.57722335  0.00000000 -0.00000000  0.00000000  0.18666182 -0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>          -0.00000210  0.00000000  0.00000000 -0.00000000  0.00080023 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000170 -0.00000000 -0.00000000 -0.00000000 -0.01705256
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000088  0.00000000  0.00000000  0.00000000  0.01703429 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000319 -0.00000000  0.00000000 -0.00000000  0.01705205 -0.00000000
                          -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00003750 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000147 -0.00000000 -0.00000000 -0.00000000 -0.01705312 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.01323871 -0.00000000 -0.00000000  0.00000000  0.00000095  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.00000000  0.00000000  0.01205836 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.55895449  0.00965291 -0.00000000  0.01003541  0.00000000 -0.00000000  0.00764355
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.01205806  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.23571335 -0.01351649  0.00000000  0.00334165 -0.00000000  0.00000000  0.00764338

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.01205840  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.01205775 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.01205756  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.01205789  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.79480709 -0.00386412 -0.00000000  0.01337570  0.00000000 -0.00000000 -0.00764318

   1    1  |0 0>          -0.01703364 -0.00367762  0.00000000  0.99984783  0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.99985459  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00079919  0.99984782 -0.00000000  0.00367760 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.99985460  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000581  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.99985458 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000081 -0.00000001 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.99991236
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -289.79531207     -0.00067260     -147.62      0.00000000        0.00      0.0000
     2   1   -289.79496952     -0.00033006      -72.44      0.00034254       75.18      0.0093
     3   1   -289.79496945     -0.00032999      -72.42      0.00034261       75.19      0.0093
     4   1   -289.79496940     -0.00032993      -72.41      0.00034267       75.21      0.0093
     5   1   -289.79431725      0.00032222       70.72      0.00099482      218.34      0.0271
     6   1   -289.79431724      0.00032223       70.72      0.00099483      218.34      0.0271
     7   1   -289.79431717      0.00032230       70.74      0.00099490      218.36      0.0271
     8   1   -289.79431711      0.00032236       70.75      0.00099496      218.37      0.0271
     9   1   -289.79431710      0.00032237       70.75      0.00099497      218.37      0.0271
    10   1   -289.76699426      0.02764521     6067.42      0.02831781     6215.04      0.7706
    11   1   -289.76699418      0.02764528     6067.44      0.02831789     6215.06      0.7706
    12   1   -289.76699412      0.02764534     6067.45      0.02831794     6215.07      0.7706
    13   1   -289.76699408      0.02764538     6067.46      0.02831799     6215.08      0.7706
    14   1   -289.76699404      0.02764542     6067.47      0.02831802     6215.09      0.7706
    15   1   -289.72403472      0.07060474    15495.95      0.07127734    15643.57      1.9396

 E0 =   -289.79463946 is the energy of the lowest zeroth-order state
 E1 =   -289.79531207 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000  0.70716882  0.00000000  0.00000000  0.00000000  0.70694190  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.57730497  0.00000000 -0.00000000 -0.00000000 -0.59500969  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.70703127  0.00000000  0.00000000  0.00000000  0.70707948
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.57737069  0.00000000  0.00000000 -0.00000000  0.78155615 -0.00000000 -0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.70704474 -0.00000000 -0.00000000  0.00000000  0.70706601  0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00184694 -0.00000000 -0.00000000 -0.00000000  0.00155520  0.00000000
                               -0.00000000 -0.00000000  0.70696679  0.00000000  0.00000000 -0.00000000  0.70713983 -0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00184766 -0.00000000  0.00000000  0.00000000 -0.00155459 -0.00000000
                               -0.00000000 -0.00000000  0.70724191  0.00000000 -0.00000000  0.00000000 -0.70686467  0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.70718228 -0.00000000 -0.00000000 -0.00000000 -0.70692844

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.57722335  0.00000000 -0.00000000  0.00000000  0.18666182 -0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000210  0.00000000  0.00000000 -0.00000000  0.00080023 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000170 -0.00000000 -0.00000000 -0.00000000 -0.01705256
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000088  0.00000000  0.00000000  0.00000000  0.01703429 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000319 -0.00000000  0.00000000 -0.00000000  0.01705205 -0.00000000
                               -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00003750 -0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000147 -0.00000000 -0.00000000 -0.00000000 -0.01705312 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.01323871 -0.00000000 -0.00000000  0.00000000  0.00000095  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.00000000  0.00000000  0.01205836 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.55895449  0.00965291 -0.00000000  0.01003541  0.00000000 -0.00000000  0.00764355
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.01205806  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.23571335 -0.01351649  0.00000000  0.00334165 -0.00000000  0.00000000  0.00764338

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.01205840  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.01205775 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.01205756  0.00000000 -0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.01205789  0.00000000

  9  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.79480709 -0.00386412 -0.00000000  0.01337570  0.00000000 -0.00000000 -0.00764318

 10  1     1    1  |0 0>       -0.01703364 -0.00367762  0.00000000  0.99984783  0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.99985459  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00079919  0.99984782 -0.00000000  0.00367760 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.99985460  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000581  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000000  0.00000000  0.99985458 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000081 -0.00000001 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.99991236
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   50.01%    0.00%    0.00%    0.00%   49.98%    0.00%    0.00%
  2  1     2    1  |1 1>+        33.33%    0.00%    0.00%    0.00%   35.40%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   49.99%    0.00%    0.00%    0.00%   50.00%
  4  1     1    1  |1 0>         33.34%    0.00%    0.00%    0.00%   61.08%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%   49.99%    0.00%    0.00%    0.00%   49.99%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   49.98%    0.00%    0.00%    0.00%   50.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   50.02%    0.00%    0.00%    0.00%   49.97%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.01%    0.00%    0.00%    0.00%   49.97%
  9  1     3    1  |1 1>-        33.32%    0.00%    0.00%    0.00%    3.48%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 15  1     6    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        31.24%    0.01%    0.00%    0.01%    0.00%    0.00%    0.01%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  4  1     1    1  |1 0>          5.56%    0.02%    0.00%    0.00%    0.00%    0.00%    0.01%
  5  1     2    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  9  1     3    1  |1 1>-        63.17%    0.00%    0.00%    0.02%    0.00%    0.00%    0.01%
 10  1     1    1  |0 0>          0.03%    0.00%    0.00%   99.97%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   99.97%    0.00%
 12  1     3    1  |0 0>          0.00%   99.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.97%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%   99.97%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.98%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.42       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       19.13       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        13.73      4.03      1.45      5.20      1.83      0.48      0.03      0.41
 REAL TIME  *        18.26 SEC
 DISK USED  *        49.63 MB (local),      835.62 MB (total)
 SF USED    *       138.72 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -289.724034723124

              CI              CI           MULTI         RHF-SCF
   -289.70769650   -289.77831703   -289.39484336   -289.45517525
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
