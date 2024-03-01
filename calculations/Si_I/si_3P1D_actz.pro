
 Working directory              : /wrk/irikura/molpro.jPiwRffiZ4/
 Global scratch directory       : /wrk/irikura/molpro.jPiwRffiZ4/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.jPiwRffiZ4/

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
     wf,sym=1,spin=0;state,5;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=2;state,3; save,5102.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,5; save,5101.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5102.2,5101.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Si SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 23-Feb-24          TIME: 16:17:49  
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

     7.078 MB (compressed) written to integral file ( 18.5%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     36 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

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
 CPU TIMES  *         0.63      0.40
 REAL TIME  *         1.17 SEC
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
   4     -289.45514213      -0.00022986     0.35D-03     0.14D-02     3     0       0.01      0.02    diag2
   5     -289.45517477      -0.00003265     0.13D-03     0.85D-03     4     0       0.00      0.02    diag2
   6     -289.45517525      -0.00000047     0.19D-04     0.16D-03     5     0       0.01      0.03    diag2
   7     -289.45517525      -0.00000000     0.18D-05     0.10D-04     6     0       0.00      0.03    diag2
   8     -289.45517525      -0.00000000     0.29D-06     0.18D-05     7     0       0.00      0.03    fixocc
   9     -289.45517525      -0.00000000     0.25D-07     0.26D-06     0     0       0.00      0.03    diag

 Final alpha occupancy:   3   5
 Final beta  occupancy:   3   3

 !RHF STATE 1.1 Energy               -289.455175250791
  RHF One-electron energy            -401.378079999741
  RHF Two-electron energy             111.922904748950
  RHF Kinetic energy                  293.246498577843
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
    1.2     2.00000    -4.25613     1  1  px   0.99755
    2.2     2.00000    -4.25495     1  1  pz   1.00087
    3.2     2.00000    -4.25495     1  1  py   1.00102
    4.2     1.00000    -0.29682     1  2  py   1.00922
    5.2     1.00000    -0.29682     1  2  pz   1.00908


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
 CPU TIMES  *         0.66      0.03      0.40
 REAL TIME  *         2.21 SEC
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
 Number of states:             5
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.308D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.210D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.141D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 3 5 1   6 2 4 3 5 5 4 3 2 6   1 5 4 3 2 6 1 5 4 3   6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.311D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.253D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.162D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.112D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.205D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.350D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 3 2 1 3   2 1 7 910 4 8 5 6 7  10 9 8 4 6 5 1 3 2 7  10 9 8 4 6 5 1 3 2 1
                                        3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  317  ( 11 closed/active, 168 closed/virtual, 0 active/active, 138 active/virtual )
 Total number of variables:    425
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0   -289.42448413    -289.44057171   -0.01608758    0.04976305 0.00001796 0.00000000  0.33E+00      0.14
   2    7   12    0   -289.44032092    -289.44033969   -0.00001877    0.00526974 0.00000004 0.00000000  0.68E-02      0.33
   3    9   18    0   -289.44033971    -289.44033971   -0.00000000    0.00000703 0.00000001 0.00000000  0.93E-05      0.50

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.57E-08)
                       Final energy:   -289.44033971
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -289.464963102255
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.23130275
 One electron energy                          -401.31893527
 Two electron energy                           111.85397217
 Virial ratio                                    1.98715574
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -289.464963102080
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.23130276
 One electron energy                          -401.31893531
 Two electron energy                           111.85397221
 Virial ratio                                    1.98715574
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -289.464963102054
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.23130277
 One electron energy                          -401.31893531
 Two electron energy                           111.85397221
 Virial ratio                                    1.98715574
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -289.425565676018
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.23130275
 One electron energy                          -401.31893527
 Two electron energy                           111.89336959
 Virial ratio                                    1.98702138
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -289.425565676002
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.23130275
 One electron energy                          -401.31893527
 Two electron energy                           111.89336959
 Virial ratio                                    1.98702138
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -289.425565675617
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.23130276
 One electron energy                          -401.31893531
 Two electron energy                           111.89336963
 Virial ratio                                    1.98702138
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -289.425565675552
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.23130277
 One electron energy                          -401.31893531
 Two electron energy                           111.89336964
 Virial ratio                                    1.98702138
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -289.425565675420
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.23130277
 One electron energy                          -401.31893533
 Two electron energy                           111.89336965
 Virial ratio                                    1.98702138
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999990
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999120
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000009826
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.232645051576
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000654
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.767356628687
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999886
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000920
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.999999991056
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.784185433969
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999999532
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.215813121280
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000124
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999961
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.999999999118
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.983169514456
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999999814
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.016830250033
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 5 3 2 6 1   4 3 5 2 6 4 5 3 2 6   1 4 5 3 2 6 1 4 5 3   2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 3 1 3 1 2 3   1 2 4 9 710 8 6 5 4   9 7 810 6 5 1 3 2 4   9 710 8 6 5 1 3 2 1
                                        3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -68.98199     1  1  s    0.99951
    2.1     2.00000    -6.18750     1  2  s    0.99986
    3.1     1.96729    -0.53965     1  3  s    1.01451
    1.2     2.00000    -4.25983     1  1  px   1.00002
    2.2     2.00000    -4.25983     1  1  py   1.00002
    3.2     2.00000    -4.25983     1  1  pz   1.00002
    4.2     0.67757    -0.06961     1  2  py   0.99994
    5.2     0.67757    -0.06961     1  2  pz   0.99994
    6.2     0.67757    -0.06961     1  2  px   0.99994
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa0          0.00000314      0.99178841     -0.00002943
 2 a0a          0.99178841      0.00000000      0.00000622
 2 0aa         -0.00001061      0.00000000      0.99178841
 0 a2a         -0.12788959      0.00000000     -0.00000080
 0 aa2         -0.00000040     -0.12788959      0.00000379
 0 2aa          0.00000137      0.00000000     -0.12788959
 
 Energy:     -289.46496310   -289.46496310   -289.46496310
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.00001171     -0.05252810      0.00000000      0.00001337      0.80808642
 2 200         -0.00013743      0.72608740      0.00000000     -0.00000304     -0.35855287
 2 ab0          0.00000121      0.00000064      0.70130031      0.00000816     -0.00000083
 2 ba0         -0.00000121     -0.00000064     -0.70130031     -0.00000816      0.00000083
 2 0ab         -0.00000246     -0.00000322      0.00000000      0.70130031     -0.00001120
 2 0ba          0.00000246      0.00000322     -0.00000000     -0.70130031      0.00001120
 2 b0a         -0.70130030     -0.00005708      0.00000000     -0.00000098      0.00000168
 2 a0b          0.70130030      0.00005708     -0.00000000      0.00000098     -0.00000168
 2 002          0.00012572     -0.67355930      0.00000000     -0.00001033     -0.44953357
 0 202          0.00000151     -0.00677342      0.00000000      0.00000172      0.10420150
 0 022         -0.00001772      0.09362785      0.00000000     -0.00000039     -0.04623484
 0 ab2         -0.00000016     -0.00000008     -0.09043160     -0.00000105      0.00000011
 0 ba2          0.00000016      0.00000008      0.09043160      0.00000105     -0.00000011
 0 2ba         -0.00000032     -0.00000042      0.00000000      0.09043159     -0.00000144
 0 2ab          0.00000032      0.00000042     -0.00000000     -0.09043159      0.00000144
 0 a2b         -0.09043159     -0.00000736      0.00000000     -0.00000013      0.00000022
 0 b2a          0.09043159      0.00000736     -0.00000000      0.00000013     -0.00000022
 0 220          0.00001621     -0.08685444      0.00000000     -0.00000133     -0.05796666
 
 Energy:     -289.42556568   -289.42556568   -289.42556568   -289.42556568   -289.42556568
 


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
 CPU TIMES  *         1.19      0.52      0.03      0.40
 REAL TIME  *         2.87 SEC
 DISK USED  *        31.13 MB (local),      424.59 MB (total)
 SF USED    *         4.20 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -289.4649631   2.0
    -289.4649631   2.0
    -289.4649631   2.0
    -289.4255657   6.0
    -289.4255657   6.0
    -289.4255657   6.0
    -289.4255657   6.0
    -289.4255657   6.0
                                                  


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
     1      -289.46496310
     2      -289.46496310
     3      -289.46496310

 Number of blocks in overlap matrix:   117   Smallest eigenvalue:  0.16D-01
 Number of N-2 electron functions:     162
 Number of N-1 electron functions:     690

 Number of internal configurations:                  132
 Number of singly external configurations:         22788
 Number of doubly external configurations:        176994
 Total number of contracted configurations:       199914
 Total number of uncontracted configurations:     749106

 Diagonal Coupling coefficients finished.               Storage:    238061 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    259818 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.46496310     0.00000000    -0.33651850  0.40D-01  0.28D-01     0.04
    1     2     2     1.00000000     0.00000000  -289.46496310     0.00000000    -0.33664452  0.41D-01  0.28D-01     0.04
    1     3     3     1.00000000     0.00000000  -289.46496310     0.00000000    -0.33624319  0.40D-01  0.28D-01     0.04
    2     1     1     1.05775627    -0.30973557  -289.77469867    -0.30973557    -0.00359344  0.10D-02  0.51D-03     0.48
    2     2     2     1.05814676    -0.30965970  -289.77462281    -0.30965970    -0.00367616  0.11D-02  0.52D-03     0.48
    2     3     3     1.05828737    -0.30963447  -289.77459757    -0.30963447    -0.00370721  0.11D-02  0.53D-03     0.48
    3     1     1     1.05119224    -0.31328446  -289.77824757    -0.00354889    -0.00008499  0.11D-04  0.20D-04     0.87
    3     2     2     1.05122353    -0.31328261  -289.77824572    -0.00362291    -0.00008647  0.11D-04  0.20D-04     0.87
    3     3     3     1.05124100    -0.31328174  -289.77824484    -0.00364727    -0.00008705  0.12D-04  0.20D-04     0.87
    4     1     1     1.05170316    -0.31338203  -289.77834513    -0.00009756    -0.00000458  0.53D-06  0.15D-05     1.23
    4     2     2     1.05170414    -0.31338191  -289.77834501    -0.00009930    -0.00000465  0.54D-06  0.16D-05     1.23
    4     3     3     1.05170529    -0.31338180  -289.77834491    -0.00010006    -0.00000471  0.55D-06  0.16D-05     1.23
    5     1     1     1.05191098    -0.31338795  -289.77835105    -0.00000592    -0.00000038  0.55D-07  0.94D-07     1.60
    5     2     2     1.05191032    -0.31338794  -289.77835105    -0.00000603    -0.00000039  0.56D-07  0.96D-07     1.60
    5     3     3     1.05191007    -0.31338794  -289.77835104    -0.00000614    -0.00000039  0.57D-07  0.96D-07     1.60
    6     1     1     1.05186782    -0.31338841  -289.77835152    -0.00000046    -0.00000002  0.28D-08  0.48D-08     1.97
    6     2     2     1.05186703    -0.31338841  -289.77835152    -0.00000047    -0.00000002  0.28D-08  0.49D-08     1.97
    6     3     3     1.05186739    -0.31338841  -289.77835152    -0.00000047    -0.00000002  0.28D-08  0.48D-08     1.97


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.5%
 S   0.0%   1.5%
 P   1.0%  19.3%  20.3%

 Initialization:   1.5%
 Other:           54.8%

 Total CPU:        2.0 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//0          -0.0000000   0.9682013  -0.0000000
 22222/0/          -0.0000000   0.0000000   0.9682012
 222220//           0.9682010   0.0000000   0.0000000
 20222//2           0.0000000  -0.1150696   0.0000000
 20222/2/           0.0000000  -0.0000000  -0.1150691
 202222//          -0.1150689  -0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2/222\/0  14.1    -0.0000000   0.0508575  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.974967
 2           0.000000    0.974967    0.000000
 3           0.974967   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.974967   -0.000000    0.000000
 2          -0.000000    0.974967    0.000000
 3           0.000000    0.000000    0.974967


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97496669 (fixed)   0.97501493 (relaxed)   0.97496669 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013648   -0.00022963   -0.00025893
 Singles      0.02624765   -0.04299248   -0.04868697
 Pairs        0.02562725   -0.27016630   -0.26444251
 Total        1.05201139   -0.31338842   -0.31338841
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46496310
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45621447
 One electron energy                 -401.14635978
 Two electron energy                  111.36800826
 Virial quotient                       -0.98746708
 Correlation energy                    -0.31338841
 !MRCI STATE 1.1 Energy              -289.778351515999

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79465128 (Davidson, fixed reference)
 Cluster corrected energies          -289.79461866 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79465128 (Davidson, rotated reference)

 Cluster corrected energies          -289.79180517 (Pople, fixed reference)
 Cluster corrected energies          -289.79177740 (Pople, relaxed reference)
 Cluster corrected energies          -289.79180517 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97496707 (fixed)   0.97501530 (relaxed)   0.97496707 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013647   -0.00022963   -0.25706880
 Singles      0.02624674   -0.04299208   -0.04868668
 Pairs        0.02562737   -0.00000000   -0.00763293
 Total        1.05201058   -0.04322172   -0.31338841
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46496310
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45621351
 One electron energy                 -401.14636107
 Two electron energy                  111.36800955
 Virial quotient                       -0.98746708
 Correlation energy                    -0.31338841
 !MRCI STATE 2.1 Energy              -289.778351515748

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79465103 (Davidson, fixed reference)
 Cluster corrected energies          -289.79461841 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79465103 (Davidson, rotated reference)

 Cluster corrected energies          -289.79180495 (Pople, fixed reference)
 Cluster corrected energies          -289.79177719 (Pople, relaxed reference)
 Cluster corrected energies          -289.79180495 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97496690 (fixed)   0.97501513 (relaxed)   0.97496690 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013648   -0.00022963   -0.25706858
 Singles      0.02624708   -0.04299223   -0.04868680
 Pairs        0.02562739   -0.00000000   -0.00763304
 Total        1.05201095   -0.04322186   -0.31338841
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46496310
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45621343
 One electron energy                 -401.14636096
 Two electron energy                  111.36800944
 Virial quotient                       -0.98746708
 Correlation energy                    -0.31338841
 !MRCI STATE 3.1 Energy              -289.778351515668

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79465114 (Davidson, fixed reference)
 Cluster corrected energies          -289.79461852 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79465114 (Davidson, rotated reference)

 Cluster corrected energies          -289.79180505 (Pople, fixed reference)
 Cluster corrected energies          -289.79177728 (Pople, relaxed reference)
 Cluster corrected energies          -289.79180505 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.54       700     1000      520     2100     2140     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.29      2.09      0.52      0.03      0.40
 REAL TIME  *         5.49 SEC
 DISK USED  *        36.01 MB (local),      483.12 MB (total)
 SF USED    *        50.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -289.79465128  AU                              
 SETTING HLSDIAG(2)     =      -289.79465103  AU                              
 SETTING HLSDIAG(3)     =      -289.79465114  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

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
     1      -289.42556568
     2      -289.42556568
     3      -289.42556568
     4      -289.42556568
     5      -289.42556568

 Number of blocks in overlap matrix:   165   Smallest eigenvalue:  0.56D-01
 Number of N-2 electron functions:     199
 Number of N-1 electron functions:     504

 Number of internal configurations:                  130
 Number of singly external configurations:         16668
 Number of doubly external configurations:        217785
 Total number of contracted configurations:       234583
 Total number of uncontracted configurations:     579574

 Diagonal Coupling coefficients finished.               Storage:    251176 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    257699 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.42556568    -0.00000000    -0.34575875  0.43D-01  0.32D-01     0.03
    1     2     2     1.00000000     0.00000000  -289.42556568    -0.00000000    -0.34506967  0.42D-01  0.32D-01     0.03
    1     3     3     1.00000000     0.00000000  -289.42556568    -0.00000000    -0.34603092  0.44D-01  0.33D-01     0.03
    1     4     4     1.00000000     0.00000000  -289.42556568    -0.00000000    -0.34657003  0.45D-01  0.32D-01     0.03
    1     5     5     1.00000000     0.00000000  -289.42556568     0.00000000    -0.34536357  0.43D-01  0.32D-01     0.03
    2     1     1     1.06299489    -0.31735383  -289.74291951    -0.31735383    -0.00492429  0.13D-02  0.93D-03     0.63
    2     2     2     1.06313056    -0.31725194  -289.74281762    -0.31725194    -0.00504794  0.13D-02  0.95D-03     0.63
    2     3     3     1.06358166    -0.31718258  -289.74274826    -0.31718258    -0.00514212  0.14D-02  0.95D-03     0.63
    2     4     4     1.06376244    -0.31706137  -289.74262704    -0.31706137    -0.00528873  0.15D-02  0.97D-03     0.63
    2     5     5     1.06437196    -0.31694459  -289.74251027    -0.31694459    -0.00544666  0.15D-02  0.99D-03     0.63
    3     1     1     1.05750413    -0.32199017  -289.74755585    -0.00463634    -0.00012417  0.28D-04  0.21D-04     1.20
    3     2     2     1.05756240    -0.32198647  -289.74755214    -0.00473453    -0.00012737  0.28D-04  0.22D-04     1.20
    3     3     3     1.05746095    -0.32198641  -289.74755209    -0.00480383    -0.00012646  0.27D-04  0.22D-04     1.20
    3     4     4     1.05767080    -0.32198534  -289.74755102    -0.00492397    -0.00012955  0.27D-04  0.23D-04     1.20
    3     5     5     1.05755396    -0.32198182  -289.74754750    -0.00503723    -0.00013091  0.28D-04  0.23D-04     1.20
    4     1     1     1.05903043    -0.32212863  -289.74769430    -0.00013846    -0.00000408  0.11D-05  0.80D-06     1.81
    4     2     2     1.05901454    -0.32212832  -289.74769399    -0.00014185    -0.00000434  0.12D-05  0.93D-06     1.81
    4     3     3     1.05901885    -0.32212823  -289.74769390    -0.00014181    -0.00000441  0.12D-05  0.89D-06     1.81
    4     4     4     1.05902251    -0.32212821  -289.74769389    -0.00014287    -0.00000436  0.12D-05  0.87D-06     1.81
    4     5     5     1.05900233    -0.32212779  -289.74769347    -0.00014597    -0.00000472  0.13D-05  0.97D-06     1.81
    5     1     1     1.05939605    -0.32213338  -289.74769906    -0.00000475    -0.00000016  0.31D-07  0.37D-07     2.40
    5     2     2     1.05939225    -0.32213335  -289.74769903    -0.00000503    -0.00000019  0.40D-07  0.41D-07     2.40
    5     3     3     1.05939562    -0.32213335  -289.74769903    -0.00000512    -0.00000019  0.41D-07  0.41D-07     2.40
    5     4     4     1.05939976    -0.32213335  -289.74769903    -0.00000514    -0.00000019  0.38D-07  0.41D-07     2.40
    5     5     5     1.05939671    -0.32213332  -289.74769900    -0.00000553    -0.00000022  0.48D-07  0.46D-07     2.40
    6     1     1     1.05939983    -0.32213357  -289.74769925    -0.00000019    -0.00000001  0.24D-08  0.16D-08     3.00
    6     2     2     1.05939938    -0.32213357  -289.74769924    -0.00000022    -0.00000001  0.27D-08  0.21D-08     3.00
    6     3     3     1.05939944    -0.32213357  -289.74769924    -0.00000022    -0.00000001  0.28D-08  0.21D-08     3.00
    6     4     4     1.05940021    -0.32213357  -289.74769924    -0.00000022    -0.00000001  0.27D-08  0.20D-08     3.00
    6     5     5     1.05939966    -0.32213357  -289.74769924    -0.00000025    -0.00000001  0.32D-08  0.24D-08     3.00


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.3%   1.3%
 P   1.3%  17.7%  25.3%

 Initialization:   0.0%
 Other:           53.3%

 Total CPU:        3.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 222220/\           0.0000000   0.9647168  -0.0000000   0.0000000  -0.0000000
 22222/0\           0.0000000   0.0000000   0.9647168  -0.0000000  -0.0000000
 22222/\0           0.0000000   0.0000000   0.0000000   0.0000000   0.9647168
 22222002           0.7824141  -0.0000000  -0.0000000  -0.0910127   0.0000000
 22222200          -0.3123844   0.0000000   0.0000000   0.7230953  -0.0000000
 22222020          -0.4700234   0.0000000  -0.0000000  -0.6320820   0.0000000
 20222/2\          -0.0000000  -0.0000000  -0.1149396   0.0000000   0.0000000
 202222/\          -0.0000000  -0.1149394   0.0000000  -0.0000000   0.0000000
 20222/\2          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1149390
 20222220           0.0932197  -0.0000000  -0.0000000  -0.0108432   0.0000000
 20222022          -0.0372202   0.0000000   0.0000000   0.0861517  -0.0000000
 20222202          -0.0560016   0.0000000  -0.0000000  -0.0753087   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222/0\  13.1     0.0000000   0.0000000   0.0836633  -0.0000000  -0.0000000
 2\222/\0  15.1     0.0061266  -0.0000000   0.0000000   0.0835198  -0.0000000
 2\2220/\  11.1    -0.0753894   0.0000000  -0.0000000  -0.0364483   0.0000000
 2\222/\0  14.1     0.0000000   0.0000000   0.0000000   0.0000000   0.0742401
 2\2220/\  14.1    -0.0000000  -0.0706758   0.0000000  -0.0000000   0.0000000
 2\222/0\  12.1    -0.0650096   0.0000000   0.0000000   0.0527836  -0.0000000
 2\222/0\   6.1     0.0000000   0.0000000   0.0518044  -0.0000000  -0.0000000
 2\222/\0   9.1     0.0057696  -0.0000000   0.0000000   0.0514890  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.740346    0.000000    0.000000   -0.629038
 2           0.000000    0.000000    0.000000    0.971495    0.000000
 3           0.971495    0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000    0.629038    0.000000    0.000000   -0.740346
 5          -0.000000   -0.000000    0.971494   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971494    0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.971495   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.971495    0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.971494    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.971494


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.74034614 (fixed)   0.97153963 (relaxed)   0.97149435 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013712   -0.00025846   -0.42524522
 Singles      0.03041541   -0.04857305   -0.05509146
 Pairs        0.02899256    0.17696179    0.15820311
 Total        1.05954509    0.12813028   -0.32213357
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42556568
 Nuclear energy                         0.00000000
 Kinetic energy                       293.43950631
 One electron energy                 -401.06862750
 Two electron energy                  111.32092826
 Virial quotient                       -0.98741885
 Correlation energy                    -0.32213357
 !MRCI STATE 1.1 Energy              -289.747699246674

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76688072 (Davidson, fixed reference)
 Cluster corrected energies          -289.76684890 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76688072 (Davidson, rotated reference)

 Cluster corrected energies          -289.76433569 (Pople, fixed reference)
 Cluster corrected energies          -289.76430699 (Pople, relaxed reference)
 Cluster corrected energies          -289.76433569 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97149454 (fixed)   0.97153983 (relaxed)   0.97149454 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013715   -0.00025846   -0.25822827
 Singles      0.03041568   -0.04857336   -0.05509163
 Pairs        0.02899185   -0.00000000   -0.00881367
 Total        1.05954468   -0.04883182   -0.32213357
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42556568
 Nuclear energy                         0.00000000
 Kinetic energy                       293.43946359
 One electron energy                 -401.06863541
 Two electron energy                  111.32093616
 Virial quotient                       -0.98741899
 Correlation energy                    -0.32213357
 !MRCI STATE 2.1 Energy              -289.747699244893

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76688059 (Davidson, fixed reference)
 Cluster corrected energies          -289.76684876 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76688059 (Davidson, rotated reference)

 Cluster corrected energies          -289.76433557 (Pople, fixed reference)
 Cluster corrected energies          -289.76430686 (Pople, relaxed reference)
 Cluster corrected energies          -289.76433557 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97149451 (fixed)   0.97153981 (relaxed)   0.97149451 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013715   -0.00025846   -0.25822832
 Singles      0.03041562   -0.04857329   -0.05509165
 Pairs        0.02899197    0.00000000   -0.00881360
 Total        1.05954474   -0.04883175   -0.32213357
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42556568
 Nuclear energy                         0.00000000
 Kinetic energy                       293.43947521
 One electron energy                 -401.06863180
 Two electron energy                  111.32093256
 Virial quotient                       -0.98741895
 Correlation energy                    -0.32213357
 !MRCI STATE 3.1 Energy              -289.747699244887

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76688060 (Davidson, fixed reference)
 Cluster corrected energies          -289.76684878 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76688060 (Davidson, rotated reference)

 Cluster corrected energies          -289.76433559 (Pople, fixed reference)
 Cluster corrected energies          -289.76430688 (Pople, relaxed reference)
 Cluster corrected energies          -289.76433559 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.74034604 (fixed)   0.97153945 (relaxed)   0.97149416 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013715   -0.00025846   -0.45479777
 Singles      0.03041679   -0.04857365   -0.05509203
 Pairs        0.02899156    0.20827483    0.18775623
 Total        1.05954550    0.15944272   -0.32213357
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42556568
 Nuclear energy                         0.00000000
 Kinetic energy                       293.43952240
 One electron energy                 -401.06865580
 Two electron energy                  111.32095655
 Virial quotient                       -0.98741879
 Correlation energy                    -0.32213357
 !MRCI STATE 4.1 Energy              -289.747699244851

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76688085 (Davidson, fixed reference)
 Cluster corrected energies          -289.76684902 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76688085 (Davidson, rotated reference)

 Cluster corrected energies          -289.76433581 (Pople, fixed reference)
 Cluster corrected energies          -289.76430710 (Pople, relaxed reference)
 Cluster corrected energies          -289.76433581 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97149440 (fixed)   0.97153971 (relaxed)   0.97149440 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013716   -0.00025846   -0.25822800
 Singles      0.03041629   -0.04857357   -0.05509188
 Pairs        0.02899152   -0.00000000   -0.00881368
 Total        1.05954497   -0.04883203   -0.32213357
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42556568
 Nuclear energy                         0.00000000
 Kinetic energy                       293.43947929
 One electron energy                 -401.06865564
 Two electron energy                  111.32095640
 Virial quotient                       -0.98741894
 Correlation energy                    -0.32213357
 !MRCI STATE 5.1 Energy              -289.747699243240

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76688068 (Davidson, fixed reference)
 Cluster corrected energies          -289.76684885 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76688068 (Davidson, rotated reference)

 Cluster corrected energies          -289.76433565 (Pople, fixed reference)
 Cluster corrected energies          -289.76430694 (Pople, relaxed reference)
 Cluster corrected energies          -289.76433565 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       14.76       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.50      3.19      2.09      0.52      0.03      0.40
 REAL TIME  *         9.63 SEC
 DISK USED  *        45.22 MB (local),      593.69 MB (total)
 SF USED    *        95.29 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -289.76688072  AU                              
 SETTING HLSDIAG(5)     =      -289.76688059  AU                              
 SETTING HLSDIAG(6)     =      -289.76688060  AU                              
 SETTING HLSDIAG(7)     =      -289.76688085  AU                              
 SETTING HLSDIAG(8)     =      -289.76688068  AU                              


         HLSDIAG
    -289.7946513
    -289.7946510
    -289.7946511
    -289.7668807
    -289.7668806
    -289.7668806
    -289.7668809
    -289.7668807
                                                  

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

 Time for Seward_LS:       0.64 sec

        2402978. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.64 sec, REAL time:      0.66 sec


 SORTLS1 read     2507997. and wrote     2507997. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.04 sec
 SORTLS2 read     2507997. and wrote    12192876. SO integrals in    36 records. CPU time:      0.00 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    72.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    72.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       14.76       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         7.45      0.93      3.19      2.09      0.52      0.03      0.40
 REAL TIME  *        11.30 SEC
 DISK USED  *        45.26 MB (local),      783.19 MB (total)
 SF USED    *        95.29 MB
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

 Original energies:   -289.778352   -289.778352   -289.778352
 Replaced energies:   -289.794651   -289.794651   -289.794651

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies:   -289.747699   -289.747699   -289.747699   -289.747699   -289.747699
 Replaced energies:   -289.766881   -289.766881   -289.766881   -289.766881   -289.766881



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -289.79465128

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      23.43
                            0.00      72.51      -0.00      -0.00       0.00      51.27       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.06       0.00       0.00      -0.00     -51.27       0.00       0.00       0.00       0.00
                          -72.51      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00     -58.67

    3   3.1  1.0  1.0       0.00       0.00       0.03      -0.00      51.27       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     -51.27      -0.00       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      51.27       0.00       0.00       0.00      -0.00       0.00      51.27      -0.00

    5   2.1  1.0  0.0      -0.00      -0.00      51.27       0.00       0.06       0.00       0.00      -0.00     -51.27       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

    6   3.1  1.0  0.0       0.00     -51.27       0.00       0.00       0.00       0.03      -0.00      51.27       0.00       0.00
                          -51.27      -0.00      -0.00      -0.00      -0.00       0.00     -51.27      -0.00       0.00      49.85

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      23.43
                           -0.00      -0.00      -0.00       0.00       0.00      51.27      -0.00     -72.51       0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      51.27       0.00       0.06       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      72.51       0.00       0.00      58.67

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00     -51.27       0.00       0.00       0.00       0.03       0.00
                           -0.00      -0.00      -0.00     -51.27      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   10   1.1  0.0  0.0      23.43       0.00       0.00       0.00       0.00       0.00      23.43       0.00       0.00    6094.93
                           -0.00      58.67      -0.00       0.00      -0.00     -49.85       0.00     -58.67       0.00       0.00

   11   2.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00     -51.16       0.00     -72.35       0.00      -0.00       0.00      51.16      -0.00

   12   3.1  0.0  0.0      -0.00     -51.16       0.00       0.00       0.00       0.00      -0.00     -51.16       0.00       0.00
                           51.16       0.00       0.00      -0.00       0.00      -0.00     -51.16      -0.00      -0.00      -0.00

   13   4.1  0.0  0.0     -54.23       0.00       0.00       0.00       0.00       0.00     -54.23       0.00       0.00       0.00
                           -0.00      -6.83      -0.00      -0.00      -0.00     -67.04       0.00       6.83       0.00      -0.00

   14   5.1  0.0  0.0       0.00       0.00      51.16       0.00       0.00       0.00       0.00       0.00      51.16       0.00
                           -0.00       0.00       0.00     -72.35      -0.00       0.00       0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0      -0.00      -0.00     -54.23       0.00
                           -0.00     -51.16       0.00       0.00

    2   2.1  1.0  1.0      -0.00     -51.16       0.00       0.00
                            0.00      -0.00       6.83      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      51.16
                           51.16      -0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      72.35

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                           72.35      -0.00       0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      67.04      -0.00

    7   1.1  1.0 -1.0      -0.00      -0.00     -54.23       0.00
                            0.00      51.16      -0.00      -0.00

    8   2.1  1.0 -1.0      -0.00     -51.16       0.00       0.00
                           -0.00       0.00      -6.83       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      51.16
                          -51.16       0.00      -0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6094.96       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6094.96       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6094.91       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6094.94
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by   -289.79465128 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      72.506       0.000      72.507

    2    1  |1 1>+              0.000       0.056       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000     -72.507      -0.000

    3    1  |1 1>+              0.000       0.000       0.030       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -72.506      -0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      72.506       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.056       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.030       0.000     -72.507
                              -72.506      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      72.507      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     -72.507       0.000       0.056
                              -72.507      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000      72.507       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>              33.131       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     -49.853      -0.000      82.979

    2    1  |0 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -72.350       0.000       0.000      -0.000

    3    1  |0 0>              -0.000     -72.346       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      72.347       0.000

    4    1  |0 0>             -76.689       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000     -67.041      -0.000      -9.653

    5    1  |0 0>               0.000       0.000      72.348       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -72.350      -0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000      33.131      -0.000      -0.000     -76.689       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000     -72.346       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      72.348
                               -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      72.350

    2    1  |1 0>              72.507       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      72.350      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      49.853      -0.000       0.000      67.041      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -72.347       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -82.979       0.000      -0.000       9.653      -0.000

    3    1  |1 1>-              0.030       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      72.349      -0.000       0.000      -0.000

    1    1  |0 0>               0.000    6094.934       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6094.963       0.000       0.000       0.000
                              -72.349      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6094.959       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6094.905       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6094.943
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -289.79531188    -0.00066060     -144.98      0.00000000        0.00      0.0000
    2  -289.79498158    -0.00033030      -72.49      0.00033030       72.49      0.0090
    3  -289.79498152    -0.00033024      -72.48      0.00033036       72.51      0.0090
    4  -289.79498145    -0.00033017      -72.46      0.00033043       72.52      0.0090
    5  -289.79432878     0.00032250       70.78      0.00098310      215.77      0.0268
    6  -289.79432877     0.00032251       70.78      0.00098311      215.77      0.0268
    7  -289.79432871     0.00032257       70.80      0.00098317      215.78      0.0268
    8  -289.79432864     0.00032264       70.81      0.00098324      215.80      0.0268
    9  -289.79432863     0.00032265       70.81      0.00098325      215.80      0.0268
   10  -289.76687293     0.02777835     6096.64      0.02843895     6241.63      0.7739
   11  -289.76687280     0.02777848     6096.67      0.02843908     6241.66      0.7739
   12  -289.76687276     0.02777852     6096.68      0.02843912     6241.67      0.7739
   13  -289.76687269     0.02777860     6096.70      0.02843919     6241.68      0.7739
   14  -289.76687267     0.02777861     6096.70      0.02843921     6241.69      0.7739

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57742662  0.00000000  0.00000000  0.00000000  0.79263312  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.70696904  0.00000000 -0.00000000 -0.00000000  0.70714120  0.00000000
                           0.00000000 -0.00000000 -0.00000480 -0.00000000 -0.00000000 -0.00000000  0.00138205 -0.00000000

   3    1  |1 1>+          0.00000000 -0.70703238  0.00000000 -0.00000000 -0.00000000  0.70694326  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.01386527  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.01386235 -0.00000000  0.00000000
                          -0.00000000  0.70718117 -0.00000000  0.00000000 -0.00000000  0.70679447  0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00216309 -0.00000000  0.00000000  0.00000000  0.25781804
                           0.00000000  0.00000000 -0.00000000 -0.70704015  0.00000000 -0.00000000 -0.00000000  0.65838834

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.57734657  0.00000000  0.00000000  0.00000000 -0.56550349 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000480 -0.00000000  0.00000000  0.00000000 -0.00138151  0.00000000
                          -0.00000000  0.00000000  0.70724449 -0.00000000 -0.00000000 -0.00000000  0.70686571  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.57727761  0.00000000  0.00000000  0.00000000 -0.22726670  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00216348 -0.00000000  0.00000000  0.00000000  0.25777186
                          -0.00000000 -0.00000000  0.00000000  0.70716678  0.00000000 -0.00000000 -0.00000000  0.65827041

   1    1  |0 0>          -0.00000190  0.00000000  0.00000000  0.00000000 -0.00280987  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000138 -0.00000000  0.00000000  0.00000000 -0.01581287
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00619216

   3    1  |0 0>           0.00000000  0.00000000  0.00000331  0.00000000 -0.00000000 -0.00000000  0.01698137  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00003319 -0.00000000

   4    1  |0 0>           0.00000063 -0.00000000 -0.00000000  0.00000000  0.01674792  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000191  0.00000000  0.00000000  0.00000000 -0.01697875 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00033300 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+         -0.19524085 -0.01274266  0.00546583  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.01200766 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000005 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.01200786 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00006032  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00006032 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.01200803 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002410
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.01200820

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.58879917  0.01110561  0.00830328 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.01200766 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.78416080  0.00163791 -0.01376823  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002410
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.01200799

   1    1  |0 0>           0.01674779 -0.00259960  0.99985242 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.99985378
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00200702

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.99985581 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000415  0.00000000

   4    1  |0 0>           0.00281065  0.99985241  0.00259958 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000  0.99984318 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00502241  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -289.79531188     -0.00066060     -144.98      0.00000000        0.00      0.0000
     2   1   -289.79498158     -0.00033030      -72.49      0.00033030       72.49      0.0090
     3   1   -289.79498152     -0.00033024      -72.48      0.00033036       72.51      0.0090
     4   1   -289.79498145     -0.00033017      -72.46      0.00033043       72.52      0.0090
     5   1   -289.79432878      0.00032250       70.78      0.00098310      215.77      0.0268
     6   1   -289.79432877      0.00032251       70.78      0.00098311      215.77      0.0268
     7   1   -289.79432871      0.00032257       70.80      0.00098317      215.78      0.0268
     8   1   -289.79432864      0.00032264       70.81      0.00098324      215.80      0.0268
     9   1   -289.79432863      0.00032265       70.81      0.00098325      215.80      0.0268
    10   1   -289.76687293      0.02777835     6096.64      0.02843895     6241.63      0.7739
    11   1   -289.76687280      0.02777848     6096.67      0.02843908     6241.66      0.7739
    12   1   -289.76687276      0.02777852     6096.68      0.02843912     6241.67      0.7739
    13   1   -289.76687269      0.02777860     6096.70      0.02843919     6241.68      0.7739
    14   1   -289.76687267      0.02777861     6096.70      0.02843921     6241.69      0.7739

 E0 =   -289.79465128 is the energy of the lowest zeroth-order state
 E1 =   -289.79531188 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57742662  0.00000000  0.00000000  0.00000000  0.79263312  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.70696904  0.00000000 -0.00000000 -0.00000000  0.70714120  0.00000000
                                0.00000000 -0.00000000 -0.00000480 -0.00000000 -0.00000000 -0.00000000  0.00138205 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.70703238  0.00000000 -0.00000000 -0.00000000  0.70694326  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.01386527  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.01386235 -0.00000000  0.00000000
                               -0.00000000  0.70718117 -0.00000000  0.00000000 -0.00000000  0.70679447  0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00216309 -0.00000000  0.00000000  0.00000000  0.25781804
                                0.00000000  0.00000000 -0.00000000 -0.70704015  0.00000000 -0.00000000 -0.00000000  0.65838834

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.57734657  0.00000000  0.00000000  0.00000000 -0.56550349 -0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000480 -0.00000000  0.00000000  0.00000000 -0.00138151  0.00000000
                               -0.00000000  0.00000000  0.70724449 -0.00000000 -0.00000000 -0.00000000  0.70686571  0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.57727761  0.00000000  0.00000000  0.00000000 -0.22726670  0.00000000 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00216348 -0.00000000  0.00000000  0.00000000  0.25777186
                               -0.00000000 -0.00000000  0.00000000  0.70716678  0.00000000 -0.00000000 -0.00000000  0.65827041

 10  1     1    1  |0 0>       -0.00000190  0.00000000  0.00000000  0.00000000 -0.00280987  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000138 -0.00000000  0.00000000  0.00000000 -0.01581287
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00619216

 12  1     3    1  |0 0>        0.00000000  0.00000000  0.00000331  0.00000000 -0.00000000 -0.00000000  0.01698137  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00003319 -0.00000000

 13  1     4    1  |0 0>        0.00000063 -0.00000000 -0.00000000  0.00000000  0.01674792  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000191  0.00000000  0.00000000  0.00000000 -0.01697875 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00033300 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+      -0.19524085 -0.01274266  0.00546583  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.01200766 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000005 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.01200786 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00006032  0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00006032 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.01200803 -0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002410
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.01200820

  6  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.58879917  0.01110561  0.00830328 -0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.01200766 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.78416080  0.00163791 -0.01376823  0.00000000 -0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002410
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.01200799

 10  1     1    1  |0 0>        0.01674779 -0.00259960  0.99985242 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.99985378
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00200702

 12  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.99985581 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000415  0.00000000

 13  1     4    1  |0 0>        0.00281065  0.99985241  0.00259958 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000  0.99984318 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00502241  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.34%    0.00%    0.00%    0.00%   62.83%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   49.98%    0.00%    0.00%    0.00%   50.01%    0.00%
  3  1     3    1  |1 1>+         0.00%   49.99%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%   50.01%    0.00%    0.00%    0.00%   49.98%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   49.99%    0.00%    0.00%    0.00%   49.99%
  6  1     3    1  |1 0>         33.33%    0.00%    0.00%    0.00%   31.98%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   50.02%    0.00%    0.00%    0.00%   49.97%    0.00%
  8  1     2    1  |1 1>-        33.32%    0.00%    0.00%    0.00%    5.17%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   50.01%    0.00%    0.00%    0.00%   49.98%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+         3.81%    0.02%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  6  1     3    1  |1 0>         34.67%    0.01%    0.01%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  8  1     2    1  |1 1>-        61.49%    0.00%    0.02%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 10  1     1    1  |0 0>          0.03%    0.00%   99.97%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   99.97%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.97%    0.00%
 13  1     4    1  |0 0>          0.00%   99.97%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%   99.97%    0.00%    0.00%


 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       14.76       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.86      3.39      0.93      3.19      2.09      0.52      0.03      0.40
 REAL TIME  *        15.43 SEC
 DISK USED  *        45.26 MB (local),      783.19 MB (total)
 SF USED    *        95.29 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -289.766872667411

              CI              CI           MULTI         RHF-SCF
   -289.74769924   -289.77835152   -289.42556568   -289.45517525
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
