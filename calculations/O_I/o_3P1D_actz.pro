
 Working directory              : /wrk/irikura/molpro.OMOdjIzC0u/
 Global scratch directory       : /wrk/irikura/molpro.OMOdjIzC0u/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.OMOdjIzC0u/

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
     wf,sym=1,spin=0;state,5;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=2;state,3; save,5202.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,5; save,5200.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5202.2,5200.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   O SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 14:05:16  
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

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC
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
 CPU TIMES  *         0.65      0.44
 REAL TIME  *         1.66 SEC
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
   1      -74.83530778     -74.83530778     0.00D+00     0.12D+00     0     0       0.00      0.01    start
   2      -74.85667378      -0.02136600     0.11D-01     0.14D-01     1     0       0.00      0.01    diag2
   3      -74.85844976      -0.00177597     0.49D-02     0.37D-02     2     0       0.00      0.01    diag2
   4      -74.85865869      -0.00020894     0.94D-03     0.12D-02     3     0       0.01      0.02    diag2
   5      -74.85867756      -0.00001886     0.22D-03     0.44D-03     4     0       0.00      0.02    diag2
   6      -74.85867807      -0.00000051     0.36D-04     0.76D-04     5     0       0.00      0.02    diag2
   7      -74.85867808      -0.00000001     0.51D-05     0.13D-04     6     0       0.00      0.02    diag2
   8      -74.85867808      -0.00000000     0.32D-06     0.53D-06     7     0       0.00      0.02    fixocc
   9      -74.85867808      -0.00000000     0.33D-07     0.46D-07     0     0       0.01      0.03    diag

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   1

 !RHF STATE 1.1 Energy                -74.858678078461
  RHF One-electron energy            -103.308238778635
  RHF Two-electron energy              28.449560700175
  RHF Kinetic energy                   75.197588669570
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.995493065707

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -20.68716     1  1  s    0.99935
    2.1     2.00000    -1.24842     1  2  s    1.00902
    1.2     2.00000    -0.56657     1  1  px   0.97411
    2.2     1.00000    -0.70241     1  1  py   1.02040
    3.2     1.00000    -0.70241     1  1  pz   1.02040


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
 CPU TIMES  *         0.68      0.04      0.44
 REAL TIME  *         1.69 SEC
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
 Number of states:             5
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.887D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.742D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 4 3 5 1 6   2 4 3 5 1 6 2 4 3 5   1 6 2 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.856D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.123D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.140D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 2 1 5   6 4 8 910 7 3 2 1 5   6 8 4 910 7 3 2 1 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    197
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0    -74.80259991     -74.80559381   -0.00299389    0.07043602 0.00000241 0.00000000  0.51E-01      0.11
   2    3    6    0    -74.80561148     -74.80561179   -0.00000031    0.00086907 0.00000000 0.00000000  0.46E-03      0.16
   3   20   40    0    -74.80561179     -74.80561179   -0.00000000    0.00000013 0.00000004 0.00000000  0.53E-07      0.28

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.26E-07)
                       Final energy:    -74.80561179
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -74.855545103882
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.14448086
 One electron energy                          -103.24852515
 Two electron energy                            28.39298004
 Virial ratio                                    1.99615493
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -74.855545103763
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.14448086
 One electron energy                          -103.24852515
 Two electron energy                            28.39298005
 Virial ratio                                    1.99615493
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -74.855545101738
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.14448093
 One electron energy                          -103.24852522
 Two electron energy                            28.39298012
 Virial ratio                                    1.99615493
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -74.775651796075
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.14448083
 One electron energy                          -103.24852513
 Two electron energy                            28.47287333
 Virial ratio                                    1.99509173
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -74.775651795768
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.14448086
 One electron energy                          -103.24852515
 Two electron energy                            28.47287335
 Virial ratio                                    1.99509173
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -74.775651795710
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.14448086
 One electron energy                          -103.24852515
 Two electron energy                            28.47287336
 Virial ratio                                    1.99509173
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -74.775651794731
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.14448093
 One electron energy                          -103.24852522
 Two electron energy                            28.47287343
 Virial ratio                                    1.99509173
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -74.775651794728
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.14448093
 One electron energy                          -103.24852522
 Two electron energy                            28.47287343
 Virial ratio                                    1.99509173
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000006
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     2.912832745464
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000001887
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000297603
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.087177579169
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999994
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.084704088887
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999999109
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999711046
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.915286168104
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.002463165649
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.999999999003
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999991352
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.997536252727
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 3 5 4 1 6   2 3 5 4 1 6 2 5 3 4   1 6 2 3 5 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 2 1 3 1 2 5   6 810 9 7 4 2 3 1 5   610 8 9 7 4 2 3 1 2   3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -20.70175     1  1  s    0.99937
    2.1     2.00000    -1.25531     1  2  s    1.01072
    1.2     1.33333    -0.37621     1  1  px   0.99301
    2.2     1.33333    -0.37621     1  1  pz   0.99301
    3.2     1.33333    -0.37621     1  1  py   0.99301
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa2          1.00000000      0.00000000     -0.00000000
 2 a2a          0.00000000      0.00000003      1.00000000
 2 2aa         -0.00000000      1.00000000     -0.00000003
 
 Energy:      -74.85554510    -74.85554510    -74.85554510
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202          0.81624515      0.00004021      0.00000058      0.00004056     -0.02026143
 2 220         -0.39057562     -0.00001809     -0.00000028     -0.00131570      0.71701856
 2 2ab         -0.00000050     -0.00000348      0.70710678      0.00000000     -0.00000000
 2 2ba          0.00000050      0.00000348     -0.70710678     -0.00000000      0.00000000
 2 ab2         -0.00003486      0.70710678      0.00000348     -0.00000219     -0.00000116
 2 ba2          0.00003486     -0.70710678     -0.00000348      0.00000219      0.00000116
 2 b2a          0.00000297     -0.00000219     -0.00000000     -0.70710559     -0.00129590
 2 a2b         -0.00000297      0.00000219      0.00000000      0.70710559      0.00129590
 2 022         -0.42566952     -0.00002212     -0.00000030      0.00127514     -0.69675713
 
 Energy:      -74.77565180    -74.77565180    -74.77565180    -74.77565179    -74.77565179
 


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
 CPU TIMES  *         0.97      0.29      0.04      0.44
 REAL TIME  *         2.06 SEC
 DISK USED  *        29.75 MB (local),      169.87 MB (total)
 SF USED    *         1.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -74.85554510   2.0
    -74.85554510   2.0
    -74.85554510   2.0
    -74.77565180   6.0
    -74.77565180   6.0
    -74.77565180   6.0
    -74.77565179   6.0
    -74.77565179   6.0
                                                  


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
     1       -74.85554510
     2       -74.85554510
     3       -74.85554510

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
    1     1     1     1.00000000     0.00000000   -74.85554510     0.00000000    -0.18233055  0.17D-01  0.27D-01     0.01
    1     2     2     1.00000000     0.00000000   -74.85554510     0.00000000    -0.18214945  0.16D-01  0.27D-01     0.01
    1     3     3     1.00000000     0.00000000   -74.85554510    -0.00000000    -0.18233572  0.17D-01  0.27D-01     0.01
    2     1     1     1.03853456    -0.17064882   -75.02619392    -0.17064882    -0.00197374  0.34D-03  0.23D-03     0.05
    2     2     2     1.03858311    -0.17064666   -75.02619177    -0.17064666    -0.00197271  0.34D-03  0.23D-03     0.05
    2     3     3     1.03856832    -0.17064075   -75.02618585    -0.17064075    -0.00198226  0.34D-03  0.23D-03     0.05
    3     1     1     1.04100629    -0.17286615   -75.02841126    -0.00221734    -0.00011639  0.50D-04  0.14D-04     0.08
    3     2     2     1.04099836    -0.17286536   -75.02841046    -0.00221869    -0.00011667  0.50D-04  0.14D-04     0.08
    3     3     3     1.04099903    -0.17286521   -75.02841031    -0.00222446    -0.00011673  0.50D-04  0.14D-04     0.08
    4     1     1     1.04281602    -0.17303459   -75.02857969    -0.00016843    -0.00000967  0.19D-05  0.17D-05     0.12
    4     2     2     1.04281502    -0.17303452   -75.02857963    -0.00016916    -0.00000972  0.19D-05  0.17D-05     0.12
    4     3     3     1.04281289    -0.17303446   -75.02857956    -0.00016925    -0.00000977  0.20D-05  0.17D-05     0.12
    5     1     1     1.04296891    -0.17304702   -75.02859212    -0.00001243    -0.00000069  0.25D-06  0.72D-07     0.15
    5     2     2     1.04296911    -0.17304701   -75.02859212    -0.00001249    -0.00000070  0.26D-06  0.73D-07     0.15
    5     3     3     1.04296891    -0.17304701   -75.02859211    -0.00001255    -0.00000070  0.25D-06  0.74D-07     0.15
    6     1     1     1.04298651    -0.17304783   -75.02859293    -0.00000081    -0.00000005  0.10D-07  0.58D-08     0.18
    6     2     2     1.04298652    -0.17304783   -75.02859293    -0.00000082    -0.00000005  0.11D-07  0.58D-08     0.18
    6     3     3     1.04298640    -0.17304783   -75.02859293    -0.00000082    -0.00000005  0.11D-07  0.58D-08     0.18
    7     1     1     1.04299859    -0.17304788   -75.02859299    -0.00000005    -0.00000000  0.73D-09  0.41D-09     0.21
    7     2     2     1.04299854    -0.17304788   -75.02859299    -0.00000005    -0.00000000  0.74D-09  0.42D-09     0.21
    7     3     3     1.04299856    -0.17304788   -75.02859299    -0.00000005    -0.00000000  0.73D-09  0.42D-09     0.21


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.8%
 S   0.0%   4.8%
 P   0.0%   9.5%  19.0%

 Initialization:   0.0%
 Other:           61.9%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22//           0.0000000   0.9791701   0.0000000
 2/2/           0.0000000   0.0000000   0.9791701
 2//2           0.9791701   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.979170    0.000000    0.000000
 2           0.000000    0.979170    0.000000
 3           0.000000    0.000000    0.979170

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.979170    0.000000    0.000000
 2           0.000000    0.979170    0.000000
 3           0.000000    0.000000    0.979170


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97917009 (fixed)   0.97917009 (relaxed)   0.97917009 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.12485670
 Singles      0.01716417   -0.04282252   -0.04390545
 Pairs        0.02583443   -0.00000000   -0.00428574
 Total        1.04299859   -0.04282252   -0.17304788
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.85554510
 Nuclear energy                         0.00000000
 Kinetic energy                        75.33720733
 One electron energy                 -103.11457971
 Two electron energy                   28.08598673
 Virial quotient                       -0.99590356
 Correlation energy                    -0.17304788
 !MRCI STATE 1.1 Energy               -75.028592986091

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.03603380 (Davidson, fixed reference)
 Cluster corrected energies           -75.03603380 (Davidson, relaxed reference)
 Cluster corrected energies           -75.03603380 (Davidson, rotated reference)

 Cluster corrected energies           -75.03231168 (Pople, fixed reference)
 Cluster corrected energies           -75.03231168 (Pople, relaxed reference)
 Cluster corrected energies           -75.03231168 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97917012 (fixed)   0.97917012 (relaxed)   0.97917012 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.12485677
 Singles      0.01716407   -0.04282245   -0.04390544
 Pairs        0.02583446   -0.00000000   -0.00428567
 Total        1.04299854   -0.04282245   -0.17304788
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.85554510
 Nuclear energy                         0.00000000
 Kinetic energy                        75.33720272
 One electron energy                 -103.11457690
 Two electron energy                   28.08598391
 Virial quotient                       -0.99590362
 Correlation energy                    -0.17304788
 !MRCI STATE 2.1 Energy               -75.028592985996

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.03603379 (Davidson, fixed reference)
 Cluster corrected energies           -75.03603379 (Davidson, relaxed reference)
 Cluster corrected energies           -75.03603379 (Davidson, rotated reference)

 Cluster corrected energies           -75.03231167 (Pople, fixed reference)
 Cluster corrected energies           -75.03231167 (Pople, relaxed reference)
 Cluster corrected energies           -75.03231167 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97917010 (fixed)   0.97917010 (relaxed)   0.97917010 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.00000000
 Singles      0.01716413   -0.04282250   -0.04390544
 Pairs        0.02583444   -0.13022539   -0.12914244
 Total        1.04299856   -0.17304788   -0.17304788
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.85554510
 Nuclear energy                         0.00000000
 Kinetic energy                        75.33720604
 One electron energy                 -103.11457852
 Two electron energy                   28.08598554
 Virial quotient                       -0.99590358
 Correlation energy                    -0.17304788
 !MRCI STATE 3.1 Energy               -75.028592985840

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.03603380 (Davidson, fixed reference)
 Cluster corrected energies           -75.03603380 (Davidson, relaxed reference)
 Cluster corrected energies           -75.03603380 (Davidson, rotated reference)

 Cluster corrected energies           -75.03231167 (Pople, fixed reference)
 Cluster corrected energies           -75.03231167 (Pople, relaxed reference)
 Cluster corrected energies           -75.03231167 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.28       700     1000      520     2100     2140     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.24      0.25      0.29      0.04      0.44
 REAL TIME  *         2.36 SEC
 DISK USED  *        30.44 MB (local),      173.32 MB (total)
 SF USED    *         6.45 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -75.03603380  AU                              
 SETTING HLSDIAG(2)     =       -75.03603379  AU                              
 SETTING HLSDIAG(3)     =       -75.03603380  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

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
     1       -74.77565180
     2       -74.77565180
     3       -74.77565180
     4       -74.77565179
     5       -74.77565179

 Number of blocks in overlap matrix:    22   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:      30
 Number of N-1 electron functions:      20

 Number of internal configurations:                    7
 Number of singly external configurations:           544
 Number of doubly external configurations:         22078
 Total number of contracted configurations:        22629
 Total number of uncontracted configurations:      26232

 Diagonal Coupling coefficients finished.               Storage:    175150 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    187721 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -74.77565180     0.00000000    -0.18684251  0.14D-01  0.28D-01     0.01
    1     2     2     1.00000000     0.00000000   -74.77565180     0.00000000    -0.18786689  0.15D-01  0.29D-01     0.01
    1     3     3     1.00000000     0.00000000   -74.77565180    -0.00000000    -0.18851466  0.15D-01  0.29D-01     0.01
    1     4     4     1.00000000     0.00000000   -74.77565179    -0.00000000    -0.18800122  0.15D-01  0.29D-01     0.01
    1     5     5     1.00000000     0.00000000   -74.77565179    -0.00000000    -0.18720208  0.14D-01  0.28D-01     0.01
    2     1     1     1.03810016    -0.17661420   -74.95226599    -0.17661420    -0.00247649  0.25D-03  0.30D-03     0.06
    2     2     2     1.03817539    -0.17659040   -74.95224220    -0.17659040    -0.00250419  0.24D-03  0.31D-03     0.06
    2     3     3     1.03819784    -0.17655606   -74.95220785    -0.17655606    -0.00254968  0.25D-03  0.31D-03     0.06
    2     4     4     1.03810687    -0.17653813   -74.95218993    -0.17653813    -0.00255503  0.27D-03  0.30D-03     0.06
    2     5     5     1.03823450    -0.17653563   -74.95218743    -0.17653563    -0.00257267  0.26D-03  0.32D-03     0.06
    3     1     1     1.04023792    -0.17924066   -74.95489246    -0.00262646    -0.00009188  0.25D-04  0.12D-04     0.10
    3     2     2     1.04023521    -0.17923926   -74.95489106    -0.00264886    -0.00009318  0.26D-04  0.12D-04     0.10
    3     3     3     1.04023270    -0.17923900   -74.95489079    -0.00268294    -0.00009355  0.26D-04  0.12D-04     0.10
    3     4     4     1.04020702    -0.17923765   -74.95488945    -0.00269952    -0.00009256  0.27D-04  0.11D-04     0.10
    3     5     5     1.04018638    -0.17923365   -74.95488545    -0.00269802    -0.00009598  0.28D-04  0.12D-04     0.10
    4     1     1     1.04123673    -0.17935517   -74.95500696    -0.00011451    -0.00000516  0.11D-05  0.86D-06     0.15
    4     2     2     1.04123630    -0.17935516   -74.95500696    -0.00011590    -0.00000517  0.11D-05  0.87D-06     0.15
    4     3     3     1.04123549    -0.17935516   -74.95500695    -0.00011616    -0.00000519  0.11D-05  0.88D-06     0.15
    4     4     4     1.04122866    -0.17935451   -74.95500630    -0.00011686    -0.00000554  0.13D-05  0.88D-06     0.15
    4     5     5     1.04122461    -0.17935429   -74.95500608    -0.00012064    -0.00000570  0.14D-05  0.91D-06     0.15
    5     1     1     1.04133879    -0.17936176   -74.95501355    -0.00000659    -0.00000031  0.89D-07  0.35D-07     0.19
    5     2     2     1.04133889    -0.17936176   -74.95501355    -0.00000659    -0.00000031  0.89D-07  0.36D-07     0.19
    5     3     3     1.04133841    -0.17936176   -74.95501355    -0.00000660    -0.00000031  0.88D-07  0.36D-07     0.19
    5     4     4     1.04133967    -0.17936170   -74.95501350    -0.00000719    -0.00000035  0.93D-07  0.42D-07     0.19
    5     5     5     1.04133847    -0.17936168   -74.95501347    -0.00000739    -0.00000037  0.97D-07  0.44D-07     0.19
    6     1     1     1.04134361    -0.17936213   -74.95501392    -0.00000037    -0.00000002  0.27D-08  0.19D-08     0.25
    6     2     2     1.04134347    -0.17936213   -74.95501392    -0.00000037    -0.00000002  0.27D-08  0.20D-08     0.25
    6     3     3     1.04134363    -0.17936213   -74.95501392    -0.00000037    -0.00000002  0.29D-08  0.20D-08     0.25
    6     4     4     1.04134260    -0.17936212   -74.95501392    -0.00000042    -0.00000002  0.30D-08  0.22D-08     0.25
    6     5     5     1.04134254    -0.17936212   -74.95501392    -0.00000045    -0.00000002  0.33D-08  0.23D-08     0.25


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   4.0%
 P   0.0%   8.0%  20.0%

 Initialization:   0.0%
 Other:           68.0%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5200.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/2\           0.0000000   0.9799479   0.0000000   0.0000000   0.0000000
 22/\           0.9799479   0.0000000   0.0000000   0.0000000   0.0000000
 2/\2           0.0000000   0.0000000   0.9799479   0.0000000   0.0000000
 2022           0.0000000   0.0000000   0.0000000   0.7995540  -0.0298134
 2220           0.0000000   0.0000000   0.0000000  -0.3740034   0.7073164
 2202           0.0000000   0.0000000   0.0000000  -0.4255979  -0.6775791

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \/2\  13.1     0.0000000  -0.0558680   0.0000000  -0.0000000  -0.0000000
 \2/\  10.1    -0.0000000   0.0000000   0.0000000   0.0014842   0.0558517

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.979948    0.000000    0.000000
 2           0.000000    0.000000    0.000000    0.979948    0.000000
 3           0.000000    0.979948    0.000000    0.000000    0.000000
 4          -0.541661    0.000000    0.000000    0.000000   -0.816641
 5          -0.816641    0.000000    0.000000    0.000000    0.541661

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.979948    0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.979948    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.979948    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.979948    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.979948


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97994787 (fixed)   0.97994787 (relaxed)   0.97994787 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.13028010
 Singles      0.01416535   -0.04369578   -0.04440283
 Pairs        0.02717826    0.00000000   -0.00467919
 Total        1.04134361   -0.04369578   -0.17936213
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77565180
 Nuclear energy                         0.00000000
 Kinetic energy                        75.27745923
 One electron energy                 -103.02048063
 Two electron energy                   28.06546671
 Virial quotient                       -0.99571658
 Correlation energy                    -0.17936213
 !MRCI STATE 1.1 Energy               -74.955013921147

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96242940 (Davidson, fixed reference)
 Cluster corrected energies           -74.96242940 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96242940 (Davidson, rotated reference)

 Cluster corrected energies           -74.96002470 (Pople, fixed reference)
 Cluster corrected energies           -74.96002470 (Pople, relaxed reference)
 Cluster corrected energies           -74.96002470 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97994793 (fixed)   0.97994793 (relaxed)   0.97994793 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.13028025
 Singles      0.01416528   -0.04369564   -0.04440281
 Pairs        0.02717819    0.00000000   -0.00467906
 Total        1.04134347   -0.04369564   -0.17936213
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77565179
 Nuclear energy                         0.00000000
 Kinetic energy                        75.27744688
 One electron energy                 -103.02046947
 Two electron energy                   28.06545555
 Virial quotient                       -0.99571674
 Correlation energy                    -0.17936213
 !MRCI STATE 2.1 Energy               -74.955013921039

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96242937 (Davidson, fixed reference)
 Cluster corrected energies           -74.96242937 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96242937 (Davidson, rotated reference)

 Cluster corrected energies           -74.96002468 (Pople, fixed reference)
 Cluster corrected energies           -74.96002468 (Pople, relaxed reference)
 Cluster corrected energies           -74.96002468 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97994786 (fixed)   0.97994786 (relaxed)   0.97994786 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.13028033
 Singles      0.01416512   -0.04369553   -0.04440282
 Pairs        0.02717850   -0.00000000   -0.00467897
 Total        1.04134363   -0.04369553   -0.17936213
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77565180
 Nuclear energy                         0.00000000
 Kinetic energy                        75.27746108
 One electron energy                 -103.02048329
 Two electron energy                   28.06546937
 Virial quotient                       -0.99571655
 Correlation energy                    -0.17936213
 !MRCI STATE 3.1 Energy               -74.955013920841

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96242940 (Davidson, fixed reference)
 Cluster corrected energies           -74.96242940 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96242940 (Davidson, rotated reference)

 Cluster corrected energies           -74.96002470 (Pople, fixed reference)
 Cluster corrected energies           -74.96002470 (Pople, relaxed reference)
 Cluster corrected energies           -74.96002470 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.81664053 (fixed)   0.97994834 (relaxed)   0.97994834 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.23885051
 Singles      0.01416423   -0.04369510   -0.04440258
 Pairs        0.02717837    0.11305819    0.10389097
 Total        1.04134261    0.06936309   -0.17936212
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77565180
 Nuclear energy                         0.00000000
 Kinetic energy                        75.27743603
 One electron energy                 -103.02044807
 Two electron energy                   28.06543415
 Virial quotient                       -0.99571688
 Correlation energy                    -0.17936212
 !MRCI STATE 4.1 Energy               -74.955013918292

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96242922 (Davidson, fixed reference)
 Cluster corrected energies           -74.96242922 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96242922 (Davidson, rotated reference)

 Cluster corrected energies           -74.96002457 (Pople, fixed reference)
 Cluster corrected energies           -74.96002457 (Pople, relaxed reference)
 Cluster corrected energies           -74.96002457 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.81664058 (fixed)   0.97994837 (relaxed)   0.97994837 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.05826877
 Singles      0.01416408   -0.04369508   -0.04440260
 Pairs        0.02717846   -0.07498929   -0.07669075
 Total        1.04134254   -0.11868437   -0.17936212
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77565180
 Nuclear energy                         0.00000000
 Kinetic energy                        75.27746480
 One electron energy                 -103.02047215
 Two electron energy                   28.06545824
 Virial quotient                       -0.99571650
 Correlation energy                    -0.17936212
 !MRCI STATE 5.1 Energy               -74.955013917031

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96242920 (Davidson, fixed reference)
 Cluster corrected energies           -74.96242920 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96242920 (Davidson, rotated reference)

 Cluster corrected energies           -74.96002456 (Pople, fixed reference)
 Cluster corrected energies           -74.96002456 (Pople, relaxed reference)
 Cluster corrected energies           -74.96002456 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        2.17       700     1000      520     2100     2140     5202     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.56      0.31      0.25      0.29      0.04      0.44
 REAL TIME  *         2.75 SEC
 DISK USED  *        31.33 MB (local),      177.78 MB (total)
 SF USED    *         9.28 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =       -74.96242940  AU                              
 SETTING HLSDIAG(5)     =       -74.96242937  AU                              
 SETTING HLSDIAG(6)     =       -74.96242940  AU                              
 SETTING HLSDIAG(7)     =       -74.96242922  AU                              
 SETTING HLSDIAG(8)     =       -74.96242920  AU                              


        HLSDIAG
    -75.03603380
    -75.03603379
    -75.03603380
    -74.96242940
    -74.96242937
    -74.96242940
    -74.96242922
    -74.96242920
                                                  


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

 Time for Seward_LS:       0.16 sec

         947699. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.16 sec, REAL time:      0.18 sec


 SORTLS1 read      952724. and wrote      952724. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.02 sec
 SORTLS2 read      952724. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:    46.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -75.028593    -75.028593    -75.028593
 Replaced energies:    -75.036034    -75.036034    -75.036034

 Wavefunction restored from record  5200.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies:    -74.955014    -74.955014    -74.955014    -74.955014    -74.955014
 Replaced energies:    -74.962429    -74.962429    -74.962429    -74.962429    -74.962429



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -75.03603380

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00     -74.24      -0.00      -0.00      -0.00     -52.50       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      52.50       0.00       0.00       0.00      -0.00
                           74.24       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00     -52.50       0.00       0.00       0.00       0.00      48.60
                            0.00       0.00       0.00      52.50       0.00       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00     -52.50       0.00       0.00       0.00      -0.00      -0.00     -52.50      68.70

    5   2.1  1.0  0.0       0.00       0.00     -52.50       0.00       0.00       0.00      -0.00       0.00      52.50       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00      52.50       0.00       0.00       0.00       0.00      -0.00     -52.50       0.00       0.00
                           52.50       0.00      -0.00      -0.00      -0.00       0.00      52.50       0.00       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     -52.50       0.00      74.24       0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00     -52.50       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00     -74.24      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00      52.50       0.00       0.00       0.00       0.00      48.60
                           -0.00      -0.00      -0.00      52.50       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   10   1.1  0.0  0.0      -0.00      -0.00      48.60       0.00       0.00       0.00      -0.00      -0.00      48.60   16154.30
                            0.00      -0.00       0.00     -68.70       0.00       0.00      -0.00       0.00      -0.00       0.00

   11   2.1  0.0  0.0      -0.00     -48.59      -0.00       0.00       0.00       0.00      -0.00     -48.59      -0.00       0.00
                           48.59      -0.00      -0.00      -0.00      -0.00       0.00     -48.59       0.00       0.00      -0.00

   12   3.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00     -48.60      -0.00     -68.70      -0.00      -0.00      -0.00      48.60      -0.00

   13   4.1  0.0  0.0     -26.22      -0.00       0.00       0.00       0.00       0.00     -26.22      -0.00       0.00       0.00
                            0.00     -56.07      -0.00      -0.00       0.00      42.20      -0.00      56.07       0.00      -0.00

   14   5.1  0.0  0.0      49.60      -0.00       0.00       0.00       0.00       0.00      49.60      -0.00       0.00       0.00
                            0.00       2.08      -0.00      -0.00      -0.00      67.18      -0.00      -2.08       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0      -0.00       0.00     -26.22      49.60
                          -48.59      -0.00      -0.00      -0.00

    2   2.1  1.0  1.0     -48.59      -0.00      -0.00      -0.00
                            0.00      -0.00      56.07      -2.08

    3   3.1  1.0  1.0      -0.00       0.00       0.00       0.00
                            0.00      48.60       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      68.70      -0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00       0.00     -42.20     -67.18

    7   1.1  1.0 -1.0      -0.00       0.00     -26.22      49.60
                           48.59       0.00       0.00       0.00

    8   2.1  1.0 -1.0     -48.59      -0.00      -0.00      -0.00
                           -0.00       0.00     -56.07       2.08

    9   3.1  1.0 -1.0      -0.00       0.00       0.00       0.00
                           -0.00     -48.60      -0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0   16154.30       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00   16154.30       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00   16154.34       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00   16154.34
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by    -75.03603380 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     -74.243      -0.000     -74.243

    2    1  |1 1>+              0.000       0.002       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      74.243       0.000

    3    1  |1 1>+              0.000       0.000       0.001      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      74.243       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000     -74.243       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.002       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.001       0.000      74.243
                               74.243       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -74.243      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      74.243       0.000       0.002
                               74.243       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000     -74.243       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000      -0.000      68.728       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -68.701       0.000       0.000       0.000      -0.000

    2    1  |0 0>              -0.000     -68.713      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      68.713      -0.000

    3    1  |0 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -68.701      -0.000       0.000       0.000

    4    1  |0 0>             -37.081      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      42.199       0.000     -79.293

    5    1  |0 0>              70.150      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      67.184       0.000       2.947

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000      -0.000      -0.000       0.000     -37.081      70.150
                               -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000     -68.713      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      68.728      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      68.701       0.000       0.000       0.000       0.000

    2    1  |1 0>             -74.243       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      68.701      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000     -42.199     -67.184

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -68.713      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      79.293      -2.947

    3    1  |1 1>-              0.001       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      68.728       0.000       0.000

    1    1  |0 0>               0.000   16154.299       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000   16154.305       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000   16154.299       0.000       0.000
                              -68.728      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000   16154.339       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000   16154.342
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -75.03637473    -0.00034093      -74.82      0.00000000        0.00      0.0000
    2   -75.03637473    -0.00034093      -74.82      0.00000000        0.00      0.0000
    3   -75.03637472    -0.00034092      -74.82      0.00000000        0.00      0.0000
    4   -75.03637472    -0.00034092      -74.82      0.00000001        0.00      0.0000
    5   -75.03637472    -0.00034092      -74.82      0.00000001        0.00      0.0000
    6   -75.03569552     0.00033828       74.24      0.00067920      149.07      0.0185
    7   -75.03569552     0.00033828       74.24      0.00067921      149.07      0.0185
    8   -75.03569552     0.00033828       74.24      0.00067921      149.07      0.0185
    9   -75.03535724     0.00067656      148.49      0.00101748      223.31      0.0277
   10   -74.96242675     0.07360705    16154.88      0.07394798    16229.70      2.0122
   11   -74.96242675     0.07360705    16154.88      0.07394798    16229.71      2.0122
   12   -74.96242672     0.07360708    16154.89      0.07394801    16229.71      2.0122
   13   -74.96242656     0.07360724    16154.92      0.07394816    16229.75      2.0122
   14   -74.96242655     0.07360725    16154.92      0.07394818    16229.75      2.0122

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.78779596  0.00000000 -0.00000000 -0.00000000 -0.21453157  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.66842057 -0.00000000  0.00000000 -0.00000000  0.70706261  0.00000000
                          -0.00000000 -0.00000000 -0.23062674  0.00000000  0.00000000 -0.00000000  0.00835400 -0.00000000

   3    1  |1 1>+         -0.00000000  0.67519679  0.00000000 -0.00000000 -0.00000000  0.70710894  0.00000000  0.00000000
                          -0.00000000  0.20997217 -0.00000000 -0.00000000  0.00000000  0.00000080 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.20997346  0.00000000  0.00000000 -0.00000000  0.00000080 -0.00000000 -0.00000000
                          -0.00000000  0.67520092  0.00000000 -0.00000000 -0.00000000 -0.70710462 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.70709058 -0.00000001 -0.00000000 -0.00000000  0.55374675
                          -0.00000000 -0.00000000  0.00000000 -0.00085038  0.00000000 -0.00000000 -0.00000000 -0.43973720

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.57968377 -0.00000000  0.00000000 -0.00000001 -0.57498611  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.23063012 -0.00000000 -0.00000000 -0.00000000  0.00835388 -0.00000000
                           0.00000000 -0.00000000  0.66843036 -0.00000000  0.00000000  0.00000000 -0.70705226 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.20810669 -0.00000000 -0.00000000  0.00000001  0.78951335  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.70709661 -0.00000001  0.00000000  0.00000000 -0.55374202
                          -0.00000000 -0.00000000  0.00000000 -0.00085039  0.00000000  0.00000000  0.00000000  0.43973345

   1    1  |0 0>           0.00000000 -0.00571761 -0.00000000  0.00000000  0.00000000 -0.00000122 -0.00000000 -0.00000000
                           0.00000000 -0.00177806  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00566015 -0.00000000  0.00000000 -0.00000000  0.00000005  0.00000000
                          -0.00000000 -0.00000000 -0.00195294  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000720 -0.00000000 -0.00000000 -0.00000000 -0.00000073
                           0.00000000  0.00000000  0.00000000  0.00598768 -0.00000000  0.00000000  0.00000000 -0.00000092

   4    1  |0 0>           0.00130949  0.00000000  0.00000000 -0.00000000 -0.00584269  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00584274 -0.00000000  0.00000000 -0.00000000 -0.00130961  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+          0.57734723  0.00000000 -0.00000000 -0.00000000 -0.00230116  0.00431372
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00423387 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000009  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000  0.00423034 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00019431 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00019423  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00422863 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00422027 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00032905 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.57735068 -0.00000000  0.00000000  0.00000000 -0.00258445 -0.00414945

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00423387 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.57735290  0.00000000 -0.00000000 -0.00000000  0.00488641 -0.00016307

   3    1  |1 1>-         -0.00000000 -0.00422197 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00032918 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |0 0>           0.00000000 -0.00000000  0.99892888 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.04588295 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.99998207  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00002208 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.07773142 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.99695635  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000049  0.00000000 -0.00000000 -0.00000000  0.99997490  0.00378670
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000067  0.00000000 -0.00000000 -0.00000000 -0.00378670  0.99997490
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -75.03637473     -0.00034093      -74.82      0.00000000        0.00      0.0000
     2   1    -75.03637473     -0.00034093      -74.82      0.00000000        0.00      0.0000
     3   1    -75.03637472     -0.00034092      -74.82      0.00000000        0.00      0.0000
     4   1    -75.03637472     -0.00034092      -74.82      0.00000001        0.00      0.0000
     5   1    -75.03637472     -0.00034092      -74.82      0.00000001        0.00      0.0000
     6   1    -75.03569552      0.00033828       74.24      0.00067920      149.07      0.0185
     7   1    -75.03569552      0.00033828       74.24      0.00067921      149.07      0.0185
     8   1    -75.03569552      0.00033828       74.24      0.00067921      149.07      0.0185
     9   1    -75.03535724      0.00067656      148.49      0.00101748      223.31      0.0277
    10   1    -74.96242675      0.07360705    16154.88      0.07394798    16229.70      2.0122
    11   1    -74.96242675      0.07360705    16154.88      0.07394798    16229.71      2.0122
    12   1    -74.96242672      0.07360708    16154.89      0.07394801    16229.71      2.0122
    13   1    -74.96242656      0.07360724    16154.92      0.07394816    16229.75      2.0122
    14   1    -74.96242655      0.07360725    16154.92      0.07394818    16229.75      2.0122

 E0 =    -75.03603380 is the energy of the lowest zeroth-order state
 E1 =    -75.03637473 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.78779596  0.00000000 -0.00000000 -0.00000000 -0.21453157  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000  0.66842057 -0.00000000  0.00000000 -0.00000000  0.70706261  0.00000000
                               -0.00000000 -0.00000000 -0.23062674  0.00000000  0.00000000 -0.00000000  0.00835400 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.67519679  0.00000000 -0.00000000 -0.00000000  0.70710894  0.00000000  0.00000000
                               -0.00000000  0.20997217 -0.00000000 -0.00000000  0.00000000  0.00000080 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.20997346  0.00000000  0.00000000 -0.00000000  0.00000080 -0.00000000 -0.00000000
                               -0.00000000  0.67520092  0.00000000 -0.00000000 -0.00000000 -0.70710462 -0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.70709058 -0.00000001 -0.00000000 -0.00000000  0.55374675
                               -0.00000000 -0.00000000  0.00000000 -0.00085038  0.00000000 -0.00000000 -0.00000000 -0.43973720

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.57968377 -0.00000000  0.00000000 -0.00000001 -0.57498611  0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00000000  0.23063012 -0.00000000 -0.00000000 -0.00000000  0.00835388 -0.00000000
                                0.00000000 -0.00000000  0.66843036 -0.00000000  0.00000000  0.00000000 -0.70705226 -0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.20810669 -0.00000000 -0.00000000  0.00000001  0.78951335  0.00000000 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.70709661 -0.00000001  0.00000000  0.00000000 -0.55374202
                               -0.00000000 -0.00000000  0.00000000 -0.00085039  0.00000000  0.00000000  0.00000000  0.43973345

 10  1     1    1  |0 0>        0.00000000 -0.00571761 -0.00000000  0.00000000  0.00000000 -0.00000122 -0.00000000 -0.00000000
                                0.00000000 -0.00177806  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000  0.00566015 -0.00000000  0.00000000 -0.00000000  0.00000005  0.00000000
                               -0.00000000 -0.00000000 -0.00195294  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000720 -0.00000000 -0.00000000 -0.00000000 -0.00000073
                                0.00000000  0.00000000  0.00000000  0.00598768 -0.00000000  0.00000000  0.00000000 -0.00000092

 13  1     4    1  |0 0>        0.00130949  0.00000000  0.00000000 -0.00000000 -0.00584269  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00584274 -0.00000000  0.00000000 -0.00000000 -0.00130961  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+       0.57734723  0.00000000 -0.00000000 -0.00000000 -0.00230116  0.00431372
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00423387 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000009  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.00000000  0.00423034 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00019431 -0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00019423  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00422863 -0.00000000  0.00000000  0.00000000

  5  1     2    1  |1 0>       -0.00000000 -0.00422027 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00032905 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.57735068 -0.00000000  0.00000000  0.00000000 -0.00258445 -0.00414945

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00423387 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.57735290  0.00000000 -0.00000000 -0.00000000  0.00488641 -0.00016307

  9  1     3    1  |1 1>-      -0.00000000 -0.00422197 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00032918 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     1    1  |0 0>        0.00000000 -0.00000000  0.99892888 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.04588295 -0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.99998207  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00002208 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000 -0.07773142 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.99695635  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000049  0.00000000 -0.00000000 -0.00000000  0.99997490  0.00378670
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000067  0.00000000 -0.00000000 -0.00000000 -0.00378670  0.99997490
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        62.06%    0.00%    0.00%    0.00%    4.60%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  3  1     3    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  6  1     3    1  |1 0>         33.60%    0.00%    0.00%    0.00%   33.06%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  8  1     2    1  |1 1>-         4.33%    0.00%    0.00%    0.00%   62.33%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+        33.33%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         33.33%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.33%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.99%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   99.99%


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

              2       7        2.17       700     1000      520     2100     2140     5202     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.41      1.86      0.31      0.25      0.29      0.04      0.44
 REAL TIME  *         4.77 SEC
 DISK USED  *        31.35 MB (local),      253.80 MB (total)
 SF USED    *        19.26 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -74.962426551424

              CI              CI           MULTI         RHF-SCF
    -74.95501392    -75.02859299    -74.77565179    -74.85867808
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
