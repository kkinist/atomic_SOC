
 Working directory              : /wrk/irikura/molpro.adqpwPYuZn/
 Global scratch directory       : /wrk/irikura/molpro.adqpwPYuZn/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.adqpwPYuZn/

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
 
 NTRIP=3
 NSING=5
 
 {multi
     closed,6,3
     occ,7,6
     wf,nelec=22,sym=1,spin=2;state,NTRIP;
     wf,nelec=22,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5101.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 17-Apr-24          TIME: 09:59:31  
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

     Node minimum: 0.786 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     84 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.81      0.62
 REAL TIME  *         1.61 SEC
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
   1     -213.37042203    -213.37042203     0.00D+00     0.13D+00     0     0       0.01      0.01    start
   2     -213.37323440      -0.00281237     0.13D-02     0.43D-02     1     0       0.00      0.01    diag2
   3     -213.37353635      -0.00030194     0.73D-03     0.10D-02     2     0       0.01      0.02    diag2
   4     -213.37362630      -0.00008996     0.24D-03     0.83D-03     3     0       0.00      0.02    diag2
   5     -213.37363565      -0.00000935     0.63D-04     0.30D-03     4     0       0.00      0.02    diag2
   6     -213.37363625      -0.00000060     0.12D-04     0.95D-04     5     0       0.01      0.03    diag2
   7     -213.37363632      -0.00000007     0.31D-05     0.20D-04     6     0       0.00      0.03    diag2
   8     -213.37363633      -0.00000001     0.80D-06     0.12D-04     7     0       0.01      0.04    fixocc
   9     -213.37363633      -0.00000000     0.93D-07     0.15D-05     8     0       0.00      0.04    diag2
  10     -213.37363633      -0.00000000     0.15D-07     0.14D-06     0     0       0.00      0.04    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -213.373636325728
  RHF One-electron energy            -381.086680443688
  RHF Two-electron energy             167.713044117960
  RHF Kinetic energy                   82.648105638679
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.581712365660

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.62699     1  1  s    1.00568
    2.1     2.00000    -1.07683     1  1  d2-  0.99786
    3.1     2.00000    -1.07683     1  1  d2+  0.99779
    4.1     2.00000    -1.07683     1  1  d1+ -0.38237    1  1  d1-  0.92371
    5.1     2.00000    -1.07683     1  1  d1+  0.92362    1  1  d1-  0.38231
    6.1     2.00000    -1.07683     1  1  d0   0.99973
    7.1     2.00000    -0.29333     1  2  s    0.97876
    1.2     2.00000    -3.81329     1  1  px   0.99916
    2.2     2.00000    -3.81329     1  1  py   0.99168
    3.2     2.00000    -3.81329     1  1  pz   0.99294
    4.2     1.00000    -0.05728     1  2  pz   0.77245
    5.2     1.00000    -0.05728     1  2  py   0.77230
    6.2     1.00000    -0.05728     1  2  px   0.79515


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
 CPU TIMES  *         0.88      0.07      0.62
 REAL TIME  *         2.10 SEC
 DISK USED  *        30.07 MB (local),      417.26 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         5.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      83 (   40   43)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             5
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.654D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.733D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.294D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.303D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.120D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 2 3   5 6 4 1 2 5 3 6 4 1   2 6 4 3 5 2 3 5 6 4   1 81214151310 9 711
                                        2 6 4 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.534D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.148D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.110D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.197D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.210D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.233D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 2 1 3   2 1 7 9 5 4 6 810 6   4 5 810 9 7 3 2 1 8  10 6 9 7 5 4 3 1 2 6
                                        810 9 7 4 5 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    661
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   20   30    0   -213.30303186    -213.32215855   -0.01912669    0.11376104 0.00028388 0.00000000  0.38E+00      0.31
   2    8   14    0   -213.31929157    -213.32172085   -0.00242929    0.12965085 0.00000579 0.00000000  0.36E-01      0.60
   3    7   12    0   -213.32173749    -213.32173782   -0.00000033    0.00109073 0.00000001 0.00000000  0.74E-03      0.83
   4    3    6    0   -213.32173782    -213.32173782    0.00000000    0.00000017 0.00000001 0.00000000  0.18E-06      0.97

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.96E-09)
                       Final energy:   -213.32173782
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -213.343740762660
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58128089
 One electron energy                          -376.00226019
 Two electron energy                           162.65851943
 Virial ratio                                    3.58343947
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -213.343740762642
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58128089
 One electron energy                          -376.00226020
 Two electron energy                           162.65851944
 Virial ratio                                    3.58343947
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -213.343740762613
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58128090
 One electron energy                          -376.00226021
 Two electron energy                           162.65851945
 Virial ratio                                    3.58343947
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -213.308536056872
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58128089
 One electron energy                          -376.00226019
 Two electron energy                           162.69372414
 Virial ratio                                    3.58301317
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -213.308536056859
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58128089
 One electron energy                          -376.00226019
 Two electron energy                           162.69372414
 Virial ratio                                    3.58301317
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -213.308536056813
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58128089
 One electron energy                          -376.00226020
 Two electron energy                           162.69372414
 Virial ratio                                    3.58301317
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -213.308536056743
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58128090
 One electron energy                          -376.00226021
 Two electron energy                           162.69372416
 Virial ratio                                    3.58301317
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -213.308536056738
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58128090
 One electron energy                          -376.00226021
 Two electron energy                           162.69372416
 Virial ratio                                    3.58301317
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.602567491333
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.397432508667
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.162457079806
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.837542920194
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     2.234975428862
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.765024571138
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 5 2 4 1 1 2 6   3 5 4 1 2 4 3 5 6 1   2 4 3 5 6 6 2 3 5 4   11113101514 812 7 9
                                        2 6 5 3 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 3 2 1   3 2 4 9 7 6 810 5 5   6 810 4 9 7 3 1 2 5   810 9 7 6 4 3 2 1 5
                                        810 7 9 6 4 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.86139     1  1  s    1.00474
    2.1     2.00000    -1.31111     1  1  d1-  1.00012
    3.1     2.00000    -1.31111     1  1  d2-  1.00012
    4.1     2.00000    -1.31111     1  1  d2+  1.00012
    5.1     2.00000    -1.31111     1  1  d0   1.00012
    6.1     2.00000    -1.31111     1  1  d1+  1.00012
    7.1     1.97438    -0.50542     1  2  s    1.02416
    1.2     2.00000    -4.04735     1  1  py   0.99999
    2.2     2.00000    -4.04735     1  1  pz   0.99999
    3.2     2.00000    -4.04735     1  1  px   0.99999
    4.2     0.67521    -0.06866     1  2  py   0.97368
    5.2     0.67521    -0.06866     1  2  pz   0.97368
    6.2     0.67521    -0.06866     1  2  px   0.97368
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 0aa         -0.00000000      0.00000000      0.99357544
 2 a0a         -0.00000000      0.99357544      0.00000000
 2 aa0          0.99357544      0.00000000      0.00000000
 0 aa2         -0.11317175      0.00000000      0.00000000
 0 a2a          0.00000000     -0.11317174     -0.00000000
 0 2aa         -0.00000000      0.00000000     -0.11317174
 
 Energy:     -213.34374076   -213.34374076   -213.34374076
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 200          0.79460601     -0.00000000     -0.00000000     -0.00000000     -0.16349126
 2 002         -0.25571542      0.00000000     -0.00000000     -0.00000000      0.76989462
 2 0ab         -0.00000000     -0.00000000     -0.00000000      0.70256393     -0.00000000
 2 0ba          0.00000000      0.00000000      0.00000000     -0.70256393      0.00000000
 2 a0b         -0.00000000     -0.00000000      0.70256393     -0.00000000     -0.00000000
 2 b0a          0.00000000      0.00000000     -0.70256393      0.00000000      0.00000000
 2 ba0         -0.00000000     -0.70256393      0.00000000      0.00000000     -0.00000000
 2 ab0          0.00000000      0.70256393     -0.00000000     -0.00000000      0.00000000
 2 020         -0.53889059      0.00000000     -0.00000000     -0.00000000     -0.60640336
 0 022          0.09050843     -0.00000000     -0.00000000     -0.00000000     -0.01862223
 0 220         -0.02912689      0.00000000     -0.00000000     -0.00000000      0.08769371
 0 ba2          0.00000000      0.08002451      0.00000000      0.00000000     -0.00000000
 0 ab2         -0.00000000     -0.08002451     -0.00000000     -0.00000000      0.00000000
 0 b2a         -0.00000000     -0.00000000      0.08002451     -0.00000000     -0.00000000
 0 a2b          0.00000000      0.00000000     -0.08002451      0.00000000      0.00000000
 0 2ab         -0.00000000     -0.00000000     -0.00000000     -0.08002451     -0.00000000
 0 2ba          0.00000000      0.00000000      0.00000000      0.08002451      0.00000000
 0 202         -0.06138154      0.00000000     -0.00000000     -0.00000000     -0.06907148
 
 Energy:     -213.30853606   -213.30853606   -213.30853606   -213.30853606   -213.30853606
 


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
 CPU TIMES  *         1.76      0.86      0.07      0.62
 REAL TIME  *         3.23 SEC
 DISK USED  *        34.77 MB (local),      473.66 MB (total)
 SF USED    *        12.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3437408   2.0
    -213.3437408   2.0
    -213.3437408   2.0
    -213.3085361   6.0
    -213.3085361   6.0
    -213.3085361   6.0
    -213.3085361   6.0
    -213.3085361   6.0
                                                  


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
     1      -213.34374076
     2      -213.34374076
     3      -213.34374076

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        122064
 Number of doubly external configurations:        822378
 Total number of contracted configurations:       944979
 Total number of uncontracted configurations:    4744665

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.05 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    456247 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34374076    -0.00000000    -0.83059021  0.42D-01  0.11D+00     0.17
    1     2     2     1.00000000     0.00000000  -213.34374076    -0.00000000    -0.83048946  0.42D-01  0.11D+00     0.17
    1     3     3     1.00000000     0.00000000  -213.34374076    -0.00000000    -0.83031202  0.42D-01  0.11D+00     0.17
    2     1     1     1.09335730    -0.65559379  -213.99933455    -0.65559379    -0.01726982  0.29D-02  0.13D-02     3.00
    2     2     2     1.09352525    -0.65548366  -213.99922442    -0.65548366    -0.01738549  0.30D-02  0.13D-02     3.00
    2     3     3     1.09360392    -0.65542863  -213.99916939    -0.65542863    -0.01744598  0.30D-02  0.13D-02     3.00
    3     1     1     1.08413598    -0.67207865  -214.01581941    -0.01648486    -0.00035638  0.47D-04  0.38D-04     5.17
    3     2     2     1.08413284    -0.67207519  -214.01581595    -0.01659153    -0.00035965  0.47D-04  0.38D-04     5.17
    3     3     3     1.08413272    -0.67207236  -214.01581313    -0.01664373    -0.00036264  0.47D-04  0.39D-04     5.17
    4     1     1     1.08412350    -0.67244098  -214.01618174    -0.00036233    -0.00001231  0.25D-05  0.13D-05     7.34
    4     2     2     1.08412200    -0.67244095  -214.01618171    -0.00036576    -0.00001234  0.25D-05  0.13D-05     7.34
    4     3     3     1.08412039    -0.67244080  -214.01618156    -0.00036843    -0.00001248  0.25D-05  0.13D-05     7.34
    5     1     1     1.08419004    -0.67245410  -214.01619486    -0.00001312    -0.00000039  0.52D-07  0.52D-07     9.43
    5     2     2     1.08419049    -0.67245410  -214.01619486    -0.00001315    -0.00000039  0.52D-07  0.51D-07     9.43
    5     3     3     1.08418977    -0.67245409  -214.01619485    -0.00001329    -0.00000040  0.53D-07  0.52D-07     9.43
    6     1     1     1.08419266    -0.67245451  -214.01619527    -0.00000041    -0.00000002  0.17D-08  0.25D-08    11.55
    6     2     2     1.08419257    -0.67245451  -214.01619527    -0.00000041    -0.00000002  0.17D-08  0.26D-08    11.55
    6     3     3     1.08419244    -0.67245451  -214.01619527    -0.00000041    -0.00000002  0.17D-08  0.26D-08    11.55


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.8%   4.4%
 P   0.4%  28.1%  25.7%

 Initialization:   1.1%
 Other:           38.8%

 Total CPU:       11.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0           0.0000000  -0.0000000   0.9552088
 2222222222/0/          -0.0000000   0.9552087   0.0000000
 22222222220//           0.9552087   0.0000000  -0.0000000
 2222220222//2          -0.0000000   0.0000000  -0.0977492
 2222220222/2/           0.0000000  -0.0977491  -0.0000000
 22222202222//          -0.0977490  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000    0.960134
 2          -0.000000    0.960134    0.000000
 3           0.960134    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960134    0.000000    0.000000
 2           0.000000    0.960134   -0.000000
 3           0.000000   -0.000000    0.960134


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96013434 (fixed)   0.96019714 (relaxed)   0.96013434 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052866   -0.00087857   -0.00113764
 Singles      0.01573298   -0.04647864   -0.05260443
 Pairs        0.06850419   -0.62509730   -0.61871244
 Total        1.08476583   -0.67245451   -0.67245451
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34374076
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95383526
 One electron energy                 -375.57019959
 Two electron energy                  161.55400432
 Virial quotient                       -2.57994335
 Correlation energy                    -0.67245451
 !MRCI STATE 1.1 Energy              -214.016195269728

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07319643 (Davidson, fixed reference)
 Cluster corrected energies          -214.07310102 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07319643 (Davidson, rotated reference)

 Cluster corrected energies          -214.07118736 (Pople, fixed reference)
 Cluster corrected energies          -214.07108877 (Pople, relaxed reference)
 Cluster corrected energies          -214.07118736 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96013438 (fixed)   0.96019717 (relaxed)   0.96013438 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052866   -0.00087857   -0.57738865
 Singles      0.01573287   -0.04647858   -0.05260436
 Pairs        0.06850421   -0.00000000   -0.04246149
 Total        1.08476574   -0.04735715   -0.67245451
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34374076
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95384133
 One electron energy                 -375.57020429
 Two electron energy                  161.55400902
 Virial quotient                       -2.57994316
 Correlation energy                    -0.67245451
 !MRCI STATE 2.1 Energy              -214.016195269728

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07319638 (Davidson, fixed reference)
 Cluster corrected energies          -214.07310096 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07319638 (Davidson, rotated reference)

 Cluster corrected energies          -214.07118730 (Pople, fixed reference)
 Cluster corrected energies          -214.07108871 (Pople, relaxed reference)
 Cluster corrected energies          -214.07118730 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96013443 (fixed)   0.96019723 (relaxed)   0.96013443 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052866   -0.00087857   -0.57738878
 Singles      0.01573277   -0.04647851   -0.05260430
 Pairs        0.06850418    0.00000000   -0.04246142
 Total        1.08476561   -0.04735708   -0.67245451
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34374076
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95383380
 One electron energy                 -375.57019702
 Two electron energy                  161.55400175
 Virial quotient                       -2.57994339
 Correlation energy                    -0.67245451
 !MRCI STATE 3.1 Energy              -214.016195269409

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07319629 (Davidson, fixed reference)
 Cluster corrected energies          -214.07310088 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07319629 (Davidson, rotated reference)

 Cluster corrected energies          -214.07118720 (Pople, fixed reference)
 Cluster corrected energies          -214.07108862 (Pople, relaxed reference)
 Cluster corrected energies          -214.07118720 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       22.95       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        13.79     12.02      0.86      0.07      0.62
 REAL TIME  *        17.05 SEC
 DISK USED  *        56.94 MB (local),      739.60 MB (total)
 SF USED    *       237.40 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.07319643  AU                              
 SETTING HLSDIAG(2)     =      -214.07319638  AU                              
 SETTING HLSDIAG(3)     =      -214.07319629  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 22
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      613 conf      866 CSFs
 N-1 el internal:      907 conf     2099 CSFs
 N-2 el internal:      694 conf     2086 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.30853606
     2      -213.30853606
     3      -213.30853606
     4      -213.30853606
     5      -213.30853606

 Number of blocks in overlap matrix:   580   Smallest eigenvalue:  0.38D-01
 Number of N-2 electron functions:     654
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:         87134
 Number of doubly external configurations:       1128411
 Total number of contracted configurations:      1215995
 Total number of uncontracted configurations:    3677611

 Diagonal Coupling coefficients finished.               Storage:    643996 words, CPU-Time:      0.07 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    482922 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.30853606     0.00000000    -0.83947765  0.47D-01  0.11D+00     0.17
    1     2     2     1.00000000     0.00000000  -213.30853606    -0.00000000    -0.84019225  0.48D-01  0.11D+00     0.17
    1     3     3     1.00000000     0.00000000  -213.30853606     0.00000000    -0.83998317  0.48D-01  0.11D+00     0.17
    1     4     4     1.00000000     0.00000000  -213.30853606    -0.00000000    -0.84021637  0.48D-01  0.11D+00     0.17
    1     5     5     1.00000000     0.00000000  -213.30853606    -0.00000000    -0.83917248  0.47D-01  0.11D+00     0.17
    2     1     1     1.09826884    -0.66058680  -213.96912286    -0.66058680    -0.01837583  0.32D-02  0.16D-02     4.79
    2     2     2     1.09830408    -0.66051421  -213.96905027    -0.66051421    -0.01846912  0.32D-02  0.16D-02     4.79
    2     3     3     1.09860468    -0.66027747  -213.96881352    -0.66027747    -0.01874879  0.34D-02  0.16D-02     4.79
    2     4     4     1.09869585    -0.66022890  -213.96876496    -0.66022890    -0.01880350  0.34D-02  0.16D-02     4.79
    2     5     5     1.09889629    -0.66013682  -213.96867288    -0.66013682    -0.01889720  0.35D-02  0.16D-02     4.79
    3     1     1     1.08808229    -0.67795969  -213.98649574    -0.01737288    -0.00040220  0.54D-04  0.46D-04     9.30
    3     2     2     1.08808528    -0.67795710  -213.98649316    -0.01744289    -0.00040494  0.54D-04  0.47D-04     9.30
    3     3     3     1.08810826    -0.67795023  -213.98648628    -0.01767276    -0.00041266  0.55D-04  0.48D-04     9.30
    3     4     4     1.08810881    -0.67794730  -213.98648335    -0.01771840    -0.00041597  0.55D-04  0.49D-04     9.30
    3     5     5     1.08811654    -0.67794274  -213.98647880    -0.01780592    -0.00042049  0.56D-04  0.50D-04     9.30
    4     1     1     1.08795660    -0.67837273  -213.98690879    -0.00041304    -0.00001488  0.32D-05  0.16D-05    13.99
    4     2     2     1.08795799    -0.67837272  -213.98690878    -0.00041562    -0.00001493  0.32D-05  0.16D-05    13.99
    4     3     3     1.08795791    -0.67837257  -213.98690863    -0.00042234    -0.00001511  0.33D-05  0.17D-05    13.99
    4     4     4     1.08795885    -0.67837255  -213.98690860    -0.00042525    -0.00001509  0.33D-05  0.16D-05    13.99
    4     5     5     1.08796038    -0.67837236  -213.98690841    -0.00042961    -0.00001529  0.33D-05  0.17D-05    13.99
    5     1     1     1.08795658    -0.67838925  -213.98692530    -0.00001652    -0.00000045  0.65D-07  0.57D-07    18.58
    5     2     2     1.08795522    -0.67838924  -213.98692529    -0.00001652    -0.00000046  0.66D-07  0.59D-07    18.58
    5     3     3     1.08795759    -0.67838924  -213.98692529    -0.00001667    -0.00000046  0.64D-07  0.58D-07    18.58
    5     4     4     1.08795603    -0.67838923  -213.98692529    -0.00001669    -0.00000046  0.66D-07  0.59D-07    18.58
    5     5     5     1.08795655    -0.67838922  -213.98692528    -0.00001687    -0.00000047  0.66D-07  0.61D-07    18.58
    6     1     1     1.08794449    -0.67838972  -213.98692578    -0.00000048    -0.00000001  0.17D-08  0.20D-08    23.12
    6     2     2     1.08794440    -0.67838972  -213.98692578    -0.00000049    -0.00000001  0.16D-08  0.20D-08    23.12
    6     3     3     1.08794442    -0.67838972  -213.98692578    -0.00000049    -0.00000001  0.16D-08  0.20D-08    23.12
    6     4     4     1.08794454    -0.67838972  -213.98692578    -0.00000049    -0.00000001  0.18D-08  0.19D-08    23.12
    6     5     5     1.08794449    -0.67838972  -213.98692578    -0.00000050    -0.00000002  0.18D-08  0.20D-08    23.12


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.4%   2.5%
 P   0.5%  21.4%  28.4%

 Initialization:   0.5%
 Other:           45.9%

 Total CPU:       23.1 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0          -0.0000000  -0.0000000   0.9533331  -0.0155018  -0.0048375
 22222222220/\           0.0538856   0.9519475   0.0000000  -0.0000000   0.0000000
 2222222222/0\           0.9519474  -0.0538856   0.0000000  -0.0000000   0.0000000
 2222222222002           0.0000000   0.0000000   0.0119737   0.7706305  -0.1098043
 2222222222020          -0.0000000  -0.0000000  -0.0010548  -0.2902880   0.7223601
 2222222222200           0.0000000  -0.0000000  -0.0109190  -0.4803425  -0.6125548
 2222220222/\2           0.0000000   0.0000000  -0.0975418   0.0015861   0.0004950
 2222220222/2\          -0.0974003   0.0055134  -0.0000000   0.0000000  -0.0000000
 22222202222/\          -0.0055134  -0.0973999  -0.0000000   0.0000000  -0.0000000
 2222220222220           0.0000000   0.0000000   0.0012251   0.0788478  -0.0112346
 2222220222202          -0.0000000  -0.0000000  -0.0001079  -0.0297010   0.0739086
 2222220222022           0.0000000  -0.0000000  -0.0011172  -0.0491468  -0.0626741

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000    0.956855    0.054163    0.000000
 2           0.000000   -0.000000   -0.054163    0.956855    0.000000
 3          -0.011296    0.958247    0.000000    0.000000    0.011782
 4          -0.426968   -0.015582   -0.000000   -0.000000    0.857881
 5          -0.857948   -0.004862    0.000000    0.000000   -0.427090

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958386    0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.958386    0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.958386   -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.958386    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.958386


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95685456 (fixed)   0.95844916 (relaxed)   0.95838630 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071881   -0.00127153   -0.57742804
 Singles      0.01813069   -0.05021614   -0.05742542
 Pairs        0.06987702   -0.00000000   -0.04353627
 Total        1.08872652   -0.05148767   -0.67838972
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30853606
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95234978
 One electron energy                 -375.53076464
 Two electron energy                  161.54383886
 Virial quotient                       -2.57963670
 Correlation energy                    -0.67838972
 !MRCI STATE 1.1 Energy              -213.986925778858

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04711694 (Davidson, fixed reference)
 Cluster corrected energies          -214.04702007 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04711694 (Davidson, rotated reference)

 Cluster corrected energies          -214.04588370 (Pople, fixed reference)
 Cluster corrected energies          -214.04578155 (Pople, relaxed reference)
 Cluster corrected energies          -214.04588370 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95685459 (fixed)   0.95844920 (relaxed)   0.95838634 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071882   -0.00127153   -0.57742829
 Singles      0.01813052   -0.05021592   -0.05742526
 Pairs        0.06987709   -0.00000000   -0.04353618
 Total        1.08872644   -0.05148746   -0.67838972
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30853606
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95234363
 One electron energy                 -375.53076276
 Two electron energy                  161.54383698
 Virial quotient                       -2.57963689
 Correlation energy                    -0.67838972
 !MRCI STATE 2.1 Energy              -213.986925778688

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04711688 (Davidson, fixed reference)
 Cluster corrected energies          -214.04702000 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04711688 (Davidson, rotated reference)

 Cluster corrected energies          -214.04588364 (Pople, fixed reference)
 Cluster corrected energies          -214.04578149 (Pople, relaxed reference)
 Cluster corrected energies          -214.04588364 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95824732 (fixed)   0.95844919 (relaxed)   0.95838633 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071882   -0.00127153   -0.57034898
 Singles      0.01813075   -0.05021617   -0.05742543
 Pairs        0.06987689   -0.00770717   -0.05061531
 Total        1.08872645   -0.05919487   -0.67838972
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30853606
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95234514
 One electron energy                 -375.53076333
 Two electron energy                  161.54383755
 Virial quotient                       -2.57963684
 Correlation energy                    -0.67838972
 !MRCI STATE 3.1 Energy              -213.986925778652

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04711689 (Davidson, fixed reference)
 Cluster corrected energies          -214.04702002 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04711689 (Davidson, rotated reference)

 Cluster corrected energies          -214.04588365 (Pople, fixed reference)
 Cluster corrected energies          -214.04578150 (Pople, relaxed reference)
 Cluster corrected energies          -214.04588365 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.85788083 (fixed)   0.95844914 (relaxed)   0.95838627 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071884   -0.00127153   -0.06200096
 Singles      0.01813059   -0.05021588   -0.05742532
 Pairs        0.06987717   -0.56115940   -0.55896344
 Total        1.08872660   -0.61264681   -0.67838972
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30853606
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95229727
 One electron energy                 -375.53069318
 Two electron energy                  161.54376740
 Virial quotient                       -2.57963833
 Correlation energy                    -0.67838972
 !MRCI STATE 4.1 Energy              -213.986925778474

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04711699 (Davidson, fixed reference)
 Cluster corrected energies          -214.04702010 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04711699 (Davidson, rotated reference)

 Cluster corrected energies          -214.04588376 (Pople, fixed reference)
 Cluster corrected energies          -214.04578159 (Pople, relaxed reference)
 Cluster corrected energies          -214.04588376 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.85794802 (fixed)   0.95844916 (relaxed)   0.95838629 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071884   -0.00127153   -0.83403026
 Singles      0.01813064   -0.05021585   -0.05742533
 Pairs        0.06987707    0.27936936    0.21306587
 Total        1.08872655    0.22788197   -0.67838972
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30853606
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95229081
 One electron energy                 -375.53068823
 Two electron energy                  161.54376245
 Virial quotient                       -2.57963853
 Correlation energy                    -0.67838972
 !MRCI STATE 5.1 Energy              -213.986925778034

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04711696 (Davidson, fixed reference)
 Cluster corrected energies          -214.04702007 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04711696 (Davidson, rotated reference)

 Cluster corrected energies          -214.04588372 (Pople, fixed reference)
 Cluster corrected energies          -214.04578155 (Pople, relaxed reference)
 Cluster corrected energies          -214.04588372 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       69.93       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        38.25     24.45     12.02      0.86      0.07      0.62
 REAL TIME  *        45.30 SEC
 DISK USED  *       103.91 MB (local),        1.27 GB (total)
 SF USED    *       493.82 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -214.04711694  AU                              
 SETTING HLSDIAG(5)     =      -214.04711688  AU                              
 SETTING HLSDIAG(6)     =      -214.04711689  AU                              
 SETTING HLSDIAG(7)     =      -214.04711699  AU                              
 SETTING HLSDIAG(8)     =      -214.04711696  AU                              


         HLSDIAG
    -214.0731964
    -214.0731964
    -214.0731963
    -214.0471169
    -214.0471169
    -214.0471169
    -214.0471170
    -214.0471170
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -214.016195   -214.016195   -214.016195
 Replaced energies:   -214.073196   -214.073196   -214.073196

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies:   -213.986926   -213.986926   -213.986926   -213.986926   -213.986926
 Replaced energies:   -214.047117   -214.047117   -214.047117   -214.047117   -214.047117



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.07319643

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00    1060.69      -0.00     750.02       0.00       0.00       0.00       0.00    -745.58

    2   2.1  1.0  1.0       0.00       0.01       0.00       0.00       0.00     750.02       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -750.02       0.00       0.00       0.00       0.00       0.00      42.20

    3   3.1  1.0  1.0       0.00       0.00       0.03       0.00    -750.02      -0.00       0.00       0.00       0.00    -745.58
                        -1060.69      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00     750.02       0.00       0.00       0.00       0.00      -0.00     750.02       0.00      -0.00

    5   2.1  1.0  0.0      -0.00       0.00    -750.02       0.00       0.01       0.00       0.00       0.00     750.02       0.00
                         -750.02      -0.00       0.00      -0.00       0.00       0.00    -750.02       0.00       0.00       0.00

    6   3.1  1.0  0.0      -0.00     750.02      -0.00       0.00       0.00       0.03       0.00    -750.02      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      59.69

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     750.02       0.00      -0.00       0.00   -1060.69     745.58

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00    -750.02       0.00       0.01       0.00       0.00
                           -0.00      -0.00      -0.00    -750.02      -0.00       0.00      -0.00      -0.00      -0.00     -42.20

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00     750.02      -0.00       0.00       0.00       0.03    -745.58
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    1060.69       0.00      -0.00       0.00

   10   1.1  0.0  0.0      -0.00       0.00    -745.58       0.00       0.00       0.00      -0.00       0.00    -745.58    5723.79
                          745.58     -42.20       0.00       0.00      -0.00     -59.69    -745.58      42.20      -0.00       0.00

   11   2.1  0.0  0.0       0.00      -0.00      42.20       0.00       0.00       0.00       0.00      -0.00      42.20       0.00
                          -42.20    -745.58      -0.00       0.00       0.00   -1054.41      42.20     745.58       0.00      -0.00

   12   3.1  0.0  0.0      12.09     746.67       0.00       0.00       0.00       0.00      12.09     746.67       0.00       0.00
                            0.00      -0.00      13.26   -1055.94      -1.65      -0.00      -0.00       0.00     -13.26      -0.00

   13   4.1  0.0  0.0     532.05     -12.14      -0.00       0.00       0.00       0.00     532.05     -12.14      -0.00       0.00
                            0.00      -0.00     853.59      17.17    -454.72      -0.00      -0.00       0.00    -853.59      -0.00

   14   5.1  0.0  0.0     678.49      -3.79      -0.00       0.00       0.00       0.00     678.49      -3.79      -0.00       0.00
                            0.00      -0.00    -121.62       5.36    1131.55       0.00      -0.00       0.00     121.62      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0       0.00      12.09     532.05     678.49
                           42.20      -0.00      -0.00      -0.00

    2   2.1  1.0  1.0      -0.00     746.67     -12.14      -3.79
                          745.58       0.00       0.00       0.00

    3   3.1  1.0  1.0      42.20       0.00      -0.00      -0.00
                            0.00     -13.26    -853.59     121.62

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00    1055.94     -17.17      -5.36

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00       1.65     454.72   -1131.55

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                         1054.41       0.00       0.00      -0.00

    7   1.1  1.0 -1.0       0.00      12.09     532.05     678.49
                          -42.20       0.00       0.00       0.00

    8   2.1  1.0 -1.0      -0.00     746.67     -12.14      -3.79
                         -745.58      -0.00      -0.00      -0.00

    9   3.1  1.0 -1.0      42.20       0.00      -0.00      -0.00
                           -0.00      13.26     853.59    -121.62

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5723.80       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5723.80       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5723.78       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5723.78
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by   -214.07319643 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1060.687       0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.013       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000   -1060.687       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.032      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000   -1060.687      -0.000

    1    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1060.687       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000       0.013       0.000      -0.000       0.000
                            -1060.687       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.032      -0.000    1060.688
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000    1060.687      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    1060.688       0.000       0.013
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000   -1060.688       0.000       0.000       0.000
                            -1060.687      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000       0.000   -1054.412       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     -59.686    1054.410     -59.686

    2    1  |0 0>               0.000      -0.000      59.686       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -1054.410     -59.686   -1054.412

    3    1  |0 0>              17.104    1055.952       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1055.945      -1.652      -0.000       0.000      -0.000

    4    1  |0 0>             752.433     -17.170      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      17.170    -454.725      -0.000       0.000      -0.000

    5    1  |0 0>             959.532      -5.358      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       5.358    1131.550       0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000      -0.000       0.000      17.104     752.433     959.532
                             1060.687       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000    1055.952     -17.170      -5.358
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   -1054.412      59.686       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000    1055.945     -17.170      -5.358

    2    1  |1 0>           -1060.688       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       1.652     454.725   -1131.550

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      59.686    1054.410       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1054.410      59.686      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      59.686    1054.412       0.000       0.000       0.000

    3    1  |1 1>-              0.032       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -18.756   -1207.152     171.996

    1    1  |0 0>               0.000    5723.788       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5723.800       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5723.798       0.000       0.000
                               18.756      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5723.777       0.000
                             1207.152      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5723.784
                             -171.996      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.08286206    -0.00966563    -2121.36      0.00000000        0.00      0.0000
    2  -214.07802925    -0.00483281    -1060.68      0.00483281     1060.68      0.1315
    3  -214.07802921    -0.00483277    -1060.67      0.00483285     1060.69      0.1315
    4  -214.07802918    -0.00483275    -1060.67      0.00483288     1060.69      0.1315
    5  -214.07035633     0.00284010      623.33      0.01250573     2744.69      0.3403
    6  -214.07035629     0.00284015      623.34      0.01250577     2744.70      0.3403
    7  -214.07035624     0.00284019      623.35      0.01250582     2744.71      0.3403
    8  -214.07035624     0.00284020      623.35      0.01250582     2744.71      0.3403
    9  -214.07035621     0.00284023      623.36      0.01250585     2744.72      0.3403
   10  -214.04512422     0.02807221     6161.14      0.03773784     8282.50      1.0269
   11  -214.04512421     0.02807222     6161.14      0.03773785     8282.50      1.0269
   12  -214.04512419     0.02807225     6161.15      0.03773787     8282.51      1.0269
   13  -214.04512417     0.02807227     6161.15      0.03773789     8282.51      1.0269
   14  -214.04512416     0.02807228     6161.15      0.03773790     8282.51      1.0269

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57735272  0.00000000 -0.00000000  0.00000000  0.73712673  0.00046129 -0.26581299 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.70710468 -0.00000000 -0.00000000 -0.00099880  0.67860983 -0.00159216 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.70710048  0.00000000 -0.00000000  0.00000000 -0.00000004  0.67859473
                           0.00000000 -0.00000000  0.00000245  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00131247

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000
                          -0.00000000  0.70710888  0.00000000  0.00000000 -0.00099880  0.67860582 -0.00159215 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.57735142 -0.00000000 -0.00000000  0.00000000 -0.59876576 -0.00206719 -0.50545870 -0.00000003

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000959 -0.00000000 -0.00000000 -0.00000000  0.00001026
                           0.00000000  0.00000000 -0.00000000 -0.70710276 -0.00000000  0.00000000  0.00000000 -0.00530479

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000245  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00131245
                           0.00000000 -0.00000000  0.70711308 -0.00000000 -0.00000000  0.00000000 -0.00000004  0.67858193

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000959 -0.00000000 -0.00000000 -0.00000000  0.00001026
                          -0.00000000 -0.00000000  0.00000000  0.70711080 -0.00000000  0.00000000  0.00000000 -0.00530472

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.57734667  0.00000000 -0.00000000  0.00000000 -0.13836325  0.00160592  0.77127948  0.00000004

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000178 -0.00000008 -0.00000000  0.00000000 -0.00000002  0.28069265
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00054289

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000010 -0.00000146  0.00000000 -0.00000000  0.00000000 -0.01368842
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00002647

   3    1  |0 0>          -0.00000001  0.00000005 -0.00000000  0.00000000 -0.00237318 -0.28097943  0.00455065  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000133 -0.00000000  0.00000000 -0.00000000 -0.08811482  0.00506533  0.26681060  0.00000002
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000156 -0.00000000  0.00000000  0.00000000 -0.26684737  0.00082627 -0.08814333 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+          0.00000000  0.15589421 -0.00000000  0.16827284  0.00570239  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00544345 -0.00000000 -0.00168829  0.19863448  0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00530483 -0.00000000 -0.19843789  0.00000000 -0.00000000  0.01051806
                           0.00000003 -0.00000000 -0.00011243  0.00000000 -0.00000000 -0.00000544

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00544341 -0.00000000 -0.00168828  0.19863323  0.00000001

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.06776474 -0.00000000 -0.21922608 -0.00000626 -0.00000000

   3    1  |1 0>          -0.00000343 -0.00000000 -0.00000596  0.00000000 -0.00000000  0.00010262
                           0.67859379  0.00000000  0.01051808 -0.00000000 -0.00000001  0.19843733

   1    1  |1 1>-         -0.00000003  0.00000000  0.00011243 -0.00000000  0.00000000  0.00000544
                           0.00530473 -0.00000000 -0.19843677  0.00000000 -0.00000000  0.01051800

   2    1  |1 1>-         -0.00000343 -0.00000000 -0.00000596  0.00000000 -0.00000000  0.00010262
                           0.67858549  0.00000000  0.01051807 -0.00000000 -0.00000001  0.19843706

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.22365915  0.00000001  0.05095053 -0.00569615 -0.00000000

   1    1  |0 0>          -0.01368850  0.00000002  0.95969360 -0.00000000  0.00000000  0.00344568
                          -0.00000007  0.00000000  0.00054376 -0.00000000  0.00000000 -0.00000178

   2    1  |0 0>          -0.28069297  0.00000000 -0.00344569 -0.00000000 -0.00000003  0.95969368
                          -0.00000142  0.00000000 -0.00000195 -0.00000000  0.00000000 -0.00049630

   3    1  |0 0>           0.00000000 -0.01034107 -0.00000000 -0.00458489  0.95963340  0.00000003
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.95639641 -0.00000002 -0.07892744  0.00992907 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.07887473 -0.00000000  0.95643712  0.00541957  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.08286206     -0.00966563    -2121.36      0.00000000        0.00      0.0000
     2   1   -214.07802925     -0.00483281    -1060.68      0.00483281     1060.68      0.1315
     3   1   -214.07802921     -0.00483277    -1060.67      0.00483285     1060.69      0.1315
     4   1   -214.07802918     -0.00483275    -1060.67      0.00483288     1060.69      0.1315
     5   1   -214.07035633      0.00284010      623.33      0.01250573     2744.69      0.3403
     6   1   -214.07035629      0.00284015      623.34      0.01250577     2744.70      0.3403
     7   1   -214.07035624      0.00284019      623.35      0.01250582     2744.71      0.3403
     8   1   -214.07035624      0.00284020      623.35      0.01250582     2744.71      0.3403
     9   1   -214.07035621      0.00284023      623.36      0.01250585     2744.72      0.3403
    10   1   -214.04512422      0.02807221     6161.14      0.03773784     8282.50      1.0269
    11   1   -214.04512421      0.02807222     6161.14      0.03773785     8282.50      1.0269
    12   1   -214.04512419      0.02807225     6161.15      0.03773787     8282.51      1.0269
    13   1   -214.04512417      0.02807227     6161.15      0.03773789     8282.51      1.0269
    14   1   -214.04512416      0.02807228     6161.15      0.03773790     8282.51      1.0269

 E0 =   -214.07319643 is the energy of the lowest zeroth-order state
 E1 =   -214.08286206 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57735272  0.00000000 -0.00000000  0.00000000  0.73712673  0.00046129 -0.26581299 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.70710468 -0.00000000 -0.00000000 -0.00099880  0.67860983 -0.00159216 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.70710048  0.00000000 -0.00000000  0.00000000 -0.00000004  0.67859473
                                0.00000000 -0.00000000  0.00000245  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00131247

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000
                               -0.00000000  0.70710888  0.00000000  0.00000000 -0.00099880  0.67860582 -0.00159215 -0.00000000

  5  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.57735142 -0.00000000 -0.00000000  0.00000000 -0.59876576 -0.00206719 -0.50545870 -0.00000003

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000959 -0.00000000 -0.00000000 -0.00000000  0.00001026
                                0.00000000  0.00000000 -0.00000000 -0.70710276 -0.00000000  0.00000000  0.00000000 -0.00530479

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000245  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00131245
                                0.00000000 -0.00000000  0.70711308 -0.00000000 -0.00000000  0.00000000 -0.00000004  0.67858193

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000959 -0.00000000 -0.00000000 -0.00000000  0.00001026
                               -0.00000000 -0.00000000  0.00000000  0.70711080 -0.00000000  0.00000000  0.00000000 -0.00530472

  9  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.57734667  0.00000000 -0.00000000  0.00000000 -0.13836325  0.00160592  0.77127948  0.00000004

 10  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000178 -0.00000008 -0.00000000  0.00000000 -0.00000002  0.28069265
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00054289

 11  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000010 -0.00000146  0.00000000 -0.00000000  0.00000000 -0.01368842
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00002647

 12  1     3    1  |0 0>       -0.00000001  0.00000005 -0.00000000  0.00000000 -0.00237318 -0.28097943  0.00455065  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000133 -0.00000000  0.00000000 -0.00000000 -0.08811482  0.00506533  0.26681060  0.00000002
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000156 -0.00000000  0.00000000  0.00000000 -0.26684737  0.00082627 -0.08814333 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+       0.00000000  0.15589421 -0.00000000  0.16827284  0.00570239  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00544345 -0.00000000 -0.00168829  0.19863448  0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00530483 -0.00000000 -0.19843789  0.00000000 -0.00000000  0.01051806
                                0.00000003 -0.00000000 -0.00011243  0.00000000 -0.00000000 -0.00000544

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00544341 -0.00000000 -0.00168828  0.19863323  0.00000001

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.06776474 -0.00000000 -0.21922608 -0.00000626 -0.00000000

  6  1     3    1  |1 0>       -0.00000343 -0.00000000 -0.00000596  0.00000000 -0.00000000  0.00010262
                                0.67859379  0.00000000  0.01051808 -0.00000000 -0.00000001  0.19843733

  7  1     1    1  |1 1>-      -0.00000003  0.00000000  0.00011243 -0.00000000  0.00000000  0.00000544
                                0.00530473 -0.00000000 -0.19843677  0.00000000 -0.00000000  0.01051800

  8  1     2    1  |1 1>-      -0.00000343 -0.00000000 -0.00000596  0.00000000 -0.00000000  0.00010262
                                0.67858549  0.00000000  0.01051807 -0.00000000 -0.00000001  0.19843706

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.22365915  0.00000001  0.05095053 -0.00569615 -0.00000000

 10  1     1    1  |0 0>       -0.01368850  0.00000002  0.95969360 -0.00000000  0.00000000  0.00344568
                               -0.00000007  0.00000000  0.00054376 -0.00000000  0.00000000 -0.00000178

 11  1     2    1  |0 0>       -0.28069297  0.00000000 -0.00344569 -0.00000000 -0.00000003  0.95969368
                               -0.00000142  0.00000000 -0.00000195 -0.00000000  0.00000000 -0.00049630

 12  1     3    1  |0 0>        0.00000000 -0.01034107 -0.00000000 -0.00458489  0.95963340  0.00000003
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000  0.95639641 -0.00000002 -0.07892744  0.00992907 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.07887473 -0.00000000  0.95643712  0.00541957  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.33%    0.00%    0.00%    0.00%   54.34%    0.00%    7.07%    0.00%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   46.05%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   46.05%
  4  1     1    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   46.05%    0.00%    0.00%
  5  1     2    1  |1 0>         33.33%    0.00%    0.00%    0.00%   35.85%    0.00%   25.55%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   46.05%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        33.33%    0.00%    0.00%    0.00%    1.91%    0.00%   59.49%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.88%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    7.89%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.78%    0.00%    7.12%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    7.12%    0.00%    0.78%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+         0.00%    2.43%    0.00%    2.83%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    3.95%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    3.94%    0.00%    0.00%    0.01%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    3.95%    0.00%
  5  1     2    1  |1 0>          0.00%    0.46%    0.00%    4.81%    0.00%    0.00%
  6  1     3    1  |1 0>         46.05%    0.00%    0.01%    0.00%    0.00%    3.94%
  7  1     1    1  |1 1>-         0.00%    0.00%    3.94%    0.00%    0.00%    0.01%
  8  1     2    1  |1 1>-        46.05%    0.00%    0.01%    0.00%    0.00%    3.94%
  9  1     3    1  |1 1>-         0.00%    5.00%    0.00%    0.26%    0.00%    0.00%
 10  1     1    1  |0 0>          0.02%    0.00%   92.10%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          7.88%    0.00%    0.00%    0.00%    0.00%   92.10%
 12  1     3    1  |0 0>          0.00%    0.01%    0.00%    0.00%   92.09%    0.00%
 13  1     4    1  |0 0>          0.00%   91.47%    0.00%    0.62%    0.01%    0.00%
 14  1     5    1  |0 0>          0.00%    0.62%    0.00%   91.48%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       69.93       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        67.45     29.19     24.45     12.02      0.86      0.07      0.62
 REAL TIME  *        77.65 SEC
 DISK USED  *       103.91 MB (local),        1.27 GB (total)
 SF USED    *       493.82 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -214.045124156796

              CI              CI           MULTI         RHF-SCF
   -213.98692578   -214.01619527   -213.30853606   -213.37363633
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
