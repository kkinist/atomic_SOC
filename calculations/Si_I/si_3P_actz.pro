
 Working directory              : /wrk/irikura/molpro.ODdl1YaJDk/
 Global scratch directory       : /wrk/irikura/molpro.ODdl1YaJDk/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ODdl1YaJDk/

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
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=2;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.15 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Si SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 23-Feb-24          TIME: 16:01:22  
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

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC
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
 CPU TIMES  *         0.63      0.41
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
   5     -289.45517477      -0.00003265     0.13D-03     0.85D-03     4     0       0.00      0.01    diag2
   6     -289.45517525      -0.00000047     0.19D-04     0.16D-03     5     0       0.00      0.01    diag2
   7     -289.45517525      -0.00000000     0.18D-05     0.10D-04     6     0       0.00      0.01    diag2
   8     -289.45517525      -0.00000000     0.29D-06     0.18D-05     7     0       0.00      0.01    fixocc
   9     -289.45517525      -0.00000000     0.25D-07     0.26D-06     0     0       0.01      0.02    diag

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
 CPU TIMES  *         0.66      0.02      0.41
 REAL TIME  *         2.19 SEC
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

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.306D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.209D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.140D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 3 5 1   6 2 4 3 5 5 4 3 2 6   1 5 4 3 2 6 1 5 4 3   6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.270D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.185D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.122D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.999D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.165D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.310D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 3 2 1 3   2 1 7 910 4 8 5 6 7  10 9 8 4 6 5 1 3 2 7  10 9 8 4 6 5 1 3 2 1
                                        3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  317  ( 11 closed/active, 168 closed/virtual, 0 active/active, 138 active/virtual )
 Total number of variables:    335
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6    5    0   -289.44539512    -289.46531270   -0.01991758    0.06493818 0.00001661 0.00000000  0.35E+00      0.13
   2    6    5    0   -289.46518014    -289.46520256   -0.00002242    0.00657910 0.00000021 0.00000000  0.75E-02      0.31
   3    4    4    0   -289.46520259    -289.46520259   -0.00000000    0.00000913 0.00000000 0.00000000  0.11E-04      0.42

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.16E-07)
                       Final energy:   -289.46520259
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -289.465202585999
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25616866
 One electron energy                          -401.40926402
 Two electron energy                           111.94406143
 Virial ratio                                    1.98707285
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -289.465202585995
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25616866
 One electron energy                          -401.40926402
 Two electron energy                           111.94406143
 Virial ratio                                    1.98707285
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -289.465202585994
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25616866
 One electron energy                          -401.40926402
 Two electron energy                           111.94406143
 Virial ratio                                    1.98707285
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     0.999999959121
 !MCSCF expec                      <3.1|LXLX|3.1>     0.999999974107
 
 !MCSCF expec                      <1.1|LYLY|1.1>     1.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     0.999997919642
 !MCSCF expec                      <3.1|LYLY|3.1>     0.000001111708
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     1.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     0.000002121237
 !MCSCF expec                      <3.1|LZLZ|3.1>     0.999998914185
 
 !MCSCF expec                      <1.1|L**2|1.1>     2.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     2.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     2.000000000000
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 3 6 4 2 1   3 5 6 4 2 5 3 6 4 2   1 5 3 6 4 2 1 5 3 6   4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 2 1 3 2   1 3 9 710 8 5 6 4 9   7 810 5 6 4 2 1 3 9   710 8 5 6 4 2 1 3 2
                                        1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -68.97356     1  1  s    0.99951
    2.1     2.00000    -6.17969     1  2  s    0.99979
    3.1     1.96626    -0.53507     1  3  s    1.01233
    1.2     2.00000    -4.25212     1  1  py   0.99999
    2.2     2.00000    -4.25212     1  1  px   0.99999
    3.2     2.00000    -4.25212     1  1  pz   0.99999
    4.2     0.67791    -0.06484     1  2  pz   1.03080
    5.2     0.67791    -0.06484     1  2  px   1.03080
    6.2     0.67791    -0.06484     1  2  py   1.03080
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 2 a0a          0.99152813     -0.00000000     -0.00000000
 2 aa0         -0.00000000     -0.00143013      0.99152710
 2 0aa          0.00000000      0.99152710      0.00143013
 0 a2a         -0.12989211      0.00000000     -0.00000000
 0 2aa          0.00000000     -0.12989198     -0.00018735
 0 aa2         -0.00000000      0.00018735     -0.12989198
 
 Energy:     -289.46520259   -289.46520259   -289.46520259
 


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
 CPU TIMES  *         1.05      0.39      0.02      0.41
 REAL TIME  *         2.73 SEC
 DISK USED  *        31.13 MB (local),      424.59 MB (total)
 SF USED    *         4.20 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -289.4652026   2.0
    -289.4652026   2.0
    -289.4652026   2.0
                                                  


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

 Integral transformation finished. Total CPU:   0.01 sec, npass=  1  Memory used:   0.19 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -289.46520259
     2      -289.46520259
     3      -289.46520259

 Number of blocks in overlap matrix:   117   Smallest eigenvalue:  0.17D-01
 Number of N-2 electron functions:     162
 Number of N-1 electron functions:     690

 Number of internal configurations:                  132
 Number of singly external configurations:         22788
 Number of doubly external configurations:        176994
 Total number of contracted configurations:       199914
 Total number of uncontracted configurations:     749106

 Diagonal Coupling coefficients finished.               Storage:    238061 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    259818 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.46520259     0.00000000    -0.33661220  0.41D-01  0.28D-01     0.04
    1     2     2     1.00000000     0.00000000  -289.46520259     0.00000000    -0.33642492  0.41D-01  0.28D-01     0.04
    1     3     3     1.00000000     0.00000000  -289.46520259     0.00000000    -0.33684090  0.41D-01  0.28D-01     0.04
    2     1     1     1.05791711    -0.30952011  -289.77472270    -0.30952011    -0.00370486  0.11D-02  0.52D-03     0.38
    2     2     2     1.05814064    -0.30947288  -289.77467547    -0.30947288    -0.00376039  0.11D-02  0.53D-03     0.38
    2     3     3     1.05844480    -0.30941385  -289.77461644    -0.30941385    -0.00382658  0.12D-02  0.53D-03     0.38
    3     1     1     1.05093319    -0.31317534  -289.77837792    -0.00365523    -0.00008739  0.11D-04  0.20D-04     0.72
    3     2     2     1.05095404    -0.31317390  -289.77837648    -0.00370102    -0.00008849  0.12D-04  0.21D-04     0.72
    3     3     3     1.05098167    -0.31317231  -289.77837489    -0.00375845    -0.00008970  0.12D-04  0.21D-04     0.72
    4     1     1     1.05141509    -0.31327564  -289.77847822    -0.00010030    -0.00000463  0.51D-06  0.15D-05     1.05
    4     2     2     1.05141568    -0.31327549  -289.77847808    -0.00010160    -0.00000472  0.52D-06  0.16D-05     1.05
    4     3     3     1.05141676    -0.31327536  -289.77847795    -0.00010305    -0.00000480  0.53D-06  0.16D-05     1.05
    5     1     1     1.05161982    -0.31328163  -289.77848421    -0.00000599    -0.00000038  0.57D-07  0.95D-07     1.42
    5     2     2     1.05161965    -0.31328162  -289.77848421    -0.00000613    -0.00000039  0.58D-07  0.96D-07     1.42
    5     3     3     1.05161914    -0.31328161  -289.77848420    -0.00000625    -0.00000040  0.58D-07  0.98D-07     1.42
    6     1     1     1.05157741    -0.31328210  -289.77848468    -0.00000047    -0.00000002  0.28D-08  0.47D-08     1.75
    6     2     2     1.05157705    -0.31328210  -289.77848468    -0.00000048    -0.00000002  0.28D-08  0.48D-08     1.75
    6     3     3     1.05157660    -0.31328210  -289.77848468    -0.00000048    -0.00000002  0.28D-08  0.48D-08     1.75


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.7%
 S   0.0%   2.9%
 P   0.0%  19.4%  21.1%

 Initialization:   1.7%
 Other:           53.1%

 Total CPU:        1.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//0          -0.0000000  -0.0000000   0.9681585
 22222/0/          -0.0000000   0.9681583   0.0000000
 222220//           0.9681582   0.0000000   0.0000000
 20222//2           0.0000000   0.0000000  -0.1165420
 20222/2/          -0.0000000  -0.1165416  -0.0000000
 202222//          -0.1165411   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.975094   -0.000000
 2           0.975094    0.000000   -0.000000
 3           0.000000    0.000000    0.975094

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.975094   -0.000000    0.000000
 2          -0.000000    0.975094    0.000000
 3           0.000000    0.000000    0.975094


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97509384 (fixed)   0.97514722 (relaxed)   0.97509384 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015181   -0.00024498   -0.25661882
 Singles      0.02622541   -0.04343413   -0.04911070
 Pairs        0.02535983    0.00000000   -0.00755258
 Total        1.05173704   -0.04367911   -0.31328210
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46520259
 Nuclear energy                         0.00000000
 Kinetic energy                       293.46737033
 One electron energy                 -401.18745955
 Two electron energy                  111.40897486
 Virial quotient                       -0.98743000
 Correlation energy                    -0.31328210
 !MRCI STATE 1.1 Energy              -289.778484682814

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79469297 (Davidson, fixed reference)
 Cluster corrected energies          -289.79465691 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79469297 (Davidson, rotated reference)

 Cluster corrected energies          -289.79186062 (Pople, fixed reference)
 Cluster corrected energies          -289.79182994 (Pople, relaxed reference)
 Cluster corrected energies          -289.79186062 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97509401 (fixed)   0.97514738 (relaxed)   0.97509401 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015180   -0.00024498   -0.25661906
 Singles      0.02622504   -0.04343398   -0.04911057
 Pairs        0.02535984    0.00000000   -0.00755247
 Total        1.05173668   -0.04367896   -0.31328210
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46520259
 Nuclear energy                         0.00000000
 Kinetic energy                       293.46736979
 One electron energy                 -401.18746113
 Two electron energy                  111.40897645
 Virial quotient                       -0.98743000
 Correlation energy                    -0.31328210
 !MRCI STATE 2.1 Energy              -289.778484682752

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79469286 (Davidson, fixed reference)
 Cluster corrected energies          -289.79465679 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79469286 (Davidson, rotated reference)

 Cluster corrected energies          -289.79186053 (Pople, fixed reference)
 Cluster corrected energies          -289.79182984 (Pople, relaxed reference)
 Cluster corrected energies          -289.79186053 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97509423 (fixed)   0.97514759 (relaxed)   0.97509423 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015179   -0.00024498   -0.00027814
 Singles      0.02622451   -0.04343373   -0.04911039
 Pairs        0.02535992   -0.26960339   -0.26389357
 Total        1.05173622   -0.31328210   -0.31328210
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46520259
 Nuclear energy                         0.00000000
 Kinetic energy                       293.46737034
 One electron energy                 -401.18746252
 Two electron energy                  111.40897784
 Virial quotient                       -0.98743000
 Correlation energy                    -0.31328210
 !MRCI STATE 3.1 Energy              -289.778484682632

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79469271 (Davidson, fixed reference)
 Cluster corrected energies          -289.79465665 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79469271 (Davidson, rotated reference)

 Cluster corrected energies          -289.79186040 (Pople, fixed reference)
 Cluster corrected energies          -289.79182972 (Pople, relaxed reference)
 Cluster corrected energies          -289.79186040 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.49       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.93      1.87      0.39      0.02      0.41
 REAL TIME  *         5.14 SEC
 DISK USED  *        35.95 MB (local),      482.42 MB (total)
 SF USED    *        50.42 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -289.79469297  AU                              
 SETTING HLSDIAG(2)     =      -289.79469286  AU                              
 SETTING HLSDIAG(3)     =      -289.79469271  AU                              


         HLSDIAG
    -289.7946930
    -289.7946929
    -289.7946927
                                                  


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

        2402978. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.68 sec, REAL time:      0.69 sec


 SORTLS1 read     2507997. and wrote     2507997. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.04 sec
 SORTLS2 read     2507997. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    72.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    72.1 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -289.778485   -289.778485   -289.778485
 Replaced energies:   -289.794693   -289.794693   -289.794693



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -289.79469297

 Wigner-Eckart theorem used for  8 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      51.78       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      51.78       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.03       0.00     -51.78       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      73.23       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.06      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -73.23       0.00     -51.78      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00     -51.78      -0.00       0.00       0.00       0.00      -0.00      51.78       0.00
                            0.00      -0.00      51.78       0.00       0.00       0.00      -0.00      -0.00      51.78

    5   2.1  1.0  0.0      51.78       0.00       0.00       0.00       0.03       0.00     -51.78       0.00      -0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    6   3.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.06      -0.00       0.00       0.00
                          -51.78      -0.00      -0.00      -0.00      -0.00       0.00     -51.78      -0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00     -51.78      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      51.78       0.00      -0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      51.78       0.00       0.00       0.00       0.03       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00     -73.23

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.06
                           -0.00      -0.00      -0.00     -51.78      -0.00      -0.00      -0.00      73.23      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  9)

    The diagonal matrixelements are shifted by   -289.79469297 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      73.229      -0.000       0.000

    2    1  |1 1>+              0.000       0.025       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.057      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -73.229      -0.000       0.000       0.000     -73.229

    1    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000     -73.229
                                0.000      -0.000      73.229       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.025       0.000      73.229       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.057       0.000      -0.000
                              -73.229      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      73.229       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000     -73.229       0.000      -0.000       0.000       0.025
                               -0.000       0.000      73.229      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000     -73.229       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9

    1    1  |1 1>+              0.000
                               -0.000

    2    1  |1 1>+              0.000
                               73.229

    3    1  |1 1>+              0.000
                                0.000

    1    1  |1 0>              -0.000
                               -0.000

    2    1  |1 0>               0.000
                               -0.000

    3    1  |1 0>               0.000
                               -0.000

    1    1  |1 1>-              0.000
                                0.000

    2    1  |1 1>-              0.000
                                0.000

    3    1  |1 1>-              0.057
                                0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -289.79536016    -0.00066719     -146.43      0.00000000        0.00      0.0000
    2  -289.79502657    -0.00033360      -73.22      0.00033359       73.21      0.0091
    3  -289.79502650    -0.00033353      -73.20      0.00033366       73.23      0.0091
    4  -289.79502644    -0.00033347      -73.19      0.00033372       73.24      0.0091
    5  -289.79435927     0.00033371       73.24      0.00100089      219.67      0.0272
    6  -289.79435926     0.00033371       73.24      0.00100090      219.67      0.0272
    7  -289.79435919     0.00033378       73.26      0.00100097      219.69      0.0272
    8  -289.79435913     0.00033384       73.27      0.00100103      219.70      0.0272
    9  -289.79435912     0.00033386       73.27      0.00100104      219.70      0.0272

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000 -0.00000000  0.70724342  0.00000000 -0.00000000  0.00000000 -0.70697012  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.70718239 -0.00000000 -0.00000000 -0.00000000 -0.70703116
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.57727344 -0.00000000  0.00000000  0.00000000  0.18728003 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.57742179  0.00000000 -0.00000000  0.00000000  0.78184455 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00055029  0.00000000  0.00000000  0.00000000 -0.00053649 -0.00000000 -0.00000000
                           0.00000000 -0.70704553 -0.00000000 -0.00000000  0.00000000  0.70716761  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.70697012  0.00000000  0.00000000 -0.00000000  0.70724342 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00055038 -0.00000000 -0.00000000  0.00000000 -0.00053640 -0.00000000 -0.00000000
                          -0.00000000  0.70716760  0.00000000  0.00000000  0.00000000  0.70704554  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.57735557  0.00000000  0.00000000 -0.00000000 -0.59468083  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.70703116  0.00000000  0.00000000  0.00000000  0.70718239

 State Sym Spin     / Nr.      9

   1    1  |1 1>+         -0.00000000
                           0.00000000

   2    1  |1 1>+          0.00000000
                          -0.00000000

   3    1  |1 1>+          0.79478397
                           0.00000000

   1    1  |1 0>          -0.00000000
                           0.23516628

   2    1  |1 0>          -0.00000000
                          -0.00000000

   3    1  |1 0>           0.00000000
                           0.00000000

   1    1  |1 1>-         -0.00000000
                          -0.00000000

   2    1  |1 1>-         -0.00000000
                           0.55947767

   3    1  |1 1>-         -0.00000000
                          -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -289.79536016     -0.00066719     -146.43      0.00000000        0.00      0.0000
     2   1   -289.79502657     -0.00033360      -73.22      0.00033359       73.21      0.0091
     3   1   -289.79502650     -0.00033353      -73.20      0.00033366       73.23      0.0091
     4   1   -289.79502644     -0.00033347      -73.19      0.00033372       73.24      0.0091
     5   1   -289.79435927      0.00033371       73.24      0.00100089      219.67      0.0272
     6   1   -289.79435926      0.00033371       73.24      0.00100090      219.67      0.0272
     7   1   -289.79435919      0.00033378       73.26      0.00100097      219.69      0.0272
     8   1   -289.79435913      0.00033384       73.27      0.00100103      219.70      0.0272
     9   1   -289.79435912      0.00033386       73.27      0.00100104      219.70      0.0272

 E0 =   -289.79469297 is the energy of the lowest zeroth-order state
 E1 =   -289.79536016 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000 -0.00000000  0.70724342  0.00000000 -0.00000000  0.00000000 -0.70697012  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.70718239 -0.00000000 -0.00000000 -0.00000000 -0.70703116
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.57727344 -0.00000000  0.00000000  0.00000000  0.18728003 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.57742179  0.00000000 -0.00000000  0.00000000  0.78184455 -0.00000000 -0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00055029  0.00000000  0.00000000  0.00000000 -0.00053649 -0.00000000 -0.00000000
                                0.00000000 -0.70704553 -0.00000000 -0.00000000  0.00000000  0.70716761  0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.70697012  0.00000000  0.00000000 -0.00000000  0.70724342 -0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00055038 -0.00000000 -0.00000000  0.00000000 -0.00053640 -0.00000000 -0.00000000
                               -0.00000000  0.70716760  0.00000000  0.00000000  0.00000000  0.70704554  0.00000000 -0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.57735557  0.00000000  0.00000000 -0.00000000 -0.59468083  0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.70703116  0.00000000  0.00000000  0.00000000  0.70718239


   Total
 Nr Sym  State Sym Spin / Nr.        9

  1  1     1    1  |1 1>+      -0.00000000
                                0.00000000

  2  1     2    1  |1 1>+       0.00000000
                               -0.00000000

  3  1     3    1  |1 1>+       0.79478397
                                0.00000000

  4  1     1    1  |1 0>       -0.00000000
                                0.23516628

  5  1     2    1  |1 0>       -0.00000000
                               -0.00000000

  6  1     3    1  |1 0>        0.00000000
                                0.00000000

  7  1     1    1  |1 1>-      -0.00000000
                               -0.00000000

  8  1     2    1  |1 1>-      -0.00000000
                                0.55947767

  9  1     3    1  |1 1>-      -0.00000000
                               -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   50.02%    0.00%    0.00%    0.00%   49.98%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   50.01%    0.00%    0.00%    0.00%   49.99%
  3  1     3    1  |1 1>+        33.32%    0.00%    0.00%    0.00%    3.51%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         33.34%    0.00%    0.00%    0.00%   61.13%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%   49.99%    0.00%    0.00%    0.00%   50.01%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   49.98%    0.00%    0.00%    0.00%   50.02%    0.00%
  7  1     1    1  |1 1>-         0.00%   50.01%    0.00%    0.00%    0.00%   49.99%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   35.36%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   49.99%    0.00%    0.00%    0.00%   50.01%

   Total
 Nr Sym  State Sym Spin / Nr.      9

  1  1     1    1  |1 1>+         0.00%
  2  1     2    1  |1 1>+         0.00%
  3  1     3    1  |1 1>+        63.17%
  4  1     1    1  |1 0>          5.53%
  5  1     2    1  |1 0>          0.00%
  6  1     3    1  |1 0>          0.00%
  7  1     1    1  |1 1>-         0.00%
  8  1     2    1  |1 1>-        31.30%
  9  1     3    1  |1 1>-         0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.49       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.24      2.30      1.87      0.39      0.02      0.41
 REAL TIME  *         8.46 SEC
 DISK USED  *        35.98 MB (local),      671.91 MB (total)
 SF USED    *        59.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -289.794359117212

              CI           MULTI         RHF-SCF
   -289.77848468   -289.46520259   -289.45517525
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
