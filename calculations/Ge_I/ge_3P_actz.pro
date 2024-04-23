
 Working directory              : /wrk/irikura/molpro.6h2tqntKcY/
 Global scratch directory       : /wrk/irikura/molpro.6h2tqntKcY/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.6h2tqntKcY/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Ge SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ge};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! spherical anion (4S) orbitals
 {rhf;wf,nelec=33,sym=2,spin=3}
 
 NTRIP=3
 NSING=0
 
 {multi
     wf,nelec=32,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! free KL shells
 core,2,3
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 16:43:36  
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

 Library entry GE     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GE     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GE     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GE     F aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GE     G aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  GE     32.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   32
 NUMBER OF PRIMITIVE AOS:         198
 NUMBER OF SYMMETRY AOS:          168
 NUMBER OF CONTRACTIONS:          100   (   48Ag  +   52Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     15.991 MB (compressed) written to integral file ( 15.6%)

     Node minimum: 0.786 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     539064.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     539064      RECORD LENGTH: 524288

 Memory used in sort:       1.10 MW

 SORT1 READ    12736444. AND WROTE      107437. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.07 SEC
 SORT2 READ     1292714. AND WROTE     6503791. INTEGRALS IN     48 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      538852.  Node maximum:      543546. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.180E-03 0.254E-02 0.170E-01 0.535E-01 0.535E-01 0.535E-01 0.535E-01 0.535E-01
         2 0.390E-02 0.390E-02 0.390E-02 0.183E-01 0.183E-01 0.183E-01 0.759E-01 0.759E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.01      0.79
 REAL TIME  *         1.57 SEC
 DISK USED  *        29.42 MB (local),      408.95 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   9   6

 NELEC=   33   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2097.09248454   -2097.09248454     0.00D+00     0.15D+00     0     0       0.00      0.01    start
   2    -2097.09533107      -0.00284652     0.12D-02     0.56D-02     1     0       0.00      0.01    diag2
   3    -2097.09562311      -0.00029204     0.73D-03     0.14D-02     2     0       0.01      0.02    diag2
   4    -2097.09573009      -0.00010698     0.34D-03     0.93D-03     3     0       0.00      0.02    diag2
   5    -2097.09574569      -0.00001560     0.96D-04     0.30D-03     4     0       0.01      0.03    diag2
   6    -2097.09574676      -0.00000107     0.14D-04     0.68D-04     5     0       0.00      0.03    diag2
   7    -2097.09574690      -0.00000014     0.42D-05     0.19D-04     6     0       0.01      0.04    diag2
   8    -2097.09574691      -0.00000002     0.11D-05     0.13D-04     7     0       0.00      0.04    fixocc
   9    -2097.09574691      -0.00000000     0.17D-06     0.26D-05     8     0       0.01      0.05    diag2
  10    -2097.09574691      -0.00000000     0.14D-07     0.96D-07     0     0       0.00      0.05    diag/orth

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2097.095746912983
  RHF One-electron energy           -2930.714707295743
  RHF Two-electron energy             833.618960382759
  RHF Kinetic energy                 2226.566287188656
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.941851926430

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -410.56824     1  1  s    0.99373
    2.1     2.00000   -53.17910     1  2  s    1.03257
    3.1     2.00000    -7.15128     1  3  s    0.97036
    4.1     2.00000    -1.34711     1  1  d0   0.60476    1  1  d2+  0.79626
    5.1     2.00000    -1.34711     1  1  d1-  0.99988
    6.1     2.00000    -1.34711     1  1  d2-  0.99988
    7.1     2.00000    -1.34711     1  1  d1+  0.99984
    8.1     2.00000    -1.34711     1  1  d0   0.79623    1  1  d2+ -0.60473
    9.1     2.00000    -0.33256     1  4  s    0.90641
    1.2     2.00000   -46.27158     1  1  py   0.99994
    2.2     2.00000   -46.27158     1  1  pz   0.99994
    3.2     2.00000   -46.27158     1  1  px   0.99994
    4.2     2.00000    -4.95671     1  2  py   0.99993
    5.2     2.00000    -4.95671     1  2  pz   0.99993
    6.2     2.00000    -4.95671     1  2  px   0.99993
    7.2     1.00000    -0.05786     1  3  px   0.80493
    8.2     1.00000    -0.05786     1  3  pz   0.80493
    9.2     1.00000    -0.05786     1  3  py   0.80493


 HOMO      9.2    -0.057860 =      -1.5744eV
 LUMO     10.1     0.185382 =       5.0445eV
 LUMO-HOMO         0.243242 =       6.6189eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.54       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.08      0.07      0.79
 REAL TIME  *         2.08 SEC
 DISK USED  *        30.37 MB (local),      420.33 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =      0.0000000D+00                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      82 (   39   43)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.432D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.134D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.121D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.129D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.435D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 6 3 4 2 1 1   2 6 3 4 5 1 2 4 3 6   5 2 4 3 6 5 1 4 2 3   6 5 912 81510141311
                                        7 1 5 6 3 2 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.647D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.123D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.105D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.125D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.689D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.689D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 3 2 1   3 2 1 3 2 9 7 4 5 6   810 4 6 5 7 8 910 2   3 1 4 6 9 8 710 5 2
                                        3 110 5 8 7 9 6 4 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  764  ( 26 closed/active, 570 closed/virtual, 0 active/active, 168 active/virtual )
 Total number of variables:    782
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   17   13    0  -2097.04369526   -2097.07345833   -0.02976306    0.13192082 0.00045845 0.00000000  0.44E+00      0.37
   2    8    7    0  -2097.06350561   -2097.07083331   -0.00732770    0.38407450 0.00003187 0.00000000  0.47E-01      0.70
   3    6    5    0  -2097.07089293   -2097.07089443   -0.00000150    0.00342664 0.00000008 0.00000000  0.14E-02      1.00
   4    3    3    0  -2097.07089443   -2097.07089443    0.00000000    0.00000081 0.00000000 0.00000000  0.64E-06      1.24

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.70E-10)
                       Final energy:  -2097.07089443
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -2097.070894426340
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.54794587
 One electron energy                         -2922.80054860
 Two electron energy                           825.72965417
 Virial ratio                                    1.94184852
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -2097.070894426002
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.54794587
 One electron energy                         -2922.80054859
 Two electron energy                           825.72965417
 Virial ratio                                    1.94184852
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                     -2097.070894425841
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.54794587
 One electron energy                         -2922.80054859
 Two electron energy                           825.72965416
 Virial ratio                                    1.94184852
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.999999990046
 !MCSCF expec                      <2.1|LXLX|2.1>     0.999999999445
 !MCSCF expec                      <3.1|LXLX|3.1>     0.000000011147
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.000000154043
 !MCSCF expec                      <2.1|LYLY|2.1>     0.999999855925
 !MCSCF expec                      <3.1|LYLY|3.1>     0.999999990049
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.999999855911
 !MCSCF expec                      <2.1|LZLZ|2.1>     0.000000144629
 !MCSCF expec                      <3.1|LZLZ|3.1>     0.999999998804
 
 !MCSCF expec                      <1.1|L**2|1.1>     2.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     2.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 3 5 2 4 1 1   2 4 6 5 3 1 2 4 3 5   6 4 2 5 3 6 1 4 2 3   5 6 912 8 715141013
                                       11 1 6 5 3 2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 2 3 1   3 2 1 2 3 4 7 9 510   8 6 4 6 5 9 7 810 2   3 1 4 6 810 7 9 5 2
                                        3 1 510 8 7 9 6 4 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -410.81735     1  1  s    0.99373
    2.1     2.00000   -53.42837     1  2  s    1.03257
    3.1     2.00000    -7.40099     1  3  s    0.97043
    4.1     2.00000    -1.59641     1  1  d1-  0.99991
    5.1     2.00000    -1.59641     1  1  d2-  0.99991
    6.1     2.00000    -1.59641     1  1  d2+  0.99991
    7.1     2.00000    -1.59641     1  1  d0   0.99991
    8.1     2.00000    -1.59641     1  1  d1+  0.99991
    9.1     1.97397    -0.56076     1  4  s    1.00783
    1.2     2.00000   -46.52055     1  1  py   0.99994
    2.2     2.00000   -46.52055     1  1  pz   0.99994
    3.2     2.00000   -46.52055     1  1  px   0.99994
    4.2     2.00000    -5.20579     1  2  py   0.99980
    5.2     2.00000    -5.20579     1  2  pz   0.99980
    6.2     2.00000    -5.20579     1  2  px   0.99980
    7.2     0.67534    -0.06248     1  3  px   1.02685
    8.2     0.67534    -0.06248     1  3  py   1.02685
    9.2     0.67534    -0.06248     1  3  pz   1.02685
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 2 0aa         -0.00009912     -0.00002339      0.99347032
 2 aa0          0.00037711      0.99347026      0.00002343
 2 a0a          0.99347025     -0.00037711      0.00009911
 0 2aa          0.00001138      0.00000269     -0.11409077
 0 aa2         -0.00004331     -0.11409076     -0.00000269
 0 a2a         -0.11409076      0.00004331     -0.00001138
 
 Energy:    -2097.07089443  -2097.07089443  -2097.07089443
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.82       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.18      1.10      0.07      0.79
 REAL TIME  *         3.53 SEC
 DISK USED  *        40.00 MB (local),      535.89 MB (total)
 SF USED    *        24.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2097.070894   2.0
    -2097.070894   2.0
    -2097.070894   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 32
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      571 conf     1077 CSFs
 N-1 el internal:      772 conf     2940 CSFs
 N-2 el internal:      397 conf     2695 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.07 sec, npass=  1  Memory used:   0.64 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2097.07089443
     2     -2097.07089443
     3     -2097.07089443

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        120612
 Number of doubly external configurations:        802686
 Total number of contracted configurations:       923835
 Total number of uncontracted configurations:    4632525

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    451690 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2097.07089443     0.00000000    -0.89200299  0.36D-01  0.71D-01     0.18
    1     2     2     1.00000000     0.00000000 -2097.07089443     0.00000000    -0.89224764  0.36D-01  0.71D-01     0.18
    1     3     3     1.00000000     0.00000000 -2097.07089443    -0.00000000    -0.89183352  0.35D-01  0.71D-01     0.18
    2     1     1     1.06697926    -0.70828171 -2097.77917613    -0.70828171    -0.01975800  0.25D-02  0.11D-02     2.54
    2     2     2     1.06714682    -0.70819277 -2097.77908720    -0.70819277    -0.01984196  0.26D-02  0.11D-02     2.54
    2     3     3     1.06739066    -0.70806510 -2097.77895952    -0.70806510    -0.01996069  0.26D-02  0.11D-02     2.54
    3     1     1     1.06049250    -0.72628700 -2097.79718143    -0.01800530    -0.00058519  0.90D-04  0.42D-04     4.78
    3     2     2     1.06049117    -0.72628540 -2097.79717983    -0.01809263    -0.00058681  0.91D-04  0.42D-04     4.78
    3     3     3     1.06048958    -0.72628323 -2097.79717765    -0.01821813    -0.00058911  0.91D-04  0.42D-04     4.78
    4     1     1     1.05970113    -0.72683564 -2097.79773007    -0.00054864    -0.00002885  0.47D-05  0.21D-05     7.05
    4     2     2     1.05969694    -0.72683555 -2097.79772998    -0.00055015    -0.00002896  0.47D-05  0.21D-05     7.05
    4     3     3     1.05969076    -0.72683543 -2097.79772985    -0.00055220    -0.00002910  0.47D-05  0.21D-05     7.05
    5     1     1     1.05980629    -0.72686342 -2097.79775785    -0.00002778    -0.00000118  0.12D-06  0.12D-06     9.30
    5     2     2     1.05980591    -0.72686342 -2097.79775785    -0.00002787    -0.00000118  0.12D-06  0.12D-06     9.30
    5     3     3     1.05980539    -0.72686342 -2097.79775784    -0.00002799    -0.00000118  0.12D-06  0.12D-06     9.30
    6     1     1     1.05983891    -0.72686462 -2097.79775905    -0.00000120    -0.00000005  0.35D-08  0.73D-08    11.55
    6     2     2     1.05983904    -0.72686462 -2097.79775905    -0.00000120    -0.00000005  0.35D-08  0.72D-08    11.55
    6     3     3     1.05983879    -0.72686462 -2097.79775905    -0.00000121    -0.00000005  0.35D-08  0.73D-08    11.55
    7     1     1     1.05983890    -0.72686468 -2097.79775910    -0.00000005    -0.00000000  0.43D-09  0.41D-09    13.82
    7     2     2     1.05983887    -0.72686468 -2097.79775910    -0.00000005    -0.00000000  0.43D-09  0.42D-09    13.82
    7     3     3     1.05983893    -0.72686468 -2097.79775910    -0.00000005    -0.00000000  0.43D-09  0.41D-09    13.82


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.7%   4.2%
 P   0.4%  27.4%  24.9%

 Initialization:   1.1%
 Other:           40.9%

 Total CPU:       13.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0           0.0000000   0.9657800  -0.0000000
 2222222222/0/           0.9657800  -0.0000000  -0.0000000
 22222222220//           0.0000000   0.0000000   0.9657800
 2222220222//2          -0.0000000  -0.1026964   0.0000000
 2222220222/2/          -0.1026964   0.0000000   0.0000000
 22222202222//          -0.0000000  -0.0000000  -0.1026964

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971191    0.000000    0.000000
 2          -0.000000    0.971191    0.000000
 3          -0.000000   -0.000000    0.971190

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971191   -0.000000   -0.000000
 2          -0.000000    0.971191    0.000000
 3          -0.000000    0.000000    0.971190


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97119051 (fixed)   0.97122479 (relaxed)   0.97119051 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00034841   -0.00066911   -0.64404215
 Singles      0.01436015   -0.04429917   -0.05163039
 Pairs        0.04549961   -0.00000000   -0.03119213
 Total        1.06020816   -0.04496829   -0.72686468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07089443
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.81050574
 One electron energy                -2921.40731477
 Two electron energy                  823.60955567
 Virial quotient                       -0.94206389
 Correlation energy                    -0.72686468
 !MRCI STATE 1.1 Energy             -2097.797759102183

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.84152228 (Davidson, fixed reference)
 Cluster corrected energies         -2097.84146788 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.84152228 (Davidson, rotated reference)

 Cluster corrected energies         -2097.83912421 (Pople, fixed reference)
 Cluster corrected energies         -2097.83907022 (Pople, relaxed reference)
 Cluster corrected energies         -2097.83912421 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97119052 (fixed)   0.97122481 (relaxed)   0.97119052 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00034841   -0.00066911   -0.64404220
 Singles      0.01436011   -0.04429914   -0.05163037
 Pairs        0.04549960   -0.00000000   -0.03119210
 Total        1.06020812   -0.04496826   -0.72686468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07089443
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.81050348
 One electron energy                -2921.40731267
 Two electron energy                  823.60955356
 Virial quotient                       -0.94206389
 Correlation energy                    -0.72686468
 !MRCI STATE 2.1 Energy             -2097.797759101874

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.84152226 (Davidson, fixed reference)
 Cluster corrected energies         -2097.84146785 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.84152226 (Davidson, rotated reference)

 Cluster corrected energies         -2097.83912418 (Pople, fixed reference)
 Cluster corrected energies         -2097.83907020 (Pople, relaxed reference)
 Cluster corrected energies         -2097.83912418 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97119050 (fixed)   0.97122478 (relaxed)   0.97119050 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00034841   -0.00066911   -0.00086998
 Singles      0.01436017   -0.04429920   -0.05163041
 Pairs        0.04549961   -0.68189637   -0.67436429
 Total        1.06020819   -0.72686468   -0.72686468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07089443
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.81050705
 One electron energy                -2921.40731590
 Two electron energy                  823.60955680
 Virial quotient                       -0.94206389
 Correlation energy                    -0.72686468
 !MRCI STATE 3.1 Energy             -2097.797759101766

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.84152231 (Davidson, fixed reference)
 Cluster corrected energies         -2097.84146790 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.84152231 (Davidson, rotated reference)

 Cluster corrected energies         -2097.83912423 (Pople, fixed reference)
 Cluster corrected energies         -2097.83907024 (Pople, relaxed reference)
 Cluster corrected energies         -2097.83912423 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       22.41       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        16.48     14.29      1.10      0.07      0.79
 REAL TIME  *        19.88 SEC
 DISK USED  *        61.60 MB (local),      795.01 MB (total)
 SF USED    *       234.65 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2097.84152228  AU                              
 SETTING HLSDIAG(2)     =     -2097.84152226  AU                              
 SETTING HLSDIAG(3)     =     -2097.84152231  AU                              


         HLSDIAG
    -2097.841522
    -2097.841522
    -2097.841522
                                                  


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

 Time for Seward_LS:       4.30 sec

        6950500. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1914 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.30 sec, REAL time:      4.39 sec


 SORTLS1 read     7822434. and wrote     7822434. SO integrals in    36 records. CPU time:      0.06 sec, REAL time:      0.12 sec
 SORTLS2 read     7822434. and wrote    38256242. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.06 sec

 FILE SIZES: FILE 1:   166.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   166.5 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:  -2097.797759  -2097.797759  -2097.797759
 Replaced energies:  -2097.841522  -2097.841522  -2097.841522



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2097.84152231

 Wigner-Eckart theorem used for  8 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00    -461.11       0.00     326.06      -0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00      -0.00       0.00    -326.06       0.00       0.00       0.00
                            0.00      -0.00       0.00    -326.06      -0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00     326.06      -0.00       0.00       0.00       0.00
                          461.11      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00     326.06      -0.00       0.00       0.00       0.00       0.00     326.06      -0.00

    5   2.1  1.0  0.0       0.00       0.00     326.06       0.00       0.01       0.00      -0.00       0.00    -326.06
                         -326.06       0.00       0.00      -0.00       0.00       0.00    -326.06      -0.00       0.00

    6   3.1  1.0  0.0      -0.00    -326.06      -0.00       0.00       0.00       0.00       0.00     326.06      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     326.06      -0.00      -0.00       0.00     461.11

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00     326.06       0.00       0.01       0.00
                           -0.00      -0.00      -0.00    -326.06       0.00       0.00      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00    -326.06      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00    -461.11       0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  9)

    The diagonal matrixelements are shifted by  -2097.84152231 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.005       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     461.115      -0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.010       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -461.115       0.000       0.000       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000     461.114      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.005       0.000       0.000       0.000      -0.000
                                0.000     461.115      -0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.010       0.000       0.000       0.000
                             -461.115       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000    -461.114
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.005       0.000
                                0.000      -0.000    -461.114       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000    -461.114       0.000       0.010
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     461.114       0.000       0.000       0.000
                              461.114      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.        9

    1    1  |1 1>+              0.000
                             -461.114

    2    1  |1 1>+              0.000
                                0.000

    3    1  |1 1>+              0.000
                               -0.000

    1    1  |1 0>               0.000
                                0.000

    2    1  |1 0>             461.114
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
    1 -2097.84572427    -0.00420196     -922.22      0.00000000        0.00      0.0000
    2 -2097.84362329    -0.00210098     -461.11      0.00210098      461.11      0.0572
    3 -2097.84362327    -0.00210097     -461.11      0.00210099      461.11      0.0572
    4 -2097.84362326    -0.00210096     -461.11      0.00210100      461.12      0.0572
    5 -2097.83942131     0.00210100      461.12      0.00630296     1383.34      0.1715
    6 -2097.83942130     0.00210100      461.12      0.00630296     1383.34      0.1715
    7 -2097.83942129     0.00210101      461.12      0.00630298     1383.34      0.1715
    8 -2097.83942128     0.00210103      461.12      0.00630299     1383.35      0.1715
    9 -2097.83942128     0.00210103      461.12      0.00630299     1383.35      0.1715

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.57735037  0.00000000  0.00000000 -0.00000000  0.58799576 -0.00000000  0.00000000 -0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.70710472  0.00000000 -0.00000000 -0.00000000  0.70710884
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000005

   3    1  |1 1>+          0.00000000  0.70710856  0.00000001 -0.00000000 -0.00000000 -0.70707038  0.00000001 -0.00000000
                           0.00000000  0.00001474  0.00000000  0.00000000  0.00000000  0.00699689 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005
                          -0.00000000  0.00000000 -0.00000000  0.70710884  0.00000000 -0.00000000 -0.00000000  0.70710472

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.57734818  0.00000000  0.00000000 -0.00000000  0.19661228  0.00000000 -0.00000000  0.00000001

   3    1  |1 0>           0.00000000  0.00000000 -0.00597504 -0.00000000 -0.00000000 -0.00000000 -0.00178436 -0.00000000
                           0.00000000 -0.00000001  0.70708538  0.00000000 -0.00000000 -0.00000001 -0.70710069 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00001474 -0.00000000 -0.00000000  0.00000000  0.00699693 -0.00000000  0.00000000
                           0.00000000  0.70710500  0.00000001 -0.00000000  0.00000000  0.70707394 -0.00000001  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00597498 -0.00000000  0.00000000  0.00000000  0.00178438  0.00000000
                           0.00000000 -0.00000001  0.70707769  0.00000000  0.00000000  0.00000001  0.70710837  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.57735225 -0.00000000 -0.00000000  0.00000000  0.78460474 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9

   1    1  |1 1>+         -0.56650466
                          -0.00000000

   2    1  |1 1>+         -0.00000001
                          -0.00000000

   3    1  |1 1>+          0.00000000
                          -0.00000000

   1    1  |1 0>           0.00000000
                          -0.00000001

   2    1  |1 0>          -0.00000000
                           0.79247252

   3    1  |1 0>          -0.00000000
                          -0.00000000

   1    1  |1 1>-         -0.00000000
                          -0.00000000

   2    1  |1 1>-          0.00000000
                           0.00000000

   3    1  |1 1>-         -0.00000000
                           0.22596411


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2097.84572427     -0.00420196     -922.22      0.00000000        0.00      0.0000
     2   1  -2097.84362329     -0.00210098     -461.11      0.00210098      461.11      0.0572
     3   1  -2097.84362327     -0.00210097     -461.11      0.00210099      461.11      0.0572
     4   1  -2097.84362326     -0.00210096     -461.11      0.00210100      461.12      0.0572
     5   1  -2097.83942131      0.00210100      461.12      0.00630296     1383.34      0.1715
     6   1  -2097.83942130      0.00210100      461.12      0.00630296     1383.34      0.1715
     7   1  -2097.83942129      0.00210101      461.12      0.00630298     1383.34      0.1715
     8   1  -2097.83942128      0.00210103      461.12      0.00630299     1383.35      0.1715
     9   1  -2097.83942128      0.00210103      461.12      0.00630299     1383.35      0.1715

 E0 =  -2097.84152231 is the energy of the lowest zeroth-order state
 E1 =  -2097.84572427 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.57735037  0.00000000  0.00000000 -0.00000000  0.58799576 -0.00000000  0.00000000 -0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.70710472  0.00000000 -0.00000000 -0.00000000  0.70710884
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000005

  3  1     3    1  |1 1>+       0.00000000  0.70710856  0.00000001 -0.00000000 -0.00000000 -0.70707038  0.00000001 -0.00000000
                                0.00000000  0.00001474  0.00000000  0.00000000  0.00000000  0.00699689 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005
                               -0.00000000  0.00000000 -0.00000000  0.70710884  0.00000000 -0.00000000 -0.00000000  0.70710472

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.57734818  0.00000000  0.00000000 -0.00000000  0.19661228  0.00000000 -0.00000000  0.00000001

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00597504 -0.00000000 -0.00000000 -0.00000000 -0.00178436 -0.00000000
                                0.00000000 -0.00000001  0.70708538  0.00000000 -0.00000000 -0.00000001 -0.70710069 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00001474 -0.00000000 -0.00000000  0.00000000  0.00699693 -0.00000000  0.00000000
                                0.00000000  0.70710500  0.00000001 -0.00000000  0.00000000  0.70707394 -0.00000001  0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00597498 -0.00000000  0.00000000  0.00000000  0.00178438  0.00000000
                                0.00000000 -0.00000001  0.70707769  0.00000000  0.00000000  0.00000001  0.70710837  0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.57735225 -0.00000000 -0.00000000  0.00000000  0.78460474 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9

  1  1     1    1  |1 1>+      -0.56650466
                               -0.00000000

  2  1     2    1  |1 1>+      -0.00000001
                               -0.00000000

  3  1     3    1  |1 1>+       0.00000000
                               -0.00000000

  4  1     1    1  |1 0>        0.00000000
                               -0.00000001

  5  1     2    1  |1 0>       -0.00000000
                                0.79247252

  6  1     3    1  |1 0>       -0.00000000
                               -0.00000000

  7  1     1    1  |1 1>-      -0.00000000
                               -0.00000000

  8  1     2    1  |1 1>-       0.00000000
                                0.00000000

  9  1     3    1  |1 1>-      -0.00000000
                                0.22596411



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.33%    0.00%    0.00%    0.00%   34.57%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  3  1     3    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>         33.33%    0.00%    0.00%    0.00%    3.87%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  9  1     3    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   61.56%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9

  1  1     1    1  |1 1>+        32.09%
  2  1     2    1  |1 1>+         0.00%
  3  1     3    1  |1 1>+         0.00%
  4  1     1    1  |1 0>          0.00%
  5  1     2    1  |1 0>         62.80%
  6  1     3    1  |1 0>          0.00%
  7  1     1    1  |1 1>-         0.00%
  8  1     2    1  |1 1>-         0.00%
  9  1     3    1  |1 1>-         5.11%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       22.41       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        32.80     16.31     14.29      1.10      0.07      0.79
 REAL TIME  *        38.18 SEC
 DISK USED  *        61.65 MB (local),        1.16 GB (total)
 SF USED    *       234.65 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -2097.839421277609

              CI           MULTI         RHF-SCF
  -2097.79775910  -2097.07089443  -2097.09574691
 **********************************************************************************************************************************
 Molpro calculation terminated
