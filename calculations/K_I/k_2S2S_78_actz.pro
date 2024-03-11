
 Working directory              : /wrk/irikura/molpro.covCCZkfcT/
 Global scratch directory       : /wrk/irikura/molpro.covCCZkfcT/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.covCCZkfcT/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,K SO-CI
                                                                                 ! (7/8) active space
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={K};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=18,sym=1,spin=0}
 
 {multi
     closed,3,3
     occ,5,9
     wf,nelec=19,sym=1,spin=1;state,2;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=1;state,2; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   K SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Mar-24          TIME: 13:11:44  
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

 Library entry K      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry K      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry K      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry K      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  K      19.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   19
 NUMBER OF PRIMITIVE AOS:         167
 NUMBER OF SYMMETRY AOS:          149
 NUMBER OF CONTRACTIONS:           84   (   39Ag  +   45Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     9.437 MB (compressed) written to integral file ( 17.0%)

     Node minimum: 0.262 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     271872.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     271872      RECORD LENGTH: 524288

 Memory used in sort:       0.83 MW

 SORT1 READ     7196526. AND WROTE       58575. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC
 SORT2 READ      690124. AND WROTE     3262620. INTEGRALS IN     12 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.01 SEC

 Node minimum:      270664.  Node maximum:      273888. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910

 Eigenvalues of metric

         1 0.397E-03 0.547E-03 0.547E-03 0.547E-03 0.547E-03 0.547E-03 0.533E-02 0.155E-01
         2 0.604E-02 0.604E-02 0.604E-02 0.206E-01 0.206E-01 0.206E-01 0.123E+00 0.123E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.96       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.14      0.81
 REAL TIME  *         1.74 SEC
 DISK USED  *        29.30 MB (local),      403.81 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    4   6

 Initial occupancy:   3   6

 NELEC=   18   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -601.31016053    -601.31016053     0.00D+00     0.14D+00     0     0       0.00      0.00    start
   2     -601.31042212      -0.00026159     0.69D-03     0.10D-02     1     0       0.00      0.00    diag
   3     -601.31043138      -0.00000926     0.22D-03     0.32D-03     2     0       0.00      0.00    diag
   4     -601.31043189      -0.00000051     0.32D-04     0.10D-03     3     0       0.01      0.01    diag
   5     -601.31043189      -0.00000000     0.18D-05     0.52D-05     4     0       0.00      0.01    diag
   6     -601.31043189      -0.00000000     0.12D-06     0.30D-06     5     0       0.00      0.01    diag
   7     -601.31043189       0.00000000     0.59D-08     0.11D-07     0     0       0.00      0.01    diag

 Final occupancy:   3   6

 !RHF STATE 1.1 Energy               -601.310431894366
  RHF One-electron energy            -822.838185200751
  RHF Two-electron energy             221.527753306385
  RHF Kinetic energy                  615.470603283654
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.976992936277

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -134.35267     1  1  s    0.99992
    2.1     2.00000   -14.81993     1  2  s    1.00083
    3.1     2.00000    -1.97678     1  3  s    0.99646
    1.2     2.00000   -11.74393     1  1  pz   1.00003
    2.2     2.00000   -11.74393     1  1  px   1.00003
    3.2     2.00000   -11.74393     1  1  py   1.00002
    4.2     2.00000    -1.17005     1  2  pz   1.00588
    5.2     2.00000    -1.17005     1  2  py   1.00588
    6.2     2.00000    -1.17005     1  2  px   1.00589


 HOMO      6.2    -1.170054 =     -31.8388eV
 LUMO      4.1    -0.147480 =      -4.0131eV
 LUMO-HOMO         1.022573 =      27.8256eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.96       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.44       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.18      0.04      0.81
 REAL TIME  *         2.72 SEC
 DISK USED  *        29.68 MB (local),      408.37 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   6 (    3    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      70 (   34   36)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             2
 Number of CSFs:            1148   (1940 determinants, 3920 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 6 4 5 3   4 6 3 5 2 1 4 6 5 3   2 1 4 6 3 5 2 1 6 4   3 5 2 4 6 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.579D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.597D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.875D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.557D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.749D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.292D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.560D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.896D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.130D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   2 1 3 2 1 9 7 810 6   4 5 3 2 1 610 8 9 7   4 5 3 2 110 8 4 5 9
                                        7 6 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.50000   0.50000
 
 Number of orbital rotations:  518  ( 24 closed/active, 210 closed/virtual, 0 active/active, 284 active/virtual )
 Total number of variables:    4398
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   28    3   -601.41475590    -601.44180528   -0.02704937    0.01245024 0.00012406 0.00004456  0.17E+01      0.50
   2   11   23    0   -601.44198596    -601.44216540   -0.00017944    0.00728782 0.00002109 0.00000685  0.12E+00      1.00
   3   13   20    0   -601.44216542    -601.44216542   -0.00000000    0.00002493 0.00000000 0.00000000  0.37E-03      1.59

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.79E-09)
                       Final energy:   -601.44216542
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -601.485782050822
 Nuclear energy                                  0.00000000
 Kinetic energy                                615.59038246
 One electron energy                          -826.84826581
 Two electron energy                           225.36248376
 Virial ratio                                    1.97708769
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -601.398548794865
 Nuclear energy                                  0.00000000
 Kinetic energy                                615.51620386
 One electron energy                          -824.65983669
 Two electron energy                           223.26128790
 Virial ratio                                    1.97706372
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 3 5 6 4 2   5 4 3 6 2 1 4 5 3 6   2 1 4 6 5 3 2 1 4 5   6 3 2 4 5 6 3 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 2 1 3   2 1 3 2 1 3 1 2 9 7   810 6 4 5 1 2 3 610   8 9 7 4 510 8 5 4 9
                                        7 6 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -134.19627     1  1  s    0.99992
    2.1     2.00000   -14.66275     1  2  s    1.00093
    3.1     2.00000    -1.81953     1  3  s    0.99831
    4.1     0.50001    -0.04758     1  4  s    1.32575    1  6  s    0.44197    1  9  s   -0.81730
    5.1     0.50000    -0.00905     1  4  s   -0.68666    1  5  s    0.42170    1  6  s   -1.22599    1  9  s    2.22610
    1.2     2.00000   -11.44305     1  1  pz   0.99265
    2.2     2.00000   -11.44305     1  1  py   0.99265
    3.2     2.00000   -11.44305     1  1  px   0.99265
    4.2     1.99608    -1.15416     1  2  px   0.98572
    5.2     1.99608    -1.15416     1  2  py   0.98572
    6.2     1.99608    -1.15416     1  2  pz   0.98572
    7.2     0.00392     1.40429     1  1  pz   0.83863    1  2  pz   1.11745    1  6  pz  -1.79048    1  7  pz   0.29937
    8.2     0.00392     1.40429     1  1  py   0.83863    1  2  py   1.11745    1  6  py  -1.79048    1  7  py   0.29937
    9.2     0.00392     1.40429     1  1  px   0.83863    1  2  px   1.11745    1  6  px  -1.79048    1  7  px   0.29937
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 0a 222000      0.34556726      0.93527592
 a0 222000      0.93525378     -0.34555201
 
 Energy:     -601.48578205   -601.39854879
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.36       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.68       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.37      1.19      0.04      0.81
 REAL TIME  *         4.54 SEC
 DISK USED  *        34.12 MB (local),      461.71 MB (total)
 SF USED    *        12.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -601.4857821  -0.0
    -601.3985488  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 19
 Maximum number of shells:             7
 Maximum number of spin couplings:   429

 Reference space:      462 conf     1148 CSFs
 N elec internal:    21041 conf    93222 CSFs
 N-1 el internal:    21119 conf   160098 CSFs
 N-2 el internal:    11243 conf   139473 CSFs

 Number of electrons in valence space:                     17
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   5 (   2   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      70 (  34  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.04 sec, npass=  1  Memory used:   0.44 MW


 Number of p-space configurations:   2

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -601.48578205
     2      -601.39854879

 Number of blocks in overlap matrix:   104   Smallest eigenvalue:  0.22D-05
 Number of N-2 electron functions:     312
 Number of N-1 electron functions:  160098

 Number of internal configurations:                46496
 Number of singly external configurations:       5603204
 Number of doubly external configurations:        383030
 Total number of contracted configurations:      6032730
 Total number of uncontracted configurations:  175835664

 Diagonal Coupling coefficients finished.               Storage:  17089340 words, CPU-Time:      6.41 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3985811 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -601.48578205     0.00000000    -0.14689734  0.67D-02  0.17D-01     8.70
    1     2     2     1.00000000     0.00000000  -601.39854879    -0.00000000    -0.14096530  0.55D-02  0.16D-01     8.70
    2     1     1     1.03685490    -0.18895047  -601.67473252    -0.18895047    -0.01797514  0.12D-02  0.15D-02    39.06
    2     2     2     1.03423501    -0.18313565  -601.58168445    -0.18313565    -0.01707407  0.96D-03  0.14D-02    39.06
    3     1     1     1.05035279    -0.20963417  -601.69541622    -0.02068369    -0.00173967  0.10D-03  0.16D-03    69.59
    3     2     2     1.04706016    -0.20303328  -601.60158207    -0.01989763    -0.00165177  0.71D-04  0.16D-03    69.59
    4     1     1     1.05390647    -0.21173583  -601.69751788    -0.00210166    -0.00024834  0.14D-04  0.23D-04    99.90
    4     2     2     1.05005718    -0.20504618  -601.60359498    -0.00201291    -0.00023168  0.12D-04  0.20D-04    99.90
    5     1     1     1.05462369    -0.21204636  -601.69782841    -0.00031053    -0.00004649  0.25D-05  0.39D-05   130.14
    5     2     2     1.05062319    -0.20533713  -601.60388593    -0.00029095    -0.00004204  0.20D-05  0.33D-05   130.14
    6     1     1     1.05488766    -0.21209916  -601.69788121    -0.00005280    -0.00000823  0.45D-06  0.77D-06   160.54
    6     2     2     1.05083917    -0.20538472  -601.60393351    -0.00004759    -0.00000741  0.35D-06  0.67D-06   160.54
    7     1     1     1.05500442    -0.21210948  -601.69789153    -0.00001032    -0.00000209  0.15D-06  0.19D-06   190.74
    7     2     2     1.05092779    -0.20539408  -601.60394288    -0.00000937    -0.00000179  0.11D-06  0.15D-06   190.74
    8     1     1     1.05503564    -0.21211185  -601.69789390    -0.00000238    -0.00000053  0.38D-07  0.42D-07   220.93
    8     2     2     1.05094953    -0.20539614  -601.60394493    -0.00000205    -0.00000045  0.27D-07  0.32D-07   220.93
    9     1     1     1.05504761    -0.21211243  -601.69789448    -0.00000058    -0.00000013  0.80D-08  0.12D-07   251.08
    9     2     2     1.05095665    -0.20539662  -601.60394541    -0.00000048    -0.00000010  0.57D-08  0.93D-08   251.08
   10     1     1     1.05505849    -0.21211258  -601.69789463    -0.00000015    -0.00000004  0.27D-08  0.35D-08   281.18
   10     2     2     1.05096388    -0.20539674  -601.60394553    -0.00000012    -0.00000003  0.18D-08  0.25D-08   281.18


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.5%
 S   2.2%  16.6%
 P   0.9%  61.7%  12.0%

 Initialization:   2.4%
 Other:            1.8%

 Total CPU:      281.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220/222222000           0.3001037   0.9252309
 22/0222222000           0.9227771  -0.2986885

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.972501   -0.038467
 2           0.040561    0.974243

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.973260    0.001011
 2           0.001011    0.975086


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97250056 (fixed)   0.97327936 (relaxed)   0.97326050 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00061099   -0.00509888   -0.17065354
 Singles      0.00861973   -0.03973144   -0.03936431
 Pairs        0.04647240    0.00764874   -0.00209472
 Total        1.05570312   -0.03718158   -0.21211258
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.48563853
 Nuclear energy                         0.00000000
 Kinetic energy                       615.48879383
 One electron energy                 -826.68615497
 Two electron energy                  224.98826034
 Virial quotient                       -0.97759358
 Correlation energy                    -0.21225610
 !MRCI STATE 1.1 Energy              -601.697894630131

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.70971796 (Davidson, fixed reference)
 Cluster corrected energies          -601.70970927 (Davidson, relaxed reference)
 Cluster corrected energies          -601.70971796 (Davidson, rotated reference)

 Cluster corrected energies          -601.70868710 (Pople, fixed reference)
 Cluster corrected energies          -601.70867883 (Pople, relaxed reference)
 Cluster corrected energies          -601.70868710 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97424289 (fixed)   0.97510299 (relaxed)   0.97508633 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00075110   -0.00561131   -0.00571059
 Singles      0.00618511   -0.03506723   -0.03454715
 Pairs        0.04481705   -0.16447765   -0.16513899
 Total        1.05175326   -0.20515619   -0.20539674
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.39869231
 Nuclear energy                         0.00000000
 Kinetic energy                       615.39093325
 One electron energy                 -824.40881839
 Two electron energy                  222.80487286
 Virial quotient                       -0.97759637
 Correlation energy                    -0.20525322
 !MRCI STATE 2.1 Energy              -601.603945533532

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.61456806 (Davidson, fixed reference)
 Cluster corrected energies          -601.61456068 (Davidson, relaxed reference)
 Cluster corrected energies          -601.61456806 (Davidson, rotated reference)

 Cluster corrected energies          -601.61361252 (Pople, fixed reference)
 Cluster corrected energies          -601.61360554 (Pople, relaxed reference)
 Cluster corrected energies          -601.61361252 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       33.36       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       94.48       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       288.88    286.50      1.19      0.04      0.81
 REAL TIME  *       297.75 SEC
 DISK USED  *       127.92 MB (local),        1.55 GB (total)
 SF USED    *         1.04 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -601.70971796  AU                              
 SETTING HLSDIAG(2)     =      -601.61456806  AU                              


         HLSDIAG
    -601.7097180
    -601.6145681
                                                  


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

 Time for Seward_LS:       4.68 sec

        3938743. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      967 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.70 sec, REAL time:      4.72 sec


 SORTLS1 read     3942450. and wrote     3942450. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.06 sec
 SORTLS2 read     3942450. and wrote    19122750. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:    98.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    98.4 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   2

 Original energies:   -601.697895   -601.603946
 Replaced energies:   -601.709718   -601.614568



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -601.70971796

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4

    1   1.1  0.5  0.5       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00

    2   2.1  0.5  0.5       0.00   20882.99       0.00      -0.00
                           -0.00       0.00      -0.00       0.00

    3   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00

    4   2.1  0.5 -0.5      -0.00      -0.00       0.00   20882.99
                           -0.00      -0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -601.70971796     0.00000000        0.00      0.00000000        0.00      0.0000
     2  -601.70971796     0.00000000        0.00      0.00000000        0.00      0.0000
     3  -601.61456806     0.09514990    20882.99      0.09514990    20882.99      2.5892
     4  -601.61456806     0.09514990    20882.99      0.09514990    20882.99      2.5892


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4

    1    1.1  0.5  0.5  -0.000000000   1.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  0.5  0.5   0.000000000   0.000000000  -0.016515876   0.000000000
                        -0.000000000   0.000000000  -0.016744313   0.999723389

    3    1.1  0.5 -0.5   0.998479214   0.000000000  -0.000000000  -0.000000000
                         0.055129479   0.000000000   0.000000000  -0.000000000

    4    2.1  0.5 -0.5  -0.000000000   0.000000000   0.999677022   0.016584471
                         0.000000000   0.000000000   0.009628402   0.016676375


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4

    1    1.1  0.5  0.5   0.000% 100.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%   0.055%  99.945%
    3    1.1  0.5 -0.5 100.000%   0.000%   0.000%   0.000%
    4    2.1  0.5 -0.5   0.000%   0.000%  99.945%   0.055%


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
              1      24       93.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       94.48       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       450.07    161.17    286.50      1.19      0.04      0.81
 REAL TIME  *       462.60 SEC
 DISK USED  *       127.96 MB (local),        1.79 GB (total)
 SF USED    *         1.04 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -601.614568056458

              CI           MULTI         RHF-SCF
   -601.60394553   -601.39854879   -601.31043189
 **********************************************************************************************************************************
 Molpro calculation terminated
