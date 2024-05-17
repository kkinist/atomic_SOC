
 Working directory              : /wrk/irikura/molpro.9WkbK0BGvT/
 Global scratch directory       : /wrk/irikura/molpro.9WkbK0BGvT/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.9WkbK0BGvT/

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
 
 NTRIP=11
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
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 17-Apr-24          TIME: 17:10:15  
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
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     60 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.97      0.64
 REAL TIME  *         1.78 SEC
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
   6     -213.37363625      -0.00000060     0.12D-04     0.95D-04     5     0       0.00      0.02    diag2
   7     -213.37363632      -0.00000007     0.31D-05     0.20D-04     6     0       0.01      0.03    diag2
   8     -213.37363633      -0.00000001     0.80D-06     0.12D-04     7     0       0.00      0.03    fixocc
   9     -213.37363633      -0.00000000     0.93D-07     0.15D-05     8     0       0.01      0.04    diag2
  10     -213.37363633      -0.00000000     0.15D-07     0.14D-06     0     0       0.00      0.04    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -213.373636325728
  RHF One-electron energy            -381.086680443691
  RHF Two-electron energy             167.713044117963
  RHF Kinetic energy                   82.648105638679
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.581712365660

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.62699     1  1  s    1.00568
    2.1     2.00000    -1.07683     1  1  d2-  0.84164    1  1  d2+ -0.53950
    3.1     2.00000    -1.07683     1  1  d2-  0.53912    1  1  d2+  0.84127
    4.1     2.00000    -1.07683     1  1  d1+  0.74591    1  1  d1-  0.66481
    5.1     2.00000    -1.07683     1  1  d1+ -0.66516    1  1  d1-  0.74632
    6.1     2.00000    -1.07683     1  1  d0   0.99973
    7.1     2.00000    -0.29333     1  2  s    0.97876
    1.2     2.00000    -3.81329     1  1  py   0.99986
    2.2     2.00000    -3.81329     1  1  px   0.99920
    3.2     2.00000    -3.81329     1  1  pz   0.99977
    4.2     1.00000    -0.05728     1  2  pz   0.79238
    5.2     1.00000    -0.05728     1  2  py   0.79241
    6.2     1.00000    -0.05728     1  2  px   0.79526


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
 CPU TIMES  *         1.07      0.10      0.64
 REAL TIME  *         2.29 SEC
 DISK USED  *        30.07 MB (local),      417.26 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        11.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      80 (   40   40)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            11
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.394D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.410D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.488D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.473D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.257D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 6 2 1 1 2 3   5 6 4 1 2 3 5 6 4 1   2 6 4 3 5 2 3 5 6 4   1 8121514131011 9 7
                                        2 6 4 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.334D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.658D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.368D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.871D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.787D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.106D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.377D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.377D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 3 1 2 3   2 1 7 9 5 4 6 810 6   4 5 810 9 7 3 2 1 8  10 6 9 7 5 4 3 1 2 6
                                       10 8 9 7 4 5 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
                                          0.05882   0.05882   0.05882
 Weight factors for state symmetry  2:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
 
 Number of orbital rotations:  664  ( 24 closed/active, 360 closed/virtual, 0 active/active, 280 active/virtual )
 Total number of variables:    3715
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0   -213.21809291    -213.24540747   -0.02731457    0.14279716 0.00001406 0.00000000  0.55E+00      0.46
   2    7   12    0   -213.24455385    -213.24459897   -0.00004512    0.00756511 0.00000222 0.00000000  0.23E-01      0.94
   3    7   14    0   -213.24459905    -213.24459905   -0.00000000    0.00001948 0.00000001 0.00000000  0.68E-04      1.42
   4    2    4    0   -213.24459905    -213.24459905    0.00000000    0.00000001 0.00000001 0.00000000  0.26E-07      1.60

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.62E-08)
                       Final energy:   -213.24459905
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -213.344047271323
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.74980519
 One electron energy                          -376.50060350
 Two electron energy                           163.15655623
 Virial ratio                                    3.57818187
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -213.344047271046
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.74980519
 One electron energy                          -376.50060352
 Two electron energy                           163.15655625
 Virial ratio                                    3.57818187
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -213.344047270812
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.74980520
 One electron energy                          -376.50060354
 Two electron energy                           163.15655627
 Virial ratio                                    3.57818187
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -213.165001572140
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32081527
 One electron energy                          -372.08182016
 Two electron energy                           158.91681859
 Virial ratio                                    3.58944230
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -213.165001572113
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32081527
 One electron energy                          -372.08182016
 Two electron energy                           158.91681859
 Virial ratio                                    3.58944230
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -213.165001571967
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32081526
 One electron energy                          -372.08182017
 Two electron energy                           158.91681860
 Virial ratio                                    3.58944230
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -213.165001571803
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32081526
 One electron energy                          -372.08182017
 Two electron energy                           158.91681860
 Virial ratio                                    3.58944230
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -213.165001571782
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32081526
 One electron energy                          -372.08182017
 Two electron energy                           158.91681860
 Virial ratio                                    3.58944230
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -213.157935878560
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.41916785
 One electron energy                          -372.58166493
 Two electron energy                           159.42372905
 Virial ratio                                    3.58626654
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -213.157935878332
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.41916785
 One electron energy                          -372.58166494
 Two electron energy                           159.42372906
 Virial ratio                                    3.58626654
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -213.157935878122
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.41916785
 One electron energy                          -372.58166494
 Two electron energy                           159.42372906
 Virial ratio                                    3.58626654
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -213.309417384751
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.70088671
 One electron energy                          -376.21896415
 Two electron energy                           162.90954676
 Virial ratio                                    3.57928815
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -213.309417384710
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.70088671
 One electron energy                          -376.21896415
 Two electron energy                           162.90954677
 Virial ratio                                    3.57928815
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -213.309417384368
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.70088671
 One electron energy                          -376.21896417
 Two electron energy                           162.90954679
 Virial ratio                                    3.57928815
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -213.309417384074
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.70088672
 One electron energy                          -376.21896419
 Two electron energy                           162.90954681
 Virial ratio                                    3.57928815
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -213.309417384017
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.70088672
 One electron energy                          -376.21896420
 Two electron energy                           162.90954681
 Virial ratio                                    3.57928815
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -213.280139576973
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.64957065
 One electron energy                          -375.84597630
 Two electron energy                           162.56583673
 Virial ratio                                    3.58053536
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999997
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.700063750660
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999998536
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000000002969
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.299929167641
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.000000000573
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.999999999513
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.313172356604
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000157
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999999728
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.686829141223
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.237642847345
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999999999262
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.999999999827
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.762350807343
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.773983204434
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000010
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999999864
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.226018082959
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000000003
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     2.062293401995
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000002202
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999997204
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.937720025016
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999427
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.000000000487
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.912844438962
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999999833
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000408
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.087152775818
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
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 6   4 3 5 1 2 6 4 3 5 1   2 6 4 3 5 2 4 6 3 5   1 7 911 81214151310
                                        2 4 6 5 3 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 1 2 3 3   1 2 6 5 4 810 7 9 6   4 5 810 7 9 3 2 1 6   4 5 810 7 9 3 1 2 6
                                        4 5 810 7 9 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.93672     1  1  s    1.00415
    2.1     2.00000    -1.38622     1  1  d0   1.00073
    3.1     2.00000    -1.38622     1  1  d1+  1.00073
    4.1     2.00000    -1.38622     1  1  d1-  1.00073
    5.1     2.00000    -1.38622     1  1  d2-  1.00073
    6.1     2.00000    -1.38622     1  1  d2+  1.00073
    7.1     1.95568    -0.56215     1  2  s    1.05560
    1.2     2.00000    -4.12248     1  1  pz   0.99968
    2.2     2.00000    -4.12248     1  1  px   0.99968
    3.2     2.00000    -4.12248     1  1  py   0.99968
    4.2     0.52135    -0.10171     1  2  py   1.04666
    5.2     0.52135    -0.10171     1  2  px   1.04666
    6.2     0.52135    -0.10171     1  2  pz   1.04666
    7.2     0.16008     0.05072     1  2  px  -0.47618    1  7  px   1.22712
    8.2     0.16008     0.05072     1  2  py  -0.47618    1  7  py   1.22712
    9.2     0.16008     0.05072     1  2  pz  -0.47618    1  7  pz   1.22712
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a0a000      -0.00000000     -0.00000160      0.99166862      0.00000000      0.00000001     -0.00000000      0.00000000
 2 0aa000       0.99166862     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000001
 2 aa0000       0.00000000      0.99166862      0.00000160     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2 a000a0       0.00000000      0.00000000     -0.00000000      0.78181879     -0.00011098     -0.00001639     -0.00000002
 2 0a0a00      -0.00000000      0.00000000     -0.00000000     -0.22074483      0.00002908      0.00000192      0.00000001
 2 0a00a0      -0.00000000     -0.00968099     -0.00000002      0.00001530      0.00001442      0.69813068      0.00000028
 2 0a000a       0.00968098     -0.00000000     -0.00000000      0.00000002     -0.00000001     -0.00000028      0.69813068
 2 00a0a0      -0.00000000      0.00000002     -0.00968099      0.00009964      0.69813067     -0.00001442      0.00000001
 2 00aa00      -0.00968099     -0.00000000     -0.00000000      0.00000002     -0.00000001     -0.00000028      0.69813066
 2 a0000a      -0.00000000     -0.00000002      0.00968098      0.00009964      0.69813066     -0.00001442      0.00000001
 2 a00a00       0.00000000      0.00968099      0.00000002      0.00001530      0.00001442      0.69813065      0.00000028
 2 00a00a      -0.00000000     -0.00000000     -0.00000000     -0.56107392      0.00008189      0.00001447      0.00000002
 2 0000aa       0.00000000      0.00000003     -0.01939842      0.00000000      0.00000001     -0.00000000     -0.00000000
 2 000a0a      -0.01939842     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000001
 2 000aa0       0.00000000      0.01939842      0.00000003     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0 2aa000      -0.11544737      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 0 a2a000       0.00000000      0.00000019     -0.11544737     -0.00000000     -0.00000000      0.00000000      0.00000000
 0 aa2000      -0.00000000     -0.11544737     -0.00000019      0.00000000      0.00000000      0.00000000     -0.00000000
 0 a200a0       0.00000000     -0.00000000      0.00000000     -0.08444110      0.00001199      0.00000177      0.00000000
 0 a020a0      -0.00000000     -0.00000000     -0.00000000     -0.08407414      0.00001193      0.00000176      0.00000000
 0 2a0a00      -0.00000000     -0.00000000      0.00000000      0.02306596     -0.00000303     -0.00000019     -0.00000000
 0 0a2a00       0.00000000      0.00000000     -0.00000000      0.02451395     -0.00000324     -0.00000022     -0.00000000
 0 20aa00      -0.00093531      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000003     -0.07561483
 0 a02a00      -0.00000000      0.00093531      0.00000000     -0.00000166     -0.00000156     -0.07561482     -0.00000003
 0 a2000a       0.00000000     -0.00000000      0.00093531     -0.00001079     -0.07561482      0.00000156     -0.00000000
 0 2a000a       0.00093531      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000003     -0.07561483
 0 02a0a0       0.00000000      0.00000000     -0.00093531     -0.00001079     -0.07561483      0.00000156     -0.00000000
 0 0a20a0       0.00000000     -0.00093531     -0.00000000     -0.00000166     -0.00000156     -0.07561483     -0.00000003
 0 2a00a0      -0.00000000      0.02469030      0.00000004     -0.00000164     -0.00000155     -0.07486206     -0.00000003
 0 0a200a      -0.02469030     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000003     -0.07486206
 0 20a0a0      -0.00000000     -0.00000004      0.02469030     -0.00001069     -0.07486206      0.00000155     -0.00000000
 0 02aa00       0.02469030      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000003     -0.07486206
 0 a0200a       0.00000000      0.00000004     -0.02469030     -0.00001069     -0.07486206      0.00000155     -0.00000000
 0 a20a00      -0.00000000     -0.02469030     -0.00000004     -0.00000164     -0.00000155     -0.07486206     -0.00000003
 0 20a00a       0.00000000     -0.00000000     -0.00000000      0.05992715     -0.00000875     -0.00000155     -0.00000000
 0 02a00a       0.00000000      0.00000000      0.00000000      0.06100817     -0.00000890     -0.00000157     -0.00000000
 
 Energy:     -213.34404727   -213.34404727   -213.34404727   -213.16500157   -213.16500157   -213.16500157   -213.16500157

 State:              8               9              10              11
 2 a0a000       0.00000000     -0.01880141     -0.00000045      0.00000000
 2 0aa000       0.00000000     -0.00000000     -0.00000000     -0.01880141
 2 aa0000      -0.00000000      0.00000045     -0.01880142      0.00000000
 2 a000a0      -0.19648911     -0.00000000      0.00000000     -0.00000000
 2 0a0a00       0.77531946     -0.00000000      0.00000000      0.00000000
 2 0a00a0       0.00000262      0.00001657     -0.69246988      0.00000016
 2 0a000a       0.00000000      0.00000001      0.00000016      0.69246989
 2 00a0a0       0.00000218     -0.69246989     -0.00001657      0.00000001
 2 00aa00       0.00000000     -0.00000001     -0.00000016     -0.69246990
 2 a0000a       0.00000218      0.69246990      0.00001657     -0.00000001
 2 a00a00       0.00000262     -0.00001657      0.69246991     -0.00000016
 2 00a00a      -0.57883040     -0.00000000      0.00000000     -0.00000000
 2 0000aa      -0.00000000     -0.12824635     -0.00000307      0.00000000
 2 000a0a      -0.00000000     -0.00000000     -0.00000003     -0.12824635
 2 000aa0      -0.00000000     -0.00000307      0.12824635     -0.00000003
 0 2aa000       0.00000000      0.00000000      0.00000000      0.00751736
 0 a2a000      -0.00000000      0.00751736      0.00000018     -0.00000000
 0 aa2000      -0.00000000     -0.00000018      0.00751736     -0.00000000
 0 a200a0       0.02044582      0.00000000     -0.00000000      0.00000000
 0 a020a0       0.02190595      0.00000000     -0.00000000      0.00000000
 0 2a0a00      -0.08376331      0.00000000     -0.00000000     -0.00000000
 0 0a2a00      -0.08335105      0.00000000     -0.00000000     -0.00000000
 0 20aa00      -0.00000000      0.00000000      0.00000002      0.07562020
 0 a02a00      -0.00000028      0.00000181     -0.07562020      0.00000002
 0 a2000a      -0.00000024     -0.07562020     -0.00000181      0.00000000
 0 2a000a      -0.00000000     -0.00000000     -0.00000002     -0.07562019
 0 02a0a0      -0.00000024      0.07562019      0.00000181     -0.00000000
 0 0a20a0      -0.00000028     -0.00000181      0.07562019     -0.00000002
 0 2a00a0      -0.00000028     -0.00000174      0.07250366     -0.00000002
 0 0a200a      -0.00000000     -0.00000000     -0.00000002     -0.07250366
 0 20a0a0      -0.00000023      0.07250366      0.00000174     -0.00000000
 0 02aa00      -0.00000000      0.00000000      0.00000002      0.07250366
 0 a0200a      -0.00000023     -0.07250366     -0.00000174      0.00000000
 0 a20a00      -0.00000028      0.00000174     -0.07250366      0.00000002
 0 20a00a       0.06290523      0.00000000     -0.00000000      0.00000000
 0 02a00a       0.06185737      0.00000000     -0.00000000      0.00000000
 
 Energy:     -213.16500157   -213.15793588   -213.15793588   -213.15793588
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 200000      -0.19176760     -0.00000050      0.00000052      0.00000915      0.78361883      0.55701676
 2 020000       0.77451763      0.00000201     -0.00000091     -0.00000325     -0.22573381      0.55701674
 2 0ab000      -0.00000181      0.69865941      0.00000000     -0.00000000      0.00000000      0.00000000
 2 0ba000       0.00000181     -0.69865941     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2 b0a000      -0.00000060     -0.00000000     -0.00000505     -0.69865941      0.00000801     -0.00000000
 2 a0b000       0.00000060      0.00000000      0.00000505      0.69865941     -0.00000801      0.00000000
 2 ab0000       0.00000074      0.00000000      0.69865941     -0.00000505     -0.00000028     -0.00000000
 2 ba0000      -0.00000074     -0.00000000     -0.69865941      0.00000505      0.00000028      0.00000000
 2 002000      -0.58275001     -0.00000151      0.00000039     -0.00000590     -0.55788504      0.55701675
 0 202000       0.08992957      0.00000023     -0.00000011     -0.00000038     -0.02621005     -0.12449201
 0 220000      -0.06766336     -0.00000018      0.00000005     -0.00000069     -0.06477627     -0.12449201
 0 022000      -0.02226622     -0.00000006      0.00000006      0.00000106      0.09098632     -0.12449201
 0 2ba000      -0.00000021      0.08112164      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 2ab000       0.00000021     -0.08112164     -0.00000000      0.00000000      0.00000000      0.00000000
 0 a2b000      -0.00000007     -0.00000000     -0.00000059     -0.08112164      0.00000093     -0.00000000
 0 b2a000       0.00000007      0.00000000      0.00000059      0.08112164     -0.00000093      0.00000000
 0 ba2000       0.00000009      0.00000000      0.08112164     -0.00000059     -0.00000003     -0.00000000
 0 ab2000      -0.00000009     -0.00000000     -0.08112164      0.00000059      0.00000003      0.00000000
 2 a000b0      -0.01075187     -0.00000003      0.00000003      0.00000051      0.04393531      0.05667239
 2 b000a0       0.01075187      0.00000003     -0.00000003     -0.00000051     -0.04393531     -0.05667239
 2 0a0b00       0.04342503      0.00000011     -0.00000005     -0.00000018     -0.01265626      0.05667239
 2 0b0a00      -0.04342503     -0.00000011      0.00000005      0.00000018      0.01265626     -0.05667239
 2 00a00b      -0.03267315     -0.00000008      0.00000002     -0.00000033     -0.03127904      0.05667239
 2 00b00a       0.03267315      0.00000008     -0.00000002      0.00000033      0.03127904     -0.05667239
 
 Energy:     -213.30941738   -213.30941738   -213.30941738   -213.30941738   -213.30941738   -213.28013958
 


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
 CPU TIMES  *         2.69      1.61      0.10      0.64
 REAL TIME  *         4.17 SEC
 DISK USED  *        37.16 MB (local),      502.25 MB (total)
 SF USED    *        19.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3440473   2.0
    -213.3440473   2.0
    -213.3440473   2.0
    -213.1650016   6.0
    -213.1650016   6.0
    -213.1650016   6.0
    -213.1650016   6.0
    -213.1650016   6.0
    -213.1579359   2.0
    -213.1579359   2.0
    -213.1579359   2.0
    -213.3094174   6.0
    -213.3094174   6.0
    -213.3094174   6.0
    -213.3094174   6.0
    -213.3094174   6.0
    -213.2801396  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 11  Roots:   1   2   3   4   5   6   7   8   9  10  11
 Number of reference states: 11  Roots:   1   2   3   4   5   6   7   8   9  10  11

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
     1      -213.34404727
     2      -213.34404727
     3      -213.34404727
     4      -213.16500157
     5      -213.16500157
     6      -213.16500157
     7      -213.16500157
     8      -213.16500157
     9      -213.15793588
    10      -213.15793588
    11      -213.15793588

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2546D-06

 Number of blocks in overlap matrix:  1041   Smallest eigenvalue:  0.25D-06
 Number of N-2 electron functions:    2340
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       3541800
 Number of doubly external configurations:       3747120
 Total number of contracted configurations:      7327326
 Total number of uncontracted configurations:   77703006

 Diagonal Coupling coefficients finished.               Storage:  24116837 words, CPU-Time:     68.49 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1299136 words, CPU-time:      0.17 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34404727     0.00000000    -0.83241206  0.49D-01  0.10D+00    83.64
    1     2     2     1.00000000     0.00000000  -213.34404727     0.00000000    -0.83253962  0.50D-01  0.10D+00    83.64
    1     3     3     1.00000000     0.00000000  -213.34404727     0.00000000    -0.83256762  0.50D-01  0.10D+00    83.64
    1     4     4     1.00000000     0.00000000  -213.16500157     0.00000000    -0.79999463  0.40D-01  0.94D-01    83.64
    1     5     5     1.00000000     0.00000000  -213.16500157     0.00000000    -0.79974301  0.40D-01  0.94D-01    83.64
    1     6     6     1.00000000     0.00000000  -213.16500157     0.00000000    -0.79981157  0.40D-01  0.94D-01    83.64
    1     7     7     1.00000000     0.00000000  -213.16500157     0.00000000    -0.79971821  0.40D-01  0.94D-01    83.64
    1     8     8     1.00000000     0.00000000  -213.16500157     0.00000000    -0.80002628  0.40D-01  0.94D-01    83.64
    1     9     9     1.00000000     0.00000000  -213.15793588     0.00000000    -0.80628648  0.45D-01  0.95D-01    83.64
    1    10    10     1.00000000     0.00000000  -213.15793588     0.00000000    -0.80643464  0.45D-01  0.95D-01    83.64
    1    11    11     1.00000000     0.00000000  -213.15793588     0.00000000    -0.80626071  0.45D-01  0.95D-01    83.64
    2     1     1     1.09417422    -0.65498097  -213.99902824    -0.65498097    -0.01876444  0.36D-02  0.14D-02   416.87
    2     2     2     1.09431686    -0.65488844  -213.99893571    -0.65488844    -0.01886372  0.37D-02  0.14D-02   416.87
    2     3     3     1.09441489    -0.65473609  -213.99878336    -0.65473609    -0.01902862  0.38D-02  0.14D-02   416.87
    2     4     4     1.08639054    -0.64487421  -213.80987579    -0.64487421    -0.01526868  0.25D-02  0.10D-02   416.87
    2     5     5     1.08629895    -0.64485510  -213.80985667    -0.64485510    -0.01529383  0.25D-02  0.11D-02   416.87
    2     6     6     1.08632459    -0.64483685  -213.80983842    -0.64483685    -0.01531357  0.25D-02  0.11D-02   416.87
    2     7     7     1.08637511    -0.64481251  -213.80981409    -0.64481251    -0.01533905  0.25D-02  0.11D-02   416.87
    2     8     8     1.08650170    -0.64480764  -213.80980921    -0.64480764    -0.01533872  0.25D-02  0.10D-02   416.87
    2     9     9     1.08879149    -0.64562477  -213.80356065    -0.64562477    -0.01654903  0.33D-02  0.11D-02   416.87
    2    10    10     1.08881877    -0.64560482  -213.80354070    -0.64560482    -0.01657167  0.33D-02  0.11D-02   416.87
    2    11    11     1.08889701    -0.64558127  -213.80351715    -0.64558127    -0.01659696  0.33D-02  0.11D-02   416.87
    3     1     1     1.08340090    -0.67283004  -214.01687732    -0.01784907    -0.00046870  0.68D-04  0.51D-04   749.03
    3     2     2     1.08340232    -0.67282590  -214.01687317    -0.01793746    -0.00047269  0.69D-04  0.51D-04   749.03
    3     3     3     1.08336357    -0.67282512  -214.01687239    -0.01808903    -0.00047348  0.69D-04  0.50D-04   749.03
    3     4     4     1.07978965    -0.65955143  -213.82455301    -0.01467722    -0.00031766  0.35D-04  0.32D-04   749.03
    3     5     5     1.07978854    -0.65955086  -213.82455243    -0.01469575    -0.00031829  0.35D-04  0.32D-04   749.03
    3     6     6     1.07978849    -0.65954974  -213.82455131    -0.01471289    -0.00031935  0.35D-04  0.32D-04   749.03
    3     7     7     1.07981395    -0.65954937  -213.82455094    -0.01473686    -0.00031986  0.35D-04  0.33D-04   749.03
    3     8     8     1.07981162    -0.65954668  -213.82454825    -0.01473904    -0.00032253  0.36D-04  0.33D-04   749.03
    3     9     9     1.08032389    -0.66146905  -213.81940493    -0.01584429    -0.00037411  0.52D-04  0.38D-04   749.03
    3    10    10     1.08032251    -0.66146836  -213.81940424    -0.01586354    -0.00037485  0.52D-04  0.38D-04   749.03
    3    11    11     1.08033040    -0.66146668  -213.81940255    -0.01588541    -0.00037643  0.52D-04  0.39D-04   749.03
    4     1     1     1.08323857    -0.67331219  -214.01735946    -0.00048215    -0.00001976  0.32D-05  0.24D-05  1082.54
    4     2     2     1.08323988    -0.67331216  -214.01735944    -0.00048627    -0.00001980  0.32D-05  0.24D-05  1082.54
    4     3     3     1.08323892    -0.67331203  -214.01735930    -0.00048691    -0.00001992  0.33D-05  0.24D-05  1082.54
    4     4     4     1.08024145    -0.65987947  -213.82488105    -0.00032804    -0.00001266  0.26D-05  0.13D-05  1082.54
    4     5     5     1.08024108    -0.65987947  -213.82488104    -0.00032862    -0.00001267  0.26D-05  0.13D-05  1082.54
    4     6     6     1.08023975    -0.65987943  -213.82488100    -0.00032969    -0.00001270  0.26D-05  0.13D-05  1082.54
    4     7     7     1.08023900    -0.65987939  -213.82488097    -0.00033002    -0.00001288  0.26D-05  0.14D-05  1082.54
    4     8     8     1.08023635    -0.65987931  -213.82488089    -0.00033263    -0.00001295  0.26D-05  0.14D-05  1082.54
    4     9     9     1.08061582    -0.66185444  -213.81979031    -0.00038538    -0.00001587  0.34D-05  0.17D-05  1082.54
    4    10    10     1.08061540    -0.66185442  -213.81979030    -0.00038606    -0.00001589  0.34D-05  0.17D-05  1082.54
    4    11    11     1.08061431    -0.66185436  -213.81979024    -0.00038768    -0.00001594  0.34D-05  0.17D-05  1082.54
    5     1     1     1.08330941    -0.67333379  -214.01738107    -0.00002160    -0.00000078  0.74D-07  0.11D-06  1415.13
    5     2     2     1.08330864    -0.67333379  -214.01738106    -0.00002163    -0.00000078  0.76D-07  0.11D-06  1415.13
    5     3     3     1.08330834    -0.67333379  -214.01738106    -0.00002176    -0.00000079  0.76D-07  0.11D-06  1415.13
    5     4     4     1.08036508    -0.65989381  -213.82489538    -0.00001433    -0.00000051  0.52D-07  0.88D-07  1415.13
    5     5     5     1.08036534    -0.65989381  -213.82489538    -0.00001434    -0.00000051  0.52D-07  0.88D-07  1415.13
    5     6     6     1.08036587    -0.65989367  -213.82489524    -0.00001424    -0.00000050  0.52D-07  0.86D-07  1415.13
    5     7     7     1.08036577    -0.65989367  -213.82489524    -0.00001427    -0.00000050  0.52D-07  0.86D-07  1415.13
    5     8     8     1.08036583    -0.65989367  -213.82489524    -0.00001435    -0.00000050  0.52D-07  0.86D-07  1415.13
    5     9     9     1.08070316    -0.66187177  -213.81980765    -0.00001733    -0.00000071  0.97D-07  0.10D-06  1415.13
    5    10    10     1.08070261    -0.66187177  -213.81980765    -0.00001735    -0.00000071  0.97D-07  0.11D-06  1415.13
    5    11    11     1.08070312    -0.66187177  -213.81980765    -0.00001741    -0.00000071  0.97D-07  0.11D-06  1415.13
    6     1     1     1.08329893    -0.67333464  -214.01738191    -0.00000085    -0.00000004  0.42D-08  0.59D-08  1748.30
    6     2     2     1.08329892    -0.67333464  -214.01738191    -0.00000085    -0.00000004  0.43D-08  0.59D-08  1748.30
    6     3     3     1.08329882    -0.67333464  -214.01738191    -0.00000085    -0.00000004  0.43D-08  0.59D-08  1748.30
    6     4     4     1.08037218    -0.65989439  -213.82489596    -0.00000058    -0.00000003  0.30D-08  0.70D-08  1748.30
    6     5     5     1.08037218    -0.65989439  -213.82489596    -0.00000058    -0.00000003  0.30D-08  0.71D-08  1748.30
    6     6     6     1.08037245    -0.65989424  -213.82489582    -0.00000058    -0.00000003  0.31D-08  0.68D-08  1748.30
    6     7     7     1.08037245    -0.65989424  -213.82489582    -0.00000058    -0.00000003  0.31D-08  0.68D-08  1748.30
    6     8     8     1.08037244    -0.65989424  -213.82489582    -0.00000058    -0.00000003  0.31D-08  0.68D-08  1748.30
    6     9     9     1.08070256    -0.66187254  -213.81980841    -0.00000077    -0.00000005  0.50D-08  0.10D-07  1748.30
    6    10    10     1.08070254    -0.66187254  -213.81980841    -0.00000077    -0.00000005  0.50D-08  0.10D-07  1748.30
    6    11    11     1.08070256    -0.66187254  -213.81980841    -0.00000077    -0.00000005  0.50D-08  0.10D-07  1748.30
    7     1     1     1.08330523    -0.67333468  -214.01738195    -0.00000004    -0.00000000  0.16D-09  0.37D-09  2026.54
    7     2     2     1.08330527    -0.67333468  -214.01738195    -0.00000004    -0.00000000  0.16D-09  0.36D-09  2026.54
    7     3     3     1.08330524    -0.67333468  -214.01738195    -0.00000004    -0.00000000  0.16D-09  0.37D-09  2026.54
    7     4     4     1.08037815    -0.65989443  -213.82489600    -0.00000004    -0.00000000  0.23D-09  0.65D-09  2026.54
    7     5     5     1.08037813    -0.65989443  -213.82489600    -0.00000004    -0.00000000  0.23D-09  0.65D-09  2026.54
    7     6     6     1.08037245    -0.65989424  -213.82489582    -0.00000000    -0.00000003  0.31D-08  0.68D-08  2026.54
    7     7     7     1.08037245    -0.65989424  -213.82489582    -0.00000000    -0.00000003  0.31D-08  0.68D-08  2026.54
    7     8     8     1.08037244    -0.65989424  -213.82489582    -0.00000000    -0.00000003  0.31D-08  0.68D-08  2026.54
    7     9     9     1.08070828    -0.66187259  -213.81980847    -0.00000006    -0.00000000  0.33D-09  0.80D-09  2026.54
    7    10    10     1.08070831    -0.66187259  -213.81980847    -0.00000006    -0.00000000  0.33D-09  0.80D-09  2026.54
    7    11    11     1.08070829    -0.66187259  -213.81980847    -0.00000006    -0.00000000  0.33D-09  0.80D-09  2026.54


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   1.0%  12.3%
 P   0.4%  46.6%  29.4%

 Initialization:   3.4%
 Other:            5.0%

 Total CPU:     2026.5 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0/000          -0.0484472  -0.0865744   0.9488375  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                            0.0200707  -0.0003321  -0.0079354
 22222222220//000           0.9379602   0.1625757   0.0627256  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                            0.0067055   0.0122658   0.0164468
 2222222222//0000          -0.1673864   0.9360602   0.0768619   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                            0.0042563  -0.0177581   0.0115085
 222222222200/00/           0.0000000   0.0000000   0.0000000  -0.0587289   0.7750037  -0.0020794  -0.0008139  -0.0026095
                            0.0000000  -0.0000000  -0.0000001
 2222222222/000/0          -0.0000000   0.0000000   0.0000000   0.7005370  -0.3366350   0.0023319   0.0026512   0.0008596
                            0.0000001   0.0000000   0.0000000
 22222222220/0/00          -0.0000000  -0.0000000  -0.0000000  -0.6418088  -0.4383648  -0.0002525  -0.0018373   0.0017498
                           -0.0000001  -0.0000000   0.0000001
 222222222200/0/0          -0.0008690  -0.0015528   0.0170188  -0.0010587  -0.0007675  -0.3891908   0.5454244  -0.0641116
                           -0.6199532   0.0102584   0.2451115
 2222222222/0000/           0.0008690   0.0015528  -0.0170188  -0.0010589  -0.0007676  -0.3891908   0.5454245  -0.0641116
                            0.6199532  -0.0102585  -0.2451115
 22222222220/00/0          -0.0030023   0.0167896   0.0013786  -0.0017811   0.0027311   0.3923822   0.3311474   0.4352428
                           -0.1314701   0.5485219  -0.3554802
 2222222222/00/00           0.0030023  -0.0167896  -0.0013786  -0.0017810   0.0027311   0.3923822   0.3311474   0.4352428
                            0.1314701  -0.5485219   0.3554802
 22222222220/000/          -0.0168237  -0.0029160  -0.0011251   0.0017492   0.0005919  -0.3842280  -0.2142834   0.5094285
                            0.2071243   0.3788738   0.5080168
 222222222200//00           0.0168237   0.0029160   0.0011251   0.0017493   0.0005918  -0.3842279  -0.2142834   0.5094285
                           -0.2071243  -0.3788738  -0.5080168
 22222222220000//           0.0007059   0.0012614  -0.0138246   0.0000000   0.0000000  -0.0000001   0.0000001  -0.0000000
                           -0.1213702   0.0020083   0.0479863
 2222222222000//0          -0.0024388   0.0136384   0.0011199   0.0000000   0.0000000  -0.0000002  -0.0000001  -0.0000002
                            0.0257383  -0.1073859   0.0695935
 2222222222000/0/          -0.0136661  -0.0023687  -0.0009139   0.0000000  -0.0000000  -0.0000001  -0.0000000   0.0000001
                           -0.0405494  -0.0741733  -0.0994561
 2222220222/2/000           0.0050527   0.0090291  -0.0989570  -0.0000000  -0.0000000   0.0000000  -0.0000001   0.0000000
                            0.0026243  -0.0000434  -0.0010376
 22222202222//000          -0.0978226  -0.0169555  -0.0065418  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                            0.0008768   0.0016038   0.0021505
 2222220222//2000           0.0174572  -0.0976245  -0.0080161   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                            0.0005565  -0.0023219   0.0015048
 222222022220/00/           0.0000000  -0.0000000  -0.0000000   0.0048204  -0.0742638   0.0001975   0.0000752   0.0002504
                           -0.0000000   0.0000000   0.0000000
 222222022202/00/          -0.0000000   0.0000000   0.0000000   0.0064256  -0.0741422   0.0002007   0.0000806   0.0002493
                           -0.0000000   0.0000000   0.0000000
 2222220222/020/0           0.0000000   0.0000000  -0.0000000  -0.0674217   0.0315058  -0.0002222  -0.0002545  -0.0000797
                           -0.0000000  -0.0000000   0.0000000
 2222220222/200/0          -0.0000000  -0.0000000   0.0000000  -0.0667244   0.0329566  -0.0002244  -0.0002533  -0.0000849
                           -0.0000000  -0.0000000  -0.0000000
 22222202220/2/00          -0.0000000  -0.0000000   0.0000000   0.0619041   0.0413068   0.0000268   0.0001780  -0.0001655
                            0.0000000  -0.0000000  -0.0000000
 22222202222/0/00           0.0000000  -0.0000000   0.0000000   0.0609962   0.0426359   0.0000215   0.0001738  -0.0001696
                            0.0000000   0.0000000  -0.0000000
 2222220222/2000/          -0.0001796  -0.0003209   0.0035170   0.0001020   0.0000740   0.0374965  -0.0525488   0.0061768
                           -0.0601902   0.0009960   0.0237975
 222222022202/0/0           0.0001796   0.0003209  -0.0035170   0.0001020   0.0000739   0.0374965  -0.0525488   0.0061768
                            0.0601902  -0.0009960  -0.0237975
 222222022220/0/0          -0.0009177  -0.0016400   0.0179737   0.0001007   0.0000730   0.0370309  -0.0518963   0.0061001
                            0.0582381  -0.0009637  -0.0230257
 2222220222/0200/           0.0009177   0.0016400  -0.0179737   0.0001007   0.0000730   0.0370310  -0.0518964   0.0061001
                           -0.0582381   0.0009637   0.0230257
 22222202220/20/0           0.0006204  -0.0034696  -0.0002849   0.0001716  -0.0002631  -0.0378040  -0.0319043  -0.0419334
                            0.0127642  -0.0532551   0.0345130
 2222220222/02/00          -0.0006204   0.0034696   0.0002849   0.0001716  -0.0002631  -0.0378040  -0.0319043  -0.0419334
                           -0.0127642   0.0532551  -0.0345130
 22222202222/00/0          -0.0031708   0.0177317   0.0014560   0.0001695  -0.0002598  -0.0373346  -0.0315082  -0.0414128
                            0.0123502  -0.0515279   0.0333937
 2222220222/20/00           0.0031708  -0.0177317  -0.0014560   0.0001695  -0.0002598  -0.0373346  -0.0315082  -0.0414128
                           -0.0123502   0.0515279  -0.0333937

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.943484   -0.168372   -0.048732   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.001952   -0.006743
            -0.037783
 2           0.163533    0.941572   -0.087084   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.003487    0.037707
            -0.006549
 3           0.063095    0.077314    0.954425    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.038221    0.003096
            -0.002527
 4          -0.000000    0.000000   -0.000000    0.739929   -0.001512   -0.002544    0.002499   -0.613904   -0.000000   -0.000000
            -0.000000
 5           0.000000    0.000000   -0.000000   -0.613899   -0.001096    0.003901    0.000845   -0.739933   -0.000000   -0.000000
             0.000000
 6          -0.000000   -0.000000   -0.000000    0.003115   -0.555916    0.560474   -0.548827    0.000567   -0.000000   -0.000000
            -0.000000
 7          -0.000000   -0.000000    0.000000    0.003005    0.779078    0.473007   -0.306080   -0.001503    0.000000   -0.000000
            -0.000000
 8           0.000000   -0.000000   -0.000000    0.001786   -0.091576    0.621696    0.727662    0.002763   -0.000000   -0.000000
             0.000000
 9           0.012334    0.007829    0.036919    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.893101   -0.189395
             0.298382
 10          0.022562   -0.032665   -0.000611    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.014778    0.790197
             0.545803
 11          0.030253    0.021169   -0.014597    0.000000    0.000000    0.000000    0.000000    0.000000   -0.353106   -0.512102
             0.731846

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960397    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000138    0.000436
             0.000418
 2           0.000000    0.960397   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000100   -0.000439
             0.000425
 3           0.000000   -0.000000    0.960397   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000595   -0.000027
            -0.000169
 4          -0.000000    0.000000   -0.000000    0.961452   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.961452   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.961454    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000
 7           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.961454   -0.000000    0.000000   -0.000000
            -0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.961454    0.000000    0.000000
             0.000000
 9           0.000138    0.000100    0.000595    0.000000    0.000000   -0.000000    0.000000    0.000000    0.961305    0.000000
            -0.000000
 10          0.000436   -0.000439   -0.000027    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.961305
             0.000000
 11          0.000418    0.000425   -0.000169   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.961305


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.94348360 (fixed)   0.96048710 (relaxed)   0.96039668 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00080129   -0.00143142   -0.60080206
 Singles      0.01728731   -0.05617545   -0.06254838
 Pairs        0.06608467    0.03367476   -0.00998425
 Total        1.08417327   -0.02393210   -0.67333468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34373961
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02348214
 One electron energy                 -375.87969754
 Two electron energy                  161.86231559
 Virial quotient                       -2.57779337
 Correlation energy                    -0.67364235
 !MRCI STATE 1.1 Energy              -214.017381954326

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07408463 (Davidson, fixed reference)
 Cluster corrected energies          -214.07394714 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07408463 (Davidson, rotated reference)

 Cluster corrected energies          -214.07205888 (Pople, fixed reference)
 Cluster corrected energies          -214.07191696 (Pople, relaxed reference)
 Cluster corrected energies          -214.07205888 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.94157240 (fixed)   0.96048708 (relaxed)   0.96039667 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00080129   -0.00143142   -0.57512535
 Singles      0.01728734   -0.05617547   -0.06254839
 Pairs        0.06608468    0.00583681   -0.03566094
 Total        1.08417331   -0.05177008   -0.67333468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34373961
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02348089
 One electron energy                 -375.87969666
 Two electron energy                  161.86231470
 Virial quotient                       -2.57779341
 Correlation energy                    -0.67364235
 !MRCI STATE 2.1 Energy              -214.017381954210

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07408466 (Davidson, fixed reference)
 Cluster corrected energies          -214.07394717 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07408466 (Davidson, rotated reference)

 Cluster corrected energies          -214.07205891 (Pople, fixed reference)
 Cluster corrected energies          -214.07191699 (Pople, relaxed reference)
 Cluster corrected energies          -214.07205891 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95442486 (fixed)   0.96048709 (relaxed)   0.96039668 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00080129   -0.00143142   -0.57181888
 Singles      0.01728732   -0.05617546   -0.06254838
 Pairs        0.06608467    0.00225198   -0.03896743
 Total        1.08417328   -0.05535489   -0.67333468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34373960
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02348185
 One electron energy                 -375.87969750
 Two electron energy                  161.86231555
 Virial quotient                       -2.57779338
 Correlation energy                    -0.67364235
 !MRCI STATE 3.1 Energy              -214.017381954129

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07408464 (Davidson, fixed reference)
 Cluster corrected energies          -214.07394715 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07408464 (Davidson, rotated reference)

 Cluster corrected energies          -214.07205888 (Pople, fixed reference)
 Cluster corrected energies          -214.07191697 (Pople, relaxed reference)
 Cluster corrected energies          -214.07205888 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.73992949 (fixed)   0.96159800 (relaxed)   0.96145162 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131182   -0.00229626   -0.55676103
 Singles      0.01829805   -0.05845858   -0.06519756
 Pairs        0.06218554    0.00000002   -0.03793583
 Total        1.08179541   -0.06075482   -0.65989443
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16500157
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80756831
 One electron energy                 -371.90631927
 Two electron energy                  158.08142327
 Virial quotient                       -2.58219026
 Correlation energy                    -0.65989443
 !MRCI STATE 4.1 Energy              -213.824895999924

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87887233 (Davidson, fixed reference)
 Cluster corrected energies          -213.87865500 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87887233 (Davidson, rotated reference)

 Cluster corrected energies          -213.87684030 (Pople, fixed reference)
 Cluster corrected energies          -213.87661688 (Pople, relaxed reference)
 Cluster corrected energies          -213.87684030 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.73993273 (fixed)   0.96159801 (relaxed)   0.96145162 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131182   -0.00229626   -0.55676097
 Singles      0.01829803   -0.05845858   -0.06519755
 Pairs        0.06218554   -0.00000006   -0.03793591
 Total        1.08179539   -0.06075490   -0.65989443
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16500157
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80756792
 One electron energy                 -371.90631840
 Two electron energy                  158.08142240
 Virial quotient                       -2.58219027
 Correlation energy                    -0.65989443
 !MRCI STATE 5.1 Energy              -213.824895999577

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87887232 (Davidson, fixed reference)
 Cluster corrected energies          -213.87865499 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87887232 (Davidson, rotated reference)

 Cluster corrected energies          -213.87684029 (Pople, fixed reference)
 Cluster corrected energies          -213.87661686 (Pople, relaxed reference)
 Cluster corrected energies          -213.87684029 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.56047415 (fixed)   0.96160055 (relaxed)   0.96145420 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131171   -0.00229621   -0.55677415
 Singles      0.01829253   -0.05844736   -0.06519325
 Pairs        0.06218534    0.00000001   -0.03792684
 Total        1.08178958   -0.06074356   -0.65989424
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16500157
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80772345
 One electron energy                 -371.90649366
 Two electron energy                  158.08159785
 Virial quotient                       -2.58218542
 Correlation energy                    -0.65989424
 !MRCI STATE 6.1 Energy              -213.824895816521

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87886829 (Davidson, fixed reference)
 Cluster corrected energies          -213.87865102 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87886829 (Davidson, rotated reference)

 Cluster corrected energies          -213.87683615 (Pople, fixed reference)
 Cluster corrected energies          -213.87661279 (Pople, relaxed reference)
 Cluster corrected energies          -213.87683615 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.77907788 (fixed)   0.96160055 (relaxed)   0.96145420 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131171   -0.00229621   -0.55677415
 Singles      0.01829253   -0.05844736   -0.06519324
 Pairs        0.06218535    0.00000001   -0.03792685
 Total        1.08178959   -0.06074357   -0.65989424
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16500157
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80772330
 One electron energy                 -371.90649323
 Two electron energy                  158.08159741
 Virial quotient                       -2.58218542
 Correlation energy                    -0.65989424
 !MRCI STATE 7.1 Energy              -213.824895816345

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87886829 (Davidson, fixed reference)
 Cluster corrected energies          -213.87865102 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87886829 (Davidson, rotated reference)

 Cluster corrected energies          -213.87683615 (Pople, fixed reference)
 Cluster corrected energies          -213.87661279 (Pople, relaxed reference)
 Cluster corrected energies          -213.87683615 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.72766172 (fixed)   0.96160055 (relaxed)   0.96145421 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131171   -0.00229621   -0.55677416
 Singles      0.01829253   -0.05844736   -0.06519325
 Pairs        0.06218533    0.00000001   -0.03792684
 Total        1.08178957   -0.06074356   -0.65989424
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16500157
 Nuclear energy                         0.00000000
 Kinetic energy                        82.80772367
 One electron energy                 -371.90649414
 Two electron energy                  158.08159832
 Virial quotient                       -2.58218541
 Correlation energy                    -0.65989424
 !MRCI STATE 8.1 Energy              -213.824895815476

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87886829 (Davidson, fixed reference)
 Cluster corrected energies          -213.87865101 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87886829 (Davidson, rotated reference)

 Cluster corrected energies          -213.87683614 (Pople, fixed reference)
 Cluster corrected energies          -213.87661278 (Pople, relaxed reference)
 Cluster corrected energies          -213.87683614 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.89310055 (fixed)   0.96147066 (relaxed)   0.96130476 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131181   -0.00221863   -0.38594896
 Singles      0.01834452   -0.05845821   -0.06524035
 Pairs        0.06246964   -0.18663724   -0.21068328
 Total        1.08212596   -0.24731408   -0.66187259
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15824354
 Nuclear energy                         0.00000000
 Kinetic energy                        82.84253246
 One electron energy                 -372.13955550
 Two electron energy                  158.31974703
 Virial quotient                       -2.58103902
 Correlation energy                    -0.66156493
 !MRCI STATE 9.1 Energy              -213.819808470912

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87414013 (Davidson, fixed reference)
 Cluster corrected energies          -213.87389309 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87414013 (Davidson, rotated reference)

 Cluster corrected energies          -213.87210921 (Pople, fixed reference)
 Cluster corrected energies          -213.87185511 (Pople, relaxed reference)
 Cluster corrected energies          -213.87210921 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.79019707 (fixed)   0.96147065 (relaxed)   0.96130475 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131181   -0.00221863   -0.24293291
 Singles      0.01834454   -0.05845822   -0.06524036
 Pairs        0.06246963   -0.34139860   -0.35369932
 Total        1.08212599   -0.40207546   -0.66187259
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15824354
 Nuclear energy                         0.00000000
 Kinetic energy                        82.84253263
 One electron energy                 -372.13955613
 Two electron energy                  158.31974766
 Virial quotient                       -2.58103901
 Correlation energy                    -0.66156493
 !MRCI STATE 10.1 Energy             -213.819808470636

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87414014 (Davidson, fixed reference)
 Cluster corrected energies          -213.87389311 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87414014 (Davidson, rotated reference)

 Cluster corrected energies          -213.87210922 (Pople, fixed reference)
 Cluster corrected energies          -213.87185513 (Pople, relaxed reference)
 Cluster corrected energies          -213.87210922 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.73184565 (fixed)   0.96147066 (relaxed)   0.96130475 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131181   -0.00221863   -0.13539533
 Singles      0.01834452   -0.05845821   -0.06524035
 Pairs        0.06246963   -0.45776782   -0.46123691
 Total        1.08212597   -0.51844467   -0.66187259
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15824354
 Nuclear energy                         0.00000000
 Kinetic energy                        82.84253255
 One electron energy                 -372.13955570
 Two electron energy                  158.31974723
 Virial quotient                       -2.58103901
 Correlation energy                    -0.66156493
 !MRCI STATE 11.1 Energy             -213.819808470404

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87414013 (Davidson, fixed reference)
 Cluster corrected energies          -213.87389309 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87414013 (Davidson, rotated reference)

 Cluster corrected energies          -213.87210921 (Pople, fixed reference)
 Cluster corrected energies          -213.87185511 (Pople, relaxed reference)
 Cluster corrected energies          -213.87210921 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      630.98       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3049.96   3047.27      1.61      0.10      0.64
 REAL TIME  *      3128.85 SEC
 DISK USED  *       667.35 MB (local),        7.88 GB (total)
 SF USED    *         6.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.07408463  AU                              
 SETTING HLSDIAG(2)     =      -214.07408466  AU                              
 SETTING HLSDIAG(3)     =      -214.07408464  AU                              
 SETTING HLSDIAG(4)     =      -213.87887233  AU                              
 SETTING HLSDIAG(5)     =      -213.87887232  AU                              
 SETTING HLSDIAG(6)     =      -213.87886829  AU                              
 SETTING HLSDIAG(7)     =      -213.87886829  AU                              
 SETTING HLSDIAG(8)     =      -213.87886829  AU                              
 SETTING HLSDIAG(9)     =      -213.87414013  AU                              
 SETTING HLSDIAG(10)    =      -213.87414014  AU                              
 SETTING HLSDIAG(11)    =      -213.87414013  AU                              


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
     1      -213.30941738
     2      -213.30941738
     3      -213.30941738
     4      -213.30941738
     5      -213.30941738
     6      -213.28013958

 Number of blocks in overlap matrix:   584   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:    1291
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2060800
 Number of doubly external configurations:       2068040
 Total number of contracted configurations:      4152990
 Total number of uncontracted configurations:   45449790

 Diagonal Coupling coefficients finished.               Storage:  12993917 words, CPU-Time:     12.09 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    976772 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.30941738     0.00000000    -0.83586464  0.55D-01  0.10D+00    17.64
    1     2     2     1.00000000     0.00000000  -213.30941738     0.00000000    -0.83661172  0.56D-01  0.10D+00    17.64
    1     3     3     1.00000000     0.00000000  -213.30941738    -0.00000000    -0.83625578  0.56D-01  0.10D+00    17.64
    1     4     4     1.00000000     0.00000000  -213.30941738    -0.00000000    -0.83655511  0.56D-01  0.10D+00    17.64
    1     5     5     1.00000000     0.00000000  -213.30941738    -0.00000000    -0.83589112  0.55D-01  0.10D+00    17.64
    1     6     6     1.00000000     0.00000000  -213.28013958    -0.00000000    -0.81137017  0.27D-01  0.11D+00    17.64
    2     1     1     1.09667958    -0.65931133  -213.96872871    -0.65931133    -0.01923807  0.37D-02  0.15D-02   100.20
    2     2     2     1.09666423    -0.65927827  -213.96869565    -0.65927827    -0.01926613  0.37D-02  0.15D-02   100.20
    2     3     3     1.09695426    -0.65904399  -213.96846137    -0.65904399    -0.01952416  0.39D-02  0.15D-02   100.20
    2     4     4     1.09718425    -0.65893898  -213.96835637    -0.65893898    -0.01964973  0.39D-02  0.15D-02   100.20
    2     5     5     1.09723680    -0.65889053  -213.96830792    -0.65889053    -0.01970078  0.40D-02  0.15D-02   100.20
    2     6     6     1.08551036    -0.65527104  -213.93541062    -0.65527104    -0.01582958  0.27D-02  0.14D-02   100.20
    3     1     1     1.08665069    -0.67743126  -213.98684865    -0.01811994    -0.00052909  0.75D-04  0.66D-04   181.85
    3     2     2     1.08663943    -0.67742645  -213.98684384    -0.01814818    -0.00053274  0.75D-04  0.67D-04   181.85
    3     3     3     1.08663542    -0.67742101  -213.98683839    -0.01837702    -0.00053896  0.77D-04  0.68D-04   181.85
    3     4     4     1.08666477    -0.67741709  -213.98683448    -0.01847811    -0.00054344  0.78D-04  0.68D-04   181.85
    3     5     5     1.08665499    -0.67741436  -213.98683174    -0.01852383    -0.00054597  0.79D-04  0.68D-04   181.85
    3     6     6     1.08223672    -0.67067553  -213.95081510    -0.01540449    -0.00045243  0.41D-04  0.77D-04   181.85
    4     1     1     1.08674484    -0.67798813  -213.98740551    -0.00055687    -0.00003012  0.39D-05  0.52D-05   263.93
    4     2     2     1.08673548    -0.67798767  -213.98740506    -0.00056122    -0.00003044  0.38D-05  0.53D-05   263.93
    4     3     3     1.08674147    -0.67798761  -213.98740500    -0.00056660    -0.00003053  0.39D-05  0.53D-05   263.93
    4     4     4     1.08673692    -0.67798756  -213.98740494    -0.00057047    -0.00003055  0.39D-05  0.53D-05   263.93
    4     5     5     1.08673738    -0.67798739  -213.98740477    -0.00057303    -0.00003069  0.39D-05  0.53D-05   263.93
    4     6     6     1.08364704    -0.67117121  -213.95131079    -0.00049568    -0.00003471  0.27D-05  0.75D-05   263.93
    5     1     1     1.08685659    -0.67802458  -213.98744196    -0.00003645    -0.00000206  0.98D-07  0.46D-06   345.59
    5     2     2     1.08685414    -0.67802452  -213.98744190    -0.00003684    -0.00000210  0.98D-07  0.47D-06   345.59
    5     3     3     1.08685397    -0.67802451  -213.98744189    -0.00003690    -0.00000210  0.10D-06  0.47D-06   345.59
    5     4     4     1.08685307    -0.67802449  -213.98744188    -0.00003694    -0.00000211  0.10D-06  0.48D-06   345.59
    5     5     5     1.08685323    -0.67802448  -213.98744186    -0.00003709    -0.00000212  0.11D-06  0.48D-06   345.59
    5     6     6     1.08421072    -0.67121422  -213.95135380    -0.00004301    -0.00000308  0.18D-06  0.66D-06   345.59
    6     1     1     1.08686308    -0.67802720  -213.98744458    -0.00000262    -0.00000023  0.26D-07  0.42D-07   426.80
    6     2     2     1.08686259    -0.67802719  -213.98744457    -0.00000267    -0.00000023  0.27D-07  0.43D-07   426.80
    6     3     3     1.08686261    -0.67802719  -213.98744457    -0.00000268    -0.00000023  0.28D-07  0.44D-07   426.80
    6     4     4     1.08686260    -0.67802719  -213.98744457    -0.00000269    -0.00000024  0.28D-07  0.44D-07   426.80
    6     5     5     1.08686245    -0.67802718  -213.98744457    -0.00000271    -0.00000024  0.29D-07  0.44D-07   426.80
    6     6     6     1.08426247    -0.67121820  -213.95135778    -0.00000398    -0.00000032  0.35D-07  0.53D-07   426.80
    7     1     1     1.08689012    -0.67802747  -213.98744486    -0.00000027    -0.00000003  0.24D-08  0.43D-08   508.54
    7     2     2     1.08689011    -0.67802747  -213.98744485    -0.00000028    -0.00000002  0.24D-08  0.43D-08   508.54
    7     3     3     1.08689013    -0.67802747  -213.98744485    -0.00000028    -0.00000003  0.24D-08  0.44D-08   508.54
    7     4     4     1.08689016    -0.67802747  -213.98744485    -0.00000028    -0.00000003  0.25D-08  0.43D-08   508.54
    7     5     5     1.08689012    -0.67802747  -213.98744485    -0.00000028    -0.00000003  0.24D-08  0.44D-08   508.54
    7     6     6     1.08428458    -0.67121857  -213.95135815    -0.00000037    -0.00000003  0.37D-08  0.56D-08   508.54


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.9%
 S   1.6%  18.2%
 P   0.6%  48.1%  20.1%

 Initialization:   2.4%
 Other:            6.0%

 Total CPU:      508.5 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222200000           0.1897831  -0.1487822   0.0345491   0.7164855  -0.1706771   0.5381497
 2222222222/0\000           0.4388875  -0.2584844   0.6844274  -0.1066090   0.4043533   0.0000000
 2222222222/\0000           0.3866653   0.6282828   0.2787414  -0.1089295  -0.5185873   0.0000000
 2222222222020000           0.2667887  -0.2960691  -0.2667642  -0.5823495  -0.1808381   0.5381497
 2222222222002000          -0.4565717   0.4448513   0.2322150  -0.1341360   0.3515151   0.5381497
 22222222220/\000           0.4949349   0.3653838  -0.4799231   0.0950698   0.5337735   0.0000000
 2222220222220000          -0.0474779   0.0462591   0.0241475  -0.0139484   0.0365533  -0.1083378
 2222220222022000           0.0197353  -0.0154717   0.0035926   0.0745056  -0.0177484  -0.1083378
 2222220222202000           0.0277429  -0.0307877  -0.0277402  -0.0605571  -0.0188050  -0.1083377
 2222220222/2\000          -0.0456388   0.0268792  -0.0711719   0.0110860  -0.0420477   0.0000000
 22222222220/0\00           0.0168816  -0.0187343  -0.0168800  -0.0368494  -0.0114429   0.0698240
 2222222222/000\0           0.0120089  -0.0094145   0.0021862   0.0453372  -0.0108000   0.0698240
 222222222200/00\          -0.0288906   0.0281489   0.0146939  -0.0084877   0.0222429   0.0698240
 2222220222/\2000          -0.0402083  -0.0653334  -0.0289856   0.0113273   0.0539265  -0.0000000
 22222202222/\000          -0.0514670  -0.0379953   0.0499060  -0.0098861  -0.0555058  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.445466    0.499332    0.390100    0.442786    0.350491   -0.000000
 2          -0.469682    0.368630    0.633864   -0.260781   -0.304262   -0.000000
 3          -0.355906   -0.484186    0.281218    0.690507   -0.043187   -0.000000
 4          -0.521111    0.095914   -0.109897   -0.107556    0.783870    0.000000
 5          -0.318727    0.538515   -0.523194    0.407945   -0.295156   -0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.959691

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958569   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.958569    0.000000    0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.958569    0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.958569    0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.958569   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.959691


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.49933155 (fixed)   0.95879205 (relaxed)   0.95856899 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00130782   -0.00191936   -0.56809620
 Singles      0.02013837   -0.06064856   -0.06826633
 Pairs        0.06686539    0.00000002   -0.04166495
 Total        1.08831158   -0.06256790   -0.67802747
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30941738
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98540007
 One electron energy                 -375.56090084
 Two electron energy                  161.57345598
 Virial quotient                       -2.57861557
 Correlation energy                    -0.67802747
 !MRCI STATE 1.1 Energy              -213.987444855757

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04732253 (Davidson, fixed reference)
 Cluster corrected energies          -214.04697923 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04732253 (Davidson, rotated reference)

 Cluster corrected energies          -214.04607470 (Pople, fixed reference)
 Cluster corrected energies          -214.04571307 (Pople, relaxed reference)
 Cluster corrected energies          -214.04607470 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.63386401 (fixed)   0.95879205 (relaxed)   0.95856900 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00130782   -0.00191936   -0.56809620
 Singles      0.02013834   -0.06064853   -0.06826631
 Pairs        0.06686540   -0.00000000   -0.04166496
 Total        1.08831156   -0.06256790   -0.67802747
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30941738
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98539932
 One electron energy                 -375.56089950
 Two electron energy                  161.57345465
 Virial quotient                       -2.57861559
 Correlation energy                    -0.67802747
 !MRCI STATE 2.1 Energy              -213.987444854237

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04732252 (Davidson, fixed reference)
 Cluster corrected energies          -214.04697922 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04732252 (Davidson, rotated reference)

 Cluster corrected energies          -214.04607469 (Pople, fixed reference)
 Cluster corrected energies          -214.04571306 (Pople, relaxed reference)
 Cluster corrected energies          -214.04607469 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.69050746 (fixed)   0.95879204 (relaxed)   0.95856899 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00130782   -0.00191937   -0.56809614
 Singles      0.02013841   -0.06064858   -0.06826635
 Pairs        0.06686535   -0.00000001   -0.04166498
 Total        1.08831159   -0.06256796   -0.67802747
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30941738
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98539718
 One electron energy                 -375.56089671
 Two electron energy                  161.57345186
 Virial quotient                       -2.57861566
 Correlation energy                    -0.67802747
 !MRCI STATE 3.1 Energy              -213.987444853618

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04732254 (Davidson, fixed reference)
 Cluster corrected energies          -214.04697924 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04732254 (Davidson, rotated reference)

 Cluster corrected energies          -214.04607470 (Pople, fixed reference)
 Cluster corrected energies          -214.04571308 (Pople, relaxed reference)
 Cluster corrected energies          -214.04607470 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.78387012 (fixed)   0.95879203 (relaxed)   0.95856897 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00130781   -0.00191936   -0.56809613
 Singles      0.02013832   -0.06064850   -0.06826630
 Pairs        0.06686548   -0.00000008   -0.04166504
 Total        1.08831161   -0.06256794   -0.67802747
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30941738
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98541110
 One electron energy                 -375.56091617
 Two electron energy                  161.57347132
 Virial quotient                       -2.57861523
 Correlation energy                    -0.67802747
 !MRCI STATE 4.1 Energy              -213.987444853339

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04732255 (Davidson, fixed reference)
 Cluster corrected energies          -214.04697926 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04732255 (Davidson, rotated reference)

 Cluster corrected energies          -214.04607472 (Pople, fixed reference)
 Cluster corrected energies          -214.04571310 (Pople, relaxed reference)
 Cluster corrected energies          -214.04607472 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.53851524 (fixed)   0.95879205 (relaxed)   0.95856899 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00130782   -0.00191937   -0.56809618
 Singles      0.02013838   -0.06064856   -0.06826633
 Pairs        0.06686537    0.00000001   -0.04166496
 Total        1.08831157   -0.06256792   -0.67802747
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30941738
 Nuclear energy                         0.00000000
 Kinetic energy                        82.98539775
 One electron energy                 -375.56089731
 Two electron energy                  161.57345246
 Virial quotient                       -2.57861564
 Correlation energy                    -0.67802747
 !MRCI STATE 5.1 Energy              -213.987444851410

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04732252 (Davidson, fixed reference)
 Cluster corrected energies          -214.04697923 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04732252 (Davidson, rotated reference)

 Cluster corrected energies          -214.04607469 (Pople, fixed reference)
 Cluster corrected energies          -214.04571307 (Pople, relaxed reference)
 Cluster corrected energies          -214.04607469 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95969121 (fixed)   0.95998712 (relaxed)   0.95969121 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00136794   -0.00172845   -0.00243757
 Singles      0.01128754   -0.04430536   -0.04777892
 Pairs        0.07311234   -0.62518476   -0.62100208
 Total        1.08576782   -0.67121857   -0.67121857
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.28013958
 Nuclear energy                         0.00000000
 Kinetic energy                        82.96694512
 One electron energy                 -375.25362435
 Two electron energy                  161.30226621
 Virial quotient                       -2.57875420
 Correlation energy                    -0.67121857
 !MRCI STATE 6.1 Energy              -213.951358147012

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00892710 (Davidson, fixed reference)
 Cluster corrected energies          -214.00847788 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00892710 (Davidson, rotated reference)

 Cluster corrected energies          -214.00760377 (Pople, fixed reference)
 Cluster corrected energies          -214.00713269 (Pople, relaxed reference)
 Cluster corrected energies          -214.00760377 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      825.87       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3626.77    576.80   3047.27      1.61      0.10      0.64
 REAL TIME  *      3723.62 SEC
 DISK USED  *       862.24 MB (local),       10.16 GB (total)
 SF USED    *         6.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(12)    =      -214.04732253  AU                              
 SETTING HLSDIAG(13)    =      -214.04732252  AU                              
 SETTING HLSDIAG(14)    =      -214.04732254  AU                              
 SETTING HLSDIAG(15)    =      -214.04732255  AU                              
 SETTING HLSDIAG(16)    =      -214.04732252  AU                              
 SETTING HLSDIAG(17)    =      -214.00892710  AU                              


         HLSDIAG
    -214.0740846
    -214.0740847
    -214.0740846
    -213.8788723
    -213.8788723
    -213.8788683
    -213.8788683
    -213.8788683
    -213.8741401
    -213.8741401
    -213.8741401
    -214.0473225
    -214.0473225
    -214.0473225
    -214.0473226
    -214.0473225
    -214.0089271
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  11

 Original energies:   -214.017382   -214.017382   -214.017382   -213.824896   -213.824896   -213.824896   -213.824896   -213.824896
                      -213.819808   -213.819808   -213.819808
 Replaced energies:   -214.074085   -214.074085   -214.074085   -213.878872   -213.878872   -213.878868   -213.878868   -213.878868
                      -213.874140   -213.874140   -213.874140

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -213.987445   -213.987445   -213.987445   -213.987445   -213.987445   -213.951358
 Replaced energies:   -214.047323   -214.047323   -214.047323   -214.047323   -214.047323   -214.008927



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.07408466

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      88.95   -1083.33      -4.74      69.29     203.64    -266.35      18.60     275.01       4.06

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -88.95      -0.00    -193.72      29.22    -385.37      52.32     -36.85     -16.60      55.20      14.47

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1083.33     193.72       0.00       3.32     -31.32    -180.63    -126.16     259.04     -73.29    -167.43

    4   4.1  1.0  1.0       0.00       0.00       0.00   42844.15       0.00       0.00       0.00       0.00       0.00       0.00
                            4.74     -29.22      -3.32      -0.00       5.92     811.97     682.73     898.14     -10.73      37.85

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42844.16       0.00       0.00       0.00       0.00       0.00
                          -69.29     385.37      31.32      -5.92      -0.00      62.21      51.56      67.58     120.52    -505.77

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42845.04       0.00       0.00       0.00       0.00
                         -203.64     -52.32     180.63    -811.97     -62.21      -0.00     449.32    -340.65     187.06    -178.66

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42845.04       0.00       0.00       0.00
                          266.35      36.85     126.16    -682.73     -51.56    -449.32      -0.00     409.79     292.16     243.63

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42845.04       0.00       0.00
                          -18.60      16.60    -259.04    -898.14     -67.58     340.65    -409.79       0.00    -391.72     -20.97

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43882.75       0.00
                         -275.01     -55.20      73.29      10.73    -120.52    -187.06    -292.16     391.72       0.00     393.73

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43882.75
                           -4.06     -14.47     167.43     -37.85     505.77     178.66    -243.63      20.97    -393.73       0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           95.45      -1.92     231.25      24.95    -327.27     347.95    -266.67    -108.64    -607.55    -145.62

   12   1.1  1.0  0.0      -0.00     -51.33     133.05     246.88    -118.52      32.44     -27.34      12.26     -32.02      -8.17
                            0.00    -776.49     -70.85      12.42       7.05    -162.42    -130.12    -121.36      51.94    -148.29

   13   2.1  1.0  0.0      51.33      -0.00    -767.59      42.35     -20.74    -123.95     202.73      -8.34     194.52     -18.77
                          776.49      -0.00      39.65      20.37      13.88     111.16      55.19    -205.78     -56.71    -145.91

   14   3.1  1.0  0.0    -133.05     767.59      -0.00      17.11      -8.93    -151.05    -102.22    -156.97     -25.34     170.84
                           70.85     -39.65       0.00    -228.78    -156.34       1.76      -2.27     -24.34      -2.52     -20.88

   15   4.1  1.0  0.0    -246.88     -42.35     -17.11       0.00      -1.94    -244.91    -135.24     322.50    -122.80    -223.61
                          -12.42     -20.37     228.78      -0.00       1.92     321.44    -450.28      54.76     334.40      -6.91

   16   5.1  1.0  0.0     118.52      20.74       8.93       1.94       0.00    -506.32    -284.73     672.23      60.13     106.85
                           -7.05     -13.88     156.34      -1.92      -0.00    -469.24     660.40     -78.76     229.02      -3.18

   17   6.1  1.0  0.0     -32.44     123.95     151.05     244.91     506.32      -0.00    -372.17    -159.74     247.14    -183.62
                          162.42    -111.16      -1.76    -321.44     469.24      -0.00     -51.03    -400.54      25.99     302.19

   18   7.1  1.0  0.0      27.34    -202.73     102.22     135.24     284.73     372.17       0.00     280.89     111.86     247.84
                          130.12     -55.19       2.27     450.28    -660.40      51.03       0.00    -282.68      34.94     204.29

   19   8.1  1.0  0.0     -12.26       8.34     156.97    -322.50    -672.23     159.74    -280.89      -0.00     233.80     -33.59
                          121.36     205.78      24.34     -54.76      78.76     400.54     282.68       0.00     131.19     -96.28

   20   9.1  1.0  0.0      32.02    -194.52      25.34     122.80     -60.13    -247.14    -111.86    -233.80      -0.00    -397.88
                          -51.94      56.71       2.52    -334.40    -229.02     -25.99     -34.94    -131.19      -0.00     191.97

   21  10.1  1.0  0.0       8.17      18.77    -170.84     223.61    -106.85     183.62    -247.84      33.59     397.88      -0.00
                          148.29     145.91      20.88       6.91       3.18    -302.19    -204.29      96.28    -191.97      -0.00

   22  11.1  1.0  0.0     -19.15      65.31     117.08     298.52    -143.45     -34.46     232.39      70.90    -296.73     162.22
                         -137.57     137.33       5.51     132.50      88.99     -52.71     -77.02    -338.52       8.03     485.55

   23   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.1  0.0  0.0     164.59     407.64    -264.26     125.69     259.22    -309.81     -66.20     131.06      31.51      33.67
                         -249.05    -466.85     247.04    -143.80     210.12    -302.80     108.20     -33.96     -22.12     -30.19

   35   2.1  0.0  0.0    -103.31    -185.27    -525.65      90.82     191.48     111.89     282.36    -200.22     116.43     -17.08
                         -424.28    -340.78    -388.30      85.98    -124.21     -24.60    -308.06      93.27     109.12       8.31

   36   3.1  0.0  0.0     -46.14     562.03    -174.44    -121.10    -252.81     -45.40      32.90    -291.00      18.12      88.25
                         -270.26     364.73    -282.85    -224.67     329.63      80.83     -24.05     158.40      56.96      90.98

   37   4.1  0.0  0.0     804.51      46.38     132.60      23.45      49.87     141.62      48.34    -116.69     -65.65    -109.99
                          131.99       0.02    -653.24      34.43     -51.77    -200.22     280.28     -75.06     124.76     -25.39

   38   5.1  0.0  0.0    -266.68     245.92     424.39     134.52     279.48     143.29    -110.18    -228.51     -80.93      79.41
                          491.36    -328.48    -209.83    -132.36     193.79     119.07    -203.10    -194.77      30.24    -122.61

   39   6.1  0.0  0.0   -1214.38    -210.49     -81.21      -0.00       0.00       0.00       0.00      -0.00      65.40     119.62
                           62.72     112.09   -1228.47      -0.00      -0.00       0.00      -0.00       0.00     195.74      -3.24


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00      -0.00      51.33    -133.05    -246.88     118.52     -32.44      27.34     -12.26      32.02
                          -95.45      -0.00    -776.49     -70.85      12.42       7.05    -162.42    -130.12    -121.36      51.94

    2   2.1  1.0  1.0       0.00     -51.33      -0.00     767.59     -42.35      20.74     123.95    -202.73       8.34    -194.52
                            1.92     776.49       0.00      39.65      20.37      13.88     111.16      55.19    -205.78     -56.71

    3   3.1  1.0  1.0       0.00     133.05    -767.59      -0.00     -17.11       8.93     151.05     102.22     156.97      25.34
                         -231.25      70.85     -39.65      -0.00    -228.78    -156.34       1.76      -2.27     -24.34      -2.52

    4   4.1  1.0  1.0       0.00     246.88      42.35      17.11       0.00       1.94     244.91     135.24    -322.50     122.80
                          -24.95     -12.42     -20.37     228.78       0.00       1.92     321.44    -450.28      54.76     334.40

    5   5.1  1.0  1.0       0.00    -118.52     -20.74      -8.93      -1.94       0.00     506.32     284.73    -672.23     -60.13
                          327.27      -7.05     -13.88     156.34      -1.92       0.00    -469.24     660.40     -78.76     229.02

    6   6.1  1.0  1.0       0.00      32.44    -123.95    -151.05    -244.91    -506.32      -0.00     372.17     159.74    -247.14
                         -347.95     162.42    -111.16      -1.76    -321.44     469.24       0.00     -51.03    -400.54      25.99

    7   7.1  1.0  1.0       0.00     -27.34     202.73    -102.22    -135.24    -284.73    -372.17       0.00    -280.89    -111.86
                          266.67     130.12     -55.19       2.27     450.28    -660.40      51.03      -0.00    -282.68      34.94

    8   8.1  1.0  1.0       0.00      12.26      -8.34    -156.97     322.50     672.23    -159.74     280.89      -0.00    -233.80
                          108.64     121.36     205.78      24.34     -54.76      78.76     400.54     282.68      -0.00     131.19

    9   9.1  1.0  1.0       0.00     -32.02     194.52     -25.34    -122.80      60.13     247.14     111.86     233.80      -0.00
                          607.55     -51.94      56.71       2.52    -334.40    -229.02     -25.99     -34.94    -131.19       0.00

   10  10.1  1.0  1.0       0.00      -8.17     -18.77     170.84    -223.61     106.85    -183.62     247.84     -33.59    -397.88
                          145.62     148.29     145.91      20.88       6.91       3.18    -302.19    -204.29      96.28    -191.97

   11  11.1  1.0  1.0   43882.75      19.15     -65.31    -117.08    -298.52     143.45      34.46    -232.39     -70.90     296.73
                            0.00    -137.57     137.33       5.51     132.50      88.99     -52.71     -77.02    -338.52       8.03

   12   1.1  1.0  0.0      19.15       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          137.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   2.1  1.0  0.0     -65.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -137.33      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   3.1  1.0  0.0    -117.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.51      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   4.1  1.0  0.0    -298.52       0.00       0.00       0.00   42844.15       0.00       0.00       0.00       0.00       0.00
                         -132.50      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   5.1  1.0  0.0     143.45       0.00       0.00       0.00       0.00   42844.16       0.00       0.00       0.00       0.00
                          -88.99      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   6.1  1.0  0.0      34.46       0.00       0.00       0.00       0.00       0.00   42845.04       0.00       0.00       0.00
                           52.71      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   7.1  1.0  0.0    -232.39       0.00       0.00       0.00       0.00       0.00       0.00   42845.04       0.00       0.00
                           77.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   8.1  1.0  0.0     -70.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42845.04       0.00
                          338.52      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   9.1  1.0  0.0     296.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43882.75
                           -8.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21  10.1  1.0  0.0    -162.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -485.55      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  11.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   1.1  1.0 -1.0       0.00      -0.00     -51.33     133.05     246.88    -118.52      32.44     -27.34      12.26     -32.02
                           -0.00       0.00    -776.49     -70.85      12.42       7.05    -162.42    -130.12    -121.36      51.94

   24   2.1  1.0 -1.0       0.00      51.33      -0.00    -767.59      42.35     -20.74    -123.95     202.73      -8.34     194.52
                           -0.00     776.49      -0.00      39.65      20.37      13.88     111.16      55.19    -205.78     -56.71

   25   3.1  1.0 -1.0       0.00    -133.05     767.59      -0.00      17.11      -8.93    -151.05    -102.22    -156.97     -25.34
                           -0.00      70.85     -39.65       0.00    -228.78    -156.34       1.76      -2.27     -24.34      -2.52

   26   4.1  1.0 -1.0       0.00    -246.88     -42.35     -17.11       0.00      -1.94    -244.91    -135.24     322.50    -122.80
                           -0.00     -12.42     -20.37     228.78      -0.00       1.92     321.44    -450.28      54.76     334.40

   27   5.1  1.0 -1.0       0.00     118.52      20.74       8.93       1.94       0.00    -506.32    -284.73     672.23      60.13
                           -0.00      -7.05     -13.88     156.34      -1.92      -0.00    -469.24     660.40     -78.76     229.02

   28   6.1  1.0 -1.0       0.00     -32.44     123.95     151.05     244.91     506.32      -0.00    -372.17    -159.74     247.14
                           -0.00     162.42    -111.16      -1.76    -321.44     469.24      -0.00     -51.03    -400.54      25.99

   29   7.1  1.0 -1.0       0.00      27.34    -202.73     102.22     135.24     284.73     372.17       0.00     280.89     111.86
                           -0.00     130.12     -55.19       2.27     450.28    -660.40      51.03       0.00    -282.68      34.94

   30   8.1  1.0 -1.0       0.00     -12.26       8.34     156.97    -322.50    -672.23     159.74    -280.89      -0.00     233.80
                           -0.00     121.36     205.78      24.34     -54.76      78.76     400.54     282.68       0.00     131.19

   31   9.1  1.0 -1.0       0.00      32.02    -194.52      25.34     122.80     -60.13    -247.14    -111.86    -233.80      -0.00
                           -0.00     -51.94      56.71       2.52    -334.40    -229.02     -25.99     -34.94    -131.19      -0.00

   32  10.1  1.0 -1.0       0.00       8.17      18.77    -170.84     223.61    -106.85     183.62    -247.84      33.59     397.88
                           -0.00     148.29     145.91      20.88       6.91       3.18    -302.19    -204.29      96.28    -191.97

   33  11.1  1.0 -1.0       0.00     -19.15      65.31     117.08     298.52    -143.45     -34.46     232.39      70.90    -296.73
                           -0.00    -137.57     137.33       5.51     132.50      88.99     -52.71     -77.02    -338.52       8.03

   34   1.1  0.0  0.0     -96.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          115.87     642.39    -579.18    -580.95    -316.40     -23.84     -12.07    -245.64     127.32     106.05

   35   2.1  0.0  0.0      11.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           86.36    -389.95     683.50    -371.63    -515.86     -38.65     196.63     -47.53     -10.41      69.57

   36   3.1  0.0  0.0     -83.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -30.28     666.05     445.57     618.55    -228.79     -16.60    -173.18     155.87     307.89    -170.08

   37   4.1  0.0  0.0    -112.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -55.69     -75.18    -220.55    -131.70      87.34       9.85     488.46     354.43     459.22      37.35

   38   5.1  0.0  0.0      26.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -34.00     380.33     682.05    -523.26     426.33      32.67      36.29    -226.62     150.39      64.09

   39   6.1  0.0  0.0     160.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -77.39     306.48   -1713.92    -140.73       0.00       0.00       0.00       0.00       0.00      58.70


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       8.17     -19.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -148.29     137.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0      18.77      65.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -145.91    -137.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0    -170.84     117.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.88      -5.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0     223.61     298.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.91    -132.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0    -106.85    -143.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.18     -88.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0     183.62     -34.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          302.19      52.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0    -247.84     232.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          204.29      77.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0      33.59      70.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -96.28     338.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0     397.88    -296.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          191.97      -8.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0      -0.00     162.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -485.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0    -162.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          485.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   1.1  1.0  0.0       0.00       0.00      -0.00      51.33    -133.05    -246.88     118.52     -32.44      27.34     -12.26
                            0.00       0.00      -0.00    -776.49     -70.85      12.42       7.05    -162.42    -130.12    -121.36

   13   2.1  1.0  0.0       0.00       0.00     -51.33      -0.00     767.59     -42.35      20.74     123.95    -202.73       8.34
                            0.00       0.00     776.49       0.00      39.65      20.37      13.88     111.16      55.19    -205.78

   14   3.1  1.0  0.0       0.00       0.00     133.05    -767.59      -0.00     -17.11       8.93     151.05     102.22     156.97
                            0.00       0.00      70.85     -39.65      -0.00    -228.78    -156.34       1.76      -2.27     -24.34

   15   4.1  1.0  0.0       0.00       0.00     246.88      42.35      17.11       0.00       1.94     244.91     135.24    -322.50
                            0.00       0.00     -12.42     -20.37     228.78       0.00       1.92     321.44    -450.28      54.76

   16   5.1  1.0  0.0       0.00       0.00    -118.52     -20.74      -8.93      -1.94       0.00     506.32     284.73    -672.23
                            0.00       0.00      -7.05     -13.88     156.34      -1.92       0.00    -469.24     660.40     -78.76

   17   6.1  1.0  0.0       0.00       0.00      32.44    -123.95    -151.05    -244.91    -506.32      -0.00     372.17     159.74
                            0.00       0.00     162.42    -111.16      -1.76    -321.44     469.24       0.00     -51.03    -400.54

   18   7.1  1.0  0.0       0.00       0.00     -27.34     202.73    -102.22    -135.24    -284.73    -372.17       0.00    -280.89
                            0.00       0.00     130.12     -55.19       2.27     450.28    -660.40      51.03      -0.00    -282.68

   19   8.1  1.0  0.0       0.00       0.00      12.26      -8.34    -156.97     322.50     672.23    -159.74     280.89      -0.00
                            0.00       0.00     121.36     205.78      24.34     -54.76      78.76     400.54     282.68      -0.00

   20   9.1  1.0  0.0       0.00       0.00     -32.02     194.52     -25.34    -122.80      60.13     247.14     111.86     233.80
                            0.00       0.00     -51.94      56.71       2.52    -334.40    -229.02     -25.99     -34.94    -131.19

   21  10.1  1.0  0.0   43882.75       0.00      -8.17     -18.77     170.84    -223.61     106.85    -183.62     247.84     -33.59
                            0.00       0.00     148.29     145.91      20.88       6.91       3.18    -302.19    -204.29      96.28

   22  11.1  1.0  0.0       0.00   43882.75      19.15     -65.31    -117.08    -298.52     143.45      34.46    -232.39     -70.90
                           -0.00       0.00    -137.57     137.33       5.51     132.50      88.99     -52.71     -77.02    -338.52

   23   1.1  1.0 -1.0      -8.17      19.15       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -148.29     137.57      -0.00     -88.95    1083.33       4.74     -69.29    -203.64     266.35     -18.60

   24   2.1  1.0 -1.0     -18.77     -65.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -145.91    -137.33      88.95       0.00     193.72     -29.22     385.37     -52.32      36.85      16.60

   25   3.1  1.0 -1.0     170.84    -117.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.88      -5.51   -1083.33    -193.72      -0.00      -3.32      31.32     180.63     126.16    -259.04

   26   4.1  1.0 -1.0    -223.61    -298.52       0.00       0.00       0.00   42844.15       0.00       0.00       0.00       0.00
                           -6.91    -132.50      -4.74      29.22       3.32       0.00      -5.92    -811.97    -682.73    -898.14

   27   5.1  1.0 -1.0     106.85     143.45       0.00       0.00       0.00       0.00   42844.16       0.00       0.00       0.00
                           -3.18     -88.99      69.29    -385.37     -31.32       5.92       0.00     -62.21     -51.56     -67.58

   28   6.1  1.0 -1.0    -183.62      34.46       0.00       0.00       0.00       0.00       0.00   42845.04       0.00       0.00
                          302.19      52.71     203.64      52.32    -180.63     811.97      62.21       0.00    -449.32     340.65

   29   7.1  1.0 -1.0     247.84    -232.39       0.00       0.00       0.00       0.00       0.00       0.00   42845.04       0.00
                          204.29      77.02    -266.35     -36.85    -126.16     682.73      51.56     449.32       0.00    -409.79

   30   8.1  1.0 -1.0     -33.59     -70.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42845.04
                          -96.28     338.52      18.60     -16.60     259.04     898.14      67.58    -340.65     409.79      -0.00

   31   9.1  1.0 -1.0    -397.88     296.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          191.97      -8.03     275.01      55.20     -73.29     -10.73     120.52     187.06     292.16    -391.72

   32  10.1  1.0 -1.0      -0.00    -162.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -485.55       4.06      14.47    -167.43      37.85    -505.77    -178.66     243.63     -20.97

   33  11.1  1.0 -1.0     162.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          485.55       0.00     -95.45       1.92    -231.25     -24.95     327.27    -347.95     266.67     108.64

   34   1.1  0.0  0.0       0.00       0.00     164.59     407.64    -264.26     125.69     259.22    -309.81     -66.20     131.06
                         -185.26     -40.45     249.05     466.85    -247.04     143.80    -210.12     302.80    -108.20      33.96

   35   2.1  0.0  0.0       0.00       0.00    -103.31    -185.27    -525.65      90.82     191.48     111.89     282.36    -200.22
                          154.85     -64.12     424.28     340.78     388.30     -85.98     124.21      24.60     308.06     -93.27

   36   3.1  0.0  0.0       0.00       0.00     -46.14     562.03    -174.44    -121.10    -252.81     -45.40      32.90    -291.00
                          -26.18    -122.26     270.26    -364.73     282.85     224.67    -329.63     -80.83      24.05    -158.40

   37   4.1  0.0  0.0       0.00       0.00     804.51      46.38     132.60      23.45      49.87     141.62      48.34    -116.69
                          -22.79      34.65    -131.99      -0.02     653.24     -34.43      51.77     200.22    -280.28      75.06

   38   5.1  0.0  0.0       0.00       0.00    -266.68     245.92     424.39     134.52     279.48     143.29    -110.18    -228.51
                           40.19    -180.83    -491.36     328.48     209.83     132.36    -193.79    -119.07     203.10     194.77

   39   6.1  0.0  0.0       0.00       0.00   -1214.38    -210.49     -81.21      -0.00       0.00       0.00       0.00      -0.00
                         -244.93     158.73     -62.72    -112.09    1228.47       0.00       0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39

    1   1.1  1.0  1.0       0.00       0.00       0.00     164.59    -103.31     -46.14     804.51    -266.68   -1214.38
                            0.00       0.00       0.00     249.05     424.28     270.26    -131.99    -491.36     -62.72

    2   2.1  1.0  1.0       0.00       0.00       0.00     407.64    -185.27     562.03      46.38     245.92    -210.49
                            0.00       0.00       0.00     466.85     340.78    -364.73      -0.02     328.48    -112.09

    3   3.1  1.0  1.0       0.00       0.00       0.00    -264.26    -525.65    -174.44     132.60     424.39     -81.21
                            0.00       0.00       0.00    -247.04     388.30     282.85     653.24     209.83    1228.47

    4   4.1  1.0  1.0       0.00       0.00       0.00     125.69      90.82    -121.10      23.45     134.52      -0.00
                            0.00       0.00       0.00     143.80     -85.98     224.67     -34.43     132.36       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00     259.22     191.48    -252.81      49.87     279.48       0.00
                            0.00       0.00       0.00    -210.12     124.21    -329.63      51.77    -193.79       0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00    -309.81     111.89     -45.40     141.62     143.29       0.00
                            0.00       0.00       0.00     302.80      24.60     -80.83     200.22    -119.07      -0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00     -66.20     282.36      32.90      48.34    -110.18       0.00
                            0.00       0.00       0.00    -108.20     308.06      24.05    -280.28     203.10       0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00     131.06    -200.22    -291.00    -116.69    -228.51      -0.00
                            0.00       0.00       0.00      33.96     -93.27    -158.40      75.06     194.77      -0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00      31.51     116.43      18.12     -65.65     -80.93      65.40
                            0.00       0.00       0.00      22.12    -109.12     -56.96    -124.76     -30.24    -195.74

   10  10.1  1.0  1.0       0.00       0.00       0.00      33.67     -17.08      88.25    -109.99      79.41     119.62
                            0.00       0.00       0.00      30.19      -8.31     -90.98      25.39     122.61       3.24

   11  11.1  1.0  1.0       0.00       0.00       0.00     -96.50      11.16     -83.87    -112.21      26.42     160.40
                            0.00       0.00       0.00    -115.87     -86.36      30.28      55.69      34.00      77.39

   12   1.1  1.0  0.0      32.02       8.17     -19.15       0.00       0.00       0.00       0.00       0.00       0.00
                           51.94    -148.29     137.57    -642.39     389.95    -666.05      75.18    -380.33    -306.48

   13   2.1  1.0  0.0    -194.52      18.77      65.31       0.00       0.00       0.00       0.00       0.00       0.00
                          -56.71    -145.91    -137.33     579.18    -683.50    -445.57     220.55    -682.05    1713.92

   14   3.1  1.0  0.0      25.34    -170.84     117.08       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.52     -20.88      -5.51     580.95     371.63    -618.55     131.70     523.26     140.73

   15   4.1  1.0  0.0     122.80     223.61     298.52       0.00       0.00       0.00       0.00       0.00       0.00
                          334.40      -6.91    -132.50     316.40     515.86     228.79     -87.34    -426.33      -0.00

   16   5.1  1.0  0.0     -60.13    -106.85    -143.45       0.00       0.00       0.00       0.00       0.00       0.00
                          229.02      -3.18     -88.99      23.84      38.65      16.60      -9.85     -32.67      -0.00

   17   6.1  1.0  0.0    -247.14     183.62     -34.46       0.00       0.00       0.00       0.00       0.00       0.00
                           25.99     302.19      52.71      12.07    -196.63     173.18    -488.46     -36.29      -0.00

   18   7.1  1.0  0.0    -111.86    -247.84     232.39       0.00       0.00       0.00       0.00       0.00       0.00
                           34.94     204.29      77.02     245.64      47.53    -155.87    -354.43     226.62      -0.00

   19   8.1  1.0  0.0    -233.80      33.59      70.90       0.00       0.00       0.00       0.00       0.00       0.00
                          131.19     -96.28     338.52    -127.32      10.41    -307.89    -459.22    -150.39      -0.00

   20   9.1  1.0  0.0      -0.00     397.88    -296.73       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     191.97      -8.03    -106.05     -69.57     170.08     -37.35     -64.09     -58.70

   21  10.1  1.0  0.0    -397.88      -0.00     162.22       0.00       0.00       0.00       0.00       0.00       0.00
                         -191.97       0.00    -485.55     185.26    -154.85      26.18      22.79     -40.19     244.93

   22  11.1  1.0  0.0     296.73    -162.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.03     485.55      -0.00      40.45      64.12     122.26     -34.65     180.83    -158.73

   23   1.1  1.0 -1.0       0.00       0.00       0.00     164.59    -103.31     -46.14     804.51    -266.68   -1214.38
                         -275.01      -4.06      95.45    -249.05    -424.28    -270.26     131.99     491.36      62.72

   24   2.1  1.0 -1.0       0.00       0.00       0.00     407.64    -185.27     562.03      46.38     245.92    -210.49
                          -55.20     -14.47      -1.92    -466.85    -340.78     364.73       0.02    -328.48     112.09

   25   3.1  1.0 -1.0       0.00       0.00       0.00    -264.26    -525.65    -174.44     132.60     424.39     -81.21
                           73.29     167.43     231.25     247.04    -388.30    -282.85    -653.24    -209.83   -1228.47

   26   4.1  1.0 -1.0       0.00       0.00       0.00     125.69      90.82    -121.10      23.45     134.52      -0.00
                           10.73     -37.85      24.95    -143.80      85.98    -224.67      34.43    -132.36      -0.00

   27   5.1  1.0 -1.0       0.00       0.00       0.00     259.22     191.48    -252.81      49.87     279.48       0.00
                         -120.52     505.77    -327.27     210.12    -124.21     329.63     -51.77     193.79      -0.00

   28   6.1  1.0 -1.0       0.00       0.00       0.00    -309.81     111.89     -45.40     141.62     143.29       0.00
                         -187.06     178.66     347.95    -302.80     -24.60      80.83    -200.22     119.07       0.00

   29   7.1  1.0 -1.0       0.00       0.00       0.00     -66.20     282.36      32.90      48.34    -110.18       0.00
                         -292.16    -243.63    -266.67     108.20    -308.06     -24.05     280.28    -203.10      -0.00

   30   8.1  1.0 -1.0       0.00       0.00       0.00     131.06    -200.22    -291.00    -116.69    -228.51      -0.00
                          391.72      20.97    -108.64     -33.96      93.27     158.40     -75.06    -194.77       0.00

   31   9.1  1.0 -1.0   43882.75       0.00       0.00      31.51     116.43      18.12     -65.65     -80.93      65.40
                           -0.00    -393.73    -607.55     -22.12     109.12      56.96     124.76      30.24     195.74

   32  10.1  1.0 -1.0       0.00   43882.75       0.00      33.67     -17.08      88.25    -109.99      79.41     119.62
                          393.73      -0.00    -145.62     -30.19       8.31      90.98     -25.39    -122.61      -3.24

   33  11.1  1.0 -1.0       0.00       0.00   43882.75     -96.50      11.16     -83.87    -112.21      26.42     160.40
                          607.55     145.62      -0.00     115.87      86.36     -30.28     -55.69     -34.00     -77.39

   34   1.1  0.0  0.0      31.51      33.67     -96.50    5873.61       0.00       0.00       0.00       0.00       0.00
                           22.12      30.19    -115.87       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.1  0.0  0.0     116.43     -17.08      11.16       0.00    5873.61       0.00       0.00       0.00       0.00
                         -109.12      -8.31     -86.36      -0.00       0.00       0.00       0.00       0.00       0.00

   36   3.1  0.0  0.0      18.12      88.25     -83.87       0.00       0.00    5873.61       0.00       0.00       0.00
                          -56.96     -90.98      30.28      -0.00      -0.00       0.00       0.00       0.00       0.00

   37   4.1  0.0  0.0     -65.65    -109.99    -112.21       0.00       0.00       0.00    5873.60       0.00       0.00
                         -124.76      25.39      55.69      -0.00      -0.00      -0.00       0.00       0.00       0.00

   38   5.1  0.0  0.0     -80.93      79.41      26.42       0.00       0.00       0.00       0.00    5873.61       0.00
                          -30.24     122.61      34.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   39   6.1  0.0  0.0      65.40     119.62     160.40       0.00       0.00       0.00       0.00       0.00   14300.43
                         -195.74       3.24      77.39      -0.00      -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 39)

    The diagonal matrixelements are shifted by   -214.07408466 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.006       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.005       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42844.154       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42844.156       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42845.041       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42845.040       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42845.042
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000   -1098.121    -100.195      17.562       9.975    -229.690    -184.023    -171.629

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1098.121       0.000      56.069      28.804      19.632     157.198      78.046    -291.013

    3    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                              100.195     -56.069       0.000    -323.543    -221.094       2.487      -3.211     -34.424

    4    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                              -17.562     -28.804     323.543       0.000       2.716     454.592    -636.786      77.447

    5    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -9.975     -19.632     221.094      -2.716       0.000    -663.606     933.952    -111.388

    6    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                              229.690    -157.198      -2.487    -454.592     663.606       0.000     -72.169    -566.445

    7    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                              184.023     -78.046       3.211     636.786    -933.952      72.169       0.000    -399.763

    8    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                              171.629     291.013      34.424     -77.447     111.388     566.445     399.763       0.000

    9    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                              -73.450      80.203       3.568    -472.913    -323.888     -36.758     -49.411    -185.536

   10    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                              209.715     206.345      29.535       9.771       4.502    -427.360    -288.915     136.159

   11    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                             -194.553     194.218       7.787     187.378     125.854     -74.540    -108.921    -478.742

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      88.955   -1083.333      -4.740      69.287     203.642    -266.348      18.603

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -88.955      -0.000    -193.722      29.217    -385.372      52.322     -36.849     -16.596

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1083.333     193.722       0.000       3.315     -31.323    -180.631    -126.161     259.041

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.740     -29.217      -3.315      -0.000       5.919     811.974     682.734     898.144

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -69.287     385.372      31.323      -5.919      -0.000      62.205      51.562      67.576

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -203.642     -52.322     180.631    -811.974     -62.205      -0.000     449.321    -340.652

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              266.348      36.849     126.161    -682.734     -51.562    -449.321      -0.000     409.791

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -18.603      16.596    -259.041    -898.144     -67.576     340.652    -409.791       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -275.015     -55.196      73.291      10.730    -120.517    -187.057    -292.156     391.720

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.060     -14.474     167.435     -37.845     505.773     178.658    -243.627      20.966

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               95.446      -1.921     231.253      24.951    -327.265     347.950    -266.667    -108.641

    1    1  |0 0>             232.771     576.483    -373.715     177.748     366.592    -438.134     -93.624     185.343
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            -146.096    -262.018    -743.387     128.437     270.795     158.241     399.324    -283.154
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>             -65.253     794.825    -246.702    -171.265    -357.530     -64.209      46.528    -411.536
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>            1137.748      65.587     187.525      33.165      70.521     200.281      68.359    -165.029
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            -377.140     347.779     600.180     190.242     395.242     202.641    -155.821    -323.162
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>           -1717.395    -297.674    -114.850      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000   -1098.121    -100.195      17.562       9.975

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1098.121       0.000      56.069      28.804      19.632

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000     100.195     -56.069       0.000    -323.543    -221.094

    4    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     -17.562     -28.804     323.543       0.000       2.716

    5    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -9.975     -19.632     221.094      -2.716       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000     229.690    -157.198      -2.487    -454.592     663.606

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     184.023     -78.046       3.211     636.786    -933.952

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000     171.629     291.013      34.424     -77.447     111.388

    9    1  |1 1>+          43882.753       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000     -73.450      80.203       3.568    -472.913    -323.888

   10    1  |1 1>+              0.000   43882.749       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000     209.715     206.345      29.535       9.771       4.502

   11    1  |1 1>+              0.000       0.000   43882.752       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000    -194.553     194.218       7.787     187.378     125.854

    1    1  |1 0>               0.000      -0.000       0.000       0.006       0.000       0.000       0.000       0.000
                               73.450    -209.715     194.553       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -80.203    -206.345    -194.218      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.005       0.000       0.000
                               -3.568     -29.535      -7.787      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000   42844.154       0.000
                              472.913      -9.771    -187.378      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000   42844.156
                              323.888      -4.502    -125.854      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               36.758     427.360      74.540      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               49.411     288.915     108.921      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              185.536    -136.159     478.742      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     271.488     -11.362      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -271.488       0.000    -686.668      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               11.362     686.668       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      72.594    -188.154    -349.136     167.613
                              275.015       4.060     -95.446      -0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000     -72.594       0.000    1085.532     -59.899      29.332
                               55.196      14.474       1.921       0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000     188.154   -1085.532       0.000     -24.200      12.626
                              -73.291    -167.435    -231.253      -0.000      -0.000      -0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000     349.136      59.899      24.200       0.000       2.741
                              -10.730      37.845     -24.951      -0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000    -167.613     -29.332     -12.626      -2.741       0.000
                              120.517    -505.773     327.265       0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000      45.871    -175.296    -213.610    -346.357    -716.044
                              187.057    -178.658    -347.950      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000     -38.659     286.700    -144.567    -191.262    -402.675
                              292.156     243.627     266.667       0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000      17.332     -11.790    -221.991     456.089     950.682
                             -391.720     -20.966     108.641       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000     -45.285     275.093     -35.842    -173.664      85.035
                                0.000     393.734     607.549      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000     -11.557     -26.543     241.607    -316.238     151.111
                             -393.734       0.000     145.618       0.000       0.000      -0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000      27.082     -92.363    -165.575    -422.168     202.863
                             -607.549    -145.618       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |0 0>              44.567      47.621    -136.474       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     642.389    -579.180    -580.945    -316.403     -23.838

    2    1  |0 0>             164.651     -24.152      15.785       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -389.950     683.497    -371.629    -515.859     -38.648

    3    1  |0 0>              25.630     124.811    -118.603       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     666.047     445.573     618.550    -228.788     -16.602

    4    1  |0 0>             -92.848    -155.550    -158.686       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -75.184    -220.550    -131.703      87.339       9.847

    5    1  |0 0>            -114.452     112.301      37.364       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     380.332     682.055    -523.263     426.334      32.673

    6    1  |0 0>              92.485     169.174     226.839       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     306.483   -1713.916    -140.733       0.000       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                             -229.690    -184.023    -171.629      73.450    -209.715     194.553       0.000      88.955

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              157.198      78.046    -291.013     -80.203    -206.345    -194.218     -88.955      -0.000

    3    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                2.487      -3.211     -34.424      -3.568     -29.535      -7.787    1083.333     193.722

    4    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                              454.592    -636.786      77.447     472.913      -9.771    -187.378       4.740     -29.217

    5    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                             -663.606     933.952    -111.388     323.888      -4.502    -125.854     -69.287     385.372

    6    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000     -72.169    -566.445      36.758     427.360      74.540    -203.642     -52.322

    7    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               72.169       0.000    -399.763      49.411     288.915     108.921     266.348      36.849

    8    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              566.445     399.763       0.000     185.536    -136.159     478.742     -18.603      16.596

    9    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              -36.758     -49.411    -185.536       0.000     271.488     -11.362    -275.015     -55.196

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                             -427.360    -288.915     136.159    -271.488       0.000    -686.668      -4.060     -14.474

   11    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                              -74.540    -108.921    -478.742      11.362     686.668       0.000      95.446      -1.921

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     -72.594
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      72.594       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000    -188.154    1085.532
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000    -349.136     -59.899
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000     167.613      29.332
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    6    1  |1 0>           42845.041       0.000       0.000       0.000       0.000       0.000     -45.871     175.296
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000   42845.040       0.000       0.000       0.000       0.000      38.659    -286.700
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000   42845.042       0.000       0.000       0.000     -17.332      11.790
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000   43882.753       0.000       0.000      45.285    -275.093
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000   43882.749       0.000      11.557      26.543
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000   43882.752     -27.082      92.363
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-            -45.871      38.659     -17.332      45.285      11.557     -27.082       0.006       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-            175.296    -286.700      11.790    -275.093      26.543      92.363       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-            213.610     144.567     221.991      35.842    -241.607     165.575       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    4    1  |1 1>-            346.357     191.262    -456.089     173.664     316.238     422.168       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>-            716.044     402.675    -950.682     -85.035    -151.111    -202.863       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000     526.321     225.910    -349.507     259.671     -48.735       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-           -526.321       0.000    -397.244    -158.189    -350.498     328.651       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 1>-           -225.910     397.244       0.000    -330.647      47.510     100.270       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 1>-            349.507     158.189     330.647       0.000     562.685    -419.645       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   10    1  |1 1>-           -259.671     350.498     -47.510    -562.685       0.000     229.413       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-             48.735    -328.651    -100.270     419.645    -229.413       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -12.068    -245.638     127.319     106.045    -185.259     -40.452    -352.209    -660.226

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              196.628     -47.529     -10.415      69.570     154.848     -64.116    -600.020    -481.940

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -173.181     155.869     307.885    -170.079     -26.177    -122.255    -382.210     515.810

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              488.461     354.427     459.221      37.353     -22.785      34.649     186.655       0.023

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               36.287    -226.624     150.395      64.091      40.187    -180.830     694.884    -464.547

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001       0.000       0.001      58.704    -244.925     158.729      88.706     158.517

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1083.333      -4.740      69.287     203.642    -266.348      18.603     275.015       4.060

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -193.722      29.217    -385.372      52.322     -36.849     -16.596      55.196      14.474

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       3.315     -31.323    -180.631    -126.161     259.041     -73.291    -167.435

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.315      -0.000       5.919     811.974     682.734     898.144     -10.730      37.845

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               31.323      -5.919      -0.000      62.205      51.562      67.576     120.517    -505.773

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              180.631    -811.974     -62.205      -0.000     449.321    -340.652     187.057    -178.658

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              126.161    -682.734     -51.562    -449.321      -0.000     409.791     292.156     243.627

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -259.041    -898.144     -67.576     340.652    -409.791       0.000    -391.720     -20.966

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               73.291      10.730    -120.517    -187.057    -292.156     391.720       0.000     393.734

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              167.435     -37.845     505.773     178.658    -243.627      20.966    -393.734       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              231.253      24.951    -327.265     347.950    -266.667    -108.641    -607.549    -145.618

    1    1  |1 0>             188.154     349.136    -167.613      45.871     -38.659      17.332     -45.285     -11.557
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    2    1  |1 0>           -1085.532      59.899     -29.332    -175.296     286.700     -11.790     275.093     -26.543
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000      24.200     -12.626    -213.610    -144.567    -221.991     -35.842     241.607
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 0>             -24.200       0.000      -2.741    -346.357    -191.262     456.089    -173.664    -316.238
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 0>              12.626       2.741       0.000    -716.044    -402.675     950.682      85.035     151.111
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>             213.610     346.357     716.044       0.000    -526.321    -225.910     349.507    -259.671
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    7    1  |1 0>             144.567     191.262     402.675     526.321       0.000     397.244     158.189     350.498
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 0>             221.991    -456.089    -950.682     225.910    -397.244       0.000     330.647     -47.510
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    9    1  |1 0>              35.842     173.664     -85.035    -349.507    -158.189    -330.647       0.000    -562.685
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   10    1  |1 0>            -241.607     316.238    -151.111     259.671    -350.498      47.510     562.685       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 0>             165.575     422.168    -202.863     -48.735     328.651     100.270    -419.645     229.413
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.005       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000   42844.154       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000   42844.156       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000   42845.041       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000   42845.040       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42845.042       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   43882.753       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   43882.749
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              349.369    -203.359     297.151    -428.229     153.016     -48.031     -31.284     -42.696

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -549.132     121.595    -175.654     -34.785    -435.667     131.902     154.313      11.747

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -400.006    -317.737     466.167     114.316     -34.019     224.018      80.557     128.665

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -923.824      48.693     -73.214    -283.155     396.373    -106.146     176.436     -35.910

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -296.743    -187.186     274.064     168.393    -287.229    -275.452      42.764    -173.401

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1737.312      -0.000      -0.000       0.000      -0.000       0.000     276.821      -4.581

  State Sym Spin    / Nr.       33          34          35          36          37          38          39

    1    1  |1 1>+              0.000     232.771    -146.096     -65.253    1137.748    -377.140   -1717.395
                              -95.446       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000     576.483    -262.018     794.825      65.587     347.779    -297.674
                                1.921       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    -373.715    -743.387    -246.702     187.525     600.180    -114.850
                             -231.253       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000     177.748     128.437    -171.265      33.165     190.242      -0.000
                              -24.951       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000     366.592     270.795    -357.530      70.521     395.242       0.000
                              327.265       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000    -438.134     158.241     -64.209     200.281     202.641       0.000
                             -347.950       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000     -93.624     399.324      46.528      68.359    -155.821       0.000
                              266.667       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000     185.343    -283.154    -411.536    -165.029    -323.162      -0.000
                              108.641       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000      44.567     164.651      25.630     -92.848    -114.452      92.485
                              607.549       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000      47.621     -24.152     124.811    -155.550     112.301     169.174
                              145.618       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000    -136.474      15.785    -118.603    -158.686      37.364     226.839
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              27.082       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -642.389     389.950    -666.047      75.184    -380.332    -306.483

    2    1  |1 0>             -92.363       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     579.180    -683.497    -445.573     220.550    -682.055    1713.916

    3    1  |1 0>            -165.575       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     580.945     371.629    -618.550     131.703     523.263     140.733

    4    1  |1 0>            -422.168       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     316.403     515.859     228.788     -87.339    -426.334      -0.000

    5    1  |1 0>             202.863       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      23.838      38.648      16.602      -9.847     -32.673      -0.000

    6    1  |1 0>              48.735       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      12.068    -196.628     173.181    -488.461     -36.287      -0.001

    7    1  |1 0>            -328.651       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     245.638      47.529    -155.869    -354.427     226.624      -0.000

    8    1  |1 0>            -100.270       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -127.319      10.415    -307.885    -459.221    -150.395      -0.001

    9    1  |1 0>             419.645       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -106.045     -69.570     170.079     -37.353     -64.091     -58.704

   10    1  |1 0>            -229.413       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     185.259    -154.848      26.177      22.785     -40.187     244.925

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      40.452      64.116     122.255     -34.649     180.830    -158.729

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     352.209     600.020     382.210    -186.655    -694.884     -88.706

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     660.226     481.940    -515.810      -0.023     464.547    -158.517

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -349.369     549.132     400.006     923.824     296.743    1737.312

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     203.359    -121.595     317.737     -48.693     187.186       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -297.151     175.654    -466.167      73.214    -274.064       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     428.229      34.785    -114.316     283.155    -168.393      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -153.016     435.667      34.019    -396.373     287.229       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      48.031    -131.902    -224.018     106.146     275.452      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      31.284    -154.313     -80.557    -176.436     -42.764    -276.821

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      42.696     -11.747    -128.665      35.910     173.401       4.581

   11    1  |1 1>-          43882.752       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -163.869    -122.126      42.820      78.754      48.080     109.447

    1    1  |0 0>               0.000    5873.609       0.000       0.000       0.000       0.000       0.000
                              163.869       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5873.611       0.000       0.000       0.000       0.000
                              122.126      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5873.607       0.000       0.000       0.000
                              -42.820      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5873.604       0.000       0.000
                              -78.754      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5873.610       0.000
                              -48.080      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   14300.431
                             -109.447      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.08663845    -0.01255379    -2755.24      0.00000000        0.00      0.0000
    2  -214.07914501    -0.00506035    -1110.62      0.00749344     1644.62      0.2039
    3  -214.07914501    -0.00506035    -1110.62      0.00749344     1644.62      0.2039
    4  -214.07914500    -0.00506034    -1110.62      0.00749345     1644.62      0.2039
    5  -214.07114153     0.00294313      645.94      0.01549692     3401.18      0.4217
    6  -214.07114152     0.00294314      645.94      0.01549693     3401.18      0.4217
    7  -214.07114144     0.00294322      645.96      0.01549701     3401.20      0.4217
    8  -214.07114144     0.00294322      645.96      0.01549701     3401.20      0.4217
    9  -214.07114143     0.00294323      645.97      0.01549702     3401.20      0.4217
   10  -214.04540463     0.02868003     6294.54      0.04123382     9049.78      1.1220
   11  -214.04540462     0.02868004     6294.54      0.04123383     9049.78      1.1220
   12  -214.04540461     0.02868005     6294.54      0.04123384     9049.78      1.1220
   13  -214.04540455     0.02868011     6294.56      0.04123390     9049.80      1.1220
   14  -214.04540453     0.02868014     6294.56      0.04123392     9049.80      1.1220
   15  -214.00650728     0.06757738    14831.52      0.08013117    17586.76      2.1805
   16  -213.88922370     0.18486096    40572.29      0.19741475    43327.53      5.3719
   17  -213.88922369     0.18486097    40572.29      0.19741476    43327.53      5.3719
   18  -213.88922368     0.18486098    40572.29      0.19741477    43327.53      5.3719
   19  -213.88332047     0.19076419    41867.90      0.20331798    44623.14      5.5326
   20  -213.88332046     0.19076420    41867.90      0.20331799    44623.14      5.5326
   21  -213.88332045     0.19076421    41867.91      0.20331800    44623.14      5.5326
   22  -213.88331830     0.19076636    41868.38      0.20332015    44623.62      5.5326
   23  -213.88331829     0.19076637    41868.38      0.20332016    44623.62      5.5326
   24  -213.88079700     0.19328766    42421.74      0.20584145    45176.98      5.6012
   25  -213.87664879     0.19743588    43332.17      0.20998966    46087.40      5.7141
   26  -213.87664878     0.19743588    43332.17      0.20998967    46087.40      5.7141
   27  -213.87664877     0.19743589    43332.17      0.20998968    46087.41      5.7141
   28  -213.87251925     0.20156542    44238.50      0.21411920    46993.73      5.8265
   29  -213.87251923     0.20156543    44238.50      0.21411922    46993.74      5.8265
   30  -213.87251923     0.20156543    44238.50      0.21411922    46993.74      5.8265
   31  -213.87251804     0.20156662    44238.76      0.21412041    46994.00      5.8265
   32  -213.87251802     0.20156664    44238.76      0.21412043    46994.00      5.8265
   33  -213.87251801     0.20156665    44238.77      0.21412044    46994.00      5.8265
   34  -213.87251651     0.20156816    44239.10      0.21412194    46994.33      5.8266
   35  -213.86933207     0.20475259    44938.00      0.21730638    47693.24      5.9132
   36  -213.86933207     0.20475259    44938.00      0.21730638    47693.24      5.9132
   37  -213.86933206     0.20475260    44938.00      0.21730638    47693.24      5.9132
   38  -213.86933172     0.20475294    44938.08      0.21730673    47693.31      5.9132
   39  -213.86933171     0.20475295    44938.08      0.21730674    47693.32      5.9132

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.55880527 -0.00066557 -0.12109830 -0.04487747  0.28734685  0.71284027  0.00841853 -0.12260214
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.09685730 -0.03548299  0.69573014 -0.01042164  0.03798949  0.13718858  0.03608272  0.66472004
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.03736982  0.10191901  0.00760370  0.69808187  0.01669663  0.05029752 -0.11287560 -0.03784914
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00586680 -0.00030071  0.00084956  0.00004080 -0.00008801  0.00705290 -0.00040935
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00281703  0.00016109 -0.00041770  0.00001674 -0.00015704  0.01467719 -0.00092939
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00063199  0.00354206 -0.00299679 -0.00869630  0.00340684 -0.00098347 -0.00563117
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00055648  0.00247146  0.00477602 -0.00480611  0.00185309  0.00102735 -0.00323943
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00022572  0.00371197 -0.00025375  0.01171907 -0.00473684 -0.00042650 -0.00510073
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00267094 -0.00060023 -0.00060612 -0.00429817  0.00043768  0.00116421 -0.00051007  0.00022232
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00488571 -0.00013159  0.00377409  0.00035906  0.00088373  0.00203622 -0.00007424 -0.00281418
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00655105  0.00034286 -0.00256755  0.00148463  0.00108977  0.00284044  0.00030987  0.00194336
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.09972326  0.00944370  0.69437765  0.04778462 -0.12440041 -0.03280139 -0.05853575 -0.65922949

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.55767433  0.05889807  0.12315084 -0.00010804  0.76249475  0.10898070 -0.06370854 -0.09995169

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000
                           0.04579175 -0.69672059  0.01240108  0.10537913  0.06334238  0.00136086  0.66274278 -0.08373424

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00006532 -0.00004998  0.00049107  0.00002894  0.00000957  0.00280660  0.00220927

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00097787  0.00045370 -0.00647750  0.00001241 -0.00006899  0.00020351  0.00016393

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00337821  0.00308341  0.00074303  0.00130246 -0.00939745 -0.00462165  0.00517499

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00450009  0.00203142 -0.00052403  0.00112469 -0.00806677  0.00662745  0.00239033

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00037187 -0.00432840 -0.00022851  0.00164537 -0.01069989 -0.00110800 -0.00590373

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00169535  0.00429010 -0.00122022 -0.00072993  0.00079284  0.00005889  0.00310606 -0.00123566

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00707337  0.00002804 -0.00261369 -0.00018940 -0.00319418 -0.00050833 -0.00012827 -0.00197136

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00458403 -0.00154338 -0.00358174 -0.00002230  0.00213731  0.00026482 -0.00133570 -0.00248191

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.02886320 -0.01974261 -0.05457597  0.70375188  0.02601756 -0.03136474 -0.00346979  0.09838947

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000
                          -0.05157820  0.70345101  0.02504014  0.01840231  0.04437555 -0.06276167  0.67456629 -0.02246296

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.56528585  0.06317646 -0.00050190  0.03761230 -0.48226169  0.61076115  0.06725255 -0.01773720

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00022082 -0.00541865 -0.00040204 -0.00014186  0.00020327  0.00031647  0.00922266

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00011701 -0.00370227 -0.00027480  0.00025234 -0.00026226 -0.00046813 -0.01350813

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00376719  0.00006508 -0.00273029  0.00751912  0.00586686  0.00561380  0.00041031

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001 -0.00304089 -0.00002394 -0.00138597 -0.01051810 -0.00834803  0.00437740  0.00014302

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00300636 -0.00046481  0.00479321  0.00122399  0.00093527  0.00420666 -0.00112427

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00799451 -0.00111031  0.00005626 -0.00128121 -0.00228060  0.00288470  0.00087663  0.00000665

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00013229  0.00336068  0.00036606 -0.00313365  0.00004139 -0.00002322 -0.00244857  0.00043516

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00316079 -0.00294893  0.00012698 -0.00310938  0.00090848 -0.00116794  0.00223918  0.00028227

   1    1  |0 0>          -0.00000002 -0.00000027 -0.00000032  0.00000003 -0.16417562 -0.00877880 -0.16872406 -0.13783010
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

   2    1  |0 0>           0.00000004 -0.00000018  0.00000017  0.00000007  0.16233184 -0.00427357 -0.13558665  0.05993607
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

   3    1  |0 0>           0.00000002  0.00000025 -0.00000037  0.00000001  0.09577513 -0.05562525  0.11792138 -0.21749594
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000019 -0.00000002 -0.00000001 -0.00000001 -0.00955177 -0.27522492 -0.02369665  0.04267458
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000008 -0.00000020 -0.00000017 -0.00000005  0.12883309  0.01514422 -0.13358830 -0.08630940
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

   6    1  |0 0>          -0.17508087 -0.00000000  0.00000000  0.00000000  0.00000021  0.00000002 -0.00000003 -0.00000005
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.05167138 -0.03383132 -0.00494352  0.02242615  0.21339218 -0.07251765 -0.09950471 -0.00025227
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.03514650  0.16560990  0.07318523 -0.07332521  0.04063455 -0.01591737 -0.01724704 -0.00069836
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.66624441 -0.07248433 -0.02447157 -0.18363540  0.00783959 -0.01002875 -0.00665433  0.00558247
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00119224  0.00280891 -0.00675997 -0.00016500  0.00019755 -0.00033195  0.00000000  0.16871898
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00245205  0.00590272 -0.01403841 -0.00039342  0.00038678 -0.00076508 -0.00000000 -0.08007348
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00392183  0.00600889  0.00289280  0.00246397 -0.00290557 -0.00909316 -0.00000001  0.30157656
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00715060  0.00040317  0.00061188 -0.00779495 -0.00192188 -0.00533212 -0.00000001 -0.39883762
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00006095  0.00493481  0.00163313 -0.00224743  0.00428119  0.01201472  0.00000001  0.05920831
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00321197 -0.00171341 -0.00043406 -0.00623407  0.00210229 -0.00096669 -0.00262735 -0.16128898
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00045941 -0.00469259 -0.00184563  0.00258025  0.00411490 -0.00133649 -0.00480598 -0.00219484
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00097363  0.00376073  0.00182125  0.00050491  0.00576715 -0.00194082 -0.00644414  0.06739608
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.10180083 -0.15471239 -0.08067835  0.08782131 -0.01043564  0.04266692 -0.01775740 -0.00009637

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.02358416 -0.02774451 -0.01836221  0.02099428  0.04287240 -0.22142565  0.09930308  0.00013114

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.10461521 -0.08748822  0.17865154  0.01146414 -0.00162323 -0.00780300  0.00815399 -0.00180699

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.01610402 -0.00722269 -0.00258408 -0.01501787 -0.00061397 -0.00041904  0.00000000 -0.04372000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00122237 -0.00054824 -0.00018556 -0.00114256  0.00002403 -0.00001767  0.00000000  0.57987576

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00010264 -0.00614978  0.00282353  0.00201790  0.00948032  0.00222214  0.00000002  0.10150324

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00145474  0.00015421 -0.00725063  0.00076977  0.00829556  0.00128810  0.00000001 -0.12591374

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00097513  0.00458029  0.00305839 -0.00319217  0.01081370  0.00201143  0.00000002  0.00047588

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00037442 -0.00418790  0.00512324  0.00115794  0.00010379 -0.00115038  0.00166768  0.05392064

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00030149 -0.00290185 -0.00175656  0.00157821 -0.00128067  0.00636996 -0.00695794  0.00251109

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00057379 -0.00338323 -0.00393363  0.00239687  0.00077622 -0.00411643  0.00450923 -0.01606717

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.67025627  0.09754823 -0.00174442  0.17369942 -0.00132283 -0.00467125 -0.00513958  0.00521715

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00318481 -0.06040068  0.18564260  0.03591012 -0.01947770 -0.00287490 -0.00918436  0.00272939

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.03869328 -0.00322482  0.01229493  0.00346365  0.17257742  0.15102567  0.10065873  0.00051543

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00135467 -0.00779114 -0.00336600  0.00436604 -0.00016397  0.00019918 -0.00000000 -0.01804443

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00194522  0.01142705  0.00493041 -0.00635761  0.00020326 -0.00024684 -0.00000000 -0.01092693

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00379355  0.00019762 -0.00571523 -0.00448401 -0.00645324  0.00700313  0.00000000  0.38139340

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00191692 -0.00017167 -0.00369671 -0.00235772  0.00899895 -0.01060794 -0.00000000  0.23958429

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00699594  0.00488508 -0.00413451  0.00556305 -0.00070397  0.00109167 -0.00000000 -0.27658585

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00094962  0.00030350  0.00141121  0.00163159  0.00552172  0.00488353  0.00786404 -0.06532088

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00236806  0.00379507 -0.00453514  0.00328569  0.00017838 -0.00026955 -0.00013013 -0.05320794

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00224549  0.00085662  0.00417805  0.00478774 -0.00208414 -0.00157375 -0.00310921 -0.16298682

   1    1  |0 0>          -0.06833575  0.32101260  0.70330329  0.17459599  0.06101521 -0.53686762 -0.00000001  0.00000001
                          -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.17555447 -0.06923739  0.32014160  0.67456628  0.00665634  0.59812183  0.00000001  0.00000001
                          -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.07541782  0.87321500 -0.16988689 -0.09021641  0.18854172  0.29166022  0.00000001 -0.00000002
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.03073853 -0.20612285  0.04424458 -0.06791972  0.93311841  0.01867381  0.00000003 -0.00000003
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.19246429 -0.08535279  0.54053105 -0.64949490 -0.10045286  0.43442514  0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000001 -0.00000000 -0.00000000  0.00000001 -0.00000005 -0.00000007  0.98440674 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00072276  0.00076205 -0.00152306 -0.00079760  0.00098392  0.00868064  0.00861563 -0.00686542
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00443901 -0.00370972  0.00791288  0.00062647 -0.00705033  0.00150202  0.00150120 -0.00118997
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00069762 -0.00178006  0.00217887  0.00992138  0.00351851  0.00058645  0.00060132 -0.00045912
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.35242450  0.38787640  0.21101885 -0.12755736  0.22692076 -0.00104062  0.00089204  0.00000005
                          -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.17063688 -0.18566323  0.44205728 -0.26414677  0.47018521  0.00030267 -0.00062471 -0.00000000
                           0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.28439812  0.12936832  0.13915399 -0.17065437 -0.22855314  0.31094055 -0.31364928  0.00000036
                          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.11659832  0.28052711  0.18954195  0.31416495 -0.00119306  0.17364995 -0.17387578  0.00000027
                           0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.26455911  0.21445728  0.18390614  0.00220302 -0.17284820 -0.41256079  0.41560106 -0.00000008
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00350286  0.06647825 -0.06352723 -0.19793871 -0.05146495 -0.05752017 -0.05751207 -0.17931912
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.11252992 -0.10073898  0.14185079  0.03022404 -0.11583985 -0.10504703 -0.10408790 -0.32801242
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.08535158  0.04802607 -0.07973245  0.05885064  0.10745048 -0.14073841 -0.13972451 -0.43981863
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00454339 -0.00363897 -0.00772138 -0.00173642  0.00706495 -0.00210391  0.00056210 -0.00122520

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00109690 -0.00028834 -0.00078785 -0.00062682  0.00180547  0.01178175 -0.00320501  0.00685151

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00346427 -0.00441327 -0.00731638  0.00395520 -0.00679736  0.00095541 -0.00024652  0.00056259

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000001  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00983353  0.01116996  0.10966089  0.70569375  0.29172982 -0.00009823 -0.00023310  0.00000006

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.10844082 -0.15154135  0.00826098  0.05365999  0.02167648  0.00085597  0.00316173  0.00000001

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.03041893  0.41644744 -0.30936344  0.05293591 -0.01090692  0.11806303  0.43530751 -0.00000032

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.39953047 -0.19112170  0.10466436 -0.13504119  0.29072058  0.10019025  0.36663664 -0.00000016

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.33211978 -0.22902936  0.19945684  0.05432410 -0.20973286  0.13109302  0.48300269  0.00000013

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.06630134  0.15837975  0.18595670 -0.06929938  0.09753233 -0.04933054  0.01319809  0.11382101

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.07987955  0.06710092  0.09526633  0.01993570 -0.08356138  0.20671578 -0.05607028 -0.47488647

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.14777816  0.04496473  0.07852904  0.05606545 -0.16439232 -0.13411060  0.03670315  0.30775915

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00170462 -0.00218081 -0.00030536 -0.01039946 -0.00274327  0.00015742 -0.00063779 -0.00035461

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00352408  0.00384882 -0.00694519  0.00232631 -0.00784412  0.00027540 -0.00107898 -0.00063368

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00023451  0.00023983 -0.00064728 -0.00035231 -0.00084274 -0.00316123  0.01196381  0.00694503

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.37688128 -0.33475569 -0.33313624 -0.06346174  0.27458317 -0.00109448 -0.00070588 -0.00000043

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.25931181 -0.22656894  0.48753476  0.09123206 -0.40265372 -0.00097336  0.00034930  0.00000048

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.14288488  0.14253722  0.17214903  0.11646200  0.23812224 -0.43206118 -0.11407554 -0.00000007

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.13703056  0.14096518  0.13581955  0.03975902  0.17602721  0.60632029  0.16003425  0.00000018

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.28906856  0.34221231  0.11517327 -0.36245000  0.05926320 -0.07112150 -0.01987327 -0.00000002

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01288983 -0.01137651  0.03799725  0.04786185  0.05638545  0.06192265 -0.23402808  0.53672814

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.11512501  0.13268363 -0.09914568  0.18735950 -0.07675650 -0.00115821  0.00445800 -0.00888134

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.03742017 -0.03432728  0.10036958  0.11131319  0.14656436 -0.02421399  0.09275959 -0.21220669

   1    1  |0 0>          -0.00000002 -0.00000000  0.00077401  0.00234488  0.01739628 -0.01201578  0.00455678 -0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000001  0.00000002  0.01183592  0.01086084  0.00736351  0.01143597 -0.00555182  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000001 -0.00000003 -0.01799504  0.00775736  0.00488714  0.00500176 -0.00640168 -0.00000002
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000001  0.00000000  0.00289013 -0.00269946 -0.00102312 -0.00915017 -0.01932436  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000001  0.00000000 -0.00101256 -0.01682164  0.00959712  0.00948359 -0.00280039 -0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000001  0.00000001 -0.00000004 -0.01703115
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.00097424 -0.00055367 -0.00030858 -0.00000018  0.00000015 -0.00000013  0.00000016 -0.00000024
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00571311  0.00251935 -0.00057289  0.00000087 -0.00000050  0.00000104 -0.00000130  0.00000064
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00023929  0.00174944  0.00609904  0.00000048 -0.00000098 -0.00000090  0.00000099  0.00000190
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.06118455 -0.12885602  0.03962482  0.50515371  0.43357523 -0.21096582 -0.16249426  0.08588215
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.02978982  0.06181737 -0.01878042 -0.24385155 -0.20710821  0.09915393 -0.34006283  0.17997566
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.08386757 -0.01582973  0.07953928 -0.09076232 -0.06296492 -0.35114517 -0.35736784 -0.16009929
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.05022484 -0.05811438 -0.11065124 -0.24211729  0.33471396  0.10480736  0.07855921  0.50810747
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.08455731 -0.03601373  0.01333267 -0.16941897  0.09033037 -0.22110545 -0.23742007  0.09148409
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.05128325  0.21095446  0.61167722  0.00002948 -0.00005306 -0.00003723 -0.00007001 -0.00016804
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.50711914 -0.24179990 -0.00866295 -0.00004028  0.00002840 -0.00004095 -0.00008745  0.00006187
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.35729482  0.09432303 -0.24292699  0.00001801  0.00000117  0.00004711  0.00009428  0.00002276
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00579331  0.00238273  0.00006972  0.00000085 -0.00000066  0.00000099  0.00000124 -0.00000081

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00121854 -0.00004161  0.00015090  0.00000006 -0.00000018  0.00000020  0.00000032 -0.00000020

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00222354  0.00569580 -0.00168584  0.00000113  0.00000088 -0.00000039 -0.00000129  0.00000067

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00180522 -0.00304036 -0.01190455  0.01701698 -0.04018088 -0.04084623 -0.29386779 -0.49399144

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000
                          -0.01801617  0.03953467  0.15791162 -0.22121397  0.51463283  0.53150604 -0.02241313 -0.03935866

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.03955681 -0.10627440  0.02165783 -0.34685369 -0.05636997 -0.09181883 -0.02976088 -0.00905770

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.08824402  0.08107176 -0.03069728  0.17285453  0.28271175 -0.20312696  0.40834019 -0.23180335

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.10292062  0.03386657  0.00279076  0.17991278 -0.16565501  0.23493777 -0.28271144  0.18391045

   9    1  |1 0>           0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.06912600  0.64390564 -0.16957790  0.00006726  0.00003467 -0.00000510  0.00008322 -0.00003966

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.35540148  0.15609966  0.00178542  0.00002683 -0.00001788  0.00002867 -0.00006474  0.00004284

  11    1  |1 0>          -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.57396486  0.00272769  0.06547129  0.00001613 -0.00004136  0.00004689 -0.00013031  0.00008064

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00115411  0.00248692  0.00573324  0.00000059 -0.00000077 -0.00000104 -0.00000082 -0.00000193

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00244655 -0.00518095  0.00270731 -0.00000098 -0.00000106  0.00000026 -0.00000156  0.00000042

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00016430 -0.00034574  0.00053975 -0.00000006 -0.00000015 -0.00000004 -0.00000019 -0.00000006

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.12260383  0.05800380 -0.00080989 -0.40328472  0.26449311 -0.42162110 -0.18297780  0.12098076

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.08406929  0.03892156 -0.00020851 -0.27424944  0.17781861 -0.28751378  0.27213859 -0.18031053

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.02509225 -0.05256817  0.10023173 -0.11623152 -0.33211287 -0.09525628  0.38607760  0.16861610

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.02406617 -0.04983554  0.06220934 -0.11773518 -0.23260189 -0.03238333  0.27617121  0.05994077

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.04938892 -0.10627536 -0.07919835 -0.30461799  0.04445110  0.32075179  0.02050977 -0.50563976

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.03179278 -0.06607054  0.24032093 -0.00000446 -0.00002387 -0.00001072  0.00005535  0.00003905

  10    1  |1 1>-          0.00000001 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.27408955  0.58365683  0.22448075  0.00005823  0.00001219 -0.00004926 -0.00004662  0.00014888

  11    1  |1 1>-         -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.09188373 -0.19153757  0.59844139 -0.00001385 -0.00006376 -0.00002660  0.00014154  0.00009143

   1    1  |0 0>           0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000001  0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000003
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39

   1    1  |1 1>+          0.00000027 -0.00000000 -0.00022836 -0.00026572 -0.00003473  0.00150776 -0.00148125
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000156 -0.00000000  0.00145070  0.00105981 -0.00037344  0.00025642 -0.00027464
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000002 -0.00000000 -0.00043448  0.00106884  0.00145844  0.00010306 -0.00010446
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.16848584  0.00018932 -0.06400660  0.06480189 -0.06627089  0.00037530  0.00026792
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.35078067 -0.00009809 -0.13407244  0.13391518 -0.13796442 -0.00004250 -0.00026855
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.26467509 -0.33066101 -0.08107807 -0.00936021  0.07041675 -0.10395546 -0.10523878
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.18541449 -0.18111156 -0.01839621 -0.09624896 -0.07574616 -0.05813226 -0.05818646
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.27772963  0.43726138 -0.06666590 -0.04559860  0.02097699  0.13845014  0.14109298
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00001855  0.00000004  0.08397510 -0.40968966 -0.47938591 -0.17181073  0.17122448
                           0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000000

  10    1  |1 1>+         -0.00011545  0.00000020  0.42063781  0.35435717 -0.06320867 -0.31460949  0.30323519
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00007858  0.00000008 -0.34517859 -0.09234983  0.24348569 -0.41878898  0.41671460
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000145 -0.00000000 -0.00135170 -0.00120834  0.00029531 -0.00035929 -0.00008256

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000014 -0.00000001 -0.00014004 -0.00028937  0.00013664  0.00203608  0.00056503

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000153  0.00000000 -0.00115025  0.00098469 -0.00107710  0.00016580  0.00004385

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.02859231  0.00000318  0.07666761 -0.13671491 -0.20657996 -0.00018575 -0.00013791

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00128294  0.00005683  0.00582337 -0.01048438 -0.01556611 -0.00030827  0.00105771

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.46841377 -0.33637197  0.10080673  0.00454516  0.03426840 -0.04048325  0.14565572

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.18227873 -0.28327163 -0.02748476  0.08699251 -0.06831364 -0.03426070  0.12281632

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.28473637 -0.37409260 -0.06766002 -0.06773885  0.02025338 -0.04451589  0.16317971

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000
                          -0.00016593  0.00000006  0.51426784 -0.22624357  0.34046982 -0.14705808 -0.04144113

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00007853 -0.00000028  0.28804266  0.24764936 -0.05702166  0.61270889  0.16566056

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00006049  0.00000005  0.24948858  0.46080425 -0.21085218 -0.39918334 -0.11514247

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000036 -0.00000000  0.00073000 -0.00115018 -0.00126855  0.00002516  0.00011004

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000141 -0.00000000 -0.00094741  0.00088146 -0.00133150  0.00004707  0.00018621

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000010  0.00000000 -0.00006218  0.00000382 -0.00018361 -0.00053866 -0.00207116

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.23785172  0.00037273  0.11249486  0.09224553 -0.01863375  0.00003173 -0.00151880

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.34928148  0.00025782 -0.16489693 -0.13472366  0.02775180  0.00082076  0.00199721

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.21290496 -0.33293048 -0.02055478  0.00477499 -0.10438384  0.14545888 -0.03785435

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.18325997  0.46860165 -0.02379927  0.01545665 -0.07053945 -0.20421138  0.05300860

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.27383479 -0.05384910 -0.07667971  0.10044007  0.02881978  0.02405594 -0.00659736

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002223 -0.00000011  0.01799313  0.03979857  0.24298666  0.18141473  0.69616696

  10    1  |1 1>-          0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                           0.00011224  0.00000005 -0.42717974  0.51576277 -0.02131829 -0.00293298 -0.01331492

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                          -0.00006209  0.00000002  0.05072261  0.06168099  0.61804651 -0.07052314 -0.27567465

   1    1  |0 0>          -0.00000000  0.00000000  0.00280057  0.00587503 -0.01079301  0.00856601  0.00322766
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000002 -0.00000000 -0.00364913 -0.00469776 -0.01117149 -0.00816576 -0.00397178
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000004 -0.00000000  0.01440446  0.00010897 -0.00045717 -0.00359299 -0.00469210
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000001 -0.00000001 -0.00282396  0.00062747  0.00073015  0.00660820 -0.01378749
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000001 -0.00000000 -0.00245093  0.01362495  0.00077208 -0.00678470 -0.00208869
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000001 -0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.08663845     -0.01255379    -2755.24      0.00000000        0.00      0.0000
     2   1   -214.07914501     -0.00506035    -1110.62      0.00749344     1644.62      0.2039
     3   1   -214.07914501     -0.00506035    -1110.62      0.00749344     1644.62      0.2039
     4   1   -214.07914500     -0.00506034    -1110.62      0.00749345     1644.62      0.2039
     5   1   -214.07114153      0.00294313      645.94      0.01549692     3401.18      0.4217
     6   1   -214.07114152      0.00294314      645.94      0.01549693     3401.18      0.4217
     7   1   -214.07114144      0.00294322      645.96      0.01549701     3401.20      0.4217
     8   1   -214.07114144      0.00294322      645.96      0.01549701     3401.20      0.4217
     9   1   -214.07114143      0.00294323      645.97      0.01549702     3401.20      0.4217
    10   1   -214.04540463      0.02868003     6294.54      0.04123382     9049.78      1.1220
    11   1   -214.04540462      0.02868004     6294.54      0.04123383     9049.78      1.1220
    12   1   -214.04540461      0.02868005     6294.54      0.04123384     9049.78      1.1220
    13   1   -214.04540455      0.02868011     6294.56      0.04123390     9049.80      1.1220
    14   1   -214.04540453      0.02868014     6294.56      0.04123392     9049.80      1.1220
    15   1   -214.00650728      0.06757738    14831.52      0.08013117    17586.76      2.1805
    16   1   -213.88922370      0.18486096    40572.29      0.19741475    43327.53      5.3719
    17   1   -213.88922369      0.18486097    40572.29      0.19741476    43327.53      5.3719
    18   1   -213.88922368      0.18486098    40572.29      0.19741477    43327.53      5.3719
    19   1   -213.88332047      0.19076419    41867.90      0.20331798    44623.14      5.5326
    20   1   -213.88332046      0.19076420    41867.90      0.20331799    44623.14      5.5326
    21   1   -213.88332045      0.19076421    41867.91      0.20331800    44623.14      5.5326
    22   1   -213.88331830      0.19076636    41868.38      0.20332015    44623.62      5.5326
    23   1   -213.88331829      0.19076637    41868.38      0.20332016    44623.62      5.5326
    24   1   -213.88079700      0.19328766    42421.74      0.20584145    45176.98      5.6012
    25   1   -213.87664879      0.19743588    43332.17      0.20998966    46087.40      5.7141
    26   1   -213.87664878      0.19743588    43332.17      0.20998967    46087.40      5.7141
    27   1   -213.87664877      0.19743589    43332.17      0.20998968    46087.41      5.7141
    28   1   -213.87251925      0.20156542    44238.50      0.21411920    46993.73      5.8265
    29   1   -213.87251923      0.20156543    44238.50      0.21411922    46993.74      5.8265
    30   1   -213.87251923      0.20156543    44238.50      0.21411922    46993.74      5.8265
    31   1   -213.87251804      0.20156662    44238.76      0.21412041    46994.00      5.8265
    32   1   -213.87251802      0.20156664    44238.76      0.21412043    46994.00      5.8265
    33   1   -213.87251801      0.20156665    44238.77      0.21412044    46994.00      5.8265
    34   1   -213.87251651      0.20156816    44239.10      0.21412194    46994.33      5.8266
    35   1   -213.86933207      0.20475259    44938.00      0.21730638    47693.24      5.9132
    36   1   -213.86933207      0.20475259    44938.00      0.21730638    47693.24      5.9132
    37   1   -213.86933206      0.20475260    44938.00      0.21730638    47693.24      5.9132
    38   1   -213.86933172      0.20475294    44938.08      0.21730673    47693.31      5.9132
    39   1   -213.86933171      0.20475295    44938.08      0.21730674    47693.32      5.9132

 E0 =   -214.07408466 is the energy of the lowest zeroth-order state
 E1 =   -214.08663845 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.55880527 -0.00066557 -0.12109830 -0.04487747  0.28734685  0.71284027  0.00841853 -0.12260214
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.09685730 -0.03548299  0.69573014 -0.01042164  0.03798949  0.13718858  0.03608272  0.66472004
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.03736982  0.10191901  0.00760370  0.69808187  0.01669663  0.05029752 -0.11287560 -0.03784914
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.00586680 -0.00030071  0.00084956  0.00004080 -0.00008801  0.00705290 -0.00040935
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000000  0.00281703  0.00016109 -0.00041770  0.00001674 -0.00015704  0.01467719 -0.00092939
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00000000 -0.00063199  0.00354206 -0.00299679 -0.00869630  0.00340684 -0.00098347 -0.00563117
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00000000  0.00055648  0.00247146  0.00477602 -0.00480611  0.00185309  0.00102735 -0.00323943
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000000 -0.00022572  0.00371197 -0.00025375  0.01171907 -0.00473684 -0.00042650 -0.00510073
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00267094 -0.00060023 -0.00060612 -0.00429817  0.00043768  0.00116421 -0.00051007  0.00022232
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00488571 -0.00013159  0.00377409  0.00035906  0.00088373  0.00203622 -0.00007424 -0.00281418
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00655105  0.00034286 -0.00256755  0.00148463  0.00108977  0.00284044  0.00030987  0.00194336
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.09972326  0.00944370  0.69437765  0.04778462 -0.12440041 -0.03280139 -0.05853575 -0.65922949

 13  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.55767433  0.05889807  0.12315084 -0.00010804  0.76249475  0.10898070 -0.06370854 -0.09995169

 14  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000
                                0.04579175 -0.69672059  0.01240108  0.10537913  0.06334238  0.00136086  0.66274278 -0.08373424

 15  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00006532 -0.00004998  0.00049107  0.00002894  0.00000957  0.00280660  0.00220927

 16  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00097787  0.00045370 -0.00647750  0.00001241 -0.00006899  0.00020351  0.00016393

 17  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00337821  0.00308341  0.00074303  0.00130246 -0.00939745 -0.00462165  0.00517499

 18  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00450009  0.00203142 -0.00052403  0.00112469 -0.00806677  0.00662745  0.00239033

 19  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00037187 -0.00432840 -0.00022851  0.00164537 -0.01069989 -0.00110800 -0.00590373

 20  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00169535  0.00429010 -0.00122022 -0.00072993  0.00079284  0.00005889  0.00310606 -0.00123566

 21  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00707337  0.00002804 -0.00261369 -0.00018940 -0.00319418 -0.00050833 -0.00012827 -0.00197136

 22  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00458403 -0.00154338 -0.00358174 -0.00002230  0.00213731  0.00026482 -0.00133570 -0.00248191

 23  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.02886320 -0.01974261 -0.05457597  0.70375188  0.02601756 -0.03136474 -0.00346979  0.09838947

 24  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000
                               -0.05157820  0.70345101  0.02504014  0.01840231  0.04437555 -0.06276167  0.67456629 -0.02246296

 25  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.56528585  0.06317646 -0.00050190  0.03761230 -0.48226169  0.61076115  0.06725255 -0.01773720

 26  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00022082 -0.00541865 -0.00040204 -0.00014186  0.00020327  0.00031647  0.00922266

 27  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00011701 -0.00370227 -0.00027480  0.00025234 -0.00026226 -0.00046813 -0.01350813

 28  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00376719  0.00006508 -0.00273029  0.00751912  0.00586686  0.00561380  0.00041031

 29  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001 -0.00304089 -0.00002394 -0.00138597 -0.01051810 -0.00834803  0.00437740  0.00014302

 30  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00300636 -0.00046481  0.00479321  0.00122399  0.00093527  0.00420666 -0.00112427

 31  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00799451 -0.00111031  0.00005626 -0.00128121 -0.00228060  0.00288470  0.00087663  0.00000665

 32  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00013229  0.00336068  0.00036606 -0.00313365  0.00004139 -0.00002322 -0.00244857  0.00043516

 33  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00316079 -0.00294893  0.00012698 -0.00310938  0.00090848 -0.00116794  0.00223918  0.00028227

 34  1     1    1  |0 0>       -0.00000002 -0.00000027 -0.00000032  0.00000003 -0.16417562 -0.00877880 -0.16872406 -0.13783010
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

 35  1     2    1  |0 0>        0.00000004 -0.00000018  0.00000017  0.00000007  0.16233184 -0.00427357 -0.13558665  0.05993607
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

 36  1     3    1  |0 0>        0.00000002  0.00000025 -0.00000037  0.00000001  0.09577513 -0.05562525  0.11792138 -0.21749594
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 37  1     4    1  |0 0>       -0.00000019 -0.00000002 -0.00000001 -0.00000001 -0.00955177 -0.27522492 -0.02369665  0.04267458
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1     5    1  |0 0>        0.00000008 -0.00000020 -0.00000017 -0.00000005  0.12883309  0.01514422 -0.13358830 -0.08630940
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

 39  1     6    1  |0 0>       -0.17508087 -0.00000000  0.00000000  0.00000000  0.00000021  0.00000002 -0.00000003 -0.00000005
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.05167138 -0.03383132 -0.00494352  0.02242615  0.21339218 -0.07251765 -0.09950471 -0.00025227
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.03514650  0.16560990  0.07318523 -0.07332521  0.04063455 -0.01591737 -0.01724704 -0.00069836
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.66624441 -0.07248433 -0.02447157 -0.18363540  0.00783959 -0.01002875 -0.00665433  0.00558247
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00119224  0.00280891 -0.00675997 -0.00016500  0.00019755 -0.00033195  0.00000000  0.16871898
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00245205  0.00590272 -0.01403841 -0.00039342  0.00038678 -0.00076508 -0.00000000 -0.08007348
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00392183  0.00600889  0.00289280  0.00246397 -0.00290557 -0.00909316 -0.00000001  0.30157656
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00715060  0.00040317  0.00061188 -0.00779495 -0.00192188 -0.00533212 -0.00000001 -0.39883762
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00006095  0.00493481  0.00163313 -0.00224743  0.00428119  0.01201472  0.00000001  0.05920831
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00321197 -0.00171341 -0.00043406 -0.00623407  0.00210229 -0.00096669 -0.00262735 -0.16128898
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00045941 -0.00469259 -0.00184563  0.00258025  0.00411490 -0.00133649 -0.00480598 -0.00219484
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00097363  0.00376073  0.00182125  0.00050491  0.00576715 -0.00194082 -0.00644414  0.06739608
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.10180083 -0.15471239 -0.08067835  0.08782131 -0.01043564  0.04266692 -0.01775740 -0.00009637

 13  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.02358416 -0.02774451 -0.01836221  0.02099428  0.04287240 -0.22142565  0.09930308  0.00013114

 14  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.10461521 -0.08748822  0.17865154  0.01146414 -0.00162323 -0.00780300  0.00815399 -0.00180699

 15  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.01610402 -0.00722269 -0.00258408 -0.01501787 -0.00061397 -0.00041904  0.00000000 -0.04372000

 16  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00122237 -0.00054824 -0.00018556 -0.00114256  0.00002403 -0.00001767  0.00000000  0.57987576

 17  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00010264 -0.00614978  0.00282353  0.00201790  0.00948032  0.00222214  0.00000002  0.10150324

 18  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00145474  0.00015421 -0.00725063  0.00076977  0.00829556  0.00128810  0.00000001 -0.12591374

 19  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00097513  0.00458029  0.00305839 -0.00319217  0.01081370  0.00201143  0.00000002  0.00047588

 20  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00037442 -0.00418790  0.00512324  0.00115794  0.00010379 -0.00115038  0.00166768  0.05392064

 21  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00030149 -0.00290185 -0.00175656  0.00157821 -0.00128067  0.00636996 -0.00695794  0.00251109

 22  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00057379 -0.00338323 -0.00393363  0.00239687  0.00077622 -0.00411643  0.00450923 -0.01606717

 23  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.67025627  0.09754823 -0.00174442  0.17369942 -0.00132283 -0.00467125 -0.00513958  0.00521715

 24  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00318481 -0.06040068  0.18564260  0.03591012 -0.01947770 -0.00287490 -0.00918436  0.00272939

 25  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.03869328 -0.00322482  0.01229493  0.00346365  0.17257742  0.15102567  0.10065873  0.00051543

 26  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00135467 -0.00779114 -0.00336600  0.00436604 -0.00016397  0.00019918 -0.00000000 -0.01804443

 27  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00194522  0.01142705  0.00493041 -0.00635761  0.00020326 -0.00024684 -0.00000000 -0.01092693

 28  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00379355  0.00019762 -0.00571523 -0.00448401 -0.00645324  0.00700313  0.00000000  0.38139340

 29  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00191692 -0.00017167 -0.00369671 -0.00235772  0.00899895 -0.01060794 -0.00000000  0.23958429

 30  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00699594  0.00488508 -0.00413451  0.00556305 -0.00070397  0.00109167 -0.00000000 -0.27658585

 31  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00094962  0.00030350  0.00141121  0.00163159  0.00552172  0.00488353  0.00786404 -0.06532088

 32  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00236806  0.00379507 -0.00453514  0.00328569  0.00017838 -0.00026955 -0.00013013 -0.05320794

 33  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00224549  0.00085662  0.00417805  0.00478774 -0.00208414 -0.00157375 -0.00310921 -0.16298682

 34  1     1    1  |0 0>       -0.06833575  0.32101260  0.70330329  0.17459599  0.06101521 -0.53686762 -0.00000001  0.00000001
                               -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 35  1     2    1  |0 0>       -0.17555447 -0.06923739  0.32014160  0.67456628  0.00665634  0.59812183  0.00000001  0.00000001
                               -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 36  1     3    1  |0 0>       -0.07541782  0.87321500 -0.16988689 -0.09021641  0.18854172  0.29166022  0.00000001 -0.00000002
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 37  1     4    1  |0 0>        0.03073853 -0.20612285  0.04424458 -0.06791972  0.93311841  0.01867381  0.00000003 -0.00000003
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     5    1  |0 0>        0.19246429 -0.08535279  0.54053105 -0.64949490 -0.10045286  0.43442514  0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     6    1  |0 0>        0.00000001 -0.00000000 -0.00000000  0.00000001 -0.00000005 -0.00000007  0.98440674 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00072276  0.00076205 -0.00152306 -0.00079760  0.00098392  0.00868064  0.00861563 -0.00686542
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00443901 -0.00370972  0.00791288  0.00062647 -0.00705033  0.00150202  0.00150120 -0.00118997
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00069762 -0.00178006  0.00217887  0.00992138  0.00351851  0.00058645  0.00060132 -0.00045912
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.35242450  0.38787640  0.21101885 -0.12755736  0.22692076 -0.00104062  0.00089204  0.00000005
                               -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.17063688 -0.18566323  0.44205728 -0.26414677  0.47018521  0.00030267 -0.00062471 -0.00000000
                                0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.28439812  0.12936832  0.13915399 -0.17065437 -0.22855314  0.31094055 -0.31364928  0.00000036
                               -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.11659832  0.28052711  0.18954195  0.31416495 -0.00119306  0.17364995 -0.17387578  0.00000027
                                0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.26455911  0.21445728  0.18390614  0.00220302 -0.17284820 -0.41256079  0.41560106 -0.00000008
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00350286  0.06647825 -0.06352723 -0.19793871 -0.05146495 -0.05752017 -0.05751207 -0.17931912
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.11252992 -0.10073898  0.14185079  0.03022404 -0.11583985 -0.10504703 -0.10408790 -0.32801242
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.08535158  0.04802607 -0.07973245  0.05885064  0.10745048 -0.14073841 -0.13972451 -0.43981863
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00454339 -0.00363897 -0.00772138 -0.00173642  0.00706495 -0.00210391  0.00056210 -0.00122520

 13  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00109690 -0.00028834 -0.00078785 -0.00062682  0.00180547  0.01178175 -0.00320501  0.00685151

 14  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00346427 -0.00441327 -0.00731638  0.00395520 -0.00679736  0.00095541 -0.00024652  0.00056259

 15  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000001  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00983353  0.01116996  0.10966089  0.70569375  0.29172982 -0.00009823 -0.00023310  0.00000006

 16  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.10844082 -0.15154135  0.00826098  0.05365999  0.02167648  0.00085597  0.00316173  0.00000001

 17  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.03041893  0.41644744 -0.30936344  0.05293591 -0.01090692  0.11806303  0.43530751 -0.00000032

 18  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.39953047 -0.19112170  0.10466436 -0.13504119  0.29072058  0.10019025  0.36663664 -0.00000016

 19  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.33211978 -0.22902936  0.19945684  0.05432410 -0.20973286  0.13109302  0.48300269  0.00000013

 20  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.06630134  0.15837975  0.18595670 -0.06929938  0.09753233 -0.04933054  0.01319809  0.11382101

 21  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.07987955  0.06710092  0.09526633  0.01993570 -0.08356138  0.20671578 -0.05607028 -0.47488647

 22  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.14777816  0.04496473  0.07852904  0.05606545 -0.16439232 -0.13411060  0.03670315  0.30775915

 23  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00170462 -0.00218081 -0.00030536 -0.01039946 -0.00274327  0.00015742 -0.00063779 -0.00035461

 24  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00352408  0.00384882 -0.00694519  0.00232631 -0.00784412  0.00027540 -0.00107898 -0.00063368

 25  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00023451  0.00023983 -0.00064728 -0.00035231 -0.00084274 -0.00316123  0.01196381  0.00694503

 26  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.37688128 -0.33475569 -0.33313624 -0.06346174  0.27458317 -0.00109448 -0.00070588 -0.00000043

 27  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.25931181 -0.22656894  0.48753476  0.09123206 -0.40265372 -0.00097336  0.00034930  0.00000048

 28  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.14288488  0.14253722  0.17214903  0.11646200  0.23812224 -0.43206118 -0.11407554 -0.00000007

 29  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.13703056  0.14096518  0.13581955  0.03975902  0.17602721  0.60632029  0.16003425  0.00000018

 30  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.28906856  0.34221231  0.11517327 -0.36245000  0.05926320 -0.07112150 -0.01987327 -0.00000002

 31  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01288983 -0.01137651  0.03799725  0.04786185  0.05638545  0.06192265 -0.23402808  0.53672814

 32  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.11512501  0.13268363 -0.09914568  0.18735950 -0.07675650 -0.00115821  0.00445800 -0.00888134

 33  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.03742017 -0.03432728  0.10036958  0.11131319  0.14656436 -0.02421399  0.09275959 -0.21220669

 34  1     1    1  |0 0>       -0.00000002 -0.00000000  0.00077401  0.00234488  0.01739628 -0.01201578  0.00455678 -0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 35  1     2    1  |0 0>        0.00000001  0.00000002  0.01183592  0.01086084  0.00736351  0.01143597 -0.00555182  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 36  1     3    1  |0 0>       -0.00000001 -0.00000003 -0.01799504  0.00775736  0.00488714  0.00500176 -0.00640168 -0.00000002
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 37  1     4    1  |0 0>       -0.00000001  0.00000000  0.00289013 -0.00269946 -0.00102312 -0.00915017 -0.01932436  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1     5    1  |0 0>        0.00000001  0.00000000 -0.00101256 -0.01682164  0.00959712  0.00948359 -0.00280039 -0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000001  0.00000001 -0.00000004 -0.01703115
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.00097424 -0.00055367 -0.00030858 -0.00000018  0.00000015 -0.00000013  0.00000016 -0.00000024
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00571311  0.00251935 -0.00057289  0.00000087 -0.00000050  0.00000104 -0.00000130  0.00000064
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00023929  0.00174944  0.00609904  0.00000048 -0.00000098 -0.00000090  0.00000099  0.00000190
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.06118455 -0.12885602  0.03962482  0.50515371  0.43357523 -0.21096582 -0.16249426  0.08588215
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.02978982  0.06181737 -0.01878042 -0.24385155 -0.20710821  0.09915393 -0.34006283  0.17997566
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.08386757 -0.01582973  0.07953928 -0.09076232 -0.06296492 -0.35114517 -0.35736784 -0.16009929
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.05022484 -0.05811438 -0.11065124 -0.24211729  0.33471396  0.10480736  0.07855921  0.50810747
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.08455731 -0.03601373  0.01333267 -0.16941897  0.09033037 -0.22110545 -0.23742007  0.09148409
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.05128325  0.21095446  0.61167722  0.00002948 -0.00005306 -0.00003723 -0.00007001 -0.00016804
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.50711914 -0.24179990 -0.00866295 -0.00004028  0.00002840 -0.00004095 -0.00008745  0.00006187
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.35729482  0.09432303 -0.24292699  0.00001801  0.00000117  0.00004711  0.00009428  0.00002276
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00579331  0.00238273  0.00006972  0.00000085 -0.00000066  0.00000099  0.00000124 -0.00000081

 13  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00121854 -0.00004161  0.00015090  0.00000006 -0.00000018  0.00000020  0.00000032 -0.00000020

 14  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00222354  0.00569580 -0.00168584  0.00000113  0.00000088 -0.00000039 -0.00000129  0.00000067

 15  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00180522 -0.00304036 -0.01190455  0.01701698 -0.04018088 -0.04084623 -0.29386779 -0.49399144

 16  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000
                               -0.01801617  0.03953467  0.15791162 -0.22121397  0.51463283  0.53150604 -0.02241313 -0.03935866

 17  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.03955681 -0.10627440  0.02165783 -0.34685369 -0.05636997 -0.09181883 -0.02976088 -0.00905770

 18  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.08824402  0.08107176 -0.03069728  0.17285453  0.28271175 -0.20312696  0.40834019 -0.23180335

 19  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.10292062  0.03386657  0.00279076  0.17991278 -0.16565501  0.23493777 -0.28271144  0.18391045

 20  1     9    1  |1 0>        0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.06912600  0.64390564 -0.16957790  0.00006726  0.00003467 -0.00000510  0.00008322 -0.00003966

 21  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.35540148  0.15609966  0.00178542  0.00002683 -0.00001788  0.00002867 -0.00006474  0.00004284

 22  1    11    1  |1 0>       -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.57396486  0.00272769  0.06547129  0.00001613 -0.00004136  0.00004689 -0.00013031  0.00008064

 23  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00115411  0.00248692  0.00573324  0.00000059 -0.00000077 -0.00000104 -0.00000082 -0.00000193

 24  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00244655 -0.00518095  0.00270731 -0.00000098 -0.00000106  0.00000026 -0.00000156  0.00000042

 25  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00016430 -0.00034574  0.00053975 -0.00000006 -0.00000015 -0.00000004 -0.00000019 -0.00000006

 26  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.12260383  0.05800380 -0.00080989 -0.40328472  0.26449311 -0.42162110 -0.18297780  0.12098076

 27  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.08406929  0.03892156 -0.00020851 -0.27424944  0.17781861 -0.28751378  0.27213859 -0.18031053

 28  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.02509225 -0.05256817  0.10023173 -0.11623152 -0.33211287 -0.09525628  0.38607760  0.16861610

 29  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.02406617 -0.04983554  0.06220934 -0.11773518 -0.23260189 -0.03238333  0.27617121  0.05994077

 30  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.04938892 -0.10627536 -0.07919835 -0.30461799  0.04445110  0.32075179  0.02050977 -0.50563976

 31  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.03179278 -0.06607054  0.24032093 -0.00000446 -0.00002387 -0.00001072  0.00005535  0.00003905

 32  1    10    1  |1 1>-       0.00000001 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.27408955  0.58365683  0.22448075  0.00005823  0.00001219 -0.00004926 -0.00004662  0.00014888

 33  1    11    1  |1 1>-      -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.09188373 -0.19153757  0.59844139 -0.00001385 -0.00006376 -0.00002660  0.00014154  0.00009143

 34  1     1    1  |0 0>        0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 35  1     2    1  |0 0>       -0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 36  1     3    1  |0 0>        0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 37  1     4    1  |0 0>        0.00000001  0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1     5    1  |0 0>        0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000003
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 39  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39

  1  1     1    1  |1 1>+       0.00000027 -0.00000000 -0.00022836 -0.00026572 -0.00003473  0.00150776 -0.00148125
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000156 -0.00000000  0.00145070  0.00105981 -0.00037344  0.00025642 -0.00027464
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000002 -0.00000000 -0.00043448  0.00106884  0.00145844  0.00010306 -0.00010446
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.16848584  0.00018932 -0.06400660  0.06480189 -0.06627089  0.00037530  0.00026792
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.35078067 -0.00009809 -0.13407244  0.13391518 -0.13796442 -0.00004250 -0.00026855
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.26467509 -0.33066101 -0.08107807 -0.00936021  0.07041675 -0.10395546 -0.10523878
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.18541449 -0.18111156 -0.01839621 -0.09624896 -0.07574616 -0.05813226 -0.05818646
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.27772963  0.43726138 -0.06666590 -0.04559860  0.02097699  0.13845014  0.14109298
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00001855  0.00000004  0.08397510 -0.40968966 -0.47938591 -0.17181073  0.17122448
                                0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00011545  0.00000020  0.42063781  0.35435717 -0.06320867 -0.31460949  0.30323519
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00007858  0.00000008 -0.34517859 -0.09234983  0.24348569 -0.41878898  0.41671460
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000145 -0.00000000 -0.00135170 -0.00120834  0.00029531 -0.00035929 -0.00008256

 13  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000014 -0.00000001 -0.00014004 -0.00028937  0.00013664  0.00203608  0.00056503

 14  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000153  0.00000000 -0.00115025  0.00098469 -0.00107710  0.00016580  0.00004385

 15  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.02859231  0.00000318  0.07666761 -0.13671491 -0.20657996 -0.00018575 -0.00013791

 16  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00128294  0.00005683  0.00582337 -0.01048438 -0.01556611 -0.00030827  0.00105771

 17  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.46841377 -0.33637197  0.10080673  0.00454516  0.03426840 -0.04048325  0.14565572

 18  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.18227873 -0.28327163 -0.02748476  0.08699251 -0.06831364 -0.03426070  0.12281632

 19  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.28473637 -0.37409260 -0.06766002 -0.06773885  0.02025338 -0.04451589  0.16317971

 20  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000
                               -0.00016593  0.00000006  0.51426784 -0.22624357  0.34046982 -0.14705808 -0.04144113

 21  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00007853 -0.00000028  0.28804266  0.24764936 -0.05702166  0.61270889  0.16566056

 22  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00006049  0.00000005  0.24948858  0.46080425 -0.21085218 -0.39918334 -0.11514247

 23  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000036 -0.00000000  0.00073000 -0.00115018 -0.00126855  0.00002516  0.00011004

 24  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000141 -0.00000000 -0.00094741  0.00088146 -0.00133150  0.00004707  0.00018621

 25  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000010  0.00000000 -0.00006218  0.00000382 -0.00018361 -0.00053866 -0.00207116

 26  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.23785172  0.00037273  0.11249486  0.09224553 -0.01863375  0.00003173 -0.00151880

 27  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.34928148  0.00025782 -0.16489693 -0.13472366  0.02775180  0.00082076  0.00199721

 28  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.21290496 -0.33293048 -0.02055478  0.00477499 -0.10438384  0.14545888 -0.03785435

 29  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.18325997  0.46860165 -0.02379927  0.01545665 -0.07053945 -0.20421138  0.05300860

 30  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.27383479 -0.05384910 -0.07667971  0.10044007  0.02881978  0.02405594 -0.00659736

 31  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002223 -0.00000011  0.01799313  0.03979857  0.24298666  0.18141473  0.69616696

 32  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                                0.00011224  0.00000005 -0.42717974  0.51576277 -0.02131829 -0.00293298 -0.01331492

 33  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                               -0.00006209  0.00000002  0.05072261  0.06168099  0.61804651 -0.07052314 -0.27567465

 34  1     1    1  |0 0>       -0.00000000  0.00000000  0.00280057  0.00587503 -0.01079301  0.00856601  0.00322766
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 35  1     2    1  |0 0>        0.00000002 -0.00000000 -0.00364913 -0.00469776 -0.01117149 -0.00816576 -0.00397178
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 36  1     3    1  |0 0>       -0.00000004 -0.00000000  0.01440446  0.00010897 -0.00045717 -0.00359299 -0.00469210
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 37  1     4    1  |0 0>        0.00000001 -0.00000001 -0.00282396  0.00062747  0.00073015  0.00660820 -0.01378749
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1     5    1  |0 0>        0.00000001 -0.00000000 -0.00245093  0.01362495  0.00077208 -0.00678470 -0.00208869
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     6    1  |0 0>       -0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000001 -0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        31.23%    0.00%    1.47%    0.20%    8.26%   50.81%    0.01%    1.50%
  2  1     2    1  |1 1>+         0.94%    0.13%   48.40%    0.01%    0.14%    1.88%    0.13%   44.19%
  3  1     3    1  |1 1>+         0.14%    1.04%    0.01%   48.73%    0.03%    0.25%    1.27%    0.14%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     1    1  |1 0>          0.99%    0.01%   48.22%    0.23%    1.55%    0.11%    0.34%   43.46%
 13  1     2    1  |1 0>         31.10%    0.35%    1.52%    0.00%   58.14%    1.19%    0.41%    1.00%
 14  1     3    1  |1 0>          0.21%   48.54%    0.02%    1.11%    0.40%    0.00%   43.92%    0.70%
 15  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 18  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 19  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 20  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    10    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     1    1  |1 1>-         0.08%    0.04%    0.30%   49.53%    0.07%    0.10%    0.00%    0.97%
 24  1     2    1  |1 1>-         0.27%   49.48%    0.06%    0.03%    0.20%    0.39%   45.50%    0.05%
 25  1     3    1  |1 1>-        31.95%    0.40%    0.00%    0.14%   23.26%   37.30%    0.45%    0.03%
 26  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 27  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 28  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 29  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%
 30  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     9    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.70%    0.01%    2.85%    1.90%
 35  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.64%    0.00%    1.84%    0.36%
 36  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.92%    0.31%    1.39%    4.73%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    7.57%    0.06%    0.18%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.66%    0.02%    1.78%    0.74%
 39  1     6    1  |0 0>          3.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.27%    0.11%    0.00%    0.05%    4.55%    0.53%    0.99%    0.00%
  2  1     2    1  |1 1>+         0.12%    2.74%    0.54%    0.54%    0.17%    0.03%    0.03%    0.00%
  3  1     3    1  |1 1>+        44.39%    0.53%    0.06%    3.37%    0.01%    0.01%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.85%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.64%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    9.09%
  7  1     7    1  |1 1>+         0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   15.91%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.35%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.60%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.45%
 12  1     1    1  |1 0>          1.04%    2.39%    0.65%    0.77%    0.01%    0.18%    0.03%    0.00%
 13  1     2    1  |1 0>          0.06%    0.08%    0.03%    0.04%    0.18%    4.90%    0.99%    0.00%
 14  1     3    1  |1 0>          1.09%    0.77%    3.19%    0.01%    0.00%    0.01%    0.01%    0.00%
 15  1     4    1  |1 0>          0.03%    0.01%    0.00%    0.02%    0.00%    0.00%    0.00%    0.19%
 16  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.63%
 17  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    1.03%
 18  1     7    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.01%    0.00%    0.00%    1.59%
 19  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 20  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.29%
 21  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 23  1     1    1  |1 1>-        44.92%    0.95%    0.00%    3.02%    0.00%    0.00%    0.00%    0.00%
 24  1     2    1  |1 1>-         0.00%    0.36%    3.45%    0.13%    0.04%    0.00%    0.01%    0.00%
 25  1     3    1  |1 1>-         0.15%    0.00%    0.02%    0.00%    2.98%    2.28%    1.01%    0.00%
 26  1     4    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 27  1     5    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 28  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.55%
 29  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    5.74%
 30  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.65%
 31  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.43%
 32  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.28%
 33  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.66%
 34  1     1    1  |0 0>          0.47%   10.30%   49.46%    3.05%    0.37%   28.82%    0.00%    0.00%
 35  1     2    1  |0 0>          3.08%    0.48%   10.25%   45.50%    0.00%   35.77%    0.00%    0.00%
 36  1     3    1  |0 0>          0.57%   76.25%    2.89%    0.81%    3.55%    8.51%    0.00%    0.00%
 37  1     4    1  |0 0>          0.09%    4.25%    0.20%    0.46%   87.07%    0.03%    0.00%    0.00%
 38  1     5    1  |0 0>          3.70%    0.73%   29.22%   42.18%    1.01%   18.87%    0.00%    0.00%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.91%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+        12.42%   15.04%    4.45%    1.63%    5.15%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         2.91%    3.45%   19.54%    6.98%   22.11%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         8.09%    1.67%    1.94%    2.91%    5.22%    9.67%    9.84%    0.00%
  7  1     7    1  |1 1>+         1.36%    7.87%    3.59%    9.87%    0.00%    3.02%    3.02%    0.00%
  8  1     8    1  |1 1>+         7.00%    4.60%    3.38%    0.00%    2.99%   17.02%   17.27%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.44%    0.40%    3.92%    0.26%    0.33%    0.33%    3.22%
 10  1    10    1  |1 1>+         1.27%    1.01%    2.01%    0.09%    1.34%    1.10%    1.08%   10.76%
 11  1    11    1  |1 1>+         0.73%    0.23%    0.64%    0.35%    1.15%    1.98%    1.95%   19.34%
 12  1     1    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 14  1     3    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     4    1  |1 0>          0.01%    0.01%    1.20%   49.80%    8.51%    0.00%    0.00%    0.00%
 16  1     5    1  |1 0>          1.18%    2.30%    0.01%    0.29%    0.05%    0.00%    0.00%    0.00%
 17  1     6    1  |1 0>          0.09%   17.34%    9.57%    0.28%    0.01%    1.39%   18.95%    0.00%
 18  1     7    1  |1 0>         15.96%    3.65%    1.10%    1.82%    8.45%    1.00%   13.44%    0.00%
 19  1     8    1  |1 0>         11.03%    5.25%    3.98%    0.30%    4.40%    1.72%   23.33%    0.00%
 20  1     9    1  |1 0>          0.44%    2.51%    3.46%    0.48%    0.95%    0.24%    0.02%    1.30%
 21  1    10    1  |1 0>          0.64%    0.45%    0.91%    0.04%    0.70%    4.27%    0.31%   22.55%
 22  1    11    1  |1 0>          2.18%    0.20%    0.62%    0.31%    2.70%    1.80%    0.13%    9.47%
 23  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 24  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 25  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 26  1     4    1  |1 1>-        14.20%   11.21%   11.10%    0.40%    7.54%    0.00%    0.00%    0.00%
 27  1     5    1  |1 1>-         6.72%    5.13%   23.77%    0.83%   16.21%    0.00%    0.00%    0.00%
 28  1     6    1  |1 1>-         2.04%    2.03%    2.96%    1.36%    5.67%   18.67%    1.30%    0.00%
 29  1     7    1  |1 1>-         1.88%    1.99%    1.84%    0.16%    3.10%   36.76%    2.56%    0.00%
 30  1     8    1  |1 1>-         8.36%   11.71%    1.33%   13.14%    0.35%    0.51%    0.04%    0.00%
 31  1     9    1  |1 1>-         0.02%    0.01%    0.14%    0.23%    0.32%    0.38%    5.48%   28.81%
 32  1    10    1  |1 1>-         1.33%    1.76%    0.98%    3.51%    0.59%    0.00%    0.00%    0.01%
 33  1    11    1  |1 1>-         0.14%    0.12%    1.01%    1.24%    2.15%    0.06%    0.86%    4.50%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.01%    0.00%    0.00%
 35  1     2    1  |0 0>          0.00%    0.00%    0.01%    0.01%    0.01%    0.01%    0.00%    0.00%
 36  1     3    1  |0 0>          0.00%    0.00%    0.03%    0.01%    0.00%    0.00%    0.00%    0.00%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.04%    0.00%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.03%    0.01%    0.01%    0.00%    0.00%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.37%    1.66%    0.16%   25.52%   18.80%    4.45%    2.64%    0.74%
  5  1     5    1  |1 1>+         0.09%    0.38%    0.04%    5.95%    4.29%    0.98%   11.56%    3.24%
  6  1     6    1  |1 1>+         0.70%    0.03%    0.63%    0.82%    0.40%   12.33%   12.77%    2.56%
  7  1     7    1  |1 1>+         0.25%    0.34%    1.22%    5.86%   11.20%    1.10%    0.62%   25.82%
  8  1     8    1  |1 1>+         0.71%    0.13%    0.02%    2.87%    0.82%    4.89%    5.64%    0.84%
  9  1     9    1  |1 1>+         0.26%    4.45%   37.41%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+        25.72%    5.85%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+        12.77%    0.89%    5.90%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     4    1  |1 0>          0.00%    0.00%    0.01%    0.03%    0.16%    0.17%    8.64%   24.40%
 16  1     5    1  |1 0>          0.03%    0.16%    2.49%    4.89%   26.48%   28.25%    0.05%    0.15%
 17  1     6    1  |1 0>          0.16%    1.13%    0.05%   12.03%    0.32%    0.84%    0.09%    0.01%
 18  1     7    1  |1 0>          0.78%    0.66%    0.09%    2.99%    7.99%    4.13%   16.67%    5.37%
 19  1     8    1  |1 0>          1.06%    0.11%    0.00%    3.24%    2.74%    5.52%    7.99%    3.38%
 20  1     9    1  |1 0>          0.48%   41.46%    2.88%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    10    1  |1 0>         12.63%    2.44%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    11    1  |1 0>         32.94%    0.00%    0.43%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     4    1  |1 1>-         1.50%    0.34%    0.00%   16.26%    7.00%   17.78%    3.35%    1.46%
 27  1     5    1  |1 1>-         0.71%    0.15%    0.00%    7.52%    3.16%    8.27%    7.41%    3.25%
 28  1     6    1  |1 1>-         0.06%    0.28%    1.00%    1.35%   11.03%    0.91%   14.91%    2.84%
 29  1     7    1  |1 1>-         0.06%    0.25%    0.39%    1.39%    5.41%    0.10%    7.63%    0.36%
 30  1     8    1  |1 1>-         0.24%    1.13%    0.63%    9.28%    0.20%   10.29%    0.04%   25.57%
 31  1     9    1  |1 1>-         0.10%    0.44%    5.78%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1    10    1  |1 1>-         7.51%   34.07%    5.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    11    1  |1 1>-         0.84%    3.67%   35.81%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         2.84%    0.00%    0.41%    0.42%    0.44%    0.00%    0.00%
  5  1     5    1  |1 1>+        12.30%    0.00%    1.80%    1.79%    1.90%    0.00%    0.00%
  6  1     6    1  |1 1>+         7.01%   10.93%    0.66%    0.01%    0.50%    1.08%    1.11%
  7  1     7    1  |1 1>+         3.44%    3.28%    0.03%    0.93%    0.57%    0.34%    0.34%
  8  1     8    1  |1 1>+         7.71%   19.12%    0.44%    0.21%    0.04%    1.92%    1.99%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.71%   16.78%   22.98%    2.95%    2.93%
 10  1    10    1  |1 1>+         0.00%    0.00%   17.69%   12.56%    0.40%    9.90%    9.20%
 11  1    11    1  |1 1>+         0.00%    0.00%   11.91%    0.85%    5.93%   17.54%   17.37%
 12  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     4    1  |1 0>          0.08%    0.00%    0.59%    1.87%    4.27%    0.00%    0.00%
 16  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.02%    0.00%    0.00%
 17  1     6    1  |1 0>         21.94%   11.31%    1.02%    0.00%    0.12%    0.16%    2.12%
 18  1     7    1  |1 0>          3.32%    8.02%    0.08%    0.76%    0.47%    0.12%    1.51%
 19  1     8    1  |1 0>          8.11%   13.99%    0.46%    0.46%    0.04%    0.20%    2.66%
 20  1     9    1  |1 0>          0.00%    0.00%   26.45%    5.12%   11.59%    2.16%    0.17%
 21  1    10    1  |1 0>          0.00%    0.00%    8.30%    6.13%    0.33%   37.54%    2.74%
 22  1    11    1  |1 0>          0.00%    0.00%    6.22%   21.23%    4.45%   15.93%    1.33%
 23  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     4    1  |1 1>-         5.66%    0.00%    1.27%    0.85%    0.03%    0.00%    0.00%
 27  1     5    1  |1 1>-        12.20%    0.00%    2.72%    1.82%    0.08%    0.00%    0.00%
 28  1     6    1  |1 1>-         4.53%   11.08%    0.04%    0.00%    1.09%    2.12%    0.14%
 29  1     7    1  |1 1>-         3.36%   21.96%    0.06%    0.02%    0.50%    4.17%    0.28%
 30  1     8    1  |1 1>-         7.50%    0.29%    0.59%    1.01%    0.08%    0.06%    0.00%
 31  1     9    1  |1 1>-         0.00%    0.00%    0.03%    0.16%    5.90%    3.29%   48.46%
 32  1    10    1  |1 1>-         0.00%    0.00%   18.25%   26.60%    0.05%    0.00%    0.02%
 33  1    11    1  |1 1>-         0.00%    0.00%    0.26%    0.38%   38.20%    0.50%    7.60%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%
 35  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%
 36  1     3    1  |0 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%


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

              2       7      825.87       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     67557.31  63930.53    576.80   3047.27      1.61      0.10      0.64
 REAL TIME  *     68181.90 SEC
 DISK USED  *       862.24 MB (local),       10.16 GB (total)
 SF USED    *         6.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -213.869331711364

              CI              CI           MULTI         RHF-SCF
   -213.95135815   -213.81980847   -213.28013958   -213.37363633
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
