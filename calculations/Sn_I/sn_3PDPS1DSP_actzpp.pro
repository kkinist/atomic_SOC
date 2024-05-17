
 Working directory              : /wrk/irikura/molpro.BiOUVjhLoh/
 Global scratch directory       : /wrk/irikura/molpro.BiOUVjhLoh/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.BiOUVjhLoh/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.00 sec
 ***,Sn SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sn};
 
 basis=aug-cc-pwCVTZ-PP
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,nelec=23,sym=2,spin=3}
 
 NTRIP=12
 NSING=9
 
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
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 22-Apr-24          TIME: 08:44:09  
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

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.05 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     36 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.01 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.78      0.59
 REAL TIME  *         1.62 SEC
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
   4     -213.37362630      -0.00008996     0.24D-03     0.83D-03     3     0       0.00      0.01    diag2
   5     -213.37363565      -0.00000935     0.63D-04     0.30D-03     4     0       0.01      0.02    diag2
   6     -213.37363625      -0.00000060     0.12D-04     0.95D-04     5     0       0.00      0.02    diag2
   7     -213.37363632      -0.00000007     0.31D-05     0.20D-04     6     0       0.01      0.03    diag2
   8     -213.37363633      -0.00000001     0.80D-06     0.12D-04     7     0       0.00      0.03    fixocc
   9     -213.37363633      -0.00000000     0.93D-07     0.15D-05     8     0       0.00      0.03    diag2
  10     -213.37363633      -0.00000000     0.15D-07     0.14D-06     0     0       0.01      0.04    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -213.373636325728
  RHF One-electron energy            -381.086680443689
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
    2.1     2.00000    -1.07683     1  1  d2- -0.69548    1  1  d2+  0.71809
    3.1     2.00000    -1.07683     1  1  d2-  0.71811    1  1  d2+  0.69551
    4.1     2.00000    -1.07683     1  1  d1-  0.98107
    5.1     2.00000    -1.07683     1  1  d1+  0.98109
    6.1     2.00000    -1.07683     1  1  d0   0.99973
    7.1     2.00000    -0.29333     1  2  s    0.97876
    1.2     2.00000    -3.81329     1  1  py   0.99984
    2.2     2.00000    -3.81329     1  1  px   1.00042
    3.2     2.00000    -3.81329     1  1  pz   0.99984
    4.2     1.00000    -0.05728     1  2  py   0.29005    1  2  pz   0.74051
    5.2     1.00000    -0.05728     1  2  py   0.74052    1  2  pz  -0.29006
    6.2     1.00000    -0.05728     1  2  px   0.79529


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
 CPU TIMES  *         0.83      0.05      0.59
 REAL TIME  *         1.68 SEC
 DISK USED  *        30.07 MB (local),      417.26 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =         9.00000000                                  

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
 Number of states:             9
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.497D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.495D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.173D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.170D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.141D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 3 6 4 2 1 1 2 3   5 4 6 1 2 3 5 6 4 1   2 6 4 3 5 2 3 5 6 4   1 81214151310 711 9
                                        2 6 4 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.368D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.926D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.380D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.285D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.281D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.754D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.319D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.319D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 3 1 2 3   2 1 7 9 4 5 6 810 6   5 4 810 7 9 3 2 1 8  10 6 9 7 5 4 3 1 2 6
                                        810 7 9 4 5 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762   0.04762   0.04762   0.04762
 Weight factors for state symmetry  2:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762
 
 Number of orbital rotations:  664  ( 24 closed/active, 360 closed/virtual, 0 active/active, 280 active/virtual )
 Total number of variables:    4633
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0   -213.19929636    -213.23083452   -0.03153816    0.15289555 0.00001368 0.00000000  0.56E+00      0.44
   2    7   12    0   -213.22988140    -213.22993013   -0.00004874    0.00870549 0.00000151 0.00000000  0.21E-01      0.96
   3    9   18    0   -213.22993021    -213.22993021   -0.00000000    0.00002105 0.00000001 0.00000000  0.56E-04      1.49
   4    3    6    0   -213.22993021    -213.22993021   -0.00000000    0.00000003 0.00000000 0.00000000  0.44E-07      1.73

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.86E-08)
                       Final energy:   -213.22993021
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -213.342961380352
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.78852519
 One electron energy                          -376.61640463
 Two electron energy                           163.27344325
 Virial ratio                                    3.57696294
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -213.342961380279
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.78852519
 One electron energy                          -376.61640463
 Two electron energy                           163.27344325
 Virial ratio                                    3.57696294
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -213.342961380192
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.78852519
 One electron energy                          -376.61640464
 Two electron energy                           163.27344326
 Virial ratio                                    3.57696294
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -213.166155784143
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.35424559
 One electron energy                          -372.18471655
 Two electron energy                           159.01856077
 Virial ratio                                    3.58840518
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -213.166155784126
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.35424559
 One electron energy                          -372.18471656
 Two electron energy                           159.01856077
 Virial ratio                                    3.58840518
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -213.166155784061
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.35424559
 One electron energy                          -372.18471656
 Two electron energy                           159.01856077
 Virial ratio                                    3.58840518
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -213.166155783970
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.35424560
 One electron energy                          -372.18471658
 Two electron energy                           159.01856080
 Virial ratio                                    3.58840518
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -213.166155783962
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.35424559
 One electron energy                          -372.18471658
 Two electron energy                           159.01856079
 Virial ratio                                    3.58840518
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -213.158576983823
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.45759792
 One electron energy                          -372.71235067
 Two electron energy                           159.55377369
 Virial ratio                                    3.58506896
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -213.158576983721
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.45759792
 One electron energy                          -372.71235067
 Two electron energy                           159.55377369
 Virial ratio                                    3.58506896
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -213.158576983349
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.45759793
 One electron energy                          -372.71235070
 Two electron energy                           159.55377372
 Virial ratio                                    3.58506896
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -213.158384490034
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.35412606
 One electron energy                          -372.18252379
 Two electron energy                           159.02413930
 Virial ratio                                    3.58831457
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -213.308297475171
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.73650401
 One electron energy                          -376.31540822
 Two electron energy                           163.00711075
 Virial ratio                                    3.57816426
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -213.308297475116
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.73650401
 One electron energy                          -376.31540823
 Two electron energy                           163.00711075
 Virial ratio                                    3.57816426
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -213.308297475102
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.73650401
 One electron energy                          -376.31540822
 Two electron energy                           163.00711075
 Virial ratio                                    3.57816426
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -213.308297474925
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.73650402
 One electron energy                          -376.31540824
 Two electron energy                           163.00711076
 Virial ratio                                    3.57816426
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -213.308297474924
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.73650402
 One electron energy                          -376.31540824
 Two electron energy                           163.00711076
 Virial ratio                                    3.57816426
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -213.279239118049
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.68244935
 One electron energy                          -375.92396712
 Two electron energy                           162.64472801
 Virial ratio                                    3.57949832
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -213.171343166993
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.35431870
 One electron energy                          -372.18607727
 Two electron energy                           159.01473410
 Virial ratio                                    3.58846587
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -213.171343166954
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.35431870
 One electron energy                          -372.18607727
 Two electron energy                           159.01473410
 Virial ratio                                    3.58846587
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -213.171343166908
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.35431870
 One electron energy                          -372.18607729
 Two electron energy                           159.01473412
 Virial ratio                                    3.58846587
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000815
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999998801
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     2.194777293863
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.999999988563
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000100735
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     1.805250532533
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.000000000074
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.999999999905
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.111441700262
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999361555
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000982024
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.888558273447
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.000000000018
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999999999899
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.626428731490
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     4.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.999999999858
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999926768
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.373555023412
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>    -0.000000000000
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.004305882696
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.999999999996
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999999984
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.995694115233
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999999999992
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999185
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000001199
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.178793974646
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.000000011579
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     3.999999972497
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     3.821194444055
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.999999999927
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.000000000095
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     2.884252417042
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000638449
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999017992
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.115747611320
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999999999990
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.000000000101
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 5 2 6 1 1 4 3   5 2 6 1 4 3 5 2 6 1   4 3 5 2 6 4 3 5 2 6   11310 91415 812 711
                                        4 5 3 2 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 2 3 1 1   2 3 7 9 4 810 6 5 9   7 4 810 6 5 1 3 2 7   9 4 810 6 5 1 3 2 9
                                        7 4 810 6 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.95226     1  1  s    1.00402
    2.1     2.00000    -1.40171     1  1  d1+  1.00085
    3.1     2.00000    -1.40171     1  1  d2-  1.00085
    4.1     2.00000    -1.40171     1  1  d2+  1.00085
    5.1     2.00000    -1.40171     1  1  d0   1.00085
    6.1     2.00000    -1.40171     1  1  d1-  1.00085
    7.1     1.95383    -0.57423     1  2  s    1.06207
    1.2     2.00000    -4.13797     1  1  px   0.99961
    2.2     2.00000    -4.13797     1  1  pz   0.99961
    3.2     2.00000    -4.13797     1  1  py   0.99961
    4.2     0.48861    -0.10835     1  2  py   1.06751
    5.2     0.48861    -0.10835     1  2  pz   1.06751
    6.2     0.48861    -0.10835     1  2  px   1.06751
    7.2     0.19345     0.04616     1  2  py  -0.47695    1  7  py   1.22623
    8.2     0.19345     0.04616     1  2  pz  -0.47695    1  7  pz   1.22623
    9.2     0.19345     0.04616     1  2  px  -0.47695    1  7  px   1.22623
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 0aa000       0.00000011      0.00000001      0.99144368     -0.00000000     -0.00000001     -0.00000000      0.00000000
 2 aa0000       0.99144368      0.00002830     -0.00000011      0.00000000      0.00000000      0.00000000      0.00000000
 2 a0a000      -0.00002830      0.99144368     -0.00000001     -0.00000000     -0.00000000      0.00000000     -0.00000001
 2 0a00a0      -0.00000000     -0.00000000      0.00000000      0.78774119     -0.00000157     -0.00000711      0.00005868
 2 a00a00      -0.00000000      0.00000000      0.00000000     -0.24630319      0.00000049      0.00001269     -0.00026695
 2 a000a0       0.01228954      0.00000035     -0.00000000      0.00000408     -0.00000000      0.69798158      0.00004223
 2 00a0a0      -0.00000000     -0.00000000     -0.01228954      0.00000139      0.69798158      0.00000000      0.00000000
 2 0a000a       0.00000000      0.00000000      0.01228955      0.00000139      0.69798154      0.00000000     -0.00000000
 2 0a0a00      -0.01228954     -0.00000035      0.00000000      0.00000408     -0.00000000      0.69798154      0.00004223
 2 a0000a      -0.00000035      0.01228955     -0.00000000      0.00000056      0.00000000     -0.00004223      0.69798152
 2 00aa00       0.00000035     -0.01228954      0.00000000      0.00000056     -0.00000000     -0.00004223      0.69798151
 2 00a00a      -0.00000000      0.00000000      0.00000000     -0.54143797      0.00000108     -0.00000558      0.00020827
 2 000aa0      -0.02036266     -0.00000058      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2 0000aa      -0.00000000     -0.00000000     -0.02036266     -0.00000000     -0.00000000      0.00000000      0.00000000
 2 000a0a       0.00000058     -0.02036266      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000001
 0 aa2000      -0.11624722     -0.00000332      0.00000001     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 a2a000       0.00000332     -0.11624722      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 0 2aa000      -0.00000001     -0.00000000     -0.11624722      0.00000000      0.00000000     -0.00000000      0.00000000
 0 2a00a0       0.00000000      0.00000000     -0.00000000     -0.08570392      0.00000017      0.00000076     -0.00000612
 0 0a20a0      -0.00000000      0.00000000      0.00000000     -0.08538630      0.00000017      0.00000078     -0.00000663
 0 a20a00       0.00000000      0.00000000     -0.00000000      0.02603218     -0.00000005     -0.00000138      0.00002907
 0 a02a00      -0.00000000     -0.00000000      0.00000000      0.02746263     -0.00000005     -0.00000138      0.00002891
 0 a020a0       0.00064882      0.00000002     -0.00000000     -0.00000045      0.00000000     -0.07617320     -0.00000461
 0 20a0a0      -0.00000000      0.00000000     -0.00064882     -0.00000015     -0.07617320     -0.00000000     -0.00000000
 0 2a000a       0.00000000      0.00000000      0.00064881     -0.00000015     -0.07617320     -0.00000000      0.00000000
 0 0a2a00      -0.00064882     -0.00000002      0.00000000     -0.00000045      0.00000000     -0.07617320     -0.00000461
 0 a2000a      -0.00000002      0.00064881     -0.00000000     -0.00000006     -0.00000000      0.00000461     -0.07617320
 0 02aa00       0.00000002     -0.00064882     -0.00000000     -0.00000006      0.00000000      0.00000461     -0.07617319
 0 a200a0      -0.02533713     -0.00000072      0.00000000     -0.00000044      0.00000000     -0.07542204     -0.00000456
 0 02a0a0       0.00000000      0.00000000      0.02533713     -0.00000015     -0.07542204     -0.00000000     -0.00000000
 0 0a200a      -0.00000000     -0.00000000     -0.02533713     -0.00000015     -0.07542204     -0.00000000      0.00000000
 0 2a0a00       0.02533713      0.00000072     -0.00000000     -0.00000044      0.00000000     -0.07542204     -0.00000456
 0 a0200a       0.00000072     -0.02533713      0.00000000     -0.00000006     -0.00000000      0.00000456     -0.07542204
 0 20aa00      -0.00000072      0.02533713     -0.00000000     -0.00000006      0.00000000      0.00000456     -0.07542203
 0 02a00a       0.00000000      0.00000000     -0.00000000      0.05824128     -0.00000012      0.00000062     -0.00002279
 0 20a00a       0.00000000     -0.00000000     -0.00000000      0.05935411     -0.00000012      0.00000060     -0.00002244
 
 Energy:     -213.34296138   -213.34296138   -213.34296138   -213.16615578   -213.16615578   -213.16615578   -213.16615578

 State:              8               9              10              11              12
 2 0aa000       0.00000000     -0.02269590      0.00000000      0.00000000      0.00000000
 2 aa0000      -0.00000000     -0.00000000     -0.02269590     -0.00000019     -0.00000000
 2 a0a000      -0.00000000     -0.00000000      0.00000019     -0.02269591      0.00000000
 2 0a00a0      -0.17039614     -0.00000000     -0.00000000      0.00000000      0.56970650
 2 a00a00       0.76740189     -0.00000000     -0.00000000      0.00000000      0.56970653
 2 a000a0      -0.00001021      0.00000000      0.69217426      0.00000593      0.00000000
 2 00a0a0      -0.00000000     -0.69217427      0.00000000     -0.00000000     -0.00000000
 2 0a000a      -0.00000000      0.69217430     -0.00000000     -0.00000000     -0.00000000
 2 0a0a00      -0.00001021     -0.00000000     -0.69217430     -0.00000593     -0.00000000
 2 a0000a       0.00024298      0.00000000     -0.00000593      0.69217428     -0.00000000
 2 00aa00       0.00024298      0.00000000      0.00000593     -0.69217429      0.00000000
 2 00a00a      -0.59700577     -0.00000000     -0.00000000      0.00000000      0.56970652
 2 000aa0       0.00000000     -0.00000000     -0.12936257     -0.00000111     -0.00000000
 2 0000aa       0.00000000     -0.12936257      0.00000000     -0.00000000      0.00000000
 2 000a0a      -0.00000000      0.00000000      0.00000111     -0.12936257      0.00000000
 0 aa2000      -0.00000000      0.00000000      0.00802435      0.00000007      0.00000000
 0 a2a000       0.00000000      0.00000000     -0.00000007      0.00802435     -0.00000000
 0 2aa000       0.00000000      0.00802435     -0.00000000     -0.00000000      0.00000000
 0 2a00a0       0.01777006      0.00000000      0.00000000     -0.00000000     -0.06271583
 0 0a20a0       0.01923843      0.00000000      0.00000000     -0.00000000     -0.06271583
 0 a20a00      -0.08356591      0.00000000      0.00000000     -0.00000000     -0.06271583
 0 a02a00      -0.08310680      0.00000000      0.00000000     -0.00000000     -0.06271583
 0 a020a0       0.00000111     -0.00000000     -0.07617142     -0.00000065     -0.00000000
 0 20a0a0       0.00000000      0.07617142     -0.00000000      0.00000000      0.00000000
 0 2a000a       0.00000000     -0.07617143      0.00000000      0.00000000      0.00000000
 0 0a2a00       0.00000111      0.00000000      0.07617143      0.00000065      0.00000000
 0 a2000a      -0.00002652     -0.00000000      0.00000065     -0.07617143      0.00000000
 0 02aa00      -0.00002652     -0.00000000     -0.00000065      0.07617143     -0.00000000
 0 a200a0       0.00000110     -0.00000000     -0.07295379     -0.00000062     -0.00000000
 0 02a0a0       0.00000000      0.07295379     -0.00000000      0.00000000      0.00000000
 0 0a200a       0.00000000     -0.07295380      0.00000000      0.00000000      0.00000000
 0 2a0a00       0.00000110      0.00000000      0.07295380      0.00000062      0.00000000
 0 a0200a      -0.00002626     -0.00000000      0.00000062     -0.07295379      0.00000000
 0 20aa00      -0.00002626     -0.00000000     -0.00000062      0.07295380     -0.00000000
 0 02a00a       0.06533673      0.00000000      0.00000000     -0.00000000     -0.06271583
 0 20a00a       0.06432748      0.00000000      0.00000000     -0.00000000     -0.06271583
 
 Energy:     -213.16615578   -213.15857698   -213.15857698   -213.15857698   -213.15838449
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 200000       0.80568936      0.00000055     -0.00000170     -0.00000014     -0.02644859      0.55604498      0.00000000
 2 002000      -0.37993952     -0.00000036      0.00000093      0.00000007      0.71097175      0.55604498      0.00000000
 2 0ab000       0.00000012      0.00000004      0.00000013      0.69812331     -0.00000000     -0.00000000     -0.00000000
 2 0ba000      -0.00000012     -0.00000004     -0.00000013     -0.69812331      0.00000000      0.00000000      0.00000000
 2 ba0000       0.00000047     -0.69812324      0.00032206      0.00000004     -0.00000010     -0.00000000      0.00000000
 2 ab0000      -0.00000047      0.69812324     -0.00032206     -0.00000004      0.00000010      0.00000000     -0.00000000
 2 b0a000      -0.00000147     -0.00032206     -0.69812323      0.00000013      0.00000013     -0.00000000      0.00000000
 2 a0b000       0.00000147      0.00032206      0.69812323     -0.00000013     -0.00000013      0.00000000     -0.00000000
 2 020000      -0.42574983     -0.00000019      0.00000077      0.00000008     -0.68452316      0.55604499      0.00000000
 2 b000a0       0.00000003     -0.04242973      0.00001957      0.00000000     -0.00000001     -0.00000000     -0.00000000
 2 a000b0      -0.00000003      0.04242973     -0.00001957     -0.00000000      0.00000001      0.00000000      0.00000000
 2 00b0a0      -0.00000001     -0.00000000     -0.00000001     -0.04242973     -0.00000000      0.00000000      0.49365143
 2 00a0b0       0.00000001      0.00000000      0.00000001      0.04242973      0.00000000     -0.00000000     -0.49365143
 2 b0000a      -0.00000009     -0.00001957     -0.04242973      0.00000001      0.00000001      0.00000000     -0.00000010
 2 a0000b       0.00000009      0.00001957      0.04242973     -0.00000001     -0.00000001     -0.00000000      0.00000010
 2 00ba00      -0.00000009     -0.00001957     -0.04242973      0.00000001      0.00000001     -0.00000000      0.00000010
 2 00ab00       0.00000009      0.00001957      0.04242973     -0.00000001     -0.00000001      0.00000000     -0.00000010
 2 0a000b       0.00000001      0.00000000      0.00000001      0.04242974      0.00000000     -0.00000000      0.49365142
 2 0b000a      -0.00000001     -0.00000000     -0.00000001     -0.04242974     -0.00000000      0.00000000     -0.49365142
 2 0a0b00      -0.00000003      0.04242973     -0.00001957     -0.00000000      0.00000001     -0.00000000     -0.00000000
 2 0b0a00       0.00000003     -0.04242973      0.00001957      0.00000000     -0.00000001      0.00000000      0.00000000
 0 022000       0.09420697      0.00000006     -0.00000020     -0.00000002     -0.00309256     -0.12509934     -0.00000000
 0 202000      -0.04978172     -0.00000002      0.00000009      0.00000001     -0.08003935     -0.12509934     -0.00000000
 0 220000      -0.04442525     -0.00000004      0.00000011      0.00000001      0.08313191     -0.12509934     -0.00000000
 0 2ba000       0.00000001      0.00000000      0.00000001      0.08162958     -0.00000000      0.00000000     -0.00000000
 0 2ab000      -0.00000001     -0.00000000     -0.00000001     -0.08162958      0.00000000     -0.00000000      0.00000000
 0 ab2000       0.00000006     -0.08162957      0.00003766      0.00000000     -0.00000001     -0.00000000      0.00000000
 0 ba2000      -0.00000006      0.08162957     -0.00003766     -0.00000000      0.00000001      0.00000000     -0.00000000
 0 b2a000       0.00000017      0.00003766      0.08162957     -0.00000001     -0.00000002      0.00000000     -0.00000000
 0 a2b000      -0.00000017     -0.00003766     -0.08162957      0.00000001      0.00000002     -0.00000000      0.00000000
 2 00a00b      -0.02309153     -0.00000002      0.00000006      0.00000000      0.04321063      0.06040060     -0.00000000
 2 00b00a       0.02309153      0.00000002     -0.00000006     -0.00000000     -0.04321063     -0.06040060      0.00000000
 2 a00b00       0.04896726      0.00000003     -0.00000010     -0.00000001     -0.00160746      0.06040059     -0.00000000
 2 b00a00      -0.04896726     -0.00000003      0.00000010      0.00000001      0.00160746     -0.06040059      0.00000000
 2 0b00a0       0.02587573      0.00000001     -0.00000005     -0.00000000      0.04160316     -0.06040059      0.00000000
 2 0a00b0      -0.02587573     -0.00000001      0.00000005      0.00000000     -0.04160316      0.06040059     -0.00000000
 0 a020b0       0.00000000     -0.00325917      0.00000150      0.00000000     -0.00000000      0.00000000     -0.00000000
 0 b020a0      -0.00000000      0.00325917     -0.00000150     -0.00000000      0.00000000     -0.00000000      0.00000000
 0 20a0b0      -0.00000000     -0.00000000     -0.00000000     -0.00325917      0.00000000      0.00000000      0.05392364
 0 20b0a0       0.00000000      0.00000000      0.00000000      0.00325917     -0.00000000     -0.00000000     -0.05392364
 0 b2000a       0.00000001      0.00000150      0.00325917     -0.00000000     -0.00000000      0.00000000      0.00000001
 0 a2000b      -0.00000001     -0.00000150     -0.00325917      0.00000000      0.00000000     -0.00000000     -0.00000001
 0 02ab00      -0.00000001     -0.00000150     -0.00325917      0.00000000      0.00000000      0.00000000      0.00000001
 0 02ba00       0.00000001      0.00000150      0.00325917     -0.00000000     -0.00000000     -0.00000000     -0.00000001
 0 0a2b00       0.00000000     -0.00325917      0.00000150      0.00000000     -0.00000000     -0.00000000      0.00000000
 0 0b2a00      -0.00000000      0.00325917     -0.00000150     -0.00000000      0.00000000      0.00000000     -0.00000000
 0 2a000b      -0.00000000     -0.00000000     -0.00000000     -0.00325917     -0.00000000      0.00000000     -0.05392363
 0 2b000a       0.00000000      0.00000000      0.00000000      0.00325917      0.00000000     -0.00000000      0.05392363
 0 b200a0      -0.00000001      0.02167384     -0.00001000     -0.00000000      0.00000000     -0.00000000      0.00000000
 0 a200b0       0.00000001     -0.02167384      0.00001000      0.00000000     -0.00000000      0.00000000     -0.00000000
 0 02b0a0       0.00000000      0.00000000      0.00000000      0.02167384      0.00000000      0.00000000     -0.05236075
 0 02a0b0      -0.00000000     -0.00000000     -0.00000000     -0.02167384     -0.00000000     -0.00000000      0.05236075
 0 a0200b      -0.00000005     -0.00001000     -0.02167384      0.00000000      0.00000000     -0.00000000     -0.00000001
 0 b0200a       0.00000005      0.00001000      0.02167384     -0.00000000     -0.00000000      0.00000000      0.00000001
 0 20ba00       0.00000005      0.00001000      0.02167384     -0.00000000     -0.00000000     -0.00000000     -0.00000001
 0 20ab00      -0.00000005     -0.00001000     -0.02167384      0.00000000      0.00000000      0.00000000      0.00000001
 0 0a200b      -0.00000000     -0.00000000     -0.00000000     -0.02167384     -0.00000000      0.00000000     -0.05236075
 0 0b200a       0.00000000      0.00000000      0.00000000      0.02167384      0.00000000     -0.00000000      0.05236075
 0 2b0a00      -0.00000001      0.02167384     -0.00001000     -0.00000000      0.00000000      0.00000000     -0.00000000
 0 2a0b00       0.00000001     -0.02167384      0.00001000      0.00000000     -0.00000000     -0.00000000      0.00000000
 
 Energy:     -213.30829748   -213.30829748   -213.30829748   -213.30829747   -213.30829747   -213.27923912   -213.17134317

 State:              8               9
 2 200000       0.00000000     -0.00000000
 2 002000      -0.00000000     -0.00000000
 2 0ab000      -0.00000000     -0.00000000
 2 0ba000       0.00000000      0.00000000
 2 ba0000      -0.00000000     -0.00000000
 2 ab0000       0.00000000      0.00000000
 2 b0a000      -0.00000000      0.00000000
 2 a0b000       0.00000000     -0.00000000
 2 020000      -0.00000000      0.00000000
 2 b000a0      -0.49365144     -0.00000155
 2 a000b0       0.49365144      0.00000155
 2 00b0a0      -0.00000000     -0.00000010
 2 00a0b0       0.00000000      0.00000010
 2 b0000a       0.00000155     -0.49365143
 2 a0000b      -0.00000155      0.49365143
 2 00ba00      -0.00000155      0.49365143
 2 00ab00       0.00000155     -0.49365143
 2 0a000b      -0.00000000     -0.00000010
 2 0b000a       0.00000000      0.00000010
 2 0a0b00      -0.49365142     -0.00000155
 2 0b0a00       0.49365142      0.00000155
 0 022000       0.00000000      0.00000000
 0 202000      -0.00000000      0.00000000
 0 220000      -0.00000000      0.00000000
 0 2ba000       0.00000000     -0.00000000
 0 2ab000      -0.00000000      0.00000000
 0 ab2000      -0.00000000     -0.00000000
 0 ba2000       0.00000000      0.00000000
 0 b2a000       0.00000000     -0.00000000
 0 a2b000      -0.00000000      0.00000000
 2 00a00b       0.00000000      0.00000000
 2 00b00a      -0.00000000     -0.00000000
 2 a00b00      -0.00000000      0.00000000
 2 b00a00       0.00000000     -0.00000000
 2 0b00a0       0.00000000     -0.00000000
 2 0a00b0      -0.00000000      0.00000000
 0 a020b0      -0.05392364     -0.00000017
 0 b020a0       0.05392364      0.00000017
 0 20a0b0      -0.00000000     -0.00000001
 0 20b0a0       0.00000000      0.00000001
 0 b2000a      -0.00000017      0.05392364
 0 a2000b       0.00000017     -0.05392364
 0 02ab00      -0.00000017      0.05392364
 0 02ba00       0.00000017     -0.05392364
 0 0a2b00       0.05392363      0.00000017
 0 0b2a00      -0.05392363     -0.00000017
 0 2a000b       0.00000000      0.00000001
 0 2b000a      -0.00000000     -0.00000001
 0 b200a0       0.05236075      0.00000016
 0 a200b0      -0.05236075     -0.00000016
 0 02b0a0       0.00000000      0.00000001
 0 02a0b0      -0.00000000     -0.00000001
 0 a0200b       0.00000016     -0.05236075
 0 b0200a      -0.00000016      0.05236075
 0 20ba00       0.00000016     -0.05236075
 0 20ab00      -0.00000016      0.05236075
 0 0a200b       0.00000000      0.00000001
 0 0b200a      -0.00000000     -0.00000001
 0 2b0a00      -0.05236075     -0.00000016
 0 2a0b00       0.05236075      0.00000016
 
 Energy:     -213.17134317   -213.17134317
 


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
 CPU TIMES  *         2.53      1.70      0.05      0.59
 REAL TIME  *         3.66 SEC
 DISK USED  *        37.16 MB (local),      502.25 MB (total)
 SF USED    *        19.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3429614   2.0
    -213.3429614   2.0
    -213.3429614   2.0
    -213.1661558   6.0
    -213.1661558   6.0
    -213.1661558   6.0
    -213.1661558   6.0
    -213.1661558   6.0
    -213.1585770   2.0
    -213.1585770   2.0
    -213.1585770   2.0
    -213.1583845  -0.0
    -213.3082975   6.0
    -213.3082975   6.0
    -213.3082975   6.0
    -213.3082975   6.0
    -213.3082975   6.0
    -213.2792391  -0.0
    -213.1713432   2.0
    -213.1713432   2.0
    -213.1713432   2.0
                                                  


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
     1      -213.34296138
     2      -213.34296138
     3      -213.34296138
     4      -213.16615578
     5      -213.16615578
     6      -213.16615578
     7      -213.16615578
     8      -213.16615578
     9      -213.15857698
    10      -213.15857698
    11      -213.15857698
    12      -213.15838449

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3179D-06

 Number of blocks in overlap matrix:  1182   Smallest eigenvalue:  0.32D-06
 Number of N-2 electron functions:    2547
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       3541800
 Number of doubly external configurations:       4078680
 Total number of contracted configurations:      7658886
 Total number of uncontracted configurations:   77703006

 Diagonal Coupling coefficients finished.               Storage:  25471791 words, CPU-Time:     80.91 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1346125 words, CPU-time:      0.18 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34296138     0.00000000    -0.83498133  0.52D-01  0.10D+00    95.29
    1     2     2     1.00000000     0.00000000  -213.34296138     0.00000000    -0.83488877  0.52D-01  0.10D+00    95.29
    1     3     3     1.00000000     0.00000000  -213.34296138    -0.00000000    -0.83472566  0.52D-01  0.10D+00    95.29
    1     4     4     1.00000000     0.00000000  -213.16615578     0.00000000    -0.80014674  0.39D-01  0.94D-01    95.29
    1     5     5     1.00000000     0.00000000  -213.16615578     0.00000000    -0.79980833  0.39D-01  0.94D-01    95.29
    1     6     6     1.00000000     0.00000000  -213.16615578     0.00000000    -0.79985998  0.39D-01  0.94D-01    95.29
    1     7     7     1.00000000     0.00000000  -213.16615578     0.00000000    -0.79982150  0.39D-01  0.94D-01    95.29
    1     8     8     1.00000000     0.00000000  -213.16615578    -0.00000000    -0.80018249  0.39D-01  0.94D-01    95.29
    1     9     9     1.00000000     0.00000000  -213.15857698     0.00000000    -0.80709406  0.45D-01  0.95D-01    95.29
    1    10    10     1.00000000     0.00000000  -213.15857698     0.00000000    -0.80714465  0.45D-01  0.95D-01    95.29
    1    11    11     1.00000000     0.00000000  -213.15857698     0.00000000    -0.80711342  0.45D-01  0.95D-01    95.29
    1    12    12     1.00000000     0.00000000  -213.15838449     0.00000000    -0.80121006  0.41D-01  0.95D-01    95.29
    2     1     1     1.09511071    -0.65524849  -213.99820987    -0.65524849    -0.01924308  0.38D-02  0.14D-02   462.29
    2     2     2     1.09527798    -0.65513838  -213.99809976    -0.65513838    -0.01935913  0.39D-02  0.14D-02   462.29
    2     3     3     1.09535025    -0.65507520  -213.99803658    -0.65507520    -0.01943013  0.40D-02  0.14D-02   462.29
    2     4     4     1.08578775    -0.64441938  -213.81057516    -0.64441938    -0.01540512  0.25D-02  0.11D-02   462.29
    2     5     5     1.08565014    -0.64441126  -213.81056705    -0.64441126    -0.01542053  0.25D-02  0.11D-02   462.29
    2     6     6     1.08567825    -0.64438870  -213.81054449    -0.64438870    -0.01544399  0.25D-02  0.11D-02   462.29
    2     7     7     1.08585069    -0.64437204  -213.81052782    -0.64437204    -0.01545516  0.25D-02  0.11D-02   462.29
    2     8     8     1.08570945    -0.64437145  -213.81052723    -0.64437145    -0.01546324  0.25D-02  0.11D-02   462.29
    2     9     9     1.08850912    -0.64538612  -213.80396310    -0.64538612    -0.01672445  0.34D-02  0.11D-02   462.29
    2    10    10     1.08854333    -0.64535959  -213.80393658    -0.64535959    -0.01675343  0.34D-02  0.11D-02   462.29
    2    11    11     1.08855844    -0.64535032  -213.80392730    -0.64535032    -0.01676442  0.34D-02  0.11D-02   462.29
    2    12    12     1.08670634    -0.64443112  -213.80281561    -0.64443112    -0.01586070  0.29D-02  0.11D-02   462.29
    3     1     1     1.08369191    -0.67353652  -214.01649790    -0.01828803    -0.00049150  0.74D-04  0.53D-04   826.50
    3     2     2     1.08369178    -0.67353166  -214.01649304    -0.01839328    -0.00049598  0.75D-04  0.54D-04   826.50
    3     3     3     1.08368850    -0.67352880  -214.01649018    -0.01845360    -0.00049893  0.75D-04  0.54D-04   826.50
    3     4     4     1.07918089    -0.65918809  -213.82534387    -0.01476871    -0.00032556  0.36D-04  0.33D-04   826.50
    3     5     5     1.07917775    -0.65918730  -213.82534309    -0.01477604    -0.00032630  0.36D-04  0.34D-04   826.50
    3     6     6     1.07917822    -0.65918647  -213.82534225    -0.01479777    -0.00032716  0.36D-04  0.34D-04   826.50
    3     7     7     1.07921118    -0.65918482  -213.82534061    -0.01481279    -0.00032898  0.36D-04  0.35D-04   826.50
    3     8     8     1.07920591    -0.65918308  -213.82533887    -0.01481163    -0.00033062  0.36D-04  0.35D-04   826.50
    3     9     9     1.07989256    -0.66137047  -213.81994745    -0.01598435    -0.00038220  0.54D-04  0.39D-04   826.50
    3    10    10     1.07988976    -0.66136958  -213.81994656    -0.01600999    -0.00038303  0.54D-04  0.39D-04   826.50
    3    11    11     1.07988944    -0.66136919  -213.81994617    -0.01601887    -0.00038353  0.54D-04  0.39D-04   826.50
    3    12    12     1.07944031    -0.65965800  -213.81804249    -0.01522688    -0.00034260  0.38D-04  0.37D-04   826.50
    4     1     1     1.08344747    -0.67404251  -214.01700390    -0.00050600    -0.00002100  0.34D-05  0.25D-05  1192.71
    4     2     2     1.08344560    -0.67404240  -214.01700378    -0.00051074    -0.00002110  0.34D-05  0.26D-05  1192.71
    4     3     3     1.08344463    -0.67404227  -214.01700365    -0.00051347    -0.00002122  0.34D-05  0.26D-05  1192.71
    4     4     4     1.07962960    -0.65952393  -213.82567971    -0.00033584    -0.00001311  0.27D-05  0.14D-05  1192.71
    4     5     5     1.07962899    -0.65952391  -213.82567970    -0.00033661    -0.00001312  0.27D-05  0.14D-05  1192.71
    4     6     6     1.07962826    -0.65952388  -213.82567966    -0.00033741    -0.00001316  0.27D-05  0.14D-05  1192.71
    4     7     7     1.07962544    -0.65952377  -213.82567955    -0.00033894    -0.00001340  0.27D-05  0.15D-05  1192.71
    4     8     8     1.07962390    -0.65952370  -213.82567948    -0.00034062    -0.00001345  0.27D-05  0.15D-05  1192.71
    4     9     9     1.08015288    -0.66176450  -213.82034149    -0.00039403    -0.00001629  0.34D-05  0.17D-05  1192.71
    4    10    10     1.08015248    -0.66176449  -213.82034147    -0.00039491    -0.00001630  0.34D-05  0.17D-05  1192.71
    4    11    11     1.08015216    -0.66176446  -213.82034144    -0.00039527    -0.00001633  0.34D-05  0.17D-05  1192.71
    4    12    12     1.07990898    -0.66001134  -213.81839583    -0.00035335    -0.00001403  0.26D-05  0.17D-05  1192.71
    5     1     1     1.08350613    -0.67406547  -214.01702685    -0.00002295    -0.00000085  0.82D-07  0.12D-06  1557.51
    5     2     2     1.08350549    -0.67406546  -214.01702684    -0.00002307    -0.00000085  0.82D-07  0.12D-06  1557.51
    5     3     3     1.08350549    -0.67406546  -214.01702684    -0.00002319    -0.00000086  0.82D-07  0.12D-06  1557.51
    5     4     4     1.07974859    -0.65953883  -213.82569461    -0.00001490    -0.00000054  0.52D-07  0.98D-07  1557.51
    5     5     5     1.07974841    -0.65953883  -213.82569461    -0.00001491    -0.00000054  0.51D-07  0.99D-07  1557.51
    5     6     6     1.07974924    -0.65953869  -213.82569448    -0.00001481    -0.00000053  0.51D-07  0.96D-07  1557.51
    5     7     7     1.07974906    -0.65953869  -213.82569448    -0.00001492    -0.00000053  0.51D-07  0.97D-07  1557.51
    5     8     8     1.07974900    -0.65953869  -213.82569448    -0.00001499    -0.00000053  0.51D-07  0.97D-07  1557.51
    5     9     9     1.08023223    -0.66178234  -213.82035932    -0.00001783    -0.00000074  0.97D-07  0.11D-06  1557.51
    5    10    10     1.08023207    -0.66178233  -213.82035932    -0.00001784    -0.00000074  0.97D-07  0.11D-06  1557.51
    5    11    11     1.08023214    -0.66178233  -213.82035932    -0.00001788    -0.00000074  0.97D-07  0.11D-06  1557.51
    5    12    12     1.08006722    -0.66002716  -213.81841165    -0.00001582    -0.00000060  0.49D-07  0.12D-06  1557.51
    6     1     1     1.08349428    -0.67406639  -214.01702777    -0.00000092    -0.00000004  0.47D-08  0.67D-08  1920.53
    6     2     2     1.08349412    -0.67406639  -214.01702777    -0.00000092    -0.00000005  0.48D-08  0.67D-08  1920.53
    6     3     3     1.08349403    -0.67406639  -214.01702777    -0.00000093    -0.00000005  0.48D-08  0.68D-08  1920.53
    6     4     4     1.07975404    -0.65953946  -213.82569524    -0.00000063    -0.00000004  0.34D-08  0.82D-08  1920.53
    6     5     5     1.07975402    -0.65953946  -213.82569524    -0.00000063    -0.00000004  0.35D-08  0.83D-08  1920.53
    6     6     6     1.07975435    -0.65953931  -213.82569509    -0.00000062    -0.00000004  0.35D-08  0.79D-08  1920.53
    6     7     7     1.07975435    -0.65953931  -213.82569509    -0.00000062    -0.00000004  0.35D-08  0.79D-08  1920.53
    6     8     8     1.07975438    -0.65953931  -213.82569509    -0.00000062    -0.00000004  0.35D-08  0.79D-08  1920.53
    6     9     9     1.08022979    -0.66178314  -213.82036012    -0.00000081    -0.00000005  0.55D-08  0.11D-07  1920.53
    6    10    10     1.08022979    -0.66178314  -213.82036012    -0.00000081    -0.00000005  0.55D-08  0.11D-07  1920.53
    6    11    11     1.08022979    -0.66178314  -213.82036012    -0.00000081    -0.00000005  0.56D-08  0.11D-07  1920.53
    6    12    12     1.08007884    -0.66002786  -213.81841235    -0.00000070    -0.00000004  0.42D-08  0.89D-08  1920.53
    7     1     1     1.08350108    -0.67406644  -214.01702782    -0.00000005    -0.00000000  0.19D-09  0.43D-09  2281.04
    7     2     2     1.08350108    -0.67406644  -214.01702782    -0.00000005    -0.00000000  0.19D-09  0.43D-09  2281.04
    7     3     3     1.08350107    -0.67406644  -214.01702782    -0.00000005    -0.00000000  0.19D-09  0.43D-09  2281.04
    7     4     4     1.07976048    -0.65953950  -213.82569528    -0.00000004    -0.00000000  0.28D-09  0.76D-09  2281.04
    7     5     5     1.07976048    -0.65953950  -213.82569528    -0.00000004    -0.00000000  0.28D-09  0.76D-09  2281.04
    7     6     6     1.07976035    -0.65953935  -213.82569514    -0.00000004    -0.00000000  0.27D-09  0.74D-09  2281.04
    7     7     7     1.07976036    -0.65953935  -213.82569514    -0.00000004    -0.00000000  0.27D-09  0.74D-09  2281.04
    7     8     8     1.07976035    -0.65953935  -213.82569514    -0.00000004    -0.00000000  0.27D-09  0.74D-09  2281.04
    7     9     9     1.08023539    -0.66178320  -213.82036019    -0.00000006    -0.00000001  0.39D-09  0.11D-08  2281.04
    7    10    10     1.08023538    -0.66178320  -213.82036019    -0.00000006    -0.00000001  0.39D-09  0.11D-08  2281.04
    7    11    11     1.08023538    -0.66178320  -213.82036019    -0.00000006    -0.00000001  0.39D-09  0.11D-08  2281.04
    7    12    12     1.08008675    -0.66002791  -213.81841240    -0.00000005    -0.00000000  0.28D-09  0.67D-09  2281.04


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.7%
 S   0.9%  12.4%
 P   0.4%  48.3%  27.1%

 Initialization:   3.6%
 Other:            5.5%

 Total CPU:     2281.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220//000          -0.0627678  -0.1510259   0.9397118   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                           -0.0055568  -0.0202387  -0.0001565  -0.0000000
 2222222222//0000           0.9383053  -0.1676713   0.0357265  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                            0.0202300  -0.0055590   0.0005920   0.0000000
 2222222222/0/000           0.1595314   0.9267601   0.1596002   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                            0.0006123  -0.0000059  -0.0209793   0.0000000
 2222222222/00/00          -0.0000000   0.0000000   0.0000000  -0.0860772   0.7725538  -0.0000184  -0.0000036   0.0000120
                           -0.0000000  -0.0000000   0.0000000   0.5493794
 222222222200/00/          -0.0000000  -0.0000000  -0.0000000   0.7120898  -0.3117319  -0.0000576   0.0000283   0.0000196
                            0.0000000  -0.0000000   0.0000000   0.5493794
 2222222222/000/0          -0.0163068   0.0029140  -0.0006209  -0.0000266   0.0000002   0.0000047   0.6731913  -0.0000007
                            0.6425759  -0.1765722   0.0188029  -0.0000000
 22222222220/0/00           0.0163068  -0.0029140   0.0006209  -0.0000266   0.0000002   0.0000048   0.6731913  -0.0000007
                           -0.6425759   0.1765722  -0.0188029   0.0000000
 222222222200/0/0          -0.0010908  -0.0026247   0.0163312   0.0000647   0.0000233   0.6731885  -0.0000048  -0.0019706
                            0.1765023   0.6428509   0.0049718   0.0000000
 222222222200//00           0.0027725   0.0161061   0.0027737  -0.0000241  -0.0000131   0.0019706   0.0000007   0.6731884
                           -0.0194483   0.0001860   0.6663759  -0.0000000
 2222222222/0000/          -0.0027725  -0.0161061  -0.0027737  -0.0000241  -0.0000131   0.0019706   0.0000007   0.6731884
                            0.0194483  -0.0001860  -0.6663759   0.0000000
 22222222220/000/           0.0010908   0.0026247  -0.0163312   0.0000647   0.0000233   0.6731884  -0.0000047  -0.0019706
                           -0.1765023  -0.6428510  -0.0049718  -0.0000000
 22222222220/00/0          -0.0000000  -0.0000000  -0.0000000  -0.6260126  -0.4608219   0.0000760  -0.0000246  -0.0000316
                            0.0000000  -0.0000000   0.0000000   0.5493794
 2222222222000/0/          -0.0024027  -0.0139577  -0.0024037   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                           -0.0038450   0.0000368   0.1317446  -0.0000000
 22222222220000//           0.0009453   0.0022746  -0.0141527  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                            0.0348951   0.1270936   0.0009829   0.0000000
 2222222222000//0          -0.0141316   0.0025253  -0.0005381   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                           -0.1270393   0.0349089  -0.0037174   0.0000000
 22222202222//000           0.0065877   0.0158507  -0.0986262  -0.0000000  -0.0000000   0.0000001   0.0000000  -0.0000000
                           -0.0007689  -0.0028003  -0.0000217   0.0000000
 2222220222//2000          -0.0984785   0.0175977  -0.0037496  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                            0.0027991  -0.0007692   0.0000819   0.0000000
 2222220222/2/000          -0.0167434  -0.0972669  -0.0167506   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000001
                            0.0000847  -0.0000008  -0.0029028   0.0000000
 2222220222/02/00           0.0000000   0.0000000   0.0000000   0.0074741  -0.0745357   0.0000019   0.0000003  -0.0000012
                            0.0000000   0.0000000  -0.0000000  -0.0538910
 2222220222/20/00          -0.0000000   0.0000000   0.0000000   0.0091149  -0.0743529   0.0000017   0.0000004  -0.0000011
                            0.0000000   0.0000000  -0.0000000  -0.0538910
 222222022220/00/          -0.0000000  -0.0000000  -0.0000000  -0.0689490   0.0292827   0.0000056  -0.0000027  -0.0000019
                           -0.0000000  -0.0000000  -0.0000000  -0.0538910
 222222022202/00/           0.0000000  -0.0000000  -0.0000000  -0.0682868   0.0307951   0.0000055  -0.0000027  -0.0000019
                           -0.0000000  -0.0000000  -0.0000000  -0.0538910
 2222220222/020/0           0.0034477  -0.0006161   0.0001313   0.0000026  -0.0000000  -0.0000005  -0.0652823   0.0000001
                           -0.0628020   0.0172572  -0.0018377   0.0000000
 22222202220/2/00          -0.0034478   0.0006161  -0.0001313   0.0000026  -0.0000000  -0.0000005  -0.0652823   0.0000001
                            0.0628019  -0.0172572   0.0018377  -0.0000000
 222222022220/0/0           0.0002306   0.0005549  -0.0034529  -0.0000063  -0.0000023  -0.0652821   0.0000005   0.0001911
                           -0.0172504  -0.0628289  -0.0004859  -0.0000000
 22222202222/000/          -0.0002306  -0.0005549   0.0034529  -0.0000063  -0.0000023  -0.0652821   0.0000005   0.0001911
                            0.0172504   0.0628288   0.0004859   0.0000000
 222222022202//00          -0.0005862  -0.0034053  -0.0005864   0.0000023   0.0000013  -0.0001911  -0.0000001  -0.0652820
                            0.0019008  -0.0000182  -0.0651281   0.0000000
 2222220222/2000/           0.0005862   0.0034053   0.0005864   0.0000023   0.0000013  -0.0001911  -0.0000001  -0.0652820
                           -0.0019008   0.0000182   0.0651281  -0.0000000
 22222202222/0/00           0.0180811  -0.0032310   0.0006884   0.0000026  -0.0000000  -0.0000005  -0.0644569   0.0000001
                            0.0607803  -0.0167017   0.0017785  -0.0000000
 2222220222/200/0          -0.0180811   0.0032310  -0.0006884   0.0000026  -0.0000000  -0.0000005  -0.0644568   0.0000001
                           -0.0607803   0.0167017  -0.0017785   0.0000000
 2222220222/0200/          -0.0030742  -0.0178586  -0.0030755   0.0000023   0.0000013  -0.0001887  -0.0000001  -0.0644566
                           -0.0018396   0.0000176   0.0630315  -0.0000000
 222222022220//00           0.0030742   0.0178586   0.0030755   0.0000023   0.0000013  -0.0001887  -0.0000001  -0.0644566
                            0.0018396  -0.0000176  -0.0630315   0.0000000
 22222202220/200/           0.0012095   0.0029103  -0.0181082  -0.0000062  -0.0000022  -0.0644566   0.0000005   0.0001887
                            0.0166951   0.0608063   0.0004703   0.0000000
 222222022202/0/0          -0.0012095  -0.0029103   0.0181082  -0.0000062  -0.0000022  -0.0644566   0.0000005   0.0001887
                           -0.0166951  -0.0608064  -0.0004703  -0.0000000
 22222202222/00/0           0.0000000  -0.0000000   0.0000000   0.0608127   0.0437406  -0.0000074   0.0000024   0.0000031
                           -0.0000000   0.0000000  -0.0000000  -0.0538910
 22222202220/20/0           0.0000000  -0.0000000  -0.0000000   0.0598340   0.0450702  -0.0000073   0.0000024   0.0000030
                           -0.0000000   0.0000000  -0.0000000  -0.0538910

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.943788    0.160464   -0.063135   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.002718   -0.040634
             0.006909   -0.000000
 2          -0.168651    0.932175   -0.151908    0.000000    0.000000    0.000000    0.000000    0.000000   -0.006540    0.007261
             0.040134    0.000000
 3           0.035935    0.160533    0.945202   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.040695   -0.001547
             0.006912   -0.000000
 4          -0.000000    0.000000    0.000000   -0.877421    0.000092   -0.000038   -0.000034   -0.393723   -0.000000   -0.000000
             0.000000    0.000000
 5           0.000000   -0.000000   -0.000000   -0.393723    0.000033    0.000000   -0.000019    0.877421    0.000000    0.000000
             0.000000    0.000000
 6          -0.000000    0.000000   -0.000000    0.000098    0.961706    0.000007    0.002815    0.000007    0.000000   -0.000000
             0.000000    0.000000
 7          -0.000000    0.000000    0.000000   -0.000035   -0.000007    0.961710    0.000001   -0.000016   -0.000000   -0.000000
            -0.000000    0.000000
 8           0.000000   -0.000000    0.000000   -0.000039   -0.002815   -0.000001    0.961706    0.000003   -0.000000    0.000000
             0.000000    0.000000
 9           0.041329    0.001251   -0.011352   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.254310    0.925843
            -0.028022    0.000000
 10         -0.011357   -0.000012   -0.041347   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.926239   -0.254411
             0.000268   -0.000000
 11          0.001209   -0.042860   -0.000320    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.007164    0.027092
             0.960135    0.000000
 12         -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.961568

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960300    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000738   -0.000150
            -0.000106   -0.000000
 2           0.000000    0.960300   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000075    0.000151
            -0.000741    0.000000
 3          -0.000000   -0.000000    0.960300    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000167   -0.000730
            -0.000132   -0.000000
 4          -0.000000    0.000000    0.000000    0.961710   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.961710    0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.961710   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000
 7          -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.961710    0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 8           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.961710   -0.000000   -0.000000
             0.000000   -0.000000
 9           0.000738   -0.000075   -0.000167    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.961500    0.000000
            -0.000000    0.000000
 10         -0.000150    0.000151   -0.000730    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.961500
             0.000000    0.000000
 11         -0.000106   -0.000741   -0.000132   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.961500    0.000000
 12         -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.961568


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.94378768 (fixed)   0.96039335 (relaxed)   0.96029964 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00082264   -0.00146955   -0.56928430
 Singles      0.01762203   -0.05729338   -0.06378614
 Pairs        0.06594775    0.00000000   -0.04099600
 Total        1.08439241   -0.05876293   -0.67406644
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34260756
 Nuclear energy                         0.00000000
 Kinetic energy                        83.03756287
 One electron energy                 -375.94015414
 Two electron energy                  161.92312632
 Virial quotient                       -2.57735199
 Correlation energy                    -0.67442025
 !MRCI STATE 1.1 Energy              -214.017027816411

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07394377 (Davidson, fixed reference)
 Cluster corrected energies          -214.07380106 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07394377 (Davidson, rotated reference)

 Cluster corrected energies          -214.07192049 (Pople, fixed reference)
 Cluster corrected energies          -214.07177313 (Pople, relaxed reference)
 Cluster corrected energies          -214.07192049 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.93217510 (fixed)   0.96039335 (relaxed)   0.96029964 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00082264   -0.00146955   -0.56928430
 Singles      0.01762202   -0.05729338   -0.06378614
 Pairs        0.06594775   -0.00000000   -0.04099599
 Total        1.08439240   -0.05876293   -0.67406644
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34260756
 Nuclear energy                         0.00000000
 Kinetic energy                        83.03756428
 One electron energy                 -375.94015547
 Two electron energy                  161.92312765
 Virial quotient                       -2.57735195
 Correlation energy                    -0.67442025
 !MRCI STATE 2.1 Energy              -214.017027816390

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07394376 (Davidson, fixed reference)
 Cluster corrected energies          -214.07380105 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07394376 (Davidson, rotated reference)

 Cluster corrected energies          -214.07192048 (Pople, fixed reference)
 Cluster corrected energies          -214.07177312 (Pople, relaxed reference)
 Cluster corrected energies          -214.07192048 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.94520242 (fixed)   0.96039335 (relaxed)   0.96029965 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00082264   -0.00146955   -0.56928434
 Singles      0.01762199   -0.05729334   -0.06378613
 Pairs        0.06594777    0.00000000   -0.04099597
 Total        1.08439239   -0.05876290   -0.67406644
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34260756
 Nuclear energy                         0.00000000
 Kinetic energy                        83.03756351
 One electron energy                 -375.94015388
 Two electron energy                  161.92312606
 Virial quotient                       -2.57735197
 Correlation energy                    -0.67442025
 !MRCI STATE 3.1 Energy              -214.017027816361

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07394376 (Davidson, fixed reference)
 Cluster corrected energies          -214.07380105 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07394376 (Davidson, rotated reference)

 Cluster corrected energies          -214.07192048 (Pople, fixed reference)
 Cluster corrected energies          -214.07177312 (Pople, relaxed reference)
 Cluster corrected energies          -214.07192048 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.87742121 (fixed)   0.96186193 (relaxed)   0.96170996 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134642   -0.00235075   -0.55677413
 Singles      0.01777708   -0.05843536   -0.06488704
 Pairs        0.06209078   -0.00000001   -0.03787833
 Total        1.08121428   -0.06078612   -0.65953950
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16615578
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81906948
 One electron energy                 -371.95061089
 Two electron energy                  158.12491561
 Virial quotient                       -2.58184132
 Correlation energy                    -0.65953950
 !MRCI STATE 4.1 Energy              -213.825695282294

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87925931 (Davidson, fixed reference)
 Cluster corrected energies          -213.87903399 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87925931 (Davidson, rotated reference)

 Cluster corrected energies          -213.87721770 (Pople, fixed reference)
 Cluster corrected energies          -213.87698629 (Pople, relaxed reference)
 Cluster corrected energies          -213.87721770 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.87742121 (fixed)   0.96186193 (relaxed)   0.96170995 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134642   -0.00235075   -0.55677412
 Singles      0.01777711   -0.05843538   -0.06488706
 Pairs        0.06209077    0.00000001   -0.03787831
 Total        1.08121429   -0.06078612   -0.65953950
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16615578
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81906873
 One electron energy                 -371.95061035
 Two electron energy                  158.12491507
 Virial quotient                       -2.58184134
 Correlation energy                    -0.65953950
 !MRCI STATE 5.1 Energy              -213.825695282188

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87925931 (Davidson, fixed reference)
 Cluster corrected energies          -213.87903400 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87925931 (Davidson, rotated reference)

 Cluster corrected energies          -213.87721771 (Pople, fixed reference)
 Cluster corrected energies          -213.87698630 (Pople, relaxed reference)
 Cluster corrected energies          -213.87721771 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96170589 (fixed)   0.96186198 (relaxed)   0.96171001 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134642   -0.00235073   -0.55677429
 Singles      0.01777693   -0.05843512   -0.06488685
 Pairs        0.06209081   -0.00000000   -0.03787821
 Total        1.08121416   -0.06078586   -0.65953935
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16615578
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81905206
 One electron energy                 -371.95058995
 Two electron energy                  158.12489482
 Virial quotient                       -2.58184186
 Correlation energy                    -0.65953935
 !MRCI STATE 6.1 Energy              -213.825695135537

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87925907 (Davidson, fixed reference)
 Cluster corrected energies          -213.87903375 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87925907 (Davidson, rotated reference)

 Cluster corrected energies          -213.87721746 (Pople, fixed reference)
 Cluster corrected energies          -213.87698605 (Pople, relaxed reference)
 Cluster corrected energies          -213.87721746 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96171001 (fixed)   0.96186198 (relaxed)   0.96171001 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134642   -0.00235073   -0.55677429
 Singles      0.01777694   -0.05843512   -0.06488686
 Pairs        0.06209082   -0.00000000   -0.03787821
 Total        1.08121417   -0.06078585   -0.65953935
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16615578
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81905231
 One electron energy                 -371.95059031
 Two electron energy                  158.12489517
 Virial quotient                       -2.58184185
 Correlation energy                    -0.65953935
 !MRCI STATE 7.1 Energy              -213.825695135520

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87925908 (Davidson, fixed reference)
 Cluster corrected energies          -213.87903376 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87925908 (Davidson, rotated reference)

 Cluster corrected energies          -213.87721747 (Pople, fixed reference)
 Cluster corrected energies          -213.87698606 (Pople, relaxed reference)
 Cluster corrected energies          -213.87721747 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96170589 (fixed)   0.96186198 (relaxed)   0.96171001 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134642   -0.00235073   -0.55677428
 Singles      0.01777693   -0.05843513   -0.06488686
 Pairs        0.06209081   -0.00000000   -0.03787821
 Total        1.08121416   -0.06078586   -0.65953935
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16615578
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81905157
 One electron energy                 -371.95058951
 Two electron energy                  158.12489438
 Virial quotient                       -2.58184187
 Correlation energy                    -0.65953935
 !MRCI STATE 8.1 Energy              -213.825695135494

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87925907 (Davidson, fixed reference)
 Cluster corrected energies          -213.87903375 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87925907 (Davidson, rotated reference)

 Cluster corrected energies          -213.87721746 (Pople, fixed reference)
 Cluster corrected energies          -213.87698605 (Pople, relaxed reference)
 Cluster corrected energies          -213.87721746 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.92584281 (fixed)   0.96167102 (relaxed)   0.96149966 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134407   -0.00227066   -0.55842332
 Singles      0.01797842   -0.05863327   -0.06520253
 Pairs        0.06236481   -0.00000000   -0.03815736
 Total        1.08168730   -0.06090393   -0.66178320
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15893080
 Nuclear energy                         0.00000000
 Kinetic energy                        82.85518270
 One electron energy                 -372.19392275
 Two electron energy                  158.37356256
 Virial quotient                       -2.58065160
 Correlation energy                    -0.66142939
 !MRCI STATE 9.1 Energy              -213.820360186885

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87439057 (Davidson, fixed reference)
 Cluster corrected energies          -213.87413562 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87439057 (Davidson, rotated reference)

 Cluster corrected energies          -213.87235179 (Pople, fixed reference)
 Cluster corrected energies          -213.87208975 (Pople, relaxed reference)
 Cluster corrected energies          -213.87235179 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.92623907 (fixed)   0.96167102 (relaxed)   0.96149966 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134407   -0.00227066   -0.55842333
 Singles      0.01797841   -0.05863327   -0.06520252
 Pairs        0.06236482    0.00000000   -0.03815735
 Total        1.08168729   -0.06090392   -0.66178320
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15893080
 Nuclear energy                         0.00000000
 Kinetic energy                        82.85518232
 One electron energy                 -372.19392221
 Two electron energy                  158.37356203
 Virial quotient                       -2.58065162
 Correlation energy                    -0.66142939
 !MRCI STATE 10.1 Energy             -213.820360186831

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87439056 (Davidson, fixed reference)
 Cluster corrected energies          -213.87413561 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87439056 (Davidson, rotated reference)

 Cluster corrected energies          -213.87235178 (Pople, fixed reference)
 Cluster corrected energies          -213.87208974 (Pople, relaxed reference)
 Cluster corrected energies          -213.87235178 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.96013455 (fixed)   0.96167102 (relaxed)   0.96149966 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134407   -0.00227066   -0.55842332
 Singles      0.01797842   -0.05863328   -0.06520253
 Pairs        0.06236481   -0.00000000   -0.03815736
 Total        1.08168729   -0.06090394   -0.66178320
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15893080
 Nuclear energy                         0.00000000
 Kinetic energy                        82.85518277
 One electron energy                 -372.19392271
 Two electron energy                  158.37356253
 Virial quotient                       -2.58065160
 Correlation energy                    -0.66142939
 !MRCI STATE 11.1 Energy             -213.820360186599

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87439056 (Davidson, fixed reference)
 Cluster corrected energies          -213.87413561 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87439056 (Davidson, rotated reference)

 Cluster corrected energies          -213.87235178 (Pople, fixed reference)
 Cluster corrected energies          -213.87208974 (Pople, relaxed reference)
 Cluster corrected energies          -213.87235178 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.96156755 (fixed)   0.96171339 (relaxed)   0.96156755 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134045   -0.00235384   -0.00299443
 Singles      0.01775447   -0.05844751   -0.06487319
 Pairs        0.06243964   -0.59922655   -0.59216028
 Total        1.08153455   -0.66002791   -0.66002791
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15838449
 Nuclear energy                         0.00000000
 Kinetic energy                        82.82023273
 One electron energy                 -371.94982624
 Two electron energy                  158.13141384
 Virial quotient                       -2.58171712
 Correlation energy                    -0.66002791
 !MRCI STATE 12.1 Energy             -213.818412399903

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87222748 (Davidson, fixed reference)
 Cluster corrected energies          -213.87201100 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87222748 (Davidson, rotated reference)

 Cluster corrected energies          -213.87019020 (Pople, fixed reference)
 Cluster corrected energies          -213.86996775 (Pople, relaxed reference)
 Cluster corrected energies          -213.87019020 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      719.17       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3664.21   3661.67      1.70      0.05      0.59
 REAL TIME  *      3759.04 SEC
 DISK USED  *       755.54 MB (local),        8.91 GB (total)
 SF USED    *         7.50 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.07394377  AU                              
 SETTING HLSDIAG(2)     =      -214.07394376  AU                              
 SETTING HLSDIAG(3)     =      -214.07394376  AU                              
 SETTING HLSDIAG(4)     =      -213.87925931  AU                              
 SETTING HLSDIAG(5)     =      -213.87925931  AU                              
 SETTING HLSDIAG(6)     =      -213.87925907  AU                              
 SETTING HLSDIAG(7)     =      -213.87925908  AU                              
 SETTING HLSDIAG(8)     =      -213.87925907  AU                              
 SETTING HLSDIAG(9)     =      -213.87439057  AU                              
 SETTING HLSDIAG(10)    =      -213.87439056  AU                              
 SETTING HLSDIAG(11)    =      -213.87439056  AU                              
 SETTING HLSDIAG(12)    =      -213.87222748  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

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
     1      -213.30829748
     2      -213.30829748
     3      -213.30829748
     4      -213.30829747
     5      -213.30829747
     6      -213.27923912
     7      -213.17134317
     8      -213.17134317
     9      -213.17134317

 Number of blocks in overlap matrix:   899   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:    1912
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2060800
 Number of doubly external configurations:       3062720
 Total number of contracted configurations:      5147670
 Total number of uncontracted configurations:   45449790

 Diagonal Coupling coefficients finished.               Storage:  15992240 words, CPU-Time:     26.58 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1117739 words, CPU-time:      0.14 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.30829748    -0.00000000    -0.83785749  0.57D-01  0.10D+00    34.96
    1     2     2     1.00000000     0.00000000  -213.30829748    -0.00000000    -0.83900546  0.58D-01  0.10D+00    34.96
    1     3     3     1.00000000     0.00000000  -213.30829748    -0.00000000    -0.83892641  0.58D-01  0.10D+00    34.96
    1     4     4     1.00000000     0.00000000  -213.30829747     0.00000000    -0.83926396  0.59D-01  0.10D+00    34.96
    1     5     5     1.00000000     0.00000000  -213.30829747     0.00000000    -0.83805740  0.57D-01  0.10D+00    34.96
    1     6     6     1.00000000     0.00000000  -213.27923912     0.00000000    -0.81352511  0.29D-01  0.11D+00    34.96
    1     7     7     1.00000000     0.00000000  -213.17134317    -0.00000000    -0.79925580  0.39D-01  0.94D-01    34.96
    1     8     8     1.00000000     0.00000000  -213.17134317     0.00000000    -0.79930745  0.39D-01  0.94D-01    34.96
    1     9     9     1.00000000     0.00000000  -213.17134317    -0.00000000    -0.79927198  0.39D-01  0.94D-01    34.96
    2     1     1     1.09775029    -0.65947087  -213.96776835    -0.65947087    -0.01977268  0.39D-02  0.16D-02   189.97
    2     2     2     1.09766729    -0.65943903  -213.96773650    -0.65943903    -0.01980013  0.39D-02  0.16D-02   189.97
    2     3     3     1.09829849    -0.65919063  -213.96748811    -0.65919063    -0.02007312  0.41D-02  0.16D-02   189.97
    2     4     4     1.09836672    -0.65915095  -213.96744843    -0.65915095    -0.02011770  0.41D-02  0.16D-02   189.97
    2     5     5     1.09859457    -0.65901315  -213.96731062    -0.65901315    -0.02027246  0.42D-02  0.16D-02   189.97
    2     6     6     1.08689168    -0.65539277  -213.93463188    -0.65539277    -0.01621211  0.29D-02  0.14D-02   189.97
    2     7     7     1.08532341    -0.64440539  -213.81574856    -0.64440539    -0.01515181  0.24D-02  0.11D-02   189.97
    2     8     8     1.08532704    -0.64440164  -213.81574480    -0.64440164    -0.01515554  0.24D-02  0.11D-02   189.97
    2     9     9     1.08536699    -0.64438158  -213.81572475    -0.64438158    -0.01517780  0.24D-02  0.11D-02   189.97
    3     1     1     1.08698125    -0.67804721  -213.98634469    -0.01857634    -0.00055130  0.81D-04  0.68D-04   344.54
    3     2     2     1.08696964    -0.67804584  -213.98634331    -0.01860681    -0.00055224  0.81D-04  0.68D-04   344.54
    3     3     3     1.08704851    -0.67803245  -213.98632993    -0.01884182    -0.00056558  0.83D-04  0.71D-04   344.54
    3     4     4     1.08705519    -0.67802896  -213.98632644    -0.01887801    -0.00056870  0.84D-04  0.72D-04   344.54
    3     5     5     1.08706454    -0.67802229  -213.98631976    -0.01900914    -0.00057537  0.85D-04  0.73D-04   344.54
    3     6     6     1.08263948    -0.67111100  -213.95035012    -0.01571824    -0.00045757  0.47D-04  0.74D-04   344.54
    3     7     7     1.07909210    -0.65893006  -213.83027323    -0.01452467    -0.00031060  0.31D-04  0.33D-04   344.54
    3     8     8     1.07909459    -0.65892947  -213.83027264    -0.01452784    -0.00031110  0.31D-04  0.33D-04   344.54
    3     9     9     1.07909373    -0.65892903  -213.83027220    -0.01454745    -0.00031163  0.31D-04  0.33D-04   344.54
    4     1     1     1.08696532    -0.67862612  -213.98692360    -0.00057891    -0.00003013  0.41D-05  0.49D-05   500.31
    4     2     2     1.08696277    -0.67862599  -213.98692346    -0.00058015    -0.00003020  0.41D-05  0.49D-05   500.31
    4     3     3     1.08696226    -0.67862557  -213.98692304    -0.00059312    -0.00003062  0.42D-05  0.50D-05   500.31
    4     4     4     1.08696108    -0.67862535  -213.98692283    -0.00059639    -0.00003081  0.42D-05  0.50D-05   500.31
    4     5     5     1.08696207    -0.67862502  -213.98692249    -0.00060273    -0.00003108  0.43D-05  0.51D-05   500.31
    4     6     6     1.08382247    -0.67160391  -213.95084303    -0.00049291    -0.00003107  0.28D-05  0.63D-05   500.31
    4     7     7     1.07953362    -0.65925268  -213.83059585    -0.00032261    -0.00001298  0.27D-05  0.14D-05   500.31
    4     8     8     1.07953369    -0.65925263  -213.83059579    -0.00032315    -0.00001303  0.27D-05  0.14D-05   500.31
    4     9     9     1.07953400    -0.65925262  -213.83059579    -0.00032359    -0.00001303  0.27D-05  0.14D-05   500.31
    5     1     1     1.08704548    -0.67866187  -213.98695935    -0.00003575    -0.00000177  0.94D-07  0.38D-06   655.06
    5     2     2     1.08704570    -0.67866184  -213.98695932    -0.00003585    -0.00000179  0.92D-07  0.39D-06   655.06
    5     3     3     1.08704115    -0.67866183  -213.98695931    -0.00003626    -0.00000180  0.99D-07  0.39D-06   655.06
    5     4     4     1.08704049    -0.67866183  -213.98695930    -0.00003647    -0.00000180  0.98D-07  0.39D-06   655.06
    5     5     5     1.08704042    -0.67866180  -213.98695927    -0.00003678    -0.00000182  0.10D-06  0.40D-06   655.06
    5     6     6     1.08430328    -0.67164140  -213.95088052    -0.00003749    -0.00000242  0.13D-06  0.54D-06   655.06
    5     7     7     1.07962465    -0.65926749  -213.83061065    -0.00001481    -0.00000060  0.53D-07  0.11D-06   655.06
    5     8     8     1.07962466    -0.65926748  -213.83061064    -0.00001485    -0.00000060  0.53D-07  0.11D-06   655.06
    5     9     9     1.07962462    -0.65926747  -213.83061064    -0.00001485    -0.00000060  0.53D-07  0.11D-06   655.06
    6     1     1     1.08704503    -0.67866405  -213.98696153    -0.00000218    -0.00000018  0.20D-07  0.36D-07   809.03
    6     2     2     1.08704489    -0.67866405  -213.98696152    -0.00000221    -0.00000018  0.20D-07  0.36D-07   809.03
    6     3     3     1.08704428    -0.67866404  -213.98696152    -0.00000221    -0.00000018  0.21D-07  0.37D-07   809.03
    6     4     4     1.08704423    -0.67866404  -213.98696152    -0.00000222    -0.00000018  0.21D-07  0.37D-07   809.03
    6     5     5     1.08704389    -0.67866404  -213.98696151    -0.00000224    -0.00000019  0.21D-07  0.38D-07   809.03
    6     6     6     1.08435787    -0.67164451  -213.95088363    -0.00000311    -0.00000025  0.29D-07  0.43D-07   809.03
    6     7     7     1.07962356    -0.65926821  -213.83061138    -0.00000073    -0.00000005  0.47D-08  0.10D-07   809.03
    6     8     8     1.07962350    -0.65926821  -213.83061137    -0.00000073    -0.00000005  0.47D-08  0.10D-07   809.03
    6     9     9     1.07962354    -0.65926820  -213.83061137    -0.00000073    -0.00000005  0.47D-08  0.10D-07   809.03
    7     1     1     1.08707049    -0.67866427  -213.98696174    -0.00000022    -0.00000002  0.19D-08  0.35D-08   963.36
    7     2     2     1.08707041    -0.67866427  -213.98696174    -0.00000022    -0.00000002  0.19D-08  0.35D-08   963.36
    7     3     3     1.08707039    -0.67866427  -213.98696174    -0.00000022    -0.00000002  0.19D-08  0.34D-08   963.36
    7     4     4     1.08707042    -0.67866427  -213.98696174    -0.00000022    -0.00000002  0.19D-08  0.35D-08   963.36
    7     5     5     1.08707049    -0.67866427  -213.98696174    -0.00000023    -0.00000002  0.19D-08  0.35D-08   963.36
    7     6     6     1.08438111    -0.67164480  -213.95088391    -0.00000029    -0.00000002  0.27D-08  0.42D-08   963.36
    7     7     7     1.07962903    -0.65926827  -213.83061144    -0.00000006    -0.00000001  0.42D-09  0.96D-09   963.36
    7     8     8     1.07962901    -0.65926827  -213.83061143    -0.00000006    -0.00000001  0.42D-09  0.96D-09   963.36
    7     9     9     1.07962901    -0.65926826  -213.83061143    -0.00000006    -0.00000001  0.42D-09  0.95D-09   963.36


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.3%
 S   1.1%  14.3%
 P   0.5%  43.5%  28.5%

 Initialization:   2.8%
 Other:            6.9%

 Total CPU:      963.4 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222020000           0.3178477  -0.0498520   0.6404681   0.0962423  -0.2795016   0.5373879   0.0000000  -0.0000000
                           -0.0000000
 222222222200/0\0           0.0107634   0.0291989   0.0014172   0.0277496   0.0198347   0.0000000  -0.1943848   0.6388328
                            0.0868965
 22222222220/000\           0.0107634   0.0291989   0.0014172   0.0277496   0.0198347  -0.0000000   0.1943848  -0.6388326
                           -0.0868965
 2222222222/\0000           0.6158404  -0.2468093  -0.0222124  -0.3801375   0.5625575  -0.0000000  -0.0000000  -0.0000000
                            0.0000000
 22222222220/\000           0.2212482   0.6002022   0.0291312   0.5704111   0.4077159  -0.0000000  -0.0000000   0.0000000
                            0.0000000
 2222222222/0\000           0.5673431   0.0802529  -0.5248283   0.1051105  -0.5355665   0.0000000   0.0000000  -0.0000000
                            0.0000000
 2222222222002000          -0.1615649   0.5098576  -0.2511057  -0.4991354   0.0533599   0.5373879   0.0000000  -0.0000000
                            0.0000000
 2222222222200000          -0.1562828  -0.4600056  -0.3893624   0.4028931   0.2261417   0.5373879   0.0000000  -0.0000000
                            0.0000000
 222222222200/\00           0.0276004   0.0039042  -0.0255321   0.0051135  -0.0260545  -0.0000000   0.4639832   0.0756004
                            0.4821285
 2222222222/0000\           0.0276004   0.0039042  -0.0255321   0.0051135  -0.0260545   0.0000000  -0.4639832  -0.0756004
                           -0.4821284
 2222222222/000\0           0.0299597  -0.0120069  -0.0010806  -0.0184931   0.0273676   0.0000000   0.4476358   0.1990503
                           -0.4620009
 22222222220/0\00           0.0299597  -0.0120069  -0.0010806  -0.0184931   0.0273676  -0.0000000  -0.4476357  -0.1990503
                            0.4620009
 2222220222202000           0.0332516  -0.0052153   0.0670025   0.0100684  -0.0292400  -0.1087982  -0.0000000   0.0000000
                           -0.0000000
 2222220222022000          -0.0163495  -0.0481236  -0.0407331   0.0421487   0.0236578  -0.1087982  -0.0000000   0.0000000
                            0.0000000
 2222220222220000          -0.0169021   0.0533386  -0.0262694  -0.0522170   0.0055823  -0.1087982   0.0000000   0.0000000
                           -0.0000000
 2222222222/00\00          -0.0107521  -0.0316480  -0.0267879   0.0277188   0.0155584   0.0742584  -0.0000000   0.0000000
                            0.0000000
 222222222200/00\          -0.0111156   0.0350778  -0.0172760  -0.0343402   0.0036712   0.0742584   0.0000000  -0.0000000
                           -0.0000000
 22222222220/00\0           0.0218677  -0.0034298   0.0440638   0.0066214  -0.0192295   0.0742584   0.0000000   0.0000000
                           -0.0000000
 2222220222/\2000          -0.0644259   0.0258199   0.0023237   0.0397679  -0.0588517   0.0000000   0.0000000   0.0000000
                           -0.0000000
 22222202222/\000          -0.0231458  -0.0627899  -0.0030476  -0.0596734  -0.0426531   0.0000000   0.0000000  -0.0000000
                           -0.0000000
 222222022220/0\0          -0.0006283  -0.0017044  -0.0000827  -0.0016198  -0.0011578  -0.0000000   0.0188681  -0.0620088
                           -0.0084347
 22222202222/000\          -0.0006283  -0.0017044  -0.0000827  -0.0016198  -0.0011578  -0.0000000  -0.0188681   0.0620088
                            0.0084347
 22222202220/200\          -0.0057477  -0.0155923  -0.0007568  -0.0148184  -0.0105918  -0.0000000  -0.0181726   0.0597230
                            0.0081238
 222222022202/0\0          -0.0057477  -0.0155923  -0.0007568  -0.0148184  -0.0105918  -0.0000000   0.0181726  -0.0597230
                           -0.0081238
 2222220222/2\000          -0.0593524  -0.0083956   0.0549047  -0.0109961   0.0560281  -0.0000000  -0.0000000  -0.0000000
                           -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.204583    0.621618    0.572665    0.223324   -0.335495    0.000000    0.000000    0.000000    0.000000
 2          -0.554939   -0.249125    0.081006    0.605833    0.418358    0.000000    0.000000    0.000000   -0.000000
 3          -0.502440   -0.022421   -0.529752    0.029405   -0.619830    0.000000    0.000000   -0.000000    0.000000
 4           0.483520   -0.383704    0.106097    0.575762   -0.441431    0.000000    0.000000    0.000000   -0.000000
 5           0.287384    0.567835   -0.540591    0.411541    0.228055    0.000000   -0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.959617    0.000000    0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.277633    0.639343    0.662691
 8           0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.912422    0.284297    0.107977
 9           0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.124111   -0.659860    0.688607

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958457   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.958457   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.958457    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.958457   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.958457   -0.000000   -0.000000    0.000000   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.959617    0.000000   -0.000000    0.000000
 7          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.961768   -0.000000    0.000000
 8           0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.961768    0.000000
 9           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.961768


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.62161756 (fixed)   0.95870259 (relaxed)   0.95845654 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137662   -0.00197089   -0.56757165
 Singles      0.02048458   -0.06175878   -0.06949869
 Pairs        0.06670577   -0.00000001   -0.04159393
 Total        1.08856697   -0.06372967   -0.67866427
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30829748
 Nuclear energy                         0.00000000
 Kinetic energy                        82.99679931
 One electron energy                 -375.59931150
 Two electron energy                  161.61234975
 Virial quotient                       -2.57825559
 Correlation energy                    -0.67866427
 !MRCI STATE 1.1 Energy              -213.986961744068

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04706898 (Davidson, fixed reference)
 Cluster corrected energies          -214.04668982 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04706898 (Davidson, rotated reference)

 Cluster corrected energies          -214.04582935 (Pople, fixed reference)
 Cluster corrected energies          -214.04542979 (Pople, relaxed reference)
 Cluster corrected energies          -214.04582935 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.60583263 (fixed)   0.95870262 (relaxed)   0.95845657 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137662   -0.00197089   -0.56757175
 Singles      0.02048454   -0.06175872   -0.06949866
 Pairs        0.06670574    0.00000000   -0.04159386
 Total        1.08856690   -0.06372961   -0.67866427
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30829748
 Nuclear energy                         0.00000000
 Kinetic energy                        82.99680160
 One electron energy                 -375.59931673
 Two electron energy                  161.61235499
 Virial quotient                       -2.57825552
 Correlation energy                    -0.67866427
 !MRCI STATE 2.1 Energy              -213.986961742761

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04706893 (Davidson, fixed reference)
 Cluster corrected energies          -214.04668977 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04706893 (Davidson, rotated reference)

 Cluster corrected energies          -214.04582930 (Pople, fixed reference)
 Cluster corrected energies          -214.04542974 (Pople, relaxed reference)
 Cluster corrected energies          -214.04582930 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.61982954 (fixed)   0.95870263 (relaxed)   0.95845658 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137662   -0.00197089   -0.56757178
 Singles      0.02048448   -0.06175869   -0.06949863
 Pairs        0.06670578    0.00000000   -0.04159386
 Total        1.08856687   -0.06372958   -0.67866427
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30829748
 Nuclear energy                         0.00000000
 Kinetic energy                        82.99680266
 One electron energy                 -375.59931857
 Two electron energy                  161.61235683
 Virial quotient                       -2.57825549
 Correlation energy                    -0.67866427
 !MRCI STATE 3.1 Energy              -213.986961741909

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04706891 (Davidson, fixed reference)
 Cluster corrected energies          -214.04668975 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04706891 (Davidson, rotated reference)

 Cluster corrected energies          -214.04582928 (Pople, fixed reference)
 Cluster corrected energies          -214.04542972 (Pople, relaxed reference)
 Cluster corrected energies          -214.04582928 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.57576202 (fixed)   0.95870262 (relaxed)   0.95845656 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137662   -0.00197089   -0.56757174
 Singles      0.02048455   -0.06175872   -0.06949866
 Pairs        0.06670574    0.00000000   -0.04159387
 Total        1.08856691   -0.06372961   -0.67866427
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30829748
 Nuclear energy                         0.00000000
 Kinetic energy                        82.99680117
 One electron energy                 -375.59931586
 Two electron energy                  161.61235412
 Virial quotient                       -2.57825553
 Correlation energy                    -0.67866427
 !MRCI STATE 4.1 Energy              -213.986961740920

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04706894 (Davidson, fixed reference)
 Cluster corrected energies          -214.04668977 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04706894 (Davidson, rotated reference)

 Cluster corrected energies          -214.04582930 (Pople, fixed reference)
 Cluster corrected energies          -214.04542974 (Pople, relaxed reference)
 Cluster corrected energies          -214.04582930 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.56783476 (fixed)   0.95870259 (relaxed)   0.95845653 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137662   -0.00197089   -0.56757163
 Singles      0.02048460   -0.06175879   -0.06949870
 Pairs        0.06670575   -0.00000000   -0.04159393
 Total        1.08856698   -0.06372969   -0.67866427
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30829748
 Nuclear energy                         0.00000000
 Kinetic energy                        82.99679928
 One electron energy                 -375.59931144
 Two electron energy                  161.61234970
 Virial quotient                       -2.57825559
 Correlation energy                    -0.67866427
 !MRCI STATE 5.1 Energy              -213.986961740276

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04706898 (Davidson, fixed reference)
 Cluster corrected energies          -214.04668982 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04706898 (Davidson, rotated reference)

 Cluster corrected energies          -214.04582935 (Pople, fixed reference)
 Cluster corrected energies          -214.04542979 (Pople, relaxed reference)
 Cluster corrected energies          -214.04582935 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95961746 (fixed)   0.95993455 (relaxed)   0.95961746 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00143272   -0.00178123   -0.57765640
 Singles      0.01159813   -0.04530994   -0.04889371
 Pairs        0.07290388    0.00000000   -0.04509469
 Total        1.08593472   -0.04709116   -0.67164480
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.27923912
 Nuclear energy                         0.00000000
 Kinetic energy                        82.97712331
 One electron energy                 -375.27889654
 Two electron energy                  161.32801262
 Virial quotient                       -2.57843217
 Correlation energy                    -0.67164480
 !MRCI STATE 6.1 Energy              -213.950883914370

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00860152 (Davidson, fixed reference)
 Cluster corrected energies          -214.00811974 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00860152 (Davidson, rotated reference)

 Cluster corrected energies          -214.00728290 (Pople, fixed reference)
 Cluster corrected energies          -214.00677754 (Pople, relaxed reference)
 Cluster corrected energies          -214.00728290 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.66269101 (fixed)   0.96192440 (relaxed)   0.96176835 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134672   -0.00234422   -0.17512231
 Singles      0.01789415   -0.05849975   -0.06502093
 Pairs        0.06184212   -0.41233463   -0.41912503
 Total        1.08108299   -0.47317860   -0.65926827
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17134317
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81799183
 One electron energy                 -371.95094507
 Two electron energy                  158.12033363
 Virial quotient                       -2.58193427
 Correlation energy                    -0.65926827
 !MRCI STATE 7.1 Energy              -213.830611439834

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88406688 (Davidson, fixed reference)
 Cluster corrected energies          -213.88383567 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88406688 (Davidson, rotated reference)

 Cluster corrected energies          -213.88262785 (Pople, fixed reference)
 Cluster corrected energies          -213.88238724 (Pople, relaxed reference)
 Cluster corrected energies          -213.88262785 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.91242243 (fixed)   0.96192440 (relaxed)   0.96176836 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134672   -0.00234422   -0.49438526
 Singles      0.01789414   -0.05849975   -0.06502092
 Pairs        0.06184211   -0.06718488   -0.09986208
 Total        1.08108297   -0.12802885   -0.65926827
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17134317
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81799112
 One electron energy                 -371.95094436
 Two electron energy                  158.12033293
 Virial quotient                       -2.58193429
 Correlation energy                    -0.65926827
 !MRCI STATE 8.1 Energy              -213.830611432862

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88406686 (Davidson, fixed reference)
 Cluster corrected energies          -213.88383565 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88406686 (Davidson, rotated reference)

 Cluster corrected energies          -213.88262783 (Pople, fixed reference)
 Cluster corrected energies          -213.88238722 (Pople, relaxed reference)
 Cluster corrected energies          -213.88262783 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.68860720 (fixed)   0.96192440 (relaxed)   0.96176836 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134672   -0.00234422   -0.16020637
 Singles      0.01789414   -0.05849973   -0.06502091
 Pairs        0.06184211   -0.42846000   -0.43404098
 Total        1.08108297   -0.48930395   -0.65926826
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17134317
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81799186
 One electron energy                 -371.95094514
 Two electron energy                  158.12033371
 Virial quotient                       -2.58193427
 Correlation energy                    -0.65926826
 !MRCI STATE 9.1 Energy              -213.830611427248

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88406686 (Davidson, fixed reference)
 Cluster corrected energies          -213.88383564 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88406686 (Davidson, rotated reference)

 Cluster corrected energies          -213.88262782 (Pople, fixed reference)
 Cluster corrected energies          -213.88238721 (Pople, relaxed reference)
 Cluster corrected energies          -213.88262782 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1081.55       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4883.99   1219.77   3661.67      1.70      0.05      0.59
 REAL TIME  *      5018.46 SEC
 DISK USED  *         1.09 GB (local),       13.16 GB (total)
 SF USED    *         7.50 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -214.04706898  AU                              
 SETTING HLSDIAG(14)    =      -214.04706893  AU                              
 SETTING HLSDIAG(15)    =      -214.04706891  AU                              
 SETTING HLSDIAG(16)    =      -214.04706894  AU                              
 SETTING HLSDIAG(17)    =      -214.04706898  AU                              
 SETTING HLSDIAG(18)    =      -214.00860152  AU                              
 SETTING HLSDIAG(19)    =      -213.88406688  AU                              
 SETTING HLSDIAG(20)    =      -213.88406686  AU                              
 SETTING HLSDIAG(21)    =      -213.88406686  AU                              


         HLSDIAG
    -214.0739438
    -214.0739438
    -214.0739438
    -213.8792593
    -213.8792593
    -213.8792591
    -213.8792591
    -213.8792591
    -213.8743906
    -213.8743906
    -213.8743906
    -213.8722275
    -214.0470690
    -214.0470689
    -214.0470689
    -214.0470689
    -214.0470690
    -214.0086015
    -213.8840669
    -213.8840669
    -213.8840669
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -214.017028   -214.017028   -214.017028   -213.825695   -213.825695   -213.825695   -213.825695   -213.825695
                      -213.820360   -213.820360   -213.820360   -213.818412
 Replaced energies:   -214.073944   -214.073944   -214.073944   -213.879259   -213.879259   -213.879259   -213.879259   -213.879259
                      -213.874391   -213.874391   -213.874391   -213.872227

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   9

 Original energies:   -213.986962   -213.986962   -213.986962   -213.986962   -213.986962   -213.950884   -213.830611   -213.830611
                      -213.830611
 Replaced energies:   -214.047069   -214.047069   -214.047069   -214.047069   -214.047069   -214.008602   -213.884067   -213.884067
                      -213.884067



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.07394377

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     186.55   -1083.25      53.65      39.48     339.12     -22.69      -0.99     -58.83    -288.46

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -186.55       0.00     186.47     311.48     229.29     -60.64     -54.57       0.19      59.47      38.09

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1083.25    -186.47       0.00      53.63      39.49      12.91     339.64      -0.04    -286.52      67.13

    4   4.1  1.0  1.0       0.00       0.00       0.00   42728.30       0.00       0.00       0.00       0.00       0.00       0.00
                          -53.65    -311.48     -53.63       0.00       0.06      -2.47      -0.07    -834.08     -14.68       0.13

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42728.30       0.00       0.00       0.00       0.00       0.00
                          -39.48    -229.29     -39.49      -0.06      -0.00       3.32      -0.02    1133.07     -10.78       0.11

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42728.35       0.00       0.00       0.00       0.00
                         -339.12      60.64     -12.91       2.47      -3.32       0.00    -703.48       0.04    -519.44     142.74

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42728.35       0.00       0.00       0.00
                           22.69      54.57    -339.64       0.07       0.02     703.48       0.00      -2.09     142.68     519.66

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42728.35       0.00       0.00
                            0.99      -0.19       0.04     834.08   -1133.07      -0.04       2.09      -0.00       1.52      -0.42

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43796.86       0.00
                           58.83     -59.47     286.52      14.68      10.78     519.44    -142.68      -1.52      -0.00     746.30

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43796.87
                          288.46     -38.09     -67.13      -0.13      -0.11    -142.74    -519.66       0.42    -746.30       0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.64      -1.73       8.38    -500.93    -368.75      15.26      -4.04      -0.07       0.21      21.78

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -93.51    -543.24     -93.55       0.00       0.00      -0.00      -0.00       0.00     -25.86       0.25

   13   1.1  1.0  0.0       0.00     776.68     124.82      -2.04      18.41      -0.70      40.77    -239.80      27.98      -9.30
                           -0.00     -29.53    -138.58     253.65    -111.05     -40.84       0.01     -15.91      -8.94     -34.06

   14   2.1  1.0  0.0    -776.68       0.00     -51.88      -4.95      44.29       0.13     236.85      42.85     198.83     -54.35
                           29.53      -0.00    -775.52     -45.35      19.84    -236.96      -0.00     -37.90     -53.34    -197.84

   15   3.1  1.0  0.0    -124.82      51.88       0.00      30.71    -275.61      -0.02      40.79      -9.13      33.82      -9.36
                          138.58     775.52      -0.00       9.65      -4.23     -40.09       0.00     240.28     -15.42     -34.01

   16   4.1  1.0  0.0       2.04       4.95     -30.71       0.00      -0.02    -988.75       0.02       2.87      12.89      46.99
                         -253.65      45.35      -9.65      -0.00      -0.04       0.02    -398.97       0.05    -388.53     106.75

   17   5.1  1.0  0.0     -18.41     -44.29     275.61       0.02       0.00    -110.17       0.01       0.32    -115.79    -421.69
                          111.05     -19.84       4.23       0.04       0.00       0.00    -911.37       0.02     170.08     -46.74

   18   6.1  1.0  0.0       0.70      -0.13       0.02     988.75     110.17       0.00      -1.42       0.04       1.08      -0.29
                           40.84     236.96      40.09      -0.02      -0.00      -0.00       0.07     497.43      11.44       0.96

   19   7.1  1.0  0.0     -40.77    -236.85     -40.79      -0.02      -0.01       1.42       0.00     497.43     -11.12       0.11
                           -0.01       0.00      -0.00     398.97     911.37      -0.07      -0.00       0.03      -0.02       0.00

   20   8.1  1.0  0.0     239.80     -42.85       9.13      -2.87      -0.32      -0.04    -497.43      -0.00     367.30    -100.94
                           15.91      37.90    -240.28      -0.05      -0.02    -497.43      -0.03       0.00     100.85     367.46

   21   9.1  1.0  0.0     -27.98    -198.83     -33.82     -12.89     115.79      -1.08      11.12    -367.30       0.00       3.94
                            8.94      53.34      15.42     388.53    -170.08     -11.44       0.02    -100.85       0.00      14.89

   22  10.1  1.0  0.0       9.30      54.35       9.36     -46.99     421.69       0.29      -0.11     100.94      -3.94       0.00
                           34.06     197.84      34.01    -106.75      46.74      -0.96      -0.00    -367.46     -14.89       0.00

   23  11.1  1.0  0.0    -208.62      31.31      -8.90      -0.35       3.26      -0.03    -380.91     -10.75     509.08    -139.77
                           14.15      34.95    -207.67      11.41      -4.96     380.89      -0.00      -3.96    -139.83    -508.87

   24  12.1  1.0  0.0      26.02      62.60    -389.50      -0.00       0.00       0.00       0.00       0.00     165.96     604.44
                          388.92     -69.50      14.81      -0.00       0.00      -0.00      -0.00      -0.00     604.18    -166.02

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

   37   1.1  0.0  0.0    -377.51     533.00     240.78    -130.19     -14.51    -201.20     167.92    -181.70      96.98      10.41
                         -240.43    -212.71     412.64    -146.17    -333.95     167.76    -198.47     -65.99      62.22      80.32

   38   2.1  0.0  0.0    -131.05    -264.21     479.57    -353.10     -39.34     234.54      23.74      72.35      42.40     100.05
                          485.22    -580.85       4.54      58.61     133.85      23.22    -171.68    -177.72    -108.34      44.28

   39   3.1  0.0  0.0     382.88    -161.59     448.88     -17.17      -1.92    -373.18    -155.34       7.67     -59.34     110.61
                         -256.96      94.22    -430.22       5.28      12.04    -155.37    -431.07      -8.17      33.71     -99.08

   40   4.1  0.0  0.0    -104.08    -209.51    -505.51    -335.62     -37.40    -248.85      31.10     113.23      -6.35     -95.32
                         -640.41    -359.12     -14.73      90.25     206.15      30.60     128.36    -168.92     119.67     -14.16

   41   5.1  0.0  0.0     516.03     404.38    -161.48    -239.85     -26.72     138.87    -158.53    -166.93    -101.92     -27.47
                           33.19    -260.92    -476.68    -133.57    -305.07    -158.85     211.65    -120.23     -33.46     -81.98

   42   6.1  0.0  0.0     -81.82    -196.87    1224.95       0.00      -0.00      -0.00      -0.00       0.00      54.48     198.44
                        -1223.12     218.57     -46.57       0.00       0.00       0.00      -0.00       0.00     198.35     -54.51

   43   7.1  0.0  0.0    -193.64    -128.79     -33.63     -18.35     164.43       0.96     342.03     329.98    -259.04      69.23
                           -0.72     -42.06    -178.46    -349.07     152.79    -342.42      -0.01    -142.30      65.94     251.83

   44   8.1  0.0  0.0     -39.24     -65.64     -13.17      60.21    -540.43       0.44      55.73     146.72     -44.28      11.30
                           40.76     230.59      11.81    -155.23      67.93     -54.34      -0.01     471.07      21.75      40.93

   45   9.1  0.0  0.0    -144.70     194.49      21.59       8.19     -73.50      -0.99     355.40    -340.57    -253.95      71.79
                           16.86      58.59    -167.82     360.21    -157.72    -355.24       0.02      65.11      73.26     261.63


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00       0.00    -776.68    -124.82       2.04     -18.41       0.70     -40.77     239.80
                           -1.64      93.51       0.00     -29.53    -138.58     253.65    -111.05     -40.84       0.01     -15.91

    2   2.1  1.0  1.0       0.00       0.00     776.68       0.00      51.88       4.95     -44.29      -0.13    -236.85     -42.85
                            1.73     543.24      29.53       0.00    -775.52     -45.35      19.84    -236.96      -0.00     -37.90

    3   3.1  1.0  1.0       0.00       0.00     124.82     -51.88       0.00     -30.71     275.61       0.02     -40.79       9.13
                           -8.38      93.55     138.58     775.52       0.00       9.65      -4.23     -40.09       0.00     240.28

    4   4.1  1.0  1.0       0.00       0.00      -2.04      -4.95      30.71       0.00       0.02     988.75      -0.02      -2.87
                          500.93      -0.00    -253.65      45.35      -9.65       0.00      -0.04       0.02    -398.97       0.05

    5   5.1  1.0  1.0       0.00       0.00      18.41      44.29    -275.61      -0.02       0.00     110.17      -0.01      -0.32
                          368.75      -0.00     111.05     -19.84       4.23       0.04      -0.00       0.00    -911.37       0.02

    6   6.1  1.0  1.0       0.00       0.00      -0.70       0.13      -0.02    -988.75    -110.17       0.00       1.42      -0.04
                          -15.26       0.00      40.84     236.96      40.09      -0.02      -0.00       0.00       0.07     497.43

    7   7.1  1.0  1.0       0.00       0.00      40.77     236.85      40.79       0.02       0.01      -1.42       0.00    -497.43
                            4.04       0.00      -0.01       0.00      -0.00     398.97     911.37      -0.07       0.00       0.03

    8   8.1  1.0  1.0       0.00       0.00    -239.80      42.85      -9.13       2.87       0.32       0.04     497.43      -0.00
                            0.07      -0.00      15.91      37.90    -240.28      -0.05      -0.02    -497.43      -0.03      -0.00

    9   9.1  1.0  1.0       0.00       0.00      27.98     198.83      33.82      12.89    -115.79       1.08     -11.12     367.30
                           -0.21      25.86       8.94      53.34      15.42     388.53    -170.08     -11.44       0.02    -100.85

   10  10.1  1.0  1.0       0.00       0.00      -9.30     -54.35      -9.36      46.99    -421.69      -0.29       0.11    -100.94
                          -21.78      -0.25      34.06     197.84      34.01    -106.75      46.74      -0.96      -0.00    -367.46

   11  11.1  1.0  1.0   43796.87       0.00     208.62     -31.31       8.90       0.35      -3.26       0.03     380.91      10.75
                           -0.00    -886.09      14.15      34.95    -207.67      11.41      -4.96     380.89      -0.00      -3.96

   12  12.1  1.0  1.0       0.00   44271.61     -26.02     -62.60     389.50       0.00      -0.00      -0.00      -0.00      -0.00
                          886.09      -0.00     388.92     -69.50      14.81      -0.00       0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  0.0     208.62     -26.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -14.15    -388.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0     -31.31     -62.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -34.95      69.50      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0       8.90     389.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          207.67     -14.81      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0       0.35       0.00       0.00       0.00       0.00   42728.30       0.00       0.00       0.00       0.00
                          -11.41       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0      -3.26      -0.00       0.00       0.00       0.00       0.00   42728.30       0.00       0.00       0.00
                            4.96      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0       0.03      -0.00       0.00       0.00       0.00       0.00       0.00   42728.35       0.00       0.00
                         -380.89       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0     380.91      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   42728.35       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0      10.75      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42728.35
                            3.96       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0    -509.08    -165.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          139.83    -604.18      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0     139.77    -604.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          508.87     166.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0       0.00      -4.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -17.68      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0       4.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           17.68       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00     776.68     124.82      -2.04      18.41      -0.70      40.77    -239.80
                           -0.00      -0.00      -0.00     -29.53    -138.58     253.65    -111.05     -40.84       0.01     -15.91

   26   2.1  1.0 -1.0       0.00       0.00    -776.68       0.00     -51.88      -4.95      44.29       0.13     236.85      42.85
                           -0.00      -0.00      29.53      -0.00    -775.52     -45.35      19.84    -236.96      -0.00     -37.90

   27   3.1  1.0 -1.0       0.00       0.00    -124.82      51.88       0.00      30.71    -275.61      -0.02      40.79      -9.13
                           -0.00      -0.00     138.58     775.52      -0.00       9.65      -4.23     -40.09       0.00     240.28

   28   4.1  1.0 -1.0       0.00       0.00       2.04       4.95     -30.71       0.00      -0.02    -988.75       0.02       2.87
                           -0.00      -0.00    -253.65      45.35      -9.65      -0.00      -0.04       0.02    -398.97       0.05

   29   5.1  1.0 -1.0       0.00       0.00     -18.41     -44.29     275.61       0.02       0.00    -110.17       0.01       0.32
                           -0.00      -0.00     111.05     -19.84       4.23       0.04       0.00       0.00    -911.37       0.02

   30   6.1  1.0 -1.0       0.00       0.00       0.70      -0.13       0.02     988.75     110.17       0.00      -1.42       0.04
                           -0.00      -0.00      40.84     236.96      40.09      -0.02      -0.00      -0.00       0.07     497.43

   31   7.1  1.0 -1.0       0.00       0.00     -40.77    -236.85     -40.79      -0.02      -0.01       1.42       0.00     497.43
                           -0.00      -0.00      -0.01       0.00      -0.00     398.97     911.37      -0.07      -0.00       0.03

   32   8.1  1.0 -1.0       0.00       0.00     239.80     -42.85       9.13      -2.87      -0.32      -0.04    -497.43      -0.00
                           -0.00      -0.00      15.91      37.90    -240.28      -0.05      -0.02    -497.43      -0.03       0.00

   33   9.1  1.0 -1.0       0.00       0.00     -27.98    -198.83     -33.82     -12.89     115.79      -1.08      11.12    -367.30
                           -0.00      -0.00       8.94      53.34      15.42     388.53    -170.08     -11.44       0.02    -100.85

   34  10.1  1.0 -1.0       0.00       0.00       9.30      54.35       9.36     -46.99     421.69       0.29      -0.11     100.94
                           -0.00      -0.00      34.06     197.84      34.01    -106.75      46.74      -0.96      -0.00    -367.46

   35  11.1  1.0 -1.0       0.00       0.00    -208.62      31.31      -8.90      -0.35       3.26      -0.03    -380.91     -10.75
                           -0.00      -0.00      14.15      34.95    -207.67      11.41      -4.96     380.89      -0.00      -3.96

   36  12.1  1.0 -1.0       0.00       0.00      26.02      62.60    -389.50      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     388.92     -69.50      14.81      -0.00       0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0     104.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -34.75      -0.00    -115.88     651.54    -613.61     281.60    -382.50     257.78     -92.60       2.38

   38   2.1  0.0  0.0     -39.56      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -102.31       0.00    -703.04      -2.36     237.44      39.85     -54.10    -105.00    -251.24    -573.83

   39   3.1  0.0  0.0      -5.43      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.80      -0.00     137.97    1002.24     195.92    -260.47     353.84      -9.52     -12.20     -81.82

   40   4.1  0.0  0.0     -62.95      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -90.72       0.00    -640.42     195.89     427.33      52.14     -70.88    -157.56    -238.76     534.44

   41   5.1  0.0  0.0      89.95      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -68.30      -0.00    -489.00    -253.86    -722.57    -265.77     361.09     235.79    -170.68     101.59

   42   6.1  0.0  0.0       1.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.80       0.00    -294.09   -1708.47    -294.22       0.00      -0.00      -0.00       0.00       0.00

   43   7.1  0.0  0.0     244.45    -234.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          111.30     540.69     113.74      18.92    -223.56    -449.76    -331.09     466.71     202.62      -1.39

   44   8.1  0.0  0.0     110.77     771.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -359.05     240.43    -317.16      74.13    -113.41     -73.24     -53.94     207.51    -665.98      -0.61

   45   9.1  0.0  0.0    -267.55     104.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -46.86    -558.04     -59.73     -29.83     232.93    -467.43    -344.07    -481.57     -90.60       1.39


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0     -27.98       9.30    -208.62      26.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.94     -34.06     -14.15    -388.92       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0    -198.83      54.35      31.31      62.60       0.00       0.00       0.00       0.00       0.00       0.00
                          -53.34    -197.84     -34.95      69.50       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0     -33.82       9.36      -8.90    -389.50       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.42     -34.01     207.67     -14.81       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0     -12.89     -46.99      -0.35      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -388.53     106.75     -11.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0     115.79     421.69       3.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          170.08     -46.74       4.96      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0      -1.08       0.29      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           11.44       0.96    -380.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0      11.12      -0.11    -380.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0    -367.30     100.94     -10.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          100.85     367.46       3.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0       0.00      -3.94     509.08     165.96       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      14.89     139.83    -604.18       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0       3.94       0.00    -139.77     604.44       0.00       0.00       0.00       0.00       0.00       0.00
                          -14.89      -0.00     508.87     166.02       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0    -509.08     139.77       0.00       4.67       0.00       0.00       0.00       0.00       0.00       0.00
                         -139.83    -508.87      -0.00     -17.68       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0    -165.96    -604.44      -4.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          604.18    -166.02      17.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00    -776.68    -124.82       2.04     -18.41       0.70
                            0.00       0.00       0.00       0.00       0.00     -29.53    -138.58     253.65    -111.05     -40.84

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00     776.68       0.00      51.88       4.95     -44.29      -0.13
                            0.00       0.00       0.00       0.00      29.53       0.00    -775.52     -45.35      19.84    -236.96

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00     124.82     -51.88       0.00     -30.71     275.61       0.02
                            0.00       0.00       0.00       0.00     138.58     775.52       0.00       9.65      -4.23     -40.09

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00      -2.04      -4.95      30.71       0.00       0.02     988.75
                            0.00       0.00       0.00       0.00    -253.65      45.35      -9.65       0.00      -0.04       0.02

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00      18.41      44.29    -275.61      -0.02       0.00     110.17
                            0.00       0.00       0.00       0.00     111.05     -19.84       4.23       0.04      -0.00       0.00

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.70       0.13      -0.02    -988.75    -110.17       0.00
                            0.00       0.00       0.00       0.00      40.84     236.96      40.09      -0.02      -0.00       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00      40.77     236.85      40.79       0.02       0.01      -1.42
                            0.00       0.00       0.00       0.00      -0.01       0.00      -0.00     398.97     911.37      -0.07

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00    -239.80      42.85      -9.13       2.87       0.32       0.04
                            0.00       0.00       0.00       0.00      15.91      37.90    -240.28      -0.05      -0.02    -497.43

   21   9.1  1.0  0.0   43796.86       0.00       0.00       0.00      27.98     198.83      33.82      12.89    -115.79       1.08
                            0.00       0.00       0.00       0.00       8.94      53.34      15.42     388.53    -170.08     -11.44

   22  10.1  1.0  0.0       0.00   43796.87       0.00       0.00      -9.30     -54.35      -9.36      46.99    -421.69      -0.29
                           -0.00       0.00       0.00       0.00      34.06     197.84      34.01    -106.75      46.74      -0.96

   23  11.1  1.0  0.0       0.00       0.00   43796.87       0.00     208.62     -31.31       8.90       0.35      -3.26       0.03
                           -0.00      -0.00       0.00       0.00      14.15      34.95    -207.67      11.41      -4.96     380.89

   24  12.1  1.0  0.0       0.00       0.00       0.00   44271.61     -26.02     -62.60     389.50       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     388.92     -69.50      14.81      -0.00       0.00      -0.00

   25   1.1  1.0 -1.0      27.98      -9.30     208.62     -26.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.94     -34.06     -14.15    -388.92      -0.00    -186.55    1083.25     -53.65     -39.48    -339.12

   26   2.1  1.0 -1.0     198.83     -54.35     -31.31     -62.60       0.00       0.00       0.00       0.00       0.00       0.00
                          -53.34    -197.84     -34.95      69.50     186.55      -0.00    -186.47    -311.48    -229.29      60.64

   27   3.1  1.0 -1.0      33.82      -9.36       8.90     389.50       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.42     -34.01     207.67     -14.81   -1083.25     186.47      -0.00     -53.63     -39.49     -12.91

   28   4.1  1.0 -1.0      12.89      46.99       0.35       0.00       0.00       0.00       0.00   42728.30       0.00       0.00
                         -388.53     106.75     -11.41       0.00      53.65     311.48      53.63      -0.00      -0.06       2.47

   29   5.1  1.0 -1.0    -115.79    -421.69      -3.26      -0.00       0.00       0.00       0.00       0.00   42728.30       0.00
                          170.08     -46.74       4.96      -0.00      39.48     229.29      39.49       0.06       0.00      -3.32

   30   6.1  1.0 -1.0       1.08      -0.29       0.03      -0.00       0.00       0.00       0.00       0.00       0.00   42728.35
                           11.44       0.96    -380.89       0.00     339.12     -60.64      12.91      -2.47       3.32      -0.00

   31   7.1  1.0 -1.0     -11.12       0.11     380.91      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00     -22.69     -54.57     339.64      -0.07      -0.02    -703.48

   32   8.1  1.0 -1.0     367.30    -100.94      10.75      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          100.85     367.46       3.96       0.00      -0.99       0.19      -0.04    -834.08    1133.07       0.04

   33   9.1  1.0 -1.0       0.00       3.94    -509.08    -165.96       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      14.89     139.83    -604.18     -58.83      59.47    -286.52     -14.68     -10.78    -519.44

   34  10.1  1.0 -1.0      -3.94       0.00     139.77    -604.44       0.00       0.00       0.00       0.00       0.00       0.00
                          -14.89       0.00     508.87     166.02    -288.46      38.09      67.13       0.13       0.11     142.74

   35  11.1  1.0 -1.0     509.08    -139.77       0.00      -4.67       0.00       0.00       0.00       0.00       0.00       0.00
                         -139.83    -508.87       0.00     -17.68      -1.64       1.73      -8.38     500.93     368.75     -15.26

   36  12.1  1.0 -1.0     165.96     604.44       4.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          604.18    -166.02      17.68       0.00      93.51     543.24      93.55      -0.00      -0.00       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00    -377.51     533.00     240.78    -130.19     -14.51    -201.20
                            8.66    -152.31     105.29      -0.00     240.43     212.71    -412.64     146.17     333.95    -167.76

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00    -131.05    -264.21     479.57    -353.10     -39.34     234.54
                          150.81      18.45     -12.07      -0.00    -485.22     580.85      -4.54     -58.61    -133.85     -23.22

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00     382.88    -161.59     448.88     -17.17      -1.92    -373.18
                            1.76       3.26     211.62       0.00     256.96     -94.22     430.22      -5.28     -12.04     155.37

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00    -104.08    -209.51    -505.51    -335.62     -37.40    -248.85
                          150.94      50.32      36.18      -0.00     640.41     359.12      14.73     -90.25    -206.15     -30.60

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00     516.03     404.38    -161.48    -239.85     -26.72     138.87
                           59.67    -151.90     -90.54       0.00     -33.19     260.92     476.68     133.57     305.07     158.85

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00     -81.82    -196.87    1224.95       0.00      -0.00      -0.00
                            8.49      -0.08    -290.90       0.00    1223.12    -218.57      46.57      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00    -193.64    -128.79     -33.63     -18.35     164.43       0.96
                          243.45     302.57       7.02    -792.57       0.72      42.06     178.46     349.07    -152.79     342.42

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00     -39.24     -65.64     -13.17      60.21    -540.43       0.44
                         -448.13     287.43     -13.16    -129.14     -40.76    -230.59     -11.81     155.23     -67.93      54.34

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00    -144.70     194.49      21.59       8.19     -73.50      -0.99
                         -164.01    -336.25      -4.69    -823.57     -16.86     -58.59     167.82    -360.21     157.72     355.24


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -377.51    -131.05     382.88    -104.08
                            0.00       0.00       0.00       0.00       0.00       0.00     240.43    -485.22     256.96     640.41

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     533.00    -264.21    -161.59    -209.51
                            0.00       0.00       0.00       0.00       0.00       0.00     212.71     580.85     -94.22     359.12

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     240.78     479.57     448.88    -505.51
                            0.00       0.00       0.00       0.00       0.00       0.00    -412.64      -4.54     430.22      14.73

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -130.19    -353.10     -17.17    -335.62
                            0.00       0.00       0.00       0.00       0.00       0.00     146.17     -58.61      -5.28     -90.25

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -14.51     -39.34      -1.92     -37.40
                            0.00       0.00       0.00       0.00       0.00       0.00     333.95    -133.85     -12.04    -206.15

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -201.20     234.54    -373.18    -248.85
                            0.00       0.00       0.00       0.00       0.00       0.00    -167.76     -23.22     155.37     -30.60

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     167.92      23.74    -155.34      31.10
                            0.00       0.00       0.00       0.00       0.00       0.00     198.47     171.68     431.07    -128.36

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -181.70      72.35       7.67     113.23
                            0.00       0.00       0.00       0.00       0.00       0.00      65.99     177.72       8.17     168.92

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      96.98      42.40     -59.34      -6.35
                            0.00       0.00       0.00       0.00       0.00       0.00     -62.22     108.34     -33.71    -119.67

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      10.41     100.05     110.61     -95.32
                            0.00       0.00       0.00       0.00       0.00       0.00     -80.32     -44.28      99.08      14.16

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     104.55     -39.56      -5.43     -62.95
                            0.00       0.00       0.00       0.00       0.00       0.00      34.75     102.31       3.80      90.72

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   13   1.1  1.0  0.0     -40.77     239.80     -27.98       9.30    -208.62      26.02       0.00       0.00       0.00       0.00
                            0.01     -15.91      -8.94     -34.06     -14.15    -388.92     115.88     703.04    -137.97     640.42

   14   2.1  1.0  0.0    -236.85     -42.85    -198.83      54.35      31.31      62.60       0.00       0.00       0.00       0.00
                           -0.00     -37.90     -53.34    -197.84     -34.95      69.50    -651.54       2.36   -1002.24    -195.89

   15   3.1  1.0  0.0     -40.79       9.13     -33.82       9.36      -8.90    -389.50       0.00       0.00       0.00       0.00
                            0.00     240.28     -15.42     -34.01     207.67     -14.81     613.61    -237.44    -195.92    -427.33

   16   4.1  1.0  0.0      -0.02      -2.87     -12.89     -46.99      -0.35      -0.00       0.00       0.00       0.00       0.00
                         -398.97       0.05    -388.53     106.75     -11.41       0.00    -281.60     -39.85     260.47     -52.14

   17   5.1  1.0  0.0      -0.01      -0.32     115.79     421.69       3.26       0.00       0.00       0.00       0.00       0.00
                         -911.37       0.02     170.08     -46.74       4.96      -0.00     382.50      54.10    -353.84      70.88

   18   6.1  1.0  0.0       1.42      -0.04      -1.08       0.29      -0.03       0.00       0.00       0.00       0.00       0.00
                            0.07     497.43      11.44       0.96    -380.89       0.00    -257.78     105.00       9.52     157.56

   19   7.1  1.0  0.0       0.00    -497.43      11.12      -0.11    -380.91       0.00       0.00       0.00       0.00       0.00
                            0.00       0.03      -0.02       0.00       0.00       0.00      92.60     251.24      12.20     238.76

   20   8.1  1.0  0.0     497.43      -0.00    -367.30     100.94     -10.75       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.00     100.85     367.46       3.96       0.00      -2.38     573.83      81.82    -534.44

   21   9.1  1.0  0.0     -11.12     367.30       0.00      -3.94     509.08     165.96       0.00       0.00       0.00       0.00
                            0.02    -100.85      -0.00      14.89     139.83    -604.18      -8.66    -150.81      -1.76    -150.94

   22  10.1  1.0  0.0       0.11    -100.94       3.94       0.00    -139.77     604.44       0.00       0.00       0.00       0.00
                           -0.00    -367.46     -14.89      -0.00     508.87     166.02     152.31     -18.45      -3.26     -50.32

   23  11.1  1.0  0.0     380.91      10.75    -509.08     139.77       0.00       4.67       0.00       0.00       0.00       0.00
                           -0.00      -3.96    -139.83    -508.87      -0.00     -17.68    -105.29      12.07    -211.62     -36.18

   24  12.1  1.0  0.0      -0.00      -0.00    -165.96    -604.44      -4.67       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     604.18    -166.02      17.68      -0.00       0.00       0.00      -0.00       0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -377.51    -131.05     382.88    -104.08
                           22.69       0.99      58.83     288.46       1.64     -93.51    -240.43     485.22    -256.96    -640.41

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     533.00    -264.21    -161.59    -209.51
                           54.57      -0.19     -59.47     -38.09      -1.73    -543.24    -212.71    -580.85      94.22    -359.12

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     240.78     479.57     448.88    -505.51
                         -339.64       0.04     286.52     -67.13       8.38     -93.55     412.64       4.54    -430.22     -14.73

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -130.19    -353.10     -17.17    -335.62
                            0.07     834.08      14.68      -0.13    -500.93       0.00    -146.17      58.61       5.28      90.25

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     -14.51     -39.34      -1.92     -37.40
                            0.02   -1133.07      10.78      -0.11    -368.75       0.00    -333.95     133.85      12.04     206.15

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -201.20     234.54    -373.18    -248.85
                          703.48      -0.04     519.44    -142.74      15.26      -0.00     167.76      23.22    -155.37      30.60

   31   7.1  1.0 -1.0   42728.35       0.00       0.00       0.00       0.00       0.00     167.92      23.74    -155.34      31.10
                           -0.00       2.09    -142.68    -519.66      -4.04      -0.00    -198.47    -171.68    -431.07     128.36

   32   8.1  1.0 -1.0       0.00   42728.35       0.00       0.00       0.00       0.00    -181.70      72.35       7.67     113.23
                           -2.09       0.00      -1.52       0.42      -0.07       0.00     -65.99    -177.72      -8.17    -168.92

   33   9.1  1.0 -1.0       0.00       0.00   43796.86       0.00       0.00       0.00      96.98      42.40     -59.34      -6.35
                          142.68       1.52       0.00    -746.30       0.21     -25.86      62.22    -108.34      33.71     119.67

   34  10.1  1.0 -1.0       0.00       0.00       0.00   43796.87       0.00       0.00      10.41     100.05     110.61     -95.32
                          519.66      -0.42     746.30      -0.00      21.78       0.25      80.32      44.28     -99.08     -14.16

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   43796.87       0.00     104.55     -39.56      -5.43     -62.95
                            4.04       0.07      -0.21     -21.78       0.00     886.09     -34.75    -102.31      -3.80     -90.72

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   44271.61      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      25.86      -0.25    -886.09       0.00      -0.00       0.00      -0.00       0.00

   37   1.1  0.0  0.0     167.92    -181.70      96.98      10.41     104.55      -0.00    5898.33       0.00       0.00       0.00
                          198.47      65.99     -62.22     -80.32      34.75       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0      23.74      72.35      42.40     100.05     -39.56      -0.00       0.00    5898.34       0.00       0.00
                          171.68     177.72     108.34     -44.28     102.31      -0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0    -155.34       7.67     -59.34     110.61      -5.43      -0.00       0.00       0.00    5898.35       0.00
                          431.07       8.17     -33.71      99.08       3.80       0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0      31.10     113.23      -6.35     -95.32     -62.95      -0.00       0.00       0.00       0.00    5898.34
                         -128.36     168.92    -119.67      14.16      90.72      -0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0    -158.53    -166.93    -101.92     -27.47      89.95      -0.00       0.00       0.00       0.00       0.00
                         -211.65     120.23      33.46      81.98      68.30       0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0      -0.00       0.00      54.48     198.44       1.53       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -198.35      54.51      -5.80      -0.00      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0     342.03     329.98    -259.04      69.23     244.45    -234.79       0.00       0.00       0.00       0.00
                            0.01     142.30     -65.94    -251.83    -111.30    -540.69      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0      55.73     146.72     -44.28      11.30     110.77     771.63       0.00       0.00       0.00       0.00
                            0.01    -471.07     -21.75     -40.93     359.05    -240.43      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0     355.40    -340.57    -253.95      71.79    -267.55     104.96       0.00       0.00       0.00       0.00
                           -0.02     -65.11     -73.26    -261.63      46.86     558.04      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45

    1   1.1  1.0  1.0     516.03     -81.82    -193.64     -39.24    -144.70
                          -33.19    1223.12       0.72     -40.76     -16.86

    2   2.1  1.0  1.0     404.38    -196.87    -128.79     -65.64     194.49
                          260.92    -218.57      42.06    -230.59     -58.59

    3   3.1  1.0  1.0    -161.48    1224.95     -33.63     -13.17      21.59
                          476.68      46.57     178.46     -11.81     167.82

    4   4.1  1.0  1.0    -239.85       0.00     -18.35      60.21       8.19
                          133.57      -0.00     349.07     155.23    -360.21

    5   5.1  1.0  1.0     -26.72      -0.00     164.43    -540.43     -73.50
                          305.07      -0.00    -152.79     -67.93     157.72

    6   6.1  1.0  1.0     138.87      -0.00       0.96       0.44      -0.99
                          158.85      -0.00     342.42      54.34     355.24

    7   7.1  1.0  1.0    -158.53      -0.00     342.03      55.73     355.40
                         -211.65       0.00       0.01       0.01      -0.02

    8   8.1  1.0  1.0    -166.93       0.00     329.98     146.72    -340.57
                          120.23      -0.00     142.30    -471.07     -65.11

    9   9.1  1.0  1.0    -101.92      54.48    -259.04     -44.28    -253.95
                           33.46    -198.35     -65.94     -21.75     -73.26

   10  10.1  1.0  1.0     -27.47     198.44      69.23      11.30      71.79
                           81.98      54.51    -251.83     -40.93    -261.63

   11  11.1  1.0  1.0      89.95       1.53     244.45     110.77    -267.55
                           68.30      -5.80    -111.30     359.05      46.86

   12  12.1  1.0  1.0      -0.00       0.00    -234.79     771.63     104.96
                            0.00      -0.00    -540.69    -240.43     558.04

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          489.00     294.09    -113.74     317.16      59.73

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          253.86    1708.47     -18.92     -74.13      29.83

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          722.57     294.22     223.56     113.41    -232.93

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          265.77      -0.00     449.76      73.24     467.43

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         -361.09       0.00     331.09      53.94     344.07

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         -235.79       0.00    -466.71    -207.51     481.57

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          170.68      -0.00    -202.62     665.98      90.60

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         -101.59      -0.00       1.39       0.61      -1.39

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          -59.67      -8.49    -243.45     448.13     164.01

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          151.90       0.08    -302.57    -287.43     336.25

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           90.54     290.90      -7.02      13.16       4.69

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     792.57     129.14     823.57

   25   1.1  1.0 -1.0     516.03     -81.82    -193.64     -39.24    -144.70
                           33.19   -1223.12      -0.72      40.76      16.86

   26   2.1  1.0 -1.0     404.38    -196.87    -128.79     -65.64     194.49
                         -260.92     218.57     -42.06     230.59      58.59

   27   3.1  1.0 -1.0    -161.48    1224.95     -33.63     -13.17      21.59
                         -476.68     -46.57    -178.46      11.81    -167.82

   28   4.1  1.0 -1.0    -239.85       0.00     -18.35      60.21       8.19
                         -133.57       0.00    -349.07    -155.23     360.21

   29   5.1  1.0 -1.0     -26.72      -0.00     164.43    -540.43     -73.50
                         -305.07       0.00     152.79      67.93    -157.72

   30   6.1  1.0 -1.0     138.87      -0.00       0.96       0.44      -0.99
                         -158.85       0.00    -342.42     -54.34    -355.24

   31   7.1  1.0 -1.0    -158.53      -0.00     342.03      55.73     355.40
                          211.65      -0.00      -0.01      -0.01       0.02

   32   8.1  1.0 -1.0    -166.93       0.00     329.98     146.72    -340.57
                         -120.23       0.00    -142.30     471.07      65.11

   33   9.1  1.0 -1.0    -101.92      54.48    -259.04     -44.28    -253.95
                          -33.46     198.35      65.94      21.75      73.26

   34  10.1  1.0 -1.0     -27.47     198.44      69.23      11.30      71.79
                          -81.98     -54.51     251.83      40.93     261.63

   35  11.1  1.0 -1.0      89.95       1.53     244.45     110.77    -267.55
                          -68.30       5.80     111.30    -359.05     -46.86

   36  12.1  1.0 -1.0      -0.00       0.00    -234.79     771.63     104.96
                           -0.00       0.00     540.69     240.43    -558.04

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5898.33       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   14340.96       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   41673.16       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   41673.16       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   41673.16
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 45)

    The diagonal matrixelements are shifted by   -214.07394377 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.001       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.002       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42728.299       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42728.298       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42728.352       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42728.351       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42728.352
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000     -41.759    -195.984     358.721    -157.041     -57.754       0.015     -22.507

    2    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                               41.759       0.000   -1096.748     -64.133      28.052    -335.108      -0.000     -53.606

    3    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                              195.984    1096.748       0.000      13.641      -5.988     -56.690       0.001     339.804

    4    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                             -358.721      64.133     -13.641       0.000      -0.051       0.021    -564.229       0.068

    5    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                              157.041     -28.052       5.988       0.051       0.000       0.005   -1288.870       0.026

    6    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                               57.754     335.108      56.690      -0.021      -0.005       0.000       0.099     703.479

    7    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.015       0.000      -0.001     564.229    1288.870      -0.099       0.000       0.041

    8    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                               22.507      53.606    -339.804      -0.068      -0.026    -703.479      -0.041       0.000

    9    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               12.649      75.435      21.811     549.462    -240.535     -16.184       0.022    -142.618

   10    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               48.165     279.784      48.098    -150.966      66.107      -1.359      -0.007    -519.667

   11    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                               20.014      49.424    -293.689      16.130      -7.020     538.666      -0.003      -5.596

   12    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                              550.012     -98.285      20.942      -0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     186.550   -1083.254      53.652      39.481     339.119     -22.686      -0.990

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -186.550       0.000     186.470     311.479     229.288     -60.639     -54.572       0.193

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1083.254    -186.470       0.000      53.629      39.487      12.908     339.638      -0.035

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -53.652    -311.479     -53.629       0.000       0.057      -2.469      -0.068    -834.076

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -39.481    -229.288     -39.487      -0.057      -0.000       3.317      -0.023    1133.067

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -339.119      60.639     -12.908       2.469      -3.317       0.000    -703.476       0.042

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               22.686      54.572    -339.638       0.068       0.023     703.476       0.000      -2.093

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.990      -0.193       0.035     834.076   -1133.067      -0.042       2.093      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               58.831     -59.470     286.521      14.675      10.780     519.437    -142.683      -1.520

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              288.461     -38.094     -67.134      -0.133      -0.108    -142.740    -519.664       0.418

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.636      -1.725       8.381    -500.930    -368.746      15.261      -4.039      -0.070

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -93.513    -543.245     -93.554       0.000       0.000      -0.000      -0.000       0.000

    1    1  |0 0>            -533.876     753.775     340.509    -184.111     -20.515    -284.533     237.478    -256.960
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            -185.332    -373.654     678.215    -499.356     -55.631     331.685      33.571     102.322
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>             541.472    -228.519     634.811     -24.280      -2.719    -527.759    -219.685      10.842
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>            -147.190    -296.297    -714.900    -474.637     -52.894    -351.934      43.982     160.134
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>             729.775     571.881    -228.368    -339.193     -37.785     196.388    -224.198    -236.069
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>            -115.711    -278.414    1732.343       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>            -273.849    -182.138     -47.564     -25.947     232.545       1.364     483.698     466.657
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>             -55.492     -92.835     -18.627      85.144    -764.278       0.626      78.816     207.495
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>            -204.631     275.056      30.537      11.580    -103.950      -1.404     502.615    -481.632
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -41.759    -195.984     358.721

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      41.759       0.000   -1096.748     -64.133

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     195.984    1096.748       0.000      13.641

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000    -358.721      64.133     -13.641       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     157.041     -28.052       5.988       0.051

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      57.754     335.108      56.690      -0.021

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.015       0.000      -0.001     564.229

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      22.507      53.606    -339.804      -0.068

    9    1  |1 1>+          43796.864       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      12.649      75.435      21.811     549.462

   10    1  |1 1>+              0.000   43796.866       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      48.165     279.784      48.098    -150.966

   11    1  |1 1>+              0.000       0.000   43796.866       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      20.014      49.424    -293.689      16.130

   12    1  |1 1>+              0.000       0.000       0.000   44271.607       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000     550.012     -98.285      20.942      -0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              -12.649     -48.165     -20.014    -550.012       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.001       0.000       0.000
                              -75.435    -279.784     -49.424      98.285      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.002       0.000
                              -21.811     -48.098     293.689     -20.942      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000   42728.299
                             -549.462     150.966     -16.130       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              240.535     -66.107       7.020      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               16.184       1.359    -538.666       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.022       0.007       0.003       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              142.618     519.667       5.596       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      21.058     197.750    -854.441      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              -21.058       0.000     719.644     234.790      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             -197.750    -719.644       0.000     -25.002      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              854.441    -234.790      25.002       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   -1098.393    -176.528       2.891
                              -58.831    -288.461      -1.636      93.513       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000    1098.393       0.000      73.367       6.995
                               59.470      38.094       1.725     543.245      -0.000       0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     176.528     -73.367       0.000     -43.426
                             -286.521      67.134      -8.381      93.554      -0.000       0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -2.891      -6.995      43.426       0.000
                              -14.675       0.133     500.930      -0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      26.041      62.641    -389.769      -0.033
                              -10.780       0.108     368.746      -0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000      -0.993       0.178      -0.028   -1398.303
                             -519.437     142.740     -15.261       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000      57.658     334.955      57.685       0.035
                              142.683     519.664       4.039       0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000    -339.126      60.601     -12.919       4.065
                                1.520      -0.418       0.070      -0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000      39.569     281.182      47.833      18.226
                               -0.000     746.298      -0.208      25.861      -0.000       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000     -13.146     -76.859     -13.231      66.452
                             -746.298       0.000     -21.781      -0.247       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000     295.030     -44.286      12.589       0.492
                                0.208      21.781      -0.000    -886.088      -0.000       0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000     -36.793     -88.528     550.836       0.000
                              -25.861       0.247     886.088      -0.000       0.000      -0.000      -0.000      -0.000

    1    1  |0 0>             137.149      14.715     147.851      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -115.878     651.538    -613.612     281.598

    2    1  |0 0>              59.956     141.487     -55.941      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -703.040      -2.356     237.441      39.850

    3    1  |0 0>             -83.924     156.428      -7.682      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     137.974    1002.244     195.921    -260.467

    4    1  |0 0>              -8.977    -134.806     -89.019      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -640.417     195.894     427.326      52.141

    5    1  |0 0>            -144.132     -38.847     127.210      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -488.998    -253.860    -722.565    -265.773

    6    1  |0 0>              77.051     280.634       2.170       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -294.093   -1708.466    -294.220       0.000

    7    1  |0 0>            -366.334      97.908     345.703    -332.046       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     113.744      18.920    -223.558    -449.762

    8    1  |0 0>             -62.618      15.981     156.658    1091.247       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -317.163      74.127    -113.411     -73.243

    9    1  |0 0>            -359.133     101.531    -378.370     148.436       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -59.731     -29.831     232.927    -467.432

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                             -157.041     -57.754       0.015     -22.507     -12.649     -48.165     -20.014    -550.012

    2    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               28.052    -335.108      -0.000     -53.606     -75.435    -279.784     -49.424      98.285

    3    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -5.988     -56.690       0.001     339.804     -21.811     -48.098     293.689     -20.942

    4    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.051       0.021    -564.229       0.068    -549.462     150.966     -16.130       0.000

    5    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.005   -1288.870       0.026     240.535     -66.107       7.020      -0.000

    6    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.005       0.000       0.099     703.479      16.184       1.359    -538.666       0.000

    7    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                             1288.870      -0.099       0.000       0.041      -0.022       0.007       0.003       0.000

    8    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.026    -703.479      -0.041       0.000     142.618     519.667       5.596       0.000

    9    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -240.535     -16.184       0.022    -142.618       0.000      21.058     197.750    -854.441

   10    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               66.107      -1.359      -0.007    -519.667     -21.058       0.000     719.644     234.790

   11    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -7.020     538.666      -0.003      -5.596    -197.750    -719.644       0.000     -25.002

   12    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000     854.441    -234.790      25.002       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           42728.298       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   42728.352       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   42728.351       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   42728.352       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   43796.864       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   43796.866       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   43796.866       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   44271.607
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-            -26.041       0.993     -57.658     339.126     -39.569      13.146    -295.030      36.793
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-            -62.641      -0.178    -334.955     -60.601    -281.182      76.859      44.286      88.528
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 1>-            389.769       0.028     -57.685      12.919     -47.833      13.231     -12.589    -550.836
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 1>-              0.033    1398.303      -0.035      -4.065     -18.226     -66.452      -0.492      -0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000     155.798      -0.015      -0.456     163.750     596.366       4.612       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 1>-           -155.798       0.000       2.004      -0.058      -1.524       0.404      -0.048       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    7    1  |1 1>-              0.015      -2.004       0.000    -703.476      15.720      -0.153    -538.682       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              0.456       0.058     703.476       0.000    -519.438     142.745     -15.199       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 1>-           -163.750       1.524     -15.720     519.438       0.000      -5.568     719.952     234.697
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   10    1  |1 1>-           -596.366      -0.404       0.153    -142.745       5.568       0.000    -197.671     854.807
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   11    1  |1 1>-             -4.612       0.048     538.682      15.199    -719.952     197.671       0.000       6.611
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

   12    1  |1 1>-             -0.000      -0.000      -0.000      -0.000    -234.697    -854.807      -6.611       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -382.495     257.778     -92.603       2.375       8.661    -152.309     105.291      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -54.099    -104.996    -251.237    -573.829     150.814      18.447     -12.071      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              353.842      -9.525     -12.204     -81.819       1.760       3.259     211.619       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -70.882    -157.562    -238.764     534.442     150.944      50.321      36.183      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              361.086     235.791    -170.678     101.590      59.674    -151.899     -90.545       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       8.490      -0.081    -290.903       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -331.091     466.710     202.623      -1.389     243.445     302.570       7.021    -792.571

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -53.943     207.511    -665.981      -0.610    -448.131     287.432     -13.159    -129.140

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -344.073    -481.573     -90.604       1.386    -164.014    -336.253      -4.693    -823.566

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     186.550   -1083.254      53.652      39.481     339.119     -22.686      -0.990

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -186.550       0.000     186.470     311.479     229.288     -60.639     -54.572       0.193

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1083.254    -186.470       0.000      53.629      39.487      12.908     339.638      -0.035

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -53.652    -311.479     -53.629       0.000       0.057      -2.469      -0.068    -834.076

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -39.481    -229.288     -39.487      -0.057      -0.000       3.317      -0.023    1133.067

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -339.119      60.639     -12.908       2.469      -3.317       0.000    -703.476       0.042

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               22.686      54.572    -339.638       0.068       0.023     703.476       0.000      -2.093

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.990      -0.193       0.035     834.076   -1133.067      -0.042       2.093      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               58.831     -59.470     286.521      14.675      10.780     519.437    -142.683      -1.520

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              288.461     -38.094     -67.134      -0.133      -0.108    -142.740    -519.664       0.418

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.636      -1.725       8.381    -500.930    -368.746      15.261      -4.039      -0.070

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -93.513    -543.245     -93.554       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 0>               0.000    1098.393     176.528      -2.891      26.041      -0.993      57.658    -339.126
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>           -1098.393       0.000     -73.367      -6.995      62.641       0.178     334.955      60.601
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>            -176.528      73.367       0.000      43.426    -389.769      -0.028      57.685     -12.919
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               2.891       6.995     -43.426       0.000      -0.033   -1398.303       0.035       4.065
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 0>             -26.041     -62.641     389.769       0.033       0.000    -155.798       0.015       0.456
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.993      -0.178       0.028    1398.303     155.798       0.000      -2.004       0.058
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    7    1  |1 0>             -57.658    -334.955     -57.685      -0.035      -0.015       2.004       0.000     703.476
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    8    1  |1 0>             339.126     -60.601      12.919      -4.065      -0.456      -0.058    -703.476       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    9    1  |1 0>             -39.569    -281.182     -47.833     -18.226     163.750      -1.524      15.720    -519.438
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   10    1  |1 0>              13.146      76.859      13.231     -66.452     596.366       0.404      -0.153     142.745
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 0>            -295.030      44.286     -12.589      -0.492       4.612      -0.048    -538.682     -15.199
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

   12    1  |1 0>              36.793      88.528    -550.836      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.001       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.002       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   42728.299       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   42728.298       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42728.352       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   42728.351       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42728.352
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
                             -340.016    -300.822     583.568    -206.718    -472.282     237.246    -280.683     -93.323

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              686.210    -821.447       6.416      82.883     189.286      32.841    -242.798    -251.329

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -363.396     133.251    -608.427       7.461      17.027    -219.728    -609.632     -11.550

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -905.682    -507.872     -20.836     127.629     291.536      43.278     181.534    -238.886

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               46.933    -369.001    -674.129    -188.894    -431.433    -224.646     299.322    -170.024

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1729.750     309.099     -65.861       0.000       0.000       0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.020     -59.482    -252.376    -493.659     216.080    -484.249      -0.016    -201.241

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               57.637     326.099      16.706    -219.530      96.074     -76.845      -0.007     666.199

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               23.844      82.865    -237.331     509.409    -223.046    -502.388       0.024      92.074

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000    -533.876    -185.332     541.472    -147.190
                              -58.831    -288.461      -1.636      93.513       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000     753.775    -373.654    -228.519    -296.297
                               59.470      38.094       1.725     543.245       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000     340.509     678.215     634.811    -714.900
                             -286.521      67.134      -8.381      93.554       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000    -184.111    -499.356     -24.280    -474.637
                              -14.675       0.133     500.930      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000     -20.515     -55.631      -2.719     -52.894
                              -10.780       0.108     368.746      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000    -284.533     331.685    -527.759    -351.934
                             -519.437     142.740     -15.261       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000     237.478      33.571    -219.685      43.982
                              142.683     519.664       4.039       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000    -256.960     102.322      10.842     160.134
                                1.520      -0.418       0.070      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000     137.149      59.956     -83.924      -8.977
                               -0.000     746.298      -0.208      25.861       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      14.715     141.487     156.428    -134.806
                             -746.298       0.000     -21.781      -0.247       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000     147.851     -55.941      -7.682     -89.019
                                0.208      21.781      -0.000    -886.088       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                              -25.861       0.247     886.088      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              39.569     -13.146     295.030     -36.793       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     115.878     703.040    -137.974     640.417

    2    1  |1 0>             281.182     -76.859     -44.286     -88.528       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000    -651.538       2.356   -1002.244    -195.894

    3    1  |1 0>              47.833     -13.231      12.589     550.836       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     613.612    -237.441    -195.921    -427.326

    4    1  |1 0>              18.226      66.452       0.492       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000    -281.598     -39.850     260.467     -52.141

    5    1  |1 0>            -163.750    -596.366      -4.612      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000     382.495      54.099    -353.842      70.882

    6    1  |1 0>               1.524      -0.404       0.048      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000    -257.778     104.996       9.525     157.562

    7    1  |1 0>             -15.720       0.153     538.682      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      92.603     251.237      12.204     238.764

    8    1  |1 0>             519.438    -142.745      15.199      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -2.375     573.829      81.819    -534.442

    9    1  |1 0>               0.000       5.568    -719.952    -234.697       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -8.661    -150.814      -1.760    -150.944

   10    1  |1 0>              -5.568       0.000     197.671    -854.807       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000     152.309     -18.447      -3.259     -50.321

   11    1  |1 0>             719.952    -197.671       0.000      -6.611       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000    -105.291      12.071    -211.619     -36.183

   12    1  |1 0>             234.697     854.807       6.611       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     340.016    -686.210     363.396     905.682

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     300.822     821.447    -133.251     507.872

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -583.568      -6.416     608.427      20.836

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     206.718     -82.883      -7.461    -127.629

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     472.282    -189.286     -17.027    -291.536

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -237.246     -32.841     219.728     -43.278

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     280.683     242.798     609.632    -181.534

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      93.323     251.329      11.550     238.886

    9    1  |1 1>-          43796.864       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -87.999     153.221     -47.673    -169.240

   10    1  |1 1>-              0.000   43796.866       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -113.592     -62.620     140.127      20.024

   11    1  |1 1>-              0.000       0.000   43796.866       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      49.144     144.689       5.374     128.296

   12    1  |1 1>-              0.000       0.000       0.000   44271.607       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5898.333       0.000       0.000       0.000
                               87.999     113.592     -49.144      -0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5898.345       0.000       0.000
                             -153.221      62.620    -144.689       0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5898.349       0.000
                               47.673    -140.127      -5.374      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5898.344
                              169.240     -20.024    -128.296       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -47.313    -115.942     -96.586      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              280.514     -77.082       8.208       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               93.256     356.136     157.398     764.647      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               30.763      57.879    -507.777     340.016      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              103.611     369.999     -66.269    -789.185      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45

    1    1  |1 1>+            729.775    -115.711    -273.849     -55.492    -204.631
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+            571.881    -278.414    -182.138     -92.835     275.056
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+           -228.368    1732.343     -47.564     -18.627      30.537
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+           -339.193       0.000     -25.947      85.144      11.580
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+            -37.785      -0.000     232.545    -764.278    -103.950
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+            196.388      -0.000       1.364       0.626      -1.404
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+           -224.198      -0.000     483.698      78.816     502.615
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+           -236.069       0.000     466.657     207.495    -481.632
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+           -144.132      77.051    -366.334     -62.618    -359.133
                                0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+            -38.847     280.634      97.908      15.981     101.531
                                0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+            127.210       2.170     345.703     156.658    -378.370
                                0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000       0.000    -332.046    1091.247     148.436
                                0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                              488.998     294.093    -113.744     317.163      59.731

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                              253.860    1708.466     -18.920     -74.127      29.831

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                              722.565     294.220     223.558     113.411    -232.927

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                              265.773      -0.000     449.762      73.243     467.432

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                             -361.086       0.000     331.091      53.943     344.073

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                             -235.791       0.000    -466.710    -207.511     481.573

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                              170.678      -0.000    -202.623     665.981      90.604

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                             -101.590      -0.000       1.389       0.610      -1.386

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                              -59.674      -8.490    -243.445     448.131     164.014

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                              151.899       0.081    -302.570    -287.432     336.253

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                               90.545     290.903      -7.021      13.159       4.693

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     792.571     129.140     823.566

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                              -46.933    1729.750       1.020     -57.637     -23.844

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                              369.001    -309.099      59.482    -326.099     -82.865

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                              674.129      65.861     252.376     -16.706     237.331

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                              188.894      -0.000     493.659     219.530    -509.409

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                              431.433      -0.000    -216.080     -96.074     223.046

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                              224.646      -0.000     484.249      76.845     502.388

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                             -299.322       0.000       0.016       0.007      -0.024

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                              170.024      -0.000     201.241    -666.199     -92.074

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                               47.313    -280.514     -93.256     -30.763    -103.611

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                              115.942      77.082    -356.136     -57.879    -369.999

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                               96.586      -8.208    -157.398     507.777      66.269

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -764.647    -340.016     789.185

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5898.333       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   14340.965       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   41673.159       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   41673.163       0.000
                               -0.000      -0.000      -0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   41673.165
                               -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.08661944    -0.01267567    -2781.99      0.00000000        0.00      0.0000
    2  -214.07914134    -0.00519757    -1140.74      0.00747810     1641.25      0.2035
    3  -214.07914133    -0.00519757    -1140.73      0.00747811     1641.25      0.2035
    4  -214.07914133    -0.00519757    -1140.73      0.00747811     1641.25      0.2035
    5  -214.07097833     0.00296544      650.84      0.01564112     3432.83      0.4256
    6  -214.07097832     0.00296545      650.84      0.01564112     3432.83      0.4256
    7  -214.07097824     0.00296553      650.86      0.01564120     3432.85      0.4256
    8  -214.07097824     0.00296553      650.86      0.01564120     3432.85      0.4256
    9  -214.07097823     0.00296553      650.86      0.01564121     3432.85      0.4256
   10  -214.04512932     0.02881445     6324.04      0.04149012     9106.03      1.1290
   11  -214.04512931     0.02881446     6324.04      0.04149013     9106.03      1.1290
   12  -214.04512927     0.02881449     6324.05      0.04149017     9106.04      1.1290
   13  -214.04512918     0.02881458     6324.07      0.04149026     9106.06      1.1290
   14  -214.04512918     0.02881459     6324.07      0.04149026     9106.06      1.1290
   15  -214.00615729     0.06778648    14877.41      0.08046215    17659.40      2.1895
   16  -213.89323295     0.18071082    39661.44      0.19338649    42443.43      5.2623
   17  -213.89323294     0.18071082    39661.44      0.19338650    42443.43      5.2623
   18  -213.89323294     0.18071083    39661.44      0.19338650    42443.43      5.2623
   19  -213.88691759     0.18702618    41047.50      0.19970185    43829.49      5.4342
   20  -213.88691758     0.18702618    41047.50      0.19970186    43829.49      5.4342
   21  -213.88691758     0.18702619    41047.50      0.19970186    43829.49      5.4342
   22  -213.88373837     0.19020540    41745.26      0.20288107    44527.25      5.5207
   23  -213.88373837     0.19020540    41745.26      0.20288107    44527.25      5.5207
   24  -213.88373837     0.19020540    41745.26      0.20288107    44527.25      5.5207
   25  -213.88373821     0.19020555    41745.29      0.20288123    44527.28      5.5207
   26  -213.88373821     0.19020556    41745.29      0.20288123    44527.28      5.5207
   27  -213.88112254     0.19282122    42319.37      0.20549690    45101.36      5.5919
   28  -213.87460580     0.19933797    43749.63      0.21201364    46531.62      5.7692
   29  -213.87460580     0.19933797    43749.63      0.21201365    46531.62      5.7692
   30  -213.87460579     0.19933798    43749.63      0.21201365    46531.62      5.7692
   31  -213.87284863     0.20109514    44135.28      0.21377081    46917.27      5.8170
   32  -213.87284862     0.20109514    44135.28      0.21377082    46917.27      5.8170
   33  -213.87284862     0.20109514    44135.28      0.21377082    46917.27      5.8170
   34  -213.87284857     0.20109520    44135.29      0.21377087    46917.28      5.8170
   35  -213.87284857     0.20109520    44135.29      0.21377087    46917.28      5.8170
   36  -213.87284857     0.20109520    44135.29      0.21377087    46917.28      5.8170
   37  -213.87284850     0.20109527    44135.31      0.21377094    46917.30      5.8170
   38  -213.86954021     0.20440356    44861.40      0.21707924    47643.39      5.9070
   39  -213.86954020     0.20440356    44861.40      0.21707924    47643.39      5.9070
   40  -213.86954020     0.20440357    44861.40      0.21707924    47643.39      5.9070
   41  -213.86954019     0.20440357    44861.40      0.21707925    47643.39      5.9070
   42  -213.86954019     0.20440358    44861.40      0.21707925    47643.39      5.9070
   43  -213.86808777     0.20585599    45180.17      0.21853167    47962.16      5.9465
   44  -213.86808777     0.20585599    45180.17      0.21853167    47962.16      5.9465
   45  -213.86808777     0.20585600    45180.17      0.21853167    47962.16      5.9465

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.03739863 -0.05729215  0.70301559 -0.00581801  0.02986708  0.06110747  0.04875141  0.67270574
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.08998500  0.03182058  0.00095743  0.69725864  0.08733034  0.08862360  0.30459496 -0.05946360
                           0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.55990369  0.00128724  0.04711153  0.11167129 -0.50017062 -0.58575767  0.06086749  0.05178527
                          -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00071147 -0.00005797  0.00003239 -0.00010780 -0.00013458 -0.01481135  0.00072881
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00638560  0.00051796 -0.00029224 -0.00001232 -0.00001474 -0.00165021  0.00008116
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000034  0.00000295  0.00001609 -0.01278819  0.01091592  0.00005234 -0.00043902
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00048941  0.00547972 -0.00098112  0.00005843 -0.00028029  0.00004041 -0.00836048
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00017046  0.00099919  0.00549562 -0.00003891 -0.00001108 -0.00389842 -0.00078496
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00229310  0.00034841 -0.00396453  0.00058626  0.00067172  0.00092438  0.00001920  0.00333758
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00835187 -0.00009672  0.00108363 -0.00019284  0.00253473  0.00292790 -0.00003834 -0.00100103
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00006459  0.00013742  0.00063019  0.00412133 -0.00001285  0.00003484 -0.00162048 -0.00022933
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.01746021  0.00141631 -0.00079877  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.09505286  0.69381284  0.06448195  0.01407069 -0.03985459  0.12889925  0.57009061 -0.03753902

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.55218705 -0.12031587  0.00997620  0.11573110 -0.25561392  0.71602167 -0.15708804 -0.02979938

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.09509378  0.00513206 -0.12238346 -0.68608701 -0.03749465  0.12197677  0.33184384  0.05705742

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00045488  0.00509567 -0.00091292 -0.00006862  0.00033242 -0.00004929  0.00991258

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00033501  0.00375104 -0.00067181  0.00009429 -0.00045121  0.00006590 -0.01346607

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00017035 -0.00099981 -0.00549552 -0.00012275  0.00000443 -0.00389705 -0.00078652

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00556428 -0.00045114  0.00025456  0.00005360  0.00006825  0.00745158 -0.00036609

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00000048  0.00000318  0.00001604 -0.01585419 -0.00561317  0.00020122  0.00008483

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00025267 -0.00403726 -0.00052223 -0.00090299 -0.00002622  0.00014059  0.00255662 -0.00023726

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000242  0.00097751 -0.00063001 -0.00400624 -0.00003613 -0.00000021 -0.00238297 -0.00027481

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00865750 -0.00011810 -0.00001507 -0.00002524  0.00134698 -0.00380068  0.00008433  0.00012563

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00153564 -0.01719495  0.00307870  0.00000000  0.00000000  0.00000000  0.00000001

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.55906620 -0.12179516  0.03606483 -0.00278150  0.75834847 -0.14077299  0.09404570 -0.03994100

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.09990283 -0.69367658  0.05427850  0.01163526 -0.13038376  0.02682317  0.58550803 -0.13712725

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.02128675 -0.05678440 -0.69245036  0.12765858  0.02492348  0.01784142  0.09702595  0.65957241

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00017996  0.00105745  0.00581316  0.00006135 -0.00001607  0.00312588  0.00063143

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00007902 -0.00046251 -0.00254489  0.00013987 -0.00003824  0.00714095  0.00144087

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00047310  0.00548095 -0.00098234 -0.00005822  0.00028029 -0.00001973  0.00835929

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000002  0.00000000  0.00000024 -0.00306644 -0.01652903  0.00012767  0.00051898

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00556568  0.00043534 -0.00025152  0.00005380  0.00006743  0.00745189 -0.00039092

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00834829  0.00021789 -0.00107317  0.00018836  0.00383281 -0.00073829  0.00006121 -0.00087735

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00229401  0.00035111 -0.00394455  0.00070630 -0.00102788  0.00008229  0.00002483 -0.00336450

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00024429 -0.00414915 -0.00036729  0.00019540  0.00008985 -0.00004995 -0.00309733  0.00012776

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00053459  0.00313539  0.01724490 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>          -0.00000003 -0.00000000  0.00000011 -0.00000010 -0.04295067  0.11428374 -0.14431142  0.14974808
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000012 -0.00000003  0.00000003  0.00000004  0.19775354  0.05014366 -0.12656781  0.03797959
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000004  0.00000002 -0.00000011  0.00000004 -0.04937333  0.22427535 -0.00470638 -0.16203065
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000013 -0.00000002  0.00000002  0.00000005 -0.19085226 -0.03090790 -0.09604113  0.04883790
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000002 -0.00000016 -0.00000008 -0.00146443 -0.11395510 -0.18363475 -0.16524787
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.17552697 -0.00000000  0.00000000  0.00000000  0.00000005  0.00000004  0.00000001 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00285016  0.00942347  0.00598733 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.01089388  0.00099461  0.00362042 -0.00000000  0.00000000  0.00000001 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00244402  0.00655609 -0.00915521 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.03156530  0.02806120 -0.18808127 -0.04864649 -0.01210960  0.03729509 -0.00667684 -0.00083925
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.59322585  0.17361958  0.04128647 -0.08210418 -0.02470041 -0.03381071 -0.01606518 -0.00056829
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.09476997  0.02448471  0.02925680 -0.01906838  0.17837967  0.13898097  0.09996063 -0.00014739
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00771426  0.00789859 -0.00265089  0.01500295  0.00060263  0.00045138 -0.00000000  0.01784869
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00085964  0.00087995 -0.00029533  0.00167168  0.00006688  0.00005062  0.00000000 -0.15999511
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00015361  0.00045239  0.00325853  0.00037554 -0.01076586  0.01310976  0.00000001 -0.00082903
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00086444 -0.00008603 -0.00826019 -0.00147427 -0.00003831  0.00206676  0.00000000 -0.28936038
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00741046  0.00766718  0.00057593 -0.00393659  0.00019670 -0.00018346 -0.00000000 -0.28381458
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00025280  0.00015653 -0.00652416 -0.00117861 -0.00163963  0.00030392 -0.00218043  0.01544303
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00010741  0.00018614  0.00058154  0.00039063 -0.00587214 -0.00498443 -0.00794150 -0.00412548
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00308936 -0.00599587 -0.00064877  0.00304547 -0.00017545  0.00012380 -0.00006142 -0.01481632
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.05158600
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.34574698  0.07840150 -0.04046622  0.17730950  0.01241232 -0.03169083  0.01696994 -0.00039376

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.03142072 -0.04657966 -0.05017678 -0.01939822  0.03155714 -0.21573162  0.09858289 -0.00005162

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.57836071  0.17789968  0.00298943 -0.08374389  0.00978091 -0.04019691  0.01697726  0.00069336

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00102514  0.00010325  0.00979345  0.00174855  0.00004619 -0.00245043  0.00000000 -0.26906305

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00139160 -0.00013882 -0.01330405 -0.00237563 -0.00006153  0.00332899 -0.00000000 -0.19806973

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00741010  0.00766971  0.00058327 -0.00393511  0.00011517 -0.00015232 -0.00000000  0.28384600

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00388085 -0.00397393  0.00133436 -0.00754773 -0.00030372 -0.00022659  0.00000000  0.13940774

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00006063  0.00053086 -0.00061971  0.00037335 -0.01707773 -0.00250589  0.00000000 -0.00084455

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00236944  0.00140567 -0.00118120  0.00650238  0.00022865 -0.00001769  0.00024025  0.01126680

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00254330 -0.00660687 -0.00016478  0.00140508 -0.00018781  0.00006461 -0.00000230  0.01273093

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00011186  0.00012325  0.00182566  0.00029772 -0.00115537  0.00749236 -0.00823211  0.00032527

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.10706463

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.05343781  0.02298325  0.02744233  0.03715957 -0.21008730  0.07820845  0.09981103  0.00001081

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.29199860  0.08834698 -0.00330641  0.17412333  0.04473276 -0.01686220 -0.01783583  0.00022653

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.12122533  0.01370525 -0.19275249 -0.00418259 -0.00774597  0.05106982  0.00380036  0.00077931

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00594351 -0.00615008 -0.00046874  0.00315731 -0.00013220  0.00011680  0.00000000 -0.30023934

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.01357670 -0.01404891 -0.00107255  0.00721150 -0.00030259  0.00026577  0.00000000  0.13141867

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00087654  0.00007579  0.00826398  0.00145221  0.00003750 -0.00206762  0.00000000 -0.28974323

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00013689  0.00012232 -0.00387479 -0.00002667 -0.00631100 -0.01561656 -0.00000000 -0.00001002

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00387783 -0.00397462  0.00130975 -0.00755187 -0.00030382 -0.00022042  0.00000000 -0.13858091

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001933  0.00035585  0.00234317  0.00066622 -0.00698230  0.00224197  0.00793810  0.00390085

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00035476 -0.00000369  0.00604815  0.00105893  0.00195165 -0.00229119 -0.00218130  0.01500620

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00161452 -0.00309920  0.00111054 -0.00588708 -0.00044197 -0.00011116  0.00023228  0.00760984

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.10501229

   1    1  |0 0>          -0.14716556  0.66443893  0.64875337  0.01519880 -0.03994717  0.23506712  0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.14398467  0.03556078 -0.02290597  0.64135148  0.71032535  0.04194613 -0.00000001 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.02830871 -0.00667762 -0.32039656 -0.04561536 -0.02209523  0.90231631  0.00000001  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.17557112 -0.05283877 -0.00814970  0.71116830 -0.64073066  0.01697746  0.00000002 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.07613779  0.68837754 -0.62874298  0.00634391 -0.04753223 -0.21900337 -0.00000000  0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000004 -0.00000003  0.98433334  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.60068998
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.02228011
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00776529
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.00021809 -0.00064509 -0.00666545 -0.00563163 -0.00468867  0.01080663 -0.00128609  0.00008307
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00029292  0.00085728 -0.00377932 -0.00256527  0.00867291 -0.00138687 -0.01067202  0.00038632
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00006165  0.00009469 -0.00105261 -0.00078844  0.00108069  0.00049287 -0.00180161  0.00006615
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.05149517 -0.00577857 -0.02111307  0.02617499 -0.00144980 -0.00256921  0.02815743  0.76877057
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

   5    1  |1 1>+          0.46224497  0.05187329  0.18939113 -0.23500406  0.01302585 -0.00028476  0.00314336  0.08565537
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00039539  0.00085487  0.00038180  0.00028336 -0.00060646 -0.00049322 -0.00119424  0.00003266
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.06544075 -0.30936427  0.15729569  0.13572726  0.16165592  0.38653562  0.01928199  0.00060827
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.13113878  0.29320353  0.13160394  0.09456143 -0.20744761  0.01924818 -0.38627390  0.01423457
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00359742  0.01557441  0.25340688  0.21775398  0.24413447 -0.21620467 -0.00424140 -0.00057073
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00093396 -0.00440166 -0.06797330 -0.05864343 -0.06970172  0.05919655  0.00288553  0.00006194
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00694991  0.01622886 -0.20720260 -0.14784713  0.34545464  0.00482898 -0.22400664  0.00821656
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.14903195 -0.01672636  0.25440034 -0.31566392  0.01749130  0.00000000  0.00000003  0.00000009
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00097941  0.00016112 -0.00644894  0.00736202  0.00009388 -0.00006950  0.00110903  0.01069524

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00023139  0.00009723  0.00030823 -0.00192216  0.00131393 -0.00006905  0.00165453 -0.00197951

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00036461 -0.00072564  0.00465636  0.00380270 -0.00772350  0.00053482 -0.01070927  0.00080259

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.06082452 -0.28771298  0.14626945  0.12619930  0.15035026 -0.45830313 -0.02289785 -0.00066847

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.04479093 -0.21178298  0.10767209  0.09290755  0.11066831  0.62259382  0.03104298  0.00093113

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.13115055 -0.29316773 -0.13162009 -0.09457915  0.20742932  0.01926968 -0.38627431  0.01420290

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.40278939 -0.04521535 -0.16502492  0.20477915 -0.01134232  0.00126601 -0.01415716 -0.38675589

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00038656  0.00084379  0.00039274  0.00028295 -0.00059969 -0.00001864  0.00112874  0.00007067

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.01900918 -0.00651725  0.31609986 -0.28093385 -0.07170328  0.00366301 -0.06715617 -0.21379064

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.01253684 -0.01455945  0.13561117  0.23705983 -0.33098802  0.01055542 -0.21362191  0.06728175

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00055828 -0.00018614  0.00918755 -0.00826524 -0.00200029  0.00032549 -0.00187719 -0.00626287

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.02421244 -0.11446567 -0.24247586 -0.20922502 -0.24919757 -0.00000012  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00018111 -0.00007055  0.00065057 -0.00162843 -0.00032961 -0.00072758  0.00003040  0.00182349

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00101508 -0.00023476  0.00510778 -0.00831367 -0.00054951 -0.00175906  0.00030175  0.01058683

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000739  0.00075103  0.00688550  0.00375056  0.00607772  0.01072535  0.00060206  0.00183979

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.13874691  0.31011793  0.13921776  0.10005214 -0.21942435 -0.01547480  0.30982020 -0.01137985

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.06072014 -0.13578583 -0.06093920 -0.04378224  0.09606954 -0.03527750  0.70772572 -0.02601915

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.06424784 -0.30925550  0.15776764  0.13511798  0.16170652 -0.38652781 -0.01937686 -0.00170800

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000464  0.00001454  0.00000455  0.00000279 -0.00000986  0.00059676  0.00007122  0.00004319

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.40297187  0.04612002  0.16457427 -0.20516712  0.01086742  0.00241470 -0.01407738 -0.38675343

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00156345  0.00447519  0.06003854  0.06831528  0.06922887  0.05940550  0.00272981 -0.00648138

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00338708  0.01604041  0.24732924  0.21325493  0.25411338  0.21591282  0.01077061  0.00039452

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.02162317 -0.00230572  0.27081902 -0.33201361  0.02045398  0.00092904  0.00828307  0.22397034

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.04852473 -0.10848635  0.20286664  0.14577496 -0.31978723 -0.00000001 -0.00000001  0.00000003

   1    1  |0 0>           0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.01262305  0.01492145 -0.00570807
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00221881 -0.00621201 -0.01387907
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.01227568 -0.00115901 -0.00068347
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00295774 -0.00928449 -0.01306804
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.01320467  0.01221822 -0.01008054
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.02243767  0.00729796  0.44924117  0.17945480 -0.04287660  0.00000024 -0.00000001  0.00000009
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.60060515 -0.01269497 -0.18449640  0.43808655 -0.09950780  0.00000004 -0.00000006 -0.00000018
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.01241459  0.60097391  0.00190786  0.10833557  0.47341327  0.00000026  0.00000003 -0.00000006
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+          0.00080464  0.00017607  0.00046590 -0.00634883 -0.00313990 -0.00293385 -0.00000000  0.00000021
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00195320  0.00040665  0.00112100 -0.00278288 -0.00073543  0.00701888  0.00000000 -0.00000004
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.01214451 -0.00254004 -0.00697506 -0.00087132 -0.00032792  0.00093207  0.00000000  0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00008899 -0.00001105 -0.00000002 -0.01152077  0.02507768 -0.00193353 -0.07848112 -0.00016238
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000017 -0.00000000

   5    1  |1 1>+         -0.00001371  0.00001688 -0.00000000  0.10330304 -0.22511383  0.01737529  0.77056803  0.00131276
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000171  0.00000000

   6    1  |1 1>+         -0.15847506  0.75764414 -0.00000032  0.00032105  0.00011263 -0.00053412 -0.00001780  0.00002901
                           0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00023621  0.00022843  0.00000010  0.16299470  0.08367589  0.11501867  0.00071216 -0.46719098
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

   8    1  |1 1>+          0.00047314 -0.00223416  0.00000000  0.11013617  0.03644721 -0.18259087 -0.00131612 -0.00003743
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000004

   9    1  |1 1>+         -0.06696197 -0.01416422  0.15282442 -0.33950696 -0.17304756 -0.22349449 -0.00000002  0.00001024
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.24440528 -0.05107832  0.55661185  0.09148776  0.04695408  0.06440537  0.00000000 -0.00000282
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00188074 -0.00040858  0.00430486  0.22339707  0.07216120 -0.39337758 -0.00000003  0.00000029
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000001  0.00000000  0.00000001 -0.09525996  0.20758159 -0.01601887  0.00000508  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00140326 -0.00157100 -0.00118413 -0.00340197  0.00676718 -0.00010205  0.00000021  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00815816 -0.00911944 -0.00687894 -0.00005741 -0.00142947  0.00112128 -0.00000004  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00140513 -0.00157103 -0.00118464  0.00373387  0.00153632 -0.00640898  0.00000001 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                           0.00026076 -0.00029564 -0.00000012  0.15158620  0.07781030  0.10699123 -0.00111752  0.61141409

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                          -0.00039351  0.00036648  0.00000016  0.11158717  0.05728491  0.07875152 -0.00074579  0.47521279

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000004
                           0.00169798  0.00149438 -0.00000000 -0.11015388 -0.03645894  0.18257812  0.00123955  0.00006587

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000101 -0.00000000
                           0.00003771  0.00004271  0.00000001 -0.08999933  0.19613641 -0.01513245  0.45451346  0.00075461

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.57690146  0.51606596 -0.00000074  0.00033008  0.00011038 -0.00052913 -0.00000932 -0.00000146

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00501353  0.00565034 -0.01683925 -0.24546839  0.37990613  0.07147999  0.00001026  0.00000002

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00004762 -0.00006942  0.00016102 -0.17441868 -0.18444446  0.38135220 -0.00000278  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.17254320 -0.19288121  0.57698072 -0.00711533  0.01113906  0.00197973  0.00000030 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000005 -0.00000004 -0.00000001  0.17250996  0.08855918  0.12173279  0.00000001 -0.00000513

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00386673  0.01176909 -0.00696464  0.00015370 -0.00136061 -0.00017891 -0.00000004  0.00000001

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00069088 -0.00210540  0.00124455  0.00218930 -0.00723859 -0.00012451 -0.00000021  0.00000003

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00014045  0.00045443 -0.00026518  0.00623802  0.00176221  0.00411443 -0.00000004 -0.00000021

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000006
                          -0.00003649  0.00002262  0.00000000  0.11652772  0.03857767 -0.19315875  0.00203188  0.00012166

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000003
                          -0.00001671  0.00002981 -0.00000001 -0.05100316 -0.01687482  0.08456762 -0.00092424 -0.00002961

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                           0.00024268 -0.00023530 -0.00000010  0.16324858  0.08309727  0.11507847 -0.00046995 -0.42670324

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.73538008 -0.24157940 -0.00000042  0.00000352  0.00000073 -0.00000849  0.00000481  0.00003546

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000098  0.00000000
                           0.00003565  0.00004312  0.00000000  0.08953162 -0.19637572  0.01479321 -0.43985492  0.00044978

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.07792120 -0.23704949 -0.55637372 -0.08582620 -0.05903087 -0.06355276 -0.00000031  0.00000273

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.02126942  0.06527902  0.15288485 -0.33289814 -0.17075270 -0.23488395 -0.00000001  0.00000995

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00230157 -0.00696098 -0.01628048 -0.19309736  0.41384924 -0.03385482  0.00001044  0.00000010

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000000 -0.00000000 -0.11656449 -0.03857888  0.19325029  0.00000002  0.00000000

   1    1  |0 0>           0.00602662 -0.00686846  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.01105689  0.01181844 -0.00000002  0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.01401191 -0.01221619  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00932601 -0.01205706  0.00000002  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00749599  0.00407599 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000001  0.00000000  0.01667780 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000005  0.00000004  0.00000000  0.59608000  0.07121343 -0.10641350 -0.00000455 -0.00001089
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000001 -0.00000000 -0.09732356  0.58124044 -0.15618792  0.00001491 -0.00000175
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000004  0.00000004  0.00000000  0.08320662  0.16969152  0.57964529  0.00000208 -0.00001130
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+          0.00000004 -0.00000008 -0.00000000  0.00000001 -0.00000000 -0.00188289  0.00008192  0.00024950
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000021  0.00000001 -0.00000000  0.00000008 -0.00000000  0.00026401  0.00085721  0.00165225
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000004 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00001476  0.00016359  0.00026746
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00027495  0.00147182  0.57468919  0.01296509  0.00000478 -0.00557272  0.22830718 -0.11812213
                          -0.00000000 -0.00000000  0.00000543  0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00219839  0.00002095  0.05414010  0.00122750  0.00000816 -0.00062075  0.02543874 -0.01315930
                           0.00000001 -0.00000000  0.00000051  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00134531  0.00001736 -0.00004136  0.00159217  0.57734816 -0.01610417 -0.00071618 -0.00167373
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00004390 -0.56131485  0.00138121  0.00035661  0.00004204  0.12895898  0.00435276  0.00237086
                           0.00000004  0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.45922379  0.00032268 -0.01278163  0.56770451 -0.00162251  0.00418018 -0.05933249 -0.11487882
                          -0.00000023 -0.00000000 -0.00000010 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000032  0.00000752 -0.00000001 -0.00000024  0.00000005  0.65122634  0.01459745 -0.00685606
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000001 -0.00000207  0.00000001  0.00000000  0.00000018 -0.15412268  0.00092788 -0.00802618
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00001071  0.00000023 -0.00000019  0.00000815  0.00000001 -0.00238505  0.30815848  0.59552429
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000002 -0.00000000 -0.00000017 -0.00000000 -0.00000000  0.00000001 -0.00000100  0.00000016
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000000 -0.00000009 -0.00000001 -0.00000000  0.00001907 -0.00172392  0.00074923

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000003  0.00000000  0.00000002 -0.00000001 -0.00000000 -0.00014575  0.00014553 -0.00042433

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000021  0.00000000 -0.00000001  0.00000008 -0.00000000 -0.00008394  0.00079533  0.00169911

   4    1  |1 0>           0.00000005 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00010605 -0.36392448  0.00093310  0.00020246 -0.00000077 -0.15289029 -0.00515111 -0.00282981

   5    1  |1 0>           0.00000004  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00004007  0.44856663 -0.00107743 -0.00027315 -0.00003134  0.20769776  0.00699386  0.00382221

   6    1  |1 0>          -0.00000022  0.00000000  0.00000010  0.00000002  0.00000000  0.00000000  0.00000000  0.00000000
                           0.43501720  0.00027721 -0.01327481  0.58644875 -0.00161860  0.00413741 -0.05933812 -0.11488397

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000540 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00127374  0.00134796  0.57148107  0.01291928 -0.00005583  0.00279422 -0.11486613  0.05943296

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00127235 -0.00002566 -0.00001486 -0.00164834 -0.57734800 -0.00119113  0.00195624 -0.00181812

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.00000268  0.00000002  0.00000783  0.00000241 -0.00000001 -0.01809799  0.65547508 -0.13925322

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000989 -0.00000000 -0.00000235  0.00000808  0.00000000 -0.01683028  0.13891576  0.65579606

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000008 -0.00000000  0.00000023  0.00000007  0.00000012 -0.05421066  0.01421348 -0.00518789

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000007 -0.00000000 -0.00000000 -0.00000000  0.00000104  0.00000003 -0.00000002

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000001  0.00021540 -0.00028482  0.00016561

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000001 -0.00000007 -0.00000000  0.00000000  0.00032586 -0.00163241  0.00085293

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000007 -0.00000001 -0.00000000 -0.00000000 -0.00186100 -0.00034631  0.00011263

   4    1  |1 1>-         -0.00000036  0.00000000  0.00000004  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.70455992  0.00012220 -0.00562786  0.24629083  0.00000813 -0.00332805  0.04759704  0.09213100

   5    1  |1 1>-          0.00000016  0.00000000  0.00000009  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.32164755  0.00030843 -0.01179260  0.52212490  0.00006248 -0.00757692  0.10871974  0.21045901

   6    1  |1 1>-         -0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00007819  0.59267889  0.00019597 -0.00029413  0.00000694 -0.12894977 -0.00468833 -0.00221779

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                           0.00002689  0.00001634  0.00005353 -0.00005876  0.57735009  0.01494105  0.00230393 -0.00080139

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000551 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00131439 -0.00021130  0.58283468  0.01318236 -0.00004876  0.00317756 -0.11484922  0.05944641

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000228  0.00000027  0.00000001  0.00000029 -0.20620519  0.01351135 -0.01808230

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00000830  0.00000002  0.00000000 -0.00000008 -0.63666177 -0.02245572 -0.01018492

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                          -0.00000003 -0.00000009 -0.00000883 -0.00000020  0.00000001  0.00868124 -0.59525571  0.30767006

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000523 -0.00000000 -0.00000000  0.00000007  0.00000000 -0.00000002 -0.00000027  0.00000018

   1    1  |0 0>           0.00000000 -0.00000009  0.00000003 -0.00000009 -0.00000000  0.00952366  0.00177270  0.01087179
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000001  0.00000008  0.00000004  0.00000000  0.00154190 -0.01053663  0.00086156
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000008  0.00000000  0.00000000 -0.00000000 -0.00771427 -0.00079242 -0.00026116
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000002  0.00000008  0.00000006 -0.00000000  0.00231379 -0.01122685 -0.00112321
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000008  0.00000006 -0.00000008  0.00000000 -0.00933458 -0.00205981  0.01117174
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00001050  0.00000034  0.00000015 -0.00000011  0.00000000  0.00000023  0.00000019 -0.00000003
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000472  0.00000005 -0.00000050 -0.00000007 -0.00000000  0.00000005 -0.00000030  0.00000004
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00001084  0.00000035 -0.00000007  0.00000012 -0.00000000  0.00000022 -0.00000012  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45

   1    1  |1 1>+         -0.00014173 -0.00002744  0.00919226  0.00660646  0.00145741
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00024233  0.00025887  0.00257836 -0.00138758 -0.01090780
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00159862 -0.00146631  0.00102837  0.00021827 -0.00165570
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00230704  0.00146523  0.00084567 -0.00125500  0.00035927
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00025286  0.00016784 -0.00758655  0.01126787 -0.00322690
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.17461370  0.19022954 -0.00001305  0.00000027  0.00003313
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00250804  0.00865044 -0.00917706 -0.00718075 -0.00349842
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00107687 -0.00066433 -0.00448299  0.00022001  0.01130795
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.16365950 -0.09505758  0.23957285  0.18455440  0.08119452
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.54727976 -0.51546977 -0.06490636 -0.05075903 -0.02464661
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00755684 -0.00207282 -0.11268875  0.01127153  0.30431514
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000005  0.00000004 -0.47291411  0.70238669 -0.20113654
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00009575  0.00034772  0.00639147 -0.00909449  0.00190081

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00045668  0.00208350 -0.00042524  0.00158999 -0.00214801

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00008825  0.00035968 -0.00391944 -0.00014210  0.01057299

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00298414 -0.01025525 -0.00853350 -0.00667689 -0.00325437

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00403656  0.01393529 -0.00628183 -0.00491540 -0.00239517

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00017389 -0.00027098  0.00448400 -0.00021915 -0.01130755

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00116928 -0.00072863  0.00661054 -0.00981895  0.00281161

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.25257611 -0.05600746 -0.00001367  0.00000022  0.00003290

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00993712 -0.01821534  0.20174667 -0.25414577 -0.00757326

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00447889 -0.00025188  0.06864168  0.06375064 -0.31090776

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.16679014  0.75395220  0.00586887 -0.00743510 -0.00013426

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000065 -0.00000007  0.65647794  0.51366940  0.25026211

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00205769 -0.00064160 -0.00047177  0.00198819 -0.00022568

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00039123  0.00012558 -0.00467280  0.01003806 -0.00204764

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00011208 -0.00015200 -0.00954005 -0.00510638 -0.00368270

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00045027  0.00009517 -0.00474254  0.00023154  0.01196101

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00103615  0.00019663  0.00207564 -0.00010219 -0.00523637

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00250541 -0.00865559 -0.00919572 -0.00715172 -0.00350752

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.07795912 -0.24623885 -0.00000019  0.00000003  0.00000048

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00117643 -0.00070258 -0.00658402  0.00983952 -0.00280111

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.70784435  0.21177793  0.05969962  0.05838527  0.02253167

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.20804289 -0.10467180  0.23623388  0.18473248  0.09005902

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.02677932  0.00243395  0.17819579 -0.26051946  0.07570823

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000002 -0.32068617  0.01572905  0.80892743

   1    1  |0 0>          -0.00118560 -0.00562416 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.01135198 -0.00143774  0.00000000 -0.00000001 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00138100 -0.01352631  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.01059352  0.00044137  0.00000001 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00081905  0.00531221  0.00000001  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000016 -0.00000003  0.16203215  0.02842971 -0.06207086
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000005  0.00000002 -0.05659884  0.14533264 -0.08118231
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000017 -0.00000002  0.03817892  0.09479318  0.14308114
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.08661944     -0.01267567    -2781.99      0.00000000        0.00      0.0000
     2   1   -214.07914134     -0.00519757    -1140.74      0.00747810     1641.25      0.2035
     3   1   -214.07914133     -0.00519757    -1140.73      0.00747811     1641.25      0.2035
     4   1   -214.07914133     -0.00519757    -1140.73      0.00747811     1641.25      0.2035
     5   1   -214.07097833      0.00296544      650.84      0.01564112     3432.83      0.4256
     6   1   -214.07097832      0.00296545      650.84      0.01564112     3432.83      0.4256
     7   1   -214.07097824      0.00296553      650.86      0.01564120     3432.85      0.4256
     8   1   -214.07097824      0.00296553      650.86      0.01564120     3432.85      0.4256
     9   1   -214.07097823      0.00296553      650.86      0.01564121     3432.85      0.4256
    10   1   -214.04512932      0.02881445     6324.04      0.04149012     9106.03      1.1290
    11   1   -214.04512931      0.02881446     6324.04      0.04149013     9106.03      1.1290
    12   1   -214.04512927      0.02881449     6324.05      0.04149017     9106.04      1.1290
    13   1   -214.04512918      0.02881458     6324.07      0.04149026     9106.06      1.1290
    14   1   -214.04512918      0.02881459     6324.07      0.04149026     9106.06      1.1290
    15   1   -214.00615729      0.06778648    14877.41      0.08046215    17659.40      2.1895
    16   1   -213.89323295      0.18071082    39661.44      0.19338649    42443.43      5.2623
    17   1   -213.89323294      0.18071082    39661.44      0.19338650    42443.43      5.2623
    18   1   -213.89323294      0.18071083    39661.44      0.19338650    42443.43      5.2623
    19   1   -213.88691759      0.18702618    41047.50      0.19970185    43829.49      5.4342
    20   1   -213.88691758      0.18702618    41047.50      0.19970186    43829.49      5.4342
    21   1   -213.88691758      0.18702619    41047.50      0.19970186    43829.49      5.4342
    22   1   -213.88373837      0.19020540    41745.26      0.20288107    44527.25      5.5207
    23   1   -213.88373837      0.19020540    41745.26      0.20288107    44527.25      5.5207
    24   1   -213.88373837      0.19020540    41745.26      0.20288107    44527.25      5.5207
    25   1   -213.88373821      0.19020555    41745.29      0.20288123    44527.28      5.5207
    26   1   -213.88373821      0.19020556    41745.29      0.20288123    44527.28      5.5207
    27   1   -213.88112254      0.19282122    42319.37      0.20549690    45101.36      5.5919
    28   1   -213.87460580      0.19933797    43749.63      0.21201364    46531.62      5.7692
    29   1   -213.87460580      0.19933797    43749.63      0.21201365    46531.62      5.7692
    30   1   -213.87460579      0.19933798    43749.63      0.21201365    46531.62      5.7692
    31   1   -213.87284863      0.20109514    44135.28      0.21377081    46917.27      5.8170
    32   1   -213.87284862      0.20109514    44135.28      0.21377082    46917.27      5.8170
    33   1   -213.87284862      0.20109514    44135.28      0.21377082    46917.27      5.8170
    34   1   -213.87284857      0.20109520    44135.29      0.21377087    46917.28      5.8170
    35   1   -213.87284857      0.20109520    44135.29      0.21377087    46917.28      5.8170
    36   1   -213.87284857      0.20109520    44135.29      0.21377087    46917.28      5.8170
    37   1   -213.87284850      0.20109527    44135.31      0.21377094    46917.30      5.8170
    38   1   -213.86954021      0.20440356    44861.40      0.21707924    47643.39      5.9070
    39   1   -213.86954020      0.20440356    44861.40      0.21707924    47643.39      5.9070
    40   1   -213.86954020      0.20440357    44861.40      0.21707924    47643.39      5.9070
    41   1   -213.86954019      0.20440357    44861.40      0.21707925    47643.39      5.9070
    42   1   -213.86954019      0.20440358    44861.40      0.21707925    47643.39      5.9070
    43   1   -213.86808777      0.20585599    45180.17      0.21853167    47962.16      5.9465
    44   1   -213.86808777      0.20585599    45180.17      0.21853167    47962.16      5.9465
    45   1   -213.86808777      0.20585600    45180.17      0.21853167    47962.16      5.9465

 E0 =   -214.07394377 is the energy of the lowest zeroth-order state
 E1 =   -214.08661944 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.03739863 -0.05729215  0.70301559 -0.00581801  0.02986708  0.06110747  0.04875141  0.67270574
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.08998500  0.03182058  0.00095743  0.69725864  0.08733034  0.08862360  0.30459496 -0.05946360
                                0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.55990369  0.00128724  0.04711153  0.11167129 -0.50017062 -0.58575767  0.06086749  0.05178527
                               -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.00071147 -0.00005797  0.00003239 -0.00010780 -0.00013458 -0.01481135  0.00072881
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00000000  0.00638560  0.00051796 -0.00029224 -0.00001232 -0.00001474 -0.00165021  0.00008116
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000000  0.00000034  0.00000295  0.00001609 -0.01278819  0.01091592  0.00005234 -0.00043902
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00000000 -0.00048941  0.00547972 -0.00098112  0.00005843 -0.00028029  0.00004041 -0.00836048
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000000  0.00017046  0.00099919  0.00549562 -0.00003891 -0.00001108 -0.00389842 -0.00078496
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00229310  0.00034841 -0.00396453  0.00058626  0.00067172  0.00092438  0.00001920  0.00333758
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00835187 -0.00009672  0.00108363 -0.00019284  0.00253473  0.00292790 -0.00003834 -0.00100103
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00006459  0.00013742  0.00063019  0.00412133 -0.00001285  0.00003484 -0.00162048 -0.00022933
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.00000000  0.01746021  0.00141631 -0.00079877  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.09505286  0.69381284  0.06448195  0.01407069 -0.03985459  0.12889925  0.57009061 -0.03753902

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.55218705 -0.12031587  0.00997620  0.11573110 -0.25561392  0.71602167 -0.15708804 -0.02979938

 15  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.09509378  0.00513206 -0.12238346 -0.68608701 -0.03749465  0.12197677  0.33184384  0.05705742

 16  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00045488  0.00509567 -0.00091292 -0.00006862  0.00033242 -0.00004929  0.00991258

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00033501  0.00375104 -0.00067181  0.00009429 -0.00045121  0.00006590 -0.01346607

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00017035 -0.00099981 -0.00549552 -0.00012275  0.00000443 -0.00389705 -0.00078652

 19  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00556428 -0.00045114  0.00025456  0.00005360  0.00006825  0.00745158 -0.00036609

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00000048  0.00000318  0.00001604 -0.01585419 -0.00561317  0.00020122  0.00008483

 21  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00025267 -0.00403726 -0.00052223 -0.00090299 -0.00002622  0.00014059  0.00255662 -0.00023726

 22  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000242  0.00097751 -0.00063001 -0.00400624 -0.00003613 -0.00000021 -0.00238297 -0.00027481

 23  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00865750 -0.00011810 -0.00001507 -0.00002524  0.00134698 -0.00380068  0.00008433  0.00012563

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00153564 -0.01719495  0.00307870  0.00000000  0.00000000  0.00000000  0.00000001

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.55906620 -0.12179516  0.03606483 -0.00278150  0.75834847 -0.14077299  0.09404570 -0.03994100

 26  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.09990283 -0.69367658  0.05427850  0.01163526 -0.13038376  0.02682317  0.58550803 -0.13712725

 27  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.02128675 -0.05678440 -0.69245036  0.12765858  0.02492348  0.01784142  0.09702595  0.65957241

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00017996  0.00105745  0.00581316  0.00006135 -0.00001607  0.00312588  0.00063143

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00007902 -0.00046251 -0.00254489  0.00013987 -0.00003824  0.00714095  0.00144087

 30  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00047310  0.00548095 -0.00098234 -0.00005822  0.00028029 -0.00001973  0.00835929

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000002  0.00000000  0.00000024 -0.00306644 -0.01652903  0.00012767  0.00051898

 32  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00556568  0.00043534 -0.00025152  0.00005380  0.00006743  0.00745189 -0.00039092

 33  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00834829  0.00021789 -0.00107317  0.00018836  0.00383281 -0.00073829  0.00006121 -0.00087735

 34  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00229401  0.00035111 -0.00394455  0.00070630 -0.00102788  0.00008229  0.00002483 -0.00336450

 35  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00024429 -0.00414915 -0.00036729  0.00019540  0.00008985 -0.00004995 -0.00309733  0.00012776

 36  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00053459  0.00313539  0.01724490 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 37  1     1    1  |0 0>       -0.00000003 -0.00000000  0.00000011 -0.00000010 -0.04295067  0.11428374 -0.14431142  0.14974808
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000012 -0.00000003  0.00000003  0.00000004  0.19775354  0.05014366 -0.12656781  0.03797959
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000004  0.00000002 -0.00000011  0.00000004 -0.04937333  0.22427535 -0.00470638 -0.16203065
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00000013 -0.00000002  0.00000002  0.00000005 -0.19085226 -0.03090790 -0.09604113  0.04883790
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000000 -0.00000002 -0.00000016 -0.00000008 -0.00146443 -0.11395510 -0.18363475 -0.16524787
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.17552697 -0.00000000  0.00000000  0.00000000  0.00000005  0.00000004  0.00000001 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00000000  0.00285016  0.00942347  0.00598733 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000000 -0.01089388  0.00099461  0.00362042 -0.00000000  0.00000000  0.00000001 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.00000000 -0.00244402  0.00655609 -0.00915521 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.03156530  0.02806120 -0.18808127 -0.04864649 -0.01210960  0.03729509 -0.00667684 -0.00083925
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.59322585  0.17361958  0.04128647 -0.08210418 -0.02470041 -0.03381071 -0.01606518 -0.00056829
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.09476997  0.02448471  0.02925680 -0.01906838  0.17837967  0.13898097  0.09996063 -0.00014739
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00771426  0.00789859 -0.00265089  0.01500295  0.00060263  0.00045138 -0.00000000  0.01784869
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00085964  0.00087995 -0.00029533  0.00167168  0.00006688  0.00005062  0.00000000 -0.15999511
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00015361  0.00045239  0.00325853  0.00037554 -0.01076586  0.01310976  0.00000001 -0.00082903
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00086444 -0.00008603 -0.00826019 -0.00147427 -0.00003831  0.00206676  0.00000000 -0.28936038
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00741046  0.00766718  0.00057593 -0.00393659  0.00019670 -0.00018346 -0.00000000 -0.28381458
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00025280  0.00015653 -0.00652416 -0.00117861 -0.00163963  0.00030392 -0.00218043  0.01544303
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00010741  0.00018614  0.00058154  0.00039063 -0.00587214 -0.00498443 -0.00794150 -0.00412548
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00308936 -0.00599587 -0.00064877  0.00304547 -0.00017545  0.00012380 -0.00006142 -0.01481632
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.05158600
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.34574698  0.07840150 -0.04046622  0.17730950  0.01241232 -0.03169083  0.01696994 -0.00039376

 14  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.03142072 -0.04657966 -0.05017678 -0.01939822  0.03155714 -0.21573162  0.09858289 -0.00005162

 15  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.57836071  0.17789968  0.00298943 -0.08374389  0.00978091 -0.04019691  0.01697726  0.00069336

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00102514  0.00010325  0.00979345  0.00174855  0.00004619 -0.00245043  0.00000000 -0.26906305

 17  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00139160 -0.00013882 -0.01330405 -0.00237563 -0.00006153  0.00332899 -0.00000000 -0.19806973

 18  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00741010  0.00766971  0.00058327 -0.00393511  0.00011517 -0.00015232 -0.00000000  0.28384600

 19  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00388085 -0.00397393  0.00133436 -0.00754773 -0.00030372 -0.00022659  0.00000000  0.13940774

 20  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00006063  0.00053086 -0.00061971  0.00037335 -0.01707773 -0.00250589  0.00000000 -0.00084455

 21  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00236944  0.00140567 -0.00118120  0.00650238  0.00022865 -0.00001769  0.00024025  0.01126680

 22  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00254330 -0.00660687 -0.00016478  0.00140508 -0.00018781  0.00006461 -0.00000230  0.01273093

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00011186  0.00012325  0.00182566  0.00029772 -0.00115537  0.00749236 -0.00823211  0.00032527

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.10706463

 25  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.05343781  0.02298325  0.02744233  0.03715957 -0.21008730  0.07820845  0.09981103  0.00001081

 26  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.29199860  0.08834698 -0.00330641  0.17412333  0.04473276 -0.01686220 -0.01783583  0.00022653

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.12122533  0.01370525 -0.19275249 -0.00418259 -0.00774597  0.05106982  0.00380036  0.00077931

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00594351 -0.00615008 -0.00046874  0.00315731 -0.00013220  0.00011680  0.00000000 -0.30023934

 29  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.01357670 -0.01404891 -0.00107255  0.00721150 -0.00030259  0.00026577  0.00000000  0.13141867

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00087654  0.00007579  0.00826398  0.00145221  0.00003750 -0.00206762  0.00000000 -0.28974323

 31  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00013689  0.00012232 -0.00387479 -0.00002667 -0.00631100 -0.01561656 -0.00000000 -0.00001002

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00387783 -0.00397462  0.00130975 -0.00755187 -0.00030382 -0.00022042  0.00000000 -0.13858091

 33  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001933  0.00035585  0.00234317  0.00066622 -0.00698230  0.00224197  0.00793810  0.00390085

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00035476 -0.00000369  0.00604815  0.00105893  0.00195165 -0.00229119 -0.00218130  0.01500620

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00161452 -0.00309920  0.00111054 -0.00588708 -0.00044197 -0.00011116  0.00023228  0.00760984

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.10501229

 37  1     1    1  |0 0>       -0.14716556  0.66443893  0.64875337  0.01519880 -0.03994717  0.23506712  0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.14398467  0.03556078 -0.02290597  0.64135148  0.71032535  0.04194613 -0.00000001 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.02830871 -0.00667762 -0.32039656 -0.04561536 -0.02209523  0.90231631  0.00000001  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.17557112 -0.05283877 -0.00814970  0.71116830 -0.64073066  0.01697746  0.00000002 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.07613779  0.68837754 -0.62874298  0.00634391 -0.04753223 -0.21900337 -0.00000000  0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000004 -0.00000003  0.98433334  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.60068998
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.02228011
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00776529
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.00021809 -0.00064509 -0.00666545 -0.00563163 -0.00468867  0.01080663 -0.00128609  0.00008307
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00029292  0.00085728 -0.00377932 -0.00256527  0.00867291 -0.00138687 -0.01067202  0.00038632
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00006165  0.00009469 -0.00105261 -0.00078844  0.00108069  0.00049287 -0.00180161  0.00006615
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.05149517 -0.00577857 -0.02111307  0.02617499 -0.00144980 -0.00256921  0.02815743  0.76877057
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

  5  1     5    1  |1 1>+       0.46224497  0.05187329  0.18939113 -0.23500406  0.01302585 -0.00028476  0.00314336  0.08565537
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00039539  0.00085487  0.00038180  0.00028336 -0.00060646 -0.00049322 -0.00119424  0.00003266
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.06544075 -0.30936427  0.15729569  0.13572726  0.16165592  0.38653562  0.01928199  0.00060827
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.13113878  0.29320353  0.13160394  0.09456143 -0.20744761  0.01924818 -0.38627390  0.01423457
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00359742  0.01557441  0.25340688  0.21775398  0.24413447 -0.21620467 -0.00424140 -0.00057073
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00093396 -0.00440166 -0.06797330 -0.05864343 -0.06970172  0.05919655  0.00288553  0.00006194
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00694991  0.01622886 -0.20720260 -0.14784713  0.34545464  0.00482898 -0.22400664  0.00821656
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.14903195 -0.01672636  0.25440034 -0.31566392  0.01749130  0.00000000  0.00000003  0.00000009
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00097941  0.00016112 -0.00644894  0.00736202  0.00009388 -0.00006950  0.00110903  0.01069524

 14  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00023139  0.00009723  0.00030823 -0.00192216  0.00131393 -0.00006905  0.00165453 -0.00197951

 15  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00036461 -0.00072564  0.00465636  0.00380270 -0.00772350  0.00053482 -0.01070927  0.00080259

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.06082452 -0.28771298  0.14626945  0.12619930  0.15035026 -0.45830313 -0.02289785 -0.00066847

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.04479093 -0.21178298  0.10767209  0.09290755  0.11066831  0.62259382  0.03104298  0.00093113

 18  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.13115055 -0.29316773 -0.13162009 -0.09457915  0.20742932  0.01926968 -0.38627431  0.01420290

 19  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.40278939 -0.04521535 -0.16502492  0.20477915 -0.01134232  0.00126601 -0.01415716 -0.38675589

 20  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00038656  0.00084379  0.00039274  0.00028295 -0.00059969 -0.00001864  0.00112874  0.00007067

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.01900918 -0.00651725  0.31609986 -0.28093385 -0.07170328  0.00366301 -0.06715617 -0.21379064

 22  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.01253684 -0.01455945  0.13561117  0.23705983 -0.33098802  0.01055542 -0.21362191  0.06728175

 23  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00055828 -0.00018614  0.00918755 -0.00826524 -0.00200029  0.00032549 -0.00187719 -0.00626287

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.02421244 -0.11446567 -0.24247586 -0.20922502 -0.24919757 -0.00000012  0.00000000 -0.00000000

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00018111 -0.00007055  0.00065057 -0.00162843 -0.00032961 -0.00072758  0.00003040  0.00182349

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00101508 -0.00023476  0.00510778 -0.00831367 -0.00054951 -0.00175906  0.00030175  0.01058683

 27  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000739  0.00075103  0.00688550  0.00375056  0.00607772  0.01072535  0.00060206  0.00183979

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.13874691  0.31011793  0.13921776  0.10005214 -0.21942435 -0.01547480  0.30982020 -0.01137985

 29  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.06072014 -0.13578583 -0.06093920 -0.04378224  0.09606954 -0.03527750  0.70772572 -0.02601915

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.06424784 -0.30925550  0.15776764  0.13511798  0.16170652 -0.38652781 -0.01937686 -0.00170800

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000464  0.00001454  0.00000455  0.00000279 -0.00000986  0.00059676  0.00007122  0.00004319

 32  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.40297187  0.04612002  0.16457427 -0.20516712  0.01086742  0.00241470 -0.01407738 -0.38675343

 33  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00156345  0.00447519  0.06003854  0.06831528  0.06922887  0.05940550  0.00272981 -0.00648138

 34  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00338708  0.01604041  0.24732924  0.21325493  0.25411338  0.21591282  0.01077061  0.00039452

 35  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.02162317 -0.00230572  0.27081902 -0.33201361  0.02045398  0.00092904  0.00828307  0.22397034

 36  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.04852473 -0.10848635  0.20286664  0.14577496 -0.31978723 -0.00000001 -0.00000001  0.00000003

 37  1     1    1  |0 0>        0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.01262305  0.01492145 -0.00570807
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00221881 -0.00621201 -0.01387907
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.01227568 -0.00115901 -0.00068347
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00295774 -0.00928449 -0.01306804
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.01320467  0.01221822 -0.01008054
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.02243767  0.00729796  0.44924117  0.17945480 -0.04287660  0.00000024 -0.00000001  0.00000009
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>        0.60060515 -0.01269497 -0.18449640  0.43808655 -0.09950780  0.00000004 -0.00000006 -0.00000018
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.01241459  0.60097391  0.00190786  0.10833557  0.47341327  0.00000026  0.00000003 -0.00000006
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+       0.00080464  0.00017607  0.00046590 -0.00634883 -0.00313990 -0.00293385 -0.00000000  0.00000021
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00195320  0.00040665  0.00112100 -0.00278288 -0.00073543  0.00701888  0.00000000 -0.00000004
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.01214451 -0.00254004 -0.00697506 -0.00087132 -0.00032792  0.00093207  0.00000000  0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00008899 -0.00001105 -0.00000002 -0.01152077  0.02507768 -0.00193353 -0.07848112 -0.00016238
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000017 -0.00000000

  5  1     5    1  |1 1>+      -0.00001371  0.00001688 -0.00000000  0.10330304 -0.22511383  0.01737529  0.77056803  0.00131276
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000171  0.00000000

  6  1     6    1  |1 1>+      -0.15847506  0.75764414 -0.00000032  0.00032105  0.00011263 -0.00053412 -0.00001780  0.00002901
                                0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00023621  0.00022843  0.00000010  0.16299470  0.08367589  0.11501867  0.00071216 -0.46719098
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

  8  1     8    1  |1 1>+       0.00047314 -0.00223416  0.00000000  0.11013617  0.03644721 -0.18259087 -0.00131612 -0.00003743
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000004

  9  1     9    1  |1 1>+      -0.06696197 -0.01416422  0.15282442 -0.33950696 -0.17304756 -0.22349449 -0.00000002  0.00001024
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.24440528 -0.05107832  0.55661185  0.09148776  0.04695408  0.06440537  0.00000000 -0.00000282
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00188074 -0.00040858  0.00430486  0.22339707  0.07216120 -0.39337758 -0.00000003  0.00000029
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000001  0.00000000  0.00000001 -0.09525996  0.20758159 -0.01601887  0.00000508  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00140326 -0.00157100 -0.00118413 -0.00340197  0.00676718 -0.00010205  0.00000021  0.00000000

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00815816 -0.00911944 -0.00687894 -0.00005741 -0.00142947  0.00112128 -0.00000004  0.00000000

 15  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00140513 -0.00157103 -0.00118464  0.00373387  0.00153632 -0.00640898  0.00000001 -0.00000000

 16  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                                0.00026076 -0.00029564 -0.00000012  0.15158620  0.07781030  0.10699123 -0.00111752  0.61141409

 17  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                               -0.00039351  0.00036648  0.00000016  0.11158717  0.05728491  0.07875152 -0.00074579  0.47521279

 18  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000004
                                0.00169798  0.00149438 -0.00000000 -0.11015388 -0.03645894  0.18257812  0.00123955  0.00006587

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000101 -0.00000000
                                0.00003771  0.00004271  0.00000001 -0.08999933  0.19613641 -0.01513245  0.45451346  0.00075461

 20  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.57690146  0.51606596 -0.00000074  0.00033008  0.00011038 -0.00052913 -0.00000932 -0.00000146

 21  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00501353  0.00565034 -0.01683925 -0.24546839  0.37990613  0.07147999  0.00001026  0.00000002

 22  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00004762 -0.00006942  0.00016102 -0.17441868 -0.18444446  0.38135220 -0.00000278  0.00000000

 23  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.17254320 -0.19288121  0.57698072 -0.00711533  0.01113906  0.00197973  0.00000030 -0.00000000

 24  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000005 -0.00000004 -0.00000001  0.17250996  0.08855918  0.12173279  0.00000001 -0.00000513

 25  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00386673  0.01176909 -0.00696464  0.00015370 -0.00136061 -0.00017891 -0.00000004  0.00000001

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00069088 -0.00210540  0.00124455  0.00218930 -0.00723859 -0.00012451 -0.00000021  0.00000003

 27  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00014045  0.00045443 -0.00026518  0.00623802  0.00176221  0.00411443 -0.00000004 -0.00000021

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000006
                               -0.00003649  0.00002262  0.00000000  0.11652772  0.03857767 -0.19315875  0.00203188  0.00012166

 29  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000003
                               -0.00001671  0.00002981 -0.00000001 -0.05100316 -0.01687482  0.08456762 -0.00092424 -0.00002961

 30  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                                0.00024268 -0.00023530 -0.00000010  0.16324858  0.08309727  0.11507847 -0.00046995 -0.42670324

 31  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.73538008 -0.24157940 -0.00000042  0.00000352  0.00000073 -0.00000849  0.00000481  0.00003546

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000098  0.00000000
                                0.00003565  0.00004312  0.00000000  0.08953162 -0.19637572  0.01479321 -0.43985492  0.00044978

 33  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.07792120 -0.23704949 -0.55637372 -0.08582620 -0.05903087 -0.06355276 -0.00000031  0.00000273

 34  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.02126942  0.06527902  0.15288485 -0.33289814 -0.17075270 -0.23488395 -0.00000001  0.00000995

 35  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00230157 -0.00696098 -0.01628048 -0.19309736  0.41384924 -0.03385482  0.00001044  0.00000010

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000000 -0.00000000 -0.11656449 -0.03857888  0.19325029  0.00000002  0.00000000

 37  1     1    1  |0 0>        0.00602662 -0.00686846  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.01105689  0.01181844 -0.00000002  0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.01401191 -0.01221619  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00932601 -0.01205706  0.00000002  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00749599  0.00407599 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000001  0.00000000  0.01667780 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000005  0.00000004  0.00000000  0.59608000  0.07121343 -0.10641350 -0.00000455 -0.00001089
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000000  0.00000001 -0.00000000 -0.09732356  0.58124044 -0.15618792  0.00001491 -0.00000175
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000004  0.00000004  0.00000000  0.08320662  0.16969152  0.57964529  0.00000208 -0.00001130
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+       0.00000004 -0.00000008 -0.00000000  0.00000001 -0.00000000 -0.00188289  0.00008192  0.00024950
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000021  0.00000001 -0.00000000  0.00000008 -0.00000000  0.00026401  0.00085721  0.00165225
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000004 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00001476  0.00016359  0.00026746
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00027495  0.00147182  0.57468919  0.01296509  0.00000478 -0.00557272  0.22830718 -0.11812213
                               -0.00000000 -0.00000000  0.00000543  0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00219839  0.00002095  0.05414010  0.00122750  0.00000816 -0.00062075  0.02543874 -0.01315930
                                0.00000001 -0.00000000  0.00000051  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00134531  0.00001736 -0.00004136  0.00159217  0.57734816 -0.01610417 -0.00071618 -0.00167373
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00004390 -0.56131485  0.00138121  0.00035661  0.00004204  0.12895898  0.00435276  0.00237086
                                0.00000004  0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.45922379  0.00032268 -0.01278163  0.56770451 -0.00162251  0.00418018 -0.05933249 -0.11487882
                               -0.00000023 -0.00000000 -0.00000010 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000032  0.00000752 -0.00000001 -0.00000024  0.00000005  0.65122634  0.01459745 -0.00685606
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00000001 -0.00000207  0.00000001  0.00000000  0.00000018 -0.15412268  0.00092788 -0.00802618
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.00001071  0.00000023 -0.00000019  0.00000815  0.00000001 -0.00238505  0.30815848  0.59552429
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000002 -0.00000000 -0.00000017 -0.00000000 -0.00000000  0.00000001 -0.00000100  0.00000016
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000000 -0.00000009 -0.00000001 -0.00000000  0.00001907 -0.00172392  0.00074923

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000003  0.00000000  0.00000002 -0.00000001 -0.00000000 -0.00014575  0.00014553 -0.00042433

 15  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000021  0.00000000 -0.00000001  0.00000008 -0.00000000 -0.00008394  0.00079533  0.00169911

 16  1     4    1  |1 0>        0.00000005 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00010605 -0.36392448  0.00093310  0.00020246 -0.00000077 -0.15289029 -0.00515111 -0.00282981

 17  1     5    1  |1 0>        0.00000004  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00004007  0.44856663 -0.00107743 -0.00027315 -0.00003134  0.20769776  0.00699386  0.00382221

 18  1     6    1  |1 0>       -0.00000022  0.00000000  0.00000010  0.00000002  0.00000000  0.00000000  0.00000000  0.00000000
                                0.43501720  0.00027721 -0.01327481  0.58644875 -0.00161860  0.00413741 -0.05933812 -0.11488397

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000540 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00127374  0.00134796  0.57148107  0.01291928 -0.00005583  0.00279422 -0.11486613  0.05943296

 20  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00127235 -0.00002566 -0.00001486 -0.00164834 -0.57734800 -0.00119113  0.00195624 -0.00181812

 21  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.00000268  0.00000002  0.00000783  0.00000241 -0.00000001 -0.01809799  0.65547508 -0.13925322

 22  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000989 -0.00000000 -0.00000235  0.00000808  0.00000000 -0.01683028  0.13891576  0.65579606

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000008 -0.00000000  0.00000023  0.00000007  0.00000012 -0.05421066  0.01421348 -0.00518789

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000007 -0.00000000 -0.00000000 -0.00000000  0.00000104  0.00000003 -0.00000002

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000001  0.00021540 -0.00028482  0.00016561

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000001 -0.00000007 -0.00000000  0.00000000  0.00032586 -0.00163241  0.00085293

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000007 -0.00000001 -0.00000000 -0.00000000 -0.00186100 -0.00034631  0.00011263

 28  1     4    1  |1 1>-      -0.00000036  0.00000000  0.00000004  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.70455992  0.00012220 -0.00562786  0.24629083  0.00000813 -0.00332805  0.04759704  0.09213100

 29  1     5    1  |1 1>-       0.00000016  0.00000000  0.00000009  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.32164755  0.00030843 -0.01179260  0.52212490  0.00006248 -0.00757692  0.10871974  0.21045901

 30  1     6    1  |1 1>-      -0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00007819  0.59267889  0.00019597 -0.00029413  0.00000694 -0.12894977 -0.00468833 -0.00221779

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                                0.00002689  0.00001634  0.00005353 -0.00005876  0.57735009  0.01494105  0.00230393 -0.00080139

 32  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000551 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00131439 -0.00021130  0.58283468  0.01318236 -0.00004876  0.00317756 -0.11484922  0.05944641

 33  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000228  0.00000027  0.00000001  0.00000029 -0.20620519  0.01351135 -0.01808230

 34  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00000830  0.00000002  0.00000000 -0.00000008 -0.63666177 -0.02245572 -0.01018492

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                               -0.00000003 -0.00000009 -0.00000883 -0.00000020  0.00000001  0.00868124 -0.59525571  0.30767006

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000523 -0.00000000 -0.00000000  0.00000007  0.00000000 -0.00000002 -0.00000027  0.00000018

 37  1     1    1  |0 0>        0.00000000 -0.00000009  0.00000003 -0.00000009 -0.00000000  0.00952366  0.00177270  0.01087179
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000000 -0.00000001  0.00000008  0.00000004  0.00000000  0.00154190 -0.01053663  0.00086156
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000000  0.00000008  0.00000000  0.00000000 -0.00000000 -0.00771427 -0.00079242 -0.00026116
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000000 -0.00000002  0.00000008  0.00000006 -0.00000000  0.00231379 -0.01122685 -0.00112321
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000000  0.00000008  0.00000006 -0.00000008  0.00000000 -0.00933458 -0.00205981  0.01117174
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00001050  0.00000034  0.00000015 -0.00000011  0.00000000  0.00000023  0.00000019 -0.00000003
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000472  0.00000005 -0.00000050 -0.00000007 -0.00000000  0.00000005 -0.00000030  0.00000004
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00001084  0.00000035 -0.00000007  0.00000012 -0.00000000  0.00000022 -0.00000012  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45

  1  1     1    1  |1 1>+      -0.00014173 -0.00002744  0.00919226  0.00660646  0.00145741
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00024233  0.00025887  0.00257836 -0.00138758 -0.01090780
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00159862 -0.00146631  0.00102837  0.00021827 -0.00165570
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00230704  0.00146523  0.00084567 -0.00125500  0.00035927
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00025286  0.00016784 -0.00758655  0.01126787 -0.00322690
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.17461370  0.19022954 -0.00001305  0.00000027  0.00003313
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00250804  0.00865044 -0.00917706 -0.00718075 -0.00349842
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00107687 -0.00066433 -0.00448299  0.00022001  0.01130795
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.16365950 -0.09505758  0.23957285  0.18455440  0.08119452
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.54727976 -0.51546977 -0.06490636 -0.05075903 -0.02464661
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00755684 -0.00207282 -0.11268875  0.01127153  0.30431514
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000005  0.00000004 -0.47291411  0.70238669 -0.20113654
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00009575  0.00034772  0.00639147 -0.00909449  0.00190081

 14  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00045668  0.00208350 -0.00042524  0.00158999 -0.00214801

 15  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00008825  0.00035968 -0.00391944 -0.00014210  0.01057299

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00298414 -0.01025525 -0.00853350 -0.00667689 -0.00325437

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00403656  0.01393529 -0.00628183 -0.00491540 -0.00239517

 18  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00017389 -0.00027098  0.00448400 -0.00021915 -0.01130755

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00116928 -0.00072863  0.00661054 -0.00981895  0.00281161

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.25257611 -0.05600746 -0.00001367  0.00000022  0.00003290

 21  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00993712 -0.01821534  0.20174667 -0.25414577 -0.00757326

 22  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00447889 -0.00025188  0.06864168  0.06375064 -0.31090776

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.16679014  0.75395220  0.00586887 -0.00743510 -0.00013426

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000065 -0.00000007  0.65647794  0.51366940  0.25026211

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00205769 -0.00064160 -0.00047177  0.00198819 -0.00022568

 26  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00039123  0.00012558 -0.00467280  0.01003806 -0.00204764

 27  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00011208 -0.00015200 -0.00954005 -0.00510638 -0.00368270

 28  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00045027  0.00009517 -0.00474254  0.00023154  0.01196101

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00103615  0.00019663  0.00207564 -0.00010219 -0.00523637

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00250541 -0.00865559 -0.00919572 -0.00715172 -0.00350752

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.07795912 -0.24623885 -0.00000019  0.00000003  0.00000048

 32  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00117643 -0.00070258 -0.00658402  0.00983952 -0.00280111

 33  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.70784435  0.21177793  0.05969962  0.05838527  0.02253167

 34  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.20804289 -0.10467180  0.23623388  0.18473248  0.09005902

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.02677932  0.00243395  0.17819579 -0.26051946  0.07570823

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000002 -0.32068617  0.01572905  0.80892743

 37  1     1    1  |0 0>       -0.00118560 -0.00562416 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.01135198 -0.00143774  0.00000000 -0.00000001 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00138100 -0.01352631  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.01059352  0.00044137  0.00000001 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00081905  0.00531221  0.00000001  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00000016 -0.00000003  0.16203215  0.02842971 -0.06207086
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000005  0.00000002 -0.05659884  0.14533264 -0.08118231
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000017 -0.00000002  0.03817892  0.09479318  0.14308114
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.14%    0.33%   49.42%    0.00%    0.09%    0.37%    0.24%   45.25%
  2  1     2    1  |1 1>+         0.81%    0.10%    0.00%   48.62%    0.76%    0.79%    9.28%    0.35%
  3  1     3    1  |1 1>+        31.35%    0.00%    0.22%    1.25%   25.02%   34.31%    0.37%    0.27%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.01%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.90%   48.14%    0.42%    0.02%    0.16%    1.66%   32.50%    0.14%
 14  1     2    1  |1 0>         30.49%    1.45%    0.01%    1.34%    6.53%   51.27%    2.47%    0.09%
 15  1     3    1  |1 0>          0.90%    0.00%    1.50%   47.07%    0.14%    1.49%   11.01%    0.33%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-        31.26%    1.48%    0.13%    0.00%   57.51%    1.98%    0.88%    0.16%
 26  1     2    1  |1 1>-         1.00%   48.12%    0.29%    0.01%    1.70%    0.07%   34.28%    1.88%
 27  1     3    1  |1 1>-         0.05%    0.32%   47.95%    1.63%    0.06%    0.03%    0.94%   43.50%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 33  1     9    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.18%    1.31%    2.08%    2.24%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.91%    0.25%    1.60%    0.14%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.24%    5.03%    0.00%    2.63%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.64%    0.10%    0.92%    0.24%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.30%    3.37%    2.73%
 42  1     6    1  |0 0>          3.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.10%    0.08%    3.54%    0.24%    0.01%    0.14%    0.00%    0.00%
  2  1     2    1  |1 1>+        35.19%    3.01%    0.17%    0.67%    0.06%    0.11%    0.03%    0.00%
  3  1     3    1  |1 1>+         0.90%    0.06%    0.09%    0.04%    3.18%    1.93%    1.00%    0.00%
  4  1     4    1  |1 1>+         0.01%    0.01%    0.00%    0.02%    0.00%    0.00%    0.00%    0.03%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.56%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.02%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    8.37%
  8  1     8    1  |1 1>+         0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    8.06%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.27%
 13  1     1    1  |1 0>         11.95%    0.61%    0.16%    3.14%    0.02%    0.10%    0.03%    0.00%
 14  1     2    1  |1 0>          0.10%    0.22%    0.25%    0.04%    0.10%    4.65%    0.97%    0.00%
 15  1     3    1  |1 0>         33.45%    3.16%    0.00%    0.70%    0.01%    0.16%    0.03%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    7.24%
 17  1     5    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    3.92%
 18  1     6    1  |1 0>          0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    8.06%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    1.94%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.15%
 25  1     1    1  |1 1>-         0.29%    0.05%    0.08%    0.14%    4.41%    0.61%    1.00%    0.00%
 26  1     2    1  |1 1>-         8.53%    0.78%    0.00%    3.03%    0.20%    0.03%    0.03%    0.00%
 27  1     3    1  |1 1>-         1.47%    0.02%    3.72%    0.00%    0.01%    0.26%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    9.01%
 29  1     5    1  |1 1>-         0.02%    0.02%    0.00%    0.01%    0.00%    0.00%    0.00%    1.73%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    8.40%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    1.92%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.10%
 37  1     1    1  |0 0>          2.17%   44.15%   42.09%    0.02%    0.16%    5.53%    0.00%    0.00%
 38  1     2    1  |0 0>          2.07%    0.13%    0.05%   41.13%   50.46%    0.18%    0.00%    0.00%
 39  1     3    1  |0 0>          0.08%    0.00%   10.27%    0.21%    0.05%   81.42%    0.00%    0.00%
 40  1     4    1  |0 0>          3.08%    0.28%    0.01%   50.58%   41.05%    0.03%    0.00%    0.00%
 41  1     5    1  |0 0>          0.58%   47.39%   39.53%    0.00%    0.23%    4.80%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.89%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   36.08%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.27%    0.00%    0.04%    0.07%    0.00%    0.00%    0.08%   59.10%
  5  1     5    1  |1 1>+        21.37%    0.27%    3.59%    5.52%    0.02%    0.00%    0.00%    0.73%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.43%    9.57%    2.47%    1.84%    2.61%   14.94%    0.04%    0.00%
  8  1     8    1  |1 1>+         1.72%    8.60%    1.73%    0.89%    4.30%    0.04%   14.92%    0.02%
  9  1     9    1  |1 1>+         0.00%    0.02%    6.42%    4.74%    5.96%    4.67%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.46%    0.34%    0.49%    0.35%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.03%    4.29%    2.19%   11.93%    0.00%    5.02%    0.01%
 12  1    12    1  |1 1>+         2.22%    0.03%    6.47%    9.96%    0.03%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
 16  1     4    1  |1 0>          0.37%    8.28%    2.14%    1.59%    2.26%   21.00%    0.05%    0.00%
 17  1     5    1  |1 0>          0.20%    4.49%    1.16%    0.86%    1.22%   38.76%    0.10%    0.00%
 18  1     6    1  |1 0>          1.72%    8.59%    1.73%    0.89%    4.30%    0.04%   14.92%    0.02%
 19  1     7    1  |1 0>         16.22%    0.20%    2.72%    4.19%    0.01%    0.00%    0.02%   14.96%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.04%    0.00%    9.99%    7.89%    0.51%    0.00%    0.45%    4.57%
 22  1    10    1  |1 0>          0.02%    0.02%    1.84%    5.62%   10.96%    0.01%    4.56%    0.45%
 23  1    11    1  |1 0>          0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.06%    1.31%    5.88%    4.38%    6.21%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 28  1     4    1  |1 1>-         1.93%    9.62%    1.94%    1.00%    4.81%    0.02%    9.60%    0.01%
 29  1     5    1  |1 1>-         0.37%    1.84%    0.37%    0.19%    0.92%    0.12%   50.09%    0.07%
 30  1     6    1  |1 1>-         0.41%    9.56%    2.49%    1.83%    2.61%   14.94%    0.04%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-        16.24%    0.21%    2.71%    4.21%    0.01%    0.00%    0.02%   14.96%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.36%    0.47%    0.48%    0.35%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.03%    6.12%    4.55%    6.46%    4.66%    0.01%    0.00%
 35  1    11    1  |1 1>-         0.05%    0.00%    7.33%   11.02%    0.04%    0.00%    0.01%    5.02%
 36  1    12    1  |1 1>-         0.24%    1.18%    4.12%    2.13%   10.23%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.02%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.02%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.01%    0.01%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.05%    0.01%   20.18%    3.22%    0.18%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>         36.07%    0.02%    3.40%   19.19%    0.99%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.02%   36.12%    0.00%    1.17%   22.41%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.06%    0.00%    0.62%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    1.07%    5.07%    0.03%   59.38%    0.00%
  6  1     6    1  |1 1>+         2.51%   57.40%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    2.66%    0.70%    1.32%    0.00%   21.83%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    1.21%    0.13%    3.33%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.45%    0.02%    2.34%   11.53%    2.99%    4.99%    0.00%    0.00%
 10  1    10    1  |1 1>+         5.97%    0.26%   30.98%    0.84%    0.22%    0.41%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    4.99%    0.52%   15.47%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.91%    4.31%    0.03%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    2.30%    0.61%    1.14%    0.00%   37.38%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    1.25%    0.33%    0.62%    0.00%   22.58%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    1.21%    0.13%    3.33%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.81%    3.85%    0.02%   20.66%    0.00%
 20  1     8    1  |1 0>         33.28%   26.63%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.03%    6.03%   14.43%    0.51%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    3.04%    3.40%   14.54%    0.00%    0.00%
 23  1    11    1  |1 0>          2.98%    3.72%   33.29%    0.01%    0.01%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    2.98%    0.78%    1.48%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    1.36%    0.15%    3.73%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.26%    0.03%    0.72%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    2.67%    0.69%    1.32%    0.00%   18.21%
 31  1     7    1  |1 1>-        54.08%    5.84%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.80%    3.86%    0.02%   19.35%    0.00%
 33  1     9    1  |1 1>-         0.61%    5.62%   30.96%    0.74%    0.35%    0.40%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.05%    0.43%    2.34%   11.08%    2.92%    5.52%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.03%    3.73%   17.13%    0.11%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    1.36%    0.15%    3.73%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.02%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   35.53%    0.51%    1.13%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.95%   33.78%    2.44%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.69%    2.88%   33.60%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%   33.03%    0.02%    0.00%    0.00%    5.21%    1.40%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.29%    0.00%    0.00%    0.00%    0.06%    0.02%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.33%    0.03%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%   31.51%    0.00%    0.00%    0.00%    1.66%    0.00%    0.00%
  8  1     8    1  |1 1>+        21.09%    0.00%    0.02%   32.23%    0.00%    0.00%    0.35%    1.32%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   42.41%    0.02%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    2.38%    0.00%    0.01%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    9.50%   35.46%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%   13.24%    0.00%    0.00%    0.00%    2.34%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%   20.12%    0.00%    0.00%    0.00%    4.31%    0.00%    0.00%
 18  1     6    1  |1 0>         18.92%    0.00%    0.02%   34.39%    0.00%    0.00%    0.35%    1.32%
 19  1     7    1  |1 0>          0.00%    0.00%   32.66%    0.02%    0.00%    0.00%    1.32%    0.35%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%   42.96%    1.94%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    1.93%   43.01%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.29%    0.02%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-        49.64%    0.00%    0.00%    6.07%    0.00%    0.00%    0.23%    0.85%
 29  1     5    1  |1 1>-        10.35%    0.00%    0.01%   27.26%    0.00%    0.01%    1.18%    4.43%
 30  1     6    1  |1 1>-         0.00%   35.13%    0.00%    0.00%    0.00%    1.66%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.33%    0.02%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%   33.97%    0.02%    0.00%    0.00%    1.32%    0.35%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    4.25%    0.02%    0.03%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   40.53%    0.05%    0.01%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   35.43%    9.47%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45

  1  1     1    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.01%    0.01%    0.00%
  6  1     6    1  |1 1>+         3.05%    3.62%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.01%    0.01%    0.01%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%
  9  1     9    1  |1 1>+         2.68%    0.90%    5.74%    3.41%    0.66%
 10  1    10    1  |1 1>+        29.95%   26.57%    0.42%    0.26%    0.06%
 11  1    11    1  |1 1>+         0.01%    0.00%    1.27%    0.01%    9.26%
 12  1    12    1  |1 1>+         0.00%    0.00%   22.36%   49.33%    4.05%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%
 16  1     4    1  |1 0>          0.00%    0.01%    0.01%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%
 20  1     8    1  |1 0>          6.38%    0.31%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.01%    0.03%    4.07%    6.46%    0.01%
 22  1    10    1  |1 0>          0.00%    0.00%    0.47%    0.41%    9.67%
 23  1    11    1  |1 0>          2.78%   56.84%    0.00%    0.01%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%   43.10%   26.39%    6.26%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.01%    0.01%    0.01%    0.00%
 31  1     7    1  |1 1>-         0.61%    6.06%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%
 33  1     9    1  |1 1>-        50.10%    4.48%    0.36%    0.34%    0.05%
 34  1    10    1  |1 1>-         4.33%    1.10%    5.58%    3.41%    0.81%
 35  1    11    1  |1 1>-         0.07%    0.00%    3.18%    6.79%    0.57%
 36  1    12    1  |1 1>-         0.00%    0.00%   10.28%    0.02%   65.44%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.02%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    2.63%    0.08%    0.39%
 44  1     8    1  |0 0>          0.00%    0.00%    0.32%    2.11%    0.66%
 45  1     9    1  |0 0>          0.00%    0.00%    0.15%    0.90%    2.05%


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

              2       7     1081.55       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     79075.62  74191.62   1219.77   3661.67      1.70      0.05      0.59
 REAL TIME  *     79912.99 SEC
 DISK USED  *         1.09 GB (local),       13.16 GB (total)
 SF USED    *         7.50 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -213.868087771785

              CI              CI           MULTI         RHF-SCF
   -213.83061143   -213.81841240   -213.17134317   -213.37363633
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
