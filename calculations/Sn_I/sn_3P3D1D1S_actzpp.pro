
 Working directory              : /wrk/irikura/molpro.W8IeyobRuV/
 Global scratch directory       : /wrk/irikura/molpro.W8IeyobRuV/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.W8IeyobRuV/

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
 
 NTRIP=8
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
  (32 PROC) 64 bit mpp version                                                           DATE: 17-Apr-24          TIME: 10:10:55  
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
 CPU TIMES  *         0.85      0.66
 REAL TIME  *         1.65 SEC
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
   7     -213.37363632      -0.00000007     0.31D-05     0.20D-04     6     0       0.00      0.02    diag2
   8     -213.37363633      -0.00000001     0.80D-06     0.12D-04     7     0       0.01      0.03    fixocc
   9     -213.37363633      -0.00000000     0.93D-07     0.15D-05     8     0       0.00      0.03    diag2
  10     -213.37363633      -0.00000000     0.15D-07     0.14D-06     0     0       0.00      0.03    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -213.373636325728
  RHF One-electron energy            -381.086680443693
  RHF Two-electron energy             167.713044117965
  RHF Kinetic energy                   82.648105638679
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.581712365660

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.62699     1  1  s    1.00568
    2.1     2.00000    -1.07683     1  1  d2-  0.87032    1  1  d2+  0.48770
    3.1     2.00000    -1.07683     1  1  d2- -0.48876    1  1  d2+  0.87210
    4.1     2.00000    -1.07683     1  1  d1+  0.76670    1  1  d1-  0.64156
    5.1     2.00000    -1.07683     1  1  d1+ -0.64007    1  1  d1-  0.76526
    6.1     2.00000    -1.07683     1  1  d0   0.99973
    7.1     2.00000    -0.29333     1  2  s    0.97876
    1.2     2.00000    -3.81329     1  1  px   1.00021
    2.2     2.00000    -3.81329     1  1  py   0.99997
    3.2     2.00000    -3.81329     1  1  pz   1.00006
    4.2     1.00000    -0.05728     1  2  pz   0.79435
    5.2     1.00000    -0.05728     1  2  py   0.79466
    6.2     1.00000    -0.05728     1  2  px   0.79499


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
 CPU TIMES  *         0.89      0.04      0.66
 REAL TIME  *         2.13 SEC
 DISK USED  *        30.07 MB (local),      417.26 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         8.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      80 (   40   40)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             8
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.399D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.362D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.458D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.488D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.100D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 6 2 1 1 2 3   5 4 6 1 2 5 3 6 4 1   2 6 4 3 5 2 3 5 6 4   1 8121514131011 9 7
                                        2 6 4 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.288D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.411D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.354D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.639D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.386D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.284D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 1 2 3   1 2 7 9 4 5 6 810 6   4 5 810 9 7 3 1 2 8  10 6 9 7 4 5 3 1 2 6
                                        810 9 7 4 5 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.07143   0.07143   0.07143   0.07143   0.07143   0.07143   0.07143   0.07143
 Weight factors for state symmetry  2:    0.07143   0.07143   0.07143   0.07143   0.07143   0.07143
 
 Number of orbital rotations:  664  ( 24 closed/active, 360 closed/virtual, 0 active/active, 280 active/virtual )
 Total number of variables:    3310
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0   -213.23961338    -213.26399540   -0.02438202    0.13162092 0.00067586 0.00000000  0.63E+00      0.45
   2   11   20    0   -213.26342848    -213.26345270   -0.00002422    0.00616877 0.00000346 0.00000000  0.34E-01      1.10
   3    7   14    0   -213.26345276    -213.26345276   -0.00000000    0.00001754 0.00000001 0.00000000  0.78E-03      1.58
   4    2    4    0   -213.26345276    -213.26345276   -0.00000000    0.00000001 0.00000001 0.00000000  0.31E-06      1.77

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.36E-08)
                       Final energy:   -213.26345276
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -213.345029845126
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.71714850
 One electron energy                          -376.39060992
 Two electron energy                           163.04558008
 Virial ratio                                    3.57921161
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -213.345029844208
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.71714850
 One electron energy                          -376.39060986
 Two electron energy                           163.04558002
 Virial ratio                                    3.57921161
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -213.345029843456
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.71714846
 One electron energy                          -376.39060968
 Two electron energy                           163.04557984
 Virial ratio                                    3.57921161
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -213.163625293042
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32714361
 One electron energy                          -372.18883331
 Two electron energy                           159.02520801
 Virial ratio                                    3.58922654
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -213.163625291084
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32714365
 One electron energy                          -372.18883351
 Two electron energy                           159.02520822
 Virial ratio                                    3.58922654
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -213.163625286053
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32714375
 One electron energy                          -372.18883410
 Two electron energy                           159.02520882
 Virial ratio                                    3.58922654
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -213.163625276698
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32714393
 One electron energy                          -372.18883512
 Two electron energy                           159.02520984
 Virial ratio                                    3.58922653
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -213.163625276182
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.32714394
 One electron energy                          -372.18883518
 Two electron energy                           159.02520991
 Virial ratio                                    3.58922653
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -213.310712533158
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.66361548
 One electron energy                          -376.08988358
 Two electron energy                           162.77917105
 Virial ratio                                    3.58046677
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -213.310712533157
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.66361547
 One electron energy                          -376.08988357
 Two electron energy                           162.77917104
 Virial ratio                                    3.58046677
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -213.310712532383
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.66361556
 One electron energy                          -376.08988406
 Two electron energy                           162.77917152
 Virial ratio                                    3.58046676
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -213.310712532323
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.66361554
 One electron energy                          -376.08988390
 Two electron energy                           162.77917137
 Virial ratio                                    3.58046676
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -213.310712532084
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.66361558
 One electron energy                          -376.08988411
 Two electron energy                           162.77917157
 Virial ratio                                    3.58046676
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -213.281560013634
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.61260372
 One electron energy                          -375.72541808
 Two electron energy                           162.44385806
 Virial ratio                                    3.58170727
 
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
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.122467662966
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999999999994
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.999999999996
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.877532147481
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.995853367778
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000007
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999999969
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.004146435532
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.535552765660
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999999999978
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000000004
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.464446881851
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.113549773455
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999999345
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000687
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     2.886452965484
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     2.341979571361
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000014
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999999963
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.658020970664
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.890596858767
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000648
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999999345
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.109400598984
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     5.999999999987
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     5.999999999986
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     5.999999999967
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     5.999999999996
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     5.999999999996
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 5 2 6 1 1 6 3   5 2 4 1 6 3 5 2 4 1   3 5 4 2 6 4 3 5 2 6   11310 91415 812 711
                                        4 5 3 2 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 2   3 1 7 9 5 810 6 4 9   7 4 810 6 5 2 3 1 9   7 4 810 6 5 1 3 2 9
                                        7 4 810 6 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.92061     1  1  s    1.00427
    2.1     2.00000    -1.37016     1  1  d1+  1.00061
    3.1     2.00000    -1.37016     1  1  d2-  1.00061
    4.1     2.00000    -1.37016     1  1  d2+  1.00061
    5.1     2.00000    -1.37016     1  1  d0   1.00061
    6.1     2.00000    -1.37016     1  1  d1-  1.00061
    7.1     1.95595    -0.54912     1  2  s    1.05033
    1.2     2.00000    -4.10641     1  1  px   0.99974
    2.2     2.00000    -4.10641     1  1  pz   0.99974
    3.2     2.00000    -4.10641     1  1  py   0.99974
    4.2     0.55993    -0.09550     1  2  py   1.00850
    5.2     0.55993    -0.09550     1  2  pz   1.00850
    6.2     0.55993    -0.09550     1  2  px   1.00850
    7.2     0.12142     0.06334     1  2  px  -0.64070    1  7  px   1.16367
    8.2     0.12142     0.06334     1  2  pz  -0.64070    1  7  pz   1.16367
    9.2     0.12142     0.06334     1  2  py  -0.64070    1  7  py   1.16367
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aa0000       0.00000001      0.00000002      0.99095059     -0.00000000      0.00000000      0.00000000      0.00000009
 2 a0a000      -0.00000050      0.99095059     -0.00000002      0.00000000      0.00000000      0.00000025     -0.00000000
 2 0aa000       0.99095059      0.00000050     -0.00000001      0.00000000      0.00000016     -0.00000000     -0.00000000
 2 00aa00      -0.00000000     -0.00000000      0.00000000      0.79353523     -0.00000161     -0.00000028     -0.00000000
 2 a0000a      -0.00000000     -0.00000000      0.00000000     -0.27463442      0.00000075      0.00000023     -0.00000000
 2 a00a00       0.00000001     -0.02486309      0.00000000      0.00000023      0.00000086      0.69799110     -0.00000000
 2 0a0a00      -0.02486309     -0.00000001      0.00000000      0.00000139      0.69799040     -0.00000086     -0.00000000
 2 a000a0      -0.00000000     -0.00000000     -0.02486293      0.00000000      0.00000000      0.00000000      0.69798986
 2 0a000a       0.00000000      0.00000000      0.02486284      0.00000000      0.00000000      0.00000000      0.69798847
 2 00a0a0       0.02486294      0.00000001     -0.00000000      0.00000139      0.69798793     -0.00000086     -0.00000000
 2 00a00a      -0.00000001      0.02486284     -0.00000000      0.00000023      0.00000086      0.69798723     -0.00000000
 2 0a00a0       0.00000000      0.00000000      0.00000000     -0.51889838      0.00000087      0.00000006      0.00000000
 0 2aa000      -0.11245480     -0.00000006      0.00000000     -0.00000000     -0.00000001      0.00000000      0.00000000
 0 a2a000       0.00000006     -0.11245479      0.00000000     -0.00000000     -0.00000000     -0.00000002      0.00000000
 0 aa2000      -0.00000000     -0.00000000     -0.11245479     -0.00000000      0.00000000     -0.00000000     -0.00000001
 0 20aa00       0.00000000      0.00000000     -0.00000000     -0.08398616      0.00000017      0.00000003      0.00000000
 0 02aa00       0.00000000      0.00000000     -0.00000000     -0.08370176      0.00000017      0.00000003      0.00000000
 0 a0200a       0.00000000      0.00000000     -0.00000000      0.02825350     -0.00000008     -0.00000002      0.00000000
 0 a2000a       0.00000000      0.00000000      0.00000000      0.02978156     -0.00000008     -0.00000002      0.00000000
 0 a20a00      -0.00000000      0.00492811     -0.00000000     -0.00000002     -0.00000009     -0.07415522      0.00000000
 0 2a0a00       0.00492811      0.00000000     -0.00000000     -0.00000015     -0.07415515      0.00000009      0.00000000
 0 a020a0       0.00000000      0.00000000      0.00492809     -0.00000000     -0.00000000     -0.00000000     -0.07415508
 0 0a200a      -0.00000000     -0.00000000     -0.00492808     -0.00000000     -0.00000000     -0.00000000     -0.07415493
 0 20a0a0      -0.00492809     -0.00000000      0.00000000     -0.00000015     -0.07415488      0.00000009      0.00000000
 0 02a00a       0.00000000     -0.00492808      0.00000000     -0.00000002     -0.00000009     -0.07415480      0.00000000
 0 a02a00       0.00000001     -0.02612893      0.00000000     -0.00000002     -0.00000009     -0.07334255      0.00000000
 0 0a2a00      -0.02612893     -0.00000001      0.00000000     -0.00000015     -0.07334247      0.00000009      0.00000000
 0 a200a0      -0.00000000     -0.00000000     -0.02612896     -0.00000000     -0.00000000     -0.00000000     -0.07334242
 0 2a000a       0.00000000      0.00000000      0.02612897     -0.00000000     -0.00000000     -0.00000000     -0.07334228
 0 02a0a0       0.02612896      0.00000001     -0.00000000     -0.00000015     -0.07334221      0.00000009      0.00000000
 0 20a00a      -0.00000001      0.02612897     -0.00000000     -0.00000002     -0.00000009     -0.07334214      0.00000000
 0 0a20a0      -0.00000000     -0.00000000     -0.00000000      0.05420433     -0.00000009     -0.00000001     -0.00000000
 0 2a00a0      -0.00000000     -0.00000000      0.00000000      0.05544800     -0.00000009     -0.00000001     -0.00000000
 
 Energy:     -213.34502985   -213.34502984   -213.34502984   -213.16362529   -213.16362529   -213.16362529   -213.16362528

 State:              8
 2 aa0000       0.00000000
 2 a0a000      -0.00000000
 2 0aa000      -0.00000000
 2 00aa00      -0.14102634
 2 a0000a       0.75773342
 2 a00a00      -0.00000013
 2 0a0a00      -0.00000019
 2 a000a0       0.00000000
 2 0a000a       0.00000000
 2 00a0a0      -0.00000019
 2 00a00a      -0.00000013
 2 0a00a0      -0.61670850
 0 2aa000       0.00000000
 0 a2a000       0.00000000
 0 aa2000      -0.00000000
 0 20aa00       0.01410054
 0 02aa00       0.01570080
 0 a0200a      -0.08033809
 0 a2000a      -0.07978427
 0 a20a00       0.00000001
 0 2a0a00       0.00000002
 0 a020a0      -0.00000000
 0 0a200a      -0.00000000
 0 20a0a0       0.00000002
 0 02a00a       0.00000001
 0 a02a00       0.00000001
 0 0a2a00       0.00000002
 0 a200a0      -0.00000000
 0 2a000a      -0.00000000
 0 02a0a0       0.00000002
 0 20a00a       0.00000001
 0 0a20a0       0.06568387
 0 2a00a0       0.06463746
 
 Energy:     -213.16362528
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 002000      -0.02603406     -0.00000154     -0.00000001     -0.00000568      0.80816276      0.56024592
 2 020000       0.71290652      0.00004218     -0.00000137      0.00000008     -0.38153527      0.56024585
 2 0ab000       0.00000138     -0.00000000      0.70025256     -0.00001029      0.00000005      0.00000000
 2 0ba000      -0.00000138      0.00000000     -0.70025256      0.00001029     -0.00000005     -0.00000000
 2 b0a000      -0.00000260      0.00000000     -0.00001029     -0.70025256     -0.00000500     -0.00000000
 2 a0b000       0.00000260     -0.00000000      0.00001029      0.70025256      0.00000500      0.00000000
 2 ba0000       0.00004143     -0.70025255     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 ab0000      -0.00004143      0.70025255      0.00000000      0.00000000      0.00000000      0.00000000
 2 200000      -0.68687247     -0.00004064      0.00000138      0.00000560     -0.42662757      0.56024582
 0 202000       0.08066430      0.00000477     -0.00000016      0.00000001     -0.04317014     -0.12213833
 0 022000      -0.07771858     -0.00000460      0.00000016      0.00000063     -0.04827226     -0.12213833
 0 220000      -0.00294572     -0.00000017     -0.00000000     -0.00000064      0.09144241     -0.12213832
 0 2ba000       0.00000016     -0.00000000      0.07923253     -0.00000116      0.00000001      0.00000000
 0 2ab000      -0.00000016      0.00000000     -0.07923253      0.00000116     -0.00000001     -0.00000000
 0 a2b000      -0.00000029      0.00000000     -0.00000116     -0.07923252     -0.00000057     -0.00000000
 0 b2a000       0.00000029     -0.00000000      0.00000116      0.07923252      0.00000057      0.00000000
 0 ab2000       0.00000469     -0.07923252     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 ba2000      -0.00000469      0.07923252      0.00000000      0.00000000      0.00000000      0.00000000
 
 Energy:     -213.31071253   -213.31071253   -213.31071253   -213.31071253   -213.31071253   -213.28156001
 


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
 CPU TIMES  *         2.67      1.77      0.04      0.66
 REAL TIME  *         4.17 SEC
 DISK USED  *        37.16 MB (local),      502.25 MB (total)
 SF USED    *        19.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3450298   2.0
    -213.3450298   2.0
    -213.3450298   2.0
    -213.1636253   6.0
    -213.1636253   6.0
    -213.1636253   6.0
    -213.1636253   6.0
    -213.1636253   6.0
    -213.3107125   6.0
    -213.3107125   6.0
    -213.3107125   6.0
    -213.3107125   6.0
    -213.3107125   6.0
    -213.2815600  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

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
     1      -213.34502985
     2      -213.34502984
     3      -213.34502984
     4      -213.16362529
     5      -213.16362529
     6      -213.16362529
     7      -213.16362528
     8      -213.16362528

 Number of blocks in overlap matrix:   744   Smallest eigenvalue:  0.74D-06
 Number of N-2 electron functions:    1719
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       3541800
 Number of doubly external configurations:       2752440
 Total number of contracted configurations:      6332646
 Total number of uncontracted configurations:   77703006

 Diagonal Coupling coefficients finished.               Storage:  19954127 words, CPU-Time:     37.24 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1158169 words, CPU-time:      0.13 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34502985    -0.00000000    -0.82920026  0.48D-01  0.10D+00    47.32
    1     2     2     1.00000000     0.00000000  -213.34502984    -0.00000000    -0.82926445  0.48D-01  0.10D+00    47.32
    1     3     3     1.00000000     0.00000000  -213.34502984     0.00000000    -0.82981210  0.48D-01  0.10D+00    47.32
    1     4     4     1.00000000     0.00000000  -213.16362529     0.00000000    -0.80095530  0.42D-01  0.94D-01    47.32
    1     5     5     1.00000000     0.00000000  -213.16362529     0.00000000    -0.80075832  0.42D-01  0.94D-01    47.32
    1     6     6     1.00000000     0.00000000  -213.16362529    -0.00000000    -0.80076762  0.42D-01  0.94D-01    47.32
    1     7     7     1.00000000     0.00000000  -213.16362528     0.00000000    -0.80067463  0.42D-01  0.94D-01    47.32
    1     8     8     1.00000000     0.00000000  -213.16362528    -0.00000000    -0.80096539  0.42D-01  0.94D-01    47.32
    2     1     1     1.09270396    -0.65456674  -213.99959659    -0.65456674    -0.01811334  0.33D-02  0.13D-02   238.98
    2     2     2     1.09308590    -0.65446419  -213.99949403    -0.65446419    -0.01821922  0.34D-02  0.13D-02   238.98
    2     3     3     1.09282938    -0.65445346  -213.99948330    -0.65445346    -0.01823101  0.34D-02  0.13D-02   238.98
    2     4     4     1.08726997    -0.64520457  -213.80882987    -0.64520457    -0.01538655  0.27D-02  0.10D-02   238.98
    2     5     5     1.08735454    -0.64519813  -213.80882342    -0.64519813    -0.01538997  0.27D-02  0.10D-02   238.98
    2     6     6     1.08730200    -0.64518387  -213.80880916    -0.64518387    -0.01540925  0.27D-02  0.10D-02   238.98
    2     7     7     1.08729024    -0.64515665  -213.80878192    -0.64515665    -0.01543872  0.27D-02  0.10D-02   238.98
    2     8     8     1.08742409    -0.64515270  -213.80877798    -0.64515270    -0.01543836  0.27D-02  0.10D-02   238.98
    3     1     1     1.08287144    -0.67183098  -214.01686083    -0.01726424    -0.00043528  0.61D-04  0.48D-04   429.80
    3     2     2     1.08285525    -0.67182794  -214.01685779    -0.01736375    -0.00043819  0.62D-04  0.48D-04   429.80
    3     3     3     1.08293346    -0.67181805  -214.01684790    -0.01736460    -0.00044708  0.63D-04  0.51D-04   429.80
    3     4     4     1.08019361    -0.66005427  -213.82367956    -0.01484970    -0.00032951  0.39D-04  0.36D-04   429.80
    3     5     5     1.08019407    -0.66005301  -213.82367830    -0.01485488    -0.00033066  0.40D-04  0.36D-04   429.80
    3     6     6     1.08018143    -0.66005298  -213.82367826    -0.01486911    -0.00033081  0.40D-04  0.36D-04   429.80
    3     7     7     1.08020916    -0.66005296  -213.82367824    -0.01489632    -0.00033133  0.39D-04  0.36D-04   429.80
    3     8     8     1.08020790    -0.66005036  -213.82367564    -0.01489766    -0.00033371  0.40D-04  0.37D-04   429.80
    4     1     1     1.08287132    -0.67228297  -214.01731282    -0.00045199    -0.00001985  0.31D-05  0.28D-05   620.52
    4     2     2     1.08287352    -0.67228293  -214.01731278    -0.00045499    -0.00001988  0.31D-05  0.28D-05   620.52
    4     3     3     1.08287012    -0.67228218  -214.01731202    -0.00046413    -0.00002053  0.32D-05  0.29D-05   620.52
    4     4     4     1.08058317    -0.66039986  -213.82402515    -0.00034559    -0.00001587  0.29D-05  0.23D-05   620.52
    4     5     5     1.08058551    -0.66039981  -213.82402510    -0.00034680    -0.00001571  0.28D-05  0.23D-05   620.52
    4     6     6     1.08058610    -0.66039977  -213.82402506    -0.00034679    -0.00001574  0.28D-05  0.23D-05   620.52
    4     7     7     1.08058566    -0.66039977  -213.82402505    -0.00034681    -0.00001575  0.29D-05  0.23D-05   620.52
    4     8     8     1.08058226    -0.66039972  -213.82402500    -0.00034936    -0.00001598  0.29D-05  0.24D-05   620.52
    5     1     1     1.08296644    -0.67230542  -214.01733527    -0.00002245    -0.00000109  0.70D-07  0.23D-06   810.09
    5     2     2     1.08296661    -0.67230542  -214.01733527    -0.00002249    -0.00000109  0.71D-07  0.22D-06   810.09
    5     3     3     1.08296325    -0.67230540  -214.01733524    -0.00002322    -0.00000112  0.73D-07  0.23D-06   810.09
    5     4     4     1.08073035    -0.66041875  -213.82404405    -0.00001889    -0.00000110  0.61D-07  0.27D-06   810.09
    5     5     5     1.08073011    -0.66041874  -213.82404403    -0.00001893    -0.00000111  0.62D-07  0.27D-06   810.09
    5     6     6     1.08073021    -0.66041856  -213.82404384    -0.00001879    -0.00000109  0.61D-07  0.27D-06   810.09
    5     7     7     1.08073007    -0.66041856  -213.82404384    -0.00001879    -0.00000109  0.61D-07  0.27D-06   810.09
    5     8     8     1.08073042    -0.66041856  -213.82404383    -0.00001883    -0.00000109  0.62D-07  0.27D-06   810.09
    6     1     1     1.08296209    -0.67230675  -214.01733659    -0.00000132    -0.00000011  0.12D-07  0.21D-07   999.89
    6     2     2     1.08296218    -0.67230675  -214.01733659    -0.00000132    -0.00000011  0.12D-07  0.21D-07   999.89
    6     3     3     1.08296161    -0.67230674  -214.01733659    -0.00000135    -0.00000011  0.12D-07  0.22D-07   999.89
    6     4     4     1.08073807    -0.66042024  -213.82404554    -0.00000149    -0.00000013  0.15D-07  0.25D-07   999.89
    6     5     5     1.08073802    -0.66042024  -213.82404553    -0.00000150    -0.00000013  0.15D-07  0.25D-07   999.89
    6     6     6     1.08073821    -0.66042003  -213.82404532    -0.00000147    -0.00000013  0.15D-07  0.25D-07   999.89
    6     7     7     1.08073822    -0.66042004  -213.82404531    -0.00000147    -0.00000013  0.15D-07  0.25D-07   999.89
    6     8     8     1.08073817    -0.66042004  -213.82404531    -0.00000148    -0.00000013  0.15D-07  0.24D-07   999.89
    7     1     1     1.08297529    -0.67230688  -214.01733672    -0.00000013    -0.00000001  0.89D-09  0.19D-08  1190.18
    7     2     2     1.08297536    -0.67230688  -214.01733672    -0.00000013    -0.00000001  0.89D-09  0.19D-08  1190.18
    7     3     3     1.08297546    -0.67230688  -214.01733672    -0.00000014    -0.00000001  0.92D-09  0.20D-08  1190.18
    7     4     4     1.08074771    -0.66042041  -213.82404570    -0.00000016    -0.00000001  0.14D-08  0.24D-08  1190.18
    7     5     5     1.08074771    -0.66042041  -213.82404570    -0.00000016    -0.00000001  0.14D-08  0.24D-08  1190.18
    7     6     6     1.08074753    -0.66042019  -213.82404548    -0.00000016    -0.00000001  0.14D-08  0.24D-08  1190.18
    7     7     7     1.08074753    -0.66042020  -213.82404548    -0.00000016    -0.00000001  0.14D-08  0.24D-08  1190.18
    7     8     8     1.08074748    -0.66042020  -213.82404547    -0.00000016    -0.00000001  0.14D-08  0.24D-08  1190.18


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.2%
 S   1.2%  15.9%
 P   0.5%  52.0%  20.2%

 Initialization:   3.2%
 Other:            4.8%

 Total CPU:     1190.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220//000           0.9530835   0.0061393   0.0073130  -0.0000000  -0.0000000   0.0000003  -0.0000000  -0.0000000
 2222222222/0/000          -0.0054816   0.9495186  -0.0827259  -0.0000000  -0.0000000   0.0000000   0.0000005  -0.0000000
 2222222222//0000          -0.0078182   0.0826797   0.9495063   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000001
 2222222222/0000/          -0.0000000  -0.0000000  -0.0000000  -0.1209315   0.7675049   0.0001083   0.0018344  -0.0000422
 222222222200//00           0.0000000   0.0000000  -0.0000000   0.7251334  -0.2790295   0.0000434  -0.0001583   0.0000768
 2222222222/00/00           0.0001843  -0.0319183   0.0027808  -0.0005027  -0.0016882   0.0046510   0.6728558  -0.0032205
 222222222200/00/          -0.0001843   0.0319179  -0.0027808  -0.0005027  -0.0016882   0.0046510   0.6728499  -0.0032205
 2222222222/000/0           0.0002628  -0.0027793  -0.0319176  -0.0000654   0.0000165   0.0195735   0.0030839   0.6725877
 22222222220/000/          -0.0002628   0.0027793   0.0319175  -0.0000654   0.0000165   0.0195734   0.0030839   0.6725865
 22222222220/0/00          -0.0320380  -0.0002064  -0.0002458  -0.0000764  -0.0000967   0.6725798  -0.0047430  -0.0195515
 222222222200/0/0           0.0320378   0.0002064   0.0002458  -0.0000764  -0.0000967   0.6725764  -0.0047430  -0.0195514
 22222222220/00/0          -0.0000000  -0.0000000  -0.0000000  -0.6042256  -0.4884722  -0.0001517  -0.0016762  -0.0000346
 22222202222//000          -0.0968390  -0.0006238  -0.0007430   0.0000000   0.0000000   0.0000002  -0.0000000  -0.0000000
 2222220222/2/000           0.0005570  -0.0964768   0.0084054  -0.0000000  -0.0000000   0.0000000   0.0000001  -0.0000000
 2222220222//2000           0.0007944  -0.0084007  -0.0964753  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2222220222/0200/          -0.0000000   0.0000000   0.0000000   0.0105007  -0.0721492  -0.0000103  -0.0001731   0.0000039
 2222220222/2000/           0.0000000  -0.0000000   0.0000000   0.0121940  -0.0718826  -0.0000100  -0.0001712   0.0000040
 222222022220//00          -0.0000000   0.0000000  -0.0000000  -0.0683477   0.0253819  -0.0000042   0.0000126  -0.0000072
 222222022202//00           0.0000000   0.0000000   0.0000000  -0.0677322   0.0269814  -0.0000039   0.0000171  -0.0000072
 2222220222/20/00          -0.0000297   0.0051409  -0.0004479   0.0000475   0.0001595  -0.0004394  -0.0635633   0.0003042
 222222022202/00/           0.0000297  -0.0051408   0.0004479   0.0000475   0.0001595  -0.0004394  -0.0635627   0.0003042
 2222220222/020/0          -0.0000423   0.0004476   0.0051408   0.0000062  -0.0000016  -0.0018491  -0.0002913  -0.0635379
 22222202220/200/           0.0000423  -0.0004476  -0.0051407   0.0000062  -0.0000016  -0.0018491  -0.0002913  -0.0635379
 22222202222/0/00           0.0051602   0.0000332   0.0000396   0.0000072   0.0000091  -0.0635372   0.0004481   0.0018470
 222222022220/0/0          -0.0051601  -0.0000332  -0.0000396   0.0000072   0.0000091  -0.0635368   0.0004481   0.0018470
 2222220222/02/00           0.0001205  -0.0208741   0.0018186   0.0000468   0.0001573  -0.0004335  -0.0627066   0.0003001
 222222022220/00/          -0.0001205   0.0208741  -0.0018186   0.0000468   0.0001573  -0.0004334  -0.0627059   0.0003001
 2222220222/200/0           0.0001719  -0.0018176  -0.0208738   0.0000061  -0.0000015  -0.0018241  -0.0002874  -0.0626816
 22222202222/000/          -0.0001719   0.0018176   0.0208738   0.0000061  -0.0000015  -0.0018241  -0.0002874  -0.0626815
 22222202220/2/00          -0.0209524  -0.0001350  -0.0001608   0.0000071   0.0000090  -0.0626809   0.0004420   0.0018221
 222222022202/0/0           0.0209524   0.0001350   0.0001608   0.0000071   0.0000090  -0.0626805   0.0004420   0.0018221
 22222202222/00/0          -0.0000000  -0.0000000   0.0000000   0.0572343   0.0451675   0.0000142   0.0001560   0.0000033
 22222202220/20/0          -0.0000000  -0.0000000   0.0000000   0.0561566   0.0465002   0.0000143   0.0001585   0.0000032

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.960392   -0.005524   -0.007878    0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.006186    0.956800    0.083314    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3           0.007369   -0.083360    0.956787   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.943706   -0.000109   -0.000718   -0.000093    0.182912
 5           0.000000    0.000000   -0.000000   -0.182913   -0.000138   -0.002412    0.000024    0.943703
 6           0.000000    0.000000    0.000000    0.000085    0.960840    0.006644    0.027962    0.000173
 7          -0.000000    0.000000    0.000000    0.000246   -0.006776    0.961232    0.004406    0.002503
 8          -0.000000   -0.000000    0.000000    0.000093   -0.027931   -0.004601    0.960852   -0.000022

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960440    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.960440   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.960440   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.961269    0.000000    0.000000    0.000000    0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.961269    0.000000    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.961269   -0.000000    0.000000
 7          -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.961269    0.000000
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.961269


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96039201 (fixed)   0.96061197 (relaxed)   0.96044021 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101546   -0.00156372   -0.56786085
 Singles      0.01744726   -0.05738582   -0.06375070
 Pairs        0.06561229   -0.00000000   -0.04069533
 Total        1.08407501   -0.05894954   -0.67230688
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34502985
 Nuclear energy                         0.00000000
 Kinetic energy                        82.99938257
 One electron energy                 -375.73244424
 Two electron energy                  161.71510752
 Virial quotient                       -2.57854131
 Correlation energy                    -0.67230688
 !MRCI STATE 1.1 Energy              -214.017336724773

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07386093 (Davidson, fixed reference)
 Cluster corrected energies          -214.07360032 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07386093 (Davidson, rotated reference)

 Cluster corrected energies          -214.07183706 (Pople, fixed reference)
 Cluster corrected energies          -214.07156814 (Pople, relaxed reference)
 Cluster corrected energies          -214.07183706 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95679982 (fixed)   0.96061194 (relaxed)   0.96044018 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101546   -0.00156372   -0.56786077
 Singles      0.01744734   -0.05738588   -0.06375074
 Pairs        0.06561227    0.00000000   -0.04069537
 Total        1.08407508   -0.05894960   -0.67230688
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34502984
 Nuclear energy                         0.00000000
 Kinetic energy                        82.99937837
 One electron energy                 -375.73244138
 Two electron energy                  161.71510465
 Virial quotient                       -2.57854144
 Correlation energy                    -0.67230688
 !MRCI STATE 2.1 Energy              -214.017336723703

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07386098 (Davidson, fixed reference)
 Cluster corrected energies          -214.07360036 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07386098 (Davidson, rotated reference)

 Cluster corrected energies          -214.07183710 (Pople, fixed reference)
 Cluster corrected energies          -214.07156818 (Pople, relaxed reference)
 Cluster corrected energies          -214.07183710 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95678734 (fixed)   0.96061190 (relaxed)   0.96044013 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00101546   -0.00156372   -0.56786061
 Singles      0.01744747   -0.05738599   -0.06375082
 Pairs        0.06561225   -0.00000000   -0.04069545
 Total        1.08407518   -0.05894971   -0.67230688
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34502984
 Nuclear energy                         0.00000000
 Kinetic energy                        82.99938771
 One electron energy                 -375.73245087
 Two electron energy                  161.71511415
 Virial quotient                       -2.57854115
 Correlation energy                    -0.67230688
 !MRCI STATE 3.1 Energy              -214.017336723441

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.07386105 (Davidson, fixed reference)
 Cluster corrected energies          -214.07360043 (Davidson, relaxed reference)
 Cluster corrected energies          -214.07386105 (Davidson, rotated reference)

 Cluster corrected energies          -214.07183718 (Pople, fixed reference)
 Cluster corrected energies          -214.07156825 (Pople, relaxed reference)
 Cluster corrected energies          -214.07183718 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.94370611 (fixed)   0.96141950 (relaxed)   0.96126926 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134923   -0.00238505   -0.45058730
 Singles      0.01881185   -0.05986166   -0.06678820
 Pairs        0.06204480   -0.11382158   -0.14304491
 Total        1.08220588   -0.17606829   -0.66042041
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16362529
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81444295
 One electron energy                 -371.99592463
 Two electron energy                  158.17187893
 Virial quotient                       -2.58196563
 Correlation energy                    -0.66042041
 !MRCI STATE 4.1 Energy              -213.824045701297

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87833614 (Davidson, fixed reference)
 Cluster corrected energies          -213.87811278 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87833614 (Davidson, rotated reference)

 Cluster corrected energies          -213.87631026 (Pople, fixed reference)
 Cluster corrected energies          -213.87608049 (Pople, relaxed reference)
 Cluster corrected energies          -213.87631026 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94370306 (fixed)   0.96141950 (relaxed)   0.96126926 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134923   -0.00238505   -0.01312790
 Singles      0.01881185   -0.05986166   -0.06678821
 Pairs        0.06204480   -0.58724271   -0.58050429
 Total        1.08220588   -0.64948941   -0.66042041
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16362528
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81444316
 One electron energy                 -371.99592538
 Two electron energy                  158.17187968
 Virial quotient                       -2.58196563
 Correlation energy                    -0.66042042
 !MRCI STATE 5.1 Energy              -213.824045696100

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87833614 (Davidson, fixed reference)
 Cluster corrected energies          -213.87811278 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87833614 (Davidson, rotated reference)

 Cluster corrected energies          -213.87631026 (Pople, fixed reference)
 Cluster corrected energies          -213.87608048 (Pople, relaxed reference)
 Cluster corrected energies          -213.87631026 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96083956 (fixed)   0.96141958 (relaxed)   0.96126934 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134922   -0.00238502   -0.55566326
 Singles      0.01881167   -0.05986136   -0.06678794
 Pairs        0.06204481   -0.00010794   -0.03796899
 Total        1.08220570   -0.06235431   -0.66042019
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16362529
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81442176
 One electron energy                 -371.99590099
 Two electron energy                  158.17185551
 Virial quotient                       -2.58196629
 Correlation energy                    -0.66042019
 !MRCI STATE 6.1 Energy              -213.824045478632

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87833578 (Davidson, fixed reference)
 Cluster corrected energies          -213.87811242 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87833578 (Davidson, rotated reference)

 Cluster corrected energies          -213.87630990 (Pople, fixed reference)
 Cluster corrected energies          -213.87608012 (Pople, relaxed reference)
 Cluster corrected energies          -213.87630990 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96123208 (fixed)   0.96141959 (relaxed)   0.96126935 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134922   -0.00238502   -0.55432367
 Singles      0.01881165   -0.05986136   -0.06678794
 Pairs        0.06204482   -0.00155766   -0.03930859
 Total        1.08220569   -0.06380403   -0.66042020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16362529
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81441997
 One electron energy                 -371.99589937
 Two electron energy                  158.17185389
 Virial quotient                       -2.58196635
 Correlation energy                    -0.66042019
 !MRCI STATE 7.1 Energy              -213.824045475101

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87833577 (Davidson, fixed reference)
 Cluster corrected energies          -213.87811242 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87833577 (Davidson, rotated reference)

 Cluster corrected energies          -213.87630989 (Pople, fixed reference)
 Cluster corrected energies          -213.87608011 (Pople, relaxed reference)
 Cluster corrected energies          -213.87630989 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96085247 (fixed)   0.96141961 (relaxed)   0.96126937 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134922   -0.00238502   -0.55577570
 Singles      0.01881162   -0.05986131   -0.06678793
 Pairs        0.06204480    0.00001366   -0.03785657
 Total        1.08220564   -0.06223266   -0.66042020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.16362528
 Nuclear energy                         0.00000000
 Kinetic energy                        82.81441977
 One electron energy                 -371.99589942
 Two electron energy                  158.17185395
 Virial quotient                       -2.58196635
 Correlation energy                    -0.66042020
 !MRCI STATE 8.1 Energy              -213.824045473321

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.87833574 (Davidson, fixed reference)
 Cluster corrected energies          -213.87811238 (Davidson, relaxed reference)
 Cluster corrected energies          -213.87833574 (Davidson, rotated reference)

 Cluster corrected energies          -213.87630985 (Pople, fixed reference)
 Cluster corrected energies          -213.87608008 (Pople, relaxed reference)
 Cluster corrected energies          -213.87630985 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      396.90       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1501.55   1498.87      1.77      0.04      0.66
 REAL TIME  *      1540.99 SEC
 DISK USED  *       433.26 MB (local),        5.13 GB (total)
 SF USED    *         4.16 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.07386093  AU                              
 SETTING HLSDIAG(2)     =      -214.07386098  AU                              
 SETTING HLSDIAG(3)     =      -214.07386105  AU                              
 SETTING HLSDIAG(4)     =      -213.87833614  AU                              
 SETTING HLSDIAG(5)     =      -213.87833614  AU                              
 SETTING HLSDIAG(6)     =      -213.87833578  AU                              
 SETTING HLSDIAG(7)     =      -213.87833577  AU                              
 SETTING HLSDIAG(8)     =      -213.87833574  AU                              


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
     1      -213.31071253
     2      -213.31071253
     3      -213.31071253
     4      -213.31071253
     5      -213.31071253
     6      -213.28156001

 Number of blocks in overlap matrix:   582   Smallest eigenvalue:  0.19D-06
 Number of N-2 electron functions:    1291
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2060800
 Number of doubly external configurations:       2068040
 Total number of contracted configurations:      4152990
 Total number of uncontracted configurations:   45449790

 Diagonal Coupling coefficients finished.               Storage:  12993829 words, CPU-Time:     12.33 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    976772 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.31071253    -0.00000000    -0.83281000  0.53D-01  0.10D+00    17.82
    1     2     2     1.00000000     0.00000000  -213.31071253    -0.00000000    -0.83369403  0.54D-01  0.10D+00    17.82
    1     3     3     1.00000000     0.00000000  -213.31071253    -0.00000000    -0.83400050  0.55D-01  0.10D+00    17.82
    1     4     4     1.00000000     0.00000000  -213.31071253    -0.00000000    -0.83359565  0.54D-01  0.10D+00    17.82
    1     5     5     1.00000000     0.00000000  -213.31071253     0.00000000    -0.83287024  0.53D-01  0.10D+00    17.82
    1     6     6     1.00000000     0.00000000  -213.28156001     0.00000000    -0.80899441  0.25D-01  0.10D+00    17.82
    2     1     1     1.09568024    -0.65882873  -213.96954126    -0.65882873    -0.01873468  0.35D-02  0.15D-02    98.62
    2     2     2     1.09571836    -0.65882083  -213.96953336    -0.65882083    -0.01874277  0.35D-02  0.15D-02    98.62
    2     3     3     1.09611844    -0.65860027  -213.96931280    -0.65860027    -0.01899015  0.36D-02  0.15D-02    98.62
    2     4     4     1.09620436    -0.65856823  -213.96928077    -0.65856823    -0.01902362  0.36D-02  0.15D-02    98.62
    2     5     5     1.09643980    -0.65844065  -213.96915318    -0.65844065    -0.01916867  0.37D-02  0.15D-02    98.62
    2     6     6     1.08458803    -0.65493308  -213.93649310    -0.65493308    -0.01530567  0.24D-02  0.13D-02    98.62
    3     1     1     1.08632133    -0.67648677  -213.98719931    -0.01765804    -0.00050780  0.69D-04  0.64D-04   178.95
    3     2     2     1.08632353    -0.67648446  -213.98719700    -0.01766363    -0.00050883  0.69D-04  0.64D-04   178.95
    3     3     3     1.08636267    -0.67647534  -213.98718788    -0.01787507    -0.00051864  0.71D-04  0.66D-04   178.95
    3     4     4     1.08637401    -0.67647157  -213.98718410    -0.01790333    -0.00052183  0.71D-04  0.67D-04   178.95
    3     5     5     1.08638994    -0.67646547  -213.98717800    -0.01802482    -0.00052813  0.73D-04  0.68D-04   178.95
    3     6     6     1.08199829    -0.66982449  -213.95138451    -0.01489141    -0.00042148  0.37D-04  0.71D-04   178.95
    4     1     1     1.08647445    -0.67701962  -213.98773216    -0.00053285    -0.00002850  0.39D-05  0.48D-05   260.05
    4     2     2     1.08647225    -0.67701928  -213.98773182    -0.00053482    -0.00002874  0.39D-05  0.49D-05   260.05
    4     3     3     1.08647081    -0.67701901  -213.98773154    -0.00054366    -0.00002898  0.39D-05  0.49D-05   260.05
    4     4     4     1.08646875    -0.67701873  -213.98773127    -0.00054717    -0.00002920  0.40D-05  0.50D-05   260.05
    4     5     5     1.08647075    -0.67701853  -213.98773106    -0.00055306    -0.00002938  0.40D-05  0.50D-05   260.05
    4     6     6     1.08338217    -0.67028467  -213.95184469    -0.00046018    -0.00003119  0.26D-05  0.66D-05   260.05
    5     1     1     1.08658558    -0.67705390  -213.98776644    -0.00003428    -0.00000187  0.95D-07  0.42D-06   340.52
    5     2     2     1.08658405    -0.67705388  -213.98776641    -0.00003459    -0.00000189  0.95D-07  0.42D-06   340.52
    5     3     3     1.08658161    -0.67705385  -213.98776638    -0.00003484    -0.00000191  0.10D-06  0.43D-06   340.52
    5     4     4     1.08658049    -0.67705384  -213.98776637    -0.00003510    -0.00000192  0.10D-06  0.43D-06   340.52
    5     5     5     1.08658011    -0.67705383  -213.98776636    -0.00003530    -0.00000192  0.10D-06  0.43D-06   340.52
    5     6     6     1.08391689    -0.67032315  -213.95188316    -0.00003847    -0.00000264  0.15D-06  0.57D-06   340.52
    6     1     1     1.08659094    -0.67705626  -213.98776879    -0.00000236    -0.00000020  0.23D-07  0.38D-07   419.81
    6     2     2     1.08659054    -0.67705625  -213.98776879    -0.00000238    -0.00000020  0.23D-07  0.38D-07   419.81
    6     3     3     1.08659027    -0.67705625  -213.98776878    -0.00000240    -0.00000021  0.24D-07  0.39D-07   419.81
    6     4     4     1.08659013    -0.67705625  -213.98776878    -0.00000241    -0.00000021  0.24D-07  0.39D-07   419.81
    6     5     5     1.08658994    -0.67705625  -213.98776878    -0.00000242    -0.00000021  0.25D-07  0.40D-07   419.81
    6     6     6     1.08396442    -0.67032656  -213.95188657    -0.00000341    -0.00000026  0.28D-07  0.44D-07   419.81
    7     1     1     1.08661550    -0.67705650  -213.98776903    -0.00000024    -0.00000002  0.21D-08  0.39D-08   499.63
    7     2     2     1.08661534    -0.67705650  -213.98776903    -0.00000024    -0.00000002  0.20D-08  0.38D-08   499.63
    7     3     3     1.08661546    -0.67705650  -213.98776903    -0.00000025    -0.00000002  0.21D-08  0.38D-08   499.63
    7     4     4     1.08661531    -0.67705650  -213.98776903    -0.00000025    -0.00000002  0.20D-08  0.37D-08   499.63
    7     5     5     1.08661532    -0.67705650  -213.98776903    -0.00000025    -0.00000002  0.21D-08  0.37D-08   499.63
    7     6     6     1.08398355    -0.67032686  -213.95188687    -0.00000030    -0.00000003  0.29D-08  0.44D-08   499.63


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.0%
 S   1.5%  18.5%
 P   0.6%  48.8%  19.2%

 Initialization:   2.5%
 Other:            5.9%

 Total CPU:      499.6 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\000           0.0703018   0.9460070   0.0371628   0.0665940   0.0120324  -0.0000000
 2222222222/\0000          -0.0986006  -0.0335947   0.9444755   0.0542913  -0.0001839  -0.0000000
 22222222220/\000           0.9431766  -0.0765883   0.0934033   0.0406538  -0.0026899  -0.0000000
 2222222222200000           0.0057925  -0.0031210   0.0066572  -0.1046149   0.7699716   0.5409453
 2222222222002000          -0.0306016  -0.0425642  -0.0459110   0.7157758  -0.2944436   0.5409453
 2222222222020000           0.0248092   0.0456852   0.0392538  -0.6111610  -0.4755279   0.5409453
 2222220222202000           0.0025169   0.0046348   0.0039824  -0.0620034  -0.0482430  -0.1063182
 2222220222220000          -0.0031046  -0.0043182  -0.0046577   0.0726167  -0.0298716  -0.1063182
 2222220222022000           0.0005877  -0.0003166   0.0006754  -0.0106135   0.0781148  -0.1063181
 2222220222/2\000          -0.0071322  -0.0959737  -0.0037702  -0.0067561  -0.0012207   0.0000000
 2222220222/\2000           0.0100032   0.0034082  -0.0958182  -0.0055079   0.0000187   0.0000000
 22222202222/\000          -0.0956865   0.0077700  -0.0094759  -0.0041244   0.0002729   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.014749   -0.099316    0.950019    0.070812   -0.037297   -0.000000
 2           0.036429   -0.033838   -0.077144    0.952870   -0.051365   -0.000000
 3           0.025023    0.951327    0.094081    0.037432   -0.055863   -0.000000
 4          -0.388943    0.054685    0.040949    0.067077    0.870965    0.000000
 5          -0.874972   -0.000185   -0.002709    0.012120   -0.391526   -0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.959808

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958657    0.000000   -0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.958657    0.000000   -0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.958657   -0.000000    0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.958657   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.958657    0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.959808


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95001894 (fixed)   0.95889659 (relaxed)   0.95865664 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137776   -0.00202524   -0.56637418
 Singles      0.02025742   -0.06171045   -0.06931139
 Pairs        0.06647741    0.00000000   -0.04137093
 Total        1.08811259   -0.06373568   -0.67705650
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.31071253
 Nuclear energy                         0.00000000
 Kinetic energy                        82.97242424
 One electron energy                 -375.49629285
 Two electron energy                  161.50852382
 Virial quotient                       -2.57902274
 Correlation energy                    -0.67705650
 !MRCI STATE 1.1 Energy              -213.987769030684

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04742623 (Davidson, fixed reference)
 Cluster corrected energies          -214.04705757 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04742623 (Davidson, rotated reference)

 Cluster corrected energies          -214.04617296 (Pople, fixed reference)
 Cluster corrected energies          -214.04578476 (Pople, relaxed reference)
 Cluster corrected energies          -214.04617296 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95286985 (fixed)   0.95889666 (relaxed)   0.95865671 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137776   -0.00202524   -0.56637439
 Singles      0.02025722   -0.06171030   -0.06931128
 Pairs        0.06647745    0.00000000   -0.04137082
 Total        1.08811243   -0.06373553   -0.67705650
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.31071253
 Nuclear energy                         0.00000000
 Kinetic energy                        82.97242250
 One electron energy                 -375.49629027
 Two electron energy                  161.50852124
 Virial quotient                       -2.57902280
 Correlation energy                    -0.67705650
 !MRCI STATE 2.1 Energy              -213.987769030564

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04742612 (Davidson, fixed reference)
 Cluster corrected energies          -214.04705746 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04742612 (Davidson, rotated reference)

 Cluster corrected energies          -214.04617284 (Pople, fixed reference)
 Cluster corrected energies          -214.04578465 (Pople, relaxed reference)
 Cluster corrected energies          -214.04617284 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95132718 (fixed)   0.95889660 (relaxed)   0.95865665 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137776   -0.00202524   -0.56637425
 Singles      0.02025732   -0.06171039   -0.06931135
 Pairs        0.06647747    0.00000000   -0.04137089
 Total        1.08811255   -0.06373562   -0.67705650
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.31071253
 Nuclear energy                         0.00000000
 Kinetic energy                        82.97242277
 One electron energy                 -375.49629019
 Two electron energy                  161.50852116
 Virial quotient                       -2.57902279
 Correlation energy                    -0.67705650
 !MRCI STATE 3.1 Energy              -213.987769029920

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04742620 (Davidson, fixed reference)
 Cluster corrected energies          -214.04705754 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04742620 (Davidson, rotated reference)

 Cluster corrected energies          -214.04617293 (Pople, fixed reference)
 Cluster corrected energies          -214.04578473 (Pople, relaxed reference)
 Cluster corrected energies          -214.04617293 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.87096485 (fixed)   0.95889667 (relaxed)   0.95865673 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137774   -0.00202523   -0.56637453
 Singles      0.02025708   -0.06171013   -0.06931117
 Pairs        0.06647756   -0.00000003   -0.04137079
 Total        1.08811238   -0.06373540   -0.67705650
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.31071253
 Nuclear energy                         0.00000000
 Kinetic energy                        82.97243615
 One electron energy                 -375.49631052
 Two electron energy                  161.50854149
 Virial quotient                       -2.57902237
 Correlation energy                    -0.67705650
 !MRCI STATE 4.1 Energy              -213.987769029640

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04742609 (Davidson, fixed reference)
 Cluster corrected energies          -214.04705744 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04742609 (Davidson, rotated reference)

 Cluster corrected energies          -214.04617281 (Pople, fixed reference)
 Cluster corrected energies          -214.04578462 (Pople, relaxed reference)
 Cluster corrected energies          -214.04617281 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.87497176 (fixed)   0.95889667 (relaxed)   0.95865672 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137775   -0.00202523   -0.56637450
 Singles      0.02025710   -0.06171017   -0.06931122
 Pairs        0.06647755   -0.00000002   -0.04137078
 Total        1.08811241   -0.06373543   -0.67705650
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.31071253
 Nuclear energy                         0.00000000
 Kinetic energy                        82.97243614
 One electron energy                 -375.49631009
 Two electron energy                  161.50854106
 Virial quotient                       -2.57902237
 Correlation energy                    -0.67705650
 !MRCI STATE 5.1 Energy              -213.987769028389

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.04742611 (Davidson, fixed reference)
 Cluster corrected energies          -214.04705745 (Davidson, relaxed reference)
 Cluster corrected energies          -214.04742611 (Davidson, rotated reference)

 Cluster corrected energies          -214.04617282 (Pople, fixed reference)
 Cluster corrected energies          -214.04578463 (Pople, relaxed reference)
 Cluster corrected energies          -214.04617282 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95980826 (fixed)   0.96010284 (relaxed)   0.95980826 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140174   -0.00183595   -0.00255694
 Singles      0.01143338   -0.04556074   -0.04902826
 Pairs        0.07266789   -0.62293017   -0.61874166
 Total        1.08550301   -0.67032686   -0.67032686
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.28156001
 Nuclear energy                         0.00000000
 Kinetic energy                        82.95421057
 One electron energy                 -375.19516348
 Two electron energy                  161.24327661
 Virial quotient                       -2.57915645
 Correlation energy                    -0.67032686
 !MRCI STATE 6.1 Energy              -213.951886872093

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00920183 (Davidson, fixed reference)
 Cluster corrected energies          -214.00875539 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00920183 (Davidson, rotated reference)

 Cluster corrected energies          -214.00787156 (Pople, fixed reference)
 Cluster corrected energies          -214.00740359 (Pople, relaxed reference)
 Cluster corrected energies          -214.00787156 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      591.79       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2068.62    567.05   1498.87      1.77      0.04      0.66
 REAL TIME  *      2125.61 SEC
 DISK USED  *       628.16 MB (local),        7.42 GB (total)
 SF USED    *         4.16 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(9)     =      -214.04742623  AU                              
 SETTING HLSDIAG(10)    =      -214.04742612  AU                              
 SETTING HLSDIAG(11)    =      -214.04742620  AU                              
 SETTING HLSDIAG(12)    =      -214.04742609  AU                              
 SETTING HLSDIAG(13)    =      -214.04742611  AU                              
 SETTING HLSDIAG(14)    =      -214.00920183  AU                              


         HLSDIAG
    -214.0738609
    -214.0738610
    -214.0738610
    -213.8783361
    -213.8783361
    -213.8783358
    -213.8783358
    -213.8783357
    -214.0474262
    -214.0474261
    -214.0474262
    -214.0474261
    -214.0474261
    -214.0092018
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   8

 Original energies:   -214.017337   -214.017337   -214.017337   -213.824046   -213.824046   -213.824045   -213.824045   -213.824045
 Replaced energies:   -214.073861   -214.073861   -214.073861   -213.878336   -213.878336   -213.878336   -213.878336   -213.878336

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -213.987769   -213.987769   -213.987769   -213.987769   -213.987769   -213.951887
 Replaced energies:   -214.047426   -214.047426   -214.047426   -214.047426   -214.047426   -214.009202



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.07386105

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       5.86
                            0.00      93.68    1075.21      -2.05      -1.62       8.15       1.80     389.90      -0.00     760.28

    2   2.1  1.0  1.0       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00      -5.86       0.00
                          -93.68      -0.00       6.21     348.86     282.04      33.98       0.74       1.55    -760.28      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.92    -763.14
                        -1075.21      -6.21       0.00     -30.44     -24.63     388.42      -2.81      -8.30      66.20       6.26

    4   4.1  1.0  1.0       0.00       0.00       0.00   42912.76       0.00       0.00       0.00       0.00      49.55       0.31
                            2.05    -348.86      30.44       0.00       3.08      -6.27    -896.99       4.38       2.64     -25.81

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42912.76       0.00       0.00       0.00    -314.54      -1.96
                            1.62    -282.04      24.63      -3.08      -0.00       7.69    1109.53      -5.21      -0.25       9.89

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42912.84       0.00       0.00      -0.07       7.83
                           -8.15     -33.98    -388.42       6.27      -7.69      -0.00      -3.36    -713.38      -3.49     274.59

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42912.84       0.00       1.50     -22.67
                           -1.80      -0.74       2.81     896.99   -1109.53       3.36      -0.00       5.05    -275.73      -3.71

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42912.84      -1.58     274.72
                         -389.90      -1.55       8.30      -4.38       5.21     713.38      -5.05       0.00       1.37      -7.98

    9   1.1  1.0  0.0      -0.00      -5.86       4.92      49.55    -314.54      -0.07       1.50      -1.58       0.03       0.00
                            0.00     760.28     -66.20      -2.64       0.25       3.49     275.73      -1.37       0.00       0.00

   10   2.1  1.0  0.0       5.86       0.00    -763.14       0.31      -1.96       7.83     -22.67     274.72       0.00       0.02
                         -760.28       0.00      -6.26      25.81      -9.89    -274.59       3.71       7.98      -0.00       0.00

   11   3.1  1.0  0.0      -4.92     763.14       0.00       0.59      -1.72      -2.60    -274.83     -22.61       0.00       0.00
                           66.20       6.26      -0.00     296.06    -113.93      23.96       1.88      -0.67      -0.00      -0.00

   12   4.1  1.0  0.0     -49.55      -0.31      -0.59       0.00       0.13    -996.16       6.98      29.33       0.00       0.00
                            2.64     -25.81    -296.06       0.00      -0.10     -10.16      -1.72    -362.18      -0.00      -0.00

   13   5.1  1.0  0.0     314.54       1.96       1.72      -0.13       0.00    -156.91       1.12       5.83       0.00       0.00
                           -0.25       9.89     113.93       0.10      -0.00     -26.13      -4.40    -941.23      -0.00      -0.00

   14   6.1  1.0  0.0       0.07      -7.83       2.60     996.16     156.91       0.00      15.80      -3.47       0.00       0.00
                           -3.49     274.59     -23.96      10.16      26.13       0.00     504.31      -2.51      -0.00      -0.00

   15   7.1  1.0  0.0      -1.50      22.67     274.83      -6.98      -1.12     -15.80      -0.00    -504.19       0.00       0.00
                         -275.73      -3.71      -1.88       1.72       4.40    -504.31      -0.00      12.04      -0.00      -0.00

   16   8.1  1.0  0.0       1.58    -274.72      22.61     -29.33      -5.83       3.47     504.19      -0.00       0.00       0.00
                            1.37      -7.98       0.67     362.18     941.23       2.51     -12.04       0.00      -0.00      -0.00

   17   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -5.86
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     760.28

   18   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.86       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -760.28       0.00

   19   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.92     763.14
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      66.20       6.26

   20   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -49.55      -0.31
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.64     -25.81

   21   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     314.54       1.96
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.25       9.89

   22   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.07      -7.83
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.49     274.59

   23   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.50      22.67
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -275.73      -3.71

   24   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.58    -274.72
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.37      -7.98

   25   1.1  0.0  0.0      -5.52     -81.81     -48.24    -587.56     -92.64     -23.92      30.69      22.68       0.00       0.00
                           59.63    -739.07      30.79      22.55      58.77      19.87    -297.42      -7.70     117.64     -51.24

   26   2.1  0.0  0.0       9.69     -90.53    -736.37      47.68       7.50     -30.58      12.29     299.26       0.00       0.00
                          741.51      60.49     -46.52       7.56      19.67     297.69      22.00     -30.54      36.13      78.95

   27   3.1  0.0  0.0     -11.40     734.92     -93.33     -57.96      -8.41     -39.69    -297.54      14.24       0.00       0.00
                           29.97     -77.16     -44.12    -213.88    -555.80      10.97     -31.15     -14.73   -1046.39      45.58

   28   4.1  0.0  0.0     116.15      38.61     -54.80     -25.38      -4.03     591.93     -21.22       3.88       0.00       0.00
                           45.87      37.42     793.60     -12.31     -31.92      27.46     -12.02     225.23     -54.30    -958.77

   29   5.1  0.0  0.0    -853.41      -6.46     -15.93       1.67       0.25      80.82      -0.49       1.45       0.00       0.00
                           12.10     -26.15    -325.27      -0.01       0.12      19.95       3.37     555.04       4.47    -742.39

   30   6.1  0.0  0.0    1217.83       7.84       9.34      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            9.99    -105.65   -1213.26      -0.00      -0.00       0.00       0.00       0.00       9.91   -1715.83


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0      -4.92     -49.55     314.54       0.07      -1.50       1.58       0.00       0.00       0.00       0.00
                          -66.20      -2.64       0.25       3.49     275.73      -1.37       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0     763.14      -0.31       1.96      -7.83      22.67    -274.72       0.00       0.00       0.00       0.00
                           -6.26      25.81      -9.89    -274.59       3.71       7.98       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00      -0.59       1.72       2.60     274.83      22.61       0.00       0.00       0.00       0.00
                            0.00     296.06    -113.93      23.96       1.88      -0.67       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0       0.59       0.00      -0.13     996.16      -6.98     -29.33       0.00       0.00       0.00       0.00
                         -296.06      -0.00      -0.10     -10.16      -1.72    -362.18       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0      -1.72       0.13       0.00     156.91      -1.12      -5.83       0.00       0.00       0.00       0.00
                          113.93       0.10       0.00     -26.13      -4.40    -941.23       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0      -2.60    -996.16    -156.91       0.00     -15.80       3.47       0.00       0.00       0.00       0.00
                          -23.96      10.16      26.13      -0.00     504.31      -2.51       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0    -274.83       6.98       1.12      15.80      -0.00     504.19       0.00       0.00       0.00       0.00
                           -1.88       1.72       4.40    -504.31       0.00      12.04       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0     -22.61      29.33       5.83      -3.47    -504.19      -0.00       0.00       0.00       0.00       0.00
                            0.67     362.18     941.23       2.51     -12.04      -0.00       0.00       0.00       0.00       0.00

    9   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       5.86      -4.92     -49.55
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00     760.28     -66.20      -2.64

   10   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -5.86       0.00     763.14      -0.31
                            0.00       0.00       0.00       0.00       0.00       0.00    -760.28      -0.00      -6.26      25.81

   11   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       4.92    -763.14       0.00      -0.59
                            0.00       0.00       0.00       0.00       0.00       0.00      66.20       6.26       0.00     296.06

   12   4.1  1.0  0.0       0.00   42912.76       0.00       0.00       0.00       0.00      49.55       0.31       0.59       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       2.64     -25.81    -296.06      -0.00

   13   5.1  1.0  0.0       0.00       0.00   42912.76       0.00       0.00       0.00    -314.54      -1.96      -1.72       0.13
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.25       9.89     113.93       0.10

   14   6.1  1.0  0.0       0.00       0.00       0.00   42912.84       0.00       0.00      -0.07       7.83      -2.60    -996.16
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -3.49     274.59     -23.96      10.16

   15   7.1  1.0  0.0       0.00       0.00       0.00       0.00   42912.84       0.00       1.50     -22.67    -274.83       6.98
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00    -275.73      -3.71      -1.88       1.72

   16   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   42912.84      -1.58     274.72     -22.61      29.33
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.37      -7.98       0.67     362.18

   17   1.1  1.0 -1.0       4.92      49.55    -314.54      -0.07       1.50      -1.58       0.03       0.00       0.00       0.00
                          -66.20      -2.64       0.25       3.49     275.73      -1.37      -0.00     -93.68   -1075.21       2.05

   18   2.1  1.0 -1.0    -763.14       0.31      -1.96       7.83     -22.67     274.72       0.00       0.02       0.00       0.00
                           -6.26      25.81      -9.89    -274.59       3.71       7.98      93.68       0.00      -6.21    -348.86

   19   3.1  1.0 -1.0       0.00       0.59      -1.72      -2.60    -274.83     -22.61       0.00       0.00       0.00       0.00
                           -0.00     296.06    -113.93      23.96       1.88      -0.67    1075.21       6.21      -0.00      30.44

   20   4.1  1.0 -1.0      -0.59       0.00       0.13    -996.16       6.98      29.33       0.00       0.00       0.00   42912.76
                         -296.06       0.00      -0.10     -10.16      -1.72    -362.18      -2.05     348.86     -30.44      -0.00

   21   5.1  1.0 -1.0       1.72      -0.13       0.00    -156.91       1.12       5.83       0.00       0.00       0.00       0.00
                          113.93       0.10      -0.00     -26.13      -4.40    -941.23      -1.62     282.04     -24.63       3.08

   22   6.1  1.0 -1.0       2.60     996.16     156.91       0.00      15.80      -3.47       0.00       0.00       0.00       0.00
                          -23.96      10.16      26.13       0.00     504.31      -2.51       8.15      33.98     388.42      -6.27

   23   7.1  1.0 -1.0     274.83      -6.98      -1.12     -15.80      -0.00    -504.19       0.00       0.00       0.00       0.00
                           -1.88       1.72       4.40    -504.31      -0.00      12.04       1.80       0.74      -2.81    -896.99

   24   8.1  1.0 -1.0      22.61     -29.33      -5.83       3.47     504.19      -0.00       0.00       0.00       0.00       0.00
                            0.67     362.18     941.23       2.51     -12.04       0.00     389.90       1.55      -8.30       4.38

   25   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -5.52     -81.81     -48.24    -587.56
                        -1044.07      39.45     -48.82     -56.03      21.24    -419.23     -59.63     739.07     -30.79     -22.55

   26   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       9.69     -90.53    -736.37      47.68
                           78.64     530.39    -656.15     -13.85      23.89      34.53    -741.51     -60.49      46.52      -7.56

   27   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00     -11.40     734.92     -93.33     -57.96
                         -116.52      20.77     -25.92     419.99      29.94     -54.03     -29.97      77.16      44.12     213.88

   28   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00     116.15      38.61     -54.80     -25.38
                           37.80      37.72     -44.89      20.09    -517.68     -16.34     -45.87     -37.42    -793.60      12.31

   29   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00    -853.41      -6.46     -15.93       1.67
                           67.67       6.24     -10.03       4.59     671.21      -2.01     -12.10      26.15     325.27       0.01

   30   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00    1217.83       7.84       9.34      -0.00
                          149.49      -0.00      -0.00       0.00       0.00      -0.00      -9.99     105.65    1213.26       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -5.52       9.69     -11.40     116.15    -853.41    1217.83
                            0.00       0.00       0.00       0.00     -59.63    -741.51     -29.97     -45.87     -12.10      -9.99

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00     -81.81     -90.53     734.92      38.61      -6.46       7.84
                            0.00       0.00       0.00       0.00     739.07     -60.49      77.16     -37.42      26.15     105.65

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00     -48.24    -736.37     -93.33     -54.80     -15.93       9.34
                            0.00       0.00       0.00       0.00     -30.79      46.52      44.12    -793.60     325.27    1213.26

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00    -587.56      47.68     -57.96     -25.38       1.67      -0.00
                            0.00       0.00       0.00       0.00     -22.55      -7.56     213.88      12.31       0.01       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00     -92.64       7.50      -8.41      -4.03       0.25      -0.00
                            0.00       0.00       0.00       0.00     -58.77     -19.67     555.80      31.92      -0.12       0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00     -23.92     -30.58     -39.69     591.93      80.82      -0.00
                            0.00       0.00       0.00       0.00     -19.87    -297.69     -10.97     -27.46     -19.95      -0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00      30.69      12.29    -297.54     -21.22      -0.49       0.00
                            0.00       0.00       0.00       0.00     297.42     -22.00      31.15      12.02      -3.37      -0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00      22.68     299.26      14.24       3.88       1.45       0.00
                            0.00       0.00       0.00       0.00       7.70      30.54      14.73    -225.23    -555.04      -0.00

    9   1.1  1.0  0.0     314.54       0.07      -1.50       1.58       0.00       0.00       0.00       0.00       0.00       0.00
                            0.25       3.49     275.73      -1.37    -117.64     -36.13    1046.39      54.30      -4.47      -9.91

   10   2.1  1.0  0.0       1.96      -7.83      22.67    -274.72       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.89    -274.59       3.71       7.98      51.24     -78.95     -45.58     958.77     742.39    1715.83

   11   3.1  1.0  0.0       1.72       2.60     274.83      22.61       0.00       0.00       0.00       0.00       0.00       0.00
                         -113.93      23.96       1.88      -0.67    1044.07     -78.64     116.52     -37.80     -67.67    -149.49

   12   4.1  1.0  0.0      -0.13     996.16      -6.98     -29.33       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.10     -10.16      -1.72    -362.18     -39.45    -530.39     -20.77     -37.72      -6.24       0.00

   13   5.1  1.0  0.0       0.00     156.91      -1.12      -5.83       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -26.13      -4.40    -941.23      48.82     656.15      25.92      44.89      10.03       0.00

   14   6.1  1.0  0.0    -156.91       0.00     -15.80       3.47       0.00       0.00       0.00       0.00       0.00       0.00
                           26.13      -0.00     504.31      -2.51      56.03      13.85    -419.99     -20.09      -4.59      -0.00

   15   7.1  1.0  0.0       1.12      15.80      -0.00     504.19       0.00       0.00       0.00       0.00       0.00       0.00
                            4.40    -504.31       0.00      12.04     -21.24     -23.89     -29.94     517.68    -671.21      -0.00

   16   8.1  1.0  0.0       5.83      -3.47    -504.19      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          941.23       2.51     -12.04      -0.00     419.23     -34.53      54.03      16.34       2.01       0.00

   17   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -5.52       9.69     -11.40     116.15    -853.41    1217.83
                            1.62      -8.15      -1.80    -389.90      59.63     741.51      29.97      45.87      12.10       9.99

   18   2.1  1.0 -1.0       0.00       0.00       0.00       0.00     -81.81     -90.53     734.92      38.61      -6.46       7.84
                         -282.04     -33.98      -0.74      -1.55    -739.07      60.49     -77.16      37.42     -26.15    -105.65

   19   3.1  1.0 -1.0       0.00       0.00       0.00       0.00     -48.24    -736.37     -93.33     -54.80     -15.93       9.34
                           24.63    -388.42       2.81       8.30      30.79     -46.52     -44.12     793.60    -325.27   -1213.26

   20   4.1  1.0 -1.0       0.00       0.00       0.00       0.00    -587.56      47.68     -57.96     -25.38       1.67      -0.00
                           -3.08       6.27     896.99      -4.38      22.55       7.56    -213.88     -12.31      -0.01      -0.00

   21   5.1  1.0 -1.0   42912.76       0.00       0.00       0.00     -92.64       7.50      -8.41      -4.03       0.25      -0.00
                            0.00      -7.69   -1109.53       5.21      58.77      19.67    -555.80     -31.92       0.12      -0.00

   22   6.1  1.0 -1.0       0.00   42912.84       0.00       0.00     -23.92     -30.58     -39.69     591.93      80.82      -0.00
                            7.69       0.00       3.36     713.38      19.87     297.69      10.97      27.46      19.95       0.00

   23   7.1  1.0 -1.0       0.00       0.00   42912.84       0.00      30.69      12.29    -297.54     -21.22      -0.49       0.00
                         1109.53      -3.36       0.00      -5.05    -297.42      22.00     -31.15     -12.02       3.37       0.00

   24   8.1  1.0 -1.0       0.00       0.00       0.00   42912.84      22.68     299.26      14.24       3.88       1.45       0.00
                           -5.21    -713.38       5.05      -0.00      -7.70     -30.54     -14.73     225.23     555.04       0.00

   25   1.1  0.0  0.0     -92.64     -23.92      30.69      22.68    5801.77       0.00       0.00       0.00       0.00       0.00
                          -58.77     -19.87     297.42       7.70       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.1  0.0  0.0       7.50     -30.58      12.29     299.26       0.00    5801.79       0.00       0.00       0.00       0.00
                          -19.67    -297.69     -22.00      30.54      -0.00       0.00       0.00       0.00       0.00       0.00

   27   3.1  0.0  0.0      -8.41     -39.69    -297.54      14.24       0.00       0.00    5801.78       0.00       0.00       0.00
                          555.80     -10.97      31.15      14.73      -0.00      -0.00       0.00       0.00       0.00       0.00

   28   4.1  0.0  0.0      -4.03     591.93     -21.22       3.88       0.00       0.00       0.00    5801.80       0.00       0.00
                           31.92     -27.46      12.02    -225.23      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29   5.1  0.0  0.0       0.25      80.82      -0.49       1.45       0.00       0.00       0.00       0.00    5801.80       0.00
                           -0.12     -19.95      -3.37    -555.04      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30   6.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   14191.06
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 30)

    The diagonal matrixelements are shifted by   -214.07386105 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.025       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.015       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42912.756       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42912.757       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42912.835       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42912.837       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42912.844
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1075.191     -93.624      -3.739       0.348       4.937     389.948      -1.932

    2    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                            -1075.191       0.000      -8.853      36.502     -13.980    -388.327       5.243      11.281

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               93.624       8.853       0.000     418.699    -161.125      33.880       2.662      -0.954

    4    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                3.739     -36.502    -418.699       0.000      -0.142     -14.373      -2.434    -512.195

    5    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.348      13.980     161.125       0.142       0.000     -36.947      -6.218   -1331.096

    6    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -4.937     388.327     -33.880      14.373      36.947       0.000     713.200      -3.545

    7    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -389.948      -5.243      -2.662       2.434       6.218    -713.200       0.000      17.032

    8    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                1.932     -11.281       0.954     512.195    1331.096       3.545     -17.032       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      93.676    1075.205      -2.052      -1.618       8.146       1.804     389.903

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -93.676      -0.000       6.207     348.865     282.044      33.976       0.741       1.548

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1075.205      -6.207       0.000     -30.439     -24.629     388.422      -2.809      -8.300

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.052    -348.865      30.439       0.000       3.080      -6.267    -896.985       4.376

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.618    -282.044      24.629      -3.080      -0.000       7.690    1109.525      -5.209

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -8.146     -33.976    -388.422       6.267      -7.690      -0.000      -3.360    -713.376

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.804      -0.741       2.809     896.985   -1109.525       3.360      -0.000       5.047

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -389.903      -1.548       8.300      -4.376       5.209     713.376      -5.047       0.000

    1    1  |0 0>              -7.812    -115.702     -68.216    -830.940    -131.016     -33.834      43.408      32.071
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              13.708    -128.032   -1041.384      67.426      10.611     -43.243      17.383     423.212
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>             -16.119    1039.335    -131.986     -81.966     -11.899     -56.124    -420.785      20.134
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>             164.254      54.606     -77.503     -35.895      -5.701     837.120     -30.012       5.481
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>           -1206.901      -9.135     -22.531       2.356       0.357     114.303      -0.696       2.045
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>            1722.277      11.094      13.215      -0.000      -0.000      -0.001       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1075.191     -93.624      -3.739       0.348       4.937     389.948      -1.932

    2    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                            -1075.191       0.000      -8.853      36.502     -13.980    -388.327       5.243      11.281

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               93.624       8.853       0.000     418.699    -161.125      33.880       2.662      -0.954

    4    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                3.739     -36.502    -418.699       0.000      -0.142     -14.373      -2.434    -512.195

    5    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.348      13.980     161.125       0.142       0.000     -36.947      -6.218   -1331.096

    6    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -4.937     388.327     -33.880      14.373      36.947       0.000     713.200      -3.545

    7    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -389.948      -5.243      -2.662       2.434       6.218    -713.200       0.000      17.032

    8    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                1.932     -11.281       0.954     512.195    1331.096       3.545     -17.032       0.000

    1    1  |1 0>               0.025       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.015       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000   42912.756       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000   42912.757       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   42912.835       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   42912.837       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   42912.844
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       8.281      -6.952     -70.072     444.832       0.106      -2.125       2.233
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-             -8.281       0.000    1079.242      -0.439       2.771     -11.068      32.056    -388.515
                                0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              6.952   -1079.242       0.000      -0.831       2.439       3.671     388.665      31.975
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 1>-             70.072       0.439       0.831       0.000      -0.178    1408.777      -9.868     -41.486
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>-           -444.832      -2.771      -2.439       0.178       0.000     221.904      -1.591      -8.241
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    6    1  |1 1>-             -0.106      11.068      -3.671   -1408.777    -221.904       0.000     -22.339       4.904
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              2.125     -32.056    -388.665       9.868       1.591      22.339       0.000     713.032
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -2.233     388.515     -31.975      41.486       8.241      -4.904    -713.032       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              117.645     -51.243   -1044.065      39.446     -48.819     -56.027      21.240    -419.226

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               36.129      78.953      78.644     530.394    -656.153     -13.849      23.886      34.528

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1046.395      45.579    -116.517      20.768     -25.919     419.988      29.941     -54.026

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -54.299    -958.772      37.803      37.724     -44.891      20.092    -517.682     -16.343

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.467    -742.392      67.675       6.245     -10.029       4.592     671.215      -2.010

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                9.905   -1715.835     149.490      -0.000      -0.000       0.000       0.002      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      93.676    1075.205      -2.052      -1.618       8.146       1.804     389.903

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -93.676      -0.000       6.207     348.865     282.044      33.976       0.741       1.548

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1075.205      -6.207       0.000     -30.439     -24.629     388.422      -2.809      -8.300

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.052    -348.865      30.439       0.000       3.080      -6.267    -896.985       4.376

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.618    -282.044      24.629      -3.080      -0.000       7.690    1109.525      -5.209

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -8.146     -33.976    -388.422       6.267      -7.690      -0.000      -3.360    -713.376

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.804      -0.741       2.809     896.985   -1109.525       3.360      -0.000       5.047

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -389.903      -1.548       8.300      -4.376       5.209     713.376      -5.047       0.000

    1    1  |1 0>               0.000      -8.281       6.952      70.072    -444.832      -0.106       2.125      -2.233
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               8.281       0.000   -1079.242       0.439      -2.771      11.068     -32.056     388.515
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>              -6.952    1079.242       0.000       0.831      -2.439      -3.671    -388.665     -31.975
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    4    1  |1 0>             -70.072      -0.439      -0.831       0.000       0.178   -1408.777       9.868      41.486
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 0>             444.832       2.771       2.439      -0.178       0.000    -221.904       1.591       8.241
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.106     -11.068       3.671    1408.777     221.904       0.000      22.339      -4.904
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 0>              -2.125      32.056     388.665      -9.868      -1.591     -22.339       0.000    -713.032
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               2.233    -388.515      31.975     -41.486      -8.241       4.904     713.032       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.025       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.015       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   42912.756       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   42912.757       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42912.835       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   42912.837       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42912.844
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               84.331   -1045.201      43.550      31.892      83.119      28.096    -420.611     -10.886

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1048.647      85.542     -65.796      10.689      27.815     421.001      31.114     -43.186

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               42.378    -109.123     -62.398    -302.465    -786.021      15.516     -44.057     -20.825

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               64.870      52.920    1122.321     -17.409     -45.140      38.840     -16.999     318.528

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               17.106     -36.985    -459.996      -0.019       0.169      28.219       4.762     784.946

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               14.128    -149.407   -1715.814      -0.000      -0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30

    1    1  |1 1>+             -7.812      13.708     -16.119     164.254   -1206.901    1722.277
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+           -115.702    -128.032    1039.335      54.606      -9.135      11.094
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+            -68.216   -1041.384    -131.986     -77.503     -22.531      13.215
                                0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+           -830.940      67.426     -81.966     -35.895       2.356      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+           -131.016      10.611     -11.899      -5.701       0.357      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+            -33.834     -43.243     -56.124     837.120     114.303      -0.001
                                0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             43.408      17.383    -420.785     -30.012      -0.696       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             32.071     423.212      20.134       5.481       2.045       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                             -117.645     -36.129    1046.395      54.299      -4.467      -9.905

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               51.243     -78.953     -45.579     958.772     742.392    1715.835

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                             1044.065     -78.644     116.517     -37.803     -67.675    -149.490

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                              -39.446    -530.394     -20.768     -37.724      -6.245       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               48.819     656.153      25.919      44.891      10.029       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               56.027      13.849    -419.988     -20.092      -4.592      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                              -21.240     -23.886     -29.941     517.682    -671.215      -0.002

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                              419.226     -34.528      54.026      16.343       2.010       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                              -84.331   -1048.647     -42.378     -64.870     -17.106     -14.128

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                             1045.201     -85.542     109.123     -52.920      36.985     149.407

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                              -43.550      65.796      62.398   -1122.321     459.996    1715.814

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                              -31.892     -10.689     302.465      17.409       0.019       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                              -83.119     -27.815     786.021      45.140      -0.169       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                              -28.096    -421.001     -15.516     -38.840     -28.219      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                              420.611     -31.114      44.057      16.999      -4.762      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                               10.886      43.186      20.825    -318.528    -784.946      -0.000

    1    1  |0 0>            5801.771       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000    5801.795       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000    5801.777       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000    5801.802       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000    5801.799       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   14191.056
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.08609891    -0.01223787    -2685.90      0.00000000        0.00      0.0000
    2  -214.07880624    -0.00494520    -1085.34      0.00729267     1600.56      0.1984
    3  -214.07880622    -0.00494517    -1085.34      0.00729270     1600.56      0.1984
    4  -214.07880618    -0.00494514    -1085.33      0.00729273     1600.57      0.1984
    5  -214.07100796     0.00285308      626.18      0.01509095     3312.08      0.4106
    6  -214.07100790     0.00285314      626.19      0.01509101     3312.09      0.4106
    7  -214.07100788     0.00285317      626.20      0.01509104     3312.10      0.4106
    8  -214.07100785     0.00285320      626.20      0.01509107     3312.11      0.4106
    9  -214.07100782     0.00285323      626.21      0.01509109     3312.11      0.4106
   10  -214.04554128     0.02831976     6215.47      0.04055763     8901.37      1.1036
   11  -214.04554125     0.02831979     6215.48      0.04055766     8901.38      1.1036
   12  -214.04554118     0.02831986     6215.49      0.04055773     8901.39      1.1036
   13  -214.04554107     0.02831997     6215.52      0.04055784     8901.42      1.1036
   14  -214.04554106     0.02831998     6215.52      0.04055785     8901.42      1.1036
   15  -214.00679917     0.06706187    14718.38      0.07929974    17404.28      2.1579
   16  -213.88805987     0.18580118    40778.64      0.19803905    43464.55      5.3889
   17  -213.88805984     0.18580120    40778.65      0.19803907    43464.55      5.3889
   18  -213.88805983     0.18580122    40778.65      0.19803909    43464.56      5.3889
   19  -213.88140699     0.19245406    42238.78      0.20469192    44924.68      5.5700
   20  -213.88140698     0.19245407    42238.79      0.20469193    44924.69      5.5700
   21  -213.88140696     0.19245408    42238.79      0.20469195    44924.69      5.5700
   22  -213.88140674     0.19245431    42238.84      0.20469218    44924.74      5.5700
   23  -213.88140668     0.19245436    42238.85      0.20469223    44924.75      5.5700
   24  -213.87183497     0.20202607    44339.60      0.21426394    47025.50      5.8304
   25  -213.87183496     0.20202608    44339.60      0.21426395    47025.50      5.8304
   26  -213.87183496     0.20202608    44339.60      0.21426395    47025.50      5.8304
   27  -213.87183489     0.20202616    44339.62      0.21426403    47025.52      5.8304
   28  -213.87183487     0.20202617    44339.62      0.21426404    47025.52      5.8304
   29  -213.87183487     0.20202617    44339.62      0.21426404    47025.52      5.8304
   30  -213.87183477     0.20202628    44339.64      0.21426415    47025.54      5.8304

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.56850613  0.00000109 -0.00543542 -0.00454174 -0.26485906  0.73160435 -0.09005068 -0.00972245
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00366204 -0.00526854  0.00162685  0.70702143  0.00004119  0.00603268  0.00065466 -0.01121010
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00436219  0.00428146  0.70702495 -0.00162989 -0.00160123  0.00840380 -0.01393177  0.67811547
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00118420  0.00000693 -0.00001380  0.00012517 -0.00218784 -0.01810754 -0.00034494
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00751409 -0.00004382  0.00003964  0.00002196 -0.00034389 -0.00285291 -0.00005700
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000005  0.00000172  0.00018709  0.00006157 -0.01737244 -0.00621188  0.00063392 -0.00021260
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00003424 -0.00052635  0.00656642  0.00009943  0.00002651 -0.00005670  0.00090951
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00003530  0.00656389  0.00052499  0.00049721  0.00014104  0.00015828 -0.00918490
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00326970 -0.00017952  0.05974463 -0.70451322  0.00465083  0.00382182 -0.00353696 -0.07009397

   2    1  |1 0>           0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.56638132  0.06136691  0.00001428 -0.00407998 -0.50447189 -0.58474724  0.12645417  0.00470641

   3    1  |1 0>           0.00000000  0.00000015  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.04934565  0.70438021 -0.00379492 -0.00014709  0.03936731  0.13264577  0.66489149  0.01189586

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00003250  0.00589469  0.00050063  0.00002048  0.00004059 -0.00022367  0.01154628

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00002559  0.00476503  0.00040504  0.00002308 -0.00009093  0.00028103 -0.01428225

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00013927  0.00055875 -0.00656241 -0.00012243  0.00009941  0.00022372  0.00095564

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000009 -0.00003048  0.00001261  0.00004743 -0.01409712  0.01183662 -0.00148181 -0.00010284

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00658611  0.00002393  0.00014160  0.00000583  0.00105110  0.00916965  0.00014890

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00466347  0.00025823 -0.70450096 -0.05971069 -0.00571587  0.00355471 -0.01713486  0.67454189

   2    1  |1 1>-         -0.00000000 -0.00000015 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.04931788 -0.70436470 -0.00028480 -0.00564324  0.06230912  0.06916072  0.67262706  0.01717698

   3    1  |1 1>-         -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.56637654  0.06133626 -0.00577609 -0.00000026  0.76832706 -0.14412087 -0.03676539  0.00459240

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00006136 -0.00060027  0.00707354  0.00001638  0.00000790  0.00001664 -0.00068519

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000518  0.00022986 -0.00272213  0.00004351  0.00002492  0.00003742 -0.00177943

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00008100  0.00656096  0.00055717  0.00010296  0.00057195 -0.00017737  0.00917612

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00658705 -0.00008592  0.00004371 -0.00004724  0.00119023  0.00915655  0.00010444

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000003 -0.00003256 -0.00019060 -0.00001566  0.00328098  0.01803087 -0.00219429 -0.00038534

   1    1  |0 0>           0.00000003 -0.00000100  0.00000012  0.00000008 -0.00962791 -0.03522305 -0.27666141  0.01239405
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000002  0.00000008  0.00000164  0.00000008 -0.01685274 -0.00333393  0.01786043  0.27733495
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000003 -0.00000011  0.00000020 -0.00000070 -0.01805868 -0.00743892 -0.02824230  0.03919846
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000049  0.00000011  0.00000011 -0.00000003  0.27367023  0.05650854 -0.01748187  0.02048907
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000037  0.00000002  0.00000004  0.00000001 -0.05858688  0.27300299 -0.03262914  0.00181290
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.17406455 -0.00000000  0.00000000 -0.00000000  0.00000049 -0.00000038 -0.00000002  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.00510784 -0.00044889 -0.00206173  0.00154835 -0.22620934  0.04112980  0.10049126  0.00004912
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.67828541 -0.02136054  0.19640929 -0.02410876 -0.00118974  0.00604644  0.00064731 -0.00847453
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.01115729 -0.01271989 -0.02545917 -0.19703243 -0.00224753 -0.00389293  0.00077107  0.00071335
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00003818  0.01794206  0.00175860 -0.00139491  0.00002521  0.00047534 -0.00000000 -0.00067547
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00002793  0.00282894  0.00025522 -0.00021941  0.00000435  0.00007648  0.00000000  0.00031512
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00003472  0.00041755  0.00066888  0.00001689 -0.00327601 -0.01799248  0.00000003  0.00383244
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00918899 -0.00091319  0.00909427 -0.00036381  0.00003731  0.00040823 -0.00000000  0.54766358
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00091000 -0.00067424 -0.00044316 -0.00912468  0.00007278  0.00035200 -0.00000000 -0.00101938
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.67474136 -0.02176648  0.19775293 -0.00678119 -0.00054693  0.00507450 -0.00057796  0.00850435

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00663847  0.01256693 -0.00323098 -0.00440358  0.14820848  0.17497651  0.10011527  0.00005278

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00381194  0.19699086  0.02141885 -0.01509906 -0.01263541 -0.00996217 -0.00872244  0.00004234

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00119898  0.00084028  0.00047908  0.01146929  0.00001770  0.00022222 -0.00000000  0.00150146

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00148051 -0.00103916 -0.00059639 -0.01418738 -0.00006984 -0.00023430 -0.00000000  0.00124211

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00918092 -0.00118951  0.00907119 -0.00029755  0.00011043  0.00019270  0.00000000 -0.54747175

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00007676  0.00023058  0.00030759  0.00012904  0.01396288 -0.01183902  0.00000005  0.00385765

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00025117 -0.00905167 -0.00115934  0.00071645 -0.00007981 -0.00019107 -0.00000000  0.01443322

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.07001289 -0.01569811 -0.00847837 -0.19831517 -0.00112374 -0.00194669 -0.00082433  0.00002475

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00085774  0.19711411  0.01993305 -0.01631384  0.00699002 -0.01359285  0.00871758  0.00002307

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00110445 -0.01213644  0.00542891  0.00295585  0.07715386 -0.21594350  0.10011395 -0.00000181

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00659676  0.00067292 -0.00653442  0.00022715 -0.00001193 -0.00020271 -0.00000000  0.59022358

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.01714377  0.00175399 -0.01698106  0.00059125 -0.00002622 -0.00052493 -0.00000000 -0.22711882

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00095453  0.00059990  0.00036514  0.00911876  0.00052379  0.00034711  0.00000000  0.00164745

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00002521 -0.00908167 -0.00094484  0.00064333  0.00006621 -0.00021408  0.00000000  0.00134074

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00006927 -0.00014917 -0.00024677 -0.00040256  0.01723248  0.00615523  0.00000000  0.00000884

   1    1  |0 0>           0.03162120  0.95911442 -0.00165978  0.00130139  0.00129152 -0.01695217  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.03871823 -0.00210357  0.00070041  0.95805016 -0.01287413 -0.04651568  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.27624786  0.00115658  0.95883472 -0.00210564 -0.00107017 -0.02868707  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.01471662  0.01683641  0.02875050  0.04703190  0.04248917  0.95658997 -0.00000001  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00007145 -0.00206624 -0.00019233  0.01078209  0.95823665 -0.04305030 -0.00000002  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000009 -0.00000002  0.98473424 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00006962 -0.00000030  0.00000580 -0.00006257  0.00006328 -0.00473866 -0.01163982 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00071291  0.00002459 -0.00027053  0.00093367 -0.01084048 -0.00003256 -0.00007268  0.00000021
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00847470  0.00001803 -0.00000206  0.01084403  0.00093436 -0.00004284 -0.00006179 -0.00000002
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00028375 -0.09842471  0.80590617  0.00183449 -0.01964742  0.00012654  0.00023163 -0.00414459
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00148841  0.62471082  0.12699739  0.00030611 -0.00212008 -0.00007502  0.00007525  0.02965786
                          -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.01592047  0.00004030 -0.00010862  0.01310702 -0.00293017  0.75549744 -0.30755036 -0.00312719
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00090752  0.00001008 -0.00918075  0.00146210 -0.40791359 -0.00538354  0.00217024 -0.43084871
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.54744298 -0.00132057 -0.00083831  0.40781747  0.00157586 -0.02221026  0.00997594  0.00102803
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00002478  0.00004683 -0.00035860 -0.00001074 -0.01087820  0.00004286 -0.00005720 -0.00000020

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000190 -0.00073790  0.00094185 -0.00002764 -0.00009248 -0.00768176  0.00988676 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00002014 -0.00847267  0.01083763  0.00002772 -0.00035194  0.00067213 -0.00085871 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.49180111 -0.00110885  0.00124602 -0.51306397  0.00052036 -0.00016882 -0.00167581  0.00133442

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.39758982 -0.00095298 -0.00149840  0.63463717 -0.00052843 -0.00200360  0.00035379  0.00106145

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00169135 -0.01445520 -0.02196104 -0.00039545 -0.40742960  0.00439629  0.00345445  0.46282879

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00134705 -0.00252370 -0.00209317  0.00032846  0.00283721  0.64438872  0.50070244 -0.00305737

   8    1  |1 0>          -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00130748 -0.54747882 -0.40743309 -0.00100437  0.02194711 -0.00319001 -0.00249612  0.00328711

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00850431 -0.00006900 -0.00008811  0.01088334 -0.00000851 -0.00010877  0.00001352  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00007473  0.00847245  0.01083899  0.00009559 -0.00026856  0.00108281  0.00015168 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00006352 -0.00073832 -0.00094831  0.00008452  0.00002171  0.01240259  0.00170951  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00179406 -0.00200093  0.00755767  0.00033552  0.29298064  0.00005027 -0.00007561  0.72782888

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00058411 -0.00076139  0.01987236  0.00081015  0.76138936  0.00009989  0.00002732 -0.26307946

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.54743854  0.00249220 -0.00186242 -0.40791341  0.00060537 -0.00299358  0.02248135 -0.00110089

   7    1  |1 1>-          0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00257058  0.54766282 -0.40784380  0.00192002  0.01222395 -0.00061960  0.00361289 -0.01677323

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01591977 -0.00258379  0.00176160  0.00974200 -0.00005031 -0.11138680  0.80811597  0.00006360

   1    1  |0 0>          -0.00000000  0.00000001 -0.02770219  0.00199141 -0.00220587 -0.00115056  0.00023881  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000001 -0.00000000  0.00215411  0.02771865 -0.00106500 -0.00166759  0.00086400  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00205319  0.00110753  0.02773120 -0.00172194  0.00044641 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00116155  0.00198380  0.00161445  0.02687645 -0.00688452 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00008612  0.00041702 -0.00000675 -0.00694392 -0.02700435 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000002  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000001  0.00000015  0.00000001 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000005  0.00000000 -0.00000001  0.00000006  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00017267 -0.19610761 -0.00277657 -0.03482880  0.54779584  0.00004136
                          -0.00000000 -0.00000076  0.00000000 -0.00000003 -0.00000019  0.00000000

   5    1  |1 1>+          0.00022313  0.74553196 -0.00399010 -0.01224039  0.19148081 -0.00031866
                           0.00000000  0.00000289  0.00000000 -0.00000001 -0.00000007 -0.00000000

   6    1  |1 1>+         -0.01101491 -0.00005185  0.00413923  0.01771211  0.00113151 -0.57710367
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00091875  0.01890474  0.58931769 -0.00061535  0.00600346  0.00412835
                           0.00000000  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.35142183  0.00014107  0.00026935  0.63857111  0.04051790  0.01631601
                          -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000005  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000001  0.00000010 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000003  0.00000000

   4    1  |1 0>          -0.00000001 -0.00000000 -0.00000000  0.00000001  0.00000002 -0.00000000
                           0.65164291 -0.00029100  0.00162252  0.26392482  0.01686174 -0.00171533

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000004 -0.00000000
                           0.41090257 -0.00026096 -0.00252521 -0.51844846 -0.03283470 -0.00124785

   6    1  |1 0>           0.00000000  0.00000002  0.00000000  0.00000000  0.00000001  0.00000000
                          -0.00120178 -0.00531525  0.56455220 -0.00395041  0.01864914  0.00387367

   7    1  |1 0>          -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00231905  0.00205921 -0.00398131 -0.00042746  0.00299816  0.57732513

   8    1  |1 0>          -0.00000000 -0.00000141 -0.00000000  0.00000004  0.00000022 -0.00000000
                           0.00006164  0.36547885 -0.02033379 -0.03998897  0.63066312 -0.00307328

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000008 -0.00000000  0.00000000  0.00000022  0.00000002  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000001  0.00000000  0.00000002 -0.00000027  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000001

   4    1  |1 1>-          0.00000000  0.00000010  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00170688 -0.02616324  0.18752002 -0.00042912 -0.00318179 -0.00008961

   5    1  |1 1>-         -0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00040070  0.01218305  0.54620060 -0.00298909  0.00260068  0.00001657

   6    1  |1 1>-          0.00000001  0.00000002  0.00000000 -0.00000001 -0.00000004  0.00000000
                          -0.53166191 -0.00344287 -0.00273012 -0.49945554 -0.02831989 -0.01532724

   7    1  |1 1>-          0.00000000  0.00000201 -0.00000000  0.00000003  0.00000018 -0.00000000
                           0.00342574 -0.52048956  0.00005370 -0.02887564  0.51117395 -0.00251603

   8    1  |1 1>-         -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.01466362  0.00220970  0.00006045  0.01382688 -0.00169841 -0.57714252

   1    1  |0 0>           0.00000000 -0.00000003  0.00000006  0.00000001  0.00000052  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000005  0.00000000  0.00000002  0.00000054 -0.00000001 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000001 -0.00000056  0.00000002  0.00000005  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000003  0.00000003  0.00000002 -0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000002
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.08609891     -0.01223787    -2685.90      0.00000000        0.00      0.0000
     2   1   -214.07880624     -0.00494520    -1085.34      0.00729267     1600.56      0.1984
     3   1   -214.07880622     -0.00494517    -1085.34      0.00729270     1600.56      0.1984
     4   1   -214.07880618     -0.00494514    -1085.33      0.00729273     1600.57      0.1984
     5   1   -214.07100796      0.00285308      626.18      0.01509095     3312.08      0.4106
     6   1   -214.07100790      0.00285314      626.19      0.01509101     3312.09      0.4106
     7   1   -214.07100788      0.00285317      626.20      0.01509104     3312.10      0.4106
     8   1   -214.07100785      0.00285320      626.20      0.01509107     3312.11      0.4106
     9   1   -214.07100782      0.00285323      626.21      0.01509109     3312.11      0.4106
    10   1   -214.04554128      0.02831976     6215.47      0.04055763     8901.37      1.1036
    11   1   -214.04554125      0.02831979     6215.48      0.04055766     8901.38      1.1036
    12   1   -214.04554118      0.02831986     6215.49      0.04055773     8901.39      1.1036
    13   1   -214.04554107      0.02831997     6215.52      0.04055784     8901.42      1.1036
    14   1   -214.04554106      0.02831998     6215.52      0.04055785     8901.42      1.1036
    15   1   -214.00679917      0.06706187    14718.38      0.07929974    17404.28      2.1579
    16   1   -213.88805987      0.18580118    40778.64      0.19803905    43464.55      5.3889
    17   1   -213.88805984      0.18580120    40778.65      0.19803907    43464.55      5.3889
    18   1   -213.88805983      0.18580122    40778.65      0.19803909    43464.56      5.3889
    19   1   -213.88140699      0.19245406    42238.78      0.20469192    44924.68      5.5700
    20   1   -213.88140698      0.19245407    42238.79      0.20469193    44924.69      5.5700
    21   1   -213.88140696      0.19245408    42238.79      0.20469195    44924.69      5.5700
    22   1   -213.88140674      0.19245431    42238.84      0.20469218    44924.74      5.5700
    23   1   -213.88140668      0.19245436    42238.85      0.20469223    44924.75      5.5700
    24   1   -213.87183497      0.20202607    44339.60      0.21426394    47025.50      5.8304
    25   1   -213.87183496      0.20202608    44339.60      0.21426395    47025.50      5.8304
    26   1   -213.87183496      0.20202608    44339.60      0.21426395    47025.50      5.8304
    27   1   -213.87183489      0.20202616    44339.62      0.21426403    47025.52      5.8304
    28   1   -213.87183487      0.20202617    44339.62      0.21426404    47025.52      5.8304
    29   1   -213.87183487      0.20202617    44339.62      0.21426404    47025.52      5.8304
    30   1   -213.87183477      0.20202628    44339.64      0.21426415    47025.54      5.8304

 E0 =   -214.07386105 is the energy of the lowest zeroth-order state
 E1 =   -214.08609891 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.56850613  0.00000109 -0.00543542 -0.00454174 -0.26485906  0.73160435 -0.09005068 -0.00972245
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00366204 -0.00526854  0.00162685  0.70702143  0.00004119  0.00603268  0.00065466 -0.01121010
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00436219  0.00428146  0.70702495 -0.00162989 -0.00160123  0.00840380 -0.01393177  0.67811547
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00000000 -0.00118420  0.00000693 -0.00001380  0.00012517 -0.00218784 -0.01810754 -0.00034494
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00000000  0.00751409 -0.00004382  0.00003964  0.00002196 -0.00034389 -0.00285291 -0.00005700
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000005  0.00000172  0.00018709  0.00006157 -0.01737244 -0.00621188  0.00063392 -0.00021260
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00000000 -0.00003424 -0.00052635  0.00656642  0.00009943  0.00002651 -0.00005670  0.00090951
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000000  0.00003530  0.00656389  0.00052499  0.00049721  0.00014104  0.00015828 -0.00918490
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00326970 -0.00017952  0.05974463 -0.70451322  0.00465083  0.00382182 -0.00353696 -0.07009397

 10  1     2    1  |1 0>        0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.56638132  0.06136691  0.00001428 -0.00407998 -0.50447189 -0.58474724  0.12645417  0.00470641

 11  1     3    1  |1 0>        0.00000000  0.00000015  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.04934565  0.70438021 -0.00379492 -0.00014709  0.03936731  0.13264577  0.66489149  0.01189586

 12  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00003250  0.00589469  0.00050063  0.00002048  0.00004059 -0.00022367  0.01154628

 13  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00002559  0.00476503  0.00040504  0.00002308 -0.00009093  0.00028103 -0.01428225

 14  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00013927  0.00055875 -0.00656241 -0.00012243  0.00009941  0.00022372  0.00095564

 15  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000009 -0.00003048  0.00001261  0.00004743 -0.01409712  0.01183662 -0.00148181 -0.00010284

 16  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00658611  0.00002393  0.00014160  0.00000583  0.00105110  0.00916965  0.00014890

 17  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00466347  0.00025823 -0.70450096 -0.05971069 -0.00571587  0.00355471 -0.01713486  0.67454189

 18  1     2    1  |1 1>-      -0.00000000 -0.00000015 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.04931788 -0.70436470 -0.00028480 -0.00564324  0.06230912  0.06916072  0.67262706  0.01717698

 19  1     3    1  |1 1>-      -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.56637654  0.06133626 -0.00577609 -0.00000026  0.76832706 -0.14412087 -0.03676539  0.00459240

 20  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00006136 -0.00060027  0.00707354  0.00001638  0.00000790  0.00001664 -0.00068519

 21  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000518  0.00022986 -0.00272213  0.00004351  0.00002492  0.00003742 -0.00177943

 22  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00008100  0.00656096  0.00055717  0.00010296  0.00057195 -0.00017737  0.00917612

 23  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00658705 -0.00008592  0.00004371 -0.00004724  0.00119023  0.00915655  0.00010444

 24  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000003 -0.00003256 -0.00019060 -0.00001566  0.00328098  0.01803087 -0.00219429 -0.00038534

 25  1     1    1  |0 0>        0.00000003 -0.00000100  0.00000012  0.00000008 -0.00962791 -0.03522305 -0.27666141  0.01239405
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 26  1     2    1  |0 0>       -0.00000002  0.00000008  0.00000164  0.00000008 -0.01685274 -0.00333393  0.01786043  0.27733495
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 27  1     3    1  |0 0>       -0.00000003 -0.00000011  0.00000020 -0.00000070 -0.01805868 -0.00743892 -0.02824230  0.03919846
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 28  1     4    1  |0 0>        0.00000049  0.00000011  0.00000011 -0.00000003  0.27367023  0.05650854 -0.01748187  0.02048907
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 29  1     5    1  |0 0>       -0.00000037  0.00000002  0.00000004  0.00000001 -0.05858688  0.27300299 -0.03262914  0.00181290
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 30  1     6    1  |0 0>       -0.17406455 -0.00000000  0.00000000 -0.00000000  0.00000049 -0.00000038 -0.00000002  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.00510784 -0.00044889 -0.00206173  0.00154835 -0.22620934  0.04112980  0.10049126  0.00004912
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.67828541 -0.02136054  0.19640929 -0.02410876 -0.00118974  0.00604644  0.00064731 -0.00847453
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.01115729 -0.01271989 -0.02545917 -0.19703243 -0.00224753 -0.00389293  0.00077107  0.00071335
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00003818  0.01794206  0.00175860 -0.00139491  0.00002521  0.00047534 -0.00000000 -0.00067547
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00002793  0.00282894  0.00025522 -0.00021941  0.00000435  0.00007648  0.00000000  0.00031512
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00003472  0.00041755  0.00066888  0.00001689 -0.00327601 -0.01799248  0.00000003  0.00383244
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00918899 -0.00091319  0.00909427 -0.00036381  0.00003731  0.00040823 -0.00000000  0.54766358
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00091000 -0.00067424 -0.00044316 -0.00912468  0.00007278  0.00035200 -0.00000000 -0.00101938
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.67474136 -0.02176648  0.19775293 -0.00678119 -0.00054693  0.00507450 -0.00057796  0.00850435

 10  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00663847  0.01256693 -0.00323098 -0.00440358  0.14820848  0.17497651  0.10011527  0.00005278

 11  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00381194  0.19699086  0.02141885 -0.01509906 -0.01263541 -0.00996217 -0.00872244  0.00004234

 12  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00119898  0.00084028  0.00047908  0.01146929  0.00001770  0.00022222 -0.00000000  0.00150146

 13  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00148051 -0.00103916 -0.00059639 -0.01418738 -0.00006984 -0.00023430 -0.00000000  0.00124211

 14  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00918092 -0.00118951  0.00907119 -0.00029755  0.00011043  0.00019270  0.00000000 -0.54747175

 15  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00007676  0.00023058  0.00030759  0.00012904  0.01396288 -0.01183902  0.00000005  0.00385765

 16  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00025117 -0.00905167 -0.00115934  0.00071645 -0.00007981 -0.00019107 -0.00000000  0.01443322

 17  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.07001289 -0.01569811 -0.00847837 -0.19831517 -0.00112374 -0.00194669 -0.00082433  0.00002475

 18  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00085774  0.19711411  0.01993305 -0.01631384  0.00699002 -0.01359285  0.00871758  0.00002307

 19  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00110445 -0.01213644  0.00542891  0.00295585  0.07715386 -0.21594350  0.10011395 -0.00000181

 20  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00659676  0.00067292 -0.00653442  0.00022715 -0.00001193 -0.00020271 -0.00000000  0.59022358

 21  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.01714377  0.00175399 -0.01698106  0.00059125 -0.00002622 -0.00052493 -0.00000000 -0.22711882

 22  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00095453  0.00059990  0.00036514  0.00911876  0.00052379  0.00034711  0.00000000  0.00164745

 23  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00002521 -0.00908167 -0.00094484  0.00064333  0.00006621 -0.00021408  0.00000000  0.00134074

 24  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00006927 -0.00014917 -0.00024677 -0.00040256  0.01723248  0.00615523  0.00000000  0.00000884

 25  1     1    1  |0 0>        0.03162120  0.95911442 -0.00165978  0.00130139  0.00129152 -0.01695217  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 26  1     2    1  |0 0>        0.03871823 -0.00210357  0.00070041  0.95805016 -0.01287413 -0.04651568  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 27  1     3    1  |0 0>       -0.27624786  0.00115658  0.95883472 -0.00210564 -0.00107017 -0.02868707  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 28  1     4    1  |0 0>       -0.01471662  0.01683641  0.02875050  0.04703190  0.04248917  0.95658997 -0.00000001  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     5    1  |0 0>        0.00007145 -0.00206624 -0.00019233  0.01078209  0.95823665 -0.04305030 -0.00000002  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 30  1     6    1  |0 0>        0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000009 -0.00000002  0.98473424 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00006962 -0.00000030  0.00000580 -0.00006257  0.00006328 -0.00473866 -0.01163982 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00071291  0.00002459 -0.00027053  0.00093367 -0.01084048 -0.00003256 -0.00007268  0.00000021
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00847470  0.00001803 -0.00000206  0.01084403  0.00093436 -0.00004284 -0.00006179 -0.00000002
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00028375 -0.09842471  0.80590617  0.00183449 -0.01964742  0.00012654  0.00023163 -0.00414459
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00148841  0.62471082  0.12699739  0.00030611 -0.00212008 -0.00007502  0.00007525  0.02965786
                               -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.01592047  0.00004030 -0.00010862  0.01310702 -0.00293017  0.75549744 -0.30755036 -0.00312719
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00090752  0.00001008 -0.00918075  0.00146210 -0.40791359 -0.00538354  0.00217024 -0.43084871
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.54744298 -0.00132057 -0.00083831  0.40781747  0.00157586 -0.02221026  0.00997594  0.00102803
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00002478  0.00004683 -0.00035860 -0.00001074 -0.01087820  0.00004286 -0.00005720 -0.00000020

 10  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000190 -0.00073790  0.00094185 -0.00002764 -0.00009248 -0.00768176  0.00988676 -0.00000000

 11  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00002014 -0.00847267  0.01083763  0.00002772 -0.00035194  0.00067213 -0.00085871 -0.00000000

 12  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.49180111 -0.00110885  0.00124602 -0.51306397  0.00052036 -0.00016882 -0.00167581  0.00133442

 13  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.39758982 -0.00095298 -0.00149840  0.63463717 -0.00052843 -0.00200360  0.00035379  0.00106145

 14  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00169135 -0.01445520 -0.02196104 -0.00039545 -0.40742960  0.00439629  0.00345445  0.46282879

 15  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00134705 -0.00252370 -0.00209317  0.00032846  0.00283721  0.64438872  0.50070244 -0.00305737

 16  1     8    1  |1 0>       -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00130748 -0.54747882 -0.40743309 -0.00100437  0.02194711 -0.00319001 -0.00249612  0.00328711

 17  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00850431 -0.00006900 -0.00008811  0.01088334 -0.00000851 -0.00010877  0.00001352  0.00000000

 18  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00007473  0.00847245  0.01083899  0.00009559 -0.00026856  0.00108281  0.00015168 -0.00000000

 19  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00006352 -0.00073832 -0.00094831  0.00008452  0.00002171  0.01240259  0.00170951  0.00000000

 20  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00179406 -0.00200093  0.00755767  0.00033552  0.29298064  0.00005027 -0.00007561  0.72782888

 21  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00058411 -0.00076139  0.01987236  0.00081015  0.76138936  0.00009989  0.00002732 -0.26307946

 22  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.54743854  0.00249220 -0.00186242 -0.40791341  0.00060537 -0.00299358  0.02248135 -0.00110089

 23  1     7    1  |1 1>-       0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00257058  0.54766282 -0.40784380  0.00192002  0.01222395 -0.00061960  0.00361289 -0.01677323

 24  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01591977 -0.00258379  0.00176160  0.00974200 -0.00005031 -0.11138680  0.80811597  0.00006360

 25  1     1    1  |0 0>       -0.00000000  0.00000001 -0.02770219  0.00199141 -0.00220587 -0.00115056  0.00023881  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 26  1     2    1  |0 0>       -0.00000001 -0.00000000  0.00215411  0.02771865 -0.00106500 -0.00166759  0.00086400  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00205319  0.00110753  0.02773120 -0.00172194  0.00044641 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00116155  0.00198380  0.00161445  0.02687645 -0.00688452 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00008612  0.00041702 -0.00000675 -0.00694392 -0.02700435 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 30  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000002  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30

  1  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000001  0.00000015  0.00000001 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000005  0.00000000 -0.00000001  0.00000006  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00017267 -0.19610761 -0.00277657 -0.03482880  0.54779584  0.00004136
                               -0.00000000 -0.00000076  0.00000000 -0.00000003 -0.00000019  0.00000000

  5  1     5    1  |1 1>+       0.00022313  0.74553196 -0.00399010 -0.01224039  0.19148081 -0.00031866
                                0.00000000  0.00000289  0.00000000 -0.00000001 -0.00000007 -0.00000000

  6  1     6    1  |1 1>+      -0.01101491 -0.00005185  0.00413923  0.01771211  0.00113151 -0.57710367
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00091875  0.01890474  0.58931769 -0.00061535  0.00600346  0.00412835
                                0.00000000  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.35142183  0.00014107  0.00026935  0.63857111  0.04051790  0.01631601
                               -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000005  0.00000000

  9  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000001  0.00000010 -0.00000000  0.00000000  0.00000000

 10  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003

 11  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000003  0.00000000

 12  1     4    1  |1 0>       -0.00000001 -0.00000000 -0.00000000  0.00000001  0.00000002 -0.00000000
                                0.65164291 -0.00029100  0.00162252  0.26392482  0.01686174 -0.00171533

 13  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000004 -0.00000000
                                0.41090257 -0.00026096 -0.00252521 -0.51844846 -0.03283470 -0.00124785

 14  1     6    1  |1 0>        0.00000000  0.00000002  0.00000000  0.00000000  0.00000001  0.00000000
                               -0.00120178 -0.00531525  0.56455220 -0.00395041  0.01864914  0.00387367

 15  1     7    1  |1 0>       -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00231905  0.00205921 -0.00398131 -0.00042746  0.00299816  0.57732513

 16  1     8    1  |1 0>       -0.00000000 -0.00000141 -0.00000000  0.00000004  0.00000022 -0.00000000
                                0.00006164  0.36547885 -0.02033379 -0.03998897  0.63066312 -0.00307328

 17  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000008 -0.00000000  0.00000000  0.00000022  0.00000002  0.00000000

 18  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000001  0.00000000  0.00000002 -0.00000027  0.00000000

 19  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000001

 20  1     4    1  |1 1>-       0.00000000  0.00000010  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00170688 -0.02616324  0.18752002 -0.00042912 -0.00318179 -0.00008961

 21  1     5    1  |1 1>-      -0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00040070  0.01218305  0.54620060 -0.00298909  0.00260068  0.00001657

 22  1     6    1  |1 1>-       0.00000001  0.00000002  0.00000000 -0.00000001 -0.00000004  0.00000000
                               -0.53166191 -0.00344287 -0.00273012 -0.49945554 -0.02831989 -0.01532724

 23  1     7    1  |1 1>-       0.00000000  0.00000201 -0.00000000  0.00000003  0.00000018 -0.00000000
                                0.00342574 -0.52048956  0.00005370 -0.02887564  0.51117395 -0.00251603

 24  1     8    1  |1 1>-      -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.01466362  0.00220970  0.00006045  0.01382688 -0.00169841 -0.57714252

 25  1     1    1  |0 0>        0.00000000 -0.00000003  0.00000006  0.00000001  0.00000052  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1     2    1  |0 0>        0.00000005  0.00000000  0.00000002  0.00000054 -0.00000001 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1     3    1  |0 0>        0.00000000 -0.00000001 -0.00000056  0.00000002  0.00000005  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000003  0.00000003  0.00000002 -0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000002
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        32.32%    0.00%    0.00%    0.00%    7.02%   53.52%    0.81%    0.01%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   49.99%    0.00%    0.00%    0.00%    0.01%
  3  1     3    1  |1 1>+         0.00%    0.00%   49.99%    0.00%    0.00%    0.01%    0.02%   45.98%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  9  1     1    1  |1 0>          0.00%    0.00%    0.36%   49.63%    0.00%    0.00%    0.00%    0.49%
 10  1     2    1  |1 0>         32.08%    0.38%    0.00%    0.00%   25.45%   34.19%    1.60%    0.00%
 11  1     3    1  |1 0>          0.24%   49.62%    0.00%    0.00%    0.15%    1.76%   44.21%    0.01%
 12  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 13  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 14  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.01%    0.00%    0.00%
 16  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 17  1     1    1  |1 1>-         0.00%    0.00%   49.63%    0.36%    0.00%    0.00%    0.03%   45.50%
 18  1     2    1  |1 1>-         0.24%   49.61%    0.00%    0.00%    0.39%    0.48%   45.24%    0.03%
 19  1     3    1  |1 1>-        32.08%    0.38%    0.00%    0.00%   59.03%    2.08%    0.14%    0.00%
 20  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 23  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 24  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 25  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.12%    7.65%    0.02%
 26  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.03%    7.69%
 27  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.01%    0.08%    0.15%
 28  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    7.49%    0.32%    0.03%    0.04%
 29  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.34%    7.45%    0.11%    0.00%
 30  1     6    1  |0 0>          3.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    5.12%    0.17%    1.01%    0.00%
  2  1     2    1  |1 1>+        46.01%    0.05%    3.86%    0.06%    0.00%    0.00%    0.00%    0.01%
  3  1     3    1  |1 1>+         0.01%    0.02%    0.06%    3.88%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%   29.99%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  9  1     1    1  |1 0>         45.53%    0.05%    3.91%    0.00%    0.00%    0.00%    0.00%    0.01%
 10  1     2    1  |1 0>          0.00%    0.02%    0.00%    0.00%    2.20%    3.06%    1.00%    0.00%
 11  1     3    1  |1 0>          0.00%    3.88%    0.05%    0.02%    0.02%    0.01%    0.01%    0.00%
 12  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 13  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 14  1     6    1  |1 0>          0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%   29.97%
 15  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.01%    0.00%    0.00%
 16  1     8    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 17  1     1    1  |1 1>-         0.49%    0.02%    0.01%    3.93%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 1>-         0.00%    3.89%    0.04%    0.03%    0.00%    0.02%    0.01%    0.00%
 19  1     3    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.60%    4.66%    1.00%    0.00%
 20  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   34.84%
 21  1     5    1  |1 1>-         0.03%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    5.16%
 22  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 25  1     1    1  |0 0>          0.10%   91.99%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 26  1     2    1  |0 0>          0.15%    0.00%    0.00%   91.79%    0.02%    0.22%    0.00%    0.00%
 27  1     3    1  |0 0>          7.63%    0.00%   91.94%    0.00%    0.00%    0.08%    0.00%    0.00%
 28  1     4    1  |0 0>          0.02%    0.03%    0.08%    0.22%    0.18%   91.51%    0.00%    0.00%
 29  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.01%   91.82%    0.19%    0.00%    0.00%
 30  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.97%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.97%   64.95%    0.00%    0.04%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%   39.03%    1.61%    0.00%    0.00%    0.00%    0.00%    0.09%
  6  1     6    1  |1 1>+         0.03%    0.00%    0.00%    0.02%    0.00%   57.08%    9.46%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.01%    0.00%   16.64%    0.00%    0.00%   18.56%
  8  1     8    1  |1 1>+        29.97%    0.00%    0.00%   16.63%    0.00%    0.05%    0.01%    0.00%
  9  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 10  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%
 11  1     3    1  |1 0>          0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     4    1  |1 0>         24.19%    0.00%    0.00%   26.32%    0.00%    0.00%    0.00%    0.00%
 13  1     5    1  |1 0>         15.81%    0.00%    0.00%   40.28%    0.00%    0.00%    0.00%    0.00%
 14  1     6    1  |1 0>          0.00%    0.02%    0.05%    0.00%   16.60%    0.00%    0.00%   21.42%
 15  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   41.52%   25.07%    0.00%
 16  1     8    1  |1 0>          0.00%   29.97%   16.60%    0.00%    0.05%    0.00%    0.00%    0.00%
 17  1     1    1  |1 1>-         0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 1>-         0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 20  1     4    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    8.58%    0.00%    0.00%   52.97%
 21  1     5    1  |1 1>-         0.00%    0.00%    0.04%    0.00%   57.97%    0.00%    0.00%    6.92%
 22  1     6    1  |1 1>-        29.97%    0.00%    0.00%   16.64%    0.00%    0.00%    0.05%    0.00%
 23  1     7    1  |1 1>-         0.00%   29.99%   16.63%    0.00%    0.01%    0.00%    0.00%    0.03%
 24  1     8    1  |1 1>-         0.03%    0.00%    0.00%    0.01%    0.00%    1.24%   65.31%    0.00%
 25  1     1    1  |0 0>          0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%
 28  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%
 29  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%
 30  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    3.85%    0.00%    0.12%   30.01%    0.00%
  5  1     5    1  |1 1>+         0.00%   55.58%    0.00%    0.01%    3.67%    0.00%
  6  1     6    1  |1 1>+         0.01%    0.00%    0.00%    0.03%    0.00%   33.30%
  7  1     7    1  |1 1>+         0.00%    0.04%   34.73%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+        12.35%    0.00%    0.00%   40.78%    0.16%    0.03%
  9  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     4    1  |1 0>         42.46%    0.00%    0.00%    6.97%    0.03%    0.00%
 13  1     5    1  |1 0>         16.88%    0.00%    0.00%   26.88%    0.11%    0.00%
 14  1     6    1  |1 0>          0.00%    0.00%   31.87%    0.00%    0.03%    0.00%
 15  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 16  1     8    1  |1 0>          0.00%   13.36%    0.04%    0.16%   39.77%    0.00%
 17  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 1>-         0.00%    0.07%    3.52%    0.00%    0.00%    0.00%
 21  1     5    1  |1 1>-         0.00%    0.01%   29.83%    0.00%    0.00%    0.00%
 22  1     6    1  |1 1>-        28.27%    0.00%    0.00%   24.95%    0.08%    0.02%
 23  1     7    1  |1 1>-         0.00%   27.09%    0.00%    0.08%   26.13%    0.00%
 24  1     8    1  |1 1>-         0.02%    0.00%    0.00%    0.02%    0.00%   33.31%
 25  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%


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

              2       7      591.79       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     24162.91  22094.28    567.05   1498.87      1.77      0.04      0.66
 REAL TIME  *     24417.10 SEC
 DISK USED  *       628.16 MB (local),        7.42 GB (total)
 SF USED    *         4.16 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -213.871834767278

              CI              CI           MULTI         RHF-SCF
   -213.95188687   -213.82404547   -213.28156001   -213.37363633
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
