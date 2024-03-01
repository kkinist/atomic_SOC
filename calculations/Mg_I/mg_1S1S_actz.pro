
 Working directory              : /wrk/irikura/molpro.t3brpTKVvE/
 Global scratch directory       : /wrk/irikura/molpro.t3brpTKVvE/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.t3brpTKVvE/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Mg SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Mg};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=12,sym=1,spin=0}
 
                                                                                 ! Active space (2/2)
 {multi
     closed,2,3
     occ,4,3
     wf,sym=1,spin=0;state,2;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.00 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Mg SO-CI                                                                                                                                                      
  (4 PROC) 64 bit mpp version                                                            DATE: 22-Feb-24          TIME: 10:39:33  
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

 Library entry MG     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry MG     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry MG     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry MG     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  MG     12.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   12
 NUMBER OF PRIMITIVE AOS:         117
 NUMBER OF SYMMETRY AOS:          103
 NUMBER OF CONTRACTIONS:           75   (   33Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     5.767 MB (compressed) written to integral file ( 16.0%)

     Node minimum: 0.786 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     416030.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     416030      RECORD LENGTH: 524288

 Memory used in sort:       0.97 MW

 SORT1 READ     4558334. AND WROTE       89447. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     15 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      415738.  Node maximum:      418032. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.193E-02 0.369E-01 0.408E-01 0.109E+00 0.109E+00 0.109E+00 0.109E+00 0.109E+00
         2 0.307E-02 0.307E-02 0.307E-02 0.736E-01 0.736E-01 0.736E-01 0.158E+00 0.158E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.82       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.76      0.57
 REAL TIME  *         1.77 SEC
 DISK USED  *        29.15 MB (local),      168.19 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   3   3

 NELEC=   12   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -199.91967567    -199.91967567     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2     -199.91969256      -0.00001689     0.75D-03     0.53D-03     1     0       0.00      0.01    diag
   3     -199.91969405      -0.00000148     0.19D-03     0.11D-03     2     0       0.01      0.02    diag
   4     -199.91969406      -0.00000002     0.14D-04     0.17D-04     3     0       0.00      0.02    diag
   5     -199.91969406      -0.00000000     0.14D-05     0.48D-05     4     0       0.00      0.02    diag
   6     -199.91969406      -0.00000000     0.13D-06     0.16D-05     5     0       0.00      0.02    diag
   7     -199.91969406      -0.00000000     0.90D-08     0.19D-06     0     0       0.00      0.02    diag

 Final occupancy:   3   3

 !RHF STATE 1.1 Energy               -199.919694063932
  RHF One-electron energy            -279.859209767916
  RHF Two-electron energy              79.939515703984
  RHF Kinetic energy                  201.880774669432
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.990285946699

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -49.11625     1  1  s    0.99975
    2.1     2.00000    -3.77948     1  2  s    0.99877
    3.1     2.00000    -0.25343     1  3  s    1.00549
    1.2     2.00000    -2.28031     1  1  pz   1.00132
    2.2     2.00000    -2.28031     1  1  px   1.00136
    3.2     2.00000    -2.28031     1  1  py   1.00132


 HOMO      3.1    -0.253433 =      -6.8963eV
 LUMO      4.2     0.016003 =       0.4355eV
 LUMO-HOMO         0.269435 =       7.3317eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.82       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.42       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.79      0.03      0.57
 REAL TIME  *         1.81 SEC
 DISK USED  *        29.48 MB (local),      169.84 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:      68 (   29   39)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               3   (4 determinants, 4 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 5 3 4 6 1   2 6 4 3 5 1 2 4 6 3   5 2 6 4 5 3 1 4 6 5   3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.927D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.160D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.989D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 1 2 3 3   1 2 9 7 610 8 4 5 2   1 3 9 7 5 4 6 81010   8 9 7 5 4 6 3 1 2 3
                                        2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  237  ( 4 closed/active, 175 closed/virtual, 0 active/active, 58 active/virtual )
 Total number of variables:    245
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0   -199.83036694    -199.83371404   -0.00334710    0.03431801 0.00000770 0.00000000  0.19E+00      0.12
   2    4    4    0   -199.83363153    -199.83363580   -0.00000427    0.00124745 0.00000197 0.00000000  0.64E-02      0.23
   3    4    4    0   -199.83363581    -199.83363581   -0.00000000    0.00000231 0.00000000 0.00000000  0.10E-04      0.33

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.65E-11)
                       Final energy:   -199.83363581
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -199.918656482844
 Nuclear energy                                  0.00000000
 Kinetic energy                                201.99623086
 One electron energy                          -280.06112020
 Two electron energy                            80.14246371
 Virial ratio                                    1.98971479
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -199.748615130029
 Nuclear energy                                  0.00000000
 Kinetic energy                                201.59875923
 One electron energy                          -277.47029424
 Two electron energy                            77.72167911
 Virial ratio                                    1.99082264
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>     0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 5 4 6 3 1   2 5 6 4 3 1 2 6 5 4   3 2 6 5 3 4 1 5 4 3   6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 3 2 1   3 2 9 7 610 8 4 5 3   2 1 9 7 5 4 6 81010   8 9 7 4 5 6 1 3 2 2
                                        1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -49.21156     1  1  s    0.99975
    2.1     2.00000    -3.87194     1  2  s    0.99909
    3.1     1.49996    -0.25835     1  3  s    1.12913
    4.1     0.50004    -0.00252     1  3  s   -0.36725    1  5  s   -0.60099    1  8  s    1.54220
    1.2     2.00000    -2.37391     1  1  px   1.00055
    2.2     2.00000    -2.37391     1  1  pz   1.00055
    3.2     2.00000    -2.37391     1  1  py   1.00055
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 20             0.98823846     -0.15279266
 ab             0.10804284      0.69880380
 ba            -0.10804284     -0.69880380
 
 Energy:     -199.91865648   -199.74861513
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.63       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.11      0.32      0.03      0.57
 REAL TIME  *         2.23 SEC
 DISK USED  *        30.55 MB (local),      175.21 MB (total)
 SF USED    *         2.59 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -199.9186565   0.0
    -199.7486151   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 12
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        3 conf        3 CSFs
 N elec internal:       21 conf       21 CSFs
 N-1 el internal:       34 conf       50 CSFs
 N-2 el internal:       39 conf       87 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        2 (   2   0 )
 Number of external orbitals:      68 (  29  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.01 sec, npass=  1  Memory used:   0.16 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -199.91865648
     2      -199.74861513

 Number of blocks in overlap matrix:    41   Smallest eigenvalue:  0.89D+00
 Number of N-2 electron functions:      49
 Number of N-1 electron functions:      50

 Number of internal configurations:                   12
 Number of singly external configurations:          1690
 Number of doubly external configurations:         56975
 Total number of contracted configurations:        58677
 Total number of uncontracted configurations:     102703

 Diagonal Coupling coefficients finished.               Storage:    178776 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    210746 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -199.91865648     0.00000000    -0.28117929  0.27D-02  0.58D-01     0.03
    1     2     2     1.00000000     0.00000000  -199.74861513    -0.00000000    -0.25234542  0.30D-02  0.28D-01     0.03
    2     1     1     1.05017221    -0.25600550  -200.17466199    -0.25600550    -0.00406361  0.57D-03  0.16D-02     0.12
    2     2     2     1.02671090    -0.23655705  -199.98517218    -0.23655705    -0.00201430  0.45D-03  0.55D-03     0.12
    3     1     1     1.04445971    -0.25982609  -200.17848258    -0.00382059    -0.00011603  0.13D-04  0.37D-04     0.22
    3     2     2     1.02576848    -0.23860173  -199.98721686    -0.00204468    -0.00006585  0.89D-05  0.18D-04     0.22
    4     1     1     1.04579005    -0.25995863  -200.17861512    -0.00013254    -0.00000357  0.34D-06  0.12D-05     0.31
    4     2     2     1.02650464    -0.23867577  -199.98729090    -0.00007404    -0.00000227  0.80D-06  0.49D-06     0.31
    5     1     1     1.04607355    -0.25996261  -200.17861909    -0.00000397    -0.00000012  0.35D-08  0.48D-07     0.40
    5     2     2     1.02661678    -0.23867825  -199.98729338    -0.00000248    -0.00000008  0.23D-07  0.25D-07     0.40
    6     1     1     1.04611541    -0.25996274  -200.17861922    -0.00000013    -0.00000001  0.16D-09  0.25D-08     0.46
    6     2     2     1.02663080    -0.23867834  -199.98729347    -0.00000009    -0.00000000  0.10D-08  0.15D-08     0.46


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   4.3%
 P   0.0%   8.7%  15.2%

 Initialization:   4.3%
 Other:           67.4%

 Total CPU:        0.5 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\222           0.1100181   0.9811347
 220222           0.9714790  -0.1066130

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.976903   -0.039715
 2           0.044603    0.985896

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.977707    0.002249
 2           0.002249    0.986902


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97690278 (fixed)   0.97770977 (relaxed)   0.97770713 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000652   -0.00001787   -0.26514972
 Singles      0.00099143   -0.00131908   -0.00150680
 Pairs        0.04512428    0.01873367    0.00669378
 Total        1.04612223    0.01739671   -0.25996274
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -199.91834327
 Nuclear energy                         0.00000000
 Kinetic energy                       202.01214484
 One electron energy                 -279.70324857
 Two electron energy                   79.52462935
 Virial quotient                       -0.99092369
 Correlation energy                    -0.26027595
 !MRCI STATE 1.1 Energy              -200.178619220339

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -200.19062373 (Davidson, fixed reference)
 Cluster corrected energies          -200.19062226 (Davidson, relaxed reference)
 Cluster corrected energies          -200.19062373 (Davidson, rotated reference)

 Cluster corrected energies          -200.18849260 (Pople, fixed reference)
 Cluster corrected energies          -200.18849136 (Pople, relaxed reference)
 Cluster corrected energies          -200.18849260 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.98589610 (fixed)   0.98694245 (relaxed)   0.98690199 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008673   -0.00002071   -0.00017436
 Singles      0.00371300   -0.00389376   -0.00465546
 Pairs        0.02292010   -0.23462627   -0.23384852
 Total        1.02671984   -0.23854074   -0.23867834
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -199.74892835
 Nuclear energy                         0.00000000
 Kinetic energy                       201.75851759
 One electron energy                 -277.26827139
 Two electron energy                   77.28097792
 Virial quotient                       -0.99122107
 Correlation energy                    -0.23836513
 !MRCI STATE 2.1 Energy              -199.987293474518

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -199.99366255 (Davidson, fixed reference)
 Cluster corrected energies          -199.99364249 (Davidson, relaxed reference)
 Cluster corrected energies          -199.99366255 (Davidson, rotated reference)

 Cluster corrected energies          -199.99247114 (Pople, fixed reference)
 Cluster corrected energies          -199.99245457 (Pople, relaxed reference)
 Cluster corrected energies          -199.99247114 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.64       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.63      0.50      0.32      0.03      0.57
 REAL TIME  *         2.81 SEC
 DISK USED  *        31.56 MB (local),      180.25 MB (total)
 SF USED    *        10.50 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -200.19062373  AU                              
 SETTING HLSDIAG(2)     =      -199.99366255  AU                              


         HLSDIAG
    -200.1906237
    -199.9936626
                                                  


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

 Time for Seward_LS:       0.84 sec

        2496171. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.84 sec, REAL time:      0.85 sec


 SORTLS1 read     2506076. and wrote     2506076. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.05 sec
 SORTLS2 read     2506076. and wrote    12192876. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.05 sec

 FILE SIZES: FILE 1:    71.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    71.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:   -200.178619   -199.987293
 Replaced energies:   -200.190624   -199.993663



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -200.19062373

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2

    1   1.1  0.0  0.0       0.00       0.00
                            0.00       0.00

    2   2.1  0.0  0.0       0.00   43227.98
                           -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  2)

    The diagonal matrixelements are shifted by   -200.19062373 a.u.

  State Sym Spin    / Nr.        1           2

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000   43227.982
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -200.19062373     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -199.99366255     0.19696118    43227.98      0.19696118    43227.98      5.3596

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2

   1    1  |0 0>           1.00000000  0.00000000
                           0.00000000  0.00000000

   2    1  |0 0>           0.00000000  1.00000000
                           0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -200.19062373      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -199.99366255      0.19696118    43227.98      0.19696118    43227.98      5.3596

 E0 =   -200.19062373 is the energy of the lowest zeroth-order state
 E1 =   -200.19062373 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2

  1  1     1    1  |0 0>        1.00000000  0.00000000
                                0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  1.00000000
                                0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2

  1  1     1    1  |0 0>        100.00%    0.00%
  2  1     2    1  |0 0>          0.00%  100.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.25       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.64       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.44      1.80      0.50      0.32      0.03      0.57
 REAL TIME  *         4.75 SEC
 DISK USED  *        31.59 MB (local),      313.51 MB (total)
 SF USED    *        42.39 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -199.993662551819

              CI           MULTI         RHF-SCF
   -199.98729347   -199.74861513   -199.91969406
 **********************************************************************************************************************************
 Molpro calculation terminated
