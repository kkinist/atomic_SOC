
 Working directory              : /wrk/irikura/molpro.ZYAcC5Hjlh/
 Global scratch directory       : /wrk/irikura/molpro.ZYAcC5Hjlh/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ZYAcC5Hjlh/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Na SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Na};
 
 basis=aug-cc-pwCVTZ-DK
 
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
  (4 PROC) 64 bit mpp version                                                            DATE: 22-Feb-24          TIME: 10:17:17  
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

 Library entry NA     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry NA     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry NA     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry NA     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         118
 NUMBER OF SYMMETRY AOS:          104
 NUMBER OF CONTRACTIONS:           75   (   33Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     5.767 MB (compressed) written to integral file ( 16.2%)

     Node minimum: 0.786 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     416030.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     416030      RECORD LENGTH: 524288

 Memory used in sort:       0.97 MW

 SORT1 READ     4558334. AND WROTE       89447. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     30 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      415738.  Node maximum:      418032. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.241E-02 0.152E-01 0.382E-01 0.125E+00 0.125E+00 0.125E+00 0.125E+00 0.125E+00
         2 0.257E-02 0.257E-02 0.257E-02 0.179E-01 0.179E-01 0.179E-01 0.755E-01 0.755E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.82       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.78      0.59
 REAL TIME  *         1.79 SEC
 DISK USED  *        29.15 MB (local),      168.21 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   3   3
 Initial beta  occupancy:   2   3

 NELEC=   11   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -162.06480376    -162.06480376     0.00D+00     0.12D+00     0     0       0.00      0.01    start
   2     -162.06594810      -0.00114434     0.65D-03     0.51D-02     1     0       0.00      0.01    diag2
   3     -162.06653985      -0.00059175     0.36D-03     0.48D-02     2     0       0.00      0.01    diag2
   4     -162.06677313      -0.00023328     0.20D-03     0.52D-02     3     0       0.01      0.02    diag2
   5     -162.06677736      -0.00000423     0.40D-04     0.61D-03     4     0       0.00      0.02    diag2
   6     -162.06677754      -0.00000018     0.58D-05     0.98D-04     5     0       0.00      0.02    diag2
   7     -162.06677755      -0.00000001     0.15D-05     0.34D-04     6     0       0.01      0.03    diag2
   8     -162.06677755      -0.00000000     0.57D-07     0.44D-06     7     0       0.00      0.03    fixocc
   9     -162.06677755       0.00000000     0.53D-08     0.27D-07     0     0       0.00      0.03    diag

 Final alpha occupancy:   3   3
 Final beta  occupancy:   2   3

 !RHF STATE 1.1 Energy               -162.066777549498
  RHF One-electron energy            -228.162653517344
  RHF Two-electron energy              66.095875967846
  RHF Kinetic energy                  163.432772466452
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.991641854346

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -40.53760     1  1  s    0.99967
    2.1     2.00000    -2.80525     1  2  s    1.00030
    3.1     1.00000    -0.18234     1  3  s    1.00491
    1.2     2.00000    -1.51714     1  1  pz   1.00023
    2.2     2.00000    -1.51714     1  1  py   1.00023
    3.2     2.00000    -1.51714     1  1  px   1.00040


 HOMO      3.1    -0.182344 =      -4.9618eV
 LUMO      4.2     0.012621 =       0.3434eV
 LUMO-HOMO         0.194965 =       5.3053eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.82       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.47       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.81      0.03      0.59
 REAL TIME  *         1.83 SEC
 DISK USED  *        29.73 MB (local),      171.11 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:      68 (   29   39)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               2   (2 determinants, 2 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 6 3 5 2 1   6 4 3 5 2 2 6 4 5 3   1 6 4 5 3 2 1 2 4 6   3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.178D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.178D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 2   1 3 4 5 6 7 910 8 3   2 1 5 4 6 9 710 8 3   2 1 3 2 1 810 6 9 7
                                        4 5

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  237  ( 4 closed/active, 175 closed/virtual, 0 active/active, 58 active/virtual )
 Total number of variables:    241
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0   -162.00785386    -162.01062874   -0.00277489    0.01564693 0.00000020 0.00000000  0.28E+00      0.14
   2    3    3    0   -162.01062515    -162.01062529   -0.00000014    0.00081630 0.00000012 0.00000000  0.36E-03      0.26
   3    2    2    0   -162.01062529    -162.01062529    0.00000000    0.00000004 0.00000000 0.00000000  0.89E-07      0.31

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.11E-12)
                       Final energy:   -162.01062529
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -162.066753187705
 Nuclear energy                                  0.00000000
 Kinetic energy                                163.46473581
 One electron energy                          -228.19071578
 Two electron energy                            66.12396259
 Virial ratio                                    1.99144780
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -161.954497385484
 Nuclear energy                                  0.00000000
 Kinetic energy                                163.28431710
 One electron energy                          -226.39843971
 Two electron energy                            64.44394233
 Virial ratio                                    1.99185580
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>     0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 4 5 6 2 1   3 5 4 6 2 2 6 5 4 3   1 5 6 3 4 2 1 2 3 4   6 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 1 2 1 3 2 2   1 3 5 4 6 7 910 8 2   3 1 5 4 6 9 7 810 3   2 1 2 3 110 8 9 7 6
                                        4 5
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -40.61966     1  1  s    0.99967
    2.1     2.00000    -2.88555     1  2  s    0.99990
    3.1     0.50000    -0.07792     1  3  s    1.00340
    4.1     0.50000     0.00067     1  3  s   -0.98575    1  8  s    1.21641
    1.2     2.00000    -1.59836     1  1  py   1.00015
    2.2     2.00000    -1.59836     1  1  pz   1.00015
    3.2     2.00000    -1.59836     1  1  px   1.00015
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 a0             0.99999992     -0.00040161
 0a             0.00040161      0.99999992
 
 Energy:     -162.06675319   -161.95449739
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.67       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.12      0.30      0.03      0.59
 REAL TIME  *         2.23 SEC
 DISK USED  *        30.59 MB (local),      175.41 MB (total)
 SF USED    *         2.53 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -162.0667532   0.0
    -161.9544974   0.0
                                                  


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
 Number of external orbitals:      68 (  29  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   2

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -162.06675319
     2      -161.95449739

 Number of blocks in overlap matrix:     0   Smallest eigenvalue:  0.10D+01

 Number of N-1 electron functions:       1

 Number of internal configurations:                    2
 Number of singly external configurations:            29
 Number of doubly external configurations:             0
 Total number of contracted configurations:           31
 Total number of uncontracted configurations:         31

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -162.06675319     0.00000000     0.00000000  0.00D+00  0.00D+00     0.00
    1     2     2     1.00000000     0.00000000  -161.95449739    -0.00000000    -0.00000000  0.78D-19  0.00D+00     0.00
    2     1     1     1.00000000     0.00000000  -162.06675319     0.00000000     0.00000000  0.00D+00  0.00D+00     0.00
    2     2     2     1.00000000     0.00000000  -161.95449739     0.00000000    -0.00000000  0.78D-19  0.00D+00     0.00

 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 /0           0.9999999  -0.0004016
 0/           0.0004016   0.9999999

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
 Internals    0.00000000    0.00000000   -0.00000000
 Singles      0.00000000    0.00000000   -0.00000000
 Pairs        0.00000000    0.00000000   -0.00000000
 Total        1.00000000    0.00000000   -0.00000000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -162.06675319
 Nuclear energy                         0.00000000
 Kinetic energy                       163.46473581
 One electron energy                 -228.19071578
 Two electron energy                   66.12396259
 Virial quotient                       -0.99144780
 Correlation energy                     0.00000000
 !MRCI STATE 1.1 Energy              -162.066753187705

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -162.06675319 (Davidson, fixed reference)
 Cluster corrected energies          -162.06675319 (Davidson, relaxed reference)
 Cluster corrected energies          -162.06675319 (Davidson, rotated reference)

 Cluster corrected energies          -162.06675319 (Pople, fixed reference)
 Cluster corrected energies          -162.06675319 (Pople, relaxed reference)
 Cluster corrected energies          -162.06675319 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 1.00000000 (fixed)   1.00000000 (relaxed)   1.00000000 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000    0.00000000
 Singles      0.00000000    0.00000000    0.00000000
 Pairs        0.00000000    0.00000000    0.00000000
 Total        1.00000000    0.00000000    0.00000000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -161.95449739
 Nuclear energy                         0.00000000
 Kinetic energy                       163.28431710
 One electron energy                 -226.39843971
 Two electron energy                   64.44394233
 Virial quotient                       -0.99185580
 Correlation energy                    -0.00000000
 !MRCI STATE 2.1 Energy              -161.954497385484

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -161.95449739 (Davidson, fixed reference)
 Cluster corrected energies          -161.95449739 (Davidson, relaxed reference)
 Cluster corrected energies          -161.95449739 (Davidson, rotated reference)

 Cluster corrected energies          -161.95449739 (Pople, fixed reference)
 Cluster corrected energies          -161.95449739 (Pople, relaxed reference)
 Cluster corrected energies          -161.95449739 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.77       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.17      0.05      0.30      0.03      0.59
 REAL TIME  *         2.29 SEC
 DISK USED  *        30.69 MB (local),      175.90 MB (total)
 SF USED    *         2.53 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -162.06675319  AU                              
 SETTING HLSDIAG(2)     =      -161.95449739  AU                              


         HLSDIAG
    -162.0667532
    -161.9544974
                                                  


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

 Time for Seward_LS:       0.94 sec

 CPU time:      0.95 sec, REAL time:      1.00 sec


 SORTLS1 read     2507827. and wrote     2507827. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.05 sec
 SORTLS2 read     2507827. and wrote    12192876. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.06 sec

 FILE SIZES: FILE 1:    31.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    31.3 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   2

 Original energies:   -162.066753   -161.954497
 Replaced energies:   -162.066753   -161.954497



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -162.06675319

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    2   2.1  0.5  0.5       0.00   24637.30       0.00       0.00
                           -0.00       0.00       0.00       0.00

    3   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00

    4   2.1  0.5 -0.5       0.00       0.00       0.00   24637.30
                           -0.00      -0.00      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -162.06675319     0.00000000        0.00      0.00000000        0.00      0.0000
     2  -162.06675319     0.00000000        0.00      0.00000000        0.00      0.0000
     3  -161.95449739     0.11225580    24637.30      0.11225580    24637.30      3.0546
     4  -161.95449739     0.11225580    24637.30      0.11225580    24637.30      3.0546


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
              1      24       29.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.77       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.28      2.10      0.05      0.30      0.03      0.59
 REAL TIME  *         6.43 SEC
 DISK USED  *        30.72 MB (local),      309.16 MB (total)
 SF USED    *         2.53 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -161.954497385484

              CI           MULTI         RHF-SCF
   -161.95449739   -161.95449739   -162.06677755
 **********************************************************************************************************************************
 Molpro calculation terminated
