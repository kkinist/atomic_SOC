
 Working directory              : /wrk/irikura/molpro.pPHCG2Blow/
 Global scratch directory       : /wrk/irikura/molpro.pPHCG2Blow/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.pPHCG2Blow/

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
 NSING=6
 
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
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 17-Apr-24          TIME: 10:04:14  
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

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.07 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     72 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

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
 REAL TIME  *         1.67 SEC
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
   3     -213.37353635      -0.00030194     0.73D-03     0.10D-02     2     0       0.00      0.01    diag2
   4     -213.37362630      -0.00008996     0.24D-03     0.83D-03     3     0       0.01      0.02    diag2
   5     -213.37363565      -0.00000935     0.63D-04     0.30D-03     4     0       0.00      0.02    diag2
   6     -213.37363625      -0.00000060     0.12D-04     0.95D-04     5     0       0.01      0.03    diag2
   7     -213.37363632      -0.00000007     0.31D-05     0.20D-04     6     0       0.00      0.03    diag2
   8     -213.37363633      -0.00000001     0.80D-06     0.12D-04     7     0       0.00      0.03    fixocc
   9     -213.37363633      -0.00000000     0.93D-07     0.15D-05     8     0       0.01      0.04    diag2
  10     -213.37363633      -0.00000000     0.15D-07     0.14D-06     0     0       0.00      0.04    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -213.373636325728
  RHF One-electron energy            -381.086680443689
  RHF Two-electron energy             167.713044117961
  RHF Kinetic energy                   82.648105638679
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.581712365660

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.62699     1  1  s    1.00568
    2.1     2.00000    -1.07683     1  1  d2-  0.80602    1  1  d2+  0.59137
    3.1     2.00000    -1.07683     1  1  d2- -0.59096    1  1  d2+  0.80533
    4.1     2.00000    -1.07683     1  1  d1-  0.98030
    5.1     2.00000    -1.07683     1  1  d1+  0.97952
    6.1     2.00000    -1.07683     1  1  d0   0.99973
    7.1     2.00000    -0.29333     1  2  s    0.97876
    1.2     2.00000    -3.81329     1  1  px   0.97970
    2.2     2.00000    -3.81329     1  1  py   0.97946
    3.2     2.00000    -3.81329     1  1  pz   1.00020
    4.2     1.00000    -0.05728     1  2  pz   0.79528
    5.2     1.00000    -0.05728     1  2  px   0.79450
    6.2     1.00000    -0.05728     1  2  py   0.79448


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
 CPU TIMES  *         0.85      0.04      0.62
 REAL TIME  *         2.15 SEC
 DISK USED  *        30.07 MB (local),      417.26 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

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
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.427D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.442D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.175D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.205D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.367D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 2 3   5 4 6 1 2 3 5 6 4 1   2 6 4 3 5 2 3 5 6 4   1 81215141310 911 7
                                        2 6 4 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.174D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.186D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.215D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.697D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.433D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.494D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 2 1 3   1 2 9 7 4 5 6 810 6   5 4 810 9 7 3 2 110   8 6 9 7 5 4 3 1 2 6
                                        810 9 7 4 5 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    679
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   21   28    0   -213.29853228    -213.31533523   -0.01680295    0.11341785 0.00024945 0.00000000  0.37E+00      0.31
   2    8   14    0   -213.31458589    -213.31678573   -0.00219984    0.12422782 0.00000952 0.00000000  0.32E-01      0.59
   3    7   12    0   -213.31679962    -213.31679988   -0.00000025    0.00098264 0.00000002 0.00000000  0.63E-03      0.82
   4    6   12    0   -213.31679988    -213.31679988    0.00000000    0.00000013 0.00000000 0.00000000  0.14E-06      1.00

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.27E-09)
                       Final energy:   -213.31679988
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -213.343665312374
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58188692
 One electron energy                          -375.98964220
 Two electron energy                           162.64597689
 Virial ratio                                    3.58341960
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -213.343665312371
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58188692
 One electron energy                          -375.98964220
 Two electron energy                           162.64597689
 Virial ratio                                    3.58341960
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -213.343665312362
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58188692
 One electron energy                          -375.98964220
 Two electron energy                           162.64597689
 Virial ratio                                    3.58341960
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -213.308569134723
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58188692
 One electron energy                          -375.98964220
 Two electron energy                           162.68107306
 Virial ratio                                    3.58299461
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -213.308569134718
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58188692
 One electron energy                          -375.98964220
 Two electron energy                           162.68107307
 Virial ratio                                    3.58299461
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -213.308569134710
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58188692
 One electron energy                          -375.98964220
 Two electron energy                           162.68107307
 Virial ratio                                    3.58299461
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -213.308569134688
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58188692
 One electron energy                          -375.98964220
 Two electron energy                           162.68107307
 Virial ratio                                    3.58299461
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -213.308569134687
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58188692
 One electron energy                          -375.98964220
 Two electron energy                           162.68107307
 Virial ratio                                    3.58299461
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -213.277357273276
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.57063964
 One electron energy                          -375.85480638
 Two electron energy                           162.57744910
 Virial ratio                                    3.58296845
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.067419993951
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.932580006049
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.520363002089
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.479636997911
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.412217003961
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.587782996039
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 2 6 1 1 2 3   5 4 6 1 2 3 5 6 4 1   2 4 6 3 5 3 5 2 4 6   113101415 9 812 711
                                        2 4 5 3 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 2 1 3   2 1 7 9 4 5 6 810 4   7 9 810 6 5 3 2 1 7   9 810 4 6 5 3 1 2 7
                                        9 810 4 6 5 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.86268     1  1  s    1.00478
    2.1     2.00000    -1.31242     1  1  d2-  1.00015
    3.1     2.00000    -1.31242     1  1  d2+  1.00015
    4.1     2.00000    -1.31242     1  1  d1+  1.00015
    5.1     2.00000    -1.31242     1  1  d0   1.00015
    6.1     2.00000    -1.31242     1  1  d1-  1.00015
    7.1     1.96711    -0.50518     1  2  s    1.02400
    1.2     2.00000    -4.04867     1  1  px   1.00000
    2.2     2.00000    -4.04867     1  1  py   1.00000
    3.2     2.00000    -4.04867     1  1  pz   1.00000
    4.2     0.67763    -0.06961     1  2  pz   0.96472
    5.2     0.67763    -0.06961     1  2  py   0.96472
    6.2     0.67763    -0.06961     1  2  px   0.96472
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa0         -0.00000000      0.00000000      0.99359670
 2 a0a         -0.00000000      0.99359670     -0.00000000
 2 0aa          0.99359670      0.00000000      0.00000000
 0 2aa         -0.11298491      0.00000000      0.00000000
 0 a2a          0.00000000     -0.11298491     -0.00000000
 0 aa2         -0.00000000     -0.00000000     -0.11298491
 
 Energy:     -213.34366531   -213.34366531   -213.34366531
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 002          0.80440229      0.00000000     -0.00000000     -0.00000000     -0.10532437      0.56394602
 2 200         -0.31098757     -0.00000000     -0.00000000     -0.00000000      0.74929501      0.56394602
 2 ab0         -0.00000000     -0.00000000     -0.00000000      0.70257897     -0.00000000     -0.00000000
 2 ba0          0.00000000      0.00000000      0.00000000     -0.70257897      0.00000000      0.00000000
 2 a0b         -0.00000000     -0.00000000      0.70257897      0.00000000     -0.00000000     -0.00000000
 2 b0a          0.00000000      0.00000000     -0.70257897     -0.00000000      0.00000000      0.00000000
 2 0ba          0.00000000     -0.70257897      0.00000000      0.00000000     -0.00000000      0.00000000
 2 0ab         -0.00000000      0.70257897     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2 020         -0.49341473     -0.00000000     -0.00000000     -0.00000000     -0.64397064      0.56394602
 0 220          0.09147103      0.00000000     -0.00000000     -0.00000000     -0.01197675     -0.12368597
 0 202         -0.05610769     -0.00000000     -0.00000000     -0.00000000     -0.07322786     -0.12368597
 0 022         -0.03536334     -0.00000000     -0.00000000     -0.00000000      0.08520462     -0.12368597
 0 2ba         -0.00000000      0.07989239      0.00000000      0.00000000     -0.00000000     -0.00000000
 0 2ab          0.00000000     -0.07989239     -0.00000000     -0.00000000      0.00000000      0.00000000
 0 a2b          0.00000000      0.00000000     -0.07989239     -0.00000000      0.00000000      0.00000000
 0 b2a         -0.00000000     -0.00000000      0.07989239      0.00000000     -0.00000000     -0.00000000
 0 ab2         -0.00000000     -0.00000000      0.00000000     -0.07989239     -0.00000000     -0.00000000
 0 ba2          0.00000000      0.00000000     -0.00000000      0.07989239      0.00000000      0.00000000
 
 Energy:     -213.30856913   -213.30856913   -213.30856913   -213.30856913   -213.30856913   -213.27735727
 


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
 CPU TIMES  *         1.83      0.97      0.04      0.62
 REAL TIME  *         3.37 SEC
 DISK USED  *        34.77 MB (local),      473.66 MB (total)
 SF USED    *        12.54 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3436653   2.0
    -213.3436653   2.0
    -213.3436653   2.0
    -213.3085691   6.0
    -213.3085691   6.0
    -213.3085691   6.0
    -213.3085691   6.0
    -213.3085691   6.0
    -213.2773573  -0.0
                                                  


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
     1      -213.34366531
     2      -213.34366531
     3      -213.34366531

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        122064
 Number of doubly external configurations:        822378
 Total number of contracted configurations:       944979
 Total number of uncontracted configurations:    4744665

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    456247 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34366531    -0.00000000    -0.83034514  0.42D-01  0.11D+00     0.13
    1     2     2     1.00000000     0.00000000  -213.34366531     0.00000000    -0.83047338  0.42D-01  0.11D+00     0.13
    1     3     3     1.00000000     0.00000000  -213.34366531    -0.00000000    -0.83062406  0.42D-01  0.11D+00     0.13
    2     1     1     1.09342771    -0.65559850  -213.99926381    -0.65559850    -0.01727028  0.29D-02  0.13D-02     2.40
    2     2     2     1.09353941    -0.65552262  -213.99918793    -0.65552262    -0.01735238  0.30D-02  0.13D-02     2.40
    2     3     3     1.09367447    -0.65543184  -213.99909715    -0.65543184    -0.01744895  0.30D-02  0.13D-02     2.40
    3     1     1     1.08418630    -0.67208526  -214.01575057    -0.01648676    -0.00035561  0.46D-04  0.38D-04     4.57
    3     2     2     1.08418439    -0.67208196  -214.01574727    -0.01655934    -0.00035908  0.47D-04  0.38D-04     4.57
    3     3     3     1.08418245    -0.67207849  -214.01574381    -0.01664665    -0.00036253  0.47D-04  0.39D-04     4.57
    4     1     1     1.08416959    -0.67244697  -214.01611229    -0.00036171    -0.00001222  0.25D-05  0.13D-05     6.95
    4     2     2     1.08416763    -0.67244682  -214.01611213    -0.00036485    -0.00001237  0.25D-05  0.13D-05     6.95
    4     3     3     1.08416583    -0.67244672  -214.01611203    -0.00036822    -0.00001247  0.25D-05  0.13D-05     6.95
    5     1     1     1.08423617    -0.67246000  -214.01612531    -0.00001303    -0.00000039  0.51D-07  0.51D-07     9.07
    5     2     2     1.08423587    -0.67245999  -214.01612531    -0.00001318    -0.00000039  0.53D-07  0.52D-07     9.07
    5     3     3     1.08423546    -0.67245999  -214.01612530    -0.00001327    -0.00000040  0.53D-07  0.52D-07     9.07
    6     1     1     1.08423855    -0.67246041  -214.01612572    -0.00000041    -0.00000002  0.17D-08  0.25D-08    11.25
    6     2     2     1.08423841    -0.67246041  -214.01612572    -0.00000041    -0.00000002  0.17D-08  0.26D-08    11.25
    6     3     3     1.08423830    -0.67246041  -214.01612572    -0.00000042    -0.00000002  0.17D-08  0.26D-08    11.25


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.9%   4.4%
 P   0.3%  28.6%  26.0%

 Initialization:   0.9%
 Other:           38.4%

 Total CPU:       11.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0           0.0000000  -0.0000000   0.9552061
 2222222222/0/           0.0000000   0.9552060   0.0000000
 22222222220//           0.9552060  -0.0000000  -0.0000000
 2222220222//2          -0.0000000   0.0000000  -0.0975820
 2222220222/2/          -0.0000000  -0.0975819  -0.0000000
 22222202222//          -0.0975818   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.960115    0.000000    0.000000
 2          -0.000000    0.960115   -0.000000
 3          -0.000000    0.000000    0.960115

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960115   -0.000000    0.000000
 2          -0.000000    0.960115   -0.000000
 3           0.000000   -0.000000    0.960115


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96011478 (fixed)   0.96017741 (relaxed)   0.96011478 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052708   -0.00087629   -0.57737839
 Singles      0.01575998   -0.04646897   -0.05261021
 Pairs        0.06852298   -0.00000000   -0.04247181
 Total        1.08481003   -0.04734527   -0.67246041
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34366531
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95315436
 One electron energy                 -375.55979036
 Two electron energy                  161.54366464
 Virial quotient                       -2.57996368
 Correlation energy                    -0.67246041
 !MRCI STATE 1.1 Energy              -214.016125718249

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07315711 (Davidson, fixed reference)
 Cluster corrected energies          -214.07306194 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07315711 (Davidson, rotated reference)

 Cluster corrected energies          -214.07114900 (Pople, fixed reference)
 Cluster corrected energies          -214.07105066 (Pople, relaxed reference)
 Cluster corrected energies          -214.07114900 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96011484 (fixed)   0.96017747 (relaxed)   0.96011484 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052707   -0.00087629   -0.57737854
 Singles      0.01575986   -0.04646889   -0.05261013
 Pairs        0.06852295    0.00000000   -0.04247173
 Total        1.08480989   -0.04734518   -0.67246041
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34366531
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95314712
 One electron energy                 -375.55978332
 Two electron energy                  161.54365760
 Virial quotient                       -2.57996391
 Correlation energy                    -0.67246041
 !MRCI STATE 2.1 Energy              -214.016125717928

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07315701 (Davidson, fixed reference)
 Cluster corrected energies          -214.07306184 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07315701 (Davidson, rotated reference)

 Cluster corrected energies          -214.07114891 (Pople, fixed reference)
 Cluster corrected energies          -214.07105057 (Pople, relaxed reference)
 Cluster corrected energies          -214.07114891 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96011489 (fixed)   0.96017752 (relaxed)   0.96011489 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052707   -0.00087629   -0.00113451
 Singles      0.01575975   -0.04646882   -0.05261006
 Pairs        0.06852295   -0.62511529   -0.61871583
 Total        1.08480977   -0.67246040   -0.67246041
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34366531
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95314634
 One electron energy                 -375.55978204
 Two electron energy                  161.54365633
 Virial quotient                       -2.57996393
 Correlation energy                    -0.67246041
 !MRCI STATE 3.1 Energy              -214.016125717760

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07315693 (Davidson, fixed reference)
 Cluster corrected energies          -214.07306177 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07315693 (Davidson, rotated reference)

 Cluster corrected energies          -214.07114882 (Pople, fixed reference)
 Cluster corrected energies          -214.07105049 (Pople, relaxed reference)
 Cluster corrected energies          -214.07114882 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       22.97       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        13.54     11.70      0.97      0.04      0.62
 REAL TIME  *        16.83 SEC
 DISK USED  *        56.95 MB (local),      739.82 MB (total)
 SF USED    *       237.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.07315711  AU                              
 SETTING HLSDIAG(2)     =      -214.07315701  AU                              
 SETTING HLSDIAG(3)     =      -214.07315693  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

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
     1      -213.30856913
     2      -213.30856913
     3      -213.30856913
     4      -213.30856913
     5      -213.30856913
     6      -213.27735727

 Number of blocks in overlap matrix:   679   Smallest eigenvalue:  0.26D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:         87134
 Number of doubly external configurations:       1394048
 Total number of contracted configurations:      1481632
 Total number of uncontracted configurations:    3677611

 Diagonal Coupling coefficients finished.               Storage:    700677 words, CPU-Time:      0.09 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    510950 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.30856913    -0.00000000    -0.83817873  0.47D-01  0.11D+00     0.21
    1     2     2     1.00000000     0.00000000  -213.30856913    -0.00000000    -0.83886438  0.48D-01  0.11D+00     0.21
    1     3     3     1.00000000     0.00000000  -213.30856913     0.00000000    -0.83899026  0.48D-01  0.11D+00     0.21
    1     4     4     1.00000000     0.00000000  -213.30856913    -0.00000000    -0.83872354  0.48D-01  0.11D+00     0.21
    1     5     5     1.00000000     0.00000000  -213.30856913    -0.00000000    -0.83786091  0.47D-01  0.11D+00     0.21
    1     6     6     1.00000000     0.00000000  -213.27735727     0.00000000    -0.82187152  0.19D-01  0.13D+00     0.21
    2     1     1     1.09818403    -0.66069040  -213.96925954    -0.66069040    -0.01843522  0.32D-02  0.16D-02     7.20
    2     2     2     1.09809781    -0.66067357  -213.96924271    -0.66067357    -0.01846636  0.32D-02  0.16D-02     7.20
    2     3     3     1.09856495    -0.66040014  -213.96896928    -0.66040014    -0.01877949  0.34D-02  0.16D-02     7.20
    2     4     4     1.09858392    -0.66033691  -213.96890604    -0.66033691    -0.01885827  0.34D-02  0.16D-02     7.20
    2     5     5     1.09870550    -0.66026903  -213.96883817    -0.66026903    -0.01893616  0.34D-02  0.16D-02     7.20
    2     6     6     1.09315030    -0.65724164  -213.93459891    -0.65724164    -0.01556666  0.24D-02  0.17D-02     7.20
    3     1     1     1.08825429    -0.67800397  -213.98657310    -0.01731357    -0.00045424  0.56D-04  0.57D-04    14.17
    3     2     2     1.08823311    -0.67800117  -213.98657031    -0.01732760    -0.00045664  0.56D-04  0.57D-04    14.17
    3     3     3     1.08827999    -0.67799289  -213.98656202    -0.01759274    -0.00046664  0.57D-04  0.59D-04    14.17
    3     4     4     1.08826690    -0.67798789  -213.98655702    -0.01765098    -0.00047146  0.58D-04  0.59D-04    14.17
    3     5     5     1.08827875    -0.67798731  -213.98655644    -0.01771828    -0.00047197  0.58D-04  0.59D-04    14.17
    3     6     6     1.08589021    -0.67224511  -213.94960239    -0.01500347    -0.00037120  0.40D-04  0.58D-04    14.17
    4     1     1     1.08811571    -0.67846107  -213.98703021    -0.00045710    -0.00001855  0.39D-05  0.20D-05    21.14
    4     2     2     1.08811804    -0.67846100  -213.98703014    -0.00045983    -0.00001869  0.39D-05  0.21D-05    21.14
    4     3     3     1.08811573    -0.67846089  -213.98703002    -0.00046800    -0.00001870  0.39D-05  0.20D-05    21.14
    4     4     4     1.08811741    -0.67846089  -213.98703002    -0.00047300    -0.00001876  0.39D-05  0.21D-05    21.14
    4     5     5     1.08811687    -0.67846079  -213.98702992    -0.00047348    -0.00001886  0.39D-05  0.21D-05    21.14
    4     6     6     1.08578230    -0.67262190  -213.94997917    -0.00037679    -0.00001774  0.40D-05  0.23D-05    21.14
    5     1     1     1.08812028    -0.67848149  -213.98705062    -0.00002041    -0.00000061  0.93D-07  0.78D-07    28.14
    5     2     2     1.08812019    -0.67848149  -213.98705062    -0.00002048    -0.00000061  0.94D-07  0.78D-07    28.14
    5     3     3     1.08812012    -0.67848148  -213.98705062    -0.00002060    -0.00000061  0.93D-07  0.79D-07    28.14
    5     4     4     1.08812148    -0.67848148  -213.98705061    -0.00002059    -0.00000062  0.91D-07  0.78D-07    28.14
    5     5     5     1.08812107    -0.67848147  -213.98705060    -0.00002068    -0.00000063  0.95D-07  0.80D-07    28.14
    5     6     6     1.08582660    -0.67264119  -213.94999846    -0.00001929    -0.00000067  0.11D-06  0.95D-07    28.14
    6     1     1     1.08810718    -0.67848213  -213.98705127    -0.00000064    -0.00000002  0.22D-08  0.30D-08    35.14
    6     2     2     1.08810715    -0.67848213  -213.98705127    -0.00000065    -0.00000002  0.23D-08  0.30D-08    35.14
    6     3     3     1.08810730    -0.67848213  -213.98705127    -0.00000065    -0.00000002  0.22D-08  0.30D-08    35.14
    6     4     4     1.08810739    -0.67848213  -213.98705127    -0.00000065    -0.00000002  0.26D-08  0.29D-08    35.14
    6     5     5     1.08810738    -0.67848213  -213.98705126    -0.00000066    -0.00000002  0.26D-08  0.29D-08    35.14
    6     6     6     1.08580760    -0.67264191  -213.94999919    -0.00000072    -0.00000003  0.47D-08  0.37D-08    35.14


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.3%   1.8%
 P   0.3%  19.7%  33.0%

 Initialization:   0.4%
 Other:           44.1%

 Total CPU:       35.1 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0           0.9534220  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2222222222/0\           0.0000000   0.9534220  -0.0000000  -0.0000000   0.0000000  -0.0000000
 22222222220/\           0.0000000   0.0000000   0.9534219  -0.0000000   0.0000000   0.0000000
 2222222222020          -0.0000000  -0.0000000  -0.0000000  -0.1724644   0.7591212   0.5433898
 2222222222200          -0.0000000   0.0000000   0.0000000   0.7436503  -0.2302021   0.5433898
 2222222222002           0.0000000   0.0000000  -0.0000000  -0.5711862  -0.5289191   0.5433899
 2222220222220           0.0000000   0.0000000  -0.0000000  -0.0583062  -0.0539916  -0.1075742
 2222220222022          -0.0000000   0.0000000   0.0000000   0.0759111  -0.0234987  -0.1075740
 2222220222202          -0.0000000  -0.0000000  -0.0000000  -0.0176051   0.0774903  -0.1075739
 2222220222/2\          -0.0000000  -0.0973251   0.0000000   0.0000000  -0.0000000   0.0000000
 22222202222/\          -0.0000000  -0.0000000  -0.0973249   0.0000000  -0.0000000  -0.0000000
 2222220222/\2          -0.0973248   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.000000    0.958313   -0.000000   -0.000000
 2           0.000000    0.000000    0.958313   -0.000000    0.000000    0.000000
 3           0.000000    0.958313   -0.000000   -0.000000    0.000000   -0.000000
 4          -0.611920   -0.000000   -0.000000    0.000000    0.737508   -0.000000
 5          -0.737508    0.000000    0.000000    0.000000   -0.611920   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.959244

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958313   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.958313   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.958313   -0.000000    0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.958313    0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.958313   -0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.959244


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95831320 (fixed)   0.95837657 (relaxed)   0.95831320 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072186   -0.00127173   -0.57737132
 Singles      0.01823886   -0.05027652   -0.05754222
 Pairs        0.06993192    0.00000000   -0.04356859
 Total        1.08889264   -0.05154824   -0.67848213
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30856913
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95185890
 One electron energy                 -375.52050734
 Two electron energy                  161.53345607
 Virial quotient                       -2.57965348
 Correlation energy                    -0.67848213
 !MRCI STATE 1.1 Energy              -213.987051265886

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04736333 (Davidson, fixed reference)
 Cluster corrected energies          -214.04726564 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04736333 (Davidson, rotated reference)

 Cluster corrected energies          -214.04613610 (Pople, fixed reference)
 Cluster corrected energies          -214.04603305 (Pople, relaxed reference)
 Cluster corrected energies          -214.04613610 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95831321 (fixed)   0.95837658 (relaxed)   0.95831321 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072185   -0.00127173   -0.57737130
 Singles      0.01823885   -0.05027656   -0.05754224
 Pairs        0.06993190   -0.00000000   -0.04356860
 Total        1.08889260   -0.05154828   -0.67848213
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30856913
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95185776
 One electron energy                 -375.52050443
 Two electron energy                  161.53345316
 Virial quotient                       -2.57965351
 Correlation energy                    -0.67848213
 !MRCI STATE 2.1 Energy              -213.987051265816

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04736331 (Davidson, fixed reference)
 Cluster corrected energies          -214.04726562 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04736331 (Davidson, rotated reference)

 Cluster corrected energies          -214.04613607 (Pople, fixed reference)
 Cluster corrected energies          -214.04603303 (Pople, relaxed reference)
 Cluster corrected energies          -214.04613607 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95831315 (fixed)   0.95837651 (relaxed)   0.95831315 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072186   -0.00127172   -0.57737114
 Singles      0.01823905   -0.05027664   -0.05754237
 Pairs        0.06993185    0.00000000   -0.04356862
 Total        1.08889276   -0.05154837   -0.67848213
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30856913
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95185752
 One electron energy                 -375.52050757
 Two electron energy                  161.53345630
 Virial quotient                       -2.57965352
 Correlation energy                    -0.67848213
 !MRCI STATE 3.1 Energy              -213.987051265806

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04736341 (Davidson, fixed reference)
 Cluster corrected energies          -214.04726572 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04736341 (Davidson, rotated reference)

 Cluster corrected energies          -214.04613618 (Pople, fixed reference)
 Cluster corrected energies          -214.04603314 (Pople, relaxed reference)
 Cluster corrected energies          -214.04613618 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.73750780 (fixed)   0.95837647 (relaxed)   0.95831310 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072187   -0.00127173   -0.57737129
 Singles      0.01823900   -0.05027647   -0.05754224
 Pairs        0.06993199    0.00000004   -0.04356860
 Total        1.08889286   -0.05154816   -0.67848213
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30856913
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95181895
 One electron energy                 -375.52044604
 Two electron energy                  161.53339478
 Virial quotient                       -2.57965472
 Correlation energy                    -0.67848213
 !MRCI STATE 4.1 Energy              -213.987051265198

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04736348 (Davidson, fixed reference)
 Cluster corrected energies          -214.04726578 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04736348 (Davidson, rotated reference)

 Cluster corrected energies          -214.04613626 (Pople, fixed reference)
 Cluster corrected energies          -214.04603321 (Pople, relaxed reference)
 Cluster corrected energies          -214.04613626 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.73750781 (fixed)   0.95837648 (relaxed)   0.95831310 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072187   -0.00127173   -0.57737120
 Singles      0.01823905   -0.05027651   -0.05754230
 Pairs        0.06993193   -0.00000002   -0.04356863
 Total        1.08889285   -0.05154826   -0.67848213
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30856913
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95181454
 One electron energy                 -375.52044214
 Two electron energy                  161.53339087
 Virial quotient                       -2.57965486
 Correlation energy                    -0.67848213
 !MRCI STATE 5.1 Energy              -213.987051264758

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04736348 (Davidson, fixed reference)
 Cluster corrected energies          -214.04726577 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04736348 (Davidson, rotated reference)

 Cluster corrected energies          -214.04613625 (Pople, fixed reference)
 Cluster corrected energies          -214.04603320 (Pople, relaxed reference)
 Cluster corrected energies          -214.04613625 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95924381 (fixed)   0.95944467 (relaxed)   0.95924381 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00089636   -0.00103488   -0.00150702
 Singles      0.00871226   -0.03264283   -0.03542950
 Pairs        0.07717226   -0.63896421   -0.63570539
 Total        1.08678087   -0.67264191   -0.67264191
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.27735727
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95294862
 One electron energy                 -375.38381081
 Two electron energy                  161.43381163
 Virial quotient                       -2.57917293
 Correlation energy                    -0.67264191
 !MRCI STATE 6.1 Energy              -213.949999185338

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00837164 (Davidson, fixed reference)
 Cluster corrected energies          -214.00806560 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00837164 (Davidson, rotated reference)

 Cluster corrected energies          -214.00707970 (Pople, fixed reference)
 Cluster corrected energies          -214.00675815 (Pople, relaxed reference)
 Cluster corrected energies          -214.00707970 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       91.62       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        51.06     37.51     11.70      0.97      0.04      0.62
 REAL TIME  *        60.14 SEC
 DISK USED  *       125.61 MB (local),        1.53 GB (total)
 SF USED    *       716.09 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -214.04736333  AU                              
 SETTING HLSDIAG(5)     =      -214.04736331  AU                              
 SETTING HLSDIAG(6)     =      -214.04736341  AU                              
 SETTING HLSDIAG(7)     =      -214.04736348  AU                              
 SETTING HLSDIAG(8)     =      -214.04736348  AU                              
 SETTING HLSDIAG(9)     =      -214.00837164  AU                              


         HLSDIAG
    -214.0731571
    -214.0731570
    -214.0731569
    -214.0473633
    -214.0473633
    -214.0473634
    -214.0473635
    -214.0473635
    -214.0083716
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -214.016126   -214.016126   -214.016126
 Replaced energies:   -214.073157   -214.073157   -214.073157

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -213.987051   -213.987051   -213.987051   -213.987051   -213.987051   -213.949999
 Replaced energies:   -214.047363   -214.047363   -214.047363   -214.047363   -214.047363   -214.008372



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.07315711

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00    -749.46       0.00       0.00       0.00     746.28
                            0.00       0.00      -0.00       0.00    -749.46      -0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.02       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -1059.90     749.46       0.00      -0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.04     749.46      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00    1059.90      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00      -0.00     749.46       0.00       0.00       0.00       0.00       0.00    -749.46       0.00
                           -0.00    -749.46      -0.00       0.00       0.00       0.00       0.00    -749.46      -0.00       0.00

    5   2.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.02       0.00      -0.00      -0.00       0.00       0.00
                          749.46      -0.00      -0.00      -0.00       0.00       0.00     749.46       0.00      -0.00    1055.40

    6   3.1  1.0  0.0    -749.46       0.00      -0.00       0.00       0.00       0.04     749.46      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00     749.46       0.00       0.00       0.00     746.28
                           -0.00      -0.00      -0.00      -0.00    -749.46      -0.00      -0.00      -0.00       0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.02       0.00       0.00
                           -0.00      -0.00      -0.00     749.46      -0.00      -0.00       0.00       0.00    1059.90       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00    -749.46       0.00      -0.00       0.00       0.00       0.04       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00   -1059.90       0.00      -0.00

   10   1.1  0.0  0.0     746.28       0.00       0.00       0.00       0.00       0.00     746.28       0.00       0.00    5661.08
                           -0.00       0.00      -0.00      -0.00   -1055.40      -0.00       0.00      -0.00       0.00       0.00

   11   2.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                         -746.28       0.00      -0.00       0.00      -0.00    1055.40     746.28      -0.00       0.00      -0.00

   12   3.1  0.0  0.0      -0.00       0.00     746.28       0.00       0.00       0.00      -0.00       0.00     746.28       0.00
                            0.00     746.28       0.00       0.00       0.00      -0.00      -0.00    -746.28      -0.00      -0.00

   13   4.1  0.0  0.0       0.00     190.91      -0.00       0.00       0.00       0.00       0.00     190.91      -0.00       0.00
                            0.00      -0.00     632.28    1164.17      -0.00      -0.00      -0.00       0.00    -632.28      -0.00

   14   5.1  0.0  0.0       0.00    -840.32       0.00       0.00       0.00       0.00       0.00    -840.32       0.00       0.00
                           -0.00       0.00     585.49    -360.38      -0.00       0.00       0.00      -0.00    -585.49      -0.00

   15   6.1  0.0  0.0       0.00    1239.77       0.00       0.00       0.00       0.00       0.00    1239.77       0.00       0.00
                            0.00      -0.00    1239.77   -1753.31       0.00      -0.00      -0.00       0.00   -1239.77      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00
                          746.28      -0.00      -0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00     190.91    -840.32    1239.77
                           -0.00    -746.28       0.00      -0.00       0.00

    3   3.1  1.0  1.0       0.00     746.28      -0.00       0.00       0.00
                            0.00      -0.00    -632.28    -585.49   -1239.77

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -1164.17     360.38    1753.31

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                        -1055.40       0.00       0.00      -0.00       0.00

    7   1.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00
                         -746.28       0.00       0.00      -0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00     190.91    -840.32    1239.77
                            0.00     746.28      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0       0.00     746.28      -0.00       0.00       0.00
                           -0.00       0.00     632.28     585.49    1239.77

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5661.08       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5661.06       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5661.05       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5661.05       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   14218.77
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -214.07315711 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1059.900      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.021       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    1059.900       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.038      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000    1059.902

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000   -1059.900      -0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.021       0.000       0.000       0.000
                             1059.900       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.038   -1059.901       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   -1059.901       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.021
                               -0.000      -0.000   -1059.902       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000    1059.901      -0.000       0.000       0.000       0.000
                                0.000    1059.902      -0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>            1055.394       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -1055.398      -0.000      -0.000       0.000

    2    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    1055.395   -1055.396       0.000

    3    1  |0 0>              -0.000       0.000    1055.393       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000    1055.397

    4    1  |0 0>               0.000     269.993      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1164.174      -0.000      -0.000       0.000      -0.000

    5    1  |0 0>               0.000   -1188.394       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -360.376      -0.000       0.000      -0.000       0.000

    6    1  |0 0>               0.000    1753.304       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1753.306       0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000    1055.394      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000     269.993   -1188.394    1753.304
                            -1059.902       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000    1055.393      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>            1059.901       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000   -1164.174     360.376    1753.306

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1055.398       0.000      -0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -1055.395       0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    1055.396      -0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000   -1055.397       0.000      -0.000       0.000

    3    1  |1 1>-              0.038       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -894.185    -828.011   -1753.302

    1    1  |0 0>               0.000    5661.079       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5661.084       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5661.061       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5661.046       0.000       0.000
                              894.185      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5661.047       0.000
                              828.011      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   14218.767
                             1753.302      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.08530415    -0.01214705    -2665.97      0.00000000        0.00      0.0000
    2  -214.07798632    -0.00482921    -1059.89      0.00731784     1606.08      0.1991
    3  -214.07798628    -0.00482918    -1059.88      0.00731787     1606.09      0.1991
    4  -214.07798624    -0.00482913    -1059.87      0.00731792     1606.10      0.1991
    5  -214.07034062     0.00281648      618.15      0.01496353     3284.12      0.4072
    6  -214.07034057     0.00281654      618.16      0.01496359     3284.13      0.4072
    7  -214.07034053     0.00281658      618.17      0.01496363     3284.14      0.4072
    8  -214.07034051     0.00281659      618.17      0.01496364     3284.14      0.4072
    9  -214.07034048     0.00281662      618.18      0.01496367     3284.15      0.4072
   10  -214.04535066     0.02780644     6102.81      0.03995349     8768.78      1.0872
   11  -214.04535066     0.02780644     6102.81      0.03995349     8768.78      1.0872
   12  -214.04535063     0.02780647     6102.82      0.03995352     8768.78      1.0872
   13  -214.04535056     0.02780654     6102.83      0.03995359     8768.80      1.0872
   14  -214.04535054     0.02780657     6102.84      0.03995362     8768.81      1.0872
   15  -214.00588303     0.06727408    14764.95      0.07942113    17430.92      2.1612

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000  0.70711073 -0.00000000 -0.00000000  0.00000000  0.67802884 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.56823277 -0.00000000 -0.00000000 -0.00000000 -0.52738413  0.00000000  0.00000002  0.57864999
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.70710315 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.56823591 -0.00000000  0.00000000 -0.00000000  0.76481650 -0.00000000  0.00000001  0.16739886

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.70710283  0.00000000  0.00000000  0.00000000  0.67803677 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00224485 -0.00000000  0.00000000 -0.00000000 -0.00203614 -0.00000000
                          -0.00000000  0.00000000  0.70709562  0.00000000  0.00000000  0.00000000  0.67803750 -0.00000002

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00224490 -0.00000000 -0.00000000  0.00000000  0.00203609  0.00000000
                          -0.00000000  0.00000000  0.70711082  0.00000000 -0.00000000 -0.00000000 -0.67802194  0.00000002

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.70711042 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.56822980  0.00000000 -0.00000000  0.00000000  0.23743772 -0.00000000  0.00000003  0.74605389

   1    1  |0 0>           0.00000000 -0.00000088  0.00000000 -0.00000000 -0.00000000 -0.28380104  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000246 -0.00000000  0.00000000  0.00000000  0.28379990 -0.00000001
                          -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00085225  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000155  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000050  0.00000000  0.00000000 -0.00000000  0.24689808 -0.00000000  0.00000000  0.13995188
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000058 -0.00000000  0.00000000 -0.00000000 -0.13995131  0.00000000  0.00000001  0.24689851
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.17701516 -0.00000000 -0.00000000 -0.00000000  0.00000054 -0.00000000 -0.00000000  0.00000053
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.20067712 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.13432878 -0.18881913 -0.00000000 -0.00000000  0.00000000  0.10219976
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.67803627  0.00000000  0.00000000  0.20067875  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.23068575 -0.02192266  0.00000000  0.00000000 -0.00000000  0.10219975

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.20067816 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00064347 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.20067719  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00064347  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.20067622 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.67802867 -0.00000000 -0.00000000 -0.20067879 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.09635829 -0.21074180  0.00000000 -0.00000000 -0.00000000 -0.10219975

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.95888319 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.95887822  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00307466 -0.00000000

   3    1  |0 0>          -0.28380264  0.00000000  0.00000000  0.95888272  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.88506401  0.36893970 -0.00000000 -0.00000000  0.00000000  0.00000004
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.36893988  0.88506391  0.00000000  0.00000000  0.00000000 -0.00000007
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000020  0.00000005  0.00000000  0.00000000 -0.00000000  0.98420812
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.08530415     -0.01214705    -2665.97      0.00000000        0.00      0.0000
     2   1   -214.07798632     -0.00482921    -1059.89      0.00731784     1606.08      0.1991
     3   1   -214.07798628     -0.00482918    -1059.88      0.00731787     1606.09      0.1991
     4   1   -214.07798624     -0.00482913    -1059.87      0.00731792     1606.10      0.1991
     5   1   -214.07034062      0.00281648      618.15      0.01496353     3284.12      0.4072
     6   1   -214.07034057      0.00281654      618.16      0.01496359     3284.13      0.4072
     7   1   -214.07034053      0.00281658      618.17      0.01496363     3284.14      0.4072
     8   1   -214.07034051      0.00281659      618.17      0.01496364     3284.14      0.4072
     9   1   -214.07034048      0.00281662      618.18      0.01496367     3284.15      0.4072
    10   1   -214.04535066      0.02780644     6102.81      0.03995349     8768.78      1.0872
    11   1   -214.04535066      0.02780644     6102.81      0.03995349     8768.78      1.0872
    12   1   -214.04535063      0.02780647     6102.82      0.03995352     8768.78      1.0872
    13   1   -214.04535056      0.02780654     6102.83      0.03995359     8768.80      1.0872
    14   1   -214.04535054      0.02780657     6102.84      0.03995362     8768.81      1.0872
    15   1   -214.00588303      0.06727408    14764.95      0.07942113    17430.92      2.1612

 E0 =   -214.07315711 is the energy of the lowest zeroth-order state
 E1 =   -214.08530415 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000  0.70711073 -0.00000000 -0.00000000  0.00000000  0.67802884 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.56823277 -0.00000000 -0.00000000 -0.00000000 -0.52738413  0.00000000  0.00000002  0.57864999
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.70710315 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.56823591 -0.00000000  0.00000000 -0.00000000  0.76481650 -0.00000000  0.00000001  0.16739886

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.70710283  0.00000000  0.00000000  0.00000000  0.67803677 -0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00224485 -0.00000000  0.00000000 -0.00000000 -0.00203614 -0.00000000
                               -0.00000000  0.00000000  0.70709562  0.00000000  0.00000000  0.00000000  0.67803750 -0.00000002

  7  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00224490 -0.00000000 -0.00000000  0.00000000  0.00203609  0.00000000
                               -0.00000000  0.00000000  0.70711082  0.00000000 -0.00000000 -0.00000000 -0.67802194  0.00000002

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.70711042 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.56822980  0.00000000 -0.00000000  0.00000000  0.23743772 -0.00000000  0.00000003  0.74605389

 10  1     1    1  |0 0>        0.00000000 -0.00000088  0.00000000 -0.00000000 -0.00000000 -0.28380104  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000246 -0.00000000  0.00000000  0.00000000  0.28379990 -0.00000001
                               -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00085225  0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000155  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000050  0.00000000  0.00000000 -0.00000000  0.24689808 -0.00000000  0.00000000  0.13995188
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000058 -0.00000000  0.00000000 -0.00000000 -0.13995131  0.00000000  0.00000001  0.24689851
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.17701516 -0.00000000 -0.00000000 -0.00000000  0.00000054 -0.00000000 -0.00000000  0.00000053
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.20067712 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.13432878 -0.18881913 -0.00000000 -0.00000000  0.00000000  0.10219976
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.67803627  0.00000000  0.00000000  0.20067875  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.23068575 -0.02192266  0.00000000  0.00000000 -0.00000000  0.10219975

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.20067816 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00064347 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.20067719  0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00064347  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.20067622 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.67802867 -0.00000000 -0.00000000 -0.20067879 -0.00000000 -0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.09635829 -0.21074180  0.00000000 -0.00000000 -0.00000000 -0.10219975

 10  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.95888319 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.95887822  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00307466 -0.00000000

 12  1     3    1  |0 0>       -0.28380264  0.00000000  0.00000000  0.95888272  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000  0.88506401  0.36893970 -0.00000000 -0.00000000  0.00000000  0.00000004
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.36893988  0.88506391  0.00000000  0.00000000  0.00000000 -0.00000007
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.00000000 -0.00000020  0.00000005  0.00000000  0.00000000 -0.00000000  0.98420812
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   45.97%    0.00%    0.00%
  2  1     2    1  |1 1>+        32.29%    0.00%    0.00%    0.00%   27.81%    0.00%    0.00%   33.48%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         32.29%    0.00%    0.00%    0.00%   58.49%    0.00%    0.00%    2.80%
  5  1     2    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   45.97%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   45.97%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   45.97%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        32.29%    0.00%    0.00%    0.00%    5.64%    0.00%    0.00%   55.66%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    8.05%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.05%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    6.10%    0.00%    0.00%    1.96%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.96%    0.00%    0.00%    6.10%
 15  1     6    1  |0 0>          3.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    4.03%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    1.80%    3.57%    0.00%    0.00%    0.00%    1.04%
  3  1     3    1  |1 1>+        45.97%    0.00%    0.00%    4.03%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    5.32%    0.05%    0.00%    0.00%    0.00%    1.04%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    4.03%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    4.03%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    4.03%    0.00%
  8  1     2    1  |1 1>-        45.97%    0.00%    0.00%    4.03%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.93%    4.44%    0.00%    0.00%    0.00%    1.04%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   91.95%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   91.95%    0.00%
 12  1     3    1  |0 0>          8.05%    0.00%    0.00%   91.95%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%   78.33%   13.61%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%   13.61%   78.33%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.87%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       91.62       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        87.70     36.62     37.51     11.70      0.97      0.04      0.62
 REAL TIME  *       100.81 SEC
 DISK USED  *       125.61 MB (local),        1.53 GB (total)
 SF USED    *       716.09 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -214.005883026963

              CI              CI           MULTI         RHF-SCF
   -213.94999919   -214.01612572   -213.27735727   -213.37363633
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
