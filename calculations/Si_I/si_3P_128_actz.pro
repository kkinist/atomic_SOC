
 Working directory              : /wrk/irikura/molpro.lltPP6mQTN/
 Global scratch directory       : /wrk/irikura/molpro.lltPP6mQTN/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.lltPP6mQTN/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Si SO-CI
                                                                                 ! Active space (12,8)
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
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=2;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Si SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 23-Feb-24          TIME: 16:10:00  
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

     7.602 MB (compressed) written to integral file ( 17.1%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     12 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         0.74      0.41
 REAL TIME  *         1.29 SEC
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
   1     -289.44294747    -289.44294747     0.00D+00     0.13D+00     0     0       0.01      0.01    start
   2     -289.45368710      -0.01073964     0.25D-02     0.98D-02     1     0       0.00      0.01    diag2
   3     -289.45491227      -0.00122516     0.94D-03     0.28D-02     2     0       0.00      0.01    diag2
   4     -289.45514213      -0.00022986     0.35D-03     0.14D-02     3     0       0.00      0.01    diag2
   5     -289.45517477      -0.00003265     0.13D-03     0.85D-03     4     0       0.00      0.01    diag2
   6     -289.45517525      -0.00000047     0.19D-04     0.16D-03     5     0       0.01      0.02    diag2
   7     -289.45517525      -0.00000000     0.18D-05     0.10D-04     6     0       0.00      0.02    diag2
   8     -289.45517525      -0.00000000     0.29D-06     0.18D-05     7     0       0.00      0.02    fixocc
   9     -289.45517525      -0.00000000     0.25D-07     0.26D-06     0     0       0.00      0.02    diag

 Final alpha occupancy:   3   5
 Final beta  occupancy:   3   3

 !RHF STATE 1.1 Energy               -289.455175250791
  RHF One-electron energy            -401.378079999741
  RHF Two-electron energy             111.922904748949
  RHF Kinetic energy                  293.246498577842
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
    1.2     2.00000    -4.25613     1  1  px   0.99763
    2.2     2.00000    -4.25495     1  1  pz   1.00095
    3.2     2.00000    -4.25495     1  1  py   1.00103
    4.2     1.00000    -0.29682     1  2  py   1.00923
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
 CPU TIMES  *         0.79      0.05      0.41
 REAL TIME  *         2.23 SEC
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

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.306D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.209D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.140D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 3 5 1   6 2 4 3 5 5 4 3 2 6   1 5 4 3 2 6 1 5 4 3   6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.270D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.200D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.139D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.119D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.181D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.310D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 3 2 1 3   2 1 7 910 4 8 5 6 7  10 9 8 4 6 5 1 3 2 7  10 9 8 4 6 5 1 3 2 1
                                        3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  308  ( 2 closed/active, 30 closed/virtual, 0 active/active, 276 active/virtual )
 Total number of variables:    956
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9    6    0   -289.44557422    -289.46677977   -0.02120555    0.06504616 0.00004608 0.00000000  0.36E+00      0.36
   2   10    9    0   -289.46439518    -289.46545582   -0.00106065    0.13743649 0.00000081 0.00000000  0.30E-01      0.92
   3    5    5    0   -289.46546031    -289.46546037   -0.00000006    0.00049344 0.00000009 0.00000000  0.31E-03      1.25
   4   21   20    0   -289.46546037    -289.46546037    0.00000000    0.00000405 0.00000001 0.00000000  0.22E-04      2.29

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.78E-08)
                       Final energy:   -289.46546037
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -289.465460370131
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25642113
 One electron energy                          -401.41220568
 Two electron energy                           111.94674531
 Virial ratio                                    1.98707288
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -289.465460370009
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25642114
 One electron energy                          -401.41220570
 Two electron energy                           111.94674533
 Virial ratio                                    1.98707288
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -289.465460369885
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25642114
 One electron energy                          -401.41220571
 Two electron energy                           111.94674534
 Virial ratio                                    1.98707288
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.999999999969
 !MCSCF expec                      <2.1|LXLX|2.1>    -0.000000000000
 !MCSCF expec                      <3.1|LXLX|3.1>     0.999999999965
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.999999655728
 !MCSCF expec                      <2.1|LYLY|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LYLY|3.1>     0.000000264976
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.000000344304
 !MCSCF expec                      <2.1|LZLZ|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LZLZ|3.1>     0.999999735059
 
 !MCSCF expec                      <1.1|L**2|1.1>     2.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     2.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 3 6 2 4 1   3 5 6 4 2 5 3 6 4 2   1 5 3 6 2 4 1 5 3 6   4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 1 2 3   1 2 9 710 8 5 6 4 9   7 810 5 6 4 2 1 3 7   910 8 5 6 4 2 1 3 2
                                        1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -68.95018     1  1  s    0.99932
    2.1     2.00000    -6.20257     1  2  s    0.99959
    3.1     1.96626    -0.53491     1  3  s    1.01223
    1.2     1.99998    -4.25183     1  1  pz   1.00001
    2.2     1.99998    -4.25183     1  1  px   1.00001
    3.2     1.99998    -4.25183     1  1  py   1.00001
    4.2     0.67793    -0.06467     1  2  pz   1.03143
    5.2     0.67793    -0.06467     1  2  px   1.03143
    6.2     0.67793    -0.06467     1  2  py   1.03143
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 22 222a0a      0.00000555      0.99151293      0.00000000
 22 222aa0     -0.00058177      0.00000000      0.99151276
 22 2220aa      0.99151276     -0.00000555      0.00058177
 20 222a2a     -0.00000073     -0.12989032      0.00000000
 20 2222aa     -0.12989030      0.00000073     -0.00007621
 20 222aa2      0.00007621     -0.00000000     -0.12989029
 
 Energy:     -289.46546037   -289.46546037   -289.46546037
 


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
 CPU TIMES  *         3.02      2.22      0.05      0.41
 REAL TIME  *         4.70 SEC
 DISK USED  *        31.13 MB (local),      424.59 MB (total)
 SF USED    *         5.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -289.4654604   2.0
    -289.4654604   2.0
    -289.4654604   2.0
                                                  


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
     1      -289.46546037
     2      -289.46546037
     3      -289.46546037

 Number of blocks in overlap matrix:     8   Smallest eigenvalue:  0.25D-04
 Number of N-2 electron functions:     192
 Number of N-1 electron functions:    1512

 Number of internal configurations:                  186
 Number of singly external configurations:         49860
 Number of doubly external configurations:        210312
 Total number of contracted configurations:       260358
 Total number of uncontracted configurations:    5054190

 Diagonal Coupling coefficients finished.               Storage:    316490 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    263666 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.46546037    -0.00000000    -0.31846489  0.41D-01  0.16D-01     0.05
    1     2     2     1.00000000     0.00000000  -289.46546037    -0.00000000    -0.31861611  0.41D-01  0.16D-01     0.05
    1     3     3     1.00000000     0.00000000  -289.46546037     0.00000000    -0.31882664  0.41D-01  0.16D-01     0.05
    2     1     1     1.05073563    -0.30051055  -289.76597092    -0.30051055    -0.00476403  0.93D-03  0.48D-03     0.71
    2     2     2     1.05095966    -0.30046730  -289.76592767    -0.30046730    -0.00480760  0.97D-03  0.48D-03     0.71
    2     3     3     1.05128110    -0.30040968  -289.76587005    -0.30040968    -0.00486183  0.10D-02  0.49D-03     0.71
    3     1     1     1.04461465    -0.30825316  -289.77371353    -0.00774261    -0.00165734  0.17D-03  0.17D-03     1.44
    3     2     2     1.04453467    -0.30822697  -289.77368734    -0.00775967    -0.00166328  0.18D-03  0.18D-03     1.44
    3     3     3     1.04442251    -0.30819628  -289.77365665    -0.00778660    -0.00166960  0.18D-03  0.18D-03     1.44
    4     1     1     1.05034503    -0.31179721  -289.77725758    -0.00354405    -0.00034964  0.45D-04  0.40D-04     2.14
    4     2     2     1.05031049    -0.31179215  -289.77725252    -0.00356518    -0.00035184  0.47D-04  0.40D-04     2.14
    4     3     3     1.05025683    -0.31178659  -289.77724696    -0.00359031    -0.00035444  0.48D-04  0.41D-04     2.14
    5     1     1     1.05104401    -0.31231179  -289.77777216    -0.00051458    -0.00009191  0.59D-05  0.10D-04     2.88
    5     2     2     1.05105554    -0.31231127  -289.77777164    -0.00051912    -0.00009161  0.61D-05  0.10D-04     2.88
    5     3     3     1.05107558    -0.31231046  -289.77777083    -0.00052386    -0.00009154  0.62D-05  0.10D-04     2.88
    6     1     1     1.05060869    -0.31246090  -289.77792128    -0.00014912    -0.00004208  0.24D-05  0.48D-05     3.53
    6     2     2     1.05061246    -0.31246069  -289.77792106    -0.00014941    -0.00004223  0.24D-05  0.48D-05     3.53
    6     3     3     1.05061711    -0.31246015  -289.77792052    -0.00014969    -0.00004255  0.23D-05  0.49D-05     3.53
    7     1     1     1.05109808    -0.31251436  -289.77797473    -0.00005345    -0.00001388  0.11D-05  0.14D-05     4.20
    7     2     2     1.05109895    -0.31251430  -289.77797467    -0.00005362    -0.00001385  0.11D-05  0.14D-05     4.20
    7     3     3     1.05109582    -0.31251416  -289.77797453    -0.00005402    -0.00001383  0.11D-05  0.14D-05     4.20
    8     1     1     1.05148007    -0.31253422  -289.77799459    -0.00001987    -0.00000518  0.45D-06  0.51D-06     4.86
    8     2     2     1.05147841    -0.31253419  -289.77799456    -0.00001988    -0.00000520  0.44D-06  0.51D-06     4.86
    8     3     3     1.05147636    -0.31253411  -289.77799448    -0.00001995    -0.00000526  0.43D-06  0.51D-06     4.86
    9     1     1     1.05143645    -0.31254184  -289.77800221    -0.00000762    -0.00000267  0.76D-07  0.30D-06     5.51
    9     2     2     1.05143855    -0.31254179  -289.77800216    -0.00000760    -0.00000271  0.73D-07  0.31D-06     5.51
    9     3     3     1.05144138    -0.31254171  -289.77800208    -0.00000759    -0.00000276  0.70D-07  0.32D-06     5.51
   10     1     1     1.05148000    -0.31254504  -289.77800541    -0.00000320    -0.00000113  0.61D-07  0.12D-06     6.16
   10     2     2     1.05147838    -0.31254501  -289.77800538    -0.00000322    -0.00000114  0.63D-07  0.12D-06     6.16
   10     3     3     1.05147615    -0.31254497  -289.77800534    -0.00000327    -0.00000114  0.65D-07  0.12D-06     6.16
   11     1     1     1.05156396    -0.31254649  -289.77800686    -0.00000145    -0.00000049  0.19D-07  0.54D-07     6.80
   11     2     2     1.05156265    -0.31254648  -289.77800685    -0.00000146    -0.00000050  0.19D-07  0.55D-07     6.80
   11     3     3     1.05156085    -0.31254646  -289.77800682    -0.00000148    -0.00000051  0.18D-07  0.56D-07     6.80
   12     1     1     1.05157327    -0.31254712  -289.77800749    -0.00000063    -0.00000028  0.55D-08  0.34D-07     7.45
   12     2     2     1.05157381    -0.31254711  -289.77800748    -0.00000064    -0.00000029  0.57D-08  0.34D-07     7.45
   12     3     3     1.05157435    -0.31254710  -289.77800747    -0.00000064    -0.00000029  0.61D-08  0.35D-07     7.45
   13     1     1     1.05157836    -0.31254745  -289.77800782    -0.00000033    -0.00000013  0.44D-08  0.14D-07     8.09
   13     2     2     1.05157826    -0.31254744  -289.77800781    -0.00000033    -0.00000013  0.45D-08  0.14D-07     8.09
   13     3     3     1.05157807    -0.31254744  -289.77800781    -0.00000034    -0.00000013  0.47D-08  0.14D-07     8.09
   14     1     1     1.05159719    -0.31254761  -289.77800798    -0.00000016    -0.00000007  0.69D-09  0.78D-08     8.74
   14     2     2     1.05159661    -0.31254760  -289.77800797    -0.00000016    -0.00000007  0.61D-09  0.79D-08     8.74
   14     3     3     1.05159587    -0.31254760  -289.77800797    -0.00000016    -0.00000007  0.53D-09  0.82D-08     8.74


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.3%   2.6%
 P   1.0%  18.9%  47.9%

 Initialization:   0.3%
 Other:           28.4%

 Total CPU:        8.7 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222220//           0.0000000  -0.0000000   0.9681802
 22222/0/          -0.0000000   0.9681799   0.0000000
 22222//0           0.9681797   0.0000000  -0.0000000
 202222//          -0.0000000  -0.0000000  -0.1162872
 20222/2/           0.0000000  -0.1162867   0.0000000
 20222//2          -0.1162862  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000    0.975097
 2          -0.000000    0.975097    0.000000
 3           0.975098    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.975097    0.000000   -0.000000
 2           0.000000    0.975097   -0.000000
 3          -0.000000   -0.000000    0.975098


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97509695 (fixed)   0.97515868 (relaxed)   0.97509695 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012662    0.00000000   -0.00003763
 Singles      0.02626764   -0.04353796   -0.04919927
 Pairs        0.02533608   -0.26900964   -0.26331071
 Total        1.05173034   -0.31254761   -0.31254761
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46546037
 Nuclear energy                         0.00000000
 Kinetic energy                       293.47087237
 One electron energy                 -401.19027585
 Two electron energy                  111.41226787
 Virial quotient                       -0.98741659
 Correlation energy                    -0.31254761
 !MRCI STATE 1.1 Energy              -289.778007976140

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79417617 (Davidson, fixed reference)
 Cluster corrected energies          -289.79413456 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79417617 (Davidson, rotated reference)

 Cluster corrected energies          -289.79135078 (Pople, fixed reference)
 Cluster corrected energies          -289.79131537 (Pople, relaxed reference)
 Cluster corrected energies          -289.79135078 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97509723 (fixed)   0.97515895 (relaxed)   0.97509723 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012661    0.00000000   -0.25581620
 Singles      0.02626724   -0.04353766   -0.04919917
 Pairs        0.02533590   -0.00000000   -0.00753223
 Total        1.05172975   -0.04353766   -0.31254760
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46546037
 Nuclear energy                         0.00000000
 Kinetic energy                       293.47088209
 One electron energy                 -401.19028127
 Two electron energy                  111.41227329
 Virial quotient                       -0.98741656
 Correlation energy                    -0.31254760
 !MRCI STATE 2.1 Energy              -289.778007973600

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79417598 (Davidson, fixed reference)
 Cluster corrected energies          -289.79413437 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79417598 (Davidson, rotated reference)

 Cluster corrected energies          -289.79135062 (Pople, fixed reference)
 Cluster corrected energies          -289.79131521 (Pople, relaxed reference)
 Cluster corrected energies          -289.79135062 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97509757 (fixed)   0.97515929 (relaxed)   0.97509757 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012660    0.00000000   -0.25581673
 Singles      0.02626677   -0.04353730   -0.04919904
 Pairs        0.02533563    0.00000000   -0.00753183
 Total        1.05172900   -0.04353730   -0.31254760
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46546037
 Nuclear energy                         0.00000000
 Kinetic energy                       293.47089522
 One electron energy                 -401.19028787
 Two electron energy                  111.41227990
 Virial quotient                       -0.98741651
 Correlation energy                    -0.31254760
 !MRCI STATE 3.1 Energy              -289.778007969853

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79417574 (Davidson, fixed reference)
 Cluster corrected energies          -289.79413413 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79417574 (Davidson, rotated reference)

 Cluster corrected energies          -289.79135041 (Pople, fixed reference)
 Cluster corrected energies          -289.79131501 (Pople, relaxed reference)
 Cluster corrected energies          -289.79135041 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        6.93       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        11.95      8.92      2.22      0.05      0.41
 REAL TIME  *        14.91 SEC
 DISK USED  *        37.39 MB (local),      499.73 MB (total)
 SF USED    *        66.47 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -289.79417617  AU                              
 SETTING HLSDIAG(2)     =      -289.79417598  AU                              
 SETTING HLSDIAG(3)     =      -289.79417574  AU                              


         HLSDIAG
    -289.7941762
    -289.7941760
    -289.7941757
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

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

 CPU time:      0.64 sec, REAL time:      0.70 sec


 SORTLS1 read     2507997. and wrote     2507997. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.04 sec
 SORTLS2 read     2507997. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    31.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    31.9 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -289.778008   -289.778008   -289.778008
 Replaced energies:   -289.794176   -289.794176   -289.794176



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -289.79417617

 Wigner-Eckart theorem used for  8 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -73.34      -0.00      -0.00       0.00     -51.86       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.04       0.00      -0.00       0.00     -51.86       0.00       0.00       0.00
                           73.34       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.09      -0.00      51.86      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      51.86       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00     -51.86       0.00       0.00       0.00      -0.00       0.00     -51.86

    5   2.1  1.0  0.0       0.00       0.00      51.86       0.00       0.04       0.00      -0.00       0.00     -51.86
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

    6   3.1  1.0  0.0       0.00     -51.86      -0.00       0.00       0.00       0.09      -0.00      51.86      -0.00
                           51.86       0.00      -0.00      -0.00      -0.00       0.00      51.86       0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00     -51.86       0.00      73.34       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      51.86       0.00       0.04       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -73.34      -0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00     -51.86      -0.00       0.00       0.00       0.09
                           -0.00      -0.00      -0.00      51.86       0.00      -0.00      -0.00      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  9)

    The diagonal matrixelements are shifted by   -289.79417617 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -73.337      -0.000     -73.337

    2    1  |1 1>+              0.000       0.041       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      73.337       0.000

    3    1  |1 1>+              0.000       0.000       0.094       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      73.337       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000     -73.337       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000       0.041       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.094       0.000     -73.337
                               73.337       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -73.337      -0.000      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000     -73.337       0.000       0.041
                               73.337       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000      73.337       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9

    1    1  |1 1>+              0.000
                               -0.000

    2    1  |1 1>+              0.000
                               -0.000

    3    1  |1 1>+              0.000
                                0.000

    1    1  |1 0>              -0.000
                                0.000

    2    1  |1 0>              73.337
                               -0.000

    3    1  |1 0>               0.000
                               -0.000

    1    1  |1 1>-              0.000
                                0.000

    2    1  |1 1>-              0.000
                                0.000

    3    1  |1 1>-              0.094
                                0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -289.79484426    -0.00066809     -146.63      0.00000000        0.00      0.0000
    2  -289.79451022    -0.00033405      -73.32      0.00033404       73.31      0.0091
    3  -289.79451010    -0.00033393      -73.29      0.00033416       73.34      0.0091
    4  -289.79451001    -0.00033384      -73.27      0.00033425       73.36      0.0091
    5  -289.79384194     0.00033423       73.35      0.00100232      219.98      0.0273
    6  -289.79384193     0.00033424       73.36      0.00100233      219.99      0.0273
    7  -289.79384181     0.00033436       73.38      0.00100245      220.01      0.0273
    8  -289.79384172     0.00033446       73.40      0.00100254      220.03      0.0273
    9  -289.79384169     0.00033448       73.41      0.00100257      220.04      0.0273

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57746817 -0.00000000  0.00000000 -0.00000000  0.78073222  0.00000004 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.70700738 -0.00000000 -0.00000000 -0.00000003  0.70720617  0.00000000  0.00000000
                          -0.00000000 -0.00000015  0.00000000  0.00000000  0.00000000 -0.00001433  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.70688050 -0.00000002  0.00000000 -0.00000000  0.70733299 -0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.70733299 -0.00000002 -0.00000000  0.00000000 -0.70688050  0.00000002

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00004325  0.00000000 -0.00000000  0.00000000  0.00035811
                           0.00000000  0.00000000  0.00000002  0.70723361 -0.00000000 -0.00000000  0.00000002  0.70697984

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.57722242  0.00000000 -0.00000000  0.00000000  0.18365489 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000015 -0.00000000 -0.00000000  0.00000000 -0.00001433  0.00000000  0.00000000
                           0.00000000  0.70720617 -0.00000000 -0.00000000  0.00000003 -0.70700738 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.57736018  0.00000000 -0.00000000  0.00000000  0.59726718  0.00000004 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00004323  0.00000000 -0.00000000  0.00000000  0.00035824
                          -0.00000000 -0.00000000 -0.00000002 -0.70697992 -0.00000000 -0.00000000  0.00000002  0.70723352

 State Sym Spin     / Nr.      9

   1    1  |1 1>+          0.23872099
                          -0.00000000

   2    1  |1 1>+          0.00000001
                          -0.00000000

   3    1  |1 1>+          0.00000000
                          -0.00000000

   1    1  |1 0>          -0.00000000
                          -0.00000000

   2    1  |1 0>          -0.00000000
                           0.00000000

   3    1  |1 0>           0.00000000
                           0.79566649

   1    1  |1 1>-         -0.00000000
                          -0.00000001

   2    1  |1 1>-         -0.00000000
                          -0.55671100

   3    1  |1 1>-         -0.00000000
                           0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -289.79484426     -0.00066809     -146.63      0.00000000        0.00      0.0000
     2   1   -289.79451022     -0.00033405      -73.32      0.00033404       73.31      0.0091
     3   1   -289.79451010     -0.00033393      -73.29      0.00033416       73.34      0.0091
     4   1   -289.79451001     -0.00033384      -73.27      0.00033425       73.36      0.0091
     5   1   -289.79384194      0.00033423       73.35      0.00100232      219.98      0.0273
     6   1   -289.79384193      0.00033424       73.36      0.00100233      219.99      0.0273
     7   1   -289.79384181      0.00033436       73.38      0.00100245      220.01      0.0273
     8   1   -289.79384172      0.00033446       73.40      0.00100254      220.03      0.0273
     9   1   -289.79384169      0.00033448       73.41      0.00100257      220.04      0.0273

 E0 =   -289.79417617 is the energy of the lowest zeroth-order state
 E1 =   -289.79484426 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57746817 -0.00000000  0.00000000 -0.00000000  0.78073222  0.00000004 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.70700738 -0.00000000 -0.00000000 -0.00000003  0.70720617  0.00000000  0.00000000
                               -0.00000000 -0.00000015  0.00000000  0.00000000  0.00000000 -0.00001433  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000  0.70688050 -0.00000002  0.00000000 -0.00000000  0.70733299 -0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.70733299 -0.00000002 -0.00000000  0.00000000 -0.70688050  0.00000002

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00004325  0.00000000 -0.00000000  0.00000000  0.00035811
                                0.00000000  0.00000000  0.00000002  0.70723361 -0.00000000 -0.00000000  0.00000002  0.70697984

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.57722242  0.00000000 -0.00000000  0.00000000  0.18365489 -0.00000000 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00000015 -0.00000000 -0.00000000  0.00000000 -0.00001433  0.00000000  0.00000000
                                0.00000000  0.70720617 -0.00000000 -0.00000000  0.00000003 -0.70700738 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.57736018  0.00000000 -0.00000000  0.00000000  0.59726718  0.00000004 -0.00000000  0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00004323  0.00000000 -0.00000000  0.00000000  0.00035824
                               -0.00000000 -0.00000000 -0.00000002 -0.70697992 -0.00000000 -0.00000000  0.00000002  0.70723352


   Total
 Nr Sym  State Sym Spin / Nr.        9

  1  1     1    1  |1 1>+       0.23872099
                               -0.00000000

  2  1     2    1  |1 1>+       0.00000001
                               -0.00000000

  3  1     3    1  |1 1>+       0.00000000
                               -0.00000000

  4  1     1    1  |1 0>       -0.00000000
                               -0.00000000

  5  1     2    1  |1 0>       -0.00000000
                                0.00000000

  6  1     3    1  |1 0>        0.00000000
                                0.79566649

  7  1     1    1  |1 1>-      -0.00000000
                               -0.00000001

  8  1     2    1  |1 1>-      -0.00000000
                               -0.55671100

  9  1     3    1  |1 1>-      -0.00000000
                                0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.35%    0.00%    0.00%    0.00%   60.95%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   49.99%    0.00%    0.00%    0.00%   50.01%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   49.97%    0.00%    0.00%    0.00%   50.03%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   50.03%    0.00%    0.00%    0.00%   49.97%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.02%    0.00%    0.00%    0.00%   49.98%
  6  1     3    1  |1 0>         33.32%    0.00%    0.00%    0.00%    3.37%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   50.01%    0.00%    0.00%    0.00%   49.99%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   35.67%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   49.98%    0.00%    0.00%    0.00%   50.02%

   Total
 Nr Sym  State Sym Spin / Nr.      9

  1  1     1    1  |1 1>+         5.70%
  2  1     2    1  |1 1>+         0.00%
  3  1     3    1  |1 1>+         0.00%
  4  1     1    1  |1 0>          0.00%
  5  1     2    1  |1 0>          0.00%
  6  1     3    1  |1 0>         63.31%
  7  1     1    1  |1 1>-         0.00%
  8  1     2    1  |1 1>-        30.99%
  9  1     3    1  |1 1>-         0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.42       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        6.93       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        19.27      7.32      8.92      2.22      0.05      0.41
 REAL TIME  *        22.79 SEC
 DISK USED  *        37.43 MB (local),      689.22 MB (total)
 SF USED    *        66.47 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -289.793841694236

              CI           MULTI         RHF-SCF
   -289.77800797   -289.46546037   -289.45517525
 **********************************************************************************************************************************
 Molpro calculation terminated
