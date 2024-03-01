
 Working directory              : /wrk/irikura/molpro.KOmelLK9G0/
 Global scratch directory       : /wrk/irikura/molpro.KOmelLK9G0/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.KOmelLK9G0/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Si SO-CI
                                                                                 ! Active space (12/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Si};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=14,sym=1,spin=2}
 
 {multi
     closed,1,0
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
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Si SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 23-Feb-24          TIME: 16:24:51  
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

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     24 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         0.61      0.42
 REAL TIME  *         1.15 SEC
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
   5     -289.45517477      -0.00003265     0.13D-03     0.85D-03     4     0       0.00      0.01    diag2
   6     -289.45517525      -0.00000047     0.19D-04     0.16D-03     5     0       0.00      0.01    diag2
   7     -289.45517525      -0.00000000     0.18D-05     0.10D-04     6     0       0.00      0.01    diag2
   8     -289.45517525      -0.00000000     0.29D-06     0.18D-05     7     0       0.01      0.02    fixocc
   9     -289.45517525      -0.00000000     0.25D-07     0.26D-06     0     0       0.00      0.02    diag

 Final alpha occupancy:   3   5
 Final beta  occupancy:   3   3

 !RHF STATE 1.1 Energy               -289.455175250784
  RHF One-electron energy            -401.378079999734
  RHF Two-electron energy             111.922904748950
  RHF Kinetic energy                  293.246498577840
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
    1.2     2.00000    -4.25613     1  1  px   0.99694
    2.2     2.00000    -4.25495     1  1  pz   1.00096
    3.2     2.00000    -4.25495     1  1  py   1.00030
    4.2     1.00000    -0.29682     1  2  py   1.00850
    5.2     1.00000    -0.29682     1  2  pz   1.00916


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
 CPU TIMES  *         0.67      0.06      0.42
 REAL TIME  *         2.22 SEC
 DISK USED  *        29.72 MB (local),      407.64 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:  12    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:             186   (216 determinants, 448 intermediate states)

 State symmetry 2

 Number of active electrons:  12    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             184   (400 determinants, 784 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.316D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.216D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.145D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 3 5 1   6 2 4 3 5 5 4 3 2 6   1 5 4 3 2 6 1 5 4 3   6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.524D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.216D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.440D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.422D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.190D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.564D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 3 2 1 3   2 1 7 910 4 8 5 6 7  10 9 8 4 6 5 1 3 2 7  10 9 8 4 6 5 1 3 2 1
                                        3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  308  ( 2 closed/active, 30 closed/virtual, 0 active/active, 276 active/virtual )
 Total number of variables:    3356
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9   12    0   -289.41802900    -289.43683057   -0.01880157    0.06384200 0.00003046 0.00000000  0.34E+00      0.67
   2   10   18    0   -289.43464357    -289.43553646   -0.00089289    0.12458925 0.00000080 0.00000000  0.28E-01      1.72
   3    5   10    0   -289.43554010    -289.43554015   -0.00000005    0.00041817 0.00000018 0.00000000  0.28E-03      2.25
   4   40   78    0   -289.43554015    -289.43554015    0.00000000    0.00000017 0.00000015 0.00000000  0.34E-06      5.69

 CONVERGENCE REACHED!  Final gradient:    0.00000004 ( 0.37E-07)
                       Final energy:   -289.43554015
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -289.465148223903
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.23638962
 One electron energy                          -401.31753494
 Two electron energy                           111.85238671
 Virial ratio                                    1.98713924
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -289.465148222955
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.23638972
 One electron energy                          -401.31753516
 Two electron energy                           111.85238694
 Virial ratio                                    1.98713924
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -289.465148222605
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.23638975
 One electron energy                          -401.31753524
 Two electron energy                           111.85238702
 Virial ratio                                    1.98713924
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -289.425857556826
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22778809
 One electron energy                          -401.31240468
 Two electron energy                           111.88654712
 Virial ratio                                    1.98703421
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -289.425857556782
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22778809
 One electron energy                          -401.31240469
 Two electron energy                           111.88654713
 Virial ratio                                    1.98703421
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -289.425857554599
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22778818
 One electron energy                          -401.31240491
 Two electron energy                           111.88654735
 Virial ratio                                    1.98703421
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -289.425857553786
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22778822
 One electron energy                          -401.31240499
 Two electron energy                           111.88654744
 Virial ratio                                    1.98703421
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -289.425857553249
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22778824
 One electron energy                          -401.31240504
 Two electron energy                           111.88654749
 Virial ratio                                    1.98703421
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -289.395128896160
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.18962973
 One electron energy                          -401.20190495
 Two electron energy                           111.80677605
 Virial ratio                                    1.98705786
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999999
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999998
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.929879979017
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999999971
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000004437
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999999498
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.070116121520
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000337442
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999605216
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.489672420988
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000009
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999985096
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000057580
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     2.510341942837
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999662559
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000394786
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.580447599995
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000020
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000010467
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999942922
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.419541935644
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 3 6 2 4 1   5 3 6 2 4 5 3 6 2 4   1 5 3 6 2 4 1 5 3 6   2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 1 2 3 2   1 3 9 7 510 8 6 4 9   7 5 810 6 4 2 1 3 7   9 5 810 6 4 2 1 3 2
                                        1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -68.93256     1  1  s    0.99910
    2.1     2.00000    -6.23948     1  2  s    0.99942
    3.1     1.95833    -0.53892     1  3  s    1.01619
    1.2     1.99998    -4.26108     1  1  pz   1.00005
    2.2     1.99998    -4.26108     1  1  px   1.00005
    3.2     1.99998    -4.26108     1  1  py   1.00005
    4.2     0.68058    -0.07053     1  2  pz   0.99687
    5.2     0.68058    -0.07053     1  2  px   0.99687
    6.2     0.68058    -0.07053     1  2  py   0.99687
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 22 222a0a      0.99179721      0.00000000      0.00000000
 22 2220aa     -0.00000000      0.00057613      0.99179705
 22 222aa0     -0.00000000      0.99179705     -0.00057613
 20 222a2a     -0.12770496     -0.00000000      0.00000000
 20 222aa2      0.00000000     -0.12770493      0.00007418
 20 2222aa      0.00000000     -0.00007418     -0.12770493
 
 Energy:     -289.46514822   -289.46514822   -289.46514822
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 22 222020     -0.10721822      0.00000006      0.00000968     -0.00004298      0.80267045      0.56062961
 22 222200      0.74874218     -0.00000489      0.00001299      0.00002628     -0.30848157      0.56062950
 22 222a0b      0.00000482      0.70130718      0.00000088     -0.00000182      0.00000059     -0.00000000
 22 222b0a     -0.00000482     -0.70130718     -0.00000088      0.00000182     -0.00000059      0.00000000
 22 222ab0     -0.00001657     -0.00000088      0.70130718      0.00003818     -0.00001067     -0.00000000
 22 222ba0      0.00001657      0.00000088     -0.70130718     -0.00003818      0.00001067      0.00000000
 22 2220ab     -0.00000967      0.00000182     -0.00003818      0.70130718      0.00003626     -0.00000000
 22 2220ba      0.00000967     -0.00000182      0.00003818     -0.70130718     -0.00003626      0.00000000
 22 222002     -0.64152390      0.00000483     -0.00002267      0.00001670     -0.49418901      0.56062953
 20 222022      0.09640240     -0.00000063      0.00000167      0.00000338     -0.03971774     -0.13790270
 20 222220     -0.08259780      0.00000062     -0.00000292      0.00000215     -0.06362803     -0.13790269
 20 222202     -0.01380462      0.00000001      0.00000125     -0.00000553      0.10334581     -0.13790268
 20 222b2a      0.00000062      0.09029503      0.00000011     -0.00000023      0.00000008     -0.00000000
 20 222a2b     -0.00000062     -0.09029503     -0.00000011      0.00000023     -0.00000008      0.00000000
 20 222ba2     -0.00000213     -0.00000011      0.09029503      0.00000492     -0.00000137     -0.00000000
 20 222ab2      0.00000213      0.00000011     -0.09029503     -0.00000492      0.00000137      0.00000000
 20 2222ab      0.00000125     -0.00000023      0.00000492     -0.09029503     -0.00000467      0.00000000
 20 2222ba     -0.00000125      0.00000023     -0.00000492      0.09029503      0.00000467     -0.00000000
 
 Energy:     -289.42585756   -289.42585756   -289.42585755   -289.42585755   -289.42585755   -289.39512890
 


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
 CPU TIMES  *         6.34      5.67      0.06      0.42
 REAL TIME  *         8.13 SEC
 DISK USED  *        31.13 MB (local),      424.59 MB (total)
 SF USED    *         5.46 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -289.4651482   2.0
    -289.4651482   2.0
    -289.4651482   2.0
    -289.4258576   6.0
    -289.4258576   6.0
    -289.4258576   6.0
    -289.4258576   6.0
    -289.4258576   6.0
    -289.3951289   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 14
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:      126 conf      186 CSFs
 N elec internal:      238 conf      378 CSFs
 N-1 el internal:      504 conf     1512 CSFs
 N-2 el internal:      784 conf     4620 CSFs

 Number of electrons in valence space:                     12
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -289.46514822
     2      -289.46514822
     3      -289.46514822

 Number of blocks in overlap matrix:    10   Smallest eigenvalue:  0.24D-04
 Number of N-2 electron functions:     192
 Number of N-1 electron functions:    1512

 Number of internal configurations:                  186
 Number of singly external configurations:         49860
 Number of doubly external configurations:        210312
 Total number of contracted configurations:       260358
 Total number of uncontracted configurations:    5054190

 Diagonal Coupling coefficients finished.               Storage:    315210 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    263666 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.46514822     0.00000000    -0.31773901  0.40D-01  0.16D-01     0.04
    1     2     2     1.00000000     0.00000000  -289.46514822    -0.00000000    -0.31794228  0.41D-01  0.16D-01     0.04
    1     3     3     1.00000000     0.00000000  -289.46514822    -0.00000000    -0.31759139  0.40D-01  0.16D-01     0.04
    2     1     1     1.05041100    -0.30022843  -289.76537665    -0.30022843    -0.00473735  0.86D-03  0.49D-03     0.71
    2     2     2     1.05063229    -0.30018578  -289.76533400    -0.30018578    -0.00477989  0.89D-03  0.49D-03     0.71
    2     3     3     1.05094624    -0.30013026  -289.76527849    -0.30013026    -0.00483168  0.93D-03  0.49D-03     0.71
    3     1     1     1.04497651    -0.30804922  -289.77319744    -0.00782079    -0.00169404  0.17D-03  0.18D-03     1.40
    3     2     2     1.04488983    -0.30802244  -289.77317066    -0.00783666    -0.00170001  0.18D-03  0.18D-03     1.40
    3     3     3     1.04477111    -0.30799163  -289.77313986    -0.00786137    -0.00170629  0.18D-03  0.18D-03     1.40
    4     1     1     1.05080723    -0.31164305  -289.77679128    -0.00359384    -0.00035118  0.45D-04  0.41D-04     2.08
    4     2     2     1.05077508    -0.31163810  -289.77678633    -0.00361566    -0.00035328  0.46D-04  0.41D-04     2.08
    4     3     3     1.05072370    -0.31163282  -289.77678104    -0.00364119    -0.00035569  0.48D-04  0.41D-04     2.08
    5     1     1     1.05135965    -0.31216120  -289.77730943    -0.00051815    -0.00009347  0.57D-05  0.10D-04     2.77
    5     2     2     1.05137133    -0.31216071  -289.77730893    -0.00052260    -0.00009319  0.59D-05  0.10D-04     2.77
    5     3     3     1.05139138    -0.31215994  -289.77730816    -0.00052712    -0.00009313  0.61D-05  0.10D-04     2.77
    6     1     1     1.05095258    -0.31231250  -289.77746072    -0.00015129    -0.00004288  0.24D-05  0.50D-05     3.44
    6     2     2     1.05095559    -0.31231231  -289.77746053    -0.00015160    -0.00004301  0.23D-05  0.50D-05     3.44
    6     3     3     1.05095974    -0.31231182  -289.77746004    -0.00015188    -0.00004329  0.23D-05  0.50D-05     3.44
    7     1     1     1.05145521    -0.31236671  -289.77751493    -0.00005421    -0.00001400  0.11D-05  0.14D-05     4.09
    7     2     2     1.05145665    -0.31236667  -289.77751489    -0.00005436    -0.00001397  0.11D-05  0.14D-05     4.09
    7     3     3     1.05145430    -0.31236655  -289.77751477    -0.00005473    -0.00001396  0.12D-05  0.14D-05     4.09
    8     1     1     1.05182977    -0.31238685  -289.77753507    -0.00002014    -0.00000527  0.44D-06  0.52D-06     4.74
    8     2     2     1.05182814    -0.31238682  -289.77753504    -0.00002015    -0.00000530  0.43D-06  0.52D-06     4.74
    8     3     3     1.05182609    -0.31238674  -289.77753496    -0.00002019    -0.00000535  0.43D-06  0.52D-06     4.74
    9     1     1     1.05179155    -0.31239456  -289.77754278    -0.00000771    -0.00000273  0.77D-07  0.31D-06     5.40
    9     2     2     1.05179338    -0.31239451  -289.77754274    -0.00000770    -0.00000276  0.74D-07  0.32D-06     5.40
    9     3     3     1.05179591    -0.31239443  -289.77754266    -0.00000769    -0.00000281  0.72D-07  0.32D-06     5.40
   10     1     1     1.05183388    -0.31239781  -289.77754604    -0.00000325    -0.00000115  0.62D-07  0.12D-06     6.07
   10     2     2     1.05183252    -0.31239779  -289.77754601    -0.00000328    -0.00000115  0.63D-07  0.12D-06     6.07
   10     3     3     1.05183060    -0.31239776  -289.77754598    -0.00000332    -0.00000116  0.65D-07  0.12D-06     6.07
   11     1     1     1.05191573    -0.31239928  -289.77754751    -0.00000147    -0.00000051  0.19D-07  0.55D-07     6.72
   11     2     2     1.05191449    -0.31239927  -289.77754750    -0.00000148    -0.00000051  0.18D-07  0.56D-07     6.72
   11     3     3     1.05191279    -0.31239925  -289.77754748    -0.00000150    -0.00000052  0.17D-07  0.57D-07     6.72
   12     1     1     1.05192725    -0.31239993  -289.77754815    -0.00000064    -0.00000029  0.59D-08  0.34D-07     7.37
   12     2     2     1.05192770    -0.31239992  -289.77754814    -0.00000065    -0.00000029  0.60D-08  0.35D-07     7.37
   12     3     3     1.05192815    -0.31239991  -289.77754813    -0.00000065    -0.00000030  0.65D-08  0.35D-07     7.37
   13     1     1     1.05193283    -0.31240026  -289.77754849    -0.00000033    -0.00000013  0.45D-08  0.14D-07     8.03
   13     2     2     1.05193277    -0.31240026  -289.77754848    -0.00000034    -0.00000013  0.45D-08  0.14D-07     8.03
   13     3     3     1.05193264    -0.31240025  -289.77754848    -0.00000035    -0.00000014  0.46D-08  0.14D-07     8.03
   14     1     1     1.05195071    -0.31240042  -289.77754865    -0.00000016    -0.00000007  0.63D-09  0.80D-08     8.69
   14     2     2     1.05195019    -0.31240042  -289.77754864    -0.00000016    -0.00000007  0.56D-09  0.81D-08     8.69
   14     3     3     1.05194951    -0.31240042  -289.77754864    -0.00000016    -0.00000007  0.48D-09  0.84D-08     8.69


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.5%   2.4%
 P   0.9%  18.9%  49.0%

 Initialization:   0.3%
 Other:           27.7%

 Total CPU:        8.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 222220//          -0.0000000  -0.0000000   0.9682117
 22222/0/           0.0000000   0.9682115   0.0000000
 22222//0           0.9682113  -0.0000000   0.0000000
 202222//           0.0000000   0.0000000  -0.1146598
 20222/2/          -0.0000000  -0.1146593  -0.0000000
 20222//2          -0.1146589   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.974939   -0.000000
 2           0.974939   -0.000000   -0.000000
 3           0.000000    0.000000    0.974939

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.974939   -0.000000    0.000000
 2          -0.000000    0.974939    0.000000
 3           0.000000    0.000000    0.974939


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97493868 (fixed)   0.97499481 (relaxed)   0.97493868 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011515    0.00000000   -0.25602380
 Singles      0.02632587   -0.04308096   -0.04876278
 Pairs        0.02563083    0.00000000   -0.00761384
 Total        1.05207184   -0.04308096   -0.31240042
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46514822
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45969854
 One electron energy                 -401.14495186
 Two electron energy                  111.36740321
 Virial quotient                       -0.98745262
 Correlation energy                    -0.31240042
 !MRCI STATE 1.1 Energy              -289.777548645464

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79381591 (Davidson, fixed reference)
 Cluster corrected energies          -289.79377807 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79381591 (Davidson, rotated reference)

 Cluster corrected energies          -289.79097596 (Pople, fixed reference)
 Cluster corrected energies          -289.79094375 (Pople, relaxed reference)
 Cluster corrected energies          -289.79097596 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97493893 (fixed)   0.97499505 (relaxed)   0.97493893 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011514    0.00000000   -0.25602417
 Singles      0.02632551   -0.04308070   -0.04876269
 Pairs        0.02563066    0.00000000   -0.00761356
 Total        1.05207131   -0.04308070   -0.31240042
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46514822
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45970707
 One electron energy                 -401.14495600
 Two electron energy                  111.36740735
 Virial quotient                       -0.98745259
 Correlation energy                    -0.31240042
 !MRCI STATE 2.1 Energy              -289.777548642962

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79381574 (Davidson, fixed reference)
 Cluster corrected energies          -289.79377790 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79381574 (Davidson, rotated reference)

 Cluster corrected energies          -289.79097581 (Pople, fixed reference)
 Cluster corrected energies          -289.79094361 (Pople, relaxed reference)
 Cluster corrected energies          -289.79097581 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97493925 (fixed)   0.97499537 (relaxed)   0.97493925 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011513    0.00000000   -0.00003419
 Singles      0.02632509   -0.04308039   -0.04876258
 Pairs        0.02563040   -0.26932003   -0.26360364
 Total        1.05207062   -0.31240042   -0.31240042
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46514822
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45971877
 One electron energy                 -401.14496123
 Two electron energy                  111.36741259
 Virial quotient                       -0.98745255
 Correlation energy                    -0.31240042
 !MRCI STATE 3.1 Energy              -289.777548639611

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79381552 (Davidson, fixed reference)
 Cluster corrected energies          -289.79377769 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79381552 (Davidson, rotated reference)

 Cluster corrected energies          -289.79097563 (Pople, fixed reference)
 Cluster corrected energies          -289.79094342 (Pople, relaxed reference)
 Cluster corrected energies          -289.79097563 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        6.99       700     1000      520     2100     2140     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        15.21      8.86      5.67      0.06      0.42
 REAL TIME  *        18.36 SEC
 DISK USED  *        37.45 MB (local),      500.45 MB (total)
 SF USED    *        66.46 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -289.79381591  AU                              
 SETTING HLSDIAG(2)     =      -289.79381574  AU                              
 SETTING HLSDIAG(3)     =      -289.79381552  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 14
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:      154 conf      184 CSFs
 N elec internal:      266 conf      336 CSFs
 N-1 el internal:      504 conf     1008 CSFs
 N-2 el internal:      784 conf     2688 CSFs

 Number of electrons in valence space:                     12
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -289.42585756
     2      -289.42585756
     3      -289.42585755
     4      -289.42585755
     5      -289.42585755
     6      -289.39512890

 Number of blocks in overlap matrix:     4   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:     375
 Number of N-1 electron functions:    1008

 Number of internal configurations:                  184
 Number of singly external configurations:         33336
 Number of doubly external configurations:        410445
 Total number of contracted configurations:       443965
 Total number of uncontracted configurations:    2956816

 Diagonal Coupling coefficients finished.               Storage:    406732 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    278184 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.42585756     0.00000000    -0.31503619  0.42D-01  0.13D-01     0.14
    1     2     2     1.00000000     0.00000000  -289.42585756     0.00000000    -0.31487225  0.44D-01  0.13D-01     0.14
    1     3     3     1.00000000     0.00000000  -289.42585755     0.00000000    -0.31488345  0.44D-01  0.13D-01     0.14
    1     4     4     1.00000000     0.00000000  -289.42585755     0.00000000    -0.31458064  0.43D-01  0.13D-01     0.14
    1     5     5     1.00000000     0.00000000  -289.42585755     0.00000000    -0.31672331  0.43D-01  0.13D-01     0.14
    1     6     6     1.00000000     0.00000000  -289.39512890     0.00000000    -0.28508692  0.10D-01  0.14D-01     0.14
    2     1     1     1.05086249    -0.30157015  -289.72742770    -0.30157015    -0.00662675  0.11D-02  0.48D-03     3.46
    2     2     2     1.05024090    -0.30059820  -289.72645576    -0.30059820    -0.00648206  0.11D-02  0.47D-03     3.46
    2     3     3     1.05105339    -0.29942764  -289.72528520    -0.29942764    -0.00655153  0.13D-02  0.43D-03     3.46
    2     4     4     1.05075699    -0.29942569  -289.72528324    -0.29942569    -0.00653322  0.12D-02  0.43D-03     3.46
    2     5     5     1.05130377    -0.29921088  -289.72506843    -0.29921088    -0.00658030  0.13D-02  0.41D-03     3.46
    2     6     6     1.02322360    -0.27768884  -289.67281773    -0.27768884    -0.00794522  0.11D-02  0.62D-03     3.46
    3     1     1     1.04630606    -0.31230859  -289.73816614    -0.01073844    -0.00291216  0.33D-03  0.27D-03     6.77
    3     2     2     1.04558045    -0.31201219  -289.73786975    -0.01141399    -0.00307582  0.43D-03  0.24D-03     6.77
    3     3     3     1.04447480    -0.31107196  -289.73692952    -0.01164432    -0.00322734  0.55D-03  0.20D-03     6.77
    3     4     4     1.04438798    -0.31102846  -289.73688601    -0.01160277    -0.00323361  0.57D-03  0.20D-03     6.77
    3     5     5     1.04415181    -0.31075970  -289.73661725    -0.01154882    -0.00324449  0.57D-03  0.20D-03     6.77
    3     6     6     1.02562893    -0.29451836  -289.68964726    -0.01682953    -0.00590394  0.95D-03  0.49D-03     6.77
    4     1     1     1.05457321    -0.31836640  -289.74422396    -0.00605782    -0.00110479  0.67D-04  0.10D-03    10.09
    4     2     2     1.05407242    -0.31835659  -289.74421415    -0.00634440    -0.00115754  0.89D-04  0.90D-04    10.09
    4     3     3     1.05409310    -0.31831461  -289.74417216    -0.00724264    -0.00119042  0.90D-04  0.94D-04    10.09
    4     4     4     1.05380779    -0.31823920  -289.74409676    -0.00721075    -0.00123782  0.93D-04  0.96D-04    10.09
    4     5     5     1.05349082    -0.31773771  -289.74359526    -0.00697801    -0.00148828  0.94D-04  0.19D-03    10.09
    4     6     6     1.04007903    -0.30561256  -289.70074146    -0.01109420    -0.00242571  0.12D-03  0.36D-03    10.09
    5     1     1     1.05622491    -0.31990167  -289.74575923    -0.00153527    -0.00043006  0.33D-04  0.43D-04    13.43
    5     2     2     1.05622141    -0.31987981  -289.74573737    -0.00152322    -0.00044259  0.36D-04  0.44D-04    13.43
    5     3     3     1.05624689    -0.31986094  -289.74571849    -0.00154633    -0.00044897  0.41D-04  0.42D-04    13.43
    5     4     4     1.05651211    -0.31983992  -289.74569747    -0.00160072    -0.00043471  0.41D-04  0.40D-04    13.43
    5     5     5     1.05650929    -0.31950477  -289.74536233    -0.00176706    -0.00051158  0.74D-04  0.39D-04    13.43
    5     6     6     1.04168251    -0.30884264  -289.70397153    -0.00323008    -0.00083215  0.97D-04  0.64D-04    13.43
    6     1     1     1.05559134    -0.32052668  -289.74638424    -0.00062501    -0.00021193  0.20D-04  0.16D-04    16.73
    6     2     2     1.05553744    -0.32051283  -289.74637039    -0.00063302    -0.00021292  0.20D-04  0.16D-04    16.73
    6     3     3     1.05550719    -0.32050122  -289.74635878    -0.00064028    -0.00021799  0.21D-04  0.16D-04    16.73
    6     4     4     1.05575316    -0.32049223  -289.74634978    -0.00065231    -0.00021691  0.20D-04  0.16D-04    16.73
    6     5     5     1.05540384    -0.32030358  -289.74616114    -0.00079881    -0.00028193  0.19D-04  0.24D-04    16.73
    6     6     6     1.04292258    -0.31024214  -289.70537104    -0.00139950    -0.00050296  0.49D-04  0.44D-04    16.73
    7     1     1     1.05716719    -0.32086287  -289.74672042    -0.00033618    -0.00011927  0.50D-05  0.10D-04    20.01
    7     2     2     1.05710691    -0.32085357  -289.74671112    -0.00034073    -0.00012449  0.49D-05  0.10D-04    20.01
    7     3     3     1.05699097    -0.32084982  -289.74670737    -0.00034859    -0.00012895  0.48D-05  0.11D-04    20.01
    7     4     4     1.05722142    -0.32082980  -289.74668736    -0.00033757    -0.00012833  0.37D-05  0.12D-04    20.01
    7     5     5     1.05656354    -0.32069990  -289.74655745    -0.00039631    -0.00018760  0.29D-05  0.23D-04    20.01
    7     6     6     1.04622490    -0.31096103  -289.70608992    -0.00071889    -0.00030537  0.52D-05  0.38D-04    20.01
    8     1     1     1.05811005    -0.32101948  -289.74687704    -0.00015661    -0.00006573  0.29D-05  0.68D-05    23.27
    8     2     2     1.05806551    -0.32101482  -289.74687238    -0.00016125    -0.00006796  0.38D-05  0.64D-05    23.27
    8     3     3     1.05809539    -0.32101392  -289.74687147    -0.00016410    -0.00006772  0.33D-05  0.68D-05    23.27
    8     4     4     1.05815244    -0.32099638  -289.74685393    -0.00016657    -0.00007151  0.44D-05  0.72D-05    23.27
    8     5     5     1.05779994    -0.32091643  -289.74677398    -0.00021653    -0.00009234  0.83D-05  0.91D-05    23.27
    8     6     6     1.04786994    -0.31133089  -289.70645979    -0.00036987    -0.00013494  0.12D-04  0.13D-04    23.27
    9     1     1     1.05820838    -0.32110350  -289.74696106    -0.00008402    -0.00003785  0.18D-05  0.36D-05    26.54
    9     2     2     1.05817333    -0.32110082  -289.74695838    -0.00008600    -0.00003872  0.17D-05  0.38D-05    26.54
    9     3     3     1.05818911    -0.32109963  -289.74695719    -0.00008571    -0.00003874  0.18D-05  0.38D-05    26.54
    9     4     4     1.05819133    -0.32109000  -289.74694756    -0.00009362    -0.00004170  0.18D-05  0.41D-05    26.54
    9     5     5     1.05796683    -0.32103502  -289.74689257    -0.00011859    -0.00005891  0.12D-05  0.67D-05    26.54
    9     6     6     1.04862821    -0.31152147  -289.70665037    -0.00019058    -0.00008640  0.51D-05  0.95D-05    26.54
   10     1     1     1.05852112    -0.32115530  -289.74701286    -0.00005180    -0.00002602  0.26D-06  0.29D-05    29.82
   10     2     2     1.05845056    -0.32115304  -289.74701059    -0.00005222    -0.00002746  0.25D-06  0.30D-05    29.82
   10     3     3     1.05848198    -0.32115208  -289.74700964    -0.00005245    -0.00002721  0.24D-06  0.30D-05    29.82
   10     4     4     1.05847839    -0.32114596  -289.74700352    -0.00005596    -0.00002844  0.29D-06  0.32D-05    29.82
   10     5     5     1.05820186    -0.32110882  -289.74696637    -0.00007380    -0.00004086  0.10D-05  0.50D-05    29.82
   10     6     6     1.04957900    -0.31163379  -289.70676269    -0.00011232    -0.00006063  0.66D-06  0.83D-05    29.82
   11     1     1     1.05886090    -0.32118656  -289.74704411    -0.00003125    -0.00001558  0.42D-06  0.16D-05    33.13
   11     2     2     1.05883151    -0.32118561  -289.74704317    -0.00003257    -0.00001595  0.52D-06  0.16D-05    33.13
   11     3     3     1.05884435    -0.32118461  -289.74704217    -0.00003253    -0.00001614  0.47D-06  0.16D-05    33.13
   11     4     4     1.05885027    -0.32118085  -289.74703840    -0.00003489    -0.00001718  0.67D-06  0.18D-05    33.13
   11     5     5     1.05862904    -0.32115706  -289.74701461    -0.00004824    -0.00002386  0.74D-06  0.27D-05    33.13
   11     6     6     1.05024089    -0.31170402  -289.70683292    -0.00007023    -0.00003090  0.19D-05  0.34D-05    33.13
   12     1     1     1.05900225    -0.32120615  -289.74706371    -0.00001960    -0.00001005  0.20D-06  0.11D-05    36.49
   12     2     2     1.05898323    -0.32120539  -289.74706294    -0.00001977    -0.00001023  0.16D-06  0.11D-05    36.49
   12     3     3     1.05898953    -0.32120473  -289.74706228    -0.00002012    -0.00001041  0.18D-06  0.11D-05    36.49
   12     4     4     1.05898523    -0.32120263  -289.74706019    -0.00002178    -0.00001111  0.18D-06  0.13D-05    36.49
   12     5     5     1.05884194    -0.32118471  -289.74704227    -0.00002766    -0.00001597  0.16D-06  0.21D-05    36.49
   12     6     6     1.05059323    -0.31174480  -289.70687370    -0.00004078    -0.00002138  0.49D-06  0.28D-05    36.49
   13     1     1     1.05912090    -0.32121893  -289.74707648    -0.00001277    -0.00000736  0.54D-07  0.93D-06    39.79
   13     2     2     1.05909378    -0.32121822  -289.74707577    -0.00001283    -0.00000768  0.82D-07  0.96D-06    39.79
   13     3     3     1.05910155    -0.32121775  -289.74707530    -0.00001302    -0.00000771  0.68D-07  0.97D-06    39.79
   13     4     4     1.05908181    -0.32121659  -289.74707415    -0.00001396    -0.00000791  0.98D-07  0.98D-06    39.79
   13     5     5     1.05894728    -0.32120415  -289.74706171    -0.00001944    -0.00001175  0.22D-06  0.14D-05    39.79
   13     6     6     1.05091606    -0.31177184  -289.70690073    -0.00002703    -0.00001608  0.22D-06  0.22D-05    39.79
   14     1     1     1.05923733    -0.32122741  -289.74708497    -0.00000849    -0.00000473  0.64D-07  0.53D-06    43.08
   14     2     2     1.05922380    -0.32122700  -289.74708456    -0.00000879    -0.00000487  0.63D-07  0.52D-06    43.08
   14     3     3     1.05922676    -0.32122665  -289.74708421    -0.00000891    -0.00000494  0.66D-07  0.54D-06    43.08
   14     4     4     1.05921566    -0.32122598  -289.74708354    -0.00000939    -0.00000516  0.84D-07  0.61D-06    43.08
   14     5     5     1.05908773    -0.32121756  -289.74707511    -0.00001340    -0.00000733  0.49D-07  0.91D-06    43.08
   14     6     6     1.05117358    -0.31178984  -289.70691874    -0.00001800    -0.00000914  0.24D-06  0.11D-05    43.08
   15     1     1     1.05930782    -0.32123309  -289.74709064    -0.00000567    -0.00000315  0.18D-07  0.34D-06    46.36
   15     2     2     1.05930014    -0.32123274  -289.74709029    -0.00000573    -0.00000320  0.18D-07  0.36D-06    46.36
   15     3     3     1.05930063    -0.32123253  -289.74709008    -0.00000587    -0.00000328  0.18D-07  0.37D-06    46.36
   15     4     4     1.05929976    -0.32123215  -289.74708970    -0.00000616    -0.00000342  0.22D-07  0.41D-06    46.36
   15     5     5     1.05921582    -0.32122585  -289.74708340    -0.00000829    -0.00000503  0.51D-07  0.67D-06    46.36
   15     6     6     1.05135656    -0.31180100  -289.70692990    -0.00001116    -0.00000637  0.24D-07  0.90D-06    46.36
   16     1     1     1.05936899    -0.32123702  -289.74709457    -0.00000393    -0.00000239  0.16D-07  0.32D-06    49.62
   16     2     2     1.05935760    -0.32123672  -289.74709428    -0.00000399    -0.00000251  0.21D-07  0.33D-06    49.62
   16     3     3     1.05935888    -0.32123658  -289.74709413    -0.00000405    -0.00000252  0.19D-07  0.33D-06    49.62
   16     4     4     1.05934977    -0.32123640  -289.74709396    -0.00000426    -0.00000252  0.25D-07  0.33D-06    49.62
   16     5     5     1.05927993    -0.32123183  -289.74708939    -0.00000598    -0.00000388  0.22D-07  0.50D-06    49.62
   16     6     6     1.05150053    -0.31180914  -289.70693804    -0.00000814    -0.00000507  0.56D-07  0.71D-06    49.62
   17     1     1     1.05942522    -0.32123970  -289.74709726    -0.00000269    -0.00000160  0.83D-08  0.19D-06    52.90
   17     2     2     1.05941736    -0.32123950  -289.74709705    -0.00000278    -0.00000166  0.69D-08  0.19D-06    52.90
   17     3     3     1.05941793    -0.32123940  -289.74709696    -0.00000282    -0.00000168  0.76D-08  0.19D-06    52.90
   17     4     4     1.05940906    -0.32123931  -289.74709687    -0.00000291    -0.00000173  0.86D-08  0.22D-06    52.90
   17     5     5     1.05933499    -0.32123614  -289.74709369    -0.00000431    -0.00000247  0.12D-07  0.31D-06    52.90
   17     6     6     1.05160702    -0.31181460  -289.70694349    -0.00000545    -0.00000305  0.15D-07  0.42D-06    52.90
   18     1     1     1.05946229    -0.32124156  -289.74709912    -0.00000186    -0.00000108  0.52D-08  0.12D-06    56.19
   18     2     2     1.05945860    -0.32124140  -289.74709896    -0.00000190    -0.00000110  0.64D-08  0.13D-06    56.19
   18     3     3     1.05945799    -0.32124134  -289.74709890    -0.00000194    -0.00000113  0.61D-08  0.13D-06    56.19
   18     4     4     1.05945650    -0.32124129  -289.74709885    -0.00000198    -0.00000116  0.75D-08  0.14D-06    56.19
   18     5     5     1.05940431    -0.32123893  -289.74709649    -0.00000279    -0.00000175  0.94D-08  0.24D-06    56.19
   18     6     6     1.05170140    -0.31181816  -289.70694705    -0.00000356    -0.00000211  0.59D-08  0.30D-06    56.19
   19     1     1     1.05949160    -0.32124289  -289.74710045    -0.00000134    -0.00000084  0.31D-08  0.11D-06    59.48
   19     2     2     1.05948714    -0.32124276  -289.74710032    -0.00000136    -0.00000089  0.33D-08  0.12D-06    59.48
   19     3     3     1.05948666    -0.32124273  -289.74710028    -0.00000139    -0.00000089  0.33D-08  0.12D-06    59.48
   19     4     4     1.05948326    -0.32124272  -289.74710027    -0.00000143    -0.00000087  0.38D-08  0.12D-06    59.48
   19     5     5     1.05944440    -0.32124097  -289.74709852    -0.00000203    -0.00000137  0.50D-08  0.18D-06    59.48
   19     6     6     1.05177555    -0.31182086  -289.70694976    -0.00000271    -0.00000176  0.75D-08  0.25D-06    59.48
   20     1     1     1.05952020    -0.32124383  -289.74710138    -0.00000093    -0.00000058  0.17D-08  0.70D-07    62.81
   20     2     2     1.05951592    -0.32124373  -289.74710129    -0.00000097    -0.00000060  0.18D-08  0.71D-07    62.81
   20     3     3     1.05951117    -0.32124371  -289.74710126    -0.00000098    -0.00000061  0.20D-08  0.81D-07    62.81
   20     4     4     1.05951567    -0.32124371  -289.74710126    -0.00000099    -0.00000061  0.18D-08  0.72D-07    62.81
   20     5     5     1.05947052    -0.32124248  -289.74710003    -0.00000151    -0.00000089  0.35D-08  0.11D-06    62.81
   20     6     6     1.05182570    -0.31182270  -289.70695159    -0.00000184    -0.00000108  0.17D-08  0.15D-06    62.81
   21     1     1     1.05954235    -0.32124448  -289.74710203    -0.00000065    -0.00000039  0.16D-08  0.45D-07    66.16
   21     2     2     1.05953979    -0.32124441  -289.74710196    -0.00000068    -0.00000040  0.17D-08  0.48D-07    66.16
   21     3     3     1.05953791    -0.32124440  -289.74710195    -0.00000069    -0.00000042  0.18D-08  0.53D-07    66.16
   21     4     4     1.05953937    -0.32124439  -289.74710195    -0.00000069    -0.00000041  0.18D-08  0.49D-07    66.16
   21     5     5     1.05950588    -0.32124348  -289.74710103    -0.00000100    -0.00000064  0.18D-08  0.89D-07    66.16
   21     6     6     1.05187508    -0.31182394  -289.70695283    -0.00000124    -0.00000076  0.16D-08  0.11D-06    66.16
   22     1     1     1.05955871    -0.32124496  -289.74710251    -0.00000048    -0.00000031  0.68D-09  0.41D-07    69.50
   22     2     2     1.05955474    -0.32124490  -289.74710246    -0.00000050    -0.00000032  0.90D-09  0.44D-07    69.50
   22     3     3     1.05955667    -0.32124490  -289.74710245    -0.00000050    -0.00000033  0.78D-09  0.45D-07    69.50
   22     4     4     1.05955610    -0.32124490  -289.74710245    -0.00000050    -0.00000033  0.73D-09  0.45D-07    69.50
   22     5     5     1.05953042    -0.32124422  -289.74710177    -0.00000074    -0.00000051  0.18D-08  0.66D-07    69.50
   22     6     6     1.05191654    -0.31182489  -289.70695378    -0.00000095    -0.00000064  0.98D-09  0.92D-07    69.50
   23     1     1     1.05957326    -0.32124530  -289.74710286    -0.00000034    -0.00000021  0.55D-09  0.27D-07    72.78
   23     2     2     1.05956873    -0.32124526  -289.74710282    -0.00000036    -0.00000023  0.64D-09  0.31D-07    72.78
   23     3     3     1.05957122    -0.32124526  -289.74710281    -0.00000036    -0.00000022  0.58D-09  0.27D-07    72.78
   23     4     4     1.05957078    -0.32124525  -289.74710281    -0.00000036    -0.00000023  0.59D-09  0.28D-07    72.78
   23     5     5     1.05954592    -0.32124477  -289.74710233    -0.00000056    -0.00000034  0.10D-08  0.43D-07    72.78
   23     6     6     1.05194330    -0.31182555  -289.70695444    -0.00000066    -0.00000040  0.63D-09  0.55D-07    72.78
   24     1     1     1.05958571    -0.32124554  -289.74710309    -0.00000024    -0.00000015  0.44D-09  0.18D-07    76.09
   24     2     2     1.05958278    -0.32124551  -289.74710307    -0.00000025    -0.00000016  0.42D-09  0.20D-07    76.09
   24     3     3     1.05958394    -0.32124551  -289.74710306    -0.00000025    -0.00000015  0.43D-09  0.19D-07    76.09
   24     4     4     1.05958373    -0.32124551  -289.74710306    -0.00000025    -0.00000016  0.45D-09  0.19D-07    76.09
   24     5     5     1.05956416    -0.32124515  -289.74710270    -0.00000037    -0.00000024  0.59D-09  0.34D-07    76.09
   24     6     6     1.05196915    -0.31182600  -289.70695489    -0.00000045    -0.00000028  0.33D-09  0.39D-07    76.09
   25     1     1     1.05959580    -0.32124572  -289.74710327    -0.00000018    -0.00000012  0.22D-09  0.16D-07    79.37
   25     2     2     1.05959360    -0.32124570  -289.74710325    -0.00000019    -0.00000012  0.31D-09  0.17D-07    79.37
   25     3     3     1.05959422    -0.32124569  -289.74710325    -0.00000019    -0.00000012  0.25D-09  0.17D-07    79.37
   25     4     4     1.05959452    -0.32124569  -289.74710325    -0.00000019    -0.00000013  0.27D-09  0.17D-07    79.37
   25     5     5     1.05957807    -0.32124542  -289.74710298    -0.00000028    -0.00000019  0.52D-09  0.25D-07    79.37
   25     6     6     1.05199311    -0.31182635  -289.70695524    -0.00000035    -0.00000024  0.34D-09  0.35D-07    79.37
   26     1     1     1.05960396    -0.32124585  -289.74710340    -0.00000013    -0.00000008  0.19D-09  0.11D-07    82.72
   26     2     2     1.05960166    -0.32124583  -289.74710339    -0.00000013    -0.00000009  0.21D-09  0.12D-07    82.72
   26     3     3     1.05960261    -0.32124583  -289.74710338    -0.00000014    -0.00000009  0.20D-09  0.11D-07    82.72
   26     4     4     1.05960292    -0.32124583  -289.74710338    -0.00000014    -0.00000009  0.19D-09  0.11D-07    82.72
   26     5     5     1.05958801    -0.32124564  -289.74710319    -0.00000021    -0.00000013  0.35D-09  0.17D-07    82.72
   26     6     6     1.05200886    -0.31182659  -289.70695549    -0.00000025    -0.00000015  0.18D-09  0.21D-07    82.72
   27     1     1     1.05961075    -0.32124594  -289.74710349    -0.00000009    -0.00000006  0.13D-09  0.69D-08    86.06
   27     2     2     1.05960903    -0.32124593  -289.74710348    -0.00000009    -0.00000006  0.14D-09  0.78D-08    86.06
   27     3     3     1.05960953    -0.32124592  -289.74710348    -0.00000010    -0.00000006  0.14D-09  0.74D-08    86.06
   27     4     4     1.05960962    -0.32124592  -289.74710348    -0.00000010    -0.00000006  0.14D-09  0.76D-08    86.06
   27     5     5     1.05959823    -0.32124578  -289.74710333    -0.00000014    -0.00000009  0.21D-09  0.13D-07    86.06
   27     6     6     1.05202279    -0.31182676  -289.70695566    -0.00000017    -0.00000011  0.15D-09  0.15D-07    86.06
   28     1     1     1.05965098    -0.32124617  -289.74710373    -0.00000024    -0.00000001  0.91D-10  0.17D-08    87.50
   28     2     2     1.05961075    -0.32124594  -289.74710349    -0.00000001    -0.00000006  0.13D-09  0.69D-08    87.50
   28     3     3     1.05960911    -0.32124593  -289.74710348    -0.00000001    -0.00000006  0.14D-09  0.78D-08    87.50
   28     4     4     1.05960953    -0.32124593  -289.74710348    -0.00000000    -0.00000006  0.14D-09  0.74D-08    87.50
   28     5     5     1.05960962    -0.32124592  -289.74710348    -0.00000014    -0.00000006  0.14D-09  0.76D-08    87.50
   28     6     6     1.05210320    -0.31182721  -289.70695611    -0.00000045    -0.00000004  0.11D-09  0.59D-08    87.50


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%   0.7%
 P   0.5%   8.9%  66.0%

 Initialization:   0.1%
 Other:           23.4%

 Total CPU:       87.5 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222/0\           0.0002517   0.0018154   0.0002546   0.0037215   0.9647047   0.0000000
 222220/\          -0.0001707  -0.0014261   0.0013272   0.9647046  -0.0037191  -0.0000000
 22222/\0          -0.0000220   0.9646993   0.0046335   0.0014127  -0.0018221   0.0000000
 22222200          -0.0640748  -0.0037709   0.7850656  -0.0010977  -0.0001791   0.5485736
 22222002           0.7119183   0.0016340  -0.3370408   0.0005917  -0.0001022   0.5485739
 22222020          -0.6478432   0.0021369  -0.4480232   0.0005060   0.0002813   0.5485734
 20222022          -0.0075822  -0.0004462   0.0928975  -0.0001299  -0.0000212  -0.1260013
 20222220           0.0842469   0.0001934  -0.0398822   0.0000700  -0.0000121  -0.1260006
 20222202          -0.0766651   0.0002529  -0.0530156   0.0000599   0.0000333  -0.1260006
 20222/2\          -0.0000298  -0.0002148  -0.0000301  -0.0004404  -0.1141528   0.0000000
 202222/\           0.0000202   0.0001687  -0.0001570  -0.1141525   0.0004401   0.0000000
 20222/\2           0.0000026  -0.1141519  -0.0005483  -0.0001672   0.0002156   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\2220/\  11.1     0.0000148   0.0001238  -0.0001152  -0.0837522   0.0003229   0.0000000
 2\2220/\  12.1    -0.0831746   0.0000479  -0.0103675  -0.0000003   0.0000244   0.0054363
 2\222/\0  15.1     0.0326040  -0.0003701   0.0772223  -0.0001011  -0.0000278   0.0054385
 2\222/0\  13.1    -0.0446940  -0.0003415   0.0709120  -0.0001060  -0.0000060   0.0054371
 2\222/0\  14.1    -0.0000185  -0.0001331  -0.0000187  -0.0002729  -0.0707481  -0.0000000
 2\222/\0  14.1     0.0000016  -0.0707474  -0.0003398  -0.0001036   0.0001336  -0.0000000
 2\2220/\   5.1     0.0000092   0.0000769  -0.0000716  -0.0520104   0.0002005   0.0000000
 2\2220/\   6.1    -0.0518174   0.0000201  -0.0044250  -0.0000030   0.0000147   0.0003907

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.441865    0.000253   -0.000022   -0.000172   -0.865074    0.000000
 2          -0.004163    0.001828    0.971394   -0.001436    0.002103   -0.000000
 3           0.865080    0.000256    0.004666    0.001336   -0.441868    0.000001
 4          -0.001275    0.003747    0.001422    0.971399    0.000459    0.000000
 5          -0.000100    0.971399   -0.001835   -0.003745    0.000337   -0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.974801

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971390   -0.000000    0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.971408   -0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.971409   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.971408   -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.971408   -0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.974801


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.86507408 (fixed)   0.97144581 (relaxed)   0.97138959 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011575    0.00000000   -0.25713831
 Singles      0.03058482   -0.04877505   -0.05529614
 Pairs        0.02907306    0.00000010   -0.00881171
 Total        1.05977363   -0.04877495   -0.32124617
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42585755
 Nuclear energy                         0.00000000
 Kinetic energy                       293.44587872
 One electron energy                 -401.06863720
 Two electron energy                  111.32153348
 Virial quotient                       -0.98739538
 Correlation energy                    -0.32124617
 !MRCI STATE 1.1 Energy              -289.747103727862

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76630578 (Davidson, fixed reference)
 Cluster corrected energies          -289.76626638 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76630578 (Davidson, rotated reference)

 Cluster corrected energies          -289.76376059 (Pople, fixed reference)
 Cluster corrected energies          -289.76372504 (Pople, relaxed reference)
 Cluster corrected energies          -289.76376059 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97139396 (fixed)   0.97146425 (relaxed)   0.97140794 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011594    0.00000000   -0.25714377
 Singles      0.03059112   -0.04877929   -0.05530058
 Pairs        0.02902654    0.00000000   -0.00880159
 Total        1.05973360   -0.04877929   -0.32124594
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42585755
 Nuclear energy                         0.00000000
 Kinetic energy                       293.44597465
 One electron energy                 -401.06883490
 Two electron energy                  111.32173141
 Virial quotient                       -0.98739505
 Correlation energy                    -0.32124594
 !MRCI STATE 2.1 Energy              -289.747103492831

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76629267 (Davidson, fixed reference)
 Cluster corrected energies          -289.76625320 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76629267 (Davidson, rotated reference)

 Cluster corrected energies          -289.76374874 (Pople, fixed reference)
 Cluster corrected energies          -289.76371313 (Pople, relaxed reference)
 Cluster corrected energies          -289.76374874 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.86508008 (fixed)   0.97146500 (relaxed)   0.97140871 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011589   -0.00000000   -0.25714408
 Singles      0.03059100   -0.04877911   -0.05530062
 Pairs        0.02902502   -0.00000026   -0.00880123
 Total        1.05973192   -0.04877937   -0.32124593
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42585756
 Nuclear energy                         0.00000000
 Kinetic energy                       293.44598001
 One electron energy                 -401.06884243
 Two electron energy                  111.32173895
 Virial quotient                       -0.98739503
 Correlation energy                    -0.32124593
 !MRCI STATE 3.1 Energy              -289.747103484608

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76629212 (Davidson, fixed reference)
 Cluster corrected energies          -289.76625267 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76629212 (Davidson, rotated reference)

 Cluster corrected energies          -289.76374824 (Pople, fixed reference)
 Cluster corrected energies          -289.76371265 (Pople, relaxed reference)
 Cluster corrected energies          -289.76374824 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.97139928 (fixed)   0.97146481 (relaxed)   0.97140850 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011594    0.00000000   -0.25714402
 Singles      0.03059127   -0.04877933   -0.05530068
 Pairs        0.02902517   -0.00000000   -0.00880123
 Total        1.05973238   -0.04877933   -0.32124593
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42585755
 Nuclear energy                         0.00000000
 Kinetic energy                       293.44597493
 One electron energy                 -401.06884121
 Two electron energy                  111.32173773
 Virial quotient                       -0.98739505
 Correlation energy                    -0.32124593
 !MRCI STATE 4.1 Energy              -289.747103479517

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76629226 (Davidson, fixed reference)
 Cluster corrected energies          -289.76625280 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76629226 (Davidson, rotated reference)

 Cluster corrected energies          -289.76374837 (Pople, fixed reference)
 Cluster corrected energies          -289.76371276 (Pople, relaxed reference)
 Cluster corrected energies          -289.76374837 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97139944 (fixed)   0.97146476 (relaxed)   0.97140846 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011593    0.00000000   -0.25714407
 Singles      0.03059117   -0.04877925   -0.05530068
 Pairs        0.02902536    0.00000000   -0.00880118
 Total        1.05973247   -0.04877925   -0.32124592
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42585756
 Nuclear energy                         0.00000000
 Kinetic energy                       293.44597332
 One electron energy                 -401.06884152
 Two electron energy                  111.32173804
 Virial quotient                       -0.98739506
 Correlation energy                    -0.32124592
 !MRCI STATE 5.1 Energy              -289.747103477034

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76629229 (Davidson, fixed reference)
 Cluster corrected energies          -289.76625283 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76629229 (Davidson, rotated reference)

 Cluster corrected energies          -289.76374840 (Pople, fixed reference)
 Cluster corrected energies          -289.76371279 (Pople, relaxed reference)
 Cluster corrected energies          -289.76374840 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97480146 (fixed)   0.97492415 (relaxed)   0.97480146 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00025174    0.00000000   -0.00007459
 Singles      0.00637073   -0.01922020   -0.02015150
 Pairs        0.04574558   -0.29260701   -0.29160112
 Total        1.05236805   -0.31182721   -0.31182721
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.39512890
 Nuclear energy                         0.00000000
 Kinetic energy                       293.41097385
 One electron energy                 -400.92456673
 Two electron energy                  111.21761062
 Virial quotient                       -0.98737601
 Correlation energy                    -0.31182721
 !MRCI STATE 6.1 Energy              -289.706956106259

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.72328589 (Davidson, fixed reference)
 Cluster corrected energies          -289.72320330 (Davidson, relaxed reference)
 Cluster corrected energies          -289.72328589 (Davidson, rotated reference)

 Cluster corrected energies          -289.72105077 (Pople, fixed reference)
 Cluster corrected energies          -289.72097698 (Pople, relaxed reference)
 Cluster corrected energies          -289.72105077 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       28.17       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       103.52     88.29      8.86      5.67      0.06      0.42
 REAL TIME  *       116.91 SEC
 DISK USED  *        58.63 MB (local),      754.56 MB (total)
 SF USED    *       213.92 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -289.76630578  AU                              
 SETTING HLSDIAG(5)     =      -289.76629267  AU                              
 SETTING HLSDIAG(6)     =      -289.76629212  AU                              
 SETTING HLSDIAG(7)     =      -289.76629226  AU                              
 SETTING HLSDIAG(8)     =      -289.76629229  AU                              
 SETTING HLSDIAG(9)     =      -289.72328589  AU                              


         HLSDIAG
    -289.7938159
    -289.7938157
    -289.7938155
    -289.7663058
    -289.7662927
    -289.7662921
    -289.7662923
    -289.7662923
    -289.7232859
                                                  

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


 SORTLS1 read     2507997. and wrote     2507997. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.04 sec
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

              2       7       28.17       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       104.40      0.86     88.29      8.86      5.67      0.06      0.42
 REAL TIME  *       118.46 SEC
 DISK USED  *        58.66 MB (local),      944.06 MB (total)
 SF USED    *       213.92 MB
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

 Original energies:   -289.777549   -289.777549   -289.777549
 Replaced energies:   -289.793816   -289.793816   -289.793816

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -289.747104   -289.747103   -289.747103   -289.747103   -289.747103   -289.706956
 Replaced energies:   -289.766306   -289.766293   -289.766292   -289.766292   -289.766292   -289.723286



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -289.79381591

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00     -53.41
                            0.00     -72.55      -0.00       0.00       0.00     -51.30       0.00       0.00       0.00       0.01

    2   2.1  1.0  1.0       0.00       0.04       0.00       0.00       0.00     -51.30       0.00       0.00       0.00      -0.01
                           72.55       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -48.60

    3   3.1  1.0  1.0       0.00       0.00       0.09      -0.00      51.30       0.00       0.00       0.00       0.00      -0.01
                            0.00      -0.00       0.00      51.30       0.00      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00     -51.30       0.00       0.00       0.00       0.00       0.00     -51.30       0.02

    5   2.1  1.0  0.0      -0.00       0.00      51.30       0.00       0.04       0.00       0.00       0.00     -51.30       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

    6   3.1  1.0  0.0       0.00     -51.30       0.00       0.00       0.00       0.09      -0.00      51.30       0.00       0.00
                           51.30       0.00       0.00      -0.00      -0.00       0.00      51.30       0.00      -0.00      -6.80

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     -53.41
                           -0.00      -0.00      -0.00      -0.00       0.00     -51.30      -0.00      72.55       0.00      -0.01

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      51.30       0.00       0.04       0.00      -0.01
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -72.55      -0.00      -0.00      48.60

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00     -51.30       0.00       0.00       0.00       0.09      -0.01
                           -0.00      -0.00      -0.00      51.30       0.00       0.00      -0.00       0.00      -0.00      -0.00

   10   1.1  0.0  0.0     -53.41      -0.01      -0.01       0.00       0.00       0.00     -53.41      -0.01      -0.01    6037.78
                           -0.01      48.60      -0.00      -0.02      -0.00       6.80       0.01     -48.60       0.00       0.00

   11   2.1  0.0  0.0      -0.12      -0.08      -0.10       0.00       0.00       0.00      -0.12      -0.08      -0.10       0.00
                           -0.08      -0.16      51.18      -0.14      72.38       0.40       0.08       0.16     -51.18      -0.00

   12   3.1  0.0  0.0      25.28       0.07      -0.01       0.00       0.00       0.00      25.28       0.07      -0.01       0.00
                            0.07      33.61       0.25      -0.02       0.35     -83.29      -0.07     -33.61      -0.25      -0.00

   13   4.1  0.0  0.0      -0.04      51.18      -0.20       0.00       0.00       0.00      -0.04      51.18      -0.20       0.00
                           51.18      -0.04       0.07      -0.28       0.11       0.12     -51.18       0.04      -0.07      -0.00

   14   5.1  0.0  0.0       0.01      -0.20     -51.18       0.00       0.00       0.00       0.01      -0.20     -51.18       0.00
                           -0.20      -0.02      -0.10     -72.37      -0.14       0.02       0.20       0.02       0.10      -0.00

   15   6.1  0.0  0.0      84.58      -0.00      -0.00       0.00       0.00       0.00      84.58      -0.00      -0.00       0.00
                           -0.00      84.59       0.00      -0.00       0.00     119.62       0.00     -84.59      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.12      25.28      -0.04       0.01      84.58
                            0.08      -0.07     -51.18       0.20       0.00

    2   2.1  1.0  1.0      -0.08       0.07      51.18      -0.20      -0.00
                            0.16     -33.61       0.04       0.02     -84.59

    3   3.1  1.0  1.0      -0.10      -0.01      -0.20     -51.18      -0.00
                          -51.18      -0.25      -0.07       0.10      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.14       0.02       0.28      72.37       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          -72.38      -0.35      -0.11       0.14      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.40      83.29      -0.12      -0.02    -119.62

    7   1.1  1.0 -1.0      -0.12      25.28      -0.04       0.01      84.58
                           -0.08       0.07      51.18      -0.20      -0.00

    8   2.1  1.0 -1.0      -0.08       0.07      51.18      -0.20      -0.00
                           -0.16      33.61      -0.04      -0.02      84.59

    9   3.1  1.0 -1.0      -0.10      -0.01      -0.20     -51.18      -0.00
                           51.18       0.25       0.07      -0.10       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6040.65       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6040.77       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6040.74       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6040.74       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15479.55
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -289.79381591 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -72.549       0.000     -72.549

    2    1  |1 1>+              0.000       0.037       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      72.549       0.000

    3    1  |1 1>+              0.000       0.000       0.085       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      72.549       0.000       0.000       0.000      -0.000

    1    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -72.549       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.037       0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.085       0.000     -72.549
                               72.549       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000     -72.549      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     -72.549       0.000       0.037
                               72.549       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000      72.549       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>             -75.527      -0.013      -0.019       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.019      -0.002       6.799      -0.013      68.738

    2    1  |0 0>              -0.173      -0.107      -0.136       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.136      72.376       0.400      -0.107      -0.227

    3    1  |0 0>              35.757       0.100      -0.019       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.019       0.348     -83.294       0.100      47.538

    4    1  |0 0>              -0.063      72.375      -0.279       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.279       0.106       0.116      72.376      -0.054

    5    1  |0 0>               0.011      -0.279     -72.373       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -72.373      -0.137       0.019      -0.279      -0.030

    6    1  |0 0>             119.621      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     119.624      -0.000     119.627

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000     -75.527      -0.173      35.757      -0.063       0.011     119.621
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.013      -0.107       0.100      72.375      -0.279      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.019      -0.136      -0.019      -0.279     -72.373      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.019       0.136       0.019       0.279      72.373       0.000

    2    1  |1 0>              72.549       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.002     -72.376      -0.348      -0.106       0.137      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -6.799      -0.400      83.294      -0.116      -0.019    -119.624

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.013       0.107      -0.100     -72.376       0.279       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -68.738       0.227     -47.538       0.054       0.030    -119.627

    3    1  |1 1>-              0.085       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.002     -72.377      -0.348      -0.106       0.137      -0.000

    1    1  |0 0>               0.000    6037.776       0.000       0.000       0.000       0.000       0.000
                               -0.002       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6040.654       0.000       0.000       0.000       0.000
                               72.377      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6040.774       0.000       0.000       0.000
                                0.348      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6040.742       0.000       0.000
                                0.106      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6040.737       0.000
                               -0.137      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15479.551
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -289.79448936    -0.00067345     -147.80      0.00000000        0.00      0.0000
    2  -289.79414639    -0.00033047      -72.53      0.00034297       75.27      0.0093
    3  -289.79414628    -0.00033036      -72.51      0.00034308       75.30      0.0093
    4  -289.79414619    -0.00033028      -72.49      0.00034317       75.32      0.0093
    5  -289.79349328     0.00032263       70.81      0.00099608      218.61      0.0271
    6  -289.79349326     0.00032265       70.81      0.00099610      218.62      0.0271
    7  -289.79349315     0.00032276       70.84      0.00099621      218.64      0.0271
    8  -289.79349307     0.00032284       70.86      0.00099629      218.66      0.0271
    9  -289.79349305     0.00032286       70.86      0.00099631      218.66      0.0271
   10  -289.76629778     0.02751813     6039.53      0.02819158     6187.34      0.7671
   11  -289.76628467     0.02753124     6042.41      0.02820469     6190.21      0.7675
   12  -289.76628429     0.02753162     6042.49      0.02820507     6190.30      0.7675
   13  -289.76628427     0.02753164     6042.50      0.02820509     6190.30      0.7675
   14  -289.76628412     0.02753179     6042.53      0.02820524     6190.33      0.7675
   15  -289.72327337     0.07054254    15482.30      0.07121599    15630.10      1.9379

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57740656 -0.00000000 -0.00000000  0.00000000  0.77930666 -0.00001961 -0.00000390  0.00000925
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.70701487  0.00000000  0.00000000  0.00001764  0.70709479 -0.00000005 -0.00000054
                           0.00000000  0.00000270 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000  0.70689656  0.00000000  0.00000328  0.00000005  0.70721306 -0.00000173
                          -0.00000000 -0.00000000 -0.00011864  0.00000000 -0.00000000  0.00000000 -0.00000008  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00011872 -0.00000000 -0.00000000  0.00000000 -0.00000008  0.00000000
                           0.00000000 -0.00000000  0.70731692  0.00000000 -0.00000327 -0.00000005 -0.70679264  0.00000173

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000006
                          -0.00000000 -0.00000000 -0.00000000  0.70722505  0.00000013  0.00000054  0.00000173  0.70688456

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.57718258 -0.00000000  0.00000000 -0.00000000  0.17926922 -0.00000504 -0.00000179  0.00003075

   1    1  |1 1>-         -0.00000000 -0.00000270  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.70719868  0.00000000  0.00000000 -0.00001763 -0.70691095  0.00000005  0.00000054

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.57730943 -0.00000000 -0.00000000 -0.00000000  0.60020794 -0.00001458 -0.00000211 -0.00002150

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000006
                           0.00000000  0.00000000 -0.00000000 -0.70698849  0.00000013  0.00000054  0.00000173  0.70712115

   1    1  |0 0>           0.00000043 -0.00000000 -0.00000000 -0.00000000  0.01698251  0.00000261  0.00000440 -0.00000049
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000001 -0.00000000 -0.00000001  0.00000273  0.00001185  0.00002535  0.00003230  0.01714312
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000238  0.00000000 -0.00000000  0.00000001 -0.00238957 -0.00002351  0.00000456  0.00008168
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000229 -0.00000002  0.00000000  0.00000587 -0.01714237  0.00006613  0.00002512
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000001 -0.00000502 -0.00000001 -0.00000376  0.00006609  0.01714194 -0.00003242
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.01325731 -0.00000000  0.00000000  0.00000000  0.00000160 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.24295717 -0.01265582 -0.00002905  0.00000182 -0.00001051  0.00598816  0.00765389
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000050 -0.00000215 -0.00001794 -0.00004592  0.01212144  0.00001667 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000085 -0.00000316 -0.00002287 -0.01212124 -0.00004595 -0.00000318 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000085  0.00000316  0.00002287  0.01212113  0.00004595  0.00000318  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00002732  0.00000028 -0.01212192  0.00002295 -0.00001777 -0.00005826 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.79653520 -0.00113975 -0.00006706 -0.00000316 -0.00001950  0.01395021 -0.00765414

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000050  0.00000215  0.00001794  0.00004592 -0.01212153 -0.00001667  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.55336210 -0.01151771  0.00003800  0.00000499  0.00000899 -0.00796209 -0.00765431

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002733  0.00000028 -0.01212211  0.00002295 -0.00001777 -0.00005826 -0.00000000

   1    1  |0 0>          -0.00239182  0.99985293 -0.00000020 -0.00000003 -0.00000004  0.00003959  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00008079  0.00000020  0.99985304 -0.00000464  0.00000181  0.00000345 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.01697503 -0.00003961 -0.00000345  0.00000135  0.00000052  0.99985305  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00002306  0.00000004 -0.00000181  0.00006698  0.99985305 -0.00000052  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000488  0.00000004  0.00000464  0.99985306 -0.00006698 -0.00000135 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000162 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000  0.99991212
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -289.79448936     -0.00067345     -147.80      0.00000000        0.00      0.0000
     2   1   -289.79414639     -0.00033047      -72.53      0.00034297       75.27      0.0093
     3   1   -289.79414628     -0.00033036      -72.51      0.00034308       75.30      0.0093
     4   1   -289.79414619     -0.00033028      -72.49      0.00034317       75.32      0.0093
     5   1   -289.79349328      0.00032263       70.81      0.00099608      218.61      0.0271
     6   1   -289.79349326      0.00032265       70.81      0.00099610      218.62      0.0271
     7   1   -289.79349315      0.00032276       70.84      0.00099621      218.64      0.0271
     8   1   -289.79349307      0.00032284       70.86      0.00099629      218.66      0.0271
     9   1   -289.79349305      0.00032286       70.86      0.00099631      218.66      0.0271
    10   1   -289.76629778      0.02751813     6039.53      0.02819158     6187.34      0.7671
    11   1   -289.76628467      0.02753124     6042.41      0.02820469     6190.21      0.7675
    12   1   -289.76628429      0.02753162     6042.49      0.02820507     6190.30      0.7675
    13   1   -289.76628427      0.02753164     6042.50      0.02820509     6190.30      0.7675
    14   1   -289.76628412      0.02753179     6042.53      0.02820524     6190.33      0.7675
    15   1   -289.72327337      0.07054254    15482.30      0.07121599    15630.10      1.9379

 E0 =   -289.79381591 is the energy of the lowest zeroth-order state
 E1 =   -289.79448936 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57740656 -0.00000000 -0.00000000  0.00000000  0.77930666 -0.00001961 -0.00000390  0.00000925
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.70701487  0.00000000  0.00000000  0.00001764  0.70709479 -0.00000005 -0.00000054
                                0.00000000  0.00000270 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.00000000  0.70689656  0.00000000  0.00000328  0.00000005  0.70721306 -0.00000173
                               -0.00000000 -0.00000000 -0.00011864  0.00000000 -0.00000000  0.00000000 -0.00000008  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00011872 -0.00000000 -0.00000000  0.00000000 -0.00000008  0.00000000
                                0.00000000 -0.00000000  0.70731692  0.00000000 -0.00000327 -0.00000005 -0.70679264  0.00000173

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000006
                               -0.00000000 -0.00000000 -0.00000000  0.70722505  0.00000013  0.00000054  0.00000173  0.70688456

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.57718258 -0.00000000  0.00000000 -0.00000000  0.17926922 -0.00000504 -0.00000179  0.00003075

  7  1     1    1  |1 1>-      -0.00000000 -0.00000270  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.70719868  0.00000000  0.00000000 -0.00001763 -0.70691095  0.00000005  0.00000054

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.57730943 -0.00000000 -0.00000000 -0.00000000  0.60020794 -0.00001458 -0.00000211 -0.00002150

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000006
                                0.00000000  0.00000000 -0.00000000 -0.70698849  0.00000013  0.00000054  0.00000173  0.70712115

 10  1     1    1  |0 0>        0.00000043 -0.00000000 -0.00000000 -0.00000000  0.01698251  0.00000261  0.00000440 -0.00000049
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000001 -0.00000000 -0.00000001  0.00000273  0.00001185  0.00002535  0.00003230  0.01714312
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000238  0.00000000 -0.00000000  0.00000001 -0.00238957 -0.00002351  0.00000456  0.00008168
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000229 -0.00000002  0.00000000  0.00000587 -0.01714237  0.00006613  0.00002512
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000000 -0.00000001 -0.00000502 -0.00000001 -0.00000376  0.00006609  0.01714194 -0.00003242
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.01325731 -0.00000000  0.00000000  0.00000000  0.00000160 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.24295717 -0.01265582 -0.00002905  0.00000182 -0.00001051  0.00598816  0.00765389
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000050 -0.00000215 -0.00001794 -0.00004592  0.01212144  0.00001667 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000085 -0.00000316 -0.00002287 -0.01212124 -0.00004595 -0.00000318 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000085  0.00000316  0.00002287  0.01212113  0.00004595  0.00000318  0.00000000

  5  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00002732  0.00000028 -0.01212192  0.00002295 -0.00001777 -0.00005826 -0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.79653520 -0.00113975 -0.00006706 -0.00000316 -0.00001950  0.01395021 -0.00765414

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000050  0.00000215  0.00001794  0.00004592 -0.01212153 -0.00001667  0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.55336210 -0.01151771  0.00003800  0.00000499  0.00000899 -0.00796209 -0.00765431

  9  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002733  0.00000028 -0.01212211  0.00002295 -0.00001777 -0.00005826 -0.00000000

 10  1     1    1  |0 0>       -0.00239182  0.99985293 -0.00000020 -0.00000003 -0.00000004  0.00003959  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00008079  0.00000020  0.99985304 -0.00000464  0.00000181  0.00000345 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.01697503 -0.00003961 -0.00000345  0.00000135  0.00000052  0.99985305  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00002306  0.00000004 -0.00000181  0.00006698  0.99985305 -0.00000052  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000488  0.00000004  0.00000464  0.99985306 -0.00006698 -0.00000135 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000162 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000  0.99991212
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.34%    0.00%    0.00%    0.00%   60.73%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   49.99%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   49.97%    0.00%    0.00%    0.00%   50.02%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   50.03%    0.00%    0.00%    0.00%   49.96%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.02%    0.00%    0.00%    0.00%   49.97%
  6  1     3    1  |1 0>         33.31%    0.00%    0.00%    0.00%    3.21%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   50.01%    0.00%    0.00%    0.00%   49.97%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   36.02%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   49.98%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 15  1     6    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         5.90%    0.02%    0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         63.45%    0.00%    0.00%    0.00%    0.00%    0.02%    0.01%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  8  1     2    1  |1 1>-        30.62%    0.01%    0.00%    0.00%    0.00%    0.01%    0.01%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%   99.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%   99.97%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.03%    0.00%    0.00%    0.00%    0.00%   99.97%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.97%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%   99.97%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.98%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.42       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       28.17       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       129.34     24.92      0.86     88.29      8.86      5.67      0.06      0.42
 REAL TIME  *       144.98 SEC
 DISK USED  *        58.66 MB (local),      944.06 MB (total)
 SF USED    *       213.92 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -289.723273372098

              CI              CI           MULTI         RHF-SCF
   -289.70695611   -289.77754864   -289.39512890   -289.45517525
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
