
 Working directory              : /wrk/irikura/molpro.U3KRNj004Q/
 Global scratch directory       : /wrk/irikura/molpro.U3KRNj004Q/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.U3KRNj004Q/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Sn SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sn};
 
 basis=aug-cc-pwCVTZ-PP
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,nelec=23,sym=2,spin=3}
 
 {multi
     closed,6,3
     occ,7,6
     wf,nelec=22,sym=1,spin=2;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=2;state,3; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.15 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 17-Apr-24          TIME: 09:54:43  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sn   ECP ECP28MDF                 selected for group  1
 Library entry SN     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SN     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SN     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SN     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SN     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  SN     22.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   22
 NUMBER OF PRIMITIVE AOS:         184
 NUMBER OF SYMMETRY AOS:          154
 NUMBER OF CONTRACTIONS:           96   (   47Ag  +   49Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.165E-04 0.202E-02 0.972E-02 0.121E-01 0.121E-01 0.121E-01 0.121E-01 0.121E-01
         2 0.734E-02 0.734E-02 0.734E-02 0.218E-01 0.218E-01 0.218E-01 0.155E+00 0.155E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     16.777 MB (compressed) written to integral file ( 19.2%)

     Node minimum: 0.786 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.07 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     48 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.91      0.67
 REAL TIME  *         1.74 SEC
 DISK USED  *        29.19 MB (local),      406.61 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -213.37042203    -213.37042203     0.00D+00     0.13D+00     0     0       0.00      0.00    start
   2     -213.37323440      -0.00281237     0.13D-02     0.43D-02     1     0       0.00      0.00    diag2
   3     -213.37353635      -0.00030194     0.73D-03     0.10D-02     2     0       0.01      0.01    diag2
   4     -213.37362630      -0.00008996     0.24D-03     0.83D-03     3     0       0.00      0.01    diag2
   5     -213.37363565      -0.00000935     0.63D-04     0.30D-03     4     0       0.00      0.01    diag2
   6     -213.37363625      -0.00000060     0.12D-04     0.95D-04     5     0       0.01      0.02    diag2
   7     -213.37363632      -0.00000007     0.31D-05     0.20D-04     6     0       0.00      0.02    diag2
   8     -213.37363633      -0.00000001     0.80D-06     0.12D-04     7     0       0.01      0.03    fixocc
   9     -213.37363633      -0.00000000     0.93D-07     0.15D-05     8     0       0.00      0.03    diag2
  10     -213.37363633      -0.00000000     0.15D-07     0.14D-06     0     0       0.01      0.04    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -213.373636325728
  RHF One-electron energy            -381.086680443693
  RHF Two-electron energy             167.713044117964
  RHF Kinetic energy                   82.648105638679
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.581712365660

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.62699     1  1  s    1.00568
    2.1     2.00000    -1.07683     1  1  d2-  0.85946    1  1  d2+ -0.51067
    3.1     2.00000    -1.07683     1  1  d2-  0.50835    1  1  d2+  0.85571
    4.1     2.00000    -1.07683     1  1  d1-  0.97730
    5.1     2.00000    -1.07683     1  1  d1+  0.98149
    6.1     2.00000    -1.07683     1  1  d0   0.99973
    7.1     2.00000    -0.29333     1  2  s    0.97876
    1.2     2.00000    -3.81329     1  1  px   0.86928    1  1  py  -0.49147
    2.2     2.00000    -3.81329     1  1  px   0.49521    1  1  py   0.86271
    3.2     2.00000    -3.81329     1  1  pz   0.99288
    4.2     1.00000    -0.05728     1  2  pz   0.76544
    5.2     1.00000    -0.05728     1  2  py   0.76356
    6.2     1.00000    -0.05728     1  2  px   0.79335


 HOMO      6.2    -0.057284 =      -1.5588eV
 LUMO      8.1     0.167568 =       4.5598eV
 LUMO-HOMO         0.224852 =       6.1185eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.53       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.98      0.07      0.67
 REAL TIME  *         2.24 SEC
 DISK USED  *        30.07 MB (local),      417.26 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      83 (   40   43)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.374D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.421D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.245D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.167D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 2 3   5 6 4 1 2 3 5 6 4 1   2 6 4 3 5 2 3 5 4 6   1 8121514131011 9 7
                                        2 6 4 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.388D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.411D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.110D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.220D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.262D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.797D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 2 1 3   2 1 9 7 5 4 6 810 6   4 5 810 9 7 3 2 1 8  10 6 9 7 5 4 3 2 1 6
                                        810 9 7 4 5 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    571
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11    9    0   -213.32173100    -213.34462889   -0.02289790    0.11628131 0.00025982 0.00000000  0.41E+00      0.24
   2    8    7    0   -213.34137917    -213.34394087   -0.00256170    0.13369840 0.00000614 0.00000000  0.36E-01      0.49
   3    7    6    0   -213.34395825    -213.34395859   -0.00000034    0.00113649 0.00000000 0.00000000  0.72E-03      0.71

 CONVERGENCE REACHED!  Final gradient:    0.00000017 ( 0.17E-06)
                       Final energy:   -213.34395859
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -213.343958588031
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.59483357
 One electron energy                          -376.11410124
 Two electron energy                           162.77014265
 Virial ratio                                    3.58301820
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -213.343958588031
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.59483357
 One electron energy                          -376.11410124
 Two electron energy                           162.77014265
 Virial ratio                                    3.58301820
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -213.343958588031
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.59483357
 One electron energy                          -376.11410124
 Two electron energy                           162.77014265
 Virial ratio                                    3.58301820
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     1.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>    -0.000000000000
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LYLY|3.1>     1.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     1.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     1.000000000000
 !MCSCF expec                      <3.1|LZLZ|3.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>     2.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     2.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 2 3   5 6 4 1 2 3 5 4 6 1   2 6 4 3 5 2 3 5 6 4   1 812 7141511 91310
                                        2 6 4 5 3 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 3 1 2 3   2 1 9 7 5 4 6 810 6   5 4 810 9 7 3 1 2 8  10 6 5 4 9 7 3 1 2 8
                                       10 6 4 5 9 7 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.85568     1  1  s    1.00483
    2.1     2.00000    -1.30545     1  1  d2-  1.00000
    3.1     2.00000    -1.30545     1  1  d2+  1.00000
    4.1     2.00000    -1.30545     1  1  d1-  1.00000
    5.1     2.00000    -1.30545     1  1  d1+  1.00000
    6.1     2.00000    -1.30545     1  1  d0   1.00000
    7.1     1.97348    -0.50159     1  2  s    1.02171
    1.2     2.00000    -4.04167     1  1  py   1.00003
    2.2     2.00000    -4.04167     1  1  px   1.00003
    3.2     2.00000    -4.04167     1  1  pz   1.00003
    4.2     0.67551    -0.06470     1  2  pz   1.01784
    5.2     0.67551    -0.06470     1  2  py   1.01784
    6.2     0.67551    -0.06470     1  2  px   1.01784
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 2 aa0         -0.00000000      0.99334779     -0.00000000
 2 a0a          0.99334779     -0.00000000     -0.00000000
 2 0aa         -0.00000000     -0.00000000      0.99334779
 0 2aa         -0.00000000     -0.00000000     -0.11515277
 0 aa2         -0.00000000     -0.11515277     -0.00000000
 0 a2a         -0.11515277      0.00000000      0.00000000
 
 Energy:     -213.34395859   -213.34395859   -213.34395859
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.72      0.73      0.07      0.67
 REAL TIME  *         3.21 SEC
 DISK USED  *        34.77 MB (local),      473.66 MB (total)
 SF USED    *        12.47 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3439586   2.0
    -213.3439586   2.0
    -213.3439586   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      571 conf     1077 CSFs
 N-1 el internal:      772 conf     2940 CSFs
 N-2 el internal:      397 conf     2695 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.34395859
     2      -213.34395859
     3      -213.34395859

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        122064
 Number of doubly external configurations:        822378
 Total number of contracted configurations:       944979
 Total number of uncontracted configurations:    4744665

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    456247 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34395859     0.00000000    -0.83080041  0.42D-01  0.11D+00     0.12
    1     2     2     1.00000000     0.00000000  -213.34395859     0.00000000    -0.83095590  0.43D-01  0.11D+00     0.12
    1     3     3     1.00000000     0.00000000  -213.34395859     0.00000000    -0.83066945  0.42D-01  0.11D+00     0.12
    2     1     1     1.09335893    -0.65547946  -213.99943805    -0.65547946    -0.01742954  0.30D-02  0.13D-02     2.37
    2     2     2     1.09347234    -0.65540193  -213.99936052    -0.65540193    -0.01751378  0.31D-02  0.13D-02     2.37
    2     3     3     1.09361094    -0.65530833  -213.99926692    -0.65530833    -0.01761371  0.31D-02  0.13D-02     2.37
    3     1     1     1.08396264    -0.67211701  -214.01607559    -0.01663754    -0.00036247  0.49D-04  0.38D-04     4.51
    3     2     2     1.08396088    -0.67211358  -214.01607217    -0.01671165    -0.00036606  0.49D-04  0.39D-04     4.51
    3     3     3     1.08395909    -0.67210994  -214.01606853    -0.01680161    -0.00036969  0.50D-04  0.39D-04     4.51
    4     1     1     1.08394643    -0.67248623  -214.01644482    -0.00036922    -0.00001253  0.26D-05  0.13D-05     6.69
    4     2     2     1.08394453    -0.67248607  -214.01644465    -0.00037248    -0.00001269  0.26D-05  0.13D-05     6.69
    4     3     3     1.08394276    -0.67248596  -214.01644455    -0.00037601    -0.00001279  0.26D-05  0.14D-05     6.69
    5     1     1     1.08401172    -0.67249959  -214.01645817    -0.00001336    -0.00000039  0.55D-07  0.51D-07     8.83
    5     2     2     1.08401143    -0.67249958  -214.01645817    -0.00001351    -0.00000040  0.56D-07  0.51D-07     8.83
    5     3     3     1.08401101    -0.67249958  -214.01645816    -0.00001362    -0.00000040  0.57D-07  0.52D-07     8.83
    6     1     1     1.08401247    -0.67250000  -214.01645859    -0.00000041    -0.00000002  0.17D-08  0.24D-08    11.02
    6     2     2     1.08401233    -0.67250000  -214.01645859    -0.00000042    -0.00000002  0.18D-08  0.25D-08    11.02
    6     3     3     1.08401222    -0.67250000  -214.01645859    -0.00000042    -0.00000002  0.18D-08  0.25D-08    11.02


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.8%
 S   0.8%   4.6%
 P   0.3%  29.4%  26.3%

 Initialization:   0.8%
 Other:           36.9%

 Total CPU:       11.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0          -0.0000000   0.0000000   0.9551153
 2222222222/0/           0.0000000   0.9551153  -0.0000000
 22222222220//           0.9551152  -0.0000000   0.0000000
 2222220222//2           0.0000000  -0.0000000  -0.0993615
 2222220222/2/          -0.0000000  -0.0993614   0.0000000
 22222202222//          -0.0993614   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000    0.960203
 2           0.960203    0.000000   -0.000000
 3          -0.000000    0.960203    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960203    0.000000    0.000000
 2           0.000000    0.960203   -0.000000
 3           0.000000   -0.000000    0.960203


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96020335 (fixed)   0.96026965 (relaxed)   0.96020335 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00055114   -0.00091347   -0.00118394
 Singles      0.01574994   -0.04709434   -0.05319081
 Pairs        0.06830883   -0.62449219   -0.61812526
 Total        1.08460991   -0.67250000   -0.67250000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34395859
 Nuclear energy                         0.00000000
 Kinetic energy                        82.96330982
 One electron energy                 -375.64836371
 Two electron energy                  161.63190512
 Virial quotient                       -2.57965189
 Correlation energy                    -0.67250000
 !MRCI STATE 1.1 Energy              -214.016458587143

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07335875 (Davidson, fixed reference)
 Cluster corrected energies          -214.07325804 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07335875 (Davidson, rotated reference)

 Cluster corrected energies          -214.07134605 (Pople, fixed reference)
 Cluster corrected energies          -214.07124201 (Pople, relaxed reference)
 Cluster corrected energies          -214.07134605 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96020341 (fixed)   0.96026971 (relaxed)   0.96020341 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00055114   -0.00091347   -0.57695993
 Singles      0.01574983   -0.04709426   -0.05319073
 Pairs        0.06830881    0.00000000   -0.04234933
 Total        1.08460977   -0.04800772   -0.67250000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34395859
 Nuclear energy                         0.00000000
 Kinetic energy                        82.96330288
 One electron energy                 -375.64835681
 Two electron energy                  161.63189823
 Virial quotient                       -2.57965210
 Correlation energy                    -0.67250000
 !MRCI STATE 2.1 Energy              -214.016458586820

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07335866 (Davidson, fixed reference)
 Cluster corrected energies          -214.07325794 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07335866 (Davidson, rotated reference)

 Cluster corrected energies          -214.07134595 (Pople, fixed reference)
 Cluster corrected energies          -214.07124192 (Pople, relaxed reference)
 Cluster corrected energies          -214.07134595 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96020346 (fixed)   0.96026976 (relaxed)   0.96020346 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00055113   -0.00091347   -0.57696007
 Singles      0.01574971   -0.04709418   -0.05319066
 Pairs        0.06830881   -0.00000000   -0.04234927
 Total        1.08460965   -0.04800765   -0.67250000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34395859
 Nuclear energy                         0.00000000
 Kinetic energy                        82.96330213
 One electron energy                 -375.64835545
 Two electron energy                  161.63189686
 Virial quotient                       -2.57965212
 Correlation energy                    -0.67250000
 !MRCI STATE 3.1 Energy              -214.016458586647

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07335858 (Davidson, fixed reference)
 Cluster corrected energies          -214.07325787 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07335858 (Davidson, rotated reference)

 Cluster corrected energies          -214.07134587 (Pople, fixed reference)
 Cluster corrected energies          -214.07124184 (Pople, relaxed reference)
 Cluster corrected energies          -214.07134587 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       22.86       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        13.31     11.57      0.73      0.07      0.67
 REAL TIME  *        16.55 SEC
 DISK USED  *        56.84 MB (local),      738.49 MB (total)
 SF USED    *       237.72 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.07335875  AU                              
 SETTING HLSDIAG(2)     =      -214.07335866  AU                              
 SETTING HLSDIAG(3)     =      -214.07335858  AU                              


         HLSDIAG
    -214.0733588
    -214.0733587
    -214.0733586
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -214.016459   -214.016459   -214.016459
 Replaced energies:   -214.073359   -214.073359   -214.073359



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.07335875

 Wigner-Eckart theorem used for  8 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00    -761.44       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -761.44       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.02       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00   -1076.84     761.44      -0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.04     761.44      -0.00       0.00       0.00       0.00       0.00
                            0.00    1076.84      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00       0.00     761.44       0.00       0.00       0.00      -0.00      -0.00    -761.44
                           -0.00    -761.44       0.00       0.00       0.00       0.00       0.00    -761.44       0.00

    5   2.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.02       0.00       0.00      -0.00       0.00
                          761.44       0.00       0.00      -0.00       0.00       0.00     761.44      -0.00       0.00

    6   3.1  1.0  0.0    -761.44       0.00       0.00       0.00       0.00       0.04     761.44      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00     761.44       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -761.44       0.00       0.00       0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.02       0.00
                           -0.00      -0.00      -0.00     761.44       0.00       0.00      -0.00      -0.00    1076.84

    9   3.1  1.0 -1.0       0.00       0.00       0.00    -761.44       0.00       0.00       0.00       0.00       0.04
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1076.84       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  9)

    The diagonal matrixelements are shifted by   -214.07335875 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1076.839       0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.021       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    1076.839       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.039       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000    1076.841

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1076.839       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.021       0.000      -0.000       0.000
                             1076.839       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.039   -1076.840       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000   -1076.840       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.021
                                0.000       0.000   -1076.841       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000    1076.840      -0.000       0.000       0.000       0.000
                                0.000    1076.841      -0.000       0.000      -0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9

    1    1  |1 1>+              0.000
                               -0.000

    2    1  |1 1>+              0.000
                            -1076.841

    3    1  |1 1>+              0.000
                               -0.000

    1    1  |1 0>            1076.840
                                0.000

    2    1  |1 0>              -0.000
                                0.000

    3    1  |1 0>               0.000
                               -0.000

    1    1  |1 1>-              0.000
                                0.000

    2    1  |1 1>-              0.000
                                0.000

    3    1  |1 1>-              0.039
                                0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.08317155    -0.00981280    -2153.66      0.00000000        0.00      0.0000
    2  -214.07826515    -0.00490639    -1076.83      0.00490641     1076.83      0.1335
    3  -214.07826511    -0.00490636    -1076.82      0.00490644     1076.84      0.1335
    4  -214.07826507    -0.00490631    -1076.81      0.00490649     1076.85      0.1335
    5  -214.06845227     0.00490648     1076.85      0.01471928     3230.51      0.4005
    6  -214.06845226     0.00490649     1076.85      0.01471929     3230.51      0.4005
    7  -214.06845222     0.00490653     1076.86      0.01471933     3230.52      0.4005
    8  -214.06845217     0.00490658     1076.87      0.01471938     3230.53      0.4005
    9  -214.06845216     0.00490659     1076.87      0.01471939     3230.53      0.4005

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000  0.70711024 -0.00000000 -0.00000000  0.00000001  0.70710333 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.57735007 -0.00000000  0.00000000  0.00000000 -0.56279950  0.00000001 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.70710390 -0.00000000 -0.00000000  0.00000000  0.70710967
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.57735368 -0.00000000 -0.00000000  0.00000000  0.79368982 -0.00000001  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.70710333  0.00000000  0.00000000  0.00000001  0.70711024 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.03408164  0.00000000  0.00000000 -0.00000000 -0.02626923 -0.00000000
                           0.00000000  0.00000000  0.70627861  0.00000000 -0.00000000  0.00000000  0.70662500 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.03408225  0.00000000 -0.00000000  0.00000000  0.02626876  0.00000000
                           0.00000000  0.00000000  0.70629127  0.00000000  0.00000000 -0.00000000 -0.70661233  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.70710967  0.00000000  0.00000000 -0.00000000 -0.70710390

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.57734706  0.00000000  0.00000000 -0.00000000  0.23089649  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9

   1    1  |1 1>+         -0.00000000
                          -0.00000000

   2    1  |1 1>+          0.59154343
                           0.00000000

   3    1  |1 1>+          0.00000000
                          -0.00000000

   1    1  |1 0>           0.00000000
                           0.19162254

   2    1  |1 0>           0.00000000
                          -0.00000000

   3    1  |1 0>          -0.00000000
                          -0.00000000

   1    1  |1 1>-          0.00000000
                           0.00000000

   2    1  |1 1>-         -0.00000000
                          -0.00000000

   3    1  |1 1>-          0.00000000
                           0.78317123


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.08317155     -0.00981280    -2153.66      0.00000000        0.00      0.0000
     2   1   -214.07826515     -0.00490639    -1076.83      0.00490641     1076.83      0.1335
     3   1   -214.07826511     -0.00490636    -1076.82      0.00490644     1076.84      0.1335
     4   1   -214.07826507     -0.00490631    -1076.81      0.00490649     1076.85      0.1335
     5   1   -214.06845227      0.00490648     1076.85      0.01471928     3230.51      0.4005
     6   1   -214.06845226      0.00490649     1076.85      0.01471929     3230.51      0.4005
     7   1   -214.06845222      0.00490653     1076.86      0.01471933     3230.52      0.4005
     8   1   -214.06845217      0.00490658     1076.87      0.01471938     3230.53      0.4005
     9   1   -214.06845216      0.00490659     1076.87      0.01471939     3230.53      0.4005

 E0 =   -214.07335875 is the energy of the lowest zeroth-order state
 E1 =   -214.08317155 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000  0.70711024 -0.00000000 -0.00000000  0.00000001  0.70710333 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.57735007 -0.00000000  0.00000000  0.00000000 -0.56279950  0.00000001 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.70710390 -0.00000000 -0.00000000  0.00000000  0.70710967
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.57735368 -0.00000000 -0.00000000  0.00000000  0.79368982 -0.00000001  0.00000000  0.00000000

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.70710333  0.00000000  0.00000000  0.00000001  0.70711024 -0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000 -0.03408164  0.00000000  0.00000000 -0.00000000 -0.02626923 -0.00000000
                                0.00000000  0.00000000  0.70627861  0.00000000 -0.00000000  0.00000000  0.70662500 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.03408225  0.00000000 -0.00000000  0.00000000  0.02626876  0.00000000
                                0.00000000  0.00000000  0.70629127  0.00000000  0.00000000 -0.00000000 -0.70661233  0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.70710967  0.00000000  0.00000000 -0.00000000 -0.70710390

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.57734706  0.00000000  0.00000000 -0.00000000  0.23089649  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9

  1  1     1    1  |1 1>+      -0.00000000
                               -0.00000000

  2  1     2    1  |1 1>+       0.59154343
                                0.00000000

  3  1     3    1  |1 1>+       0.00000000
                               -0.00000000

  4  1     1    1  |1 0>        0.00000000
                                0.19162254

  5  1     2    1  |1 0>        0.00000000
                               -0.00000000

  6  1     3    1  |1 0>       -0.00000000
                               -0.00000000

  7  1     1    1  |1 1>-       0.00000000
                                0.00000000

  8  1     2    1  |1 1>-      -0.00000000
                               -0.00000000

  9  1     3    1  |1 1>-       0.00000000
                                0.78317123



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        33.33%    0.00%    0.00%    0.00%   31.67%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  4  1     1    1  |1 0>         33.33%    0.00%    0.00%    0.00%   62.99%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  9  1     3    1  |1 1>-        33.33%    0.00%    0.00%    0.00%    5.33%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9

  1  1     1    1  |1 1>+         0.00%
  2  1     2    1  |1 1>+        34.99%
  3  1     3    1  |1 1>+         0.00%
  4  1     1    1  |1 0>          3.67%
  5  1     2    1  |1 0>          0.00%
  6  1     3    1  |1 0>          0.00%
  7  1     1    1  |1 1>-         0.00%
  8  1     2    1  |1 1>-         0.00%
  9  1     3    1  |1 1>-        61.34%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       22.86       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        24.56     11.24     11.57      0.73      0.07      0.67
 REAL TIME  *        28.92 SEC
 DISK USED  *        56.84 MB (local),      738.49 MB (total)
 SF USED    *       237.72 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -214.068452161833

              CI           MULTI         RHF-SCF
   -214.01645859   -213.34395859   -213.37363633
 **********************************************************************************************************************************
 Molpro calculation terminated
