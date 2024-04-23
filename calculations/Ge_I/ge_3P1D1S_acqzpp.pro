
 Working directory              : /wrk/irikura/molpro.GEJL05MRav/
 Global scratch directory       : /wrk/irikura/molpro.GEJL05MRav/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.GEJL05MRav/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Ge SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ge};
 
 basis=aug-cc-pwCVQZ-PP
 
                                                                                 ! spherical anion ROHF orbitals
 {rhf; wf,nelec=23,sym=2,spin=3}
 
 NTRIP = 3
 NSING = 6
 
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
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5102.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5102.2,5101.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 15:24:22  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ge   ECP ECP10MDF                 selected for group  1
 Library entry GE     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry GE     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry GE     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry GE     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry GE     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry GE     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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

   1  GE     22.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   22
 NUMBER OF PRIMITIVE AOS:         300
 NUMBER OF SYMMETRY AOS:          232
 NUMBER OF CONTRACTIONS:          166   (   86Ag  +   80Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 2 3 4 5 6   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9
                                       101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011  12131415161718192021


 Eigenvalues of metric

         1 0.130E-03 0.122E-02 0.438E-02 0.119E-01 0.119E-01 0.119E-01 0.119E-01 0.119E-01
         2 0.708E-04 0.708E-04 0.708E-04 0.215E-02 0.215E-02 0.215E-02 0.297E-01 0.297E-01


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     91.488 MB (compressed) written to integral file ( 13.1%)

     Node minimum: 3.146 MB, node maximum: 11.010 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4051422.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4051422      RECORD LENGTH: 524288

 Memory used in sort:       4.61 MW

 SORT1 READ    86907878. AND WROTE      723487. INTEGRALS IN      3 RECORDS. CPU TIME:     0.39 SEC, REAL TIME:     0.40 SEC
 SORT2 READ     8938344. AND WROTE    48612351. INTEGRALS IN    372 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.12 SEC

 Node minimum:     4048764.  Node maximum:     4053420. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.35       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.99      1.76
 REAL TIME  *         2.87 SEC
 DISK USED  *        29.71 MB (local),      556.21 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   4   9
 Initial beta  occupancy:   2   8

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -219.84432973    -219.84432973     0.00D+00     0.41D+00     0     0       0.03      0.05    start
   2     -266.26943790     -46.42510817     0.26D+00     0.30D+01     1     0       0.02      0.07    diag2
   3     -282.97157989     -16.70214199     0.37D+00     0.56D+00     2     0       0.03      0.10    diag2
   4     -292.80378390      -9.83220401     0.20D+00     0.34D+01     3     0       0.02      0.12    diag2
   5     -293.35227436      -0.54849046     0.36D-01     0.42D+00     4     0       0.03      0.15    diag2
   6     -293.37798090      -0.02570655     0.88D-02     0.98D-02     5     0       0.02      0.17    diag2
   7     -293.38139614      -0.00341524     0.22D-02     0.93D-02     6     0       0.02      0.19    diag2
   8     -293.38280890      -0.00141276     0.84D-03     0.14D-02     7     0       0.03      0.22    fixocc
   9     -293.38322868      -0.00041979     0.14D-03     0.88D-03     8     0       0.02      0.24    diag2
  10     -293.38326991      -0.00004122     0.14D-03     0.28D-03     9     0       0.03      0.27    diag2/orth
  11     -293.38327096      -0.00000106     0.14D-04     0.62D-04     9     0       0.02      0.29    diag2
  12     -293.38327102      -0.00000006     0.58D-05     0.25D-04     9     0       0.02      0.31    diag2
  13     -293.38327103      -0.00000000     0.58D-06     0.39D-05     9     0       0.03      0.34    diag2
  14     -293.38327103      -0.00000000     0.91D-07     0.72D-06     9     0       0.03      0.37    diag2
  15     -293.38327103      -0.00000000     0.44D-07     0.15D-06     0     0       0.02      0.39    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -293.383271028314
  RHF One-electron energy            -528.170006413531
  RHF Two-electron energy             234.786735385217
  RHF Kinetic energy                  205.138273976761
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.430173245299

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.09553     1  1  s    0.99976
    2.1     2.00000    -1.35041     1  1  d0   0.99098
    3.1     2.00000    -1.35041     1  1  d1+  0.99999
    4.1     2.00000    -1.35041     1  1  d1-  0.99999
    5.1     2.00000    -1.35041     1  1  d2-  0.99999
    6.1     2.00000    -1.35041     1  1  d2+  0.99098
    7.1     2.00000    -0.33234     1  1  s   -0.29115    1  4  s    0.35208    1  5  s    0.56465    1  6  s    0.27620
    1.2     2.00000    -5.01051     1  1  pz   0.99921
    2.2     2.00000    -5.01051     1  1  px   0.99921
    3.2     2.00000    -5.01051     1  1  py   0.99921
    4.2     1.00000    -0.05789     1  2  py   0.83290
    5.2     1.00000    -0.05789     1  2  px   0.83290
    6.2     1.00000    -0.05789     1  2  pz   0.83289


 HOMO      6.2    -0.057890 =      -1.5753eV
 LUMO      7.2     0.153708 =       4.1826eV
 LUMO-HOMO         0.211598 =       5.7579eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.35       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.83       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.79      0.80      1.76
 REAL TIME  *         3.71 SEC
 DISK USED  *        32.19 MB (local),      585.93 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     153 (   79   74)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.119D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.699D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.109D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.120D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.120D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 4   6 3 5 1 5 3 6 4 2 5   3 6 4 2 7 911 81214  151310 1 2 4 6 3 5 7
                                        911 81214151310 1 2   4 6 3 5 7 911 81214  151310 1 2 4 6 3 5 1   7 911 81214151310 2
                                        4 6 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.201D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.500D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.701D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.702D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.501D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.202D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 2 1 3 2   1 3 6 4 5 810 7 9 2   1 3 6 4 5 810 7 9 6   4 5 810 7 9 3 1 2 6
                                        4 5 810 7 9 3 1 219  11122113141615172018   6 4 5 810 7 9 3 1 2   6 4 5 810 7 9 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1012  ( 15 closed/active, 696 closed/virtual, 0 active/active, 301 active/virtual )
 Total number of variables:    1138
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   21   32    0   -293.30618297    -293.32797032   -0.02178735    0.12701007 0.00009933 0.00000000  0.40E+00      0.56
   2    8   14    0   -293.32540530    -293.32860398   -0.00319868    0.17947906 0.00000891 0.00000000  0.39E-01      1.02
   3    7   12    0   -293.32862707    -293.32862757   -0.00000050    0.00146266 0.00000000 0.00000000  0.88E-03      1.50
   4    4    8    0   -293.32862757    -293.32862757   -0.00000000    0.00000028 0.00000001 0.00000000  0.26E-06      1.83

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.62E-08)
                       Final energy:   -293.32862757
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -293.358153167155
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06126797
 One electron energy                          -522.59705094
 Two electron energy                           229.23889778
 Virial ratio                                    2.43058782
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -293.358153166950
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06126799
 One electron energy                          -522.59705102
 Two electron energy                           229.23889786
 Virial ratio                                    2.43058782
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -293.358153166891
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06126800
 One electron energy                          -522.59705105
 Two electron energy                           229.23889788
 Virial ratio                                    2.43058782
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -293.319505524701
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06126797
 One electron energy                          -522.59705094
 Two electron energy                           229.27754542
 Virial ratio                                    2.43039936
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -293.319505524677
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06126797
 One electron energy                          -522.59705094
 Two electron energy                           229.27754542
 Virial ratio                                    2.43039936
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -293.319505524204
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06126799
 One electron energy                          -522.59705102
 Two electron energy                           229.27754550
 Virial ratio                                    2.43039936
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -293.319505524049
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06126800
 One electron energy                          -522.59705105
 Two electron energy                           229.27754553
 Virial ratio                                    2.43039936
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -293.319505523890
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06126800
 One electron energy                          -522.59705107
 Two electron energy                           229.27754554
 Virial ratio                                    2.43039936
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -293.285661039089
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.05295604
 One electron energy                          -522.43738452
 Two electron energy                           229.15172349
 Virial ratio                                    2.43029228
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.418036573510
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.581963510930
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.633879143194
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.366120792345
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     4.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.948084283296
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.051915696725
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 2 4   3 5 6 1 2 4 5 3 6 2   3 5 4 6 914151310 8  12 711 1 3 5 4 6 214
                                       151310 812 9 711 1 3   5 2 4 613101415 812   911 7 1 5 3 2 4 6 1  13101415 812 7 911 3
                                        5 4 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 3 1 3 1 2 3   1 2 6 4 5 810 7 9 1   3 2 4 810 5 9 7 6 9   7 4 810 5 6 1 2 3 9
                                        7 810 4 5 6 1 2 320  18151714162113111912   9 7 810 4 5 6 1 2 3   810 7 9 4 5 6 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.35355     1  1  s    1.00044
    2.1     2.00000    -1.60811     1  1  d2-  1.00006
    3.1     2.00000    -1.60811     1  1  d2+  1.00006
    4.1     2.00000    -1.60811     1  1  d1-  1.00006
    5.1     2.00000    -1.60811     1  1  d1+  1.00006
    6.1     2.00000    -1.60811     1  1  d0   1.00006
    7.1     1.96761    -0.56480     1  1  s   -0.29990    1  4  s    0.37275    1  5  s    0.63207
    1.2     2.00000    -5.26802     1  1  py   0.99994
    2.2     2.00000    -5.26802     1  1  px   0.99994
    3.2     2.00000    -5.26802     1  1  pz   0.99994
    4.2     0.67746    -0.06823     1  2  py   1.08625
    5.2     0.67746    -0.06823     1  2  pz   1.08625
    6.2     0.67746    -0.06823     1  2  px   1.08625
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 0aa          0.00000000      0.00000000      0.99369852
 2 aa0         -0.00000000      0.99369852     -0.00000000
 2 a0a          0.99369852      0.00000000     -0.00000000
 0 a2a         -0.11208591     -0.00000000      0.00000000
 0 aa2         -0.00000000     -0.11208591     -0.00000000
 0 2aa          0.00000000      0.00000000     -0.11208591
 
 Energy:     -293.35815317   -293.35815317   -293.35815317
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020         -0.00000000     -0.09243329     -0.00000000     -0.00000000      0.80606900      0.56413994
 2 200         -0.00000000      0.74429289     -0.00000000     -0.00000000     -0.32298493      0.56413992
 2 0ab         -0.00000000      0.00000000     -0.00000000      0.70265096      0.00000000      0.00000000
 2 0ba          0.00000000     -0.00000000      0.00000000     -0.70265096     -0.00000000     -0.00000000
 2 ba0          0.00000000      0.00000000     -0.70265096      0.00000000      0.00000000      0.00000000
 2 ab0         -0.00000000     -0.00000000      0.70265096     -0.00000000     -0.00000000     -0.00000000
 2 b0a         -0.70265096      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2 a0b          0.70265096     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 002         -0.00000000     -0.65185959     -0.00000000      0.00000000     -0.48308410      0.56413993
 0 022         -0.00000000      0.08395378     -0.00000000     -0.00000000     -0.03643163     -0.12279850
 0 220         -0.00000000     -0.07352761     -0.00000000     -0.00000000     -0.05449029     -0.12279850
 0 202         -0.00000000     -0.01042617     -0.00000000      0.00000000      0.09092192     -0.12279850
 0 a2b         -0.07925671      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 0 b2a          0.07925671     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 ab2         -0.00000000     -0.00000000     -0.07925671     -0.00000000     -0.00000000     -0.00000000
 0 ba2          0.00000000      0.00000000      0.07925671      0.00000000      0.00000000      0.00000000
 0 2ba          0.00000000     -0.00000000      0.00000000      0.07925671     -0.00000000     -0.00000000
 0 2ab         -0.00000000      0.00000000     -0.00000000     -0.07925671      0.00000000      0.00000000
 
 Energy:     -293.31950552   -293.31950552   -293.31950552   -293.31950552   -293.31950552   -293.28566104
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.42       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.41       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.50      1.70      0.80      1.76
 REAL TIME  *         5.88 SEC
 DISK USED  *        45.92 MB (local),      750.75 MB (total)
 SF USED    *        37.32 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -293.3581532   2.0
    -293.3581532   2.0
    -293.3581532   2.0
    -293.3195055   6.0
    -293.3195055   6.0
    -293.3195055   6.0
    -293.3195055   6.0
    -293.3195055   6.0
    -293.2856610  -0.0
                                                  


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
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -293.35815317
     2      -293.35815317
     3      -293.35815317

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        224820
 Number of doubly external configurations:       2793111
 Total number of contracted configurations:      3018468
 Total number of uncontracted configurations:   15961702

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    914875 words, CPU-time:      0.18 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -293.35815317     0.00000000    -1.05130536  0.35D-01  0.74D-01     0.36
    1     2     2     1.00000000     0.00000000  -293.35815317    -0.00000000    -1.05142370  0.35D-01  0.74D-01     0.36
    1     3     3     1.00000000     0.00000000  -293.35815317     0.00000000    -1.05112277  0.34D-01  0.74D-01     0.36
    2     1     1     1.07351451    -0.86548741  -294.22364058    -0.86548741    -0.02512258  0.32D-02  0.14D-02     8.04
    2     2     2     1.07371578    -0.86533585  -294.22348901    -0.86533585    -0.02526829  0.33D-02  0.14D-02     8.04
    2     3     3     1.07381767    -0.86525742  -294.22341058    -0.86525742    -0.02534612  0.34D-02  0.14D-02     8.04
    3     1     1     1.06180677    -0.88870464  -294.24685781    -0.02321723    -0.00062729  0.93D-04  0.44D-04    15.36
    3     2     2     1.06179931    -0.88870299  -294.24685616    -0.02336715    -0.00062909  0.93D-04  0.44D-04    15.36
    3     3     3     1.06179538    -0.88870206  -294.24685522    -0.02344464    -0.00063002  0.93D-04  0.44D-04    15.36
    4     1     1     1.06073495    -0.88929314  -294.24744631    -0.00058850    -0.00002892  0.42D-05  0.21D-05    22.70
    4     2     2     1.06073069    -0.88929310  -294.24744626    -0.00059010    -0.00002899  0.42D-05  0.21D-05    22.70
    4     3     3     1.06072852    -0.88929307  -294.24744623    -0.00059101    -0.00002903  0.42D-05  0.21D-05    22.70
    5     1     1     1.06079364    -0.88932093  -294.24747410    -0.00002779    -0.00000102  0.96D-07  0.91D-07    30.02
    5     2     2     1.06079329    -0.88932093  -294.24747410    -0.00002784    -0.00000102  0.96D-07  0.92D-07    30.02
    5     3     3     1.06079302    -0.88932093  -294.24747410    -0.00002786    -0.00000102  0.96D-07  0.92D-07    30.02
    6     1     1     1.06082333    -0.88932196  -294.24747512    -0.00000102    -0.00000004  0.22D-08  0.48D-08    37.36
    6     2     2     1.06082313    -0.88932196  -294.24747512    -0.00000102    -0.00000004  0.22D-08  0.48D-08    37.36
    6     3     3     1.06082324    -0.88932196  -294.24747512    -0.00000102    -0.00000004  0.22D-08  0.48D-08    37.36
    7     1     1     1.06082520    -0.88932200  -294.24747516    -0.00000004    -0.00000000  0.32D-09  0.19D-09    44.70
    7     2     2     1.06082517    -0.88932200  -294.24747516    -0.00000004    -0.00000000  0.32D-09  0.19D-09    44.70
    7     3     3     1.06082518    -0.88932200  -294.24747516    -0.00000004    -0.00000000  0.32D-09  0.19D-09    44.70


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%   2.8%
 P   0.5%  15.8%  25.0%

 Initialization:   0.6%
 Other:           54.7%

 Total CPU:       44.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0           0.0000000   0.9654517   0.0000000
 2222222222/0/          -0.0000000  -0.0000000   0.9654517
 22222222220//           0.9654517  -0.0000000   0.0000000
 2222220222//2          -0.0000000  -0.1017820  -0.0000000
 2222220222/2/           0.0000000   0.0000000  -0.1017820
 22222202222//          -0.1017820   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.970776
 2          -0.000000    0.970776   -0.000000
 3           0.970776    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970776   -0.000000    0.000000
 2          -0.000000    0.970776   -0.000000
 3           0.000000   -0.000000    0.970776


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97077628 (fixed)   0.97080205 (relaxed)   0.97077628 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00027141   -0.00057563   -0.00076995
 Singles      0.01226438   -0.04238719   -0.05022626
 Pairs        0.04857732   -0.84635918   -0.83832579
 Total        1.06111312   -0.88932200   -0.88932200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35815317
 Nuclear energy                         0.00000000
 Kinetic energy                       205.39059379
 One electron energy                 -521.64871197
 Two electron energy                  227.40123680
 Virial quotient                       -1.43262391
 Correlation energy                    -0.88932200
 !MRCI STATE 1.1 Energy              -294.247475163063

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.30182440 (Davidson, fixed reference)
 Cluster corrected energies          -294.30177431 (Davidson, relaxed reference)
 Cluster corrected energies          -294.30182440 (Davidson, rotated reference)

 Cluster corrected energies          -294.29888476 (Pople, fixed reference)
 Cluster corrected energies          -294.29883498 (Pople, relaxed reference)
 Cluster corrected energies          -294.29888476 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97077630 (fixed)   0.97080206 (relaxed)   0.97077630 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00027141   -0.00057563   -0.79838446
 Singles      0.01226436   -0.04238717   -0.05022624
 Pairs        0.04857732    0.00000000   -0.04071130
 Total        1.06111309   -0.04296280   -0.88932200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35815317
 Nuclear energy                         0.00000000
 Kinetic energy                       205.39059122
 One electron energy                 -521.64871069
 Two electron energy                  227.40123553
 Virial quotient                       -1.43262393
 Correlation energy                    -0.88932200
 !MRCI STATE 2.1 Energy              -294.247475163015

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.30182438 (Davidson, fixed reference)
 Cluster corrected energies          -294.30177429 (Davidson, relaxed reference)
 Cluster corrected energies          -294.30182438 (Davidson, rotated reference)

 Cluster corrected energies          -294.29888474 (Pople, fixed reference)
 Cluster corrected energies          -294.29883496 (Pople, relaxed reference)
 Cluster corrected energies          -294.29888474 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97077629 (fixed)   0.97080206 (relaxed)   0.97077629 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00027141   -0.00057563   -0.79838444
 Singles      0.01226437   -0.04238717   -0.05022624
 Pairs        0.04857733   -0.00000000   -0.04071131
 Total        1.06111311   -0.04296281   -0.88932200
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35815317
 Nuclear energy                         0.00000000
 Kinetic energy                       205.39059183
 One electron energy                 -521.64871089
 Two electron energy                  227.40123573
 Virial quotient                       -1.43262392
 Correlation energy                    -0.88932200
 !MRCI STATE 3.1 Energy              -294.247475162923

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.30182439 (Davidson, fixed reference)
 Cluster corrected energies          -294.30177430 (Davidson, relaxed reference)
 Cluster corrected energies          -294.30182439 (Davidson, rotated reference)

 Cluster corrected energies          -294.29888475 (Pople, fixed reference)
 Cluster corrected energies          -294.29883497 (Pople, relaxed reference)
 Cluster corrected energies          -294.29888475 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.42       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       72.18       700     1000      520     2100     2140     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        50.28     45.77      1.70      0.80      1.76
 REAL TIME  *        56.22 SEC
 DISK USED  *       116.70 MB (local),        1.56 GB (total)
 SF USED    *       719.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -294.30182440  AU                              
 SETTING HLSDIAG(2)     =      -294.30182438  AU                              
 SETTING HLSDIAG(3)     =      -294.30182439  AU                              


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
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -293.31950552
     2      -293.31950552
     3      -293.31950552
     4      -293.31950552
     5      -293.31950552
     6      -293.28566104

 Number of blocks in overlap matrix:   643   Smallest eigenvalue:  0.25D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:        160531
 Number of doubly external configurations:       4733230
 Total number of contracted configurations:      4894211
 Total number of uncontracted configurations:   12364343

 Diagonal Coupling coefficients finished.               Storage:    700785 words, CPU-Time:      0.10 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    992748 words, CPU-time:      0.16 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -293.31950552     0.00000000    -1.06152865  0.39D-01  0.78D-01     0.57
    1     2     2     1.00000000     0.00000000  -293.31950552     0.00000000    -1.06094403  0.38D-01  0.78D-01     0.57
    1     3     3     1.00000000     0.00000000  -293.31950552    -0.00000000    -1.06171388  0.39D-01  0.78D-01     0.57
    1     4     4     1.00000000     0.00000000  -293.31950552     0.00000000    -1.06210386  0.40D-01  0.78D-01     0.57
    1     5     5     1.00000000     0.00000000  -293.31950552    -0.00000000    -1.06116932  0.38D-01  0.78D-01     0.57
    1     6     6     1.00000000     0.00000000  -293.28566104    -0.00000000    -1.04753912  0.14D-01  0.93D-01     0.57
    2     1     1     1.07835280    -0.87054885  -294.19005438    -0.87054885    -0.02675900  0.36D-02  0.17D-02    26.64
    2     2     2     1.07839025    -0.87053396  -294.19003948    -0.87053396    -0.02677614  0.36D-02  0.17D-02    26.64
    2     3     3     1.07870596    -0.87024116  -294.18974669    -0.87024116    -0.02711679  0.38D-02  0.17D-02    26.64
    2     4     4     1.07878847    -0.87016645  -294.18967198    -0.87016645    -0.02720061  0.38D-02  0.17D-02    26.64
    2     5     5     1.07910481    -0.86997464  -294.18948016    -0.86997464    -0.02738536  0.39D-02  0.17D-02    26.64
    2     6     6     1.07290579    -0.86675796  -294.15241900    -0.86675796    -0.02486373  0.27D-02  0.22D-02    26.64
    3     1     1     1.06500605    -0.89523159  -294.21473712    -0.02468274    -0.00063709  0.79D-04  0.57D-04    52.74
    3     2     2     1.06502363    -0.89523030  -294.21473582    -0.02469634    -0.00063901  0.79D-04  0.58D-04    52.74
    3     3     3     1.06504073    -0.89522101  -294.21472653    -0.02497984    -0.00065202  0.82D-04  0.59D-04    52.74
    3     4     4     1.06503783    -0.89522087  -294.21472639    -0.02505441    -0.00065225  0.82D-04  0.59D-04    52.74
    3     5     5     1.06505097    -0.89521564  -294.21472116    -0.02524100    -0.00065742  0.82D-04  0.60D-04    52.74
    3     6     6     1.06262255    -0.88956225  -294.17522329    -0.02280430    -0.00063468  0.56D-04  0.90D-04    52.74
    4     1     1     1.06382371    -0.89585484  -294.21536036    -0.00062325    -0.00003316  0.49D-05  0.27D-05    78.64
    4     2     2     1.06382396    -0.89585473  -294.21536026    -0.00062444    -0.00003324  0.49D-05  0.27D-05    78.64
    4     3     3     1.06382866    -0.89585382  -294.21535934    -0.00063281    -0.00003451  0.51D-05  0.28D-05    78.64
    4     4     4     1.06382685    -0.89585372  -294.21535925    -0.00063286    -0.00003466  0.51D-05  0.28D-05    78.64
    4     5     5     1.06383020    -0.89585369  -294.21535921    -0.00063805    -0.00003462  0.51D-05  0.28D-05    78.64
    4     6     6     1.06154561    -0.89018886  -294.17584990    -0.00062661    -0.00003279  0.50D-05  0.31D-05    78.64
    5     1     1     1.06383490    -0.89588704  -294.21539257    -0.00003221    -0.00000133  0.16D-06  0.11D-06   104.67
    5     2     2     1.06383534    -0.89588703  -294.21539255    -0.00003230    -0.00000134  0.16D-06  0.11D-06   104.67
    5     3     3     1.06383557    -0.89588699  -294.21539252    -0.00003317    -0.00000139  0.17D-06  0.12D-06   104.67
    5     4     4     1.06383601    -0.89588699  -294.21539251    -0.00003327    -0.00000139  0.17D-06  0.12D-06   104.67
    5     5     5     1.06383635    -0.89588698  -294.21539251    -0.00003330    -0.00000140  0.17D-06  0.12D-06   104.67
    5     6     6     1.06154582    -0.89022107  -294.17588211    -0.00003221    -0.00000159  0.21D-06  0.15D-06   104.67
    6     1     1     1.06383820    -0.89588838  -294.21539390    -0.00000133    -0.00000005  0.40D-08  0.51D-08   130.81
    6     2     2     1.06383849    -0.89588838  -294.21539390    -0.00000135    -0.00000005  0.39D-08  0.51D-08   130.81
    6     3     3     1.06383863    -0.89588838  -294.21539390    -0.00000139    -0.00000005  0.39D-08  0.51D-08   130.81
    6     4     4     1.06383840    -0.89588838  -294.21539390    -0.00000139    -0.00000005  0.40D-08  0.47D-08   130.81
    6     5     5     1.06383843    -0.89588838  -294.21539390    -0.00000140    -0.00000005  0.40D-08  0.48D-08   130.81
    6     6     6     1.06155681    -0.89022265  -294.17588369    -0.00000158    -0.00000006  0.60D-08  0.68D-08   130.81
    7     1     1     1.06383815    -0.89588843  -294.21539395    -0.00000005    -0.00000000  0.44D-09  0.17D-09   156.86
    7     2     2     1.06383814    -0.89588843  -294.21539395    -0.00000005    -0.00000000  0.44D-09  0.16D-09   156.86
    7     3     3     1.06383810    -0.89588843  -294.21539395    -0.00000005    -0.00000000  0.44D-09  0.16D-09   156.86
    7     4     4     1.06383808    -0.89588843  -294.21539395    -0.00000005    -0.00000000  0.42D-09  0.16D-09   156.86
    7     5     5     1.06383806    -0.89588843  -294.21539395    -0.00000005    -0.00000000  0.41D-09  0.16D-09   156.86
    7     6     6     1.06155525    -0.89022271  -294.17588375    -0.00000006    -0.00000000  0.53D-09  0.23D-09   156.86


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   1.0%
 P   0.5%  11.2%  30.0%

 Initialization:   0.2%
 Other:           56.9%

 Total CPU:      156.9 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220/\          -0.0000000   0.0000000   0.9640341  -0.0000000  -0.0000000   0.0000000
 2222222222/\0          -0.0000000   0.9640341  -0.0000000   0.0000000   0.0000000   0.0000000
 2222222222/0\           0.9640341   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2222222222020           0.0000000  -0.0000000   0.0000000  -0.0315064   0.7864998   0.5489459
 2222222222002           0.0000000  -0.0000000   0.0000000   0.6968820  -0.3659645   0.5489459
 2222222222200          -0.0000000  -0.0000000  -0.0000000  -0.6653755  -0.4205352   0.5489459
 2222220222220           0.0000000   0.0000000   0.0000000   0.0734590  -0.0385766  -0.1121658
 2222220222022          -0.0000000   0.0000000  -0.0000000  -0.0701378  -0.0443290  -0.1121658
 2222220222202          -0.0000000   0.0000000   0.0000000  -0.0033211   0.0829056  -0.1121658
 2222220222/2\          -0.1016198  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2222220222/\2           0.0000000  -0.1016197   0.0000000  -0.0000000  -0.0000000  -0.0000000
 22222202222/\           0.0000000  -0.0000000  -0.1016197   0.0000000   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969349   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.000000    0.969349    0.000000    0.000000   -0.000000
 3           0.000000   -0.000000   -0.000000    0.969349   -0.000000   -0.000000
 4          -0.000000   -0.957847    0.000000   -0.000000   -0.148885    0.000000
 5          -0.000000   -0.148885    0.000000   -0.000000    0.957847    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.970368

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969349   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.969349    0.000000    0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.969349    0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.969349   -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.969349    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.970368


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96934937 (fixed)   0.96937519 (relaxed)   0.96934937 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037718   -0.00083553   -0.79896102
 Singles      0.01397924   -0.04594053   -0.05493673
 Pairs        0.04988298   -0.00000000   -0.04199068
 Total        1.06423941   -0.04677606   -0.89588843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31950552
 Nuclear energy                         0.00000000
 Kinetic energy                       205.39274946
 One electron energy                 -521.60297005
 Two electron energy                  227.38757610
 Virial quotient                       -1.43245268
 Correlation energy                    -0.89588843
 !MRCI STATE 1.1 Energy              -294.215393952160

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.27294530 (Davidson, fixed reference)
 Cluster corrected energies          -294.27289450 (Davidson, relaxed reference)
 Cluster corrected energies          -294.27294530 (Davidson, rotated reference)

 Cluster corrected energies          -294.27059482 (Pople, fixed reference)
 Cluster corrected energies          -294.27054344 (Pople, relaxed reference)
 Cluster corrected energies          -294.27059482 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96934937 (fixed)   0.96937519 (relaxed)   0.96934937 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037718   -0.00083553   -0.79896103
 Singles      0.01397925   -0.04594054   -0.05493673
 Pairs        0.04988297    0.00000000   -0.04199067
 Total        1.06423940   -0.04677606   -0.89588843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31950552
 Nuclear energy                         0.00000000
 Kinetic energy                       205.39274803
 One electron energy                 -521.60296811
 Two electron energy                  227.38757416
 Virial quotient                       -1.43245269
 Correlation energy                    -0.89588843
 !MRCI STATE 2.1 Energy              -294.215393951961

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.27294529 (Davidson, fixed reference)
 Cluster corrected energies          -294.27289450 (Davidson, relaxed reference)
 Cluster corrected energies          -294.27294529 (Davidson, rotated reference)

 Cluster corrected energies          -294.27059481 (Pople, fixed reference)
 Cluster corrected energies          -294.27054344 (Pople, relaxed reference)
 Cluster corrected energies          -294.27059481 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96934939 (fixed)   0.96937521 (relaxed)   0.96934939 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037718   -0.00083553   -0.79896106
 Singles      0.01397923   -0.04594053   -0.05493671
 Pairs        0.04988295    0.00000000   -0.04199066
 Total        1.06423936   -0.04677606   -0.89588843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31950552
 Nuclear energy                         0.00000000
 Kinetic energy                       205.39274565
 One electron energy                 -521.60296639
 Two electron energy                  227.38757243
 Virial quotient                       -1.43245270
 Correlation energy                    -0.89588843
 !MRCI STATE 3.1 Energy              -294.215393951956

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.27294525 (Davidson, fixed reference)
 Cluster corrected energies          -294.27289446 (Davidson, relaxed reference)
 Cluster corrected energies          -294.27294525 (Davidson, rotated reference)

 Cluster corrected energies          -294.27059478 (Pople, fixed reference)
 Cluster corrected energies          -294.27054340 (Pople, relaxed reference)
 Cluster corrected energies          -294.27059478 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95784740 (fixed)   0.96937522 (relaxed)   0.96934940 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037718   -0.00083553   -0.79896108
 Singles      0.01397920   -0.04594046   -0.05493665
 Pairs        0.04988296   -0.00000006   -0.04199069
 Total        1.06423934   -0.04677605   -0.89588843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31950552
 Nuclear energy                         0.00000000
 Kinetic energy                       205.39272277
 One electron energy                 -521.60295235
 Two electron energy                  227.38755840
 Virial quotient                       -1.43245286
 Correlation energy                    -0.89588843
 !MRCI STATE 4.1 Energy              -294.215393949982

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.27294523 (Davidson, fixed reference)
 Cluster corrected energies          -294.27289444 (Davidson, relaxed reference)
 Cluster corrected energies          -294.27294523 (Davidson, rotated reference)

 Cluster corrected energies          -294.27059476 (Pople, fixed reference)
 Cluster corrected energies          -294.27054338 (Pople, relaxed reference)
 Cluster corrected energies          -294.27059476 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95784741 (fixed)   0.96937523 (relaxed)   0.96934941 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037718   -0.00083553   -0.79896113
 Singles      0.01397919   -0.04594045   -0.05493665
 Pairs        0.04988295   -0.00000004   -0.04199065
 Total        1.06423932   -0.04677602   -0.89588843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31950552
 Nuclear energy                         0.00000000
 Kinetic energy                       205.39272018
 One electron energy                 -521.60294996
 Two electron energy                  227.38755601
 Virial quotient                       -1.43245288
 Correlation energy                    -0.89588843
 !MRCI STATE 5.1 Energy              -294.215393949794

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.27294521 (Davidson, fixed reference)
 Cluster corrected energies          -294.27289442 (Davidson, relaxed reference)
 Cluster corrected energies          -294.27294521 (Davidson, rotated reference)

 Cluster corrected energies          -294.27059474 (Pople, fixed reference)
 Cluster corrected energies          -294.27054336 (Pople, relaxed reference)
 Cluster corrected energies          -294.27059474 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97036831 (fixed)   0.97044751 (relaxed)   0.97036831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042419   -0.00067895   -0.00099489
 Singles      0.00583107   -0.02829742   -0.03153385
 Pairs        0.05575030   -0.86124634   -0.85769398
 Total        1.06200555   -0.89022271   -0.89022271
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.28566104
 Nuclear energy                         0.00000000
 Kinetic energy                       205.40795012
 One electron energy                 -521.44231836
 Two electron energy                  227.26643461
 Virial quotient                       -1.43215432
 Correlation energy                    -0.89022271
 !MRCI STATE 6.1 Energy              -294.175883753953

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.23108251 (Davidson, fixed reference)
 Cluster corrected energies          -294.23092821 (Davidson, relaxed reference)
 Cluster corrected energies          -294.23108251 (Davidson, rotated reference)

 Cluster corrected energies          -294.22872762 (Pople, fixed reference)
 Cluster corrected energies          -294.22857215 (Pople, relaxed reference)
 Cluster corrected energies          -294.22872762 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.42       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      299.11       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       213.17    162.88     45.77      1.70      0.80      1.76
 REAL TIME  *       234.85 SEC
 DISK USED  *       343.63 MB (local),        4.22 GB (total)
 SF USED    *         2.19 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -294.27294530  AU                              
 SETTING HLSDIAG(5)     =      -294.27294529  AU                              
 SETTING HLSDIAG(6)     =      -294.27294525  AU                              
 SETTING HLSDIAG(7)     =      -294.27294523  AU                              
 SETTING HLSDIAG(8)     =      -294.27294521  AU                              
 SETTING HLSDIAG(9)     =      -294.23108251  AU                              


         HLSDIAG
    -294.3018244
    -294.3018244
    -294.3018244
    -294.2729453
    -294.2729453
    -294.2729453
    -294.2729452
    -294.2729452
    -294.2310825
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5102.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -294.247475   -294.247475   -294.247475
 Replaced energies:   -294.301824   -294.301824   -294.301824

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -294.215394   -294.215394   -294.215394   -294.215394   -294.215394   -294.175884
 Replaced energies:   -294.272945   -294.272945   -294.272945   -294.272945   -294.272945   -294.231083



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -294.30182440

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00     446.62       0.00      -0.00      -0.00     315.81       0.00       0.00       0.00    -314.55

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00    -315.81       0.00       0.00       0.00    -314.55
                         -446.62       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00     315.81      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00    -315.81       0.00       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00     315.81       0.00       0.00       0.00      -0.00      -0.00     315.81      -0.00

    5   2.1  1.0  0.0      -0.00       0.00     315.81       0.00       0.00       0.00       0.00       0.00    -315.81       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    6   3.1  1.0  0.0      -0.00    -315.81      -0.00       0.00       0.00       0.00       0.00     315.81      -0.00       0.00
                         -315.81       0.00      -0.00      -0.00      -0.00       0.00    -315.81       0.00       0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     315.81      -0.00    -446.62      -0.00     314.55

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00     315.81       0.00       0.00       0.00    -314.55
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00     446.62      -0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00    -315.81      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00    -315.81       0.00      -0.00       0.00      -0.00       0.00       0.00

   10   1.1  0.0  0.0       0.00    -314.55      -0.00       0.00       0.00       0.00       0.00    -314.55      -0.00    6338.23
                          314.55       0.00       0.00       0.00       0.00      -0.00    -314.55      -0.00      -0.00       0.00

   11   2.1  0.0  0.0      -0.00      -0.00     314.55       0.00       0.00       0.00      -0.00      -0.00     314.55       0.00
                            0.00       0.00      -0.00    -444.85      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   12   3.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00    -314.55       0.00    -444.85      -0.00      -0.00      -0.00     314.55      -0.00

   13   4.1  0.0  0.0     307.04       0.00       0.00       0.00       0.00       0.00     307.04       0.00       0.00       0.00
                           -0.00     321.58       0.00      -0.00       0.00     -20.56       0.00    -321.58      -0.00      -0.00

   14   5.1  0.0  0.0     194.06       0.00       0.00       0.00       0.00       0.00     194.06       0.00       0.00       0.00
                           -0.00    -168.88      -0.00      -0.00      -0.00     513.27       0.00     168.88       0.00      -0.00

   15   6.1  0.0  0.0     523.49       0.00       0.00       0.00       0.00       0.00     523.49       0.00       0.00       0.00
                           -0.00    -523.49      -0.00       0.00       0.00    -740.32       0.00     523.49       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00       0.00     307.04     194.06     523.49
                           -0.00      -0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00    -321.58     168.88     523.49

    3   3.1  1.0  1.0     314.55      -0.00       0.00       0.00       0.00
                            0.00     314.55      -0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          444.85      -0.00       0.00       0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00     444.85      -0.00       0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      20.56    -513.27     740.32

    7   1.1  1.0 -1.0      -0.00       0.00     307.04     194.06     523.49
                            0.00       0.00      -0.00      -0.00      -0.00

    8   2.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00     321.58    -168.88    -523.49

    9   3.1  1.0 -1.0     314.55      -0.00       0.00       0.00       0.00
                           -0.00    -314.55       0.00      -0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6338.23       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6338.24       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6338.25       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6338.25       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15526.05
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -294.30182440 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     446.619       0.000     446.619

    2    1  |1 1>+              0.000       0.005       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000    -446.619       0.000

    3    1  |1 1>+              0.000       0.000       0.003      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    -446.619       0.000       0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     446.619       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.005       0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.003      -0.000    -446.619
                             -446.619       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000     446.619       0.000      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -446.619       0.000       0.005
                             -446.619       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     446.619       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000    -444.848      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000     444.848       0.000

    2    1  |0 0>              -0.000      -0.000     444.848       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -444.848      -0.000      -0.000       0.000       0.000

    3    1  |0 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -444.848      -0.000       0.000       0.000

    4    1  |0 0>             434.220       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     -20.561      -0.000     454.781

    5    1  |0 0>             274.439       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000     513.265      -0.000    -238.826

    6    1  |0 0>             740.321       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    -740.321      -0.000    -740.321

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000      -0.000       0.000     434.220     274.439     740.321
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000    -444.848      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000     444.848      -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     444.848      -0.000       0.000       0.000      -0.000

    2    1  |1 0>             446.619       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     444.848      -0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      20.561    -513.265     740.321

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -444.848      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000    -454.781     238.826     740.321

    3    1  |1 1>-              0.003       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     444.847      -0.000       0.000       0.000

    1    1  |0 0>               0.000    6338.232       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6338.234       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6338.241       0.000       0.000       0.000
                             -444.847      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6338.245       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6338.250       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15526.052
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -294.30634781    -0.00452340     -992.77      0.00000000        0.00      0.0000
    2  -294.30385934    -0.00203494     -446.62      0.00248846      546.15      0.0677
    3  -294.30385934    -0.00203493     -446.62      0.00248847      546.16      0.0677
    4  -294.30385933    -0.00203493     -446.62      0.00248847      546.16      0.0677
    5  -294.30009213     0.00173227      380.19      0.00625567     1372.96      0.1702
    6  -294.30009212     0.00173228      380.19      0.00625569     1372.96      0.1702
    7  -294.30009212     0.00173229      380.19      0.00625569     1372.96      0.1702
    8  -294.30009211     0.00173229      380.19      0.00625569     1372.97      0.1702
    9  -294.30009211     0.00173230      380.20      0.00625570     1372.97      0.1702
   10  -294.27264263     0.02918178     6404.66      0.03370518     7397.43      0.9172
   11  -294.27264262     0.02918178     6404.66      0.03370519     7397.43      0.9172
   12  -294.27264259     0.02918182     6404.67      0.03370522     7397.44      0.9172
   13  -294.27264255     0.02918185     6404.68      0.03370525     7397.45      0.9172
   14  -294.27264253     0.02918187     6404.68      0.03370527     7397.45      0.9172
   15  -294.23062898     0.07119542    15625.59      0.07571882    16618.36      2.0604

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57561961  0.00000000 -0.00000000 -0.00000000  0.78930295 -0.00000001 -0.19056565 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000001 -0.70710471  0.00000000 -0.00000000  0.00000001 -0.00000001  0.70316326
                           0.00000000  0.00000000  0.00012142  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00715352

   3    1  |1 1>+          0.00000000 -0.70710569 -0.00000001 -0.00000000  0.00000000  0.70303904 -0.00000001 -0.00000001
                           0.00000000 -0.00000016  0.00000000  0.00000000 -0.00000000 -0.01498285  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000016  0.00000000  0.00000000  0.00000000  0.01498280 -0.00000000  0.00000000
                          -0.00000000  0.70710787  0.00000001  0.00000000  0.00000000  0.70303685 -0.00000001 -0.00000001

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000390  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.70710582 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.57561862  0.00000000  0.00000000 -0.00000000 -0.55968750 -0.00000001 -0.58827328 -0.00000001

   1    1  |1 1>-          0.00000000  0.00000000  0.00012142  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00715347
                           0.00000000 -0.00000001  0.70710884 -0.00000000 -0.00000000  0.00000001 -0.00000001  0.70315912

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.57561768  0.00000000 -0.00000000 -0.00000000 -0.22961718  0.00000001  0.77884052  0.00000001

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000390  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.70710774 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000025 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.10500089
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00106821

   2    1  |0 0>           0.00000000 -0.00000014 -0.00000000  0.00000000 -0.00000000 -0.10498245  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00223734 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000007  0.00000000  0.00000000 -0.00000000 -0.07311933  0.00000000  0.07536768  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000003  0.00000000  0.00000000  0.00000000 -0.07536761 -0.00000000 -0.07311929 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.07739221  0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000000 -0.00000008 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.07244581  0.04585565  0.04468241
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.07425071  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00004709 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.07425067  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00002015  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00002015 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.07425064  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00863774 -0.00000000 -0.00000000  0.00005459  0.00000000 -0.00000000  0.00000000
                           0.70314550 -0.00000000 -0.00000000  0.07425060  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00348925 -0.08566777  0.04468241

   1    1  |1 1>-          0.00000000 -0.00004709  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.07425063  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.07593520  0.03981205  0.04468242

   3    1  |1 1>-          0.00863772 -0.00000000 -0.00000000  0.00005459  0.00000000 -0.00000000  0.00000000
                           0.70314358 -0.00000000 -0.00000000  0.07425051  0.00000000 -0.00000000  0.00000000

   1    1  |0 0>           0.00000000  0.99447135 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00063074  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.99447152  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00026993  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.10499825 -0.00000000 -0.00000000  0.99447130  0.00000000 -0.00000000 -0.00000000
                           0.00128984  0.00000000  0.00000000 -0.00073121 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.99447113  0.00066658 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00066658  0.99447114 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000001  0.99700073
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -294.30634781     -0.00452340     -992.77      0.00000000        0.00      0.0000
     2   1   -294.30385934     -0.00203494     -446.62      0.00248846      546.15      0.0677
     3   1   -294.30385934     -0.00203493     -446.62      0.00248847      546.16      0.0677
     4   1   -294.30385933     -0.00203493     -446.62      0.00248847      546.16      0.0677
     5   1   -294.30009213      0.00173227      380.19      0.00625567     1372.96      0.1702
     6   1   -294.30009212      0.00173228      380.19      0.00625569     1372.96      0.1702
     7   1   -294.30009212      0.00173229      380.19      0.00625569     1372.96      0.1702
     8   1   -294.30009211      0.00173229      380.19      0.00625569     1372.97      0.1702
     9   1   -294.30009211      0.00173230      380.20      0.00625570     1372.97      0.1702
    10   1   -294.27264263      0.02918178     6404.66      0.03370518     7397.43      0.9172
    11   1   -294.27264262      0.02918178     6404.66      0.03370519     7397.43      0.9172
    12   1   -294.27264259      0.02918182     6404.67      0.03370522     7397.44      0.9172
    13   1   -294.27264255      0.02918185     6404.68      0.03370525     7397.45      0.9172
    14   1   -294.27264253      0.02918187     6404.68      0.03370527     7397.45      0.9172
    15   1   -294.23062898      0.07119542    15625.59      0.07571882    16618.36      2.0604

 E0 =   -294.30182440 is the energy of the lowest zeroth-order state
 E1 =   -294.30634781 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57561961  0.00000000 -0.00000000 -0.00000000  0.78930295 -0.00000001 -0.19056565 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000001 -0.70710471  0.00000000 -0.00000000  0.00000001 -0.00000001  0.70316326
                                0.00000000  0.00000000  0.00012142  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00715352

  3  1     3    1  |1 1>+       0.00000000 -0.70710569 -0.00000001 -0.00000000  0.00000000  0.70303904 -0.00000001 -0.00000001
                                0.00000000 -0.00000016  0.00000000  0.00000000 -0.00000000 -0.01498285  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000016  0.00000000  0.00000000  0.00000000  0.01498280 -0.00000000  0.00000000
                               -0.00000000  0.70710787  0.00000001  0.00000000  0.00000000  0.70303685 -0.00000001 -0.00000001

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000390  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.70710582 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.57561862  0.00000000  0.00000000 -0.00000000 -0.55968750 -0.00000001 -0.58827328 -0.00000001

  7  1     1    1  |1 1>-       0.00000000  0.00000000  0.00012142  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00715347
                                0.00000000 -0.00000001  0.70710884 -0.00000000 -0.00000000  0.00000001 -0.00000001  0.70315912

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.57561768  0.00000000 -0.00000000 -0.00000000 -0.22961718  0.00000001  0.77884052  0.00000001

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000390  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.70710774 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000025 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.10500089
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00106821

 11  1     2    1  |0 0>        0.00000000 -0.00000014 -0.00000000  0.00000000 -0.00000000 -0.10498245  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00223734 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000007  0.00000000  0.00000000 -0.00000000 -0.07311933  0.00000000  0.07536768  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000003  0.00000000  0.00000000  0.00000000 -0.07536761 -0.00000000 -0.07311929 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.07739221  0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000000 -0.00000008 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.07244581  0.04585565  0.04468241
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.07425071  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00004709 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000  0.07425067  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00002015  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00002015 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.07425064  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00863774 -0.00000000 -0.00000000  0.00005459  0.00000000 -0.00000000  0.00000000
                                0.70314550 -0.00000000 -0.00000000  0.07425060  0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00348925 -0.08566777  0.04468241

  7  1     1    1  |1 1>-       0.00000000 -0.00004709  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.07425063  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.07593520  0.03981205  0.04468242

  9  1     3    1  |1 1>-       0.00863772 -0.00000000 -0.00000000  0.00005459  0.00000000 -0.00000000  0.00000000
                                0.70314358 -0.00000000 -0.00000000  0.07425051  0.00000000 -0.00000000  0.00000000

 10  1     1    1  |0 0>        0.00000000  0.99447135 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00063074  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000000  0.99447152  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00026993  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.10499825 -0.00000000 -0.00000000  0.99447130  0.00000000 -0.00000000 -0.00000000
                                0.00128984  0.00000000  0.00000000 -0.00073121 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.99447113  0.00066658 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00066658  0.99447114 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000001  0.99700073
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.13%    0.00%    0.00%    0.00%   62.30%    0.00%    3.63%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.45%
  3  1     3    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   49.45%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   49.45%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         33.13%    0.00%    0.00%    0.00%   31.33%    0.00%   34.61%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.45%
  8  1     2    1  |1 1>-        33.13%    0.00%    0.00%    0.00%    5.27%    0.00%   60.66%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.10%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.10%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.53%    0.00%    0.57%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.57%    0.00%    0.53%    0.00%
 15  1     6    1  |0 0>          0.60%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.52%    0.21%    0.20%
  2  1     2    1  |1 1>+         0.00%    0.55%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.55%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.55%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>         49.45%    0.00%    0.00%    0.55%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.73%    0.20%
  7  1     1    1  |1 1>-         0.00%    0.55%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.58%    0.16%    0.20%
  9  1     3    1  |1 1>-        49.45%    0.00%    0.00%    0.55%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%   98.90%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%   98.90%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          1.10%    0.00%    0.00%   98.90%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.90%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   98.90%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.40%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.42       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      299.11       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       313.73    100.56    162.88     45.77      1.70      0.80      1.76
 REAL TIME  *       347.45 SEC
 DISK USED  *       343.63 MB (local),        4.22 GB (total)
 SF USED    *         2.19 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -294.230628983830

              CI              CI           MULTI         RHF-SCF
   -294.17588375   -294.24747516   -293.28566104   -293.38327103
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
