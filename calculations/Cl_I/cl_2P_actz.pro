
 Working directory              : /wrk/irikura/molpro.FGgdB43A5r/
 Global scratch directory       : /wrk/irikura/molpro.FGgdB43A5r/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.FGgdB43A5r/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Cl SO-CI
                                                                                 ! active space (7/4)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Cl};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=17,sym=2,spin=1}
 
 {multi
     closed,2,3;
     wf,sym=2,spin=1;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! only K-shell uncorrelated
 core,1,0
 
 {ci;wf,sym=2,spin=1;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Cl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 14:11:26  
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

 Library entry CL     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CL     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CL     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CL     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  CL     17.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   17
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

     7.078 MB (compressed) written to integral file ( 19.3%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     24 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      172985.  Node maximum:      175449. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.210E-02 0.526E-02 0.592E-01 0.138E+00 0.138E+00 0.138E+00 0.138E+00 0.138E+00
         2 0.130E-01 0.130E-01 0.130E-01 0.300E-01 0.300E-01 0.300E-01 0.114E+00 0.114E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.76      0.45
 REAL TIME  *         1.30 SEC
 DISK USED  *        29.14 MB (local),      400.76 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   3   5

 NELEC=   17   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -460.88652677    -460.88652677     0.00D+00     0.15D+00     0     0       0.00      0.00    start
   2     -460.88950976      -0.00298299     0.31D-02     0.36D-02     1     0       0.01      0.01    diag2
   3     -460.88964245      -0.00013269     0.71D-03     0.70D-03     2     0       0.00      0.01    diag2
   4     -460.88965588      -0.00001343     0.18D-03     0.23D-03     3     0       0.00      0.01    diag2
   5     -460.88965795      -0.00000208     0.40D-04     0.11D-03     4     0       0.00      0.01    diag2
   6     -460.88965809      -0.00000014     0.11D-04     0.33D-04     5     0       0.00      0.01    diag2
   7     -460.88965810      -0.00000000     0.14D-05     0.36D-05     6     0       0.01      0.02    diag2
   8     -460.88965810      -0.00000000     0.13D-06     0.38D-06     7     0       0.00      0.02    fixocc
   9     -460.88965810       0.00000000     0.73D-08     0.20D-07     0     0       0.00      0.02    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   5

 !RHF STATE 1.2 Energy               -460.889658095874
  RHF One-electron energy            -636.773116793440
  RHF Two-electron energy             175.883458697566
  RHF Kinetic energy                  469.524509141986
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.981609371017

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -105.26037     1  1  s    0.99881
    2.1     2.00000   -10.67436     1  2  s    1.00085
    3.1     2.00000    -1.07991     1  3  s    1.00781
    1.2     2.00000    -8.07497     1  1  px   0.99745
    2.2     2.00000    -8.07286     1  1  pz   1.00076
    3.2     2.00000    -8.07286     1  1  py   1.00076
    4.2     2.00000    -0.49163     1  2  pz   0.99673
    5.2     2.00000    -0.49163     1  2  py   0.99672
    6.2     1.00000    -0.56900     1  2  px   1.04790


 HOMO      6.2    -0.569003 =     -15.4834eV
 LUMO      7.2     0.106433 =       2.8962eV
 LUMO-HOMO         0.675436 =      18.3796eV

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
 CPU TIMES  *         0.80      0.04      0.45
 REAL TIME  *         2.15 SEC
 DISK USED  *        29.72 MB (local),      407.72 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 4 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.344D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.201D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.954D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 4 3 2 6 1   5 4 3 2 6 5 4 3 2 6   1 5 4 3 2 6 1 5 4 3   2 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.118D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.156D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.160D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.195D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.186D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.375D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 2 1 1 3 2 1   3 2 710 9 4 8 6 5 1   3 2 7 910 4 8 5 6 7  10 9 4 8 6 5 1 3 2 1
                                        3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  317  ( 11 closed/active, 168 closed/virtual, 0 active/active, 138 active/virtual )
 Total number of variables:    326
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0   -460.88692875    -460.88778459   -0.00085583    0.05601873 0.00003876 0.00000000  0.28E-01      0.12
   2    4    4    0   -460.88778483    -460.88778483   -0.00000000    0.00011487 0.00000136 0.00000000  0.54E-04      0.24

 CONVERGENCE REACHED!  Final gradient:    0.00000068 ( 0.68E-06)
                       Final energy:   -460.88778483
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -460.887784845225
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.52260983
 One electron energy                          -636.77502447
 Two electron energy                           175.88723962
 Virial ratio                                    1.98160935
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -460.887784834957
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.52261031
 One electron energy                          -636.77502538
 Two electron energy                           175.88724054
 Virial ratio                                    1.98160935
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -460.887784824666
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.52261080
 One electron energy                          -636.77502629
 Two electron energy                           175.88724147
 Virial ratio                                    1.98160935
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000000001
 !MCSCF expec                      <3.2|LXLX|3.2>     1.000000000000
 
 !MCSCF expec                      <1.2|LYLY|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LYLY|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000000000
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000000000
 !MCSCF expec                      <2.2|LZLZ|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LZLZ|3.2>     1.000000000000
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000001
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000001
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000001
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 6 2 4 1   2 4 6 3 5 3 5 6 2 4   1 5 3 6 2 4 1 5 3 6   2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 3 1 3 1 2 3   1 2 9 7 810 5 6 4 2   1 3 9 7 810 5 6 4 7   910 8 5 6 4 2 1 3 2
                                        1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -105.26037     1  1  s    0.99881
    2.1     2.00000   -10.67434     1  2  s    1.00085
    3.1     2.00000    -1.07987     1  3  s    1.00766
    1.2     2.00000    -8.07352     1  1  py   0.99971
    2.2     2.00000    -8.07352     1  1  px   0.99971
    3.2     2.00000    -8.07352     1  1  pz   0.99971
    4.2     1.66667    -0.42710     1  2  py   1.00675
    5.2     1.66667    -0.42710     1  2  pz   1.00675
    6.2     1.66667    -0.42710     1  2  px   1.00675
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 2 22a         -0.00000018      1.00000000      0.00000028
 2 2a2          1.00000000      0.00000018     -0.00000040
 2 a22          0.00000040     -0.00000028      1.00000000
 
 Energy:     -460.88778485   -460.88778483   -460.88778482
 


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
 CPU TIMES  *         1.10      0.29      0.04      0.45
 REAL TIME  *         2.53 SEC
 DISK USED  *        31.13 MB (local),      424.66 MB (total)
 SF USED    *         4.16 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -460.8877848   2.0
    -460.8877848   2.0
    -460.8877848   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 17
 Maximum number of shells:             3
 Maximum number of spin couplings:     5

 Reference space:        3 conf        3 CSFs
 N elec internal:        8 conf        8 CSFs
 N-1 el internal:       36 conf       64 CSFs
 N-2 el internal:       82 conf      302 CSFs

 Number of electrons in valence space:                     15
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  5


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.19 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -460.88778485
     2      -460.88778483
     3      -460.88778482

 Number of blocks in overlap matrix:   149   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     182
 Number of N-1 electron functions:      64

 Number of internal configurations:                    6
 Number of singly external configurations:          2160
 Number of doubly external configurations:        199002
 Total number of contracted configurations:       201168
 Total number of uncontracted configurations:     330660

 Diagonal Coupling coefficients finished.               Storage:    195835 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    251910 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -460.88778485    -0.00000000    -0.48713153  0.18D-01  0.74D-01     0.05
    1     2     2     1.00000000     0.00000000  -460.88778483    -0.00000000    -0.48730931  0.18D-01  0.74D-01     0.05
    1     3     3     1.00000000     0.00000000  -460.88778482    -0.00000000    -0.48715090  0.18D-01  0.74D-01     0.05
    2     1     1     1.07382773    -0.43551267  -461.32329751    -0.43551267    -0.00717669  0.94D-03  0.11D-02     0.39
    2     2     2     1.07383196    -0.43550745  -461.32329228    -0.43550745    -0.00718498  0.95D-03  0.11D-02     0.39
    2     3     3     1.07389316    -0.43548476  -461.32326959    -0.43548476    -0.00721139  0.95D-03  0.11D-02     0.39
    3     1     1     1.06537443    -0.44220559  -461.32999043    -0.00669292    -0.00009689  0.79D-05  0.18D-04     0.75
    3     2     2     1.06538392    -0.44220522  -461.32999006    -0.00669778    -0.00009739  0.78D-05  0.18D-04     0.75
    3     3     3     1.06537698    -0.44220488  -461.32998971    -0.00672012    -0.00009762  0.79D-05  0.18D-04     0.75
    4     1     1     1.06560735    -0.44230964  -461.33009448    -0.00010405    -0.00000341  0.49D-06  0.68D-06     1.09
    4     2     2     1.06560690    -0.44230964  -461.33009447    -0.00010441    -0.00000342  0.50D-06  0.68D-06     1.09
    4     3     3     1.06560595    -0.44230962  -461.33009444    -0.00010474    -0.00000344  0.50D-06  0.68D-06     1.09
    5     1     1     1.06582467    -0.44231362  -461.33009847    -0.00000399    -0.00000014  0.17D-07  0.23D-07     1.43
    5     2     2     1.06582423    -0.44231363  -461.33009846    -0.00000399    -0.00000014  0.17D-07  0.23D-07     1.43
    5     3     3     1.06582432    -0.44231364  -461.33009846    -0.00000402    -0.00000014  0.17D-07  0.23D-07     1.43
    6     1     1     1.06582244    -0.44231378  -461.33009862    -0.00000015    -0.00000000  0.44D-09  0.74D-09     1.77
    6     2     2     1.06582244    -0.44231378  -461.33009862    -0.00000015    -0.00000000  0.44D-09  0.75D-09     1.77
    6     3     3     1.06582244    -0.44231379  -461.33009861    -0.00000015    -0.00000000  0.44D-09  0.74D-09     1.77


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.0%  13.6%  22.0%

 Initialization:   2.3%
 Other:           62.1%

 Total CPU:        1.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222/           0.0000000   0.9686287   0.0000000
 22222/22           0.0000000   0.0000000   0.9686287
 222222/2           0.9686287   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968629    0.000000    0.000000
 2           0.000000    0.968629    0.000000
 3           0.000000    0.000000    0.968629

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968629    0.000000    0.000000
 2           0.000000    0.968629    0.000000
 3           0.000000    0.000000    0.968629


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.96862866 (fixed)   0.96862866 (relaxed)   0.96862866 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000118    0.00000000   -0.38794813
 Singles      0.01169934   -0.02882998   -0.03190610
 Pairs        0.05412318    0.00000000   -0.02245954
 Total        1.06582370   -0.02882998   -0.44231378
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.88778485
 Nuclear energy                         0.00000000
 Kinetic energy                       469.86368751
 One electron energy                 -636.55555837
 Two electron energy                  175.22545975
 Virial quotient                       -0.98183816
 Correlation energy                    -0.44231378
 !MRCI STATE 1.2 Energy              -461.330098620921

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.35921335 (Davidson, fixed reference)
 Cluster corrected energies          -461.35921335 (Davidson, relaxed reference)
 Cluster corrected energies          -461.35921335 (Davidson, rotated reference)

 Cluster corrected energies          -461.35627004 (Pople, fixed reference)
 Cluster corrected energies          -461.35627004 (Pople, relaxed reference)
 Cluster corrected energies          -461.35627004 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.96862866 (fixed)   0.96862866 (relaxed)   0.96862866 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000118    0.00000000   -0.38794816
 Singles      0.01169932   -0.02882996   -0.03190608
 Pairs        0.05412319    0.00000000   -0.02245954
 Total        1.06582369   -0.02882996   -0.44231378
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.88778483
 Nuclear energy                         0.00000000
 Kinetic energy                       469.86369057
 One electron energy                 -636.55556226
 Two electron energy                  175.22546364
 Virial quotient                       -0.98183815
 Correlation energy                    -0.44231378
 !MRCI STATE 2.2 Energy              -461.330098617765

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.35921334 (Davidson, fixed reference)
 Cluster corrected energies          -461.35921334 (Davidson, relaxed reference)
 Cluster corrected energies          -461.35921334 (Davidson, rotated reference)

 Cluster corrected energies          -461.35627004 (Pople, fixed reference)
 Cluster corrected energies          -461.35627004 (Pople, relaxed reference)
 Cluster corrected energies          -461.35627004 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96862866 (fixed)   0.96862866 (relaxed)   0.96862866 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000118    0.00000000   -0.00000049
 Singles      0.01169931   -0.02882995   -0.03190607
 Pairs        0.05412321   -0.41348384   -0.41040723
 Total        1.06582369   -0.44231379   -0.44231379
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.88778482
 Nuclear energy                         0.00000000
 Kinetic energy                       469.86369189
 One electron energy                 -636.55556323
 Two electron energy                  175.22546462
 Virial quotient                       -0.98183815
 Correlation energy                    -0.44231379
 !MRCI STATE 3.2 Energy              -461.330098614602

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.35921334 (Davidson, fixed reference)
 Cluster corrected energies          -461.35921334 (Davidson, relaxed reference)
 Cluster corrected energies          -461.35921334 (Davidson, rotated reference)

 Cluster corrected energies          -461.35627003 (Pople, fixed reference)
 Cluster corrected energies          -461.35627003 (Pople, relaxed reference)
 Cluster corrected energies          -461.35627003 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.52       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.99      1.88      0.29      0.04      0.45
 REAL TIME  *         4.94 SEC
 DISK USED  *        35.98 MB (local),      482.88 MB (total)
 SF USED    *        50.30 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -461.35921335  AU                              
 SETTING HLSDIAG(2)     =      -461.35921334  AU                              
 SETTING HLSDIAG(3)     =      -461.35921334  AU                              


         HLSDIAG
    -461.3592134
    -461.3592133
    -461.3592133
                                                  


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

 Time for Seward_LS:       0.67 sec

        2497181. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.67 sec, REAL time:      0.72 sec


 SORTLS1 read     2508015. and wrote     2508015. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.04 sec
 SORTLS2 read     2508015. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    72.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    72.1 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -461.330099   -461.330099   -461.330099
 Replaced energies:   -461.359213   -461.359213   -461.359213



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -461.35921335

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00     298.41      -0.00
                            0.00       0.00       0.00      -0.00       0.00    -298.41

    2   2.2  0.5  0.5       0.00       0.00       0.00    -298.41       0.00       0.00
                           -0.00       0.00     298.41      -0.00      -0.00      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00    -298.41      -0.00     298.41       0.00      -0.00

    4   1.2  0.5 -0.5      -0.00    -298.41       0.00       0.00       0.00       0.00
                            0.00       0.00    -298.41      -0.00      -0.00      -0.00

    5   2.2  0.5 -0.5     298.41       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00    -298.41

    6   3.2  0.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00
                          298.41       0.00       0.00       0.00     298.41       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -461.36057300    -0.00135965     -298.41      0.00000000        0.00      0.0000
     2  -461.36057300    -0.00135965     -298.41      0.00000000        0.00      0.0000
     3  -461.36057299    -0.00135964     -298.41      0.00000001        0.00      0.0000
     4  -461.36057299    -0.00135964     -298.41      0.00000001        0.00      0.0000
     5  -461.35649405     0.00271930      596.82      0.00407895      895.23      0.1110
     6  -461.35649405     0.00271930      596.82      0.00407895      895.23      0.1110


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5   0.808408107  -0.008725071  -0.105569677   0.043849016  -0.000000000   0.577349558
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.002096223   0.194222303   0.006340592   0.015265434  -0.577350477   0.000000000
                         0.005010095   0.464202706  -0.246557416  -0.593604818   0.000002096   0.000000000

    3    3.2  0.5  0.5   0.003038841   0.281559150   0.290391721   0.699139079   0.000002096  -0.000000000
                        -0.001271450  -0.117804282   0.007467857   0.017979405   0.577350772   0.000000000

    4    1.2  0.5 -0.5   0.003367679   0.312027142  -0.001127270  -0.002713985   0.577349558   0.000000000
                         0.008048951   0.745763187   0.043834523   0.105534786  -0.000002096   0.000000000

    5    2.2  0.5 -0.5  -0.503196240   0.005430949  -0.593801072   0.246638932   0.000000000   0.577350477
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    6    3.2  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.305210425   0.003294107   0.699370224  -0.290487729   0.000000000   0.577350772


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5  65.352%   0.008%   1.114%   0.192%   0.000%  33.333%
    2    2.2  0.5  0.5   0.003%  25.321%   6.083%  35.260%  33.333%   0.000%
    3    3.2  0.5  0.5   0.001%   9.315%   8.438%  48.912%  33.333%   0.000%
    4    1.2  0.5 -0.5   0.008%  65.352%   0.192%   1.114%  33.333%   0.000%
    5    2.2  0.5 -0.5  25.321%   0.003%  35.260%   6.083%   0.000%  33.333%
    6    3.2  0.5 -0.5   9.315%   0.001%  48.912%   8.438%   0.000%  33.333%


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
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.52       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.35      2.34      1.88      0.29      0.04      0.45
 REAL TIME  *         8.30 SEC
 DISK USED  *        36.02 MB (local),      672.38 MB (total)
 SF USED    *        60.48 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -461.356494048024

              CI           MULTI         RHF-SCF
   -461.33009861   -460.88778482   -460.88965810
 **********************************************************************************************************************************
 Molpro calculation terminated
