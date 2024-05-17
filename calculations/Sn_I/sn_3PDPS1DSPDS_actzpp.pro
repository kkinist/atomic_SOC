
 Working directory              : /wrk/irikura/molpro.3xX4rdHddj/
 Global scratch directory       : /wrk/irikura/molpro.3xX4rdHddj/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.3xX4rdHddj/

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
 NSING=15
 
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
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Apr-24          TIME: 09:05:17  
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
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     84 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.91      0.62
 REAL TIME  *         1.70 SEC
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
   1     -213.37042203    -213.37042203     0.00D+00     0.13D+00     0     0       0.00      0.01    start
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
  RHF One-electron energy            -381.086680443689
  RHF Two-electron energy             167.713044117961
  RHF Kinetic energy                   82.648105638678
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.581712365660

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.62699     1  1  s    1.00568
    2.1     2.00000    -1.07683     1  1  d2-  0.98126
    3.1     2.00000    -1.07683     1  1  d2+  0.98099
    4.1     2.00000    -1.07683     1  1  d1+  0.90495    1  1  d1- -0.42425
    5.1     2.00000    -1.07683     1  1  d1+  0.42432    1  1  d1-  0.90521
    6.1     2.00000    -1.07683     1  1  d0   0.99973
    7.1     2.00000    -0.29333     1  2  s    0.97876
    1.2     2.00000    -3.81329     1  1  py   0.99972
    2.2     2.00000    -3.81329     1  1  px   0.99970
    3.2     2.00000    -3.81329     1  1  pz   1.00018
    4.2     1.00000    -0.05728     1  2  py  -0.42706    1  2  pz   0.67084
    5.2     1.00000    -0.05728     1  2  py   0.67089    1  2  pz   0.42709
    6.2     1.00000    -0.05728     1  2  px   0.79524


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
 CPU TIMES  *         0.98      0.06      0.62
 REAL TIME  *         2.20 SEC
 DISK USED  *        30.07 MB (local),      417.26 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =        15.00000000                                  

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
 Number of states:            15
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.168D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.184D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.331D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.321D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.632D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 6 2 1 1 2 3   5 6 4 1 2 3 5 6 4 1   2 6 4 3 5 2 5 3 6 4   1 81215141310 911 7
                                        2 4 6 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.479D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.486D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.311D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.395D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.389D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.171D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 3 2 1 3   2 1 7 9 5 4 6 810 6   5 4 810 9 7 3 2 110   8 6 9 7 4 5 3 2 1 6
                                        810 9 7 5 4 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704
 Weight factors for state symmetry  2:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
 
 Number of orbital rotations:  664  ( 24 closed/active, 360 closed/virtual, 0 active/active, 280 active/virtual )
 Total number of variables:    6199
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0   -213.17950562    -213.21230029   -0.03279466    0.16129303 0.00005625 0.00000000  0.48E+00      0.46
   2    7   12    0   -213.21114196    -213.21121859   -0.00007663    0.01226296 0.00000225 0.00000000  0.22E-01      1.06
   3    5   10    0   -213.21121876    -213.21121876   -0.00000000    0.00003200 0.00000001 0.00000000  0.84E-04      1.45
   4    9   18    0   -213.21121876    -213.21121876   -0.00000000    0.00000001 0.00000000 0.00000000  0.61E-07      1.97

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.91E-08)
                       Final energy:   -213.21121876
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -213.341635629599
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.82253932
 One electron energy                          -376.74504915
 Two electron energy                           163.40341352
 Virial ratio                                    3.57588861
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -213.341635629423
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.82253932
 One electron energy                          -376.74504915
 Two electron energy                           163.40341352
 Virial ratio                                    3.57588861
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -213.341635629355
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.82253932
 One electron energy                          -376.74504916
 Two electron energy                           163.40341353
 Virial ratio                                    3.57588861
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -213.166148769067
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34766517
 One electron energy                          -372.07485329
 Two electron energy                           158.90870452
 Virial ratio                                    3.58861193
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -213.166148769048
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34766517
 One electron energy                          -372.07485329
 Two electron energy                           158.90870452
 Virial ratio                                    3.58861193
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -213.166148768986
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34766517
 One electron energy                          -372.07485327
 Two electron energy                           158.90870451
 Virial ratio                                    3.58861193
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -213.166148768889
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34766516
 One electron energy                          -372.07485325
 Two electron energy                           158.90870449
 Virial ratio                                    3.58861193
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -213.166148768882
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34766516
 One electron energy                          -372.07485325
 Two electron energy                           158.90870448
 Virial ratio                                    3.58861193
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -213.160623547141
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.43258233
 One electron energy                          -372.51913259
 Two electron energy                           159.35850905
 Virial ratio                                    3.58587827
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -213.160623547022
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.43258234
 One electron energy                          -372.51913262
 Two electron energy                           159.35850908
 Virial ratio                                    3.58587827
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -213.160623546916
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.43258234
 One electron energy                          -372.51913264
 Two electron energy                           159.35850910
 Virial ratio                                    3.58587827
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -213.158986121465
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34754215
 One electron energy                          -372.07282181
 Two electron energy                           158.91383568
 Virial ratio                                    3.58852882
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -213.306477140447
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.77667705
 One electron energy                          -376.47314027
 Two electron energy                           163.16666313
 Virial ratio                                    3.57689104
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -213.306477140431
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.77667705
 One electron energy                          -376.47314027
 Two electron energy                           163.16666313
 Virial ratio                                    3.57689104
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -213.306477140310
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.77667705
 One electron energy                          -376.47314027
 Two electron energy                           163.16666313
 Virial ratio                                    3.57689104
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -213.306477140198
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.77667705
 One electron energy                          -376.47314028
 Two electron energy                           163.16666314
 Virial ratio                                    3.57689104
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -213.306477140178
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.77667705
 One electron energy                          -376.47314027
 Two electron energy                           163.16666313
 Virial ratio                                    3.57689104
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -213.277182309429
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.72380537
 One electron energy                          -376.08046899
 Two electron energy                           162.80328668
 Virial ratio                                    3.57818389
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -213.170929214560
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34774133
 One electron energy                          -372.07612279
 Two electron energy                           158.90519357
 Virial ratio                                    3.58866759
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -213.170929214468
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34774133
 One electron energy                          -372.07612278
 Two electron energy                           158.90519356
 Virial ratio                                    3.58866759
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -213.170929214357
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.34774132
 One electron energy                          -372.07612276
 Two electron energy                           158.90519354
 Virial ratio                                    3.58866759
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -213.149680890691
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.48215318
 One electron energy                          -372.80677929
 Two electron energy                           159.65709840
 Virial ratio                                    3.58419152
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -213.149680890655
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.48215318
 One electron energy                          -372.80677929
 Two electron energy                           159.65709840
 Virial ratio                                    3.58419152
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -213.149680890393
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.48215319
 One electron energy                          -372.80677932
 Two electron energy                           159.65709843
 Virial ratio                                    3.58419152
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -213.149680890150
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.48215319
 One electron energy                          -372.80677935
 Two electron energy                           159.65709846
 Virial ratio                                    3.58419152
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -213.149680890107
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.48215319
 One electron energy                          -372.80677935
 Two electron energy                           159.65709846
 Virial ratio                                    3.58419152
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Singlet
 ==============================
 !MCSCF STATE 15.1 Singlet Energy             -213.135638827917
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.53325990
 One electron energy                          -373.09201742
 Two electron energy                           159.95637860
 Virial ratio                                    3.58242118
 
 !MCSCF STATE 15.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000008
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999983
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.155483671801
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000000003776
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.999999998025
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.844511953894
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.000000000118
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.999999999949
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.754331679090
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999999712
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999996959
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.245662039605
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999999996608
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.000000002522
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     3.754872127920
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     3.999999966744
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     1.000000003169
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     1.000000000000
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     0.245128631574
 !MCSCF expec    <15.1 Singlet|LXLX|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.591824915599
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     4.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.999999999627
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999999722
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.408168235429
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>    -0.000000000000
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.954543406330
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000007
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000004633
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     2.045469671994
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     0.291710279121
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     0.999999908779
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     1.000000000344
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     4.000000000000
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     3.708290581294
 !MCSCF expec    <15.1 Singlet|LYLY|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999992
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000017
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     2.252691412600
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999996596
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000002253
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.747319810677
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999882
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.000000000050
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.291124914579
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000280
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999998407
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.708868288400
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.000000003392
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.999999997478
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     1.953417592959
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     1.000000124477
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     3.999999996487
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     1.000000000000
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     2.046580787131
 !MCSCF expec    <15.1 Singlet|LZLZ|15.1 Singlet>    -0.000000000000
 
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
 !MCSCF expec    <15.1 Singlet|L**2|15.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 5 2 4 1 1 6 2   3 5 4 1 6 2 3 5 4 1   6 3 5 2 4 6 3 5 2 4   11113101415 812 7 9
                                        6 5 3 2 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 2 1 3 2   3 1 5 6 810 7 9 4 5   9 7 810 6 4 2 3 1 5   7 9 810 6 4 2 3 1 5
                                        7 9 810 6 4 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.96494     1  1  s    1.00393
    2.1     2.00000    -1.41435     1  1  d1-  1.00092
    3.1     2.00000    -1.41435     1  1  d2-  1.00092
    4.1     2.00000    -1.41435     1  1  d2+  1.00092
    5.1     2.00000    -1.41435     1  1  d0   1.00092
    6.1     2.00000    -1.41435     1  1  d1+  1.00092
    7.1     1.95306    -0.58481     1  2  s    1.06565
    1.2     2.00000    -4.15062     1  1  py   0.99957
    2.2     2.00000    -4.15062     1  1  pz   0.99957
    3.2     2.00000    -4.15062     1  1  px   0.99957
    4.2     0.45984    -0.11102     1  2  px   1.11490
    5.2     0.45984    -0.11102     1  2  pz   1.11490
    6.2     0.45984    -0.11102     1  2  py   1.11490
    7.2     0.22247     0.03438     1  4  py  -0.40369    1  7  py   1.29082
    8.2     0.22247     0.03438     1  4  px  -0.40369    1  7  px   1.29082
    9.2     0.22247     0.03438     1  4  pz  -0.40369    1  7  pz   1.29082
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aa0000      -0.00000019      0.97922101     -0.00000002      0.00000000     -0.00000001      0.00000000      0.00000000
 2 a0a000      -0.00000269      0.00000002      0.97922099      0.00000000     -0.00000000     -0.00000011      0.00000000
 2 0aa000       0.97922099      0.00000019      0.00000269      0.00000000     -0.00000000     -0.00000000     -0.00000010
 2 a000a0       0.00000000      0.00000000     -0.00000000      0.79024763      0.00000009      0.00001555      0.00000674
 2 00aa00       0.00000000     -0.00000000     -0.00000000     -0.25749309     -0.00000003     -0.00002102     -0.00001330
 2 a00a00      -0.00000031      0.00000000      0.11185360     -0.00001059      0.00000000      0.69807643     -0.00001975
 2 a0000a      -0.00000002      0.11185346     -0.00000000     -0.00000008      0.69807642     -0.00000000     -0.00000000
 2 0a0a00       0.11185360      0.00000002      0.00000031     -0.00000376      0.00000000      0.00001975      0.69807642
 2 00a00a      -0.11185346     -0.00000002     -0.00000031     -0.00000376      0.00000000      0.00001975      0.69807642
 2 0a00a0       0.00000002     -0.11185345      0.00000000     -0.00000008      0.69807642     -0.00000000     -0.00000000
 2 00a0a0       0.00000031     -0.00000000     -0.11185345     -0.00001059      0.00000000      0.69807641     -0.00001975
 2 0a000a       0.00000000      0.00000000      0.00000000     -0.53275452     -0.00000006      0.00000548      0.00000656
 0 aa2000       0.00000002     -0.11992699      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 0 a2a000       0.00000033     -0.00000000     -0.11992699     -0.00000000      0.00000000      0.00000001     -0.00000000
 0 2aa000      -0.11992699     -0.00000002     -0.00000033     -0.00000000      0.00000000      0.00000000      0.00000001
 0 a020a0      -0.00000000     -0.00000000      0.00000000     -0.08922056     -0.00000001     -0.00000174     -0.00000075
 0 a200a0      -0.00000000     -0.00000000      0.00000000     -0.08894667     -0.00000001     -0.00000177     -0.00000077
 0 20aa00      -0.00000000      0.00000000      0.00000000      0.02836869      0.00000000      0.00000236      0.00000150
 0 02aa00      -0.00000000      0.00000000      0.00000000      0.02968505      0.00000000      0.00000237      0.00000150
 0 a0200a       0.00000000     -0.01169751      0.00000000      0.00000001     -0.07904056      0.00000000      0.00000000
 0 0a20a0      -0.00000000      0.01169750     -0.00000000      0.00000001     -0.07904056      0.00000000      0.00000000
 0 a20a00       0.00000003     -0.00000000     -0.01169752      0.00000120     -0.00000000     -0.07904056      0.00000224
 0 2a0a00      -0.01169752     -0.00000000     -0.00000003      0.00000043     -0.00000000     -0.00000224     -0.07904056
 0 20a00a       0.01169750      0.00000000      0.00000003      0.00000043     -0.00000000     -0.00000224     -0.07904056
 0 02a0a0      -0.00000003      0.00000000      0.01169750      0.00000120     -0.00000000     -0.07904056      0.00000224
 0 a02a00       0.00000006     -0.00000000     -0.02352791      0.00000119     -0.00000000     -0.07834599      0.00000222
 0 0a2a00      -0.02352791     -0.00000000     -0.00000006      0.00000042     -0.00000000     -0.00000222     -0.07834599
 0 02a00a       0.02352791      0.00000000      0.00000006      0.00000042     -0.00000000     -0.00000222     -0.07834599
 0 20a0a0      -0.00000006      0.00000000      0.02352791      0.00000119     -0.00000000     -0.07834598      0.00000222
 0 a2000a       0.00000000     -0.02352791      0.00000000      0.00000001     -0.07834598      0.00000000      0.00000000
 0 2a00a0      -0.00000000      0.02352791     -0.00000000      0.00000001     -0.07834598      0.00000000      0.00000000
 0 2a000a      -0.00000000      0.00000000     -0.00000000      0.05953550      0.00000001     -0.00000064     -0.00000075
 0 0a200a      -0.00000000     -0.00000000     -0.00000000      0.06057799      0.00000001     -0.00000060     -0.00000073
 
 Energy:     -213.34163563   -213.34163563   -213.34163563   -213.16614877   -213.16614877   -213.16614877   -213.16614877

 State:              8               9              10              11              12
 2 aa0000       0.00000000      0.00000004     -0.00000001     -0.15995542      0.00000000
 2 a0a000      -0.00000000      0.00000174     -0.15995552      0.00000001      0.00000000
 2 0aa000      -0.00000000     -0.15995553     -0.00000174     -0.00000004     -0.00000000
 2 a000a0      -0.15892226     -0.00000000     -0.00000000     -0.00000000      0.56980317
 2 00aa00       0.76383564     -0.00000000     -0.00000000      0.00000000      0.56980319
 2 a00a00       0.00001564     -0.00000747      0.68908462     -0.00000005      0.00000000
 2 a0000a      -0.00000000     -0.00000017      0.00000005      0.68908465      0.00000000
 2 0a0a00       0.00001089      0.68908463      0.00000747      0.00000017      0.00000000
 2 00a00a       0.00001089     -0.68908465     -0.00000747     -0.00000017     -0.00000000
 2 0a00a0      -0.00000000      0.00000017     -0.00000005     -0.68908466      0.00000000
 2 00a0a0       0.00001564      0.00000747     -0.68908466      0.00000005     -0.00000000
 2 0a000a      -0.60491339     -0.00000000     -0.00000000     -0.00000000      0.56980318
 0 aa2000       0.00000000     -0.00000001      0.00000000      0.02353246      0.00000000
 0 a2a000       0.00000000     -0.00000026      0.02353247     -0.00000000     -0.00000000
 0 2aa000       0.00000000      0.02353247      0.00000026      0.00000001      0.00000000
 0 a020a0       0.01723416      0.00000000      0.00000000      0.00000000     -0.06501685
 0 a200a0       0.01859605      0.00000000      0.00000000      0.00000000     -0.06501685
 0 20aa00      -0.08632810      0.00000000      0.00000000     -0.00000000     -0.06501685
 0 02aa00      -0.08588435      0.00000000      0.00000000     -0.00000000     -0.06501685
 0 a0200a       0.00000000      0.00000002     -0.00000001     -0.07818569     -0.00000000
 0 0a20a0       0.00000000     -0.00000002      0.00000001      0.07818570     -0.00000000
 0 a20a00      -0.00000177      0.00000085     -0.07818569      0.00000001     -0.00000000
 0 2a0a00      -0.00000123     -0.07818569     -0.00000085     -0.00000002     -0.00000000
 0 20a00a      -0.00000123      0.07818569      0.00000085      0.00000002      0.00000000
 0 02a0a0      -0.00000177     -0.00000085      0.07818569     -0.00000001      0.00000000
 0 a02a00      -0.00000176      0.00000081     -0.07428626      0.00000001     -0.00000000
 0 0a2a00      -0.00000122     -0.07428626     -0.00000081     -0.00000002     -0.00000000
 0 02a00a      -0.00000122      0.07428626      0.00000081      0.00000002      0.00000000
 0 20a0a0      -0.00000176     -0.00000081      0.07428626     -0.00000001      0.00000000
 0 a2000a       0.00000000      0.00000002     -0.00000001     -0.07428626     -0.00000000
 0 2a00a0       0.00000000     -0.00000002      0.00000001      0.07428626     -0.00000000
 0 2a000a       0.06865019      0.00000000      0.00000000      0.00000000     -0.06501685
 0 0a200a       0.06773206      0.00000000      0.00000000      0.00000000     -0.06501685
 
 Energy:     -213.16614877   -213.16062355   -213.16062355   -213.16062355   -213.15898612
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 200000      -0.19546789     -0.00000053     -0.00000002      0.00004618      0.76412987      0.53818669      0.00000000
 2 020000       0.75948983      0.00000282      0.00000007     -0.00001054     -0.21278477      0.53818668      0.00000000
 2 ab0000      -0.00000006      0.00000005      0.68306414     -0.00000000     -0.00000000      0.00000000     -0.00000001
 2 ba0000       0.00000006     -0.00000005     -0.68306414      0.00000000      0.00000000     -0.00000000      0.00000001
 2 0ba000       0.00000258     -0.68306412      0.00000005     -0.00000666      0.00000019      0.00000000     -0.00000000
 2 0ab000      -0.00000258      0.68306412     -0.00000005      0.00000666     -0.00000019     -0.00000000      0.00000000
 2 b0a000       0.00000225      0.00000666     -0.00000000     -0.68306412      0.00004186     -0.00000000      0.00000000
 2 a0b000      -0.00000225     -0.00000666      0.00000000      0.68306412     -0.00004186      0.00000000     -0.00000000
 2 002000      -0.56402190     -0.00000228     -0.00000005     -0.00003564     -0.55134507      0.53818665      0.00000000
 2 b000a0       0.03208150      0.00000009      0.00000000     -0.00000758     -0.12541411     -0.11715679     -0.00000000
 2 a000b0      -0.03208150     -0.00000009     -0.00000000      0.00000758      0.12541411      0.11715679      0.00000000
 2 00ba00       0.09257114      0.00000037      0.00000001      0.00000585      0.09049053     -0.11715687     -0.00000000
 2 00ab00      -0.09257114     -0.00000037     -0.00000001     -0.00000585     -0.09049053      0.11715687      0.00000000
 2 b00a00       0.00000037      0.00000109     -0.00000000     -0.11210916      0.00000687     -0.00000000      0.00000000
 2 a00b00      -0.00000037     -0.00000109      0.00000000      0.11210916     -0.00000687      0.00000000     -0.00000000
 2 a0000b      -0.00000001      0.00000001      0.11210907      0.00000000      0.00000000     -0.00000000      0.49370877
 2 b0000a       0.00000001     -0.00000001     -0.11210907     -0.00000000     -0.00000000      0.00000000     -0.49370877
 2 0a0b00      -0.00000042      0.11210916     -0.00000001      0.00000109     -0.00000003     -0.00000000     -0.00000000
 2 0b0a00       0.00000042     -0.11210916      0.00000001     -0.00000109      0.00000003      0.00000000      0.00000000
 2 0a00b0      -0.00000001      0.00000001      0.11210906     -0.00000000      0.00000000      0.00000000     -0.49370877
 2 0b00a0       0.00000001     -0.00000001     -0.11210906      0.00000000     -0.00000000     -0.00000000      0.49370877
 2 00a00b      -0.00000042      0.11210907     -0.00000001      0.00000109     -0.00000003     -0.00000000      0.00000000
 2 00b00a       0.00000042     -0.11210907      0.00000001     -0.00000109      0.00000003      0.00000000     -0.00000000
 2 00a0b0      -0.00000037     -0.00000109      0.00000000      0.11210906     -0.00000687     -0.00000000      0.00000000
 2 00b0a0       0.00000037      0.00000109     -0.00000000     -0.11210906      0.00000687      0.00000000     -0.00000000
 2 0a000b       0.12465256      0.00000046      0.00000001     -0.00000173     -0.03492366      0.11715679      0.00000000
 2 0b000a      -0.12465256     -0.00000046     -0.00000001      0.00000173      0.03492366     -0.11715679     -0.00000000
 0 220000      -0.06894796     -0.00000028     -0.00000001     -0.00000436     -0.06739830     -0.12636816     -0.00000000
 0 202000       0.09284262      0.00000034      0.00000001     -0.00000129     -0.02601154     -0.12636816     -0.00000000
 0 022000      -0.02389467     -0.00000006     -0.00000000      0.00000565      0.09340984     -0.12636816     -0.00000000
 0 ba2000      -0.00000001      0.00000001      0.08350009     -0.00000000      0.00000000      0.00000000     -0.00000000
 0 ab2000       0.00000001     -0.00000001     -0.08350009      0.00000000     -0.00000000     -0.00000000      0.00000000
 0 2ba000      -0.00000032      0.08350009     -0.00000001      0.00000081     -0.00000002     -0.00000000      0.00000000
 0 2ab000       0.00000032     -0.08350009      0.00000001     -0.00000081      0.00000002      0.00000000     -0.00000000
 0 b2a000      -0.00000027     -0.00000081      0.00000000      0.08350009     -0.00000512      0.00000000     -0.00000000
 0 a2b000       0.00000027      0.00000081     -0.00000000     -0.08350009      0.00000512     -0.00000000      0.00000000
 0 b020a0       0.00344764      0.00000002      0.00000000      0.00000125      0.02018551      0.00645403      0.00000000
 0 a020b0      -0.00344764     -0.00000002     -0.00000000     -0.00000125     -0.02018551     -0.00645403     -0.00000000
 0 20ba00      -0.00754169     -0.00000003     -0.00000000     -0.00000119     -0.01903849      0.00645405      0.00000000
 0 20ab00       0.00754169      0.00000003      0.00000000      0.00000119      0.01903849     -0.00645405     -0.00000000
 0 b200a0      -0.01271698     -0.00000004     -0.00000000      0.00000094      0.01605053      0.00645403      0.00000000
 0 a200b0       0.01271698      0.00000004      0.00000000     -0.00000094     -0.01605053     -0.00645403     -0.00000000
 0 02ab00       0.01920498      0.00000007      0.00000000      0.00000050      0.00710703     -0.00645405      0.00000000
 0 02ba00      -0.01920498     -0.00000007     -0.00000000     -0.00000050     -0.00710703      0.00645405     -0.00000000
 0 b0200a      -0.00000000      0.00000000      0.01202462     -0.00000000      0.00000000      0.00000000      0.05594614
 0 a0200b       0.00000000     -0.00000000     -0.01202462      0.00000000     -0.00000000     -0.00000000     -0.05594614
 0 0b20a0      -0.00000000      0.00000000      0.01202462      0.00000000     -0.00000000      0.00000000     -0.05594614
 0 0a20b0       0.00000000     -0.00000000     -0.01202462     -0.00000000      0.00000000     -0.00000000      0.05594614
 0 b20a00      -0.00000004     -0.00000012      0.00000000      0.01202463     -0.00000074      0.00000000     -0.00000000
 0 a20b00       0.00000004      0.00000012     -0.00000000     -0.01202463      0.00000074     -0.00000000      0.00000000
 0 2a0b00       0.00000005     -0.01202463      0.00000000     -0.00000012      0.00000000      0.00000000      0.00000000
 0 2b0a00      -0.00000005      0.01202463     -0.00000000      0.00000012     -0.00000000     -0.00000000     -0.00000000
 0 20b00a      -0.00000005      0.01202462     -0.00000000      0.00000012     -0.00000000     -0.00000000      0.00000000
 0 20a00b       0.00000005     -0.01202462      0.00000000     -0.00000012      0.00000000      0.00000000     -0.00000000
 0 02b0a0      -0.00000004     -0.00000012      0.00000000      0.01202462     -0.00000074     -0.00000000      0.00000000
 0 02a0b0       0.00000004      0.00000012     -0.00000000     -0.01202462      0.00000074      0.00000000     -0.00000000
 0 b02a00      -0.00000007     -0.00000020      0.00000000      0.02036717     -0.00000125      0.00000000     -0.00000000
 0 a02b00       0.00000007      0.00000020     -0.00000000     -0.02036717      0.00000125     -0.00000000      0.00000000
 0 0a2b00       0.00000008     -0.02036717      0.00000000     -0.00000020      0.00000001      0.00000000      0.00000000
 0 0b2a00      -0.00000008      0.02036717     -0.00000000      0.00000020     -0.00000001     -0.00000000     -0.00000000
 0 02a00b       0.00000008     -0.02036717      0.00000000     -0.00000020      0.00000001      0.00000000     -0.00000000
 0 02b00a      -0.00000008      0.02036717     -0.00000000      0.00000020     -0.00000001     -0.00000000      0.00000000
 0 20a0b0       0.00000007      0.00000020     -0.00000000     -0.02036717      0.00000125      0.00000000     -0.00000000
 0 20b0a0      -0.00000007     -0.00000020      0.00000000      0.02036717     -0.00000125     -0.00000000      0.00000000
 0 b2000a      -0.00000000      0.00000000      0.02036717      0.00000000      0.00000000      0.00000000      0.05449750
 0 a2000b       0.00000000     -0.00000000     -0.02036717     -0.00000000     -0.00000000     -0.00000000     -0.05449750
 0 2a00b0       0.00000000     -0.00000000     -0.02036717     -0.00000000     -0.00000000      0.00000000      0.05449750
 0 2b00a0      -0.00000000      0.00000000      0.02036717      0.00000000      0.00000000     -0.00000000     -0.05449750
 
 Energy:     -213.30647714   -213.30647714   -213.30647714   -213.30647714   -213.30647714   -213.27718231   -213.17092921

 State:              8               9              10              11              12              13              14
 2 200000       0.00000000     -0.00000000      0.04575744      0.00001312      0.00000091      0.00000000     -0.17908656
 2 020000       0.00000000     -0.00000000      0.13221479      0.00003780     -0.00000332     -0.00000000      0.12917041
 2 ab0000       0.00000000     -0.00000000     -0.00000000     -0.00000002     -0.00000006     -0.16007595     -0.00000000
 2 ba0000      -0.00000000      0.00000000      0.00000000      0.00000002      0.00000006      0.16007595      0.00000000
 2 0ba000      -0.00000000      0.00000007     -0.00004579      0.16007601      0.00000371     -0.00000002      0.00000003
 2 0ab000       0.00000000     -0.00000007      0.00004579     -0.16007601     -0.00000371      0.00000002     -0.00000003
 2 b0a000       0.00000008      0.00000000      0.00000258     -0.00000371      0.16007601     -0.00000006      0.00000147
 2 a0b000      -0.00000008     -0.00000000     -0.00000258      0.00000371     -0.16007601      0.00000006     -0.00000147
 2 002000      -0.00000000      0.00000000     -0.17797240     -0.00005092      0.00000241      0.00000000      0.04991622
 2 b000a0       0.00000000      0.00000000      0.13740506      0.00003940      0.00000274      0.00000000     -0.53777915
 2 a000b0      -0.00000000     -0.00000000     -0.13740506     -0.00003940     -0.00000274     -0.00000000      0.53777915
 2 00ba00       0.00000000      0.00000000     -0.53443291     -0.00015290      0.00000724      0.00000001      0.14989330
 2 00ab00      -0.00000000     -0.00000000      0.53443291      0.00015290     -0.00000724     -0.00000001     -0.14989330
 2 b00a00      -0.49370877     -0.00002875     -0.00000776      0.00001113     -0.48069211      0.00000018     -0.00000443
 2 a00b00       0.49370877      0.00002875      0.00000776     -0.00001113      0.48069211     -0.00000018      0.00000443
 2 a0000b       0.00000000      0.00000000      0.00000001      0.00000007      0.00000018      0.48069214      0.00000001
 2 b0000a      -0.00000000     -0.00000000     -0.00000001     -0.00000007     -0.00000018     -0.48069214     -0.00000001
 2 0a0b00      -0.00002875      0.49370877     -0.00013750      0.48069210      0.00001113     -0.00000007      0.00000009
 2 0b0a00       0.00002875     -0.49370877      0.00013750     -0.48069210     -0.00001113      0.00000007     -0.00000009
 2 0a00b0      -0.00000000     -0.00000000      0.00000001      0.00000007      0.00000018      0.48069214      0.00000001
 2 0b00a0       0.00000000      0.00000000     -0.00000001     -0.00000007     -0.00000018     -0.48069214     -0.00000001
 2 00a00b       0.00002875     -0.49370877     -0.00013750      0.48069212      0.00001113     -0.00000007      0.00000009
 2 00b00a      -0.00002875      0.49370877      0.00013750     -0.48069212     -0.00001113      0.00000007     -0.00000009
 2 00a0b0      -0.49370877     -0.00002875      0.00000775     -0.00001113      0.48069214     -0.00000018      0.00000443
 2 00b0a0       0.49370877      0.00002875     -0.00000775      0.00001113     -0.48069214      0.00000018     -0.00000443
 2 0a000b      -0.00000000     -0.00000000     -0.39702785     -0.00011350      0.00000998      0.00000001     -0.38788587
 2 0b000a       0.00000000      0.00000000      0.39702785      0.00011350     -0.00000998     -0.00000001      0.38788587
 0 220000      -0.00000000      0.00000000     -0.02479024     -0.00000709      0.00000034      0.00000000      0.00695296
 0 202000      -0.00000000     -0.00000000      0.01841658      0.00000526     -0.00000046     -0.00000000      0.01799249
 0 022000      -0.00000000     -0.00000000      0.00637370      0.00000183      0.00000013      0.00000000     -0.02494546
 0 ba2000       0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.02229741     -0.00000000
 0 ab2000      -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000001      0.02229741      0.00000000
 0 2ba000       0.00000000     -0.00000001      0.00000638     -0.02229742     -0.00000052      0.00000000     -0.00000000
 0 2ab000      -0.00000000      0.00000001     -0.00000638      0.02229742      0.00000052     -0.00000000      0.00000000
 0 b2a000      -0.00000001     -0.00000000     -0.00000036      0.00000052     -0.02229742      0.00000001     -0.00000021
 0 a2b000       0.00000001      0.00000000      0.00000036     -0.00000052      0.02229742     -0.00000001      0.00000021
 0 b020a0      -0.00000000     -0.00000000     -0.01297326     -0.00000372     -0.00000035     -0.00000000      0.06028261
 0 a020b0       0.00000000      0.00000000      0.01297326      0.00000372      0.00000035      0.00000000     -0.06028261
 0 20ba00      -0.00000000     -0.00000000      0.05996409      0.00001716     -0.00000083     -0.00000000     -0.01437380
 0 20ab00       0.00000000      0.00000000     -0.05996409     -0.00001716      0.00000083      0.00000000      0.01437380
 0 b200a0      -0.00000000     -0.00000000     -0.01753397     -0.00000503     -0.00000026     -0.00000000      0.05911733
 0 a200b0       0.00000000      0.00000000      0.01753397      0.00000503      0.00000026      0.00000000     -0.05911733
 0 02ab00       0.00000000      0.00000000     -0.05869290     -0.00001679      0.00000077      0.00000000      0.01890612
 0 02ba00      -0.00000000     -0.00000000      0.05869290      0.00001679     -0.00000077     -0.00000000     -0.01890612
 0 b0200a       0.00000000      0.00000000      0.00000000      0.00000001      0.00000002      0.05453943      0.00000000
 0 a0200b      -0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.00000002     -0.05453943     -0.00000000
 0 0b20a0      -0.00000000     -0.00000000      0.00000000      0.00000001      0.00000002      0.05453943      0.00000000
 0 0a20b0       0.00000000      0.00000000     -0.00000000     -0.00000001     -0.00000002     -0.05453943     -0.00000000
 0 b20a00       0.05594614      0.00000326      0.00000088     -0.00000126      0.05453942     -0.00000002      0.00000050
 0 a20b00      -0.05594614     -0.00000326     -0.00000088      0.00000126     -0.05453942      0.00000002     -0.00000050
 0 2a0b00       0.00000326     -0.05594614      0.00001560     -0.05453942     -0.00000126      0.00000001     -0.00000001
 0 2b0a00      -0.00000326      0.05594614     -0.00001560      0.05453942      0.00000126     -0.00000001      0.00000001
 0 20b00a       0.00000326     -0.05594614     -0.00001560      0.05453942      0.00000126     -0.00000001      0.00000001
 0 20a00b      -0.00000326      0.05594614      0.00001560     -0.05453942     -0.00000126      0.00000001     -0.00000001
 0 02b0a0      -0.05594614     -0.00000326      0.00000088     -0.00000126      0.05453943     -0.00000002      0.00000050
 0 02a0b0       0.05594614      0.00000326     -0.00000088      0.00000126     -0.05453943      0.00000002     -0.00000050
 0 b02a00       0.05449750      0.00000317      0.00000084     -0.00000121      0.05218582     -0.00000002      0.00000048
 0 a02b00      -0.05449750     -0.00000317     -0.00000084      0.00000121     -0.05218582      0.00000002     -0.00000048
 0 0a2b00       0.00000317     -0.05449750      0.00001493     -0.05218581     -0.00000121      0.00000001     -0.00000001
 0 0b2a00      -0.00000317      0.05449750     -0.00001493      0.05218581      0.00000121     -0.00000001      0.00000001
 0 02a00b      -0.00000317      0.05449750      0.00001493     -0.05218581     -0.00000121      0.00000001     -0.00000001
 0 02b00a       0.00000317     -0.05449750     -0.00001493      0.05218581      0.00000121     -0.00000001      0.00000001
 0 20a0b0       0.05449750      0.00000317     -0.00000084      0.00000121     -0.05218582      0.00000002     -0.00000048
 0 20b0a0      -0.05449750     -0.00000317      0.00000084     -0.00000121      0.05218582     -0.00000002      0.00000048
 0 b2000a       0.00000000      0.00000000      0.00000000      0.00000001      0.00000002      0.05218582      0.00000000
 0 a2000b      -0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.00000002     -0.05218582     -0.00000000
 0 2a00b0       0.00000000      0.00000000     -0.00000000     -0.00000001     -0.00000002     -0.05218582     -0.00000000
 0 2b00a0      -0.00000000     -0.00000000      0.00000000      0.00000001      0.00000002      0.05218582      0.00000000
 
 Energy:     -213.17092921   -213.17092921   -213.14968089   -213.14968089   -213.14968089   -213.14968089   -213.14968089

 State:             15
 2 200000      -0.16086172
 2 020000      -0.16086172
 2 ab0000       0.00000000
 2 ba0000      -0.00000000
 2 0ba000      -0.00000000
 2 0ab000       0.00000000
 2 b0a000       0.00000000
 2 a0b000      -0.00000000
 2 002000      -0.16086182
 2 b000a0      -0.38536702
 2 a000b0       0.38536702
 2 00ba00      -0.38536696
 2 00ab00       0.38536696
 2 b00a00      -0.00000000
 2 a00b00       0.00000000
 2 a0000b      -0.00000000
 2 b0000a       0.00000000
 2 0a0b00      -0.00000000
 2 0b0a00       0.00000000
 2 0a00b0      -0.00000000
 2 0b00a0       0.00000000
 2 00a00b      -0.00000000
 2 00b00a       0.00000000
 2 00a0b0      -0.00000000
 2 00b0a0       0.00000000
 2 0a000b       0.38536700
 2 0b000a      -0.38536700
 0 220000       0.03985171
 0 202000       0.03985172
 0 022000       0.03985172
 0 ba2000       0.00000000
 0 ab2000      -0.00000000
 0 2ba000       0.00000000
 0 2ab000      -0.00000000
 0 b2a000      -0.00000000
 0 a2b000       0.00000000
 0 b020a0       0.04585383
 0 a020b0      -0.04585383
 0 20ba00       0.04585382
 0 20ab00      -0.04585382
 0 b200a0       0.04585383
 0 a200b0      -0.04585383
 0 02ab00      -0.04585382
 0 02ba00       0.04585382
 0 b0200a      -0.00000000
 0 a0200b       0.00000000
 0 0b20a0      -0.00000000
 0 0a20b0       0.00000000
 0 b20a00       0.00000000
 0 a20b00      -0.00000000
 0 2a0b00       0.00000000
 0 2b0a00      -0.00000000
 0 20b00a      -0.00000000
 0 20a00b       0.00000000
 0 02b0a0      -0.00000000
 0 02a0b0       0.00000000
 0 b02a00       0.00000000
 0 a02b00      -0.00000000
 0 0a2b00       0.00000000
 0 0b2a00      -0.00000000
 0 02a00b       0.00000000
 0 02b00a      -0.00000000
 0 20a0b0       0.00000000
 0 20b0a0      -0.00000000
 0 b2000a      -0.00000000
 0 a2000b       0.00000000
 0 2a00b0       0.00000000
 0 2b00a0      -0.00000000
 
 Energy:     -213.13563883
 


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
 CPU TIMES  *         3.00      2.02      0.06      0.62
 REAL TIME  *         4.54 SEC
 DISK USED  *        37.16 MB (local),      502.25 MB (total)
 SF USED    *        19.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3416356   2.0
    -213.3416356   2.0
    -213.3416356   2.0
    -213.1661488   6.0
    -213.1661488   6.0
    -213.1661488   6.0
    -213.1661488   6.0
    -213.1661488   6.0
    -213.1606235   2.0
    -213.1606235   2.0
    -213.1606235   2.0
    -213.1589861  -0.0
    -213.3064771   6.0
    -213.3064771   6.0
    -213.3064771   6.0
    -213.3064771   6.0
    -213.3064771   6.0
    -213.2771823  -0.0
    -213.1709292   2.0
    -213.1709292   2.0
    -213.1709292   2.0
    -213.1496809   6.0
    -213.1496809   6.0
    -213.1496809   6.0
    -213.1496809   6.0
    -213.1496809   6.0
    -213.1356388  -0.0
                                                  


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
     1      -213.34163563
     2      -213.34163563
     3      -213.34163563
     4      -213.16614877
     5      -213.16614877
     6      -213.16614877
     7      -213.16614877
     8      -213.16614877
     9      -213.16062355
    10      -213.16062355
    11      -213.16062355
    12      -213.15898612

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1431D-06

 Number of blocks in overlap matrix:  1215   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:    2547
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       3541800
 Number of doubly external configurations:       4078680
 Total number of contracted configurations:      7658886
 Total number of uncontracted configurations:   77703006

 Diagonal Coupling coefficients finished.               Storage:  25436859 words, CPU-Time:     80.28 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1346125 words, CPU-time:      0.18 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34163563     0.00000000    -0.83799778  0.54D-01  0.10D+00    92.29
    1     2     2     1.00000000     0.00000000  -213.34163563     0.00000000    -0.83807954  0.54D-01  0.10D+00    92.29
    1     3     3     1.00000000     0.00000000  -213.34163563     0.00000000    -0.83794513  0.54D-01  0.10D+00    92.29
    1     4     4     1.00000000     0.00000000  -213.16614877     0.00000000    -0.80022519  0.39D-01  0.94D-01    92.29
    1     5     5     1.00000000     0.00000000  -213.16614877     0.00000000    -0.79989600  0.39D-01  0.94D-01    92.29
    1     6     6     1.00000000     0.00000000  -213.16614877     0.00000000    -0.79987073  0.39D-01  0.94D-01    92.29
    1     7     7     1.00000000     0.00000000  -213.16614877     0.00000000    -0.79981037  0.39D-01  0.94D-01    92.29
    1     8     8     1.00000000     0.00000000  -213.16614877     0.00000000    -0.80012271  0.39D-01  0.94D-01    92.29
    1     9     9     1.00000000     0.00000000  -213.16062355     0.00000000    -0.80512368  0.42D-01  0.95D-01    92.29
    1    10    10     1.00000000     0.00000000  -213.16062355     0.00000000    -0.80509746  0.42D-01  0.95D-01    92.29
    1    11    11     1.00000000     0.00000000  -213.16062355     0.00000000    -0.80512600  0.42D-01  0.95D-01    92.29
    1    12    12     1.00000000     0.00000000  -213.15898612     0.00000000    -0.80076552  0.39D-01  0.94D-01    92.29
    2     1     1     1.09627196    -0.65548226  -213.99711789    -0.65548226    -0.01991463  0.42D-02  0.14D-02   455.89
    2     2     2     1.09636159    -0.65543186  -213.99706749    -0.65543186    -0.01995766  0.43D-02  0.14D-02   455.89
    2     3     3     1.09645985    -0.65536492  -213.99700055    -0.65536492    -0.02003243  0.43D-02  0.14D-02   455.89
    2     4     4     1.08557073    -0.64415670  -213.81030547    -0.64415670    -0.01541641  0.24D-02  0.11D-02   455.89
    2     5     5     1.08544401    -0.64414039  -213.81028916    -0.64414039    -0.01544488  0.24D-02  0.11D-02   455.89
    2     6     6     1.08549476    -0.64411147  -213.81026024    -0.64411147    -0.01547466  0.25D-02  0.11D-02   455.89
    2     7     7     1.08565997    -0.64410455  -213.81025332    -0.64410455    -0.01547070  0.25D-02  0.11D-02   455.89
    2     8     8     1.08551511    -0.64409780  -213.81024657    -0.64409780    -0.01549055  0.25D-02  0.11D-02   455.89
    2     9     9     1.08662160    -0.64472341  -213.80534695    -0.64472341    -0.01641313  0.30D-02  0.11D-02   455.89
    2    10    10     1.08663935    -0.64471109  -213.80533464    -0.64471109    -0.01642418  0.30D-02  0.11D-02   455.89
    2    11    11     1.08665437    -0.64470192  -213.80532547    -0.64470192    -0.01643475  0.30D-02  0.11D-02   455.89
    2    12    12     1.08595716    -0.64413632  -213.80312244    -0.64413632    -0.01576648  0.27D-02  0.11D-02   455.89
    3     1     1     1.08402003    -0.67438575  -214.01602138    -0.01890349    -0.00052227  0.81D-04  0.60D-04   817.65
    3     2     2     1.08401946    -0.67438280  -214.01601843    -0.01895095    -0.00052476  0.82D-04  0.60D-04   817.65
    3     3     3     1.08402490    -0.67437800  -214.01601363    -0.01901308    -0.00052949  0.83D-04  0.61D-04   817.65
    3     4     4     1.07910822    -0.65891226  -213.82506103    -0.01475556    -0.00032880  0.36D-04  0.34D-04   817.65
    3     5     5     1.07910734    -0.65891113  -213.82505989    -0.01477074    -0.00032983  0.36D-04  0.35D-04   817.65
    3     6     6     1.07910756    -0.65891056  -213.82505933    -0.01479909    -0.00033038  0.36D-04  0.35D-04   817.65
    3     7     7     1.07913401    -0.65890876  -213.82505753    -0.01480421    -0.00033213  0.36D-04  0.36D-04   817.65
    3     8     8     1.07913241    -0.65890664  -213.82505541    -0.01480884    -0.00033408  0.37D-04  0.36D-04   817.65
    3     9     9     1.07918137    -0.66033454  -213.82095809    -0.01561114    -0.00036513  0.45D-04  0.39D-04   817.65
    3    10    10     1.07917821    -0.66033449  -213.82095804    -0.01562340    -0.00036514  0.45D-04  0.38D-04   817.65
    3    11    11     1.07917991    -0.66033345  -213.82095699    -0.01563152    -0.00036620  0.45D-04  0.39D-04   817.65
    3    12    12     1.07914332    -0.65924125  -213.81822737    -0.01510493    -0.00034401  0.36D-04  0.39D-04   817.65
    4     1     1     1.08371917    -0.67492444  -214.01656007    -0.00053869    -0.00002314  0.37D-05  0.31D-05  1180.21
    4     2     2     1.08371838    -0.67492442  -214.01656005    -0.00054162    -0.00002317  0.36D-05  0.31D-05  1180.21
    4     3     3     1.08371662    -0.67492418  -214.01655981    -0.00054618    -0.00002338  0.37D-05  0.31D-05  1180.21
    4     4     4     1.07955134    -0.65925235  -213.82540111    -0.00034009    -0.00001406  0.25D-05  0.19D-05  1180.21
    4     5     5     1.07955062    -0.65925233  -213.82540110    -0.00034120    -0.00001408  0.25D-05  0.19D-05  1180.21
    4     6     6     1.07955054    -0.65925229  -213.82540106    -0.00034173    -0.00001411  0.26D-05  0.19D-05  1180.21
    4     7     7     1.07954573    -0.65925201  -213.82540078    -0.00034325    -0.00001439  0.26D-05  0.19D-05  1180.21
    4     8     8     1.07954447    -0.65925192  -213.82540069    -0.00034528    -0.00001446  0.26D-05  0.19D-05  1180.21
    4     9     9     1.07954211    -0.66071048  -213.82133403    -0.00037594    -0.00001522  0.28D-05  0.19D-05  1180.21
    4    10    10     1.07954140    -0.66071044  -213.82133399    -0.00037595    -0.00001525  0.28D-05  0.19D-05  1180.21
    4    11    11     1.07954152    -0.66071040  -213.82133395    -0.00037695    -0.00001529  0.28D-05  0.19D-05  1180.21
    4    12    12     1.07966121    -0.65959763  -213.81858375    -0.00035638    -0.00001567  0.24D-05  0.25D-05  1180.21
    5     1     1     1.08378574    -0.67494998  -214.01658561    -0.00002554    -0.00000108  0.92D-07  0.19D-06  1539.51
    5     2     2     1.08378650    -0.67494998  -214.01658561    -0.00002556    -0.00000108  0.93D-07  0.19D-06  1539.51
    5     3     3     1.08378512    -0.67494997  -214.01658560    -0.00002579    -0.00000109  0.93D-07  0.19D-06  1539.51
    5     4     4     1.07968306    -0.65926870  -213.82541747    -0.00001636    -0.00000080  0.47D-07  0.19D-06  1539.51
    5     5     5     1.07968274    -0.65926870  -213.82541747    -0.00001637    -0.00000081  0.47D-07  0.19D-06  1539.51
    5     6     6     1.07968372    -0.65926869  -213.82541746    -0.00001640    -0.00000079  0.46D-07  0.19D-06  1539.51
    5     7     7     1.07968366    -0.65926869  -213.82541746    -0.00001668    -0.00000079  0.47D-07  0.19D-06  1539.51
    5     8     8     1.07968399    -0.65926869  -213.82541746    -0.00001677    -0.00000079  0.47D-07  0.19D-06  1539.51
    5     9     9     1.07965245    -0.66072771  -213.82135126    -0.00001724    -0.00000081  0.65D-07  0.17D-06  1539.51
    5    10    10     1.07965234    -0.66072771  -213.82135126    -0.00001727    -0.00000082  0.66D-07  0.17D-06  1539.51
    5    11    11     1.07965243    -0.66072771  -213.82135126    -0.00001731    -0.00000082  0.66D-07  0.17D-06  1539.51
    5    12    12     1.07985789    -0.65961614  -213.81860226    -0.00001851    -0.00000100  0.51D-07  0.25D-06  1539.51
    6     1     1     1.08377936    -0.67495121  -214.01658684    -0.00000122    -0.00000008  0.80D-08  0.14D-07  1901.18
    6     2     2     1.08377935    -0.67495121  -214.01658684    -0.00000123    -0.00000008  0.80D-08  0.14D-07  1901.18
    6     3     3     1.08377915    -0.67495121  -214.01658684    -0.00000123    -0.00000008  0.81D-08  0.14D-07  1901.18
    6     4     4     1.07969290    -0.65926974  -213.82541851    -0.00000104    -0.00000009  0.91D-08  0.18D-07  1901.18
    6     5     5     1.07969281    -0.65926974  -213.82541851    -0.00000105    -0.00000009  0.92D-08  0.18D-07  1901.18
    6     6     6     1.07969326    -0.65926972  -213.82541849    -0.00000102    -0.00000008  0.93D-08  0.17D-07  1901.18
    6     7     7     1.07969318    -0.65926972  -213.82541849    -0.00000103    -0.00000008  0.93D-08  0.17D-07  1901.18
    6     8     8     1.07969321    -0.65926972  -213.82541849    -0.00000103    -0.00000008  0.93D-08  0.17D-07  1901.18
    6     9     9     1.07965590    -0.66072872  -213.82135227    -0.00000101    -0.00000009  0.11D-07  0.18D-07  1901.18
    6    10    10     1.07965581    -0.66072872  -213.82135227    -0.00000101    -0.00000009  0.11D-07  0.18D-07  1901.18
    6    11    11     1.07965585    -0.66072872  -213.82135227    -0.00000101    -0.00000009  0.11D-07  0.18D-07  1901.18
    6    12    12     1.07987728    -0.65961745  -213.81860357    -0.00000131    -0.00000010  0.12D-07  0.19D-07  1901.18
    7     1     1     1.08379027    -0.67495130  -214.01658693    -0.00000009    -0.00000001  0.46D-09  0.11D-08  2261.07
    7     2     2     1.08379033    -0.67495130  -214.01658693    -0.00000009    -0.00000001  0.46D-09  0.11D-08  2261.07
    7     3     3     1.08379035    -0.67495130  -214.01658693    -0.00000009    -0.00000001  0.47D-09  0.11D-08  2261.07
    7     4     4     1.07970244    -0.65926985  -213.82541862    -0.00000011    -0.00000001  0.86D-09  0.16D-08  2261.07
    7     5     5     1.07970240    -0.65926985  -213.82541862    -0.00000011    -0.00000001  0.85D-09  0.16D-08  2261.07
    7     6     6     1.07970229    -0.65926982  -213.82541859    -0.00000011    -0.00000001  0.82D-09  0.16D-08  2261.07
    7     7     7     1.07970227    -0.65926982  -213.82541859    -0.00000011    -0.00000001  0.82D-09  0.16D-08  2261.07
    7     8     8     1.07970225    -0.65926982  -213.82541859    -0.00000011    -0.00000001  0.83D-09  0.16D-08  2261.07
    7     9     9     1.07966432    -0.66072883  -213.82135238    -0.00000011    -0.00000001  0.89D-09  0.17D-08  2261.07
    7    10    10     1.07966431    -0.66072883  -213.82135238    -0.00000011    -0.00000001  0.90D-09  0.17D-08  2261.07
    7    11    11     1.07966432    -0.66072883  -213.82135238    -0.00000011    -0.00000001  0.90D-09  0.17D-08  2261.07
    7    12    12     1.07988752    -0.65961757  -213.81860369    -0.00000012    -0.00000001  0.85D-09  0.14D-08  2261.07


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.6%
 S   0.9%  12.4%
 P   0.4%  48.7%  26.7%

 Initialization:   3.6%
 Other:            5.6%

 Total CPU:     2261.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0000          -0.0195927   0.0822320   0.9432921  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                            0.0000098  -0.0000006  -0.1162333  -0.0000000
 22222222220//000           0.9378855   0.1313485   0.0080300  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000001
                           -0.0079169  -0.1159635  -0.0000001   0.0000000
 2222222222/0/000          -0.1301270   0.9343080  -0.0841516   0.0000000   0.0000000  -0.0000000  -0.0000001  -0.0000000
                           -0.1159635   0.0079169  -0.0000098   0.0000000
 2222222222/000/0           0.0000000   0.0000000   0.0000000   0.7641416  -0.1431976  -0.0000457   0.0001311   0.0003333
                            0.0000000   0.0000000  -0.0000000   0.5495112
 222222222200//00          -0.0000000  -0.0000000  -0.0000000  -0.2580581   0.7333648   0.0002070  -0.0002883   0.0000719
                            0.0000000  -0.0000000  -0.0000000   0.5495113
 222222222200/00/          -0.0813836  -0.0113976  -0.0006968  -0.0003266  -0.0001846  -0.0000623  -0.0094127   0.6732198
                           -0.0455294  -0.6668984  -0.0000004  -0.0000000
 22222222220/0/00           0.0813837   0.0113976   0.0006968  -0.0003266  -0.0001846  -0.0000623  -0.0094127   0.6732197
                            0.0455294   0.6668984   0.0000004  -0.0000000
 22222222220/00/0           0.0017001  -0.0071356  -0.0818528   0.0000129  -0.0002122   0.6695284  -0.0710242  -0.0009312
                            0.0000561  -0.0000034  -0.6684507   0.0000000
 2222222222/0000/          -0.0017001   0.0071356   0.0818528   0.0000129  -0.0002122   0.6695283  -0.0710242  -0.0009312
                           -0.0000561   0.0000035   0.6684507   0.0000000
 222222222200/0/0           0.0112916  -0.0810732   0.0073021  -0.0000742   0.0002161   0.0710303   0.6694628   0.0093667
                           -0.6668984   0.0455294  -0.0000562   0.0000000
 2222222222/00/00          -0.0112916   0.0810733  -0.0073021  -0.0000742   0.0002161   0.0710303   0.6694628   0.0093667
                            0.6668984  -0.0455294   0.0000562  -0.0000000
 22222222220/000/          -0.0000000   0.0000000  -0.0000000  -0.5060834  -0.5901672  -0.0001612   0.0001572  -0.0004051
                           -0.0000000   0.0000000   0.0000000   0.5495113
 2222220222//2000           0.0021434  -0.0089960  -0.1031940  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                           -0.0000014   0.0000001   0.0164876   0.0000000
 22222202222//000          -0.1026025  -0.0143692  -0.0008785   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000001
                            0.0011230   0.0164493   0.0000000   0.0000000
 2222220222/2/000           0.0142356  -0.1022112   0.0092060  -0.0000000   0.0000000   0.0000000   0.0000001   0.0000000
                            0.0164493  -0.0011230   0.0000014   0.0000000
 2222220222/020/0          -0.0000000   0.0000000  -0.0000000  -0.0766111   0.0135782   0.0000044  -0.0000129  -0.0000336
                           -0.0000000  -0.0000000   0.0000000  -0.0558744
 2222220222/200/0           0.0000000   0.0000000  -0.0000000  -0.0763292   0.0150823   0.0000048  -0.0000134  -0.0000331
                           -0.0000000  -0.0000000  -0.0000000  -0.0558744
 222222022220//00           0.0000000  -0.0000000   0.0000000   0.0251030  -0.0736442  -0.0000208   0.0000289  -0.0000076
                           -0.0000000   0.0000000   0.0000000  -0.0558744
 222222022202//00           0.0000000   0.0000000  -0.0000000   0.0265464  -0.0731363  -0.0000206   0.0000288  -0.0000068
                           -0.0000000   0.0000000   0.0000000  -0.0558744
 22222202222/0/00          -0.0072780  -0.0010193  -0.0000623   0.0000329   0.0000186   0.0000063   0.0009473  -0.0677538
                           -0.0045892  -0.0672204  -0.0000000   0.0000000
 222222022220/00/           0.0072779   0.0010193   0.0000623   0.0000329   0.0000186   0.0000063   0.0009473  -0.0677538
                            0.0045892   0.0672203   0.0000000  -0.0000000
 22222202220/20/0          -0.0001520   0.0006381   0.0073199  -0.0000013   0.0000214  -0.0673823   0.0071480   0.0000937
                           -0.0000057   0.0000003   0.0673768  -0.0000000
 2222220222/0200/           0.0001520  -0.0006381  -0.0073199  -0.0000013   0.0000214  -0.0673823   0.0071480   0.0000937
                            0.0000057  -0.0000003  -0.0673768  -0.0000000
 2222220222/20/00           0.0010098  -0.0072502   0.0006530   0.0000075  -0.0000217  -0.0071486  -0.0673757  -0.0009427
                           -0.0672204   0.0045892  -0.0000057   0.0000000
 222222022202/0/0          -0.0010098   0.0072502  -0.0006530   0.0000075  -0.0000217  -0.0071486  -0.0673757  -0.0009427
                            0.0672203  -0.0045892   0.0000057   0.0000000
 22222202220/2/00          -0.0170490  -0.0023877  -0.0001460   0.0000325   0.0000184   0.0000062   0.0009366  -0.0669889
                           -0.0043684  -0.0639875  -0.0000000   0.0000000
 222222022202/00/           0.0170489   0.0023877   0.0001460   0.0000325   0.0000184   0.0000062   0.0009366  -0.0669889
                            0.0043684   0.0639875   0.0000000   0.0000000
 22222202222/00/0          -0.0003562   0.0014948   0.0171472  -0.0000013   0.0000211  -0.0666216   0.0070673   0.0000927
                           -0.0000054   0.0000003   0.0641365  -0.0000000
 2222220222/2000/           0.0003562  -0.0014948  -0.0171472  -0.0000013   0.0000211  -0.0666215   0.0070673   0.0000927
                            0.0000054  -0.0000003  -0.0641364  -0.0000000
 2222220222/02/00           0.0023655  -0.0169839   0.0015297   0.0000074  -0.0000215  -0.0070679  -0.0666151  -0.0009320
                           -0.0639875   0.0043684  -0.0000054   0.0000000
 222222022220/0/0          -0.0023655   0.0169839  -0.0015297   0.0000074  -0.0000215  -0.0070679  -0.0666151  -0.0009320
                            0.0639875  -0.0043684   0.0000054  -0.0000000
 22222202222/000/          -0.0000000  -0.0000000  -0.0000000   0.0500647   0.0595580   0.0000163  -0.0000160   0.0000404
                            0.0000000  -0.0000000  -0.0000000  -0.0558744
 22222202220/200/          -0.0000000  -0.0000000  -0.0000000   0.0512262   0.0585619   0.0000160  -0.0000155   0.0000407
                            0.0000000  -0.0000000  -0.0000000  -0.0558744

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.950167   -0.019849   -0.131831    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.036662    0.005087
             0.000766   -0.000000
 2           0.133069    0.083309    0.946543   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.005134   -0.036522
            -0.003214    0.000000
 3           0.008135    0.955645   -0.085254    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000314    0.003289
            -0.036873   -0.000000
 4          -0.000000    0.000000   -0.000000    0.961664    0.000018   -0.000106   -0.000467   -0.012858    0.000000   -0.000000
             0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.012858   -0.000303    0.000309   -0.000264    0.961664    0.000000   -0.000000
             0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000004    0.956383    0.101463   -0.000089    0.000269   -0.000000    0.000000
            -0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000096   -0.101454    0.956289   -0.013445   -0.000344   -0.000000   -0.000000
             0.000000    0.000000
 8          -0.000000    0.000000    0.000000    0.000471   -0.001330    0.013380    0.961656    0.000253   -0.000000   -0.000000
             0.000000    0.000000
 9           0.002612   -0.000003    0.038257    0.000000   -0.000000    0.000000    0.000000    0.000000    0.065456    0.958772
            -0.000081    0.000000
 10          0.038257    0.000000   -0.002612   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.958772   -0.065456
             0.000005    0.000000
 11          0.000000    0.038346    0.000003   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000001    0.000081
             0.961004   -0.000000
 12         -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.961670

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960188    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000044    0.000630
            -0.000013    0.000000
 2           0.000000    0.960188   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000628    0.000045
             0.000055   -0.000000
 3           0.000000   -0.000000    0.960188   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000056    0.000009
             0.000629   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.961750    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.961750    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.961750    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000
 7          -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.961750   -0.000000    0.000000   -0.000000
             0.000000   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.961750    0.000000    0.000000
             0.000000   -0.000000
 9          -0.000044    0.000628   -0.000056    0.000000   -0.000000    0.000000    0.000000    0.000000    0.961768    0.000000
             0.000000   -0.000000
 10          0.000630    0.000045    0.000009    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.961768
             0.000000    0.000000
 11         -0.000013    0.000055    0.000629   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.961768    0.000000
 12          0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.961670


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95016722 (fixed)   0.96027973 (relaxed)   0.96018817 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00078790   -0.00138046   -0.57062075
 Singles      0.01761161   -0.05656261   -0.06310431
 Pairs        0.06624469    0.00000000   -0.04122623
 Total        1.08464419   -0.05794307   -0.67495130
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34135728
 Nuclear energy                         0.00000000
 Kinetic energy                        83.04771696
 One electron energy                 -375.99258310
 Two electron energy                  161.97599618
 Virial quotient                       -2.57703155
 Correlation energy                    -0.67522964
 !MRCI STATE 1.1 Energy              -214.016586927390

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07374119 (Davidson, fixed reference)
 Cluster corrected energies          -214.07360155 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07374119 (Davidson, rotated reference)

 Cluster corrected energies          -214.07172109 (Pople, fixed reference)
 Cluster corrected energies          -214.07157684 (Pople, relaxed reference)
 Cluster corrected energies          -214.07172109 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94654293 (fixed)   0.96027970 (relaxed)   0.96018815 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00078790   -0.00138046   -0.57062066
 Singles      0.01761167   -0.05656267   -0.06310435
 Pairs        0.06624468   -0.00000000   -0.04122629
 Total        1.08464425   -0.05794314   -0.67495130
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34135728
 Nuclear energy                         0.00000000
 Kinetic energy                        83.04771770
 One electron energy                 -375.99258549
 Two electron energy                  161.97599857
 Virial quotient                       -2.57703153
 Correlation energy                    -0.67522964
 !MRCI STATE 2.1 Energy              -214.016586927317

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07374123 (Davidson, fixed reference)
 Cluster corrected energies          -214.07360159 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07374123 (Davidson, rotated reference)

 Cluster corrected energies          -214.07172113 (Pople, fixed reference)
 Cluster corrected energies          -214.07157688 (Pople, relaxed reference)
 Cluster corrected energies          -214.07172113 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95564467 (fixed)   0.96027969 (relaxed)   0.96018814 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00078790   -0.00138046   -0.57062062
 Singles      0.01761171   -0.05656270   -0.06310437
 Pairs        0.06624467    0.00000000   -0.04122631
 Total        1.08464428   -0.05794316   -0.67495130
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34135728
 Nuclear energy                         0.00000000
 Kinetic energy                        83.04771550
 One electron energy                 -375.99258364
 Two electron energy                  161.97599672
 Virial quotient                       -2.57703160
 Correlation energy                    -0.67522964
 !MRCI STATE 3.1 Energy              -214.016586927274

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07374125 (Davidson, fixed reference)
 Cluster corrected energies          -214.07360161 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07374125 (Davidson, rotated reference)

 Cluster corrected energies          -214.07172115 (Pople, fixed reference)
 Cluster corrected energies          -214.07157689 (Pople, relaxed reference)
 Cluster corrected energies          -214.07172115 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96166359 (fixed)   0.96189939 (relaxed)   0.96174967 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131753   -0.00228207   -0.55735099
 Singles      0.01763745   -0.05757238   -0.06400217
 Pairs        0.06217000    0.00000001   -0.03791669
 Total        1.08112499   -0.05985445   -0.65926985
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16614877
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81220394
 One electron energy                 -371.85703432
 Two electron energy                  158.03161570
 Virial quotient                       -2.58205202
 Correlation energy                    -0.65926985
 !MRCI STATE 4.1 Energy              -213.825418619411

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87890188 (Davidson, fixed reference)
 Cluster corrected energies          -213.87868002 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87890188 (Davidson, rotated reference)

 Cluster corrected energies          -213.87685950 (Pople, fixed reference)
 Cluster corrected energies          -213.87663168 (Pople, relaxed reference)
 Cluster corrected energies          -213.87685950 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96166360 (fixed)   0.96189941 (relaxed)   0.96174969 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131753   -0.00228207   -0.55735103
 Singles      0.01763740   -0.05757236   -0.06400215
 Pairs        0.06217001    0.00000000   -0.03791667
 Total        1.08112494   -0.05985443   -0.65926985
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16614877
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81220310
 One electron energy                 -371.85703303
 Two electron energy                  158.03161442
 Virial quotient                       -2.58205205
 Correlation energy                    -0.65926985
 !MRCI STATE 5.1 Energy              -213.825418619213

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87890185 (Davidson, fixed reference)
 Cluster corrected energies          -213.87867999 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87890185 (Davidson, rotated reference)

 Cluster corrected energies          -213.87685947 (Pople, fixed reference)
 Cluster corrected energies          -213.87663165 (Pople, relaxed reference)
 Cluster corrected energies          -213.87685947 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95638266 (fixed)   0.96189946 (relaxed)   0.96174974 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131754   -0.00228207   -0.55735126
 Singles      0.01763727   -0.05757215   -0.06400206
 Pairs        0.06217003    0.00000000   -0.03791650
 Total        1.08112484   -0.05985422   -0.65926982
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16614877
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81217267
 One electron energy                 -371.85700035
 Two electron energy                  158.03158176
 Virial quotient                       -2.58205300
 Correlation energy                    -0.65926982
 !MRCI STATE 6.1 Energy              -213.825418591994

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87890175 (Davidson, fixed reference)
 Cluster corrected energies          -213.87867989 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87890175 (Davidson, rotated reference)

 Cluster corrected energies          -213.87685937 (Pople, fixed reference)
 Cluster corrected energies          -213.87663155 (Pople, relaxed reference)
 Cluster corrected energies          -213.87685937 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95628906 (fixed)   0.96189946 (relaxed)   0.96174975 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131754   -0.00228207   -0.55735127
 Singles      0.01763726   -0.05757215   -0.06400206
 Pairs        0.06217002   -0.00000000   -0.03791650
 Total        1.08112482   -0.05985422   -0.65926982
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16614877
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81217194
 One electron energy                 -371.85699960
 Two electron energy                  158.03158101
 Virial quotient                       -2.58205302
 Correlation energy                    -0.65926982
 !MRCI STATE 7.1 Energy              -213.825418591893

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87890174 (Davidson, fixed reference)
 Cluster corrected energies          -213.87867988 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87890174 (Davidson, rotated reference)

 Cluster corrected energies          -213.87685936 (Pople, fixed reference)
 Cluster corrected energies          -213.87663154 (Pople, relaxed reference)
 Cluster corrected energies          -213.87685936 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96165561 (fixed)   0.96189947 (relaxed)   0.96174975 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131754   -0.00228207   -0.55735127
 Singles      0.01763725   -0.05757215   -0.06400206
 Pairs        0.06217002   -0.00000000   -0.03791650
 Total        1.08112481   -0.05985423   -0.65926982
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16614877
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81217324
 One electron energy                 -371.85700041
 Two electron energy                  158.03158182
 Virial quotient                       -2.58205298
 Correlation energy                    -0.65926982
 !MRCI STATE 8.1 Energy              -213.825418591732

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87890173 (Davidson, fixed reference)
 Cluster corrected energies          -213.87867987 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87890173 (Davidson, rotated reference)

 Cluster corrected energies          -213.87685935 (Pople, fixed reference)
 Cluster corrected energies          -213.87663152 (Pople, relaxed reference)
 Cluster corrected energies          -213.87685935 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95877218 (fixed)   0.96193364 (relaxed)   0.96176846 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131378   -0.00221464   -0.55894867
 Singles      0.01737903   -0.05732712   -0.06364501
 Pairs        0.06238995   -0.00000000   -0.03813515
 Total        1.08108276   -0.05954176   -0.66072883
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16090189
 Nuclear energy                         0.00000000
 Kinetic energy                        82.84339869
 One electron energy                 -372.06906597
 Two electron energy                  158.24771359
 Virial quotient                       -2.58103066
 Correlation energy                    -0.66045048
 !MRCI STATE 9.1 Energy              -213.821352377450

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87490353 (Davidson, fixed reference)
 Cluster corrected energies          -213.87465833 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87490353 (Davidson, rotated reference)

 Cluster corrected energies          -213.87285674 (Pople, fixed reference)
 Cluster corrected energies          -213.87260497 (Pople, relaxed reference)
 Cluster corrected energies          -213.87285674 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95877219 (fixed)   0.96193365 (relaxed)   0.96176846 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131378   -0.00221464   -0.55894866
 Singles      0.01737902   -0.05732712   -0.06364501
 Pairs        0.06238995   -0.00000000   -0.03813516
 Total        1.08108275   -0.05954177   -0.66072883
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16090189
 Nuclear energy                         0.00000000
 Kinetic energy                        82.84339939
 One electron energy                 -372.06906639
 Two electron energy                  158.24771401
 Virial quotient                       -2.58103064
 Correlation energy                    -0.66045048
 !MRCI STATE 10.1 Energy             -213.821352377388

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87490352 (Davidson, fixed reference)
 Cluster corrected energies          -213.87465832 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87490352 (Davidson, rotated reference)

 Cluster corrected energies          -213.87285673 (Pople, fixed reference)
 Cluster corrected energies          -213.87260496 (Pople, relaxed reference)
 Cluster corrected energies          -213.87285673 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.96100392 (fixed)   0.96193364 (relaxed)   0.96176845 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131378   -0.00221464   -0.55894867
 Singles      0.01737903   -0.05732711   -0.06364501
 Pairs        0.06238995    0.00000000   -0.03813515
 Total        1.08108276   -0.05954176   -0.66072883
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16090189
 Nuclear energy                         0.00000000
 Kinetic energy                        82.84339870
 One electron energy                 -372.06906617
 Two electron energy                  158.24771380
 Virial quotient                       -2.58103066
 Correlation energy                    -0.66045048
 !MRCI STATE 11.1 Energy             -213.821352377388

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87490353 (Davidson, fixed reference)
 Cluster corrected energies          -213.87465833 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87490353 (Davidson, rotated reference)

 Cluster corrected energies          -213.87285674 (Pople, fixed reference)
 Cluster corrected energies          -213.87260497 (Pople, relaxed reference)
 Cluster corrected energies          -213.87285674 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.96166999 (fixed)   0.96181408 (relaxed)   0.96166999 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00131184   -0.00228494   -0.00291339
 Singles      0.01749008   -0.05747675   -0.06381887
 Pairs        0.06250224   -0.59985587   -0.59288531
 Total        1.08130416   -0.65961757   -0.65961757
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15898612
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81361905
 One electron energy                 -371.85791876
 Two electron energy                  158.03931507
 Virial quotient                       -2.58192561
 Correlation energy                    -0.65961757
 !MRCI STATE 12.1 Energy             -213.818603690801

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87223334 (Davidson, fixed reference)
 Cluster corrected energies          -213.87201965 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87223334 (Davidson, rotated reference)

 Cluster corrected energies          -213.87019312 (Pople, fixed reference)
 Cluster corrected energies          -213.86997361 (Pople, relaxed reference)
 Cluster corrected energies          -213.87019312 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      719.02       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3654.43   3651.42      2.02      0.06      0.62
 REAL TIME  *      3749.28 SEC
 DISK USED  *       755.38 MB (local),        8.91 GB (total)
 SF USED    *         7.50 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.07374119  AU                              
 SETTING HLSDIAG(2)     =      -214.07374123  AU                              
 SETTING HLSDIAG(3)     =      -214.07374125  AU                              
 SETTING HLSDIAG(4)     =      -213.87890188  AU                              
 SETTING HLSDIAG(5)     =      -213.87890185  AU                              
 SETTING HLSDIAG(6)     =      -213.87890175  AU                              
 SETTING HLSDIAG(7)     =      -213.87890174  AU                              
 SETTING HLSDIAG(8)     =      -213.87890173  AU                              
 SETTING HLSDIAG(9)     =      -213.87490353  AU                              
 SETTING HLSDIAG(10)    =      -213.87490352  AU                              
 SETTING HLSDIAG(11)    =      -213.87490353  AU                              
 SETTING HLSDIAG(12)    =      -213.87223334  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

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
     1      -213.30647714
     2      -213.30647714
     3      -213.30647714
     4      -213.30647714
     5      -213.30647714
     6      -213.27718231
     7      -213.17092921
     8      -213.17092921
     9      -213.17092921
    10      -213.14968089
    11      -213.14968089
    12      -213.14968089
    13      -213.14968089
    14      -213.14968089
    15      -213.13563883

 Number of blocks in overlap matrix:  1421   Smallest eigenvalue:  0.51D-06
 Number of N-2 electron functions:    2650
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2060800
 Number of doubly external configurations:       4245680
 Total number of contracted configurations:      6330630
 Total number of uncontracted configurations:   45449790

 Diagonal Coupling coefficients finished.               Storage:  21821594 words, CPU-Time:     62.12 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1285265 words, CPU-time:      0.20 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.30647714     0.00000000    -0.84185871  0.60D-01  0.10D+00    73.84
    1     2     2     1.00000000     0.00000000  -213.30647714     0.00000000    -0.84281021  0.62D-01  0.10D+00    73.84
    1     3     3     1.00000000     0.00000000  -213.30647714     0.00000000    -0.84239331  0.61D-01  0.10D+00    73.84
    1     4     4     1.00000000     0.00000000  -213.30647714     0.00000000    -0.84241650  0.61D-01  0.10D+00    73.84
    1     5     5     1.00000000     0.00000000  -213.30647714     0.00000000    -0.84182295  0.60D-01  0.10D+00    73.84
    1     6     6     1.00000000     0.00000000  -213.27718231    -0.00000000    -0.81682987  0.32D-01  0.11D+00    73.84
    1     7     7     1.00000000     0.00000000  -213.17092921     0.00000000    -0.79923889  0.39D-01  0.94D-01    73.84
    1     8     8     1.00000000     0.00000000  -213.17092921     0.00000000    -0.79921321  0.39D-01  0.94D-01    73.84
    1     9     9     1.00000000     0.00000000  -213.17092921     0.00000000    -0.79920685  0.39D-01  0.94D-01    73.84
    1    10    10     1.00000000     0.00000000  -213.14968089     0.00000000    -0.80960676  0.44D-01  0.96D-01    73.84
    1    11    11     1.00000000     0.00000000  -213.14968089     0.00000000    -0.81008154  0.45D-01  0.96D-01    73.84
    1    12    12     1.00000000     0.00000000  -213.14968089    -0.00000000    -0.80998334  0.45D-01  0.96D-01    73.84
    1    13    13     1.00000000     0.00000000  -213.14968089    -0.00000000    -0.81007459  0.45D-01  0.96D-01    73.84
    1    14    14     1.00000000     0.00000000  -213.14968089     0.00000000    -0.80953637  0.44D-01  0.96D-01    73.84
    1    15    15     1.00000000     0.00000000  -213.13563883     0.00000000    -0.80948757  0.45D-01  0.98D-01    73.84
    2     1     1     1.09989346    -0.66032220  -213.96679934    -0.66032220    -0.02077346  0.43D-02  0.16D-02   371.17
    2     2     2     1.09986505    -0.66031285  -213.96678999    -0.66031285    -0.02079082  0.43D-02  0.16D-02   371.17
    2     3     3     1.10041951    -0.65991737  -213.96639451    -0.65991737    -0.02119735  0.46D-02  0.16D-02   371.17
    2     4     4     1.10045331    -0.65987376  -213.96635090    -0.65987376    -0.02124785  0.46D-02  0.17D-02   371.17
    2     5     5     1.10072222    -0.65972819  -213.96620533    -0.65972819    -0.02140881  0.47D-02  0.17D-02   371.17
    2     6     6     1.08928289    -0.65591596  -213.93309827    -0.65591596    -0.01728524  0.36D-02  0.14D-02   371.17
    2     7     7     1.08549260    -0.64414043  -213.81506964    -0.64414043    -0.01529084  0.24D-02  0.11D-02   371.17
    2     8     8     1.08550204    -0.64413534  -213.81506455    -0.64413534    -0.01529505  0.24D-02  0.11D-02   371.17
    2     9     9     1.08554309    -0.64411225  -213.81504146    -0.64411225    -0.01532048  0.24D-02  0.11D-02   371.17
    2    10    10     1.08756990    -0.64694217  -213.79662306    -0.64694217    -0.01682283  0.31D-02  0.12D-02   371.17
    2    11    11     1.08758697    -0.64690178  -213.79658267    -0.64690178    -0.01686322  0.31D-02  0.12D-02   371.17
    2    12    12     1.08805997    -0.64662063  -213.79630152    -0.64662063    -0.01717873  0.34D-02  0.12D-02   371.17
    2    13    13     1.08811200    -0.64659744  -213.79627833    -0.64659744    -0.01720795  0.34D-02  0.12D-02   371.17
    2    14    14     1.08812157    -0.64658160  -213.79626249    -0.64658160    -0.01722877  0.34D-02  0.12D-02   371.17
    2    15    15     1.09061770    -0.64702666  -213.78266549    -0.64702666    -0.01752049  0.42D-02  0.12D-02   371.17
    3     1     1     1.08807376    -0.67979279  -213.98626993    -0.01947059    -0.00062070  0.93D-04  0.81D-04   668.03
    3     2     2     1.08807387    -0.67978825  -213.98626539    -0.01947541    -0.00062394  0.93D-04  0.82D-04   668.03
    3     3     3     1.08808588    -0.67977577  -213.98625291    -0.01985840    -0.00063748  0.97D-04  0.83D-04   668.03
    3     4     4     1.08808503    -0.67977192  -213.98624906    -0.01989816    -0.00064061  0.97D-04  0.84D-04   668.03
    3     5     5     1.08810749    -0.67976482  -213.98624196    -0.02003663    -0.00064780  0.98D-04  0.85D-04   668.03
    3     6     6     1.08348425    -0.67265082  -213.94983313    -0.01673485    -0.00054321  0.60D-04  0.89D-04   668.03
    3     7     7     1.07920867    -0.65877345  -213.82970266    -0.01463302    -0.00031906  0.33D-04  0.33D-04   668.03
    3     8     8     1.07921090    -0.65877319  -213.82970240    -0.01463785    -0.00031928  0.33D-04  0.33D-04   668.03
    3     9     9     1.07921226    -0.65877158  -213.82970080    -0.01465933    -0.00032077  0.33D-04  0.34D-04   668.03
    3    10    10     1.08016239    -0.66285407  -213.81253496    -0.01591190    -0.00041556  0.52D-04  0.52D-04   668.03
    3    11    11     1.08015032    -0.66285336  -213.81253425    -0.01595159    -0.00041607  0.52D-04  0.51D-04   668.03
    3    12    12     1.08017899    -0.66283745  -213.81251834    -0.01621683    -0.00043150  0.53D-04  0.54D-04   668.03
    3    13    13     1.08018546    -0.66283621  -213.81251710    -0.01623877    -0.00043323  0.54D-04  0.55D-04   668.03
    3    14    14     1.08018466    -0.66283446  -213.81251535    -0.01625286    -0.00043448  0.54D-04  0.55D-04   668.03
    3    15    15     1.08112880    -0.66383223  -213.79947106    -0.01680557    -0.00048387  0.63D-04  0.70D-04   668.03
    4     1     1     1.08782740    -0.68044655  -213.98692370    -0.00065377    -0.00003466  0.46D-05  0.56D-05   967.54
    4     2     2     1.08782372    -0.68044605  -213.98692320    -0.00065780    -0.00003503  0.46D-05  0.57D-05   967.54
    4     3     3     1.08782323    -0.68044605  -213.98692319    -0.00067028    -0.00003518  0.46D-05  0.57D-05   967.54
    4     4     4     1.08782308    -0.68044585  -213.98692299    -0.00067392    -0.00003535  0.46D-05  0.57D-05   967.54
    4     5     5     1.08782154    -0.68044554  -213.98692268    -0.00068072    -0.00003560  0.46D-05  0.58D-05   967.54
    4     6     6     1.08462740    -0.67323053  -213.95041284    -0.00057971    -0.00003781  0.32D-05  0.75D-05   967.54
    4     7     7     1.07962108    -0.65910472  -213.83003393    -0.00033127    -0.00001334  0.27D-05  0.15D-05   967.54
    4     8     8     1.07962129    -0.65910471  -213.83003393    -0.00033152    -0.00001338  0.27D-05  0.15D-05   967.54
    4     9     9     1.07962154    -0.65910463  -213.83003385    -0.00033305    -0.00001344  0.27D-05  0.15D-05   967.54
    4    10    10     1.08060750    -0.66329033  -213.81297122    -0.00043626    -0.00002374  0.38D-05  0.42D-05   967.54
    4    11    11     1.08060649    -0.66329017  -213.81297106    -0.00043680    -0.00002371  0.38D-05  0.42D-05   967.54
    4    12    12     1.08060452    -0.66328999  -213.81297088    -0.00045253    -0.00002454  0.40D-05  0.44D-05   967.54
    4    13    13     1.08060352    -0.66328993  -213.81297082    -0.00045372    -0.00002447  0.40D-05  0.44D-05   967.54
    4    14    14     1.08060329    -0.66328981  -213.81297070    -0.00045536    -0.00002466  0.40D-05  0.45D-05   967.54
    4    15    15     1.08148662    -0.66435161  -213.79999043    -0.00051938    -0.00003252  0.53D-05  0.61D-05   967.54
    5     1     1     1.08789477    -0.68048753  -213.98696467    -0.00004098    -0.00000190  0.12D-06  0.37D-06  1264.25
    5     2     2     1.08789295    -0.68048750  -213.98696464    -0.00004144    -0.00000192  0.12D-06  0.38D-06  1264.25
    5     3     3     1.08789282    -0.68048748  -213.98696463    -0.00004144    -0.00000194  0.13D-06  0.38D-06  1264.25
    5     4     4     1.08789122    -0.68048748  -213.98696462    -0.00004163    -0.00000194  0.13D-06  0.38D-06  1264.25
    5     5     5     1.08789154    -0.68048746  -213.98696460    -0.00004192    -0.00000196  0.13D-06  0.38D-06  1264.25
    5     6     6     1.08514894    -0.67327580  -213.95045811    -0.00004527    -0.00000271  0.15D-06  0.54D-06  1264.25
    5     7     7     1.07971053    -0.65911997  -213.83004919    -0.00001525    -0.00000062  0.54D-07  0.12D-06  1264.25
    5     8     8     1.07971036    -0.65911995  -213.83004917    -0.00001524    -0.00000062  0.53D-07  0.12D-06  1264.25
    5     9     9     1.07971045    -0.65911993  -213.83004915    -0.00001530    -0.00000062  0.54D-07  0.12D-06  1264.25
    5    10    10     1.08079735    -0.66332060  -213.81300149    -0.00003028    -0.00000227  0.15D-06  0.54D-06  1264.25
    5    11    11     1.08079753    -0.66332057  -213.81300146    -0.00003041    -0.00000224  0.15D-06  0.53D-06  1264.25
    5    12    12     1.08079745    -0.66332049  -213.81300138    -0.00003050    -0.00000225  0.15D-06  0.53D-06  1264.25
    5    13    13     1.08079942    -0.66332007  -213.81300096    -0.00003015    -0.00000217  0.15D-06  0.51D-06  1264.25
    5    14    14     1.08079930    -0.66331989  -213.81300078    -0.00003007    -0.00000218  0.15D-06  0.52D-06  1264.25
    5    15    15     1.08168912    -0.66439223  -213.80003106    -0.00004062    -0.00000303  0.20D-06  0.69D-06  1264.25
    6     1     1     1.08788691    -0.68048982  -213.98696696    -0.00000228    -0.00000016  0.17D-07  0.28D-07  1562.34
    6     2     2     1.08788558    -0.68048981  -213.98696695    -0.00000232    -0.00000016  0.19D-07  0.30D-07  1562.34
    6     3     3     1.08788578    -0.68048981  -213.98696695    -0.00000233    -0.00000016  0.19D-07  0.30D-07  1562.34
    6     4     4     1.08788613    -0.68048981  -213.98696695    -0.00000233    -0.00000016  0.19D-07  0.30D-07  1562.34
    6     5     5     1.08788649    -0.68048981  -213.98696695    -0.00000235    -0.00000016  0.18D-07  0.29D-07  1562.34
    6     6     6     1.08519579    -0.67327917  -213.95046148    -0.00000337    -0.00000022  0.28D-07  0.35D-07  1562.34
    6     7     7     1.07970754    -0.65912072  -213.83004994    -0.00000075    -0.00000005  0.52D-08  0.11D-07  1562.34
    6     8     8     1.07970746    -0.65912070  -213.83004992    -0.00000075    -0.00000005  0.52D-08  0.11D-07  1562.34
    6     9     9     1.07970762    -0.65912068  -213.83004990    -0.00000075    -0.00000005  0.52D-08  0.11D-07  1562.34
    6    10    10     1.08081064    -0.66332369  -213.81300458    -0.00000309    -0.00000029  0.40D-07  0.46D-07  1562.34
    6    11    11     1.08081041    -0.66332362  -213.81300451    -0.00000305    -0.00000028  0.39D-07  0.45D-07  1562.34
    6    12    12     1.08081073    -0.66332355  -213.81300444    -0.00000306    -0.00000028  0.40D-07  0.45D-07  1562.34
    6    13    13     1.08081074    -0.66332306  -213.81300395    -0.00000299    -0.00000026  0.36D-07  0.42D-07  1562.34
    6    14    14     1.08081050    -0.66332288  -213.81300377    -0.00000299    -0.00000026  0.36D-07  0.42D-07  1562.34
    6    15    15     1.08169946    -0.66439622  -213.80003504    -0.00000399    -0.00000036  0.47D-07  0.67D-07  1562.34
    7     1     1     1.08790880    -0.68049000  -213.98696714    -0.00000018    -0.00000002  0.14D-08  0.30D-08  1861.49
    7     2     2     1.08790882    -0.68049000  -213.98696714    -0.00000019    -0.00000002  0.14D-08  0.29D-08  1861.49
    7     3     3     1.08790881    -0.68049000  -213.98696714    -0.00000019    -0.00000002  0.13D-08  0.28D-08  1861.49
    7     4     4     1.08790876    -0.68049000  -213.98696714    -0.00000019    -0.00000002  0.14D-08  0.29D-08  1861.49
    7     5     5     1.08790879    -0.68048999  -213.98696713    -0.00000018    -0.00000002  0.14D-08  0.29D-08  1861.49
    7     6     6     1.08521791    -0.67327941  -213.95046172    -0.00000025    -0.00000002  0.19D-08  0.33D-08  1861.49
    7     7     7     1.07971374    -0.65912079  -213.83005000    -0.00000007    -0.00000001  0.47D-09  0.11D-08  1861.49
    7     8     8     1.07971372    -0.65912077  -213.83004998    -0.00000007    -0.00000001  0.47D-09  0.11D-08  1861.49
    7     9     9     1.07971372    -0.65912075  -213.83004996    -0.00000007    -0.00000001  0.47D-09  0.11D-08  1861.49
    7    10    10     1.08082905    -0.66332402  -213.81300491    -0.00000033    -0.00000003  0.28D-08  0.56D-08  1861.49
    7    11    11     1.08082902    -0.66332394  -213.81300483    -0.00000032    -0.00000003  0.28D-08  0.55D-08  1861.49
    7    12    12     1.08082881    -0.66332388  -213.81300477    -0.00000033    -0.00000003  0.28D-08  0.55D-08  1861.49
    7    13    13     1.08082861    -0.66332337  -213.81300426    -0.00000031    -0.00000003  0.26D-08  0.51D-08  1861.49
    7    14    14     1.08082827    -0.66332319  -213.81300408    -0.00000031    -0.00000003  0.26D-08  0.51D-08  1861.49
    7    15    15     1.08172683    -0.66439665  -213.80003548    -0.00000043    -0.00000005  0.42D-08  0.99D-08  1861.49
    8     1     1     1.08790880    -0.68049000  -213.98696714    -0.00000000    -0.00000002  0.14D-08  0.30D-08  1980.39
    8     2     2     1.08790882    -0.68049000  -213.98696714     0.00000000    -0.00000002  0.14D-08  0.29D-08  1980.39
    8     3     3     1.08790881    -0.68049000  -213.98696714    -0.00000000    -0.00000002  0.13D-08  0.28D-08  1980.39
    8     4     4     1.08790876    -0.68049000  -213.98696714     0.00000000    -0.00000002  0.14D-08  0.29D-08  1980.39
    8     5     5     1.08790879    -0.68048999  -213.98696713    -0.00000000    -0.00000002  0.14D-08  0.29D-08  1980.39
    8     6     6     1.08521786    -0.67327941  -213.95046172    -0.00000000    -0.00000002  0.19D-08  0.33D-08  1980.39
    8     7     7     1.07971374    -0.65912079  -213.83005000     0.00000000    -0.00000001  0.47D-09  0.11D-08  1980.39
    8     8     8     1.07971372    -0.65912077  -213.83004998    -0.00000000    -0.00000001  0.47D-09  0.11D-08  1980.39
    8     9     9     1.07971372    -0.65912075  -213.83004996     0.00000000    -0.00000001  0.47D-09  0.11D-08  1980.39
    8    10    10     1.08082905    -0.66332402  -213.81300491     0.00000000    -0.00000003  0.28D-08  0.56D-08  1980.39
    8    11    11     1.08082902    -0.66332394  -213.81300483    -0.00000000    -0.00000003  0.28D-08  0.55D-08  1980.39
    8    12    12     1.08082881    -0.66332388  -213.81300477    -0.00000000    -0.00000003  0.28D-08  0.55D-08  1980.39
    8    13    13     1.08082861    -0.66332337  -213.81300426     0.00000000    -0.00000003  0.26D-08  0.51D-08  1980.39
    8    14    14     1.08082827    -0.66332319  -213.81300408     0.00000000    -0.00000003  0.26D-08  0.51D-08  1980.39
    8    15    15     1.08173069    -0.66439671  -213.80003554    -0.00000006    -0.00000000  0.34D-09  0.97D-09  1980.39


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   0.9%  11.7%
 P   0.5%  41.1%  32.5%

 Initialization:   3.2%
 Other:            8.2%

 Total CPU:     1980.4 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0000          -0.0027817   0.9389599  -0.0046925   0.0026394   0.0009097  -0.0000000  -0.0000000   0.0000008
                           -0.0000000  -0.0000050  -0.1569529  -0.0000001  -0.0000000   0.0000015   0.0000000
 22222222220/\000           0.9389559   0.0028057   0.0012788  -0.0054397  -0.0024472   0.0000000  -0.0000003   0.0000000
                            0.0000000  -0.1569531   0.0000050   0.0000045   0.0000002   0.0000010   0.0000000
 2222222222/0\000           0.0055774  -0.0031978  -0.1185068   0.9314411   0.0039422   0.0000000   0.0000000  -0.0000000
                            0.0000001  -0.0000045   0.0000001  -0.1569530  -0.0000024  -0.0000002   0.0000000
 2222222222200000           0.0020395  -0.0014840  -0.1669044  -0.0244178   0.7478832   0.5270657   0.0000000  -0.0000000
                           -0.0000000  -0.0000008  -0.0000012  -0.0000004   0.0339639  -0.1235701  -0.1244001
 22222222220/000\          -0.0001768   0.0006019   0.1219402   0.0156795  -0.0382734   0.1288781  -0.0000000   0.0000000
                            0.0000000  -0.0000005  -0.0000020  -0.0000112   0.7417015  -0.1936363   0.5338102
 2222222222/000\0           0.0003425  -0.0002492  -0.0280321  -0.0041010   0.1256093   0.1288784  -0.0000000   0.0000000
                            0.0000000   0.0000046   0.0000072   0.0000023  -0.2031601   0.7391608   0.5337945
 2222222222020000          -0.0010526   0.0035836   0.7260369   0.0933564  -0.2278814   0.5270659   0.0000000   0.0000000
                            0.0000000   0.0000001   0.0000003   0.0000019  -0.1239942   0.0323709  -0.1244026
 22222222220/00\0          -0.0003304   0.1115119  -0.0005573   0.0003135   0.0001080  -0.0000000  -0.0000000  -0.6734212
                            0.0000000   0.0000213   0.6638628   0.0000006   0.0000001  -0.0000064  -0.0000000
 22222222220/0\00           0.1115116   0.0003332   0.0001519  -0.0006460  -0.0002906   0.0000000   0.6734187  -0.0000000
                           -0.0001178   0.6638653  -0.0000213  -0.0000191  -0.0000007  -0.0000043  -0.0000000
 222222222200/0\0           0.0006624  -0.0003798  -0.0140740   0.1106189   0.0004682   0.0000000  -0.0001178  -0.0000000
                           -0.6734187   0.0000191  -0.0000006   0.6638655   0.0000102   0.0000007  -0.0000000
 2222222222/00\00           0.0006624  -0.0003798  -0.0140740   0.1106190   0.0004682  -0.0000000   0.0001178   0.0000000
                            0.6734173   0.0000191  -0.0000006   0.6638669   0.0000102   0.0000007  -0.0000000
 222222222200/00\           0.1115114   0.0003332   0.0001519  -0.0006460  -0.0002906   0.0000000  -0.6734172   0.0000000
                            0.0001178   0.6638668  -0.0000213  -0.0000191  -0.0000007  -0.0000043  -0.0000000
 2222222222/0000\          -0.0003304   0.1115118  -0.0005573   0.0003135   0.0001080  -0.0000000   0.0000000   0.6734148
                           -0.0000000   0.0000213   0.6638694   0.0000006   0.0000001  -0.0000064  -0.0000000
 2222222222002000          -0.0009869  -0.0020996  -0.5591325  -0.0689386  -0.5200017   0.5270658  -0.0000000   0.0000000
                            0.0000000   0.0000007   0.0000009  -0.0000015   0.0900339   0.0911962  -0.1244013
 222222222200/\00          -0.0001657  -0.0003526  -0.0939083  -0.0115785  -0.0873360   0.1288784   0.0000000  -0.0000000
                           -0.0000000  -0.0000040  -0.0000052   0.0000088  -0.5385551  -0.5455122   0.5338017
 2222220222022000           0.0002231  -0.0001623  -0.0182582  -0.0026711   0.0818143  -0.1113761  -0.0000000  -0.0000000
                           -0.0000000  -0.0000001  -0.0000002  -0.0000001   0.0045099  -0.0164093   0.0285911
 2222220222202000          -0.0001151   0.0003920   0.0794244   0.0102127  -0.0249288  -0.1113760   0.0000000   0.0000000
                            0.0000000   0.0000000   0.0000000   0.0000002  -0.0164664   0.0042991   0.0285907
 2222220222220000          -0.0001080  -0.0002297  -0.0611660  -0.0075415  -0.0568852  -0.1113760   0.0000000  -0.0000000
                           -0.0000000   0.0000001   0.0000001  -0.0000002   0.0119557   0.0121109   0.0285909
 2222220222/\2000           0.0003043  -0.1027165   0.0005133  -0.0002887  -0.0000995   0.0000000   0.0000000  -0.0000001
                           -0.0000000   0.0000007   0.0208429   0.0000000   0.0000000  -0.0000002  -0.0000000
 22222202222/\000          -0.1027163  -0.0003069  -0.0001399   0.0005951   0.0002677  -0.0000000   0.0000000   0.0000000
                           -0.0000000   0.0208428  -0.0000007  -0.0000006  -0.0000000  -0.0000001  -0.0000000
 2222220222/2\000          -0.0006101   0.0003498   0.0129640  -0.1018943  -0.0004313  -0.0000000   0.0000000   0.0000000
                           -0.0000000   0.0000006  -0.0000000   0.0208428   0.0000003   0.0000000  -0.0000000
 22222202222/000\           0.0000470  -0.0000779  -0.0137811  -0.0018164   0.0147663  -0.0046204  -0.0000000   0.0000000
                           -0.0000000   0.0000000   0.0000002   0.0000011  -0.0740813   0.0170956  -0.0559739
 2222220222/200\0          -0.0000475   0.0000768   0.0134913   0.0017807  -0.0150357  -0.0046207   0.0000000  -0.0000000
                            0.0000000  -0.0000005  -0.0000007  -0.0000002   0.0180465  -0.0738563  -0.0559734
 22222202220/200\           0.0000015  -0.0000872  -0.0196693  -0.0024848  -0.0042672  -0.0046205   0.0000000   0.0000000
                           -0.0000000   0.0000001   0.0000002   0.0000011  -0.0729842   0.0212989  -0.0559742
 2222220222/020\0          -0.0000465  -0.0000085  -0.0058017  -0.0006557  -0.0194210  -0.0046207   0.0000000  -0.0000000
                           -0.0000000  -0.0000004  -0.0000007  -0.0000003   0.0222360  -0.0727045  -0.0559734
 22222202220/20\0           0.0000305  -0.0103113   0.0000515  -0.0000290  -0.0000100   0.0000000   0.0000000   0.0678222
                           -0.0000000  -0.0000022  -0.0669019  -0.0000001  -0.0000000   0.0000006   0.0000000
 222222022202/0\0          -0.0000612   0.0000351   0.0013014  -0.0102287  -0.0000433  -0.0000000   0.0000119   0.0000000
                            0.0678221  -0.0000019   0.0000001  -0.0669022  -0.0000010  -0.0000001   0.0000000
 2222220222/20\00          -0.0000612   0.0000351   0.0013014  -0.0102287  -0.0000433  -0.0000000  -0.0000119  -0.0000000
                           -0.0678221  -0.0000019   0.0000001  -0.0669024  -0.0000010  -0.0000001   0.0000000
 22222202222/0\00          -0.0103112  -0.0000308  -0.0000140   0.0000597   0.0000269  -0.0000000  -0.0678220   0.0000000
                            0.0000119  -0.0669020   0.0000022   0.0000019   0.0000001   0.0000004   0.0000000
 222222022220/00\          -0.0103112  -0.0000308  -0.0000140   0.0000597   0.0000269  -0.0000000   0.0678220  -0.0000000
                           -0.0000119  -0.0669022   0.0000022   0.0000019   0.0000001   0.0000004   0.0000000
 2222220222/0200\           0.0000305  -0.0103113   0.0000515  -0.0000290  -0.0000100   0.0000000  -0.0000000  -0.0678218
                            0.0000000  -0.0000021  -0.0669027  -0.0000001  -0.0000000   0.0000006   0.0000000
 22222202222/00\0           0.0000601  -0.0202783   0.0001013  -0.0000570  -0.0000196   0.0000000   0.0000000   0.0655760
                           -0.0000000  -0.0000021  -0.0647289  -0.0000001  -0.0000000   0.0000006   0.0000000
 222222022220/0\0          -0.0001205   0.0000691   0.0025593  -0.0201159  -0.0000851  -0.0000000   0.0000115   0.0000000
                            0.0655758  -0.0000019   0.0000001  -0.0647290  -0.0000010  -0.0000001   0.0000000
 2222220222/02\00          -0.0001205   0.0000691   0.0025593  -0.0201159  -0.0000851  -0.0000000  -0.0000115  -0.0000000
                           -0.0655757  -0.0000019   0.0000001  -0.0647292  -0.0000010  -0.0000001   0.0000000
 22222202220/2\00          -0.0202783  -0.0000606  -0.0000276   0.0001175   0.0000529  -0.0000000  -0.0655751   0.0000000
                            0.0000115  -0.0647299   0.0000021   0.0000019   0.0000001   0.0000004   0.0000000
 222222022202/00\          -0.0202783  -0.0000606  -0.0000276   0.0001175   0.0000529  -0.0000000   0.0655749  -0.0000000
                           -0.0000115  -0.0647302   0.0000021   0.0000019   0.0000001   0.0000004   0.0000000
 2222220222/2000\           0.0000601  -0.0202783   0.0001013  -0.0000570  -0.0000196   0.0000000  -0.0000000  -0.0655748
                            0.0000000  -0.0000021  -0.0647303  -0.0000001  -0.0000000   0.0000006   0.0000000
 222222022220/\00           0.0000459   0.0000103   0.0061778   0.0007041   0.0193029  -0.0046206   0.0000000   0.0000000
                            0.0000000   0.0000004   0.0000005  -0.0000009   0.0549382   0.0525556  -0.0559739
 222222022202/\00          -0.0000005   0.0000864   0.0195828   0.0024721   0.0046547  -0.0046206   0.0000000   0.0000000
                            0.0000000   0.0000004   0.0000005  -0.0000009   0.0518471   0.0556082  -0.0559735

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000677    0.956375   -0.002833    0.005681    0.002453   -0.000000    0.000000   -0.000000    0.000000    0.000036
            -0.059672   -0.000354    0.000177   -0.000155    0.000000
 2           0.004425    0.002858    0.956379   -0.003257   -0.000777    0.000000   -0.000000    0.000000    0.000000    0.000219
            -0.000178    0.000203   -0.059673    0.000175   -0.000000
 3           0.948323    0.001303   -0.004780   -0.120705    0.028071   -0.000000    0.000000    0.000000    0.000000    0.052741
            -0.000081    0.007531    0.000298    0.026881   -0.000000
 4           0.120792   -0.005541    0.002688    0.948720   -0.000492   -0.000000   -0.000000   -0.000000   -0.000000    0.006596
             0.000346   -0.059195   -0.000168    0.003647   -0.000000
 5          -0.027778   -0.002493    0.000927    0.004015    0.955983    0.000000   -0.000000   -0.000000    0.000000    0.027127
             0.000156   -0.000251   -0.000058   -0.053151    0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.957781    0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.054887
 7          -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000168    0.961743    0.000000
             0.000001   -0.000000    0.000000   -0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.961743    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000005    0.000000    0.000000
 9           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.961743   -0.000168   -0.000000
            -0.000000   -0.000001   -0.000000   -0.000000   -0.000000
 10          0.000000    0.062468    0.000002    0.000002    0.000000   -0.000000    0.000000    0.000000   -0.000001   -0.000004
             0.959211    0.000028    0.000031    0.000005    0.000000
 11         -0.000000   -0.000002    0.062468   -0.000000    0.000001    0.000000    0.000005    0.000000   -0.000000   -0.000004
            -0.000031   -0.000001    0.959211    0.000008    0.000000
 12         -0.000001   -0.000002    0.000000    0.062468   -0.000000    0.000000    0.000000    0.000001    0.000000    0.000013
            -0.000028    0.959212    0.000001    0.000006    0.000000
 13          0.062458   -0.000000    0.000000    0.000001   -0.001085   -0.000000   -0.000000   -0.000000    0.000000   -0.833218
            -0.000001    0.000015    0.000000   -0.475221   -0.000008
 14          0.001085   -0.000000   -0.000001    0.000000    0.062459    0.000000   -0.000000   -0.000000    0.000000   -0.475222
            -0.000006    0.000001   -0.000009    0.833218    0.000007
 15          0.000001   -0.000000   -0.000000   -0.000000   -0.000001    0.057111   -0.000000    0.000000    0.000000   -0.000004
            -0.000000   -0.000000   -0.000000   -0.000011    0.959145

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958258    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.001304
            -0.000004    0.000008   -0.000001    0.000003   -0.000000
 2           0.000000    0.958258   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000004
             0.001305   -0.000004    0.000006   -0.000001    0.000000
 3          -0.000000   -0.000000    0.958258   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000002
            -0.000007   -0.000165    0.001293    0.000061    0.000000
 4           0.000000   -0.000000   -0.000000    0.958258    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000008
             0.000004    0.001294    0.000165    0.000002    0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.958258   -0.000000    0.000000   -0.000000   -0.000000   -0.000003
             0.000001    0.000005   -0.000061    0.001303   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.959352   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000    0.001070
 7          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.961743   -0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.961743   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000
 9          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.961743    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000
 10          0.001304    0.000004    0.000002   -0.000008   -0.000003   -0.000000    0.000000   -0.000000    0.000000    0.961243
             0.000000   -0.000000   -0.000000    0.000000    0.000000
 11         -0.000004    0.001305   -0.000007    0.000004    0.000001    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.961243    0.000000   -0.000000   -0.000000   -0.000000
 12          0.000008   -0.000004   -0.000165    0.001294    0.000005    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.961243    0.000000   -0.000000   -0.000000
 13         -0.000001    0.000006    0.001293    0.000165   -0.000061    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.961243   -0.000000    0.000000
 14          0.000003   -0.000001    0.000061    0.000002    0.001303   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.961243   -0.000000
 15         -0.000000    0.000000    0.000000    0.000000   -0.000000    0.001070    0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.960844


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95637465 (fixed)   0.95834989 (relaxed)   0.95825806 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101952   -0.00187298   -0.56923554
 Singles      0.02073459   -0.06127605   -0.06921749
 Pairs        0.06726383   -0.00000000   -0.04203697
 Total        1.08901794   -0.06314903   -0.68049000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30584227
 Nuclear energy                         0.00000000
 Kinetic energy                        83.03111961
 One electron energy                 -375.84012130
 Two electron energy                  161.85315415
 Virial quotient                       -2.57718995
 Correlation energy                    -0.68112487
 !MRCI STATE 1.1 Energy              -213.986967141050

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04759948 (Davidson, fixed reference)
 Cluster corrected energies          -214.04745733 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04759948 (Davidson, rotated reference)

 Cluster corrected energies          -214.04637216 (Pople, fixed reference)
 Cluster corrected energies          -214.04622220 (Pople, relaxed reference)
 Cluster corrected energies          -214.04637216 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95637872 (fixed)   0.95834988 (relaxed)   0.95825805 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101952   -0.00187298   -0.56923561
 Singles      0.02073451   -0.06127596   -0.06921744
 Pairs        0.06726393   -0.00000000   -0.04203695
 Total        1.08901797   -0.06314894   -0.68049000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30584227
 Nuclear energy                         0.00000000
 Kinetic energy                        83.03111764
 One electron energy                 -375.84011829
 Two electron energy                  161.85315115
 Virial quotient                       -2.57719001
 Correlation energy                    -0.68112487
 !MRCI STATE 2.1 Energy              -213.986967139231

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04759949 (Davidson, fixed reference)
 Cluster corrected energies          -214.04745735 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04759949 (Davidson, rotated reference)

 Cluster corrected energies          -214.04637217 (Pople, fixed reference)
 Cluster corrected energies          -214.04622222 (Pople, relaxed reference)
 Cluster corrected energies          -214.04637217 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.94832324 (fixed)   0.95834989 (relaxed)   0.95825806 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101951   -0.00187298   -0.56923568
 Singles      0.02073440   -0.06127588   -0.06921740
 Pairs        0.06726404   -0.00000002   -0.04203692
 Total        1.08901794   -0.06314888   -0.68049000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30584226
 Nuclear energy                         0.00000000
 Kinetic energy                        83.03113282
 One electron energy                 -375.84013912
 Two electron energy                  161.85317198
 Virial quotient                       -2.57718954
 Correlation energy                    -0.68112487
 !MRCI STATE 3.1 Energy              -213.986967137625

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04759947 (Davidson, fixed reference)
 Cluster corrected energies          -214.04745733 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04759947 (Davidson, rotated reference)

 Cluster corrected energies          -214.04637215 (Pople, fixed reference)
 Cluster corrected energies          -214.04622220 (Pople, relaxed reference)
 Cluster corrected energies          -214.04637215 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.94872046 (fixed)   0.95834991 (relaxed)   0.95825808 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101952   -0.00187298   -0.56923564
 Singles      0.02073449   -0.06127596   -0.06921744
 Pairs        0.06726389   -0.00000000   -0.04203692
 Total        1.08901790   -0.06314895   -0.68049000
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30584227
 Nuclear energy                         0.00000000
 Kinetic energy                        83.03112238
 One electron energy                 -375.84012349
 Two electron energy                  161.85315635
 Virial quotient                       -2.57718987
 Correlation energy                    -0.68112487
 !MRCI STATE 4.1 Energy              -213.986967137426

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04759945 (Davidson, fixed reference)
 Cluster corrected energies          -214.04745730 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04759945 (Davidson, rotated reference)

 Cluster corrected energies          -214.04637212 (Pople, fixed reference)
 Cluster corrected energies          -214.04622217 (Pople, relaxed reference)
 Cluster corrected energies          -214.04637212 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95598347 (fixed)   0.95834990 (relaxed)   0.95825807 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101951   -0.00187298   -0.56923571
 Singles      0.02073440   -0.06127587   -0.06921740
 Pairs        0.06726401   -0.00000000   -0.04203688
 Total        1.08901792   -0.06314885   -0.68048999
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.30584226
 Nuclear energy                         0.00000000
 Kinetic energy                        83.03113303
 One electron energy                 -375.84013958
 Two electron energy                  161.85317245
 Virial quotient                       -2.57718954
 Correlation energy                    -0.68112487
 !MRCI STATE 5.1 Energy              -213.986967132641

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04759945 (Davidson, fixed reference)
 Cluster corrected energies          -214.04745731 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04759945 (Davidson, rotated reference)

 Cluster corrected energies          -214.04637213 (Pople, fixed reference)
 Cluster corrected energies          -214.04622218 (Pople, relaxed reference)
 Cluster corrected energies          -214.04637213 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95778089 (fixed)   0.95958493 (relaxed)   0.95935170 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00121506   -0.00166204   -0.62690469
 Singles      0.01154596   -0.04376644   -0.04743099
 Pairs        0.07377545    0.05082376    0.00105627
 Total        1.08653646    0.00539528   -0.67327941
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.27670078
 Nuclear energy                         0.00000000
 Kinetic energy                        83.01147695
 One electron energy                 -375.52488222
 Two electron energy                  161.57442050
 Virial quotient                       -2.57736002
 Correlation energy                    -0.67376094
 !MRCI STATE 6.1 Energy              -213.950461722759

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00876661 (Davidson, fixed reference)
 Cluster corrected energies          -214.00841078 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00876661 (Davidson, rotated reference)

 Cluster corrected energies          -214.00746414 (Pople, fixed reference)
 Cluster corrected energies          -214.00709046 (Pople, relaxed reference)
 Cluster corrected energies          -214.00746414 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96174285 (fixed)   0.96189641 (relaxed)   0.96174287 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132123   -0.00227938   -0.55707106
 Singles      0.01786841   -0.05771967   -0.06427752
 Pairs        0.06195065    0.00000000   -0.03777221
 Total        1.08114029   -0.05999905   -0.65912079
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17092921
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81128918
 One electron energy                 -371.85747117
 Two electron energy                  158.02742117
 Virial quotient                       -2.58213647
 Correlation energy                    -0.65912079
 !MRCI STATE 7.1 Energy              -213.830050004064

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88353126 (Davidson, fixed reference)
 Cluster corrected energies          -213.88330377 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88353126 (Davidson, rotated reference)

 Cluster corrected energies          -213.88209409 (Pople, fixed reference)
 Cluster corrected energies          -213.88185734 (Pople, relaxed reference)
 Cluster corrected energies          -213.88209409 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96174288 (fixed)   0.96189643 (relaxed)   0.96174288 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132122   -0.00227938   -0.55707111
 Singles      0.01786838   -0.05771961   -0.06427750
 Pairs        0.06195066   -0.00000000   -0.03777216
 Total        1.08114026   -0.05999899   -0.65912077
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17092921
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81129159
 One electron energy                 -371.85747245
 Two electron energy                  158.02742246
 Virial quotient                       -2.58213640
 Correlation energy                    -0.65912077
 !MRCI STATE 8.1 Energy              -213.830049981529

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88353121 (Davidson, fixed reference)
 Cluster corrected energies          -213.88330372 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88353121 (Davidson, rotated reference)

 Cluster corrected energies          -213.88209404 (Pople, fixed reference)
 Cluster corrected energies          -213.88185729 (Pople, relaxed reference)
 Cluster corrected energies          -213.88209404 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96174287 (fixed)   0.96189643 (relaxed)   0.96174288 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132122   -0.00227938   -0.55707105
 Singles      0.01786840   -0.05771965   -0.06427751
 Pairs        0.06195063    0.00000000   -0.03777218
 Total        1.08114026   -0.05999903   -0.65912075
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.17092921
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81128863
 One electron energy                 -371.85746881
 Two electron energy                  158.02741885
 Virial quotient                       -2.58213649
 Correlation energy                    -0.65912075
 !MRCI STATE 9.1 Energy              -213.830049961774

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.88353119 (Davidson, fixed reference)
 Cluster corrected energies          -213.88330370 (Davidson, relaxed reference)
 Cluster corrected energies          -213.88353119 (Davidson, rotated reference)

 Cluster corrected energies          -213.88209402 (Pople, fixed reference)
 Cluster corrected energies          -213.88185727 (Pople, relaxed reference)
 Cluster corrected energies          -213.88209402 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95921149 (fixed)   0.96140073 (relaxed)   0.96124252 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132957   -0.00228131   -0.56019161
 Singles      0.01773109   -0.05792957   -0.06438607
 Pairs        0.06320543   -0.00000000   -0.03874634
 Total        1.08226609   -0.06021088   -0.66332402
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15031576
 Nuclear energy                         0.00000000
 Kinetic energy                        82.86134730
 One electron energy                 -372.19311689
 Two electron energy                  158.38011198
 Virial quotient                       -2.58037085
 Correlation energy                    -0.66268915
 !MRCI STATE 10.1 Energy             -213.813004911238

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.86752176 (Davidson, fixed reference)
 Cluster corrected energies          -213.86728573 (Davidson, relaxed reference)
 Cluster corrected energies          -213.86752176 (Davidson, rotated reference)

 Cluster corrected energies          -213.86610816 (Pople, fixed reference)
 Cluster corrected energies          -213.86586205 (Pople, relaxed reference)
 Cluster corrected energies          -213.86610816 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95921149 (fixed)   0.96140074 (relaxed)   0.96124252 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132960   -0.00228131   -0.56019170
 Singles      0.01773097   -0.05792942   -0.06438586
 Pairs        0.06320553   -0.00000000   -0.03874638
 Total        1.08226610   -0.06021072   -0.66332394
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15031576
 Nuclear energy                         0.00000000
 Kinetic energy                        82.86134465
 One electron energy                 -372.19311870
 Two electron energy                  158.38011387
 Virial quotient                       -2.58037093
 Correlation energy                    -0.66268907
 !MRCI STATE 11.1 Energy             -213.813004832931

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.86752168 (Davidson, fixed reference)
 Cluster corrected energies          -213.86728563 (Davidson, relaxed reference)
 Cluster corrected energies          -213.86752168 (Davidson, rotated reference)

 Cluster corrected energies          -213.86610808 (Pople, fixed reference)
 Cluster corrected energies          -213.86586195 (Pople, relaxed reference)
 Cluster corrected energies          -213.86610808 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95921156 (fixed)   0.96140084 (relaxed)   0.96124260 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132964   -0.00228131   -0.56019183
 Singles      0.01773083   -0.05792933   -0.06438573
 Pairs        0.06320545   -0.00000000   -0.03874632
 Total        1.08226592   -0.06021064   -0.66332388
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15031576
 Nuclear energy                         0.00000000
 Kinetic energy                        82.86134571
 One electron energy                 -372.19312251
 Two electron energy                  158.38011775
 Virial quotient                       -2.58037089
 Correlation energy                    -0.66268900
 !MRCI STATE 12.1 Energy             -213.813004766004

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.86752149 (Davidson, fixed reference)
 Cluster corrected energies          -213.86728541 (Davidson, relaxed reference)
 Cluster corrected energies          -213.86752149 (Davidson, rotated reference)

 Cluster corrected energies          -213.86610789 (Pople, fixed reference)
 Cluster corrected energies          -213.86586173 (Pople, relaxed reference)
 Cluster corrected energies          -213.86610789 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.83321758 (fixed)   0.96140093 (relaxed)   0.96124269 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132962   -0.00228130   -0.56019656
 Singles      0.01773052   -0.05792900   -0.06438507
 Pairs        0.06320556    0.00000519   -0.03874173
 Total        1.08226570   -0.06020511   -0.66332337
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15031577
 Nuclear energy                         0.00000000
 Kinetic energy                        82.86130272
 One electron energy                 -372.19310573
 Two electron energy                  158.38010147
 Virial quotient                       -2.58037223
 Correlation energy                    -0.66268849
 !MRCI STATE 13.1 Energy             -213.813004255949

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.86752079 (Davidson, fixed reference)
 Cluster corrected energies          -213.86728472 (Davidson, relaxed reference)
 Cluster corrected energies          -213.86752079 (Davidson, rotated reference)

 Cluster corrected energies          -213.86610719 (Pople, fixed reference)
 Cluster corrected energies          -213.86586104 (Pople, relaxed reference)
 Cluster corrected energies          -213.86610719 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.83321767 (fixed)   0.96140108 (relaxed)   0.96124280 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132971   -0.00228130   -0.56018773
 Singles      0.01773025   -0.05792871   -0.06438467
 Pairs        0.06320550   -0.00000467   -0.03875078
 Total        1.08226546   -0.06021468   -0.66332319
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15031577
 Nuclear energy                         0.00000000
 Kinetic energy                        82.86129870
 One electron energy                 -372.19311129
 Two electron energy                  158.38010721
 Virial quotient                       -2.58037235
 Correlation energy                    -0.66268831
 !MRCI STATE 14.1 Energy             -213.813004076032

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.86752043 (Davidson, fixed reference)
 Cluster corrected energies          -213.86728430 (Davidson, relaxed reference)
 Cluster corrected energies          -213.86752043 (Davidson, rotated reference)

 Cluster corrected energies          -213.86610682 (Pople, fixed reference)
 Cluster corrected energies          -213.86586061 (Pople, relaxed reference)
 Cluster corrected energies          -213.86610682 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95914545 (fixed)   0.96101802 (relaxed)   0.96084367 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132574   -0.00218921   -0.00342204
 Singles      0.01668135   -0.05471792   -0.06075095
 Pairs        0.06515769   -0.60685297   -0.60022372
 Total        1.08316478   -0.66376011   -0.66439671
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.13612036
 Nuclear energy                         0.00000000
 Kinetic energy                        82.89071478
 One electron energy                 -372.39880561
 Two electron energy                  158.59877007
 Virial quotient                       -2.57930018
 Correlation energy                    -0.66391518
 !MRCI STATE 15.1 Energy             -213.800035536911

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.85524990 (Davidson, fixed reference)
 Cluster corrected energies          -213.85498900 (Davidson, relaxed reference)
 Cluster corrected energies          -213.85524990 (Davidson, rotated reference)

 Cluster corrected energies          -213.85385983 (Pople, fixed reference)
 Cluster corrected energies          -213.85358738 (Pople, relaxed reference)
 Cluster corrected energies          -213.85385983 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1460.89       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6889.33   3234.88   3651.42      2.02      0.06      0.62
 REAL TIME  *      7087.94 SEC
 DISK USED  *         1.46 GB (local),       17.60 GB (total)
 SF USED    *         7.72 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -214.04759948  AU                              
 SETTING HLSDIAG(14)    =      -214.04759949  AU                              
 SETTING HLSDIAG(15)    =      -214.04759947  AU                              
 SETTING HLSDIAG(16)    =      -214.04759945  AU                              
 SETTING HLSDIAG(17)    =      -214.04759945  AU                              
 SETTING HLSDIAG(18)    =      -214.00876661  AU                              
 SETTING HLSDIAG(19)    =      -213.88353126  AU                              
 SETTING HLSDIAG(20)    =      -213.88353121  AU                              
 SETTING HLSDIAG(21)    =      -213.88353119  AU                              
 SETTING HLSDIAG(22)    =      -213.86752176  AU                              
 SETTING HLSDIAG(23)    =      -213.86752168  AU                              
 SETTING HLSDIAG(24)    =      -213.86752149  AU                              
 SETTING HLSDIAG(25)    =      -213.86752079  AU                              
 SETTING HLSDIAG(26)    =      -213.86752043  AU                              
 SETTING HLSDIAG(27)    =      -213.85524990  AU                              


         HLSDIAG
    -214.0737412
    -214.0737412
    -214.0737413
    -213.8789019
    -213.8789018
    -213.8789018
    -213.8789017
    -213.8789017
    -213.8749035
    -213.8749035
    -213.8749035
    -213.8722333
    -214.0475995
    -214.0475995
    -214.0475995
    -214.0475994
    -214.0475995
    -214.0087666
    -213.8835313
    -213.8835312
    -213.8835312
    -213.8675218
    -213.8675217
    -213.8675215
    -213.8675208
    -213.8675204
    -213.8552499
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -214.016587   -214.016587   -214.016587   -213.825419   -213.825419   -213.825419   -213.825419   -213.825419
                      -213.821352   -213.821352   -213.821352   -213.818604
 Replaced energies:   -214.073741   -214.073741   -214.073741   -213.878902   -213.878902   -213.878902   -213.878902   -213.878902
                      -213.874904   -213.874904   -213.874904   -213.872233

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  15

 Original energies:   -213.986967   -213.986967   -213.986967   -213.986967   -213.986967   -213.950462   -213.830050   -213.830050
                      -213.830050   -213.813005   -213.813005   -213.813005   -213.813004   -213.813004   -213.800036
 Replaced energies:   -214.047599   -214.047599   -214.047599   -214.047599   -214.047599   -214.008767   -213.883531   -213.883531
                      -213.883531   -213.867522   -213.867522   -213.867521   -213.867521   -213.867520   -213.855250



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.07374125

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -99.87   -1108.85      31.89      37.29    -304.12      32.16       6.84       0.35       5.51

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           99.87       0.00    -154.44    -229.00    -267.04     -42.66       4.96     -26.94      -1.58     -23.11

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1108.85     154.44      -0.00      20.78      24.14      -2.57       4.57    -307.55     -18.10    -265.12

    4   4.1  1.0  1.0       0.00       0.00       0.00   42762.30       0.00       0.00       0.00       0.00       0.00       0.00
                          -31.89     229.00     -20.78       0.00      -0.24    -110.80   -1041.12     -14.58     419.89     -28.66

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42762.31       0.00       0.00       0.00       0.00       0.00
                          -37.29     267.04     -24.14       0.24      -0.00      94.54     892.84      12.71     489.64     -33.60

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42762.33       0.00       0.00       0.00       0.00
                          304.12      42.66       2.57     110.80     -94.54      -0.00       9.90    -685.74      38.06     555.49

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42762.33       0.00       0.00       0.00
                          -32.16      -4.96      -4.57    1041.12    -892.84      -9.90       0.00      73.02      -4.15     -58.92

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42762.33       0.00       0.00
                           -6.84      26.94     307.55      14.58     -12.71     685.74     -73.02      -0.00       0.24      -0.79

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43639.84       0.00
                           -0.35       1.58      18.10    -419.89    -489.64     -38.06       4.15      -0.24       0.00      -0.06

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43639.84
                           -5.51      23.11     265.12      28.66      33.60    -555.49      58.92       0.79       0.06      -0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -264.21     -37.00      -2.26       0.24       0.11       0.05       7.83    -559.86      49.42     723.95

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -68.83     494.17     -44.51      -0.00       0.00       0.00       0.00       0.00     918.07     -62.68

   13   1.1  1.0  0.0       0.00     791.61     -69.01       1.69      -4.86      22.81     214.61      33.01    -188.16     -13.14
                            0.00      -6.74     110.23    -245.44      46.01     -29.35       7.62      -0.00       3.90      -0.27

   14   2.1  1.0  0.0    -791.61      -0.00     -16.44      -7.17      20.72       3.22      33.12    -214.99     -13.43     187.46
                            6.74      -0.00    -787.08     -34.37       6.37     212.23     -41.59      -0.58     -16.36       1.12

   15   3.1  1.0  0.0      69.01      16.44       0.00     -83.38     236.91       0.26       1.48      19.45      -2.74     -16.62
                         -110.23     787.08       0.00      -2.08       0.33     -42.24    -214.22      -3.00    -187.47      12.80

   16   4.1  1.0  0.0      -1.69       7.17      83.38      -0.00       0.30    -914.96      96.82       1.32      -0.20       0.06
                          245.44      34.37       2.08      -0.00      -0.42       0.07       2.52    -179.64      30.60     448.30

   17   5.1  1.0  0.0       4.86     -20.72    -236.91      -0.30      -0.00    -321.96      34.02       0.29      -0.08      -0.12
                          -46.01      -6.37      -0.33       0.42       0.00      -0.08      13.27    -958.59      -5.61     -84.02

   18   6.1  1.0  0.0     -22.81      -3.22      -0.26     914.96     321.96      -0.00       0.66     -50.91      -2.88     -41.67
                           29.35    -212.23      42.24      -0.07       0.08      -0.00     487.64       6.55    -392.80      26.79

   19   7.1  1.0  0.0    -214.61     -33.12      -1.48     -96.82     -34.02      -0.66      -0.00    -485.02     -32.34    -392.38
                           -7.62      41.59     214.22      -2.52     -13.27    -487.64       0.00       0.27      41.64      -2.77

   20   8.1  1.0  0.0     -33.01     214.99     -19.45      -1.32      -0.29      50.91     485.02       0.00     394.59     -32.46
                            0.00       0.58       3.00     179.64     958.59      -6.55      -0.27       0.00       0.56       0.16

   21   9.1  1.0  0.0     188.16      13.43       2.74       0.20       0.08       2.88      32.34    -394.59       0.00    -513.10
                           -3.90      16.36     187.47     -30.60       5.61     392.80     -41.64      -0.56       0.00       0.00

   22  10.1  1.0  0.0      13.14    -187.46      16.62      -0.06       0.12      41.67     392.38      32.46     513.10       0.00
                            0.27      -1.12     -12.80    -448.30      84.02     -26.79       2.77      -0.16      -0.00      -0.00

   23  11.1  1.0  0.0       0.02       0.00       0.00    -151.75     431.25       0.12      -0.17       0.01      -0.00      -0.04
                           25.92    -186.11      16.78       0.04      -0.13     -41.74    -393.68      -5.51     511.91     -34.95

   24  12.1  1.0  0.0      -7.33      30.75     352.79       0.00       0.00      -0.00       0.00       0.00      -0.05       0.00
                         -350.77     -49.12      -3.00       0.00      -0.00      -0.00       0.00      -0.00     -44.32    -649.17

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

   37   1.1  0.0  0.0     112.29    -772.40      68.50       1.35       0.39     -23.95    -236.19      -1.89     162.34     -12.05
                           -1.97      -3.03      -4.45     -87.45    -466.68       1.35       0.71      -0.14       0.52       0.47

   38   2.1  0.0  0.0      -2.27      -2.89      -2.28    -447.89    -157.60      -1.92      -0.49      -1.08       0.52       0.52
                         -105.97     773.42     -66.95      -0.23      -1.47     -25.85    -235.94      -5.33    -162.43      10.72

   39   3.1  0.0  0.0     -84.13     -72.06    -657.94       2.25       0.90    -317.53      33.78     -29.52       1.61      20.48
                          193.55      32.04     100.51       0.10      -0.50     -29.63      10.77    -459.43      -1.97     -40.88

   40   4.1  0.0  0.0     770.75     105.21     -74.84      -1.37      -0.49     -41.75       2.52     235.56     -11.94    -161.04
                           44.31     -61.32    -774.08       0.54       2.65     234.13     -24.70     -58.36      -0.88      -5.94

   41   5.1  0.0  0.0      15.67     -50.81    -611.36      -0.43      -0.26     347.02     -36.20       0.52      -0.48      -0.65
                         -874.05    -121.94     -10.83       0.28       1.24       0.98       1.13    -104.45      12.33     182.94

   42   6.1  0.0  0.0      26.49    -111.20   -1275.60       0.00       0.00       0.00      -0.00       0.00      -0.02       0.00
                         1268.29     177.62      10.86      -0.00      -0.00       0.00      -0.00       0.00     -14.61    -213.93

   43   7.1  0.0  0.0      30.27    -217.03      19.55       0.05      -0.16     -51.35    -483.97      -6.69    -393.15      26.91
                           -0.00       0.00       0.04     552.41    -103.52      -0.12       0.10       0.24      -0.00      -0.00

   44   8.1  0.0  0.0       0.00       0.00      -0.00     186.56    -530.16      -0.15       0.21      -0.05       0.00       0.00
                           30.23    -217.04      19.55      -0.05       0.16      51.35     483.97       6.77    -393.16      26.84

   45   9.1  0.0  0.0     217.86      30.55       1.86      -0.24      -0.13      -0.04      -6.72     486.68      26.91     393.15
                           -4.55      19.10     219.12      -0.11       0.17    -484.01      51.34       0.67      -0.03       0.00

   46  10.1  0.0  0.0     -29.98     215.21     -19.38       0.02      -0.13     -40.98    -386.29      -5.39    -519.59      35.49
                            0.00      -0.01       0.01    -143.11    -763.70      -0.20       0.24      -0.28       0.02      -0.00

   47  11.1  0.0  0.0       0.00      -0.01       0.00    -732.94    -257.91      -0.06       0.03      -0.43       0.02      -0.00
                           29.98    -215.21      19.38       0.05      -0.10     -40.99    -386.29      -5.41     519.59     -35.48

   48  12.1  0.0  0.0    -216.03     -30.26      -1.85      -0.19      -0.11      -0.03      -5.42     388.46      35.49     519.59
                           -4.51      18.94     217.28       0.01      -0.10     386.33     -40.98      -0.53       0.04      -0.00

   49  13.1  0.0  0.0      -3.66      15.37     176.26      -0.01       0.17    -549.85      58.33       0.77       0.04       0.01
                          -66.11      -9.26      -0.56       0.36       0.21       0.08      10.47    -749.14      10.85     159.00

   50  14.1  0.0  0.0      -3.71      15.56     178.55       0.02      -0.17     542.83     -57.58      -0.75       0.04      -0.00
                          240.53      33.69       2.06       0.10       0.06       0.02       2.88    -205.90     -39.50    -578.51

   51  15.1  0.0  0.0      -9.14      38.34     439.81      -0.00      -0.00      -0.01       0.00       0.00       0.07      -0.00
                         -437.29     -61.24      -3.74       0.00       0.00      -0.00       0.00      -0.01      59.31     868.76


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00       0.00    -791.61      69.01      -1.69       4.86     -22.81    -214.61     -33.01
                          264.21      68.83      -0.00      -6.74     110.23    -245.44      46.01     -29.35       7.62      -0.00

    2   2.1  1.0  1.0       0.00       0.00     791.61      -0.00      16.44       7.17     -20.72      -3.22     -33.12     214.99
                           37.00    -494.17       6.74       0.00    -787.08     -34.37       6.37     212.23     -41.59      -0.58

    3   3.1  1.0  1.0       0.00       0.00     -69.01     -16.44       0.00      83.38    -236.91      -0.26      -1.48     -19.45
                            2.26      44.51    -110.23     787.08      -0.00      -2.08       0.33     -42.24    -214.22      -3.00

    4   4.1  1.0  1.0       0.00       0.00       1.69      -7.17     -83.38      -0.00      -0.30     914.96     -96.82      -1.32
                           -0.24       0.00     245.44      34.37       2.08       0.00      -0.42       0.07       2.52    -179.64

    5   5.1  1.0  1.0       0.00       0.00      -4.86      20.72     236.91       0.30      -0.00     321.96     -34.02      -0.29
                           -0.11      -0.00     -46.01      -6.37      -0.33       0.42      -0.00      -0.08      13.27    -958.59

    6   6.1  1.0  1.0       0.00       0.00      22.81       3.22       0.26    -914.96    -321.96      -0.00      -0.66      50.91
                           -0.05      -0.00      29.35    -212.23      42.24      -0.07       0.08       0.00     487.64       6.55

    7   7.1  1.0  1.0       0.00       0.00     214.61      33.12       1.48      96.82      34.02       0.66      -0.00     485.02
                           -7.83      -0.00      -7.62      41.59     214.22      -2.52     -13.27    -487.64      -0.00       0.27

    8   8.1  1.0  1.0       0.00       0.00      33.01    -214.99      19.45       1.32       0.29     -50.91    -485.02       0.00
                          559.86      -0.00       0.00       0.58       3.00     179.64     958.59      -6.55      -0.27      -0.00

    9   9.1  1.0  1.0       0.00       0.00    -188.16     -13.43      -2.74      -0.20      -0.08      -2.88     -32.34     394.59
                          -49.42    -918.07      -3.90      16.36     187.47     -30.60       5.61     392.80     -41.64      -0.56

   10  10.1  1.0  1.0       0.00       0.00     -13.14     187.46     -16.62       0.06      -0.12     -41.67    -392.38     -32.46
                         -723.95      62.68       0.27      -1.12     -12.80    -448.30      84.02     -26.79       2.77      -0.16

   11  11.1  1.0  1.0   43639.84       0.00      -0.02      -0.00      -0.00     151.75    -431.25      -0.12       0.17      -0.01
                            0.00      -0.08      25.92    -186.11      16.78       0.04      -0.13     -41.74    -393.68      -5.51

   12  12.1  1.0  1.0       0.00   44225.87       7.33     -30.75    -352.79      -0.00      -0.00       0.00      -0.00      -0.00
                            0.08      -0.00    -350.77     -49.12      -3.00       0.00      -0.00      -0.00       0.00      -0.00

   13   1.1  1.0  0.0      -0.02       7.33       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -25.92     350.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0      -0.00     -30.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          186.11      49.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0      -0.00    -352.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -16.78       3.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0     151.75      -0.00       0.00       0.00       0.00   42762.30       0.00       0.00       0.00       0.00
                           -0.04      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0    -431.25      -0.00       0.00       0.00       0.00       0.00   42762.31       0.00       0.00       0.00
                            0.13       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0      -0.12       0.00       0.00       0.00       0.00       0.00       0.00   42762.33       0.00       0.00
                           41.74       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0       0.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   42762.33       0.00
                          393.68      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42762.33
                            5.51       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0       0.00       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -511.91      44.32      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0       0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           34.95     649.17      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0      -0.00    -650.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0     650.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00     791.61     -69.01       1.69      -4.86      22.81     214.61      33.01
                           -0.00      -0.00       0.00      -6.74     110.23    -245.44      46.01     -29.35       7.62      -0.00

   26   2.1  1.0 -1.0       0.00       0.00    -791.61      -0.00     -16.44      -7.17      20.72       3.22      33.12    -214.99
                           -0.00      -0.00       6.74      -0.00    -787.08     -34.37       6.37     212.23     -41.59      -0.58

   27   3.1  1.0 -1.0       0.00       0.00      69.01      16.44       0.00     -83.38     236.91       0.26       1.48      19.45
                           -0.00      -0.00    -110.23     787.08       0.00      -2.08       0.33     -42.24    -214.22      -3.00

   28   4.1  1.0 -1.0       0.00       0.00      -1.69       7.17      83.38      -0.00       0.30    -914.96      96.82       1.32
                           -0.00      -0.00     245.44      34.37       2.08      -0.00      -0.42       0.07       2.52    -179.64

   29   5.1  1.0 -1.0       0.00       0.00       4.86     -20.72    -236.91      -0.30      -0.00    -321.96      34.02       0.29
                           -0.00      -0.00     -46.01      -6.37      -0.33       0.42       0.00      -0.08      13.27    -958.59

   30   6.1  1.0 -1.0       0.00       0.00     -22.81      -3.22      -0.26     914.96     321.96      -0.00       0.66     -50.91
                           -0.00      -0.00      29.35    -212.23      42.24      -0.07       0.08      -0.00     487.64       6.55

   31   7.1  1.0 -1.0       0.00       0.00    -214.61     -33.12      -1.48     -96.82     -34.02      -0.66      -0.00    -485.02
                           -0.00      -0.00      -7.62      41.59     214.22      -2.52     -13.27    -487.64       0.00       0.27

   32   8.1  1.0 -1.0       0.00       0.00     -33.01     214.99     -19.45      -1.32      -0.29      50.91     485.02       0.00
                           -0.00      -0.00       0.00       0.58       3.00     179.64     958.59      -6.55      -0.27       0.00

   33   9.1  1.0 -1.0       0.00       0.00     188.16      13.43       2.74       0.20       0.08       2.88      32.34    -394.59
                           -0.00      -0.00      -3.90      16.36     187.47     -30.60       5.61     392.80     -41.64      -0.56

   34  10.1  1.0 -1.0       0.00       0.00      13.14    -187.46      16.62      -0.06       0.12      41.67     392.38      32.46
                           -0.00      -0.00       0.27      -1.12     -12.80    -448.30      84.02     -26.79       2.77      -0.16

   35  11.1  1.0 -1.0       0.00       0.00       0.02       0.00       0.00    -151.75     431.25       0.12      -0.17       0.01
                           -0.00      -0.00      25.92    -186.11      16.78       0.04      -0.13     -41.74    -393.68      -5.51

   36  12.1  1.0 -1.0       0.00       0.00      -7.33      30.75     352.79       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00    -350.77     -49.12      -3.00       0.00      -0.00      -0.00       0.00      -0.00

   37   1.1  0.0  0.0       0.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.97      -0.00     -26.41      97.49    1103.43       3.03      -2.70     333.70     -36.95       0.51

   38   2.1  0.0  0.0       0.51      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.57       0.00    1098.05     148.06      13.22      -1.57       1.58       1.00       4.28    -335.71

   39   3.1  0.0  0.0     137.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.54       0.00     160.97   -1196.00     109.12     -64.31      55.10     -20.45    -197.31      -1.10

   40   4.1  0.0  0.0      16.90      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          161.48       0.00      24.62    -153.83       7.48     505.65    -433.61      -4.43     -21.96      -1.12

   41   5.1  0.0  0.0     127.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.68       0.00     -51.13     375.09     -36.66       2.21      -2.04     -68.51    -637.40      -9.24

   42   6.1  0.0  0.0     214.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -248.86    1786.78    -160.93       0.00      -0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.07    -797.55       6.44     -27.01    -309.89      -0.10       0.11    -684.50      72.61       0.95

   44   8.1  0.0  0.0       0.00     797.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00     308.11      43.15       2.64       0.33       0.19       0.06       9.62    -688.27

   45   9.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          394.07       0.14      -0.00       0.00       0.05    -517.40    -603.36      -0.05       0.15      -0.41

   46  10.1  0.0  0.0      -0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       6.37     -26.79    -307.28       0.03      -0.19     546.35     -57.96      -0.78

   47  11.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04      -0.00    -305.52     -42.79      -2.61       0.27       0.15       0.03       7.67    -549.36

   48  12.1  0.0  0.0       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -520.80      -0.00       0.00      -0.00       0.01     834.14    -715.30      -0.22       0.35       0.21

   49  13.1  0.0  0.0    -422.48      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00     -47.36     340.05     -30.63       0.04      -0.10     -29.28    -276.00      -3.86

   50  14.1  0.0  0.0    -427.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      12.37     -88.78       8.00       0.12      -0.34    -112.17   -1057.16     -14.79

   51  15.1  0.0  0.0    -870.78      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      85.80    -616.06      55.49      -0.00       0.00       0.00       0.01       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0     188.16      13.14       0.02      -7.33       0.00       0.00       0.00       0.00       0.00       0.00
                            3.90      -0.27     -25.92     350.77       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0      13.43    -187.46       0.00      30.75       0.00       0.00       0.00       0.00       0.00       0.00
                          -16.36       1.12     186.11      49.12       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       2.74      16.62       0.00     352.79       0.00       0.00       0.00       0.00       0.00       0.00
                         -187.47      12.80     -16.78       3.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0       0.20      -0.06    -151.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           30.60     448.30      -0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0       0.08       0.12     431.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.61     -84.02       0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0       2.88      41.67       0.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -392.80      26.79      41.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0      32.34     392.38      -0.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           41.64      -2.77     393.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0    -394.59      32.46       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.56       0.16       5.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0       0.00     513.10      -0.00      -0.05       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -511.91      44.32       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0    -513.10       0.00      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      34.95     649.17       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0       0.00       0.04      -0.00     650.68       0.00       0.00       0.00       0.00       0.00       0.00
                          511.91     -34.95      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0       0.05      -0.00    -650.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -44.32    -649.17      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00    -791.61      69.01      -1.69       4.86     -22.81
                            0.00       0.00       0.00       0.00      -0.00      -6.74     110.23    -245.44      46.01     -29.35

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00     791.61      -0.00      16.44       7.17     -20.72      -3.22
                            0.00       0.00       0.00       0.00       6.74       0.00    -787.08     -34.37       6.37     212.23

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00     -69.01     -16.44       0.00      83.38    -236.91      -0.26
                            0.00       0.00       0.00       0.00    -110.23     787.08      -0.00      -2.08       0.33     -42.24

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       1.69      -7.17     -83.38      -0.00      -0.30     914.96
                            0.00       0.00       0.00       0.00     245.44      34.37       2.08       0.00      -0.42       0.07

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -4.86      20.72     236.91       0.30      -0.00     321.96
                            0.00       0.00       0.00       0.00     -46.01      -6.37      -0.33       0.42      -0.00      -0.08

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00      22.81       3.22       0.26    -914.96    -321.96      -0.00
                            0.00       0.00       0.00       0.00      29.35    -212.23      42.24      -0.07       0.08       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00     214.61      33.12       1.48      96.82      34.02       0.66
                            0.00       0.00       0.00       0.00      -7.62      41.59     214.22      -2.52     -13.27    -487.64

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00      33.01    -214.99      19.45       1.32       0.29     -50.91
                            0.00       0.00       0.00       0.00       0.00       0.58       3.00     179.64     958.59      -6.55

   21   9.1  1.0  0.0   43639.84       0.00       0.00       0.00    -188.16     -13.43      -2.74      -0.20      -0.08      -2.88
                            0.00       0.00       0.00       0.00      -3.90      16.36     187.47     -30.60       5.61     392.80

   22  10.1  1.0  0.0       0.00   43639.84       0.00       0.00     -13.14     187.46     -16.62       0.06      -0.12     -41.67
                           -0.00       0.00       0.00       0.00       0.27      -1.12     -12.80    -448.30      84.02     -26.79

   23  11.1  1.0  0.0       0.00       0.00   43639.84       0.00      -0.02      -0.00      -0.00     151.75    -431.25      -0.12
                           -0.00      -0.00       0.00       0.00      25.92    -186.11      16.78       0.04      -0.13     -41.74

   24  12.1  1.0  0.0       0.00       0.00       0.00   44225.87       7.33     -30.75    -352.79      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -350.77     -49.12      -3.00       0.00      -0.00      -0.00

   25   1.1  1.0 -1.0    -188.16     -13.14      -0.02       7.33       0.01       0.00       0.00       0.00       0.00       0.00
                            3.90      -0.27     -25.92     350.77       0.00      99.87    1108.85     -31.89     -37.29     304.12

   26   2.1  1.0 -1.0     -13.43     187.46      -0.00     -30.75       0.00       0.00       0.00       0.00       0.00       0.00
                          -16.36       1.12     186.11      49.12     -99.87      -0.00     154.44     229.00     267.04      42.66

   27   3.1  1.0 -1.0      -2.74     -16.62      -0.00    -352.79       0.00       0.00       0.00       0.00       0.00       0.00
                         -187.47      12.80     -16.78       3.00   -1108.85    -154.44       0.00     -20.78     -24.14       2.57

   28   4.1  1.0 -1.0      -0.20       0.06     151.75      -0.00       0.00       0.00       0.00   42762.30       0.00       0.00
                           30.60     448.30      -0.04      -0.00      31.89    -229.00      20.78      -0.00       0.24     110.80

   29   5.1  1.0 -1.0      -0.08      -0.12    -431.25      -0.00       0.00       0.00       0.00       0.00   42762.31       0.00
                           -5.61     -84.02       0.13       0.00      37.29    -267.04      24.14      -0.24       0.00     -94.54

   30   6.1  1.0 -1.0      -2.88     -41.67      -0.12       0.00       0.00       0.00       0.00       0.00       0.00   42762.33
                         -392.80      26.79      41.74       0.00    -304.12     -42.66      -2.57    -110.80      94.54       0.00

   31   7.1  1.0 -1.0     -32.34    -392.38       0.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           41.64      -2.77     393.68      -0.00      32.16       4.96       4.57   -1041.12     892.84       9.90

   32   8.1  1.0 -1.0     394.59     -32.46      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.56       0.16       5.51       0.00       6.84     -26.94    -307.55     -14.58      12.71    -685.74

   33   9.1  1.0 -1.0       0.00    -513.10       0.00       0.05       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -511.91      44.32       0.35      -1.58     -18.10     419.89     489.64      38.06

   34  10.1  1.0 -1.0     513.10       0.00       0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      34.95     649.17       5.51     -23.11    -265.12     -28.66     -33.60     555.49

   35  11.1  1.0 -1.0      -0.00      -0.04      -0.00    -650.68       0.00       0.00       0.00       0.00       0.00       0.00
                          511.91     -34.95       0.00       0.00     264.21      37.00       2.26      -0.24      -0.11      -0.05

   36  12.1  1.0 -1.0      -0.05       0.00     650.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -44.32    -649.17      -0.00       0.00      68.83    -494.17      44.51       0.00      -0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00     112.29    -772.40      68.50       1.35       0.39     -23.95
                           -0.30       0.70    -230.21       0.00       1.97       3.03       4.45      87.45     466.68      -1.35

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00      -2.27      -2.89      -2.28    -447.89    -157.60      -1.92
                          -14.44    -229.76      -0.69       0.00     105.97    -773.42      66.95       0.23       1.47      25.85

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00     -84.13     -72.06    -657.94       2.25       0.90    -317.53
                          251.23     -16.00      -0.29      -0.00    -193.55     -32.04    -100.51      -0.10       0.50      29.63

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00     770.75     105.21     -74.84      -1.37      -0.49     -41.75
                           32.25      -2.85       1.34       0.00     -44.31      61.32     774.08      -0.54      -2.65    -234.13

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00      15.67     -50.81    -611.36      -0.43      -0.26     347.02
                          -78.84       5.16       0.59       0.00     874.05     121.94      10.83      -0.28      -1.24      -0.98

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00      26.49    -111.20   -1275.60       0.00       0.00       0.00
                         -302.55      20.66      -0.03       0.00   -1268.29    -177.62     -10.86       0.00       0.00      -0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00      30.27    -217.03      19.55       0.05      -0.16     -51.35
                            0.05      -0.00    -557.30      -0.20       0.00      -0.00      -0.04    -552.41     103.52       0.12

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     186.56    -530.16      -0.15
                           37.96     556.00       0.00      -0.00     -30.23     217.04     -19.55       0.05      -0.16     -51.35

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00     217.86      30.55       1.86      -0.24      -0.13      -0.04
                           -0.00       0.00       0.10   -1127.91       4.55     -19.10    -219.12       0.11      -0.17     484.01

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00     -29.98     215.21     -19.38       0.02      -0.13     -40.98
                           -0.06       0.03     736.52       0.00      -0.00       0.01      -0.01     143.11     763.70       0.20

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.01       0.00    -732.94    -257.91      -0.06
                           50.17     734.81      -0.02      -0.00     -29.98     215.21     -19.38      -0.05       0.10      40.99

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00    -216.03     -30.26      -1.85      -0.19      -0.11      -0.03
                            0.01      -0.00      -0.02      -0.00       4.51     -18.94    -217.28      -0.01       0.10    -386.33

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00      -3.66      15.37     176.26      -0.01       0.17    -549.85
                         -820.98      56.05      -0.07       0.00      66.11       9.26       0.56      -0.36      -0.21      -0.08

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00      -3.71      15.56     178.55       0.02      -0.17     542.83
                          214.34     -14.64       0.01       0.00    -240.53     -33.69      -2.06      -0.10      -0.06      -0.02

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00      -9.14      38.34     439.81      -0.00      -0.00      -0.01
                         1228.60     -83.88       0.10      -0.00     437.29      61.24       3.74      -0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     112.29      -2.27     -84.13     770.75
                            0.00       0.00       0.00       0.00       0.00       0.00       1.97     105.97    -193.55     -44.31

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -772.40      -2.89     -72.06     105.21
                            0.00       0.00       0.00       0.00       0.00       0.00       3.03    -773.42     -32.04      61.32

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      68.50      -2.28    -657.94     -74.84
                            0.00       0.00       0.00       0.00       0.00       0.00       4.45      66.95    -100.51     774.08

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.35    -447.89       2.25      -1.37
                            0.00       0.00       0.00       0.00       0.00       0.00      87.45       0.23      -0.10      -0.54

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.39    -157.60       0.90      -0.49
                            0.00       0.00       0.00       0.00       0.00       0.00     466.68       1.47       0.50      -2.65

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -23.95      -1.92    -317.53     -41.75
                            0.00       0.00       0.00       0.00       0.00       0.00      -1.35      25.85      29.63    -234.13

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -236.19      -0.49      33.78       2.52
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.71     235.94     -10.77      24.70

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -1.89      -1.08     -29.52     235.56
                            0.00       0.00       0.00       0.00       0.00       0.00       0.14       5.33     459.43      58.36

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     162.34       0.52       1.61     -11.94
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.52     162.43       1.97       0.88

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -12.05       0.52      20.48    -161.04
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.47     -10.72      40.88       5.94

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.26       0.51     137.08      16.90
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.97       0.57      20.54    -161.48

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  0.0    -214.61     -33.01     188.16      13.14       0.02      -7.33       0.00       0.00       0.00       0.00
                            7.62      -0.00       3.90      -0.27     -25.92     350.77      26.41   -1098.05    -160.97     -24.62

   14   2.1  1.0  0.0     -33.12     214.99      13.43    -187.46       0.00      30.75       0.00       0.00       0.00       0.00
                          -41.59      -0.58     -16.36       1.12     186.11      49.12     -97.49    -148.06    1196.00     153.83

   15   3.1  1.0  0.0      -1.48     -19.45       2.74      16.62       0.00     352.79       0.00       0.00       0.00       0.00
                         -214.22      -3.00    -187.47      12.80     -16.78       3.00   -1103.43     -13.22    -109.12      -7.48

   16   4.1  1.0  0.0     -96.82      -1.32       0.20      -0.06    -151.75       0.00       0.00       0.00       0.00       0.00
                            2.52    -179.64      30.60     448.30      -0.04      -0.00      -3.03       1.57      64.31    -505.65

   17   5.1  1.0  0.0     -34.02      -0.29       0.08       0.12     431.25       0.00       0.00       0.00       0.00       0.00
                           13.27    -958.59      -5.61     -84.02       0.13       0.00       2.70      -1.58     -55.10     433.61

   18   6.1  1.0  0.0      -0.66      50.91       2.88      41.67       0.12      -0.00       0.00       0.00       0.00       0.00
                          487.64       6.55    -392.80      26.79      41.74       0.00    -333.70      -1.00      20.45       4.43

   19   7.1  1.0  0.0      -0.00     485.02      32.34     392.38      -0.17       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.27      41.64      -2.77     393.68      -0.00      36.95      -4.28     197.31      21.96

   20   8.1  1.0  0.0    -485.02       0.00    -394.59      32.46       0.01       0.00       0.00       0.00       0.00       0.00
                           -0.27      -0.00       0.56       0.16       5.51       0.00      -0.51     335.71       1.10       1.12

   21   9.1  1.0  0.0     -32.34     394.59       0.00     513.10      -0.00      -0.05       0.00       0.00       0.00       0.00
                          -41.64      -0.56      -0.00       0.00    -511.91      44.32       0.30      14.44    -251.23     -32.25

   22  10.1  1.0  0.0    -392.38     -32.46    -513.10       0.00      -0.04       0.00       0.00       0.00       0.00       0.00
                            2.77      -0.16      -0.00       0.00      34.95     649.17      -0.70     229.76      16.00       2.85

   23  11.1  1.0  0.0       0.17      -0.01       0.00       0.04      -0.00     650.68       0.00       0.00       0.00       0.00
                         -393.68      -5.51     511.91     -34.95      -0.00       0.00     230.21       0.69       0.29      -1.34

   24  12.1  1.0  0.0      -0.00      -0.00       0.05      -0.00    -650.68      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -44.32    -649.17      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     112.29      -2.27     -84.13     770.75
                          -32.16      -6.84      -0.35      -5.51    -264.21     -68.83      -1.97    -105.97     193.55      44.31

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -772.40      -2.89     -72.06     105.21
                           -4.96      26.94       1.58      23.11     -37.00     494.17      -3.03     773.42      32.04     -61.32

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      68.50      -2.28    -657.94     -74.84
                           -4.57     307.55      18.10     265.12      -2.26     -44.51      -4.45     -66.95     100.51    -774.08

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.35    -447.89       2.25      -1.37
                         1041.12      14.58    -419.89      28.66       0.24      -0.00     -87.45      -0.23       0.10       0.54

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.39    -157.60       0.90      -0.49
                         -892.84     -12.71    -489.64      33.60       0.11       0.00    -466.68      -1.47      -0.50       2.65

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     -23.95      -1.92    -317.53     -41.75
                           -9.90     685.74     -38.06    -555.49       0.05       0.00       1.35     -25.85     -29.63     234.13

   31   7.1  1.0 -1.0   42762.33       0.00       0.00       0.00       0.00       0.00    -236.19      -0.49      33.78       2.52
                           -0.00     -73.02       4.15      58.92       7.83       0.00       0.71    -235.94      10.77     -24.70

   32   8.1  1.0 -1.0       0.00   42762.33       0.00       0.00       0.00       0.00      -1.89      -1.08     -29.52     235.56
                           73.02       0.00      -0.24       0.79    -559.86       0.00      -0.14      -5.33    -459.43     -58.36

   33   9.1  1.0 -1.0       0.00       0.00   43639.84       0.00       0.00       0.00     162.34       0.52       1.61     -11.94
                           -4.15       0.24      -0.00       0.06      49.42     918.07       0.52    -162.43      -1.97      -0.88

   34  10.1  1.0 -1.0       0.00       0.00       0.00   43639.84       0.00       0.00     -12.05       0.52      20.48    -161.04
                          -58.92      -0.79      -0.06       0.00     723.95     -62.68       0.47      10.72     -40.88      -5.94

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   43639.84       0.00       0.26       0.51     137.08      16.90
                           -7.83     559.86     -49.42    -723.95      -0.00       0.08       0.97      -0.57     -20.54     161.48

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   44225.87       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00    -918.07      62.68      -0.08       0.00      -0.00       0.00       0.00       0.00

   37   1.1  0.0  0.0    -236.19      -1.89     162.34     -12.05       0.26       0.00    5737.46       0.00       0.00       0.00
                           -0.71       0.14      -0.52      -0.47      -0.97       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0      -0.49      -1.08       0.52       0.52       0.51      -0.00       0.00    5737.45       0.00       0.00
                          235.94       5.33     162.43     -10.72       0.57      -0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0      33.78     -29.52       1.61      20.48     137.08       0.00       0.00       0.00    5737.46       0.00
                          -10.77     459.43       1.97      40.88      20.54      -0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0       2.52     235.56     -11.94    -161.04      16.90      -0.00       0.00       0.00       0.00    5737.46
                           24.70      58.36       0.88       5.94    -161.48      -0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0     -36.20       0.52      -0.48      -0.65     127.49       0.00       0.00       0.00       0.00       0.00
                           -1.13     104.45     -12.33    -182.94      -0.68      -0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0      -0.00       0.00      -0.02       0.00     214.43       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      14.61     213.93       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0    -483.97      -6.69    -393.15      26.91      -0.03       0.00       0.00       0.00       0.00       0.00
                           -0.10      -0.24       0.00       0.00      -0.07     797.55      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0       0.21      -0.05       0.00       0.00       0.00     797.55       0.00       0.00       0.00       0.00
                         -483.97      -6.77     393.16     -26.84       0.03      -0.00      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0      -6.72     486.68      26.91     393.15       0.00      -0.00       0.00       0.00       0.00       0.00
                          -51.34      -0.67       0.03      -0.00    -394.07      -0.14      -0.00      -0.00      -0.00      -0.00

   46  10.1  0.0  0.0    -386.29      -5.39    -519.59      35.49      -0.05       0.00       0.00       0.00       0.00       0.00
                           -0.24       0.28      -0.02       0.00       0.01      -0.00      -0.00      -0.00      -0.00      -0.00

   47  11.1  0.0  0.0       0.03      -0.43       0.02      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          386.29       5.41    -519.59      35.48      -0.04       0.00      -0.00      -0.00      -0.00      -0.00

   48  12.1  0.0  0.0      -5.42     388.46      35.49     519.59       0.01      -0.00       0.00       0.00       0.00       0.00
                           40.98       0.53      -0.04       0.00     520.80       0.00      -0.00      -0.00      -0.00      -0.00

   49  13.1  0.0  0.0      58.33       0.77       0.04       0.01    -422.48      -0.00       0.00       0.00       0.00       0.00
                          -10.47     749.14     -10.85    -159.00       0.01      -0.00      -0.00      -0.00      -0.00      -0.00

   50  14.1  0.0  0.0     -57.58      -0.75       0.04      -0.00    -427.96       0.00       0.00       0.00       0.00       0.00
                           -2.88     205.90      39.50     578.51       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  15.1  0.0  0.0       0.00       0.00       0.07      -0.00    -870.78      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01     -59.31    -868.76      -0.00       0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.0  1.0      15.67      26.49      30.27       0.00     217.86     -29.98       0.00    -216.03      -3.66      -3.71
                          874.05   -1268.29       0.00     -30.23       4.55      -0.00     -29.98       4.51      66.11    -240.53

    2   2.1  1.0  1.0     -50.81    -111.20    -217.03       0.00      30.55     215.21      -0.01     -30.26      15.37      15.56
                          121.94    -177.62      -0.00     217.04     -19.10       0.01     215.21     -18.94       9.26     -33.69

    3   3.1  1.0  1.0    -611.36   -1275.60      19.55      -0.00       1.86     -19.38       0.00      -1.85     176.26     178.55
                           10.83     -10.86      -0.04     -19.55    -219.12      -0.01     -19.38    -217.28       0.56      -2.06

    4   4.1  1.0  1.0      -0.43       0.00       0.05     186.56      -0.24       0.02    -732.94      -0.19      -0.01       0.02
                           -0.28       0.00    -552.41       0.05       0.11     143.11      -0.05      -0.01      -0.36      -0.10

    5   5.1  1.0  1.0      -0.26       0.00      -0.16    -530.16      -0.13      -0.13    -257.91      -0.11       0.17      -0.17
                           -1.24       0.00     103.52      -0.16      -0.17     763.70       0.10       0.10      -0.21      -0.06

    6   6.1  1.0  1.0     347.02       0.00     -51.35      -0.15      -0.04     -40.98      -0.06      -0.03    -549.85     542.83
                           -0.98      -0.00       0.12     -51.35     484.01       0.20      40.99    -386.33      -0.08      -0.02

    7   7.1  1.0  1.0     -36.20      -0.00    -483.97       0.21      -6.72    -386.29       0.03      -5.42      58.33     -57.58
                           -1.13       0.00      -0.10    -483.97     -51.34      -0.24     386.29      40.98     -10.47      -2.88

    8   8.1  1.0  1.0       0.52       0.00      -6.69      -0.05     486.68      -5.39      -0.43     388.46       0.77      -0.75
                          104.45      -0.00      -0.24      -6.77      -0.67       0.28       5.41       0.53     749.14     205.90

    9   9.1  1.0  1.0      -0.48      -0.02    -393.15       0.00      26.91    -519.59       0.02      35.49       0.04       0.04
                          -12.33      14.61       0.00     393.16       0.03      -0.02    -519.59      -0.04     -10.85      39.50

   10  10.1  1.0  1.0      -0.65       0.00      26.91       0.00     393.15      35.49      -0.00     519.59       0.01      -0.00
                         -182.94     213.93       0.00     -26.84      -0.00       0.00      35.48       0.00    -159.00     578.51

   11  11.1  1.0  1.0     127.49     214.43      -0.03       0.00       0.00      -0.05      -0.00       0.01    -422.48    -427.96
                           -0.68       0.00      -0.07       0.03    -394.07       0.01      -0.04     520.80       0.01       0.00

   12  12.1  1.0  1.0       0.00       0.00       0.00     797.55      -0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00     797.55      -0.00      -0.14      -0.00       0.00       0.00      -0.00      -0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           51.13     248.86      -6.44    -308.11       0.00      -6.37     305.52      -0.00      47.36     -12.37

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -375.09   -1786.78      27.01     -43.15      -0.00      26.79      42.79       0.00    -340.05      88.78

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           36.66     160.93     309.89      -2.64      -0.05     307.28       2.61      -0.01      30.63      -8.00

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.21      -0.00       0.10      -0.33     517.40      -0.03      -0.27    -834.14      -0.04      -0.12

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.04       0.00      -0.11      -0.19     603.36       0.19      -0.15     715.30       0.10       0.34

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           68.51      -0.00     684.50      -0.06       0.05    -546.35      -0.03       0.22      29.28     112.17

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          637.40      -0.00     -72.61      -9.62      -0.15      57.96      -7.67      -0.35     276.00    1057.16

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.24      -0.00      -0.95     688.27       0.41       0.78     549.36      -0.21       3.86      14.79

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           78.84     302.55      -0.05     -37.96       0.00       0.06     -50.17      -0.01     820.98    -214.34

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.16     -20.66       0.00    -556.00      -0.00      -0.03    -734.81       0.00     -56.05      14.64

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.59       0.03     557.30      -0.00      -0.10    -736.52       0.02       0.02       0.07      -0.01

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.20       0.00    1127.91      -0.00       0.00       0.00      -0.00      -0.00

   25   1.1  1.0 -1.0      15.67      26.49      30.27       0.00     217.86     -29.98       0.00    -216.03      -3.66      -3.71
                         -874.05    1268.29      -0.00      30.23      -4.55       0.00      29.98      -4.51     -66.11     240.53

   26   2.1  1.0 -1.0     -50.81    -111.20    -217.03       0.00      30.55     215.21      -0.01     -30.26      15.37      15.56
                         -121.94     177.62       0.00    -217.04      19.10      -0.01    -215.21      18.94      -9.26      33.69

   27   3.1  1.0 -1.0    -611.36   -1275.60      19.55      -0.00       1.86     -19.38       0.00      -1.85     176.26     178.55
                          -10.83      10.86       0.04      19.55     219.12       0.01      19.38     217.28      -0.56       2.06

   28   4.1  1.0 -1.0      -0.43       0.00       0.05     186.56      -0.24       0.02    -732.94      -0.19      -0.01       0.02
                            0.28      -0.00     552.41      -0.05      -0.11    -143.11       0.05       0.01       0.36       0.10

   29   5.1  1.0 -1.0      -0.26       0.00      -0.16    -530.16      -0.13      -0.13    -257.91      -0.11       0.17      -0.17
                            1.24      -0.00    -103.52       0.16       0.17    -763.70      -0.10      -0.10       0.21       0.06

   30   6.1  1.0 -1.0     347.02       0.00     -51.35      -0.15      -0.04     -40.98      -0.06      -0.03    -549.85     542.83
                            0.98       0.00      -0.12      51.35    -484.01      -0.20     -40.99     386.33       0.08       0.02

   31   7.1  1.0 -1.0     -36.20      -0.00    -483.97       0.21      -6.72    -386.29       0.03      -5.42      58.33     -57.58
                            1.13      -0.00       0.10     483.97      51.34       0.24    -386.29     -40.98      10.47       2.88

   32   8.1  1.0 -1.0       0.52       0.00      -6.69      -0.05     486.68      -5.39      -0.43     388.46       0.77      -0.75
                         -104.45       0.00       0.24       6.77       0.67      -0.28      -5.41      -0.53    -749.14    -205.90

   33   9.1  1.0 -1.0      -0.48      -0.02    -393.15       0.00      26.91    -519.59       0.02      35.49       0.04       0.04
                           12.33     -14.61      -0.00    -393.16      -0.03       0.02     519.59       0.04      10.85     -39.50

   34  10.1  1.0 -1.0      -0.65       0.00      26.91       0.00     393.15      35.49      -0.00     519.59       0.01      -0.00
                          182.94    -213.93      -0.00      26.84       0.00      -0.00     -35.48      -0.00     159.00    -578.51

   35  11.1  1.0 -1.0     127.49     214.43      -0.03       0.00       0.00      -0.05      -0.00       0.01    -422.48    -427.96
                            0.68      -0.00       0.07      -0.03     394.07      -0.01       0.04    -520.80      -0.01      -0.00

   36  12.1  1.0 -1.0       0.00       0.00       0.00     797.55      -0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00    -797.55       0.00       0.14       0.00      -0.00      -0.00       0.00       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5737.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   14260.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   41746.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   41746.28       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   41746.28       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   45259.95       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   45259.97       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   45260.01       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   45260.16       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   45260.24
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51

    1   1.1  1.0  1.0      -9.14
                          437.29

    2   2.1  1.0  1.0      38.34
                           61.24

    3   3.1  1.0  1.0     439.81
                            3.74

    4   4.1  1.0  1.0      -0.00
                           -0.00

    5   5.1  1.0  1.0      -0.00
                           -0.00

    6   6.1  1.0  1.0      -0.01
                            0.00

    7   7.1  1.0  1.0       0.00
                           -0.00

    8   8.1  1.0  1.0       0.00
                            0.01

    9   9.1  1.0  1.0       0.07
                          -59.31

   10  10.1  1.0  1.0      -0.00
                         -868.76

   11  11.1  1.0  1.0    -870.78
                           -0.00

   12  12.1  1.0  1.0      -0.00
                            0.00

   13   1.1  1.0  0.0       0.00
                          -85.80

   14   2.1  1.0  0.0       0.00
                          616.06

   15   3.1  1.0  0.0       0.00
                          -55.49

   16   4.1  1.0  0.0       0.00
                            0.00

   17   5.1  1.0  0.0       0.00
                           -0.00

   18   6.1  1.0  0.0       0.00
                           -0.00

   19   7.1  1.0  0.0       0.00
                           -0.01

   20   8.1  1.0  0.0       0.00
                           -0.00

   21   9.1  1.0  0.0       0.00
                        -1228.60

   22  10.1  1.0  0.0       0.00
                           83.88

   23  11.1  1.0  0.0       0.00
                           -0.10

   24  12.1  1.0  0.0       0.00
                            0.00

   25   1.1  1.0 -1.0      -9.14
                         -437.29

   26   2.1  1.0 -1.0      38.34
                          -61.24

   27   3.1  1.0 -1.0     439.81
                           -3.74

   28   4.1  1.0 -1.0      -0.00
                            0.00

   29   5.1  1.0 -1.0      -0.00
                            0.00

   30   6.1  1.0 -1.0      -0.01
                           -0.00

   31   7.1  1.0 -1.0       0.00
                            0.00

   32   8.1  1.0 -1.0       0.00
                           -0.01

   33   9.1  1.0 -1.0       0.07
                           59.31

   34  10.1  1.0 -1.0      -0.00
                          868.76

   35  11.1  1.0 -1.0    -870.78
                            0.00

   36  12.1  1.0 -1.0      -0.00
                           -0.00

   37   1.1  0.0  0.0       0.00
                            0.00

   38   2.1  0.0  0.0       0.00
                            0.00

   39   3.1  0.0  0.0       0.00
                            0.00

   40   4.1  0.0  0.0       0.00
                            0.00

   41   5.1  0.0  0.0       0.00
                            0.00

   42   6.1  0.0  0.0       0.00
                            0.00

   43   7.1  0.0  0.0       0.00
                            0.00

   44   8.1  0.0  0.0       0.00
                            0.00

   45   9.1  0.0  0.0       0.00
                            0.00

   46  10.1  0.0  0.0       0.00
                            0.00

   47  11.1  0.0  0.0       0.00
                            0.00

   48  12.1  0.0  0.0       0.00
                            0.00

   49  13.1  0.0  0.0       0.00
                            0.00

   50  14.1  0.0  0.0       0.00
                            0.00

   51  15.1  0.0  0.0   47953.31
                            0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 51)

    The diagonal matrixelements are shifted by   -214.07374125 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.012       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.004       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42762.300       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42762.306       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42762.327       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42762.330       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42762.333
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000      -9.530     155.886    -347.110      65.063     -41.502      10.769      -0.004

    2    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                                9.530       0.000   -1113.094     -48.603       9.005     300.142     -58.810      -0.816

    3    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                             -155.886    1113.094       0.000      -2.939       0.467     -59.739    -302.958      -4.243

    4    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                              347.110      48.603       2.939       0.000      -0.588       0.100       3.557    -254.043

    5    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                              -65.063      -9.005      -0.467       0.588       0.000      -0.118      18.761   -1355.645

    6    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               41.502    -300.142      59.739      -0.100       0.118       0.000     689.625       9.265

    7    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                              -10.769      58.810     302.958      -3.557     -18.761    -689.625       0.000       0.386

    8    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.004       0.816       4.243     254.043    1355.645      -9.265      -0.386       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -5.510      23.134     265.118     -43.273       7.935     555.505     -58.888      -0.791

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.376      -1.579     -18.100    -633.998     118.821     -37.886       3.911      -0.224

   11    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                               36.658    -263.204      23.729       0.061      -0.180     -59.023    -556.741      -7.790

   12    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -496.058     -69.472      -4.247       0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -99.872   -1108.847      31.887      37.290    -304.119      32.163       6.837

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               99.872       0.000    -154.436    -228.997    -267.037     -42.663       4.964     -26.936

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1108.847     154.436      -0.000      20.776      24.139      -2.569       4.570    -307.548

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -31.887     228.997     -20.776       0.000      -0.237    -110.800   -1041.121     -14.580

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -37.290     267.037     -24.139       0.237      -0.000      94.540     892.835      12.710

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              304.119      42.663       2.569     110.800     -94.540      -0.000       9.898    -685.738

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -32.163      -4.964      -4.570    1041.121    -892.835      -9.898       0.000      73.021

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.837      26.936     307.548      14.580     -12.710     685.738     -73.021      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.354       1.581      18.100    -419.890    -489.641     -38.058       4.153      -0.236

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.508      23.112     265.120      28.655      33.605    -555.488      58.919       0.793

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -264.214     -37.002      -2.262       0.236       0.112       0.051       7.828    -559.860

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -68.826     494.166     -44.509      -0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>             158.796   -1092.336      96.870       1.913       0.552     -33.865    -334.026      -2.678
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -3.210      -4.094      -3.228    -633.407    -222.884      -2.712      -0.698      -1.522
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>            -118.979    -101.907    -930.473       3.177       1.268    -449.061      47.770     -41.750
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>            1090.007     148.786    -105.844      -1.943      -0.698     -59.049       3.560     333.128
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              22.164     -71.858    -864.594      -0.605      -0.372     490.757     -51.200       0.739
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              37.469    -157.262   -1803.966       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              42.803    -306.927      27.646       0.076      -0.221     -72.619    -684.434      -9.456
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000      -0.000     263.833    -749.762      -0.212       0.295      -0.073
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>             308.103      43.204       2.633      -0.334      -0.189      -0.051      -9.503     688.274
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>             -42.398     304.355     -27.411       0.027      -0.188     -57.958    -546.296      -7.628
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.002      -0.010       0.003   -1036.530    -364.741      -0.085       0.038      -0.603
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>            -305.519     -42.796      -2.619      -0.267      -0.151      -0.038      -7.666     549.364
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>              -5.182      21.730     249.273      -0.015       0.246    -777.604      82.489       1.090
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |0 0>              -5.245      22.011     252.509       0.025      -0.240     767.678     -81.432      -1.067
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |0 0>             -12.919      54.222     621.985      -0.000      -0.000      -0.014       0.001       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -9.530     155.886    -347.110

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       9.530       0.000   -1113.094     -48.603

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000    -155.886    1113.094       0.000      -2.939

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000     347.110      48.603       2.939       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     -65.063      -9.005      -0.467       0.588

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      41.502    -300.142      59.739      -0.100

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000     -10.769      58.810     302.958      -3.557

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.004       0.816       4.243     254.043

    9    1  |1 1>+          43639.836       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -5.510      23.134     265.118     -43.273

   10    1  |1 1>+              0.000   43639.838       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.376      -1.579     -18.100    -633.998

   11    1  |1 1>+              0.000       0.000   43639.836       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      36.658    -263.204      23.729       0.061

   12    1  |1 1>+              0.000       0.000       0.000   44225.874       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000    -496.058     -69.472      -4.247       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.012       0.000       0.000       0.000
                                5.510      -0.376     -36.658     496.058       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.004       0.000       0.000
                              -23.134       1.579     263.204      69.472      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -265.118      18.100     -23.729       4.247      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000   42762.300
                               43.273     633.998      -0.061      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -7.935    -118.821       0.180       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -555.505      37.886      59.023       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               58.888      -3.911     556.741      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.791       0.224       7.790       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -723.954      62.677      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      49.425     918.065      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              723.954     -49.425       0.000       0.001      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              -62.677    -918.065      -0.001       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   -1119.509      97.594      -2.395
                                0.354       5.508     264.214      68.826      -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000    1119.509       0.000      23.253      10.135
                               -1.581     -23.112      37.002    -494.166      -0.000       0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     -97.594     -23.253       0.000     117.911
                              -18.100    -265.120       2.262      44.509      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       2.395     -10.135    -117.911       0.000
                              419.890     -28.655      -0.236       0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -6.873      29.305     335.042       0.419
                              489.641     -33.605      -0.112      -0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000      32.259       4.555       0.368   -1293.944
                               38.058     555.488      -0.051      -0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000     303.508      46.836       2.088     136.925
                               -4.153     -58.919      -7.828      -0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      46.683    -304.040      27.508       1.871
                                0.236      -0.793     559.860      -0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000    -266.096     -18.989      -3.872      -0.285
                                0.000      -0.061     -49.425    -918.065      -0.000       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000     -18.577     265.115     -23.497       0.081
                                0.061      -0.000    -723.953      62.677       0.000      -0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000      -0.022      -0.003      -0.000     214.606
                               49.425     723.953       0.000      -0.077      -0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      10.363     -43.493    -498.918      -0.000
                              918.065     -62.677       0.077      -0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>             229.577     -17.044       0.362       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -26.415      97.486    1103.434       3.034

    2    1  |0 0>               0.740       0.735       0.728      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1098.049     148.061      13.224      -1.573

    3    1  |0 0>               2.275      28.967     193.865       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     160.971   -1196.001     109.121     -64.312

    4    1  |0 0>             -16.887    -227.741      23.902      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      24.625    -153.830       7.477     505.649

    5    1  |0 0>              -0.680      -0.922     180.298       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -51.132     375.089     -36.660       2.211

    6    1  |0 0>              -0.025       0.002     303.253       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -248.857    1786.785    -160.933       0.000

    7    1  |0 0>            -556.004      38.056      -0.047       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       6.437     -27.015    -309.887      -0.104

    8    1  |0 0>               0.000       0.000       0.000    1127.905       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     308.112      43.150       2.638       0.334

    9    1  |0 0>              38.056     556.002       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.001       0.005       0.054    -517.400

   10    1  |0 0>            -734.806      50.187      -0.066       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       6.373     -26.789    -307.283       0.034

   11    1  |0 0>               0.024      -0.002      -0.006       0.006       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -305.519     -42.787      -2.606       0.266

   12    1  |0 0>              50.187     734.808       0.010      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.004       0.009     834.137

   13    1  |0 0>               0.052       0.008    -597.477      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -47.361     340.049     -30.627       0.043

   14    1  |0 0>               0.056      -0.003    -605.226       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      12.368     -88.782       7.998       0.118

   15    1  |0 0>               0.103      -0.006   -1231.467      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      85.802    -616.057      55.487      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               65.063     -41.502      10.769      -0.004       5.510      -0.376     -36.658     496.058

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                9.005     300.142     -58.810      -0.816     -23.134       1.579     263.204      69.472

    3    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.467     -59.739    -302.958      -4.243    -265.118      18.100     -23.729       4.247

    4    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.588       0.100       3.557    -254.043      43.273     633.998      -0.061      -0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.118      18.761   -1355.645      -7.935    -118.821       0.180       0.000

    6    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.118       0.000     689.625       9.265    -555.505      37.886      59.023       0.000

    7    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                              -18.761    -689.625       0.000       0.386      58.888      -3.911     556.741      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                             1355.645      -9.265      -0.386       0.000       0.791       0.224       7.790       0.000

    9    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                7.935     555.505     -58.888      -0.791       0.000       0.000    -723.954      62.677

   10    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                              118.821     -37.886       3.911      -0.224      -0.000       0.000      49.425     918.065

   11    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.180     -59.023    -556.741      -7.790     723.954     -49.425       0.000       0.001

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000     -62.677    -918.065      -0.001       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           42762.306       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   42762.327       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   42762.330       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   42762.333       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   43639.836       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   43639.838       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   43639.836       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   44225.874
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              6.873     -32.259    -303.508     -46.683     266.096      18.577       0.022     -10.363
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 1>-            -29.305      -4.555     -46.836     304.040      18.989    -265.115       0.003      43.493
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 1>-           -335.042      -0.368      -2.088     -27.508       3.872      23.497       0.000     498.918
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    4    1  |1 1>-             -0.419    1293.944    -136.925      -1.871       0.285      -0.081    -214.606       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000     455.323     -48.114      -0.409       0.114       0.172     609.878       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 1>-           -455.323       0.000      -0.940      72.002       4.075      58.929       0.172      -0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-             48.114       0.940       0.000     685.918      45.730     554.910      -0.239       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    8    1  |1 1>-              0.409     -72.002    -685.918       0.000    -558.030      45.905       0.013       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-             -0.114      -4.075     -45.730     558.030       0.000     725.639      -0.004      -0.077
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 1>-             -0.172     -58.929    -554.910     -45.905    -725.639       0.000      -0.061       0.005
                                0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   11    1  |1 1>-           -609.878      -0.172       0.239      -0.013       0.004       0.061       0.000     920.202
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-             -0.000       0.000      -0.000      -0.000       0.077      -0.005    -920.202       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.703     333.704     -36.951       0.510      -0.298       0.704    -230.206       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.580       0.996       4.278    -335.714     -14.440    -229.757      -0.688       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               55.103     -20.454    -197.311      -1.099     251.228     -15.998      -0.292      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -433.611      -4.434     -21.959      -1.125      32.250      -2.850       1.336       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.041     -68.509    -637.398      -9.243     -78.845       5.159       0.593       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000    -302.549      20.655      -0.026       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.111    -684.498      72.612       0.952       0.047      -0.003    -557.302      -0.197

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.189       0.064       9.623    -688.270      37.959     556.005       0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -603.363      -0.045       0.148      -0.414      -0.000       0.000       0.097   -1127.905

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.194     546.348     -57.964      -0.778      -0.060       0.027     736.519       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.151       0.032       7.673    -549.365      50.168     734.810      -0.023      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -715.295      -0.221       0.349       0.213       0.012      -0.000      -0.021      -0.002

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.100     -29.284    -275.997      -3.862    -820.975      56.048      -0.070       0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.342    -112.169   -1057.162     -14.786     214.342     -14.640       0.013       0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.001       0.007       0.000    1228.597     -83.877       0.104      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -99.872   -1108.847      31.887      37.290    -304.119      32.163       6.837

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               99.872       0.000    -154.436    -228.997    -267.037     -42.663       4.964     -26.936

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1108.847     154.436      -0.000      20.776      24.139      -2.569       4.570    -307.548

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -31.887     228.997     -20.776       0.000      -0.237    -110.800   -1041.121     -14.580

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -37.290     267.037     -24.139       0.237      -0.000      94.540     892.835      12.710

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              304.119      42.663       2.569     110.800     -94.540      -0.000       9.898    -685.738

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -32.163      -4.964      -4.570    1041.121    -892.835      -9.898       0.000      73.021

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.837      26.936     307.548      14.580     -12.710     685.738     -73.021      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.354       1.581      18.100    -419.890    -489.641     -38.058       4.153      -0.236

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.508      23.112     265.120      28.655      33.605    -555.488      58.919       0.793

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -264.214     -37.002      -2.262       0.236       0.112       0.051       7.828    -559.860

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -68.826     494.166     -44.509      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000    1119.509     -97.594       2.395      -6.873      32.259     303.508      46.683
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>           -1119.509       0.000     -23.253     -10.135      29.305       4.555      46.836    -304.040
                                0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 0>              97.594      23.253       0.000    -117.911     335.042       0.368       2.088      27.508
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 0>              -2.395      10.135     117.911       0.000       0.419   -1293.944     136.925       1.871
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 0>               6.873     -29.305    -335.042      -0.419       0.000    -455.323      48.114       0.409
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 0>             -32.259      -4.555      -0.368    1293.944     455.323       0.000       0.940     -72.002
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>            -303.508     -46.836      -2.088    -136.925     -48.114      -0.940       0.000    -685.918
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>             -46.683     304.040     -27.508      -1.871      -0.409      72.002     685.918       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    9    1  |1 0>             266.096      18.989       3.872       0.285       0.114       4.075      45.730    -558.030
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              18.577    -265.115      23.497      -0.081       0.172      58.929     554.910      45.905
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.022       0.003       0.000    -214.606     609.878       0.172      -0.239       0.013
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

   12    1  |1 0>             -10.363      43.493     498.918       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.012       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.004       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   42762.300       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   42762.306       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42762.327       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   42762.330       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42762.333
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
                               -2.784      -4.282      -6.293    -123.679    -659.987       1.905       1.000      -0.194

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -149.870    1093.783     -94.675      -0.331      -2.079     -36.557    -333.674      -7.544

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              273.715      45.311     142.143       0.146      -0.707     -41.901      15.224    -649.730

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               62.667     -86.714   -1094.717       0.763       3.741     331.103     -34.926     -82.533

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1236.099    -172.450     -15.312       0.394       1.760       1.382       1.592    -147.709

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1793.626     251.193      15.357      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.005       0.054     781.228    -146.401      -0.166       0.147       0.341

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               42.749    -306.934      27.645      -0.076       0.221      72.619     684.434       9.576

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.437      27.015     309.887      -0.150       0.243    -684.500      72.612       0.952

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003      -0.009       0.010    -202.395   -1080.030      -0.287       0.344      -0.392

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               42.393    -304.357      27.413       0.067      -0.142     -57.962    -546.293      -7.646

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.381      26.787     307.283       0.016      -0.142     546.349     -57.958      -0.743

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -93.490     -13.093      -0.796       0.514       0.292       0.106      14.812   -1059.438

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              340.166      47.642       2.913       0.143       0.087       0.028       4.076    -291.186

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -618.423     -86.609      -5.295       0.000       0.000      -0.000       0.000      -0.007

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000     158.796      -3.210    -118.979    1090.007
                                0.354       5.508     264.214      68.826       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000   -1092.336      -4.094    -101.907     148.786
                               -1.581     -23.112      37.002    -494.166       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      96.870      -3.228    -930.473    -105.844
                              -18.100    -265.120       2.262      44.509       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       1.913    -633.407       3.177      -1.943
                              419.890     -28.655      -0.236       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.552    -222.884       1.268      -0.698
                              489.641     -33.605      -0.112      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000     -33.865      -2.712    -449.061     -59.049
                               38.058     555.488      -0.051      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000    -334.026      -0.698      47.770       3.560
                               -4.153     -58.919      -7.828      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -2.678      -1.522     -41.750     333.128
                                0.236      -0.793     559.860      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000     229.577       0.740       2.275     -16.887
                                0.000      -0.061     -49.425    -918.065       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000     -17.044       0.735      28.967    -227.741
                                0.061      -0.000    -723.953      62.677       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.362       0.728     193.865      23.902
                               49.425     723.953       0.000      -0.077       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                              918.065     -62.677       0.077      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>            -266.096     -18.577      -0.022      10.363       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      26.415   -1098.049    -160.971     -24.625

    2    1  |1 0>             -18.989     265.115      -0.003     -43.493       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     -97.486    -148.061    1196.001     153.830

    3    1  |1 0>              -3.872     -23.497      -0.000    -498.918       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000   -1103.434     -13.224    -109.121      -7.477

    4    1  |1 0>              -0.285       0.081     214.606      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -3.034       1.573      64.312    -505.649

    5    1  |1 0>              -0.114      -0.172    -609.878      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       2.703      -1.580     -55.103     433.611

    6    1  |1 0>              -4.075     -58.929      -0.172       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000    -333.704      -0.996      20.454       4.434

    7    1  |1 0>             -45.730    -554.910       0.239      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      36.951      -4.278     197.311      21.959

    8    1  |1 0>             558.030     -45.905      -0.013      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.510     335.714       1.099       1.125

    9    1  |1 0>               0.000    -725.639       0.004       0.077       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.298      14.440    -251.228     -32.250

   10    1  |1 0>             725.639       0.000       0.061      -0.005       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.704     229.757      15.998       2.850

   11    1  |1 0>              -0.004      -0.061       0.000    -920.202       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000     230.206       0.688       0.292      -1.336

   12    1  |1 0>              -0.077       0.005     920.202       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       2.784     149.870    -273.715     -62.667

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       4.282   -1093.783     -45.311      86.714

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       6.293      94.675    -142.143    1094.717

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     123.679       0.331      -0.146      -0.763

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     659.987       2.079       0.707      -3.741

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.905      36.557      41.901    -331.103

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.000     333.674     -15.224      34.926

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.194       7.544     649.730      82.533

    9    1  |1 1>-          43639.836       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.728     229.707       2.791       1.241

   10    1  |1 1>-              0.000   43639.838       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.659     -15.166      57.815       8.401

   11    1  |1 1>-              0.000       0.000   43639.836       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.367       0.803      29.054    -228.363

   12    1  |1 1>-              0.000       0.000       0.000   44225.874       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5737.456       0.000       0.000       0.000
                                0.728       0.659       1.367      -0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5737.452       0.000       0.000
                             -229.707      15.166      -0.803       0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5737.458       0.000
                               -2.791     -57.815     -29.054       0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5737.463
                               -1.241      -8.401     228.363       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               17.439     258.722       0.967       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -20.655    -302.549      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.097   -1127.905      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -556.013      37.959      -0.047       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.047       0.003     557.304       0.197      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.023      -0.007      -0.021       0.001      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              734.805     -50.173       0.063      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.062      -0.006    -736.519      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.351     224.854      -0.011       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -55.861    -818.134      -0.001       0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               83.878    1228.615       0.001      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |1 1>+             22.164      37.469      42.803       0.000     308.103     -42.398       0.002    -305.519
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+            -71.858    -157.262    -306.927       0.000      43.204     304.355      -0.010     -42.796
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+           -864.594   -1803.966      27.646      -0.000       2.633     -27.411       0.003      -2.619
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.605       0.000       0.076     263.833      -0.334       0.027   -1036.530      -0.267
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.372       0.000      -0.221    -749.762      -0.189      -0.188    -364.741      -0.151
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+            490.757       0.000     -72.619      -0.212      -0.051     -57.958      -0.085      -0.038
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            -51.200      -0.000    -684.434       0.295      -9.503    -546.296       0.038      -7.666
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.739       0.000      -9.456      -0.073     688.274      -7.628      -0.603     549.364
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.680      -0.025    -556.004       0.000      38.056    -734.806       0.024      50.187
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.922       0.002      38.056       0.000     556.002      50.187      -0.002     734.808
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+            180.298     303.253      -0.047       0.000       0.000      -0.066      -0.006       0.010
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000    1127.905      -0.000       0.000       0.006      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               51.132     248.857      -6.437    -308.112       0.001      -6.373     305.519      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -375.089   -1786.785      27.015     -43.150      -0.005      26.789      42.787       0.004

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               36.660     160.933     309.887      -2.638      -0.054     307.283       2.606      -0.009

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.211      -0.000       0.104      -0.334     517.400      -0.034      -0.266    -834.137

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.041       0.000      -0.111      -0.189     603.363       0.194      -0.151     715.295

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               68.509      -0.000     684.498      -0.064       0.045    -546.348      -0.032       0.221

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              637.398      -0.000     -72.612      -9.623      -0.148      57.964      -7.673      -0.349

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                9.243      -0.000      -0.952     688.270       0.414       0.778     549.365      -0.213

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               78.845     302.549      -0.047     -37.959       0.000       0.060     -50.168      -0.012

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.159     -20.655       0.003    -556.005      -0.000      -0.027    -734.810       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.593       0.026     557.302      -0.000      -0.097    -736.519       0.023       0.021

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.197       0.000    1127.905      -0.000       0.000       0.002

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1236.099   -1793.626       0.001     -42.749       6.437      -0.003     -42.393       6.381

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              172.450    -251.193      -0.005     306.934     -27.015       0.009     304.357     -26.787

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.312     -15.357      -0.054     -27.645    -309.887      -0.010     -27.413    -307.283

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.394       0.000    -781.228       0.076       0.150     202.395      -0.067      -0.016

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.760       0.000     146.401      -0.221      -0.243    1080.030       0.142       0.142

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.382      -0.000       0.166     -72.619     684.500       0.287      57.962    -546.349

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.592       0.000      -0.147    -684.434     -72.612      -0.344     546.293      57.958

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              147.709      -0.000      -0.341      -9.576      -0.952       0.392       7.646       0.743

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -17.439      20.655       0.000     556.013       0.047      -0.023    -734.805      -0.062

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -258.722     302.549       0.000     -37.959      -0.003       0.007      50.173       0.006

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.967       0.000      -0.097       0.047    -557.304       0.021      -0.063     736.519

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    1127.905      -0.000      -0.197      -0.001       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5737.461       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   14260.286       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   41746.269       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   41746.279       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   41746.283       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000   45259.948       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   45259.965       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   45260.006
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       49          50          51

    1    1  |1 1>+             -5.182      -5.245     -12.919
                                0.000       0.000       0.000

    2    1  |1 1>+             21.730      22.011      54.222
                                0.000       0.000       0.000

    3    1  |1 1>+            249.273     252.509     621.985
                                0.000       0.000       0.000

    4    1  |1 1>+             -0.015       0.025      -0.000
                                0.000       0.000       0.000

    5    1  |1 1>+              0.246      -0.240      -0.000
                                0.000       0.000       0.000

    6    1  |1 1>+           -777.604     767.678      -0.014
                                0.000       0.000       0.000

    7    1  |1 1>+             82.489     -81.432       0.001
                                0.000       0.000       0.000

    8    1  |1 1>+              1.090      -1.067       0.000
                                0.000       0.000       0.000

    9    1  |1 1>+              0.052       0.056       0.103
                                0.000       0.000       0.000

   10    1  |1 1>+              0.008      -0.003      -0.006
                                0.000       0.000       0.000

   11    1  |1 1>+           -597.477    -605.226   -1231.467
                                0.000       0.000       0.000

   12    1  |1 1>+             -0.000       0.000      -0.000
                                0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000
                               47.361     -12.368     -85.802

    2    1  |1 0>               0.000       0.000       0.000
                             -340.049      88.782     616.057

    3    1  |1 0>               0.000       0.000       0.000
                               30.627      -7.998     -55.487

    4    1  |1 0>               0.000       0.000       0.000
                               -0.043      -0.118       0.000

    5    1  |1 0>               0.000       0.000       0.000
                                0.100       0.342      -0.000

    6    1  |1 0>               0.000       0.000       0.000
                               29.284     112.169      -0.001

    7    1  |1 0>               0.000       0.000       0.000
                              275.997    1057.162      -0.007

    8    1  |1 0>               0.000       0.000       0.000
                                3.862      14.786      -0.000

    9    1  |1 0>               0.000       0.000       0.000
                              820.975    -214.342   -1228.597

   10    1  |1 0>               0.000       0.000       0.000
                              -56.048      14.640      83.877

   11    1  |1 0>               0.000       0.000       0.000
                                0.070      -0.013      -0.104

   12    1  |1 0>               0.000       0.000       0.000
                               -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000
                               93.490    -340.166     618.423

    2    1  |1 1>-              0.000       0.000       0.000
                               13.093     -47.642      86.609

    3    1  |1 1>-              0.000       0.000       0.000
                                0.796      -2.913       5.295

    4    1  |1 1>-              0.000       0.000       0.000
                               -0.514      -0.143      -0.000

    5    1  |1 1>-              0.000       0.000       0.000
                               -0.292      -0.087      -0.000

    6    1  |1 1>-              0.000       0.000       0.000
                               -0.106      -0.028       0.000

    7    1  |1 1>-              0.000       0.000       0.000
                              -14.812      -4.076      -0.000

    8    1  |1 1>-              0.000       0.000       0.000
                             1059.438     291.186       0.007

    9    1  |1 1>-              0.000       0.000       0.000
                              -15.351      55.861     -83.878

   10    1  |1 1>-              0.000       0.000       0.000
                             -224.854     818.134   -1228.615

   11    1  |1 1>-              0.000       0.000       0.000
                                0.011       0.001      -0.001

   12    1  |1 1>-              0.000       0.000       0.000
                               -0.000      -0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   13    1  |0 0>           45260.159       0.000       0.000
                                0.000       0.000       0.000

   14    1  |0 0>               0.000   45260.238       0.000
                               -0.000       0.000       0.000

   15    1  |0 0>               0.000       0.000   47953.309
                               -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.08675470    -0.01301345    -2856.12      0.00000000        0.00      0.0000
    2  -214.07895693    -0.00521568    -1144.71      0.00779777     1711.41      0.2122
    3  -214.07895690    -0.00521565    -1144.70      0.00779780     1711.42      0.2122
    4  -214.07895689    -0.00521564    -1144.70      0.00779780     1711.42      0.2122
    5  -214.07089694     0.00284431      624.25      0.01585776     3480.38      0.4315
    6  -214.07089691     0.00284434      624.26      0.01585778     3480.38      0.4315
    7  -214.07089685     0.00284440      624.27      0.01585785     3480.40      0.4315
    8  -214.07089683     0.00284442      624.28      0.01585786     3480.40      0.4315
    9  -214.07089683     0.00284442      624.28      0.01585787     3480.40      0.4315
   10  -214.04547272     0.02826853     6204.23      0.04128198     9060.35      1.1233
   11  -214.04547270     0.02826855     6204.23      0.04128199     9060.35      1.1233
   12  -214.04547268     0.02826858     6204.24      0.04128202     9060.36      1.1233
   13  -214.04547261     0.02826864     6204.25      0.04128209     9060.37      1.1233
   14  -214.04547259     0.02826866     6204.25      0.04128211     9060.38      1.1233
   15  -214.00617503     0.06756622    14829.07      0.08057967    17685.19      2.1927
   16  -213.89258133     0.18115993    39760.01      0.19417337    42616.13      5.2837
   17  -213.89258130     0.18115995    39760.01      0.19417340    42616.13      5.2837
   18  -213.89258130     0.18115995    39760.01      0.19417340    42616.14      5.2837
   19  -213.88711803     0.18662322    40959.06      0.19963666    43815.18      5.4324
   20  -213.88711802     0.18662323    40959.06      0.19963668    43815.19      5.4324
   21  -213.88711801     0.18662324    40959.07      0.19963669    43815.19      5.4324
   22  -213.88651987     0.18722138    41090.34      0.20023482    43946.46      5.4487
   23  -213.88651987     0.18722138    41090.34      0.20023483    43946.46      5.4487
   24  -213.88651985     0.18722140    41090.35      0.20023484    43946.47      5.4487
   25  -213.88651968     0.18722157    41090.38      0.20023502    43946.51      5.4487
   26  -213.88651965     0.18722160    41090.39      0.20023504    43946.51      5.4487
   27  -213.88461414     0.18912711    41508.60      0.20214056    44364.72      5.5005
   28  -213.87446001     0.19928124    43737.18      0.21229469    46593.30      5.7768
   29  -213.87445999     0.19928127    43737.18      0.21229471    46593.30      5.7768
   30  -213.87445998     0.19928127    43737.18      0.21229472    46593.31      5.7768
   31  -213.87261693     0.20112433    44141.69      0.21413777    46997.81      5.8270
   32  -213.87261692     0.20112433    44141.69      0.21413778    46997.81      5.8270
   33  -213.87261691     0.20112434    44141.69      0.21413779    46997.81      5.8270
   34  -213.87261689     0.20112437    44141.70      0.21413781    46997.82      5.8270
   35  -213.87261688     0.20112437    44141.70      0.21413781    46997.82      5.8270
   36  -213.87261688     0.20112437    44141.70      0.21413782    46997.82      5.8270
   37  -213.87261685     0.20112440    44141.70      0.21413785    46997.82      5.8270
   38  -213.87066761     0.20307364    44569.51      0.21608709    47425.63      5.8800
   39  -213.87066760     0.20307365    44569.51      0.21608710    47425.64      5.8800
   40  -213.87066759     0.20307366    44569.52      0.21608711    47425.64      5.8800
   41  -213.87066750     0.20307375    44569.54      0.21608720    47425.66      5.8800
   42  -213.87066747     0.20307378    44569.54      0.21608722    47425.66      5.8800
   43  -213.86804977     0.20569148    45144.06      0.21870492    48000.18      5.9513
   44  -213.86804977     0.20569148    45144.06      0.21870493    48000.18      5.9513
   45  -213.86804977     0.20569148    45144.06      0.21870493    48000.18      5.9513
   46  -213.86382567     0.20991558    46071.15      0.22292903    48927.27      6.0662
   47  -213.86382560     0.20991565    46071.16      0.22292910    48927.28      6.0662
   48  -213.86382545     0.20991580    46071.19      0.22292925    48927.31      6.0662
   49  -213.86382491     0.20991634    46071.31      0.22292978    48927.43      6.0662
   50  -213.86382462     0.20991663    46071.37      0.22293007    48927.50      6.0662
   51  -213.85197250     0.22176875    48672.61      0.23478220    51528.74      6.3887

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.01174333 -0.02363066 -0.70194524 -0.07915255 -0.01132365  0.00734776  0.01994852  0.66902905
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.04928774  0.70373520 -0.02332930 -0.01454836  0.06422210 -0.00820236  0.67282116 -0.01784289
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.56538575 -0.06183942 -0.01254613 -0.00037579  0.75016681 -0.20187362 -0.05392223  0.00877453
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00003140  0.00021340 -0.00190386 -0.00034899  0.00012075  0.00020469 -0.00185851
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00009006 -0.00061462  0.00540966 -0.00012404  0.00003795  0.00007457 -0.00065512
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000002 -0.00052437 -0.00005624  0.00000405  0.00378327  0.01412015  0.00057190 -0.00020780
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00493568 -0.00059297  0.00001413 -0.00042101 -0.00140192  0.00720392 -0.00128477
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00059008  0.00493138  0.00056940  0.00003836  0.00002993  0.00132585  0.00716179
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000072 -0.00371351 -0.00014089  0.00004685 -0.00000610  0.00003652  0.00268669 -0.00026025
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000004 -0.00013469  0.00369016  0.00042049  0.00001666  0.00001525  0.00026790  0.00266345
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00852982 -0.00000031 -0.00000003  0.00000000  0.00301077 -0.00080742  0.00001742 -0.00002663
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.00026412 -0.00176948  0.01561339 -0.00000000 -0.00000001  0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.07799463  0.00277761  0.08036755 -0.69560335  0.05896373  0.08138170 -0.00475237 -0.08821477

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.56000035 -0.06268683  0.00456660 -0.09710901 -0.54655441 -0.54228728  0.06583801 -0.01516913

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.05043836 -0.70028828 -0.07357479 -0.00252546  0.04712036  0.05783581  0.66263195 -0.11125738

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00039147  0.00371236  0.00042979 -0.00006589 -0.00007422 -0.00185938 -0.01090168

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00045821  0.00432921  0.00049976  0.00005403  0.00006601  0.00159234  0.00934813

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00494328  0.00052534 -0.00002362 -0.00111412  0.00119163  0.00718427 -0.00118329

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000002 -0.00052310 -0.00006463  0.00007187 -0.01032351  0.01032092 -0.00092891  0.00017604

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00009119  0.00056506 -0.00496573  0.00004057  0.00008051 -0.00012204  0.00098305

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00851000  0.00000394 -0.00002853  0.00025149 -0.00220457 -0.00219763  0.00002934  0.00000351

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00058098  0.00006233 -0.00041748  0.00368373  0.00008233  0.00017357  0.00003825 -0.00036256

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000072  0.00369571  0.00039190 -0.00001810 -0.00000716  0.00003515  0.00266221 -0.00044106

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00163781 -0.01552743 -0.00178745 -0.00000000  0.00000000  0.00000000  0.00000006

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.56214297 -0.00010827 -0.00351322 -0.09816511 -0.19729988  0.74502862 -0.01462811 -0.00162248

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.07872691  0.00532377 -0.01787764  0.69986391 -0.04437565  0.11064296  0.01815631 -0.03192358

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00481298 -0.07443623  0.70276747  0.01767833  0.00384036  0.01027415  0.11117500  0.66552885

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00564202 -0.00059813  0.00002710  0.00001385 -0.00003355 -0.00266777  0.00044166

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00105750  0.00011039 -0.00000376  0.00004124 -0.00018789 -0.01423549  0.00236104

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00050887  0.00485230  0.00108937 -0.00002300 -0.00005433 -0.00123349 -0.00703573

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00013753 -0.00108080  0.00487839  0.00038696 -0.00000525  0.00002501  0.00173230

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000057 -0.00001492  0.00006832 -0.01418434 -0.00380053  0.00002143  0.00017337

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00058098 -0.00006235  0.00041779 -0.00368369 -0.00012274  0.00022856  0.00003702 -0.00036098

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00851001  0.00000426 -0.00002852  0.00025149 -0.00079922  0.00300315 -0.00004672  0.00002307

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00038731 -0.00367194 -0.00042301  0.00001620  0.00001771  0.00045028  0.00263953

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.01562774 -0.00165720  0.00007655 -0.00000000 -0.00000000 -0.00000002  0.00000001

   1    1  |0 0>          -0.00000001 -0.00000029 -0.00000010 -0.00000002 -0.00056202  0.00308239  0.29088132 -0.04983730
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000005  0.00000000 -0.00000010  0.00000069 -0.00636209  0.00346574  0.00541961 -0.03871148
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000004 -0.00000004  0.00000010  0.00000010  0.25971389  0.13628292  0.00516770  0.03363882
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000001  0.00000002 -0.00000092 -0.00000007  0.03065696  0.01648757 -0.05072617 -0.28658937
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000044 -0.00000001 -0.00000002 -0.00000011  0.13718958 -0.26150851  0.00299554 -0.00163874
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.18065348 -0.00000000  0.00000000  0.00000000 -0.00000018  0.00000032  0.00000001 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.01024774  0.00108849 -0.00004999  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00017319  0.00116034 -0.01023851  0.00000000  0.00000001  0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00107579  0.01018196  0.00117213  0.00000000 -0.00000000 -0.00000000 -0.00000004
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000001  0.00000000  0.00000000  0.00002244 -0.00011384 -0.00858111  0.00142195
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000 -0.00000000  0.00000001 -0.00000008  0.00021919 -0.00007562 -0.00012917  0.00116513
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00000000 -0.00000000  0.00000005  0.00000000  0.00005236  0.00005712  0.00145161  0.00850805
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |0 0>           0.00000022  0.00000000  0.00000000 -0.00000000 -0.00750953 -0.00439900  0.00004772  0.00008637
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>          -0.00000021  0.00000000  0.00000000  0.00000000 -0.00439654  0.00751004 -0.00011446  0.00001916
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |0 0>          -0.02155047 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000012  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.08975697 -0.00014394  0.02824839  0.20669053  0.01317962  0.00277817  0.00215954  0.00014014
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.01080662 -0.00138567 -0.20628101  0.02917917 -0.01460601 -0.01361831 -0.00906376 -0.00099955
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.02284063  0.00054301  0.01850383  0.00980789 -0.18358183 -0.15493072 -0.10397143  0.00009005
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.01372779  0.01337452 -0.00009012  0.00002383  0.00001328  0.00002194  0.00000000  0.00001561
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00483036  0.00470626 -0.00002917  0.00000926  0.00000177  0.00001121  0.00000000 -0.00004037
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00006316  0.00001599  0.00075542 -0.00043246  0.00907580 -0.01078096 -0.00000001  0.04512284
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00028045  0.00004559  0.00704797  0.00016148 -0.00096141  0.00114515  0.00000000  0.42528948
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00095675  0.00001961  0.00011476 -0.00708057 -0.00033379  0.00003033 -0.00000000  0.00556282
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00007598 -0.00004630 -0.00682575  0.00044961  0.00002462 -0.00000222  0.00000073  0.02737058
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00035619 -0.00000767  0.00045033  0.00681889  0.00030894 -0.00001464 -0.00000004 -0.00189351
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00007978  0.00001386 -0.00000271  0.00026267 -0.00603426 -0.00509053 -0.00864167  0.00000232
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000004  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00006221
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.66418109 -0.20696088  0.00568710  0.00113151 -0.03135819  0.01093330  0.01434286 -0.00002058

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.08239218 -0.02917663 -0.01781329 -0.01040543  0.22367774 -0.08100741 -0.10298120  0.00008804

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.01851044 -0.00315625 -0.20819288  0.00044400 -0.02005812  0.00723855  0.00927534  0.00100929

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00144271 -0.00001356 -0.00002448  0.01075215  0.00048813 -0.00002175  0.00000000 -0.00029956

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00124218  0.00001651  0.00001884 -0.00922019 -0.00041967  0.00001564  0.00000000 -0.00020490

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00030586  0.00005052  0.00704974  0.00003370 -0.00051138 -0.00140502  0.00000000 -0.42532560

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00021167  0.00012042 -0.00074805  0.00019142 -0.00478878 -0.01325838  0.00000001  0.04511667

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00728070 -0.00708824  0.00003754 -0.00000545 -0.00007374 -0.00019725  0.00000000  0.00075447

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00014897 -0.00046810  0.00000840 -0.00034223  0.00740294 -0.00268003 -0.00862158  0.00000158

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00267105 -0.00682455  0.00004523  0.00001291 -0.00051204  0.00017161  0.00058860 -0.00001058

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00010006 -0.00004567 -0.00684059 -0.00001589  0.00000364 -0.00000187 -0.00000073 -0.02743551

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00014773

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.10524313  0.02837360 -0.00026016 -0.00186596 -0.04212117  0.23536531 -0.10337560  0.00000007

   2    1  |1 1>-          0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.66598066 -0.20628746  0.00132495  0.01815395 -0.00525287  0.03257358 -0.01447749 -0.00000046

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.02768850  0.01824110 -0.00060050  0.20803089  0.00909051  0.00159612 -0.00088508 -0.00000088

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00010120 -0.00001666 -0.00261153 -0.00000622  0.00000792  0.00000058 -0.00000000  0.48543304

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00053308 -0.00009531 -0.01393579 -0.00003472  0.00000986 -0.00000266 -0.00000000 -0.09096866

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00171478 -0.00075906 -0.00001499  0.00704139  0.00031994 -0.00001622 -0.00000000 -0.00043163

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00713074 -0.00704802  0.00005358 -0.00076659  0.00015423  0.00002478 -0.00000000 -0.00003812

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00040735 -0.00008202 -0.00001145  0.00061694 -0.01394297 -0.00249234  0.00000001  0.00020996

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00266560 -0.00682549  0.00004541 -0.00000556 -0.00010106  0.00051833 -0.00058860  0.00001044

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00022856  0.00045427 -0.00000569  0.00008021 -0.00138273  0.00775872 -0.00862160 -0.00000071

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00035042 -0.00001138 -0.00001563  0.00683370  0.00030990 -0.00001476 -0.00000001  0.00002486

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.16305865

   1    1  |0 0>          -0.01202621  0.00353388  0.95505001  0.00790503 -0.00065873  0.00270523  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.29269432  0.95507080 -0.00351537 -0.00198542  0.00512048  0.00048826 -0.00000000 -0.00000000
                          -0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00838496 -0.00535037  0.00213939 -0.16338987  0.94005944 -0.04194365  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.03649365  0.00105960 -0.00764747  0.94096961  0.16305950 -0.01146695  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00580630 -0.00072127 -0.00270399  0.00410488  0.04328558  0.95409749  0.00000001 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000007  0.00000001 -0.00000000 -0.00000000 -0.00000001  0.00000002  0.98339255 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.60175336
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000007 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00022960
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00043996
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00032226  0.00002444  0.00364270  0.00000855 -0.00000159  0.00000090  0.00000000 -0.00000003
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00862244  0.00364270 -0.00002445  0.00000555  0.00000353  0.00000607 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00112876 -0.00000575 -0.00000843  0.00363902  0.00016497 -0.00000786  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>          -0.00014136 -0.00000269  0.00000207 -0.00016500  0.00362383 -0.00033292 -0.00000005  0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |0 0>          -0.00017332 -0.00000636 -0.00000069 -0.00000727  0.00033293  0.00362757  0.00000005  0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |0 0>           0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000003  0.00494014 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.00006034  0.00100153  0.00114808 -0.00007807  0.00849488 -0.00089541 -0.00010290  0.00646230
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000889  0.00014116 -0.00846293 -0.00001467  0.00115916  0.00642156  0.00044385  0.00090883
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000048  0.00000850  0.00076161 -0.00000034  0.00007539 -0.00058708 -0.00003752  0.00005329
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.16365300 -0.00966112 -0.00001716  0.09883858  0.00078949 -0.04576824  0.65488931  0.00424224
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000000

   5    1  |1 1>+          0.46502973  0.02816078  0.00004826 -0.28091920 -0.00267056 -0.01622924  0.23043124  0.00152856
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000

   6    1  |1 1>+          0.00014851  0.00000763 -0.02720869 -0.00009097 -0.00012091 -0.03788575 -0.00269789  0.00006702
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00035757  0.00558279 -0.25642993  0.00003282 -0.00451225 -0.34502433 -0.02416406  0.00465007
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.02579174 -0.42689772 -0.00449977 -0.00241567  0.25785891 -0.00479557  0.00221148 -0.34793758
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00012440 -0.00188939  0.44644326  0.00047519 -0.02889012 -0.26070679 -0.01812337 -0.01799962
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00164678 -0.02732002 -0.02889331  0.00411760 -0.44642305  0.01784280  0.00287340 -0.26133467
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000002  0.00003755  0.00000001 -0.00000012  0.00032515 -0.00013395  0.00006824
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.16276269 -0.00981535  0.00018999 -0.40809002 -0.00377629  0.00000062 -0.00000886 -0.00000013
                           0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00100167 -0.00006039 -0.00017343 -0.00849073 -0.00007920  0.00031731 -0.00645614 -0.00004037

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00014024 -0.00000854  0.00074503 -0.00118877 -0.00000837  0.00062098 -0.00086683 -0.00000391

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000814 -0.00000141  0.00853998 -0.00006900  0.00002956  0.00648891  0.00039864  0.00000345

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.01955971 -0.32090353 -0.00068051 -0.00191937  0.19385492 -0.00010727 -0.00312421  0.52830070

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.02268493 -0.37422611 -0.00088057 -0.00216288  0.22605996  0.00017859  0.00292604 -0.45303189

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00013953  0.00027504  0.25647458  0.00008658  0.00096940 -0.34532944 -0.02409273 -0.00035030

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00598229  0.00041985 -0.02720505 -0.00361685 -0.00018990  0.03496055  0.00757702  0.00016182

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000
                          -0.42687901 -0.02600115 -0.00047730  0.25787968  0.00254032  0.02473854 -0.34704858 -0.00202489

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00186521  0.00011248  0.00002347  0.03046996  0.00028208 -0.00092032  0.01794095  0.00005524

  10    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000002  0.00000000
                           0.02732085  0.00164759 -0.00021010  0.44631206  0.00412993 -0.01825811  0.26070899  0.00162554

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00001193  0.00002419 -0.44736939 -0.00019337 -0.00158369 -0.26132592 -0.01827750 -0.00015792

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00981528 -0.16276276  0.00144297  0.00377694 -0.40808767  0.00000005 -0.00000007  0.00000087

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00014024  0.00001254 -0.00000008 -0.00117971  0.00016647 -0.00004649  0.00089551 -0.00012913

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00100315 -0.00002765 -0.00000131  0.00846536 -0.00066617  0.00045136 -0.00642578  0.00052675

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00002912 -0.00101287  0.00003055 -0.00068281 -0.00854667 -0.00004142  0.00053794  0.00650370

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00016481 -0.00043888 -0.29271806 -0.00009832 -0.00103098  0.12787069  0.00898174  0.00008421

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00008931  0.00022303  0.05484784 -0.00005828  0.00011216  0.68238871  0.04761626  0.00030191

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.07064373 -0.42183964 -0.00087666 -0.02958096  0.25620866  0.00269300 -0.03876386  0.34579816

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000
                           0.42179871  0.07063734  0.00016537 -0.25617789 -0.02957854  0.02391918 -0.34494493 -0.03885144

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00590404  0.00094845 -0.00012451 -0.00358447 -0.00039033  0.00052572 -0.00444664 -0.00067587

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000002  0.00000000
                          -0.02732255 -0.00164999  0.00020792 -0.44632185 -0.00416769 -0.01827915  0.26070013  0.00164260

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00186532  0.00011263 -0.00001420  0.03047048  0.00028427  0.00059587 -0.01780597 -0.00012480

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00165379  0.02738580 -0.00158177 -0.00417794  0.44735243  0.00004252  0.00165447 -0.26195646

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00007099  0.00014372 -0.40810410 -0.00017663 -0.00144466 -0.00000426 -0.00000030 -0.00000004

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000017 -0.00000000  0.00000000  0.01596487  0.00116475 -0.00008514
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000007  0.00000000 -0.00000000  0.00000028  0.00000001  0.00116466 -0.01596503 -0.00004479
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000001  0.00002203  0.00007689  0.00201726
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000004  0.00000000  0.00000000 -0.00000007 -0.00008576  0.00004863 -0.01587970
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00007440 -0.00001654 -0.00006882
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00025567 -0.00042535  0.45965199  0.00019820  0.00170753  0.00000416  0.00000029  0.00000004
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.60066115  0.03622265 -0.00021399  0.45963570  0.00425326 -0.00000058  0.00000836  0.00000012
                          -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.03622241  0.60066046 -0.00170561 -0.00425406  0.45963245 -0.00000005  0.00000006 -0.00000067
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000  0.00000342  0.00000000 -0.00000002 -0.36772371 -0.02570753 -0.00021150
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000010  0.00000001  0.00000000 -0.00000625 -0.00000012 -0.02570820  0.36771624  0.00228686
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000

  12    1  |0 0>           0.00000002 -0.00000019 -0.00000003 -0.00000008  0.00000123 -0.00005153 -0.00229597  0.36861127
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |0 0>           0.00000000 -0.00000000 -0.00000012 -0.00000006  0.00000000 -0.00018008 -0.00018756  0.00008567
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |0 0>          -0.00000000 -0.00000000 -0.00000003  0.00000004  0.00000000  0.00077516 -0.00004496  0.00003852
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.00010462 -0.00011496 -0.00021640  0.00096540 -0.00005798  0.00706632  0.00000001 -0.00000005
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00044363  0.00049111  0.00090826 -0.00703959 -0.00000733  0.00097464 -0.00000009 -0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00512977  0.00547854  0.01041880  0.00063373 -0.00000057  0.00006181  0.00000001 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00031515 -0.00016840 -0.00000005  0.00003294  0.08595396  0.00059553  0.00015397 -0.02400257
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00005284 -0.00021269 -0.00000002 -0.00009457 -0.24425772 -0.00206278  0.00035590  0.02580442
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.50523888  0.47287233  0.00000685 -0.02365713 -0.00006617 -0.00007071 -0.04472951 -0.00034110
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.05379989 -0.05088580 -0.00000072 -0.22296211  0.00014626 -0.00359976 -0.37568616  0.00249238
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00062966 -0.00070602 -0.00000001 -0.00358812 -0.00186041  0.22420553 -0.00401708 -0.20023862
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00016462 -0.00052401 -0.00004605 -0.43925225 -0.00019726  0.02906534 -0.00000330 -0.00000006
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00006823  0.00000711  0.00000283  0.02906594 -0.00360125  0.43923743  0.00000024 -0.00000082
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.20670876 -0.22083757  0.54847099 -0.00003702  0.00000000  0.00000018  0.00000006 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000008 -0.00000004 -0.00000000  0.00002024  0.21754383  0.00178227  0.00000000  0.00000007
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00101152 -0.00023335 -0.00143729 -0.00014824 -0.00706431 -0.00005818 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00724045  0.00168739  0.01031966  0.00061931 -0.00098941 -0.00000681  0.00000001 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00064840 -0.00013839 -0.00092948  0.00710521 -0.00006127  0.00001434  0.00000009  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00009743 -0.00001681 -0.00000000 -0.00034793 -0.00148964  0.16855885 -0.00147202  0.63029233

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00004797  0.00016809 -0.00000000 -0.00048142 -0.00167182  0.19656446 -0.00181845  0.40562409

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.01685160  0.07079347  0.00000025  0.22299086 -0.00004574  0.00051925  0.50788255  0.00206552

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.15691676  0.67405094  0.00000229 -0.02365517 -0.00313183 -0.00012745 -0.04901284 -0.00001276

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                           0.00235738  0.00952505  0.00000006 -0.00028954  0.22421147  0.00197122 -0.00013718  0.00487363

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.29391693 -0.06844824  0.54719394 -0.00003978 -0.02998277 -0.00024571 -0.00000007  0.00000001

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                          -0.02018803  0.00460199 -0.03735712 -0.00003858 -0.43917662 -0.00359802 -0.00000000  0.00000007

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00017660 -0.00054756  0.00004614  0.44021236 -0.00004874  0.00091944  0.00000646  0.00000002

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000000 -0.00000000 -0.00045455 -0.00178222  0.21754302  0.00000001 -0.00000245

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00216809 -0.00714120  0.01035902 -0.00000040 -0.00098134  0.00013954 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00030681 -0.00099827  0.00145075  0.00000195  0.00704235 -0.00056173 -0.00000000  0.00000001

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00001971 -0.00006058  0.00008869  0.00001479 -0.00057563 -0.00711017 -0.00000000  0.00000010

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00039713  0.00016707  0.00000000 -0.25451920  0.00005270 -0.00052708  0.76847441  0.00206736

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00057856  0.00135942  0.00000000  0.04769765 -0.00007665  0.00002834 -0.07691347  0.00061297

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00003065  0.00002956  0.00000000 -0.00045291 -0.02548351  0.22279020  0.00129668 -0.62903646

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000
                          -0.00915668 -0.00273803  0.00000009 -0.00001497 -0.22277094 -0.02548104  0.00006235  0.03372399

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.66586782  0.20220488 -0.00000464 -0.00011074 -0.00311701 -0.00033590 -0.00449144  0.00008070

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000
                          -0.00610772  0.01964305  0.03735741  0.00004078  0.43917470  0.00363499  0.00000000  0.00000036

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.08767588  0.28876579  0.54719839 -0.00000278 -0.02998257 -0.00024791  0.00000000 -0.00000002

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00005703 -0.00002856  0.00000031  0.00091978  0.00364333 -0.44019653 -0.00000002  0.00000760

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000013  0.00000003 -0.00000000  0.21755205 -0.00002396  0.00045439  0.00000273  0.00000000

   1    1  |0 0>          -0.00002244  0.00007360  0.00000000  0.00000003  0.00000000  0.00000000  0.00000003 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00008199 -0.00000531  0.00000000  0.00000000 -0.00000010 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.01583696  0.00116731 -0.00000011  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00201678  0.00007872 -0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000005
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00116779  0.01596481  0.00000011 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000010 -0.00000007  0.01622624  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000011 -0.00000002  0.00000000  0.63037057 -0.00007033  0.00142683  0.00000784  0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000009  0.00000005  0.00000000  0.00005864  0.63035172  0.00516427  0.00000000  0.00000022
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00142736 -0.00516414  0.63035074  0.00000002 -0.00000700
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00021310 -0.00076482  0.00000000 -0.00000008 -0.00000000  0.00000000  0.00000085  0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00017133 -0.00010327 -0.00000002  0.00000000 -0.00000106 -0.00000000 -0.00000000  0.00000016
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00008580  0.00004098  0.00000000  0.00000001  0.00000001 -0.00000069  0.00000000 -0.00000277
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>          -0.36847903 -0.00980200 -0.00000129  0.00000002  0.00000000  0.00000000  0.00000005 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |0 0>           0.00980128 -0.36847348  0.00000189  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |0 0>           0.00000008  0.00000058  0.31136729 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+          0.00000000 -0.00000001 -0.00000001  0.00000008  0.00000000 -0.00030197  0.00000547  0.00228447
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000005 -0.00000000  0.00000001 -0.00000000  0.00227582  0.00000080  0.00030503
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00020611 -0.00000474  0.00002116
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.42110985  0.00800314  0.42646262  0.05360456  0.00007633  0.00010196 -0.37346186  0.00098450
                           0.00000001  0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.62657718  0.00787604  0.41892489  0.04225818 -0.00143807 -0.00003507 -0.13141629  0.00036743
                          -0.00000002  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00096905  0.06680073 -0.00065479  0.00152487  0.57366681 -0.02130016  0.00002191  0.00008119
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00017844  0.62096597 -0.01161751  0.00083047 -0.06504263 -0.19677593 -0.00003084  0.00404280
                           0.00000000  0.00000002  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.01654435 -0.00429867 -0.08273325  0.69719810 -0.00142785 -0.00402811 -0.00068904 -0.19792341
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000001  0.00000726 -0.00000021  0.00000070 -0.00000009  0.58100609  0.00020882  0.03590791
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000010 -0.00000063 -0.00000095  0.00000819  0.00000000 -0.03590818  0.00137502  0.58100745
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000001  0.00000007 -0.00000003 -0.00000001 -0.00000027 -0.00031402 -0.00120258  0.00007664
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000190  0.00000001  0.00000076  0.00000006 -0.00000001 -0.00000000 -0.00000188  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000005 -0.00000000 -0.00000007 -0.00000001 -0.00000000 -0.00004793  0.00228214 -0.00000505

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.00000000 -0.00000001 -0.00000000  0.00000001  0.00019837  0.00032240 -0.00000261

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00229587  0.00001975 -0.00001478

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.02784053 -0.00467921 -0.01968923  0.21880557  0.00030740  0.00193162  0.00061968  0.30053410

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.02504003  0.01011102  0.06909807 -0.56299086  0.00042379 -0.00159733 -0.00066809 -0.25771754

   6    1  |1 0>           0.00000000 -0.00000002 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00016605  0.51930178 -0.01102824  0.00782147 -0.05747778 -0.19690047 -0.00011877  0.00119389

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                          -0.00399090 -0.05620230 -0.00904390 -0.00216558 -0.57439905  0.02049237 -0.00334320 -0.00000159

   8    1  |1 0>           0.00000001 -0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.23265787  0.01205175  0.68766300  0.07768296 -0.00908764  0.00022665  0.19794195 -0.00039590

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000003  0.00000008 -0.00000073 -0.00000007  0.00000238 -0.00048950  0.04033690 -0.00023802

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000024 -0.00000020 -0.00001087 -0.00000126 -0.00000014 -0.00009117  0.58071211 -0.00137212

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000555 -0.00000013  0.00000008  0.00000010  0.58210134  0.00011497 -0.00374892

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000015 -0.00000001 -0.00000018  0.00000119 -0.00000000 -0.00000003 -0.00000000  0.00000080

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000288 -0.00031481 -0.00004666

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000009 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000124  0.00227470  0.00019475

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000000  0.00000000  0.00000002  0.00000000  0.00001485 -0.00019933  0.00229613

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00029326  0.01868852 -0.00077744 -0.00050829  0.00614002  0.07292137 -0.00000714 -0.00046583

   5    1  |1 1>-         -0.00000000 -0.00000002 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00003794  0.57985223 -0.01178846  0.00977601 -0.00172992  0.38913309  0.00014016 -0.00256873

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.03846817  0.00841487  0.07815105 -0.36053958 -0.00016351  0.00137150  0.02135399  0.19680639

   7    1  |1 1>-         -0.00000002 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.61049538  0.00647054  0.38874434  0.09071949 -0.00771624 -0.00030771  0.19680328 -0.02135142

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                          -0.00778528  0.00118587  0.00600383  0.00168975  0.57727866  0.00016176  0.00211001 -0.00020611

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000759 -0.00000015 -0.00000778 -0.00000103 -0.00000014 -0.00006977  0.58079815 -0.00142620

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000051 -0.00000016  0.00000054  0.00000006 -0.00000201  0.00080279 -0.03913742  0.00016489

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000039 -0.00000009 -0.00000039  0.00000447  0.00000001  0.00374858  0.00143503  0.58210475

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000075  0.00000001 -0.00000002  0.00000006  0.00000043  0.00000000  0.00000003

   1    1  |0 0>          -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000  0.01703852 -0.00004740 -0.00021084
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000006 -0.00000000 -0.00000015 -0.00000002  0.00000000  0.00004770  0.01703962  0.00001717
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000004  0.00004246 -0.00010401  0.00215409
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000001 -0.00000007 -0.00000000 -0.00020681  0.00000466 -0.01690180
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00006434 -0.00000244 -0.00007225
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000172  0.00000003 -0.00000005  0.00000016 -0.00000038 -0.00000000  0.00000002
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000602  0.00000004  0.00000235  0.00000018 -0.00000002  0.00000000  0.00000141  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000041 -0.00000004 -0.00000047  0.00000318 -0.00000001 -0.00000002 -0.00000001 -0.00000015
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000481 -0.00000010  0.00000008  0.00000000  0.29470307  0.00006746 -0.00190648
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000283 -0.00000012 -0.00000659 -0.00000081  0.00000001 -0.00007223  0.29470566 -0.00070092
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000011  0.00000010  0.00000059 -0.00000551  0.00000000 -0.00190619 -0.00070143 -0.29469400
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.00000001 -0.00000004 -0.00000001 -0.00000001 -0.00000129  0.00010931 -0.00040225  0.00005727
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |0 0>          -0.00000000  0.00000010 -0.00000001  0.00000000  0.00000035 -0.00033375 -0.00034649 -0.00001410
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000001  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |1 1>+          0.00004184  0.00003640 -0.00131334  0.00001458 -0.01023958 -0.00130267  0.00000034 -0.00939923
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00017334 -0.00015459  0.01020074  0.00000081 -0.00132706  0.00936339 -0.00000011 -0.00131494
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00199662 -0.00174277 -0.00091653  0.00000023 -0.00009699 -0.00084341 -0.00000056 -0.00008083
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00054591  0.00039069 -0.00000235 -0.00580364 -0.00000086  0.00000713 -0.14957379 -0.00004351
                           0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000005  0.00000000

   5    1  |1 1>+          0.00010825  0.00023358  0.00000654  0.01649216  0.00002746 -0.00002601 -0.05263327 -0.00002352
                           0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000002  0.00000000

   6    1  |1 1>+          0.25891832 -0.29655088  0.00159732  0.00000444  0.00001786 -0.00836694 -0.00001031 -0.00000532
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.02752274  0.03168729  0.01505278 -0.00000857  0.00036673 -0.07883199  0.00000362 -0.00112048
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00040098  0.00043016  0.00036659  0.00002293 -0.01513685 -0.00111477 -0.00008962  0.07927619
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00021671 -0.00063383  0.32395858 -0.00000727 -0.01876660 -0.30337830  0.00000256  0.02066590
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00010455  0.00000143 -0.01876652  0.00045900 -0.32395935  0.02066640 -0.00001048  0.30337145
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.50636075 -0.44207589  0.00002730 -0.00000000  0.00000010 -0.00002261  0.00001833  0.00000777
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000005 -0.00000005  0.00009076  0.87136858  0.00122933  0.00000000  0.00000269 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000086 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00034928  0.00011593  0.00021467  0.01022546  0.00001663 -0.00019623  0.00939897  0.00000025

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00248360 -0.00084993 -0.00089636  0.00143216 -0.00000721  0.00082399  0.00131677  0.00000048

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00022310  0.00007384 -0.01028392  0.00008877 -0.00010581  0.00945326  0.00008033  0.00000138

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00007556  0.00001969  0.00011693  0.00002339 -0.01138035  0.00001640 -0.00003439 -0.12036848

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00009360 -0.00010166  0.00014148  0.00002286 -0.01327074  0.00000963 -0.00002522  0.10321948

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01357004 -0.03929436 -0.01505591  0.00000319 -0.00015872 -0.07884039 -0.00000707  0.00001789

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.12735769 -0.37250763  0.00159714  0.00021147  0.00002029  0.00836088 -0.00111402 -0.00004950

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000003  0.00000000
                          -0.00206867 -0.00542208  0.00001946 -0.01513947 -0.00003025  0.00011047  0.07927564 -0.00002811

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.63449143 -0.21702220  0.00002955  0.02210253  0.00003146  0.00002919 -0.02072667 -0.00001076

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000032  0.00000000 -0.00000000 -0.00000010 -0.00000000
                          -0.04416203  0.01419682  0.00003205  0.32375060  0.00045673 -0.00000510 -0.30337203 -0.00000957

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00022002 -0.00068794 -0.32448560  0.00003870 -0.00334242 -0.30408125  0.00000310 -0.00004525

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00897538 -0.00122833  0.87132235 -0.00000001  0.00000000  0.00000068

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00050791  0.00258592  0.00000235  0.00141904 -0.00021160  0.00000017 -0.00130399  0.00019623

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00007445  0.00035968 -0.00001030 -0.01018779  0.00088213  0.00000025  0.00936325 -0.00082379

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000359  0.00002219 -0.00010584  0.00090299  0.01028521  0.00000140 -0.00084301 -0.00945327

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00020939 -0.00004679  0.01718340 -0.00000371  0.00017671  0.02920607 -0.00000904  0.00000283

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00021765 -0.00042667 -0.00322013  0.00000523 -0.00002838  0.15585077  0.00002377  0.00004818

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00004588 -0.00002944  0.00015422  0.00161860 -0.01505382  0.00005518  0.00836681 -0.07884093

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000003  0.00000000
                           0.00514154  0.00086038 -0.00001194  0.01505304  0.00161843 -0.00005286  0.07883224  0.00836627

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.38844303 -0.07636596  0.00000730  0.00021063  0.00002132  0.00005640  0.00109419  0.00010508

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000032 -0.00000000 -0.00000000 -0.00000010 -0.00000000
                          -0.00967301  0.04430753 -0.00003344 -0.32374553 -0.00048399 -0.00000373 -0.30337320 -0.00003562

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000001 -0.00000000
                          -0.12930845  0.65807380  0.00000229  0.02210225  0.00003286 -0.00000662  0.02070839  0.00000475

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00011863 -0.00004168 -0.00334248 -0.00048473  0.32448363 -0.00004525 -0.00003586  0.30407415

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000  0.87132321 -0.00010342  0.00897523 -0.00000048  0.00000000 -0.00000001

   1    1  |0 0>           0.00001450 -0.00006386 -0.00000002 -0.00000000  0.00000000 -0.00003290  0.00000010 -0.00000020
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00010257  0.00000014 -0.00000000  0.00000003  0.00000000 -0.00000010 -0.00003287  0.00000011
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.01689661  0.00045859 -0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000017  0.00000414
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00215170  0.00013206  0.00000000  0.00000000  0.00000000  0.00000020 -0.00000009 -0.00003252
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00047163 -0.01703308  0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000003 -0.00000014
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000002  0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000002  0.00000000  0.17067878 -0.00002030  0.00178796  0.00000014 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000003 -0.00000003  0.00001778  0.17068890  0.00024081  0.00000000  0.00000016 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000017 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00178800 -0.00024061  0.17067963  0.00000000 -0.00000000  0.00000022
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00008385 -0.00034089  0.00000015 -0.00000000  0.00000002  0.88157529  0.00001884  0.00015648
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00042701 -0.00031569 -0.00000000 -0.00000097 -0.00000000 -0.00001885  0.88157662  0.00002899
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000030 -0.00000000

  12    1  |0 0>          -0.00005560  0.00002125  0.00000002  0.00000000 -0.00000007 -0.00015649 -0.00002899  0.88157966
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |0 0>          -0.29386745  0.02181714 -0.00000000  0.00000003  0.00000000  0.00000496 -0.00004491 -0.00001286
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |0 0>          -0.02181555 -0.29385610  0.00000000 -0.00000003 -0.00000000 -0.00002194 -0.00002873  0.00000017
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |0 0>          -0.00000115  0.00000127 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51

   1    1  |1 1>+         -0.00015876 -0.00016216 -0.00020669
                           0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00066508  0.00068063  0.00086749
                           0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00763038  0.00780566  0.00995111
                           0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000980 -0.00000134 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00003306 -0.00003616 -0.00000000
                          -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.11275851  0.11023007 -0.00000159
                          -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.01196203 -0.01169478  0.00000017
                           0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00015920 -0.00015325  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00002326  0.00001552  0.00001511
                          -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000767 -0.00000060 -0.00000093
                          -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.24542502 -0.25105488 -0.17990637
                          -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000001  0.00000001  0.00000000
                           0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000
                           0.00145932 -0.00037300 -0.00137274

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                          -0.01047438  0.00267971  0.00985623

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000
                           0.00094336 -0.00024118 -0.00088773

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00000793 -0.00001705  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                           0.00001570  0.00004941 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                           0.00414666  0.01620572 -0.00000009

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000
                           0.03907729  0.15275336 -0.00000080

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000
                           0.00055079  0.00213907 -0.00000001

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000
                           0.33934974 -0.08681344 -0.17948693

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000
                          -0.02318308  0.00591972  0.01225364

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000
                           0.00003065 -0.00001291 -0.00001513

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                           0.00292761 -0.01045068  0.00989415

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                           0.00041047 -0.00146337  0.00138565

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000
                           0.00002474 -0.00008951  0.00008471

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                          -0.00007427 -0.00002021 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000
                          -0.00004290 -0.00000886 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000
                          -0.00001606 -0.00000384  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000
                          -0.00213040 -0.00059620 -0.00000001

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                           0.15267748  0.04277317  0.00000090

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000
                          -0.00646629  0.02301912 -0.01225384

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                          -0.09448825  0.33727972 -0.17949004

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                           0.00000904  0.00000050 -0.00000010

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000

   1    1  |0 0>           0.00000003 -0.00000008 -0.00000000
                          -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000015  0.00000002  0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00003215 -0.00000165  0.00000001
                          -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000410 -0.00000007  0.00000000
                          -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000167 -0.00003225 -0.00000002
                           0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000007 -0.00000007 -0.00633373
                           0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000507  0.00002192 -0.00000000
                           0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00004476  0.00002895 -0.00000000
                           0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00001287 -0.00000012  0.00000000
                          -0.00000000  0.00000000  0.00000000

  13    1  |0 0>           0.88158093  0.00433826 -0.00000067
                           0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>          -0.00433825  0.88158675  0.00000052
                          -0.00000000  0.00000000  0.00000000

  15    1  |0 0>           0.00000081 -0.00000059  0.95003241
                           0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.08675470     -0.01301345    -2856.12      0.00000000        0.00      0.0000
     2   1   -214.07895693     -0.00521568    -1144.71      0.00779777     1711.41      0.2122
     3   1   -214.07895690     -0.00521565    -1144.70      0.00779780     1711.42      0.2122
     4   1   -214.07895689     -0.00521564    -1144.70      0.00779780     1711.42      0.2122
     5   1   -214.07089694      0.00284431      624.25      0.01585776     3480.38      0.4315
     6   1   -214.07089691      0.00284434      624.26      0.01585778     3480.38      0.4315
     7   1   -214.07089685      0.00284440      624.27      0.01585785     3480.40      0.4315
     8   1   -214.07089683      0.00284442      624.28      0.01585786     3480.40      0.4315
     9   1   -214.07089683      0.00284442      624.28      0.01585787     3480.40      0.4315
    10   1   -214.04547272      0.02826853     6204.23      0.04128198     9060.35      1.1233
    11   1   -214.04547270      0.02826855     6204.23      0.04128199     9060.35      1.1233
    12   1   -214.04547268      0.02826858     6204.24      0.04128202     9060.36      1.1233
    13   1   -214.04547261      0.02826864     6204.25      0.04128209     9060.37      1.1233
    14   1   -214.04547259      0.02826866     6204.25      0.04128211     9060.38      1.1233
    15   1   -214.00617503      0.06756622    14829.07      0.08057967    17685.19      2.1927
    16   1   -213.89258133      0.18115993    39760.01      0.19417337    42616.13      5.2837
    17   1   -213.89258130      0.18115995    39760.01      0.19417340    42616.13      5.2837
    18   1   -213.89258130      0.18115995    39760.01      0.19417340    42616.14      5.2837
    19   1   -213.88711803      0.18662322    40959.06      0.19963666    43815.18      5.4324
    20   1   -213.88711802      0.18662323    40959.06      0.19963668    43815.19      5.4324
    21   1   -213.88711801      0.18662324    40959.07      0.19963669    43815.19      5.4324
    22   1   -213.88651987      0.18722138    41090.34      0.20023482    43946.46      5.4487
    23   1   -213.88651987      0.18722138    41090.34      0.20023483    43946.46      5.4487
    24   1   -213.88651985      0.18722140    41090.35      0.20023484    43946.47      5.4487
    25   1   -213.88651968      0.18722157    41090.38      0.20023502    43946.51      5.4487
    26   1   -213.88651965      0.18722160    41090.39      0.20023504    43946.51      5.4487
    27   1   -213.88461414      0.18912711    41508.60      0.20214056    44364.72      5.5005
    28   1   -213.87446001      0.19928124    43737.18      0.21229469    46593.30      5.7768
    29   1   -213.87445999      0.19928127    43737.18      0.21229471    46593.30      5.7768
    30   1   -213.87445998      0.19928127    43737.18      0.21229472    46593.31      5.7768
    31   1   -213.87261693      0.20112433    44141.69      0.21413777    46997.81      5.8270
    32   1   -213.87261692      0.20112433    44141.69      0.21413778    46997.81      5.8270
    33   1   -213.87261691      0.20112434    44141.69      0.21413779    46997.81      5.8270
    34   1   -213.87261689      0.20112437    44141.70      0.21413781    46997.82      5.8270
    35   1   -213.87261688      0.20112437    44141.70      0.21413781    46997.82      5.8270
    36   1   -213.87261688      0.20112437    44141.70      0.21413782    46997.82      5.8270
    37   1   -213.87261685      0.20112440    44141.70      0.21413785    46997.82      5.8270
    38   1   -213.87066761      0.20307364    44569.51      0.21608709    47425.63      5.8800
    39   1   -213.87066760      0.20307365    44569.51      0.21608710    47425.64      5.8800
    40   1   -213.87066759      0.20307366    44569.52      0.21608711    47425.64      5.8800
    41   1   -213.87066750      0.20307375    44569.54      0.21608720    47425.66      5.8800
    42   1   -213.87066747      0.20307378    44569.54      0.21608722    47425.66      5.8800
    43   1   -213.86804977      0.20569148    45144.06      0.21870492    48000.18      5.9513
    44   1   -213.86804977      0.20569148    45144.06      0.21870493    48000.18      5.9513
    45   1   -213.86804977      0.20569148    45144.06      0.21870493    48000.18      5.9513
    46   1   -213.86382567      0.20991558    46071.15      0.22292903    48927.27      6.0662
    47   1   -213.86382560      0.20991565    46071.16      0.22292910    48927.28      6.0662
    48   1   -213.86382545      0.20991580    46071.19      0.22292925    48927.31      6.0662
    49   1   -213.86382491      0.20991634    46071.31      0.22292978    48927.43      6.0662
    50   1   -213.86382462      0.20991663    46071.37      0.22293007    48927.50      6.0662
    51   1   -213.85197250      0.22176875    48672.61      0.23478220    51528.74      6.3887

 E0 =   -214.07374125 is the energy of the lowest zeroth-order state
 E1 =   -214.08675470 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.01174333 -0.02363066 -0.70194524 -0.07915255 -0.01132365  0.00734776  0.01994852  0.66902905
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.04928774  0.70373520 -0.02332930 -0.01454836  0.06422210 -0.00820236  0.67282116 -0.01784289
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.56538575 -0.06183942 -0.01254613 -0.00037579  0.75016681 -0.20187362 -0.05392223  0.00877453
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00000000 -0.00003140  0.00021340 -0.00190386 -0.00034899  0.00012075  0.00020469 -0.00185851
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00000000  0.00009006 -0.00061462  0.00540966 -0.00012404  0.00003795  0.00007457 -0.00065512
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00000002 -0.00052437 -0.00005624  0.00000405  0.00378327  0.01412015  0.00057190 -0.00020780
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000000 -0.00493568 -0.00059297  0.00001413 -0.00042101 -0.00140192  0.00720392 -0.00128477
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00000000 -0.00059008  0.00493138  0.00056940  0.00003836  0.00002993  0.00132585  0.00716179
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000072 -0.00371351 -0.00014089  0.00004685 -0.00000610  0.00003652  0.00268669 -0.00026025
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00000004 -0.00013469  0.00369016  0.00042049  0.00001666  0.00001525  0.00026790  0.00266345
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00852982 -0.00000031 -0.00000003  0.00000000  0.00301077 -0.00080742  0.00001742 -0.00002663
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000000  0.00026412 -0.00176948  0.01561339 -0.00000000 -0.00000001  0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.07799463  0.00277761  0.08036755 -0.69560335  0.05896373  0.08138170 -0.00475237 -0.08821477

 14  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.56000035 -0.06268683  0.00456660 -0.09710901 -0.54655441 -0.54228728  0.06583801 -0.01516913

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.05043836 -0.70028828 -0.07357479 -0.00252546  0.04712036  0.05783581  0.66263195 -0.11125738

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00039147  0.00371236  0.00042979 -0.00006589 -0.00007422 -0.00185938 -0.01090168

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00045821  0.00432921  0.00049976  0.00005403  0.00006601  0.00159234  0.00934813

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00494328  0.00052534 -0.00002362 -0.00111412  0.00119163  0.00718427 -0.00118329

 19  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000002 -0.00052310 -0.00006463  0.00007187 -0.01032351  0.01032092 -0.00092891  0.00017604

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00009119  0.00056506 -0.00496573  0.00004057  0.00008051 -0.00012204  0.00098305

 21  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00851000  0.00000394 -0.00002853  0.00025149 -0.00220457 -0.00219763  0.00002934  0.00000351

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00058098  0.00006233 -0.00041748  0.00368373  0.00008233  0.00017357  0.00003825 -0.00036256

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000072  0.00369571  0.00039190 -0.00001810 -0.00000716  0.00003515  0.00266221 -0.00044106

 24  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00163781 -0.01552743 -0.00178745 -0.00000000  0.00000000  0.00000000  0.00000006

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.56214297 -0.00010827 -0.00351322 -0.09816511 -0.19729988  0.74502862 -0.01462811 -0.00162248

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.07872691  0.00532377 -0.01787764  0.69986391 -0.04437565  0.11064296  0.01815631 -0.03192358

 27  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00481298 -0.07443623  0.70276747  0.01767833  0.00384036  0.01027415  0.11117500  0.66552885

 28  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00564202 -0.00059813  0.00002710  0.00001385 -0.00003355 -0.00266777  0.00044166

 29  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00105750  0.00011039 -0.00000376  0.00004124 -0.00018789 -0.01423549  0.00236104

 30  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00050887  0.00485230  0.00108937 -0.00002300 -0.00005433 -0.00123349 -0.00703573

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00013753 -0.00108080  0.00487839  0.00038696 -0.00000525  0.00002501  0.00173230

 32  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000057 -0.00001492  0.00006832 -0.01418434 -0.00380053  0.00002143  0.00017337

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00058098 -0.00006235  0.00041779 -0.00368369 -0.00012274  0.00022856  0.00003702 -0.00036098

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00851001  0.00000426 -0.00002852  0.00025149 -0.00079922  0.00300315 -0.00004672  0.00002307

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00038731 -0.00367194 -0.00042301  0.00001620  0.00001771  0.00045028  0.00263953

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.01562774 -0.00165720  0.00007655 -0.00000000 -0.00000000 -0.00000002  0.00000001

 37  1     1    1  |0 0>       -0.00000001 -0.00000029 -0.00000010 -0.00000002 -0.00056202  0.00308239  0.29088132 -0.04983730
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000005  0.00000000 -0.00000010  0.00000069 -0.00636209  0.00346574  0.00541961 -0.03871148
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000004 -0.00000004  0.00000010  0.00000010  0.25971389  0.13628292  0.00516770  0.03363882
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00000001  0.00000002 -0.00000092 -0.00000007  0.03065696  0.01648757 -0.05072617 -0.28658937
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000044 -0.00000001 -0.00000002 -0.00000011  0.13718958 -0.26150851  0.00299554 -0.00163874
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.18065348 -0.00000000  0.00000000  0.00000000 -0.00000018  0.00000032  0.00000001 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00000000  0.01024774  0.00108849 -0.00004999  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000000 -0.00017319  0.00116034 -0.01023851  0.00000000  0.00000001  0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000 -0.00107579  0.01018196  0.00117213  0.00000000 -0.00000000 -0.00000000 -0.00000004
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00000000  0.00000001  0.00000000  0.00000000  0.00002244 -0.00011384 -0.00858111  0.00142195
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00000000 -0.00000000  0.00000001 -0.00000008  0.00021919 -0.00007562 -0.00012917  0.00116513
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00000000 -0.00000000  0.00000005  0.00000000  0.00005236  0.00005712  0.00145161  0.00850805
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00000022  0.00000000  0.00000000 -0.00000000 -0.00750953 -0.00439900  0.00004772  0.00008637
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00000021  0.00000000  0.00000000  0.00000000 -0.00439654  0.00751004 -0.00011446  0.00001916
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.02155047 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000012  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.08975697 -0.00014394  0.02824839  0.20669053  0.01317962  0.00277817  0.00215954  0.00014014
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.01080662 -0.00138567 -0.20628101  0.02917917 -0.01460601 -0.01361831 -0.00906376 -0.00099955
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.02284063  0.00054301  0.01850383  0.00980789 -0.18358183 -0.15493072 -0.10397143  0.00009005
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.01372779  0.01337452 -0.00009012  0.00002383  0.00001328  0.00002194  0.00000000  0.00001561
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00483036  0.00470626 -0.00002917  0.00000926  0.00000177  0.00001121  0.00000000 -0.00004037
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00006316  0.00001599  0.00075542 -0.00043246  0.00907580 -0.01078096 -0.00000001  0.04512284
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00028045  0.00004559  0.00704797  0.00016148 -0.00096141  0.00114515  0.00000000  0.42528948
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00095675  0.00001961  0.00011476 -0.00708057 -0.00033379  0.00003033 -0.00000000  0.00556282
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00007598 -0.00004630 -0.00682575  0.00044961  0.00002462 -0.00000222  0.00000073  0.02737058
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00035619 -0.00000767  0.00045033  0.00681889  0.00030894 -0.00001464 -0.00000004 -0.00189351
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00007978  0.00001386 -0.00000271  0.00026267 -0.00603426 -0.00509053 -0.00864167  0.00000232
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.00000004  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00006221
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.66418109 -0.20696088  0.00568710  0.00113151 -0.03135819  0.01093330  0.01434286 -0.00002058

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.08239218 -0.02917663 -0.01781329 -0.01040543  0.22367774 -0.08100741 -0.10298120  0.00008804

 15  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.01851044 -0.00315625 -0.20819288  0.00044400 -0.02005812  0.00723855  0.00927534  0.00100929

 16  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00144271 -0.00001356 -0.00002448  0.01075215  0.00048813 -0.00002175  0.00000000 -0.00029956

 17  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00124218  0.00001651  0.00001884 -0.00922019 -0.00041967  0.00001564  0.00000000 -0.00020490

 18  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00030586  0.00005052  0.00704974  0.00003370 -0.00051138 -0.00140502  0.00000000 -0.42532560

 19  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00021167  0.00012042 -0.00074805  0.00019142 -0.00478878 -0.01325838  0.00000001  0.04511667

 20  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00728070 -0.00708824  0.00003754 -0.00000545 -0.00007374 -0.00019725  0.00000000  0.00075447

 21  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00014897 -0.00046810  0.00000840 -0.00034223  0.00740294 -0.00268003 -0.00862158  0.00000158

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00267105 -0.00682455  0.00004523  0.00001291 -0.00051204  0.00017161  0.00058860 -0.00001058

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00010006 -0.00004567 -0.00684059 -0.00001589  0.00000364 -0.00000187 -0.00000073 -0.02743551

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00014773

 25  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.10524313  0.02837360 -0.00026016 -0.00186596 -0.04212117  0.23536531 -0.10337560  0.00000007

 26  1     2    1  |1 1>-       0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.66598066 -0.20628746  0.00132495  0.01815395 -0.00525287  0.03257358 -0.01447749 -0.00000046

 27  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.02768850  0.01824110 -0.00060050  0.20803089  0.00909051  0.00159612 -0.00088508 -0.00000088

 28  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00010120 -0.00001666 -0.00261153 -0.00000622  0.00000792  0.00000058 -0.00000000  0.48543304

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00053308 -0.00009531 -0.01393579 -0.00003472  0.00000986 -0.00000266 -0.00000000 -0.09096866

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00171478 -0.00075906 -0.00001499  0.00704139  0.00031994 -0.00001622 -0.00000000 -0.00043163

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00713074 -0.00704802  0.00005358 -0.00076659  0.00015423  0.00002478 -0.00000000 -0.00003812

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00040735 -0.00008202 -0.00001145  0.00061694 -0.01394297 -0.00249234  0.00000001  0.00020996

 33  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00266560 -0.00682549  0.00004541 -0.00000556 -0.00010106  0.00051833 -0.00058860  0.00001044

 34  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00022856  0.00045427 -0.00000569  0.00008021 -0.00138273  0.00775872 -0.00862160 -0.00000071

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00035042 -0.00001138 -0.00001563  0.00683370  0.00030990 -0.00001476 -0.00000001  0.00002486

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.16305865

 37  1     1    1  |0 0>       -0.01202621  0.00353388  0.95505001  0.00790503 -0.00065873  0.00270523  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>        0.29269432  0.95507080 -0.00351537 -0.00198542  0.00512048  0.00048826 -0.00000000 -0.00000000
                               -0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00838496 -0.00535037  0.00213939 -0.16338987  0.94005944 -0.04194365  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.03649365  0.00105960 -0.00764747  0.94096961  0.16305950 -0.01146695  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00580630 -0.00072127 -0.00270399  0.00410488  0.04328558  0.95409749  0.00000001 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000007  0.00000001 -0.00000000 -0.00000000 -0.00000001  0.00000002  0.98339255 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.60175336
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000007 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00022960
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00043996
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>        0.00032226  0.00002444  0.00364270  0.00000855 -0.00000159  0.00000090  0.00000000 -0.00000003
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00862244  0.00364270 -0.00002445  0.00000555  0.00000353  0.00000607 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00112876 -0.00000575 -0.00000843  0.00363902  0.00016497 -0.00000786  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.00014136 -0.00000269  0.00000207 -0.00016500  0.00362383 -0.00033292 -0.00000005  0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00017332 -0.00000636 -0.00000069 -0.00000727  0.00033293  0.00362757  0.00000005  0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000003  0.00494014 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.00006034  0.00100153  0.00114808 -0.00007807  0.00849488 -0.00089541 -0.00010290  0.00646230
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000889  0.00014116 -0.00846293 -0.00001467  0.00115916  0.00642156  0.00044385  0.00090883
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000048  0.00000850  0.00076161 -0.00000034  0.00007539 -0.00058708 -0.00003752  0.00005329
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.16365300 -0.00966112 -0.00001716  0.09883858  0.00078949 -0.04576824  0.65488931  0.00424224
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000000

  5  1     5    1  |1 1>+       0.46502973  0.02816078  0.00004826 -0.28091920 -0.00267056 -0.01622924  0.23043124  0.00152856
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000

  6  1     6    1  |1 1>+       0.00014851  0.00000763 -0.02720869 -0.00009097 -0.00012091 -0.03788575 -0.00269789  0.00006702
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00035757  0.00558279 -0.25642993  0.00003282 -0.00451225 -0.34502433 -0.02416406  0.00465007
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.02579174 -0.42689772 -0.00449977 -0.00241567  0.25785891 -0.00479557  0.00221148 -0.34793758
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00012440 -0.00188939  0.44644326  0.00047519 -0.02889012 -0.26070679 -0.01812337 -0.01799962
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00164678 -0.02732002 -0.02889331  0.00411760 -0.44642305  0.01784280  0.00287340 -0.26133467
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00000000 -0.00000002  0.00003755  0.00000001 -0.00000012  0.00032515 -0.00013395  0.00006824
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.16276269 -0.00981535  0.00018999 -0.40809002 -0.00377629  0.00000062 -0.00000886 -0.00000013
                                0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00100167 -0.00006039 -0.00017343 -0.00849073 -0.00007920  0.00031731 -0.00645614 -0.00004037

 14  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00014024 -0.00000854  0.00074503 -0.00118877 -0.00000837  0.00062098 -0.00086683 -0.00000391

 15  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000814 -0.00000141  0.00853998 -0.00006900  0.00002956  0.00648891  0.00039864  0.00000345

 16  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.01955971 -0.32090353 -0.00068051 -0.00191937  0.19385492 -0.00010727 -0.00312421  0.52830070

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.02268493 -0.37422611 -0.00088057 -0.00216288  0.22605996  0.00017859  0.00292604 -0.45303189

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00013953  0.00027504  0.25647458  0.00008658  0.00096940 -0.34532944 -0.02409273 -0.00035030

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00598229  0.00041985 -0.02720505 -0.00361685 -0.00018990  0.03496055  0.00757702  0.00016182

 20  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000
                               -0.42687901 -0.02600115 -0.00047730  0.25787968  0.00254032  0.02473854 -0.34704858 -0.00202489

 21  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00186521  0.00011248  0.00002347  0.03046996  0.00028208 -0.00092032  0.01794095  0.00005524

 22  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000002  0.00000000
                                0.02732085  0.00164759 -0.00021010  0.44631206  0.00412993 -0.01825811  0.26070899  0.00162554

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00001193  0.00002419 -0.44736939 -0.00019337 -0.00158369 -0.26132592 -0.01827750 -0.00015792

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00981528 -0.16276276  0.00144297  0.00377694 -0.40808767  0.00000005 -0.00000007  0.00000087

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00014024  0.00001254 -0.00000008 -0.00117971  0.00016647 -0.00004649  0.00089551 -0.00012913

 26  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00100315 -0.00002765 -0.00000131  0.00846536 -0.00066617  0.00045136 -0.00642578  0.00052675

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00002912 -0.00101287  0.00003055 -0.00068281 -0.00854667 -0.00004142  0.00053794  0.00650370

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00016481 -0.00043888 -0.29271806 -0.00009832 -0.00103098  0.12787069  0.00898174  0.00008421

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00008931  0.00022303  0.05484784 -0.00005828  0.00011216  0.68238871  0.04761626  0.00030191

 30  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.07064373 -0.42183964 -0.00087666 -0.02958096  0.25620866  0.00269300 -0.03876386  0.34579816

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000
                                0.42179871  0.07063734  0.00016537 -0.25617789 -0.02957854  0.02391918 -0.34494493 -0.03885144

 32  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00590404  0.00094845 -0.00012451 -0.00358447 -0.00039033  0.00052572 -0.00444664 -0.00067587

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000002  0.00000000
                               -0.02732255 -0.00164999  0.00020792 -0.44632185 -0.00416769 -0.01827915  0.26070013  0.00164260

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00186532  0.00011263 -0.00001420  0.03047048  0.00028427  0.00059587 -0.01780597 -0.00012480

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00165379  0.02738580 -0.00158177 -0.00417794  0.44735243  0.00004252  0.00165447 -0.26195646

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00007099  0.00014372 -0.40810410 -0.00017663 -0.00144466 -0.00000426 -0.00000030 -0.00000004

 37  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000017 -0.00000000  0.00000000  0.01596487  0.00116475 -0.00008514
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00000007  0.00000000 -0.00000000  0.00000028  0.00000001  0.00116466 -0.01596503 -0.00004479
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000001  0.00002203  0.00007689  0.00201726
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000000  0.00000004  0.00000000  0.00000000 -0.00000007 -0.00008576  0.00004863 -0.01587970
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00007440 -0.00001654 -0.00006882
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00025567 -0.00042535  0.45965199  0.00019820  0.00170753  0.00000416  0.00000029  0.00000004
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.60066115  0.03622265 -0.00021399  0.45963570  0.00425326 -0.00000058  0.00000836  0.00000012
                               -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.03622241  0.60066046 -0.00170561 -0.00425406  0.45963245 -0.00000005  0.00000006 -0.00000067
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00000000  0.00000000  0.00000342  0.00000000 -0.00000002 -0.36772371 -0.02570753 -0.00021150
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00000010  0.00000001  0.00000000 -0.00000625 -0.00000012 -0.02570820  0.36771624  0.00228686
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000

 48  1    12    1  |0 0>        0.00000002 -0.00000019 -0.00000003 -0.00000008  0.00000123 -0.00005153 -0.00229597  0.36861127
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00000000 -0.00000000 -0.00000012 -0.00000006  0.00000000 -0.00018008 -0.00018756  0.00008567
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000000 -0.00000000 -0.00000003  0.00000004  0.00000000  0.00077516 -0.00004496  0.00003852
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.00010462 -0.00011496 -0.00021640  0.00096540 -0.00005798  0.00706632  0.00000001 -0.00000005
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00044363  0.00049111  0.00090826 -0.00703959 -0.00000733  0.00097464 -0.00000009 -0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00512977  0.00547854  0.01041880  0.00063373 -0.00000057  0.00006181  0.00000001 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00031515 -0.00016840 -0.00000005  0.00003294  0.08595396  0.00059553  0.00015397 -0.02400257
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00005284 -0.00021269 -0.00000002 -0.00009457 -0.24425772 -0.00206278  0.00035590  0.02580442
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.50523888  0.47287233  0.00000685 -0.02365713 -0.00006617 -0.00007071 -0.04472951 -0.00034110
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.05379989 -0.05088580 -0.00000072 -0.22296211  0.00014626 -0.00359976 -0.37568616  0.00249238
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00062966 -0.00070602 -0.00000001 -0.00358812 -0.00186041  0.22420553 -0.00401708 -0.20023862
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00016462 -0.00052401 -0.00004605 -0.43925225 -0.00019726  0.02906534 -0.00000330 -0.00000006
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00006823  0.00000711  0.00000283  0.02906594 -0.00360125  0.43923743  0.00000024 -0.00000082
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.20670876 -0.22083757  0.54847099 -0.00003702  0.00000000  0.00000018  0.00000006 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000008 -0.00000004 -0.00000000  0.00002024  0.21754383  0.00178227  0.00000000  0.00000007
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00101152 -0.00023335 -0.00143729 -0.00014824 -0.00706431 -0.00005818 -0.00000000 -0.00000000

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00724045  0.00168739  0.01031966  0.00061931 -0.00098941 -0.00000681  0.00000001 -0.00000000

 15  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00064840 -0.00013839 -0.00092948  0.00710521 -0.00006127  0.00001434  0.00000009  0.00000000

 16  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00009743 -0.00001681 -0.00000000 -0.00034793 -0.00148964  0.16855885 -0.00147202  0.63029233

 17  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00004797  0.00016809 -0.00000000 -0.00048142 -0.00167182  0.19656446 -0.00181845  0.40562409

 18  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.01685160  0.07079347  0.00000025  0.22299086 -0.00004574  0.00051925  0.50788255  0.00206552

 19  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.15691676  0.67405094  0.00000229 -0.02365517 -0.00313183 -0.00012745 -0.04901284 -0.00001276

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                                0.00235738  0.00952505  0.00000006 -0.00028954  0.22421147  0.00197122 -0.00013718  0.00487363

 21  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.29391693 -0.06844824  0.54719394 -0.00003978 -0.02998277 -0.00024571 -0.00000007  0.00000001

 22  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                               -0.02018803  0.00460199 -0.03735712 -0.00003858 -0.43917662 -0.00359802 -0.00000000  0.00000007

 23  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00017660 -0.00054756  0.00004614  0.44021236 -0.00004874  0.00091944  0.00000646  0.00000002

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000000 -0.00000000 -0.00045455 -0.00178222  0.21754302  0.00000001 -0.00000245

 25  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00216809 -0.00714120  0.01035902 -0.00000040 -0.00098134  0.00013954 -0.00000000 -0.00000000

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00030681 -0.00099827  0.00145075  0.00000195  0.00704235 -0.00056173 -0.00000000  0.00000001

 27  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00001971 -0.00006058  0.00008869  0.00001479 -0.00057563 -0.00711017 -0.00000000  0.00000010

 28  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00039713  0.00016707  0.00000000 -0.25451920  0.00005270 -0.00052708  0.76847441  0.00206736

 29  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00057856  0.00135942  0.00000000  0.04769765 -0.00007665  0.00002834 -0.07691347  0.00061297

 30  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00003065  0.00002956  0.00000000 -0.00045291 -0.02548351  0.22279020  0.00129668 -0.62903646

 31  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000
                               -0.00915668 -0.00273803  0.00000009 -0.00001497 -0.22277094 -0.02548104  0.00006235  0.03372399

 32  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.66586782  0.20220488 -0.00000464 -0.00011074 -0.00311701 -0.00033590 -0.00449144  0.00008070

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000
                               -0.00610772  0.01964305  0.03735741  0.00004078  0.43917470  0.00363499  0.00000000  0.00000036

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.08767588  0.28876579  0.54719839 -0.00000278 -0.02998257 -0.00024791  0.00000000 -0.00000002

 35  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00005703 -0.00002856  0.00000031  0.00091978  0.00364333 -0.44019653 -0.00000002  0.00000760

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000013  0.00000003 -0.00000000  0.21755205 -0.00002396  0.00045439  0.00000273  0.00000000

 37  1     1    1  |0 0>       -0.00002244  0.00007360  0.00000000  0.00000003  0.00000000  0.00000000  0.00000003 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00008199 -0.00000531  0.00000000  0.00000000 -0.00000010 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.01583696  0.00116731 -0.00000011  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00201678  0.00007872 -0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000005
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00116779  0.01596481  0.00000011 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000010 -0.00000007  0.01622624  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00000011 -0.00000002  0.00000000  0.63037057 -0.00007033  0.00142683  0.00000784  0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000009  0.00000005  0.00000000  0.00005864  0.63035172  0.00516427  0.00000000  0.00000022
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00142736 -0.00516414  0.63035074  0.00000002 -0.00000700
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>        0.00021310 -0.00076482  0.00000000 -0.00000008 -0.00000000  0.00000000  0.00000085  0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00017133 -0.00010327 -0.00000002  0.00000000 -0.00000106 -0.00000000 -0.00000000  0.00000016
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00008580  0.00004098  0.00000000  0.00000001  0.00000001 -0.00000069  0.00000000 -0.00000277
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.36847903 -0.00980200 -0.00000129  0.00000002  0.00000000  0.00000000  0.00000005 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>        0.00980128 -0.36847348  0.00000189  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000008  0.00000058  0.31136729 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+       0.00000000 -0.00000001 -0.00000001  0.00000008  0.00000000 -0.00030197  0.00000547  0.00228447
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000005 -0.00000000  0.00000001 -0.00000000  0.00227582  0.00000080  0.00030503
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00020611 -0.00000474  0.00002116
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.42110985  0.00800314  0.42646262  0.05360456  0.00007633  0.00010196 -0.37346186  0.00098450
                                0.00000001  0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.62657718  0.00787604  0.41892489  0.04225818 -0.00143807 -0.00003507 -0.13141629  0.00036743
                               -0.00000002  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00096905  0.06680073 -0.00065479  0.00152487  0.57366681 -0.02130016  0.00002191  0.00008119
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00017844  0.62096597 -0.01161751  0.00083047 -0.06504263 -0.19677593 -0.00003084  0.00404280
                                0.00000000  0.00000002  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.01654435 -0.00429867 -0.08273325  0.69719810 -0.00142785 -0.00402811 -0.00068904 -0.19792341
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00000001  0.00000726 -0.00000021  0.00000070 -0.00000009  0.58100609  0.00020882  0.03590791
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00000010 -0.00000063 -0.00000095  0.00000819  0.00000000 -0.03590818  0.00137502  0.58100745
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00000001  0.00000007 -0.00000003 -0.00000001 -0.00000027 -0.00031402 -0.00120258  0.00007664
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000190  0.00000001  0.00000076  0.00000006 -0.00000001 -0.00000000 -0.00000188  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000005 -0.00000000 -0.00000007 -0.00000001 -0.00000000 -0.00004793  0.00228214 -0.00000505

 14  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.00000000 -0.00000001 -0.00000000  0.00000001  0.00019837  0.00032240 -0.00000261

 15  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00229587  0.00001975 -0.00001478

 16  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.02784053 -0.00467921 -0.01968923  0.21880557  0.00030740  0.00193162  0.00061968  0.30053410

 17  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.02504003  0.01011102  0.06909807 -0.56299086  0.00042379 -0.00159733 -0.00066809 -0.25771754

 18  1     6    1  |1 0>        0.00000000 -0.00000002 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00016605  0.51930178 -0.01102824  0.00782147 -0.05747778 -0.19690047 -0.00011877  0.00119389

 19  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                               -0.00399090 -0.05620230 -0.00904390 -0.00216558 -0.57439905  0.02049237 -0.00334320 -0.00000159

 20  1     8    1  |1 0>        0.00000001 -0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.23265787  0.01205175  0.68766300  0.07768296 -0.00908764  0.00022665  0.19794195 -0.00039590

 21  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000003  0.00000008 -0.00000073 -0.00000007  0.00000238 -0.00048950  0.04033690 -0.00023802

 22  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000024 -0.00000020 -0.00001087 -0.00000126 -0.00000014 -0.00009117  0.58071211 -0.00137212

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000555 -0.00000013  0.00000008  0.00000010  0.58210134  0.00011497 -0.00374892

 24  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000015 -0.00000001 -0.00000018  0.00000119 -0.00000000 -0.00000003 -0.00000000  0.00000080

 25  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000288 -0.00031481 -0.00004666

 26  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000009 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000124  0.00227470  0.00019475

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000000  0.00000000  0.00000002  0.00000000  0.00001485 -0.00019933  0.00229613

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00029326  0.01868852 -0.00077744 -0.00050829  0.00614002  0.07292137 -0.00000714 -0.00046583

 29  1     5    1  |1 1>-      -0.00000000 -0.00000002 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00003794  0.57985223 -0.01178846  0.00977601 -0.00172992  0.38913309  0.00014016 -0.00256873

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.03846817  0.00841487  0.07815105 -0.36053958 -0.00016351  0.00137150  0.02135399  0.19680639

 31  1     7    1  |1 1>-      -0.00000002 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.61049538  0.00647054  0.38874434  0.09071949 -0.00771624 -0.00030771  0.19680328 -0.02135142

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                               -0.00778528  0.00118587  0.00600383  0.00168975  0.57727866  0.00016176  0.00211001 -0.00020611

 33  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000759 -0.00000015 -0.00000778 -0.00000103 -0.00000014 -0.00006977  0.58079815 -0.00142620

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000051 -0.00000016  0.00000054  0.00000006 -0.00000201  0.00080279 -0.03913742  0.00016489

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000039 -0.00000009 -0.00000039  0.00000447  0.00000001  0.00374858  0.00143503  0.58210475

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000075  0.00000001 -0.00000002  0.00000006  0.00000043  0.00000000  0.00000003

 37  1     1    1  |0 0>       -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000  0.01703852 -0.00004740 -0.00021084
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000006 -0.00000000 -0.00000015 -0.00000002  0.00000000  0.00004770  0.01703962  0.00001717
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000004  0.00004246 -0.00010401  0.00215409
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000000  0.00000000  0.00000001 -0.00000007 -0.00000000 -0.00020681  0.00000466 -0.01690180
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00006434 -0.00000244 -0.00007225
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00000000 -0.00000172  0.00000003 -0.00000005  0.00000016 -0.00000038 -0.00000000  0.00000002
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000602  0.00000004  0.00000235  0.00000018 -0.00000002  0.00000000  0.00000141  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000041 -0.00000004 -0.00000047  0.00000318 -0.00000001 -0.00000002 -0.00000001 -0.00000015
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00000000  0.00000481 -0.00000010  0.00000008  0.00000000  0.29470307  0.00006746 -0.00190648
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00000283 -0.00000012 -0.00000659 -0.00000081  0.00000001 -0.00007223  0.29470566 -0.00070092
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000011  0.00000010  0.00000059 -0.00000551  0.00000000 -0.00190619 -0.00070143 -0.29469400
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00000001 -0.00000004 -0.00000001 -0.00000001 -0.00000129  0.00010931 -0.00040225  0.00005727
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000000  0.00000010 -0.00000001  0.00000000  0.00000035 -0.00033375 -0.00034649 -0.00001410
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000001  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |1 1>+       0.00004184  0.00003640 -0.00131334  0.00001458 -0.01023958 -0.00130267  0.00000034 -0.00939923
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00017334 -0.00015459  0.01020074  0.00000081 -0.00132706  0.00936339 -0.00000011 -0.00131494
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00199662 -0.00174277 -0.00091653  0.00000023 -0.00009699 -0.00084341 -0.00000056 -0.00008083
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00054591  0.00039069 -0.00000235 -0.00580364 -0.00000086  0.00000713 -0.14957379 -0.00004351
                                0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000005  0.00000000

  5  1     5    1  |1 1>+       0.00010825  0.00023358  0.00000654  0.01649216  0.00002746 -0.00002601 -0.05263327 -0.00002352
                                0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000002  0.00000000

  6  1     6    1  |1 1>+       0.25891832 -0.29655088  0.00159732  0.00000444  0.00001786 -0.00836694 -0.00001031 -0.00000532
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.02752274  0.03168729  0.01505278 -0.00000857  0.00036673 -0.07883199  0.00000362 -0.00112048
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00040098  0.00043016  0.00036659  0.00002293 -0.01513685 -0.00111477 -0.00008962  0.07927619
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00021671 -0.00063383  0.32395858 -0.00000727 -0.01876660 -0.30337830  0.00000256  0.02066590
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00010455  0.00000143 -0.01876652  0.00045900 -0.32395935  0.02066640 -0.00001048  0.30337145
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.50636075 -0.44207589  0.00002730 -0.00000000  0.00000010 -0.00002261  0.00001833  0.00000777
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000005 -0.00000005  0.00009076  0.87136858  0.00122933  0.00000000  0.00000269 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000086 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00034928  0.00011593  0.00021467  0.01022546  0.00001663 -0.00019623  0.00939897  0.00000025

 14  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00248360 -0.00084993 -0.00089636  0.00143216 -0.00000721  0.00082399  0.00131677  0.00000048

 15  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00022310  0.00007384 -0.01028392  0.00008877 -0.00010581  0.00945326  0.00008033  0.00000138

 16  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00007556  0.00001969  0.00011693  0.00002339 -0.01138035  0.00001640 -0.00003439 -0.12036848

 17  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00009360 -0.00010166  0.00014148  0.00002286 -0.01327074  0.00000963 -0.00002522  0.10321948

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01357004 -0.03929436 -0.01505591  0.00000319 -0.00015872 -0.07884039 -0.00000707  0.00001789

 19  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.12735769 -0.37250763  0.00159714  0.00021147  0.00002029  0.00836088 -0.00111402 -0.00004950

 20  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000003  0.00000000
                               -0.00206867 -0.00542208  0.00001946 -0.01513947 -0.00003025  0.00011047  0.07927564 -0.00002811

 21  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.63449143 -0.21702220  0.00002955  0.02210253  0.00003146  0.00002919 -0.02072667 -0.00001076

 22  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000032  0.00000000 -0.00000000 -0.00000010 -0.00000000
                               -0.04416203  0.01419682  0.00003205  0.32375060  0.00045673 -0.00000510 -0.30337203 -0.00000957

 23  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00022002 -0.00068794 -0.32448560  0.00003870 -0.00334242 -0.30408125  0.00000310 -0.00004525

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00897538 -0.00122833  0.87132235 -0.00000001  0.00000000  0.00000068

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00050791  0.00258592  0.00000235  0.00141904 -0.00021160  0.00000017 -0.00130399  0.00019623

 26  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00007445  0.00035968 -0.00001030 -0.01018779  0.00088213  0.00000025  0.00936325 -0.00082379

 27  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000359  0.00002219 -0.00010584  0.00090299  0.01028521  0.00000140 -0.00084301 -0.00945327

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00020939 -0.00004679  0.01718340 -0.00000371  0.00017671  0.02920607 -0.00000904  0.00000283

 29  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00021765 -0.00042667 -0.00322013  0.00000523 -0.00002838  0.15585077  0.00002377  0.00004818

 30  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00004588 -0.00002944  0.00015422  0.00161860 -0.01505382  0.00005518  0.00836681 -0.07884093

 31  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000003  0.00000000
                                0.00514154  0.00086038 -0.00001194  0.01505304  0.00161843 -0.00005286  0.07883224  0.00836627

 32  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.38844303 -0.07636596  0.00000730  0.00021063  0.00002132  0.00005640  0.00109419  0.00010508

 33  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000032 -0.00000000 -0.00000000 -0.00000010 -0.00000000
                               -0.00967301  0.04430753 -0.00003344 -0.32374553 -0.00048399 -0.00000373 -0.30337320 -0.00003562

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000001 -0.00000000
                               -0.12930845  0.65807380  0.00000229  0.02210225  0.00003286 -0.00000662  0.02070839  0.00000475

 35  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00011863 -0.00004168 -0.00334248 -0.00048473  0.32448363 -0.00004525 -0.00003586  0.30407415

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000  0.87132321 -0.00010342  0.00897523 -0.00000048  0.00000000 -0.00000001

 37  1     1    1  |0 0>        0.00001450 -0.00006386 -0.00000002 -0.00000000  0.00000000 -0.00003290  0.00000010 -0.00000020
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00010257  0.00000014 -0.00000000  0.00000003  0.00000000 -0.00000010 -0.00003287  0.00000011
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.01689661  0.00045859 -0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000017  0.00000414
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00215170  0.00013206  0.00000000  0.00000000  0.00000000  0.00000020 -0.00000009 -0.00003252
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00047163 -0.01703308  0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000003 -0.00000014
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000002  0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000002  0.00000000  0.17067878 -0.00002030  0.00178796  0.00000014 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000003 -0.00000003  0.00001778  0.17068890  0.00024081  0.00000000  0.00000016 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000017 -0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000000 -0.00178800 -0.00024061  0.17067963  0.00000000 -0.00000000  0.00000022
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00008385 -0.00034089  0.00000015 -0.00000000  0.00000002  0.88157529  0.00001884  0.00015648
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00042701 -0.00031569 -0.00000000 -0.00000097 -0.00000000 -0.00001885  0.88157662  0.00002899
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000030 -0.00000000

 48  1    12    1  |0 0>       -0.00005560  0.00002125  0.00000002  0.00000000 -0.00000007 -0.00015649 -0.00002899  0.88157966
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.29386745  0.02181714 -0.00000000  0.00000003  0.00000000  0.00000496 -0.00004491 -0.00001286
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.02181555 -0.29385610  0.00000000 -0.00000003 -0.00000000 -0.00002194 -0.00002873  0.00000017
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.00000115  0.00000127 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51

  1  1     1    1  |1 1>+      -0.00015876 -0.00016216 -0.00020669
                                0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00066508  0.00068063  0.00086749
                                0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00763038  0.00780566  0.00995111
                                0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00000980 -0.00000134 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00003306 -0.00003616 -0.00000000
                               -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.11275851  0.11023007 -0.00000159
                               -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.01196203 -0.01169478  0.00000017
                                0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00015920 -0.00015325  0.00000000
                               -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00002326  0.00001552  0.00001511
                               -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00000767 -0.00000060 -0.00000093
                               -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.24542502 -0.25105488 -0.17990637
                               -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.00000001  0.00000001  0.00000000
                                0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000
                                0.00145932 -0.00037300 -0.00137274

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                               -0.01047438  0.00267971  0.00985623

 15  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000
                                0.00094336 -0.00024118 -0.00088773

 16  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00000793 -0.00001705  0.00000000

 17  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                                0.00001570  0.00004941 -0.00000000

 18  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                                0.00414666  0.01620572 -0.00000009

 19  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000
                                0.03907729  0.15275336 -0.00000080

 20  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000
                                0.00055079  0.00213907 -0.00000001

 21  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000
                                0.33934974 -0.08681344 -0.17948693

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000
                               -0.02318308  0.00591972  0.01225364

 23  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000
                                0.00003065 -0.00001291 -0.00001513

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000

 25  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                                0.00292761 -0.01045068  0.00989415

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                                0.00041047 -0.00146337  0.00138565

 27  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000
                                0.00002474 -0.00008951  0.00008471

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                               -0.00007427 -0.00002021 -0.00000000

 29  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000
                               -0.00004290 -0.00000886 -0.00000000

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000
                               -0.00001606 -0.00000384  0.00000000

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000
                               -0.00213040 -0.00059620 -0.00000001

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                                0.15267748  0.04277317  0.00000090

 33  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000
                               -0.00646629  0.02301912 -0.01225384

 34  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                               -0.09448825  0.33727972 -0.17949004

 35  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                                0.00000904  0.00000050 -0.00000010

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000

 37  1     1    1  |0 0>        0.00000003 -0.00000008 -0.00000000
                               -0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000015  0.00000002  0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00003215 -0.00000165  0.00000001
                               -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000410 -0.00000007  0.00000000
                               -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000167 -0.00003225 -0.00000002
                                0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000007 -0.00000007 -0.00633373
                                0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00000507  0.00002192 -0.00000000
                                0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00004476  0.00002895 -0.00000000
                                0.00000000  0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00001287 -0.00000012  0.00000000
                               -0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>        0.88158093  0.00433826 -0.00000067
                                0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00433825  0.88158675  0.00000052
                               -0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000081 -0.00000059  0.95003241
                                0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.01%    0.06%   49.27%    0.63%    0.01%    0.01%    0.04%   44.76%
  2  1     2    1  |1 1>+         0.24%   49.52%    0.05%    0.02%    0.41%    0.01%   45.27%    0.03%
  3  1     3    1  |1 1>+        31.97%    0.38%    0.02%    0.00%   56.28%    4.08%    0.29%    0.01%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.61%    0.00%    0.65%   48.39%    0.35%    0.66%    0.00%    0.78%
 14  1     2    1  |1 0>         31.36%    0.39%    0.00%    0.94%   29.87%   29.41%    0.43%    0.02%
 15  1     3    1  |1 0>          0.25%   49.04%    0.54%    0.00%    0.22%    0.33%   43.91%    1.24%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-        31.60%    0.00%    0.00%    0.96%    3.89%   55.51%    0.02%    0.00%
 26  1     2    1  |1 1>-         0.62%    0.00%    0.03%   48.98%    0.20%    1.22%    0.03%    0.10%
 27  1     3    1  |1 1>-         0.00%    0.55%   49.39%    0.03%    0.00%    0.01%    1.24%   44.29%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.46%    0.25%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.15%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    6.75%    1.86%    0.00%    0.11%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.09%    0.03%    0.26%    8.21%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.88%    6.84%    0.00%    0.00%
 42  1     6    1  |0 0>          3.26%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 51  1    15    1  |0 0>          0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.81%    0.00%    0.08%    4.27%    0.02%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.01%    0.00%    4.26%    0.09%    0.02%    0.02%    0.01%    0.00%
  3  1     3    1  |1 1>+         0.05%    0.00%    0.03%    0.01%    3.37%    2.40%    1.08%    0.00%
  4  1     4    1  |1 1>+         0.02%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.20%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   18.09%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>         44.11%    4.28%    0.00%    0.00%    0.10%    0.01%    0.02%    0.00%
 14  1     2    1  |1 0>          0.68%    0.09%    0.03%    0.01%    5.00%    0.66%    1.06%    0.00%
 15  1     3    1  |1 0>          0.03%    0.00%    4.33%    0.00%    0.04%    0.01%    0.01%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   18.09%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.20%
 20  1     8    1  |1 0>          0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.08%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         1.11%    0.08%    0.00%    0.00%    0.18%    5.54%    1.07%    0.00%
 26  1     2    1  |1 1>-        44.35%    4.26%    0.00%    0.03%    0.00%    0.11%    0.02%    0.00%
 27  1     3    1  |1 1>-         0.08%    0.03%    0.00%    4.33%    0.01%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.56%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.83%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.66%
 37  1     1    1  |0 0>          0.01%    0.00%   91.21%    0.01%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          8.57%   91.22%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.01%    0.00%    0.00%    2.67%   88.37%    0.18%    0.00%    0.00%
 40  1     4    1  |0 0>          0.13%    0.00%    0.01%   88.54%    2.66%    0.01%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.19%   91.03%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.71%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   36.21%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         2.68%    0.01%    0.00%    0.98%    0.00%    0.21%   42.89%    0.00%
  5  1     5    1  |1 1>+        21.63%    0.08%    0.00%    7.89%    0.00%    0.03%    5.31%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.07%    0.00%    0.00%    0.14%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    6.58%    0.00%    0.00%   11.90%    0.06%    0.00%
  8  1     8    1  |1 1>+         0.07%   18.22%    0.00%    0.00%    6.65%    0.00%    0.00%   12.11%
  9  1     9    1  |1 1>+         0.00%    0.00%   19.93%    0.00%    0.08%    6.80%    0.03%    0.03%
 10  1    10    1  |1 1>+         0.00%    0.07%    0.08%    0.00%   19.93%    0.03%    0.00%    6.83%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         2.65%    0.01%    0.00%   16.65%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.04%   10.30%    0.00%    0.00%    3.76%    0.00%    0.00%   27.91%
 17  1     5    1  |1 0>          0.05%   14.00%    0.00%    0.00%    5.11%    0.00%    0.00%   20.52%
 18  1     6    1  |1 0>          0.00%    0.00%    6.58%    0.00%    0.00%   11.93%    0.06%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.07%    0.00%    0.00%    0.12%    0.01%    0.00%
 20  1     8    1  |1 0>         18.22%    0.07%    0.00%    6.65%    0.00%    0.06%   12.04%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.03%    0.00%
 22  1    10    1  |1 0>          0.07%    0.00%    0.00%   19.92%    0.00%    0.03%    6.80%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%   20.01%    0.00%    0.00%    6.83%    0.03%    0.00%
 24  1    12    1  |1 0>          0.01%    2.65%    0.00%    0.00%   16.65%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    8.57%    0.00%    0.00%    1.64%    0.01%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.30%    0.00%    0.00%   46.57%    0.23%    0.00%
 30  1     6    1  |1 1>-         0.50%   17.79%    0.00%    0.09%    6.56%    0.00%    0.15%   11.96%
 31  1     7    1  |1 1>-        17.79%    0.50%    0.00%    6.56%    0.09%    0.06%   11.90%    0.15%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.07%    0.00%    0.00%   19.92%    0.00%    0.03%    6.80%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.03%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.07%    0.00%    0.00%   20.01%    0.00%    0.00%    6.86%
 36  1    12    1  |1 1>-         0.00%    0.00%   16.65%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%   21.13%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>         36.08%    0.13%    0.00%   21.13%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.13%   36.08%    0.00%    0.00%   21.13%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   13.52%    0.07%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.07%   13.52%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   13.59%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.74%    0.00%    0.00%    0.06%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    5.97%    0.00%    0.00%    0.07%
  6  1     6    1  |1 1>+        25.53%   22.36%    0.00%    0.06%    0.00%    0.00%    0.20%    0.00%
  7  1     7    1  |1 1>+         0.29%    0.26%    0.00%    4.97%    0.00%    0.00%   14.11%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    5.03%    0.00%    4.01%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%   19.29%    0.00%    0.08%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.08%    0.00%   19.29%    0.00%    0.00%
 11  1    11    1  |1 1>+         4.27%    4.88%   30.08%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    4.73%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    2.84%    0.00%   39.73%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    3.86%    0.00%   16.45%
 18  1     6    1  |1 0>          0.03%    0.50%    0.00%    4.97%    0.00%    0.00%   25.79%    0.00%
 19  1     7    1  |1 0>          2.46%   45.43%    0.00%    0.06%    0.00%    0.00%    0.24%    0.00%
 20  1     8    1  |1 0>          0.00%    0.01%    0.00%    0.00%    5.03%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          8.64%    0.47%   29.94%    0.00%    0.09%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.04%    0.00%    0.14%    0.00%   19.29%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%   19.38%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    4.73%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    6.48%    0.00%    0.00%   59.06%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.23%    0.00%    0.00%    0.59%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.06%    4.96%    0.00%   39.57%
 31  1     7    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    4.96%    0.06%    0.00%    0.11%
 32  1     8    1  |1 1>-        44.34%    4.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.04%    0.14%    0.00%   19.29%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.77%    8.34%   29.94%    0.00%    0.09%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   19.38%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    4.73%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   39.74%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   39.73%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   39.73%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>         13.58%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.01%   13.58%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    9.69%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+        17.73%    0.01%   18.19%    0.29%    0.00%    0.00%   13.95%    0.00%
  5  1     5    1  |1 1>+        39.26%    0.01%   17.55%    0.18%    0.00%    0.00%    1.73%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.45%    0.00%    0.00%   32.91%    0.05%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%   38.56%    0.01%    0.00%    0.42%    3.87%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.03%    0.00%    0.68%   48.61%    0.00%    0.00%    0.00%    3.92%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.76%    0.00%    0.13%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%   33.76%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.08%    0.00%    0.04%    4.79%    0.00%    0.00%    0.00%    9.03%
 17  1     5    1  |1 0>          0.06%    0.01%    0.48%   31.70%    0.00%    0.00%    0.00%    6.64%
 18  1     6    1  |1 0>          0.00%   26.97%    0.01%    0.01%    0.33%    3.88%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.32%    0.01%    0.00%   32.99%    0.04%    0.00%    0.00%
 20  1     8    1  |1 0>          5.41%    0.01%   47.29%    0.60%    0.01%    0.00%    3.92%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.16%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.72%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.88%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.03%    0.00%    0.00%    0.00%    0.53%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%   33.62%    0.01%    0.01%    0.00%   15.14%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.15%    0.01%    0.61%   13.00%    0.00%    0.00%    0.05%    3.87%
 31  1     7    1  |1 1>-        37.27%    0.00%   15.11%    0.82%    0.01%    0.00%    3.87%    0.05%
 32  1     8    1  |1 1>-         0.01%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.73%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.15%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.88%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    8.68%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.69%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.68%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.01%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.24%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.28%    0.00%
  6  1     6    1  |1 1>+         6.70%    8.79%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.08%    0.10%    0.02%    0.00%    0.00%    0.62%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.63%
  9  1     9    1  |1 1>+         0.00%    0.00%   10.49%    0.00%    0.04%    9.20%    0.00%    0.04%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.04%    0.00%   10.49%    0.04%    0.00%    9.20%
 11  1    11    1  |1 1>+        25.64%   19.54%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%   75.93%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    1.45%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    1.07%
 18  1     6    1  |1 0>          0.02%    0.15%    0.02%    0.00%    0.00%    0.62%    0.00%    0.00%
 19  1     7    1  |1 0>          1.62%   13.88%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.63%    0.00%
 21  1     9    1  |1 0>         40.26%    4.71%    0.00%    0.05%    0.00%    0.00%    0.04%    0.00%
 22  1    10    1  |1 0>          0.20%    0.02%    0.00%   10.48%    0.00%    0.00%    9.20%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%   10.53%    0.00%    0.00%    9.25%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.01%    0.00%   75.92%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.01%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.09%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    2.43%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.01%    0.62%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.62%    0.01%
 32  1     8    1  |1 1>-        15.09%    0.58%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.01%    0.20%    0.00%   10.48%    0.00%    0.00%    9.20%    0.00%
 34  1    10    1  |1 1>-         1.67%   43.31%    0.00%    0.05%    0.00%    0.00%    0.04%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   10.53%    0.00%    0.00%    9.25%
 36  1    12    1  |1 1>-         0.00%    0.00%   75.92%    0.00%    0.01%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    2.91%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    2.91%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.91%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   77.72%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   77.72%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   77.72%
 49  1    13    1  |0 0>          8.64%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.05%    8.64%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.01%    0.01%    0.01%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         1.27%    1.22%    0.00%
  7  1     7    1  |1 1>+         0.01%    0.01%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         6.02%    6.30%    3.24%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.01%    0.00%    0.01%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.03%    0.00%
 19  1     7    1  |1 0>          0.15%    2.33%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%
 21  1     9    1  |1 0>         11.52%    0.75%    3.22%
 22  1    10    1  |1 0>          0.05%    0.00%    0.02%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.01%    0.01%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         2.33%    0.18%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.05%    0.02%
 34  1    10    1  |1 1>-         0.89%   11.38%    3.22%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%
 49  1    13    1  |0 0>         77.72%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%   77.72%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   90.26%


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

              2       7     1460.89       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     76117.08  69227.75   3234.88   3651.42      2.02      0.06      0.62
 REAL TIME  *     76979.24 SEC
 DISK USED  *         1.46 GB (local),       17.60 GB (total)
 SF USED    *         7.72 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -213.851972501690

              CI              CI           MULTI         RHF-SCF
   -213.80003554   -213.81860369   -213.14968089   -213.37363633
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
