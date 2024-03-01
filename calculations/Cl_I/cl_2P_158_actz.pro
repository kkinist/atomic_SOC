
 Working directory              : /wrk/irikura/molpro.fBFN4hrOpw/
 Global scratch directory       : /wrk/irikura/molpro.fBFN4hrOpw/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.fBFN4hrOpw/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Cl SO-CI
                                                                                 ! active space (15/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Cl};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=17,sym=2,spin=1}
 
 {multi
     closed,1,0;
     wf,sym=2,spin=1;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=1;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Cl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 14:08:54  
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

     6.816 MB (compressed) written to integral file ( 20.0%)

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     24 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         0.59      0.40
 REAL TIME  *         1.14 SEC
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
   5     -460.88965795      -0.00000208     0.40D-04     0.11D-03     4     0       0.01      0.02    diag2
   6     -460.88965809      -0.00000014     0.11D-04     0.33D-04     5     0       0.00      0.02    diag2
   7     -460.88965810      -0.00000000     0.14D-05     0.36D-05     6     0       0.00      0.02    diag2
   8     -460.88965810      -0.00000000     0.13D-06     0.38D-06     7     0       0.01      0.03    fixocc
   9     -460.88965810       0.00000000     0.73D-08     0.20D-07     0     0       0.00      0.03    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   5

 !RHF STATE 1.2 Energy               -460.889658095866
  RHF One-electron energy            -636.773116793433
  RHF Two-electron energy             175.883458697566
  RHF Kinetic energy                  469.524509141984
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
    1.2     2.00000    -8.07497     1  1  px   0.99742
    2.2     2.00000    -8.07286     1  1  pz   1.00071
    3.2     2.00000    -8.07286     1  1  py   1.00075
    4.2     2.00000    -0.49163     1  2  pz   0.99670
    5.2     2.00000    -0.49163     1  2  py   0.99674
    6.2     1.00000    -0.56900     1  2  px   1.04787


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
 CPU TIMES  *         0.62      0.03      0.40
 REAL TIME  *         2.01 SEC
 DISK USED  *        29.72 MB (local),      407.72 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:  15    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 8 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.346D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.202D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.958D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 4 3 2 6 1   5 4 3 2 6 5 4 3 2 6   1 5 4 3 2 6 1 5 4 3   2 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.152D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.216D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.159D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.217D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.147D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.410D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 2 1 1 3 2 1   3 2 710 9 4 8 6 5 1   3 2 7 910 4 8 5 6 7  10 9 4 8 6 5 1 3 2 1
                                        3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  308  ( 2 closed/active, 30 closed/virtual, 0 active/active, 276 active/virtual )
 Total number of variables:    326
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    2    2    0   -460.88695130    -460.88778453   -0.00083323    0.05560549 0.00039307 0.00000000  0.28E-01      0.06
   2    5    5    0   -460.88778483    -460.88778483   -0.00000000    0.00011404 0.00000036 0.00000000  0.54E-04      0.13

 CONVERGENCE REACHED!  Final gradient:    0.00000035 ( 0.35E-06)
                       Final energy:   -460.88778483
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -460.887784839824
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.52261008
 One electron energy                          -636.77502495
 Two electron energy                           175.88724011
 Virial ratio                                    1.98160935
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -460.887784835779
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.52261027
 One electron energy                          -636.77502531
 Two electron energy                           175.88724047
 Virial ratio                                    1.98160935
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -460.887784829221
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.52261058
 One electron energy                          -636.77502589
 Two electron energy                           175.88724106
 Virial ratio                                    1.98160935
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000000000
 !MCSCF expec                      <3.2|LXLX|3.2>     1.000000000000
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999998
 !MCSCF expec                      <2.2|LYLY|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000000003
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000000003
 !MCSCF expec                      <2.2|LZLZ|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999999998
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 6 2 4 1   4 2 6 5 3 5 3 6 2 4   1 5 3 6 2 4 1 3 5 6   2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 3 1 3 1 2 3   1 2 7 9 5 810 6 4 2   1 3 9 7 5 810 6 4 7   910 8 5 6 4 2 1 3 2
                                        1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -105.26037     1  1  s    0.99881
    2.1     2.00000   -10.67434     1  2  s    1.00085
    3.1     2.00000    -1.07987     1  3  s    1.00766
    1.2     2.00000    -8.07352     1  1  px   0.99971
    2.2     2.00000    -8.07352     1  1  py   0.99971
    3.2     2.00000    -8.07352     1  1  pz   0.99971
    4.2     1.66667    -0.42710     1  2  py   1.00675
    5.2     1.66667    -0.42710     1  2  pz   1.00675
    6.2     1.66667    -0.42710     1  2  px   1.00675
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 22 22222a      0.00000047      1.00000000     -0.00000000
 22 222a22     -0.00000154      0.00000000      1.00000000
 22 2222a2      1.00000000     -0.00000047      0.00000154
 
 Energy:     -460.88778484   -460.88778484   -460.88778483
 


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
 CPU TIMES  *         0.84      0.22      0.03      0.40
 REAL TIME  *         2.30 SEC
 DISK USED  *        31.13 MB (local),      424.66 MB (total)
 SF USED    *         5.50 MB
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

 Reference space:        6 conf        6 CSFs
 N elec internal:        8 conf        8 CSFs
 N-1 el internal:       36 conf       64 CSFs
 N-2 el internal:      110 conf      388 CSFs

 Number of electrons in valence space:                     15
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  5


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -460.88778484
     2      -460.88778484
     3      -460.88778483

 Number of blocks in overlap matrix:   149   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     182
 Number of N-1 electron functions:      64

 Number of internal configurations:                    6
 Number of singly external configurations:          2160
 Number of doubly external configurations:        199002
 Total number of contracted configurations:       201168
 Total number of uncontracted configurations:     424200

 Diagonal Coupling coefficients finished.               Storage:    196468 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    251953 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -460.88778484     0.00000000    -0.48713154  0.18D-01  0.74D-01     0.03
    1     2     2     1.00000000     0.00000000  -460.88778484    -0.00000000    -0.48730930  0.18D-01  0.74D-01     0.03
    1     3     3     1.00000000     0.00000000  -460.88778483     0.00000000    -0.48715090  0.18D-01  0.74D-01     0.03
    2     1     1     1.07382773    -0.43551267  -461.32329751    -0.43551267    -0.00717669  0.94D-03  0.11D-02     0.36
    2     2     2     1.07383196    -0.43550745  -461.32329228    -0.43550745    -0.00718498  0.95D-03  0.11D-02     0.36
    2     3     3     1.07389315    -0.43548476  -461.32326959    -0.43548476    -0.00721139  0.95D-03  0.11D-02     0.36
    3     1     1     1.06537443    -0.44220559  -461.32999043    -0.00669292    -0.00009689  0.79D-05  0.18D-04     0.68
    3     2     2     1.06538392    -0.44220522  -461.32999006    -0.00669777    -0.00009739  0.78D-05  0.18D-04     0.68
    3     3     3     1.06537697    -0.44220488  -461.32998971    -0.00672012    -0.00009762  0.79D-05  0.18D-04     0.68
    4     1     1     1.06560735    -0.44230964  -461.33009448    -0.00010405    -0.00000341  0.49D-06  0.68D-06     1.01
    4     2     2     1.06560690    -0.44230964  -461.33009447    -0.00010441    -0.00000342  0.50D-06  0.68D-06     1.01
    4     3     3     1.06560595    -0.44230961  -461.33009444    -0.00010474    -0.00000344  0.50D-06  0.68D-06     1.01
    5     1     1     1.06582467    -0.44231363  -461.33009847    -0.00000399    -0.00000014  0.17D-07  0.23D-07     1.30
    5     2     2     1.06582423    -0.44231363  -461.33009846    -0.00000399    -0.00000014  0.17D-07  0.23D-07     1.30
    5     3     3     1.06582432    -0.44231363  -461.33009846    -0.00000402    -0.00000014  0.17D-07  0.23D-07     1.30
    6     1     1     1.06582245    -0.44231378  -461.33009862    -0.00000015    -0.00000000  0.44D-09  0.74D-09     1.60
    6     2     2     1.06582244    -0.44231378  -461.33009862    -0.00000015    -0.00000000  0.44D-09  0.75D-09     1.60
    6     3     3     1.06582244    -0.44231379  -461.33009862    -0.00000015    -0.00000000  0.44D-09  0.74D-09     1.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.0%  15.0%  22.5%

 Initialization:   1.2%
 Other:           61.3%

 Total CPU:        1.6 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222/22           0.0000000   0.0000000   0.9686287
 2222222/           0.0000000   0.9686287   0.0000000
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

 Coefficient of reference function:   C(0) = 0.96862866 (fixed)   0.96862923 (relaxed)   0.96862866 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000118    0.00000000   -0.38794813
 Singles      0.01169935   -0.02882999   -0.03190611
 Pairs        0.05412318   -0.00000000   -0.02245954
 Total        1.06582370   -0.02882999   -0.44231378
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.88778484
 Nuclear energy                         0.00000000
 Kinetic energy                       469.86368758
 One electron energy                 -636.55555852
 Two electron energy                  175.22545990
 Virial quotient                       -0.98183816
 Correlation energy                    -0.44231378
 !MRCI STATE 1.2 Energy              -461.330098619346

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.35921335 (Davidson, fixed reference)
 Cluster corrected energies          -461.35921279 (Davidson, relaxed reference)
 Cluster corrected energies          -461.35921335 (Davidson, rotated reference)

 Cluster corrected energies          -461.35627004 (Pople, fixed reference)
 Cluster corrected energies          -461.35626952 (Pople, relaxed reference)
 Cluster corrected energies          -461.35627004 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.96862866 (fixed)   0.96862923 (relaxed)   0.96862866 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000118   -0.00000000   -0.38794816
 Singles      0.01169932   -0.02882996   -0.03190608
 Pairs        0.05412319   -0.00000000   -0.02245954
 Total        1.06582369   -0.02882996   -0.44231378
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.88778484
 Nuclear energy                         0.00000000
 Kinetic energy                       469.86369056
 One electron energy                 -636.55556223
 Two electron energy                  175.22546362
 Virial quotient                       -0.98183815
 Correlation energy                    -0.44231378
 !MRCI STATE 2.2 Energy              -461.330098618102

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.35921334 (Davidson, fixed reference)
 Cluster corrected energies          -461.35921279 (Davidson, relaxed reference)
 Cluster corrected energies          -461.35921334 (Davidson, rotated reference)

 Cluster corrected energies          -461.35627004 (Pople, fixed reference)
 Cluster corrected energies          -461.35626951 (Pople, relaxed reference)
 Cluster corrected energies          -461.35627004 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96862866 (fixed)   0.96862923 (relaxed)   0.96862866 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000118   -0.00000000   -0.00000049
 Singles      0.01169931   -0.02882994   -0.03190607
 Pairs        0.05412321   -0.41348384   -0.41040723
 Total        1.06582369   -0.44231379   -0.44231379
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.88778483
 Nuclear energy                         0.00000000
 Kinetic energy                       469.86369184
 One electron energy                 -636.55556311
 Two electron energy                  175.22546449
 Virial quotient                       -0.98183815
 Correlation energy                    -0.44231379
 !MRCI STATE 3.2 Energy              -461.330098616086

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.35921334 (Davidson, fixed reference)
 Cluster corrected energies          -461.35921279 (Davidson, relaxed reference)
 Cluster corrected energies          -461.35921334 (Davidson, rotated reference)

 Cluster corrected energies          -461.35627003 (Pople, fixed reference)
 Cluster corrected energies          -461.35626951 (Pople, relaxed reference)
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
 CPU TIMES  *         2.54      1.69      0.22      0.03      0.40
 REAL TIME  *         4.47 SEC
 DISK USED  *        35.98 MB (local),      482.88 MB (total)
 SF USED    *        51.68 MB
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

 Time for Seward_LS:       0.70 sec

        2402996. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.70 sec, REAL time:      0.74 sec


 SORTLS1 read     2508015. and wrote     2508015. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.04 sec
 SORTLS2 read     2508015. and wrote    12192876. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.03 sec

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

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00     298.41      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00    -298.41

    2   2.2  0.5  0.5       0.00       0.00       0.00    -298.41       0.00       0.00
                            0.00      -0.00     298.41      -0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00    -298.41       0.00     298.41      -0.00      -0.00

    4   1.2  0.5 -0.5       0.00    -298.41       0.00       0.00       0.00       0.00
                            0.00       0.00    -298.41      -0.00       0.00       0.00

    5   2.2  0.5 -0.5     298.41       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00    -298.41

    6   3.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00
                          298.41      -0.00       0.00      -0.00     298.41      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -461.36057300    -0.00135965     -298.41      0.00000000        0.00      0.0000
     2  -461.36057300    -0.00135965     -298.41      0.00000000        0.00      0.0000
     3  -461.36057299    -0.00135964     -298.41      0.00000000        0.00      0.0000
     4  -461.36057299    -0.00135964     -298.41      0.00000000        0.00      0.0000
     5  -461.35649405     0.00271930      596.82      0.00407895      895.23      0.1110
     6  -461.35649405     0.00271930      596.82      0.00407895      895.23      0.1110


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5   0.013949844   0.808998389  -0.109223685  -0.008038466   0.000000000   0.577349615
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.499036999  -0.008605070   0.030836808  -0.418999089  -0.577350468  -0.000000000
                        -0.017120745   0.000295219   0.036013605  -0.489339484   0.000001262   0.000000000

    3    3.2  0.5  0.5  -0.010617656   0.000183084  -0.042119515   0.572304322   0.000001262   0.000000000
                        -0.309484379   0.005336548   0.036065020  -0.490038098   0.577350724  -0.000000000

    4    1.2  0.5 -0.5   0.808522710  -0.013941641  -0.005228236   0.071039331   0.577349615  -0.000000000
                        -0.027738447   0.000478304  -0.006105938   0.082965215  -0.000001262   0.000000000

    5    2.2  0.5 -0.5  -0.008610133  -0.499330599  -0.644215311  -0.047411902   0.000000000   0.577350468
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    6    3.2  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.005339688  -0.309666458   0.753438501   0.055450331   0.000000000   0.577350724


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5   0.019%  65.448%   1.193%   0.006%   0.000%  33.333%
    2    2.2  0.5  0.5  24.933%   0.007%   0.225%  41.501%  33.333%   0.000%
    3    3.2  0.5  0.5   9.589%   0.003%   0.307%  56.767%  33.333%   0.000%
    4    1.2  0.5 -0.5  65.448%   0.019%   0.006%   1.193%  33.333%   0.000%
    5    2.2  0.5 -0.5   0.007%  24.933%  41.501%   0.225%   0.000%  33.333%
    6    3.2  0.5 -0.5   0.003%   9.589%  56.767%   0.307%   0.000%  33.333%


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
 CPU TIMES  *         4.69      2.14      1.69      0.22      0.03      0.40
 REAL TIME  *         7.76 SEC
 DISK USED  *        36.02 MB (local),      672.38 MB (total)
 SF USED    *        61.76 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -461.356494048111

              CI           MULTI         RHF-SCF
   -461.33009862   -460.88778483   -460.88965810
 **********************************************************************************************************************************
 Molpro calculation terminated
