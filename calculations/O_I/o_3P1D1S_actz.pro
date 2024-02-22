
 Working directory              : /wrk/irikura/molpro.tKMsr3DptN/
 Global scratch directory       : /wrk/irikura/molpro.tKMsr3DptN/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.tKMsr3DptN/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,O SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={O};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=8,sym=1,spin=2}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,1,0;
     wf,sym=1,spin=2;state,3;
     wf,sym=1,spin=0;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=2;state,3; save,5202.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,6; save,5200.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5202.2,5200.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   O SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 14:08:04  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry O      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry O      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry O      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry O      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  O       8.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    8
 NUMBER OF PRIMITIVE AOS:          81
 NUMBER OF SYMMETRY AOS:           71
 NUMBER OF CONTRACTIONS:           59   (   27Ag  +   32Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     2.884 MB (compressed) written to integral file ( 19.7%)

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.523E-02 0.198E-01 0.649E-01 0.196E+00 0.243E+00 0.243E+00 0.243E+00 0.243E+00
         2 0.190E-01 0.190E-01 0.190E-01 0.197E+00 0.197E+00 0.197E+00 0.399E+00 0.399E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.65      0.45
 REAL TIME  *         1.67 SEC
 DISK USED  *        29.03 MB (local),      166.28 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   2   1

 NELEC=    8   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -74.83530778     -74.83530778     0.00D+00     0.12D+00     0     0       0.01      0.01    start
   2      -74.85667378      -0.02136600     0.11D-01     0.14D-01     1     0       0.00      0.01    diag2
   3      -74.85844976      -0.00177597     0.49D-02     0.36D-02     2     0       0.00      0.01    diag2
   4      -74.85865869      -0.00020894     0.94D-03     0.11D-02     3     0       0.00      0.01    diag2
   5      -74.85867756      -0.00001886     0.22D-03     0.41D-03     4     0       0.00      0.01    diag2
   6      -74.85867807      -0.00000051     0.36D-04     0.70D-04     5     0       0.00      0.01    diag2
   7      -74.85867808      -0.00000001     0.51D-05     0.12D-04     6     0       0.01      0.02    diag2
   8      -74.85867808      -0.00000000     0.32D-06     0.52D-06     7     0       0.00      0.02    fixocc
   9      -74.85867808      -0.00000000     0.33D-07     0.46D-07     0     0       0.00      0.02    diag

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   1

 !RHF STATE 1.1 Energy                -74.858678078462
  RHF One-electron energy            -103.308238778635
  RHF Two-electron energy              28.449560700173
  RHF Kinetic energy                   75.197588669574
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.995493065707

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -20.68716     1  1  s    0.99935
    2.1     2.00000    -1.24842     1  2  s    1.00902
    1.2     2.00000    -0.56657     1  1  py   0.40373    1  1  pz   0.88650
    2.2     1.00000    -0.70241     1  1  py   0.92864    1  1  pz  -0.42292
    3.2     1.00000    -0.70241     1  1  px   1.02041


 HOMO      3.2    -0.702412 =     -19.1136eV
 LUMO      3.1     0.151683 =       4.1275eV
 LUMO-HOMO         0.854094 =      23.2411eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.68      0.02      0.45
 REAL TIME  *         1.70 SEC
 DISK USED  *        29.44 MB (local),      168.33 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      54 (   25   29)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.100D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.838D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 3   5 4 6 2 1 3 5 4 6 2   1 3 5 4 6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.318D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.322D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.148D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 2 1 3 7   9 810 6 4 5 1 2 3 7   9 810 6 4 5 1 2 3 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    207
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0    -74.79171158     -74.79499197   -0.00328039    0.07434355 0.00009680 0.00000000  0.53E-01      0.12
   2    5   10    0    -74.79501469     -74.79501508   -0.00000039    0.00098750 0.00000051 0.00000000  0.51E-03      0.32
   3   20   40    0    -74.79501508     -74.79501508    0.00000000    0.00000017 0.00000001 0.00000000  0.68E-07      0.47

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.69E-08)
                       Final energy:    -74.79501508
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -74.855442172934
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.13729179
 One electron energy                          -103.23589485
 Two electron energy                            28.38045268
 Virial ratio                                    1.99624887
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -74.855442172679
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.13729179
 One electron energy                          -103.23589486
 Two electron energy                            28.38045269
 Virial ratio                                    1.99624887
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -74.855442172244
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.13729181
 One electron energy                          -103.23589488
 Two electron energy                            28.38045270
 Virial ratio                                    1.99624887
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -74.775694827309
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.13729178
 One electron energy                          -103.23589485
 Two electron energy                            28.46020002
 Virial ratio                                    1.99518752
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -74.775694827269
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.13729179
 One electron energy                          -103.23589485
 Two electron energy                            28.46020002
 Virial ratio                                    1.99518752
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -74.775694827151
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.13729179
 One electron energy                          -103.23589486
 Two electron energy                            28.46020003
 Virial ratio                                    1.99518752
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -74.775694826948
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.13729181
 One electron energy                          -103.23589488
 Two electron energy                            28.46020005
 Virial ratio                                    1.99518752
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -74.775694826934
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.13729181
 One electron energy                          -103.23589488
 Two electron energy                            28.46020005
 Virial ratio                                    1.99518752
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -74.710335105348
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.10605168
 One electron energy                          -103.18287486
 Two electron energy                            28.47253975
 Virial ratio                                    1.99473123
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000186
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999818
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     2.299186487487
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999523
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000129115
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.700810503190
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999818
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000183
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.137845641329
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999999077
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999968028
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.862155440780
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999997
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.562967871184
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000001399
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999902857
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.437034056030
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 2 6 1 5   3 4 2 6 1 5 3 4 2 6   1 3 5 4 2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 2 3 1 7   9 4 810 6 5 1 2 3 7   9 410 8 6 5 1 2 3 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -20.70120     1  1  s    0.99925
    2.1     1.99156    -1.25798     1  2  s    1.01240
    1.2     1.33615    -0.37824     1  1  pz   0.99195
    2.2     1.33615    -0.37824     1  1  py   0.99195
    3.2     1.33615    -0.37824     1  1  px   0.99195
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 2aa          1.00000000     -0.00000178     -0.00000062
 2 a2a         -0.00000000      0.00001351      1.00000000
 2 aa2          0.00000000      1.00000000     -0.00001351
 
 Energy:      -74.85544217    -74.85544217    -74.85544217
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202          0.80230443      0.00000000      0.00002661      0.00007094     -0.15157207      0.56627800
 2 022         -0.26988643      0.00000000     -0.00001812     -0.00029918      0.77060206      0.56627801
 2 2ba         -0.00000195     -0.70710678     -0.00000270      0.00000094     -0.00000065      0.00000000
 2 2ab          0.00000195      0.70710678      0.00000270     -0.00000094      0.00000065     -0.00000000
 2 ab2         -0.00002571      0.00000000      0.70710678     -0.00001718      0.00001494      0.00000000
 2 ba2          0.00002571     -0.00000000     -0.70710678      0.00001718     -0.00001494     -0.00000000
 2 b2a          0.00001492      0.00000000      0.00000021     -0.70710673     -0.00035731      0.00000000
 2 a2b         -0.00001492     -0.00000000     -0.00000021      0.70710673      0.00035731     -0.00000000
 2 220         -0.53241799      0.00000000     -0.00000849      0.00022824     -0.61902999      0.56627800
 0 222         -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.19490424
 
 Energy:      -74.77569483    -74.77569483    -74.77569483    -74.77569483    -74.77569483    -74.71033511
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.16      0.47      0.02      0.45
 REAL TIME  *         2.28 SEC
 DISK USED  *        29.75 MB (local),      169.87 MB (total)
 SF USED    *         1.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -74.85544217   2.0
    -74.85544217   2.0
    -74.85544217   2.0
    -74.77569483   6.0
    -74.77569483   6.0
    -74.77569483   6.0
    -74.77569483   6.0
    -74.77569483   6.0
    -74.71033511  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                  8
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:        6 conf        6 CSFs
 N-1 el internal:       16 conf       24 CSFs
 N-2 el internal:       16 conf       48 CSFs

 Number of electrons in valence space:                      6
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -74.85544217
     2       -74.85544217
     3       -74.85544217

 Number of blocks in overlap matrix:    26   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:      33
 Number of N-1 electron functions:      24

 Number of internal configurations:                    3
 Number of singly external configurations:           648
 Number of doubly external configurations:         23964
 Total number of contracted configurations:        24615
 Total number of uncontracted configurations:      35376

 Diagonal Coupling coefficients finished.               Storage:    174681 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    188411 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -74.85544217    -0.00000000    -0.18239611  0.17D-01  0.28D-01     0.00
    1     2     2     1.00000000     0.00000000   -74.85544217     0.00000000    -0.18256826  0.17D-01  0.27D-01     0.00
    1     3     3     1.00000000     0.00000000   -74.85544217     0.00000000    -0.18250313  0.17D-01  0.28D-01     0.00
    2     1     1     1.03869039    -0.17083171   -75.02627388    -0.17083171    -0.00198157  0.35D-03  0.23D-03     0.04
    2     2     2     1.03871242    -0.17083037   -75.02627255    -0.17083037    -0.00197981  0.35D-03  0.23D-03     0.04
    2     3     3     1.03866416    -0.17082362   -75.02626579    -0.17082362    -0.00199041  0.35D-03  0.23D-03     0.04
    3     1     1     1.04104104    -0.17305443   -75.02849660    -0.00222273    -0.00011679  0.49D-04  0.14D-04     0.06
    3     2     2     1.04104090    -0.17305426   -75.02849643    -0.00222388    -0.00011696  0.49D-04  0.14D-04     0.06
    3     3     3     1.04103767    -0.17305376   -75.02849593    -0.00223014    -0.00011706  0.49D-04  0.14D-04     0.06
    4     1     1     1.04285067    -0.17322326   -75.02866543    -0.00016882    -0.00000990  0.21D-05  0.17D-05     0.10
    4     2     2     1.04284878    -0.17322317   -75.02866534    -0.00016891    -0.00000997  0.22D-05  0.17D-05     0.10
    4     3     3     1.04284787    -0.17322311   -75.02866528    -0.00016935    -0.00001000  0.22D-05  0.17D-05     0.10
    5     1     1     1.04299891    -0.17323589   -75.02867806    -0.00001263    -0.00000075  0.27D-06  0.77D-07     0.14
    5     2     2     1.04299893    -0.17323588   -75.02867805    -0.00001272    -0.00000076  0.27D-06  0.78D-07     0.14
    5     3     3     1.04299888    -0.17323588   -75.02867805    -0.00001277    -0.00000076  0.27D-06  0.79D-07     0.14
    6     1     1     1.04301850    -0.17323676   -75.02867893    -0.00000087    -0.00000005  0.14D-07  0.60D-08     0.17
    6     2     2     1.04301842    -0.17323676   -75.02867893    -0.00000088    -0.00000005  0.14D-07  0.60D-08     0.17
    6     3     3     1.04301842    -0.17323676   -75.02867893    -0.00000088    -0.00000005  0.14D-07  0.60D-08     0.17
    7     1     1     1.04303058    -0.17323682   -75.02867899    -0.00000006    -0.00000000  0.74D-09  0.51D-09     0.20
    7     2     2     1.04303053    -0.17323682   -75.02867899    -0.00000006    -0.00000000  0.76D-09  0.52D-09     0.20
    7     3     3     1.04303053    -0.17323682   -75.02867899    -0.00000006    -0.00000000  0.75D-09  0.52D-09     0.20


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   5.0%
 P   0.0%  15.0%  15.0%

 Initialization:   0.0%
 Other:           65.0%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/2/           0.0000000   0.0000000   0.9791551
 22//           0.0000000   0.9791551   0.0000000
 2//2           0.9791551   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.979155    0.000000
 2           0.979155    0.000000    0.000000
 3           0.000000    0.000000    0.979155

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.979155    0.000000    0.000000
 2           0.000000    0.979155    0.000000
 3           0.000000    0.000000    0.979155


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97915507 (fixed)   0.97915507 (relaxed)   0.97915507 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.12481899
 Singles      0.01719656   -0.04304680   -0.04412768
 Pairs        0.02583403   -0.00000000   -0.00429015
 Total        1.04303058   -0.04304680   -0.17323682
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.85544217
 Nuclear energy                         0.00000000
 Kinetic energy                        75.34100960
 One electron energy                 -103.11326683
 Two electron energy                   28.08458784
 Virial quotient                       -0.99585444
 Correlation energy                    -0.17323682
 !MRCI STATE 1.1 Energy               -75.028678989973

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.03613347 (Davidson, fixed reference)
 Cluster corrected energies           -75.03613347 (Davidson, relaxed reference)
 Cluster corrected energies           -75.03613347 (Davidson, rotated reference)

 Cluster corrected energies           -75.03240451 (Pople, fixed reference)
 Cluster corrected energies           -75.03240451 (Pople, relaxed reference)
 Cluster corrected energies           -75.03240451 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97915510 (fixed)   0.97915510 (relaxed)   0.97915510 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.12481905
 Singles      0.01719647   -0.04304674   -0.04412768
 Pairs        0.02583406   -0.00000000   -0.00429009
 Total        1.04303053   -0.04304674   -0.17323682
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.85544217
 Nuclear energy                         0.00000000
 Kinetic energy                        75.34100647
 One electron energy                 -103.11326474
 Two electron energy                   28.08458575
 Virial quotient                       -0.99585448
 Correlation energy                    -0.17323682
 !MRCI STATE 2.1 Energy               -75.028678989917

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.03613346 (Davidson, fixed reference)
 Cluster corrected energies           -75.03613346 (Davidson, relaxed reference)
 Cluster corrected energies           -75.03613346 (Davidson, rotated reference)

 Cluster corrected energies           -75.03240450 (Pople, fixed reference)
 Cluster corrected energies           -75.03240450 (Pople, relaxed reference)
 Cluster corrected energies           -75.03240450 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97915510 (fixed)   0.97915510 (relaxed)   0.97915510 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000    0.00000000
 Singles      0.01719647   -0.04304673   -0.04412768
 Pairs        0.02583406   -0.13019009   -0.12910914
 Total        1.04303053   -0.17323682   -0.17323682
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.85544217
 Nuclear energy                         0.00000000
 Kinetic energy                        75.34100727
 One electron energy                 -103.11326548
 Two electron energy                   28.08458649
 Virial quotient                       -0.99585447
 Correlation energy                    -0.17323682
 !MRCI STATE 3.1 Energy               -75.028678989845

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.03613346 (Davidson, fixed reference)
 Cluster corrected energies           -75.03613346 (Davidson, relaxed reference)
 Cluster corrected energies           -75.03613346 (Davidson, rotated reference)

 Cluster corrected energies           -75.03240450 (Pople, fixed reference)
 Cluster corrected energies           -75.03240450 (Pople, relaxed reference)
 Cluster corrected energies           -75.03240450 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.29       700     1000      520     2100     2140     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.42      0.25      0.47      0.02      0.45
 REAL TIME  *         2.60 SEC
 DISK USED  *        30.45 MB (local),      173.36 MB (total)
 SF USED    *         6.45 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -75.03613347  AU                              
 SETTING HLSDIAG(2)     =       -75.03613346  AU                              
 SETTING HLSDIAG(3)     =       -75.03613346  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                  8
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        7 conf        7 CSFs
 N elec internal:       10 conf       10 CSFs
 N-1 el internal:       16 conf       20 CSFs
 N-2 el internal:       19 conf       35 CSFs

 Number of electrons in valence space:                      6
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -74.77569483
     2       -74.77569483
     3       -74.77569483
     4       -74.77569483
     5       -74.77569483
     6       -74.71033511

 Number of blocks in overlap matrix:    18   Smallest eigenvalue:  0.54D-01
 Number of N-2 electron functions:      34
 Number of N-1 electron functions:      20

 Number of internal configurations:                    7
 Number of singly external configurations:           544
 Number of doubly external configurations:         24956
 Total number of contracted configurations:        25507
 Total number of uncontracted configurations:      26232

 Diagonal Coupling coefficients finished.               Storage:    175560 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    187997 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -74.77569483     0.00000000    -0.18387602  0.14D-01  0.27D-01     0.01
    1     2     2     1.00000000     0.00000000   -74.77569483    -0.00000000    -0.18493030  0.15D-01  0.27D-01     0.01
    1     3     3     1.00000000     0.00000000   -74.77569483    -0.00000000    -0.18466707  0.15D-01  0.27D-01     0.01
    1     4     4     1.00000000     0.00000000   -74.77569483    -0.00000000    -0.18472878  0.15D-01  0.27D-01     0.01
    1     5     5     1.00000000     0.00000000   -74.77569483    -0.00000000    -0.18351377  0.14D-01  0.27D-01     0.01
    1     6     6     1.00000000     0.00000000   -74.71033511    -0.00000000    -0.16552812  0.29D-02  0.32D-01     0.01
    2     1     1     1.03800434    -0.17661731   -74.95231214    -0.17661731    -0.00277762  0.24D-03  0.36D-03     0.08
    2     2     2     1.03802762    -0.17659421   -74.95228903    -0.17659421    -0.00280983  0.25D-03  0.36D-03     0.08
    2     3     3     1.03790407    -0.17656247   -74.95225730    -0.17656247    -0.00280656  0.24D-03  0.36D-03     0.08
    2     4     4     1.03800611    -0.17652707   -74.95222190    -0.17652707    -0.00287452  0.26D-03  0.37D-03     0.08
    2     5     5     1.03791473    -0.17651358   -74.95220841    -0.17651358    -0.00286410  0.27D-03  0.36D-03     0.08
    2     6     6     1.03295239    -0.16147057   -74.87180568    -0.16147057    -0.00228915  0.16D-03  0.32D-03     0.08
    3     1     1     1.04018648    -0.17944631   -74.95514114    -0.00282900    -0.00011324  0.31D-04  0.14D-04     0.15
    3     2     2     1.04018944    -0.17944542   -74.95514025    -0.00285121    -0.00011421  0.32D-04  0.14D-04     0.15
    3     3     3     1.04017494    -0.17944352   -74.95513835    -0.00288105    -0.00011613  0.32D-04  0.15D-04     0.15
    3     4     4     1.04015784    -0.17943715   -74.95513198    -0.00291008    -0.00011887  0.33D-04  0.15D-04     0.15
    3     5     5     1.04014209    -0.17943461   -74.95512944    -0.00292103    -0.00012140  0.33D-04  0.15D-04     0.15
    3     6     6     1.03548772    -0.16381197   -74.87414708    -0.00234140    -0.00013246  0.72D-04  0.12D-04     0.15
    4     1     1     1.04125294    -0.17958319   -74.95527801    -0.00013688    -0.00000800  0.18D-05  0.13D-05     0.22
    4     2     2     1.04125251    -0.17958311   -74.95527794    -0.00013769    -0.00000805  0.19D-05  0.13D-05     0.22
    4     3     3     1.04125059    -0.17958301   -74.95527784    -0.00013949    -0.00000813  0.19D-05  0.13D-05     0.22
    4     4     4     1.04124158    -0.17958190   -74.95527673    -0.00014475    -0.00000876  0.21D-05  0.14D-05     0.22
    4     5     5     1.04123907    -0.17958173   -74.95527656    -0.00014712    -0.00000889  0.22D-05  0.14D-05     0.22
    4     6     6     1.03675088    -0.16396492   -74.87430002    -0.00015295    -0.00001286  0.27D-05  0.20D-05     0.22
    5     1     1     1.04139607    -0.17959336   -74.95528819    -0.00001018    -0.00000065  0.12D-06  0.88D-07     0.28
    5     2     2     1.04139517    -0.17959335   -74.95528817    -0.00001024    -0.00000066  0.12D-06  0.89D-07     0.28
    5     3     3     1.04139536    -0.17959334   -74.95528817    -0.00001033    -0.00000066  0.13D-06  0.90D-07     0.28
    5     4     4     1.04139404    -0.17959323   -74.95528806    -0.00001133    -0.00000074  0.14D-06  0.99D-07     0.28
    5     5     5     1.04139357    -0.17959320   -74.95528802    -0.00001146    -0.00000076  0.14D-06  0.10D-06     0.28
    5     6     6     1.03700106    -0.16398014   -74.87431524    -0.00001522    -0.00000116  0.23D-06  0.18D-06     0.28
    6     1     1     1.04139946    -0.17959413   -74.95528896    -0.00000077    -0.00000004  0.72D-08  0.41D-08     0.36
    6     2     2     1.04139948    -0.17959413   -74.95528896    -0.00000078    -0.00000004  0.76D-08  0.42D-08     0.36
    6     3     3     1.04139944    -0.17959413   -74.95528895    -0.00000079    -0.00000004  0.78D-08  0.42D-08     0.36
    6     4     4     1.04139826    -0.17959412   -74.95528895    -0.00000089    -0.00000004  0.83D-08  0.47D-08     0.36
    6     5     5     1.04139826    -0.17959412   -74.95528895    -0.00000092    -0.00000004  0.88D-08  0.50D-08     0.36
    6     6     6     1.03702535    -0.16398150   -74.87431661    -0.00000136    -0.00000008  0.25D-07  0.93D-08     0.36
    7     1     1     1.04140331    -0.17959417   -74.95528900    -0.00000004    -0.00000000  0.36D-09  0.41D-09     0.44
    7     2     2     1.04140320    -0.17959417   -74.95528900    -0.00000004    -0.00000000  0.36D-09  0.42D-09     0.44
    7     3     3     1.04140325    -0.17959417   -74.95528900    -0.00000004    -0.00000000  0.38D-09  0.43D-09     0.44
    7     4     4     1.04140281    -0.17959417   -74.95528900    -0.00000005    -0.00000000  0.44D-09  0.48D-09     0.44
    7     5     5     1.04140279    -0.17959417   -74.95528900    -0.00000005    -0.00000000  0.45D-09  0.50D-09     0.44
    7     6     6     1.03703658    -0.16398158   -74.87431669    -0.00000008    -0.00000001  0.13D-08  0.10D-08     0.44


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.3%
 S   0.0%   0.0%
 P   6.8%   2.3%  31.8%

 Initialization:   0.0%
 Other:           56.8%

 Total CPU:        0.4 seconds
 =====================================



 Wavefunction saved on  5200.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\2           0.0000000   0.9799198   0.0000000   0.0000000   0.0000000   0.0000000
 22/\           0.0000000   0.0000000   0.9799198   0.0000000   0.0000000   0.0000000
 2/2\           0.9799198   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 2220           0.0000000   0.0000000   0.0000000  -0.1604140   0.7838556   0.5562046
 2022           0.0000000   0.0000000   0.0000000   0.7590458  -0.2530051   0.5562046
 2202           0.0000000   0.0000000   0.0000000  -0.5986318  -0.5308504   0.5562046
 0222           0.0000000   0.0000000   0.0000000  -0.0000001   0.0000001  -0.1902510

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \2/\  10.1    -0.0000000   0.0000000   0.0560529  -0.0000000   0.0000000   0.0000000
 \/\2  14.1    -0.0000000   0.0000000   0.0000000  -0.0548034  -0.0117843   0.0049444
 \2/\  11.1     0.0000000  -0.0000000  -0.0000000   0.0171961   0.0533533   0.0049445

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.000000    0.979920    0.000000    0.000000
 2           0.000000    0.000000    0.979920    0.000000    0.000000    0.000000
 3           0.000000    0.979920    0.000000    0.000000    0.000000    0.000000
 4          -0.599743    0.000000    0.000000    0.000000    0.774953    0.000000
 5          -0.774953    0.000000    0.000000    0.000000   -0.599743   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.981980

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.979920    0.000000    0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.979920    0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.979920    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.979920    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.979920   -0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.981980


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97991978 (fixed)   0.97991978 (relaxed)   0.97991978 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.13028306
 Singles      0.01416796   -0.04391696   -0.04461332
 Pairs        0.02723534   -0.00000000   -0.00469779
 Total        1.04140331   -0.04391696   -0.17959417
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77569483
 Nuclear energy                         0.00000000
 Kinetic energy                        75.27915624
 One electron energy                 -103.01796374
 Two electron energy                   28.06267475
 Virial quotient                       -0.99569778
 Correlation energy                    -0.17959417
 !MRCI STATE 1.1 Energy               -74.955288995742

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96272479 (Davidson, fixed reference)
 Cluster corrected energies           -74.96272479 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96272479 (Davidson, rotated reference)

 Cluster corrected energies           -74.96031360 (Pople, fixed reference)
 Cluster corrected energies           -74.96031360 (Pople, relaxed reference)
 Cluster corrected energies           -74.96031360 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97991983 (fixed)   0.97991983 (relaxed)   0.97991983 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.13028308
 Singles      0.01416789   -0.04391696   -0.04461329
 Pairs        0.02723531    0.00000000   -0.00469781
 Total        1.04140320   -0.04391696   -0.17959417
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77569483
 Nuclear energy                         0.00000000
 Kinetic energy                        75.27916178
 One electron energy                 -103.01796753
 Two electron energy                   28.06267854
 Virial quotient                       -0.99569771
 Correlation energy                    -0.17959417
 !MRCI STATE 2.1 Energy               -74.955288995690

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96272477 (Davidson, fixed reference)
 Cluster corrected energies           -74.96272477 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96272477 (Davidson, rotated reference)

 Cluster corrected energies           -74.96031358 (Pople, fixed reference)
 Cluster corrected energies           -74.96031358 (Pople, relaxed reference)
 Cluster corrected energies           -74.96031358 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97991981 (fixed)   0.97991981 (relaxed)   0.97991981 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.13028303
 Singles      0.01416799   -0.04391699   -0.04461331
 Pairs        0.02723526   -0.00000000   -0.00469782
 Total        1.04140325   -0.04391699   -0.17959417
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77569483
 Nuclear energy                         0.00000000
 Kinetic energy                        75.27915526
 One electron energy                 -103.01796292
 Two electron energy                   28.06267393
 Virial quotient                       -0.99569780
 Correlation energy                    -0.17959417
 !MRCI STATE 3.1 Energy               -74.955288995622

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96272478 (Davidson, fixed reference)
 Cluster corrected energies           -74.96272478 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96272478 (Davidson, rotated reference)

 Cluster corrected energies           -74.96031359 (Pople, fixed reference)
 Cluster corrected energies           -74.96031359 (Pople, relaxed reference)
 Cluster corrected energies           -74.96031359 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.77495279 (fixed)   0.97992001 (relaxed)   0.97992001 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.13028303
 Singles      0.01416767   -0.04391709   -0.04461322
 Pairs        0.02723514    0.00000003   -0.00469792
 Total        1.04140281   -0.04391705   -0.17959417
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77569483
 Nuclear energy                         0.00000000
 Kinetic energy                        75.27917056
 One electron energy                 -103.01797685
 Two electron energy                   28.06268786
 Virial quotient                       -0.99569759
 Correlation energy                    -0.17959417
 !MRCI STATE 4.1 Energy               -74.955288995155

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96272470 (Davidson, fixed reference)
 Cluster corrected energies           -74.96272470 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96272470 (Davidson, rotated reference)

 Cluster corrected energies           -74.96031353 (Pople, fixed reference)
 Cluster corrected energies           -74.96031353 (Pople, relaxed reference)
 Cluster corrected energies           -74.96031353 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.77495280 (fixed)   0.97992002 (relaxed)   0.97992002 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.13028293
 Singles      0.01416771   -0.04391714   -0.04461322
 Pairs        0.02723508   -0.00000002   -0.00469801
 Total        1.04140279   -0.04391716   -0.17959417
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77569483
 Nuclear energy                         0.00000000
 Kinetic energy                        75.27917656
 One electron energy                 -103.01798182
 Two electron energy                   28.06269282
 Virial quotient                       -0.99569751
 Correlation energy                    -0.17959417
 !MRCI STATE 5.1 Energy               -74.955288995027

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96272469 (Davidson, fixed reference)
 Cluster corrected energies           -74.96272469 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96272469 (Davidson, rotated reference)

 Cluster corrected energies           -74.96031353 (Pople, fixed reference)
 Cluster corrected energies           -74.96031353 (Pople, relaxed reference)
 Cluster corrected energies           -74.96031353 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.98198003 (fixed)   0.98198072 (relaxed)   0.98198003 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000140    0.00000000   -0.00000022
 Singles      0.00382606   -0.00536307   -0.00577546
 Pairs        0.03321057   -0.15861851   -0.15820591
 Total        1.03703804   -0.16398158   -0.16398158
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.71033511
 Nuclear energy                         0.00000000
 Kinetic energy                        75.20462330
 One electron energy                 -102.88004119
 Two electron energy                   28.00572450
 Virial quotient                       -0.99560789
 Correlation energy                    -0.16398158
 !MRCI STATE 6.1 Energy               -74.874316689506

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.88039025 (Davidson, fixed reference)
 Cluster corrected energies           -74.88039001 (Davidson, relaxed reference)
 Cluster corrected energies           -74.88039025 (Davidson, rotated reference)

 Cluster corrected energies           -74.87841506 (Pople, fixed reference)
 Cluster corrected energies           -74.87841490 (Pople, relaxed reference)
 Cluster corrected energies           -74.87841506 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.49       700     1000      520     2100     2140     5202     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.92      0.50      0.25      0.47      0.02      0.45
 REAL TIME  *         3.19 SEC
 DISK USED  *        31.65 MB (local),      179.38 MB (total)
 SF USED    *        12.29 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =       -74.96272479  AU                              
 SETTING HLSDIAG(5)     =       -74.96272477  AU                              
 SETTING HLSDIAG(6)     =       -74.96272478  AU                              
 SETTING HLSDIAG(7)     =       -74.96272470  AU                              
 SETTING HLSDIAG(8)     =       -74.96272469  AU                              
 SETTING HLSDIAG(9)     =       -74.88039025  AU                              


        HLSDIAG
    -75.03613347
    -75.03613346
    -75.03613346
    -74.96272479
    -74.96272477
    -74.96272478
    -74.96272470
    -74.96272469
    -74.88039025
                                                  

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

 Time for Seward_LS:       0.17 sec

         947699. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.18 sec, REAL time:      0.19 sec


 SORTLS1 read      952724. and wrote      952724. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read      952724. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    46.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.0 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.49       700     1000      520     2100     2140     5202     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.63      0.70      0.50      0.25      0.47      0.02      0.45
 REAL TIME  *         4.26 SEC
 DISK USED  *        31.67 MB (local),      255.40 MB (total)
 SF USED    *        15.13 MB
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
  
 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -75.028679    -75.028679    -75.028679
 Replaced energies:    -75.036133    -75.036133    -75.036133

 Wavefunction restored from record  5200.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:    -74.955289    -74.955289    -74.955289    -74.955289    -74.955289    -74.874317
 Replaced energies:    -74.962725    -74.962725    -74.962725    -74.962725    -74.962725    -74.880390



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -75.03613347

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00     -52.46       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00     -74.20       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00      52.46       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00      52.46       0.00       0.00       0.00     -48.56

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                           74.20       0.00       0.00       0.00     -52.46       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00      52.46      -0.00       0.00       0.00       0.00       0.00     -52.46       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      68.70

    5   2.1  1.0  0.0     -52.46       0.00      -0.00       0.00       0.00       0.00      52.46       0.00       0.00       0.00
                            0.00      -0.00      52.46      -0.00       0.00       0.00       0.00       0.00      52.46      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00     -52.46      -0.00      -0.00      -0.00       0.00       0.00     -52.46       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      52.46      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      74.20      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00     -52.46       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      52.46      -0.00       0.00       0.00      48.56

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     -52.46      -0.00     -74.20      -0.00      -0.00      -0.00

   10   1.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00   16111.34
                           -0.00      48.56      -0.00     -68.70       0.00       0.00       0.00     -48.56       0.00       0.00

   11   2.1  0.0  0.0       0.00     -48.56       0.00       0.00       0.00       0.00       0.00     -48.56       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      68.72       0.00       0.00       0.00      -0.00

   12   3.1  0.0  0.0     -48.56       0.00      -0.00       0.00       0.00       0.00     -48.56       0.00      -0.00       0.00
                           -0.00      -0.00     -48.58      -0.00      -0.00      -0.00       0.00       0.00      48.58      -0.00

   13   4.1  0.0  0.0       0.00       0.00      41.96       0.00       0.00       0.00       0.00       0.00      41.96       0.00
                           11.24      -0.00       0.00       0.00      75.25      -0.00     -11.24       0.00      -0.00      -0.00

   14   5.1  0.0  0.0       0.00      -0.00      37.21       0.00       0.00       0.00       0.00      -0.00      37.21       0.00
                          -54.95       0.00       0.00       0.00     -25.08       0.00      54.95      -0.00      -0.00      -0.00

   15   6.1  0.0  0.0       0.00       0.00      81.01       0.00       0.00       0.00       0.00       0.00      81.01       0.00
                           81.03       0.00      -0.00       0.00    -114.64       0.00     -81.03      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00     -48.56       0.00       0.00       0.00
                            0.00       0.00     -11.24      54.95     -81.03

    2   2.1  1.0  1.0     -48.56       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00

    3   3.1  1.0  1.0       0.00      -0.00      41.96      37.21      81.01
                            0.00      48.58      -0.00      -0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -75.25      25.08     114.64

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          -68.72       0.00       0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00     -48.56       0.00       0.00       0.00
                           -0.00      -0.00      11.24     -54.95      81.03

    8   2.1  1.0 -1.0     -48.56       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00      -0.00      41.96      37.21      81.01
                           -0.00     -48.58       0.00       0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0   16111.35       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00   16111.35       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00   16111.36       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00   16111.36       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   34181.69
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by    -75.03613347 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.002       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      74.196       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.002       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -74.196       0.000      74.196       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      74.196
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.002       0.000     -74.196       0.000
                                0.000       0.000      74.196      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.002       0.000       0.000
                                0.000     -74.196       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000     -74.196       0.000       0.000       0.000
                                0.000      -0.000     -74.196       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      74.196       0.000       0.000       0.000       0.002
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               74.196       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -68.705       0.000       0.000      -0.000      68.679

    2    1  |0 0>               0.000     -68.667       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      68.718      -0.000      -0.000

    3    1  |0 0>             -68.681       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |0 0>               0.000       0.000      59.344       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      75.251      -0.000      15.900      -0.000

    5    1  |0 0>               0.000      -0.000      52.627       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -25.081       0.000     -77.710       0.000

    6    1  |0 0>               0.000       0.000     114.559       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -114.640       0.000     114.600       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000       0.000     -68.681       0.000       0.000       0.000
                              -74.196       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000     -68.667       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000       0.000      -0.000      59.344      52.627     114.559
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      68.705      -0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000     -75.251      25.081     114.640

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -68.718       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -15.900      77.710    -114.600

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -68.679       0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.002       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      68.706      -0.000      -0.000       0.000

    1    1  |0 0>               0.000   16111.344       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000   16111.348       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000   16111.346       0.000       0.000       0.000
                              -68.706      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000   16111.364       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000   16111.364       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   34181.687
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -75.03647419    -0.00034071      -74.78      0.00000000        0.00      0.0000
    2   -75.03647418    -0.00034071      -74.78      0.00000000        0.00      0.0000
    3   -75.03647418    -0.00034071      -74.78      0.00000000        0.00      0.0000
    4   -75.03647418    -0.00034071      -74.78      0.00000001        0.00      0.0000
    5   -75.03647418    -0.00034071      -74.78      0.00000001        0.00      0.0000
    6   -75.03579541     0.00033807       74.20      0.00067878      148.97      0.0185
    7   -75.03579541     0.00033807       74.20      0.00067878      148.98      0.0185
    8   -75.03579540     0.00033807       74.20      0.00067878      148.98      0.0185
    9   -75.03546262     0.00067085      147.24      0.00101157      222.01      0.0275
   10   -74.96272213     0.07341134    16111.93      0.07375205    16186.70      2.0069
   11   -74.96272212     0.07341135    16111.93      0.07375207    16186.71      2.0069
   12   -74.96272211     0.07341136    16111.93      0.07375207    16186.71      2.0069
   13   -74.96272204     0.07341143    16111.95      0.07375214    16186.72      2.0069
   14   -74.96272204     0.07341143    16111.95      0.07375215    16186.73      2.0069
   15   -74.88038497     0.15574850    34182.84      0.15608922    34257.62      4.2474

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000 -0.00000000  0.70709845 -0.00000000 -0.00000000  0.00000000  0.70710238  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000512  0.70709347  0.00000000 -0.00000000  0.70710736
                          -0.00000000 -0.00000000  0.00000000  0.00000081 -0.00000031 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.38551087 -0.00000000  0.00000000  0.71964716  0.00000520 -0.00000000 -0.00000000 -0.00000000
                          -0.00597388 -0.00000000  0.00000000  0.00962753  0.00000089  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000094  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000
                           0.00000000  0.70709902  0.00000000  0.00000000 -0.00000000  0.70710180 -0.00000000 -0.00000000

   2    1  |1 0>           0.00667035  0.00000000  0.00000000  0.00928040  0.00000086  0.00000000 -0.00000000 -0.00000000
                           0.43045567  0.00000000 -0.00000000 -0.69369990 -0.00000501 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000081  0.00000031 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000512  0.70709462 -0.00000000  0.00000000 -0.70710620

   1    1  |1 1>-          0.01264434  0.00000000 -0.00000000 -0.00034717 -0.00000003 -0.00000000  0.00000000 -0.00000000
                           0.81597378 -0.00000000 -0.00000000  0.02595091  0.00000019  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000094 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                          -0.00000000 -0.70708907 -0.00000000 -0.00000000  0.00000000  0.70711176 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.70708964  0.00000000  0.00000000  0.00000000  0.70711118  0.00000000

   1    1  |0 0>          -0.00000000 -0.00600165 -0.00000000 -0.00000000  0.00000000 -0.00000107  0.00000000  0.00000000
                           0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000004  0.00600170 -0.00000000  0.00000000 -0.00000221
                          -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00600175 -0.00000000 -0.00000000  0.00000000 -0.00000114 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00138936  0.00000000 -0.00000000 -0.00583810 -0.00000004  0.00000000 -0.00000000 -0.00000000
                          -0.00002153 -0.00000000 -0.00000000 -0.00007810 -0.00000001 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00583794  0.00000000  0.00000000 -0.00138951 -0.00000001 -0.00000000 -0.00000000  0.00000000
                           0.00009046  0.00000000 -0.00000000 -0.00001859 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000003 -0.00000000  0.00000000  0.00000170  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00424310 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00424228 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.57649275  0.00000000  0.00000000 -0.00000000  0.00362890  0.00329300  0.00335169
                          -0.03133251 -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000008 -0.00030909

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00424460 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.03133235  0.00000000  0.00000000  0.00000000  0.00000007 -0.00000004  0.00030931
                           0.57648995  0.00000000 -0.00000000  0.00000000 -0.00466645  0.00149628  0.00335407

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00424541 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.03133215  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000011 -0.00030920
                          -0.57648616  0.00000000 -0.00000000  0.00000000 -0.00103709  0.00478938 -0.00335288

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00424302  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00424466 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |0 0>          -0.00000000  0.99998199  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.99998199  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.99998199  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000026 -0.00000000 -0.00000000 -0.00000000  0.99991668  0.01142836 -0.00000001
                          -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00001395  0.00000027  0.00000000

   5    1  |0 0>           0.00000003  0.00000000 -0.00000000  0.00000000 -0.01142836  0.99991668 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000016  0.00002386  0.00000000

   6    1  |0 0>          -0.00582340 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000  0.99575775
                           0.00031650 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.09182861


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -75.03647419     -0.00034071      -74.78      0.00000000        0.00      0.0000
     2   1    -75.03647418     -0.00034071      -74.78      0.00000000        0.00      0.0000
     3   1    -75.03647418     -0.00034071      -74.78      0.00000000        0.00      0.0000
     4   1    -75.03647418     -0.00034071      -74.78      0.00000001        0.00      0.0000
     5   1    -75.03647418     -0.00034071      -74.78      0.00000001        0.00      0.0000
     6   1    -75.03579541      0.00033807       74.20      0.00067878      148.97      0.0185
     7   1    -75.03579541      0.00033807       74.20      0.00067878      148.98      0.0185
     8   1    -75.03579540      0.00033807       74.20      0.00067878      148.98      0.0185
     9   1    -75.03546262      0.00067085      147.24      0.00101157      222.01      0.0275
    10   1    -74.96272213      0.07341134    16111.93      0.07375205    16186.70      2.0069
    11   1    -74.96272212      0.07341135    16111.93      0.07375207    16186.71      2.0069
    12   1    -74.96272211      0.07341136    16111.93      0.07375207    16186.71      2.0069
    13   1    -74.96272204      0.07341143    16111.95      0.07375214    16186.72      2.0069
    14   1    -74.96272204      0.07341143    16111.95      0.07375215    16186.73      2.0069
    15   1    -74.88038497      0.15574850    34182.84      0.15608922    34257.62      4.2474

 E0 =    -75.03613347 is the energy of the lowest zeroth-order state
 E1 =    -75.03647419 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000 -0.00000000  0.70709845 -0.00000000 -0.00000000  0.00000000  0.70710238  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000512  0.70709347  0.00000000 -0.00000000  0.70710736
                               -0.00000000 -0.00000000  0.00000000  0.00000081 -0.00000031 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.38551087 -0.00000000  0.00000000  0.71964716  0.00000520 -0.00000000 -0.00000000 -0.00000000
                               -0.00597388 -0.00000000  0.00000000  0.00962753  0.00000089  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000094  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000
                                0.00000000  0.70709902  0.00000000  0.00000000 -0.00000000  0.70710180 -0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00667035  0.00000000  0.00000000  0.00928040  0.00000086  0.00000000 -0.00000000 -0.00000000
                                0.43045567  0.00000000 -0.00000000 -0.69369990 -0.00000501 -0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000081  0.00000031 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000512  0.70709462 -0.00000000  0.00000000 -0.70710620

  7  1     1    1  |1 1>-       0.01264434  0.00000000 -0.00000000 -0.00034717 -0.00000003 -0.00000000  0.00000000 -0.00000000
                                0.81597378 -0.00000000 -0.00000000  0.02595091  0.00000019  0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00000094 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                               -0.00000000 -0.70708907 -0.00000000 -0.00000000  0.00000000  0.70711176 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.70708964  0.00000000  0.00000000  0.00000000  0.70711118  0.00000000

 10  1     1    1  |0 0>       -0.00000000 -0.00600165 -0.00000000 -0.00000000  0.00000000 -0.00000107  0.00000000  0.00000000
                                0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000004  0.00600170 -0.00000000  0.00000000 -0.00000221
                               -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000  0.00600175 -0.00000000 -0.00000000  0.00000000 -0.00000114 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00138936  0.00000000 -0.00000000 -0.00583810 -0.00000004  0.00000000 -0.00000000 -0.00000000
                               -0.00002153 -0.00000000 -0.00000000 -0.00007810 -0.00000001 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00583794  0.00000000  0.00000000 -0.00138951 -0.00000001 -0.00000000 -0.00000000  0.00000000
                                0.00009046  0.00000000 -0.00000000 -0.00001859 -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.00000003 -0.00000000  0.00000000  0.00000170  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00424310 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00424228 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.57649275  0.00000000  0.00000000 -0.00000000  0.00362890  0.00329300  0.00335169
                               -0.03133251 -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000008 -0.00030909

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00424460 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.03133235  0.00000000  0.00000000  0.00000000  0.00000007 -0.00000004  0.00030931
                                0.57648995  0.00000000 -0.00000000  0.00000000 -0.00466645  0.00149628  0.00335407

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00424541 -0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-      -0.03133215  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000011 -0.00030920
                               -0.57648616  0.00000000 -0.00000000  0.00000000 -0.00103709  0.00478938 -0.00335288

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00424302  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00424466 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000000  0.99998199  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.99998199  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000 -0.00000000  0.99998199  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000026 -0.00000000 -0.00000000 -0.00000000  0.99991668  0.01142836 -0.00000001
                               -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00001395  0.00000027  0.00000000

 14  1     5    1  |0 0>        0.00000003  0.00000000 -0.00000000  0.00000000 -0.01142836  0.99991668 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000016  0.00002386  0.00000000

 15  1     6    1  |0 0>       -0.00582340 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000  0.99575775
                                0.00031650 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.09182861



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%   50.00%
  3  1     3    1  |1 1>+        14.87%    0.00%    0.00%   51.80%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  5  1     2    1  |1 0>         18.53%    0.00%    0.00%   48.13%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%   50.00%
  7  1     1    1  |1 1>-        66.60%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+        33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>         33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-        33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.98%    0.01%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%   99.98%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.49       700     1000      520     2100     2140     5202     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.08      1.45      0.70      0.50      0.25      0.47      0.02      0.45
 REAL TIME  *         7.29 SEC
 DISK USED  *        31.67 MB (local),      255.40 MB (total)
 SF USED    *        20.48 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -74.880384970713

              CI              CI           MULTI         RHF-SCF
    -74.87431669    -75.02867899    -74.71033511    -74.85867808
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
