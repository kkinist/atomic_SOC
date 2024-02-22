
 Working directory              : /wrk/irikura/molpro.cxDbyYsKmu/
 Global scratch directory       : /wrk/irikura/molpro.cxDbyYsKmu/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.cxDbyYsKmu/

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
         weight,all,99
     wf,sym=1,spin=0;state,6;
         weight,all,1
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
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 14:09:56  
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

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

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
 REAL TIME  *         1.71 SEC
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
   1      -74.83530778     -74.83530778     0.00D+00     0.12D+00     0     0       0.00      0.00    start
   2      -74.85667378      -0.02136600     0.11D-01     0.14D-01     1     0       0.00      0.00    diag2
   3      -74.85844976      -0.00177597     0.49D-02     0.37D-02     2     0       0.00      0.00    diag2
   4      -74.85865869      -0.00020894     0.94D-03     0.12D-02     3     0       0.01      0.01    diag2
   5      -74.85867756      -0.00001886     0.22D-03     0.44D-03     4     0       0.00      0.01    diag2
   6      -74.85867807      -0.00000051     0.36D-04     0.76D-04     5     0       0.00      0.01    diag2
   7      -74.85867808      -0.00000001     0.51D-05     0.13D-04     6     0       0.00      0.01    diag2
   8      -74.85867808      -0.00000000     0.32D-06     0.53D-06     7     0       0.00      0.01    fixocc
   9      -74.85867808      -0.00000000     0.33D-07     0.46D-07     0     0       0.01      0.02    diag

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   1

 !RHF STATE 1.1 Energy                -74.858678078460
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
    2.2     1.00000    -0.70241     1  1  py   1.02036
    3.2     1.00000    -0.70241     1  1  pz   1.02036


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
 CPU TIMES  *         0.67      0.02      0.45
 REAL TIME  *         1.74 SEC
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
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.887D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.742D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 4 3 5 1 6   2 4 3 5 1 6 2 4 3 5   1 6 2 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.856D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.212D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.229D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 2 1 5   6 4 8 910 7 3 2 1 5   6 8 4 910 7 3 2 1 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    207
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0    -74.85166065     -74.85392274   -0.00226210    0.05853934 0.00005065 0.00000000  0.47E-01      0.11
   2    4    8    0    -74.85393410     -74.85393426   -0.00000016    0.00061678 0.00000010 0.00000000  0.34E-03      0.23
   3    5   10    0    -74.85393426     -74.85393426    0.00000000    0.00000007 0.00000000 0.00000000  0.27E-07      0.29

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.38E-08)
                       Final energy:    -74.85393426
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -74.855746743869
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.19297232
 One electron energy                          -103.31369242
 Two electron energy                            28.45794567
 Virial ratio                                    1.99551520
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -74.855746743428
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.19297233
 One electron energy                          -103.31369243
 Two electron energy                            28.45794568
 Virial ratio                                    1.99551520
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -74.855746743423
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.19297233
 One electron energy                          -103.31369243
 Two electron energy                            28.45794568
 Virial ratio                                    1.99551520
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -74.775231187557
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.19297232
 One electron energy                          -103.31369242
 Two electron energy                            28.53846123
 Virial ratio                                    1.99444441
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -74.775231187556
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.19297232
 One electron energy                          -103.31369242
 Two electron energy                            28.53846123
 Virial ratio                                    1.99444441
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -74.775231187313
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.19297233
 One electron energy                          -103.31369243
 Two electron energy                            28.53846124
 Virial ratio                                    1.99444441
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -74.775231187311
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.19297233
 One electron energy                          -103.31369243
 Two electron energy                            28.53846124
 Virial ratio                                    1.99444441
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -74.775231187229
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.19297234
 One electron energy                          -103.31369243
 Two electron energy                            28.53846125
 Virial ratio                                    1.99444441
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -74.709143493288
 Nuclear energy                                  0.00000000
 Kinetic energy                                 75.16426689
 One electron energy                          -103.26267584
 Two electron energy                            28.55353235
 Virial ratio                                    1.99394495
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999999
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     4.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999916508628
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.999999999941
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999998168
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.000083296815
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999421
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000579
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.984215568407
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000162512
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999838230
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.015765671792
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000000580
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999421
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.015867922965
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999837547
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000163602
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.984151031393
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 6 4 2 1 5   3 6 2 4 1 3 5 6 4 2   1 3 5 6 4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 3 1 3 2 1 9   7 810 5 6 4 2 1 3 9   710 8 5 6 4 2 1 3 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -20.68343     1  1  s    0.99923
    2.1     1.99975    -1.25153     1  2  s    1.00866
    1.2     1.33342    -0.36952     1  1  pz   0.99672
    2.2     1.33342    -0.36952     1  1  px   0.99672
    3.2     1.33342    -0.36952     1  1  py   0.99672
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a2a          1.00000000     -0.00000000     -0.00000000
 2 2aa          0.00000000      1.00000000      0.00002406
 2 aa2          0.00000000     -0.00002406      1.00000000
 
 Energy:      -74.85574674    -74.85574674    -74.85574674
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202         -0.00000000     -0.00373030     -0.00001530     -0.00004094      0.81648806      0.56619935
 2 220          0.00000000      0.70896455      0.00000205      0.00001532     -0.40501349      0.56619935
 2 a2b          0.70710678     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2 b2a         -0.70710678      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 2 2ba          0.00000000     -0.00000554     -0.70710676      0.00016390     -0.00001327      0.00000000
 2 2ab         -0.00000000      0.00000554      0.70710676     -0.00016390      0.00001327     -0.00000000
 2 ab2         -0.00000000      0.00000499      0.00016390      0.70710676      0.00003548     -0.00000000
 2 ba2          0.00000000     -0.00000499     -0.00016390     -0.70710676     -0.00003548      0.00000000
 2 022         -0.00000000     -0.70523425      0.00001325      0.00002562     -0.41147457      0.56619935
 0 222         -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.19558856
 
 Energy:      -74.77523119    -74.77523119    -74.77523119    -74.77523119    -74.77523119    -74.70914349
 


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
 CPU TIMES  *         0.99      0.32      0.02      0.45
 REAL TIME  *         2.15 SEC
 DISK USED  *        29.75 MB (local),      169.87 MB (total)
 SF USED    *         1.21 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -74.85574674   2.0
    -74.85574674   2.0
    -74.85574674   2.0
    -74.77523119   6.0
    -74.77523119   6.0
    -74.77523119   6.0
    -74.77523119   6.0
    -74.77523119   6.0
    -74.70914349  -0.0
                                                  


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
     1       -74.85574674
     2       -74.85574674
     3       -74.85574674

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
    1     1     1     1.00000000     0.00000000   -74.85574674     0.00000000    -0.18194637  0.17D-01  0.27D-01     0.00
    1     2     2     1.00000000     0.00000000   -74.85574674     0.00000000    -0.18183860  0.16D-01  0.27D-01     0.00
    1     3     3     1.00000000     0.00000000   -74.85574674    -0.00000000    -0.18201551  0.17D-01  0.27D-01     0.00
    2     1     1     1.03846039    -0.17062789   -75.02637463    -0.17062789    -0.00200594  0.30D-03  0.24D-03     0.04
    2     2     2     1.03848470    -0.17062526   -75.02637200    -0.17062526    -0.00200573  0.30D-03  0.24D-03     0.04
    2     3     3     1.03843366    -0.17062004   -75.02636678    -0.17062004    -0.00201467  0.31D-03  0.24D-03     0.04
    3     1     1     1.04128814    -0.17288553   -75.02863227    -0.00225764    -0.00012017  0.60D-04  0.12D-04     0.08
    3     2     2     1.04128780    -0.17288531   -75.02863206    -0.00226005    -0.00012038  0.60D-04  0.12D-04     0.08
    3     3     3     1.04128357    -0.17288483   -75.02863157    -0.00226479    -0.00012050  0.60D-04  0.12D-04     0.08
    4     1     1     1.04315933    -0.17305923   -75.02880598    -0.00017371    -0.00000980  0.18D-05  0.17D-05     0.11
    4     2     2     1.04315769    -0.17305917   -75.02880592    -0.00017386    -0.00000985  0.18D-05  0.17D-05     0.11
    4     3     3     1.04315652    -0.17305910   -75.02880585    -0.00017428    -0.00000989  0.18D-05  0.17D-05     0.11
    5     1     1     1.04335046    -0.17307177   -75.02881851    -0.00001254    -0.00000068  0.29D-06  0.73D-07     0.15
    5     2     2     1.04335061    -0.17307177   -75.02881851    -0.00001260    -0.00000068  0.29D-06  0.73D-07     0.15
    5     3     3     1.04335045    -0.17307176   -75.02881851    -0.00001266    -0.00000068  0.29D-06  0.73D-07     0.15
    6     1     1     1.04335795    -0.17307256   -75.02881931    -0.00000079    -0.00000004  0.68D-08  0.68D-08     0.18
    6     2     2     1.04335796    -0.17307256   -75.02881931    -0.00000080    -0.00000004  0.69D-08  0.68D-08     0.18
    6     3     3     1.04335793    -0.17307256   -75.02881931    -0.00000080    -0.00000004  0.69D-08  0.68D-08     0.18
    7     1     1     1.04337345    -0.17307261   -75.02881936    -0.00000005    -0.00000000  0.99D-09  0.33D-09     0.22
    7     2     2     1.04337346    -0.17307261   -75.02881936    -0.00000005    -0.00000000  0.99D-09  0.33D-09     0.22
    7     3     3     1.04337344    -0.17307261   -75.02881936    -0.00000005    -0.00000000  0.99D-09  0.33D-09     0.22


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.5%
 S   0.0%   0.0%
 P   0.0%   4.5%  22.7%

 Initialization:   0.0%
 Other:           68.2%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22//           0.0000000   0.0000000   0.9789942
 2/2/           0.9789942   0.0000000   0.0000000
 2//2           0.0000000   0.9789942   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.978994    0.000000    0.000000
 2           0.000000    0.000000    0.978994
 3           0.000000    0.978994    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.978994    0.000000    0.000000
 2           0.000000    0.978994    0.000000
 3           0.000000    0.000000    0.978994


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97899418 (fixed)   0.97899418 (relaxed)   0.97899418 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.12445927
 Singles      0.01752431   -0.04321511   -0.04432641
 Pairs        0.02584914   -0.00000000   -0.00428693
 Total        1.04337345   -0.04321511   -0.17307261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.85574674
 Nuclear energy                         0.00000000
 Kinetic energy                        75.34652698
 One electron energy                 -103.12263836
 Two electron energy                   28.09381900
 Virial quotient                       -0.99578338
 Correlation energy                    -0.17307261
 !MRCI STATE 1.1 Energy               -75.028819355843

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.03632611 (Davidson, fixed reference)
 Cluster corrected energies           -75.03632611 (Davidson, relaxed reference)
 Cluster corrected energies           -75.03632611 (Davidson, rotated reference)

 Cluster corrected energies           -75.03257097 (Pople, fixed reference)
 Cluster corrected energies           -75.03257097 (Pople, relaxed reference)
 Cluster corrected energies           -75.03257097 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97899417 (fixed)   0.97899417 (relaxed)   0.97899417 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000    0.00000000
 Singles      0.01752436   -0.04321516   -0.04432641
 Pairs        0.02584910   -0.12985745   -0.12874620
 Total        1.04337346   -0.17307261   -0.17307261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.85574674
 Nuclear energy                         0.00000000
 Kinetic energy                        75.34652853
 One electron energy                 -103.12263913
 Two electron energy                   28.09381978
 Virial quotient                       -0.99578336
 Correlation energy                    -0.17307261
 !MRCI STATE 2.1 Energy               -75.028819355822

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.03632611 (Davidson, fixed reference)
 Cluster corrected energies           -75.03632611 (Davidson, relaxed reference)
 Cluster corrected energies           -75.03632611 (Davidson, rotated reference)

 Cluster corrected energies           -75.03257097 (Pople, fixed reference)
 Cluster corrected energies           -75.03257097 (Pople, relaxed reference)
 Cluster corrected energies           -75.03257097 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97899419 (fixed)   0.97899419 (relaxed)   0.97899419 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.12445927
 Singles      0.01752429   -0.04321512   -0.04432641
 Pairs        0.02584914    0.00000000   -0.00428693
 Total        1.04337344   -0.04321512   -0.17307261
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.85574674
 Nuclear energy                         0.00000000
 Kinetic energy                        75.34652644
 One electron energy                 -103.12263793
 Two electron energy                   28.09381857
 Virial quotient                       -0.99578339
 Correlation energy                    -0.17307261
 !MRCI STATE 3.1 Energy               -75.028819355781

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -75.03632611 (Davidson, fixed reference)
 Cluster corrected energies           -75.03632611 (Davidson, relaxed reference)
 Cluster corrected energies           -75.03632611 (Davidson, rotated reference)

 Cluster corrected energies           -75.03257097 (Pople, fixed reference)
 Cluster corrected energies           -75.03257097 (Pople, relaxed reference)
 Cluster corrected energies           -75.03257097 (Pople, rotated reference)



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
 CPU TIMES  *         1.28      0.27      0.32      0.02      0.45
 REAL TIME  *         2.46 SEC
 DISK USED  *        30.45 MB (local),      173.36 MB (total)
 SF USED    *         6.45 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -75.03632611  AU                              
 SETTING HLSDIAG(2)     =       -75.03632611  AU                              
 SETTING HLSDIAG(3)     =       -75.03632611  AU                              


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
     1       -74.77523119
     2       -74.77523119
     3       -74.77523119
     4       -74.77523119
     5       -74.77523119
     6       -74.70914349

 Number of blocks in overlap matrix:    18   Smallest eigenvalue:  0.55D-01
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
    1     1     1     1.00000000     0.00000000   -74.77523119    -0.00000000    -0.18491808  0.15D-01  0.27D-01     0.01
    1     2     2     1.00000000     0.00000000   -74.77523119    -0.00000000    -0.18378630  0.15D-01  0.26D-01     0.01
    1     3     3     1.00000000     0.00000000   -74.77523119    -0.00000000    -0.18519717  0.15D-01  0.27D-01     0.01
    1     4     4     1.00000000     0.00000000   -74.77523119    -0.00000000    -0.18480354  0.15D-01  0.27D-01     0.01
    1     5     5     1.00000000     0.00000000   -74.77523119    -0.00000000    -0.18394531  0.15D-01  0.26D-01     0.01
    1     6     6     1.00000000     0.00000000   -74.70914349    -0.00000000    -0.16648922  0.46D-02  0.31D-01     0.01
    2     1     1     1.03826100    -0.17697760   -74.95220879    -0.17697760    -0.00288600  0.22D-03  0.38D-03     0.07
    2     2     2     1.03831900    -0.17696345   -74.95219464    -0.17696345    -0.00291483  0.23D-03  0.38D-03     0.07
    2     3     3     1.03814936    -0.17694319   -74.95217438    -0.17694319    -0.00289220  0.23D-03  0.37D-03     0.07
    2     4     4     1.03831498    -0.17691164   -74.95214282    -0.17691164    -0.00296501  0.24D-03  0.38D-03     0.07
    2     5     5     1.03814755    -0.17685032   -74.95208151    -0.17685032    -0.00298817  0.26D-03  0.38D-03     0.07
    2     6     6     1.03415428    -0.16234709   -74.87149058    -0.16234709    -0.00255888  0.20D-03  0.35D-03     0.07
    3     1     1     1.04089642    -0.17992378   -74.95515496    -0.00294617    -0.00012240  0.41D-04  0.14D-04     0.15
    3     2     2     1.04090649    -0.17992311   -74.95515430    -0.00295966    -0.00012333  0.42D-04  0.14D-04     0.15
    3     3     3     1.04090181    -0.17992230   -74.95515349    -0.00297911    -0.00012441  0.41D-04  0.14D-04     0.15
    3     4     4     1.04085831    -0.17991506   -74.95514624    -0.00300342    -0.00012730  0.41D-04  0.15D-04     0.15
    3     5     5     1.04083032    -0.17990827   -74.95513946    -0.00305795    -0.00013316  0.42D-04  0.15D-04     0.15
    3     6     6     1.03682993    -0.16492107   -74.87406456    -0.00257398    -0.00015415  0.90D-04  0.13D-04     0.15
    4     1     1     1.04214231    -0.18007374   -74.95530493    -0.00014996    -0.00000860  0.18D-05  0.14D-05     0.24
    4     2     2     1.04214281    -0.18007368   -74.95530487    -0.00015057    -0.00000864  0.18D-05  0.14D-05     0.24
    4     3     3     1.04214023    -0.18007368   -74.95530486    -0.00015137    -0.00000865  0.18D-05  0.15D-05     0.24
    4     4     4     1.04213420    -0.18007249   -74.95530368    -0.00015743    -0.00000937  0.21D-05  0.15D-05     0.24
    4     5     5     1.04212486    -0.18007201   -74.95530320    -0.00016374    -0.00000972  0.23D-05  0.15D-05     0.24
    4     6     6     1.03846054    -0.16510016   -74.87424366    -0.00017909    -0.00001434  0.32D-05  0.21D-05     0.24
    5     1     1     1.04233098    -0.18008470   -74.95531589    -0.00001096    -0.00000062  0.12D-06  0.90D-07     0.31
    5     2     2     1.04233008    -0.18008469   -74.95531588    -0.00001101    -0.00000063  0.12D-06  0.90D-07     0.31
    5     3     3     1.04233043    -0.18008469   -74.95531588    -0.00001101    -0.00000063  0.12D-06  0.91D-07     0.31
    5     4     4     1.04232749    -0.18008457   -74.95531576    -0.00001208    -0.00000072  0.12D-06  0.10D-06     0.31
    5     5     5     1.04232592    -0.18008452   -74.95531571    -0.00001251    -0.00000075  0.13D-06  0.10D-06     0.31
    5     6     6     1.03875989    -0.16511719   -74.87426069    -0.00001703    -0.00000120  0.20D-06  0.19D-06     0.31
    6     1     1     1.04233457    -0.18008544   -74.95531662    -0.00000074    -0.00000003  0.56D-08  0.39D-08     0.37
    6     2     2     1.04233457    -0.18008544   -74.95531662    -0.00000074    -0.00000003  0.58D-08  0.39D-08     0.37
    6     3     3     1.04233476    -0.18008544   -74.95531662    -0.00000075    -0.00000003  0.61D-08  0.38D-08     0.37
    6     4     4     1.04233380    -0.18008543   -74.95531662    -0.00000086    -0.00000004  0.78D-08  0.44D-08     0.37
    6     5     5     1.04233340    -0.18008543   -74.95531661    -0.00000090    -0.00000004  0.89D-08  0.45D-08     0.37
    6     6     6     1.03878817    -0.16511860   -74.87426209    -0.00000140    -0.00000008  0.30D-07  0.89D-08     0.37
    7     1     1     1.04234120    -0.18008547   -74.95531666    -0.00000004    -0.00000000  0.15D-09  0.20D-09     0.41
    7     2     2     1.04234119    -0.18008547   -74.95531666    -0.00000004    -0.00000000  0.16D-09  0.21D-09     0.41
    7     3     3     1.04233457    -0.18008544   -74.95531662    -0.00000000    -0.00000003  0.56D-08  0.39D-08     0.41
    7     4     4     1.04233457    -0.18008544   -74.95531662    -0.00000001    -0.00000003  0.58D-08  0.39D-08     0.41
    7     5     5     1.04233476    -0.18008544   -74.95531662    -0.00000001    -0.00000003  0.61D-08  0.38D-08     0.41
    7     6     6     1.03880737    -0.16511869   -74.87426218    -0.00000009    -0.00000000  0.84D-10  0.48D-09     0.41


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   2.4%   9.8%  29.3%

 Initialization:   0.0%
 Other:           58.5%

 Total CPU:        0.4 seconds
 =====================================



 Wavefunction saved on  5200.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/2\           0.0000000   0.0000000   0.9794819   0.0000000   0.0000000   0.0000000
 22/\           0.0000000   0.0000000   0.0000000   0.9794819   0.0000000   0.0000000
 2/\2           0.0000000   0.0000000   0.0000000   0.0000000   0.9794818   0.0000000
 2022           0.7928322  -0.1048945   0.0000000   0.0000000   0.0000000   0.5556678
 2220          -0.3055748   0.7390601   0.0000000   0.0000000   0.0000000   0.5556676
 2202          -0.4872574  -0.6341656   0.0000000   0.0000000   0.0000000   0.5556677
 0222          -0.0000002   0.0000001   0.0000000   0.0000000   0.0000000  -0.1906373

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \2/\  10.1     0.0000000  -0.0000000  -0.0000000  -0.0561655   0.0000000   0.0000000
 \2/\  11.1     0.0068187   0.0557572  -0.0000000   0.0000000   0.0000000   0.0049454
 \/\2  14.1    -0.0516966  -0.0219734   0.0000000   0.0000000   0.0000000   0.0049452

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.773952    0.000000    0.000000   -0.600314    0.000000
 2           0.000000    0.600314    0.000000    0.000000   -0.773952   -0.000000
 3           0.979482    0.000000    0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.979482    0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.979482    0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.981143

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.979479    0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.979479   -0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.979482    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.979482    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.979482    0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.981143


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.77395240 (fixed)   0.97947882 (relaxed)   0.97947882 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.12980916
 Singles      0.01511316   -0.04478007   -0.04557304
 Pairs        0.02722804    0.00000003   -0.00470327
 Total        1.04234120   -0.04478004   -0.18008547
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77523119
 Nuclear energy                         0.00000000
 Kinetic energy                        75.28429033
 One electron energy                 -103.02727008
 Two electron energy                   28.07195342
 Virial quotient                       -0.99563025
 Correlation energy                    -0.18008547
 !MRCI STATE 1.1 Energy               -74.955316659688

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96294169 (Davidson, fixed reference)
 Cluster corrected energies           -74.96294169 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96294169 (Davidson, rotated reference)

 Cluster corrected energies           -74.96047068 (Pople, fixed reference)
 Cluster corrected energies           -74.96047068 (Pople, relaxed reference)
 Cluster corrected energies           -74.96047068 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.77395241 (fixed)   0.97947882 (relaxed)   0.97947882 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.12980908
 Singles      0.01511326   -0.04478012   -0.04557302
 Pairs        0.02722793    0.00000000   -0.00470337
 Total        1.04234119   -0.04478012   -0.18008547
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77523119
 Nuclear energy                         0.00000000
 Kinetic energy                        75.28428229
 One electron energy                 -103.02726337
 Two electron energy                   28.07194671
 Virial quotient                       -0.99563035
 Correlation energy                    -0.18008547
 !MRCI STATE 2.1 Energy               -74.955316659547

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96294169 (Davidson, fixed reference)
 Cluster corrected energies           -74.96294169 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96294169 (Davidson, rotated reference)

 Cluster corrected energies           -74.96047068 (Pople, fixed reference)
 Cluster corrected energies           -74.96047068 (Pople, relaxed reference)
 Cluster corrected energies           -74.96047068 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97948193 (fixed)   0.97948193 (relaxed)   0.97948193 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.12981390
 Singles      0.01510656   -0.04477592   -0.04557225
 Pairs        0.02722801    0.00000000   -0.00469929
 Total        1.04233457   -0.04477592   -0.18008544
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77523119
 Nuclear energy                         0.00000000
 Kinetic energy                        75.28465956
 One electron energy                 -103.02755529
 Two electron energy                   28.07223866
 Virial quotient                       -0.99562536
 Correlation energy                    -0.18008544
 !MRCI STATE 3.1 Energy               -74.955316624548

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96294046 (Davidson, fixed reference)
 Cluster corrected energies           -74.96294046 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96294046 (Davidson, rotated reference)

 Cluster corrected energies           -74.96046982 (Pople, fixed reference)
 Cluster corrected energies           -74.96046982 (Pople, relaxed reference)
 Cluster corrected energies           -74.96046982 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97948193 (fixed)   0.97948193 (relaxed)   0.97948193 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.12981374
 Singles      0.01510660   -0.04477609   -0.04557226
 Pairs        0.02722797    0.00000000   -0.00469944
 Total        1.04233457   -0.04477609   -0.18008544
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77523119
 Nuclear energy                         0.00000000
 Kinetic energy                        75.28467960
 One electron energy                 -103.02757014
 Two electron energy                   28.07225351
 Virial quotient                       -0.99562510
 Correlation energy                    -0.18008544
 !MRCI STATE 4.1 Energy               -74.955316624115

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96294046 (Davidson, fixed reference)
 Cluster corrected energies           -74.96294046 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96294046 (Davidson, rotated reference)

 Cluster corrected energies           -74.96046982 (Pople, fixed reference)
 Cluster corrected energies           -74.96046982 (Pople, relaxed reference)
 Cluster corrected energies           -74.96046982 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97948184 (fixed)   0.97948184 (relaxed)   0.97948184 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.12981396
 Singles      0.01510627   -0.04477583   -0.04557227
 Pairs        0.02722849    0.00000000   -0.00469921
 Total        1.04233476   -0.04477583   -0.18008544
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.77523119
 Nuclear energy                         0.00000000
 Kinetic energy                        75.28470163
 One electron energy                 -103.02759240
 Two electron energy                   28.07227578
 Virial quotient                       -0.99562481
 Correlation energy                    -0.18008544
 !MRCI STATE 5.1 Energy               -74.955316623853

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.96294050 (Davidson, fixed reference)
 Cluster corrected energies           -74.96294050 (Davidson, relaxed reference)
 Cluster corrected energies           -74.96294050 (Davidson, rotated reference)

 Cluster corrected energies           -74.96046985 (Pople, fixed reference)
 Cluster corrected energies           -74.96046985 (Pople, relaxed reference)
 Cluster corrected energies           -74.96046985 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.98114256 (fixed)   0.98114340 (relaxed)   0.98114256 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000172    0.00000000   -0.00000027
 Singles      0.00559123   -0.00679782   -0.00743278
 Pairs        0.03321621   -0.15832087   -0.15768564
 Total        1.03880916   -0.16511869   -0.16511869
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -74.70914349
 Nuclear energy                         0.00000000
 Kinetic energy                        75.21011157
 One electron energy                 -102.88998560
 Two electron energy                   28.01572342
 Virial quotient                       -0.99553452
 Correlation energy                    -0.16511869
 !MRCI STATE 6.1 Energy               -74.874262179809

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -74.88067030 (Davidson, fixed reference)
 Cluster corrected energies           -74.88067000 (Davidson, relaxed reference)
 Cluster corrected energies           -74.88067030 (Davidson, rotated reference)

 Cluster corrected energies           -74.87858876 (Pople, fixed reference)
 Cluster corrected energies           -74.87858856 (Pople, relaxed reference)
 Cluster corrected energies           -74.87858876 (Pople, rotated reference)



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
 CPU TIMES  *         1.76      0.48      0.27      0.32      0.02      0.45
 REAL TIME  *         3.02 SEC
 DISK USED  *        31.65 MB (local),      179.38 MB (total)
 SF USED    *        12.29 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =       -74.96294169  AU                              
 SETTING HLSDIAG(5)     =       -74.96294169  AU                              
 SETTING HLSDIAG(6)     =       -74.96294046  AU                              
 SETTING HLSDIAG(7)     =       -74.96294046  AU                              
 SETTING HLSDIAG(8)     =       -74.96294050  AU                              
 SETTING HLSDIAG(9)     =       -74.88067030  AU                              


        HLSDIAG
    -75.03632611
    -75.03632611
    -75.03632611
    -74.96294169
    -74.96294169
    -74.96294046
    -74.96294046
    -74.96294050
    -74.88067030
                                                  

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
 SORTLS2 read      952724. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec

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
 CPU TIMES  *         2.71      0.95      0.48      0.27      0.32      0.02      0.45
 REAL TIME  *         4.04 SEC
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

 Original energies:    -75.028819    -75.028819    -75.028819
 Replaced energies:    -75.036326    -75.036326    -75.036326

 Wavefunction restored from record  5200.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:    -74.955317    -74.955317    -74.955317    -74.955317    -74.955317    -74.874262
 Replaced energies:    -74.962942    -74.962942    -74.962940    -74.962940    -74.962940    -74.880670



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -75.03632611

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      52.55       0.00       0.00       0.00      -0.00
                           -0.00     -74.32       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -34.19

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      21.44
                           74.32       0.00      -0.00       0.00       0.00      52.55       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00     -52.55      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00     -52.55       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00      -0.00     -52.55       0.00       0.00       0.00      -0.00       0.00      52.55       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

    5   2.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      52.55      -0.00       0.00       0.00       0.00       0.00      52.55       0.00

    6   3.1  1.0  0.0      52.55       0.00       0.00       0.00       0.00       0.00     -52.55      -0.00       0.00       0.00
                            0.00     -52.55      -0.00      -0.00      -0.00       0.00       0.00     -52.55       0.00      78.66

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00     -52.55       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      74.32      -0.00      34.19

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      21.44
                           -0.00      -0.00      -0.00       0.00      -0.00      52.55     -74.32      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      52.55       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     -52.55      -0.00       0.00      -0.00      -0.00      -0.00

   10   1.1  0.0  0.0      -0.00      21.44      -0.00       0.00       0.00       0.00      -0.00      21.44      -0.00   16106.02
                           34.19      -0.00      -0.00      -0.00      -0.00     -78.66     -34.19       0.00       0.00       0.00

   11   2.1  0.0  0.0      -0.00     -51.85       0.00       0.00       0.00       0.00      -0.00     -51.85       0.00       0.00
                           44.49      -0.00      -0.00      -0.00      -0.00      10.41     -44.49       0.00       0.00      -0.00

   12   3.1  0.0  0.0       0.00      -0.00      48.58       0.00       0.00       0.00       0.00      -0.00      48.58       0.00
                           -0.00       0.00       0.00      -0.00      68.73      -0.00       0.00      -0.00      -0.00      -0.00

   13   4.1  0.0  0.0     -48.60      -0.00       0.00       0.00       0.00       0.00     -48.60      -0.00       0.00       0.00
                           -0.00     -48.59       0.00      -0.00      -0.00       0.00       0.00      48.59      -0.00      -0.00

   14   5.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00     -48.58     -68.74      -0.00       0.00      -0.00       0.00      48.58      -0.00

   15   6.1  0.0  0.0       0.00      81.08      -0.00       0.00       0.00       0.00       0.00      81.08      -0.00       0.00
                           81.06       0.00      -0.00      -0.00       0.00     114.70     -81.06      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00       0.00     -48.60      -0.00       0.00
                          -44.49       0.00       0.00      -0.00     -81.06

    2   2.1  1.0  1.0     -51.85      -0.00      -0.00       0.00      81.08
                            0.00      -0.00      48.59       0.00      -0.00

    3   3.1  1.0  1.0       0.00      48.58       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      48.58       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      68.74       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00     -68.73       0.00       0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          -10.41       0.00      -0.00      -0.00    -114.70

    7   1.1  1.0 -1.0      -0.00       0.00     -48.60      -0.00       0.00
                           44.49      -0.00      -0.00       0.00      81.06

    8   2.1  1.0 -1.0     -51.85      -0.00      -0.00       0.00      81.08
                           -0.00       0.00     -48.59      -0.00       0.00

    9   3.1  1.0 -1.0       0.00      48.58       0.00       0.00      -0.00
                           -0.00       0.00       0.00     -48.58      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0   16106.02       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00   16106.29       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00   16106.29       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00   16106.28       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   34162.50
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by    -75.03632611 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000     -74.318

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      74.318      74.318       0.000

    3    1  |1 1>+              0.000       0.000       0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -74.318       0.000      -0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      74.318      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.001      74.318       0.000
                                0.000     -74.318       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      74.318       0.000       0.000
                               -0.000     -74.318       0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               74.318       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000     -74.318      -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000      30.315      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000     -78.660      48.345      -0.000

    2    1  |0 0>              -0.000     -73.329       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      10.405      62.924      -0.000

    3    1  |0 0>               0.000      -0.000      68.707       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      68.728      -0.000      -0.000       0.000

    4    1  |0 0>             -68.734      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000     -68.713

    5    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -68.742      -0.000       0.000       0.000      -0.000

    6    1  |0 0>               0.000     114.666      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     114.701     114.631       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000      -0.000       0.000     -68.734      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      30.315     -73.329      -0.000      -0.000       0.000     114.666
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000       0.000      68.707       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>             -74.318       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      68.742       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -68.728       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      78.660     -10.405       0.000      -0.000      -0.000    -114.701

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -48.345     -62.924       0.000       0.000      -0.000    -114.631

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      68.713       0.000      -0.000

    3    1  |1 1>-              0.001       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      68.699       0.000

    1    1  |0 0>               0.000   16106.018       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000   16106.019       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000   16106.289       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000   16106.289       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000   16106.281       0.000
                              -68.699      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   34162.503
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -75.03666739    -0.00034128      -74.90      0.00000000        0.00      0.0000
    2   -75.03666739    -0.00034128      -74.90      0.00000000        0.00      0.0000
    3   -75.03666739    -0.00034127      -74.90      0.00000000        0.00      0.0000
    4   -75.03666739    -0.00034127      -74.90      0.00000000        0.00      0.0000
    5   -75.03666739    -0.00034127      -74.90      0.00000000        0.00      0.0000
    6   -75.03598750     0.00033862       74.32      0.00067990      149.22      0.0185
    7   -75.03598749     0.00033862       74.32      0.00067990      149.22      0.0185
    8   -75.03598749     0.00033862       74.32      0.00067990      149.22      0.0185
    9   -75.03565416     0.00067195      147.48      0.00101323      222.38      0.0276
   10   -74.96293904     0.07338708    16106.60      0.07372835    16181.50      2.0063
   11   -74.96293903     0.07338708    16106.60      0.07372836    16181.50      2.0063
   12   -74.96293784     0.07338828    16106.86      0.07372955    16181.77      2.0063
   13   -74.96293780     0.07338831    16106.87      0.07372959    16181.77      2.0063
   14   -74.96293780     0.07338831    16106.87      0.07372959    16181.77      2.0063
   15   -74.88066501     0.15566110    34163.66      0.15600238    34238.56      4.2450

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.70709356 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.70710725 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000002  0.75488561  0.00000001 -0.00000000  0.31111359 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.70709141  0.00000001  0.00000001  0.00000000  0.70710941  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000312  0.00000000  0.00000000  0.00000000 -0.00000057
                          -0.00000000  0.00000000  0.00000001  0.70709618  0.00000001 -0.00000000  0.00000000 -0.70710462

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.70709665 -0.00000001 -0.00000001  0.00000000  0.70710415  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000017 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.10800946  0.00000001 -0.00000001  0.80930595  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000010 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.64687371 -0.00000001  0.00000000 -0.49819287  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.70709450  0.00000001  0.00000000  0.00000000  0.00000000  0.70710631 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000312  0.00000000 -0.00000000 -0.00000000  0.00000057
                          -0.00000000  0.00000000  0.00000001  0.70709188  0.00000001  0.00000000 -0.00000000  0.70710894

   1    1  |0 0>           0.00000000 -0.00000664 -0.00000000  0.00000000 -0.00600564 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00600602 -0.00000000 -0.00000000 -0.00000702  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00600574 -0.00000000 -0.00000000  0.00000000  0.00000090  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00600622 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000094 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00600597 -0.00000000  0.00000000 -0.00000000  0.00000185
                           0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000056  0.00000000 -0.00000000  0.00000133  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00424770  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.57718100  0.00211284 -0.00442523  0.00000000 -0.00000000 -0.00000000  0.00336827
                          -0.01351755 -0.00000164 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00013528

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00424605 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00424818 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00424736  0.00000000  0.00000000

   3    1  |1 0>          -0.01351759  0.00000380  0.00000000 -0.00000000  0.00000000  0.00000000  0.00013532
                           0.57718254  0.00488859 -0.00038253  0.00000000 -0.00000000 -0.00000000 -0.00336929

   1    1  |1 1>-         -0.01351760 -0.00000216  0.00000001  0.00000000  0.00000000  0.00000000  0.00013523
                           0.57718293 -0.00277581 -0.00404272 -0.00000000 -0.00000000  0.00000000 -0.00336725

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00424637  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00424554 -0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>           0.00000003  0.99855466  0.05340333  0.00000000 -0.00000000  0.00000000 -0.00000001
                           0.00000000 -0.00077659  0.00000016  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000002 -0.05340331  0.99855496 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00004153  0.00000299 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.99998197 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.99998196  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.99998196 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00583712  0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.99917746
                           0.00013671 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.04012867


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -75.03666739     -0.00034128      -74.90      0.00000000        0.00      0.0000
     2   1    -75.03666739     -0.00034128      -74.90      0.00000000        0.00      0.0000
     3   1    -75.03666739     -0.00034127      -74.90      0.00000000        0.00      0.0000
     4   1    -75.03666739     -0.00034127      -74.90      0.00000000        0.00      0.0000
     5   1    -75.03666739     -0.00034127      -74.90      0.00000000        0.00      0.0000
     6   1    -75.03598750      0.00033862       74.32      0.00067990      149.22      0.0185
     7   1    -75.03598749      0.00033862       74.32      0.00067990      149.22      0.0185
     8   1    -75.03598749      0.00033862       74.32      0.00067990      149.22      0.0185
     9   1    -75.03565416      0.00067195      147.48      0.00101323      222.38      0.0276
    10   1    -74.96293904      0.07338708    16106.60      0.07372835    16181.50      2.0063
    11   1    -74.96293903      0.07338708    16106.60      0.07372836    16181.50      2.0063
    12   1    -74.96293784      0.07338828    16106.86      0.07372955    16181.77      2.0063
    13   1    -74.96293780      0.07338831    16106.87      0.07372959    16181.77      2.0063
    14   1    -74.96293780      0.07338831    16106.87      0.07372959    16181.77      2.0063
    15   1    -74.88066501      0.15566110    34163.66      0.15600238    34238.56      4.2450

 E0 =    -75.03632611 is the energy of the lowest zeroth-order state
 E1 =    -75.03666739 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.70709356 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.70710725 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000002  0.75488561  0.00000001 -0.00000000  0.31111359 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.70709141  0.00000001  0.00000001  0.00000000  0.70710941  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000312  0.00000000  0.00000000  0.00000000 -0.00000057
                               -0.00000000  0.00000000  0.00000001  0.70709618  0.00000001 -0.00000000  0.00000000 -0.70710462

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.70709665 -0.00000001 -0.00000001  0.00000000  0.70710415  0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000017 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.10800946  0.00000001 -0.00000001  0.80930595  0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000010 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.64687371 -0.00000001  0.00000000 -0.49819287  0.00000000 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.70709450  0.00000001  0.00000000  0.00000000  0.00000000  0.70710631 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000312  0.00000000 -0.00000000 -0.00000000  0.00000057
                               -0.00000000  0.00000000  0.00000001  0.70709188  0.00000001  0.00000000 -0.00000000  0.70710894

 10  1     1    1  |0 0>        0.00000000 -0.00000664 -0.00000000  0.00000000 -0.00600564 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00600602 -0.00000000 -0.00000000 -0.00000702  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000  0.00600574 -0.00000000 -0.00000000  0.00000000  0.00000090  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00600622 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000094 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00600597 -0.00000000  0.00000000 -0.00000000  0.00000185
                                0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000000 -0.00000056  0.00000000 -0.00000000  0.00000133  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00424770  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.57718100  0.00211284 -0.00442523  0.00000000 -0.00000000 -0.00000000  0.00336827
                               -0.01351755 -0.00000164 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00013528

  3  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00424605 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00424818 -0.00000000 -0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00424736  0.00000000  0.00000000

  6  1     3    1  |1 0>       -0.01351759  0.00000380  0.00000000 -0.00000000  0.00000000  0.00000000  0.00013532
                                0.57718254  0.00488859 -0.00038253  0.00000000 -0.00000000 -0.00000000 -0.00336929

  7  1     1    1  |1 1>-      -0.01351760 -0.00000216  0.00000001  0.00000000  0.00000000  0.00000000  0.00013523
                                0.57718293 -0.00277581 -0.00404272 -0.00000000 -0.00000000  0.00000000 -0.00336725

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00424637  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00424554 -0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |0 0>        0.00000003  0.99855466  0.05340333  0.00000000 -0.00000000  0.00000000 -0.00000001
                                0.00000000 -0.00077659  0.00000016  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000002 -0.05340331  0.99855496 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00004153  0.00000299 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.99998197 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.99998196  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.99998196 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00583712  0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.99917746
                                0.00013671 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.04012867



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        50.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   56.99%    0.00%    0.00%    9.68%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  6  1     3    1  |1 0>          0.00%    1.17%    0.00%    0.00%   65.50%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   41.84%    0.00%    0.00%   24.82%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        50.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-        33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%   99.71%    0.29%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.29%   99.71%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
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
 CPU TIMES  *         5.78      3.06      0.95      0.48      0.27      0.32      0.02      0.45
 REAL TIME  *         7.25 SEC
 DISK USED  *        31.67 MB (local),      255.40 MB (total)
 SF USED    *        20.48 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -74.880665014409

              CI              CI           MULTI         RHF-SCF
    -74.87426218    -75.02881936    -74.70914349    -74.85867808
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
