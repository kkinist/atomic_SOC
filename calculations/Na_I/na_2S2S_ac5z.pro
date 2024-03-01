
 Working directory              : /wrk/irikura/molpro.tjxC0162vc/
 Global scratch directory       : /wrk/irikura/molpro.tjxC0162vc/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.tjxC0162vc/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Na SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Na};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=11,sym=1,spin=1}
 
                                                                                 ! Active space (1/2)
 {multi
     closed,2,3
     occ,4,3
     wf,sym=1,spin=1;state,2;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=1;state,2; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Na SO-CI                                                                                                                                                      
  (4 PROC) 64 bit mpp version                                                            DATE: 22-Feb-24          TIME: 10:19:38  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry NA     S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry NA     P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry NA     D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry NA     F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry NA     G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry NA     H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  NA     11.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   11
 NUMBER OF PRIMITIVE AOS:         340
 NUMBER OF SYMMETRY AOS:          250
 NUMBER OF CONTRACTIONS:          216   (  101Ag  +  115Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     220.987 MB (compressed) written to integral file ( 11.6%)

     Node minimum: 40.370 MB, node maximum: 46.924 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   27721352.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15992525      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ   238001710. AND WROTE     4974944. INTEGRALS IN     15 RECORDS. CPU TIME:     1.27 SEC, REAL TIME:     1.35 SEC
 SORT2 READ    24539548. AND WROTE   138588271. INTEGRALS IN    860 RECORDS. CPU TIME:     0.55 SEC, REAL TIME:     0.62 SEC

 Node minimum:    27714260.  Node maximum:    27721352. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112
                                       131415 7 8 910111213  1415 7 8 91011121314  15
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        9101112131415161718  19202111121314151617  18192021111213141516  1718192021

 Eigenvalues of metric

         1 0.678E-04 0.215E-02 0.628E-02 0.122E-01 0.122E-01 0.122E-01 0.122E-01 0.122E-01
         2 0.637E-06 0.637E-06 0.637E-06 0.158E-02 0.158E-02 0.158E-02 0.110E-01 0.110E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.24       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         6.26      6.07
 REAL TIME  *         7.70 SEC
 DISK USED  *        30.62 MB (local),      626.57 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   3   3
 Initial beta  occupancy:   2   3

 NELEC=   11   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -162.06575189    -162.06575189     0.00D+00     0.41D-01     0     0       0.15      0.28    start
   2     -162.06688237      -0.00113048     0.45D-03     0.17D-02     1     0       0.16      0.44    diag2
   3     -162.06739778      -0.00051541     0.21D-03     0.47D-03     2     0       0.15      0.59    diag2
   4     -162.06771741      -0.00031963     0.13D-03     0.14D-02     3     0       0.15      0.74    diag2
   5     -162.06773359      -0.00001618     0.37D-04     0.20D-03     4     0       0.16      0.90    diag2
   6     -162.06773388      -0.00000029     0.49D-05     0.45D-04     5     0       0.15      1.05    diag2
   7     -162.06773393      -0.00000005     0.18D-05     0.24D-04     6     0       0.15      1.20    diag2
   8     -162.06773393      -0.00000000     0.17D-06     0.14D-05     7     0       0.15      1.35    fixocc
   9     -162.06773393      -0.00000000     0.61D-07     0.51D-06     0     0       0.14      1.49    diag

 Final alpha occupancy:   3   3
 Final beta  occupancy:   2   3

 !RHF STATE 1.1 Energy               -162.067733934078
  RHF One-electron energy            -228.166444105733
  RHF Two-electron energy              66.098710171654
  RHF Kinetic energy                  163.422792831405
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.991708262514

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -40.53725     1  1  s    0.99665
    2.1     2.00000    -2.80499     1  2  s    1.00319
    3.1     1.00000    -0.18233     1  8  s    0.42034    1  9  s    0.54742
    1.2     2.00000    -1.51704     1  1  px   0.98542
    2.2     2.00000    -1.51704     1  1  py   0.98537
    3.2     2.00000    -1.51704     1  1  pz   0.98537


 HOMO      3.1    -0.182328 =      -4.9614eV
 LUMO      4.2     0.008888 =       0.2419eV
 LUMO-HOMO         0.191216 =       5.2033eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.24       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        1.13       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         7.76      1.50      6.07
 REAL TIME  *         9.27 SEC
 DISK USED  *        34.37 MB (local),      645.28 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:     209 (   97  112)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               2   (2 determinants, 2 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 4 6 3 5 1   2 6 4 3 5 112 81310  11 91514 7 2 4 6 3 5  1514 7101311 912 8 2
                                        6 4 5 3 11415101311   912 8 7 6 4 3 5 2 1   6 4 3 5 2 713101514   91112 8 6 4 5 3 2 1
                                        2 4 6 5 311 9 71514  1013 812 1 2 4 6 5 3   1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.955D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.955D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 2 1 3 2   1 3 810 5 4 6 7 9 2   1 3 6 4 510 8 7 9 2   1 31614191321151711
                                       122018 6 7 9 4 510 8   2 3 1 7 9 610 8 4 5  21131715191614111220  18 2 3 1 810 6 4 5 7
                                        9 2 3 1 810 6 5 4 9   7 3 2 1 6 810 9 7 4   5211319161417152018  1112 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  728  ( 4 closed/active, 530 closed/virtual, 0 active/active, 194 active/virtual )
 Total number of variables:    732
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0   -162.00584267    -162.01161929   -0.00577662    0.01586663 0.00000020 0.00000000  0.53E+00      0.47
   2    3    3    0   -162.01161340    -162.01161372   -0.00000032    0.00124960 0.00000028 0.00000000  0.50E-03      0.88
   3    2    2    0   -162.01161372    -162.01161372    0.00000000    0.00000008 0.00000000 0.00000000  0.24E-06      1.24

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.18E-11)
                       Final energy:   -162.01161372
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -162.067709216122
 Nuclear energy                                  0.00000000
 Kinetic energy                                163.45518668
 One electron energy                          -228.19444615
 Two electron energy                            66.12673693
 Virial ratio                                    1.99151157
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -161.955518225561
 Nuclear energy                                  0.00000000
 Kinetic energy                                163.27686841
 One electron energy                          -226.42175859
 Two electron energy                            64.46624037
 Virial ratio                                    1.99190730
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 5 3 4 6   2 5 3 4 6 112 81514  11 91310 7 2 3 5 6 4  151412 8 911 71013 2
                                        3 6 5 4 1151412 811   91013 7 5 3 6 4 2 1   5 3 6 4 2 710131415  11 912 8 5 3 6 4 2 1
                                        2 5 4 6 311 9 71013  1415 812 1 4 5 6 3 2   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   3 2 810 5 4 6 7 9 1   3 2 6 7 9 4 510 8 1   3 21416191321151711
                                       122018 7 9 6 4 510 8   1 3 2 7 9 6 4 510 8  21131517191112141620  18 1 3 2 610 8 4 5 7
                                        9 1 2 3 610 8 5 4 9   7 1 2 3 6 9 710 8 4   5132117151416201819  1112 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -40.61831     1  1  s    0.99666
    2.1     2.00000    -2.88433     1  2  s    1.00295
    3.1     0.50000    -0.07705     1  8  s    0.41904    1  9  s    0.54887
    4.1     0.50000     0.00191     1  9  s   -1.03496    1 10  s    0.86206    1 11  s    0.78067
    1.2     2.00000    -1.59729     1  1  px   0.99298
    2.2     2.00000    -1.59729     1  1  py   0.99298
    3.2     2.00000    -1.59729     1  1  pz   0.99298
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 a0             0.99999995     -0.00031959
 0a             0.00031959      0.99999995
 
 Energy:     -162.06770922   -161.95551823
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       38.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        2.04       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.24      1.48      1.50      6.07
 REAL TIME  *        10.92 SEC
 DISK USED  *        40.78 MB (local),      677.36 MB (total)
 SF USED    *        21.35 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -162.0677092  -0.0
    -161.9555182  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 11
 Maximum number of shells:             1
 Maximum number of spin couplings:     1

 Reference space:        2 conf        2 CSFs
 N elec internal:        2 conf        2 CSFs
 N-1 el internal:        1 conf        1 CSFs
 N-2 el internal:        0 conf        0 CSFs

 Number of electrons in valence space:                      1
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  1


 Number of core orbitals:           5 (   2   3 )
 Number of active  orbitals:        2 (   2   0 )
 Number of external orbitals:     209 (  97 112 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   2

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -162.06770922
     2      -161.95551823

 Number of blocks in overlap matrix:     0   Smallest eigenvalue:  0.10D+01

 Number of N-1 electron functions:       1

 Number of internal configurations:                    2
 Number of singly external configurations:            97
 Number of doubly external configurations:             0
 Total number of contracted configurations:           99
 Total number of uncontracted configurations:         99

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -162.06770922     0.00000000    -0.00000000  0.15D-19  0.00D+00     0.12
    1     2     2     1.00000000     0.00000000  -161.95551823     0.00000000    -0.00000000  0.46D-18  0.00D+00     0.12
    2     1     1     1.00000000    -0.00000000  -162.06770922     0.00000000    -0.00000000  0.15D-19  0.00D+00     0.12
    2     2     2     1.00000000    -0.00000000  -161.95551823     0.00000000    -0.00000000  0.46D-18  0.00D+00     0.12


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.0%   0.0%   0.0%

 Initialization: 100.0%
 Other:            0.0%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 /0           0.9999999  -0.0003196
 0/           0.0003196   0.9999999

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           1.000000    0.000000
 2           0.000000    1.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           1.000000    0.000000
 2           0.000000    1.000000


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 1.00000000 (fixed)   1.00000000 (relaxed)   1.00000000 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000    0.00000000
 Singles      0.00000000    0.00000000   -0.00000000
 Pairs        0.00000000    0.00000000   -0.00000000
 Total        1.00000000   -0.00000000    0.00000000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -162.06770922
 Nuclear energy                         0.00000000
 Kinetic energy                       163.45518668
 One electron energy                 -228.19444615
 Two electron energy                   66.12673693
 Virial quotient                       -0.99151157
 Correlation energy                     0.00000000
 !MRCI STATE 1.1 Energy              -162.067709216122

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -162.06770922 (Davidson, fixed reference)
 Cluster corrected energies          -162.06770922 (Davidson, relaxed reference)
 Cluster corrected energies          -162.06770922 (Davidson, rotated reference)

 Cluster corrected energies          -162.06770922 (Pople, fixed reference)
 Cluster corrected energies          -162.06770922 (Pople, relaxed reference)
 Cluster corrected energies          -162.06770922 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 1.00000000 (fixed)   1.00000000 (relaxed)   1.00000000 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000    0.00000000
 Singles      0.00000000    0.00000000   -0.00000000
 Pairs        0.00000000    0.00000000   -0.00000000
 Total        1.00000000   -0.00000000    0.00000000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -161.95551823
 Nuclear energy                         0.00000000
 Kinetic energy                       163.27686841
 One electron energy                 -226.42175859
 Two electron energy                   64.46624037
 Virial quotient                       -0.99190730
 Correlation energy                     0.00000000
 !MRCI STATE 2.1 Energy              -161.955518225561

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -161.95551823 (Davidson, fixed reference)
 Cluster corrected energies          -161.95551823 (Davidson, relaxed reference)
 Cluster corrected energies          -161.95551823 (Davidson, rotated reference)

 Cluster corrected energies          -161.95551823 (Pople, fixed reference)
 Cluster corrected energies          -161.95551823 (Pople, relaxed reference)
 Cluster corrected energies          -161.95551823 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       38.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        2.78       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.41      0.17      1.48      1.50      6.07
 REAL TIME  *        11.11 SEC
 DISK USED  *        41.51 MB (local),      681.02 MB (total)
 SF USED    *        21.35 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -162.06770922  AU                              
 SETTING HLSDIAG(2)     =      -161.95551823  AU                              


         HLSDIAG
    -162.0677092
    -161.9555182
                                                  


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

 Time for Seward_LS:      21.99 sec

      160069128. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    40165 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     21.99 sec, REAL time:     22.60 sec


 SORTLS1 read   164453930. and wrote   164453930. SO integrals in   634 records. CPU time:      1.57 sec, REAL time:      2.53 sec
 SORTLS2 read   164453930. and wrote   823932798. SO integrals in    15 records. CPU time:      4.50 sec, REAL time:     16.74 sec

 FILE SIZES: FILE 1:  2673.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2673.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   2

 Original energies:   -162.067709   -161.955518
 Replaced energies:   -162.067709   -161.955518



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -162.06770922

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    2   2.1  0.5  0.5       0.00   24623.08       0.00       0.00
                           -0.00       0.00       0.00       0.00

    3   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00

    4   2.1  0.5 -0.5       0.00       0.00       0.00   24623.08
                           -0.00      -0.00      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -162.06770922     0.00000000        0.00      0.00000000        0.00      0.0000
     2  -162.06770922     0.00000000        0.00      0.00000000        0.00      0.0000
     3  -161.95551823     0.11219099    24623.08      0.11219099    24623.08      3.0529
     4  -161.95551823     0.11219099    24623.08      0.11219099    24623.08      3.0529


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4

    1    1.1  0.5  0.5   1.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  0.5  0.5   0.000000000   0.000000000   1.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000

    3    1.1  0.5 -0.5   0.000000000   1.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000

    4    2.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   1.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4

    1    1.1  0.5  0.5 100.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000% 100.000%   0.000%
    3    1.1  0.5 -0.5   0.000% 100.000%   0.000%   0.000%
    4    2.1  0.5 -0.5   0.000%   0.000%   0.000% 100.000%


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
              1      24     2549.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        2.78       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        41.01     31.59      0.17      1.48      1.50      6.07
 REAL TIME  *        57.27 SEC
 DISK USED  *        41.78 MB (local),        8.93 GB (total)
 SF USED    *         2.46 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -161.955518225561

              CI           MULTI         RHF-SCF
   -161.95551823   -161.95551823   -162.06773393
 **********************************************************************************************************************************
 Molpro calculation terminated
