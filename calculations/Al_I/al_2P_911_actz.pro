
 Working directory              : /wrk/irikura/molpro.CDLe0fj9jP/
 Global scratch directory       : /wrk/irikura/molpro.CDLe0fj9jP/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.CDLe0fj9jP/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Al SO-CI
                                                                                 ! Active space (9/11) is 2p3s3p + 4s4p
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Al};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=13,sym=2,spin=1}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,2,0;
     occ,4,9
     wf,sym=2,spin=1;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=2,spin=1;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.03 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Al SO-                                                                        
  64 bit mpp version                                                                     DATE: 22-Feb-24          TIME: 16:04:34  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry AL     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AL     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AL     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AL     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  AL     13.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   13
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

     10.486 MB (compressed) written to integral file ( 21.8%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      69570.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      69570      RECORD LENGTH: 524288

 Memory used in sort:       0.63 MW

 SORT1 READ     4558334. AND WROTE       15330. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.08 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:       68866.  Node maximum:       71403. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.215E-02 0.861E-02 0.659E-01 0.190E+00 0.190E+00 0.190E+00 0.190E+00 0.190E+00
         2 0.133E-01 0.133E-01 0.133E-01 0.300E-01 0.300E-01 0.300E-01 0.928E-01 0.928E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.77      1.43
 REAL TIME  *         2.55 SEC
 DISK USED  *        29.05 MB (local),      995.56 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   4
 Initial beta  occupancy:   3   3

 NELEC=   13   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -242.30201901    -242.30201901     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2     -242.30791125      -0.00589224     0.17D-02     0.74D-02     1     0       0.00      0.01    diag2
   3     -242.31006987      -0.00215862     0.75D-03     0.40D-02     2     0       0.01      0.02    diag2
   4     -242.31070953      -0.00063967     0.38D-03     0.27D-02     3     0       0.00      0.02    diag2
   5     -242.31082858      -0.00011904     0.17D-03     0.18D-02     4     0       0.00      0.02    diag2
   6     -242.31083011      -0.00000154     0.24D-04     0.29D-03     5     0       0.01      0.03    diag2
   7     -242.31083015      -0.00000003     0.41D-05     0.39D-04     6     0       0.00      0.03    diag2
   8     -242.31083015      -0.00000000     0.93D-06     0.88D-05     7     0       0.00      0.03    fixocc
   9     -242.31083015      -0.00000000     0.16D-06     0.13D-05     8     0       0.01      0.04    diag2
  10     -242.31083015      -0.00000000     0.18D-07     0.76D-07     0     0       0.00      0.04    diag/orth

 Final alpha occupancy:   3   4
 Final beta  occupancy:   3   3

 !RHF STATE 1.2 Energy               -242.310830151272
  RHF One-electron energy            -337.217010499598
  RHF Two-electron energy              94.906180348326
  RHF Kinetic energy                  245.081503104756
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.988694891624

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.62125     1  1  s    0.99967
    2.1     2.00000    -4.92939     1  2  s    0.99979
    3.1     2.00000    -0.39500     1  3  s    1.00963
    1.2     2.00000    -3.21757     1  1  py   0.99916
    2.2     2.00000    -3.21757     1  1  px   0.99916
    3.2     2.00000    -3.21680     1  1  pz   1.00195
    4.2     1.00000    -0.20947     1  2  pz   1.00542


 HOMO      4.2    -0.209472 =      -5.7000eV
 LUMO      5.2     0.007770 =       0.2114eV
 LUMO-HOMO         0.217242 =       5.9115eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.44       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.81      0.04      1.43
 REAL TIME  *         2.61 SEC
 DISK USED  *        29.65 MB (local),     1013.62 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   2 (    2    0)
 Number of active  orbitals:       11 (    2    9)
 Number of external orbitals:      62 (   29   33)

 State symmetry 1

 Number of active electrons:   9    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:           38682   (76356 determinants, 152460 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.170D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.126D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.132D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.983D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 3 5 1   2 6 4 3 5 3 5 6 4 2   1 3 5 4 6 2 1 5 3 6   4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.783D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.771D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.945D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.244D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.415D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.413D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.414D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.145D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.144D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 3 2 1 3   7 9 2 110 8 6 5 4 9   710 8 5 4 6 2 1 3 7   9 810 5 4 6 2 1 3 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  417  ( 4 closed/active, 58 closed/virtual, 0 active/active, 355 active/virtual )
 Total number of variables:    229485
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   19   50    0   -242.32128450    -242.41298975   -0.09170525    0.03615357 0.00015468 0.00053388  0.19E+01      5.94
   2   10   34    0   -242.40704496    -242.40708884   -0.00004389    0.02084465 0.00076920 0.00009772  0.37E-01     10.04
   3   13   39    0   -242.40708895    -242.40708895   -0.00000000    0.00004262 0.00000001 0.00000003  0.70E-04     15.20

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.12E-07)
                       Final energy:   -242.40708895
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -242.407088948738
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.17941338
 One electron energy                          -337.18399549
 Two electron energy                            94.77690654
 Virial ratio                                    1.98869267
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -242.407088945180
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.17941338
 One electron energy                          -337.18399544
 Two electron energy                            94.77690650
 Virial ratio                                    1.98869267
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -242.407088945107
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.17941338
 One electron energy                          -337.18399544
 Two electron energy                            94.77690650
 Virial ratio                                    1.98869267
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999960558
 !MCSCF expec                      <3.2|LXLX|3.2>     0.000000039442
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999725
 !MCSCF expec                      <2.2|LYLY|2.2>     0.000000039717
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999960558
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000000275
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999999725
 !MCSCF expec                      <3.2|LZLZ|3.2>     1.000000000000
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 6 4 5 3   2 6 4 3 5 1 2 6 4 3   5 1 5 3 4 6 2 2 6 4   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 3   2 1 6 5 4 7 910 8 3   2 1 5 4 6 810 7 9 6   5 4 810 7 9 3 2 1 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.61668     1  1  s    0.99962
    2.1     2.00000    -4.92093     1  2  s    0.99866
    3.1     1.92521    -0.38340     1  3  s    1.01634
    4.1     0.00062     4.21806     1  2  s    1.85486    1  3  s    0.37347    1  6  s   -2.39811    1  7  s    0.64053
    1.2     1.99659    -3.21161     1  1  pz   1.00327
    2.2     1.99659    -3.21161     1  1  py   1.00327
    3.2     1.99659    -3.21161     1  1  px   1.00327
    4.2     0.35837     0.00975     1  2  pz   1.13338
    5.2     0.35837     0.00975     1  2  py   1.13338
    6.2     0.35837     0.00975     1  2  px   1.13338
    7.2     0.00309     4.80316     1  1  px   2.19333    1  3  px  -0.79011    1  5  px  -1.54535    1  6  px  -0.27506
    8.2     0.00309     4.80316     1  1  py   2.19333    1  3  py  -0.79011    1  5  py  -1.54535    1  6  py  -0.27506
    9.2     0.00309     4.80316     1  1  pz   2.19333    1  3  pz  -0.79011    1  5  pz  -1.54535    1  6  pz  -0.27506
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 222a00000      0.97857990     -0.00001622     -0.00000069
 20 22200a000      0.00000069      0.00019435      0.97857988
 20 2220a0000      0.00001622      0.97857988     -0.00019435
 00 22220a000     -0.00000010     -0.00002701     -0.13602005
 00 2222a0000     -0.00000226     -0.13602005      0.00002701
 00 222a20000     -0.13602005      0.00000226      0.00000010
 00 222a02000     -0.13602005      0.00000226      0.00000010
 00 22202a000     -0.00000010     -0.00002701     -0.13602005
 00 2220a2000     -0.00000226     -0.13602005      0.00002701
 
 Energy:        -242.40708895   -242.40708895   -242.40708895
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.64       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.62      7.80      0.04      1.43
 REAL TIME  *        18.57 SEC
 DISK USED  *        32.53 MB (local),        1.07 GB (total)
 SF USED    *        12.28 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -242.4070889   2.0
    -242.4070889   2.0
    -242.4070889   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 13
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:    10933 conf    38682 CSFs
 N elec internal:    69576 conf   339768 CSFs
 N-1 el internal:    58278 conf   453024 CSFs
 N-2 el internal:    34330 conf   424008 CSFs

 Number of electrons in valence space:                     11
 Maximum number of open shell orbitals in reference space:  9
 Maximum number of open shell orbitals in internal spaces: 11


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:       11 (   2   9 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.31 MW


 Number of p-space configurations:  11

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -242.40708895
     2      -242.40708895
     3      -242.40708895

 Number of blocks in overlap matrix:    33   Smallest eigenvalue:  0.72D-05
 Number of N-2 electron functions:     432
 Number of N-1 electron functions:  453024

 Number of internal configurations:               170370
 Number of singly external configurations:      14046192
 Number of doubly external configurations:        416700
 Total number of contracted configurations:     14633262
 Total number of uncontracted configurations:  419778450

 Diagonal Coupling coefficients finished.               Storage:******** words, CPU-Time:    150.62 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1037834 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -242.40708895    -0.00000000    -0.14710306  0.22D-01  0.43D-02   162.98
    1     2     2     1.00000000     0.00000000  -242.40708895    -0.00000000    -0.14716062  0.23D-01  0.43D-02   162.98
    1     3     3     1.00000000     0.00000000  -242.40708895     0.00000000    -0.14716026  0.23D-01  0.43D-02   162.98
    2     1     1     1.03162362    -0.18665391  -242.59374286    -0.18665391    -0.01442399  0.94D-03  0.33D-03   354.31
    2     2     2     1.03175839    -0.18663146  -242.59372041    -0.18663146    -0.01445254  0.96D-03  0.33D-03   354.31
    2     3     3     1.03175848    -0.18663136  -242.59372031    -0.18663136    -0.01445260  0.96D-03  0.33D-03   354.31
    3     1     1     1.03188859    -0.20215202  -242.60924097    -0.01549811    -0.00191280  0.14D-03  0.10D-03   544.57
    3     2     2     1.03189772    -0.20214363  -242.60923258    -0.01551217    -0.00191746  0.15D-03  0.10D-03   544.57
    3     3     3     1.03189764    -0.20214361  -242.60923255    -0.01551225    -0.00191747  0.15D-03  0.10D-03   544.57
    4     1     1     1.03787499    -0.20516170  -242.61225065    -0.00300968    -0.00079791  0.78D-04  0.39D-04   736.51
    4     2     2     1.03786559    -0.20515682  -242.61224577    -0.00301319    -0.00079996  0.79D-04  0.39D-04   736.51
    4     3     3     1.03786559    -0.20515680  -242.61224575    -0.00301319    -0.00079998  0.79D-04  0.39D-04   736.51
    5     1     1     1.03881774    -0.20652527  -242.61361422    -0.00136357    -0.00043460  0.25D-04  0.18D-04   926.83
    5     2     2     1.03880733    -0.20652303  -242.61361197    -0.00136620    -0.00043531  0.26D-04  0.18D-04   926.83
    5     3     3     1.03880732    -0.20652301  -242.61361195    -0.00136621    -0.00043532  0.26D-04  0.18D-04   926.83
    6     1     1     1.03843977    -0.20709583  -242.61418477    -0.00057056    -0.00016242  0.13D-04  0.67D-05  1117.02
    6     2     2     1.03842856    -0.20709454  -242.61418348    -0.00057151    -0.00016300  0.13D-04  0.67D-05  1117.02
    6     3     3     1.03842850    -0.20709452  -242.61418347    -0.00057152    -0.00016300  0.13D-04  0.67D-05  1117.02
    7     1     1     1.03971773    -0.20729958  -242.61438853    -0.00020376    -0.00007921  0.93D-05  0.36D-05  1305.89
    7     2     2     1.03971883    -0.20729880  -242.61438775    -0.00020427    -0.00007949  0.95D-05  0.36D-05  1305.89
    7     3     3     1.03971882    -0.20729880  -242.61438774    -0.00020427    -0.00007950  0.95D-05  0.36D-05  1305.89
    8     1     1     1.03976502    -0.20742097  -242.61450992    -0.00012139    -0.00005627  0.40D-05  0.24D-05  1495.61
    8     2     2     1.03976372    -0.20742047  -242.61450941    -0.00012166    -0.00005645  0.41D-05  0.24D-05  1495.61
    8     3     3     1.03976372    -0.20742046  -242.61450941    -0.00012166    -0.00005645  0.41D-05  0.24D-05  1495.61
    9     1     1     1.03993667    -0.20748717  -242.61457612    -0.00006619    -0.00002576  0.20D-05  0.11D-05  1684.78
    9     2     2     1.03993175    -0.20748687  -242.61457581    -0.00006640    -0.00002586  0.20D-05  0.11D-05  1684.78
    9     3     3     1.03993171    -0.20748686  -242.61457581    -0.00006640    -0.00002586  0.20D-05  0.11D-05  1684.78
   10     1     1     1.04040122    -0.20751817  -242.61460712    -0.00003101    -0.00001326  0.18D-05  0.62D-06  1874.01
   10     2     2     1.04040124    -0.20751799  -242.61460694    -0.00003113    -0.00001331  0.19D-05  0.62D-06  1874.01
   10     3     3     1.04040123    -0.20751799  -242.61460694    -0.00003113    -0.00001331  0.19D-05  0.62D-06  1874.01
   11     1     1     1.04032612    -0.20753779  -242.61462674    -0.00001962    -0.00001032  0.79D-06  0.45D-06  2064.02
   11     2     2     1.04032505    -0.20753767  -242.61462662    -0.00001968    -0.00001036  0.80D-06  0.45D-06  2064.02
   11     3     3     1.04032505    -0.20753767  -242.61462662    -0.00001968    -0.00001036  0.80D-06  0.45D-06  2064.02
   12     1     1     1.04043140    -0.20754950  -242.61463845    -0.00001171    -0.00000522  0.45D-06  0.23D-06  2252.27
   12     2     2     1.04042943    -0.20754942  -242.61463837    -0.00001175    -0.00000524  0.46D-06  0.23D-06  2252.27
   12     3     3     1.04042941    -0.20754942  -242.61463837    -0.00001175    -0.00000524  0.46D-06  0.23D-06  2252.27
   13     1     1     1.04062761    -0.20755561  -242.61464456    -0.00000611    -0.00000282  0.40D-06  0.14D-06  2441.33
   13     2     2     1.04062773    -0.20755556  -242.61464451    -0.00000614    -0.00000283  0.40D-06  0.14D-06  2441.33
   13     3     3     1.04062772    -0.20755556  -242.61464450    -0.00000614    -0.00000283  0.40D-06  0.14D-06  2441.33
   14     1     1     1.04059357    -0.20755966  -242.61464860    -0.00000405    -0.00000229  0.18D-06  0.10D-06  2631.11
   14     2     2     1.04059284    -0.20755963  -242.61464857    -0.00000406    -0.00000230  0.18D-06  0.10D-06  2631.11
   14     3     3     1.04059283    -0.20755962  -242.61464857    -0.00000406    -0.00000230  0.18D-06  0.10D-06  2631.11
   15     1     1     1.04063979    -0.20756225  -242.61465119    -0.00000259    -0.00000124  0.11D-06  0.58D-07  2821.06
   15     2     2     1.04063893    -0.20756223  -242.61465117    -0.00000260    -0.00000125  0.11D-06  0.58D-07  2821.06
   15     3     3     1.04063892    -0.20756223  -242.61465117    -0.00000260    -0.00000125  0.11D-06  0.58D-07  2821.06
   16     1     1     1.04071814    -0.20756366  -242.61465261    -0.00000142    -0.00000070  0.96D-07  0.36D-07  3012.54
   16     2     2     1.04071821    -0.20756365  -242.61465260    -0.00000142    -0.00000070  0.97D-07  0.36D-07  3012.54
   16     3     3     1.04071820    -0.20756365  -242.61465260    -0.00000142    -0.00000070  0.97D-07  0.36D-07  3012.54
   17     1     1     1.04070646    -0.20756464  -242.61465359    -0.00000097    -0.00000058  0.45D-07  0.27D-07  3201.13
   17     2     2     1.04070606    -0.20756463  -242.61465357    -0.00000098    -0.00000058  0.45D-07  0.27D-07  3201.13
   17     3     3     1.04070605    -0.20756463  -242.61465357    -0.00000098    -0.00000058  0.45D-07  0.27D-07  3201.13
   18     1     1     1.04072689    -0.20756529  -242.61465424    -0.00000065    -0.00000033  0.28D-07  0.16D-07  3389.42
   18     2     2     1.04072654    -0.20756529  -242.61465423    -0.00000066    -0.00000033  0.29D-07  0.16D-07  3389.42
   18     3     3     1.04072654    -0.20756529  -242.61465423    -0.00000066    -0.00000033  0.29D-07  0.16D-07  3389.42
   19     1     1     1.04075973    -0.20756566  -242.61465461    -0.00000037    -0.00000019  0.24D-07  0.10D-07  3579.31
   19     2     2     1.04075975    -0.20756566  -242.61465460    -0.00000037    -0.00000019  0.24D-07  0.10D-07  3579.31
   19     3     3     1.04075975    -0.20756566  -242.61465460    -0.00000037    -0.00000019  0.24D-07  0.10D-07  3579.31
   20     1     1     1.04075726    -0.20756592  -242.61465487    -0.00000026    -0.00000016  0.13D-07  0.78D-08  3767.88
   20     2     2     1.04075703    -0.20756592  -242.61465486    -0.00000026    -0.00000016  0.13D-07  0.79D-08  3767.88
   20     3     3     1.04075703    -0.20756592  -242.61465486    -0.00000026    -0.00000016  0.13D-07  0.79D-08  3767.88
   21     1     1     1.04076587    -0.20756610  -242.61465505    -0.00000018    -0.00000009  0.78D-08  0.47D-08  3956.22
   21     2     2     1.04076573    -0.20756610  -242.61465504    -0.00000018    -0.00000009  0.79D-08  0.47D-08  3956.22
   21     3     3     1.04076573    -0.20756610  -242.61465504    -0.00000018    -0.00000009  0.79D-08  0.47D-08  3956.22
   22     1     1     1.04078006    -0.20756620  -242.61465515    -0.00000010    -0.00000005  0.65D-08  0.32D-08  4144.22
   22     2     2     1.04078007    -0.20756620  -242.61465515    -0.00000010    -0.00000005  0.65D-08  0.32D-08  4144.22
   22     3     3     1.04078007    -0.20756620  -242.61465514    -0.00000010    -0.00000005  0.65D-08  0.32D-08  4144.22


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.0%
 S   1.3%   4.0%
 P   1.6%  32.6%  55.0%

 Initialization:   3.8%
 Other:            0.7%

 Total CPU:     4144.2 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22022200/000           0.0000000  -0.0000000   0.9610527
 2202220/0000           0.0000000   0.9610527  -0.0000000
 220222/00000           0.9610527  -0.0000000   0.0000000
 20022202/000           0.0000000  -0.0000000  -0.1206647
 2002220/2000          -0.0000000  -0.1206647  -0.0000000
 200222/02000          -0.1206647   0.0000000   0.0000000
 200222/20000          -0.1206647   0.0000000   0.0000000
 20022220/000           0.0000000  -0.0000000  -0.1206644
 2002222/0000          -0.0000000  -0.1206644  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\0222/00000  11.1    -0.0587467  -0.0000000   0.0000000
 2\022200/000  13.1    -0.0508775  -0.0000000   0.0000000
 2\02220/0000  12.1    -0.0508775  -0.0000000   0.0000000
 2\022200/000  14.1    -0.0000000  -0.0508774  -0.0000000
 2\02220/0000  14.1     0.0000000  -0.0000000  -0.0508774
 2\0222/00000  12.1    -0.0000000  -0.0508773  -0.0000000
 2\0222/00000  13.1     0.0000000  -0.0000000  -0.0508773
 2\022200/000  15.1     0.0000000  -0.0000000  -0.0508773
 2\02220/0000  15.1     0.0000000   0.0508773   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.978765    0.000000    0.000000
 2          -0.000000    0.978765   -0.000000
 3           0.000000   -0.000000    0.978765

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.978765   -0.000000    0.000000
 2          -0.000000    0.978765   -0.000000
 3           0.000000   -0.000000    0.978765


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97876471 (fixed)   0.97926914 (relaxed)   0.97876471 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00296189   -0.03073777   -0.15651611
 Singles      0.02752082   -0.04479965   -0.04838637
 Pairs        0.01338002   -0.00000000   -0.00266372
 Total        1.04386274   -0.07553742   -0.20756620
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.40708895
 Nuclear energy                         0.00000000
 Kinetic energy                       245.30077715
 One electron energy                 -337.04108446
 Two electron energy                   94.42642931
 Virial quotient                       -0.98904968
 Correlation energy                    -0.20756620
 !MRCI STATE 1.2 Energy              -242.614655149943

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.62375957 (Davidson, fixed reference)
 Cluster corrected energies          -242.62353641 (Davidson, relaxed reference)
 Cluster corrected energies          -242.62375957 (Davidson, rotated reference)

 Cluster corrected energies          -242.62213313 (Pople, fixed reference)
 Cluster corrected energies          -242.62194512 (Pople, relaxed reference)
 Cluster corrected energies          -242.62213313 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97876470 (fixed)   0.97926914 (relaxed)   0.97876470 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00296190   -0.03073777   -0.15651608
 Singles      0.02752091   -0.04479968   -0.04838637
 Pairs        0.01337995    0.00000000   -0.00266374
 Total        1.04386276   -0.07553745   -0.20756620
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.40708895
 Nuclear energy                         0.00000000
 Kinetic energy                       245.30077770
 One electron energy                 -337.04108438
 Two electron energy                   94.42642923
 Virial quotient                       -0.98904968
 Correlation energy                    -0.20756620
 !MRCI STATE 2.2 Energy              -242.614655145081

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.62375957 (Davidson, fixed reference)
 Cluster corrected energies          -242.62353641 (Davidson, relaxed reference)
 Cluster corrected energies          -242.62375957 (Davidson, rotated reference)

 Cluster corrected energies          -242.62213313 (Pople, fixed reference)
 Cluster corrected energies          -242.62194512 (Pople, relaxed reference)
 Cluster corrected energies          -242.62213313 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.97876470 (fixed)   0.97926914 (relaxed)   0.97876470 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00296190   -0.03073777   -0.03003513
 Singles      0.02752091   -0.04479968   -0.04838637
 Pairs        0.01337995   -0.13202875   -0.12914469
 Total        1.04386276   -0.20756620   -0.20756620
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.40708895
 Nuclear energy                         0.00000000
 Kinetic energy                       245.30077766
 One electron energy                 -337.04108435
 Two electron energy                   94.42642921
 Virial quotient                       -0.98904968
 Correlation energy                    -0.20756620
 !MRCI STATE 3.2 Energy              -242.614655144979

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.62375957 (Davidson, fixed reference)
 Cluster corrected energies          -242.62353641 (Davidson, relaxed reference)
 Cluster corrected energies          -242.62375957 (Davidson, rotated reference)

 Cluster corrected energies          -242.62213313 (Pople, fixed reference)
 Cluster corrected energies          -242.62194512 (Pople, relaxed reference)
 Cluster corrected energies          -242.62213313 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      344.71       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4212.98   4203.34      7.80      0.04      1.43
 REAL TIME  *      4286.24 SEC
 DISK USED  *       376.61 MB (local),       11.15 GB (total)
 SF USED    *         3.70 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -242.62375957  AU                              
 SETTING HLSDIAG(2)     =      -242.62375957  AU                              
 SETTING HLSDIAG(3)     =      -242.62375957  AU                              


         HLSDIAG
    -242.6237596
    -242.6237596
    -242.6237596
                                                  


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

 Time for Seward_LS:       0.72 sec

        2497107. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.72 sec, REAL time:      0.75 sec


 SORTLS1 read     2507927. and wrote     2507927. SO integrals in    90 records. CPU time:      0.06 sec, REAL time:      0.08 sec
 SORTLS2 read     2507927. and wrote     2507927. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    73.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    73.7 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -242.614655   -242.614655   -242.614655
 Replaced energies:   -242.623760   -242.623760   -242.623760



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -242.62375957

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00     -38.01
                            0.00      -0.00       0.00       0.00      38.01      -0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      38.01     -38.01      -0.00      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00      38.01      -0.00      -0.00
                           -0.00     -38.01      -0.00       0.00       0.00      -0.00

    4   1.2  0.5 -0.5       0.00      -0.00      38.01       0.00       0.00       0.00
                           -0.00      38.01      -0.00      -0.00       0.00      -0.00

    5   2.2  0.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00
                          -38.01       0.00      -0.00      -0.00      -0.00     -38.01

    6   3.2  0.5 -0.5     -38.01       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      38.01       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -242.62410593    -0.00034635      -76.02      0.00000000        0.00      0.0000
     2  -242.62410593    -0.00034635      -76.02      0.00000000        0.00      0.0000
     3  -242.62358640     0.00017318       38.01      0.00051953      114.02      0.0141
     4  -242.62358640     0.00017318       38.01      0.00051953      114.02      0.0141
     5  -242.62358639     0.00017318       38.01      0.00051953      114.02      0.0141
     6  -242.62358639     0.00017318       38.01      0.00051953      114.02      0.0141


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5  -0.000000000   0.577351633  -0.018930147   0.812533692  -0.077763568  -0.006969088
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.577349811  -0.000000000   0.473741596   0.011037080   0.058608999  -0.653979990
                         0.000000029  -0.000000000  -0.010826160  -0.000252232  -0.009307320   0.103853462

    3    3.2  0.5  0.5  -0.000000029   0.000000000   0.007737488   0.000180257  -0.010400344   0.116049818
                        -0.577349363   0.000000000   0.338582837   0.007888192  -0.065491913   0.730782000

    4    1.2  0.5 -0.5   0.000000029   0.000000000   0.018563583   0.000432488  -0.001093013   0.012196228
                         0.577351633   0.000000000   0.812321607   0.018925206  -0.006882841   0.076801202

    5    2.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000007  -0.000000022  -0.000000237   0.000000060
                        -0.000000000   0.577349811   0.011039962  -0.473865282  -0.662174726  -0.059343416

    6    3.2  0.5 -0.5   0.000000000   0.577349363   0.007890252  -0.338671237   0.739939114   0.066312577
                         0.000000000   0.000000000  -0.000000007  -0.000000022  -0.000000237   0.000000060


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5   0.000%  33.333%   0.036%  66.021%   0.605%   0.005%
    2    2.2  0.5  0.5  33.333%   0.000%  22.455%   0.012%   0.352%  43.848%
    3    3.2  0.5  0.5  33.333%   0.000%  11.470%   0.006%   0.440%  54.751%
    4    1.2  0.5 -0.5  33.333%   0.000%  66.021%   0.036%   0.005%   0.605%
    5    2.2  0.5 -0.5   0.000%  33.333%   0.012%  22.455%  43.848%   0.352%
    6    3.2  0.5 -0.5   0.000%  33.333%   0.006%  11.470%  54.751%   0.440%


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
              1      24       70.26       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      344.71       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6609.24   2396.24   4203.34      7.80      0.04      1.43
 REAL TIME  *      6709.18 SEC
 DISK USED  *       376.64 MB (local),       11.43 GB (total)
 SF USED    *         3.70 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -242.623586393951

              CI           MULTI         RHF-SCF
   -242.61465514   -242.40708895   -242.31083015
 **********************************************************************************************************************************
 Molpro calculation terminated
