
 Working directory              : /wrk/irikura/molpro.gTGlDK0Hol/
 Global scratch directory       : /wrk/irikura/molpro.gTGlDK0Hol/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.gTGlDK0Hol/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Sn SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sn};
 
 basis=aug-cc-pwCVTZ-PP
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,nelec=23,sym=2,spin=3}
 
 NTRIP=12
 NSING=6
 
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 18-Apr-24          TIME: 12:27:59  
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

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     60 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.82      0.61
 REAL TIME  *         1.63 SEC
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
    2.1     2.00000    -1.07683     1  1  d2-  0.93458    1  1  d2+ -0.35403
    3.1     2.00000    -1.07683     1  1  d2-  0.35458    1  1  d2+  0.93443
    4.1     2.00000    -1.07683     1  1  d1-  0.98744
    5.1     2.00000    -1.07683     1  1  d1+  0.98792
    6.1     2.00000    -1.07683     1  1  d0   0.99973
    7.1     2.00000    -0.29333     1  2  s    0.97876
    1.2     2.00000    -3.81329     1  1  px   0.99845
    2.2     2.00000    -3.81329     1  1  py   0.96914
    3.2     2.00000    -3.81329     1  1  pz   0.97107
    4.2     1.00000    -0.05728     1  2  pz   0.77547
    5.2     1.00000    -0.05728     1  2  px   0.79508
    6.2     1.00000    -0.05728     1  2  py   0.77526


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
 CPU TIMES  *         0.87      0.05      0.61
 REAL TIME  *         2.12 SEC
 DISK USED  *        30.07 MB (local),      417.26 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =         6.00000000                                  

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
 Number of states:             6
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.290D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.167D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.146D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.379D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 2 3   5 4 6 1 2 5 3 6 4 1   2 4 6 3 5 2 3 5 6 4   1 8121415131011 9 7
                                        2 6 4 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.711D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.238D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.199D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.185D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.274D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.201D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.361D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.361D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 3   2 1 7 9 4 5 6 810 6   5 4 810 7 9 3 2 1 8  10 6 7 9 5 4 3 2 1 6
                                        810 7 9 4 5 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556   0.05556   0.05556   0.05556
 Weight factors for state symmetry  2:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
 
 Number of orbital rotations:  664  ( 24 closed/active, 360 closed/virtual, 0 active/active, 280 active/virtual )
 Total number of variables:    3850
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0   -213.21212584    -213.24058291   -0.02845708    0.14579388 0.00001393 0.00000000  0.55E+00      0.59
   2    7   12    0   -213.23970733    -213.23975293   -0.00004560    0.00786707 0.00000199 0.00000000  0.22E-01      1.10
   3    5   10    0   -213.23975300    -213.23975300   -0.00000000    0.00001966 0.00000001 0.00000000  0.62E-04      1.51
   4    6   12    0   -213.23975300    -213.23975300    0.00000000    0.00000002 0.00000000 0.00000000  0.85E-08      1.86

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.19E-07)
                       Final energy:   -213.23975300
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -213.343715193858
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.76204122
 One electron energy                          -376.53920659
 Two electron energy                           163.19549140
 Virial ratio                                    3.57779668
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -213.343715193784
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.76204122
 One electron energy                          -376.53920660
 Two electron energy                           163.19549141
 Virial ratio                                    3.57779668
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -213.343715193723
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.76204122
 One electron energy                          -376.53920660
 Two electron energy                           163.19549141
 Virial ratio                                    3.57779668
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -213.165386914953
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32945286
 One electron energy                          -372.10389168
 Two electron energy                           158.93850477
 Virial ratio                                    3.58917531
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -213.165386914947
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32945286
 One electron energy                          -372.10389168
 Two electron energy                           158.93850477
 Virial ratio                                    3.58917531
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -213.165386914924
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32945286
 One electron energy                          -372.10389168
 Two electron energy                           158.93850477
 Virial ratio                                    3.58917531
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -213.165386914895
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32945286
 One electron energy                          -372.10389168
 Two electron energy                           158.93850477
 Virial ratio                                    3.58917531
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -213.165386914892
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32945286
 One electron energy                          -372.10389168
 Two electron energy                           158.93850477
 Virial ratio                                    3.58917531
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -213.158270162716
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.42843830
 One electron energy                          -372.60791983
 Two electron energy                           159.44964966
 Virial ratio                                    3.58597972
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -213.158270162704
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.42843830
 One electron energy                          -372.60791982
 Two electron energy                           159.44964966
 Virial ratio                                    3.58597972
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -213.158270162680
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.42843830
 One electron energy                          -372.60791982
 Two electron energy                           159.44964966
 Virial ratio                                    3.58597972
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -213.157589363504
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32933046
 One electron energy                          -372.10169846
 Two electron energy                           158.94410910
 Virial ratio                                    3.58908445
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -213.309049737514
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.71248753
 One electron energy                          -376.25329385
 Two electron energy                           162.94424412
 Virial ratio                                    3.57892195
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -213.309049737505
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.71248753
 One electron energy                          -376.25329385
 Two electron energy                           162.94424412
 Virial ratio                                    3.57892195
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -213.309049737419
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.71248753
 One electron energy                          -376.25329386
 Two electron energy                           162.94424412
 Virial ratio                                    3.57892195
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -213.309049737349
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.71248753
 One electron energy                          -376.25329386
 Two electron energy                           162.94424412
 Virial ratio                                    3.57892195
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -213.309049737334
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.71248754
 One electron energy                          -376.25329386
 Two electron energy                           162.94424412
 Virial ratio                                    3.57892195
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -213.279825388465
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.66041351
 One electron energy                          -375.87485088
 Two electron energy                           162.59502550
 Virial ratio                                    3.58019306
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000043
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999944
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.207101356574
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.999999994976
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.999999521367
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.792892234926
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.999999998549
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.000000003264
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.787476854238
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999998017
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000001080
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.212514281796
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.664001135360
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     4.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000018646
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999998540153
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.335991503454
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>    -0.000000000000
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.329283534952
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.999999999139
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000022
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.670705602997
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999957
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000000056
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     2.128897508066
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999986378
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000001938480
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.871116261620
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.000000001451
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.999999996736
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.883239610810
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000002844
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999998898
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.116780115207
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 4   6 3 5 1 2 4 6 3 5 1   2 4 6 3 5 2 4 6 3 5   1 7 911 81215141310
                                        2 4 6 5 3 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 2 1 3 3   1 2 6 4 5 810 9 7 6   4 5 810 9 7 3 1 2 6   4 5 810 9 7 3 1 2 6
                                        4 5 810 7 9 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94133     1  1  s    1.00411
    2.1     2.00000    -1.39082     1  1  d0   1.00076
    3.1     2.00000    -1.39082     1  1  d1+  1.00076
    4.1     2.00000    -1.39082     1  1  d1-  1.00076
    5.1     2.00000    -1.39082     1  1  d2-  1.00076
    6.1     2.00000    -1.39082     1  1  d2+  1.00076
    7.1     1.95507    -0.56576     1  2  s    1.05745
    1.2     2.00000    -4.12708     1  1  pz   0.99966
    2.2     2.00000    -4.12708     1  1  px   0.99966
    3.2     2.00000    -4.12708     1  1  py   0.99966
    4.2     0.51184    -0.10373     1  2  py   1.05390
    5.2     0.51184    -0.10373     1  2  px   1.05390
    6.2     0.51184    -0.10372     1  2  pz   1.05390
    7.2     0.16980     0.04909     1  2  py  -0.46394    1  7  py   1.23081
    8.2     0.16980     0.04909     1  2  px  -0.46394    1  7  px   1.23081
    9.2     0.16980     0.04909     1  2  pz  -0.46394    1  7  pz   1.23081
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aa0000      -0.00000651      0.99161833     -0.00000012      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 a0a000       0.99161832      0.00000651      0.00000041     -0.00000000     -0.00000000      0.00000000     -0.00000007
 2 0aa000      -0.00000041      0.00000012      0.99161832      0.00000000     -0.00000007     -0.00000000     -0.00000000
 2 0a00a0       0.00000000     -0.00000000     -0.00000000      0.78494014      0.00002438      0.00006622     -0.00029442
 2 a00a00       0.00000000      0.00000000      0.00000000     -0.23362526     -0.00000726     -0.00001808      0.00113571
 2 00a0a0       0.00000000     -0.00000000     -0.01020434     -0.00002169      0.69809021     -0.00000000      0.00000000
 2 0a000a      -0.00000000      0.00000000      0.01020443     -0.00002169      0.69809020     -0.00000000      0.00000000
 2 a000a0      -0.00000007      0.01020434     -0.00000000     -0.00005926     -0.00000000      0.69809020      0.00000286
 2 0a0a00       0.00000007     -0.01020433      0.00000000     -0.00005926     -0.00000000      0.69809020      0.00000286
 2 00aa00      -0.01020433     -0.00000007     -0.00000000      0.00002336      0.00000000     -0.00000286      0.69808946
 2 a0000a       0.01020443      0.00000007      0.00000000      0.00002336      0.00000000     -0.00000286      0.69808946
 2 00a00a       0.00000000      0.00000000     -0.00000000     -0.55131487     -0.00001713     -0.00004814     -0.00084129
 2 000aa0       0.00000013     -0.01951280      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2 000a0a      -0.01951280     -0.00000013     -0.00000001     -0.00000000     -0.00000000      0.00000000     -0.00000007
 2 0000aa       0.00000001     -0.00000000     -0.01951280      0.00000000     -0.00000007     -0.00000000      0.00000000
 0 aa2000       0.00000076     -0.11573752      0.00000001     -0.00000000      0.00000000      0.00000000      0.00000000
 0 a2a000      -0.11573752     -0.00000076     -0.00000005      0.00000000      0.00000000     -0.00000000      0.00000001
 0 2aa000       0.00000005     -0.00000001     -0.11573751     -0.00000000      0.00000001     -0.00000000     -0.00000000
 0 2a00a0      -0.00000000      0.00000000     -0.00000000     -0.08497730     -0.00000264     -0.00000717      0.00003075
 0 0a20a0      -0.00000000      0.00000000      0.00000000     -0.08463676     -0.00000263     -0.00000714      0.00003287
 0 a20a00      -0.00000000     -0.00000000     -0.00000000      0.02452531      0.00000076      0.00000189     -0.00012300
 0 a02a00       0.00000000     -0.00000000      0.00000000      0.02595768      0.00000081      0.00000201     -0.00012241
 0 0a2a00       0.00000001     -0.00087268      0.00000000      0.00000643      0.00000000     -0.07579768     -0.00000031
 0 a020a0      -0.00000001      0.00087268     -0.00000000      0.00000643      0.00000000     -0.07579768     -0.00000031
 0 02aa00      -0.00087268     -0.00000001     -0.00000000     -0.00000254     -0.00000000      0.00000031     -0.07579760
 0 20a0a0       0.00000000     -0.00000000     -0.00087268      0.00000235     -0.07579768      0.00000000     -0.00000000
 0 a2000a       0.00087267      0.00000001      0.00000000     -0.00000254     -0.00000000      0.00000031     -0.07579760
 0 2a000a      -0.00000000      0.00000000      0.00087267      0.00000235     -0.07579768      0.00000000     -0.00000000
 0 02a0a0      -0.00000001      0.00000000      0.02476547      0.00000233     -0.07504938      0.00000000     -0.00000000
 0 0a200a       0.00000001     -0.00000000     -0.02476547      0.00000233     -0.07504938      0.00000000     -0.00000000
 0 a200a0       0.00000016     -0.02476547      0.00000000      0.00000637      0.00000000     -0.07504938     -0.00000031
 0 2a0a00      -0.00000016      0.02476547     -0.00000000      0.00000637      0.00000000     -0.07504938     -0.00000031
 0 a0200a      -0.02476547     -0.00000016     -0.00000001     -0.00000251     -0.00000000      0.00000031     -0.07504930
 0 20aa00       0.02476547      0.00000016      0.00000001     -0.00000251     -0.00000000      0.00000031     -0.07504930
 0 02a00a      -0.00000000     -0.00000000      0.00000000      0.05901962      0.00000183      0.00000516      0.00009166
 0 20a00a       0.00000000     -0.00000000     -0.00000000      0.06011144      0.00000187      0.00000525      0.00009013
 
 Energy:     -213.34371519   -213.34371519   -213.34371519   -213.16538691   -213.16538691   -213.16538691   -213.16538691

 State:              8               9              10              11              12
 2 aa0000       0.00000000      0.00000000     -0.01956859      0.00000075      0.00000000
 2 a0a000       0.00000000     -0.00000000     -0.00000075     -0.01956866      0.00000000
 2 0aa000      -0.00000000     -0.01956866     -0.00000000      0.00000000     -0.00000000
 2 0a00a0      -0.18341795     -0.00000000      0.00000000      0.00000000      0.56979684
 2 a00a00       0.77148635     -0.00000000      0.00000000      0.00000000      0.56979684
 2 00a0a0       0.00000000     -0.69239606     -0.00000000      0.00000000     -0.00000000
 2 0a000a      -0.00000000      0.69239604      0.00000000     -0.00000000      0.00000000
 2 a000a0      -0.00000159     -0.00000000      0.69239604     -0.00002638     -0.00000000
 2 0a0a00      -0.00000159      0.00000000     -0.69239605      0.00002638      0.00000000
 2 00aa00      -0.00102059     -0.00000000     -0.00002638     -0.69239606      0.00000000
 2 a0000a      -0.00102059      0.00000000      0.00002638      0.69239604     -0.00000000
 2 00a00a      -0.58806841     -0.00000000      0.00000000      0.00000000      0.56979684
 2 000aa0       0.00000000      0.00000000     -0.12851021      0.00000490      0.00000000
 2 000a0a       0.00000000     -0.00000000     -0.00000490     -0.12851014      0.00000000
 2 0000aa      -0.00000000     -0.12851014     -0.00000000      0.00000000     -0.00000000
 0 aa2000      -0.00000000     -0.00000000      0.00760619     -0.00000029     -0.00000000
 0 a2a000      -0.00000000      0.00000000      0.00000029      0.00760620     -0.00000000
 0 2aa000       0.00000000      0.00760620      0.00000000     -0.00000000     -0.00000000
 0 2a00a0       0.01908829      0.00000000     -0.00000000     -0.00000000     -0.06240798
 0 0a20a0       0.02054564      0.00000000     -0.00000000     -0.00000000     -0.06240798
 0 a20a00      -0.08357032      0.00000000     -0.00000000     -0.00000000     -0.06240798
 0 a02a00      -0.08313657      0.00000000     -0.00000000     -0.00000000     -0.06240798
 0 0a2a00       0.00000017     -0.00000000      0.07579831     -0.00000289     -0.00000000
 0 a020a0       0.00000017      0.00000000     -0.07579831      0.00000289      0.00000000
 0 02aa00       0.00011081      0.00000000      0.00000289      0.07579830     -0.00000000
 0 20a0a0      -0.00000000      0.07579830      0.00000000     -0.00000000      0.00000000
 0 a2000a       0.00011081     -0.00000000     -0.00000289     -0.07579830      0.00000000
 0 2a000a       0.00000000     -0.07579830     -0.00000000      0.00000000     -0.00000000
 0 02a0a0      -0.00000000      0.07267603      0.00000000     -0.00000000      0.00000000
 0 0a200a       0.00000000     -0.07267603     -0.00000000      0.00000000     -0.00000000
 0 a200a0       0.00000017      0.00000000     -0.07267603      0.00000277      0.00000000
 0 2a0a00       0.00000017     -0.00000000      0.07267603     -0.00000277     -0.00000000
 0 a0200a       0.00010972     -0.00000000     -0.00000277     -0.07267603      0.00000000
 0 20aa00       0.00010972      0.00000000      0.00000277      0.07267603     -0.00000000
 0 02a00a       0.06404828      0.00000000     -0.00000000     -0.00000000     -0.06240798
 0 20a00a       0.06302469      0.00000000     -0.00000000     -0.00000000     -0.06240798
 
 Energy:     -213.16538691   -213.15827016   -213.15827016   -213.15827016   -213.15758936
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020000      -0.18592352     -0.00000346      0.00000174     -0.00000012      0.78488534      0.55676232
 2 200000       0.77269241      0.00001506     -0.00000037      0.00000050     -0.23142818      0.55676231
 2 ab0000      -0.00000014      0.00001672      0.69854092     -0.00000023     -0.00000158     -0.00000000
 2 ba0000       0.00000014     -0.00001672     -0.69854092      0.00000023      0.00000158      0.00000000
 2 0ab000      -0.00000045     -0.00000000      0.00000023      0.69854092     -0.00000000     -0.00000000
 2 0ba000       0.00000045      0.00000000     -0.00000023     -0.69854092      0.00000000      0.00000000
 2 b0a000       0.00001366     -0.69854092      0.00001672     -0.00000000      0.00000015     -0.00000000
 2 a0b000      -0.00001366      0.69854092     -0.00001672      0.00000000     -0.00000015      0.00000000
 2 002000      -0.58676888     -0.00001160     -0.00000137     -0.00000038     -0.55345716      0.55676230
 0 022000       0.08994561      0.00000175     -0.00000004      0.00000006     -0.02693951     -0.12473132
 0 202000      -0.02164252     -0.00000040      0.00000020     -0.00000001      0.09136494     -0.12473132
 0 220000      -0.06830310     -0.00000135     -0.00000016     -0.00000004     -0.06442543     -0.12473131
 0 ab2000       0.00000002     -0.00000195     -0.08131398      0.00000003      0.00000018      0.00000000
 0 ba2000      -0.00000002      0.00000195      0.08131398     -0.00000003     -0.00000018     -0.00000000
 0 b2a000      -0.00000159      0.08131397     -0.00000195      0.00000000     -0.00000002      0.00000000
 0 a2b000       0.00000159     -0.08131397      0.00000195     -0.00000000      0.00000002     -0.00000000
 0 2ab000       0.00000005      0.00000000     -0.00000003     -0.08131397      0.00000000     -0.00000000
 0 2ba000      -0.00000005     -0.00000000      0.00000003      0.08131397     -0.00000000      0.00000000
 2 00b00a       0.03353072      0.00000066      0.00000008      0.00000002      0.03162713     -0.05764174
 2 00a00b      -0.03353072     -0.00000066     -0.00000008     -0.00000002     -0.03162713      0.05764174
 2 0a00b0      -0.01062452     -0.00000020      0.00000010     -0.00000001      0.04485194      0.05764168
 2 0b00a0       0.01062452      0.00000020     -0.00000010      0.00000001     -0.04485194     -0.05764168
 2 b00a00      -0.04415518     -0.00000086      0.00000002     -0.00000003      0.01322486     -0.05764168
 2 a00b00       0.04415518      0.00000086     -0.00000002      0.00000003     -0.01322486      0.05764168
 
 Energy:     -213.30904974   -213.30904974   -213.30904974   -213.30904974   -213.30904974   -213.27982539
 


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
 CPU TIMES  *         2.78      1.91      0.05      0.61
 REAL TIME  *         4.32 SEC
 DISK USED  *        37.16 MB (local),      502.25 MB (total)
 SF USED    *        19.62 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3437152   2.0
    -213.3437152   2.0
    -213.3437152   2.0
    -213.1653869   6.0
    -213.1653869   6.0
    -213.1653869   6.0
    -213.1653869   6.0
    -213.1653869   6.0
    -213.1582702   2.0
    -213.1582702   2.0
    -213.1582702   2.0
    -213.1575894  -0.0
    -213.3090497   6.0
    -213.3090497   6.0
    -213.3090497   6.0
    -213.3090497   6.0
    -213.3090497   6.0
    -213.2798254  -0.0
                                                  


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
     1      -213.34371519
     2      -213.34371519
     3      -213.34371519
     4      -213.16538691
     5      -213.16538691
     6      -213.16538691
     7      -213.16538691
     8      -213.16538691
     9      -213.15827016
    10      -213.15827016
    11      -213.15827016
    12      -213.15758936

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3215D-06

 Number of blocks in overlap matrix:  1163   Smallest eigenvalue:  0.32D-06
 Number of N-2 electron functions:    2547
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       3541800
 Number of doubly external configurations:       4078680
 Total number of contracted configurations:      7658886
 Total number of uncontracted configurations:   77703006

 Diagonal Coupling coefficients finished.               Storage:  25506839 words, CPU-Time:     79.93 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1346125 words, CPU-time:      0.17 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34371519     0.00000000    -0.83314927  0.50D-01  0.10D+00    93.48
    1     2     2     1.00000000     0.00000000  -213.34371519    -0.00000000    -0.83333337  0.51D-01  0.10D+00    93.48
    1     3     3     1.00000000     0.00000000  -213.34371519     0.00000000    -0.83299848  0.50D-01  0.10D+00    93.48
    1     4     4     1.00000000     0.00000000  -213.16538691    -0.00000000    -0.79996785  0.40D-01  0.94D-01    93.48
    1     5     5     1.00000000     0.00000000  -213.16538691    -0.00000000    -0.79961303  0.40D-01  0.94D-01    93.48
    1     6     6     1.00000000     0.00000000  -213.16538691    -0.00000000    -0.79966703  0.40D-01  0.94D-01    93.48
    1     7     7     1.00000000     0.00000000  -213.16538691     0.00000000    -0.79963365  0.40D-01  0.94D-01    93.48
    1     8     8     1.00000000     0.00000000  -213.16538691    -0.00000000    -0.79997901  0.40D-01  0.94D-01    93.48
    1     9     9     1.00000000     0.00000000  -213.15827016    -0.00000000    -0.80624668  0.44D-01  0.95D-01    93.48
    1    10    10     1.00000000     0.00000000  -213.15827016     0.00000000    -0.80631776  0.45D-01  0.95D-01    93.48
    1    11    11     1.00000000     0.00000000  -213.15827016    -0.00000000    -0.80626886  0.44D-01  0.95D-01    93.48
    1    12    12     1.00000000     0.00000000  -213.15758936     0.00000000    -0.80105136  0.41D-01  0.95D-01    93.48
    2     1     1     1.09444082    -0.65507102  -213.99878621    -0.65507102    -0.01890099  0.37D-02  0.14D-02   459.70
    2     2     2     1.09458200    -0.65497652  -213.99869172    -0.65497652    -0.01900194  0.37D-02  0.14D-02   459.70
    2     3     3     1.09476816    -0.65484628  -213.99856148    -0.65484628    -0.01914001  0.38D-02  0.14D-02   459.70
    2     4     4     1.08618026    -0.64472871  -213.81011562    -0.64472871    -0.01531800  0.25D-02  0.11D-02   459.70
    2     5     5     1.08605720    -0.64471123  -213.81009815    -0.64471123    -0.01534405  0.25D-02  0.11D-02   459.70
    2     6     6     1.08608308    -0.64469434  -213.81008125    -0.64469434    -0.01536225  0.25D-02  0.11D-02   459.70
    2     7     7     1.08612168    -0.64466924  -213.81005615    -0.64466924    -0.01538875  0.25D-02  0.11D-02   459.70
    2     8     8     1.08627482    -0.64466383  -213.81005074    -0.64466383    -0.01538751  0.25D-02  0.11D-02   459.70
    2     9     9     1.08855336    -0.64554320  -213.80381336    -0.64554320    -0.01655963  0.33D-02  0.11D-02   459.70
    2    10    10     1.08858085    -0.64552496  -213.80379512    -0.64552496    -0.01658052  0.33D-02  0.11D-02   459.70
    2    11    11     1.08862323    -0.64549342  -213.80376358    -0.64549342    -0.01661472  0.33D-02  0.11D-02   459.70
    2    12    12     1.08712466    -0.64476019  -213.80234956    -0.64476019    -0.01577628  0.29D-02  0.11D-02   459.70
    3     1     1     1.08348388    -0.67305028  -214.01676547    -0.01797926    -0.00047790  0.70D-04  0.52D-04   825.71
    3     2     2     1.08348367    -0.67304615  -214.01676134    -0.01806962    -0.00048184  0.71D-04  0.52D-04   825.71
    3     3     3     1.08347908    -0.67304160  -214.01675679    -0.01819531    -0.00048612  0.71D-04  0.53D-04   825.71
    3     4     4     1.07961230    -0.65943133  -213.82481825    -0.01470263    -0.00032312  0.35D-04  0.33D-04   825.71
    3     5     5     1.07961241    -0.65943055  -213.82481747    -0.01471932    -0.00032388  0.35D-04  0.33D-04   825.71
    3     6     6     1.07960944    -0.65942971  -213.82481663    -0.01473537    -0.00032472  0.35D-04  0.33D-04   825.71
    3     7     7     1.07964265    -0.65942840  -213.82481532    -0.01475916    -0.00032616  0.35D-04  0.34D-04   825.71
    3     8     8     1.07963738    -0.65942612  -213.82481304    -0.01476229    -0.00032839  0.36D-04  0.35D-04   825.71
    3     9     9     1.08015747    -0.66138386  -213.81965402    -0.01584066    -0.00037588  0.51D-04  0.38D-04   825.71
    3    10    10     1.08015753    -0.66138299  -213.81965316    -0.01585804    -0.00037674  0.52D-04  0.39D-04   825.71
    3    11    11     1.08015384    -0.66138227  -213.81965243    -0.01588885    -0.00037750  0.52D-04  0.39D-04   825.71
    3    12    12     1.07989014    -0.65992131  -213.81751067    -0.01516112    -0.00033933  0.37D-04  0.37D-04   825.71
    4     1     1     1.08329933    -0.67354262  -214.01725781    -0.00049234    -0.00002046  0.33D-05  0.25D-05  1195.30
    4     2     2     1.08329795    -0.67354248  -214.01725768    -0.00049634    -0.00002057  0.33D-05  0.25D-05  1195.30
    4     3     3     1.08329647    -0.67354242  -214.01725761    -0.00050082    -0.00002063  0.33D-05  0.25D-05  1195.30
    4     4     4     1.08007296    -0.65976463  -213.82515154    -0.00033329    -0.00001296  0.26D-05  0.13D-05  1195.30
    4     5     5     1.08007303    -0.65976460  -213.82515151    -0.00033404    -0.00001299  0.26D-05  0.14D-05  1195.30
    4     6     6     1.08007193    -0.65976459  -213.82515151    -0.00033488    -0.00001299  0.26D-05  0.14D-05  1195.30
    4     7     7     1.08006872    -0.65976447  -213.82515138    -0.00033607    -0.00001325  0.27D-05  0.14D-05  1195.30
    4     8     8     1.08006781    -0.65976442  -213.82515134    -0.00033830    -0.00001329  0.27D-05  0.14D-05  1195.30
    4     9     9     1.08045373    -0.66177118  -213.82004134    -0.00038732    -0.00001598  0.34D-05  0.17D-05  1195.30
    4    10    10     1.08045312    -0.66177116  -213.82004132    -0.00038817    -0.00001600  0.34D-05  0.17D-05  1195.30
    4    11    11     1.08045376    -0.66177114  -213.82004131    -0.00038888    -0.00001602  0.34D-05  0.17D-05  1195.30
    4    12    12     1.08037006    -0.66027114  -213.81786050    -0.00034983    -0.00001380  0.25D-05  0.16D-05  1195.30
    5     1     1     1.08336660    -0.67356501  -214.01728021    -0.00002240    -0.00000082  0.78D-07  0.11D-06  1561.81
    5     2     2     1.08336599    -0.67356501  -214.01728020    -0.00002252    -0.00000083  0.78D-07  0.12D-06  1561.81
    5     3     3     1.08336630    -0.67356501  -214.01728020    -0.00002259    -0.00000083  0.78D-07  0.12D-06  1561.81
    5     4     4     1.08019540    -0.65977932  -213.82516624    -0.00001470    -0.00000052  0.52D-07  0.91D-07  1561.81
    5     5     5     1.08019563    -0.65977932  -213.82516624    -0.00001472    -0.00000052  0.52D-07  0.91D-07  1561.81
    5     6     6     1.08019603    -0.65977919  -213.82516610    -0.00001460    -0.00000051  0.52D-07  0.89D-07  1561.81
    5     7     7     1.08019620    -0.65977919  -213.82516610    -0.00001472    -0.00000051  0.52D-07  0.89D-07  1561.81
    5     8     8     1.08019615    -0.65977918  -213.82516610    -0.00001476    -0.00000051  0.52D-07  0.90D-07  1561.81
    5     9     9     1.08053943    -0.66178866  -213.82005882    -0.00001748    -0.00000071  0.96D-07  0.11D-06  1561.81
    5    10    10     1.08053944    -0.66178866  -213.82005882    -0.00001750    -0.00000071  0.96D-07  0.11D-06  1561.81
    5    11    11     1.08053945    -0.66178866  -213.82005882    -0.00001752    -0.00000071  0.96D-07  0.11D-06  1561.81
    5    12    12     1.08053030    -0.66028664  -213.81787600    -0.00001550    -0.00000057  0.49D-07  0.11D-06  1561.81
    6     1     1     1.08335623    -0.67356590  -214.01728110    -0.00000089    -0.00000004  0.46D-08  0.63D-08  1928.63
    6     2     2     1.08335611    -0.67356590  -214.01728110    -0.00000090    -0.00000004  0.46D-08  0.63D-08  1928.63
    6     3     3     1.08335604    -0.67356590  -214.01728110    -0.00000090    -0.00000004  0.46D-08  0.63D-08  1928.63
    6     4     4     1.08020232    -0.65977992  -213.82516684    -0.00000060    -0.00000003  0.32D-08  0.73D-08  1928.63
    6     5     5     1.08020229    -0.65977992  -213.82516684    -0.00000060    -0.00000003  0.32D-08  0.74D-08  1928.63
    6     6     6     1.08020264    -0.65977978  -213.82516669    -0.00000059    -0.00000003  0.33D-08  0.71D-08  1928.63
    6     7     7     1.08020261    -0.65977978  -213.82516669    -0.00000059    -0.00000003  0.33D-08  0.71D-08  1928.63
    6     8     8     1.08020263    -0.65977978  -213.82516669    -0.00000059    -0.00000003  0.33D-08  0.71D-08  1928.63
    6     9     9     1.08053855    -0.66178944  -213.82005960    -0.00000078    -0.00000005  0.51D-08  0.11D-07  1928.63
    6    10    10     1.08053851    -0.66178944  -213.82005960    -0.00000078    -0.00000005  0.51D-08  0.11D-07  1928.63
    6    11    11     1.08053854    -0.66178943  -213.82005960    -0.00000078    -0.00000005  0.51D-08  0.11D-07  1928.63
    6    12    12     1.08054294    -0.66028731  -213.81787667    -0.00000067    -0.00000004  0.38D-08  0.81D-08  1928.63
    7     1     1     1.08336286    -0.67356595  -214.01728114    -0.00000005    -0.00000000  0.18D-09  0.40D-09  2294.73
    7     2     2     1.08336286    -0.67356595  -214.01728114    -0.00000005    -0.00000000  0.18D-09  0.40D-09  2294.73
    7     3     3     1.08336285    -0.67356595  -214.01728114    -0.00000005    -0.00000000  0.18D-09  0.40D-09  2294.73
    7     4     4     1.08020846    -0.65977996  -213.82516688    -0.00000004    -0.00000000  0.24D-09  0.68D-09  2294.73
    7     5     5     1.08020845    -0.65977996  -213.82516688    -0.00000004    -0.00000000  0.24D-09  0.69D-09  2294.73
    7     6     6     1.08020833    -0.65977982  -213.82516673    -0.00000004    -0.00000000  0.24D-09  0.67D-09  2294.73
    7     7     7     1.08020832    -0.65977982  -213.82516673    -0.00000004    -0.00000000  0.24D-09  0.67D-09  2294.73
    7     8     8     1.08020833    -0.65977982  -213.82516673    -0.00000004    -0.00000000  0.24D-09  0.67D-09  2294.73
    7     9     9     1.08054389    -0.66178950  -213.82005966    -0.00000006    -0.00000000  0.35D-09  0.10D-08  2294.73
    7    10    10     1.08054387    -0.66178949  -213.82005966    -0.00000006    -0.00000000  0.35D-09  0.10D-08  2294.73
    7    11    11     1.08054388    -0.66178949  -213.82005966    -0.00000006    -0.00000000  0.35D-09  0.10D-08  2294.73
    7    12    12     1.08055048    -0.66028735  -213.81787671    -0.00000004    -0.00000000  0.25D-09  0.62D-09  2294.73


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.6%
 S   0.9%  12.3%
 P   0.4%  48.4%  27.4%

 Initialization:   3.5%
 Other:            5.5%

 Total CPU:     2294.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0/000           0.8294896  -0.4067300  -0.2378259   0.0000000  -0.0000000   0.0000000  -0.0000001   0.0000000
                            0.0017312  -0.0213982  -0.0018330   0.0000000
 22222222220//000           0.0004913  -0.4807827   0.8239485   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                            0.0147129   0.0025213  -0.0155375   0.0000000
 222222222200/00/          -0.0000000   0.0000000   0.0000000  -0.1168957   0.7684190  -0.0001407  -0.0020756  -0.0001494
                           -0.0000000  -0.0000001   0.0000000   0.5493262
 22222222220/00/0          -0.0000000   0.0000000  -0.0000000   0.7239193  -0.2829720  -0.0002021   0.0020819  -0.0002505
                           -0.0000000   0.0000000   0.0000000   0.5493262
 2222222222//0000           0.4711584   0.7165627   0.4178410  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                           -0.0156453   0.0000032  -0.0148144  -0.0000000
 222222222200//00           0.0148205  -0.0072670  -0.0042492  -0.0013304   0.0015943  -0.0449177   0.6707105  -0.0350438
                           -0.0535709   0.6621449   0.0567195  -0.0000000
 2222222222/0000/          -0.0148204   0.0072670   0.0042492  -0.0013304   0.0015942  -0.0449177   0.6707105  -0.0350438
                            0.0535709  -0.6621449  -0.0567195  -0.0000000
 2222222222/00/00           0.0000000  -0.0000000   0.0000000  -0.6070236  -0.4854470   0.0003428  -0.0000063   0.0003999
                            0.0000000   0.0000000  -0.0000000   0.5493262
 2222222222/000/0          -0.0084182  -0.0128028  -0.0074655  -0.0000470   0.0000095   0.4804500   0.0075460  -0.4713952
                           -0.4841258   0.0000998  -0.4584157  -0.0000000
 22222222220/0/00           0.0084182   0.0128028   0.0074656  -0.0000470   0.0000095   0.4804501   0.0075460  -0.4713951
                            0.4841257  -0.0000998   0.4584158   0.0000000
 22222222220/000/          -0.0000088   0.0085901  -0.0147214   0.0002808   0.0003744   0.4693109   0.0564688   0.4792295
                            0.4552748   0.0780188  -0.4807917   0.0000000
 222222222200/0/0           0.0000088  -0.0085901   0.0147214   0.0002807   0.0003743   0.4693108   0.0564688   0.4792296
                           -0.4552749  -0.0780188   0.4807917  -0.0000000
 2222222222000/0/          -0.0120956   0.0059309   0.0034680   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                           -0.0105089   0.1298921   0.0111266   0.0000000
 2222222222000//0          -0.0068704  -0.0104489  -0.0060930   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                            0.0949703  -0.0000196   0.0899269   0.0000000
 22222222220000//          -0.0000072   0.0070108  -0.0120148  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                           -0.0893107  -0.0153049   0.0943163  -0.0000000
 2222220222/2/000          -0.0867047   0.0425146   0.0248594  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                            0.0002261  -0.0027946  -0.0002394  -0.0000000
 22222202222//000          -0.0000514   0.0502552  -0.0861255   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                            0.0019215   0.0003293  -0.0020292   0.0000000
 2222220222//2000          -0.0492491  -0.0749007  -0.0436760   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                           -0.0020433   0.0000004  -0.0019348  -0.0000000
 222222022202/00/          -0.0000000   0.0000000   0.0000000   0.0104022  -0.0738460   0.0000138   0.0001979   0.0000147
                            0.0000000   0.0000000  -0.0000000  -0.0536513
 222222022220/00/          -0.0000000   0.0000000   0.0000000   0.0120278  -0.0735987   0.0000132   0.0002004   0.0000139
                            0.0000000  -0.0000000  -0.0000000  -0.0536513
 22222202220/20/0          -0.0000000   0.0000000  -0.0000000  -0.0697524   0.0263827   0.0000197  -0.0001985   0.0000244
                            0.0000000  -0.0000000  -0.0000000  -0.0536513
 22222202222/00/0          -0.0000000   0.0000000   0.0000000  -0.0691537   0.0279141   0.0000191  -0.0002010   0.0000237
                            0.0000000  -0.0000000  -0.0000000  -0.0536513
 2222220222/2000/           0.0030694  -0.0015051  -0.0008800   0.0001285  -0.0001539   0.0043369  -0.0647578   0.0033835
                           -0.0052124   0.0644255   0.0055187   0.0000000
 222222022202//00          -0.0030694   0.0015051   0.0008800   0.0001284  -0.0001539   0.0043369  -0.0647578   0.0033835
                            0.0052124  -0.0644255  -0.0055187   0.0000000
 222222022220//00           0.0157272  -0.0077116  -0.0045092   0.0001269  -0.0001520   0.0042820  -0.0639386   0.0033407
                            0.0050451  -0.0623587  -0.0053417  -0.0000000
 2222220222/0200/          -0.0157272   0.0077116   0.0045092   0.0001268  -0.0001520   0.0042820  -0.0639386   0.0033407
                           -0.0050451   0.0623587   0.0053417  -0.0000000
 2222220222/02/00           0.0000000  -0.0000000   0.0000000   0.0587515   0.0459318  -0.0000329   0.0000031  -0.0000384
                           -0.0000000   0.0000000   0.0000000  -0.0536513
 2222220222/20/00           0.0000000  -0.0000000  -0.0000000   0.0577246   0.0472160  -0.0000328  -0.0000019  -0.0000383
                           -0.0000000  -0.0000000   0.0000000  -0.0536513

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.834370    0.473930    0.000494   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000020    0.019293
             0.033966   -0.000000
 2          -0.409123    0.720778   -0.483611    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.019687    0.029342
            -0.016655   -0.000000
 3          -0.239225    0.420299    0.828796   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.033740    0.017110
            -0.009739    0.000000
 4           0.000000   -0.000000    0.000000    0.791721    0.000401   -0.000067   -0.001900   -0.545619   -0.000000    0.000000
            -0.000000    0.000000
 5          -0.000000    0.000000    0.000000   -0.545615    0.000535    0.000014    0.002277   -0.791722   -0.000000   -0.000000
             0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000164    0.670381    0.686293   -0.064162    0.000393   -0.000000    0.000000
             0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000    0.002845    0.080662    0.010779    0.958068    0.000850   -0.000000    0.000000
             0.000000    0.000000
 8           0.000000   -0.000000   -0.000000   -0.000212    0.684549   -0.673358   -0.050058    0.000453    0.000000    0.000000
            -0.000000   -0.000000
 9           0.003247   -0.029342    0.027593   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.655896    0.697461
            -0.077177   -0.000000
 10         -0.040131    0.000006    0.004729    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.112399   -0.000144
             0.953926   -0.000000
 11         -0.003438   -0.027784   -0.029140    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.692657    0.660421
             0.081714    0.000000
 12         -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.961373

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960369   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000188   -0.000563
            -0.000270    0.000000
 2          -0.000000    0.960369   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000603    0.000238
            -0.000076    0.000000
 3          -0.000000   -0.000000    0.960369    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000164    0.000228
            -0.000589   -0.000000
 4           0.000000   -0.000000    0.000000    0.961522    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.961522   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000
 6           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.961522   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.961522   -0.000000   -0.000000    0.000000
             0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.961522   -0.000000   -0.000000
             0.000000    0.000000
 9          -0.000188   -0.000603    0.000164   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.961374    0.000000
            -0.000000    0.000000
 10         -0.000563    0.000238    0.000228   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.961374
            -0.000000    0.000000
 11         -0.000270   -0.000076   -0.000589    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.961374   -0.000000
 12          0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.961373


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.83436969 (fixed)   0.96046019 (relaxed)   0.96036894 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00080587   -0.00143846   -0.56967315
 Singles      0.01737038   -0.05644868   -0.06285191
 Pairs        0.06605965    0.00000000   -0.04104090
 Total        1.08423591   -0.05788714   -0.67356595
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34339805
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02788601
 One electron energy                 -375.89926409
 Two electron energy                  161.88198295
 Virial quotient                       -2.57765543
 Correlation energy                    -0.67388309
 !MRCI STATE 1.1 Energy              -214.017281144575

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07404630 (Davidson, fixed reference)
 Cluster corrected energies          -214.07390747 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07404630 (Davidson, rotated reference)

 Cluster corrected energies          -214.07202119 (Pople, fixed reference)
 Cluster corrected energies          -214.07187787 (Pople, relaxed reference)
 Cluster corrected energies          -214.07202119 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.72077843 (fixed)   0.96046019 (relaxed)   0.96036894 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00080587   -0.00143846   -0.56967314
 Singles      0.01737039   -0.05644868   -0.06285191
 Pairs        0.06605965    0.00000000   -0.04104090
 Total        1.08423591   -0.05788714   -0.67356595
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34339805
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02788634
 One electron energy                 -375.89926456
 Two electron energy                  161.88198342
 Virial quotient                       -2.57765542
 Correlation energy                    -0.67388309
 !MRCI STATE 2.1 Energy              -214.017281144544

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07404630 (Davidson, fixed reference)
 Cluster corrected energies          -214.07390747 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07404630 (Davidson, rotated reference)

 Cluster corrected energies          -214.07202119 (Pople, fixed reference)
 Cluster corrected energies          -214.07187788 (Pople, relaxed reference)
 Cluster corrected energies          -214.07202119 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.82879604 (fixed)   0.96046020 (relaxed)   0.96036894 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00080587   -0.00143846   -0.56967316
 Singles      0.01737037   -0.05644867   -0.06285190
 Pairs        0.06605966   -0.00000000   -0.04104089
 Total        1.08423590   -0.05788713   -0.67356595
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34339805
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02788636
 One electron energy                 -375.89926427
 Two electron energy                  161.88198313
 Virial quotient                       -2.57765542
 Correlation energy                    -0.67388309
 !MRCI STATE 3.1 Energy              -214.017281144512

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07404630 (Davidson, fixed reference)
 Cluster corrected energies          -214.07390746 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07404630 (Davidson, rotated reference)

 Cluster corrected energies          -214.07202119 (Pople, fixed reference)
 Cluster corrected energies          -214.07187787 (Pople, relaxed reference)
 Cluster corrected energies          -214.07202119 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.79172067 (fixed)   0.96167041 (relaxed)   0.96152221 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132205   -0.00231013   -0.55677636
 Singles      0.01814997   -0.05842256   -0.06508151
 Pairs        0.06216452   -0.00000000   -0.03792209
 Total        1.08163655   -0.06073270   -0.65977996
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16538691
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81039512
 One electron energy                 -371.91341559
 Two electron energy                  158.08824871
 Virial quotient                       -2.58210538
 Correlation energy                    -0.65977996
 !MRCI STATE 4.1 Energy              -213.825166877644

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87902904 (Davidson, fixed reference)
 Cluster corrected energies          -213.87880910 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87902904 (Davidson, rotated reference)

 Cluster corrected energies          -213.87699440 (Pople, fixed reference)
 Cluster corrected energies          -213.87676836 (Pople, relaxed reference)
 Cluster corrected energies          -213.87699440 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.79172237 (fixed)   0.96167042 (relaxed)   0.96152222 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132205   -0.00231013   -0.55677635
 Singles      0.01814997   -0.05842258   -0.06508151
 Pairs        0.06216452   -0.00000001   -0.03792211
 Total        1.08163655   -0.06073272   -0.65977996
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16538691
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81039624
 One electron energy                 -371.91341659
 Two electron energy                  158.08824971
 Virial quotient                       -2.58210535
 Correlation energy                    -0.65977996
 !MRCI STATE 5.1 Energy              -213.825166877568

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87902904 (Davidson, fixed reference)
 Cluster corrected energies          -213.87880910 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87902904 (Davidson, rotated reference)

 Cluster corrected energies          -213.87699440 (Pople, fixed reference)
 Cluster corrected energies          -213.87676836 (Pople, relaxed reference)
 Cluster corrected energies          -213.87699440 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.68629258 (fixed)   0.96167047 (relaxed)   0.96152227 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132205   -0.00231012   -0.55677652
 Singles      0.01814981   -0.05842232   -0.06508132
 Pairs        0.06216456    0.00000001   -0.03792198
 Total        1.08163642   -0.06073243   -0.65977982
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16538691
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81038038
 One electron energy                 -371.91339683
 Two electron energy                  158.08823009
 Virial quotient                       -2.58210584
 Correlation energy                    -0.65977982
 !MRCI STATE 6.1 Energy              -213.825166731898

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87902879 (Davidson, fixed reference)
 Cluster corrected energies          -213.87880886 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87902879 (Davidson, rotated reference)

 Cluster corrected energies          -213.87699416 (Pople, fixed reference)
 Cluster corrected energies          -213.87676811 (Pople, relaxed reference)
 Cluster corrected energies          -213.87699416 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95806770 (fixed)   0.96167047 (relaxed)   0.96152228 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132205   -0.00231012   -0.55677652
 Singles      0.01814980   -0.05842232   -0.06508131
 Pairs        0.06216456   -0.00000001   -0.03792199
 Total        1.08163641   -0.06073244   -0.65977982
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16538691
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81038067
 One electron energy                 -371.91339701
 Two electron energy                  158.08823028
 Virial quotient                       -2.58210583
 Correlation energy                    -0.65977982
 !MRCI STATE 7.1 Energy              -213.825166731340

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87902879 (Davidson, fixed reference)
 Cluster corrected energies          -213.87880885 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87902879 (Davidson, rotated reference)

 Cluster corrected energies          -213.87699415 (Pople, fixed reference)
 Cluster corrected energies          -213.87676811 (Pople, relaxed reference)
 Cluster corrected energies          -213.87699415 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.68454924 (fixed)   0.96167047 (relaxed)   0.96152227 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132205   -0.00231012   -0.55677652
 Singles      0.01814980   -0.05842232   -0.06508131
 Pairs        0.06216456    0.00000000   -0.03792198
 Total        1.08163642   -0.06073244   -0.65977982
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16538691
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81038037
 One electron energy                 -371.91339684
 Two electron energy                  158.08823011
 Virial quotient                       -2.58210584
 Correlation energy                    -0.65977982
 !MRCI STATE 8.1 Energy              -213.825166730840

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87902879 (Davidson, fixed reference)
 Cluster corrected energies          -213.87880886 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87902879 (Davidson, rotated reference)

 Cluster corrected energies          -213.87699415 (Pople, fixed reference)
 Cluster corrected energies          -213.87676811 (Pople, relaxed reference)
 Cluster corrected energies          -213.87699415 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.69746059 (fixed)   0.96154105 (relaxed)   0.96137402 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131985   -0.00223186   -0.55843614
 Singles      0.01821076   -0.05845180   -0.06516014
 Pairs        0.06243944    0.00000001   -0.03819322
 Total        1.08197004   -0.06068365   -0.66178950
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15858731
 Nuclear energy                         0.00000000
 Kinetic energy                        82.84544725
 One electron energy                 -372.14794365
 Two electron energy                  158.32788400
 Virial quotient                       -2.58095124
 Correlation energy                    -0.66147235
 !MRCI STATE 9.1 Energy              -213.820059657827

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87428058 (Davidson, fixed reference)
 Cluster corrected energies          -213.87403195 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87428058 (Davidson, rotated reference)

 Cluster corrected energies          -213.87224697 (Pople, fixed reference)
 Cluster corrected energies          -213.87199131 (Pople, relaxed reference)
 Cluster corrected energies          -213.87224697 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95392563 (fixed)   0.96154106 (relaxed)   0.96137403 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131985   -0.00223186   -0.55843614
 Singles      0.01821075   -0.05845179   -0.06516013
 Pairs        0.06243943    0.00000001   -0.03819322
 Total        1.08197003   -0.06068365   -0.66178949
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15858731
 Nuclear energy                         0.00000000
 Kinetic energy                        82.84544730
 One electron energy                 -372.14794365
 Two electron energy                  158.32788399
 Virial quotient                       -2.58095124
 Correlation energy                    -0.66147235
 !MRCI STATE 10.1 Energy             -213.820059656533

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87428057 (Davidson, fixed reference)
 Cluster corrected energies          -213.87403194 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87428057 (Davidson, rotated reference)

 Cluster corrected energies          -213.87224696 (Pople, fixed reference)
 Cluster corrected energies          -213.87199130 (Pople, relaxed reference)
 Cluster corrected energies          -213.87224696 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.69265735 (fixed)   0.96154105 (relaxed)   0.96137402 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131985   -0.00223186   -0.55843613
 Singles      0.01821075   -0.05845180   -0.06516013
 Pairs        0.06243944   -0.00000000   -0.03819323
 Total        1.08197004   -0.06068366   -0.66178949
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15858731
 Nuclear energy                         0.00000000
 Kinetic energy                        82.84544723
 One electron energy                 -372.14794365
 Two electron energy                  158.32788399
 Virial quotient                       -2.58095124
 Correlation energy                    -0.66147235
 !MRCI STATE 11.1 Energy             -213.820059655384

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87428057 (Davidson, fixed reference)
 Cluster corrected energies          -213.87403194 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87428057 (Davidson, rotated reference)

 Cluster corrected energies          -213.87224697 (Pople, fixed reference)
 Cluster corrected energies          -213.87199130 (Pople, relaxed reference)
 Cluster corrected energies          -213.87224697 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.96137282 (fixed)   0.96151500 (relaxed)   0.96137282 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131624   -0.00231316   -0.00294116
 Singles      0.01814181   -0.05845354   -0.06509334
 Pairs        0.06251469   -0.59952065   -0.59225285
 Total        1.08197274   -0.66028735   -0.66028735
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15758936
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81155381
 One electron energy                 -371.91277392
 Two electron energy                  158.09489721
 Virial quotient                       -2.58198122
 Correlation energy                    -0.66028735
 !MRCI STATE 12.1 Energy             -213.817876711905

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87200228 (Davidson, fixed reference)
 Cluster corrected energies          -213.87179101 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87200228 (Davidson, rotated reference)

 Cluster corrected energies          -213.86997236 (Pople, fixed reference)
 Cluster corrected energies          -213.86975511 (Pople, relaxed reference)
 Cluster corrected energies          -213.86997236 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      719.38       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3686.70   3683.89      1.91      0.05      0.61
 REAL TIME  *      3781.07 SEC
 DISK USED  *       755.75 MB (local),        8.91 GB (total)
 SF USED    *         7.50 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.07404630  AU                              
 SETTING HLSDIAG(2)     =      -214.07404630  AU                              
 SETTING HLSDIAG(3)     =      -214.07404630  AU                              
 SETTING HLSDIAG(4)     =      -213.87902904  AU                              
 SETTING HLSDIAG(5)     =      -213.87902904  AU                              
 SETTING HLSDIAG(6)     =      -213.87902879  AU                              
 SETTING HLSDIAG(7)     =      -213.87902879  AU                              
 SETTING HLSDIAG(8)     =      -213.87902879  AU                              
 SETTING HLSDIAG(9)     =      -213.87428058  AU                              
 SETTING HLSDIAG(10)    =      -213.87428057  AU                              
 SETTING HLSDIAG(11)    =      -213.87428057  AU                              
 SETTING HLSDIAG(12)    =      -213.87200228  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

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
     1      -213.30904974
     2      -213.30904974
     3      -213.30904974
     4      -213.30904974
     5      -213.30904974
     6      -213.27982539

 Number of blocks in overlap matrix:   582   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:    1291
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2060800
 Number of doubly external configurations:       2068040
 Total number of contracted configurations:      4152990
 Total number of uncontracted configurations:   45449790

 Diagonal Coupling coefficients finished.               Storage:  12993933 words, CPU-Time:     12.18 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    976772 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.30904974    -0.00000000    -0.83664100  0.55D-01  0.10D+00    17.68
    1     2     2     1.00000000     0.00000000  -213.30904974    -0.00000000    -0.83732953  0.57D-01  0.10D+00    17.68
    1     3     3     1.00000000     0.00000000  -213.30904974    -0.00000000    -0.83707059  0.56D-01  0.10D+00    17.68
    1     4     4     1.00000000     0.00000000  -213.30904974    -0.00000000    -0.83740122  0.57D-01  0.10D+00    17.68
    1     5     5     1.00000000     0.00000000  -213.30904974    -0.00000000    -0.83666642  0.56D-01  0.10D+00    17.68
    1     6     6     1.00000000     0.00000000  -213.27982539     0.00000000    -0.81203236  0.27D-01  0.11D+00    17.68
    2     1     1     1.09696557    -0.65939897  -213.96844871    -0.65939897    -0.01937827  0.38D-02  0.15D-02   100.03
    2     2     2     1.09694255    -0.65938596  -213.96843570    -0.65938596    -0.01938753  0.38D-02  0.15D-02   100.03
    2     3     3     1.09726828    -0.65913661  -213.96818635    -0.65913661    -0.01965921  0.39D-02  0.15D-02   100.03
    2     4     4     1.09747826    -0.65901580  -213.96806554    -0.65901580    -0.01979872  0.40D-02  0.15D-02   100.03
    2     5     5     1.09754221    -0.65898114  -213.96803088    -0.65898114    -0.01983884  0.40D-02  0.15D-02   100.03
    2     6     6     1.08583760    -0.65529567  -213.93512106    -0.65529567    -0.01596048  0.28D-02  0.14D-02   100.03
    3     1     1     1.08674343    -0.67764119  -213.98669093    -0.01824222    -0.00053446  0.77D-04  0.66D-04   182.33
    3     2     2     1.08673537    -0.67763701  -213.98668674    -0.01825105    -0.00053761  0.77D-04  0.67D-04   182.33
    3     3     3     1.08673683    -0.67763091  -213.98668065    -0.01849430    -0.00054436  0.78D-04  0.68D-04   182.33
    3     4     4     1.08675108    -0.67762569  -213.98667543    -0.01860989    -0.00054988  0.80D-04  0.69D-04   182.33
    3     5     5     1.08675429    -0.67762476  -213.98667450    -0.01864362    -0.00055107  0.80D-04  0.69D-04   182.33
    3     6     6     1.08230362    -0.67082149  -213.95064688    -0.01552583    -0.00045771  0.42D-04  0.77D-04   182.33
    4     1     1     1.08680621    -0.67820333  -213.98725307    -0.00056214    -0.00003034  0.39D-05  0.52D-05   263.98
    4     2     2     1.08679858    -0.67820290  -213.98725264    -0.00056590    -0.00003066  0.39D-05  0.53D-05   263.98
    4     3     3     1.08679958    -0.67820282  -213.98725256    -0.00057191    -0.00003072  0.40D-05  0.53D-05   263.98
    4     4     4     1.08680130    -0.67820271  -213.98725245    -0.00057702    -0.00003083  0.39D-05  0.54D-05   263.98
    4     5     5     1.08679999    -0.67820270  -213.98725244    -0.00057794    -0.00003083  0.39D-05  0.54D-05   263.98
    4     6     6     1.08368380    -0.67132213  -213.95114752    -0.00050064    -0.00003486  0.27D-05  0.75D-05   263.98
    5     1     1     1.08691143    -0.67823999  -213.98728972    -0.00003665    -0.00000206  0.99D-07  0.46D-06   345.25
    5     2     2     1.08690928    -0.67823994  -213.98728967    -0.00003703    -0.00000210  0.99D-07  0.47D-06   345.25
    5     3     3     1.08690804    -0.67823991  -213.98728965    -0.00003709    -0.00000211  0.10D-06  0.48D-06   345.25
    5     4     4     1.08690857    -0.67823991  -213.98728964    -0.00003719    -0.00000211  0.11D-06  0.48D-06   345.25
    5     5     5     1.08690844    -0.67823991  -213.98728964    -0.00003721    -0.00000211  0.10D-06  0.48D-06   345.25
    5     6     6     1.08424336    -0.67136524  -213.95119063    -0.00004311    -0.00000308  0.18D-06  0.66D-06   345.25
    6     1     1     1.08691737    -0.67824260  -213.98729234    -0.00000262    -0.00000023  0.27D-07  0.42D-07   426.15
    6     2     2     1.08691690    -0.67824260  -213.98729234    -0.00000266    -0.00000023  0.27D-07  0.43D-07   426.15
    6     3     3     1.08691690    -0.67824260  -213.98729233    -0.00000268    -0.00000024  0.28D-07  0.44D-07   426.15
    6     4     4     1.08691674    -0.67824260  -213.98729233    -0.00000269    -0.00000024  0.28D-07  0.44D-07   426.15
    6     5     5     1.08691679    -0.67824259  -213.98729233    -0.00000269    -0.00000024  0.28D-07  0.44D-07   426.15
    6     6     6     1.08429716    -0.67136923  -213.95119461    -0.00000398    -0.00000032  0.35D-07  0.53D-07   426.15
    7     1     1     1.08694482    -0.67824288  -213.98729262    -0.00000027    -0.00000003  0.24D-08  0.44D-08   507.77
    7     2     2     1.08694484    -0.67824288  -213.98729262    -0.00000028    -0.00000003  0.24D-08  0.43D-08   507.77
    7     3     3     1.08694482    -0.67824288  -213.98729262    -0.00000028    -0.00000002  0.24D-08  0.43D-08   507.77
    7     4     4     1.08694484    -0.67824288  -213.98729262    -0.00000028    -0.00000003  0.25D-08  0.44D-08   507.77
    7     5     5     1.08694482    -0.67824288  -213.98729261    -0.00000028    -0.00000003  0.24D-08  0.44D-08   507.77
    7     6     6     1.08432002    -0.67136959  -213.95119498    -0.00000037    -0.00000003  0.37D-08  0.57D-08   507.77


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.9%
 S   1.5%  18.2%
 P   0.6%  48.0%  20.4%

 Initialization:   2.5%
 Other:            5.9%

 Total CPU:      507.8 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\000           0.3356575   0.6141809  -0.3287097  -0.4870875  -0.2594285   0.0000000
 2222222222/\0000           0.6042166  -0.0270535   0.3598731  -0.1857426   0.6104696  -0.0000000
 22222222220/\000          -0.5426372   0.0672064  -0.2981264  -0.4038115   0.5929390   0.0000000
 2222222222200000          -0.2365344  -0.0054658   0.5590002  -0.4269850  -0.2255776   0.5379504
 2222222222020000          -0.0339992   0.5126250  -0.0478411   0.5251004   0.2443388   0.5379504
 2222222222002000           0.2705335  -0.5071592  -0.5111590  -0.0981154  -0.0187612   0.5379504
 2222220222220000           0.0281943  -0.0528548  -0.0532716  -0.0102254  -0.0019553  -0.1085224
 2222220222022000          -0.0246510  -0.0005695   0.0582576  -0.0444992  -0.0235091  -0.1085223
 2222220222202000          -0.0035434   0.0534244  -0.0049857   0.0547244   0.0254643  -0.1085223
 222222222200/00\           0.0174573  -0.0327266  -0.0329847  -0.0063313  -0.0012106   0.0709686
 2222222222/00\00          -0.0152634  -0.0003527   0.0360718  -0.0275530  -0.0145563   0.0709686
 22222222220/00\0          -0.0021939   0.0330793  -0.0030872   0.0338844   0.0157670   0.0709685
 2222220222/2\000          -0.0349812  -0.0640081   0.0342572   0.0507628   0.0270369  -0.0000000
 2222220222/\2000          -0.0629696   0.0028194  -0.0375049   0.0193575  -0.0636212   0.0000000
 22222202222/\000           0.0565521  -0.0070041   0.0310699   0.0420841  -0.0617944  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.342215    0.338676    0.609649   -0.547516   -0.124642   -0.000000
 2           0.201530    0.619703   -0.027297    0.067811    0.699145   -0.000000
 3           0.756460   -0.331665    0.363109   -0.300807    0.119280    0.000000
 4          -0.378512   -0.491467   -0.187413   -0.407442    0.576931    0.000000
 5          -0.213461   -0.261761    0.615959    0.598270    0.259571    0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.959667

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958537   -0.000000    0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.958537    0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.958537   -0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.958537   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.958537   -0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.959667


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.60964940 (fixed)   0.95876579 (relaxed)   0.95853743 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132337   -0.00193014   -0.56801594
 Singles      0.02022540   -0.06092142   -0.06857077
 Pairs        0.06683447    0.00000000   -0.04165617
 Total        1.08838325   -0.06285155   -0.67824288
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30904974
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98923720
 One electron energy                 -375.57565534
 Two electron energy                  161.58836272
 Virial quotient                       -2.57849451
 Correlation energy                    -0.67824288
 !MRCI STATE 1.1 Energy              -213.987292616850

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04723792 (Davidson, fixed reference)
 Cluster corrected energies          -214.04688631 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04723792 (Davidson, rotated reference)

 Cluster corrected energies          -214.04599232 (Pople, fixed reference)
 Cluster corrected energies          -214.04562189 (Pople, relaxed reference)
 Cluster corrected energies          -214.04599232 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.69914518 (fixed)   0.95876578 (relaxed)   0.95853742 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132336   -0.00193013   -0.56801595
 Singles      0.02022536   -0.06092140   -0.06857074
 Pairs        0.06683454    0.00000001   -0.04165619
 Total        1.08838326   -0.06285152   -0.67824288
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30904974
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98924364
 One electron energy                 -375.57566543
 Two electron energy                  161.58837281
 Virial quotient                       -2.57849431
 Correlation energy                    -0.67824288
 !MRCI STATE 2.1 Energy              -213.987292616055

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04723793 (Davidson, fixed reference)
 Cluster corrected energies          -214.04688633 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04723793 (Davidson, rotated reference)

 Cluster corrected energies          -214.04599233 (Pople, fixed reference)
 Cluster corrected energies          -214.04562191 (Pople, relaxed reference)
 Cluster corrected energies          -214.04599233 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.75645981 (fixed)   0.95876580 (relaxed)   0.95853743 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132336   -0.00193013   -0.56801595
 Singles      0.02022533   -0.06092137   -0.06857073
 Pairs        0.06683454   -0.00000003   -0.04165620
 Total        1.08838324   -0.06285154   -0.67824288
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30904974
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98924480
 One electron energy                 -375.57566694
 Two electron energy                  161.58837432
 Virial quotient                       -2.57849428
 Correlation energy                    -0.67824288
 !MRCI STATE 3.1 Energy              -213.987292615868

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04723792 (Davidson, fixed reference)
 Cluster corrected energies          -214.04688631 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04723792 (Davidson, rotated reference)

 Cluster corrected energies          -214.04599231 (Pople, fixed reference)
 Cluster corrected energies          -214.04562189 (Pople, relaxed reference)
 Cluster corrected energies          -214.04599231 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.57693119 (fixed)   0.95876579 (relaxed)   0.95853742 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132337   -0.00193013   -0.56801593
 Singles      0.02022538   -0.06092139   -0.06857075
 Pairs        0.06683452   -0.00000001   -0.04165619
 Total        1.08838326   -0.06285154   -0.67824288
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30904974
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98924348
 One electron energy                 -375.57566477
 Two electron energy                  161.58837215
 Virial quotient                       -2.57849432
 Correlation energy                    -0.67824288
 !MRCI STATE 4.1 Energy              -213.987292615135

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04723793 (Davidson, fixed reference)
 Cluster corrected energies          -214.04688633 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04723793 (Davidson, rotated reference)

 Cluster corrected energies          -214.04599233 (Pople, fixed reference)
 Cluster corrected energies          -214.04562191 (Pople, relaxed reference)
 Cluster corrected energies          -214.04599233 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.61595856 (fixed)   0.95876580 (relaxed)   0.95853743 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132337   -0.00193014   -0.56801593
 Singles      0.02022541   -0.06092141   -0.06857077
 Pairs        0.06683447   -0.00000001   -0.04165618
 Total        1.08838325   -0.06285156   -0.67824288
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30904974
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98923696
 One electron energy                 -375.57565498
 Two electron energy                  161.58836237
 Virial quotient                       -2.57849452
 Correlation energy                    -0.67824288
 !MRCI STATE 5.1 Energy              -213.987292614189

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04723792 (Davidson, fixed reference)
 Cluster corrected energies          -214.04688631 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04723792 (Davidson, rotated reference)

 Cluster corrected energies          -214.04599231 (Pople, fixed reference)
 Cluster corrected energies          -214.04562189 (Pople, relaxed reference)
 Cluster corrected energies          -214.04599231 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95966749 (fixed)   0.95996938 (relaxed)   0.95966749 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138471   -0.00173933   -0.00245804
 Singles      0.01136402   -0.04453257   -0.04803465
 Pairs        0.07307276   -0.62509769   -0.62087691
 Total        1.08582149   -0.67136960   -0.67136959
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.27982539
 Nuclear energy                         0.00000000
 Kinetic energy                        82.97043841
 One electron energy                 -375.26442174
 Two electron energy                  161.31322676
 Virial quotient                       -2.57864366
 Correlation energy                    -0.67136959
 !MRCI STATE 6.1 Energy              -213.951194982611

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00881292 (Davidson, fixed reference)
 Cluster corrected energies          -214.00835449 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00881292 (Davidson, rotated reference)

 Cluster corrected energies          -214.00749107 (Pople, fixed reference)
 Cluster corrected energies          -214.00701029 (Pople, relaxed reference)
 Cluster corrected energies          -214.00749107 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      914.28       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4261.47    574.75   3683.89      1.91      0.05      0.61
 REAL TIME  *      4373.32 SEC
 DISK USED  *       950.64 MB (local),       11.20 GB (total)
 SF USED    *         7.50 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -214.04723792  AU                              
 SETTING HLSDIAG(14)    =      -214.04723793  AU                              
 SETTING HLSDIAG(15)    =      -214.04723792  AU                              
 SETTING HLSDIAG(16)    =      -214.04723793  AU                              
 SETTING HLSDIAG(17)    =      -214.04723792  AU                              
 SETTING HLSDIAG(18)    =      -214.00881292  AU                              


         HLSDIAG
    -214.0740463
    -214.0740463
    -214.0740463
    -213.8790290
    -213.8790290
    -213.8790288
    -213.8790288
    -213.8790288
    -213.8742806
    -213.8742806
    -213.8742806
    -213.8720023
    -214.0472379
    -214.0472379
    -214.0472379
    -214.0472379
    -214.0472379
    -214.0088129
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -214.017281   -214.017281   -214.017281   -213.825167   -213.825167   -213.825167   -213.825167   -213.825167
                      -213.820060   -213.820060   -213.820060   -213.817877
 Replaced energies:   -214.074046   -214.074046   -214.074046   -213.879029   -213.879029   -213.879029   -213.879029   -213.879029
                      -213.874281   -213.874281   -213.874281   -213.872002

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -213.987293   -213.987293   -213.987293   -213.987293   -213.987293   -213.951195
 Replaced energies:   -214.047238   -214.047238   -214.047238   -214.047238   -214.047238   -214.008813



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.07404630

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -485.23     832.13      29.34    -191.86     206.52      25.19     210.88    -175.20     -30.18

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          485.23       0.00    -547.14      44.03    -291.72    -112.64     159.64    -112.26      73.97     162.43

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -832.13     547.14      -0.00      26.45    -171.04     -39.54    -299.77     -45.10      70.72    -244.52

    4   4.1  1.0  1.0       0.00       0.00       0.00   42801.34       0.00       0.00       0.00       0.00       0.00       0.00
                          -29.34     -44.03     -26.45       0.00      -0.04    -986.47     -15.88     965.99      66.88       0.08

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42801.34       0.00       0.00       0.00       0.00       0.00
                          191.86     291.72     171.04       0.04       0.00    -148.75      -2.60     148.30    -443.69       0.54

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42801.40       0.00       0.00       0.00       0.00
                         -206.52     112.64      39.54     986.47     148.75       0.00    -487.48      -8.71     -54.40     367.14

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42801.40       0.00       0.00       0.00
                          -25.19    -159.64     299.77      15.88       2.60     487.48       0.00     499.94     362.47     107.21

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42801.40       0.00       0.00
                         -210.88     112.26      45.10    -965.99    -148.30       8.71    -499.94       0.00     -49.66     375.91

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43843.51       0.00
                          175.20     -73.97     -70.72     -66.88     443.69      54.40    -362.47      49.66      -0.00     508.76

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43843.51
                           30.18    -162.43     244.52      -0.08      -0.54    -367.14    -107.21    -375.91    -508.76       0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -185.02      78.08      74.74     -64.82     421.82     -57.69     380.37     -52.70      -0.11    -537.29

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -272.79    -414.87    -241.92       0.00       0.00      -0.00      -0.00       0.00     640.55      -0.13

   13   1.1  1.0  0.0       0.00     676.58     394.79      -0.33       0.19    -157.40     116.17     140.45     140.03    -102.38
                            0.00    -195.29     333.98     225.16     -88.10     -83.08      -9.33     -84.67     -70.45     -12.06

   14   2.1  1.0  0.0    -676.58      -0.00       0.40     109.09      87.96      61.15     181.40     -81.40     -52.01    -155.65
                          195.29      -0.00     681.13    -110.51      43.07     -39.46     -14.13    -213.75     -30.67     -18.36

   15   3.1  1.0  0.0    -394.79      -0.40       0.00    -187.79    -149.76      35.92     105.78     -47.41     -30.43     -90.76
                         -333.98    -681.13      -0.00     -64.60      25.18    -221.99     -11.37      70.59    -193.28     -10.67

   16   4.1  1.0  0.0       0.33    -109.09     187.79       0.00      -0.66    -430.74     -51.72    -438.45     232.97      40.04
                         -225.16     110.51      64.60      -0.00       2.67     -23.82     358.26     -18.84     -32.90     405.02

   17   5.1  1.0  0.0      -0.19     -87.96     149.76       0.66       0.00     538.57      64.71     548.29     187.40      32.00
                           88.10     -43.07     -25.18      -2.67      -0.00     -61.19     916.51     -48.08      12.66    -158.32

   18   6.1  1.0  0.0     157.40     -61.15     -35.92     430.74    -538.57       0.00    -349.42      41.40       3.24    -268.82
                           83.08      39.46     221.99      23.82      61.19      -0.00     -26.16    -492.03      -7.15      31.60

   19   7.1  1.0  0.0    -116.17    -181.40    -105.78      51.72     -64.71     349.42       0.00    -346.45     274.71      -4.28
                            9.33      14.13      11.37    -358.26    -916.51      26.16       0.00     -32.47     -20.29       1.67

   20   8.1  1.0  0.0    -140.45      81.40      47.41     438.45    -548.29     -41.40     346.45      -0.00     -35.83     263.71
                           84.67     213.75     -70.59      18.84      48.08     492.03      32.47      -0.00    -377.36     -31.18

   21   9.1  1.0  0.0    -140.03      52.01      30.43    -232.97    -187.40      -3.24    -274.71      35.83       0.00    -377.30
                           70.45      30.67     193.28      32.90     -12.66       7.15      20.29     377.36      -0.00     -44.51

   22  10.1  1.0  0.0     102.38     155.65      90.76     -40.04     -32.00     268.82       4.28    -263.71     377.30       0.00
                           12.06      18.36      10.67    -405.02     158.32     -31.60      -1.67      31.18      44.51      -0.00

   23  11.1  1.0  0.0    -115.98      74.50      43.54     247.12     196.60      40.29    -259.43      -9.18      61.23    -357.28
                          -74.24    -185.34      58.01     -34.60      13.71     376.97      24.84      -5.87    -519.62     -42.04

   24  12.1  1.0  0.0       0.20    -196.83     337.32       0.00       0.00      -0.00      -0.00      -0.00     425.94      72.99
                          339.59    -166.51     -97.36       0.00      -0.00       0.00      -0.00       0.00      50.12    -619.48

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

   37   1.1  0.0  0.0    -287.64     542.34       6.98     196.97    -246.44    -168.94     164.66     -30.02      85.92     -92.57
                          180.60     585.74    -217.63      71.64     181.66     249.30    -191.82      25.39     133.74       3.77

   38   2.1  0.0  0.0     261.33     362.74     204.35     -24.24      30.78     165.66      25.25     424.62      74.10       4.57
                          477.47    -298.39    -149.36     129.80     333.60     -33.37     204.42      -2.81     -20.71     118.28

   39   3.1  0.0  0.0    -379.66    -393.29     502.54     108.30    -135.23     194.33     122.02      63.33    -123.69     -74.23
                           70.54     347.11    -130.62     -70.52    -177.18     105.68     449.15      -9.05      77.17      -4.15

   40   4.1  0.0  0.0     -63.46    -112.51    -624.59     147.07    -183.63     283.75     -30.04      86.18       7.21      42.11
                          675.80     -85.48     121.66    -103.03    -264.53      55.35    -137.72    -113.68      17.61     118.10

   41   5.1  0.0  0.0    -526.97     180.84    -189.47    -215.97     270.15     117.61     185.98      15.00      12.95     -93.88
                            5.84    -227.90    -698.08     -54.75    -140.81       6.44     -71.65     251.95      -6.84      68.43

   42   6.1  0.0  0.0      -0.64     624.17   -1069.68      -0.00       0.00      -0.00      -0.00      -0.00     141.89      24.32
                        -1076.88     528.03     308.76       0.00       0.00      -0.00      -0.00       0.00      16.70    -206.37


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00       0.00    -676.58    -394.79       0.33      -0.19     157.40    -116.17    -140.45
                          185.02     272.79      -0.00    -195.29     333.98     225.16     -88.10     -83.08      -9.33     -84.67

    2   2.1  1.0  1.0       0.00       0.00     676.58      -0.00      -0.40    -109.09     -87.96     -61.15    -181.40      81.40
                          -78.08     414.87     195.29       0.00     681.13    -110.51      43.07     -39.46     -14.13    -213.75

    3   3.1  1.0  1.0       0.00       0.00     394.79       0.40       0.00     187.79     149.76     -35.92    -105.78      47.41
                          -74.74     241.92    -333.98    -681.13       0.00     -64.60      25.18    -221.99     -11.37      70.59

    4   4.1  1.0  1.0       0.00       0.00      -0.33     109.09    -187.79       0.00       0.66     430.74      51.72     438.45
                           64.82      -0.00    -225.16     110.51      64.60       0.00       2.67     -23.82     358.26     -18.84

    5   5.1  1.0  1.0       0.00       0.00       0.19      87.96    -149.76      -0.66       0.00    -538.57     -64.71    -548.29
                         -421.82      -0.00      88.10     -43.07     -25.18      -2.67       0.00     -61.19     916.51     -48.08

    6   6.1  1.0  1.0       0.00       0.00    -157.40      61.15      35.92    -430.74     538.57       0.00     349.42     -41.40
                           57.69       0.00      83.08      39.46     221.99      23.82      61.19       0.00     -26.16    -492.03

    7   7.1  1.0  1.0       0.00       0.00     116.17     181.40     105.78     -51.72      64.71    -349.42       0.00     346.45
                         -380.37       0.00       9.33      14.13      11.37    -358.26    -916.51      26.16      -0.00     -32.47

    8   8.1  1.0  1.0       0.00       0.00     140.45     -81.40     -47.41    -438.45     548.29      41.40    -346.45      -0.00
                           52.70      -0.00      84.67     213.75     -70.59      18.84      48.08     492.03      32.47       0.00

    9   9.1  1.0  1.0       0.00       0.00     140.03     -52.01     -30.43     232.97     187.40       3.24     274.71     -35.83
                            0.11    -640.55      70.45      30.67     193.28      32.90     -12.66       7.15      20.29     377.36

   10  10.1  1.0  1.0       0.00       0.00    -102.38    -155.65     -90.76      40.04      32.00    -268.82      -4.28     263.71
                          537.29       0.13      12.06      18.36      10.67    -405.02     158.32     -31.60      -1.67      31.18

   11  11.1  1.0  1.0   43843.51       0.00     115.98     -74.50     -43.54    -247.12    -196.60     -40.29     259.43       9.18
                           -0.00    -606.53     -74.24    -185.34      58.01     -34.60      13.71     376.97      24.84      -5.87

   12  12.1  1.0  1.0       0.00   44343.54      -0.20     196.83    -337.32      -0.00      -0.00       0.00       0.00       0.00
                          606.53       0.00     339.59    -166.51     -97.36       0.00      -0.00       0.00      -0.00       0.00

   13   1.1  1.0  0.0     115.98      -0.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           74.24    -339.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0     -74.50     196.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          185.34     166.51      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0     -43.54    -337.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -58.01      97.36      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0    -247.12      -0.00       0.00       0.00       0.00   42801.34       0.00       0.00       0.00       0.00
                           34.60      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0    -196.60      -0.00       0.00       0.00       0.00       0.00   42801.34       0.00       0.00       0.00
                          -13.71       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0     -40.29       0.00       0.00       0.00       0.00       0.00       0.00   42801.40       0.00       0.00
                         -376.97      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0     259.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42801.40       0.00
                          -24.84       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0       9.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42801.40
                            5.87      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0     -61.23    -425.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          519.62     -50.12      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0     357.28     -72.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           42.04     619.48      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0      -0.00     449.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      53.07      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0    -449.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -53.07       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00     676.58     394.79      -0.33       0.19    -157.40     116.17     140.45
                           -0.00      -0.00       0.00    -195.29     333.98     225.16     -88.10     -83.08      -9.33     -84.67

   26   2.1  1.0 -1.0       0.00       0.00    -676.58      -0.00       0.40     109.09      87.96      61.15     181.40     -81.40
                           -0.00      -0.00     195.29      -0.00     681.13    -110.51      43.07     -39.46     -14.13    -213.75

   27   3.1  1.0 -1.0       0.00       0.00    -394.79      -0.40       0.00    -187.79    -149.76      35.92     105.78     -47.41
                           -0.00      -0.00    -333.98    -681.13      -0.00     -64.60      25.18    -221.99     -11.37      70.59

   28   4.1  1.0 -1.0       0.00       0.00       0.33    -109.09     187.79       0.00      -0.66    -430.74     -51.72    -438.45
                           -0.00      -0.00    -225.16     110.51      64.60      -0.00       2.67     -23.82     358.26     -18.84

   29   5.1  1.0 -1.0       0.00       0.00      -0.19     -87.96     149.76       0.66       0.00     538.57      64.71     548.29
                           -0.00      -0.00      88.10     -43.07     -25.18      -2.67      -0.00     -61.19     916.51     -48.08

   30   6.1  1.0 -1.0       0.00       0.00     157.40     -61.15     -35.92     430.74    -538.57       0.00    -349.42      41.40
                           -0.00      -0.00      83.08      39.46     221.99      23.82      61.19      -0.00     -26.16    -492.03

   31   7.1  1.0 -1.0       0.00       0.00    -116.17    -181.40    -105.78      51.72     -64.71     349.42       0.00    -346.45
                           -0.00      -0.00       9.33      14.13      11.37    -358.26    -916.51      26.16       0.00     -32.47

   32   8.1  1.0 -1.0       0.00       0.00    -140.45      81.40      47.41     438.45    -548.29     -41.40     346.45      -0.00
                           -0.00      -0.00      84.67     213.75     -70.59      18.84      48.08     492.03      32.47      -0.00

   33   9.1  1.0 -1.0       0.00       0.00    -140.03      52.01      30.43    -232.97    -187.40      -3.24    -274.71      35.83
                           -0.00      -0.00      70.45      30.67     193.28      32.90     -12.66       7.15      20.29     377.36

   34  10.1  1.0 -1.0       0.00       0.00     102.38     155.65      90.76     -40.04     -32.00     268.82       4.28    -263.71
                           -0.00      -0.00      12.06      18.36      10.67    -405.02     158.32     -31.60      -1.67      31.18

   35  11.1  1.0 -1.0       0.00       0.00    -115.98      74.50      43.54     247.12     196.60      40.29    -259.43      -9.18
                           -0.00      -0.00     -74.24    -185.34      58.01     -34.60      13.71     376.97      24.84      -5.87

   36  12.1  1.0 -1.0       0.00       0.00       0.20    -196.83     337.32       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00     339.59    -166.51     -97.36       0.00      -0.00       0.00      -0.00       0.00

   37   1.1  0.0  0.0     -10.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -11.01      -0.00     747.35    -127.92     364.32     491.57      75.44      -2.93     233.69     169.13

   38   2.1  0.0  0.0      69.14      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.77      -0.00    -466.26    -926.75     263.53     -21.85      -3.28     -37.16      -9.78     392.80

   39   3.1  0.0  0.0      51.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.95       0.00    -110.79    -570.37    -763.07     292.68      44.79     149.55     115.39    -350.38

   40   4.1  0.0  0.0    -124.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           78.34       0.00     319.24     -34.95    -658.23    -151.60     -22.73    -546.61     142.41     236.90

   41   5.1  0.0  0.0     -75.96      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -135.07       0.00    -597.92     411.14     -99.35     497.49      74.97    -253.71    -254.53     128.05

   42   6.1  0.0  0.0    -149.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.68      -0.00    -865.04   -1315.60    -767.15      -0.00       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0    -140.03     102.38    -115.98       0.20       0.00       0.00       0.00       0.00       0.00       0.00
                          -70.45     -12.06      74.24    -339.59       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0      52.01     155.65      74.50    -196.83       0.00       0.00       0.00       0.00       0.00       0.00
                          -30.67     -18.36     185.34     166.51       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0      30.43      90.76      43.54     337.32       0.00       0.00       0.00       0.00       0.00       0.00
                         -193.28     -10.67     -58.01      97.36       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0    -232.97     -40.04     247.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -32.90     405.02      34.60      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0    -187.40     -32.00     196.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.66    -158.32     -13.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0      -3.24     268.82      40.29      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.15      31.60    -376.97      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0    -274.71       4.28    -259.43      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.29       1.67     -24.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0      35.83    -263.71      -9.18      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -377.36     -31.18       5.87      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0       0.00     377.30      61.23     425.94       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -44.51     519.62     -50.12       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0    -377.30       0.00    -357.28      72.99       0.00       0.00       0.00       0.00       0.00       0.00
                           44.51       0.00      42.04     619.48       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0     -61.23     357.28      -0.00    -449.82       0.00       0.00       0.00       0.00       0.00       0.00
                         -519.62     -42.04      -0.00      53.07       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0    -425.94     -72.99     449.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           50.12    -619.48     -53.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00    -676.58    -394.79       0.33      -0.19     157.40
                            0.00       0.00       0.00       0.00      -0.00    -195.29     333.98     225.16     -88.10     -83.08

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00     676.58      -0.00      -0.40    -109.09     -87.96     -61.15
                            0.00       0.00       0.00       0.00     195.29       0.00     681.13    -110.51      43.07     -39.46

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00     394.79       0.40       0.00     187.79     149.76     -35.92
                            0.00       0.00       0.00       0.00    -333.98    -681.13       0.00     -64.60      25.18    -221.99

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.33     109.09    -187.79       0.00       0.66     430.74
                            0.00       0.00       0.00       0.00    -225.16     110.51      64.60       0.00       2.67     -23.82

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.19      87.96    -149.76      -0.66       0.00    -538.57
                            0.00       0.00       0.00       0.00      88.10     -43.07     -25.18      -2.67       0.00     -61.19

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00    -157.40      61.15      35.92    -430.74     538.57       0.00
                            0.00       0.00       0.00       0.00      83.08      39.46     221.99      23.82      61.19       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00     116.17     181.40     105.78     -51.72      64.71    -349.42
                            0.00       0.00       0.00       0.00       9.33      14.13      11.37    -358.26    -916.51      26.16

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00     140.45     -81.40     -47.41    -438.45     548.29      41.40
                            0.00       0.00       0.00       0.00      84.67     213.75     -70.59      18.84      48.08     492.03

   21   9.1  1.0  0.0   43843.51       0.00       0.00       0.00     140.03     -52.01     -30.43     232.97     187.40       3.24
                            0.00       0.00       0.00       0.00      70.45      30.67     193.28      32.90     -12.66       7.15

   22  10.1  1.0  0.0       0.00   43843.51       0.00       0.00    -102.38    -155.65     -90.76      40.04      32.00    -268.82
                           -0.00       0.00       0.00       0.00      12.06      18.36      10.67    -405.02     158.32     -31.60

   23  11.1  1.0  0.0       0.00       0.00   43843.51       0.00     115.98     -74.50     -43.54    -247.12    -196.60     -40.29
                           -0.00      -0.00       0.00       0.00     -74.24    -185.34      58.01     -34.60      13.71     376.97

   24  12.1  1.0  0.0       0.00       0.00       0.00   44343.54      -0.20     196.83    -337.32      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00     339.59    -166.51     -97.36       0.00      -0.00       0.00

   25   1.1  1.0 -1.0     140.03    -102.38     115.98      -0.20       0.00       0.00       0.00       0.00       0.00       0.00
                          -70.45     -12.06      74.24    -339.59      -0.00     485.23    -832.13     -29.34     191.86    -206.52

   26   2.1  1.0 -1.0     -52.01    -155.65     -74.50     196.83       0.00       0.00       0.00       0.00       0.00       0.00
                          -30.67     -18.36     185.34     166.51    -485.23      -0.00     547.14     -44.03     291.72     112.64

   27   3.1  1.0 -1.0     -30.43     -90.76     -43.54    -337.32       0.00       0.00       0.00       0.00       0.00       0.00
                         -193.28     -10.67     -58.01      97.36     832.13    -547.14       0.00     -26.45     171.04      39.54

   28   4.1  1.0 -1.0     232.97      40.04    -247.12      -0.00       0.00       0.00       0.00   42801.34       0.00       0.00
                          -32.90     405.02      34.60      -0.00      29.34      44.03      26.45      -0.00       0.04     986.47

   29   5.1  1.0 -1.0     187.40      32.00    -196.60      -0.00       0.00       0.00       0.00       0.00   42801.34       0.00
                           12.66    -158.32     -13.71       0.00    -191.86    -291.72    -171.04      -0.04      -0.00     148.75

   30   6.1  1.0 -1.0       3.24    -268.82     -40.29       0.00       0.00       0.00       0.00       0.00       0.00   42801.40
                           -7.15      31.60    -376.97      -0.00     206.52    -112.64     -39.54    -986.47    -148.75      -0.00

   31   7.1  1.0 -1.0     274.71      -4.28     259.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.29       1.67     -24.84       0.00      25.19     159.64    -299.77     -15.88      -2.60    -487.48

   32   8.1  1.0 -1.0     -35.83     263.71       9.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -377.36     -31.18       5.87      -0.00     210.88    -112.26     -45.10     965.99     148.30      -8.71

   33   9.1  1.0 -1.0       0.00    -377.30     -61.23    -425.94       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -44.51     519.62     -50.12    -175.20      73.97      70.72      66.88    -443.69     -54.40

   34  10.1  1.0 -1.0     377.30       0.00     357.28     -72.99       0.00       0.00       0.00       0.00       0.00       0.00
                           44.51      -0.00      42.04     619.48     -30.18     162.43    -244.52       0.08       0.54     367.14

   35  11.1  1.0 -1.0      61.23    -357.28      -0.00     449.82       0.00       0.00       0.00       0.00       0.00       0.00
                         -519.62     -42.04       0.00      53.07     185.02     -78.08     -74.74      64.82    -421.82      57.69

   36  12.1  1.0 -1.0     425.94      72.99    -449.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           50.12    -619.48     -53.07       0.00     272.79     414.87     241.92      -0.00      -0.00       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00    -287.64     542.34       6.98     196.97    -246.44    -168.94
                            1.17     116.58     128.65      -0.00    -180.60    -585.74     217.63     -71.64    -181.66    -249.30

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00     261.33     362.74     204.35     -24.24      30.78     165.66
                         -218.15     -32.32     -13.06      -0.00    -477.47     298.39     149.36    -129.80    -333.60      33.37

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00    -379.66    -393.29     502.54     108.30    -135.23     194.33
                          -75.70      78.10    -165.39      -0.00     -70.54    -347.11     130.62      70.52     177.18    -105.68

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00     -63.46    -112.51    -624.59     147.07    -183.63     283.75
                           46.54     106.89     -96.22       0.00    -675.80      85.48    -121.66     103.03     264.53     -55.35

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00    -526.97     180.84    -189.47    -215.97     270.15     117.61
                           47.96    -130.34     -59.69      -0.00      -5.84     227.90     698.08      54.75     140.81      -6.44

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.64     624.17   -1069.68      -0.00       0.00      -0.00
                         -213.38       0.04    -202.05      -0.00    1076.88    -528.03    -308.76      -0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -287.64     261.33    -379.66     -63.46
                            0.00       0.00       0.00       0.00       0.00       0.00    -180.60    -477.47     -70.54    -675.80

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     542.34     362.74    -393.29    -112.51
                            0.00       0.00       0.00       0.00       0.00       0.00    -585.74     298.39    -347.11      85.48

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       6.98     204.35     502.54    -624.59
                            0.00       0.00       0.00       0.00       0.00       0.00     217.63     149.36     130.62    -121.66

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     196.97     -24.24     108.30     147.07
                            0.00       0.00       0.00       0.00       0.00       0.00     -71.64    -129.80      70.52     103.03

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -246.44      30.78    -135.23    -183.63
                            0.00       0.00       0.00       0.00       0.00       0.00    -181.66    -333.60     177.18     264.53

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -168.94     165.66     194.33     283.75
                            0.00       0.00       0.00       0.00       0.00       0.00    -249.30      33.37    -105.68     -55.35

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     164.66      25.25     122.02     -30.04
                            0.00       0.00       0.00       0.00       0.00       0.00     191.82    -204.42    -449.15     137.72

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -30.02     424.62      63.33      86.18
                            0.00       0.00       0.00       0.00       0.00       0.00     -25.39       2.81       9.05     113.68

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      85.92      74.10    -123.69       7.21
                            0.00       0.00       0.00       0.00       0.00       0.00    -133.74      20.71     -77.17     -17.61

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -92.57       4.57     -74.23      42.11
                            0.00       0.00       0.00       0.00       0.00       0.00      -3.77    -118.28       4.15    -118.10

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -10.20      69.14      51.72    -124.51
                            0.00       0.00       0.00       0.00       0.00       0.00      11.01      -5.77       9.95     -78.34

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   13   1.1  1.0  0.0    -116.17    -140.45    -140.03     102.38    -115.98       0.20       0.00       0.00       0.00       0.00
                           -9.33     -84.67     -70.45     -12.06      74.24    -339.59    -747.35     466.26     110.79    -319.24

   14   2.1  1.0  0.0    -181.40      81.40      52.01     155.65      74.50    -196.83       0.00       0.00       0.00       0.00
                          -14.13    -213.75     -30.67     -18.36     185.34     166.51     127.92     926.75     570.37      34.95

   15   3.1  1.0  0.0    -105.78      47.41      30.43      90.76      43.54     337.32       0.00       0.00       0.00       0.00
                          -11.37      70.59    -193.28     -10.67     -58.01      97.36    -364.32    -263.53     763.07     658.23

   16   4.1  1.0  0.0      51.72     438.45    -232.97     -40.04     247.12       0.00       0.00       0.00       0.00       0.00
                          358.26     -18.84     -32.90     405.02      34.60      -0.00    -491.57      21.85    -292.68     151.60

   17   5.1  1.0  0.0     -64.71    -548.29    -187.40     -32.00     196.60       0.00       0.00       0.00       0.00       0.00
                          916.51     -48.08      12.66    -158.32     -13.71       0.00     -75.44       3.28     -44.79      22.73

   18   6.1  1.0  0.0     349.42     -41.40      -3.24     268.82      40.29      -0.00       0.00       0.00       0.00       0.00
                          -26.16    -492.03      -7.15      31.60    -376.97      -0.00       2.93      37.16    -149.55     546.61

   19   7.1  1.0  0.0       0.00     346.45    -274.71       4.28    -259.43      -0.00       0.00       0.00       0.00       0.00
                           -0.00     -32.47     -20.29       1.67     -24.84       0.00    -233.69       9.78    -115.39    -142.41

   20   8.1  1.0  0.0    -346.45      -0.00      35.83    -263.71      -9.18      -0.00       0.00       0.00       0.00       0.00
                           32.47       0.00    -377.36     -31.18       5.87      -0.00    -169.13    -392.80     350.38    -236.90

   21   9.1  1.0  0.0     274.71     -35.83       0.00     377.30      61.23     425.94       0.00       0.00       0.00       0.00
                           20.29     377.36       0.00     -44.51     519.62     -50.12      -1.17     218.15      75.70     -46.54

   22  10.1  1.0  0.0      -4.28     263.71    -377.30       0.00    -357.28      72.99       0.00       0.00       0.00       0.00
                           -1.67      31.18      44.51       0.00      42.04     619.48    -116.58      32.32     -78.10    -106.89

   23  11.1  1.0  0.0     259.43       9.18     -61.23     357.28      -0.00    -449.82       0.00       0.00       0.00       0.00
                           24.84      -5.87    -519.62     -42.04      -0.00      53.07    -128.65      13.06     165.39      96.22

   24  12.1  1.0  0.0       0.00       0.00    -425.94     -72.99     449.82       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      50.12    -619.48     -53.07      -0.00       0.00       0.00       0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -287.64     261.33    -379.66     -63.46
                          -25.19    -210.88     175.20      30.18    -185.02    -272.79     180.60     477.47      70.54     675.80

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     542.34     362.74    -393.29    -112.51
                         -159.64     112.26     -73.97    -162.43      78.08    -414.87     585.74    -298.39     347.11     -85.48

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       6.98     204.35     502.54    -624.59
                          299.77      45.10     -70.72     244.52      74.74    -241.92    -217.63    -149.36    -130.62     121.66

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     196.97     -24.24     108.30     147.07
                           15.88    -965.99     -66.88      -0.08     -64.82       0.00      71.64     129.80     -70.52    -103.03

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -246.44      30.78    -135.23    -183.63
                            2.60    -148.30     443.69      -0.54     421.82       0.00     181.66     333.60    -177.18    -264.53

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -168.94     165.66     194.33     283.75
                          487.48       8.71      54.40    -367.14     -57.69      -0.00     249.30     -33.37     105.68      55.35

   31   7.1  1.0 -1.0   42801.40       0.00       0.00       0.00       0.00       0.00     164.66      25.25     122.02     -30.04
                           -0.00    -499.94    -362.47    -107.21     380.37      -0.00    -191.82     204.42     449.15    -137.72

   32   8.1  1.0 -1.0       0.00   42801.40       0.00       0.00       0.00       0.00     -30.02     424.62      63.33      86.18
                          499.94      -0.00      49.66    -375.91     -52.70       0.00      25.39      -2.81      -9.05    -113.68

   33   9.1  1.0 -1.0       0.00       0.00   43843.51       0.00       0.00       0.00      85.92      74.10    -123.69       7.21
                          362.47     -49.66       0.00    -508.76      -0.11     640.55     133.74     -20.71      77.17      17.61

   34  10.1  1.0 -1.0       0.00       0.00       0.00   43843.51       0.00       0.00     -92.57       4.57     -74.23      42.11
                          107.21     375.91     508.76      -0.00    -537.29      -0.13       3.77     118.28      -4.15     118.10

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   43843.51       0.00     -10.20      69.14      51.72    -124.51
                         -380.37      52.70       0.11     537.29       0.00     606.53     -11.01       5.77      -9.95      78.34

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   44343.54       0.00      -0.00       0.00       0.00
                            0.00      -0.00    -640.55       0.13    -606.53      -0.00      -0.00      -0.00       0.00       0.00

   37   1.1  0.0  0.0     164.66     -30.02      85.92     -92.57     -10.20       0.00    5883.76       0.00       0.00       0.00
                          191.82     -25.39    -133.74      -3.77      11.01       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0      25.25     424.62      74.10       4.57      69.14      -0.00       0.00    5883.76       0.00       0.00
                         -204.42       2.81      20.71    -118.28      -5.77       0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0     122.02      63.33    -123.69     -74.23      51.72       0.00       0.00       0.00    5883.76       0.00
                         -449.15       9.05     -77.17       4.15       9.95      -0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0     -30.04      86.18       7.21      42.11    -124.51       0.00       0.00       0.00       0.00    5883.76
                          137.72     113.68     -17.61    -118.10     -78.34      -0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0     185.98      15.00      12.95     -93.88     -75.96      -0.00       0.00       0.00       0.00       0.00
                           71.65    -251.95       6.84     -68.43     135.07      -0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0      -0.00      -0.00     141.89      24.32    -149.84       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -16.70     206.37      17.68       0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42

    1   1.1  1.0  1.0    -526.97      -0.64
                           -5.84    1076.88

    2   2.1  1.0  1.0     180.84     624.17
                          227.90    -528.03

    3   3.1  1.0  1.0    -189.47   -1069.68
                          698.08    -308.76

    4   4.1  1.0  1.0    -215.97      -0.00
                           54.75      -0.00

    5   5.1  1.0  1.0     270.15       0.00
                          140.81      -0.00

    6   6.1  1.0  1.0     117.61      -0.00
                           -6.44       0.00

    7   7.1  1.0  1.0     185.98      -0.00
                           71.65       0.00

    8   8.1  1.0  1.0      15.00      -0.00
                         -251.95      -0.00

    9   9.1  1.0  1.0      12.95     141.89
                            6.84     -16.70

   10  10.1  1.0  1.0     -93.88      24.32
                          -68.43     206.37

   11  11.1  1.0  1.0     -75.96    -149.84
                          135.07      17.68

   12  12.1  1.0  1.0      -0.00       0.00
                           -0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00
                          597.92     865.04

   14   2.1  1.0  0.0       0.00       0.00
                         -411.14    1315.60

   15   3.1  1.0  0.0       0.00       0.00
                           99.35     767.15

   16   4.1  1.0  0.0       0.00       0.00
                         -497.49       0.00

   17   5.1  1.0  0.0       0.00       0.00
                          -74.97      -0.00

   18   6.1  1.0  0.0       0.00       0.00
                          253.71      -0.00

   19   7.1  1.0  0.0       0.00       0.00
                          254.53       0.00

   20   8.1  1.0  0.0       0.00       0.00
                         -128.05       0.00

   21   9.1  1.0  0.0       0.00       0.00
                          -47.96     213.38

   22  10.1  1.0  0.0       0.00       0.00
                          130.34      -0.04

   23  11.1  1.0  0.0       0.00       0.00
                           59.69     202.05

   24  12.1  1.0  0.0       0.00       0.00
                            0.00       0.00

   25   1.1  1.0 -1.0    -526.97      -0.64
                            5.84   -1076.88

   26   2.1  1.0 -1.0     180.84     624.17
                         -227.90     528.03

   27   3.1  1.0 -1.0    -189.47   -1069.68
                         -698.08     308.76

   28   4.1  1.0 -1.0    -215.97      -0.00
                          -54.75       0.00

   29   5.1  1.0 -1.0     270.15       0.00
                         -140.81       0.00

   30   6.1  1.0 -1.0     117.61      -0.00
                            6.44      -0.00

   31   7.1  1.0 -1.0     185.98      -0.00
                          -71.65      -0.00

   32   8.1  1.0 -1.0      15.00      -0.00
                          251.95       0.00

   33   9.1  1.0 -1.0      12.95     141.89
                           -6.84      16.70

   34  10.1  1.0 -1.0     -93.88      24.32
                           68.43    -206.37

   35  11.1  1.0 -1.0     -75.96    -149.84
                         -135.07     -17.68

   36  12.1  1.0 -1.0      -0.00       0.00
                            0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   41   5.1  0.0  0.0    5883.76       0.00
                            0.00       0.00

   42   6.1  0.0  0.0       0.00   14317.07
                           -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 42)

    The diagonal matrixelements are shifted by   -214.07404630 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42801.342       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42801.342       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42801.395       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42801.397       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42801.396
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000    -276.181     472.326     318.418    -124.587    -117.492     -13.197    -119.744

    2    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              276.181       0.000     963.266    -156.286      60.904     -55.805     -19.986    -302.284

    3    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -472.326    -963.266       0.000     -91.357      35.607    -313.942     -16.075      99.830

    4    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                             -318.418     156.286      91.357       0.000       3.775     -33.690     506.651     -26.642

    5    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                              124.587     -60.904     -35.607      -3.775       0.000     -86.531    1296.137     -67.999

    6    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                              117.492      55.805     313.942      33.690      86.531       0.000     -36.999    -695.831

    7    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                               13.197      19.986      16.075    -506.651   -1296.137      36.999       0.000     -45.919

    8    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                              119.744     302.284     -99.830      26.642      67.999     695.831      45.919       0.000

    9    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               99.635      43.369     273.337      46.529     -17.903      10.107      28.695     533.674

   10    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               17.055      25.961      15.087    -572.783     223.895     -44.688      -2.358      44.089

   11    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                             -104.998    -262.104      82.038     -48.938      19.390     533.123      35.127      -8.296

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                              480.251    -235.485    -137.694       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -485.228     832.126      29.336    -191.861     206.519      25.187     210.882

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              485.228       0.000    -547.144      44.027    -291.716    -112.641     159.638    -112.260

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -832.126     547.144      -0.000      26.452    -171.039     -39.538    -299.769     -45.102

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -29.336     -44.027     -26.452       0.000      -0.036    -986.472     -15.885     965.987

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              191.861     291.716     171.039       0.036       0.000    -148.748      -2.603     148.299

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -206.519     112.641      39.538     986.472     148.748       0.000    -487.484      -8.706

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -25.187    -159.638     299.769      15.885       2.603     487.484       0.000     499.940

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -210.882     112.260      45.102    -965.987    -148.299       8.706    -499.940       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              175.204     -73.965     -70.716     -66.883     443.692      54.398    -362.472      49.656

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               30.177    -162.427     244.521      -0.084      -0.536    -367.144    -107.209    -375.913

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -185.024      78.078      74.736     -64.817     421.818     -57.692     380.373     -52.696

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -272.787    -414.869    -241.918       0.000       0.000      -0.000      -0.000       0.000

    1    1  |0 0>            -406.787     766.979       9.866     278.554    -348.522    -238.922     232.864     -42.451
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>             369.577     512.991     288.996     -34.281      43.526     234.281      35.713     600.497
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>            -536.915    -556.190     710.704     153.154    -191.245     274.827     172.567      89.566
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>             -89.748    -159.119    -883.309     207.992    -259.698     401.285     -42.489     121.878
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            -745.246     255.753    -267.953    -305.424     382.046     166.320     263.019      21.218
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              -0.902     882.713   -1512.762      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    -276.181     472.326     318.418

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000     276.181       0.000     963.266    -156.286

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000    -472.326    -963.266       0.000     -91.357

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000    -318.418     156.286      91.357       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     124.587     -60.904     -35.607      -3.775

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000     117.492      55.805     313.942      33.690

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      13.197      19.986      16.075    -506.651

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     119.744     302.284     -99.830      26.642

    9    1  |1 1>+          43843.509       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      99.635      43.369     273.337      46.529

   10    1  |1 1>+              0.000   43843.511       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      17.055      25.961      15.087    -572.783

   11    1  |1 1>+              0.000       0.000   43843.510       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000    -104.998    -262.104      82.038     -48.938

   12    1  |1 1>+              0.000       0.000       0.000   44343.538       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     480.251    -235.485    -137.694       0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              -99.635     -17.055     104.998    -480.251       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -43.369     -25.961     262.104     235.485      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.001       0.000
                             -273.337     -15.087     -82.038     137.694      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000   42801.342
                              -46.529     572.783      48.938      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               17.903    -223.895     -19.390       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              -10.107      44.688    -533.123      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              -28.695       2.358     -35.127       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -533.674     -44.089       8.296      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000     -62.948     734.857     -70.880      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               62.948       0.000      59.454     876.084      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -734.857     -59.454       0.000      75.046      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               70.880    -876.084     -75.046       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -956.831    -558.321       0.470
                             -175.204     -30.177     185.024     272.787      -0.000       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     956.831       0.000      -0.571    -154.276
                               73.965     162.427     -78.078     414.869       0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     558.321       0.571       0.000     265.577
                               70.716    -244.521     -74.736     241.918      -0.000      -0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -0.470     154.276    -265.577       0.000
                               66.883       0.084      64.817      -0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.268     124.397    -211.791      -0.940
                             -443.692       0.536    -421.818      -0.000       0.000      -0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000    -222.597      86.485      50.799    -609.155
                              -54.398     367.144      57.692       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000     164.287     256.535     149.589     -73.141
                              362.472     107.209    -380.373       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000     198.632    -115.111     -67.053    -620.056
                              -49.656     375.913      52.696      -0.000       0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000     198.031     -73.549     -43.035     329.467
                               -0.000     508.755       0.111    -640.547      -0.000       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000    -144.786    -220.120    -128.356      56.629
                             -508.755       0.000     537.289       0.132       0.000      -0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000     164.026    -105.365     -61.580    -349.474
                               -0.111    -537.289      -0.000    -606.530       0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -0.284     278.360    -477.043      -0.000
                              640.547      -0.132     606.530       0.000       0.000       0.000      -0.000       0.000

    1    1  |0 0>             121.512    -130.911     -14.430       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     747.351    -127.920     364.319     491.570

    2    1  |0 0>             104.799       6.460      97.784      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -466.257    -926.754     263.529     -21.845

    3    1  |0 0>            -174.926    -104.981      73.147       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -110.788    -570.374    -763.066     292.680

    4    1  |0 0>              10.202      59.554    -176.084       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     319.236     -34.952    -658.229    -151.603

    5    1  |0 0>              18.321    -132.763    -107.430      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -597.917     411.142     -99.355     497.494

    6    1  |0 0>             200.666      34.387    -211.912       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -865.042   -1315.602    -767.152      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                             -124.587    -117.492     -13.197    -119.744     -99.635     -17.055     104.998    -480.251

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               60.904     -55.805     -19.986    -302.284     -43.369     -25.961     262.104     235.485

    3    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               35.607    -313.942     -16.075      99.830    -273.337     -15.087     -82.038     137.694

    4    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                3.775     -33.690     506.651     -26.642     -46.529     572.783      48.938      -0.000

    5    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000     -86.531    1296.137     -67.999      17.903    -223.895     -19.390       0.000

    6    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               86.531       0.000     -36.999    -695.831     -10.107      44.688    -533.123      -0.000

    7    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                            -1296.137      36.999       0.000     -45.919     -28.695       2.358     -35.127       0.000

    8    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               67.999     695.831      45.919       0.000    -533.674     -44.089       8.296      -0.000

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                              -17.903      10.107      28.695     533.674       0.000     -62.948     734.857     -70.880

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                              223.895     -44.688      -2.358      44.089      62.948       0.000      59.454     876.084

   11    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               19.390     533.123      35.127      -8.296    -734.857     -59.454       0.000      75.046

   12    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      70.880    -876.084     -75.046       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           42801.342       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   42801.395       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   42801.397       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   42801.396       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   43843.509       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   43843.511       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   43843.510       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   44343.538
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-             -0.268     222.597    -164.287    -198.632    -198.031     144.786    -164.026       0.284
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-           -124.397     -86.485    -256.535     115.111      73.549     220.120     105.365    -278.360
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 1>-            211.791     -50.799    -149.589      67.053      43.035     128.356      61.580     477.043
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.940     609.155      73.141     620.056    -329.467     -56.629     349.474       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000    -761.659     -91.514    -775.392    -265.021     -45.250     278.027       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 1>-            761.659       0.000     494.153     -58.555      -4.584     380.172      56.972      -0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>-             91.514    -494.153       0.000     489.955    -388.496       6.050    -366.889      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>-            775.392      58.555    -489.955       0.000      50.667    -372.948     -12.983      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 1>-            265.021       4.584     388.496     -50.667       0.000     533.588      86.586     602.374
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-             45.250    -380.172      -6.050     372.948    -533.588       0.000    -505.270     103.227
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 1>-           -278.027     -56.972     366.889      12.983     -86.586     505.270       0.000    -636.136
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-             -0.000       0.000       0.000       0.000    -602.374    -103.227     636.136       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               75.444      -2.930     233.690     169.128       1.167     116.583     128.646      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.280     -37.161      -9.775     392.795    -218.145     -32.323     -13.056      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               44.795     149.553     115.388    -350.383     -75.701      78.096    -165.385      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -22.732    -546.613     142.406     236.900      46.536     106.894     -96.216       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               74.972    -253.714    -254.533     128.054      47.963    -130.335     -59.686      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000    -213.382       0.044    -202.050      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -485.228     832.126      29.336    -191.861     206.519      25.187     210.882

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              485.228       0.000    -547.144      44.027    -291.716    -112.641     159.638    -112.260

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -832.126     547.144      -0.000      26.452    -171.039     -39.538    -299.769     -45.102

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -29.336     -44.027     -26.452       0.000      -0.036    -986.472     -15.885     965.987

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              191.861     291.716     171.039       0.036       0.000    -148.748      -2.603     148.299

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -206.519     112.641      39.538     986.472     148.748       0.000    -487.484      -8.706

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -25.187    -159.638     299.769      15.885       2.603     487.484       0.000     499.940

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -210.882     112.260      45.102    -965.987    -148.299       8.706    -499.940       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              175.204     -73.965     -70.716     -66.883     443.692      54.398    -362.472      49.656

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               30.177    -162.427     244.521      -0.084      -0.536    -367.144    -107.209    -375.913

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -185.024      78.078      74.736     -64.817     421.818     -57.692     380.373     -52.696

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -272.787    -414.869    -241.918       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 0>               0.000     956.831     558.321      -0.470       0.268    -222.597     164.287     198.632
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 0>            -956.831       0.000       0.571     154.276     124.397      86.485     256.535    -115.111
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 0>            -558.321      -0.571       0.000    -265.577    -211.791      50.799     149.589     -67.053
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.470    -154.276     265.577       0.000      -0.940    -609.155     -73.141    -620.056
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>              -0.268    -124.397     211.791       0.940       0.000     761.659      91.514     775.392
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 0>             222.597     -86.485     -50.799     609.155    -761.659       0.000    -494.153      58.555
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 0>            -164.287    -256.535    -149.589      73.141     -91.514     494.153       0.000    -489.955
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 0>            -198.632     115.111      67.053     620.056    -775.392     -58.555     489.955       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>            -198.031      73.549      43.035    -329.467    -265.021      -4.584    -388.496      50.667
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   10    1  |1 0>             144.786     220.120     128.356     -56.629     -45.250     380.172       6.050    -372.948
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 0>            -164.026     105.365      61.580     349.474     278.027      56.972    -366.889     -12.983
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   12    1  |1 0>               0.284    -278.360     477.043       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   42801.342       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   42801.342       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42801.395       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   42801.397       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42801.396
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
                              255.406     828.356    -307.776     101.312     256.904     352.561    -271.276      35.914

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              675.250    -421.991    -211.223     183.570     471.785     -47.197     289.088      -3.967

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               99.757     490.891    -184.728     -99.736    -250.572     149.452     635.189     -12.803

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              955.724    -120.886     172.047    -145.708    -374.108      78.283    -194.764    -160.767

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.257    -322.297    -987.232     -77.425    -199.140       9.106    -101.327     356.313

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1522.935     746.753     436.646       0.000       0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000    -406.787     369.577    -536.915     -89.748
                             -175.204     -30.177     185.024     272.787       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000     766.979     512.991    -556.190    -159.119
                               73.965     162.427     -78.078     414.869       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       9.866     288.996     710.704    -883.309
                               70.716    -244.521     -74.736     241.918       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000     278.554     -34.281     153.154     207.992
                               66.883       0.084      64.817      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000    -348.522      43.526    -191.245    -259.698
                             -443.692       0.536    -421.818      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000    -238.922     234.281     274.827     401.285
                              -54.398     367.144      57.692       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000     232.864      35.713     172.567     -42.489
                              362.472     107.209    -380.373       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000     -42.451     600.497      89.566     121.878
                              -49.656     375.913      52.696      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000     121.512     104.799    -174.926      10.202
                               -0.000     508.755       0.111    -640.547       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000    -130.911       6.460    -104.981      59.554
                             -508.755       0.000     537.289       0.132       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000     -14.430      97.784      73.147    -176.084
                               -0.111    -537.289      -0.000    -606.530       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                              640.547      -0.132     606.530       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>             198.031    -144.786     164.026      -0.284       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000    -747.351     466.257     110.788    -319.236

    2    1  |1 0>             -73.549    -220.120    -105.365     278.360       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     127.920     926.754     570.374      34.952

    3    1  |1 0>             -43.035    -128.356     -61.580    -477.043       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000    -364.319    -263.529     763.066     658.229

    4    1  |1 0>             329.467      56.629    -349.474      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -491.570      21.845    -292.680     151.603

    5    1  |1 0>             265.021      45.250    -278.027      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000     -75.444       3.280     -44.795      22.732

    6    1  |1 0>               4.584    -380.172     -56.972       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       2.930      37.161    -149.553     546.613

    7    1  |1 0>             388.496      -6.050     366.889       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000    -233.690       9.775    -115.388    -142.406

    8    1  |1 0>             -50.667     372.948      12.983       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -169.128    -392.795     350.383    -236.900

    9    1  |1 0>               0.000    -533.588     -86.586    -602.374       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -1.167     218.145      75.701     -46.536

   10    1  |1 0>             533.588       0.000     505.270    -103.227       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000    -116.583      32.323     -78.096    -106.894

   11    1  |1 0>              86.586    -505.270       0.000     636.136       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000    -128.646      13.056     165.385      96.216

   12    1  |1 0>             602.374     103.227    -636.136       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -255.406    -675.250     -99.757    -955.724

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -828.356     421.991    -490.891     120.886

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     307.776     211.223     184.728    -172.047

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -101.312    -183.570      99.736     145.708

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -256.904    -471.785     250.572     374.108

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -352.561      47.197    -149.452     -78.283

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     271.276    -289.088    -635.189     194.764

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -35.914       3.967      12.803     160.767

    9    1  |1 1>-          43843.509       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -189.137      29.293    -109.134     -24.904

   10    1  |1 1>-              0.000   43843.511       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -5.337    -167.278       5.863    -167.017

   11    1  |1 1>-              0.000       0.000   43843.510       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      15.567      -8.161      14.069    -110.793

   12    1  |1 1>-              0.000       0.000       0.000   44343.538       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5883.759       0.000       0.000       0.000
                              189.137       5.337     -15.567      -0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5883.757       0.000       0.000
                              -29.293     167.278       8.161      -0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5883.760       0.000
                              109.134      -5.863     -14.069       0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5883.756
                               24.904     167.017     110.793       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -9.673      96.774    -191.012       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               23.612    -291.845     -25.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42

    1    1  |1 1>+           -745.246      -0.902
                                0.000       0.000

    2    1  |1 1>+            255.753     882.713
                                0.000       0.000

    3    1  |1 1>+           -267.953   -1512.762
                                0.000       0.000

    4    1  |1 1>+           -305.424      -0.000
                                0.000       0.000

    5    1  |1 1>+            382.046       0.000
                                0.000       0.000

    6    1  |1 1>+            166.320      -0.000
                                0.000       0.000

    7    1  |1 1>+            263.019      -0.000
                                0.000       0.000

    8    1  |1 1>+             21.218      -0.000
                                0.000       0.000

    9    1  |1 1>+             18.321     200.666
                                0.000       0.000

   10    1  |1 1>+           -132.763      34.387
                                0.000       0.000

   11    1  |1 1>+           -107.430    -211.912
                                0.000       0.000

   12    1  |1 1>+             -0.000       0.000
                                0.000       0.000

    1    1  |1 0>               0.000       0.000
                              597.917     865.042

    2    1  |1 0>               0.000       0.000
                             -411.142    1315.602

    3    1  |1 0>               0.000       0.000
                               99.355     767.152

    4    1  |1 0>               0.000       0.000
                             -497.494       0.000

    5    1  |1 0>               0.000       0.000
                              -74.972      -0.000

    6    1  |1 0>               0.000       0.000
                              253.714      -0.000

    7    1  |1 0>               0.000       0.000
                              254.533       0.000

    8    1  |1 0>               0.000       0.000
                             -128.054       0.000

    9    1  |1 0>               0.000       0.000
                              -47.963     213.382

   10    1  |1 0>               0.000       0.000
                              130.335      -0.044

   11    1  |1 0>               0.000       0.000
                               59.686     202.050

   12    1  |1 0>               0.000       0.000
                                0.000       0.000

    1    1  |1 1>-              0.000       0.000
                               -8.257    1522.935

    2    1  |1 1>-              0.000       0.000
                              322.297    -746.753

    3    1  |1 1>-              0.000       0.000
                              987.232    -436.646

    4    1  |1 1>-              0.000       0.000
                               77.425      -0.000

    5    1  |1 1>-              0.000       0.000
                              199.140      -0.000

    6    1  |1 1>-              0.000       0.000
                               -9.106       0.000

    7    1  |1 1>-              0.000       0.000
                              101.327       0.000

    8    1  |1 1>-              0.000       0.000
                             -356.313      -0.000

    9    1  |1 1>-              0.000       0.000
                                9.673     -23.612

   10    1  |1 1>-              0.000       0.000
                              -96.774     291.845

   11    1  |1 1>-              0.000       0.000
                              191.012      25.000

   12    1  |1 1>-              0.000       0.000
                               -0.000       0.000

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000       0.000
                                0.000       0.000

    3    1  |0 0>               0.000       0.000
                                0.000       0.000

    4    1  |0 0>               0.000       0.000
                                0.000       0.000

    5    1  |0 0>            5883.759       0.000
                                0.000       0.000

    6    1  |0 0>               0.000   14317.072
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.08664297    -0.01259667    -2764.65      0.00000000        0.00      0.0000
    2  -214.07918337    -0.00513707    -1127.46      0.00745959     1637.19      0.2030
    3  -214.07918337    -0.00513707    -1127.46      0.00745960     1637.19      0.2030
    4  -214.07918337    -0.00513707    -1127.46      0.00745960     1637.19      0.2030
    5  -214.07109513     0.00295117      647.71      0.01554784     3412.36      0.4231
    6  -214.07109512     0.00295118      647.71      0.01554784     3412.36      0.4231
    7  -214.07109504     0.00295127      647.73      0.01554793     3412.38      0.4231
    8  -214.07109503     0.00295127      647.73      0.01554793     3412.38      0.4231
    9  -214.07109503     0.00295127      647.73      0.01554793     3412.38      0.4231
   10  -214.04531120     0.02873511     6306.63      0.04133177     9071.28      1.1247
   11  -214.04531119     0.02873511     6306.63      0.04133178     9071.28      1.1247
   12  -214.04531119     0.02873511     6306.63      0.04133178     9071.28      1.1247
   13  -214.04531110     0.02873520     6306.65      0.04133186     9071.30      1.1247
   14  -214.04531109     0.02873521     6306.65      0.04133187     9071.30      1.1247
   15  -214.00638293     0.06766338    14850.39      0.08026004    17615.04      2.1840
   16  -213.88954455     0.18450175    40493.45      0.19709842    43258.10      5.3633
   17  -213.88954455     0.18450176    40493.45      0.19709842    43258.10      5.3633
   18  -213.88954454     0.18450176    40493.46      0.19709842    43258.10      5.3633
   19  -213.88349405     0.19055225    41821.38      0.20314891    44586.03      5.5280
   20  -213.88349405     0.19055225    41821.38      0.20314892    44586.03      5.5280
   21  -213.88349405     0.19055225    41821.39      0.20314892    44586.03      5.5280
   22  -213.88349389     0.19055241    41821.42      0.20314907    44586.07      5.5280
   23  -213.88349389     0.19055241    41821.42      0.20314908    44586.07      5.5280
   24  -213.88095186     0.19309445    42379.33      0.20569111    45143.98      5.5971
   25  -213.88032647     0.19371984    42516.59      0.20631650    45281.24      5.6142
   26  -213.88032646     0.19371984    42516.59      0.20631650    45281.24      5.6142
   27  -213.88032646     0.19371984    42516.59      0.20631650    45281.24      5.6142
   28  -213.87266532     0.20138098    44198.02      0.21397764    46962.66      5.8226
   29  -213.87266532     0.20138098    44198.02      0.21397764    46962.66      5.8226
   30  -213.87266532     0.20138098    44198.02      0.21397765    46962.66      5.8226
   31  -213.87266527     0.20138104    44198.03      0.21397770    46962.68      5.8226
   32  -213.87266526     0.20138104    44198.03      0.21397770    46962.68      5.8226
   33  -213.87266526     0.20138104    44198.03      0.21397770    46962.68      5.8226
   34  -213.87266519     0.20138111    44198.04      0.21397778    46962.69      5.8226
   35  -213.86945631     0.20459000    44902.31      0.21718666    47666.96      5.9100
   36  -213.86945631     0.20459000    44902.31      0.21718666    47666.96      5.9100
   37  -213.86945630     0.20459000    44902.31      0.21718666    47666.96      5.9100
   38  -213.86945629     0.20459001    44902.32      0.21718667    47666.97      5.9100
   39  -213.86945629     0.20459001    44902.32      0.21718668    47666.97      5.9100
   40  -213.86826805     0.20577825    45163.11      0.21837492    47927.75      5.9423
   41  -213.86826805     0.20577825    45163.11      0.21837492    47927.75      5.9423
   42  -213.86826805     0.20577825    45163.11      0.21837492    47927.75      5.9423

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00029271 -0.25924100  0.23588980  0.61394890 -0.00612159  0.00890108  0.21723814 -0.55346760
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.28643930 -0.07986411  0.55311024 -0.24602594 -0.27980174 -0.28259184 -0.21395965  0.21001149
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.49088943 -0.04644694  0.32260478 -0.14392472  0.46642582  0.48762658 -0.13054406  0.12477457
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00473845  0.00134495  0.00147256 -0.00004001 -0.00001851 -0.00900968 -0.00468825
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00378358  0.00107242  0.00119915  0.00003719  0.00003554  0.01126636  0.00586175
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00110525  0.00393420 -0.00004507 -0.00822680  0.00796762  0.00120645  0.00015634
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00146336 -0.00083212  0.00542556 -0.00096986  0.00088218 -0.00383177  0.00731609
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00124908 -0.00375635 -0.00059697 -0.00855536  0.00823430 -0.00075742 -0.00078488
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00585498 -0.00082511  0.00300128 -0.00008433  0.00191385  0.00193199  0.00051765 -0.00001510
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00100335 -0.00107629 -0.00066606  0.00403926  0.00033413  0.00030071 -0.00157652  0.00303019
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00618314 -0.00095597  0.00273392  0.00057560 -0.00195553 -0.00208238  0.00026815  0.00046588
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.01566700 -0.00444507 -0.00490755 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.28070537 -0.56632572 -0.16030191 -0.17733444 -0.10472218  0.37311260  0.51300785  0.27044859

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.42691169  0.38265452 -0.26054763  0.05905385 -0.16777262  0.56763993 -0.31034146 -0.15577312

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.24894002 -0.01763060  0.62757394  0.09869019 -0.08753304  0.32438813 -0.05334103 -0.02048347

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00026145 -0.00016085  0.00094130 -0.00005458  0.00016087  0.00752870 -0.01452683

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00166840  0.00102361 -0.00620659 -0.00000857  0.00002438  0.00116527 -0.00219960

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00082081 -0.00388492 -0.00042002 -0.01128005 -0.00331066  0.00051272  0.00031230

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00536875  0.00102628  0.00161826 -0.00014140 -0.00003809  0.00731876  0.00376839

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00092258 -0.00394308 -0.00040240  0.01121575  0.00314863  0.00052551  0.00030492

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00622601  0.00117329 -0.00268230 -0.00012921  0.00082686 -0.00278905  0.00063507  0.00030786

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000128 -0.00375200 -0.00158123 -0.00126040 -0.00000644 -0.00001057 -0.00291228 -0.00150733

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00589538 -0.00123992  0.00283239  0.00013618  0.00071941 -0.00260260 -0.00064845 -0.00038143

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00432549  0.00267391 -0.01623077  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.49419086  0.32152521  0.09119283  0.10109140  0.66193018 -0.16370988  0.29058694  0.14660385

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.24232044  0.57974265  0.19479029 -0.18678043 -0.32345187  0.08515666  0.60274515 -0.07044762

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.14169116  0.12994000 -0.01506791  0.67201837 -0.18645986  0.04207848 -0.01046260  0.65568001

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00180734  0.00583868  0.00048272  0.00008693 -0.00001897  0.00098342  0.00053839

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00070550 -0.00228291 -0.00018476  0.00019272 -0.00016781  0.00251598  0.00138097

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00475832 -0.00168988  0.00261870  0.00026714  0.00114177  0.00780460 -0.00244226

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00018569 -0.00007509  0.00043931 -0.00398716 -0.01599495  0.00049294 -0.00068865

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00264585  0.00040328  0.00502477  0.00016845  0.00088083 -0.00234570 -0.00784310

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00068894  0.00359091  0.00126637 -0.00188436  0.00030898 -0.00010572 -0.00325991  0.00095191

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00851540  0.00012625  0.00007824 -0.00047613 -0.00382336  0.00094799 -0.00017638  0.00038712

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00072943  0.00191772  0.00028268  0.00377855 -0.00034406  0.00010051 -0.00091830 -0.00326561

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00501326  0.01619843  0.00133255  0.00000000  0.00000001 -0.00000000 -0.00000000

   1    1  |0 0>           0.00000001  0.00000012 -0.00000008  0.00000008  0.01495072  0.10744157  0.23859831 -0.07647754
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000002 -0.00000015 -0.00000001  0.15758179 -0.14870079  0.00882273  0.01234415
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000008  0.00000002  0.00000016  0.00000005 -0.07242413 -0.21148087  0.11176330 -0.06488156
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000006  0.00000003  0.00000014  0.00000002  0.20040956  0.02180584  0.05469826  0.08905953
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000002 -0.00000012  0.00000001  0.00000008  0.09436500  0.02267566 -0.08292489 -0.24743489
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.17526849 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000001  0.00000002
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.32628788 -0.04727706 -0.13979954 -0.13383216 -0.00678271 -0.00671321 -0.00005217 -0.00334605
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.50102206 -0.15443632  0.06665609 -0.01112688  0.03705039 -0.11558408  0.05106069 -0.00517085
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.29422137 -0.10273458  0.03067079 -0.00167468 -0.06594584  0.18392434 -0.08750603 -0.00301525
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00192403 -0.00298561 -0.00646221  0.00783238  0.00030046 -0.00040675  0.00000000  0.00867013
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00240622  0.00373410  0.00808160 -0.00979246 -0.00039293  0.00050266 -0.00000000  0.00695600
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00597623 -0.00547332  0.00045472 -0.00148425 -0.01127875 -0.00416161  0.00000001  0.37144377
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00008170  0.00206302 -0.00669341 -0.00465183 -0.00156603 -0.00057528  0.00000000  0.00228687
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00551697  0.00565104  0.00069382  0.00297828 -0.01125302 -0.00366914  0.00000001 -0.36403583
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00244720  0.00440579 -0.00045725  0.00163658 -0.00165051  0.00523519 -0.00569541 -0.15323048
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00001793 -0.00173290  0.00525864  0.00374593 -0.00012270  0.00093880 -0.00097600  0.00146351
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00232694  0.00440236  0.00075637  0.00196591  0.00195941 -0.00505822  0.00601463 -0.14486060
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00175580
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.10493378 -0.05362393 -0.10921556  0.12505786  0.07928571  0.07929077  0.05003854  0.00010706

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.27511895 -0.07644587  0.04426176 -0.10525815  0.10826335  0.12907635  0.07610127  0.00340177

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.61103869  0.16886651  0.03231135  0.02556128  0.06822498  0.08635714  0.04437606 -0.00595449

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00008486 -0.00424198  0.01324487  0.00936290  0.00044313  0.00020108 -0.00000000 -0.00085358

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001281 -0.00064283  0.00202864  0.00140609  0.00006635  0.00003153  0.00000000  0.00379334

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00588178 -0.00598555 -0.00075279 -0.00138185 -0.00927075  0.00759518  0.00000001 -0.36324929

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00085121  0.00170873  0.00516285 -0.00648678 -0.00040347  0.00041304 -0.00000000 -0.03402858

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00575946 -0.00534973 -0.00021169 -0.00238081  0.00886299 -0.00805886 -0.00000001 -0.37077133

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00222081  0.00434312 -0.00004249  0.00228332 -0.00357015 -0.00406544 -0.00605633  0.14367570

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00103069  0.00261134  0.00411037 -0.00464177 -0.00017546  0.00029421  0.00000125  0.02855935

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00241263 -0.00409779  0.00036709 -0.00211265 -0.00361543 -0.00425042 -0.00573470 -0.15172738

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00064728

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.07188258 -0.02860341 -0.06067150  0.08164603 -0.19365589  0.03377269  0.08809452 -0.00006280

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.08854836 -0.01637006 -0.17072872  0.05020878  0.09804445 -0.02534011 -0.04319606 -0.00011917

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.05539062 -0.06782873  0.08291046  0.15800483  0.06340845 -0.01201616 -0.02525790 -0.00001521

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00591996 -0.00570832 -0.00016810 -0.00232593 -0.00014257 -0.00032940  0.00000000  0.55933123

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.01514370 -0.01460829 -0.00043681 -0.00595453 -0.00034129 -0.00071920  0.00000000 -0.21863869

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00107181  0.00027586  0.00841336 -0.00116425 -0.00023140 -0.00080682 -0.00000000 -0.00952091

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00012859 -0.00101300  0.00003996  0.00025123  0.00318336  0.01658499 -0.00000000  0.00120206

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00110520 -0.00314384  0.00117286  0.00776006  0.00016572 -0.00101941  0.00000000  0.00403019

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00044896  0.00021276  0.00662280 -0.00101865 -0.00063368  0.00035952  0.00067016 -0.00382461

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00005304 -0.00016634  0.00064358  0.00009832  0.00760094 -0.00143832 -0.00828332 -0.00016812

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00045659  0.00253258 -0.00100661 -0.00615709  0.00038730 -0.00000583 -0.00070955 -0.00164942

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.09466102

   1    1  |0 0>           0.06943847 -0.29427816  0.81981310 -0.18839069 -0.11633684 -0.33495718 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.17942708 -0.60136934 -0.09086086 -0.22876183  0.67663763  0.19960504 -0.00000001 -0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.11268664  0.25952038  0.45387323  0.10425374  0.09325828  0.79183055  0.00000001  0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.16674869  0.63166168  0.12448150 -0.24770618  0.58726721 -0.31492901 -0.00000001  0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.04298045 -0.07295962  0.13442266  0.87170234  0.30815500 -0.20420041 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000002 -0.00000001  0.00000000 -0.00000000  0.00000002 -0.00000001  0.98437686 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00188886  0.00568135 -0.00907758 -0.00050605  0.00576618 -0.00001329 -0.00001166  0.00000359
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00079165 -0.00278004  0.00495501  0.00057148  0.00782994 -0.00402401 -0.00483129 -0.00351707
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00046306 -0.00162557  0.00288865  0.00032844  0.00461180  0.00681963  0.00827649  0.00602742
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.44689587 -0.14237110  0.03576474 -0.48155501  0.01277536  0.00017586 -0.00040406  0.00000004
                          -0.00000001  0.00000000  0.00000000 -0.00000040 -0.00000003 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.35676163 -0.11581249 -0.04468243  0.60215928 -0.01600303  0.00042275 -0.00002560 -0.00000001
                          -0.00000000  0.00000000 -0.00000001  0.00000050  0.00000003  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00302085  0.03281931  0.03926382  0.01031631  0.27561091  0.41460379 -0.34368325  0.00000054
                          -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.15845883 -0.49352705 -0.38342603 -0.02963113  0.02336204  0.05014195 -0.04182008  0.00000012
                           0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.01517276  0.02618732  0.00803608 -0.00647598 -0.27005987  0.42553148 -0.35046194  0.00000075
                           0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00215308 -0.01600652  0.02585351  0.00627942  0.16228305 -0.11408035 -0.13740851  0.39416025
                           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.06399002  0.19943816 -0.22344992 -0.01593943  0.01082076 -0.01935564 -0.02381011  0.06754582
                          -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00834497  0.01720614 -0.01198087  0.00322566  0.15659126  0.11918853  0.14481663 -0.41625178
                           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.09013342  0.02893232 -0.00000004 -0.00000028  0.00000002 -0.00000001  0.00000000  0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00567750 -0.00182242  0.00067006 -0.00933625  0.00024047 -0.00214505  0.00574961 -0.00344666

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00285211  0.00089069 -0.00009097  0.00473524  0.00529122 -0.00328074  0.00874725 -0.00524187

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00151082  0.00052751 -0.00063677  0.00239445 -0.00935813 -0.00186428  0.00511180 -0.00305663

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.02857288 -0.08570091  0.76184141  0.05361450 -0.03715633 -0.00033291  0.00094915 -0.00000008

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.18259777  0.56504866  0.11583230  0.00919112 -0.00548965 -0.00003333  0.00015132 -0.00000001

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.02591656  0.01080940  0.01423531 -0.01775134  0.27209574  0.51623170  0.19248482  0.00000037

   7    1  |1 0>           0.00000001 -0.00000000  0.00000000 -0.00000032 -0.00000002  0.00000000  0.00000000 -0.00000000
                           0.49379885 -0.15987793 -0.02520765  0.38522395  0.02212502  0.00805511  0.00315893 -0.00000003

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01850325  0.00847768  0.01391007 -0.01174118  0.27327920 -0.50862178 -0.18935806 -0.00000057

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.01897643  0.00505708  0.00565357  0.02263879  0.15341618 -0.06671780  0.17732361  0.41913823

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000018  0.00000001  0.00000000  0.00000000  0.00000000
                           0.19891314 -0.06402729  0.01749083 -0.22283901  0.03234949 -0.00012354 -0.00015279 -0.00008637

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.02008399 -0.00535463 -0.00646407 -0.02412499 -0.16218640 -0.06197118  0.16816673  0.39687943

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.02892519  0.09015045  0.00000012  0.00000009 -0.00000002  0.00000002  0.00000001  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00322375  0.00103852  0.00039896 -0.00530027  0.00018083  0.01065827 -0.00179842 -0.00606794

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00596053 -0.00171701 -0.00482366 -0.00844894  0.00046039 -0.00522576  0.00087055  0.00297534

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00105010  0.00655857  0.00960348 -0.00404053 -0.00034013 -0.00306023  0.00052483  0.00173976

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01107887 -0.00068916  0.01334065  0.00843795  0.28113197 -0.00135609 -0.00175822 -0.00000016

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00422280 -0.00008894  0.03392019  0.02164395  0.71922068 -0.00251488  0.00116437 -0.00000030

   6    1  |1 1>-         -0.00000001  0.00000000  0.00000000 -0.00000024 -0.00000002 -0.00000000 -0.00000000 -0.00000000
                          -0.46425359 -0.23186950  0.24865022  0.29437755 -0.02086128 -0.00863264 -0.05043681 -0.00000002

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                          -0.01891491 -0.03977009  0.03111735  0.00623132 -0.00165584  0.12804963  0.75997062 -0.00000027

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000021  0.00000001  0.00000000 -0.00000000  0.00000000
                           0.23365757 -0.46394485  0.29393873 -0.25041690 -0.00662531 -0.00683165 -0.03946816 -0.00000001

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000014  0.00000001 -0.00000000  0.00000000  0.00000000
                          -0.18978963 -0.09033075 -0.14178145 -0.17447719  0.01181268 -0.02063112  0.00321899 -0.04637975

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00750980 -0.02350892 -0.02613831 -0.00182676  0.00224279  0.25541037 -0.04307250  0.57326074

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000012  0.00000001  0.00000000 -0.00000000 -0.00000000
                          -0.09158438  0.18912750  0.17353089 -0.14324248 -0.00374397  0.02179436 -0.00354461  0.04910569

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00186962 -0.00007979  0.00000000  0.00000001  0.00000003  0.00000003  0.00000016  0.00000002

   1    1  |0 0>           0.00000001 -0.00000000 -0.01329737 -0.01365265 -0.00668098  0.00045890  0.00826644  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00013333  0.00116496 -0.01412040  0.01292499 -0.01042022  0.00000002
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00736985 -0.00718228  0.00809356 -0.00424401 -0.01694049 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00545289 -0.00861206  0.01127470  0.01541134  0.00280481  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000001  0.00000000 -0.01468018  0.01276283  0.00630466  0.00732203  0.00215328  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000003  0.00000001  0.01682723
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.00046368 -0.00043431  0.00062412 -0.00000001  0.00000000  0.00000001 -0.00000007  0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00063925  0.00036770 -0.00021872 -0.00000001  0.00000000 -0.00000000 -0.00000002 -0.00000007
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00037274  0.00021482 -0.00012800 -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000004
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.02921432  0.10880920  0.09701040  0.02751798  0.61337593  0.01564809  0.15323785 -0.12601260
                          -0.00000000  0.00000000  0.00000000  0.00000005  0.00000538 -0.00000008  0.00000001  0.00000006

   5    1  |1 1>+          0.02332443  0.08658932  0.07807052  0.02196966  0.47118298  0.00883039 -0.20763874  0.17343996
                          -0.00000000  0.00000000  0.00000000  0.00000004  0.00000413 -0.00000006 -0.00000001 -0.00000009

   6    1  |1 1>+         -0.11482253  0.02778477  0.00330863 -0.32462128  0.01549414 -0.01519216 -0.25352978 -0.32422930
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000011  0.00000000  0.00000002  0.00000020

   7    1  |1 1>+         -0.00876502 -0.10812553  0.12336617  0.01388586 -0.01277057  0.43258353 -0.34966257  0.32596231
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000016 -0.00000000 -0.00000002 -0.00000015

   8    1  |1 1>+          0.11344364 -0.01460037 -0.01789452  0.31078254 -0.01408727 -0.03686333  0.29035882  0.28002363
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000009 -0.00000000 -0.00000002 -0.00000017

   9    1  |1 1>+         -0.39434750  0.10030333  0.00635585 -0.00000034  0.00000001  0.00000000 -0.00000412 -0.00000533
                          -0.00000001  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.02334091 -0.36525142  0.41484618  0.00000002  0.00000001  0.00000009 -0.00000505  0.00000486
                           0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.37720598  0.03571004  0.07333632 -0.00000033  0.00000002  0.00000003 -0.00000469 -0.00000424
                          -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.10550868  0.39253645  0.35154522 -0.00000016 -0.00000346 -0.00000005 -0.00000000 -0.00000001
                          -0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00015249 -0.00056556 -0.00050652  0.00000000  0.00000001 -0.00000000 -0.00000003  0.00000003

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00051424  0.00019884  0.00020409  0.00000001 -0.00000000 -0.00000000 -0.00000001 -0.00000005

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00070994  0.00029673  0.00022116 -0.00000001 -0.00000000  0.00000000  0.00000006  0.00000005

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000002  0.00000015
                          -0.00120873 -0.01915161  0.02124963 -0.00500145  0.00193559 -0.12875361 -0.33514431  0.32095620

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000027  0.00000000  0.00000000  0.00000003
                           0.00813478  0.12452158 -0.14088581  0.03351696 -0.02059049  0.76269347 -0.06307171  0.05927915

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000016  0.00000000 -0.00000002 -0.00000017
                           0.11043788 -0.02816418 -0.01851446  0.31328720  0.01544238 -0.01335538 -0.28988422 -0.28446287

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000378 -0.00000005 -0.00000001 -0.00000013
                           0.04577750  0.11723166  0.10647281  0.01696905 -0.43140285 -0.00978295  0.22839743 -0.25353373

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000011  0.00000000 -0.00000002 -0.00000018
                           0.11329246 -0.02682423 -0.01717065  0.31403673  0.00914660 -0.01450544 -0.29094850 -0.29302455

   9    1  |1 0>          -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.38141628 -0.03384437 -0.00826186  0.00000018 -0.00000003 -0.00000002 -0.00000393 -0.00000495

  10    1  |1 0>          -0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.04475791 -0.41549164 -0.36832488  0.00000005  0.00000031 -0.00000000 -0.00000468  0.00000250

  11    1  |1 0>           0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.40281750  0.03565210  0.00864506 -0.00000013  0.00000002  0.00000001  0.00000413  0.00000515

  12    1  |1 0>          -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.02275291 -0.35479476  0.40299381  0.00000015 -0.00000010  0.00000338 -0.00000006  0.00000007

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00008634  0.00032098  0.00028808 -0.00000000 -0.00000001  0.00000000 -0.00000002  0.00000002

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00015034  0.00078495  0.00010102 -0.00000000 -0.00000001 -0.00000000 -0.00000005  0.00000005

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00004402 -0.00022291  0.00083200  0.00000000 -0.00000000  0.00000001  0.00000003 -0.00000003

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000022  0.00000000  0.00000001  0.00000009
                          -0.17369218  0.03097768  0.01755775  0.72103710 -0.03236341 -0.03194949  0.14019187  0.15157228

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000008  0.00000000  0.00000003  0.00000024
                           0.06788970 -0.01218555 -0.00677281 -0.27875304  0.01165964  0.01296186  0.36335969  0.39785769

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000279  0.00000004 -0.00000002 -0.00000018
                          -0.02792011 -0.16184285  0.00921449  0.02829044  0.32287753  0.33047720  0.41114448 -0.37113058

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000001
                          -0.00144826 -0.01039130  0.00921242  0.00007469  0.00451441  0.03805113  0.03071685 -0.02911476

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000293 -0.00000004 -0.00000001 -0.00000003
                           0.01775757  0.00683058  0.16353281 -0.00034941 -0.32991374  0.31677088  0.06114291 -0.08252793

   9    1  |1 1>-          0.00000001 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.09551767  0.54657727 -0.02064765 -0.00000001 -0.00000017 -0.00000022 -0.00000635  0.00000571

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00274343  0.04297403 -0.04893574  0.00000001 -0.00000003 -0.00000003 -0.00000052  0.00000066

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.05818814  0.01455584  0.55177570  0.00000001 -0.00000019  0.00000028  0.00000100 -0.00000128

  12    1  |1 1>-         -0.00000001  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.52645139 -0.09400412 -0.05303773  0.00000332 -0.00000015 -0.00000016 -0.00000005 -0.00000008

   1    1  |0 0>          -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000006  0.00000011
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000006  0.00000005
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000004
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+         -0.00000004 -0.00000000  0.00036151  0.00157542 -0.00090308 -0.00003973  0.00012443 -0.00626523
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000002 -0.00000000  0.00155327 -0.00002402  0.00058153 -0.00094831 -0.00029350 -0.00980893
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000001 -0.00000000  0.00078628 -0.00005145  0.00025714  0.00172959  0.00078955 -0.00571988
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.28174505  0.00027214  0.04540094 -0.08522795 -0.13098513 -0.00325481 -0.00111840 -0.00318710
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.37626931  0.00020686 -0.05674636  0.10660238  0.16377749  0.00417911  0.00114237 -0.00254781
                          -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00895934  0.40097987 -0.07425466 -0.02004307 -0.01306355  0.06925181 -0.17568009  0.03338030
                           0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.33694700  0.04896693  0.03850693 -0.09719665  0.07570328  0.01278151 -0.02273772 -0.00005196
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.03098896  0.41247921  0.09432842  0.05196686 -0.00171803  0.07335492 -0.16068911 -0.03267924
                          -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000017  0.00000019  0.48418581  0.16068568  0.07654733 -0.47754642 -0.15666460  0.27625927
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000001  0.00000000

  10    1  |1 1>+         -0.00000502  0.00000003 -0.19071704  0.50064936 -0.39036554 -0.10530938 -0.02198322 -0.00472304
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000065 -0.00000026  0.37572194  0.21762027 -0.02662890  0.51775276  0.26352883  0.26083229
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000001  0.00000000

  12    1  |1 1>+         -0.00000002 -0.00000000  0.00000049 -0.00000144 -0.00000105 -0.00000007  0.00000010  0.06316670
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000006 -0.00000000 -0.00041176  0.00089133  0.00126570  0.00087683 -0.00062493 -0.00085928

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000003 -0.00000000  0.00113324  0.00002416 -0.00063191  0.00128086 -0.00087656  0.00695356

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000002 -0.00000000 -0.00129479 -0.00084033 -0.00048922  0.00071724 -0.00072741 -0.01095585

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.32774800 -0.00009186 -0.07548243  0.19319391 -0.15252643 -0.00851996  0.00507345 -0.00011279

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.05673108  0.00093710 -0.01163815  0.02954772 -0.02292760 -0.00129389  0.00076241  0.00062504

   6    1  |1 0>          -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                           0.01824963 -0.40938508 -0.06583042 -0.03306085 -0.00802636 -0.11338561 -0.15680428 -0.03233144

   7    1  |1 0>          -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.47993962 -0.00601258 -0.04610965  0.06423234  0.10358437  0.00070093 -0.00259314 -0.00743964

   8    1  |1 0>          -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000
                           0.01114059  0.40706229 -0.09667485 -0.04805971 -0.01443685  0.10843655  0.13543769 -0.03307134

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000
                          -0.00000080 -0.00000006  0.45269564  0.17721064 -0.03450728  0.45327215 -0.29129021 -0.26174926

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000726  0.00000000 -0.11447762  0.38040065  0.53922760  0.01443457  0.01215034 -0.01592798

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000
                           0.00000086 -0.00000011 -0.43572542 -0.13965452  0.00305607  0.41873655 -0.36737676  0.27642711

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000010  0.00000001 -0.00000055  0.00000154 -0.00000047 -0.00000025 -0.00000022  0.01033054

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000003 -0.00000000 -0.00041596  0.00037450  0.00073077  0.00024677  0.00184532  0.00048437

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000003  0.00000000 -0.00058496  0.00148568  0.00057088 -0.00011468 -0.00087483  0.00065571

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000007  0.00000000  0.00028866 -0.00074598  0.00160310  0.00000404 -0.00055383  0.00056799

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00666131  0.00336524 -0.08638944 -0.03765641 -0.00534476 -0.00080056 -0.00961201  0.05023225

   5    1  |1 1>-          0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.01848745 -0.00134101 -0.22098099 -0.09640174 -0.01354321 -0.00396381 -0.02435351 -0.01963562

   6    1  |1 1>-         -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.09977744 -0.03809065 -0.05262503  0.11731468  0.02042241  0.01612005  0.00024635  0.00210427

   7    1  |1 1>-         -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                           0.02261473  0.57532362 -0.00165287  0.00501756  0.00419640 -0.25783796  0.03214718  0.00013528

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.55872871 -0.02973201 -0.00168599  0.02198196 -0.12869030  0.00854242 -0.00040544 -0.00290208

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000182  0.00000001 -0.26461449  0.60223592  0.12080297 -0.01292067 -0.04930337 -0.01765244

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000
                          -0.00000060 -0.00000020 -0.08900137  0.01511051 -0.04916991  0.09149576  0.75999236  0.00055412

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000853 -0.00000002  0.00726712 -0.12453740  0.65569398  0.03335504  0.05836914 -0.02314123

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000008  0.00000007  0.00000004  0.00000023 -0.00000116  0.00000014  0.83537351

   1    1  |0 0>           0.00000001  0.00000000  0.01036114 -0.01003550 -0.00077528 -0.00551440  0.00169647 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.00956546  0.00558211  0.00100793  0.00464733 -0.00983259  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000001 -0.00196796 -0.00898083 -0.00119495  0.01242584 -0.00126247  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000006  0.00000001 -0.00537617 -0.00381871 -0.00738050 -0.00540945 -0.01071129 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000012  0.00000000 -0.00321331 -0.00385268  0.01358071 -0.00250617 -0.00510559 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42

   1    1  |1 1>+         -0.00651453  0.00935171
                          -0.00000000 -0.00000000

   2    1  |1 1>+          0.00387295 -0.00386890
                           0.00000000  0.00000000

   3    1  |1 1>+          0.00226379 -0.00226312
                           0.00000000  0.00000000

   4    1  |1 1>+         -0.03359011 -0.02542027
                          -0.00000000 -0.00000000

   5    1  |1 1>+         -0.02675013 -0.02047620
                          -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00363165  0.00064626
                          -0.00000000 -0.00000000

   7    1  |1 1>+          0.02825489 -0.03715987
                           0.00000000  0.00000000

   8    1  |1 1>+          0.00026779  0.00377661
                           0.00000000  0.00000000

   9    1  |1 1>+         -0.03308564  0.00900643
                          -0.00000000 -0.00000000

  10    1  |1 1>+          0.22929830 -0.30102007
                           0.00000000  0.00000000

  11    1  |1 1>+          0.00587860 -0.04031836
                          -0.00000000 -0.00000000

  12    1  |1 1>+          0.66506490  0.50561266
                           0.00000001  0.00000000

   1    1  |1 0>           0.00000000  0.00000000
                          -0.00897650 -0.00682424

   2    1  |1 0>          -0.00000000  0.00000000
                           0.00405737  0.00298278

   3    1  |1 0>          -0.00000000 -0.00000000
                           0.00316386  0.00257980

   4    1  |1 0>          -0.00000000 -0.00000000
                           0.00500401 -0.00641435

   5    1  |1 0>           0.00000000  0.00000000
                          -0.03248835  0.04247213

   6    1  |1 0>          -0.00000000 -0.00000000
                           0.00420324  0.00369049

   7    1  |1 0>           0.00000000  0.00000000
                          -0.03675970 -0.02806692

   8    1  |1 0>          -0.00000000 -0.00000000
                           0.00369427  0.00331365

   9    1  |1 0>          -0.00000000 -0.00000000
                          -0.01063550 -0.00404384

  10    1  |1 0>          -0.00000000 -0.00000000
                           0.30274524  0.23085286

  11    1  |1 0>           0.00000000  0.00000000
                           0.01129790  0.00432089

  12    1  |1 0>           0.00000000  0.00000000
                          -0.50763889  0.66643944

   1    1  |1 1>-         -0.00000000 -0.00000000
                           0.00509488  0.00388178

   2    1  |1 1>-         -0.00000000 -0.00000000
                           0.01172623  0.00068166

   3    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00228426  0.01237310

   4    1  |1 1>-          0.00000000  0.00000000
                          -0.00263726 -0.00281206

   5    1  |1 1>-         -0.00000000 -0.00000000
                           0.00105075  0.00107201

   6    1  |1 1>-         -0.00000000 -0.00000000
                           0.04633416 -0.00580117

   7    1  |1 1>-         -0.00000000 -0.00000000
                           0.00279054 -0.00281725

   8    1  |1 1>-          0.00000000  0.00000000
                          -0.00583330 -0.04632817

   9    1  |1 1>-          0.00000000  0.00000000
                          -0.37729347  0.03999686

  10    1  |1 1>-          0.00000000  0.00000000
                          -0.02697201  0.03550315

  11    1  |1 1>-          0.00000000  0.00000000
                          -0.04148037 -0.37668669

  12    1  |1 1>-          0.00000000  0.00000000
                          -0.04401117 -0.04647330

   1    1  |0 0>          -0.00000003  0.00000001
                          -0.00000000 -0.00000000

   2    1  |0 0>           0.00000001 -0.00000000
                          -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000002  0.00000001
                          -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000001
                          -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000001
                          -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000
                           0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.08664297     -0.01259667    -2764.65      0.00000000        0.00      0.0000
     2   1   -214.07918337     -0.00513707    -1127.46      0.00745959     1637.19      0.2030
     3   1   -214.07918337     -0.00513707    -1127.46      0.00745960     1637.19      0.2030
     4   1   -214.07918337     -0.00513707    -1127.46      0.00745960     1637.19      0.2030
     5   1   -214.07109513      0.00295117      647.71      0.01554784     3412.36      0.4231
     6   1   -214.07109512      0.00295118      647.71      0.01554784     3412.36      0.4231
     7   1   -214.07109504      0.00295127      647.73      0.01554793     3412.38      0.4231
     8   1   -214.07109503      0.00295127      647.73      0.01554793     3412.38      0.4231
     9   1   -214.07109503      0.00295127      647.73      0.01554793     3412.38      0.4231
    10   1   -214.04531120      0.02873511     6306.63      0.04133177     9071.28      1.1247
    11   1   -214.04531119      0.02873511     6306.63      0.04133178     9071.28      1.1247
    12   1   -214.04531119      0.02873511     6306.63      0.04133178     9071.28      1.1247
    13   1   -214.04531110      0.02873520     6306.65      0.04133186     9071.30      1.1247
    14   1   -214.04531109      0.02873521     6306.65      0.04133187     9071.30      1.1247
    15   1   -214.00638293      0.06766338    14850.39      0.08026004    17615.04      2.1840
    16   1   -213.88954455      0.18450175    40493.45      0.19709842    43258.10      5.3633
    17   1   -213.88954455      0.18450176    40493.45      0.19709842    43258.10      5.3633
    18   1   -213.88954454      0.18450176    40493.46      0.19709842    43258.10      5.3633
    19   1   -213.88349405      0.19055225    41821.38      0.20314891    44586.03      5.5280
    20   1   -213.88349405      0.19055225    41821.38      0.20314892    44586.03      5.5280
    21   1   -213.88349405      0.19055225    41821.39      0.20314892    44586.03      5.5280
    22   1   -213.88349389      0.19055241    41821.42      0.20314907    44586.07      5.5280
    23   1   -213.88349389      0.19055241    41821.42      0.20314908    44586.07      5.5280
    24   1   -213.88095186      0.19309445    42379.33      0.20569111    45143.98      5.5971
    25   1   -213.88032647      0.19371984    42516.59      0.20631650    45281.24      5.6142
    26   1   -213.88032646      0.19371984    42516.59      0.20631650    45281.24      5.6142
    27   1   -213.88032646      0.19371984    42516.59      0.20631650    45281.24      5.6142
    28   1   -213.87266532      0.20138098    44198.02      0.21397764    46962.66      5.8226
    29   1   -213.87266532      0.20138098    44198.02      0.21397764    46962.66      5.8226
    30   1   -213.87266532      0.20138098    44198.02      0.21397765    46962.66      5.8226
    31   1   -213.87266527      0.20138104    44198.03      0.21397770    46962.68      5.8226
    32   1   -213.87266526      0.20138104    44198.03      0.21397770    46962.68      5.8226
    33   1   -213.87266526      0.20138104    44198.03      0.21397770    46962.68      5.8226
    34   1   -213.87266519      0.20138111    44198.04      0.21397778    46962.69      5.8226
    35   1   -213.86945631      0.20459000    44902.31      0.21718666    47666.96      5.9100
    36   1   -213.86945631      0.20459000    44902.31      0.21718666    47666.96      5.9100
    37   1   -213.86945630      0.20459000    44902.31      0.21718666    47666.96      5.9100
    38   1   -213.86945629      0.20459001    44902.32      0.21718667    47666.97      5.9100
    39   1   -213.86945629      0.20459001    44902.32      0.21718668    47666.97      5.9100
    40   1   -213.86826805      0.20577825    45163.11      0.21837492    47927.75      5.9423
    41   1   -213.86826805      0.20577825    45163.11      0.21837492    47927.75      5.9423
    42   1   -213.86826805      0.20577825    45163.11      0.21837492    47927.75      5.9423

 E0 =   -214.07404630 is the energy of the lowest zeroth-order state
 E1 =   -214.08664297 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00029271 -0.25924100  0.23588980  0.61394890 -0.00612159  0.00890108  0.21723814 -0.55346760
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.28643930 -0.07986411  0.55311024 -0.24602594 -0.27980174 -0.28259184 -0.21395965  0.21001149
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.49088943 -0.04644694  0.32260478 -0.14392472  0.46642582  0.48762658 -0.13054406  0.12477457
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000000  0.00473845  0.00134495  0.00147256 -0.00004001 -0.00001851 -0.00900968 -0.00468825
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00000000  0.00378358  0.00107242  0.00119915  0.00003719  0.00003554  0.01126636  0.00586175
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00000000 -0.00110525  0.00393420 -0.00004507 -0.00822680  0.00796762  0.00120645  0.00015634
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000000 -0.00146336 -0.00083212  0.00542556 -0.00096986  0.00088218 -0.00383177  0.00731609
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00000000  0.00124908 -0.00375635 -0.00059697 -0.00855536  0.00823430 -0.00075742 -0.00078488
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00585498 -0.00082511  0.00300128 -0.00008433  0.00191385  0.00193199  0.00051765 -0.00001510
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00100335 -0.00107629 -0.00066606  0.00403926  0.00033413  0.00030071 -0.00157652  0.00303019
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00618314 -0.00095597  0.00273392  0.00057560 -0.00195553 -0.00208238  0.00026815  0.00046588
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.01566700 -0.00444507 -0.00490755 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.28070537 -0.56632572 -0.16030191 -0.17733444 -0.10472218  0.37311260  0.51300785  0.27044859

 14  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.42691169  0.38265452 -0.26054763  0.05905385 -0.16777262  0.56763993 -0.31034146 -0.15577312

 15  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.24894002 -0.01763060  0.62757394  0.09869019 -0.08753304  0.32438813 -0.05334103 -0.02048347

 16  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00026145 -0.00016085  0.00094130 -0.00005458  0.00016087  0.00752870 -0.01452683

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00166840  0.00102361 -0.00620659 -0.00000857  0.00002438  0.00116527 -0.00219960

 18  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00082081 -0.00388492 -0.00042002 -0.01128005 -0.00331066  0.00051272  0.00031230

 19  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00536875  0.00102628  0.00161826 -0.00014140 -0.00003809  0.00731876  0.00376839

 20  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00092258 -0.00394308 -0.00040240  0.01121575  0.00314863  0.00052551  0.00030492

 21  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00622601  0.00117329 -0.00268230 -0.00012921  0.00082686 -0.00278905  0.00063507  0.00030786

 22  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000128 -0.00375200 -0.00158123 -0.00126040 -0.00000644 -0.00001057 -0.00291228 -0.00150733

 23  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00589538 -0.00123992  0.00283239  0.00013618  0.00071941 -0.00260260 -0.00064845 -0.00038143

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00432549  0.00267391 -0.01623077  0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.49419086  0.32152521  0.09119283  0.10109140  0.66193018 -0.16370988  0.29058694  0.14660385

 26  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.24232044  0.57974265  0.19479029 -0.18678043 -0.32345187  0.08515666  0.60274515 -0.07044762

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.14169116  0.12994000 -0.01506791  0.67201837 -0.18645986  0.04207848 -0.01046260  0.65568001

 28  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00180734  0.00583868  0.00048272  0.00008693 -0.00001897  0.00098342  0.00053839

 29  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00070550 -0.00228291 -0.00018476  0.00019272 -0.00016781  0.00251598  0.00138097

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00475832 -0.00168988  0.00261870  0.00026714  0.00114177  0.00780460 -0.00244226

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00018569 -0.00007509  0.00043931 -0.00398716 -0.01599495  0.00049294 -0.00068865

 32  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00264585  0.00040328  0.00502477  0.00016845  0.00088083 -0.00234570 -0.00784310

 33  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00068894  0.00359091  0.00126637 -0.00188436  0.00030898 -0.00010572 -0.00325991  0.00095191

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00851540  0.00012625  0.00007824 -0.00047613 -0.00382336  0.00094799 -0.00017638  0.00038712

 35  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00072943  0.00191772  0.00028268  0.00377855 -0.00034406  0.00010051 -0.00091830 -0.00326561

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00501326  0.01619843  0.00133255  0.00000000  0.00000001 -0.00000000 -0.00000000

 37  1     1    1  |0 0>        0.00000001  0.00000012 -0.00000008  0.00000008  0.01495072  0.10744157  0.23859831 -0.07647754
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00000000  0.00000002 -0.00000015 -0.00000001  0.15758179 -0.14870079  0.00882273  0.01234415
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000008  0.00000002  0.00000016  0.00000005 -0.07242413 -0.21148087  0.11176330 -0.06488156
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000006  0.00000003  0.00000014  0.00000002  0.20040956  0.02180584  0.05469826  0.08905953
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000002 -0.00000012  0.00000001  0.00000008  0.09436500  0.02267566 -0.08292489 -0.24743489
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.17526849 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000001  0.00000002
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.32628788 -0.04727706 -0.13979954 -0.13383216 -0.00678271 -0.00671321 -0.00005217 -0.00334605
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.50102206 -0.15443632  0.06665609 -0.01112688  0.03705039 -0.11558408  0.05106069 -0.00517085
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.29422137 -0.10273458  0.03067079 -0.00167468 -0.06594584  0.18392434 -0.08750603 -0.00301525
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00192403 -0.00298561 -0.00646221  0.00783238  0.00030046 -0.00040675  0.00000000  0.00867013
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00240622  0.00373410  0.00808160 -0.00979246 -0.00039293  0.00050266 -0.00000000  0.00695600
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00597623 -0.00547332  0.00045472 -0.00148425 -0.01127875 -0.00416161  0.00000001  0.37144377
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00008170  0.00206302 -0.00669341 -0.00465183 -0.00156603 -0.00057528  0.00000000  0.00228687
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00551697  0.00565104  0.00069382  0.00297828 -0.01125302 -0.00366914  0.00000001 -0.36403583
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00244720  0.00440579 -0.00045725  0.00163658 -0.00165051  0.00523519 -0.00569541 -0.15323048
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00001793 -0.00173290  0.00525864  0.00374593 -0.00012270  0.00093880 -0.00097600  0.00146351
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00232694  0.00440236  0.00075637  0.00196591  0.00195941 -0.00505822  0.00601463 -0.14486060
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00175580
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.10493378 -0.05362393 -0.10921556  0.12505786  0.07928571  0.07929077  0.05003854  0.00010706

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.27511895 -0.07644587  0.04426176 -0.10525815  0.10826335  0.12907635  0.07610127  0.00340177

 15  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.61103869  0.16886651  0.03231135  0.02556128  0.06822498  0.08635714  0.04437606 -0.00595449

 16  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00008486 -0.00424198  0.01324487  0.00936290  0.00044313  0.00020108 -0.00000000 -0.00085358

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001281 -0.00064283  0.00202864  0.00140609  0.00006635  0.00003153  0.00000000  0.00379334

 18  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00588178 -0.00598555 -0.00075279 -0.00138185 -0.00927075  0.00759518  0.00000001 -0.36324929

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00085121  0.00170873  0.00516285 -0.00648678 -0.00040347  0.00041304 -0.00000000 -0.03402858

 20  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00575946 -0.00534973 -0.00021169 -0.00238081  0.00886299 -0.00805886 -0.00000001 -0.37077133

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00222081  0.00434312 -0.00004249  0.00228332 -0.00357015 -0.00406544 -0.00605633  0.14367570

 22  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00103069  0.00261134  0.00411037 -0.00464177 -0.00017546  0.00029421  0.00000125  0.02855935

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00241263 -0.00409779  0.00036709 -0.00211265 -0.00361543 -0.00425042 -0.00573470 -0.15172738

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00064728

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.07188258 -0.02860341 -0.06067150  0.08164603 -0.19365589  0.03377269  0.08809452 -0.00006280

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.08854836 -0.01637006 -0.17072872  0.05020878  0.09804445 -0.02534011 -0.04319606 -0.00011917

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.05539062 -0.06782873  0.08291046  0.15800483  0.06340845 -0.01201616 -0.02525790 -0.00001521

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00591996 -0.00570832 -0.00016810 -0.00232593 -0.00014257 -0.00032940  0.00000000  0.55933123

 29  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.01514370 -0.01460829 -0.00043681 -0.00595453 -0.00034129 -0.00071920  0.00000000 -0.21863869

 30  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00107181  0.00027586  0.00841336 -0.00116425 -0.00023140 -0.00080682 -0.00000000 -0.00952091

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00012859 -0.00101300  0.00003996  0.00025123  0.00318336  0.01658499 -0.00000000  0.00120206

 32  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00110520 -0.00314384  0.00117286  0.00776006  0.00016572 -0.00101941  0.00000000  0.00403019

 33  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00044896  0.00021276  0.00662280 -0.00101865 -0.00063368  0.00035952  0.00067016 -0.00382461

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00005304 -0.00016634  0.00064358  0.00009832  0.00760094 -0.00143832 -0.00828332 -0.00016812

 35  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00045659  0.00253258 -0.00100661 -0.00615709  0.00038730 -0.00000583 -0.00070955 -0.00164942

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.09466102

 37  1     1    1  |0 0>        0.06943847 -0.29427816  0.81981310 -0.18839069 -0.11633684 -0.33495718 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.17942708 -0.60136934 -0.09086086 -0.22876183  0.67663763  0.19960504 -0.00000001 -0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.11268664  0.25952038  0.45387323  0.10425374  0.09325828  0.79183055  0.00000001  0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.16674869  0.63166168  0.12448150 -0.24770618  0.58726721 -0.31492901 -0.00000001  0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.04298045 -0.07295962  0.13442266  0.87170234  0.30815500 -0.20420041 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000002 -0.00000001  0.00000000 -0.00000000  0.00000002 -0.00000001  0.98437686 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00188886  0.00568135 -0.00907758 -0.00050605  0.00576618 -0.00001329 -0.00001166  0.00000359
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00079165 -0.00278004  0.00495501  0.00057148  0.00782994 -0.00402401 -0.00483129 -0.00351707
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00046306 -0.00162557  0.00288865  0.00032844  0.00461180  0.00681963  0.00827649  0.00602742
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.44689587 -0.14237110  0.03576474 -0.48155501  0.01277536  0.00017586 -0.00040406  0.00000004
                               -0.00000001  0.00000000  0.00000000 -0.00000040 -0.00000003 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.35676163 -0.11581249 -0.04468243  0.60215928 -0.01600303  0.00042275 -0.00002560 -0.00000001
                               -0.00000000  0.00000000 -0.00000001  0.00000050  0.00000003  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00302085  0.03281931  0.03926382  0.01031631  0.27561091  0.41460379 -0.34368325  0.00000054
                               -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.15845883 -0.49352705 -0.38342603 -0.02963113  0.02336204  0.05014195 -0.04182008  0.00000012
                                0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.01517276  0.02618732  0.00803608 -0.00647598 -0.27005987  0.42553148 -0.35046194  0.00000075
                                0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00215308 -0.01600652  0.02585351  0.00627942  0.16228305 -0.11408035 -0.13740851  0.39416025
                                0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.06399002  0.19943816 -0.22344992 -0.01593943  0.01082076 -0.01935564 -0.02381011  0.06754582
                               -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00834497  0.01720614 -0.01198087  0.00322566  0.15659126  0.11918853  0.14481663 -0.41625178
                                0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.09013342  0.02893232 -0.00000004 -0.00000028  0.00000002 -0.00000001  0.00000000  0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00567750 -0.00182242  0.00067006 -0.00933625  0.00024047 -0.00214505  0.00574961 -0.00344666

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00285211  0.00089069 -0.00009097  0.00473524  0.00529122 -0.00328074  0.00874725 -0.00524187

 15  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00151082  0.00052751 -0.00063677  0.00239445 -0.00935813 -0.00186428  0.00511180 -0.00305663

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.02857288 -0.08570091  0.76184141  0.05361450 -0.03715633 -0.00033291  0.00094915 -0.00000008

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.18259777  0.56504866  0.11583230  0.00919112 -0.00548965 -0.00003333  0.00015132 -0.00000001

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.02591656  0.01080940  0.01423531 -0.01775134  0.27209574  0.51623170  0.19248482  0.00000037

 19  1     7    1  |1 0>        0.00000001 -0.00000000  0.00000000 -0.00000032 -0.00000002  0.00000000  0.00000000 -0.00000000
                                0.49379885 -0.15987793 -0.02520765  0.38522395  0.02212502  0.00805511  0.00315893 -0.00000003

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01850325  0.00847768  0.01391007 -0.01174118  0.27327920 -0.50862178 -0.18935806 -0.00000057

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.01897643  0.00505708  0.00565357  0.02263879  0.15341618 -0.06671780  0.17732361  0.41913823

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000018  0.00000001  0.00000000  0.00000000  0.00000000
                                0.19891314 -0.06402729  0.01749083 -0.22283901  0.03234949 -0.00012354 -0.00015279 -0.00008637

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.02008399 -0.00535463 -0.00646407 -0.02412499 -0.16218640 -0.06197118  0.16816673  0.39687943

 24  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.02892519  0.09015045  0.00000012  0.00000009 -0.00000002  0.00000002  0.00000001  0.00000000

 25  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00322375  0.00103852  0.00039896 -0.00530027  0.00018083  0.01065827 -0.00179842 -0.00606794

 26  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00596053 -0.00171701 -0.00482366 -0.00844894  0.00046039 -0.00522576  0.00087055  0.00297534

 27  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00105010  0.00655857  0.00960348 -0.00404053 -0.00034013 -0.00306023  0.00052483  0.00173976

 28  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01107887 -0.00068916  0.01334065  0.00843795  0.28113197 -0.00135609 -0.00175822 -0.00000016

 29  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00422280 -0.00008894  0.03392019  0.02164395  0.71922068 -0.00251488  0.00116437 -0.00000030

 30  1     6    1  |1 1>-      -0.00000001  0.00000000  0.00000000 -0.00000024 -0.00000002 -0.00000000 -0.00000000 -0.00000000
                               -0.46425359 -0.23186950  0.24865022  0.29437755 -0.02086128 -0.00863264 -0.05043681 -0.00000002

 31  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                               -0.01891491 -0.03977009  0.03111735  0.00623132 -0.00165584  0.12804963  0.75997062 -0.00000027

 32  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000021  0.00000001  0.00000000 -0.00000000  0.00000000
                                0.23365757 -0.46394485  0.29393873 -0.25041690 -0.00662531 -0.00683165 -0.03946816 -0.00000001

 33  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000014  0.00000001 -0.00000000  0.00000000  0.00000000
                               -0.18978963 -0.09033075 -0.14178145 -0.17447719  0.01181268 -0.02063112  0.00321899 -0.04637975

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00750980 -0.02350892 -0.02613831 -0.00182676  0.00224279  0.25541037 -0.04307250  0.57326074

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000012  0.00000001  0.00000000 -0.00000000 -0.00000000
                               -0.09158438  0.18912750  0.17353089 -0.14324248 -0.00374397  0.02179436 -0.00354461  0.04910569

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00186962 -0.00007979  0.00000000  0.00000001  0.00000003  0.00000003  0.00000016  0.00000002

 37  1     1    1  |0 0>        0.00000001 -0.00000000 -0.01329737 -0.01365265 -0.00668098  0.00045890  0.00826644  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00013333  0.00116496 -0.01412040  0.01292499 -0.01042022  0.00000002
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00736985 -0.00718228  0.00809356 -0.00424401 -0.01694049 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00000000 -0.00000000  0.00545289 -0.00861206  0.01127470  0.01541134  0.00280481  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00000001  0.00000000 -0.01468018  0.01276283  0.00630466  0.00732203  0.00215328  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000003  0.00000001  0.01682723
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.00046368 -0.00043431  0.00062412 -0.00000001  0.00000000  0.00000001 -0.00000007  0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00063925  0.00036770 -0.00021872 -0.00000001  0.00000000 -0.00000000 -0.00000002 -0.00000007
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00037274  0.00021482 -0.00012800 -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000004
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.02921432  0.10880920  0.09701040  0.02751798  0.61337593  0.01564809  0.15323785 -0.12601260
                               -0.00000000  0.00000000  0.00000000  0.00000005  0.00000538 -0.00000008  0.00000001  0.00000006

  5  1     5    1  |1 1>+       0.02332443  0.08658932  0.07807052  0.02196966  0.47118298  0.00883039 -0.20763874  0.17343996
                               -0.00000000  0.00000000  0.00000000  0.00000004  0.00000413 -0.00000006 -0.00000001 -0.00000009

  6  1     6    1  |1 1>+      -0.11482253  0.02778477  0.00330863 -0.32462128  0.01549414 -0.01519216 -0.25352978 -0.32422930
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000011  0.00000000  0.00000002  0.00000020

  7  1     7    1  |1 1>+      -0.00876502 -0.10812553  0.12336617  0.01388586 -0.01277057  0.43258353 -0.34966257  0.32596231
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000016 -0.00000000 -0.00000002 -0.00000015

  8  1     8    1  |1 1>+       0.11344364 -0.01460037 -0.01789452  0.31078254 -0.01408727 -0.03686333  0.29035882  0.28002363
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000009 -0.00000000 -0.00000002 -0.00000017

  9  1     9    1  |1 1>+      -0.39434750  0.10030333  0.00635585 -0.00000034  0.00000001  0.00000000 -0.00000412 -0.00000533
                               -0.00000001  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.02334091 -0.36525142  0.41484618  0.00000002  0.00000001  0.00000009 -0.00000505  0.00000486
                                0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.37720598  0.03571004  0.07333632 -0.00000033  0.00000002  0.00000003 -0.00000469 -0.00000424
                               -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.10550868  0.39253645  0.35154522 -0.00000016 -0.00000346 -0.00000005 -0.00000000 -0.00000001
                               -0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00015249 -0.00056556 -0.00050652  0.00000000  0.00000001 -0.00000000 -0.00000003  0.00000003

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00051424  0.00019884  0.00020409  0.00000001 -0.00000000 -0.00000000 -0.00000001 -0.00000005

 15  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00070994  0.00029673  0.00022116 -0.00000001 -0.00000000  0.00000000  0.00000006  0.00000005

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000002  0.00000015
                               -0.00120873 -0.01915161  0.02124963 -0.00500145  0.00193559 -0.12875361 -0.33514431  0.32095620

 17  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000027  0.00000000  0.00000000  0.00000003
                                0.00813478  0.12452158 -0.14088581  0.03351696 -0.02059049  0.76269347 -0.06307171  0.05927915

 18  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000016  0.00000000 -0.00000002 -0.00000017
                                0.11043788 -0.02816418 -0.01851446  0.31328720  0.01544238 -0.01335538 -0.28988422 -0.28446287

 19  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000378 -0.00000005 -0.00000001 -0.00000013
                                0.04577750  0.11723166  0.10647281  0.01696905 -0.43140285 -0.00978295  0.22839743 -0.25353373

 20  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000011  0.00000000 -0.00000002 -0.00000018
                                0.11329246 -0.02682423 -0.01717065  0.31403673  0.00914660 -0.01450544 -0.29094850 -0.29302455

 21  1     9    1  |1 0>       -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.38141628 -0.03384437 -0.00826186  0.00000018 -0.00000003 -0.00000002 -0.00000393 -0.00000495

 22  1    10    1  |1 0>       -0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.04475791 -0.41549164 -0.36832488  0.00000005  0.00000031 -0.00000000 -0.00000468  0.00000250

 23  1    11    1  |1 0>        0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.40281750  0.03565210  0.00864506 -0.00000013  0.00000002  0.00000001  0.00000413  0.00000515

 24  1    12    1  |1 0>       -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.02275291 -0.35479476  0.40299381  0.00000015 -0.00000010  0.00000338 -0.00000006  0.00000007

 25  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00008634  0.00032098  0.00028808 -0.00000000 -0.00000001  0.00000000 -0.00000002  0.00000002

 26  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00015034  0.00078495  0.00010102 -0.00000000 -0.00000001 -0.00000000 -0.00000005  0.00000005

 27  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00004402 -0.00022291  0.00083200  0.00000000 -0.00000000  0.00000001  0.00000003 -0.00000003

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000022  0.00000000  0.00000001  0.00000009
                               -0.17369218  0.03097768  0.01755775  0.72103710 -0.03236341 -0.03194949  0.14019187  0.15157228

 29  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000008  0.00000000  0.00000003  0.00000024
                                0.06788970 -0.01218555 -0.00677281 -0.27875304  0.01165964  0.01296186  0.36335969  0.39785769

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000279  0.00000004 -0.00000002 -0.00000018
                               -0.02792011 -0.16184285  0.00921449  0.02829044  0.32287753  0.33047720  0.41114448 -0.37113058

 31  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000001
                               -0.00144826 -0.01039130  0.00921242  0.00007469  0.00451441  0.03805113  0.03071685 -0.02911476

 32  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000293 -0.00000004 -0.00000001 -0.00000003
                                0.01775757  0.00683058  0.16353281 -0.00034941 -0.32991374  0.31677088  0.06114291 -0.08252793

 33  1     9    1  |1 1>-       0.00000001 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.09551767  0.54657727 -0.02064765 -0.00000001 -0.00000017 -0.00000022 -0.00000635  0.00000571

 34  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00274343  0.04297403 -0.04893574  0.00000001 -0.00000003 -0.00000003 -0.00000052  0.00000066

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.05818814  0.01455584  0.55177570  0.00000001 -0.00000019  0.00000028  0.00000100 -0.00000128

 36  1    12    1  |1 1>-      -0.00000001  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.52645139 -0.09400412 -0.05303773  0.00000332 -0.00000015 -0.00000016 -0.00000005 -0.00000008

 37  1     1    1  |0 0>       -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000006  0.00000011
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000006  0.00000005
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000004
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+      -0.00000004 -0.00000000  0.00036151  0.00157542 -0.00090308 -0.00003973  0.00012443 -0.00626523
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000002 -0.00000000  0.00155327 -0.00002402  0.00058153 -0.00094831 -0.00029350 -0.00980893
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000001 -0.00000000  0.00078628 -0.00005145  0.00025714  0.00172959  0.00078955 -0.00571988
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.28174505  0.00027214  0.04540094 -0.08522795 -0.13098513 -0.00325481 -0.00111840 -0.00318710
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.37626931  0.00020686 -0.05674636  0.10660238  0.16377749  0.00417911  0.00114237 -0.00254781
                               -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00895934  0.40097987 -0.07425466 -0.02004307 -0.01306355  0.06925181 -0.17568009  0.03338030
                                0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.33694700  0.04896693  0.03850693 -0.09719665  0.07570328  0.01278151 -0.02273772 -0.00005196
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.03098896  0.41247921  0.09432842  0.05196686 -0.00171803  0.07335492 -0.16068911 -0.03267924
                               -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000017  0.00000019  0.48418581  0.16068568  0.07654733 -0.47754642 -0.15666460  0.27625927
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000001  0.00000000

 10  1    10    1  |1 1>+      -0.00000502  0.00000003 -0.19071704  0.50064936 -0.39036554 -0.10530938 -0.02198322 -0.00472304
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000065 -0.00000026  0.37572194  0.21762027 -0.02662890  0.51775276  0.26352883  0.26083229
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000001  0.00000000

 12  1    12    1  |1 1>+      -0.00000002 -0.00000000  0.00000049 -0.00000144 -0.00000105 -0.00000007  0.00000010  0.06316670
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000006 -0.00000000 -0.00041176  0.00089133  0.00126570  0.00087683 -0.00062493 -0.00085928

 14  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000003 -0.00000000  0.00113324  0.00002416 -0.00063191  0.00128086 -0.00087656  0.00695356

 15  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000002 -0.00000000 -0.00129479 -0.00084033 -0.00048922  0.00071724 -0.00072741 -0.01095585

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.32774800 -0.00009186 -0.07548243  0.19319391 -0.15252643 -0.00851996  0.00507345 -0.00011279

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.05673108  0.00093710 -0.01163815  0.02954772 -0.02292760 -0.00129389  0.00076241  0.00062504

 18  1     6    1  |1 0>       -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                                0.01824963 -0.40938508 -0.06583042 -0.03306085 -0.00802636 -0.11338561 -0.15680428 -0.03233144

 19  1     7    1  |1 0>       -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.47993962 -0.00601258 -0.04610965  0.06423234  0.10358437  0.00070093 -0.00259314 -0.00743964

 20  1     8    1  |1 0>       -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000
                                0.01114059  0.40706229 -0.09667485 -0.04805971 -0.01443685  0.10843655  0.13543769 -0.03307134

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000
                               -0.00000080 -0.00000006  0.45269564  0.17721064 -0.03450728  0.45327215 -0.29129021 -0.26174926

 22  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000726  0.00000000 -0.11447762  0.38040065  0.53922760  0.01443457  0.01215034 -0.01592798

 23  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000
                                0.00000086 -0.00000011 -0.43572542 -0.13965452  0.00305607  0.41873655 -0.36737676  0.27642711

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000010  0.00000001 -0.00000055  0.00000154 -0.00000047 -0.00000025 -0.00000022  0.01033054

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000003 -0.00000000 -0.00041596  0.00037450  0.00073077  0.00024677  0.00184532  0.00048437

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000003  0.00000000 -0.00058496  0.00148568  0.00057088 -0.00011468 -0.00087483  0.00065571

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000007  0.00000000  0.00028866 -0.00074598  0.00160310  0.00000404 -0.00055383  0.00056799

 28  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00666131  0.00336524 -0.08638944 -0.03765641 -0.00534476 -0.00080056 -0.00961201  0.05023225

 29  1     5    1  |1 1>-       0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.01848745 -0.00134101 -0.22098099 -0.09640174 -0.01354321 -0.00396381 -0.02435351 -0.01963562

 30  1     6    1  |1 1>-      -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.09977744 -0.03809065 -0.05262503  0.11731468  0.02042241  0.01612005  0.00024635  0.00210427

 31  1     7    1  |1 1>-      -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                                0.02261473  0.57532362 -0.00165287  0.00501756  0.00419640 -0.25783796  0.03214718  0.00013528

 32  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.55872871 -0.02973201 -0.00168599  0.02198196 -0.12869030  0.00854242 -0.00040544 -0.00290208

 33  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000182  0.00000001 -0.26461449  0.60223592  0.12080297 -0.01292067 -0.04930337 -0.01765244

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000
                               -0.00000060 -0.00000020 -0.08900137  0.01511051 -0.04916991  0.09149576  0.75999236  0.00055412

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000853 -0.00000002  0.00726712 -0.12453740  0.65569398  0.03335504  0.05836914 -0.02314123

 36  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000008  0.00000007  0.00000004  0.00000023 -0.00000116  0.00000014  0.83537351

 37  1     1    1  |0 0>        0.00000001  0.00000000  0.01036114 -0.01003550 -0.00077528 -0.00551440  0.00169647 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000000  0.00000000  0.00956546  0.00558211  0.00100793  0.00464733 -0.00983259  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000000 -0.00000001 -0.00196796 -0.00898083 -0.00119495  0.01242584 -0.00126247  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000006  0.00000001 -0.00537617 -0.00381871 -0.00738050 -0.00540945 -0.01071129 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000012  0.00000000 -0.00321331 -0.00385268  0.01358071 -0.00250617 -0.00510559 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42

  1  1     1    1  |1 1>+      -0.00651453  0.00935171
                               -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00387295 -0.00386890
                                0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00226379 -0.00226312
                                0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.03359011 -0.02542027
                               -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.02675013 -0.02047620
                               -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00363165  0.00064626
                               -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.02825489 -0.03715987
                                0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00026779  0.00377661
                                0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.03308564  0.00900643
                               -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.22929830 -0.30102007
                                0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00587860 -0.04031836
                               -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.66506490  0.50561266
                                0.00000001  0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000
                               -0.00897650 -0.00682424

 14  1     2    1  |1 0>       -0.00000000  0.00000000
                                0.00405737  0.00298278

 15  1     3    1  |1 0>       -0.00000000 -0.00000000
                                0.00316386  0.00257980

 16  1     4    1  |1 0>       -0.00000000 -0.00000000
                                0.00500401 -0.00641435

 17  1     5    1  |1 0>        0.00000000  0.00000000
                               -0.03248835  0.04247213

 18  1     6    1  |1 0>       -0.00000000 -0.00000000
                                0.00420324  0.00369049

 19  1     7    1  |1 0>        0.00000000  0.00000000
                               -0.03675970 -0.02806692

 20  1     8    1  |1 0>       -0.00000000 -0.00000000
                                0.00369427  0.00331365

 21  1     9    1  |1 0>       -0.00000000 -0.00000000
                               -0.01063550 -0.00404384

 22  1    10    1  |1 0>       -0.00000000 -0.00000000
                                0.30274524  0.23085286

 23  1    11    1  |1 0>        0.00000000  0.00000000
                                0.01129790  0.00432089

 24  1    12    1  |1 0>        0.00000000  0.00000000
                               -0.50763889  0.66643944

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000
                                0.00509488  0.00388178

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000
                                0.01172623  0.00068166

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00228426  0.01237310

 28  1     4    1  |1 1>-       0.00000000  0.00000000
                               -0.00263726 -0.00281206

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000
                                0.00105075  0.00107201

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000
                                0.04633416 -0.00580117

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000
                                0.00279054 -0.00281725

 32  1     8    1  |1 1>-       0.00000000  0.00000000
                               -0.00583330 -0.04632817

 33  1     9    1  |1 1>-       0.00000000  0.00000000
                               -0.37729347  0.03999686

 34  1    10    1  |1 1>-       0.00000000  0.00000000
                               -0.02697201  0.03550315

 35  1    11    1  |1 1>-       0.00000000  0.00000000
                               -0.04148037 -0.37668669

 36  1    12    1  |1 1>-       0.00000000  0.00000000
                               -0.04401117 -0.04647330

 37  1     1    1  |0 0>       -0.00000003  0.00000001
                               -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000001 -0.00000000
                               -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000002  0.00000001
                               -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000000 -0.00000001
                               -0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000000  0.00000001
                               -0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000000
                                0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    6.72%    5.56%   37.69%    0.00%    0.01%    4.72%   30.63%
  2  1     2    1  |1 1>+         8.20%    0.64%   30.59%    6.05%    7.83%    7.99%    4.58%    4.41%
  3  1     3    1  |1 1>+        24.10%    0.22%   10.41%    2.07%   21.76%   23.78%    1.70%    1.56%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          7.88%   32.07%    2.57%    3.14%    1.10%   13.92%   26.32%    7.31%
 14  1     2    1  |1 0>         18.23%   14.64%    6.79%    0.35%    2.81%   32.22%    9.63%    2.43%
 15  1     3    1  |1 0>          6.20%    0.03%   39.38%    0.97%    0.77%   10.52%    0.28%    0.04%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.02%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-        24.42%   10.34%    0.83%    1.02%   43.82%    2.68%    8.44%    2.15%
 26  1     2    1  |1 1>-         5.87%   33.61%    3.79%    3.49%   10.46%    0.73%   36.33%    0.50%
 27  1     3    1  |1 1>-         2.01%    1.69%    0.02%   45.16%    3.48%    0.18%    0.01%   42.99%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    1.15%    5.69%    0.58%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.48%    2.21%    0.01%    0.02%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.52%    4.47%    1.25%    0.42%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    4.02%    0.05%    0.30%    0.79%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.89%    0.05%    0.69%    6.12%
 42  1     6    1  |0 0>          3.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+        10.65%    0.22%    1.95%    1.79%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        25.10%    2.39%    0.44%    0.01%    0.14%    1.34%    0.26%    0.00%
  3  1     3    1  |1 1>+         8.66%    1.06%    0.09%    0.00%    0.43%    3.38%    0.77%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%   13.80%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%   13.25%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.35%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.10%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          1.10%    0.29%    1.19%    1.56%    0.63%    0.63%    0.25%    0.00%
 14  1     2    1  |1 0>          7.57%    0.58%    0.20%    1.11%    1.17%    1.67%    0.58%    0.00%
 15  1     3    1  |1 0>         37.34%    2.85%    0.10%    0.07%    0.47%    0.75%    0.20%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.02%    0.01%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%   13.20%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.12%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%   13.75%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.06%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.08%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.30%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.52%    0.08%    0.37%    0.67%    3.75%    0.11%    0.78%    0.00%
 26  1     2    1  |1 1>-         0.78%    0.03%    2.91%    0.25%    0.96%    0.06%    0.19%    0.00%
 27  1     3    1  |1 1>-         0.31%    0.46%    0.69%    2.50%    0.40%    0.01%    0.06%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   31.29%
 29  1     5    1  |1 1>-         0.02%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    4.78%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.01%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.90%
 37  1     1    1  |0 0>          0.48%    8.66%   67.21%    3.55%    1.35%   11.22%    0.00%    0.00%
 38  1     2    1  |0 0>          3.22%   36.16%    0.83%    5.23%   45.78%    3.98%    0.00%    0.00%
 39  1     3    1  |0 0>          1.27%    6.74%   20.60%    1.09%    0.87%   62.70%    0.00%    0.00%
 40  1     4    1  |0 0>          2.78%   39.90%    1.55%    6.14%   34.49%    9.92%    0.00%    0.00%
 41  1     5    1  |0 0>          0.18%    0.53%    1.81%   75.99%    9.50%    4.17%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.90%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  4  1     4    1  |1 1>+        19.97%    2.03%    0.13%   23.19%    0.02%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+        12.73%    1.34%    0.20%   36.26%    0.03%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.11%    0.15%    0.01%    7.60%   17.19%   11.81%    0.00%
  7  1     7    1  |1 1>+         2.51%   24.36%   14.70%    0.09%    0.05%    0.25%    0.17%    0.00%
  8  1     8    1  |1 1>+         0.02%    0.07%    0.01%    0.00%    7.29%   18.11%   12.28%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.03%    0.07%    0.00%    2.63%    1.30%    1.89%   15.54%
 10  1    10    1  |1 1>+         0.41%    3.98%    4.99%    0.03%    0.01%    0.04%    0.06%    0.46%
 11  1    11    1  |1 1>+         0.01%    0.03%    0.01%    0.00%    2.45%    1.42%    2.10%   17.33%
 12  1    12    1  |1 1>+         0.81%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.08%    0.73%   58.04%    0.29%    0.14%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          3.33%   31.93%    1.34%    0.01%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.07%    0.01%    0.02%    0.03%    7.40%   26.65%    3.71%    0.00%
 19  1     7    1  |1 0>         24.38%    2.56%    0.06%   14.84%    0.05%    0.01%    0.00%    0.00%
 20  1     8    1  |1 0>          0.03%    0.01%    0.02%    0.01%    7.47%   25.87%    3.59%    0.00%
 21  1     9    1  |1 0>          0.04%    0.00%    0.00%    0.05%    2.35%    0.45%    3.14%   17.57%
 22  1    10    1  |1 0>          3.96%    0.41%    0.03%    4.97%    0.10%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.04%    0.00%    0.00%    0.06%    2.63%    0.38%    2.83%   15.75%
 24  1    12    1  |1 0>          0.08%    0.81%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.01%    0.00%    0.02%    0.01%    7.90%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.12%    0.05%   51.73%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-        21.55%    5.38%    6.18%    8.67%    0.04%    0.01%    0.25%    0.00%
 31  1     7    1  |1 1>-         0.04%    0.16%    0.10%    0.00%    0.00%    1.64%   57.76%    0.00%
 32  1     8    1  |1 1>-         5.46%   21.52%    8.64%    6.27%    0.00%    0.00%    0.16%    0.00%
 33  1     9    1  |1 1>-         3.60%    0.82%    2.01%    3.04%    0.01%    0.04%    0.00%    0.22%
 34  1    10    1  |1 1>-         0.01%    0.06%    0.07%    0.00%    0.00%    6.52%    0.19%   32.86%
 35  1    11    1  |1 1>-         0.84%    3.58%    3.01%    2.05%    0.00%    0.05%    0.00%    0.24%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.02%    0.02%    0.00%    0.00%    0.01%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.02%    0.01%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.01%    0.01%    0.01%    0.00%    0.03%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.01%    0.02%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.02%    0.02%    0.00%    0.01%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.09%    1.18%    0.94%    0.08%   37.62%    0.02%    2.35%    1.59%
  5  1     5    1  |1 1>+         0.05%    0.75%    0.61%    0.05%   22.20%    0.01%    4.31%    3.01%
  6  1     6    1  |1 1>+         1.32%    0.08%    0.00%   10.54%    0.02%    0.02%    6.43%   10.51%
  7  1     7    1  |1 1>+         0.01%    1.17%    1.52%    0.02%    0.02%   18.71%   12.23%   10.63%
  8  1     8    1  |1 1>+         1.29%    0.02%    0.03%    9.66%    0.02%    0.14%    8.43%    7.84%
  9  1     9    1  |1 1>+        15.55%    1.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.05%   13.34%   17.21%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+        14.23%    0.13%    0.54%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         1.11%   15.41%   12.36%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.04%    0.05%    0.00%    0.00%    1.66%   11.23%   10.30%
 17  1     5    1  |1 0>          0.01%    1.55%    1.98%    0.11%    0.04%   58.17%    0.40%    0.35%
 18  1     6    1  |1 0>          1.22%    0.08%    0.03%    9.81%    0.02%    0.02%    8.40%    8.09%
 19  1     7    1  |1 0>          0.21%    1.37%    1.13%    0.03%   18.61%    0.01%    5.22%    6.43%
 20  1     8    1  |1 0>          1.28%    0.07%    0.03%    9.86%    0.01%    0.02%    8.47%    8.59%
 21  1     9    1  |1 0>         14.55%    0.11%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.20%   17.26%   13.57%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>         16.23%    0.13%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.05%   12.59%   16.24%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         3.02%    0.10%    0.03%   51.99%    0.10%    0.10%    1.97%    2.30%
 29  1     5    1  |1 1>-         0.46%    0.01%    0.00%    7.77%    0.01%    0.02%   13.20%   15.83%
 30  1     6    1  |1 1>-         0.08%    2.62%    0.01%    0.08%   10.42%   10.92%   16.90%   13.77%
 31  1     7    1  |1 1>-         0.00%    0.01%    0.01%    0.00%    0.00%    0.14%    0.09%    0.08%
 32  1     8    1  |1 1>-         0.03%    0.00%    2.67%    0.00%   10.88%   10.03%    0.37%    0.68%
 33  1     9    1  |1 1>-         0.91%   29.87%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.18%    0.24%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.34%    0.02%   30.45%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-        27.72%    0.88%    0.28%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         7.94%    0.00%    0.21%    0.73%    1.72%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+        14.16%    0.00%    0.32%    1.14%    2.68%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.01%   16.08%    0.55%    0.04%    0.02%    0.48%    3.09%    0.11%
  7  1     7    1  |1 1>+        11.35%    0.24%    0.15%    0.94%    0.57%    0.02%    0.05%    0.00%
  8  1     8    1  |1 1>+         0.10%   17.01%    0.89%    0.27%    0.00%    0.54%    2.58%    0.11%
  9  1     9    1  |1 1>+         0.00%    0.00%   23.44%    2.58%    0.59%   22.81%    2.45%    7.63%
 10  1    10    1  |1 1>+         0.00%    0.00%    3.64%   25.06%   15.24%    1.11%    0.05%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%   14.12%    4.74%    0.07%   26.81%    6.94%    6.80%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.40%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 16  1     4    1  |1 0>         10.74%    0.00%    0.57%    3.73%    2.33%    0.01%    0.00%    0.00%
 17  1     5    1  |1 0>          0.32%    0.00%    0.01%    0.09%    0.05%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.03%   16.76%    0.43%    0.11%    0.01%    1.29%    2.46%    0.10%
 19  1     7    1  |1 0>         23.03%    0.00%    0.21%    0.41%    1.07%    0.00%    0.00%    0.01%
 20  1     8    1  |1 0>          0.01%   16.57%    0.93%    0.23%    0.02%    1.18%    1.83%    0.11%
 21  1     9    1  |1 0>          0.00%    0.00%   20.49%    3.14%    0.12%   20.55%    8.48%    6.85%
 22  1    10    1  |1 0>          0.00%    0.00%    1.31%   14.47%   29.08%    0.02%    0.01%    0.03%
 23  1    11    1  |1 0>          0.00%    0.00%   18.99%    1.95%    0.00%   17.53%   13.50%    7.64%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.75%    0.14%    0.00%    0.00%    0.01%    0.25%
 29  1     5    1  |1 1>-         0.03%    0.00%    4.88%    0.93%    0.02%    0.00%    0.06%    0.04%
 30  1     6    1  |1 1>-         1.00%    0.15%    0.28%    1.38%    0.04%    0.03%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.05%   33.10%    0.00%    0.00%    0.00%    6.65%    0.10%    0.00%
 32  1     8    1  |1 1>-        31.22%    0.09%    0.00%    0.05%    1.66%    0.01%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    7.00%   36.27%    1.46%    0.02%    0.24%    0.03%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.79%    0.02%    0.24%    0.84%   57.76%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.01%    1.55%   42.99%    0.11%    0.34%    0.05%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   69.78%
 37  1     1    1  |0 0>          0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.02%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42

  1  1     1    1  |1 1>+         0.00%    0.01%
  2  1     2    1  |1 1>+         0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%
  4  1     4    1  |1 1>+         0.11%    0.06%
  5  1     5    1  |1 1>+         0.07%    0.04%
  6  1     6    1  |1 1>+         0.00%    0.00%
  7  1     7    1  |1 1>+         0.08%    0.14%
  8  1     8    1  |1 1>+         0.00%    0.00%
  9  1     9    1  |1 1>+         0.11%    0.01%
 10  1    10    1  |1 1>+         5.26%    9.06%
 11  1    11    1  |1 1>+         0.00%    0.16%
 12  1    12    1  |1 1>+        44.23%   25.56%
 13  1     1    1  |1 0>          0.01%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%
 17  1     5    1  |1 0>          0.11%    0.18%
 18  1     6    1  |1 0>          0.00%    0.00%
 19  1     7    1  |1 0>          0.14%    0.08%
 20  1     8    1  |1 0>          0.00%    0.00%
 21  1     9    1  |1 0>          0.01%    0.00%
 22  1    10    1  |1 0>          9.17%    5.33%
 23  1    11    1  |1 0>          0.01%    0.00%
 24  1    12    1  |1 0>         25.77%   44.41%
 25  1     1    1  |1 1>-         0.00%    0.00%
 26  1     2    1  |1 1>-         0.01%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.02%
 28  1     4    1  |1 1>-         0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%
 30  1     6    1  |1 1>-         0.21%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.21%
 33  1     9    1  |1 1>-        14.24%    0.16%
 34  1    10    1  |1 1>-         0.07%    0.13%
 35  1    11    1  |1 1>-         0.17%   14.19%
 36  1    12    1  |1 1>-         0.19%    0.22%
 37  1     1    1  |0 0>          0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%


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

              2       7      914.28       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     90013.94  85752.48    574.75   3683.89      1.91      0.05      0.61
 REAL TIME  *     90818.58 SEC
 DISK USED  *       950.64 MB (local),       11.20 GB (total)
 SF USED    *         7.50 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -213.868268048854

              CI              CI           MULTI         RHF-SCF
   -213.95119498   -213.81787671   -213.27982539   -213.37363633
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
