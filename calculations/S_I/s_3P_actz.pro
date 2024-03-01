
 Working directory              : /wrk/irikura/molpro.PbJsXoBsCg/
 Global scratch directory       : /wrk/irikura/molpro.PbJsXoBsCg/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.PbJsXoBsCg/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,S SO-CI
                                                                                 ! Active space (6,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={S};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=16,sym=1,spin=2}
 
 {multi
     wf,sym=1,spin=2;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=2;state,3; save,5202.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5202.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   S SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 13:15:18  
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

 Library entry S      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry S      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry S      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry S      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  S      16.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   16
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

     7.078 MB (compressed) written to integral file ( 19.0%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     24 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.02 SEC

 Node minimum:      172985.  Node maximum:      175449. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.220E-02 0.550E-02 0.598E-01 0.149E+00 0.149E+00 0.149E+00 0.149E+00 0.149E+00
         2 0.135E-01 0.135E-01 0.135E-01 0.300E-01 0.300E-01 0.300E-01 0.116E+00 0.116E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.64      0.45
 REAL TIME  *         1.17 SEC
 DISK USED  *        29.14 MB (local),      400.73 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   3   4

 NELEC=   16   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -398.57777024    -398.57777024     0.00D+00     0.14D+00     0     0       0.00      0.00    start
   2     -398.58502631      -0.00725607     0.33D-02     0.69D-02     1     0       0.01      0.01    diag2
   3     -398.58534467      -0.00031836     0.10D-02     0.13D-02     2     0       0.00      0.01    diag2
   4     -398.58539497      -0.00005030     0.24D-03     0.58D-03     3     0       0.00      0.01    diag2
   5     -398.58540304      -0.00000808     0.76D-04     0.29D-03     4     0       0.00      0.01    diag2
   6     -398.58540352      -0.00000048     0.19D-04     0.78D-04     5     0       0.00      0.01    diag2
   7     -398.58540353      -0.00000001     0.29D-05     0.11D-04     6     0       0.01      0.02    diag2
   8     -398.58540353      -0.00000000     0.33D-06     0.17D-05     7     0       0.00      0.02    fixocc
   9     -398.58540353      -0.00000000     0.29D-07     0.78D-07     0     0       0.00      0.02    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   4

 !RHF STATE 1.1 Energy               -398.585403528638
  RHF One-electron energy            -550.851178789676
  RHF Two-electron energy             152.265775261038
  RHF Kinetic energy                  405.263482256385
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.983521637107

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -92.29506     1  1  s    0.99908
    2.1     2.00000    -9.05460     1  2  s    1.00053
    3.1     2.00000    -0.88464     1  3  s    1.00808
    1.2     2.00000    -6.68315     1  1  px   0.99858
    2.2     2.00000    -6.68315     1  1  py   0.99844
    3.2     2.00000    -6.68153     1  1  pz   1.00163
    4.2     2.00000    -0.39732     1  2  pz   0.97118
    5.2     1.00000    -0.48037     1  2  px   1.04373
    6.2     1.00000    -0.48037     1  2  py   1.04358


 HOMO      6.2    -0.480372 =     -13.0716eV
 LUMO      7.2     0.091800 =       2.4980eV
 LUMO-HOMO         0.572171 =      15.5696eV

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
 CPU TIMES  *         0.66      0.02      0.45
 REAL TIME  *         2.21 SEC
 DISK USED  *        29.72 MB (local),      407.69 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.247D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.145D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.810D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 4 6 2 1   3 5 4 6 2 3 5 6 4 2   1 3 5 6 4 2 1 5 3 6   4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.120D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.205D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.314D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.418D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.372D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.458D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 2 3 1   2 3 9 7 810 4 5 6 1   2 3 7 910 8 5 4 6 7   9 810 4 5 6 1 2 3 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  317  ( 11 closed/active, 168 closed/virtual, 0 active/active, 138 active/virtual )
 Total number of variables:    326
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0   -398.58199461    -398.58303850   -0.00104389    0.04826825 0.00001336 0.00000000  0.39E-01      0.11
   2    4    4    0   -398.58304110    -398.58304112   -0.00000002    0.00017248 0.00000003 0.00000000  0.17E-03      0.22
   3   10   10    0   -398.58304112    -398.58304112    0.00000000    0.00000002 0.00000001 0.00000000  0.15E-07      0.31

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.48E-08)
                       Final energy:   -398.58304112
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -398.583041121830
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.26105451
 One electron energy                          -550.85598391
 Two electron energy                           152.27294279
 Virial ratio                                    1.98352170
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -398.583041121826
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.26105451
 One electron energy                          -550.85598391
 Two electron energy                           152.27294279
 Virial ratio                                    1.98352170
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -398.583041121796
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.26105451
 One electron energy                          -550.85598392
 Two electron energy                           152.27294279
 Virial ratio                                    1.98352170
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.000000496693
 !MCSCF expec                      <2.1|LXLX|2.1>     0.999999333300
 !MCSCF expec                      <3.1|LXLX|3.1>     0.999999999782
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.999999503532
 !MCSCF expec                      <2.1|LYLY|2.1>     0.000000770387
 !MCSCF expec                      <3.1|LYLY|3.1>     0.999999898977
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.999999999776
 !MCSCF expec                      <2.1|LZLZ|2.1>     0.999999896313
 !MCSCF expec                      <3.1|LZLZ|3.1>     0.000000101240
 
 !MCSCF expec                      <1.1|L**2|1.1>     2.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     2.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 3 5 2 4 1   6 5 3 2 4 6 3 5 2 4   1 6 3 5 2 4 1 6 5 3   2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 2 3 1 2   3 1 510 8 9 7 6 4 2   3 1 510 8 6 9 7 4 5   7 9 810 6 4 2 3 1 2
                                        3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -92.29491     1  1  s    0.99908
    2.1     2.00000    -9.05441     1  2  s    1.00054
    3.1     2.00000    -0.88445     1  3  s    1.00771
    1.2     2.00000    -6.68241     1  1  py   0.99974
    2.2     2.00000    -6.68241     1  1  pz   0.99974
    3.2     2.00000    -6.68241     1  1  px   0.99974
    4.2     1.33333    -0.28282     1  2  px   1.00718
    5.2     1.33333    -0.28282     1  2  pz   1.00718
    6.2     1.33333    -0.28282     1  2  py   1.00718
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 2 a2a         -0.00001497      0.00032201      0.99999995
 2 2aa          0.99999975      0.00070461      0.00001474
 2 aa2         -0.00070461      0.99999970     -0.00032202
 
 Energy:     -398.58304112   -398.58304112   -398.58304112
 


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
 CPU TIMES  *         0.98      0.32      0.02      0.45
 REAL TIME  *         2.64 SEC
 DISK USED  *        31.13 MB (local),      424.64 MB (total)
 SF USED    *         4.20 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -398.5830411   2.0
    -398.5830411   2.0
    -398.5830411   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 16
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:       28 conf       28 CSFs
 N-1 el internal:       82 conf      174 CSFs
 N-2 el internal:       86 conf      462 CSFs

 Number of electrons in valence space:                     14
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.19 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -398.58304112
     2      -398.58304112
     3      -398.58304112

 Number of blocks in overlap matrix:   154   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     177
 Number of N-1 electron functions:     174

 Number of internal configurations:                   16
 Number of singly external configurations:          5796
 Number of doubly external configurations:        193347
 Total number of contracted configurations:       199159
 Total number of uncontracted configurations:     506428

 Diagonal Coupling coefficients finished.               Storage:    201340 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    252133 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -398.58304112     0.00000000    -0.43417237  0.34D-01  0.57D-01     0.04
    1     2     2     1.00000000     0.00000000  -398.58304112     0.00000000    -0.43452985  0.34D-01  0.57D-01     0.04
    1     3     3     1.00000000     0.00000000  -398.58304112     0.00000000    -0.43447205  0.34D-01  0.57D-01     0.04
    2     1     1     1.07322117    -0.38985350  -398.97289462    -0.38985350    -0.00638449  0.14D-02  0.86D-03     0.47
    2     2     2     1.07350528    -0.38976639  -398.97280751    -0.38976639    -0.00648004  0.14D-02  0.86D-03     0.47
    2     3     3     1.07344336    -0.38975774  -398.97279886    -0.38975774    -0.00649822  0.14D-02  0.86D-03     0.47
    3     1     1     1.06401827    -0.39582831  -398.97886943    -0.00597481    -0.00007959  0.60D-05  0.15D-04     0.83
    3     2     2     1.06401694    -0.39582751  -398.97886863    -0.00606112    -0.00008032  0.60D-05  0.15D-04     0.83
    3     3     3     1.06399471    -0.39582742  -398.97886854    -0.00606968    -0.00008010  0.57D-05  0.15D-04     0.83
    4     1     1     1.06421394    -0.39591411  -398.97895523    -0.00008580    -0.00000212  0.37D-06  0.46D-06     1.14
    4     2     2     1.06421235    -0.39591407  -398.97895519    -0.00008656    -0.00000215  0.38D-06  0.46D-06     1.14
    4     3     3     1.06420812    -0.39591397  -398.97895509    -0.00008655    -0.00000222  0.40D-06  0.47D-06     1.14
    5     1     1     1.06438365    -0.39591657  -398.97895769    -0.00000246    -0.00000011  0.27D-07  0.19D-07     1.43
    5     2     2     1.06438361    -0.39591657  -398.97895769    -0.00000250    -0.00000011  0.27D-07  0.19D-07     1.43
    5     3     3     1.06438416    -0.39591656  -398.97895769    -0.00000259    -0.00000012  0.27D-07  0.20D-07     1.43
    6     1     1     1.06438657    -0.39591670  -398.97895782    -0.00000013    -0.00000000  0.50D-09  0.73D-09     1.73
    6     2     2     1.06438664    -0.39591670  -398.97895782    -0.00000013    -0.00000000  0.50D-09  0.73D-09     1.73
    6     3     3     1.06438665    -0.39591670  -398.97895782    -0.00000013    -0.00000000  0.50D-09  0.75D-09     1.73


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.6%
 P   0.6%  17.9%  20.8%

 Initialization:   1.7%
 Other:           58.4%

 Total CPU:        1.7 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//2           0.9692792  -0.0000000   0.0000000
 22222/2/          -0.0000000   0.9692792  -0.0000000
 222222//           0.0000000  -0.0000000   0.9692791

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.969279   -0.000000
 2          -0.000000   -0.000000    0.969279
 3           0.969279    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969279   -0.000000    0.000000
 2          -0.000000    0.969279   -0.000000
 3           0.000000   -0.000000    0.969279


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96927918 (fixed)   0.96927918 (relaxed)   0.96927918 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000654   -0.00004751   -0.32997747
 Singles      0.02062874   -0.04469340   -0.04966453
 Pairs        0.04375825   -0.00000000   -0.01627470
 Total        1.06439353   -0.04474091   -0.39591670
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58304112
 Nuclear energy                         0.00000000
 Kinetic energy                       405.55153087
 One electron energy                 -550.64513888
 Two electron energy                  151.66618107
 Virial quotient                       -0.98379349
 Correlation energy                    -0.39591670
 !MRCI STATE 1.1 Energy              -398.978957817640

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.00445229 (Davidson, fixed reference)
 Cluster corrected energies          -399.00445229 (Davidson, relaxed reference)
 Cluster corrected energies          -399.00445229 (Davidson, rotated reference)

 Cluster corrected energies          -399.00114223 (Pople, fixed reference)
 Cluster corrected energies          -399.00114223 (Pople, relaxed reference)
 Cluster corrected energies          -399.00114223 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96927915 (fixed)   0.96927915 (relaxed)   0.96927915 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000654   -0.00004751   -0.00004707
 Singles      0.02062880   -0.04469343   -0.04966455
 Pairs        0.04375826   -0.35117575   -0.34620508
 Total        1.06439360   -0.39591670   -0.39591670
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58304112
 Nuclear energy                         0.00000000
 Kinetic energy                       405.55153239
 One electron energy                 -550.64514062
 Two electron energy                  151.66618280
 Virial quotient                       -0.98379349
 Correlation energy                    -0.39591670
 !MRCI STATE 2.1 Energy              -398.978957817627

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.00445232 (Davidson, fixed reference)
 Cluster corrected energies          -399.00445232 (Davidson, relaxed reference)
 Cluster corrected energies          -399.00445232 (Davidson, rotated reference)

 Cluster corrected energies          -399.00114225 (Pople, fixed reference)
 Cluster corrected energies          -399.00114225 (Pople, relaxed reference)
 Cluster corrected energies          -399.00114225 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96927915 (fixed)   0.96927915 (relaxed)   0.96927915 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000654   -0.00004751   -0.32997740
 Singles      0.02062885   -0.04469345   -0.04966457
 Pairs        0.04375822   -0.00000000   -0.01627472
 Total        1.06439361   -0.04474096   -0.39591670
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58304112
 Nuclear energy                         0.00000000
 Kinetic energy                       405.55153365
 One electron energy                 -550.64514102
 Two electron energy                  151.66618320
 Virial quotient                       -0.98379349
 Correlation energy                    -0.39591670
 !MRCI STATE 3.1 Energy              -398.978957817577

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.00445232 (Davidson, fixed reference)
 Cluster corrected energies          -399.00445232 (Davidson, relaxed reference)
 Cluster corrected energies          -399.00445232 (Davidson, rotated reference)

 Cluster corrected energies          -399.00114226 (Pople, fixed reference)
 Cluster corrected energies          -399.00114226 (Pople, relaxed reference)
 Cluster corrected energies          -399.00114226 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.47       700     1000      520     2100     2140     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.82      1.83      0.32      0.02      0.45
 REAL TIME  *         4.98 SEC
 DISK USED  *        35.94 MB (local),      482.30 MB (total)
 SF USED    *        49.95 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -399.00445229  AU                              
 SETTING HLSDIAG(2)     =      -399.00445232  AU                              
 SETTING HLSDIAG(3)     =      -399.00445232  AU                              


         HLSDIAG
    -399.0044523
    -399.0044523
    -399.0044523
                                                  


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

        2402996. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.67 sec, REAL time:      0.70 sec


 SORTLS1 read     2508011. and wrote     2508011. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.04 sec
 SORTLS2 read     2508011. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    72.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    72.1 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -398.978958   -398.978958   -398.978958
 Replaced energies:   -399.004452   -399.004452   -399.004452



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -399.00445232

 Wigner-Eckart theorem used for  8 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9

    1   1.1  1.0  1.0       0.01       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -198.57       0.00    -140.41       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00    -140.41       0.00       0.00       0.00
                           -0.00      -0.00       0.00     140.41       0.00      -0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00     140.41      -0.00       0.00       0.00       0.00
                          198.57      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00       0.00      -0.00       0.01       0.00       0.00      -0.00      -0.00       0.00
                           -0.00    -140.41       0.00       0.00       0.00       0.00       0.00    -140.41       0.00

    5   2.1  1.0  0.0      -0.00       0.00     140.41       0.00       0.00       0.00       0.00       0.00    -140.41
                          140.41      -0.00      -0.00      -0.00       0.00       0.00     140.41       0.00      -0.00

    6   3.1  1.0  0.0       0.00    -140.41      -0.00       0.00       0.00       0.00      -0.00     140.41      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.01       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -140.41       0.00      -0.00      -0.00     198.57

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00     140.41       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     140.41      -0.00      -0.00       0.00       0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00    -140.41      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00    -198.57       0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  9)

    The diagonal matrixelements are shifted by   -399.00445232 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.007       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -198.568       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.001       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     198.568       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000     198.568      -0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.007       0.000       0.000       0.000       0.000
                                0.000    -198.568       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.001       0.000      -0.000       0.000
                              198.568       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000    -198.568
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.007       0.000
                                0.000       0.000    -198.568       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -198.568       0.000       0.001
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000     198.568       0.000       0.000       0.000
                              198.568      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.        9

    1    1  |1 1>+              0.000
                             -198.568

    2    1  |1 1>+              0.000
                                0.000

    3    1  |1 1>+              0.000
                                0.000

    1    1  |1 0>              -0.000
                                0.000

    2    1  |1 0>             198.568
                                0.000

    3    1  |1 0>               0.000
                                0.000

    1    1  |1 1>-              0.000
                                0.000

    2    1  |1 1>-              0.000
                                0.000

    3    1  |1 1>-              0.000
                                0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -399.00535707    -0.00090474     -198.57      0.00000000        0.00      0.0000
    2  -399.00535707    -0.00090474     -198.57      0.00000000        0.00      0.0000
    3  -399.00535705    -0.00090473     -198.56      0.00000001        0.00      0.0000
    4  -399.00535705    -0.00090473     -198.56      0.00000002        0.00      0.0000
    5  -399.00535705    -0.00090472     -198.56      0.00000002        0.00      0.0000
    6  -399.00354758     0.00090475      198.57      0.00180949      397.14      0.0492
    7  -399.00354757     0.00090476      198.57      0.00180950      397.14      0.0492
    8  -399.00354756     0.00090476      198.57      0.00180950      397.14      0.0492
    9  -399.00264283     0.00180950      397.14      0.00271424      595.71      0.0739

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.03717435  0.00000000 -0.00000002 -0.00000000  0.81564690 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000001 -0.00000001  0.70711218  0.00000000  0.00000001 -0.00000000 -0.70710139
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002

   3    1  |1 1>+         -0.00000001 -0.00000000  0.70711293  0.00000001  0.00000002 -0.00000000 -0.70710050  0.00000000
                           0.00000000  0.00000000 -0.00022212  0.00000000 -0.00000000 -0.00000000 -0.00035385  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002
                           0.00000000 -0.00000001 -0.00000001  0.70710139  0.00000000 -0.00000001  0.00000000  0.70711218

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.68778553 -0.00000001 -0.00000000  0.00000000 -0.44002228  0.00000000  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00166605 -0.00000000  0.00000000  0.00000000  0.00035062 -0.00000000  0.00000000
                          -0.00000001  0.70710561  0.00000000  0.00000001 -0.00000000 -0.70710590  0.00000000 -0.00000001

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00022212 -0.00000000  0.00000000 -0.00000000 -0.00035386  0.00000000
                          -0.00000001 -0.00000000  0.70710056  0.00000001  0.00000002  0.00000000  0.70711288 -0.00000000

   2    1  |1 1>-          0.00000000  0.00166604 -0.00000000  0.00000000  0.00000000 -0.00035063  0.00000000 -0.00000000
                          -0.00000001  0.70710403  0.00000000  0.00000001 -0.00000000  0.70710749 -0.00000000  0.00000001

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.72496147  0.00000001  0.00000002 -0.00000000 -0.37563350  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9

   1    1  |1 1>+          0.57735448
                          -0.00000000

   2    1  |1 1>+         -0.00000000
                           0.00000000

   3    1  |1 1>+         -0.00000000
                          -0.00000000

   1    1  |1 0>          -0.00000000
                          -0.00000000

   2    1  |1 0>           0.00000000
                           0.57734864

   3    1  |1 0>          -0.00000000
                          -0.00000000

   1    1  |1 1>-         -0.00000000
                           0.00000000

   2    1  |1 1>-          0.00000000
                          -0.00000000

   3    1  |1 1>-          0.00000000
                           0.57734768


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -399.00535707     -0.00090474     -198.57      0.00000000        0.00      0.0000
     2   1   -399.00535707     -0.00090474     -198.57      0.00000000        0.00      0.0000
     3   1   -399.00535705     -0.00090473     -198.56      0.00000001        0.00      0.0000
     4   1   -399.00535705     -0.00090473     -198.56      0.00000002        0.00      0.0000
     5   1   -399.00535705     -0.00090472     -198.56      0.00000002        0.00      0.0000
     6   1   -399.00354758      0.00090475      198.57      0.00180949      397.14      0.0492
     7   1   -399.00354757      0.00090476      198.57      0.00180950      397.14      0.0492
     8   1   -399.00354756      0.00090476      198.57      0.00180950      397.14      0.0492
     9   1   -399.00264283      0.00180950      397.14      0.00271424      595.71      0.0739

 E0 =   -399.00445232 is the energy of the lowest zeroth-order state
 E1 =   -399.00535707 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.03717435  0.00000000 -0.00000002 -0.00000000  0.81564690 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000001 -0.00000001  0.70711218  0.00000000  0.00000001 -0.00000000 -0.70710139
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002

  3  1     3    1  |1 1>+      -0.00000001 -0.00000000  0.70711293  0.00000001  0.00000002 -0.00000000 -0.70710050  0.00000000
                                0.00000000  0.00000000 -0.00022212  0.00000000 -0.00000000 -0.00000000 -0.00035385  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002
                                0.00000000 -0.00000001 -0.00000001  0.70710139  0.00000000 -0.00000001  0.00000000  0.70711218

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.68778553 -0.00000001 -0.00000000  0.00000000 -0.44002228  0.00000000  0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00166605 -0.00000000  0.00000000  0.00000000  0.00035062 -0.00000000  0.00000000
                               -0.00000001  0.70710561  0.00000000  0.00000001 -0.00000000 -0.70710590  0.00000000 -0.00000001

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00022212 -0.00000000  0.00000000 -0.00000000 -0.00035386  0.00000000
                               -0.00000001 -0.00000000  0.70710056  0.00000001  0.00000002  0.00000000  0.70711288 -0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00166604 -0.00000000  0.00000000  0.00000000 -0.00035063  0.00000000 -0.00000000
                               -0.00000001  0.70710403  0.00000000  0.00000001 -0.00000000  0.70710749 -0.00000000  0.00000001

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.72496147  0.00000001  0.00000002 -0.00000000 -0.37563350  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9

  1  1     1    1  |1 1>+       0.57735448
                               -0.00000000

  2  1     2    1  |1 1>+      -0.00000000
                                0.00000000

  3  1     3    1  |1 1>+      -0.00000000
                               -0.00000000

  4  1     1    1  |1 0>       -0.00000000
                               -0.00000000

  5  1     2    1  |1 0>        0.00000000
                                0.57734864

  6  1     3    1  |1 0>       -0.00000000
                               -0.00000000

  7  1     1    1  |1 1>-      -0.00000000
                                0.00000000

  8  1     2    1  |1 1>-       0.00000000
                               -0.00000000

  9  1     3    1  |1 1>-       0.00000000
                                0.57734768



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.14%    0.00%    0.00%    0.00%   66.53%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>         47.30%    0.00%    0.00%    0.00%   19.36%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  8  1     2    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        52.56%    0.00%    0.00%    0.00%   14.11%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9

  1  1     1    1  |1 1>+        33.33%
  2  1     2    1  |1 1>+         0.00%
  3  1     3    1  |1 1>+         0.00%
  4  1     1    1  |1 0>          0.00%
  5  1     2    1  |1 0>         33.33%
  6  1     3    1  |1 0>          0.00%
  7  1     1    1  |1 1>-         0.00%
  8  1     2    1  |1 1>-         0.00%
  9  1     3    1  |1 1>-        33.33%


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

              2       6        5.47       700     1000      520     2100     2140     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.09      2.26      1.83      0.32      0.02      0.45
 REAL TIME  *         8.34 SEC
 DISK USED  *        35.97 MB (local),      671.80 MB (total)
 SF USED    *        60.16 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -399.002642825118

              CI           MULTI         RHF-SCF
   -398.97895782   -398.58304112   -398.58540353
 **********************************************************************************************************************************
 Molpro calculation terminated
