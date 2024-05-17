
 Working directory              : /wrk/irikura/molpro.ehCMjG0iGk/
 Global scratch directory       : /wrk/irikura/molpro.ehCMjG0iGk/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ehCMjG0iGk/

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
 
 NTRIP=12
 NSING=14
 
                                                                                 ! add 6p to active space
 {multi
     closed,6,3
     occ,7,9
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
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 23-Apr-24          TIME: 10:29:37  
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

     17.039 MB (compressed) written to integral file ( 18.9%)

     Node minimum: 0.786 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     72 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.82      0.60
 REAL TIME  *         1.60 SEC
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
   2     -213.37323440      -0.00281237     0.13D-02     0.43D-02     1     0       0.01      0.01    diag2
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

 !RHF STATE 1.2 Energy               -213.373636325729
  RHF One-electron energy            -381.086680443690
  RHF Two-electron energy             167.713044117962
  RHF Kinetic energy                   82.648105638679
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.581712365660

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.62699     1  1  s    1.00568
    2.1     2.00000    -1.07683     1  1  d2-  0.97488
    3.1     2.00000    -1.07683     1  1  d2+  0.96766
    4.1     2.00000    -1.07683     1  1  d1+  0.89787    1  1  d1- -0.42112
    5.1     2.00000    -1.07683     1  1  d1+  0.42479    1  1  d1-  0.90499
    6.1     2.00000    -1.07683     1  1  d0   0.99973
    7.1     2.00000    -0.29333     1  2  s    0.97876
    1.2     2.00000    -3.81329     1  1  px   1.00042
    2.2     2.00000    -3.81329     1  1  py   1.00012
    3.2     2.00000    -3.81329     1  1  pz   1.00013
    4.2     1.00000    -0.05728     1  2  pz   0.79513
    5.2     1.00000    -0.05728     1  2  px   0.79369
    6.2     1.00000    -0.05728     1  2  py   0.79352


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
 CPU TIMES  *         0.88      0.05      0.60
 REAL TIME  *         2.08 SEC
 DISK USED  *        30.07 MB (local),      417.26 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =        14.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      80 (   40   40)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            12
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            14
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.197D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.286D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.393D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.321D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.220D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 6 2 1 1 2 3   5 6 4 1 2 3 5 6 4 1   2 6 4 3 5 2 3 5 6 4   1 81214151310 911 7
                                        2 6 4 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.807D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.283D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.276D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.202D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.612D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.779D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.106D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.106D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 2 1 3   2 1 7 9 5 4 6 810 6   4 5 810 9 7 3 2 1 8  10 6 9 7 5 4 3 1 2 6
                                        810 7 9 4 5 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03846   0.03846   0.03846   0.03846   0.03846   0.03846   0.03846   0.03846
                                          0.03846   0.03846   0.03846   0.03846
 Weight factors for state symmetry  2:    0.03846   0.03846   0.03846   0.03846   0.03846   0.03846   0.03846   0.03846
                                          0.03846   0.03846   0.03846   0.03846   0.03846   0.03846
 
 Number of orbital rotations:  664  ( 24 closed/active, 360 closed/virtual, 0 active/active, 280 active/virtual )
 Total number of variables:    5938
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0   -213.18247781    -213.21522501   -0.03274719    0.16019525 0.00007440 0.00000000  0.49E+00      0.55
   2    7   12    0   -213.21406258    -213.21414114   -0.00007856    0.01305763 0.00000310 0.00000000  0.22E-01      1.12
   3    6   12    0   -213.21414130    -213.21414131   -0.00000000    0.00003329 0.00000001 0.00000000  0.86E-04      1.59
   4    2    4    0   -213.21414131    -213.21414131   -0.00000000    0.00000001 0.00000001 0.00000000  0.88E-07      1.79

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.80E-08)
                       Final energy:   -213.21414131
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -213.341857114925
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.81723629
 One electron energy                          -376.72377631
 Two electron energy                           163.38191920
 Virial ratio                                    3.57605623
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -213.341857114763
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.81723630
 One electron energy                          -376.72377637
 Two electron energy                           163.38191925
 Virial ratio                                    3.57605622
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -213.341857114565
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.81723630
 One electron energy                          -376.72377637
 Two electron energy                           163.38191925
 Virial ratio                                    3.57605622
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -213.166260853838
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34897320
 One electron energy                          -372.09394256
 Two electron energy                           158.92768171
 Virial ratio                                    3.58857218
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -213.166260853816
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34897320
 One electron energy                          -372.09394256
 Two electron energy                           158.92768170
 Virial ratio                                    3.58857218
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -213.166260853602
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34897319
 One electron energy                          -372.09394248
 Two electron energy                           158.92768163
 Virial ratio                                    3.58857218
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -213.166260853438
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34897319
 One electron energy                          -372.09394244
 Two electron energy                           158.92768159
 Virial ratio                                    3.58857218
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -213.166260853400
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34897318
 One electron energy                          -372.09394243
 Two electron energy                           158.92768157
 Virial ratio                                    3.58857218
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -213.160393977231
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.43703893
 One electron energy                          -372.55293941
 Two electron energy                           159.39254544
 Virial ratio                                    3.58573569
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -213.160393976839
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.43703894
 One electron energy                          -372.55293948
 Two electron energy                           159.39254551
 Virial ratio                                    3.58573569
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -213.160393975980
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.43703896
 One electron energy                          -372.55293960
 Two electron energy                           159.39254563
 Virial ratio                                    3.58573569
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -213.158995390024
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34885016
 One electron energy                          -372.09188267
 Two electron energy                           158.93288728
 Virial ratio                                    3.58848782
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -213.306789575565
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.77021918
 One electron energy                          -376.44607262
 Two electron energy                           163.13928304
 Virial ratio                                    3.57709586
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -213.306789575560
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.77021918
 One electron energy                          -376.44607261
 Two electron energy                           163.13928304
 Virial ratio                                    3.57709586
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -213.306789575014
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.77021919
 One electron energy                          -376.44607270
 Two electron energy                           163.13928312
 Virial ratio                                    3.57709586
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -213.306789574904
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.77021919
 One electron energy                          -376.44607268
 Two electron energy                           163.13928311
 Virial ratio                                    3.57709586
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -213.306789574754
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.77021920
 One electron energy                          -376.44607271
 Two electron energy                           163.13928314
 Virial ratio                                    3.57709586
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -213.277544437264
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.71697667
 One electron energy                          -376.05251706
 Two electron energy                           162.77497262
 Virial ratio                                    3.57840111
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -213.171110029746
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34904924
 One electron energy                          -372.09522829
 Two electron energy                           158.92411826
 Virial ratio                                    3.58862867
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -213.171110029330
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34904923
 One electron energy                          -372.09522821
 Two electron energy                           158.92411818
 Virial ratio                                    3.58862867
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -213.171110029097
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34904922
 One electron energy                          -372.09522817
 Two electron energy                           158.92411814
 Virial ratio                                    3.58862867
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -213.149159722420
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.48791936
 One electron energy                          -372.84699100
 Two electron energy                           159.69783128
 Virial ratio                                    3.58400456
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -213.149159722034
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.48791937
 One electron energy                          -372.84699103
 Two electron energy                           159.69783131
 Virial ratio                                    3.58400456
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -213.149159721232
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.48791938
 One electron energy                          -372.84699111
 Two electron energy                           159.69783139
 Virial ratio                                    3.58400456
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -213.149159719491
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.48791940
 One electron energy                          -372.84699125
 Two electron energy                           159.69783153
 Virial ratio                                    3.58400456
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -213.149159719418
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.48791941
 One electron energy                          -372.84699126
 Two electron energy                           159.69783154
 Virial ratio                                    3.58400456
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.847379646512
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000277997
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.999999998931
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     2.152621640714
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.000000000001
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.999999999999
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.740147243309
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.999999999971
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999999998
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.259858336784
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.000000000000
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     2.416556552100
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.000000000000
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     3.999999999998
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     1.000000000042
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     1.583443857984
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.349309853913
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999999789709
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.999999999950
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.650689462015
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>    -0.000000000000
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.284720716155
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000033
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000003
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     2.715272574255
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>    -0.000000000000
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     3.485787979788
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     4.000000000000
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     1.000000000003
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     0.999999999972
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     0.514211739545
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.803310499575
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999999932294
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.000000001119
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.196688897271
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.999999999999
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.000000000001
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.975132040536
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999999996
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999999999
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.024869088961
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000000000000
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     0.097655468111
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     1.000000000000
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     0.999999999999
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     3.999999999986
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     3.902344402471
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     6.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     6.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>     2.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>     2.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     6.000000000000
 !MCSCF expec    <13.1 Singlet|L**2|13.1 Singlet>     6.000000000000
 !MCSCF expec    <14.1 Singlet|L**2|14.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 3 5 6 1 1 4 3   5 2 6 1 4 2 3 5 6 1   4 2 3 5 6 4 2 3 5 6   1 9 7 8121415131011
                                        4 2 5 3 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 3 2 1 2   1 3 4 6 810 7 9 5 4   6 810 7 9 5 1 3 2 4   6 810 7 9 5 1 3 2 4
                                        6 810 7 9 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.96330     1  1  s    1.00394
    2.1     2.00000    -1.41272     1  1  d1+  1.00091
    3.1     2.00000    -1.41272     1  1  d0   1.00091
    4.1     2.00000    -1.41272     1  1  d2-  1.00091
    5.1     2.00000    -1.41272     1  1  d2+  1.00091
    6.1     2.00000    -1.41272     1  1  d1-  1.00091
    7.1     1.95362    -0.58347     1  2  s    1.06518
    1.2     2.00000    -4.14898     1  1  px   0.99958
    2.2     2.00000    -4.14898     1  1  pz   0.99958
    3.2     2.00000    -4.14898     1  1  py   0.99958
    4.2     0.46296    -0.11101     1  2  py   1.10985
    5.2     0.46296    -0.11101     1  2  pz   1.10985
    6.2     0.46296    -0.11101     1  2  px   1.10985
    7.2     0.21916     0.03631     1  4  pz  -0.36186    1  7  pz   1.28074
    8.2     0.21916     0.03631     1  4  py  -0.36186    1  7  py   1.28074
    9.2     0.21916     0.03631     1  4  px  -0.36186    1  7  px   1.28074
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aa0000      -0.00000053      0.00000000      0.98321061      0.00000000      0.00000000     -0.00000005     -0.00000000
 2 a0a000       0.98321061     -0.00000013      0.00000053      0.00000000     -0.00000006     -0.00000000     -0.00000000
 2 0aa000       0.00000013      0.98321060     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000002
 2 0a0a00       0.00000000     -0.00000000      0.00000000     -0.17874095     -0.00009371     -0.00000279     -0.00000001
 2 a000a0       0.00000000      0.00000000      0.00000000      0.77005356      0.00039565      0.00000668      0.00000002
 2 a00a00      -0.00000005      0.00000000      0.09244197     -0.00000568     -0.00002052      0.69806223     -0.00000001
 2 00aa00      -0.00000001     -0.09244197      0.00000000     -0.00000002     -0.00000003      0.00000001      0.69806221
 2 0a000a       0.00000001      0.09244200     -0.00000000     -0.00000002     -0.00000003      0.00000001      0.69806216
 2 0a00a0       0.00000005     -0.00000000     -0.09244192     -0.00000568     -0.00002052      0.69806215     -0.00000001
 2 a0000a       0.09244200     -0.00000001      0.00000005     -0.00035811      0.69806211      0.00002052      0.00000003
 2 00a0a0      -0.09244192      0.00000001     -0.00000005     -0.00035811      0.69806208      0.00002052      0.00000003
 2 00a00a      -0.00000000     -0.00000000     -0.00000000     -0.59131258     -0.00030194     -0.00000389     -0.00000002
 0 aa2000       0.00000006     -0.00000000     -0.11968290     -0.00000000     -0.00000000      0.00000001      0.00000000
 0 a2a000      -0.11968290      0.00000002     -0.00000006     -0.00000000      0.00000001      0.00000000      0.00000000
 0 2aa000      -0.00000002     -0.11968289     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 0 2a0a00       0.00000000      0.00000000     -0.00000000      0.01935988      0.00001016      0.00000031      0.00000000
 0 0a2a00      -0.00000000      0.00000000     -0.00000000      0.02073528      0.00001086      0.00000032      0.00000000
 0 a200a0      -0.00000000     -0.00000000     -0.00000000     -0.08657761     -0.00004448     -0.00000075     -0.00000000
 0 a020a0      -0.00000000      0.00000000     -0.00000000     -0.08616079     -0.00004427     -0.00000075     -0.00000000
 0 a02a00       0.00000000     -0.00000000     -0.00922960      0.00000064      0.00000231     -0.07864728      0.00000000
 0 20aa00       0.00000000      0.00922960      0.00000000      0.00000000      0.00000000     -0.00000000     -0.07864728
 0 2a000a      -0.00000000     -0.00922960      0.00000000      0.00000000      0.00000000     -0.00000000     -0.07864727
 0 0a20a0      -0.00000000      0.00000000      0.00922959      0.00000064      0.00000231     -0.07864727      0.00000000
 0 a2000a      -0.00922960      0.00000000     -0.00000000      0.00004035     -0.07864727     -0.00000231     -0.00000000
 0 02a0a0       0.00922959     -0.00000000      0.00000000      0.00004035     -0.07864727     -0.00000231     -0.00000000
 0 a20a00       0.00000001     -0.00000000     -0.02390504      0.00000063      0.00000229     -0.07794202      0.00000000
 0 02aa00       0.00000000      0.02390504      0.00000000      0.00000000      0.00000000     -0.00000000     -0.07794202
 0 0a200a      -0.00000000     -0.02390505      0.00000000      0.00000000      0.00000000     -0.00000000     -0.07794202
 0 2a00a0      -0.00000001      0.00000000      0.02390505      0.00000063      0.00000229     -0.07794202      0.00000000
 0 a0200a      -0.02390505      0.00000000     -0.00000001      0.00003998     -0.07794201     -0.00000229     -0.00000000
 0 20a0a0       0.02390505     -0.00000000      0.00000001      0.00003998     -0.07794201     -0.00000229     -0.00000000
 0 02a00a       0.00000000      0.00000000      0.00000000      0.06680090      0.00003411      0.00000044      0.00000000
 0 20a00a       0.00000000      0.00000000      0.00000000      0.06584233      0.00003362      0.00000043      0.00000000
 
 Energy:     -213.34185711   -213.34185711   -213.34185711   -213.16626085   -213.16626085   -213.16626085   -213.16626085

 State:              8               9              10              11              12
 2 aa0000      -0.00000000     -0.00000000     -0.13288686     -0.00000010     -0.00000000
 2 a0a000      -0.00000000     -0.00000000      0.00000010     -0.13288688     -0.00000000
 2 0aa000      -0.00000000     -0.13288692      0.00000000      0.00000000     -0.00000000
 2 0a0a00       0.78598520     -0.00000000     -0.00000000     -0.00000000      0.56978842
 2 a000a0      -0.23819838      0.00000000     -0.00000000      0.00000000      0.56978839
 2 a00a00       0.00000118      0.00000000      0.69201441      0.00000052      0.00000000
 2 00aa00       0.00000000     -0.69201442      0.00000000      0.00000000     -0.00000000
 2 0a000a       0.00000000      0.69201447     -0.00000000     -0.00000000      0.00000000
 2 0a00a0       0.00000118     -0.00000000     -0.69201450     -0.00000052     -0.00000000
 2 a0000a       0.00000179      0.00000000     -0.00000052      0.69201443      0.00000000
 2 00a0a0       0.00000179     -0.00000000      0.00000052     -0.69201447      0.00000000
 2 00a00a      -0.54778684     -0.00000000     -0.00000000      0.00000000      0.56978841
 0 aa2000       0.00000000      0.00000000      0.02043522      0.00000002      0.00000000
 0 a2a000       0.00000000      0.00000000     -0.00000002      0.02043522      0.00000000
 0 2aa000      -0.00000000      0.02043523     -0.00000000     -0.00000000     -0.00000000
 0 2a0a00      -0.08831248      0.00000000      0.00000000      0.00000000     -0.06470333
 0 0a2a00      -0.08799970      0.00000000      0.00000000      0.00000000     -0.06470333
 0 a200a0       0.02604257     -0.00000000      0.00000000     -0.00000000     -0.06470332
 0 a020a0       0.02739009     -0.00000000      0.00000000     -0.00000000     -0.06470332
 0 a02a00      -0.00000013     -0.00000000     -0.07822153     -0.00000006     -0.00000000
 0 20aa00      -0.00000000      0.07822153     -0.00000000     -0.00000000      0.00000000
 0 2a000a      -0.00000000     -0.07822154      0.00000000      0.00000000     -0.00000000
 0 0a20a0      -0.00000013      0.00000000      0.07822154      0.00000006      0.00000000
 0 a2000a      -0.00000020     -0.00000000      0.00000006     -0.07822153     -0.00000000
 0 02a0a0      -0.00000020      0.00000000     -0.00000006      0.07822154     -0.00000000
 0 a20a00      -0.00000013     -0.00000000     -0.07416317     -0.00000006     -0.00000000
 0 02aa00      -0.00000000      0.07416317     -0.00000000     -0.00000000      0.00000000
 0 0a200a      -0.00000000     -0.07416317      0.00000000      0.00000000     -0.00000000
 0 2a00a0      -0.00000013      0.00000000      0.07416317      0.00000006      0.00000000
 0 a0200a      -0.00000020     -0.00000000      0.00000006     -0.07416317     -0.00000000
 0 20a0a0      -0.00000020      0.00000000     -0.00000006      0.07416317     -0.00000000
 0 02a00a       0.06092240      0.00000000      0.00000000     -0.00000000     -0.06470333
 0 20a00a       0.06195714      0.00000000      0.00000000     -0.00000000     -0.06470332
 
 Energy:     -213.16626085   -213.16039398   -213.16039398   -213.16039398   -213.15899539
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 020000      -0.06255876      0.00000038     -0.00000001     -0.00000096      0.79094049      0.54256375      0.00000000
 2 002000       0.71625394     -0.00000559      0.00000011      0.00000042     -0.34129279      0.54256372     -0.00000000
 2 ab0000      -0.00000000      0.00000052      0.00000001      0.68711379      0.00000084     -0.00000000      0.00000000
 2 ba0000       0.00000000     -0.00000052     -0.00000001     -0.68711379     -0.00000084      0.00000000     -0.00000000
 2 a0b000       0.00000541      0.68711379      0.00000019     -0.00000052      0.00000010     -0.00000000     -0.00000004
 2 b0a000      -0.00000541     -0.68711379     -0.00000019      0.00000052     -0.00000010      0.00000000      0.00000004
 2 0ba000       0.00000011      0.00000019     -0.68711378      0.00000001      0.00000000     -0.00000000      0.00000000
 2 0ab000      -0.00000011     -0.00000019      0.68711378     -0.00000001     -0.00000000      0.00000000     -0.00000000
 2 200000      -0.65369520      0.00000522     -0.00000010      0.00000054     -0.44964774      0.54256374      0.00000000
 2 0a0b00      -0.00898676      0.00000005     -0.00000000     -0.00000014      0.11362111      0.10643300     -0.00000000
 2 0b0a00       0.00898676     -0.00000005      0.00000000      0.00000014     -0.11362111     -0.10643300      0.00000000
 2 b000a0       0.09390535     -0.00000075      0.00000001     -0.00000008      0.06459330     -0.10643297      0.00000000
 2 a000b0      -0.09390535      0.00000075     -0.00000001      0.00000008     -0.06459330      0.10643297     -0.00000000
 2 b00a00       0.00000000     -0.00000007     -0.00000000     -0.09870607     -0.00000012     -0.00000000      0.00000020
 2 a00b00      -0.00000000      0.00000007      0.00000000      0.09870607      0.00000012      0.00000000     -0.00000020
 2 00ba00       0.00000002      0.00000003     -0.09870608      0.00000000     -0.00000000      0.00000000      0.00000002
 2 00ab00      -0.00000002     -0.00000003      0.09870608     -0.00000000      0.00000000     -0.00000000     -0.00000002
 2 a0000b       0.00000078      0.09870610      0.00000003     -0.00000007      0.00000001      0.00000000      0.49370032
 2 b0000a      -0.00000078     -0.09870610     -0.00000003      0.00000007     -0.00000001     -0.00000000     -0.49370032
 2 00b0a0      -0.00000078     -0.09870604     -0.00000003      0.00000007     -0.00000001     -0.00000000      0.49370031
 2 00a0b0       0.00000078      0.09870604      0.00000003     -0.00000007      0.00000001      0.00000000     -0.49370031
 2 0b000a       0.00000002      0.00000003     -0.09870610      0.00000000     -0.00000000     -0.00000000     -0.00000002
 2 0a000b      -0.00000002     -0.00000003      0.09870610     -0.00000000      0.00000000      0.00000000      0.00000002
 2 0a00b0      -0.00000000      0.00000007      0.00000000      0.09870604      0.00000012      0.00000000      0.00000020
 2 0b00a0       0.00000000     -0.00000007     -0.00000000     -0.09870604     -0.00000012     -0.00000000     -0.00000020
 2 00a00b       0.10289218     -0.00000080      0.00000002      0.00000006     -0.04902780      0.10643302      0.00000000
 2 00b00a      -0.10289218      0.00000080     -0.00000002     -0.00000006      0.04902780     -0.10643302     -0.00000000
 0 220000       0.08700829     -0.00000068      0.00000001      0.00000005     -0.04145918     -0.12663567     -0.00000000
 0 022000      -0.07940885      0.00000063     -0.00000001      0.00000007     -0.05462180     -0.12663566     -0.00000000
 0 202000      -0.00759944      0.00000005     -0.00000000     -0.00000012      0.09608098     -0.12663566      0.00000000
 0 ba2000      -0.00000000      0.00000006      0.00000000      0.08346844      0.00000010     -0.00000000      0.00000000
 0 ab2000       0.00000000     -0.00000006     -0.00000000     -0.08346844     -0.00000010      0.00000000     -0.00000000
 0 b2a000       0.00000066      0.08346844      0.00000002     -0.00000006      0.00000001     -0.00000000     -0.00000000
 0 a2b000      -0.00000066     -0.08346844     -0.00000002      0.00000006     -0.00000001      0.00000000      0.00000000
 0 2ab000       0.00000001      0.00000002     -0.08346843      0.00000000      0.00000000     -0.00000000      0.00000000
 0 2ba000      -0.00000001     -0.00000002      0.08346843     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0 2a0b00      -0.00890956      0.00000007     -0.00000000      0.00000002     -0.01863188     -0.00357626      0.00000000
 0 2b0a00       0.00890956     -0.00000007      0.00000000     -0.00000002      0.01863188      0.00357626     -0.00000000
 0 0b2a00      -0.01172780      0.00000009     -0.00000000     -0.00000002      0.01699959      0.00357626     -0.00000000
 0 0a2b00       0.01172780     -0.00000009      0.00000000      0.00000002     -0.01699959     -0.00357626      0.00000000
 0 b200a0      -0.00885817      0.00000007     -0.00000000      0.00000002     -0.01865638      0.00357625     -0.00000000
 0 a200b0       0.00885817     -0.00000007      0.00000000     -0.00000002      0.01865638     -0.00357625      0.00000000
 0 b020a0      -0.02059047      0.00000016     -0.00000000      0.00000000     -0.00160003      0.00357625     -0.00000000
 0 a020b0       0.02059047     -0.00000016      0.00000000     -0.00000000      0.00160003     -0.00357625      0.00000000
 0 b02a00      -0.00000000      0.00000001      0.00000000      0.01030161      0.00000001      0.00000000     -0.00000002
 0 a02b00       0.00000000     -0.00000001     -0.00000000     -0.01030161     -0.00000001     -0.00000000      0.00000002
 0 a2000b      -0.00000008     -0.01030161     -0.00000000      0.00000001     -0.00000000     -0.00000000     -0.05566897
 0 b2000a       0.00000008      0.01030161      0.00000000     -0.00000001      0.00000000      0.00000000      0.05566897
 0 20ba00      -0.00000000     -0.00000000      0.01030161     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 20ab00       0.00000000      0.00000000     -0.01030161      0.00000000      0.00000000      0.00000000      0.00000000
 0 02a0b0      -0.00000008     -0.01030160     -0.00000000      0.00000001     -0.00000000     -0.00000000      0.05566897
 0 02b0a0       0.00000008      0.01030160      0.00000000     -0.00000001      0.00000000      0.00000000     -0.05566897
 0 0a20b0       0.00000000     -0.00000001     -0.00000000     -0.01030160     -0.00000001     -0.00000000     -0.00000002
 0 0b20a0      -0.00000000      0.00000001      0.00000000      0.01030160      0.00000001      0.00000000      0.00000002
 0 2b000a      -0.00000000     -0.00000000      0.01030161     -0.00000000      0.00000000      0.00000000      0.00000000
 0 2a000b       0.00000000      0.00000000     -0.01030161      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 a20b00       0.00000000     -0.00000002     -0.00000000     -0.02065252     -0.00000003      0.00000000      0.00000002
 0 b20a00      -0.00000000      0.00000002      0.00000000      0.02065252      0.00000003     -0.00000000     -0.00000002
 0 02ab00       0.00000000      0.00000001     -0.02065252      0.00000000     -0.00000000      0.00000000      0.00000000
 0 02ba00      -0.00000000     -0.00000001      0.02065252     -0.00000000      0.00000000     -0.00000000     -0.00000000
 0 b0200a       0.00000016      0.02065252      0.00000001     -0.00000002      0.00000000      0.00000000      0.05419865
 0 a0200b      -0.00000016     -0.02065252     -0.00000001      0.00000002     -0.00000000     -0.00000000     -0.05419865
 0 20b0a0       0.00000016      0.02065252      0.00000001     -0.00000002      0.00000000      0.00000000     -0.05419865
 0 20a0b0      -0.00000016     -0.02065252     -0.00000001      0.00000002     -0.00000000     -0.00000000      0.05419865
 0 0b200a      -0.00000000     -0.00000001      0.02065252     -0.00000000      0.00000000      0.00000000      0.00000000
 0 0a200b       0.00000000      0.00000001     -0.02065252      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 2a00b0       0.00000000     -0.00000002     -0.00000000     -0.02065252     -0.00000003      0.00000000     -0.00000002
 0 2b00a0      -0.00000000      0.00000002      0.00000000      0.02065252      0.00000003     -0.00000000      0.00000002
 
 Energy:     -213.30678958   -213.30678958   -213.30678958   -213.30678957   -213.30678957   -213.27754444   -213.17111003

 State:              8               9              10              11              12              13              14
 2 020000       0.00000000      0.00000000     -0.16137521     -0.00000000     -0.00000015      0.00000024      0.02552833
 2 002000       0.00000000      0.00000000      0.10279577      0.00000000      0.00000004      0.00000081      0.12699089
 2 ab0000      -0.00000003     -0.00000000      0.00000012      0.00000000     -0.14149286      0.00000006     -0.00000006
 2 ba0000       0.00000003      0.00000000     -0.00000012     -0.00000000      0.14149286     -0.00000006      0.00000006
 2 a0b000      -0.00000000      0.00000000     -0.00000006     -0.00000000     -0.00000006     -0.14149287      0.00000095
 2 b0a000       0.00000000     -0.00000000      0.00000006      0.00000000      0.00000006      0.14149287     -0.00000095
 2 0ba000       0.00000000      0.00000001     -0.00000000      0.14149289      0.00000000     -0.00000000     -0.00000000
 2 0ab000      -0.00000000     -0.00000001      0.00000000     -0.14149289     -0.00000000      0.00000000      0.00000000
 2 200000       0.00000000     -0.00000000      0.05857938      0.00000000      0.00000011     -0.00000105     -0.15251911
 2 0a0b00       0.00000000     -0.00000000      0.55150140      0.00000001      0.00000052     -0.00000082     -0.08724333
 2 0b0a00      -0.00000000      0.00000000     -0.55150140     -0.00000001     -0.00000052      0.00000082      0.08724333
 2 b000a0       0.00000000      0.00000000      0.20019570      0.00000000      0.00000038     -0.00000359     -0.52123579
 2 a000b0      -0.00000000     -0.00000000     -0.20019570     -0.00000000     -0.00000038      0.00000359      0.52123579
 2 b00a00      -0.49370033      0.00000003      0.00000043      0.00000000     -0.48355332      0.00000020     -0.00000019
 2 a00b00       0.49370033     -0.00000003     -0.00000043     -0.00000000      0.48355332     -0.00000020      0.00000019
 2 00ba00       0.00000003      0.49370033      0.00000001     -0.48355333     -0.00000000      0.00000000     -0.00000000
 2 00ab00      -0.00000003     -0.49370033     -0.00000001      0.48355333      0.00000000     -0.00000000      0.00000000
 2 a0000b       0.00000020     -0.00000002      0.00000020      0.00000000      0.00000020      0.48355333     -0.00000326
 2 b0000a      -0.00000020      0.00000002     -0.00000020     -0.00000000     -0.00000020     -0.48355333      0.00000326
 2 00b0a0       0.00000020     -0.00000002     -0.00000020     -0.00000000     -0.00000020     -0.48355336      0.00000326
 2 00a0b0      -0.00000020      0.00000002      0.00000020      0.00000000      0.00000020      0.48355336     -0.00000326
 2 0b000a      -0.00000003     -0.49370030      0.00000001     -0.48355335     -0.00000000      0.00000000      0.00000000
 2 0a000b       0.00000003      0.49370030     -0.00000001      0.48355335      0.00000000     -0.00000000     -0.00000000
 2 0a00b0      -0.49370029      0.00000003     -0.00000043     -0.00000000      0.48355337     -0.00000020      0.00000019
 2 0b00a0       0.49370029     -0.00000003      0.00000043      0.00000000     -0.48355337      0.00000020     -0.00000019
 2 00a00b      -0.00000000     -0.00000000     -0.35130551     -0.00000001     -0.00000014     -0.00000277     -0.43399255
 2 00b00a       0.00000000      0.00000000      0.35130551      0.00000001      0.00000014      0.00000277      0.43399255
 0 220000       0.00000000     -0.00000000      0.01463166      0.00000000      0.00000001      0.00000012      0.01807551
 0 022000       0.00000000     -0.00000000      0.00833803      0.00000000      0.00000002     -0.00000015     -0.02170915
 0 202000       0.00000000     -0.00000000     -0.02296968     -0.00000000     -0.00000002      0.00000003      0.00363362
 0 ba2000      -0.00000000     -0.00000000      0.00000002      0.00000000     -0.02013969      0.00000001     -0.00000001
 0 ab2000       0.00000000      0.00000000     -0.00000002     -0.00000000      0.02013969     -0.00000001      0.00000001
 0 b2a000      -0.00000000      0.00000000     -0.00000001     -0.00000000     -0.00000001     -0.02013969      0.00000014
 0 a2b000       0.00000000     -0.00000000      0.00000001      0.00000000      0.00000001      0.02013969     -0.00000014
 0 2ab000       0.00000000      0.00000000     -0.00000000      0.02013969      0.00000000     -0.00000000     -0.00000000
 0 2ba000      -0.00000000     -0.00000000      0.00000000     -0.02013969     -0.00000000      0.00000000      0.00000000
 0 2a0b00      -0.00000000      0.00000000     -0.06127515     -0.00000000     -0.00000006      0.00000007      0.00706987
 0 2b0a00       0.00000000     -0.00000000      0.06127515      0.00000000      0.00000006     -0.00000007     -0.00706987
 0 0b2a00       0.00000000     -0.00000000      0.06046541      0.00000000      0.00000006     -0.00000011     -0.01218856
 0 0a2b00      -0.00000000      0.00000000     -0.06046541     -0.00000000     -0.00000006      0.00000011      0.01218856
 0 b200a0      -0.00000000     -0.00000000     -0.01967709     -0.00000000     -0.00000004      0.00000040      0.05845885
 0 a200b0       0.00000000      0.00000000      0.01967709      0.00000000      0.00000004     -0.00000040     -0.05845885
 0 b020a0      -0.00000000     -0.00000000     -0.02451488     -0.00000000     -0.00000004      0.00000039      0.05660076
 0 a020b0       0.00000000      0.00000000      0.02451488      0.00000000      0.00000004     -0.00000039     -0.05660076
 0 b02a00       0.05566897     -0.00000000     -0.00000005     -0.00000000      0.05466631     -0.00000002      0.00000002
 0 a02b00      -0.05566897      0.00000000      0.00000005      0.00000000     -0.05466631      0.00000002     -0.00000002
 0 a2000b      -0.00000002      0.00000000     -0.00000002     -0.00000000     -0.00000002     -0.05466631      0.00000037
 0 b2000a       0.00000002     -0.00000000      0.00000002      0.00000000      0.00000002      0.05466631     -0.00000037
 0 20ba00      -0.00000000     -0.05566897     -0.00000000      0.05466631      0.00000000     -0.00000000      0.00000000
 0 20ab00       0.00000000      0.05566897      0.00000000     -0.05466631     -0.00000000      0.00000000     -0.00000000
 0 02a0b0       0.00000002     -0.00000000     -0.00000002     -0.00000000     -0.00000002     -0.05466631      0.00000037
 0 02b0a0      -0.00000002      0.00000000      0.00000002      0.00000000      0.00000002      0.05466631     -0.00000037
 0 0a20b0       0.05566897     -0.00000000      0.00000005      0.00000000     -0.05466631      0.00000002     -0.00000002
 0 0b20a0      -0.05566897      0.00000000     -0.00000005     -0.00000000      0.05466631     -0.00000002      0.00000002
 0 2b000a       0.00000000      0.05566896     -0.00000000      0.05466631      0.00000000     -0.00000000     -0.00000000
 0 2a000b      -0.00000000     -0.05566896      0.00000000     -0.05466631     -0.00000000      0.00000000      0.00000000
 0 a20b00      -0.05419865      0.00000000      0.00000005      0.00000000     -0.05207514      0.00000002     -0.00000002
 0 b20a00       0.05419865     -0.00000000     -0.00000005     -0.00000000      0.05207514     -0.00000002      0.00000002
 0 02ab00       0.00000000      0.05419865      0.00000000     -0.05207514     -0.00000000      0.00000000     -0.00000000
 0 02ba00      -0.00000000     -0.05419865     -0.00000000      0.05207514      0.00000000     -0.00000000      0.00000000
 0 b0200a       0.00000002     -0.00000000      0.00000002      0.00000000      0.00000002      0.05207514     -0.00000035
 0 a0200b      -0.00000002      0.00000000     -0.00000002     -0.00000000     -0.00000002     -0.05207514      0.00000035
 0 20b0a0      -0.00000002      0.00000000      0.00000002      0.00000000      0.00000002      0.05207514     -0.00000035
 0 20a0b0       0.00000002     -0.00000000     -0.00000002     -0.00000000     -0.00000002     -0.05207514      0.00000035
 0 0b200a       0.00000000      0.05419865     -0.00000000      0.05207514      0.00000000     -0.00000000     -0.00000000
 0 0a200b      -0.00000000     -0.05419865      0.00000000     -0.05207514     -0.00000000      0.00000000      0.00000000
 0 2a00b0       0.05419865     -0.00000000      0.00000005      0.00000000     -0.05207514      0.00000002     -0.00000002
 0 2b00a0      -0.05419865      0.00000000     -0.00000005     -0.00000000      0.05207514     -0.00000002      0.00000002
 
 Energy:     -213.17111003   -213.17111003   -213.14915972   -213.14915972   -213.14915972   -213.14915972   -213.14915972
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.76      1.88      0.05      0.60
 REAL TIME  *         4.22 SEC
 DISK USED  *        37.16 MB (local),      502.25 MB (total)
 SF USED    *        19.60 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3418571   2.0
    -213.3418571   2.0
    -213.3418571   2.0
    -213.1662609   6.0
    -213.1662609   6.0
    -213.1662609   6.0
    -213.1662609   6.0
    -213.1662609   6.0
    -213.1603940   2.0
    -213.1603940   2.0
    -213.1603940   2.0
    -213.1589954  -0.0
    -213.3067896   6.0
    -213.3067896   6.0
    -213.3067896   6.0
    -213.3067896   6.0
    -213.3067896   6.0
    -213.2775444  -0.0
    -213.1711100   2.0
    -213.1711100   2.0
    -213.1711100   2.0
    -213.1491597   6.0
    -213.1491597   6.0
    -213.1491597   6.0
    -213.1491597   6.0
    -213.1491597   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:       90 conf      120 CSFs
 N elec internal:    18284 conf    76944 CSFs
 N-1 el internal:    12821 conf    88545 CSFs
 N-2 el internal:     4717 conf    46537 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      80 (  40  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.34185711
     2      -213.34185711
     3      -213.34185711
     4      -213.16626085
     5      -213.16626085
     6      -213.16626085
     7      -213.16626085
     8      -213.16626085
     9      -213.16039398
    10      -213.16039398
    11      -213.16039398
    12      -213.15899539

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1249D-06

 Number of blocks in overlap matrix:  1142   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    2547
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       3541800
 Number of doubly external configurations:       4078680
 Total number of contracted configurations:      7658886
 Total number of uncontracted configurations:   77703006

 Diagonal Coupling coefficients finished.               Storage:  25507007 words, CPU-Time:     80.05 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1346125 words, CPU-time:      0.19 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34185711     0.00000000    -0.83733061  0.54D-01  0.10D+00    93.79
    1     2     2     1.00000000     0.00000000  -213.34185711     0.00000000    -0.83736438  0.54D-01  0.10D+00    93.79
    1     3     3     1.00000000     0.00000000  -213.34185711     0.00000000    -0.83740884  0.54D-01  0.10D+00    93.79
    1     4     4     1.00000000     0.00000000  -213.16626085     0.00000000    -0.80011448  0.39D-01  0.94D-01    93.79
    1     5     5     1.00000000     0.00000000  -213.16626085     0.00000000    -0.79976233  0.39D-01  0.94D-01    93.79
    1     6     6     1.00000000     0.00000000  -213.16626085     0.00000000    -0.79979456  0.39D-01  0.94D-01    93.79
    1     7     7     1.00000000     0.00000000  -213.16626085     0.00000000    -0.79971543  0.39D-01  0.94D-01    93.79
    1     8     8     1.00000000     0.00000000  -213.16626085     0.00000000    -0.80001484  0.39D-01  0.94D-01    93.79
    1     9     9     1.00000000     0.00000000  -213.16039398     0.00000000    -0.80535425  0.42D-01  0.95D-01    93.79
    1    10    10     1.00000000     0.00000000  -213.16039398     0.00000000    -0.80535285  0.42D-01  0.95D-01    93.79
    1    11    11     1.00000000     0.00000000  -213.16039398    -0.00000000    -0.80532813  0.42D-01  0.95D-01    93.79
    1    12    12     1.00000000     0.00000000  -213.15899539     0.00000000    -0.80058772  0.40D-01  0.94D-01    93.79
    2     1     1     1.09603737    -0.65539036  -213.99724747    -0.65539036    -0.01984156  0.41D-02  0.14D-02   472.89
    2     2     2     1.09613742    -0.65534264  -213.99719976    -0.65534264    -0.01988133  0.42D-02  0.14D-02   472.89
    2     3     3     1.09620805    -0.65526766  -213.99712478    -0.65526766    -0.01996545  0.43D-02  0.14D-02   472.89
    2     4     4     1.08549212    -0.64417361  -213.81043446    -0.64417361    -0.01540630  0.24D-02  0.11D-02   472.89
    2     5     5     1.08536746    -0.64415770  -213.81041855    -0.64415770    -0.01543362  0.24D-02  0.11D-02   472.89
    2     6     6     1.08541379    -0.64413021  -213.81039106    -0.64413021    -0.01546192  0.25D-02  0.11D-02   472.89
    2     7     7     1.08558156    -0.64412200  -213.81038286    -0.64412200    -0.01545929  0.25D-02  0.11D-02   472.89
    2     8     8     1.08544088    -0.64411716  -213.81037801    -0.64411716    -0.01547565  0.25D-02  0.11D-02   472.89
    2     9     9     1.08682323    -0.64481619  -213.80521017    -0.64481619    -0.01644377  0.30D-02  0.11D-02   472.89
    2    10    10     1.08684411    -0.64480437  -213.80519835    -0.64480437    -0.01645303  0.31D-02  0.11D-02   472.89
    2    11    11     1.08685453    -0.64479296  -213.80518694    -0.64479296    -0.01646823  0.31D-02  0.11D-02   472.89
    2    12    12     1.08590909    -0.64414554  -213.80314093    -0.64414554    -0.01577860  0.27D-02  0.11D-02   472.89
    3     1     1     1.08393078    -0.67423196  -214.01608908    -0.01884160    -0.00052659  0.81D-04  0.62D-04   851.71
    3     2     2     1.08393507    -0.67422860  -214.01608572    -0.01888596    -0.00052945  0.82D-04  0.61D-04   851.71
    3     3     3     1.08392733    -0.67422535  -214.01608247    -0.01895769    -0.00053271  0.83D-04  0.62D-04   851.71
    3     4     4     1.07905545    -0.65892794  -213.82518880    -0.01475434    -0.00033116  0.36D-04  0.35D-04   851.71
    3     5     5     1.07905443    -0.65892685  -213.82518770    -0.01476915    -0.00033210  0.36D-04  0.36D-04   851.71
    3     6     6     1.07905533    -0.65892609  -213.82518694    -0.01479588    -0.00033286  0.36D-04  0.36D-04   851.71
    3     7     7     1.07908145    -0.65892456  -213.82518541    -0.01480255    -0.00033440  0.36D-04  0.37D-04   851.71
    3     8     8     1.07908006    -0.65892228  -213.82518313    -0.01480512    -0.00033645  0.36D-04  0.37D-04   851.71
    3     9     9     1.07924161    -0.66047488  -213.82086886    -0.01565869    -0.00036959  0.46D-04  0.40D-04   851.71
    3    10    10     1.07923973    -0.66047438  -213.82086836    -0.01567001    -0.00036999  0.46D-04  0.40D-04   851.71
    3    11    11     1.07923867    -0.66047416  -213.82086814    -0.01568120    -0.00037027  0.46D-04  0.40D-04   851.71
    3    12    12     1.07910017    -0.65927575  -213.81827114    -0.01513021    -0.00034830  0.37D-04  0.40D-04   851.71
    4     1     1     1.08364928    -0.67477693  -214.01663405    -0.00054497    -0.00002435  0.36D-05  0.35D-05  1231.45
    4     2     2     1.08364851    -0.67477690  -214.01663402    -0.00054830    -0.00002438  0.36D-05  0.35D-05  1231.45
    4     3     3     1.08364707    -0.67477672  -214.01663383    -0.00055137    -0.00002453  0.36D-05  0.35D-05  1231.45
    4     4     4     1.07951657    -0.65927224  -213.82553310    -0.00034430    -0.00001510  0.26D-05  0.22D-05  1231.45
    4     5     5     1.07951623    -0.65927222  -213.82553307    -0.00034537    -0.00001512  0.26D-05  0.22D-05  1231.45
    4     6     6     1.07951548    -0.65927217  -213.82553302    -0.00034608    -0.00001516  0.26D-05  0.22D-05  1231.45
    4     7     7     1.07951132    -0.65927192  -213.82553277    -0.00034736    -0.00001543  0.26D-05  0.23D-05  1231.45
    4     8     8     1.07950975    -0.65927182  -213.82553267    -0.00034954    -0.00001551  0.26D-05  0.23D-05  1231.45
    4     9     9     1.07959767    -0.66085696  -213.82125094    -0.00038208    -0.00001631  0.29D-05  0.22D-05  1231.45
    4    10    10     1.07959738    -0.66085695  -213.82125092    -0.00038256    -0.00001631  0.29D-05  0.22D-05  1231.45
    4    11    11     1.07959753    -0.66085692  -213.82125089    -0.00038275    -0.00001634  0.29D-05  0.22D-05  1231.45
    4    12    12     1.07964530    -0.65963970  -213.81863509    -0.00036394    -0.00001729  0.24D-05  0.30D-05  1231.45
    5     1     1     1.08373006    -0.67480422  -214.01666134    -0.00002729    -0.00000128  0.96D-07  0.24D-06  1609.87
    5     2     2     1.08373099    -0.67480422  -214.01666133    -0.00002731    -0.00000129  0.97D-07  0.24D-06  1609.87
    5     3     3     1.08373004    -0.67480421  -214.01666133    -0.00002749    -0.00000129  0.97D-07  0.24D-06  1609.87
    5     4     4     1.07966041    -0.65929028  -213.82555114    -0.00001804    -0.00000106  0.52D-07  0.26D-06  1609.87
    5     5     5     1.07966034    -0.65929028  -213.82555113    -0.00001806    -0.00000106  0.52D-07  0.26D-06  1609.87
    5     6     6     1.07966118    -0.65929026  -213.82555111    -0.00001809    -0.00000104  0.52D-07  0.26D-06  1609.87
    5     7     7     1.07966143    -0.65929026  -213.82555111    -0.00001834    -0.00000104  0.52D-07  0.26D-06  1609.87
    5     8     8     1.07966112    -0.65929026  -213.82555111    -0.00001844    -0.00000104  0.52D-07  0.26D-06  1609.87
    5     9     9     1.07971273    -0.66087576  -213.82126974    -0.00001880    -0.00000105  0.74D-07  0.24D-06  1609.87
    5    10    10     1.07971278    -0.66087575  -213.82126973    -0.00001881    -0.00000105  0.74D-07  0.24D-06  1609.87
    5    11    11     1.07971276    -0.66087575  -213.82126973    -0.00001883    -0.00000105  0.74D-07  0.24D-06  1609.87
    5    12    12     1.07985928    -0.65966081  -213.81865620    -0.00002112    -0.00000137  0.66D-07  0.34D-06  1609.87
    6     1     1     1.08372721    -0.67480574  -214.01666286    -0.00000152    -0.00000011  0.12D-07  0.19D-07  1987.44
    6     2     2     1.08372718    -0.67480574  -214.01666286    -0.00000153    -0.00000011  0.12D-07  0.19D-07  1987.44
    6     3     3     1.08372708    -0.67480574  -214.01666286    -0.00000153    -0.00000011  0.12D-07  0.19D-07  1987.44
    6     4     4     1.07967149    -0.65929172  -213.82555258    -0.00000144    -0.00000013  0.15D-07  0.24D-07  1987.44
    6     5     5     1.07967141    -0.65929172  -213.82555258    -0.00000145    -0.00000013  0.15D-07  0.24D-07  1987.44
    6     6     6     1.07967178    -0.65929168  -213.82555254    -0.00000142    -0.00000013  0.15D-07  0.23D-07  1987.44
    6     7     7     1.07967176    -0.65929168  -213.82555253    -0.00000142    -0.00000013  0.15D-07  0.23D-07  1987.44
    6     8     8     1.07967177    -0.65929168  -213.82555253    -0.00000142    -0.00000013  0.15D-07  0.23D-07  1987.44
    6     9     9     1.07971668    -0.66087713  -213.82127110    -0.00000137    -0.00000014  0.18D-07  0.25D-07  1987.44
    6    10    10     1.07971666    -0.66087712  -213.82127110    -0.00000137    -0.00000014  0.18D-07  0.25D-07  1987.44
    6    11    11     1.07971666    -0.66087712  -213.82127109    -0.00000137    -0.00000014  0.18D-07  0.25D-07  1987.44
    6    12    12     1.07987922    -0.65966267  -213.81865806    -0.00000185    -0.00000015  0.19D-07  0.24D-07  1987.44
    7     1     1     1.08374069    -0.67480587  -214.01666299    -0.00000013    -0.00000001  0.77D-09  0.16D-08  2360.31
    7     2     2     1.08374061    -0.67480587  -214.01666299    -0.00000013    -0.00000001  0.76D-09  0.16D-08  2360.31
    7     3     3     1.08374072    -0.67480587  -214.01666299    -0.00000013    -0.00000001  0.78D-09  0.16D-08  2360.31
    7     4     4     1.07968206    -0.65929188  -213.82555274    -0.00000016    -0.00000001  0.13D-08  0.23D-08  2360.31
    7     5     5     1.07968204    -0.65929188  -213.82555274    -0.00000016    -0.00000001  0.13D-08  0.23D-08  2360.31
    7     6     6     1.07968188    -0.65929184  -213.82555269    -0.00000016    -0.00000001  0.13D-08  0.23D-08  2360.31
    7     7     7     1.07968185    -0.65929184  -213.82555269    -0.00000016    -0.00000001  0.13D-08  0.23D-08  2360.31
    7     8     8     1.07968188    -0.65929184  -213.82555269    -0.00000016    -0.00000001  0.13D-08  0.23D-08  2360.31
    7     9     9     1.07972658    -0.66087729  -213.82127127    -0.00000017    -0.00000002  0.14D-08  0.25D-08  2360.31
    7    10    10     1.07972655    -0.66087729  -213.82127126    -0.00000017    -0.00000002  0.14D-08  0.25D-08  2360.31
    7    11    11     1.07972656    -0.66087728  -213.82127126    -0.00000017    -0.00000002  0.14D-08  0.25D-08  2360.31
    7    12    12     1.07989014    -0.65966284  -213.81865823    -0.00000017    -0.00000001  0.13D-08  0.21D-08  2360.31


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.6%
 S   0.9%  11.9%
 P   0.4%  46.6%  29.8%

 Initialization:   3.4%
 Other:            5.4%

 Total CPU:     2360.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220//000           0.1316963   0.9406647  -0.0181703   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                            0.0028212  -0.0886889  -0.0082534   0.0000000
 2222222222//0000           0.2814124  -0.0218765   0.9071122   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                           -0.0637021  -0.0077805   0.0618327   0.0000000
 2222222222/0/000           0.8977679  -0.1311316  -0.2816760   0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000
                           -0.0622564   0.0039422  -0.0636426   0.0000000
 22222222220/0/00           0.0000000   0.0000000  -0.0000000  -0.1508994   0.7625078  -0.0081954  -0.0116088   0.0042260
                           -0.0000000  -0.0000001   0.0000001   0.5494980
 2222222222/000/0          -0.0000000  -0.0000000   0.0000000   0.7350291  -0.2504447  -0.0038119   0.0186767  -0.0324801
                            0.0000001   0.0000003   0.0000000   0.5494979
 22222222220/000/           0.0087119   0.0622266  -0.0012020  -0.0158834   0.0057193  -0.1183781   0.6625199  -0.0086857
                           -0.0212243   0.6672220   0.0620914  -0.0000002
 222222222200//00          -0.0087119  -0.0622265   0.0012020  -0.0158832   0.0057190  -0.1183782   0.6625200  -0.0086857
                            0.0212244  -0.6672220  -0.0620915   0.0000001
 222222222200/00/          -0.0000000  -0.0000000   0.0000000  -0.5841297  -0.5120632   0.0120073  -0.0070677   0.0282540
                           -0.0000000   0.0000002  -0.0000001   0.5494980
 22222222220/00/0          -0.0186159   0.0014472  -0.0600069   0.0251959   0.0081744   0.4364001   0.0851280   0.5048891
                           -0.4792429  -0.0585341   0.4651785   0.0000000
 2222222222/00/00           0.0186159  -0.0014472   0.0600070   0.0251958   0.0081745   0.4364001   0.0851280   0.5048891
                            0.4792426   0.0585341  -0.4651788   0.0000000
 2222222222/0000/           0.0593889  -0.0086746  -0.0186333  -0.0172161   0.0056766   0.4987336   0.0828268  -0.4442773
                            0.4683662  -0.0296577   0.4787948  -0.0000000
 222222222200/0/0          -0.0593888   0.0086746   0.0186333  -0.0172160   0.0056767   0.4987334   0.0828267  -0.4442777
                           -0.4683663   0.0296577  -0.4787948  -0.0000000
 22222202222//000          -0.0143246  -0.1023161   0.0019764  -0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0000000
                           -0.0004354   0.0136890   0.0012739  -0.0000000
 2222220222//2000          -0.0306092   0.0023795  -0.0986665   0.0000000   0.0000000   0.0000001   0.0000000   0.0000001
                            0.0098324   0.0012009  -0.0095438  -0.0000000
 2222220222/2/000          -0.0976502   0.0142632   0.0306379   0.0000000   0.0000000   0.0000001   0.0000000  -0.0000001
                            0.0096092  -0.0006085   0.0098232  -0.0000000
 22222202222/0/00          -0.0000000   0.0000000   0.0000000   0.0142625  -0.0760648   0.0008251   0.0011409  -0.0003857
                            0.0000000   0.0000000  -0.0000000  -0.0556031
 22222202220/2/00           0.0000000  -0.0000000  -0.0000000   0.0157840  -0.0757630   0.0008068   0.0011706  -0.0004558
                           -0.0000000   0.0000000  -0.0000000  -0.0556031
 2222220222/200/0          -0.0000000  -0.0000000   0.0000000  -0.0734280   0.0241988   0.0003912  -0.0018568   0.0032475
                           -0.0000000  -0.0000000  -0.0000000  -0.0556032
 2222220222/020/0          -0.0000000   0.0000000   0.0000000  -0.0729284   0.0256689   0.0003679  -0.0018621   0.0032198
                           -0.0000000  -0.0000000  -0.0000000  -0.0556031
 222222022220//00           0.0007165   0.0051178  -0.0000989   0.0015905  -0.0005726   0.0118538  -0.0663414   0.0008697
                           -0.0021311   0.0669938   0.0062344   0.0000000
 22222202222/000/          -0.0007165  -0.0051178   0.0000989   0.0015905  -0.0005727   0.0118538  -0.0663413   0.0008697
                            0.0021311  -0.0669937  -0.0062344   0.0000000
 222222022202//00           0.0024205   0.0172891  -0.0003340   0.0015722  -0.0005661   0.0117173  -0.0655774   0.0008597
                           -0.0020275   0.0637384   0.0059315  -0.0000000
 22222202220/200/          -0.0024205  -0.0172890   0.0003340   0.0015721  -0.0005661   0.0117173  -0.0655773   0.0008597
                            0.0020275  -0.0637382  -0.0059315   0.0000000
 222222022202/00/           0.0000000   0.0000000   0.0000000   0.0586658   0.0503960  -0.0011929   0.0007211  -0.0028341
                            0.0000000  -0.0000000   0.0000000  -0.0556032
 222222022220/00/          -0.0000000   0.0000000   0.0000000   0.0576441   0.0515642  -0.0011980   0.0006862  -0.0027918
                            0.0000000  -0.0000000   0.0000000  -0.0556031
 2222220222/02/00          -0.0015311   0.0001190  -0.0049353  -0.0025230  -0.0008186  -0.0436989  -0.0085243  -0.0505570
                           -0.0481194  -0.0058772   0.0467073  -0.0000000
 22222202220/20/0           0.0015310  -0.0001190   0.0049352  -0.0025230  -0.0008185  -0.0436988  -0.0085243  -0.0505569
                            0.0481193   0.0058772  -0.0467071  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.906697    0.133006    0.284211   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.005246   -0.011211
            -0.035764   -0.000000
 2          -0.132436    0.950021   -0.022094   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.037473    0.000871
             0.005224    0.000000
 3          -0.284478   -0.018351    0.916134    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000724   -0.036137
             0.011221    0.000000
 4          -0.000000   -0.000000   -0.000000    0.960126   -0.024592    0.035991   -0.022689    0.026832   -0.000000   -0.000000
            -0.000000    0.000000
 5          -0.000000    0.000000    0.000000   -0.026900    0.008109    0.011677    0.008170    0.961241    0.000000    0.000000
            -0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000   -0.008770    0.712423    0.623382   -0.169099   -0.012391    0.000000   -0.000000
             0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000    0.021114    0.118315    0.121602    0.946386   -0.009928   -0.000000   -0.000000
             0.000000    0.000000
 8           0.000000    0.000000   -0.000000   -0.043458   -0.634634    0.721216   -0.012407   -0.004518    0.000000   -0.000000
             0.000000   -0.000000
 9           0.027402   -0.001242    0.028038    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.030421    0.686896
             0.671306    0.000000
 10         -0.001735    0.039035    0.003425    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.956325    0.083897
            -0.042508    0.000000
 11          0.028012    0.003633   -0.027215    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.088995   -0.666738
             0.686254    0.000000
 12          0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.961667

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960208    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000572    0.000080
             0.000318   -0.000000
 2           0.000000    0.960208   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000095    0.000652
             0.000006   -0.000000
 3          -0.000000   -0.000000    0.960207   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000314    0.000051
            -0.000577   -0.000000
 4           0.000000    0.000000   -0.000000    0.961757    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.961757    0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.961757   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.961757   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.961757    0.000000   -0.000000
             0.000000    0.000000
 9           0.000572   -0.000095    0.000314    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.961739   -0.000000
             0.000000   -0.000000
 10          0.000080    0.000652    0.000051    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.961739
             0.000000   -0.000000
 11          0.000318    0.000006   -0.000577    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.961739   -0.000000
 12         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.961667


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.90669723 (fixed)   0.96029939 (relaxed)   0.96020751 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00079338   -0.00139432   -0.57041320
 Singles      0.01761100   -0.05667081   -0.06320281
 Pairs        0.06619613    0.00000000   -0.04118986
 Total        1.08460050   -0.05806512   -0.67480587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34156532
 Nuclear energy                         0.00000000
 Kinetic energy                        83.04613197
 One electron energy                 -375.98384790
 Two electron energy                  161.96718491
 Virial quotient                       -2.57708165
 Correlation energy                    -0.67509766
 !MRCI STATE 1.1 Energy              -214.016662989008

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07377659 (Davidson, fixed reference)
 Cluster corrected energies          -214.07363648 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07377659 (Davidson, rotated reference)

 Cluster corrected energies          -214.07175591 (Pople, fixed reference)
 Cluster corrected energies          -214.07161118 (Pople, relaxed reference)
 Cluster corrected energies          -214.07175591 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95002067 (fixed)   0.96029943 (relaxed)   0.96020755 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00079338   -0.00139432   -0.57041333
 Singles      0.01761090   -0.05667071   -0.06320275
 Pairs        0.06619614   -0.00000000   -0.04118979
 Total        1.08460042   -0.05806503   -0.67480587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34156532
 Nuclear energy                         0.00000000
 Kinetic energy                        83.04613217
 One electron energy                 -375.98384607
 Two electron energy                  161.96718308
 Virial quotient                       -2.57708165
 Correlation energy                    -0.67509766
 !MRCI STATE 2.1 Energy              -214.016662988883

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07377654 (Davidson, fixed reference)
 Cluster corrected energies          -214.07363643 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07377654 (Davidson, rotated reference)

 Cluster corrected energies          -214.07175585 (Pople, fixed reference)
 Cluster corrected energies          -214.07161112 (Pople, relaxed reference)
 Cluster corrected energies          -214.07175585 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.91613445 (fixed)   0.96029938 (relaxed)   0.96020750 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00079338   -0.00139432   -0.57041316
 Singles      0.01761104   -0.05667083   -0.06320283
 Pairs        0.06619612   -0.00000000   -0.04118988
 Total        1.08460054   -0.05806515   -0.67480587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34156532
 Nuclear energy                         0.00000000
 Kinetic energy                        83.04613092
 One electron energy                 -375.98384717
 Two electron energy                  161.96718418
 Virial quotient                       -2.57708168
 Correlation energy                    -0.67509766
 !MRCI STATE 3.1 Energy              -214.016662988746

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07377661 (Davidson, fixed reference)
 Cluster corrected energies          -214.07363650 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07377661 (Davidson, rotated reference)

 Cluster corrected energies          -214.07175593 (Pople, fixed reference)
 Cluster corrected energies          -214.07161120 (Pople, relaxed reference)
 Cluster corrected energies          -214.07175593 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96012552 (fixed)   0.96190670 (relaxed)   0.96175668 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132185   -0.00229220   -0.55728485
 Singles      0.01762917   -0.05767758   -0.06409453
 Pairs        0.06215822    0.00000001   -0.03791251
 Total        1.08110924   -0.05996978   -0.65929188
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16626085
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81344749
 One electron energy                 -371.87323762
 Two electron energy                  158.04768488
 Virial quotient                       -2.58201487
 Correlation energy                    -0.65929188
 !MRCI STATE 4.1 Energy              -213.825552738489

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87902740 (Davidson, fixed reference)
 Cluster corrected energies          -213.87880508 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87902740 (Davidson, rotated reference)

 Cluster corrected energies          -213.87698468 (Pople, fixed reference)
 Cluster corrected energies          -213.87675638 (Pople, relaxed reference)
 Cluster corrected energies          -213.87698468 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96124059 (fixed)   0.96190672 (relaxed)   0.96175669 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132185   -0.00229220   -0.55728490
 Singles      0.01762915   -0.05767757   -0.06409452
 Pairs        0.06215822    0.00000004   -0.03791247
 Total        1.08110922   -0.05996973   -0.65929188
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16626085
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81344918
 One electron energy                 -371.87323909
 Two electron energy                  158.04768636
 Virial quotient                       -2.58201482
 Correlation energy                    -0.65929188
 !MRCI STATE 5.1 Energy              -213.825552737647

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87902739 (Davidson, fixed reference)
 Cluster corrected energies          -213.87880506 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87902739 (Davidson, rotated reference)

 Cluster corrected energies          -213.87698466 (Pople, fixed reference)
 Cluster corrected energies          -213.87675637 (Pople, relaxed reference)
 Cluster corrected energies          -213.87698466 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.71242280 (fixed)   0.96190678 (relaxed)   0.96175676 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132186   -0.00229220   -0.55728515
 Singles      0.01762898   -0.05767732   -0.06409440
 Pairs        0.06215822    0.00000002   -0.03791230
 Total        1.08110907   -0.05996951   -0.65929184
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16626085
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81341398
 One electron energy                 -371.87320198
 Two electron energy                  158.04764928
 Virial quotient                       -2.58201591
 Correlation energy                    -0.65929184
 !MRCI STATE 6.1 Energy              -213.825552693389

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87902724 (Davidson, fixed reference)
 Cluster corrected energies          -213.87880492 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87902724 (Davidson, rotated reference)

 Cluster corrected energies          -213.87698451 (Pople, fixed reference)
 Cluster corrected energies          -213.87675622 (Pople, relaxed reference)
 Cluster corrected energies          -213.87698451 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.94638585 (fixed)   0.96190680 (relaxed)   0.96175677 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132186   -0.00229220   -0.55728508
 Singles      0.01762896   -0.05767732   -0.06409439
 Pairs        0.06215822   -0.00000007   -0.03791237
 Total        1.08110903   -0.05996960   -0.65929184
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16626085
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81341493
 One electron energy                 -371.87320242
 Two electron energy                  158.04764973
 Virial quotient                       -2.58201588
 Correlation energy                    -0.65929184
 !MRCI STATE 7.1 Energy              -213.825552691309

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87902721 (Davidson, fixed reference)
 Cluster corrected energies          -213.87880489 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87902721 (Davidson, rotated reference)

 Cluster corrected energies          -213.87698449 (Pople, fixed reference)
 Cluster corrected energies          -213.87675619 (Pople, relaxed reference)
 Cluster corrected energies          -213.87698449 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.72121585 (fixed)   0.96190678 (relaxed)   0.96175676 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132186   -0.00229220   -0.55728514
 Singles      0.01762898   -0.05767732   -0.06409439
 Pairs        0.06215822    0.00000001   -0.03791230
 Total        1.08110906   -0.05996951   -0.65929184
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16626085
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81341419
 One electron energy                 -371.87320224
 Two electron energy                  158.04764955
 Virial quotient                       -2.58201591
 Correlation energy                    -0.65929184
 !MRCI STATE 8.1 Energy              -213.825552690286

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87902723 (Davidson, fixed reference)
 Cluster corrected energies          -213.87880491 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87902723 (Davidson, rotated reference)

 Cluster corrected energies          -213.87698451 (Pople, fixed reference)
 Cluster corrected energies          -213.87675621 (Pople, relaxed reference)
 Cluster corrected energies          -213.87698451 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.68689550 (fixed)   0.96190470 (relaxed)   0.96173859 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131824   -0.00222264   -0.55889605
 Singles      0.01744378   -0.05749806   -0.06384022
 Pairs        0.06238790   -0.00000000   -0.03814102
 Total        1.08114992   -0.05972070   -0.66087729
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16068577
 Nuclear energy                         0.00000000
 Kinetic energy                        82.84552979
 One electron energy                 -372.09092890
 Two electron energy                  158.26965763
 Virial quotient                       -2.58096329
 Correlation energy                    -0.66058550
 !MRCI STATE 9.1 Energy              -213.821271268875

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87487773 (Davidson, fixed reference)
 Cluster corrected energies          -213.87463107 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87487773 (Davidson, rotated reference)

 Cluster corrected energies          -213.87283172 (Pople, fixed reference)
 Cluster corrected energies          -213.87257843 (Pople, relaxed reference)
 Cluster corrected energies          -213.87283172 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95632498 (fixed)   0.96190471 (relaxed)   0.96173860 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131824   -0.00222264   -0.55889596
 Singles      0.01744375   -0.05749805   -0.06384020
 Pairs        0.06238790   -0.00000013   -0.03814113
 Total        1.08114989   -0.05972082   -0.66087729
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16068577
 Nuclear energy                         0.00000000
 Kinetic energy                        82.84553040
 One electron energy                 -372.09092915
 Two electron energy                  158.26965788
 Virial quotient                       -2.58096327
 Correlation energy                    -0.66058550
 !MRCI STATE 10.1 Energy             -213.821271263878

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87487771 (Davidson, fixed reference)
 Cluster corrected energies          -213.87463105 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87487771 (Davidson, rotated reference)

 Cluster corrected energies          -213.87283170 (Pople, fixed reference)
 Cluster corrected energies          -213.87257841 (Pople, relaxed reference)
 Cluster corrected energies          -213.87283170 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.68625353 (fixed)   0.96190471 (relaxed)   0.96173859 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131824   -0.00222264   -0.55889606
 Singles      0.01744376   -0.05749805   -0.06384020
 Pairs        0.06238789   -0.00000001   -0.03814102
 Total        1.08114990   -0.05972070   -0.66087728
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16068577
 Nuclear energy                         0.00000000
 Kinetic energy                        82.84552972
 One electron energy                 -372.09092898
 Two electron energy                  158.26965772
 Virial quotient                       -2.58096329
 Correlation energy                    -0.66058549
 !MRCI STATE 11.1 Energy             -213.821271258451

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87487771 (Davidson, fixed reference)
 Cluster corrected energies          -213.87463105 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87487771 (Davidson, rotated reference)

 Cluster corrected energies          -213.87283170 (Pople, fixed reference)
 Cluster corrected energies          -213.87257841 (Pople, relaxed reference)
 Cluster corrected energies          -213.87283170 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.96166677 (fixed)   0.96181109 (relaxed)   0.96166677 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131610   -0.00229513   -0.00292545
 Singles      0.01750203   -0.05759918   -0.06393858
 Pairs        0.06249326   -0.59976853   -0.59279882
 Total        1.08131139   -0.65966284   -0.65966284
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15899539
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81481571
 One electron energy                 -371.87383400
 Two electron energy                  158.05517576
 Virial quotient                       -2.58188896
 Correlation energy                    -0.65966284
 !MRCI STATE 12.1 Energy             -213.818658232348

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87229634 (Davidson, fixed reference)
 Cluster corrected energies          -213.87208230 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87229634 (Davidson, rotated reference)

 Cluster corrected energies          -213.87025611 (Pople, fixed reference)
 Cluster corrected energies          -213.87003624 (Pople, relaxed reference)
 Cluster corrected energies          -213.87025611 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      719.53       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3784.04   3781.25      1.88      0.05      0.60
 REAL TIME  *      3884.02 SEC
 DISK USED  *       755.90 MB (local),        8.91 GB (total)
 SF USED    *         7.50 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.07377659  AU                              
 SETTING HLSDIAG(2)     =      -214.07377654  AU                              
 SETTING HLSDIAG(3)     =      -214.07377661  AU                              
 SETTING HLSDIAG(4)     =      -213.87902740  AU                              
 SETTING HLSDIAG(5)     =      -213.87902739  AU                              
 SETTING HLSDIAG(6)     =      -213.87902724  AU                              
 SETTING HLSDIAG(7)     =      -213.87902721  AU                              
 SETTING HLSDIAG(8)     =      -213.87902723  AU                              
 SETTING HLSDIAG(9)     =      -213.87487773  AU                              
 SETTING HLSDIAG(10)    =      -213.87487771  AU                              
 SETTING HLSDIAG(11)    =      -213.87487771  AU                              
 SETTING HLSDIAG(12)    =      -213.87229634  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 14  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14
 Number of reference states: 14  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 22
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      111 conf      126 CSFs
 N elec internal:    18620 conf    47824 CSFs
 N-1 el internal:    13496 conf    51520 CSFs
 N-2 el internal:     5716 conf    27166 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      80 (  40  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -213.30678958
     2      -213.30678958
     3      -213.30678958
     4      -213.30678957
     5      -213.30678957
     6      -213.27754444
     7      -213.17111003
     8      -213.17111003
     9      -213.17111003
    10      -213.14915972
    11      -213.14915972
    12      -213.14915972
    13      -213.14915972
    14      -213.14915972

 Number of blocks in overlap matrix:  1250   Smallest eigenvalue:  0.95D-06
 Number of N-2 electron functions:    2497
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2060800
 Number of doubly external configurations:       4000520
 Total number of contracted configurations:      6085470
 Total number of uncontracted configurations:   45449790

 Diagonal Coupling coefficients finished.               Storage:  20885111 words, CPU-Time:     55.05 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1250534 words, CPU-time:      0.18 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.30678958     0.00000000    -0.84167505  0.59D-01  0.10D+00    67.12
    1     2     2     1.00000000     0.00000000  -213.30678958     0.00000000    -0.84251652  0.61D-01  0.10D+00    67.12
    1     3     3     1.00000000     0.00000000  -213.30678958    -0.00000000    -0.84301124  0.61D-01  0.10D+00    67.12
    1     4     4     1.00000000     0.00000000  -213.30678957     0.00000000    -0.84260394  0.61D-01  0.10D+00    67.12
    1     5     5     1.00000000     0.00000000  -213.30678957     0.00000000    -0.84165332  0.59D-01  0.10D+00    67.12
    1     6     6     1.00000000     0.00000000  -213.27754444     0.00000000    -0.81763155  0.31D-01  0.11D+00    67.12
    1     7     7     1.00000000     0.00000000  -213.17111003    -0.00000000    -0.79921261  0.39D-01  0.94D-01    67.12
    1     8     8     1.00000000     0.00000000  -213.17111003     0.00000000    -0.79929957  0.39D-01  0.94D-01    67.12
    1     9     9     1.00000000     0.00000000  -213.17111003     0.00000000    -0.79925269  0.39D-01  0.94D-01    67.12
    1    10    10     1.00000000     0.00000000  -213.14915972     0.00000000    -0.81019367  0.44D-01  0.96D-01    67.12
    1    11    11     1.00000000     0.00000000  -213.14915972    -0.00000000    -0.81087873  0.46D-01  0.96D-01    67.12
    1    12    12     1.00000000     0.00000000  -213.14915972     0.00000000    -0.81084858  0.46D-01  0.96D-01    67.12
    1    13    13     1.00000000     0.00000000  -213.14915972     0.00000000    -0.81078453  0.46D-01  0.96D-01    67.12
    1    14    14     1.00000000     0.00000000  -213.14915972     0.00000000    -0.81036684  0.44D-01  0.96D-01    67.12
    2     1     1     1.09977800    -0.66024020  -213.96702978    -0.66024020    -0.02070798  0.43D-02  0.16D-02   336.67
    2     2     2     1.09972829    -0.66023536  -213.96702493    -0.66023536    -0.02071243  0.43D-02  0.16D-02   336.67
    2     3     3     1.10039332    -0.65986502  -213.96665460    -0.65986502    -0.02108993  0.45D-02  0.16D-02   336.67
    2     4     4     1.10041607    -0.65980511  -213.96659469    -0.65980511    -0.02116479  0.46D-02  0.16D-02   336.67
    2     5     5     1.10069779    -0.65968067  -213.96647024    -0.65968067    -0.02130654  0.46D-02  0.16D-02   336.67
    2     6     6     1.08924694    -0.65591051  -213.93345495    -0.65591051    -0.01682227  0.34D-02  0.14D-02   336.67
    2     7     7     1.08543945    -0.64417190  -213.81528193    -0.64417190    -0.01527185  0.24D-02  0.11D-02   336.67
    2     8     8     1.08544412    -0.64416960  -213.81527963    -0.64416960    -0.01526990  0.24D-02  0.11D-02   336.67
    2     9     9     1.08549171    -0.64414475  -213.81525478    -0.64414475    -0.01529933  0.24D-02  0.11D-02   336.67
    2    10    10     1.08805729    -0.64711600  -213.79627572    -0.64711600    -0.01692871  0.32D-02  0.12D-02   336.67
    2    11    11     1.08811347    -0.64709945  -213.79625917    -0.64709945    -0.01694528  0.32D-02  0.12D-02   336.67
    2    12    12     1.08865736    -0.64676680  -213.79592653    -0.64676680    -0.01731120  0.35D-02  0.12D-02   336.67
    2    13    13     1.08870607    -0.64673435  -213.79589407    -0.64673435    -0.01735273  0.35D-02  0.12D-02   336.67
    2    14    14     1.08871643    -0.64672775  -213.79588747    -0.64672775    -0.01736387  0.35D-02  0.12D-02   336.67
    3     1     1     1.08803526    -0.67962563  -213.98641521    -0.01938543    -0.00059143  0.91D-04  0.72D-04   606.72
    3     2     2     1.08803149    -0.67962234  -213.98641192    -0.01938698    -0.00059355  0.92D-04  0.73D-04   606.72
    3     3     3     1.08808926    -0.67960509  -213.98639467    -0.01974007    -0.00061140  0.95D-04  0.76D-04   606.72
    3     4     4     1.08807235    -0.67960383  -213.98639340    -0.01979872    -0.00061290  0.95D-04  0.77D-04   606.72
    3     5     5     1.08811449    -0.67959617  -213.98638575    -0.01991551    -0.00062075  0.97D-04  0.78D-04   606.72
    3     6     6     1.08348941    -0.67213908  -213.94968351    -0.01622857    -0.00046734  0.52D-04  0.70D-04   606.72
    3     7     7     1.07917140    -0.65878355  -213.82989358    -0.01461165    -0.00031611  0.33D-04  0.33D-04   606.72
    3     8     8     1.07916956    -0.65878346  -213.82989349    -0.01461386    -0.00031586  0.33D-04  0.33D-04   606.72
    3     9     9     1.07917040    -0.65878259  -213.82989262    -0.01463784    -0.00031691  0.33D-04  0.33D-04   606.72
    3    10    10     1.08037673    -0.66312697  -213.81228669    -0.01601097    -0.00040966  0.53D-04  0.48D-04   606.72
    3    11    11     1.08039394    -0.66312385  -213.81228357    -0.01602440    -0.00041194  0.53D-04  0.49D-04   606.72
    3    12    12     1.08041851    -0.66310605  -213.81226577    -0.01633924    -0.00042939  0.55D-04  0.53D-04   606.72
    3    13    13     1.08041833    -0.66310504  -213.81226476    -0.01637070    -0.00043105  0.55D-04  0.53D-04   606.72
    3    14    14     1.08042401    -0.66310408  -213.81226380    -0.01637633    -0.00043180  0.56D-04  0.53D-04   606.72
    4     1     1     1.08779371    -0.68024333  -213.98703291    -0.00061770    -0.00003005  0.44D-05  0.45D-05   878.46
    4     2     2     1.08778791    -0.68024293  -213.98703250    -0.00062059    -0.00003037  0.44D-05  0.46D-05   878.46
    4     3     3     1.08778635    -0.68024259  -213.98703217    -0.00063750    -0.00003080  0.45D-05  0.46D-05   878.46
    4     4     4     1.08778315    -0.68024257  -213.98703214    -0.00063874    -0.00003079  0.45D-05  0.47D-05   878.46
    4     5     5     1.08778760    -0.68024231  -213.98703188    -0.00064613    -0.00003106  0.45D-05  0.47D-05   878.46
    4     6     6     1.08442034    -0.67263051  -213.95017495    -0.00049143    -0.00002821  0.32D-05  0.52D-05   878.46
    4     7     7     1.07958479    -0.65911064  -213.83022067    -0.00032708    -0.00001278  0.27D-05  0.13D-05   878.46
    4     8     8     1.07958459    -0.65911061  -213.83022064    -0.00032715    -0.00001283  0.27D-05  0.13D-05   878.46
    4     9     9     1.07958391    -0.65911054  -213.83022057    -0.00032795    -0.00001282  0.27D-05  0.13D-05   878.46
    4    10    10     1.08078819    -0.66355364  -213.81271336    -0.00042667    -0.00002108  0.39D-05  0.34D-05   878.46
    4    11    11     1.08078752    -0.66355324  -213.81271296    -0.00042939    -0.00002131  0.39D-05  0.34D-05   878.46
    4    12    12     1.08078456    -0.66355309  -213.81271281    -0.00044705    -0.00002215  0.41D-05  0.36D-05   878.46
    4    13    13     1.08078568    -0.66355305  -213.81271277    -0.00044801    -0.00002217  0.41D-05  0.36D-05   878.46
    4    14    14     1.08078507    -0.66355299  -213.81271271    -0.00044891    -0.00002213  0.41D-05  0.36D-05   878.46
    5     1     1     1.08782432    -0.68027818  -213.98706776    -0.00003485    -0.00000139  0.10D-06  0.26D-06  1146.71
    5     2     2     1.08782287    -0.68027816  -213.98706774    -0.00003524    -0.00000141  0.10D-06  0.26D-06  1146.71
    5     3     3     1.08782169    -0.68027816  -213.98706774    -0.00003557    -0.00000142  0.11D-06  0.26D-06  1146.71
    5     4     4     1.08782068    -0.68027815  -213.98706772    -0.00003558    -0.00000142  0.11D-06  0.27D-06  1146.71
    5     5     5     1.08782088    -0.68027814  -213.98706772    -0.00003584    -0.00000143  0.11D-06  0.27D-06  1146.71
    5     6     6     1.08480198    -0.67266307  -213.95020751    -0.00003256    -0.00000181  0.85D-07  0.41D-06  1146.71
    5     7     7     1.07967008    -0.65912503  -213.83023506    -0.00001440    -0.00000052  0.57D-07  0.84D-07  1146.71
    5     8     8     1.07967006    -0.65912501  -213.83023504    -0.00001440    -0.00000051  0.56D-07  0.83D-07  1146.71
    5     9     9     1.07966982    -0.65912495  -213.83023498    -0.00001441    -0.00000051  0.56D-07  0.84D-07  1146.71
    5    10    10     1.08094174    -0.66357954  -213.81273926    -0.00002590    -0.00000159  0.12D-06  0.38D-06  1146.71
    5    11    11     1.08094165    -0.66357953  -213.81273925    -0.00002629    -0.00000159  0.12D-06  0.38D-06  1146.71
    5    12    12     1.08094153    -0.66357945  -213.81273917    -0.00002636    -0.00000160  0.12D-06  0.38D-06  1146.71
    5    13    13     1.08094393    -0.66357895  -213.81273867    -0.00002590    -0.00000151  0.12D-06  0.36D-06  1146.71
    5    14    14     1.08094296    -0.66357882  -213.81273854    -0.00002584    -0.00000153  0.12D-06  0.36D-06  1146.71
    6     1     1     1.08780926    -0.68027980  -213.98706938    -0.00000162    -0.00000010  0.11D-07  0.18D-07  1416.24
    6     2     2     1.08781018    -0.68027980  -213.98706938    -0.00000164    -0.00000009  0.10D-07  0.17D-07  1416.24
    6     3     3     1.08780890    -0.68027980  -213.98706937    -0.00000164    -0.00000010  0.11D-07  0.18D-07  1416.24
    6     4     4     1.08780892    -0.68027980  -213.98706937    -0.00000165    -0.00000010  0.11D-07  0.18D-07  1416.24
    6     5     5     1.08780969    -0.68027980  -213.98706937    -0.00000165    -0.00000009  0.10D-07  0.18D-07  1416.24
    6     6     6     1.08484813    -0.67266529  -213.95020973    -0.00000222    -0.00000018  0.22D-07  0.33D-07  1416.24
    6     7     7     1.07966698    -0.65912563  -213.83023566    -0.00000060    -0.00000003  0.32D-08  0.70D-08  1416.24
    6     8     8     1.07966701    -0.65912559  -213.83023562    -0.00000059    -0.00000003  0.32D-08  0.68D-08  1416.24
    6     9     9     1.07966693    -0.65912554  -213.83023557    -0.00000059    -0.00000003  0.32D-08  0.69D-08  1416.24
    6    10    10     1.08095165    -0.66358159  -213.81274132    -0.00000206    -0.00000018  0.26D-07  0.32D-07  1416.24
    6    11    11     1.08095175    -0.66358158  -213.81274131    -0.00000206    -0.00000018  0.26D-07  0.32D-07  1416.24
    6    12    12     1.08095163    -0.66358152  -213.81274124    -0.00000207    -0.00000019  0.26D-07  0.32D-07  1416.24
    6    13    13     1.08095204    -0.66358093  -213.81274065    -0.00000198    -0.00000017  0.23D-07  0.29D-07  1416.24
    6    14    14     1.08095173    -0.66358083  -213.81274055    -0.00000200    -0.00000017  0.24D-07  0.30D-07  1416.24
    7     1     1     1.08782483    -0.68027991  -213.98706949    -0.00000011    -0.00000001  0.72D-09  0.17D-08  1671.82
    7     2     2     1.08782488    -0.68027991  -213.98706949    -0.00000011    -0.00000001  0.74D-09  0.17D-08  1671.82
    7     3     3     1.08782486    -0.68027991  -213.98706948    -0.00000011    -0.00000001  0.69D-09  0.16D-08  1671.82
    7     4     4     1.08782482    -0.68027991  -213.98706948    -0.00000011    -0.00000001  0.74D-09  0.17D-08  1671.82
    7     5     5     1.08782494    -0.68027990  -213.98706948    -0.00000011    -0.00000001  0.70D-09  0.16D-08  1671.82
    7     6     6     1.08487157    -0.67266550  -213.95020994    -0.00000021    -0.00000002  0.18D-08  0.30D-08  1671.82
    7     7     7     1.07967171    -0.65912567  -213.83023570    -0.00000004    -0.00000000  0.23D-09  0.65D-09  1671.82
    7     8     8     1.07966701    -0.65912559  -213.83023562    -0.00000000    -0.00000003  0.32D-08  0.68D-08  1671.82
    7     9     9     1.07967166    -0.65912558  -213.83023561    -0.00000004    -0.00000000  0.23D-09  0.64D-09  1671.82
    7    10    10     1.08096617    -0.66358181  -213.81274153    -0.00000021    -0.00000002  0.16D-08  0.35D-08  1671.82
    7    11    11     1.08096611    -0.66358180  -213.81274152    -0.00000021    -0.00000002  0.16D-08  0.35D-08  1671.82
    7    12    12     1.08096834    -0.66358174  -213.81274147    -0.00000022    -0.00000001  0.16D-08  0.24D-08  1671.82
    7    13    13     1.08096567    -0.66358113  -213.81274085    -0.00000020    -0.00000002  0.15D-08  0.31D-08  1671.82
    7    14    14     1.08096556    -0.66358103  -213.81274075    -0.00000020    -0.00000002  0.15D-08  0.32D-08  1671.82


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.9%
 S   1.0%  12.6%
 P   0.5%  40.6%  31.7%

 Initialization:   3.4%
 Other:            8.3%

 Total CPU:     1671.8 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\000           0.9430646   0.0000016  -0.0006599  -0.0000086   0.0013984  -0.0000000  -0.0000001  -0.0000000
                            0.0000000   0.0000003  -0.0000205  -0.1303734   0.0000028   0.0000018
 22222222220/\000          -0.0000002   0.9430581   0.0000438  -0.0037042  -0.0009598   0.0000000  -0.0000000   0.0000003
                           -0.0000000   0.0000699  -0.1303727   0.0000205  -0.0000011  -0.0000008
 2222222222/\0000          -0.0000058   0.0037056  -0.0180572   0.9428850   0.0011777  -0.0000000   0.0000000  -0.0000000
                           -0.0000003  -0.1303726  -0.0000699  -0.0000003   0.0000001   0.0000005
 2222222222002000           0.0007960  -0.0001648   0.7475664   0.0145471  -0.1839777   0.5251587  -0.0000000   0.0000000
                            0.0000000  -0.0000004   0.0000004  -0.0000008   0.0284900  -0.1025660
 22222222220/0\00          -0.0001730   0.0001031  -0.0297549  -0.0006984   0.1026004   0.1373952  -0.0000000   0.0000000
                            0.0000000  -0.0000002  -0.0000048   0.0000135   0.7451727  -0.1923845
 222222222200/00\           0.0001104  -0.0000229   0.1037167   0.0020183  -0.0255249   0.1373952   0.0000000   0.0000000
                           -0.0000000   0.0000028  -0.0000030   0.0000060  -0.2059776   0.7415349
 2222222222020000          -0.0012467   0.0007428  -0.2144665  -0.0050339   0.7395215   0.5251589   0.0000000  -0.0000000
                           -0.0000000   0.0000000   0.0000007  -0.0000019  -0.1030686   0.0266095
 222222222200/\00          -0.0000000   0.0925173   0.0000043  -0.0003634  -0.0000942  -0.0000000   0.0000646  -0.6734250
                            0.0000000  -0.0003576   0.6664987  -0.0001050   0.0000054   0.0000042
 2222222222/00\00          -0.0000006   0.0003635  -0.0017715   0.0925002   0.0001155   0.0000000  -0.0000308   0.0000000
                            0.6734234   0.6664991   0.0003576   0.0000017  -0.0000005  -0.0000027
 222222222200/0\0           0.0925179   0.0000002  -0.0000647  -0.0000008   0.0001372  -0.0000000  -0.6734221  -0.0000646
                           -0.0000308  -0.0000018   0.0001050   0.6664997  -0.0000145  -0.0000094
 2222222222/0000\           0.0925180   0.0000002  -0.0000647  -0.0000008   0.0001372  -0.0000000   0.6734221   0.0000646
                            0.0000308  -0.0000018   0.0001050   0.6664996  -0.0000145  -0.0000094
 22222222220/000\          -0.0000000   0.0925173   0.0000043  -0.0003634  -0.0000942  -0.0000000  -0.0000646   0.6734217
                           -0.0000000  -0.0003576   0.6665021  -0.0001050   0.0000054   0.0000042
 22222222220/00\0          -0.0000006   0.0003635  -0.0017715   0.0925002   0.0001155   0.0000000   0.0000308   0.0000000
                           -0.6734208   0.6665018   0.0003576   0.0000017  -0.0000005  -0.0000027
 2222222222200000           0.0004507  -0.0005780  -0.5330997  -0.0095132  -0.5555440   0.5251589   0.0000000   0.0000000
                           -0.0000000   0.0000004  -0.0000011   0.0000027   0.0745798   0.0759550
 2222222222/000\0           0.0000625  -0.0000802  -0.0739618  -0.0013199  -0.0770755   0.1373951  -0.0000000  -0.0000000
                            0.0000000  -0.0000026   0.0000079  -0.0000195  -0.5392003  -0.5491451
 2222220222220000           0.0000866  -0.0000179   0.0812984   0.0015820  -0.0200077  -0.1102021   0.0000000  -0.0000000
                            0.0000000  -0.0000001   0.0000001  -0.0000001   0.0039645  -0.0142733
 2222220222022000           0.0000490  -0.0000629  -0.0579751  -0.0010346  -0.0604157  -0.1102020  -0.0000000   0.0000000
                           -0.0000000   0.0000001  -0.0000002   0.0000004   0.0103786   0.0105704
 2222220222202000          -0.0001356   0.0000808  -0.0233235  -0.0005474   0.0804235  -0.1102020   0.0000000  -0.0000000
                            0.0000000   0.0000000   0.0000001  -0.0000003  -0.0143436   0.0037032
 2222220222/2\000          -0.1025590  -0.0000002   0.0000718   0.0000009  -0.0001521   0.0000000   0.0000001  -0.0000000
                            0.0000000  -0.0000000   0.0000029   0.0181435  -0.0000004  -0.0000003
 22222202222/\000           0.0000000  -0.1025583  -0.0000048   0.0004028   0.0001044  -0.0000000   0.0000000  -0.0000001
                           -0.0000000  -0.0000097   0.0181431  -0.0000029   0.0000001   0.0000001
 2222220222/\2000           0.0000006  -0.0004030   0.0019637  -0.1025393  -0.0001281   0.0000000   0.0000000   0.0000000
                            0.0000000   0.0181433   0.0000097   0.0000000  -0.0000000  -0.0000001
 22222202220/2\00           0.0000300  -0.0000121   0.0165153   0.0003319  -0.0124587  -0.0035919   0.0000000   0.0000000
                           -0.0000000   0.0000000   0.0000005  -0.0000014  -0.0741061   0.0167701
 222222022202/00\          -0.0000329   0.0000158  -0.0131237  -0.0002714   0.0159933  -0.0035917   0.0000000   0.0000000
                            0.0000000  -0.0000003   0.0000003  -0.0000006   0.0181226  -0.0737877
 22222202222/0\00           0.0000236  -0.0000198  -0.0072864  -0.0001153  -0.0193644  -0.0035919  -0.0000000   0.0000000
                            0.0000000   0.0000000   0.0000005  -0.0000013  -0.0729626   0.0211989
 222222022220/00\          -0.0000014  -0.0000087  -0.0190456  -0.0003546  -0.0080762  -0.0035919  -0.0000000  -0.0000000
                            0.0000000  -0.0000003   0.0000003  -0.0000005   0.0225296  -0.0725637
 222222022220/\00           0.0000000  -0.0081511  -0.0000004   0.0000320   0.0000083   0.0000000  -0.0000065   0.0674835
                           -0.0000000   0.0000359  -0.0669149   0.0000105  -0.0000005  -0.0000004
 22222202222/000\           0.0000000  -0.0081512  -0.0000004   0.0000320   0.0000083  -0.0000000   0.0000065  -0.0674834
                            0.0000000   0.0000359  -0.0669151   0.0000105  -0.0000005  -0.0000004
 2222220222/02\00           0.0000001  -0.0000320   0.0001561  -0.0081497  -0.0000102   0.0000000   0.0000031   0.0000000
                           -0.0674818  -0.0669150  -0.0000359  -0.0000002   0.0000001   0.0000003
 22222202220/20\0           0.0000001  -0.0000320   0.0001561  -0.0081496  -0.0000102   0.0000000  -0.0000031   0.0000000
                            0.0674815  -0.0669150  -0.0000359  -0.0000002   0.0000001   0.0000003
 222222022202/0\0          -0.0081512  -0.0000000   0.0000057   0.0000001  -0.0000121   0.0000000   0.0674815   0.0000065
                            0.0000031   0.0000002  -0.0000105  -0.0669154   0.0000015   0.0000009
 2222220222/2000\          -0.0081512  -0.0000000   0.0000057   0.0000001  -0.0000121  -0.0000000  -0.0674815  -0.0000065
                           -0.0000031   0.0000002  -0.0000105  -0.0669152   0.0000015   0.0000009
 222222022202/\00           0.0000000  -0.0205445  -0.0000010   0.0000807   0.0000209   0.0000000  -0.0000063   0.0652053
                           -0.0000000   0.0000347  -0.0646272   0.0000102  -0.0000005  -0.0000004
 22222202220/200\           0.0000000  -0.0205447  -0.0000010   0.0000807   0.0000209   0.0000000   0.0000063  -0.0652047
                            0.0000000   0.0000347  -0.0646276   0.0000102  -0.0000005  -0.0000004
 2222220222/20\00           0.0000001  -0.0000807   0.0003934  -0.0205408  -0.0000257  -0.0000000   0.0000030  -0.0000000
                           -0.0652045  -0.0646272  -0.0000347  -0.0000002   0.0000000   0.0000003
 22222202222/00\0           0.0000001  -0.0000807   0.0003934  -0.0205407  -0.0000257  -0.0000000  -0.0000030   0.0000000
                            0.0652043  -0.0646273  -0.0000347  -0.0000002   0.0000000   0.0000003
 222222022220/0\0          -0.0205448  -0.0000000   0.0000144   0.0000002  -0.0000305  -0.0000000   0.0652037   0.0000063
                            0.0000030   0.0000002  -0.0000102  -0.0646281   0.0000014   0.0000009
 2222220222/0200\          -0.0205447  -0.0000000   0.0000144   0.0000002  -0.0000305  -0.0000000  -0.0652037  -0.0000063
                           -0.0000030   0.0000002  -0.0000102  -0.0646281   0.0000014   0.0000009
 2222220222/200\0          -0.0000287   0.0000209   0.0025303   0.0000227   0.0205349  -0.0035918  -0.0000000   0.0000000
                           -0.0000000   0.0000003  -0.0000008   0.0000019   0.0515767   0.0557923
 2222220222/020\0           0.0000093   0.0000040   0.0204101   0.0003866   0.0033713  -0.0035918   0.0000000  -0.0000000
                            0.0000000   0.0000003  -0.0000008   0.0000019   0.0548407   0.0525881

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000369    0.956378   -0.000000   -0.000006   -0.001524    0.000000    0.000000   -0.000000   -0.000000    0.000099
             0.000000    0.000000   -0.060548    0.000000
 2           0.000223    0.000002    0.956371    0.003758    0.000943   -0.000000    0.000000   -0.000000    0.000000   -0.000055
            -0.060548   -0.000238   -0.000000    0.000028
 3           0.936498   -0.000669    0.000044   -0.018312   -0.193121    0.000000   -0.000000   -0.000000   -0.000000    0.025737
            -0.000003    0.001159    0.000042    0.054794
 4           0.017693   -0.000009   -0.003757    0.956195   -0.004872    0.000000   -0.000000    0.000000    0.000000    0.000562
             0.000238   -0.060537    0.000001    0.001017
 5           0.193179    0.001418   -0.000973    0.001194    0.936663   -0.000000    0.000000   -0.000000    0.000000   -0.054803
             0.000062   -0.000076   -0.000090    0.025743
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.959413   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.961760   -0.000044   -0.000092   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000092    0.000000    0.961762    0.000000
            -0.000002    0.000000    0.000000   -0.000000
 9           0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000044    0.961760   -0.000000    0.000000
             0.000000    0.000002   -0.000000    0.000000
 10          0.000000   -0.000000   -0.000034    0.063408    0.000000   -0.000000    0.000000   -0.000002   -0.000000   -0.000001
            -0.000515    0.959086   -0.000003   -0.000004
 11         -0.000000    0.000010    0.063408    0.000034   -0.000000    0.000000   -0.000000   -0.000000    0.000002   -0.000005
             0.959087    0.000515    0.000151    0.000009
 12          0.000001    0.063407   -0.000010    0.000000    0.000001    0.000000   -0.000000    0.000000   -0.000000    0.000014
            -0.000151    0.000002    0.959086   -0.000021
 13          0.010960   -0.000001    0.000001   -0.000000    0.062454   -0.000000    0.000000   -0.000000   -0.000000    0.879800
             0.000008   -0.000001   -0.000021   -0.381836
 14          0.062454   -0.000001    0.000000   -0.000000   -0.010960    0.000000   -0.000000    0.000000   -0.000000   -0.381836
             0.000006   -0.000004   -0.000014   -0.879800

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958293    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.001339   -0.000002    0.000001
 2           0.000000    0.958293   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000005
             0.001340   -0.000000    0.000001    0.000000
 3          -0.000000   -0.000000    0.958293   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000026
             0.000000   -0.000001   -0.000040    0.001339
 4           0.000000    0.000000   -0.000000    0.958293    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.001339
            -0.000005   -0.000000   -0.000002    0.000026
 5          -0.000000   -0.000000    0.000000    0.000000    0.958293   -0.000000   -0.000000   -0.000000    0.000000    0.000002
            -0.000001    0.000002    0.001339    0.000040
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.959413    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000
 7          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.961760    0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000
 8          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.961762    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.961760   -0.000000
            -0.000000    0.000000   -0.000000    0.000000
 10         -0.000000    0.000005   -0.000026    0.001339    0.000002   -0.000000    0.000000   -0.000000   -0.000000    0.961179
            -0.000000   -0.000000    0.000000   -0.000000
 11          0.000000    0.001340    0.000000   -0.000005   -0.000001    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.961180   -0.000000   -0.000000   -0.000000
 12          0.001339   -0.000000   -0.000001   -0.000000    0.000002    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.961179   -0.000000    0.000000
 13         -0.000002    0.000001   -0.000040   -0.000002    0.001339   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.961180   -0.000000
 14          0.000001    0.000000    0.001339    0.000026    0.000040    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.961180


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95637759 (fixed)   0.95838497 (relaxed)   0.95829268 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102447   -0.00188595   -0.56901659
 Singles      0.02070526   -0.06135219   -0.06927167
 Pairs        0.06720954   -0.00000014   -0.04199166
 Total        1.08893927   -0.06323829   -0.68027991
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30613221
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02918314
 One electron energy                 -375.82918152
 Two electron energy                  161.84211203
 Virial quotient                       -2.57725129
 Correlation energy                    -0.68093728
 !MRCI STATE 1.1 Energy              -213.987069488162

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04763155 (Davidson, fixed reference)
 Cluster corrected energies          -214.04748874 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04763155 (Davidson, rotated reference)

 Cluster corrected energies          -214.04640162 (Pople, fixed reference)
 Cluster corrected energies          -214.04625099 (Pople, relaxed reference)
 Cluster corrected energies          -214.04640162 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95637097 (fixed)   0.95838495 (relaxed)   0.95829265 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102447   -0.00188596   -0.56899622
 Singles      0.02070535   -0.06135225   -0.06927170
 Pairs        0.06720950   -0.00002223   -0.04201199
 Total        1.08893933   -0.06326043   -0.68027991
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30613220
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02918370
 One electron energy                 -375.82918337
 Two electron energy                  161.84211389
 Virial quotient                       -2.57725127
 Correlation energy                    -0.68093729
 !MRCI STATE 2.1 Energy              -213.987069486314

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04763159 (Davidson, fixed reference)
 Cluster corrected energies          -214.04748878 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04763159 (Davidson, rotated reference)

 Cluster corrected energies          -214.04640166 (Pople, fixed reference)
 Cluster corrected energies          -214.04625103 (Pople, relaxed reference)
 Cluster corrected energies          -214.04640166 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.93649832 (fixed)   0.95838496 (relaxed)   0.95829266 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102447   -0.00188596   -0.52856563
 Singles      0.02070519   -0.06135206   -0.06927164
 Pairs        0.06720965   -0.04404888   -0.08244264
 Total        1.08893930   -0.10728690   -0.68027991
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30613219
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02918887
 One electron energy                 -375.82918941
 Two electron energy                  161.84211992
 Virial quotient                       -2.57725111
 Correlation energy                    -0.68093729
 !MRCI STATE 3.1 Energy              -213.987069483908

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04763157 (Davidson, fixed reference)
 Cluster corrected energies          -214.04748876 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04763157 (Davidson, rotated reference)

 Cluster corrected energies          -214.04640164 (Pople, fixed reference)
 Cluster corrected energies          -214.04625101 (Pople, relaxed reference)
 Cluster corrected energies          -214.04640164 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95619541 (fixed)   0.95838498 (relaxed)   0.95829268 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102447   -0.00188596   -0.56826586
 Singles      0.02070526   -0.06135219   -0.06927165
 Pairs        0.06720953   -0.00081765   -0.04274240
 Total        1.08893927   -0.06405579   -0.68027991
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30613220
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02918518
 One electron energy                 -375.82918472
 Two electron energy                  161.84211524
 Virial quotient                       -2.57725123
 Correlation energy                    -0.68093729
 !MRCI STATE 4.1 Energy              -213.987069483779

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04763155 (Davidson, fixed reference)
 Cluster corrected energies          -214.04748874 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04763155 (Davidson, rotated reference)

 Cluster corrected energies          -214.04640162 (Pople, fixed reference)
 Cluster corrected energies          -214.04625098 (Pople, relaxed reference)
 Cluster corrected energies          -214.04640162 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.93666314 (fixed)   0.95838492 (relaxed)   0.95829263 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00102447   -0.00188596   -0.55001185
 Singles      0.02070527   -0.06135216   -0.06927167
 Pairs        0.06720965   -0.02069511   -0.06099638
 Total        1.08893939   -0.08393322   -0.68027990
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30613219
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02919044
 One electron energy                 -375.82919203
 Two electron energy                  161.84212255
 Virial quotient                       -2.57725107
 Correlation energy                    -0.68093729
 !MRCI STATE 5.1 Energy              -213.987069479385

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04763162 (Davidson, fixed reference)
 Cluster corrected energies          -214.04748881 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04763162 (Davidson, rotated reference)

 Cluster corrected energies          -214.04640170 (Pople, fixed reference)
 Cluster corrected energies          -214.04625106 (Pople, relaxed reference)
 Cluster corrected energies          -214.04640170 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95941331 (fixed)   0.95972907 (relaxed)   0.95941331 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140601   -0.00170568   -0.57901802
 Singles      0.01168920   -0.04456786   -0.04825798
 Pairs        0.07330169   -0.00000003   -0.04538951
 Total        1.08639690   -0.04627357   -0.67266550
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.27754444
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98973089
 One electron energy                 -375.34693165
 Two electron energy                  161.39672171
 Virial quotient                       -2.57803234
 Correlation energy                    -0.67266550
 !MRCI STATE 6.1 Energy              -213.950209939573

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00832615 (Davidson, fixed reference)
 Cluster corrected energies          -214.00784538 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00832615 (Davidson, rotated reference)

 Cluster corrected energies          -214.00702106 (Pople, fixed reference)
 Cluster corrected energies          -214.00651636 (Pople, relaxed reference)
 Cluster corrected energies          -214.00702106 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96175955 (fixed)   0.96191353 (relaxed)   0.96175956 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132545   -0.00228920   -0.55701376
 Singles      0.01784085   -0.05781019   -0.06434786
 Pairs        0.06193647    0.00000000   -0.03776405
 Total        1.08110277   -0.06009938   -0.65912567
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17111003
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81247879
 One electron energy                 -371.87365775
 Two electron energy                  158.04342205
 Virial quotient                       -2.58210162
 Correlation energy                    -0.65912567
 !MRCI STATE 7.1 Energy              -213.830235697688

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88369261 (Davidson, fixed reference)
 Cluster corrected energies          -213.88346451 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88369261 (Davidson, rotated reference)

 Cluster corrected energies          -213.88225442 (Pople, fixed reference)
 Cluster corrected energies          -213.88201704 (Pople, relaxed reference)
 Cluster corrected energies          -213.88225442 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96176171 (fixed)   0.96191564 (relaxed)   0.96176171 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132532   -0.00228917   -0.55702647
 Singles      0.01783513   -0.05779899   -0.06434355
 Pairs        0.06193747    0.00000000   -0.03775557
 Total        1.08109792   -0.06008816   -0.65912559
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17111003
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81256582
 One electron energy                 -371.87377492
 Two electron energy                  158.04353929
 Virial quotient                       -2.58209891
 Correlation energy                    -0.65912560
 !MRCI STATE 8.1 Energy              -213.830235624255

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88368934 (Davidson, fixed reference)
 Cluster corrected energies          -213.88346131 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88368934 (Davidson, rotated reference)

 Cluster corrected energies          -213.88225101 (Pople, fixed reference)
 Cluster corrected energies          -213.88201372 (Pople, relaxed reference)
 Cluster corrected energies          -213.88225101 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96175959 (fixed)   0.96191356 (relaxed)   0.96175960 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132543   -0.00228919   -0.55701382
 Singles      0.01784077   -0.05781007   -0.06434776
 Pairs        0.06193648   -0.00000000   -0.03776400
 Total        1.08110268   -0.06009926   -0.65912558
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17111003
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81247987
 One electron energy                 -371.87365659
 Two electron energy                  158.04342098
 Virial quotient                       -2.58210159
 Correlation energy                    -0.65912558
 !MRCI STATE 9.1 Energy              -213.830235610605

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88369246 (Davidson, fixed reference)
 Cluster corrected energies          -213.88346437 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88369246 (Davidson, rotated reference)

 Cluster corrected energies          -213.88225427 (Pople, fixed reference)
 Cluster corrected energies          -213.88201690 (Pople, relaxed reference)
 Cluster corrected energies          -213.88225427 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95908649 (fixed)   0.96133862 (relaxed)   0.96117948 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00133389   -0.00229090   -0.56014985
 Singles      0.01785272   -0.05815867   -0.06466987
 Pairs        0.06322145    0.00000242   -0.03876209
 Total        1.08240806   -0.06044715   -0.66358181
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.14981710
 Nuclear energy                         0.00000000
 Kinetic energy                        82.86358707
 One electron energy                 -372.21697533
 Two electron energy                  158.40423380
 Virial quotient                       -2.58029792
 Correlation energy                    -0.66292443
 !MRCI STATE 10.1 Energy             -213.812741529142

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.86737185 (Davidson, fixed reference)
 Cluster corrected energies          -213.86713430 (Davidson, relaxed reference)
 Cluster corrected energies          -213.86737185 (Davidson, rotated reference)

 Cluster corrected energies          -213.86596181 (Pople, fixed reference)
 Cluster corrected energies          -213.86571406 (Pople, relaxed reference)
 Cluster corrected energies          -213.86596181 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.95908651 (fixed)   0.96133865 (relaxed)   0.96117951 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00133389   -0.00229090   -0.56014265
 Singles      0.01785264   -0.05815861   -0.06466983
 Pairs        0.06322146   -0.00000545   -0.03876932
 Total        1.08240799   -0.06045496   -0.66358180
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.14981710
 Nuclear energy                         0.00000000
 Kinetic energy                        82.86358613
 One electron energy                 -372.21697420
 Two electron energy                  158.40423269
 Virial quotient                       -2.58029795
 Correlation energy                    -0.66292442
 !MRCI STATE 11.1 Energy             -213.812741518337

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.86737179 (Davidson, fixed reference)
 Cluster corrected energies          -213.86713425 (Davidson, relaxed reference)
 Cluster corrected energies          -213.86737179 (Davidson, rotated reference)

 Cluster corrected energies          -213.86596175 (Pople, fixed reference)
 Cluster corrected energies          -213.86571400 (Pople, relaxed reference)
 Cluster corrected energies          -213.86596175 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95908575 (fixed)   0.96133765 (relaxed)   0.96117855 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00133383   -0.00229091   -0.56016101
 Singles      0.01785106   -0.05815590   -0.06466772
 Pairs        0.06322528    0.00001302   -0.03875302
 Total        1.08241017   -0.06043379   -0.66358174
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.14981709
 Nuclear energy                         0.00000000
 Kinetic energy                        82.86347027
 One electron energy                 -372.21700130
 Two electron energy                  158.40425983
 Virial quotient                       -2.58030156
 Correlation energy                    -0.66292438
 !MRCI STATE 12.1 Energy             -213.812741465188

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.86737317 (Davidson, fixed reference)
 Cluster corrected energies          -213.86713567 (Davidson, relaxed reference)
 Cluster corrected energies          -213.86737317 (Davidson, rotated reference)

 Cluster corrected energies          -213.86596320 (Pople, fixed reference)
 Cluster corrected energies          -213.86571549 (Pople, relaxed reference)
 Cluster corrected energies          -213.86596320 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.87980028 (fixed)   0.96133884 (relaxed)   0.96117967 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00133396   -0.00229090   -0.78150371
 Singles      0.01785215   -0.05815809   -0.06466886
 Pairs        0.06322153    0.23959737    0.18259145
 Total        1.08240764    0.17914838   -0.66358113
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.14981711
 Nuclear energy                         0.00000000
 Kinetic energy                        82.86354426
 One electron energy                 -372.21696387
 Two electron energy                  158.40422303
 Virial quotient                       -2.58029925
 Correlation energy                    -0.66292374
 !MRCI STATE 13.1 Energy             -213.812740845673

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.86737083 (Davidson, fixed reference)
 Cluster corrected energies          -213.86713323 (Davidson, relaxed reference)
 Cluster corrected energies          -213.86737083 (Davidson, rotated reference)

 Cluster corrected energies          -213.86596078 (Pople, fixed reference)
 Cluster corrected energies          -213.86571297 (Pople, relaxed reference)
 Cluster corrected energies          -213.86596078 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.87980034 (fixed)   0.96133889 (relaxed)   0.96117973 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00133394   -0.00229090   -1.07018065
 Singles      0.01785208   -0.05815806   -0.06466875
 Pairs        0.06322149    0.55206343    0.47126838
 Total        1.08240751    0.49161447   -0.66358103
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.14981710
 Nuclear energy                         0.00000000
 Kinetic energy                        82.86354553
 One electron energy                 -372.21696499
 Two electron energy                  158.40422424
 Virial quotient                       -2.58029921
 Correlation energy                    -0.66292364
 !MRCI STATE 14.1 Energy             -213.812740745199

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.86737063 (Davidson, fixed reference)
 Cluster corrected energies          -213.86713304 (Davidson, relaxed reference)
 Cluster corrected energies          -213.86737063 (Davidson, rotated reference)

 Cluster corrected energies          -213.86596058 (Pople, fixed reference)
 Cluster corrected energies          -213.86571278 (Pople, relaxed reference)
 Cluster corrected energies          -213.86596058 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1385.51       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6410.20   2626.15   3781.25      1.88      0.05      0.60
 REAL TIME  *      6594.64 SEC
 DISK USED  *         1.39 GB (local),       16.72 GB (total)
 SF USED    *         7.50 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -214.04763155  AU                              
 SETTING HLSDIAG(14)    =      -214.04763159  AU                              
 SETTING HLSDIAG(15)    =      -214.04763157  AU                              
 SETTING HLSDIAG(16)    =      -214.04763155  AU                              
 SETTING HLSDIAG(17)    =      -214.04763162  AU                              
 SETTING HLSDIAG(18)    =      -214.00832615  AU                              
 SETTING HLSDIAG(19)    =      -213.88369261  AU                              
 SETTING HLSDIAG(20)    =      -213.88368934  AU                              
 SETTING HLSDIAG(21)    =      -213.88369246  AU                              
 SETTING HLSDIAG(22)    =      -213.86737185  AU                              
 SETTING HLSDIAG(23)    =      -213.86737179  AU                              
 SETTING HLSDIAG(24)    =      -213.86737317  AU                              
 SETTING HLSDIAG(25)    =      -213.86737083  AU                              
 SETTING HLSDIAG(26)    =      -213.86737063  AU                              


         HLSDIAG
    -214.0737766
    -214.0737765
    -214.0737766
    -213.8790274
    -213.8790274
    -213.8790272
    -213.8790272
    -213.8790272
    -213.8748777
    -213.8748777
    -213.8748777
    -213.8722963
    -214.0476316
    -214.0476316
    -214.0476316
    -214.0476315
    -214.0476316
    -214.0083262
    -213.8836926
    -213.8836893
    -213.8836925
    -213.8673718
    -213.8673718
    -213.8673732
    -213.8673708
    -213.8673706
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -214.016663   -214.016663   -214.016663   -213.825553   -213.825553   -213.825553   -213.825553   -213.825553
                      -213.821271   -213.821271   -213.821271   -213.818658
 Replaced energies:   -214.073777   -214.073777   -214.073777   -213.879027   -213.879027   -213.879027   -213.879027   -213.879027
                      -213.874878   -213.874878   -213.874878   -213.872296

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  14

 Original energies:   -213.987069   -213.987069   -213.987069   -213.987069   -213.987069   -213.950210   -213.830236   -213.830236
                      -213.830236   -213.812742   -213.812742   -213.812741   -213.812741   -213.812741
 Replaced energies:   -214.047632   -214.047632   -214.047632   -214.047632   -214.047632   -214.008326   -213.883693   -213.883689
                      -213.883692   -213.867372   -213.867372   -213.867373   -213.867371   -213.867371



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.07377661

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -332.77     154.92      66.14    -335.75      15.52     102.45      29.67     -29.53      76.95

    2   2.1  1.0  1.0       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          332.77      -0.00    1060.61       2.10      52.96     202.88      31.54     234.22    -192.47     -29.77

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -154.92   -1060.61      -0.00     -28.25     108.24     -57.92     293.55      -7.81      -4.51     259.12

    4   4.1  1.0  1.0       0.00       0.00       0.00   42742.51       0.00       0.00       0.00       0.00       0.00       0.00
                          -66.14      -2.10      28.25       0.00      18.72    1009.67     194.96    -884.12     -77.08     -14.06

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42742.51       0.00       0.00       0.00       0.00       0.00
                          335.75     -52.96    -108.24     -18.72       0.00     193.98      40.37    -181.37     437.08     -35.01

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42742.55       0.00       0.00       0.00       0.00
                          -15.52    -202.88      57.92   -1009.67    -193.98       0.00     435.03     142.38      76.62    -350.10

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42742.55       0.00       0.00       0.00
                         -102.45     -31.54    -293.55    -194.96     -40.37    -435.03       0.00    -521.40    -395.87    -117.40

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42742.55       0.00       0.00
                          -29.67    -234.22       7.81     884.12     181.37    -142.38     521.40       0.00      20.78    -414.80

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43653.26       0.00
                           29.53     192.47       4.51      77.08    -437.08     -76.62     395.87     -20.78      -0.00    -520.62

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43653.26
                          -76.95      29.77    -259.12      14.06      35.01     350.10     117.40     414.80     520.62       0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -33.65    -186.43     -20.46     100.10    -452.70     106.12    -366.54      41.13      32.25     509.28

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -482.74      70.51     151.46       0.00       0.00      -0.00       0.00      -0.00    -638.95      40.46

   13   1.1  1.0  0.0      -0.00     -15.18    -785.80     -24.14      13.48      87.72      17.64     202.84      90.19      18.40
                            0.00    -757.77     -18.27     -53.06     -51.70      61.05    -203.98     -14.89     -24.40     182.20

   14   2.1  1.0  0.0      15.18       0.00     110.01    -242.02      81.69     -14.88      -9.37     -15.80     -15.90      -2.52
                          757.77       0.00    -235.08      -1.91       6.02     157.85      57.43    -146.12    -132.30     -18.01

   15   3.1  1.0  0.0     785.80    -110.01       0.00       7.62      -4.18    -200.34     -34.39      90.60    -169.19       3.15
                           18.27     235.08       0.00    -185.94    -161.20     -10.97      62.22      10.88       4.38     -56.96

   16   4.1  1.0  0.0      24.14     242.02      -7.62       0.00      24.83     -34.02     313.49      -7.17     -31.08     427.26
                           53.06       1.91     185.94      -0.00     -35.35    -427.85     -69.67    -476.24     237.21      40.23

   17   5.1  1.0  0.0     -13.48     -81.69       4.18     -24.83      -0.00    -160.97     911.49     -18.81       3.67    -145.16
                           51.70      -6.02     161.20      35.35      -0.00     480.88      89.77     548.89     216.35      22.68

   18   6.1  1.0  0.0     -87.72      14.88     200.34      34.02     160.97      -0.00     -21.83    -483.84      30.25      34.51
                          -61.05    -157.85      10.97     427.85    -480.88      -0.00    -353.29      41.75     -44.12    -287.61

   19   7.1  1.0  0.0     -17.64       9.37      34.39    -313.49    -911.49      21.83       0.00     -68.72      -0.50      17.29
                          203.98     -57.43     -62.22      69.67     -89.77     353.29      -0.00    -336.73     274.96     -64.94

   20   8.1  1.0  0.0    -202.84      15.80     -90.60       7.17      18.81     483.84      68.72      -0.00    -391.12     -28.51
                           14.89     146.12     -10.88     476.24    -548.89     -41.75     336.73       0.00     -23.57     257.17

   21   9.1  1.0  0.0     -90.19      15.90     169.19      31.08      -3.67     -30.25       0.50     391.12      -0.00     -47.74
                           24.40     132.30      -4.38    -237.21    -216.35      44.12    -274.96      23.57       0.00    -357.66

   22  10.1  1.0  0.0     -18.40       2.52      -3.15    -427.26     145.16     -34.51     -17.29      28.51      47.74       0.00
                         -182.20      18.01      56.96     -40.23     -22.68     287.61      64.94    -257.17     357.66      -0.00

   23  11.1  1.0  0.0     166.93     -21.60      91.66     -36.25      19.27     384.56      68.10      32.33    -513.01     -16.32
                            2.21     138.57       2.66     242.55     205.55      71.53    -269.15     -31.88      45.01    -368.48

   24  12.1  1.0  0.0     -50.07    -357.66       6.91       0.00      -0.00      -0.00       0.00      -0.00      20.47    -643.63
                          107.00      -8.32     344.90       0.00       0.00       0.00      -0.00       0.00     462.30      56.46

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0    -231.77      17.49    -746.84       9.03       2.94     156.62      31.31     181.34     118.83      14.63
                          108.71     774.45     -14.07      -5.68       2.06     -42.12     238.05      -2.66       5.12    -165.46

   38   2.1  0.0  0.0       3.00       0.25      -0.93     155.64     457.80      -7.90      -2.07      -8.00      -0.45      -0.11
                         -739.20     107.97     231.72       4.92      -0.62    -179.46     -29.85     159.27     116.17      -7.35

   39   3.1  0.0  0.0      72.69     621.21      -7.00      -8.35       3.02     -58.02     343.86      -7.68       6.35    -132.41
                          259.63     -20.73     837.29       1.77      -8.37     -74.85     -14.57     -86.90    -133.22     -16.16

   40   4.1  0.0  0.0     740.56     -96.89    -232.07       5.40      -3.78    -180.33     -22.75     159.49    -116.04       4.99
                            7.96      -0.82      15.38    -318.24     363.76      -1.92     -10.97      11.34      -3.05      -0.29

   41   5.1  0.0  0.0      90.91     645.11     -13.86       7.76      -3.31      58.90    -329.55       4.80       4.42    -137.80
                          -63.01       6.01    -206.31     -17.99      -5.24    -304.30     -59.01    -352.35      32.67       3.77

   42   6.1  0.0  0.0     174.22    1244.37     -24.04       0.00      -0.00      -0.00       0.00      -0.00       5.72    -179.80
                         -372.27      28.94   -1199.98       0.00       0.00       0.00       0.00       0.00     129.15      15.77

   43   7.1  0.0  0.0      66.46      -5.17     214.20     -18.32      -5.91    -316.47     -61.73    -366.10     279.92      34.19
                           31.12     222.12      -4.30     -11.54       4.13     -85.81     480.43      -6.33     -12.37     389.70

   44   8.1  0.0  0.0       0.01      -0.00       0.02     533.02    -181.62      -2.79      13.54     -23.59       0.03       0.00
                         -211.99      30.99      66.51      12.48      -4.12    -361.67     -60.02     322.18    -273.57      17.36

   45   9.1  0.0  0.0    -211.99      30.96      66.52     -12.48       4.12     361.64      60.06    -322.18    -273.54      17.32
                            0.00       0.01      -0.00     423.58     371.32      -8.71       5.15     -20.49      -0.00       0.02

   46  10.1  0.0  0.0    -209.86      30.65      65.84       9.73      -3.64    -285.79     -47.46     254.59     365.59     -23.15
                           -0.11       0.02       0.03    -507.68     580.46      -2.36     -17.33      20.90       0.20      -0.01

   47  11.1  0.0  0.0      -0.10       0.02       0.07     248.27     730.37     -11.69      -2.62     -13.59       0.14      -0.03
                          209.85     -30.69     -65.84       9.59      -2.94    -285.80     -47.41     254.60    -365.59      23.23

   48  12.1  0.0  0.0      65.79      -5.12     212.06      14.40       4.57     250.07      48.78     289.32    -374.08     -45.67
                          -30.82    -219.90       4.26      -9.11       3.28     -67.80     379.65      -5.03     -16.51     520.81

   49  13.1  0.0  0.0     -24.91    -177.89       3.43      12.99      -4.67      96.80    -541.79       7.10     -13.39     421.33
                           20.33      -1.58      65.53     -27.82      -9.03    -481.90     -94.01    -557.53    -115.61     -14.13

   50  14.1  0.0  0.0     -25.36    -181.17       3.50     -12.75       4.60     -95.06     531.97      -6.98     -13.65     429.11
                          -73.18       5.69    -235.91      -7.73      -2.51    -133.86     -26.12    -154.86     416.19      50.83


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00      -0.00      15.18     785.80      24.14     -13.48     -87.72     -17.64    -202.84
                           33.65     482.74      -0.00    -757.77     -18.27     -53.06     -51.70      61.05    -203.98     -14.89

    2   2.1  1.0  1.0       0.00       0.00     -15.18       0.00    -110.01     242.02     -81.69      14.88       9.37      15.80
                          186.43     -70.51     757.77      -0.00    -235.08      -1.91       6.02     157.85      57.43    -146.12

    3   3.1  1.0  1.0       0.00       0.00    -785.80     110.01       0.00      -7.62       4.18     200.34      34.39     -90.60
                           20.46    -151.46      18.27     235.08      -0.00    -185.94    -161.20     -10.97      62.22      10.88

    4   4.1  1.0  1.0       0.00       0.00     -24.14    -242.02       7.62       0.00     -24.83      34.02    -313.49       7.17
                         -100.10      -0.00      53.06       1.91     185.94       0.00     -35.35    -427.85     -69.67    -476.24

    5   5.1  1.0  1.0       0.00       0.00      13.48      81.69      -4.18      24.83      -0.00     160.97    -911.49      18.81
                          452.70      -0.00      51.70      -6.02     161.20      35.35       0.00     480.88      89.77     548.89

    6   6.1  1.0  1.0       0.00       0.00      87.72     -14.88    -200.34     -34.02    -160.97      -0.00      21.83     483.84
                         -106.12       0.00     -61.05    -157.85      10.97     427.85    -480.88       0.00    -353.29      41.75

    7   7.1  1.0  1.0       0.00       0.00      17.64      -9.37     -34.39     313.49     911.49     -21.83       0.00      68.72
                          366.54      -0.00     203.98     -57.43     -62.22      69.67     -89.77     353.29       0.00    -336.73

    8   8.1  1.0  1.0       0.00       0.00     202.84     -15.80      90.60      -7.17     -18.81    -483.84     -68.72      -0.00
                          -41.13       0.00      14.89     146.12     -10.88     476.24    -548.89     -41.75     336.73      -0.00

    9   9.1  1.0  1.0       0.00       0.00      90.19     -15.90    -169.19     -31.08       3.67      30.25      -0.50    -391.12
                          -32.25     638.95      24.40     132.30      -4.38    -237.21    -216.35      44.12    -274.96      23.57

   10  10.1  1.0  1.0       0.00       0.00      18.40      -2.52       3.15     427.26    -145.16      34.51      17.29     -28.51
                         -509.28     -40.46    -182.20      18.01      56.96     -40.23     -22.68     287.61      64.94    -257.17

   11  11.1  1.0  1.0   43653.26       0.00    -166.93      21.60     -91.66      36.25     -19.27    -384.56     -68.10     -32.33
                            0.00     653.18       2.21     138.57       2.66     242.55     205.55      71.53    -269.15     -31.88

   12  12.1  1.0  1.0       0.00   44219.81      50.07     357.66      -6.91      -0.00       0.00       0.00      -0.00       0.00
                         -653.18       0.00     107.00      -8.32     344.90       0.00       0.00       0.00      -0.00       0.00

   13   1.1  1.0  0.0    -166.93      50.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.21    -107.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0      21.60     357.66       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                         -138.57       8.32      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0     -91.66      -6.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.66    -344.90      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0      36.25      -0.00       0.00       0.00       0.00   42742.51       0.00       0.00       0.00       0.00
                         -242.55      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0     -19.27       0.00       0.00       0.00       0.00       0.00   42742.51       0.00       0.00       0.00
                         -205.55      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0    -384.56       0.00       0.00       0.00       0.00       0.00       0.00   42742.55       0.00       0.00
                          -71.53      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0     -68.10      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   42742.55       0.00
                          269.15       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0     -32.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42742.55
                           31.88      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0     513.01     -20.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -45.01    -462.30      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0      16.32     643.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          368.48     -56.46      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0      -0.00      59.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     448.73      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0     -59.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -448.73      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00      -0.00     -15.18    -785.80     -24.14      13.48      87.72      17.64     202.84
                           -0.00      -0.00       0.00    -757.77     -18.27     -53.06     -51.70      61.05    -203.98     -14.89

   26   2.1  1.0 -1.0       0.00       0.00      15.18       0.00     110.01    -242.02      81.69     -14.88      -9.37     -15.80
                           -0.00      -0.00     757.77       0.00    -235.08      -1.91       6.02     157.85      57.43    -146.12

   27   3.1  1.0 -1.0       0.00       0.00     785.80    -110.01       0.00       7.62      -4.18    -200.34     -34.39      90.60
                           -0.00      -0.00      18.27     235.08       0.00    -185.94    -161.20     -10.97      62.22      10.88

   28   4.1  1.0 -1.0       0.00       0.00      24.14     242.02      -7.62       0.00      24.83     -34.02     313.49      -7.17
                           -0.00      -0.00      53.06       1.91     185.94      -0.00     -35.35    -427.85     -69.67    -476.24

   29   5.1  1.0 -1.0       0.00       0.00     -13.48     -81.69       4.18     -24.83      -0.00    -160.97     911.49     -18.81
                           -0.00      -0.00      51.70      -6.02     161.20      35.35      -0.00     480.88      89.77     548.89

   30   6.1  1.0 -1.0       0.00       0.00     -87.72      14.88     200.34      34.02     160.97      -0.00     -21.83    -483.84
                           -0.00      -0.00     -61.05    -157.85      10.97     427.85    -480.88      -0.00    -353.29      41.75

   31   7.1  1.0 -1.0       0.00       0.00     -17.64       9.37      34.39    -313.49    -911.49      21.83       0.00     -68.72
                           -0.00      -0.00     203.98     -57.43     -62.22      69.67     -89.77     353.29      -0.00    -336.73

   32   8.1  1.0 -1.0       0.00       0.00    -202.84      15.80     -90.60       7.17      18.81     483.84      68.72      -0.00
                           -0.00      -0.00      14.89     146.12     -10.88     476.24    -548.89     -41.75     336.73       0.00

   33   9.1  1.0 -1.0       0.00       0.00     -90.19      15.90     169.19      31.08      -3.67     -30.25       0.50     391.12
                           -0.00      -0.00      24.40     132.30      -4.38    -237.21    -216.35      44.12    -274.96      23.57

   34  10.1  1.0 -1.0       0.00       0.00     -18.40       2.52      -3.15    -427.26     145.16     -34.51     -17.29      28.51
                           -0.00      -0.00    -182.20      18.01      56.96     -40.23     -22.68     287.61      64.94    -257.17

   35  11.1  1.0 -1.0       0.00       0.00     166.93     -21.60      91.66     -36.25      19.27     384.56      68.10      32.33
                           -0.00      -0.00       2.21     138.57       2.66     242.55     205.55      71.53    -269.15     -31.88

   36  12.1  1.0 -1.0       0.00       0.00     -50.07    -357.66       6.91       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00     107.00      -8.32     344.90       0.00       0.00       0.00      -0.00       0.00

   37   1.1  0.0  0.0    -115.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.26       0.00      -1.95       0.29       0.61    -670.09    -132.90       7.90     -13.10      30.97

   38   2.1  0.0  0.0      -0.48      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          118.69      -0.00    -327.10      21.00   -1056.47     -12.83      -4.14    -222.07     -41.95    -256.35

   39   3.1  0.0  0.0      -9.95      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          129.32       0.00    -333.27      70.08     105.03      17.42      -5.50    -485.40     -87.24     433.46

   40   4.1  0.0  0.0    -118.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.05      -0.00    -159.92   -1094.00      27.78      -7.69       2.82     -68.39     335.13       4.74

   41   5.1  0.0  0.0     -13.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -31.97      -0.00    1159.41    -170.72    -362.62       3.88      -1.80    -141.00     -23.00     126.05

   42   6.1  0.0  0.0     -16.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -125.36      -0.00   -1679.55     245.32     526.96      -0.00      -0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0    -271.68       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           36.29      -0.04      -0.01       0.02      -0.03     154.75    -781.96       8.37      11.87      -4.38

   44   8.1  0.0  0.0      -0.03    -800.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -279.66       0.00      93.98      -7.31     302.93      25.85       8.31     447.55      87.30     517.79

   45   9.1  0.0  0.0    -279.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     799.99     -43.98    -314.13       6.07     -16.28       5.83    -121.40     679.42      -8.91

   46  10.1  0.0  0.0     373.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.20      -0.00      43.49     310.97      -6.17     -12.86       4.64     -95.75     536.94      -6.82

   47  11.1  0.0  0.0       0.26      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -373.72       0.00      93.06      -7.07     299.87     -20.59      -6.66    -353.70     -68.70    -409.16

   48  12.1  0.0  0.0     363.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           48.52      -0.00      -0.02       0.00      -0.05   -1069.03    -212.01      12.86     -20.85      49.30

   49  13.1  0.0  0.0      39.20      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          112.21      -0.00    -331.82      48.47     104.11       7.00      -2.30    -202.07     -33.56     180.00

   50  14.1  0.0  0.0      39.93      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -403.98      -0.00      85.67     -12.51     -26.88      27.03      -8.91    -782.68    -129.99     697.22


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0     -90.19     -18.40     166.93     -50.07       0.00       0.00       0.00       0.00       0.00       0.00
                          -24.40     182.20      -2.21    -107.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0      15.90       2.52     -21.60    -357.66       0.00       0.00       0.00       0.00       0.00       0.00
                         -132.30     -18.01    -138.57       8.32       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0     169.19      -3.15      91.66       6.91       0.00       0.00       0.00       0.00       0.00       0.00
                            4.38     -56.96      -2.66    -344.90       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0      31.08    -427.26     -36.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          237.21      40.23    -242.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0      -3.67     145.16      19.27      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          216.35      22.68    -205.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0     -30.25     -34.51     384.56      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -44.12    -287.61     -71.53      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0       0.50     -17.29      68.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          274.96     -64.94     269.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0     391.12      28.51      32.33      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -23.57     257.17      31.88      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00      47.74    -513.01      20.47       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -357.66     -45.01    -462.30       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0     -47.74       0.00     -16.32    -643.63       0.00       0.00       0.00       0.00       0.00       0.00
                          357.66       0.00     368.48     -56.46       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0     513.01      16.32      -0.00     -59.90       0.00       0.00       0.00       0.00       0.00       0.00
                           45.01    -368.48       0.00     448.73       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0     -20.47     643.63      59.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          462.30      56.46    -448.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      15.18     785.80      24.14     -13.48     -87.72
                            0.00       0.00       0.00       0.00      -0.00    -757.77     -18.27     -53.06     -51.70      61.05

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00     -15.18       0.00    -110.01     242.02     -81.69      14.88
                            0.00       0.00       0.00       0.00     757.77      -0.00    -235.08      -1.91       6.02     157.85

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00    -785.80     110.01       0.00      -7.62       4.18     200.34
                            0.00       0.00       0.00       0.00      18.27     235.08      -0.00    -185.94    -161.20     -10.97

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00     -24.14    -242.02       7.62       0.00     -24.83      34.02
                            0.00       0.00       0.00       0.00      53.06       1.91     185.94       0.00     -35.35    -427.85

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00      13.48      81.69      -4.18      24.83      -0.00     160.97
                            0.00       0.00       0.00       0.00      51.70      -6.02     161.20      35.35       0.00     480.88

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00      87.72     -14.88    -200.34     -34.02    -160.97      -0.00
                            0.00       0.00       0.00       0.00     -61.05    -157.85      10.97     427.85    -480.88       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00      17.64      -9.37     -34.39     313.49     911.49     -21.83
                            0.00       0.00       0.00       0.00     203.98     -57.43     -62.22      69.67     -89.77     353.29

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00     202.84     -15.80      90.60      -7.17     -18.81    -483.84
                            0.00       0.00       0.00       0.00      14.89     146.12     -10.88     476.24    -548.89     -41.75

   21   9.1  1.0  0.0   43653.26       0.00       0.00       0.00      90.19     -15.90    -169.19     -31.08       3.67      30.25
                            0.00       0.00       0.00       0.00      24.40     132.30      -4.38    -237.21    -216.35      44.12

   22  10.1  1.0  0.0       0.00   43653.26       0.00       0.00      18.40      -2.52       3.15     427.26    -145.16      34.51
                           -0.00       0.00       0.00       0.00    -182.20      18.01      56.96     -40.23     -22.68     287.61

   23  11.1  1.0  0.0       0.00       0.00   43653.26       0.00    -166.93      21.60     -91.66      36.25     -19.27    -384.56
                           -0.00      -0.00       0.00       0.00       2.21     138.57       2.66     242.55     205.55      71.53

   24  12.1  1.0  0.0       0.00       0.00       0.00   44219.81      50.07     357.66      -6.91      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     107.00      -8.32     344.90       0.00       0.00       0.00

   25   1.1  1.0 -1.0      90.19      18.40    -166.93      50.07       0.00       0.00       0.00       0.00       0.00       0.00
                          -24.40     182.20      -2.21    -107.00      -0.00     332.77    -154.92     -66.14     335.75     -15.52

   26   2.1  1.0 -1.0     -15.90      -2.52      21.60     357.66       0.00       0.02       0.00       0.00       0.00       0.00
                         -132.30     -18.01    -138.57       8.32    -332.77       0.00   -1060.61      -2.10     -52.96    -202.88

   27   3.1  1.0 -1.0    -169.19       3.15     -91.66      -6.91       0.00       0.00       0.00       0.00       0.00       0.00
                            4.38     -56.96      -2.66    -344.90     154.92    1060.61       0.00      28.25    -108.24      57.92

   28   4.1  1.0 -1.0     -31.08     427.26      36.25      -0.00       0.00       0.00       0.00   42742.51       0.00       0.00
                          237.21      40.23    -242.55      -0.00      66.14       2.10     -28.25      -0.00     -18.72   -1009.67

   29   5.1  1.0 -1.0       3.67    -145.16     -19.27       0.00       0.00       0.00       0.00       0.00   42742.51       0.00
                          216.35      22.68    -205.55      -0.00    -335.75      52.96     108.24      18.72      -0.00    -193.98

   30   6.1  1.0 -1.0      30.25      34.51    -384.56       0.00       0.00       0.00       0.00       0.00       0.00   42742.55
                          -44.12    -287.61     -71.53      -0.00      15.52     202.88     -57.92    1009.67     193.98      -0.00

   31   7.1  1.0 -1.0      -0.50      17.29     -68.10      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          274.96     -64.94     269.15       0.00     102.45      31.54     293.55     194.96      40.37     435.03

   32   8.1  1.0 -1.0    -391.12     -28.51     -32.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -23.57     257.17      31.88      -0.00      29.67     234.22      -7.81    -884.12    -181.37     142.38

   33   9.1  1.0 -1.0      -0.00     -47.74     513.01     -20.47       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -357.66     -45.01    -462.30     -29.53    -192.47      -4.51     -77.08     437.08      76.62

   34  10.1  1.0 -1.0      47.74       0.00      16.32     643.63       0.00       0.00       0.00       0.00       0.00       0.00
                          357.66      -0.00     368.48     -56.46      76.95     -29.77     259.12     -14.06     -35.01    -350.10

   35  11.1  1.0 -1.0    -513.01     -16.32      -0.00      59.90       0.00       0.00       0.00       0.00       0.00       0.00
                           45.01    -368.48      -0.00     448.73      33.65     186.43      20.46    -100.10     452.70    -106.12

   36  12.1  1.0 -1.0      20.47    -643.63     -59.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          462.30      56.46    -448.73      -0.00     482.74     -70.51    -151.46      -0.00      -0.00       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00    -231.77      17.49    -746.84       9.03       2.94     156.62
                            0.31      -0.02       0.31      -0.00    -108.71    -774.45      14.07       5.68      -2.06      42.12

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       3.00       0.25      -0.93     155.64     457.80      -7.90
                          167.84      21.46    -163.23      -0.00     739.20    -107.97    -231.72      -4.92       0.62     179.46

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00      72.69     621.21      -7.00      -8.35       3.02     -58.02
                           52.97      -7.82      53.57       0.00    -259.63      20.73    -837.29      -1.77       8.37      74.85

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00     740.56     -96.89    -232.07       5.40      -3.78    -180.33
                           -6.86     233.77      23.68      -0.00      -7.96       0.82     -15.38     318.24    -363.76       1.92

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00      90.91     645.11     -13.86       7.76      -3.31      58.90
                         -182.32      11.80    -186.00       0.00      63.01      -6.01     206.31      17.99       5.24     304.30

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00     174.22    1244.37     -24.04       0.00      -0.00      -0.00
                          178.50     -11.30     182.47      -0.00     372.27     -28.94    1199.98      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00      66.46      -5.17     214.20     -18.32      -5.91    -316.47
                           -0.04       0.02       0.04    1131.36     -31.12    -222.12       4.30      11.54      -4.13      85.81

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.01      -0.00       0.02     533.02    -181.62      -2.79
                          395.88      48.35    -384.26       0.11     211.99     -30.99     -66.51     -12.48       4.12     361.67

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00    -211.99      30.96      66.52     -12.48       4.12     361.64
                           17.53    -551.12     -51.29       0.05      -0.00      -0.01       0.00    -423.58    -371.32       8.71

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00    -209.86      30.65      65.84       9.73      -3.64    -285.79
                           23.71    -736.50     -68.82       0.00       0.11      -0.02      -0.03     507.68    -580.46       2.36

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.10       0.02       0.07     248.27     730.37     -11.69
                         -529.02     -65.01     513.46      -0.00    -209.85      30.69      65.84      -9.59       2.94     285.80

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00      65.79      -5.12     212.06      14.40       4.57     250.07
                            0.09       0.01      -0.07      -0.00      30.82     219.90      -4.26       9.11      -3.28      67.80

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00     -24.91    -177.89       3.43      12.99      -4.67      96.80
                          578.05     -36.60     590.93      -0.00     -20.33       1.58     -65.53      27.82       9.03     481.90

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00     -25.36    -181.17       3.50     -12.75       4.60     -95.06
                         -149.24       9.45    -152.56       0.00      73.18      -5.69     235.91       7.73       2.51     133.86


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -231.77       3.00      72.69     740.56
                            0.00       0.00       0.00       0.00       0.00       0.00    -108.71     739.20    -259.63      -7.96

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      17.49       0.25     621.21     -96.89
                            0.00       0.00       0.00       0.00       0.00       0.00    -774.45    -107.97      20.73       0.82

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -746.84      -0.93      -7.00    -232.07
                            0.00       0.00       0.00       0.00       0.00       0.00      14.07    -231.72    -837.29     -15.38

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       9.03     155.64      -8.35       5.40
                            0.00       0.00       0.00       0.00       0.00       0.00       5.68      -4.92      -1.77     318.24

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.94     457.80       3.02      -3.78
                            0.00       0.00       0.00       0.00       0.00       0.00      -2.06       0.62       8.37    -363.76

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     156.62      -7.90     -58.02    -180.33
                            0.00       0.00       0.00       0.00       0.00       0.00      42.12     179.46      74.85       1.92

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      31.31      -2.07     343.86     -22.75
                            0.00       0.00       0.00       0.00       0.00       0.00    -238.05      29.85      14.57      10.97

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     181.34      -8.00      -7.68     159.49
                            0.00       0.00       0.00       0.00       0.00       0.00       2.66    -159.27      86.90     -11.34

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     118.83      -0.45       6.35    -116.04
                            0.00       0.00       0.00       0.00       0.00       0.00      -5.12    -116.17     133.22       3.05

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      14.63      -0.11    -132.41       4.99
                            0.00       0.00       0.00       0.00       0.00       0.00     165.46       7.35      16.16       0.29

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -115.34      -0.48      -9.95    -118.92
                            0.00       0.00       0.00       0.00       0.00       0.00      15.26    -118.69    -129.32      -2.05

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   13   1.1  1.0  0.0     -17.64    -202.84     -90.19     -18.40     166.93     -50.07       0.00       0.00       0.00       0.00
                         -203.98     -14.89     -24.40     182.20      -2.21    -107.00       1.95     327.10     333.27     159.92

   14   2.1  1.0  0.0       9.37      15.80      15.90       2.52     -21.60    -357.66       0.00       0.00       0.00       0.00
                           57.43    -146.12    -132.30     -18.01    -138.57       8.32      -0.29     -21.00     -70.08    1094.00

   15   3.1  1.0  0.0      34.39     -90.60     169.19      -3.15      91.66       6.91       0.00       0.00       0.00       0.00
                           62.22      10.88       4.38     -56.96      -2.66    -344.90      -0.61    1056.47    -105.03     -27.78

   16   4.1  1.0  0.0    -313.49       7.17      31.08    -427.26     -36.25       0.00       0.00       0.00       0.00       0.00
                          -69.67    -476.24     237.21      40.23    -242.55      -0.00     670.09      12.83     -17.42       7.69

   17   5.1  1.0  0.0    -911.49      18.81      -3.67     145.16      19.27      -0.00       0.00       0.00       0.00       0.00
                           89.77     548.89     216.35      22.68    -205.55      -0.00     132.90       4.14       5.50      -2.82

   18   6.1  1.0  0.0      21.83     483.84     -30.25     -34.51     384.56      -0.00       0.00       0.00       0.00       0.00
                         -353.29      41.75     -44.12    -287.61     -71.53      -0.00      -7.90     222.07     485.40      68.39

   19   7.1  1.0  0.0       0.00      68.72       0.50     -17.29      68.10       0.00       0.00       0.00       0.00       0.00
                            0.00    -336.73     274.96     -64.94     269.15       0.00      13.10      41.95      87.24    -335.13

   20   8.1  1.0  0.0     -68.72      -0.00     391.12      28.51      32.33      -0.00       0.00       0.00       0.00       0.00
                          336.73      -0.00     -23.57     257.17      31.88      -0.00     -30.97     256.35    -433.46      -4.74

   21   9.1  1.0  0.0      -0.50    -391.12      -0.00      47.74    -513.01      20.47       0.00       0.00       0.00       0.00
                         -274.96      23.57      -0.00    -357.66     -45.01    -462.30      -0.31    -167.84     -52.97       6.86

   22  10.1  1.0  0.0      17.29     -28.51     -47.74       0.00     -16.32    -643.63       0.00       0.00       0.00       0.00
                           64.94    -257.17     357.66       0.00     368.48     -56.46       0.02     -21.46       7.82    -233.77

   23  11.1  1.0  0.0     -68.10     -32.33     513.01      16.32      -0.00     -59.90       0.00       0.00       0.00       0.00
                         -269.15     -31.88      45.01    -368.48       0.00     448.73      -0.31     163.23     -53.57     -23.68

   24  12.1  1.0  0.0      -0.00       0.00     -20.47     643.63      59.90       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     462.30      56.46    -448.73       0.00       0.00       0.00      -0.00       0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -231.77       3.00      72.69     740.56
                         -102.45     -29.67      29.53     -76.95     -33.65    -482.74     108.71    -739.20     259.63       7.96

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      17.49       0.25     621.21     -96.89
                          -31.54    -234.22     192.47      29.77    -186.43      70.51     774.45     107.97     -20.73      -0.82

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -746.84      -0.93      -7.00    -232.07
                         -293.55       7.81       4.51    -259.12     -20.46     151.46     -14.07     231.72     837.29      15.38

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       9.03     155.64      -8.35       5.40
                         -194.96     884.12      77.08      14.06     100.10       0.00      -5.68       4.92       1.77    -318.24

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.94     457.80       3.02      -3.78
                          -40.37     181.37    -437.08      35.01    -452.70       0.00       2.06      -0.62      -8.37     363.76

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     156.62      -7.90     -58.02    -180.33
                         -435.03    -142.38     -76.62     350.10     106.12      -0.00     -42.12    -179.46     -74.85      -1.92

   31   7.1  1.0 -1.0   42742.55       0.00       0.00       0.00       0.00       0.00      31.31      -2.07     343.86     -22.75
                           -0.00     521.40     395.87     117.40    -366.54       0.00     238.05     -29.85     -14.57     -10.97

   32   8.1  1.0 -1.0       0.00   42742.55       0.00       0.00       0.00       0.00     181.34      -8.00      -7.68     159.49
                         -521.40      -0.00     -20.78     414.80      41.13      -0.00      -2.66     159.27     -86.90      11.34

   33   9.1  1.0 -1.0       0.00       0.00   43653.26       0.00       0.00       0.00     118.83      -0.45       6.35    -116.04
                         -395.87      20.78       0.00     520.62      32.25    -638.95       5.12     116.17    -133.22      -3.05

   34  10.1  1.0 -1.0       0.00       0.00       0.00   43653.26       0.00       0.00      14.63      -0.11    -132.41       4.99
                         -117.40    -414.80    -520.62      -0.00     509.28      40.46    -165.46      -7.35     -16.16      -0.29

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   43653.26       0.00    -115.34      -0.48      -9.95    -118.92
                          366.54     -41.13     -32.25    -509.28      -0.00    -653.18     -15.26     118.69     129.32       2.05

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   44219.81       0.00      -0.00      -0.00       0.00
                           -0.00       0.00     638.95     -40.46     653.18      -0.00       0.00      -0.00       0.00      -0.00

   37   1.1  0.0  0.0      31.31     181.34     118.83      14.63    -115.34       0.00    5738.18       0.00       0.00       0.00
                         -238.05       2.66      -5.12     165.46      15.26      -0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0      -2.07      -8.00      -0.45      -0.11      -0.48      -0.00       0.00    5738.17       0.00       0.00
                           29.85    -159.27    -116.17       7.35    -118.69       0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0     343.86      -7.68       6.35    -132.41      -9.95      -0.00       0.00       0.00    5738.17       0.00
                           14.57      86.90     133.22      16.16    -129.32      -0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0     -22.75     159.49    -116.04       4.99    -118.92       0.00       0.00       0.00       0.00    5738.18
                           10.97     -11.34       3.05       0.29      -2.05       0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0    -329.55       4.80       4.42    -137.80     -13.15       0.00       0.00       0.00       0.00       0.00
                           59.01     352.35     -32.67      -3.77      31.97       0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0       0.00      -0.00       5.72    -179.80     -16.73       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -129.15     -15.77     125.36       0.00      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0     -61.73    -366.10     279.92      34.19    -271.68       0.08       0.00       0.00       0.00       0.00
                         -480.43       6.33      12.37    -389.70     -36.29       0.04      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0      13.54     -23.59       0.03       0.00      -0.03    -800.02       0.00       0.00       0.00       0.00
                           60.02    -322.18     273.57     -17.36     279.66      -0.00      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0      60.06    -322.18    -273.54      17.32    -279.66       0.00       0.00       0.00       0.00       0.00
                           -5.15      20.49       0.00      -0.02      -0.00    -799.99      -0.00      -0.00      -0.00      -0.00

   46  10.1  0.0  0.0     -47.46     254.59     365.59     -23.15     373.73       0.00       0.00       0.00       0.00       0.00
                           17.33     -20.90      -0.20       0.01      -0.20       0.00      -0.00      -0.00      -0.00      -0.00

   47  11.1  0.0  0.0      -2.62     -13.59       0.14      -0.03       0.26      -0.00       0.00       0.00       0.00       0.00
                           47.41    -254.60     365.59     -23.23     373.72      -0.00      -0.00      -0.00      -0.00      -0.00

   48  12.1  0.0  0.0      48.78     289.32    -374.08     -45.67     363.11       0.00       0.00       0.00       0.00       0.00
                         -379.65       5.03      16.51    -520.81     -48.52       0.00      -0.00      -0.00      -0.00      -0.00

   49  13.1  0.0  0.0    -541.79       7.10     -13.39     421.33      39.20      -0.00       0.00       0.00       0.00       0.00
                           94.01     557.53     115.61      14.13    -112.21       0.00      -0.00      -0.00      -0.00      -0.00

   50  14.1  0.0  0.0     531.97      -6.98     -13.65     429.11      39.93      -0.00       0.00       0.00       0.00       0.00
                           26.12     154.86    -416.19     -50.83     403.98       0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.0  1.0      90.91     174.22      66.46       0.01    -211.99    -209.86      -0.10      65.79     -24.91     -25.36
                           63.01     372.27     -31.12     211.99      -0.00       0.11    -209.85      30.82     -20.33      73.18

    2   2.1  1.0  1.0     645.11    1244.37      -5.17      -0.00      30.96      30.65       0.02      -5.12    -177.89    -181.17
                           -6.01     -28.94    -222.12     -30.99      -0.01      -0.02      30.69     219.90       1.58      -5.69

    3   3.1  1.0  1.0     -13.86     -24.04     214.20       0.02      66.52      65.84       0.07     212.06       3.43       3.50
                          206.31    1199.98       4.30     -66.51       0.00      -0.03      65.84      -4.26     -65.53     235.91

    4   4.1  1.0  1.0       7.76       0.00     -18.32     533.02     -12.48       9.73     248.27      14.40      12.99     -12.75
                           17.99      -0.00      11.54     -12.48    -423.58     507.68      -9.59       9.11      27.82       7.73

    5   5.1  1.0  1.0      -3.31      -0.00      -5.91    -181.62       4.12      -3.64     730.37       4.57      -4.67       4.60
                            5.24      -0.00      -4.13       4.12    -371.32    -580.46       2.94      -3.28       9.03       2.51

    6   6.1  1.0  1.0      58.90      -0.00    -316.47      -2.79     361.64    -285.79     -11.69     250.07      96.80     -95.06
                          304.30      -0.00      85.81     361.67       8.71       2.36     285.80      67.80     481.90     133.86

    7   7.1  1.0  1.0    -329.55       0.00     -61.73      13.54      60.06     -47.46      -2.62      48.78    -541.79     531.97
                           59.01      -0.00    -480.43      60.02      -5.15      17.33      47.41    -379.65      94.01      26.12

    8   8.1  1.0  1.0       4.80      -0.00    -366.10     -23.59    -322.18     254.59     -13.59     289.32       7.10      -6.98
                          352.35      -0.00       6.33    -322.18      20.49     -20.90    -254.60       5.03     557.53     154.86

    9   9.1  1.0  1.0       4.42       5.72     279.92       0.03    -273.54     365.59       0.14    -374.08     -13.39     -13.65
                          -32.67    -129.15      12.37     273.57       0.00      -0.20     365.59      16.51     115.61    -416.19

   10  10.1  1.0  1.0    -137.80    -179.80      34.19       0.00      17.32     -23.15      -0.03     -45.67     421.33     429.11
                           -3.77     -15.77    -389.70     -17.36      -0.02       0.01     -23.23    -520.81      14.13     -50.83

   11  11.1  1.0  1.0     -13.15     -16.73    -271.68      -0.03    -279.66     373.73       0.26     363.11      39.20      39.93
                           31.97     125.36     -36.29     279.66      -0.00      -0.20     373.72     -48.52    -112.21     403.98

   12  12.1  1.0  1.0       0.00       0.00       0.08    -800.02       0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.04      -0.00    -799.99       0.00      -0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1159.41    1679.55       0.01     -93.98      43.98     -43.49     -93.06       0.02     331.82     -85.67

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          170.72    -245.32      -0.02       7.31     314.13    -310.97       7.07      -0.00     -48.47      12.51

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          362.62    -526.96       0.03    -302.93      -6.07       6.17    -299.87       0.05    -104.11      26.88

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.88       0.00    -154.75     -25.85      16.28      12.86      20.59    1069.03      -7.00     -27.03

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.80       0.00     781.96      -8.31      -5.83      -4.64       6.66     212.01       2.30       8.91

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          141.00      -0.00      -8.37    -447.55     121.40      95.75     353.70     -12.86     202.07     782.68

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           23.00      -0.00     -11.87     -87.30    -679.42    -536.94      68.70      20.85      33.56     129.99

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -126.05      -0.00       4.38    -517.79       8.91       6.82     409.16     -49.30    -180.00    -697.22

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          182.32    -178.50       0.04    -395.88     -17.53     -23.71     529.02      -0.09    -578.05     149.24

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -11.80      11.30      -0.02     -48.35     551.12     736.50      65.01      -0.01      36.60      -9.45

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          186.00    -182.47      -0.04     384.26      51.29      68.82    -513.46       0.07    -590.93     152.56

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00   -1131.36      -0.11      -0.05      -0.00       0.00       0.00       0.00      -0.00

   25   1.1  1.0 -1.0      90.91     174.22      66.46       0.01    -211.99    -209.86      -0.10      65.79     -24.91     -25.36
                          -63.01    -372.27      31.12    -211.99       0.00      -0.11     209.85     -30.82      20.33     -73.18

   26   2.1  1.0 -1.0     645.11    1244.37      -5.17      -0.00      30.96      30.65       0.02      -5.12    -177.89    -181.17
                            6.01      28.94     222.12      30.99       0.01       0.02     -30.69    -219.90      -1.58       5.69

   27   3.1  1.0 -1.0     -13.86     -24.04     214.20       0.02      66.52      65.84       0.07     212.06       3.43       3.50
                         -206.31   -1199.98      -4.30      66.51      -0.00       0.03     -65.84       4.26      65.53    -235.91

   28   4.1  1.0 -1.0       7.76       0.00     -18.32     533.02     -12.48       9.73     248.27      14.40      12.99     -12.75
                          -17.99       0.00     -11.54      12.48     423.58    -507.68       9.59      -9.11     -27.82      -7.73

   29   5.1  1.0 -1.0      -3.31      -0.00      -5.91    -181.62       4.12      -3.64     730.37       4.57      -4.67       4.60
                           -5.24       0.00       4.13      -4.12     371.32     580.46      -2.94       3.28      -9.03      -2.51

   30   6.1  1.0 -1.0      58.90      -0.00    -316.47      -2.79     361.64    -285.79     -11.69     250.07      96.80     -95.06
                         -304.30       0.00     -85.81    -361.67      -8.71      -2.36    -285.80     -67.80    -481.90    -133.86

   31   7.1  1.0 -1.0    -329.55       0.00     -61.73      13.54      60.06     -47.46      -2.62      48.78    -541.79     531.97
                          -59.01       0.00     480.43     -60.02       5.15     -17.33     -47.41     379.65     -94.01     -26.12

   32   8.1  1.0 -1.0       4.80      -0.00    -366.10     -23.59    -322.18     254.59     -13.59     289.32       7.10      -6.98
                         -352.35       0.00      -6.33     322.18     -20.49      20.90     254.60      -5.03    -557.53    -154.86

   33   9.1  1.0 -1.0       4.42       5.72     279.92       0.03    -273.54     365.59       0.14    -374.08     -13.39     -13.65
                           32.67     129.15     -12.37    -273.57      -0.00       0.20    -365.59     -16.51    -115.61     416.19

   34  10.1  1.0 -1.0    -137.80    -179.80      34.19       0.00      17.32     -23.15      -0.03     -45.67     421.33     429.11
                            3.77      15.77     389.70      17.36       0.02      -0.01      23.23     520.81     -14.13      50.83

   35  11.1  1.0 -1.0     -13.15     -16.73    -271.68      -0.03    -279.66     373.73       0.26     363.11      39.20      39.93
                          -31.97    -125.36      36.29    -279.66       0.00       0.20    -373.72      48.52     112.21    -403.98

   36  12.1  1.0 -1.0       0.00       0.00       0.08    -800.02       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.04       0.00     799.99      -0.00       0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5738.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   14364.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   41718.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   41719.33       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   41718.65       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   45300.61       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   45300.62       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   45300.32       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   45300.83       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   45300.88
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 50)

    The diagonal matrixelements are shifted by   -214.07377661 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.005       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.017       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42742.511       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42742.515       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42742.547       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42742.552       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42742.548
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000   -1071.645     -25.845     -75.036     -73.115      86.334    -288.478     -21.055

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                             1071.645       0.000    -332.455      -2.707       8.514     223.228      81.217    -206.644

    3    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               25.845     332.455       0.000    -262.955    -227.975     -15.517      87.990      15.390

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               75.036       2.707     262.955       0.000     -49.990    -605.065     -98.533    -673.504

    5    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                               73.115      -8.514     227.975      49.990       0.000     680.066     126.961     776.249

    6    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                              -86.334    -223.228      15.517     605.065    -680.066       0.000    -499.629      59.050

    7    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                              288.478     -81.217     -87.990      98.533    -126.961     499.629       0.000    -476.213

    8    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                               21.055     206.644     -15.390     673.504    -776.249     -59.050     476.213       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               34.505     187.104      -6.192    -335.467    -305.964      62.392    -388.858      33.330

   10    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                             -257.674      25.470      80.552     -56.890     -32.071     406.746      91.836    -363.696

   11    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                3.125     195.965       3.757     343.018     290.695     101.158    -380.640     -45.081

   12    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              151.318     -11.763     487.762       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -332.767     154.916      66.139    -335.749      15.519     102.454      29.668

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              332.767      -0.000    1060.606       2.098      52.959     202.876      31.543     234.219

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -154.916   -1060.606      -0.000     -28.249     108.238     -57.915     293.546      -7.811

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -66.139      -2.098      28.249       0.000      18.720    1009.669     194.963    -884.118

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              335.749     -52.959    -108.238     -18.720       0.000     193.978      40.369    -181.373

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.519    -202.876      57.915   -1009.669    -193.978       0.000     435.026     142.382

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -102.454     -31.543    -293.546    -194.963     -40.369    -435.026       0.000    -521.397

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -29.668    -234.219       7.811     884.118     181.373    -142.382     521.397       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               29.527     192.467       4.507      77.082    -437.081     -76.621     395.874     -20.781

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -76.952      29.770    -259.124      14.061      35.013     350.097     117.398     414.798

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -33.650    -186.431     -20.459     100.101    -452.702     106.122    -366.545      41.131

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -482.738      70.511     151.460       0.000       0.000      -0.000       0.000      -0.000

    1    1  |0 0>            -327.774      24.733   -1056.184      12.774       4.161     221.497      44.274     256.456
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               4.240       0.350      -1.309     220.112     647.425     -11.176      -2.930     -11.312
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>             102.803     878.517      -9.895     -11.806       4.273     -82.055     486.288     -10.866
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>            1047.313    -137.030    -328.201       7.642      -5.341    -255.023     -32.175     225.554
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>             128.569     912.321     -19.601      10.979      -4.680      83.299    -466.052       6.785
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>             246.379    1759.804     -33.993       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              93.990      -7.308     302.920     -25.910      -8.358    -447.553     -87.305    -517.742
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.009      -0.001       0.029     753.804    -256.847      -3.952      19.145     -33.359
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>            -299.800      43.790      94.078     -17.656       5.821     511.432      84.935    -455.632
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>            -296.784      43.348      93.115      13.763      -5.155    -404.165     -67.118     360.051
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>              -0.144       0.026       0.097     351.101    1032.906     -16.534      -3.704     -19.215
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>              93.036      -7.242     299.901      20.363       6.462     353.656      68.981     409.160
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>             -35.222    -251.568       4.853      18.371      -6.606     136.897    -766.209      10.036
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |0 0>             -35.871    -256.213       4.945     -18.035       6.501    -134.428     752.325      -9.870
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -1071.645     -25.845     -75.036

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000    1071.645       0.000    -332.455      -2.707

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      25.845     332.455       0.000    -262.955

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      75.036       2.707     262.955       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      73.115      -8.514     227.975      49.990

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000     -86.334    -223.228      15.517     605.065

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000     288.478     -81.217     -87.990      98.533

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      21.055     206.644     -15.390     673.504

    9    1  |1 1>+          43653.260       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      34.505     187.104      -6.192    -335.467

   10    1  |1 1>+              0.000   43653.264       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000    -257.674      25.470      80.552     -56.890

   11    1  |1 1>+              0.000       0.000   43653.264       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       3.125     195.965       3.757     343.018

   12    1  |1 1>+              0.000       0.000       0.000   44219.809       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000     151.318     -11.763     487.762       0.000

    1    1  |1 0>              -0.000      -0.000       0.000       0.000       0.005       0.000       0.000       0.000
                              -34.505     257.674      -3.125    -151.318       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.017       0.000       0.000
                             -187.104     -25.470    -195.965      11.763      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                6.192     -80.552      -3.757    -487.762      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000   42742.511
                              335.467      56.890    -343.018      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              305.964      32.071    -290.695      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              -62.392    -406.746    -101.158      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              388.858     -91.836     380.640       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -33.330     363.696      45.081      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -505.812     -63.647    -653.792      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              505.812       0.000     521.104     -79.853      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               63.647    -521.104       0.000     634.605      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              653.792      79.853    -634.605       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      21.466    1111.285      34.141
                              -29.527      76.952      33.650     482.738      -0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     -21.466       0.000    -155.584     342.263
                             -192.467     -29.770     186.431     -70.511       0.000      -0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000   -1111.285     155.584       0.000     -10.771
                               -4.507     259.124      20.459    -151.460       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000     -34.141    -342.263      10.771       0.000
                              -77.082     -14.061    -100.101      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      19.067     115.534      -5.910      35.110
                              437.081     -35.013     452.702      -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000     124.053     -21.040    -283.323     -48.114
                               76.621    -350.097    -106.122       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000      24.943     -13.255     -48.635     443.349
                             -395.874    -117.398     366.545      -0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000     286.856     -22.341     128.122     -10.143
                               20.781    -414.798     -41.131       0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000     127.549     -22.479    -239.270     -43.949
                               -0.000    -520.617     -32.248     638.954       0.000       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      26.026      -3.558       4.451     604.240
                              520.617       0.000    -509.279     -40.460      -0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000    -236.069      30.547    -129.621      51.261
                               32.248     509.279       0.000     653.180       0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      70.814     505.804      -9.770      -0.000
                             -638.954      40.460    -653.180       0.000      -0.000      -0.000       0.000      -0.000

    1    1  |0 0>             168.054      20.684    -163.110       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.953       0.292       0.613    -670.089

    2    1  |0 0>              -0.639      -0.162      -0.679      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -327.099      20.998   -1056.475     -12.826

    3    1  |0 0>               8.977    -187.261     -14.078      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -333.274      70.079     105.027      17.418

    4    1  |0 0>            -164.108       7.060    -168.178       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -159.916   -1094.005      27.777      -7.695

    5    1  |0 0>               6.245    -194.879     -18.591       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1159.408    -170.721    -362.620       3.882

    6    1  |0 0>               8.089    -254.281     -23.663       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1679.552     245.322     526.962      -0.000

    7    1  |0 0>             395.870      48.348    -384.217       0.109       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.007       0.015      -0.029     154.747

    8    1  |0 0>               0.038       0.005      -0.037   -1131.406       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      93.976      -7.306     302.925      25.854

    9    1  |0 0>            -386.849      24.499    -395.499       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -43.979    -314.128       6.068     -16.281

   10    1  |0 0>             517.022     -32.736     528.531       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      43.486     310.969      -6.168     -12.858

   11    1  |0 0>               0.194      -0.037       0.364      -0.003       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      93.055      -7.065     299.870     -20.594

   12    1  |0 0>            -529.033     -64.594     513.512       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.021       0.003      -0.045   -1069.027

   13    1  |0 0>             -18.943     595.850      55.438      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -331.817      48.466     104.111       6.998

   14    1  |0 0>             -19.299     606.852      56.464      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      85.669     -12.514     -26.877      27.033

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                              -73.115      86.334    -288.478     -21.055     -34.505     257.674      -3.125    -151.318

    2    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                8.514     223.228      81.217    -206.644    -187.104     -25.470    -195.965      11.763

    3    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                             -227.975     -15.517      87.990      15.390       6.192     -80.552      -3.757    -487.762

    4    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                              -49.990    -605.065     -98.533    -673.504     335.467      56.890    -343.018      -0.000

    5    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000     680.066     126.961     776.249     305.964      32.071    -290.695      -0.000

    6    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -680.066       0.000    -499.629      59.050     -62.392    -406.746    -101.158      -0.000

    7    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                             -126.961     499.629       0.000    -476.213     388.858     -91.836     380.640       0.000

    8    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                             -776.249     -59.050     476.213       0.000     -33.330     363.696      45.081      -0.000

    9    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                             -305.964      62.392    -388.858      33.330       0.000    -505.812     -63.647    -653.792

   10    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                              -32.071     406.746      91.836    -363.696     505.812       0.000     521.104     -79.853

   11    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                              290.695     101.158    -380.640     -45.081      63.647    -521.104       0.000     634.605

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000     653.792      79.853    -634.605       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           42742.515       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   42742.547       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   42742.552       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   42742.548       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   43653.260       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   43653.264       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   43653.264       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   44219.809
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-            -19.067    -124.053     -24.943    -286.856    -127.549     -26.026     236.069     -70.814
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 1>-           -115.534      21.040      13.255      22.341      22.479       3.558     -30.547    -505.804
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 1>-              5.910     283.323      48.635    -128.122     239.270      -4.451     129.621       9.770
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-            -35.110      48.114    -443.349      10.143      43.949    -604.240     -51.261       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000     227.648   -1289.049      26.602      -5.187     205.283      27.249      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-           -227.648       0.000      30.878     684.252     -42.776     -48.806     543.855      -0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    7    1  |1 1>-           1289.049     -30.878       0.000      97.185       0.707     -24.451      96.311       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 1>-            -26.602    -684.252     -97.185       0.000     553.123      40.314      45.718      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              5.187      42.776      -0.707    -553.123       0.000      67.515    -725.504      28.955
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   10    1  |1 1>-           -205.283      48.806      24.451     -40.314     -67.515       0.000     -23.078    -910.236
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 1>-            -27.249    -543.855     -96.311     -45.718     725.504      23.078       0.000     -84.706
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000      -0.000       0.000     -28.955     910.236      84.706       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -132.896       7.905     -13.101      30.968       0.307      -0.021       0.314      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.143    -222.071     -41.946    -256.346     167.844      21.457    -163.226      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.501    -485.402     -87.238     433.464      52.973      -7.824      53.574       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.818     -68.392     335.130       4.739      -6.862     233.773      23.678      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.796    -140.999     -22.998     126.050    -182.322      11.805    -186.004       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000     178.496     -11.303     182.471      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -781.956       8.367      11.866      -4.383      -0.039       0.021       0.039    1131.359

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.308     447.551      87.304     517.788     395.876      48.352    -384.259       0.109

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.829    -121.397     679.418      -8.907      17.531    -551.124     -51.287       0.052

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.639     -95.747     536.939      -6.816      23.713    -736.496     -68.817       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.655    -353.699     -68.701    -409.161    -529.016     -65.009     513.460      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -212.011      12.860     -20.853      49.296       0.094       0.008      -0.070      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.295    -202.073     -33.559     180.002     578.046     -36.603     590.926      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -8.906    -782.683    -129.985     697.218    -149.244       9.453    -152.560       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -332.767     154.916      66.139    -335.749      15.519     102.454      29.668

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              332.767      -0.000    1060.606       2.098      52.959     202.876      31.543     234.219

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -154.916   -1060.606      -0.000     -28.249     108.238     -57.915     293.546      -7.811

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -66.139      -2.098      28.249       0.000      18.720    1009.669     194.963    -884.118

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              335.749     -52.959    -108.238     -18.720       0.000     193.978      40.369    -181.373

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -15.519    -202.876      57.915   -1009.669    -193.978       0.000     435.026     142.382

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -102.454     -31.543    -293.546    -194.963     -40.369    -435.026       0.000    -521.397

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -29.668    -234.219       7.811     884.118     181.373    -142.382     521.397       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               29.527     192.467       4.507      77.082    -437.081     -76.621     395.874     -20.781

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -76.952      29.770    -259.124      14.061      35.013     350.097     117.398     414.798

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -33.650    -186.431     -20.459     100.101    -452.702     106.122    -366.545      41.131

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -482.738      70.511     151.460       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 0>               0.000     -21.466   -1111.285     -34.141      19.067     124.053      24.943     286.856
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 0>              21.466       0.000     155.584    -342.263     115.534     -21.040     -13.255     -22.341
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>            1111.285    -155.584       0.000      10.771      -5.910    -283.323     -48.635     128.122
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>              34.141     342.263     -10.771       0.000      35.110     -48.114     443.349     -10.143
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    5    1  |1 0>             -19.067    -115.534       5.910     -35.110       0.000    -227.648    1289.049     -26.602
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 0>            -124.053      21.040     283.323      48.114     227.648       0.000     -30.878    -684.252
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 0>             -24.943      13.255      48.635    -443.349   -1289.049      30.878       0.000     -97.185
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    8    1  |1 0>            -286.856      22.341    -128.122      10.143      26.602     684.252      97.185       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>            -127.549      22.479     239.270      43.949      -5.187     -42.776       0.707     553.123
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   10    1  |1 0>             -26.026       3.558      -4.451    -604.240     205.283     -48.806     -24.451      40.314
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   11    1  |1 0>             236.069     -30.547     129.621     -51.261      27.249     543.855      96.311      45.718
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>             -70.814    -505.804       9.770       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.005       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.017       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   42742.511       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   42742.515       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42742.547       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   42742.552       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42742.548
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              153.732    1095.236     -19.896      -8.033       2.913     -59.569     336.653      -3.759

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1045.393     152.691     327.707       6.952      -0.870    -253.790     -42.219     225.245

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              367.178     -29.315    1184.103       2.507     -11.839    -105.850     -20.605    -122.890

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               11.253      -1.165      21.753    -450.060     514.435      -2.720     -15.510      16.033

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -89.110       8.496    -291.766     -25.439      -7.414    -430.349     -83.457    -498.294

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -526.469      40.927   -1697.034       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               44.008     314.124      -6.077     -16.318       5.842    -121.348     679.424      -8.950

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -299.800      43.821      94.063      17.654      -5.821    -511.485     -84.877     455.625

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002       0.014      -0.000     599.026     525.125     -12.319       7.279     -28.975

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.160       0.024       0.049    -717.962     820.895      -3.337     -24.509      29.552

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              296.776     -43.398     -93.114      13.565      -4.159    -404.183     -67.050     360.064

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -43.588    -310.985       6.019     -12.877       4.637     -95.886     536.905      -7.116

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               28.752      -2.229      92.669     -39.347     -12.767    -681.514    -132.954    -788.467

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -103.499       8.050    -333.630     -10.926      -3.549    -189.305     -36.935    -219.011

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000    -327.774       4.240     102.803    1047.313
                              -29.527      76.952      33.650     482.738       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      24.733       0.350     878.517    -137.030
                             -192.467     -29.770     186.431     -70.511       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000   -1056.184      -1.309      -9.895    -328.201
                               -4.507     259.124      20.459    -151.460       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      12.774     220.112     -11.806       7.642
                              -77.082     -14.061    -100.101      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       4.161     647.425       4.273      -5.341
                              437.081     -35.013     452.702      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000     221.497     -11.176     -82.055    -255.023
                               76.621    -350.097    -106.122       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      44.274      -2.930     486.288     -32.175
                             -395.874    -117.398     366.545      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000     256.456     -11.312     -10.866     225.554
                               20.781    -414.798     -41.131       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000     168.054      -0.639       8.977    -164.108
                               -0.000    -520.617     -32.248     638.954       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      20.684      -0.162    -187.261       7.060
                              520.617       0.000    -509.279     -40.460       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000    -163.110      -0.679     -14.078    -168.178
                               32.248     509.279       0.000     653.180       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                             -638.954      40.460    -653.180       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>             127.549      26.026    -236.069      70.814       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       1.953     327.099     333.274     159.916

    2    1  |1 0>             -22.479      -3.558      30.547     505.804       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.292     -20.998     -70.079    1094.005

    3    1  |1 0>            -239.270       4.451    -129.621      -9.770       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.613    1056.475    -105.027     -27.777

    4    1  |1 0>             -43.949     604.240      51.261      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     670.089      12.826     -17.418       7.695

    5    1  |1 0>               5.187    -205.283     -27.249       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     132.896       4.143       5.501      -2.818

    6    1  |1 0>              42.776      48.806    -543.855       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -7.905     222.071     485.402      68.392

    7    1  |1 0>              -0.707      24.451     -96.311      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      13.101      41.946      87.238    -335.130

    8    1  |1 0>            -553.123     -40.314     -45.718       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000     -30.968     256.346    -433.464      -4.739

    9    1  |1 0>               0.000     -67.515     725.504     -28.955       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.307    -167.844     -52.973       6.862

   10    1  |1 0>              67.515       0.000      23.078     910.236       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.021     -21.457       7.824    -233.773

   11    1  |1 0>            -725.504     -23.078       0.000      84.706       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.314     163.226     -53.574     -23.678

   12    1  |1 0>              28.955    -910.236     -84.706       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -153.732    1045.393    -367.178     -11.253

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1095.236    -152.691      29.315       1.165

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      19.896    -327.707   -1184.103     -21.753

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       8.033      -6.952      -2.507     450.060

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -2.913       0.870      11.839    -514.435

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      59.569     253.790     105.850       2.720

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -336.653      42.219      20.605      15.510

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       3.759    -225.245     122.890     -16.033

    9    1  |1 1>-          43653.260       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -7.242    -164.284     188.396       4.311

   10    1  |1 1>-              0.000   43653.264       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     234.001      10.395      22.848       0.405

   11    1  |1 1>-              0.000       0.000   43653.264       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      21.579    -167.859    -182.893      -2.899

   12    1  |1 1>-              0.000       0.000       0.000   44219.809       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5738.178       0.000       0.000       0.000
                                7.242    -234.001     -21.579       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5738.169       0.000       0.000
                              164.284     -10.395     167.859      -0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5738.173       0.000
                             -188.396     -22.848     182.893       0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5738.178
                               -4.311      -0.405       2.899      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               46.209       5.327     -45.207      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              182.642      22.308    -177.282      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -17.494     551.121      51.325      -0.052      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -386.890      24.551    -395.498       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.025       0.002    1131.360      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.280      -0.020       0.281      -0.002      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -517.026      32.854    -528.519       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -23.343     736.537      68.621      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -163.491     -19.984     158.684      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              588.575      71.878    -571.310      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |1 1>+            128.569     246.379      93.990       0.009    -299.800    -296.784      -0.144      93.036
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+            912.321    1759.804      -7.308      -0.001      43.790      43.348       0.026      -7.242
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+            -19.601     -33.993     302.920       0.029      94.078      93.115       0.097     299.901
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             10.979       0.000     -25.910     753.804     -17.656      13.763     351.101      20.363
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -4.680      -0.000      -8.358    -256.847       5.821      -5.155    1032.906       6.462
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             83.299      -0.000    -447.553      -3.952     511.432    -404.165     -16.534     353.656
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+           -466.052       0.000     -87.305      19.145      84.935     -67.118      -3.704      68.981
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              6.785      -0.000    -517.742     -33.359    -455.632     360.051     -19.215     409.160
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              6.245       8.089     395.870       0.038    -386.849     517.022       0.194    -529.033
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+           -194.879    -254.281      48.348       0.005      24.499     -32.736      -0.037     -64.594
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+            -18.591     -23.663    -384.217      -0.037    -395.499     528.531       0.364     513.512
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.109   -1131.406       0.000       0.000      -0.003       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1159.408    1679.552       0.007     -93.976      43.979     -43.486     -93.055       0.021

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              170.721    -245.322      -0.015       7.306     314.128    -310.969       7.065      -0.003

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              362.620    -526.962       0.029    -302.925      -6.068       6.168    -299.870       0.045

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.882       0.000    -154.747     -25.854      16.281      12.858      20.594    1069.027

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.796       0.000     781.956      -8.308      -5.829      -4.639       6.655     212.011

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              140.999      -0.000      -8.367    -447.551     121.397      95.747     353.699     -12.860

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               22.998      -0.000     -11.866     -87.304    -679.418    -536.939      68.701      20.853

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -126.050      -0.000       4.383    -517.788       8.907       6.816     409.161     -49.296

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              182.322    -178.496       0.039    -395.876     -17.531     -23.713     529.016      -0.094

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -11.805      11.303      -0.021     -48.352     551.124     736.496      65.009      -0.008

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              186.004    -182.471      -0.039     384.259      51.287      68.817    -513.460       0.070

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000   -1131.359      -0.109      -0.052      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               89.110     526.469     -44.008     299.800      -0.002       0.160    -296.776      43.588

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -8.496     -40.927    -314.124     -43.821      -0.014      -0.024      43.398     310.985

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              291.766    1697.034       6.077     -94.063       0.000      -0.049      93.114      -6.019

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               25.439      -0.000      16.318     -17.654    -599.026     717.962     -13.565      12.877

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.414      -0.000      -5.842       5.821    -525.125    -820.895       4.159      -4.637

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              430.349      -0.000     121.348     511.485      12.319       3.337     404.183      95.886

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               83.457      -0.000    -679.424      84.877      -7.279      24.509      67.050    -536.905

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              498.294      -0.000       8.950    -455.625      28.975     -29.552    -360.064       7.116

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -46.209    -182.642      17.494     386.890       0.001      -0.280     517.026      23.343

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.327     -22.308    -551.121     -24.551      -0.025       0.020     -32.854    -736.537

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               45.207     177.282     -51.325     395.498      -0.002      -0.281     528.519     -68.621

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.052      -0.000   -1131.360       0.002      -0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5738.162       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   14364.715       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   41718.616       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   41719.335       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   41718.649       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000   45300.610       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   45300.623       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   45300.319
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       49          50

    1    1  |1 1>+            -35.222     -35.871
                                0.000       0.000

    2    1  |1 1>+           -251.568    -256.213
                                0.000       0.000

    3    1  |1 1>+              4.853       4.945
                                0.000       0.000

    4    1  |1 1>+             18.371     -18.035
                                0.000       0.000

    5    1  |1 1>+             -6.606       6.501
                                0.000       0.000

    6    1  |1 1>+            136.897    -134.428
                                0.000       0.000

    7    1  |1 1>+           -766.209     752.325
                                0.000       0.000

    8    1  |1 1>+             10.036      -9.870
                                0.000       0.000

    9    1  |1 1>+            -18.943     -19.299
                                0.000       0.000

   10    1  |1 1>+            595.850     606.852
                                0.000       0.000

   11    1  |1 1>+             55.438      56.464
                                0.000       0.000

   12    1  |1 1>+             -0.000      -0.000
                                0.000       0.000

    1    1  |1 0>               0.000       0.000
                              331.817     -85.669

    2    1  |1 0>               0.000       0.000
                              -48.466      12.514

    3    1  |1 0>               0.000       0.000
                             -104.111      26.877

    4    1  |1 0>               0.000       0.000
                               -6.998     -27.033

    5    1  |1 0>               0.000       0.000
                                2.295       8.906

    6    1  |1 0>               0.000       0.000
                              202.073     782.683

    7    1  |1 0>               0.000       0.000
                               33.559     129.985

    8    1  |1 0>               0.000       0.000
                             -180.002    -697.218

    9    1  |1 0>               0.000       0.000
                             -578.046     149.244

   10    1  |1 0>               0.000       0.000
                               36.603      -9.453

   11    1  |1 0>               0.000       0.000
                             -590.926     152.560

   12    1  |1 0>               0.000       0.000
                                0.000      -0.000

    1    1  |1 1>-              0.000       0.000
                              -28.752     103.499

    2    1  |1 1>-              0.000       0.000
                                2.229      -8.050

    3    1  |1 1>-              0.000       0.000
                              -92.669     333.630

    4    1  |1 1>-              0.000       0.000
                               39.347      10.926

    5    1  |1 1>-              0.000       0.000
                               12.767       3.549

    6    1  |1 1>-              0.000       0.000
                              681.514     189.305

    7    1  |1 1>-              0.000       0.000
                              132.954      36.935

    8    1  |1 1>-              0.000       0.000
                              788.467     219.011

    9    1  |1 1>-              0.000       0.000
                              163.491    -588.575

   10    1  |1 1>-              0.000       0.000
                               19.984     -71.878

   11    1  |1 1>-              0.000       0.000
                             -158.684     571.310

   12    1  |1 1>-              0.000       0.000
                                0.000       0.000

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000       0.000
                                0.000       0.000

    3    1  |0 0>               0.000       0.000
                                0.000       0.000

    4    1  |0 0>               0.000       0.000
                                0.000       0.000

    5    1  |0 0>               0.000       0.000
                                0.000       0.000

    6    1  |0 0>               0.000       0.000
                                0.000       0.000

    7    1  |0 0>               0.000       0.000
                                0.000       0.000

    8    1  |0 0>               0.000       0.000
                                0.000       0.000

    9    1  |0 0>               0.000       0.000
                                0.000       0.000

   10    1  |0 0>               0.000       0.000
                                0.000       0.000

   11    1  |0 0>               0.000       0.000
                                0.000       0.000

   12    1  |0 0>               0.000       0.000
                                0.000       0.000

   13    1  |0 0>           45300.834       0.000
                                0.000       0.000

   14    1  |0 0>               0.000   45300.877
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.08655808    -0.01278147    -2805.21      0.00000000        0.00      0.0000
    2  -214.07898850    -0.00521189    -1143.88      0.00756958     1661.33      0.2060
    3  -214.07898847    -0.00521185    -1143.87      0.00756962     1661.34      0.2060
    4  -214.07898846    -0.00521184    -1143.87      0.00756963     1661.34      0.2060
    5  -214.07093515     0.00284147      623.63      0.01562294     3428.84      0.4251
    6  -214.07093511     0.00284150      623.64      0.01562297     3428.85      0.4251
    7  -214.07093506     0.00284155      623.65      0.01562302     3428.86      0.4251
    8  -214.07093504     0.00284157      623.65      0.01562304     3428.86      0.4251
    9  -214.07093503     0.00284158      623.66      0.01562306     3428.86      0.4251
   10  -214.04551540     0.02826121     6202.62      0.04104268     9007.83      1.1168
   11  -214.04551537     0.02826125     6202.63      0.04104272     9007.84      1.1168
   12  -214.04551536     0.02826125     6202.63      0.04104272     9007.84      1.1168
   13  -214.04551535     0.02826126     6202.63      0.04104273     9007.84      1.1168
   14  -214.04551530     0.02826131     6202.64      0.04104278     9007.85      1.1168
   15  -214.00582946     0.06794715    14912.68      0.08072863    17717.89      2.1967
   16  -213.89275493     0.18102168    39729.67      0.19380316    42534.88      5.2737
   17  -213.89275488     0.18102173    39729.68      0.19380321    42534.89      5.2737
   18  -213.89275403     0.18102258    39729.86      0.19380405    42535.07      5.2737
   19  -213.88714647     0.18663014    40960.58      0.19941161    43765.79      5.4263
   20  -213.88714643     0.18663018    40960.59      0.19941165    43765.80      5.4263
   21  -213.88714586     0.18663076    40960.72      0.19941223    43765.93      5.4263
   22  -213.88655316     0.18722345    41090.80      0.20000492    43896.01      5.4424
   23  -213.88655300     0.18722361    41090.83      0.20000508    43896.04      5.4424
   24  -213.88655299     0.18722362    41090.84      0.20000509    43896.04      5.4424
   25  -213.88655279     0.18722383    41090.88      0.20000530    43896.09      5.4424
   26  -213.88655275     0.18722386    41090.89      0.20000533    43896.10      5.4424
   27  -213.88146348     0.19231313    42207.85      0.20509461    45013.06      5.5809
   28  -213.87455269     0.19922393    43724.60      0.21200540    46529.81      5.7690
   29  -213.87455263     0.19922399    43724.61      0.21200546    46529.82      5.7690
   30  -213.87455107     0.19922555    43724.95      0.21200702    46530.16      5.7690
   31  -213.87272312     0.20105349    44126.14      0.21383496    46931.35      5.8187
   32  -213.87272312     0.20105350    44126.14      0.21383497    46931.35      5.8187
   33  -213.87272311     0.20105351    44126.14      0.21383498    46931.35      5.8187
   34  -213.87272308     0.20105353    44126.15      0.21383500    46931.36      5.8187
   35  -213.87272307     0.20105354    44126.15      0.21383501    46931.36      5.8187
   36  -213.87272307     0.20105354    44126.15      0.21383502    46931.36      5.8187
   37  -213.87272303     0.20105358    44126.16      0.21383506    46931.37      5.8187
   38  -213.87070118     0.20307544    44569.91      0.21585691    47375.12      5.8738
   39  -213.87070101     0.20307561    44569.94      0.21585708    47375.15      5.8738
   40  -213.87070100     0.20307561    44569.94      0.21585708    47375.15      5.8738
   41  -213.87070089     0.20307573    44569.97      0.21585720    47375.18      5.8738
   42  -213.87070087     0.20307574    44569.97      0.21585722    47375.18      5.8738
   43  -213.86811957     0.20565704    45136.50      0.21843851    47941.71      5.9440
   44  -213.86811957     0.20565705    45136.50      0.21843852    47941.71      5.9440
   45  -213.86811945     0.20565717    45136.53      0.21843864    47941.74      5.9440
   46  -213.86369843     0.21007818    46106.83      0.22285965    48912.04      6.0643
   47  -213.86369743     0.21007918    46107.05      0.22286065    48912.26      6.0643
   48  -213.86369739     0.21007923    46107.06      0.22286070    48912.27      6.0643
   49  -213.86369664     0.21007998    46107.23      0.22286145    48912.43      6.0644
   50  -213.86369648     0.21008013    46107.26      0.22286160    48912.47      6.0644

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.07876732 -0.01140385 -0.01555411  0.69984710 -0.03417026  0.12008272  0.02565972  0.05681993
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.56260793  0.00003525  0.01573736 -0.09766787 -0.09686422  0.76231073 -0.04971780  0.01307769
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.01086762 -0.08082916  0.70198655  0.01617788  0.01133239 -0.01438874  0.12028575  0.66187732
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00555572 -0.00041336 -0.00016711  0.00031824  0.00034415  0.00467514 -0.00118101
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000001  0.00187848  0.00026079  0.00009599 -0.00019644  0.00085381  0.01389755 -0.00262351
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00027761  0.00191223  0.00463416  0.00277354  0.00019501 -0.00108212 -0.00346377
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00020234  0.00039113  0.00079738 -0.01458313 -0.00194275 -0.00015736 -0.00054303
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00025423  0.00469927 -0.00196820  0.00000550  0.00006475 -0.00132420 -0.00640324
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00024940  0.00025965 -0.00170898 -0.00337581 -0.00004190 -0.00005146  0.00035335  0.00147746
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00784017  0.00004088 -0.00036521  0.00005366 -0.00040409  0.00312977 -0.00014980  0.00028995
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00072960 -0.00035056  0.00334030 -0.00173047 -0.00011122  0.00031568 -0.00038092 -0.00225125
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.01592333 -0.00182656 -0.00030006 -0.00000001 -0.00000000 -0.00000001  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.53695377 -0.20983496  0.00733130 -0.09680521 -0.58906594 -0.43359141  0.22092776 -0.05292878

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.07842935  0.00311589  0.22464671 -0.66314202  0.06345950  0.07682687 -0.02345645 -0.14058726

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.16847024 -0.67024581 -0.08121646  0.00018042  0.18068244  0.17987283  0.62500631 -0.11423913

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00006158  0.00105934  0.00048149  0.00016183 -0.00037577 -0.00239198 -0.01418420

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00071902 -0.00541600 -0.00187861 -0.00008772  0.00008600 -0.00044940 -0.00279535

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000002  0.00329380  0.00014970  0.00093171 -0.00680909  0.00911163  0.00421830 -0.00082501

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00053700  0.00175387 -0.00471740 -0.00088256  0.00137917  0.00083207  0.00115654

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000002  0.00380443  0.00038477  0.00012378  0.00597685 -0.00747648  0.00614102 -0.00052583

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00550353  0.00269203  0.00034729 -0.00006309 -0.00176974 -0.00122940  0.00200771 -0.00032617

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00034849  0.00039950 -0.00116421  0.00358546  0.00002001  0.00015099  0.00021258 -0.00062941

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00562606 -0.00260865 -0.00041184  0.00028380 -0.00180058 -0.00149163 -0.00179841  0.00029868

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00182674 -0.01508672 -0.00510222 -0.00000000  0.00000000  0.00000001  0.00000007

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.16831234  0.67475686 -0.01610941 -0.01868654  0.21040314 -0.04843538  0.64975350 -0.02832156

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.01308428 -0.01716137 -0.66988221 -0.22461579 -0.01320293  0.00536472  0.03041159  0.65918049

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.54254316 -0.20974346 -0.01115787  0.00038008  0.68831934 -0.29698508 -0.17856389  0.01271768

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00006074  0.00131017 -0.00423040 -0.00010988  0.00068667 -0.00031769 -0.00223954

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00012001  0.00127069 -0.00366412  0.00044144 -0.00003696  0.00013952  0.00245877

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000002 -0.00364935 -0.00130355 -0.00026995  0.00368871  0.00928546  0.00466611 -0.00223780

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00119629  0.00466944  0.00153509  0.00074265  0.00185578  0.00214587  0.00684568

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.00335492  0.00025346  0.00024496  0.00434685  0.01004436 -0.00548563  0.00092453

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00563132 -0.00261944 -0.00041510 -0.00008785  0.00208730 -0.00075067  0.00193327 -0.00046301

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00068780 -0.00026359  0.00357313  0.00120508  0.00026868 -0.00009620  0.00038945  0.00264856

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00546606 -0.00273180  0.00002196  0.00006113 -0.00204478  0.00096546  0.00191578 -0.00007662

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00029896 -0.00510228  0.01519394 -0.00000000 -0.00000002  0.00000000  0.00000002

   1    1  |0 0>           0.00000001 -0.00000003  0.00000111  0.00000029  0.00170430  0.00209732  0.05395470  0.28315882
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000006  0.00000018  0.00000012  0.00000004  0.00136577 -0.01840524 -0.28935777  0.05330752
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000034 -0.00000012 -0.00000003 -0.00000004  0.23706192 -0.17427384  0.01161391 -0.00585295
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000006 -0.00000002  0.00000041 -0.00000095  0.01448323 -0.00843796  0.00333057  0.06272132
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000049  0.00000011  0.00000007 -0.00000019 -0.17486824 -0.23707902  0.01428623  0.00043650
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.17679839 -0.00000000 -0.00000000 -0.00000000  0.00000010 -0.00000044 -0.00000004 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00119934 -0.00989665 -0.00334750 -0.00000000  0.00000000  0.00000000  0.00000004
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000 -0.01044548 -0.00119916 -0.00019716 -0.00000001 -0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00019617 -0.00334756  0.00996710 -0.00000000 -0.00000001  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000001  0.00000001 -0.00029213  0.00016393 -0.00006436 -0.00189181
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.00000005 -0.00000001 -0.00000000 -0.00004514  0.00054467  0.00868944 -0.00159566
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00000000 -0.00000005 -0.00000001 -0.00003838 -0.00005595 -0.00162211 -0.00850361
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |0 0>          -0.00000009 -0.00000000 -0.00000000  0.00000001  0.00546040  0.00696088 -0.00040694 -0.00000355
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |0 0>           0.00000005  0.00000000  0.00000000  0.00000000 -0.00696655  0.00544587 -0.00036363  0.00013373
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.66312545  0.00157735 -0.04982775  0.20056450  0.02291408  0.02467681  0.01416376  0.00032667
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.11074916  0.00075183  0.00368142 -0.02921529  0.16181770  0.17536662  0.10116731 -0.00002690
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.05878598  0.00156575 -0.20264770 -0.04985564 -0.00240309 -0.00340936 -0.00195419  0.00097517
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00002583 -0.00464880 -0.00032391 -0.00014525 -0.00023412  0.00024151 -0.00000000  0.01615340
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00056594 -0.01367974 -0.00020709  0.00013405  0.00013622 -0.00005278  0.00000000  0.00513918
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00636011  0.00028183 -0.00436043  0.00562269 -0.00185044  0.00172658  0.00000000  0.28437465
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00151987  0.00007427 -0.00082053  0.00094380  0.01045621 -0.00964534 -0.00000001  0.05527500
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00365165  0.00028716 -0.00569330 -0.00443777 -0.00011869  0.00012346  0.00000000  0.31430380
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00229597  0.00006708 -0.00469093  0.00516789 -0.00015405 -0.00018429 -0.00022723 -0.01950045
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00013543  0.00003539 -0.00060656 -0.00027757  0.00544379  0.00589688  0.00714339 -0.00230353
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00150914 -0.00002021  0.00513622  0.00468749  0.00048933  0.00055138  0.00066476  0.01808693
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00013761
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.07419763  0.06133037  0.00147286  0.02862983 -0.22239203  0.04995431  0.09655374 -0.00000297

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.65494062 -0.00380175  0.01244179  0.20631523  0.03250032 -0.00718010 -0.01410304 -0.00002307

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.03124041  0.19946523  0.00181597 -0.00499193  0.06904681 -0.01615683 -0.03029387  0.00000128

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00292819 -0.00013818 -0.01414669  0.00067754  0.00013415  0.00036215 -0.00000000  0.09606871

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00068486 -0.00006166 -0.00280037  0.00022971 -0.00001617 -0.00011844 -0.00000000 -0.48444158

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00079459 -0.00472242  0.00004187 -0.00124804 -0.00233908 -0.01043551  0.00000000  0.00667270

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00734813 -0.00088488  0.00013989  0.00712127 -0.00038582 -0.00172837  0.00000000 -0.00219845

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00037024 -0.00539828  0.00060456 -0.00011162  0.00211255  0.00931663 -0.00000000 -0.00283160

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00018329  0.00497467  0.00001163 -0.00024410 -0.00551150  0.00122712  0.00501440 -0.00003526

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00266859  0.00064129  0.00042257  0.00693352  0.00034692 -0.00007562 -0.00031752  0.00059932

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00028169 -0.00485743 -0.00002567  0.00067096 -0.00560090  0.00127710  0.00512605  0.00007159

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.16224821

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00631593  0.19742319 -0.02702721  0.00078383  0.02067884 -0.06860143  0.03026554 -0.00014340

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.14397414 -0.02687681 -0.20655736  0.01249731 -0.00079510  0.00537906 -0.00235280 -0.00101826

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.03044995 -0.06218212  0.00366521  0.00017687  0.06862732 -0.21958653  0.09755870  0.00001993

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00958820  0.00014229 -0.00073945 -0.00948323 -0.00051783 -0.00016693  0.00000000 -0.01849820

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01099029 -0.00001411  0.00071071  0.01085059 -0.00016598 -0.00004557  0.00000000 -0.00372727

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00045944 -0.00537742 -0.00135269  0.00006072 -0.00892246 -0.00277404  0.00000001 -0.07475329

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00184856 -0.00096373  0.00706480 -0.00074431 -0.00176809 -0.00054223  0.00000000  0.42078034

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00029772  0.00473009 -0.00006482  0.00038112 -0.01036433 -0.00323363  0.00000001 -0.00535046

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000322  0.00486913  0.00027065 -0.00003474  0.00169680 -0.00551362  0.00513086 -0.00082907

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00059344 -0.00024492 -0.00693841  0.00041735  0.00023589 -0.00067088  0.00062668  0.02656032

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00009098  0.00499877 -0.00060630  0.00001127 -0.00167785  0.00533022 -0.00498028  0.00248789

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000006 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00367279

   1    1  |0 0>           0.06238336 -0.00890478  0.95345490 -0.05711772 -0.00496332  0.00050770  0.00000000  0.00000003
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00888079  0.95517243  0.00885049 -0.00099846 -0.00222259 -0.00203710  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.01590448  0.00189649 -0.00191616 -0.01877787 -0.05789127  0.95327268  0.00000000 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.28768569  0.00050252  0.05709340  0.95332380 -0.00215096  0.01876199 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00158937  0.00229656  0.00499646  0.00071086  0.95344331  0.05792095 -0.00000003 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000010 -0.00000001 -0.00000000  0.00000002  0.00000004 -0.00000005  0.98413805 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.60170753
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00045268
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.01359325
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00864545  0.00001435  0.00022100  0.00368734  0.00000055  0.00000222 -0.00000000  0.00000006
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00029633  0.00369375  0.00003404 -0.00001640 -0.00001236 -0.00000824  0.00000000 -0.00000002
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00187308 -0.00003501  0.00368750 -0.00022087 -0.00001349 -0.00000023  0.00000000 -0.00000035
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>           0.00004871  0.00001248  0.00001354 -0.00000148  0.00369219  0.00011448 -0.00000002  0.00000002
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>          -0.00031210  0.00000785 -0.00000025 -0.00000223 -0.00011450  0.00369222  0.00000002  0.00000007
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.00096498 -0.00000088  0.00326643 -0.00808329 -0.00000306  0.00193879  0.00635606 -0.00039552
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00014142  0.00000015 -0.00029952  0.00119498  0.00000050 -0.00012652 -0.00086761  0.00004363
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00032716  0.00000122  0.00816949  0.00327578  0.00000353  0.00642440 -0.00194173  0.00000747
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.01185583 -0.46704690 -0.00919641 -0.00751128  0.28259645  0.01685148  0.00401849  0.22469277
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00367845  0.15914624 -0.00328595  0.00197036 -0.09627681  0.01483690  0.04068978  0.65997581
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001

   6    1  |1 1>+         -0.31052931  0.00229267 -0.18266947  0.17772826 -0.00142542  0.22474573  0.25954308 -0.02895931
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.05137431 -0.01188224 -0.03518828  0.02912283  0.00718760  0.04019256  0.04227758 -0.00540402
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.28944517  0.02125154 -0.17984169 -0.18587397 -0.01262047  0.26367385 -0.22894042 -0.00366312
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.01821197  0.00000519 -0.34144363  0.28390558  0.00005269 -0.18405093 -0.18236083  0.01337729
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00123327 -0.00000345 -0.03708727 -0.02270047 -0.00001979 -0.02355295  0.00902443  0.00017471
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.01947813  0.00003866  0.28182450  0.34097663  0.00023053  0.18157126 -0.18402222  0.00761384
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00019368  0.16226261 -0.00009874 -0.00019445  0.40774408  0.00000019 -0.00000085 -0.00000815
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00014293 -0.00030411 -0.00009722  0.00121769 -0.00260714 -0.00001638  0.00079517 -0.00203358

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00101826  0.00002485 -0.00069900  0.00868868  0.00020670 -0.00005553  0.00664765 -0.00022458

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00001850 -0.00098084  0.00001554 -0.00016383 -0.00840572 -0.00010949 -0.00048738 -0.00639271

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00793878  0.01608281 -0.05833465  0.00143933 -0.00970086  0.68474659 -0.00238340  0.00217171

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00733732  0.00477477  0.29248095  0.02132344 -0.00306179  0.13574364  0.00414752  0.00182837

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.07540843  0.27722459 -0.00675068  0.04520490 -0.16775739 -0.00659521 -0.05219366  0.23040853

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.42094225  0.05459490  0.01598827 -0.25430533 -0.03284524  0.01082028  0.34519858  0.02443274

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00596111  0.32082029  0.00139806  0.00355277 -0.19410711 -0.02498999  0.01353701  0.26165551

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00082211  0.01906036 -0.00120487  0.01386850  0.31761383  0.00225576  0.01937639  0.18467344

  10    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.02656242  0.00229667  0.03544445 -0.44074571  0.03859019  0.00253055 -0.25670234  0.03734031

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00244959 -0.01850299  0.00337411 -0.04086679 -0.30830412 -0.00338460 -0.03368319 -0.17859049

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00367272  0.00014204  0.40637877  0.03269115  0.00011398  0.00000020 -0.00000058  0.00000034

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000438  0.00097055 -0.00121845 -0.00010183  0.00831849  0.00081481 -0.00036624 -0.00634632

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002289 -0.00014267 -0.00868842 -0.00069839 -0.00121752  0.00666144  0.00010200  0.00081491

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000081 -0.00030453  0.00016848  0.00001475 -0.00260998 -0.00013954  0.00007677  0.00199591

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.37080773  0.01136700  0.02410330 -0.22343307 -0.00672046  0.01188224 -0.45953800  0.01713753

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.32535766 -0.00322199  0.01359816 -0.19646511  0.00209265 -0.00723696  0.52483282 -0.02691008

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00895093 -0.31699180  0.04496280  0.00816150  0.19176543  0.06573653  0.01021030  0.25799983

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.01407863 -0.05225808 -0.25376023 -0.02315527  0.03177249 -0.34286428 -0.01626461  0.04959122

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.01840917  0.28228720  0.00250042  0.01117939 -0.17080948  0.00079394  0.00274399 -0.23064150

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000309 -0.01862693 -0.01394477 -0.00097969 -0.31039650  0.01239070  0.01144457  0.18074230

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00059993  0.00120269  0.44071794  0.03544479  0.01977830 -0.25838521 -0.00240540 -0.00721494

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00007869 -0.01903868  0.04109054  0.00345079 -0.31729100 -0.02227089  0.00939549  0.18569431

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.16224664  0.00019063 -0.03269132  0.40638124  0.00018585  0.00000042 -0.00000536 -0.00000002

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000003 -0.00000001 -0.00000001  0.01640201  0.00011925 -0.00027139
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000002 -0.00000001  0.00000001  0.00000030  0.00026479  0.00087133  0.01637997
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000001  0.00000003  0.00000000  0.00000002 -0.00010588  0.00021283  0.00000247
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000002  0.00000000 -0.00000000 -0.00000022 -0.00000002  0.00013182 -0.01638000  0.00086938
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000001  0.00000001 -0.00000002 -0.00000003  0.00005189 -0.00009813  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.01359302  0.00046893  0.46259776  0.03719218  0.00008518 -0.00000038 -0.00000085  0.00000036
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00071706  0.60175260 -0.00006805 -0.00021783  0.46411793  0.00000017 -0.00000081 -0.00000805
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.60170186  0.00070691 -0.03719247  0.46259968  0.00021149  0.00000053 -0.00000459 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000049 -0.00000004  0.00000018  0.00000419  0.00000036 -0.00298716  0.36337553 -0.02051694
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000004  0.00000017  0.00000030 -0.00000026 -0.00000628 -0.00592069 -0.02056692 -0.36334664
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000005 -0.00000003  0.00000017  0.00000025  0.00000028 -0.36392919 -0.00263864  0.00607854
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |0 0>          -0.00000005  0.00000008 -0.00000023  0.00000049  0.00000077 -0.00066614  0.00163868 -0.00034322
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |0 0>          -0.00000002 -0.00000008 -0.00000069  0.00000010 -0.00000050  0.00202368  0.00228287 -0.00044297
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.00083000 -0.00059379  0.00089885  0.00236577 -0.00675700 -0.00000000  0.00000001 -0.00000012
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00616905 -0.00457924  0.00642019 -0.00019933  0.00099179  0.00000003 -0.00000000  0.00000002
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00010232  0.00011470 -0.00012402  0.00682792  0.00237013  0.00000172 -0.00000002  0.00000005
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00957798 -0.01335559 -0.00000020 -0.00820592 -0.00599295  0.24341392  0.72952918  0.09317629
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000030  0.00000003  0.00000000

   5    1  |1 1>+         -0.00406391  0.00438291 -0.00000059 -0.00274907  0.00179583 -0.08294052 -0.19523044 -0.01354313
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000010 -0.00000001 -0.00000000

   6    1  |1 1>+          0.07442525 -0.09591085  0.00000052 -0.14988830  0.16029188 -0.00128344  0.00728661  0.39618247
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.40948542  0.55266349 -0.00000289 -0.02908171  0.02648097  0.00618135 -0.00104277  0.07570132
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000

   8    1  |1 1>+          0.00387800 -0.00697353  0.00000007 -0.16224248 -0.15256177 -0.01080382  0.10358405 -0.38494243
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00844828 -0.00773351 -0.01827425  0.32686250 -0.29898974  0.00004971 -0.00000006 -0.00000549
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.23970093  0.17771012  0.57448024  0.03802618  0.02087281  0.00001013 -0.00000010 -0.00000024
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.02111774  0.01657218  0.05346095 -0.29689336 -0.32649586 -0.00009221  0.00000114 -0.00000656
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000082 -0.00000083 -0.00000010  0.00004929  0.00001736 -0.21984453  0.00000333  0.00000027
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000027  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00672831 -0.00290606  0.00612747 -0.00003261  0.00100174 -0.00214170  0.00000003  0.00000002

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00094542  0.00046189 -0.00089500 -0.00023641  0.00715387  0.00016701 -0.00000001  0.00000010

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000
                          -0.00210440  0.00091722 -0.00192250  0.00000611 -0.00013764 -0.00690385  0.00000010  0.00000001

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                          -0.00778089 -0.01246110 -0.00000007 -0.05011772  0.00360721 -0.00835494 -0.03340928  0.00840490

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                           0.00223134  0.00620891 -0.00000006  0.25245059  0.00644639 -0.00264987  0.15575787 -0.05526536

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000018 -0.00000001 -0.00000000
                           0.20525745  0.47437209 -0.00000073 -0.00397494  0.03910162 -0.14450705  0.26040768  0.07825176

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000
                           0.03601111  0.08081027 -0.00000016  0.00340912 -0.21939792 -0.02820566  0.06955260 -0.29749337

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000021 -0.00000001 -0.00000000
                          -0.18351423 -0.42342537  0.00000047  0.00134128  0.00293382 -0.16718847  0.27446204  0.04269485

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000039 -0.00000000 -0.00000000
                          -0.19228871  0.08319880  0.40326463  0.00053436 -0.01399810 -0.31680111  0.00000336  0.00000058

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000
                           0.01073233 -0.00670968 -0.02553536 -0.01455644  0.44083798 -0.03866192 -0.00000012  0.00000369

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000038  0.00000000  0.00000000
                          -0.19644751  0.08511127  0.41224329 -0.00142436  0.04099967  0.30750525 -0.00000290  0.00000079

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000033 -0.00000072  0.00000000 -0.21983064 -0.00726357 -0.00004982  0.00000042 -0.00000021

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                          -0.00025854  0.00229058  0.00192068 -0.00100309 -0.00003363  0.00683253 -0.00000011 -0.00000001

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001365 -0.00013920 -0.00014931 -0.00715362 -0.00023628 -0.00099964  0.00000003 -0.00000001

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00084891  0.00735096  0.00619116  0.00013867  0.00000473 -0.00214375  0.00000003  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                           0.02345302  0.00051672  0.00000009  0.01164629 -0.19316957 -0.00571416 -0.07883040  0.64531580

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01131186  0.00384426  0.00000004  0.00370668 -0.16955534  0.00186694 -0.03998128  0.39800989

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000021  0.00000001  0.00000000
                           0.44963245  0.05201456  0.00000111  0.03901162  0.00525575  0.16515810 -0.38185018 -0.05863082

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000
                           0.08795485  0.00799614  0.00000018 -0.21920210 -0.00958589  0.02737647  0.00944794 -0.03978227

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000018 -0.00000001 -0.00000000
                           0.52080920  0.06025033  0.00000173  0.00259842  0.00945785 -0.14711524  0.30301985  0.02872104

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000038  0.00000000  0.00000000
                           0.02437781 -0.21296524  0.41263036  0.01395372  0.00043886  0.30961378 -0.00000562 -0.00000069

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                           0.00324031 -0.02750119  0.05039810 -0.44083116 -0.01456417 -0.01970496  0.00000140 -0.00000020

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000039  0.00000000  0.00000000
                          -0.02394418  0.20639042 -0.40052084 -0.04109500 -0.00138051  0.31649392 -0.00000522 -0.00000050

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000056  0.00000006 -0.00000000  0.00726295 -0.21982631 -0.00001569  0.00000038 -0.00000364

   1    1  |0 0>          -0.00003758  0.00010999 -0.00000000  0.00000002 -0.00000001 -0.00000000  0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000281 -0.00001252 -0.00000002 -0.00000000  0.00000000 -0.00000004  0.00000003  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00207194  0.01627221 -0.00000004  0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00007070  0.00022397  0.00000000 -0.00000001  0.00000004 -0.00000000 -0.00000000  0.00000004
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.01627372 -0.00207050  0.00000008  0.00000000 -0.00000000 -0.00000002  0.00000001  0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000001 -0.00000002 -0.01465012 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000030 -0.00000068 -0.00000000  0.62651389  0.02067140  0.00008192 -0.00000152  0.00000069
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000114 -0.00000112 -0.00000005 -0.00008041 -0.00004745  0.62692173 -0.00000960 -0.00000088
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000078 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000052  0.00000005 -0.00000000 -0.02067156  0.62651695  0.00004477 -0.00000099  0.00000992
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00199663  0.00200144 -0.00000002  0.00000001  0.00000041 -0.00000004 -0.00000015  0.00000202
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00030134  0.00023633  0.00000028 -0.00000003  0.00000005 -0.00000033  0.00000106  0.00000022
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00032202 -0.00212356  0.00000000  0.00000026 -0.00000002 -0.00000003  0.00000010  0.00000015
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |0 0>          -0.35952768  0.05662971  0.00000078  0.00000002 -0.00000005  0.00000003  0.00000015  0.00000056
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |0 0>          -0.05662075 -0.35951733 -0.00000094  0.00000008 -0.00000001  0.00000001 -0.00000015  0.00000005
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+         -0.00000005 -0.00000001  0.00000001 -0.00000002 -0.00000001  0.00073927  0.00218915  0.00018884
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00005818 -0.00030357 -0.00012573
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000011 -0.00000000  0.00000002  0.00000002 -0.00000000  0.00221987 -0.00073841 -0.00005068
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.11729700  0.11679745  0.05917193 -0.01435110  0.01003357  0.00805942  0.00617425 -0.12603986
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.08249443  0.42959694  0.35284107 -0.08292971 -0.00457843  0.00475814  0.03496467 -0.36948865
                           0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.40934434  0.23921559 -0.31424866  0.19364127 -0.09518752  0.13029895  0.14137522  0.01967770
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.05980223  0.04274172 -0.05083436  0.04195189  0.56941364  0.02429627  0.02402414  0.00273904
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.36734166  0.07237554 -0.22013793 -0.43039875  0.02373102  0.14438992 -0.13266897 -0.00403101
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000617 -0.00000561  0.00000632 -0.00000276 -0.00000034  0.42482913  0.39636853  0.03930941
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000081 -0.00000024  0.00000114  0.00000095  0.00000039  0.05092653 -0.02252609 -0.02623057
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000512  0.00000145 -0.00000367 -0.00000766  0.00000000 -0.39552244  0.42331916  0.03345216
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000068 -0.00000027 -0.00000058  0.00000007  0.00000021 -0.00000005  0.00000013 -0.00000066
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00000001 -0.00000001 -0.00000001  0.00000001  0.00000690  0.00024901  0.00076993

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000003  0.00000002 -0.00000007  0.00000000  0.00004765  0.00231324  0.00014770

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000002 -0.00000003 -0.00000004  0.00000001  0.00000000 -0.00001650 -0.00024157  0.00220340

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.26493495 -0.29244035  0.38654499  0.19350440 -0.00391976  0.38428609 -0.01205074 -0.00631238

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.69826867 -0.19427071  0.17237391  0.08561161  0.01461318  0.07626047  0.00024144 -0.00178105

   6    1  |1 0>           0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.07173607 -0.33275823 -0.24049566 -0.05537840 -0.41576188 -0.00511958 -0.02417377 -0.12095137

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.02147056  0.17037548 -0.18514183  0.60623066 -0.07503574  0.01155638  0.19408324 -0.00580548

   8    1  |1 0>           0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.08716082 -0.33299369 -0.30260963  0.06327324  0.39323617 -0.01628069  0.01227120 -0.15453165

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000110 -0.00000474 -0.00000488  0.00000150  0.00000099 -0.00217667 -0.05793550  0.42227987

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000020 -0.00000454  0.00000177 -0.00001012  0.00000023  0.01163564  0.57299226  0.10229957

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000117  0.00000454  0.00000431 -0.00000189  0.00000051  0.00453642  0.08785544 -0.38794225

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000271 -0.00000063  0.00000046  0.00000040  0.00000010  0.00000100  0.00000079  0.00000013

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000003 -0.00000005 -0.00000001  0.00000001 -0.00000000  0.00030824 -0.00020686  0.00221477

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000009 -0.00000005  0.00000007  0.00000003  0.00000000  0.00231913 -0.00002002 -0.00031207

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00000001  0.00000001 -0.00000000 -0.00000001 -0.00004729  0.00005882 -0.00064912

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.05955239  0.07647761 -0.04667282  0.22323497  0.00764530 -0.00074356 -0.25768538 -0.01777530

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.01236801 -0.20358669  0.11942631 -0.48279610  0.00898391  0.00445944  0.29405326  0.02509942

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.01862414 -0.24331479 -0.32686883  0.01500390  0.36532149  0.03551466  0.00945536 -0.13638766

   7    1  |1 1>-         -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.30813428 -0.42214173  0.43169240  0.25319397  0.06896353 -0.19303385 -0.00283816 -0.02407486

   8    1  |1 1>-          0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.05822646  0.28091005  0.22303410 -0.04241825  0.44081269  0.00208462 -0.00288056  0.13934299

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000050 -0.00000496 -0.00000399  0.00000063 -0.00000124 -0.02230970 -0.03700607  0.41280472

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000354 -0.00000730  0.00000923  0.00000470  0.00000010  0.57975976 -0.01007788 -0.02212404

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000078 -0.00000583 -0.00000301  0.00000179  0.00000079  0.05257195 -0.03772070  0.40690465

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000027  0.00000035 -0.00000017  0.00000098 -0.00000014 -0.00000103 -0.00000075 -0.00000016

   1    1  |0 0>          -0.00000003 -0.00000010  0.00000012  0.00000006  0.00000000  0.01728637 -0.00036629  0.00007670
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000001  0.00000010  0.00000008 -0.00000002 -0.00000000  0.00010806  0.00148543 -0.01721405
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000002 -0.00004818  0.00027509  0.00043251
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000001  0.00000005 -0.00000003  0.00000013  0.00000000 -0.00035947 -0.01721998 -0.00148312
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000001  0.00004483 -0.00012191  0.00049205
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000904  0.00000208 -0.00000144 -0.00000104 -0.00000037 -0.00000075 -0.00000042 -0.00000010
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000181 -0.00000009  0.00000090  0.00000000 -0.00000041  0.00000005 -0.00000001 -0.00000049
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000073 -0.00000088  0.00000053 -0.00000228  0.00000041  0.00000050  0.00000102  0.00000016
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000013  0.00000273 -0.00000163  0.00000714 -0.00000001 -0.00620228 -0.29812488 -0.02682038
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000037  0.00000557  0.00000457 -0.00000118 -0.00000004  0.00193855  0.02673337 -0.29798994
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000166 -0.00000488  0.00000625  0.00000318 -0.00000001  0.29937214 -0.00635274  0.00138243
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |0 0>           0.00000004  0.00000004 -0.00000035  0.00000002  0.00000065  0.00035761 -0.00167225  0.00803408
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>           0.00000009 -0.00000010 -0.00000012 -0.00000027 -0.00000075 -0.00073744 -0.00099898  0.00722712
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |1 1>+          0.00026788  0.00025090  0.00508252 -0.00909789  0.00000424  0.00286229 -0.00910178 -0.00001601
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00195775  0.00182089 -0.00053389  0.00137238 -0.00000069 -0.00022370  0.00132868  0.00001603
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00003258 -0.00003964  0.00919866  0.00510653 -0.00000473  0.00919699  0.00286496  0.00000503
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00985163  0.00384825 -0.00045914 -0.00047164  0.01605257  0.00290164  0.00188774  0.04989554
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00824530 -0.01103074 -0.00020131  0.00008183 -0.00546913  0.00094672 -0.00093988  0.14678118
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.04710853  0.05019874 -0.01156522  0.00872356 -0.00008589  0.05030965 -0.05738551 -0.00244366
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.26296091 -0.28276042 -0.00219139  0.00139250  0.00040686  0.00979584 -0.00952902 -0.00052424
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00264015  0.00366232 -0.00882032 -0.01176138 -0.00070084  0.05809393  0.05122402 -0.00266922
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.01631459 -0.01590351  0.27357530 -0.17466667  0.00004707 -0.21818602  0.21281244  0.00043699
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.49010074  0.45572715  0.02482048  0.01985358 -0.00001610 -0.02659330 -0.01348357 -0.00045250
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.04372880  0.04292026 -0.17320051 -0.27304821  0.00019077  0.21139382  0.21795513  0.00037938
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000113 -0.00000143  0.00016992  0.00050088  0.87110655 -0.00000000 -0.00000001 -0.00000164
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00242074  0.00076549 -0.00029856  0.00142621 -0.00311768  0.00000237 -0.00132949 -0.00286388

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00034742 -0.00011322 -0.00212815  0.01019988  0.00023685  0.00000861 -0.00953980  0.00020429

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00082871 -0.00018357  0.00003915 -0.00020280 -0.01004706 -0.00000087  0.00020211 -0.00919634

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00326605  0.00852552 -0.00330040 -0.00033406 -0.00054940  0.15190449  0.00196299  0.00290434

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00093951 -0.00339603  0.01634200  0.00328210 -0.00018360  0.03012690 -0.00063261  0.00093785

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.08868641 -0.28063565 -0.00070572  0.00249098 -0.00953233 -0.00183306  0.01354114  0.05016950

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01545261 -0.04692221  0.00270896 -0.01422954 -0.00185156  0.00303516 -0.07631338  0.00963534

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.07170836  0.24406148  0.00004956  0.00019838 -0.01102659 -0.00699236  0.00087284  0.05824921

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.43737118  0.14773408  0.00205453 -0.01019713 -0.23210787 -0.00001277 -0.01008982  0.21811530

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.02804572 -0.00818360 -0.06601692  0.31635360 -0.02851919 -0.00027663  0.30340314  0.02720363

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.47083833  0.13176257 -0.00609904  0.02957083  0.22528701 -0.00006272  0.02864199 -0.21132999

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000003 -0.00000012  0.85273505  0.17792465 -0.00026864  0.00000026 -0.00000026 -0.00000001

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00024225 -0.00072930 -0.00142606 -0.00029224  0.00994409  0.00133510  0.00001916 -0.00910598

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00001995  0.00004774 -0.01020004 -0.00212903 -0.00144919  0.00953993  0.00000618  0.00132963

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00055799 -0.00252901  0.00019641  0.00003932 -0.00311990 -0.00018485 -0.00000533  0.00285107

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.01333639 -0.00290117  0.00294796 -0.01242821 -0.00036938  0.00173557  0.10203133 -0.00178970

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00562595 -0.00141142  0.00216344 -0.01098186  0.00012986 -0.00055097 -0.11665522  0.00042356

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.25182046 -0.06025169  0.00248156  0.00079177  0.01089115  0.01364341  0.00041247  0.05732503

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.04924591 -0.01118061 -0.01414476 -0.00310841  0.00181346 -0.07629401  0.00340041  0.00952612

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.28300607 -0.06275616  0.00005779  0.00063781 -0.00970267  0.00101398 -0.00411768 -0.05130283

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.11923713 -0.45924411  0.01010797  0.00223026  0.22684388  0.00967712 -0.00041766  0.21314071

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01321209 -0.05919483 -0.31637423 -0.06601933 -0.01426475 -0.30349282 -0.00025427 -0.01346311

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.09272495  0.46443147 -0.02939617 -0.00600961  0.23190847 -0.02825112 -0.00044198  0.21763272

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000010  0.00000003 -0.17792498  0.85273512 -0.00045560 -0.00000004  0.00000107  0.00000000

   1    1  |0 0>           0.00004878 -0.00005285 -0.00000000  0.00000001  0.00000000 -0.00013903 -0.00000013  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00050672 -0.00039972  0.00000000 -0.00000000 -0.00000002 -0.00000001 -0.00000027 -0.00013821
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00026512 -0.01728055 -0.00000000 -0.00000000 -0.00000002  0.00000010  0.00000264  0.00000010
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00007336 -0.00031136  0.00000001  0.00000001  0.00000000  0.00000012 -0.00013822  0.00000027
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.01728059  0.00027536 -0.00000000  0.00000000  0.00000002 -0.00000022 -0.00000018  0.00000027
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000002  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000003  0.00000012 -0.16763845 -0.03496995  0.00006923 -0.00000005 -0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000063  0.00000068 -0.00004951 -0.00010186 -0.17130709  0.00000000  0.00000000  0.00000009
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000009 -0.00000002  0.03497071 -0.16764085  0.00008956 -0.00000002 -0.00000008 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00095404  0.00032012  0.00000072 -0.00000074  0.00000003 -0.00081445  0.88192335  0.00125124
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00847195 -0.00691733  0.00000003 -0.00000002  0.00000084  0.00016808 -0.00125101  0.88192411
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00039879 -0.00070161 -0.00000056  0.00000031  0.00000002  0.88190001  0.00081446 -0.00016688
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |0 0>          -0.29893587  0.01363814 -0.00000003  0.00000004  0.00000073  0.00008049  0.00005250 -0.00081901
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>          -0.01344127 -0.29896206 -0.00000004 -0.00000000 -0.00000062 -0.00004231  0.00004780 -0.00068991
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50

   1    1  |1 1>+         -0.00107539 -0.00110451
                           0.00000000 -0.00000000

   2    1  |1 1>+         -0.00768266 -0.00789361
                          -0.00000000  0.00000000

   3    1  |1 1>+          0.00014719  0.00015262
                           0.00000000  0.00000000

   4    1  |1 1>+          0.00266777 -0.00251216
                          -0.00000000  0.00000000

   5    1  |1 1>+         -0.00080710  0.00103520
                          -0.00000000  0.00000000

   6    1  |1 1>+          0.01953525 -0.01901481
                           0.00000000 -0.00000000

   7    1  |1 1>+         -0.10935839  0.10643706
                          -0.00000000  0.00000000

   8    1  |1 1>+          0.00142156 -0.00139858
                           0.00000000 -0.00000000

   9    1  |1 1>+         -0.00776113 -0.00800608
                          -0.00000000  0.00000000

  10    1  |1 1>+          0.24437411  0.25107546
                           0.00000000 -0.00000000

  11    1  |1 1>+          0.02270442  0.02335962
                           0.00000000  0.00000000

  12    1  |1 1>+         -0.00000029  0.00000011
                          -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000
                           0.01018783 -0.00258539

   2    1  |1 0>           0.00000000 -0.00000000
                          -0.00148769  0.00037803

   3    1  |1 0>           0.00000000 -0.00000000
                          -0.00320585  0.00080318

   4    1  |1 0>          -0.00000000 -0.00000000
                          -0.00098897 -0.00383664

   5    1  |1 0>           0.00000000 -0.00000000
                           0.00031881  0.00126924

   6    1  |1 0>           0.00000000 -0.00000000
                           0.02827375  0.11139393

   7    1  |1 0>           0.00000000 -0.00000000
                           0.00470112  0.01850544

   8    1  |1 0>          -0.00000000  0.00000000
                          -0.02509044 -0.09915050

   9    1  |1 0>           0.00000000 -0.00000000
                          -0.23820174  0.06060663

  10    1  |1 0>          -0.00000000  0.00000000
                           0.01510349 -0.00382293

  11    1  |1 0>           0.00000000 -0.00000000
                          -0.24391367  0.06160970

  12    1  |1 0>           0.00000000  0.00000000
                           0.00000001  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000
                          -0.00090453  0.00316399

   2    1  |1 1>-         -0.00000000 -0.00000000
                           0.00006981 -0.00024515

   3    1  |1 1>-          0.00000000 -0.00000000
                          -0.00288512  0.01022425

   4    1  |1 1>-         -0.00000000  0.00000000
                           0.00557687  0.00157047

   5    1  |1 1>-         -0.00000000  0.00000000
                           0.00181940  0.00051902

   6    1  |1 1>-         -0.00000000  0.00000000
                           0.09678465  0.02737397

   7    1  |1 1>-         -0.00000000  0.00000000
                           0.01888687  0.00533568

   8    1  |1 1>-         -0.00000000  0.00000000
                           0.11186638  0.03157667

   9    1  |1 1>-         -0.00000000  0.00000000
                           0.06861511 -0.24200436

  10    1  |1 1>-         -0.00000000  0.00000000
                           0.00837819 -0.02959959

  11    1  |1 1>-          0.00000000 -0.00000000
                          -0.06620342  0.23523880

  12    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000001  0.00000000

   1    1  |0 0>           0.00000022 -0.00000009
                          -0.00000000  0.00000000

   2    1  |0 0>          -0.00000027 -0.00000012
                           0.00000000 -0.00000000

   3    1  |0 0>           0.00000468 -0.00013755
                           0.00000000 -0.00000000

   4    1  |0 0>           0.00000027 -0.00000262
                           0.00000000 -0.00000000

   5    1  |0 0>          -0.00013765 -0.00000471
                          -0.00000000  0.00000000

   6    1  |0 0>           0.00000002 -0.00000002
                           0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000
                           0.00000000  0.00000000

   8    1  |0 0>          -0.00000002  0.00000003
                          -0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00000000
                           0.00000000  0.00000000

  10    1  |0 0>          -0.00005106 -0.00004710
                          -0.00000000  0.00000000

  11    1  |0 0>           0.00081586  0.00069341
                          -0.00000000  0.00000000

  12    1  |0 0>          -0.00008086  0.00004179
                           0.00000000  0.00000000

  13    1  |0 0>           0.88193297  0.00387675
                           0.00000000 -0.00000000

  14    1  |0 0>          -0.00387759  0.88193624
                          -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.08655808     -0.01278147    -2805.21      0.00000000        0.00      0.0000
     2   1   -214.07898850     -0.00521189    -1143.88      0.00756958     1661.33      0.2060
     3   1   -214.07898847     -0.00521185    -1143.87      0.00756962     1661.34      0.2060
     4   1   -214.07898846     -0.00521184    -1143.87      0.00756963     1661.34      0.2060
     5   1   -214.07093515      0.00284147      623.63      0.01562294     3428.84      0.4251
     6   1   -214.07093511      0.00284150      623.64      0.01562297     3428.85      0.4251
     7   1   -214.07093506      0.00284155      623.65      0.01562302     3428.86      0.4251
     8   1   -214.07093504      0.00284157      623.65      0.01562304     3428.86      0.4251
     9   1   -214.07093503      0.00284158      623.66      0.01562306     3428.86      0.4251
    10   1   -214.04551540      0.02826121     6202.62      0.04104268     9007.83      1.1168
    11   1   -214.04551537      0.02826125     6202.63      0.04104272     9007.84      1.1168
    12   1   -214.04551536      0.02826125     6202.63      0.04104272     9007.84      1.1168
    13   1   -214.04551535      0.02826126     6202.63      0.04104273     9007.84      1.1168
    14   1   -214.04551530      0.02826131     6202.64      0.04104278     9007.85      1.1168
    15   1   -214.00582946      0.06794715    14912.68      0.08072863    17717.89      2.1967
    16   1   -213.89275493      0.18102168    39729.67      0.19380316    42534.88      5.2737
    17   1   -213.89275488      0.18102173    39729.68      0.19380321    42534.89      5.2737
    18   1   -213.89275403      0.18102258    39729.86      0.19380405    42535.07      5.2737
    19   1   -213.88714647      0.18663014    40960.58      0.19941161    43765.79      5.4263
    20   1   -213.88714643      0.18663018    40960.59      0.19941165    43765.80      5.4263
    21   1   -213.88714586      0.18663076    40960.72      0.19941223    43765.93      5.4263
    22   1   -213.88655316      0.18722345    41090.80      0.20000492    43896.01      5.4424
    23   1   -213.88655300      0.18722361    41090.83      0.20000508    43896.04      5.4424
    24   1   -213.88655299      0.18722362    41090.84      0.20000509    43896.04      5.4424
    25   1   -213.88655279      0.18722383    41090.88      0.20000530    43896.09      5.4424
    26   1   -213.88655275      0.18722386    41090.89      0.20000533    43896.10      5.4424
    27   1   -213.88146348      0.19231313    42207.85      0.20509461    45013.06      5.5809
    28   1   -213.87455269      0.19922393    43724.60      0.21200540    46529.81      5.7690
    29   1   -213.87455263      0.19922399    43724.61      0.21200546    46529.82      5.7690
    30   1   -213.87455107      0.19922555    43724.95      0.21200702    46530.16      5.7690
    31   1   -213.87272312      0.20105349    44126.14      0.21383496    46931.35      5.8187
    32   1   -213.87272312      0.20105350    44126.14      0.21383497    46931.35      5.8187
    33   1   -213.87272311      0.20105351    44126.14      0.21383498    46931.35      5.8187
    34   1   -213.87272308      0.20105353    44126.15      0.21383500    46931.36      5.8187
    35   1   -213.87272307      0.20105354    44126.15      0.21383501    46931.36      5.8187
    36   1   -213.87272307      0.20105354    44126.15      0.21383502    46931.36      5.8187
    37   1   -213.87272303      0.20105358    44126.16      0.21383506    46931.37      5.8187
    38   1   -213.87070118      0.20307544    44569.91      0.21585691    47375.12      5.8738
    39   1   -213.87070101      0.20307561    44569.94      0.21585708    47375.15      5.8738
    40   1   -213.87070100      0.20307561    44569.94      0.21585708    47375.15      5.8738
    41   1   -213.87070089      0.20307573    44569.97      0.21585720    47375.18      5.8738
    42   1   -213.87070087      0.20307574    44569.97      0.21585722    47375.18      5.8738
    43   1   -213.86811957      0.20565704    45136.50      0.21843851    47941.71      5.9440
    44   1   -213.86811957      0.20565705    45136.50      0.21843852    47941.71      5.9440
    45   1   -213.86811945      0.20565717    45136.53      0.21843864    47941.74      5.9440
    46   1   -213.86369843      0.21007818    46106.83      0.22285965    48912.04      6.0643
    47   1   -213.86369743      0.21007918    46107.05      0.22286065    48912.26      6.0643
    48   1   -213.86369739      0.21007923    46107.06      0.22286070    48912.27      6.0643
    49   1   -213.86369664      0.21007998    46107.23      0.22286145    48912.43      6.0644
    50   1   -213.86369648      0.21008013    46107.26      0.22286160    48912.47      6.0644

 E0 =   -214.07377661 is the energy of the lowest zeroth-order state
 E1 =   -214.08655808 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.07876732 -0.01140385 -0.01555411  0.69984710 -0.03417026  0.12008272  0.02565972  0.05681993
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.56260793  0.00003525  0.01573736 -0.09766787 -0.09686422  0.76231073 -0.04971780  0.01307769
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.01086762 -0.08082916  0.70198655  0.01617788  0.01133239 -0.01438874  0.12028575  0.66187732
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.00555572 -0.00041336 -0.00016711  0.00031824  0.00034415  0.00467514 -0.00118101
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00000001  0.00187848  0.00026079  0.00009599 -0.00019644  0.00085381  0.01389755 -0.00262351
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000000 -0.00027761  0.00191223  0.00463416  0.00277354  0.00019501 -0.00108212 -0.00346377
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00000000 -0.00020234  0.00039113  0.00079738 -0.01458313 -0.00194275 -0.00015736 -0.00054303
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000000 -0.00025423  0.00469927 -0.00196820  0.00000550  0.00006475 -0.00132420 -0.00640324
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00024940  0.00025965 -0.00170898 -0.00337581 -0.00004190 -0.00005146  0.00035335  0.00147746
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00784017  0.00004088 -0.00036521  0.00005366 -0.00040409  0.00312977 -0.00014980  0.00028995
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.00072960 -0.00035056  0.00334030 -0.00173047 -0.00011122  0.00031568 -0.00038092 -0.00225125
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.01592333 -0.00182656 -0.00030006 -0.00000001 -0.00000000 -0.00000001  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.53695377 -0.20983496  0.00733130 -0.09680521 -0.58906594 -0.43359141  0.22092776 -0.05292878

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.07842935  0.00311589  0.22464671 -0.66314202  0.06345950  0.07682687 -0.02345645 -0.14058726

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.16847024 -0.67024581 -0.08121646  0.00018042  0.18068244  0.17987283  0.62500631 -0.11423913

 16  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00006158  0.00105934  0.00048149  0.00016183 -0.00037577 -0.00239198 -0.01418420

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00071902 -0.00541600 -0.00187861 -0.00008772  0.00008600 -0.00044940 -0.00279535

 18  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000002  0.00329380  0.00014970  0.00093171 -0.00680909  0.00911163  0.00421830 -0.00082501

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00053700  0.00175387 -0.00471740 -0.00088256  0.00137917  0.00083207  0.00115654

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000002  0.00380443  0.00038477  0.00012378  0.00597685 -0.00747648  0.00614102 -0.00052583

 21  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00550353  0.00269203  0.00034729 -0.00006309 -0.00176974 -0.00122940  0.00200771 -0.00032617

 22  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00034849  0.00039950 -0.00116421  0.00358546  0.00002001  0.00015099  0.00021258 -0.00062941

 23  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00562606 -0.00260865 -0.00041184  0.00028380 -0.00180058 -0.00149163 -0.00179841  0.00029868

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00182674 -0.01508672 -0.00510222 -0.00000000  0.00000000  0.00000001  0.00000007

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.16831234  0.67475686 -0.01610941 -0.01868654  0.21040314 -0.04843538  0.64975350 -0.02832156

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.01308428 -0.01716137 -0.66988221 -0.22461579 -0.01320293  0.00536472  0.03041159  0.65918049

 27  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.54254316 -0.20974346 -0.01115787  0.00038008  0.68831934 -0.29698508 -0.17856389  0.01271768

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00006074  0.00131017 -0.00423040 -0.00010988  0.00068667 -0.00031769 -0.00223954

 29  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00012001  0.00127069 -0.00366412  0.00044144 -0.00003696  0.00013952  0.00245877

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000002 -0.00364935 -0.00130355 -0.00026995  0.00368871  0.00928546  0.00466611 -0.00223780

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00119629  0.00466944  0.00153509  0.00074265  0.00185578  0.00214587  0.00684568

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.00335492  0.00025346  0.00024496  0.00434685  0.01004436 -0.00548563  0.00092453

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00563132 -0.00261944 -0.00041510 -0.00008785  0.00208730 -0.00075067  0.00193327 -0.00046301

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00068780 -0.00026359  0.00357313  0.00120508  0.00026868 -0.00009620  0.00038945  0.00264856

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00546606 -0.00273180  0.00002196  0.00006113 -0.00204478  0.00096546  0.00191578 -0.00007662

 36  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00029896 -0.00510228  0.01519394 -0.00000000 -0.00000002  0.00000000  0.00000002

 37  1     1    1  |0 0>        0.00000001 -0.00000003  0.00000111  0.00000029  0.00170430  0.00209732  0.05395470  0.28315882
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00000006  0.00000018  0.00000012  0.00000004  0.00136577 -0.01840524 -0.28935777  0.05330752
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000034 -0.00000012 -0.00000003 -0.00000004  0.23706192 -0.17427384  0.01161391 -0.00585295
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000006 -0.00000002  0.00000041 -0.00000095  0.01448323 -0.00843796  0.00333057  0.06272132
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000049  0.00000011  0.00000007 -0.00000019 -0.17486824 -0.23707902  0.01428623  0.00043650
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.17679839 -0.00000000 -0.00000000 -0.00000000  0.00000010 -0.00000044 -0.00000004 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000000  0.00119934 -0.00989665 -0.00334750 -0.00000000  0.00000000  0.00000000  0.00000004
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000000 -0.01044548 -0.00119916 -0.00019716 -0.00000001 -0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00019617 -0.00334756  0.00996710 -0.00000000 -0.00000001  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000001  0.00000001 -0.00029213  0.00016393 -0.00006436 -0.00189181
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00000000 -0.00000005 -0.00000001 -0.00000000 -0.00004514  0.00054467  0.00868944 -0.00159566
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00000000  0.00000000 -0.00000005 -0.00000001 -0.00003838 -0.00005595 -0.00162211 -0.00850361
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.00000009 -0.00000000 -0.00000000  0.00000001  0.00546040  0.00696088 -0.00040694 -0.00000355
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00000005  0.00000000  0.00000000  0.00000000 -0.00696655  0.00544587 -0.00036363  0.00013373
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.66312545  0.00157735 -0.04982775  0.20056450  0.02291408  0.02467681  0.01416376  0.00032667
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.11074916  0.00075183  0.00368142 -0.02921529  0.16181770  0.17536662  0.10116731 -0.00002690
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.05878598  0.00156575 -0.20264770 -0.04985564 -0.00240309 -0.00340936 -0.00195419  0.00097517
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00002583 -0.00464880 -0.00032391 -0.00014525 -0.00023412  0.00024151 -0.00000000  0.01615340
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00056594 -0.01367974 -0.00020709  0.00013405  0.00013622 -0.00005278  0.00000000  0.00513918
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00636011  0.00028183 -0.00436043  0.00562269 -0.00185044  0.00172658  0.00000000  0.28437465
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00151987  0.00007427 -0.00082053  0.00094380  0.01045621 -0.00964534 -0.00000001  0.05527500
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00365165  0.00028716 -0.00569330 -0.00443777 -0.00011869  0.00012346  0.00000000  0.31430380
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00229597  0.00006708 -0.00469093  0.00516789 -0.00015405 -0.00018429 -0.00022723 -0.01950045
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00013543  0.00003539 -0.00060656 -0.00027757  0.00544379  0.00589688  0.00714339 -0.00230353
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00150914 -0.00002021  0.00513622  0.00468749  0.00048933  0.00055138  0.00066476  0.01808693
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00013761
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.07419763  0.06133037  0.00147286  0.02862983 -0.22239203  0.04995431  0.09655374 -0.00000297

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.65494062 -0.00380175  0.01244179  0.20631523  0.03250032 -0.00718010 -0.01410304 -0.00002307

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.03124041  0.19946523  0.00181597 -0.00499193  0.06904681 -0.01615683 -0.03029387  0.00000128

 16  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00292819 -0.00013818 -0.01414669  0.00067754  0.00013415  0.00036215 -0.00000000  0.09606871

 17  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00068486 -0.00006166 -0.00280037  0.00022971 -0.00001617 -0.00011844 -0.00000000 -0.48444158

 18  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00079459 -0.00472242  0.00004187 -0.00124804 -0.00233908 -0.01043551  0.00000000  0.00667270

 19  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00734813 -0.00088488  0.00013989  0.00712127 -0.00038582 -0.00172837  0.00000000 -0.00219845

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00037024 -0.00539828  0.00060456 -0.00011162  0.00211255  0.00931663 -0.00000000 -0.00283160

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00018329  0.00497467  0.00001163 -0.00024410 -0.00551150  0.00122712  0.00501440 -0.00003526

 22  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00266859  0.00064129  0.00042257  0.00693352  0.00034692 -0.00007562 -0.00031752  0.00059932

 23  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00028169 -0.00485743 -0.00002567  0.00067096 -0.00560090  0.00127710  0.00512605  0.00007159

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.16224821

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00631593  0.19742319 -0.02702721  0.00078383  0.02067884 -0.06860143  0.03026554 -0.00014340

 26  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.14397414 -0.02687681 -0.20655736  0.01249731 -0.00079510  0.00537906 -0.00235280 -0.00101826

 27  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.03044995 -0.06218212  0.00366521  0.00017687  0.06862732 -0.21958653  0.09755870  0.00001993

 28  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00958820  0.00014229 -0.00073945 -0.00948323 -0.00051783 -0.00016693  0.00000000 -0.01849820

 29  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01099029 -0.00001411  0.00071071  0.01085059 -0.00016598 -0.00004557  0.00000000 -0.00372727

 30  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00045944 -0.00537742 -0.00135269  0.00006072 -0.00892246 -0.00277404  0.00000001 -0.07475329

 31  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00184856 -0.00096373  0.00706480 -0.00074431 -0.00176809 -0.00054223  0.00000000  0.42078034

 32  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00029772  0.00473009 -0.00006482  0.00038112 -0.01036433 -0.00323363  0.00000001 -0.00535046

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000322  0.00486913  0.00027065 -0.00003474  0.00169680 -0.00551362  0.00513086 -0.00082907

 34  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00059344 -0.00024492 -0.00693841  0.00041735  0.00023589 -0.00067088  0.00062668  0.02656032

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00009098  0.00499877 -0.00060630  0.00001127 -0.00167785  0.00533022 -0.00498028  0.00248789

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000006 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00367279

 37  1     1    1  |0 0>        0.06238336 -0.00890478  0.95345490 -0.05711772 -0.00496332  0.00050770  0.00000000  0.00000003
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00888079  0.95517243  0.00885049 -0.00099846 -0.00222259 -0.00203710  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.01590448  0.00189649 -0.00191616 -0.01877787 -0.05789127  0.95327268  0.00000000 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.28768569  0.00050252  0.05709340  0.95332380 -0.00215096  0.01876199 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00158937  0.00229656  0.00499646  0.00071086  0.95344331  0.05792095 -0.00000003 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000010 -0.00000001 -0.00000000  0.00000002  0.00000004 -0.00000005  0.98413805 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.60170753
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00045268
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.01359325
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00864545  0.00001435  0.00022100  0.00368734  0.00000055  0.00000222 -0.00000000  0.00000006
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00029633  0.00369375  0.00003404 -0.00001640 -0.00001236 -0.00000824  0.00000000 -0.00000002
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00187308 -0.00003501  0.00368750 -0.00022087 -0.00001349 -0.00000023  0.00000000 -0.00000035
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00004871  0.00001248  0.00001354 -0.00000148  0.00369219  0.00011448 -0.00000002  0.00000002
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00031210  0.00000785 -0.00000025 -0.00000223 -0.00011450  0.00369222  0.00000002  0.00000007
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.00096498 -0.00000088  0.00326643 -0.00808329 -0.00000306  0.00193879  0.00635606 -0.00039552
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00014142  0.00000015 -0.00029952  0.00119498  0.00000050 -0.00012652 -0.00086761  0.00004363
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00032716  0.00000122  0.00816949  0.00327578  0.00000353  0.00642440 -0.00194173  0.00000747
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.01185583 -0.46704690 -0.00919641 -0.00751128  0.28259645  0.01685148  0.00401849  0.22469277
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00367845  0.15914624 -0.00328595  0.00197036 -0.09627681  0.01483690  0.04068978  0.65997581
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001

  6  1     6    1  |1 1>+      -0.31052931  0.00229267 -0.18266947  0.17772826 -0.00142542  0.22474573  0.25954308 -0.02895931
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.05137431 -0.01188224 -0.03518828  0.02912283  0.00718760  0.04019256  0.04227758 -0.00540402
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.28944517  0.02125154 -0.17984169 -0.18587397 -0.01262047  0.26367385 -0.22894042 -0.00366312
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.01821197  0.00000519 -0.34144363  0.28390558  0.00005269 -0.18405093 -0.18236083  0.01337729
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00123327 -0.00000345 -0.03708727 -0.02270047 -0.00001979 -0.02355295  0.00902443  0.00017471
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.01947813  0.00003866  0.28182450  0.34097663  0.00023053  0.18157126 -0.18402222  0.00761384
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.00019368  0.16226261 -0.00009874 -0.00019445  0.40774408  0.00000019 -0.00000085 -0.00000815
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00014293 -0.00030411 -0.00009722  0.00121769 -0.00260714 -0.00001638  0.00079517 -0.00203358

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00101826  0.00002485 -0.00069900  0.00868868  0.00020670 -0.00005553  0.00664765 -0.00022458

 15  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00001850 -0.00098084  0.00001554 -0.00016383 -0.00840572 -0.00010949 -0.00048738 -0.00639271

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00793878  0.01608281 -0.05833465  0.00143933 -0.00970086  0.68474659 -0.00238340  0.00217171

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00733732  0.00477477  0.29248095  0.02132344 -0.00306179  0.13574364  0.00414752  0.00182837

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.07540843  0.27722459 -0.00675068  0.04520490 -0.16775739 -0.00659521 -0.05219366  0.23040853

 19  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.42094225  0.05459490  0.01598827 -0.25430533 -0.03284524  0.01082028  0.34519858  0.02443274

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00596111  0.32082029  0.00139806  0.00355277 -0.19410711 -0.02498999  0.01353701  0.26165551

 21  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00082211  0.01906036 -0.00120487  0.01386850  0.31761383  0.00225576  0.01937639  0.18467344

 22  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.02656242  0.00229667  0.03544445 -0.44074571  0.03859019  0.00253055 -0.25670234  0.03734031

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00244959 -0.01850299  0.00337411 -0.04086679 -0.30830412 -0.00338460 -0.03368319 -0.17859049

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00367272  0.00014204  0.40637877  0.03269115  0.00011398  0.00000020 -0.00000058  0.00000034

 25  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000438  0.00097055 -0.00121845 -0.00010183  0.00831849  0.00081481 -0.00036624 -0.00634632

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002289 -0.00014267 -0.00868842 -0.00069839 -0.00121752  0.00666144  0.00010200  0.00081491

 27  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000081 -0.00030453  0.00016848  0.00001475 -0.00260998 -0.00013954  0.00007677  0.00199591

 28  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.37080773  0.01136700  0.02410330 -0.22343307 -0.00672046  0.01188224 -0.45953800  0.01713753

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.32535766 -0.00322199  0.01359816 -0.19646511  0.00209265 -0.00723696  0.52483282 -0.02691008

 30  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00895093 -0.31699180  0.04496280  0.00816150  0.19176543  0.06573653  0.01021030  0.25799983

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.01407863 -0.05225808 -0.25376023 -0.02315527  0.03177249 -0.34286428 -0.01626461  0.04959122

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.01840917  0.28228720  0.00250042  0.01117939 -0.17080948  0.00079394  0.00274399 -0.23064150

 33  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000309 -0.01862693 -0.01394477 -0.00097969 -0.31039650  0.01239070  0.01144457  0.18074230

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00059993  0.00120269  0.44071794  0.03544479  0.01977830 -0.25838521 -0.00240540 -0.00721494

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00007869 -0.01903868  0.04109054  0.00345079 -0.31729100 -0.02227089  0.00939549  0.18569431

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.16224664  0.00019063 -0.03269132  0.40638124  0.00018585  0.00000042 -0.00000536 -0.00000002

 37  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000003 -0.00000001 -0.00000001  0.01640201  0.00011925 -0.00027139
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000000  0.00000002 -0.00000001  0.00000001  0.00000030  0.00026479  0.00087133  0.01637997
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000000  0.00000001  0.00000003  0.00000000  0.00000002 -0.00010588  0.00021283  0.00000247
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000002  0.00000000 -0.00000000 -0.00000022 -0.00000002  0.00013182 -0.01638000  0.00086938
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000000 -0.00000001  0.00000001 -0.00000002 -0.00000003  0.00005189 -0.00009813  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.01359302  0.00046893  0.46259776  0.03719218  0.00008518 -0.00000038 -0.00000085  0.00000036
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00071706  0.60175260 -0.00006805 -0.00021783  0.46411793  0.00000017 -0.00000081 -0.00000805
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.60170186  0.00070691 -0.03719247  0.46259968  0.00021149  0.00000053 -0.00000459 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00000049 -0.00000004  0.00000018  0.00000419  0.00000036 -0.00298716  0.36337553 -0.02051694
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 47  1    11    1  |0 0>        0.00000004  0.00000017  0.00000030 -0.00000026 -0.00000628 -0.00592069 -0.02056692 -0.36334664
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00000005 -0.00000003  0.00000017  0.00000025  0.00000028 -0.36392919 -0.00263864  0.00607854
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.00000005  0.00000008 -0.00000023  0.00000049  0.00000077 -0.00066614  0.00163868 -0.00034322
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000002 -0.00000008 -0.00000069  0.00000010 -0.00000050  0.00202368  0.00228287 -0.00044297
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.00083000 -0.00059379  0.00089885  0.00236577 -0.00675700 -0.00000000  0.00000001 -0.00000012
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00616905 -0.00457924  0.00642019 -0.00019933  0.00099179  0.00000003 -0.00000000  0.00000002
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00010232  0.00011470 -0.00012402  0.00682792  0.00237013  0.00000172 -0.00000002  0.00000005
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00957798 -0.01335559 -0.00000020 -0.00820592 -0.00599295  0.24341392  0.72952918  0.09317629
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000030  0.00000003  0.00000000

  5  1     5    1  |1 1>+      -0.00406391  0.00438291 -0.00000059 -0.00274907  0.00179583 -0.08294052 -0.19523044 -0.01354313
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000010 -0.00000001 -0.00000000

  6  1     6    1  |1 1>+       0.07442525 -0.09591085  0.00000052 -0.14988830  0.16029188 -0.00128344  0.00728661  0.39618247
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.40948542  0.55266349 -0.00000289 -0.02908171  0.02648097  0.00618135 -0.00104277  0.07570132
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00387800 -0.00697353  0.00000007 -0.16224248 -0.15256177 -0.01080382  0.10358405 -0.38494243
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00844828 -0.00773351 -0.01827425  0.32686250 -0.29898974  0.00004971 -0.00000006 -0.00000549
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.23970093  0.17771012  0.57448024  0.03802618  0.02087281  0.00001013 -0.00000010 -0.00000024
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.02111774  0.01657218  0.05346095 -0.29689336 -0.32649586 -0.00009221  0.00000114 -0.00000656
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000082 -0.00000083 -0.00000010  0.00004929  0.00001736 -0.21984453  0.00000333  0.00000027
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000027  0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00672831 -0.00290606  0.00612747 -0.00003261  0.00100174 -0.00214170  0.00000003  0.00000002

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00094542  0.00046189 -0.00089500 -0.00023641  0.00715387  0.00016701 -0.00000001  0.00000010

 15  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000
                               -0.00210440  0.00091722 -0.00192250  0.00000611 -0.00013764 -0.00690385  0.00000010  0.00000001

 16  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                               -0.00778089 -0.01246110 -0.00000007 -0.05011772  0.00360721 -0.00835494 -0.03340928  0.00840490

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                                0.00223134  0.00620891 -0.00000006  0.25245059  0.00644639 -0.00264987  0.15575787 -0.05526536

 18  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000018 -0.00000001 -0.00000000
                                0.20525745  0.47437209 -0.00000073 -0.00397494  0.03910162 -0.14450705  0.26040768  0.07825176

 19  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000
                                0.03601111  0.08081027 -0.00000016  0.00340912 -0.21939792 -0.02820566  0.06955260 -0.29749337

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000021 -0.00000001 -0.00000000
                               -0.18351423 -0.42342537  0.00000047  0.00134128  0.00293382 -0.16718847  0.27446204  0.04269485

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000039 -0.00000000 -0.00000000
                               -0.19228871  0.08319880  0.40326463  0.00053436 -0.01399810 -0.31680111  0.00000336  0.00000058

 22  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000
                                0.01073233 -0.00670968 -0.02553536 -0.01455644  0.44083798 -0.03866192 -0.00000012  0.00000369

 23  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000038  0.00000000  0.00000000
                               -0.19644751  0.08511127  0.41224329 -0.00142436  0.04099967  0.30750525 -0.00000290  0.00000079

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000033 -0.00000072  0.00000000 -0.21983064 -0.00726357 -0.00004982  0.00000042 -0.00000021

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                               -0.00025854  0.00229058  0.00192068 -0.00100309 -0.00003363  0.00683253 -0.00000011 -0.00000001

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001365 -0.00013920 -0.00014931 -0.00715362 -0.00023628 -0.00099964  0.00000003 -0.00000001

 27  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00084891  0.00735096  0.00619116  0.00013867  0.00000473 -0.00214375  0.00000003  0.00000000

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                                0.02345302  0.00051672  0.00000009  0.01164629 -0.19316957 -0.00571416 -0.07883040  0.64531580

 29  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01131186  0.00384426  0.00000004  0.00370668 -0.16955534  0.00186694 -0.03998128  0.39800989

 30  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000021  0.00000001  0.00000000
                                0.44963245  0.05201456  0.00000111  0.03901162  0.00525575  0.16515810 -0.38185018 -0.05863082

 31  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000
                                0.08795485  0.00799614  0.00000018 -0.21920210 -0.00958589  0.02737647  0.00944794 -0.03978227

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000018 -0.00000001 -0.00000000
                                0.52080920  0.06025033  0.00000173  0.00259842  0.00945785 -0.14711524  0.30301985  0.02872104

 33  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000038  0.00000000  0.00000000
                                0.02437781 -0.21296524  0.41263036  0.01395372  0.00043886  0.30961378 -0.00000562 -0.00000069

 34  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                                0.00324031 -0.02750119  0.05039810 -0.44083116 -0.01456417 -0.01970496  0.00000140 -0.00000020

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000039  0.00000000  0.00000000
                               -0.02394418  0.20639042 -0.40052084 -0.04109500 -0.00138051  0.31649392 -0.00000522 -0.00000050

 36  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000056  0.00000006 -0.00000000  0.00726295 -0.21982631 -0.00001569  0.00000038 -0.00000364

 37  1     1    1  |0 0>       -0.00003758  0.00010999 -0.00000000  0.00000002 -0.00000001 -0.00000000  0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00000281 -0.00001252 -0.00000002 -0.00000000  0.00000000 -0.00000004  0.00000003  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00207194  0.01627221 -0.00000004  0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00007070  0.00022397  0.00000000 -0.00000001  0.00000004 -0.00000000 -0.00000000  0.00000004
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>        0.01627372 -0.00207050  0.00000008  0.00000000 -0.00000000 -0.00000002  0.00000001  0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000001 -0.00000002 -0.01465012 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000030 -0.00000068 -0.00000000  0.62651389  0.02067140  0.00008192 -0.00000152  0.00000069
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000114 -0.00000112 -0.00000005 -0.00008041 -0.00004745  0.62692173 -0.00000960 -0.00000088
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000078 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000052  0.00000005 -0.00000000 -0.02067156  0.62651695  0.00004477 -0.00000099  0.00000992
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00199663  0.00200144 -0.00000002  0.00000001  0.00000041 -0.00000004 -0.00000015  0.00000202
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00030134  0.00023633  0.00000028 -0.00000003  0.00000005 -0.00000033  0.00000106  0.00000022
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00032202 -0.00212356  0.00000000  0.00000026 -0.00000002 -0.00000003  0.00000010  0.00000015
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.35952768  0.05662971  0.00000078  0.00000002 -0.00000005  0.00000003  0.00000015  0.00000056
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.05662075 -0.35951733 -0.00000094  0.00000008 -0.00000001  0.00000001 -0.00000015  0.00000005
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+      -0.00000005 -0.00000001  0.00000001 -0.00000002 -0.00000001  0.00073927  0.00218915  0.00018884
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00005818 -0.00030357 -0.00012573
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000011 -0.00000000  0.00000002  0.00000002 -0.00000000  0.00221987 -0.00073841 -0.00005068
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.11729700  0.11679745  0.05917193 -0.01435110  0.01003357  0.00805942  0.00617425 -0.12603986
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.08249443  0.42959694  0.35284107 -0.08292971 -0.00457843  0.00475814  0.03496467 -0.36948865
                                0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.40934434  0.23921559 -0.31424866  0.19364127 -0.09518752  0.13029895  0.14137522  0.01967770
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.05980223  0.04274172 -0.05083436  0.04195189  0.56941364  0.02429627  0.02402414  0.00273904
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.36734166  0.07237554 -0.22013793 -0.43039875  0.02373102  0.14438992 -0.13266897 -0.00403101
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000617 -0.00000561  0.00000632 -0.00000276 -0.00000034  0.42482913  0.39636853  0.03930941
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00000081 -0.00000024  0.00000114  0.00000095  0.00000039  0.05092653 -0.02252609 -0.02623057
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00000512  0.00000145 -0.00000367 -0.00000766  0.00000000 -0.39552244  0.42331916  0.03345216
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000068 -0.00000027 -0.00000058  0.00000007  0.00000021 -0.00000005  0.00000013 -0.00000066
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00000001 -0.00000001 -0.00000001  0.00000001  0.00000690  0.00024901  0.00076993

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000003  0.00000002 -0.00000007  0.00000000  0.00004765  0.00231324  0.00014770

 15  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000002 -0.00000003 -0.00000004  0.00000001  0.00000000 -0.00001650 -0.00024157  0.00220340

 16  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.26493495 -0.29244035  0.38654499  0.19350440 -0.00391976  0.38428609 -0.01205074 -0.00631238

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.69826867 -0.19427071  0.17237391  0.08561161  0.01461318  0.07626047  0.00024144 -0.00178105

 18  1     6    1  |1 0>        0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.07173607 -0.33275823 -0.24049566 -0.05537840 -0.41576188 -0.00511958 -0.02417377 -0.12095137

 19  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.02147056  0.17037548 -0.18514183  0.60623066 -0.07503574  0.01155638  0.19408324 -0.00580548

 20  1     8    1  |1 0>        0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.08716082 -0.33299369 -0.30260963  0.06327324  0.39323617 -0.01628069  0.01227120 -0.15453165

 21  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000110 -0.00000474 -0.00000488  0.00000150  0.00000099 -0.00217667 -0.05793550  0.42227987

 22  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000020 -0.00000454  0.00000177 -0.00001012  0.00000023  0.01163564  0.57299226  0.10229957

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000117  0.00000454  0.00000431 -0.00000189  0.00000051  0.00453642  0.08785544 -0.38794225

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000271 -0.00000063  0.00000046  0.00000040  0.00000010  0.00000100  0.00000079  0.00000013

 25  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000003 -0.00000005 -0.00000001  0.00000001 -0.00000000  0.00030824 -0.00020686  0.00221477

 26  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000009 -0.00000005  0.00000007  0.00000003  0.00000000  0.00231913 -0.00002002 -0.00031207

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00000001  0.00000001 -0.00000000 -0.00000001 -0.00004729  0.00005882 -0.00064912

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.05955239  0.07647761 -0.04667282  0.22323497  0.00764530 -0.00074356 -0.25768538 -0.01777530

 29  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.01236801 -0.20358669  0.11942631 -0.48279610  0.00898391  0.00445944  0.29405326  0.02509942

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.01862414 -0.24331479 -0.32686883  0.01500390  0.36532149  0.03551466  0.00945536 -0.13638766

 31  1     7    1  |1 1>-      -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.30813428 -0.42214173  0.43169240  0.25319397  0.06896353 -0.19303385 -0.00283816 -0.02407486

 32  1     8    1  |1 1>-       0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.05822646  0.28091005  0.22303410 -0.04241825  0.44081269  0.00208462 -0.00288056  0.13934299

 33  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000050 -0.00000496 -0.00000399  0.00000063 -0.00000124 -0.02230970 -0.03700607  0.41280472

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000354 -0.00000730  0.00000923  0.00000470  0.00000010  0.57975976 -0.01007788 -0.02212404

 35  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000078 -0.00000583 -0.00000301  0.00000179  0.00000079  0.05257195 -0.03772070  0.40690465

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000027  0.00000035 -0.00000017  0.00000098 -0.00000014 -0.00000103 -0.00000075 -0.00000016

 37  1     1    1  |0 0>       -0.00000003 -0.00000010  0.00000012  0.00000006  0.00000000  0.01728637 -0.00036629  0.00007670
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000001  0.00000010  0.00000008 -0.00000002 -0.00000000  0.00010806  0.00148543 -0.01721405
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000002 -0.00004818  0.00027509  0.00043251
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00000001  0.00000005 -0.00000003  0.00000013  0.00000000 -0.00035947 -0.01721998 -0.00148312
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000001  0.00004483 -0.00012191  0.00049205
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000904  0.00000208 -0.00000144 -0.00000104 -0.00000037 -0.00000075 -0.00000042 -0.00000010
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000181 -0.00000009  0.00000090  0.00000000 -0.00000041  0.00000005 -0.00000001 -0.00000049
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000073 -0.00000088  0.00000053 -0.00000228  0.00000041  0.00000050  0.00000102  0.00000016
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1    10    1  |0 0>        0.00000013  0.00000273 -0.00000163  0.00000714 -0.00000001 -0.00620228 -0.29812488 -0.02682038
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00000037  0.00000557  0.00000457 -0.00000118 -0.00000004  0.00193855  0.02673337 -0.29798994
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>       -0.00000166 -0.00000488  0.00000625  0.00000318 -0.00000001  0.29937214 -0.00635274  0.00138243
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00000004  0.00000004 -0.00000035  0.00000002  0.00000065  0.00035761 -0.00167225  0.00803408
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00000009 -0.00000010 -0.00000012 -0.00000027 -0.00000075 -0.00073744 -0.00099898  0.00722712
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |1 1>+       0.00026788  0.00025090  0.00508252 -0.00909789  0.00000424  0.00286229 -0.00910178 -0.00001601
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00195775  0.00182089 -0.00053389  0.00137238 -0.00000069 -0.00022370  0.00132868  0.00001603
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00003258 -0.00003964  0.00919866  0.00510653 -0.00000473  0.00919699  0.00286496  0.00000503
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00985163  0.00384825 -0.00045914 -0.00047164  0.01605257  0.00290164  0.00188774  0.04989554
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00824530 -0.01103074 -0.00020131  0.00008183 -0.00546913  0.00094672 -0.00093988  0.14678118
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.04710853  0.05019874 -0.01156522  0.00872356 -0.00008589  0.05030965 -0.05738551 -0.00244366
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.26296091 -0.28276042 -0.00219139  0.00139250  0.00040686  0.00979584 -0.00952902 -0.00052424
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00264015  0.00366232 -0.00882032 -0.01176138 -0.00070084  0.05809393  0.05122402 -0.00266922
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.01631459 -0.01590351  0.27357530 -0.17466667  0.00004707 -0.21818602  0.21281244  0.00043699
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.49010074  0.45572715  0.02482048  0.01985358 -0.00001610 -0.02659330 -0.01348357 -0.00045250
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.04372880  0.04292026 -0.17320051 -0.27304821  0.00019077  0.21139382  0.21795513  0.00037938
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000113 -0.00000143  0.00016992  0.00050088  0.87110655 -0.00000000 -0.00000001 -0.00000164
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00242074  0.00076549 -0.00029856  0.00142621 -0.00311768  0.00000237 -0.00132949 -0.00286388

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00034742 -0.00011322 -0.00212815  0.01019988  0.00023685  0.00000861 -0.00953980  0.00020429

 15  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00082871 -0.00018357  0.00003915 -0.00020280 -0.01004706 -0.00000087  0.00020211 -0.00919634

 16  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00326605  0.00852552 -0.00330040 -0.00033406 -0.00054940  0.15190449  0.00196299  0.00290434

 17  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00093951 -0.00339603  0.01634200  0.00328210 -0.00018360  0.03012690 -0.00063261  0.00093785

 18  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.08868641 -0.28063565 -0.00070572  0.00249098 -0.00953233 -0.00183306  0.01354114  0.05016950

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01545261 -0.04692221  0.00270896 -0.01422954 -0.00185156  0.00303516 -0.07631338  0.00963534

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.07170836  0.24406148  0.00004956  0.00019838 -0.01102659 -0.00699236  0.00087284  0.05824921

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.43737118  0.14773408  0.00205453 -0.01019713 -0.23210787 -0.00001277 -0.01008982  0.21811530

 22  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.02804572 -0.00818360 -0.06601692  0.31635360 -0.02851919 -0.00027663  0.30340314  0.02720363

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.47083833  0.13176257 -0.00609904  0.02957083  0.22528701 -0.00006272  0.02864199 -0.21132999

 24  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000003 -0.00000012  0.85273505  0.17792465 -0.00026864  0.00000026 -0.00000026 -0.00000001

 25  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00024225 -0.00072930 -0.00142606 -0.00029224  0.00994409  0.00133510  0.00001916 -0.00910598

 26  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00001995  0.00004774 -0.01020004 -0.00212903 -0.00144919  0.00953993  0.00000618  0.00132963

 27  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00055799 -0.00252901  0.00019641  0.00003932 -0.00311990 -0.00018485 -0.00000533  0.00285107

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.01333639 -0.00290117  0.00294796 -0.01242821 -0.00036938  0.00173557  0.10203133 -0.00178970

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00562595 -0.00141142  0.00216344 -0.01098186  0.00012986 -0.00055097 -0.11665522  0.00042356

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.25182046 -0.06025169  0.00248156  0.00079177  0.01089115  0.01364341  0.00041247  0.05732503

 31  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.04924591 -0.01118061 -0.01414476 -0.00310841  0.00181346 -0.07629401  0.00340041  0.00952612

 32  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.28300607 -0.06275616  0.00005779  0.00063781 -0.00970267  0.00101398 -0.00411768 -0.05130283

 33  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.11923713 -0.45924411  0.01010797  0.00223026  0.22684388  0.00967712 -0.00041766  0.21314071

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01321209 -0.05919483 -0.31637423 -0.06601933 -0.01426475 -0.30349282 -0.00025427 -0.01346311

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.09272495  0.46443147 -0.02939617 -0.00600961  0.23190847 -0.02825112 -0.00044198  0.21763272

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000010  0.00000003 -0.17792498  0.85273512 -0.00045560 -0.00000004  0.00000107  0.00000000

 37  1     1    1  |0 0>        0.00004878 -0.00005285 -0.00000000  0.00000001  0.00000000 -0.00013903 -0.00000013  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00050672 -0.00039972  0.00000000 -0.00000000 -0.00000002 -0.00000001 -0.00000027 -0.00013821
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00026512 -0.01728055 -0.00000000 -0.00000000 -0.00000002  0.00000010  0.00000264  0.00000010
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00007336 -0.00031136  0.00000001  0.00000001  0.00000000  0.00000012 -0.00013822  0.00000027
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.01728059  0.00027536 -0.00000000  0.00000000  0.00000002 -0.00000022 -0.00000018  0.00000027
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000002  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000003  0.00000012 -0.16763845 -0.03496995  0.00006923 -0.00000005 -0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000063  0.00000068 -0.00004951 -0.00010186 -0.17130709  0.00000000  0.00000000  0.00000009
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000009 -0.00000002  0.03497071 -0.16764085  0.00008956 -0.00000002 -0.00000008 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00095404  0.00032012  0.00000072 -0.00000074  0.00000003 -0.00081445  0.88192335  0.00125124
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00847195 -0.00691733  0.00000003 -0.00000002  0.00000084  0.00016808 -0.00125101  0.88192411
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00039879 -0.00070161 -0.00000056  0.00000031  0.00000002  0.88190001  0.00081446 -0.00016688
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.29893587  0.01363814 -0.00000003  0.00000004  0.00000073  0.00008049  0.00005250 -0.00081901
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.01344127 -0.29896206 -0.00000004 -0.00000000 -0.00000062 -0.00004231  0.00004780 -0.00068991
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50

  1  1     1    1  |1 1>+      -0.00107539 -0.00110451
                                0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00768266 -0.00789361
                               -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00014719  0.00015262
                                0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00266777 -0.00251216
                               -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00080710  0.00103520
                               -0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.01953525 -0.01901481
                                0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.10935839  0.10643706
                               -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00142156 -0.00139858
                                0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00776113 -0.00800608
                               -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.24437411  0.25107546
                                0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.02270442  0.02335962
                                0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000029  0.00000011
                               -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000
                                0.01018783 -0.00258539

 14  1     2    1  |1 0>        0.00000000 -0.00000000
                               -0.00148769  0.00037803

 15  1     3    1  |1 0>        0.00000000 -0.00000000
                               -0.00320585  0.00080318

 16  1     4    1  |1 0>       -0.00000000 -0.00000000
                               -0.00098897 -0.00383664

 17  1     5    1  |1 0>        0.00000000 -0.00000000
                                0.00031881  0.00126924

 18  1     6    1  |1 0>        0.00000000 -0.00000000
                                0.02827375  0.11139393

 19  1     7    1  |1 0>        0.00000000 -0.00000000
                                0.00470112  0.01850544

 20  1     8    1  |1 0>       -0.00000000  0.00000000
                               -0.02509044 -0.09915050

 21  1     9    1  |1 0>        0.00000000 -0.00000000
                               -0.23820174  0.06060663

 22  1    10    1  |1 0>       -0.00000000  0.00000000
                                0.01510349 -0.00382293

 23  1    11    1  |1 0>        0.00000000 -0.00000000
                               -0.24391367  0.06160970

 24  1    12    1  |1 0>        0.00000000  0.00000000
                                0.00000001  0.00000000

 25  1     1    1  |1 1>-       0.00000000 -0.00000000
                               -0.00090453  0.00316399

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000
                                0.00006981 -0.00024515

 27  1     3    1  |1 1>-       0.00000000 -0.00000000
                               -0.00288512  0.01022425

 28  1     4    1  |1 1>-      -0.00000000  0.00000000
                                0.00557687  0.00157047

 29  1     5    1  |1 1>-      -0.00000000  0.00000000
                                0.00181940  0.00051902

 30  1     6    1  |1 1>-      -0.00000000  0.00000000
                                0.09678465  0.02737397

 31  1     7    1  |1 1>-      -0.00000000  0.00000000
                                0.01888687  0.00533568

 32  1     8    1  |1 1>-      -0.00000000  0.00000000
                                0.11186638  0.03157667

 33  1     9    1  |1 1>-      -0.00000000  0.00000000
                                0.06861511 -0.24200436

 34  1    10    1  |1 1>-      -0.00000000  0.00000000
                                0.00837819 -0.02959959

 35  1    11    1  |1 1>-       0.00000000 -0.00000000
                               -0.06620342  0.23523880

 36  1    12    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000001  0.00000000

 37  1     1    1  |0 0>        0.00000022 -0.00000009
                               -0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000027 -0.00000012
                                0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00000468 -0.00013755
                                0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00000027 -0.00000262
                                0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00013765 -0.00000471
                               -0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000002 -0.00000002
                                0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000 -0.00000000
                                0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000002  0.00000003
                               -0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000 -0.00000000
                                0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00005106 -0.00004710
                               -0.00000000  0.00000000

 47  1    11    1  |0 0>        0.00081586  0.00069341
                               -0.00000000  0.00000000

 48  1    12    1  |0 0>       -0.00008086  0.00004179
                                0.00000000  0.00000000

 49  1    13    1  |0 0>        0.88193297  0.00387675
                                0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00387759  0.88193624
                               -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.62%    0.01%    0.02%   48.98%    0.12%    1.44%    0.07%    0.32%
  2  1     2    1  |1 1>+        31.65%    0.00%    0.02%    0.95%    0.94%   58.11%    0.25%    0.02%
  3  1     3    1  |1 1>+         0.01%    0.65%   49.28%    0.03%    0.01%    0.02%    1.45%   43.81%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>         28.83%    4.40%    0.01%    0.94%   34.70%   18.80%    4.88%    0.28%
 14  1     2    1  |1 0>          0.62%    0.00%    5.05%   43.98%    0.40%    0.59%    0.06%    1.98%
 15  1     3    1  |1 0>          2.84%   44.92%    0.66%    0.00%    3.26%    3.24%   39.06%    1.31%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         2.83%   45.53%    0.03%    0.03%    4.43%    0.23%   42.22%    0.08%
 26  1     2    1  |1 1>-         0.02%    0.03%   44.87%    5.05%    0.02%    0.00%    0.09%   43.45%
 27  1     3    1  |1 1>-        29.44%    4.40%    0.01%    0.00%   47.38%    8.82%    3.19%    0.02%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.29%    8.02%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    8.37%    0.28%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    5.62%    3.04%    0.01%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.01%    0.00%    0.39%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.06%    5.62%    0.02%    0.00%
 42  1     6    1  |0 0>          3.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+        43.97%    0.00%    0.25%    4.02%    0.05%    0.06%    0.02%    0.00%
  2  1     2    1  |1 1>+         1.23%    0.00%    0.00%    0.09%    2.62%    3.08%    1.02%    0.00%
  3  1     3    1  |1 1>+         0.35%    0.00%    4.11%    0.25%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
  5  1     5    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.09%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.31%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    9.88%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.55%    0.38%    0.00%    0.08%    4.95%    0.25%    0.93%    0.00%
 14  1     2    1  |1 0>         42.89%    0.00%    0.02%    4.26%    0.11%    0.01%    0.02%    0.00%
 15  1     3    1  |1 0>          0.10%    3.98%    0.00%    0.00%    0.48%    0.03%    0.09%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.92%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.47%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 19  1     7    1  |1 0>          0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.63%
 25  1     1    1  |1 1>-         0.00%    3.90%    0.07%    0.00%    0.04%    0.47%    0.09%    0.00%
 26  1     2    1  |1 1>-         2.07%    0.07%    4.27%    0.02%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.09%    0.39%    0.00%    0.00%    0.47%    4.82%    0.95%    0.00%
 28  1     4    1  |1 1>-         0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.03%
 29  1     5    1  |1 1>-         0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.56%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   17.71%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.39%    0.01%   90.91%    0.33%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.01%   91.24%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.03%    0.00%    0.00%    0.04%    0.34%   90.87%    0.00%    0.00%
 40  1     4    1  |0 0>          8.28%    0.00%    0.33%   90.88%    0.00%    0.04%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   90.91%    0.34%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.85%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   36.21%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 46  1    10    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.01%   21.81%    0.01%    0.01%    7.99%    0.03%    0.00%    5.05%
  5  1     5    1  |1 1>+         0.00%    2.53%    0.00%    0.00%    0.93%    0.02%    0.17%   43.56%
  6  1     6    1  |1 1>+         9.64%    0.00%    3.34%    3.16%    0.00%    5.05%    6.74%    0.08%
  7  1     7    1  |1 1>+         0.26%    0.01%    0.12%    0.08%    0.01%    0.16%    0.18%    0.00%
  8  1     8    1  |1 1>+         8.38%    0.05%    3.23%    3.45%    0.02%    6.95%    5.24%    0.00%
  9  1     9    1  |1 1>+         0.03%    0.00%   11.66%    8.06%    0.00%    3.39%    3.33%    0.02%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.14%    0.05%    0.00%    0.06%    0.01%    0.00%
 11  1    11    1  |1 1>+         0.04%    0.00%    7.94%   11.63%    0.00%    3.30%    3.39%    0.01%
 12  1    12    1  |1 1>+         0.00%    2.63%    0.00%    0.00%   16.63%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.01%    0.03%    0.34%    0.00%    0.01%   46.89%    0.00%    0.00%
 17  1     5    1  |1 0>          0.01%    0.00%    8.55%    0.05%    0.00%    1.84%    0.00%    0.00%
 18  1     6    1  |1 0>          0.57%    7.69%    0.00%    0.20%    2.81%    0.00%    0.27%    5.31%
 19  1     7    1  |1 0>         17.72%    0.30%    0.03%    6.47%    0.11%    0.01%   11.92%    0.06%
 20  1     8    1  |1 0>          0.00%   10.29%    0.00%    0.00%    3.77%    0.06%    0.02%    6.85%
 21  1     9    1  |1 0>          0.00%    0.04%    0.00%    0.02%   10.09%    0.00%    0.04%    3.41%
 22  1    10    1  |1 0>          0.07%    0.00%    0.13%   19.43%    0.15%    0.00%    6.59%    0.14%
 23  1    11    1  |1 0>          0.00%    0.03%    0.00%    0.17%    9.51%    0.00%    0.11%    3.19%
 24  1    12    1  |1 0>          0.00%    0.00%   16.51%    0.11%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-        13.75%    0.01%    0.06%    4.99%    0.00%    0.01%   21.12%    0.03%
 29  1     5    1  |1 1>-        10.59%    0.00%    0.02%    3.86%    0.00%    0.01%   27.54%    0.07%
 30  1     6    1  |1 1>-         0.01%   10.05%    0.20%    0.01%    3.68%    0.43%    0.01%    6.66%
 31  1     7    1  |1 1>-         0.02%    0.27%    6.44%    0.05%    0.10%   11.76%    0.03%    0.25%
 32  1     8    1  |1 1>-         0.03%    7.97%    0.00%    0.01%    2.92%    0.00%    0.00%    5.32%
 33  1     9    1  |1 1>-         0.00%    0.03%    0.02%    0.00%    9.63%    0.02%    0.01%    3.27%
 34  1    10    1  |1 1>-         0.00%    0.00%   19.42%    0.13%    0.04%    6.68%    0.00%    0.01%
 35  1    11    1  |1 1>-         0.00%    0.04%    0.17%    0.00%   10.07%    0.05%    0.01%    3.45%
 36  1    12    1  |1 1>-         2.63%    0.00%    0.11%   16.51%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.02%    0.00%   21.40%    0.14%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%   36.21%    0.00%    0.00%   21.54%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>         36.20%    0.00%    0.14%   21.40%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   13.20%    0.04%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%   13.20%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   13.24%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.01%    0.02%    0.00%    0.01%    0.00%    5.93%   53.22%    0.87%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.69%    3.81%    0.02%
  6  1     6    1  |1 1>+         0.55%    0.92%    0.00%    2.25%    2.57%    0.00%    0.01%   15.70%
  7  1     7    1  |1 1>+        16.77%   30.54%    0.00%    0.08%    0.07%    0.00%    0.00%    0.57%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    2.63%    2.33%    0.01%    1.07%   14.82%
  9  1     9    1  |1 1>+         0.01%    0.01%    0.03%   10.68%    8.94%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         5.75%    3.16%   33.00%    0.14%    0.04%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.04%    0.03%    0.29%    8.81%   10.66%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    4.83%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.01%    0.02%    0.00%    0.25%    0.00%    0.01%    0.11%    0.01%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    6.37%    0.00%    0.00%    2.43%    0.31%
 18  1     6    1  |1 0>          4.21%   22.50%    0.00%    0.00%    0.15%    2.09%    6.78%    0.61%
 19  1     7    1  |1 0>          0.13%    0.65%    0.00%    0.00%    4.81%    0.08%    0.48%    8.85%
 20  1     8    1  |1 0>          3.37%   17.93%    0.00%    0.00%    0.00%    2.80%    7.53%    0.18%
 21  1     9    1  |1 0>          3.70%    0.69%   16.26%    0.00%    0.02%   10.04%    0.00%    0.00%
 22  1    10    1  |1 0>          0.01%    0.00%    0.07%    0.02%   19.43%    0.15%    0.00%    0.00%
 23  1    11    1  |1 0>          3.86%    0.72%   16.99%    0.00%    0.17%    9.46%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    4.83%    0.01%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.06%    0.00%    0.00%    0.01%    3.73%    0.00%    0.62%   41.64%
 29  1     5    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    2.87%    0.00%    0.16%   15.84%
 30  1     6    1  |1 1>-        20.22%    0.27%    0.00%    0.15%    0.00%    2.73%   14.58%    0.34%
 31  1     7    1  |1 1>-         0.77%    0.01%    0.00%    4.80%    0.01%    0.07%    0.01%    0.16%
 32  1     8    1  |1 1>-        27.12%    0.36%    0.00%    0.00%    0.01%    2.16%    9.18%    0.08%
 33  1     9    1  |1 1>-         0.06%    4.54%   17.03%    0.02%    0.00%    9.59%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.08%    0.25%   19.43%    0.02%    0.04%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.06%    4.26%   16.04%    0.17%    0.00%   10.02%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    4.83%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   39.25%    0.04%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   39.30%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.04%   39.25%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>         12.93%    0.32%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.32%   12.93%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         1.38%    1.36%    0.35%    0.02%    0.01%    0.01%    0.00%    1.59%
  5  1     5    1  |1 1>+         0.68%   18.46%   12.45%    0.69%    0.00%    0.00%    0.12%   13.65%
  6  1     6    1  |1 1>+        16.76%    5.72%    9.88%    3.75%    0.91%    1.70%    2.00%    0.04%
  7  1     7    1  |1 1>+         0.36%    0.18%    0.26%    0.18%   32.42%    0.06%    0.06%    0.00%
  8  1     8    1  |1 1>+        13.49%    0.52%    4.85%   18.52%    0.06%    2.08%    1.76%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   18.05%   15.71%    0.15%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.26%    0.05%    0.07%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   15.64%   17.92%    0.11%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          7.02%    8.55%   14.94%    3.74%    0.00%   14.77%    0.01%    0.00%
 17  1     5    1  |1 0>         48.76%    3.77%    2.97%    0.73%    0.02%    0.58%    0.00%    0.00%
 18  1     6    1  |1 0>          0.51%   11.07%    5.78%    0.31%   17.29%    0.00%    0.06%    1.46%
 19  1     7    1  |1 0>          0.05%    2.90%    3.43%   36.75%    0.56%    0.01%    3.77%    0.00%
 20  1     8    1  |1 0>          0.76%   11.09%    9.16%    0.40%   15.46%    0.03%    0.02%    2.39%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.34%   17.83%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   32.83%    1.05%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.77%   15.05%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.35%    0.58%    0.22%    4.98%    0.01%    0.00%    6.64%    0.03%
 29  1     5    1  |1 1>-         0.02%    4.14%    1.43%   23.31%    0.01%    0.00%    8.65%    0.06%
 30  1     6    1  |1 1>-         0.03%    5.92%   10.68%    0.02%   13.35%    0.13%    0.01%    1.86%
 31  1     7    1  |1 1>-         9.49%   17.82%   18.64%    6.41%    0.48%    3.73%    0.00%    0.06%
 32  1     8    1  |1 1>-         0.34%    7.89%    4.97%    0.18%   19.43%    0.00%    0.00%    1.94%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.14%   17.04%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.61%    0.01%    0.05%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.28%    0.14%   16.56%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.89%    0.07%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    8.88%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    8.96%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.25%
  5  1     5    1  |1 1>+         0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    2.15%
  6  1     6    1  |1 1>+         0.22%    0.25%    0.01%    0.01%    0.00%    0.25%    0.33%    0.00%
  7  1     7    1  |1 1>+         6.91%    8.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.01%    0.01%    0.00%    0.34%    0.26%    0.00%
  9  1     9    1  |1 1>+         0.03%    0.03%    7.48%    3.05%    0.00%    4.76%    4.53%    0.00%
 10  1    10    1  |1 1>+        24.02%   20.77%    0.06%    0.04%    0.00%    0.07%    0.02%    0.00%
 11  1    11    1  |1 1>+         0.19%    0.18%    3.00%    7.46%    0.00%    4.47%    4.75%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   75.88%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.01%
 16  1     4    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    2.31%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.09%    0.00%    0.00%
 18  1     6    1  |1 0>          0.79%    7.88%    0.00%    0.00%    0.01%    0.00%    0.02%    0.25%
 19  1     7    1  |1 0>          0.02%    0.22%    0.00%    0.02%    0.00%    0.00%    0.58%    0.01%
 20  1     8    1  |1 0>          0.51%    5.96%    0.00%    0.00%    0.01%    0.00%    0.00%    0.34%
 21  1     9    1  |1 0>         19.13%    2.18%    0.00%    0.01%    5.39%    0.00%    0.01%    4.76%
 22  1    10    1  |1 0>          0.08%    0.01%    0.44%   10.01%    0.08%    0.00%    9.21%    0.07%
 23  1    11    1  |1 0>         22.17%    1.74%    0.00%    0.09%    5.08%    0.00%    0.08%    4.47%
 24  1    12    1  |1 0>          0.00%    0.00%   72.72%    3.17%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.01%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.02%    0.00%    0.00%    0.02%    0.00%    0.00%    1.04%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    1.36%    0.00%
 30  1     6    1  |1 1>-         6.34%    0.36%    0.00%    0.00%    0.01%    0.02%    0.00%    0.33%
 31  1     7    1  |1 1>-         0.24%    0.01%    0.02%    0.00%    0.00%    0.58%    0.00%    0.01%
 32  1     8    1  |1 1>-         8.01%    0.39%    0.00%    0.00%    0.01%    0.00%    0.00%    0.26%
 33  1     9    1  |1 1>-         1.42%   21.09%    0.01%    0.00%    5.15%    0.01%    0.00%    4.54%
 34  1    10    1  |1 1>-         0.02%    0.35%   10.01%    0.44%    0.02%    9.21%    0.00%    0.02%
 35  1    11    1  |1 1>-         0.86%   21.57%    0.09%    0.00%    5.38%    0.08%    0.00%    4.74%
 36  1    12    1  |1 1>-         0.00%    0.00%    3.17%   72.72%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    2.81%    0.12%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.93%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.12%    2.81%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   77.78%    0.00%
 47  1    11    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   77.78%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   77.77%    0.00%    0.00%
 49  1    13    1  |0 0>          8.94%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.02%    8.94%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50

  1  1     1    1  |1 1>+         0.00%    0.00%
  2  1     2    1  |1 1>+         0.01%    0.01%
  3  1     3    1  |1 1>+         0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%
  6  1     6    1  |1 1>+         0.04%    0.04%
  7  1     7    1  |1 1>+         1.20%    1.13%
  8  1     8    1  |1 1>+         0.00%    0.00%
  9  1     9    1  |1 1>+         0.01%    0.01%
 10  1    10    1  |1 1>+         5.97%    6.30%
 11  1    11    1  |1 1>+         0.05%    0.05%
 12  1    12    1  |1 1>+         0.00%    0.00%
 13  1     1    1  |1 0>          0.01%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%
 18  1     6    1  |1 0>          0.08%    1.24%
 19  1     7    1  |1 0>          0.00%    0.03%
 20  1     8    1  |1 0>          0.06%    0.98%
 21  1     9    1  |1 0>          5.67%    0.37%
 22  1    10    1  |1 0>          0.02%    0.00%
 23  1    11    1  |1 0>          5.95%    0.38%
 24  1    12    1  |1 0>          0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.01%
 28  1     4    1  |1 1>-         0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%
 30  1     6    1  |1 1>-         0.94%    0.07%
 31  1     7    1  |1 1>-         0.04%    0.00%
 32  1     8    1  |1 1>-         1.25%    0.10%
 33  1     9    1  |1 1>-         0.47%    5.86%
 34  1    10    1  |1 1>-         0.01%    0.09%
 35  1    11    1  |1 1>-         0.44%    5.53%
 36  1    12    1  |1 1>-         0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%
 49  1    13    1  |0 0>         77.78%    0.00%
 50  1    14    1  |0 0>          0.00%   77.78%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1385.51       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    115450.67 109040.47   2626.15   3781.25      1.88      0.05      0.60
 REAL TIME  *    116648.81 SEC
 DISK USED  *         1.39 GB (local),       16.72 GB (total)
 SF USED    *         7.50 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -213.863696483901

              CI              CI           MULTI         RHF-SCF
   -213.81274075   -213.81865823   -213.14915972   -213.37363633
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
