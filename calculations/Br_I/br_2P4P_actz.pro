
 Working directory              : /wrk/irikura/molpro.JlK1hdAKXM/
 Global scratch directory       : /wrk/irikura/molpro.JlK1hdAKXM/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.JlK1hdAKXM/

 id        : nistki

 Nodes     nprocs
 comp-102     4
 Distribution of processes:   nprocs(total)=    5   nprocs(compute)=    4   nprocs(helper)=    1
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Br SO-CI
                                                                                 ! active space (7/8)
 memory,2000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Br};
 
 basis=aug-cc-pwCVTZ-X2C
 
 set,dkho=101
 
 {rhf;wf,charge=-1}
 
 {multi
     occ,10,12
     closed,8,6
     wf,charge=0,sym=2,spin=1;state,3;
     wf,charge=0,sym=2,spin=3;state,3;
     expec2,lxx,lyy,lzz
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! KL-shell uncorrelated
 core,2,3
 
 {ci;wf,sym=2,spin=1;state,3; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,3; save,5303.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2,5303.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 08:33:13 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (12 PROC) 64 bit mpp version                                                           DATE: 11-Jun-24          TIME: 17:51:16  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:   8000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry BR     S aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BR     P aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BR     D aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BR     F aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BR     G aug-cc-pwCVTZ-X      selected for orbital group  1


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

   1  BR     35.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   35
 NUMBER OF PRIMITIVE AOS:         198
 NUMBER OF SYMMETRY AOS:          168
 NUMBER OF CONTRACTIONS:          100   (   48Ag  +   52Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     15.204 MB (compressed) written to integral file ( 14.9%)

     Node minimum: 2.884 MB, node maximum: 4.719 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1624452.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1624452      RECORD LENGTH: 524288

 Memory used in sort:       2.18 MW

 SORT1 READ    12736444. AND WROTE      324276. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.12 SEC
 SORT2 READ     1292716. AND WROTE     6503791. INTEGRALS IN     60 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC

 Node minimum:     1623814.  Node maximum:     1628082. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.106E-03 0.240E-02 0.163E-01 0.408E-01 0.408E-01 0.408E-01 0.408E-01 0.408E-01
         2 0.349E-02 0.349E-02 0.349E-02 0.131E-01 0.131E-01 0.131E-01 0.739E-01 0.739E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.07      0.91
 REAL TIME  *         3.88 SEC
 DISK USED  *        29.42 MB (local),      140.79 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   9   9

 NELEC=   36   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2604.54210474   -2604.54210474     0.00D+00     0.17D+00     0     0       0.01      0.03    start
   2    -2604.58399209      -0.04188736     0.15D-01     0.18D-01     1     0       0.00      0.03    diag
   3    -2604.60106809      -0.01707600     0.12D-01     0.37D-02     2     0       0.01      0.04    diag
   4    -2604.60121218      -0.00014408     0.49D-03     0.60D-03     3     0       0.01      0.05    diag
   5    -2604.60122568      -0.00001350     0.13D-03     0.21D-03     4     0       0.01      0.06    diag
   6    -2604.60122689      -0.00000121     0.35D-04     0.11D-03     5     0       0.01      0.07    diag
   7    -2604.60122692      -0.00000003     0.28D-05     0.24D-04     6     0       0.01      0.08    diag
   8    -2604.60122692      -0.00000000     0.21D-06     0.18D-05     7     0       0.01      0.09    fixocc
   9    -2604.60122692      -0.00000000     0.12D-07     0.40D-07     0     0       0.01      0.10    diag

 Final occupancy:   9   9

 !RHF STATE 1.1 Energy              -2604.601226916043
  RHF One-electron energy           -3634.564176004922
  RHF Two-electron energy            1029.962949088879
  RHF Kinetic energy                 2786.461891273491
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.934734200052

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -497.89769     1  1  s    0.99998
    2.1     2.00000   -66.75909     1  2  s    0.99985
    3.1     2.00000    -9.85686     1  3  s    0.99891
    4.1     2.00000    -2.81603     1  1  d1+  0.99905
    5.1     2.00000    -2.81603     1  1  d1-  0.99907
    6.1     2.00000    -2.81603     1  1  d2-  0.64823    1  1  d2+  0.74339
    7.1     2.00000    -2.81603     1  1  d2-  0.75931    1  1  d2+ -0.64652
    8.1     2.00000    -2.81603     1  1  d0   0.98376
    9.1     2.00000    -0.71240     1  4  s    0.93304
    1.2     2.00000   -58.65691     1  1  pz   0.99994
    2.2     2.00000   -58.65691     1  1  py   0.99994
    3.2     2.00000   -58.65691     1  1  px   0.99996
    4.2     2.00000    -7.20979     1  2  pz   0.99974
    5.2     2.00000    -7.20979     1  2  py   0.99974
    6.2     2.00000    -7.20979     1  2  px   0.99974
    7.2     2.00000    -0.13762     1  3  pz   0.88991
    8.2     2.00000    -0.13762     1  3  py   0.88991
    9.2     2.00000    -0.13762     1  3  px   0.88991


 HOMO      9.2    -0.137618 =      -3.7448eV
 LUMO     10.2     0.250791 =       6.8244eV
 LUMO-HOMO         0.388409 =      10.5692eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.46       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.17      0.10      0.91
 REAL TIME  *         5.11 SEC
 DISK USED  *        29.94 MB (local),      142.86 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      78 (   38   40)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             3
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.489D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.390D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.523D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.489D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.188D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 5 3 2 1 1   2 3 5 4 6 1 2 3 5 6   4 3 5 2 4 6 1 4 6 2   3 5 71415 911 81210
                                       13 1 2 4 6 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.744D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.818D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.274D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.830D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.830D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.165D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.141D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.636D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.179D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.179D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 2   1 3 2 1 3 7 9 6 5 4   810 3 2 1 9 7 6 4 5  10 8 810 6 7 9 4 5 3
                                        1 2 6 7 9 4 5 810 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667
 
 Number of orbital rotations:  912  ( 52 closed/active, 544 closed/virtual, 0 active/active, 316 active/virtual )
 Total number of variables:    9180
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   20   83    0  -2604.28826524   -2604.36914103   -0.08087579    0.33198449 0.00688097 0.00196032  0.11E+01      1.64
   2    8   36    0  -2604.34426915   -2604.35299540   -0.00872625    0.46337680 0.00030431 0.00127124  0.23E+00      2.66
   3    9   40    0  -2604.35306196   -2604.35306505   -0.00000309    0.00352448 0.00000643 0.00000557  0.19E-01      3.72
   4    5   20    0  -2604.35306505   -2604.35306505   -0.00000000    0.00000112 0.00000000 0.00000018  0.32E-04      4.47

 CONVERGENCE REACHED!  Final gradient:    0.00000005 ( 0.47E-07)
                       Final energy:  -2604.35306505
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2604.512753701586
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.72105863
 One electron energy                         -3623.32417124
 Two electron energy                          1018.81141754
 Virial ratio                                    1.93461552
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2604.512753701576
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.72105863
 One electron energy                         -3623.32417124
 Two electron energy                          1018.81141754
 Virial ratio                                    1.93461552
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2604.512753701573
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.72105863
 One electron energy                         -3623.32417124
 Two electron energy                          1018.81141754
 Virial ratio                                    1.93461552
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2604.193376405211
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.77865274
 One electron energy                         -3614.24005334
 Two electron energy                          1010.04667694
 Virial ratio                                    1.93481705
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy             -2604.193376405205
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.77865274
 One electron energy                         -3614.24005334
 Two electron energy                          1010.04667694
 Virial ratio                                    1.93481705
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy             -2604.193376405167
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.77865274
 One electron energy                         -3614.24005334
 Two electron energy                          1010.04667694
 Virial ratio                                    1.93481705
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.000000064449
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999990383
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999945168
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999888699
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.000000127436
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999983865
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999944629
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999858656587
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.000141398785
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.000000115258
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.999999888694
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999996048
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999999990923
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.000141353030
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999858656047
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999999996042
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999983870
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.000000020088
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 2 5 3 1 1   2 3 5 6 4 1 2 4 3 5   6 3 5 2 4 6 1 4 6 2   3 5 7 911 812141510
                                       13 1 2 4 6 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 2 1 3 3   1 2 2 1 3 7 9 6 4 5   810 3 1 2 9 7 6 4 5  10 8 810 6 4 7 9 5 3
                                        1 2 6 7 9 4 5 810 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -498.35733     1  1  s    0.99998
    2.1     2.00000   -67.21721     1  2  s    0.99986
    3.1     2.00000   -10.31287     1  3  s    0.99913
    4.1     2.00000    -3.27214     1  1  d1+  1.00019
    5.1     2.00000    -3.27214     1  1  d1-  1.00019
    6.1     2.00000    -3.27214     1  1  d0   1.00019
    7.1     2.00000    -3.27214     1  1  d2+  1.00019
    8.1     2.00000    -3.27214     1  1  d2-  1.00019
    9.1     1.99596    -1.11158     1  4  s    1.03004
   10.1     0.00440     0.42967     1  4  s   -0.86151    1  5  s   -0.96262    1  6  s    1.56381
    1.2     2.00000   -59.11447     1  1  pz   0.99996
    2.2     2.00000   -59.11447     1  1  py   0.99996
    3.2     2.00000   -59.11447     1  1  px   0.99996
    4.2     2.00000    -7.66529     1  2  pz   0.99961
    5.2     2.00000    -7.66529     1  2  py   0.99961
    6.2     2.00000    -7.66529     1  2  px   0.99961
    7.2     1.49660    -0.44398     1  3  py   1.04842
    8.2     1.49660    -0.44398     1  3  px   1.04842
    9.2     1.49660    -0.44398     1  3  pz   1.04842
   10.2     0.16994     0.08720     1  3  pz  -0.46298    1  8  pz   1.08193
   11.2     0.16994     0.08720     1  3  px  -0.46298    1  8  px   1.08193
   12.2     0.16994     0.08720     1  3  py  -0.46298    1  8  py   1.08193
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 2a2000      0.99357644     -0.00009744     -0.00023266
 20 22a000      0.00009466      0.99350624     -0.01181245
 20 a22000      0.00023380      0.01181243      0.99350622
 
 Energy:    -2604.51275370  -2604.51275370  -2604.51275370
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 20 2aa0a0     -0.00004422     -0.00008927      0.70285854
 20 a2a00a     -0.00004422     -0.00008927      0.70285854
 20 a2aa00      0.70285851     -0.00023449      0.00004419
 20 2aaa00      0.00023449      0.70285850      0.00008928
 20 aa20a0      0.70285850     -0.00023449      0.00004419
 20 aa200a     -0.00023449     -0.70285850     -0.00008928
 
 Energy:    -2604.19337641  -2604.19337641  -2604.19337641
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.76       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.11      2.94      0.10      0.91
 REAL TIME  *        10.48 SEC
 DISK USED  *        44.65 MB (local),      201.70 MB (total)
 SF USED    *        37.74 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2604.512754   2.0
    -2604.512754   2.0
    -2604.512754   2.0
    -2604.193376   2.0
    -2604.193376   2.0
    -2604.193376   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 35
 Maximum number of shells:             7
 Maximum number of spin couplings:   429

 Reference space:      554 conf     1204 CSFs
 N elec internal:    56699 conf   278292 CSFs
 N-1 el internal:    59743 conf   501108 CSFs
 N-2 el internal:    32490 conf   411156 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      78 (  38  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.07 sec, npass=  1  Memory used:   0.99 MW


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2604.51275370
     2     -2604.51275370
     3     -2604.51275370

 Number of blocks in overlap matrix:   384   Smallest eigenvalue:  0.19D-06
 Number of N-2 electron functions:     867
 Number of N-1 electron functions:  501108

 Number of internal configurations:               139300
 Number of singly external configurations:      19543760
 Number of doubly external configurations:       1320699
 Total number of contracted configurations:     21003759
 Total number of uncontracted configurations:  642651582

 Diagonal Coupling coefficients finished.               Storage:  64528015 words, CPU-Time:    153.27 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4833768 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2604.51275370    -0.00000000    -0.96786080  0.32D-01  0.64D-01   180.49
    1     2     2     1.00000000     0.00000000 -2604.51275370    -0.00000000    -0.96780493  0.32D-01  0.64D-01   180.49
    1     3     3     1.00000000     0.00000000 -2604.51275370    -0.00000000    -0.96789099  0.32D-01  0.64D-01   180.49
    2     1     1     1.06707215    -0.80786630 -2605.32062000    -0.80786630    -0.01699006  0.21D-02  0.93D-03  1416.34
    2     2     2     1.06709191    -0.80785597 -2605.32060967    -0.80785597    -0.01700206  0.21D-02  0.93D-03  1416.34
    2     3     3     1.06710560    -0.80784821 -2605.32060191    -0.80784821    -0.01700915  0.21D-02  0.93D-03  1416.34
    3     1     1     1.06311286    -0.82376656 -2605.33652026    -0.01590026    -0.00045506  0.28D-04  0.55D-04  2649.46
    3     2     2     1.06311379    -0.82376615 -2605.33651985    -0.01591018    -0.00045522  0.28D-04  0.55D-04  2649.46
    3     3     3     1.06311350    -0.82376609 -2605.33651979    -0.01591788    -0.00045529  0.28D-04  0.55D-04  2649.46
    4     1     1     1.06394520    -0.82426661 -2605.33702031    -0.00050005    -0.00002955  0.11D-05  0.44D-05  3894.14
    4     2     2     1.06394486    -0.82426656 -2605.33702026    -0.00050041    -0.00002958  0.11D-05  0.44D-05  3894.14
    4     3     3     1.06394527    -0.82426655 -2605.33702025    -0.00050046    -0.00002958  0.11D-05  0.44D-05  3894.14
    5     1     1     1.06436442    -0.82430178 -2605.33705548    -0.00003517    -0.00000218  0.11D-06  0.27D-06  5125.85
    5     2     2     1.06436452    -0.82430178 -2605.33705548    -0.00003522    -0.00000218  0.11D-06  0.27D-06  5125.85
    5     3     3     1.06436445    -0.82430178 -2605.33705548    -0.00003523    -0.00000218  0.11D-06  0.27D-06  5125.85
    6     1     1     1.06438734    -0.82430430 -2605.33705800    -0.00000252    -0.00000015  0.10D-07  0.19D-07  6356.73
    6     2     2     1.06438732    -0.82430430 -2605.33705800    -0.00000252    -0.00000015  0.10D-07  0.19D-07  6356.73
    6     3     3     1.06438735    -0.82430430 -2605.33705800    -0.00000252    -0.00000015  0.10D-07  0.19D-07  6356.73
    7     1     1     1.06439290    -0.82430447 -2605.33705817    -0.00000017    -0.00000001  0.61D-09  0.17D-08  7584.69
    7     2     2     1.06439290    -0.82430447 -2605.33705817    -0.00000017    -0.00000001  0.61D-09  0.17D-08  7584.69
    7     3     3     1.06439291    -0.82430446 -2605.33705817    -0.00000017    -0.00000001  0.61D-09  0.17D-08  7584.69


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.0%
 S   0.4%  29.7%
 P   0.4%  58.7%   7.5%

 Initialization:   2.0%
 Other:            0.3%

 Total CPU:     7584.7 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/22000           0.9023142  -0.3335282   0.0732208
 2222222022222/000           0.0681827   0.3786841   0.8847162
 222222202222/2000           0.3345945   0.8222716  -0.3777423

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.336075    0.068484    0.906308
 2           0.825911    0.380360   -0.335004
 3          -0.379414    0.888632    0.073545

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969036    0.000000   -0.000000
 2           0.000000    0.969036   -0.000000
 3          -0.000000   -0.000000    0.969036


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.90630763 (fixed)   0.96925290 (relaxed)   0.96903573 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050313   -0.00045550   -0.04716009
 Singles      0.01369534   -0.06145153   -0.06830351
 Pairs        0.05072996   -0.71304555   -0.70884087
 Total        1.06492843   -0.77495258   -0.82430447
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.51275370
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.85464610
 One electron energy                -3621.88017429
 Two electron energy                 1016.54311613
 Virial quotient                       -0.93486650
 Correlation energy                    -0.82430447
 !MRCI STATE 1.2 Energy             -2605.337058166887

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.39057896 (Davidson, fixed reference)
 Cluster corrected energies         -2605.39018564 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.39057896 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38890662 (Pople, fixed reference)
 Cluster corrected energies         -2605.38850424 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38890662 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.82591075 (fixed)   0.96925290 (relaxed)   0.96903573 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050313   -0.00045550   -0.96422937
 Singles      0.01369534   -0.06145153   -0.06830351
 Pairs        0.05072996    0.26356760    0.20822841
 Total        1.06492843    0.20166058   -0.82430447
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.51275370
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.85464780
 One electron energy                -3621.88017540
 Two electron energy                 1016.54311724
 Virial quotient                       -0.93486650
 Correlation energy                    -0.82430447
 !MRCI STATE 2.2 Energy             -2605.337058166752

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.39057896 (Davidson, fixed reference)
 Cluster corrected energies         -2605.39018564 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.39057896 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38890662 (Pople, fixed reference)
 Cluster corrected energies         -2605.38850424 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38890662 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.88863172 (fixed)   0.96925289 (relaxed)   0.96903573 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050313   -0.00045550   -0.66239719
 Singles      0.01369534   -0.06145152   -0.06830351
 Pairs        0.05072997   -0.05786208   -0.09360377
 Total        1.06492843   -0.11976909   -0.82430446
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.51275370
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.85464899
 One electron energy                -3621.88017586
 Two electron energy                 1016.54311769
 Virial quotient                       -0.93486650
 Correlation energy                    -0.82430446
 !MRCI STATE 3.2 Energy             -2605.337058166512

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.39057897 (Davidson, fixed reference)
 Cluster corrected energies         -2605.39018564 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.39057897 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38890662 (Pople, fixed reference)
 Cluster corrected energies         -2605.38850424 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38890662 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      488.96       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      7776.05   7771.94      2.94      0.10      0.91
 REAL TIME  *      7843.79 SEC
 DISK USED  *       532.86 MB (local),        2.10 GB (total)
 SF USED    *         5.32 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2605.39057896  AU                              
 SETTING HLSDIAG(2)     =     -2605.39057896  AU                              
 SETTING HLSDIAG(3)     =     -2605.39057897  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 35
 Maximum number of shells:             6
 Maximum number of spin couplings:   572

 Reference space:      344 conf      656 CSFs
 N elec internal:    52189 conf   229224 CSFs
 N-1 el internal:    51137 conf   453552 CSFs
 N-2 el internal:    21984 conf   385640 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      78 (  38  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2604.19337641
     2     -2604.19337641
     3     -2604.19337641

 Number of blocks in overlap matrix:   319   Smallest eigenvalue:  0.30D-05
 Number of N-2 electron functions:     860
 Number of N-1 electron functions:  453552

 Number of internal configurations:               114452
 Number of singly external configurations:      17689552
 Number of doubly external configurations:       1309772
 Total number of contracted configurations:     19113776
 Total number of uncontracted configurations:  600978134

 Diagonal Coupling coefficients finished.               Storage:  54530704 words, CPU-Time:    112.47 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   7252794 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2604.19337641     0.00000000    -0.94861765  0.37D-01  0.58D-01   139.98
    1     2     2     1.00000000     0.00000000 -2604.19337641    -0.00000000    -0.94853885  0.37D-01  0.58D-01   139.98
    1     3     3     1.00000000     0.00000000 -2604.19337641     0.00000000    -0.94841399  0.37D-01  0.58D-01   139.98
    2     1     1     1.06611607    -0.79161121 -2604.98498761    -0.79161121    -0.01560848  0.19D-02  0.81D-03  1271.40
    2     2     2     1.06618893    -0.79155090 -2604.98492730    -0.79155090    -0.01567090  0.19D-02  0.82D-03  1271.40
    2     3     3     1.06622998    -0.79152396 -2604.98490036    -0.79152396    -0.01570089  0.19D-02  0.82D-03  1271.40
    3     1     1     1.05991988    -0.80637525 -2604.99975166    -0.01476404    -0.00042389  0.32D-04  0.47D-04  2402.54
    3     2     2     1.05992825    -0.80637491 -2604.99975132    -0.01482401    -0.00042406  0.32D-04  0.47D-04  2402.54
    3     3     3     1.05992085    -0.80637468 -2604.99975108    -0.01485072    -0.00042427  0.32D-04  0.47D-04  2402.54
    4     1     1     1.06012831    -0.80682979 -2605.00020619    -0.00045454    -0.00003089  0.17D-05  0.43D-05  3532.56
    4     2     2     1.06012927    -0.80682974 -2605.00020615    -0.00045483    -0.00003091  0.17D-05  0.43D-05  3532.56
    4     3     3     1.06012804    -0.80682973 -2605.00020614    -0.00045506    -0.00003093  0.17D-05  0.43D-05  3532.56
    5     1     1     1.06052193    -0.80686618 -2605.00024258    -0.00003639    -0.00000224  0.13D-06  0.25D-06  4660.56
    5     2     2     1.06052093    -0.80686618 -2605.00024258    -0.00003643    -0.00000223  0.13D-06  0.25D-06  4660.56
    5     3     3     1.06052156    -0.80686617 -2605.00024258    -0.00003644    -0.00000224  0.13D-06  0.25D-06  4660.56
    6     1     1     1.06055157    -0.80686875 -2605.00024516    -0.00000257    -0.00000013  0.67D-08  0.16D-07  5790.82
    6     2     2     1.06055164    -0.80686875 -2605.00024515    -0.00000257    -0.00000013  0.67D-08  0.16D-07  5790.82
    6     3     3     1.06055160    -0.80686875 -2605.00024515    -0.00000257    -0.00000013  0.67D-08  0.16D-07  5790.82
    7     1     1     1.06055403    -0.80686889 -2605.00024530    -0.00000014    -0.00000001  0.57D-09  0.13D-08  6919.22
    7     2     2     1.06055402    -0.80686889 -2605.00024530    -0.00000014    -0.00000001  0.56D-09  0.13D-08  6919.22
    7     3     3     1.06055402    -0.80686889 -2605.00024530    -0.00000014    -0.00000001  0.56D-09  0.13D-08  6919.22


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.0%
 S   0.4%  31.9%
 P   0.3%  58.6%   5.8%

 Initialization:   1.6%
 Other:            0.4%

 Total CPU:     6919.2 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/2//00           0.6819718   0.0082622   0.0110953
 22222220222//20/0           0.6819715   0.0082622   0.0110953
 22222220222/2/00/          -0.0094994   0.6774036   0.0794414
 222222202222//0/0          -0.0094994   0.6774035   0.0794413
 222222202222///00          -0.0100565  -0.0795795   0.6773794
 22222220222//200/           0.0100564   0.0795795  -0.6773791

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970741   -0.014315   -0.013522
 2           0.011761   -0.113276    0.964238
 3           0.015793    0.964204    0.113079

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970940   -0.000000   -0.000000
 2          -0.000000    0.970940    0.000000
 3          -0.000000    0.000000    0.970940


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97074073 (fixed)   0.97100623 (relaxed)   0.97094043 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018891   -0.00048443   -0.70301472
 Singles      0.01683201   -0.07152925   -0.08023622
 Pairs        0.04373345    0.01023388   -0.02361796
 Total        1.06075438   -0.06177981   -0.80686889
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19337641
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.39092280
 One electron energy                -3613.69879299
 Two electron energy                 1008.69854769
 Virial quotient                       -0.93490121
 Correlation energy                    -0.80686889
 !MRCI STATE 1.2 Energy             -2605.000245299178

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.04926612 (Davidson, fixed reference)
 Cluster corrected energies         -2605.04915011 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.04926612 (Davidson, rotated reference)

 Cluster corrected energies         -2605.04712493 (Pople, fixed reference)
 Cluster corrected energies         -2605.04700829 (Pople, relaxed reference)
 Cluster corrected energies         -2605.04712493 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96423832 (fixed)   0.97100624 (relaxed)   0.97094043 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018891   -0.00048443   -0.00538235
 Singles      0.01683201   -0.07152924   -0.08023622
 Pairs        0.04373344   -0.72978273   -0.72125032
 Total        1.06075437   -0.80179640   -0.80686889
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19337641
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.39092616
 One electron energy                -3613.69879571
 Two electron energy                 1008.69855041
 Virial quotient                       -0.93490121
 Correlation energy                    -0.80686889
 !MRCI STATE 2.2 Energy             -2605.000245295285

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.04926610 (Davidson, fixed reference)
 Cluster corrected energies         -2605.04915010 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.04926610 (Davidson, rotated reference)

 Cluster corrected energies         -2605.04712492 (Pople, fixed reference)
 Cluster corrected energies         -2605.04700827 (Pople, relaxed reference)
 Cluster corrected energies         -2605.04712492 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96420378 (fixed)   0.97100623 (relaxed)   0.97094043 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018891   -0.00048443   -0.61268477
 Singles      0.01683201   -0.07152925   -0.08023621
 Pairs        0.04373345   -0.08558402   -0.11394791
 Total        1.06075437   -0.15759770   -0.80686889
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19337641
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.39092436
 One electron energy                -3613.69879435
 Two electron energy                 1008.69854905
 Virial quotient                       -0.93490121
 Correlation energy                    -0.80686889
 !MRCI STATE 3.2 Energy             -2605.000245295085

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.04926610 (Davidson, fixed reference)
 Cluster corrected energies         -2605.04915010 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.04926610 (Davidson, rotated reference)

 Cluster corrected energies         -2605.04712492 (Pople, fixed reference)
 Cluster corrected energies         -2605.04700828 (Pople, relaxed reference)
 Cluster corrected energies         -2605.04712492 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      932.64       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     14861.93   7085.87   7771.94      2.94      0.10      0.91
 REAL TIME  *     14984.98 SEC
 DISK USED  *       976.53 MB (local),        3.84 GB (total)
 SF USED    *         5.32 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2605.04926612  AU                              
 SETTING HLSDIAG(5)     =     -2605.04926610  AU                              
 SETTING HLSDIAG(6)     =     -2605.04926610  AU                              


         HLSDIAG
    -2605.390579
    -2605.390579
    -2605.390579
    -2605.049266
    -2605.049266
    -2605.049266
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  

 PROGRAM * SEWLS (Spin-orbit & spin-spin integral evaluation)

 Modified from original SEWARD code by Alexander Mitrushchenkov

 Original version: December 2001, 2D-derivatives modifications: Stuttgart 2004
  
  
 The following spin-orbit components are calculated:
  
    Operator      Symmetry
  
      LSX            1
      LSY            1
      LSZ            1
  
 Integral cutoff:   0.10E-09

 Time for Seward_LS:       4.22 sec

        6962867. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1914 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.22 sec, REAL time:      4.36 sec


 SORTLS1 read     7823938. and wrote     7823938. SO integrals in    36 records. CPU time:      0.08 sec, REAL time:      0.16 sec
 SORTLS2 read     7823938. and wrote    38256242. SO integrals in    12 records. CPU time:      0.03 sec, REAL time:      0.11 sec

 FILE SIZES: FILE 1:   171.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   171.4 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:  -2605.337058  -2605.337058  -2605.337058
 Replaced energies:  -2605.390579  -2605.390579  -2605.390579

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   3

 Original energies:  -2605.000245  -2605.000245  -2605.000245
 Replaced energies:  -2605.049266  -2605.049266  -2605.049266

 >>> Fock matrix approximation error in all internal so: 
   3.1335635419296173       (exact)    3.1290020415511437       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   21.598623324401608       (exact)    21.640144527189094       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   49.791642359703957       (exact)    49.877985263729265       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   50.546651191813432       (exact)    51.351564717286600       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -18.408180021165709       (exact)   -18.705222754122552       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.7019043416250943       (exact)    4.7682718917010121       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9848170056510535       (exact)    6.0793117124066267       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.8419644349357458       (exact)   -1.8762450268749478       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2915988751878895       (exact)    1.3006776865340115       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.31925381665576602       (exact)  -0.32355926147746306       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.95998747833587683       (exact)  -0.97087521931479870       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.43861500329262393       (exact)  -0.43515304112438369       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   18.278055464205028       (exact)    18.577222028516598       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   43.530516575978197       (exact)    44.263293574246710       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -26.958128649341347       (exact)   -27.306942568451898       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.0119655296739047       (exact)    6.0538213217739498       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   26.590129335141750       (exact)    26.713673453195099       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   47.034124345874922       (exact)    47.081083035653698       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   22.634824652444191       (exact)    22.684977612579459       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   53.178049722829655       (exact)    53.262296314218929       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -24.506148037975084       (exact)   -24.546073171176854       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.1141284073680611       (exact)    7.2237452011542755       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.8840142419432098       (exact)   -1.9232873331807512       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.25814585414355357       (exact)   0.26650801535259666       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -57.956219500528775       (exact)   -58.884934554257548       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   22.424027783741920       (exact)    22.768986917760152       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.1316033973904034       (exact)   -5.2076823890486832       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2605.39057897

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00     -97.05    -442.08       2.07    -112.92     -37.50       0.00
                           -0.00   -1172.67     501.94      -0.00     500.69    1089.90     -19.55    -312.39     -36.87    -139.38

    2   2.2  0.5  0.5       0.00       0.00       0.00      97.05      -0.00   -1195.99       5.98    -269.04    -164.43       0.00
                         1172.67       0.00     -90.37    -500.69      -0.00    -443.50    -133.68     113.87      11.71    -328.30

    3   3.2  0.5  0.5       0.00       0.00       0.00     442.08    1195.99      -0.00       2.17     166.59    -290.18       0.00
                         -501.94      90.37       0.00   -1089.90     443.50      -0.00    -307.14     -29.08      -7.41     151.32

    4   1.2  0.5 -0.5      -0.00      97.05     442.08       0.00       0.00       0.00       0.00       0.00       0.00       1.19
                            0.00     500.69    1089.90       0.00    1172.67    -501.94       0.00       0.00       0.00     -11.29

    5   2.2  0.5 -0.5     -97.05      -0.00    1195.99       0.00       0.00       0.00       0.00       0.00       0.00       3.45
                         -500.69       0.00    -443.50   -1172.67      -0.00      90.37       0.00       0.00       0.00     -77.18

    6   3.2  0.5 -0.5    -442.08   -1195.99      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.26
                        -1089.90     443.50       0.00     501.94     -90.37      -0.00       0.00       0.00       0.00    -177.32

    7   1.2  1.5  1.5       2.07       5.98       2.17       0.00       0.00       0.00   74909.51       0.00       0.00      -0.04
                           19.55     133.68     307.14      -0.00      -0.00      -0.00      -0.02      74.64    -636.22      -1.21

    8   2.2  1.5  1.5    -112.92    -269.04     166.59       0.00       0.00       0.00       0.00   74909.51       0.00       6.00
                          312.39    -113.87      29.08      -0.00      -0.00      -0.00     -74.64       0.00      -8.92     367.41

    9   3.2  1.5  1.5     -37.50    -164.43    -290.18       0.00       0.00       0.00       0.00       0.00   74909.51      -4.44
                           36.87     -11.71       7.41      -0.00      -0.00      -0.00     636.22       8.92      -0.01      43.12

   10   1.2  1.5  0.5       0.00       0.00       0.00       1.19       3.45       1.26      -0.04       6.00      -4.44   74909.51
                          139.38     328.30    -151.32      11.29      77.18     177.32       1.21    -367.41     -43.12      -0.01

   11   2.2  1.5  0.5       0.00       0.00       0.00     -65.20    -155.33      96.18      -5.99      -0.00     369.50       0.00
                           44.14     -11.68       1.40     180.36     -65.74      16.79     367.34       0.19       5.48     -24.88

   12   3.2  1.5  0.5       0.00       0.00       0.00     -21.65     -94.94    -167.54       4.38    -369.52      -0.05       0.00
                         -358.31     138.11     -31.49      21.29      -6.76       4.28      43.13      -5.46       0.14     212.07

   13   1.2  1.5 -0.5       1.19       3.45       1.26       0.00       0.00       0.00       0.00       0.00       0.00      -0.05
                          -11.29     -77.18    -177.32     139.38     328.30    -151.32      -0.00      -0.00      -0.00       1.39

   14   2.2  1.5 -0.5     -65.20    -155.33      96.18       0.00       0.00       0.00       0.00       0.00       0.00      -6.91
                         -180.36      65.74     -16.79      44.14     -11.68       1.40      -0.00      -0.00      -0.00     424.17

   15   3.2  1.5 -0.5     -21.65     -94.94    -167.54       0.00       0.00       0.00       0.00       0.00       0.00       5.05
                          -21.29       6.76      -4.28    -358.31     138.11     -31.49      -0.00      -0.00      -0.00      49.80

   16   1.2  1.5 -1.5       0.00       0.00       0.00       2.07       5.98       2.17       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -19.55    -133.68    -307.14      -0.00      -0.00      -0.00      -0.00

   17   2.2  1.5 -1.5       0.00       0.00       0.00    -112.92    -269.04     166.59       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -312.39     113.87     -29.08      -0.00      -0.00      -0.00      -0.00

   18   3.2  1.5 -1.5       0.00       0.00       0.00     -37.50    -164.43    -290.18       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -36.87      11.71      -7.41      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18

    1   1.2  0.5  0.5       0.00       0.00       1.19     -65.20     -21.65       0.00       0.00       0.00
                          -44.14     358.31      11.29     180.36      21.29       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       3.45    -155.33     -94.94       0.00       0.00       0.00
                           11.68    -138.11      77.18     -65.74      -6.76       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       1.26      96.18    -167.54       0.00       0.00       0.00
                           -1.40      31.49     177.32      16.79       4.28       0.00       0.00       0.00

    4   1.2  0.5 -0.5     -65.20     -21.65       0.00       0.00       0.00       2.07    -112.92     -37.50
                         -180.36     -21.29    -139.38     -44.14     358.31      19.55     312.39      36.87

    5   2.2  0.5 -0.5    -155.33     -94.94       0.00       0.00       0.00       5.98    -269.04    -164.43
                           65.74       6.76    -328.30      11.68    -138.11     133.68    -113.87     -11.71

    6   3.2  0.5 -0.5      96.18    -167.54       0.00       0.00       0.00       2.17     166.59    -290.18
                          -16.79      -4.28     151.32      -1.40      31.49     307.14      29.08       7.41

    7   1.2  1.5  1.5      -5.99       4.38       0.00       0.00       0.00       0.00       0.00       0.00
                         -367.34     -43.13       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5      -0.00    -369.52       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.19       5.46       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5     369.50      -0.05       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.48      -0.14       0.00       0.00       0.00       0.00       0.00       0.00

   10   1.2  1.5  0.5       0.00       0.00      -0.05      -6.91       5.05       0.00       0.00       0.00
                           24.88    -212.07      -1.39    -424.17     -49.80       0.00       0.00       0.00

   11   2.2  1.5  0.5   74909.51       0.00       6.93      -0.01    -426.68       0.00       0.00       0.00
                            0.00      -2.97     424.24      -0.23       6.30       0.00       0.00       0.00

   12   3.2  1.5  0.5       0.00   74909.51      -5.12     426.67      -0.06       0.00       0.00       0.00
                            2.97      -0.00      49.79      -6.32      -0.16       0.00       0.00       0.00

   13   1.2  1.5 -0.5       6.93      -5.12   74909.51       0.00       0.00      -0.04      -5.99       4.38
                         -424.24     -49.79       0.01     -24.88     212.07      -1.21    -367.34     -43.13

   14   2.2  1.5 -0.5      -0.01     426.67       0.00   74909.51       0.00       6.00      -0.00    -369.52
                            0.23       6.32      24.88      -0.00       2.97     367.41      -0.19       5.46

   15   3.2  1.5 -0.5    -426.68      -0.06       0.00       0.00   74909.51      -4.44     369.50      -0.05
                           -6.30       0.16    -212.07      -2.97       0.00      43.12      -5.48      -0.14

   16   1.2  1.5 -1.5       0.00       0.00      -0.04       6.00      -4.44   74909.51       0.00       0.00
                           -0.00      -0.00       1.21    -367.41     -43.12       0.02     -74.64     636.22

   17   2.2  1.5 -1.5       0.00       0.00      -5.99      -0.00     369.50       0.00   74909.51       0.00
                           -0.00      -0.00     367.34       0.19       5.48      74.64      -0.00       8.92

   18   3.2  1.5 -1.5       0.00       0.00       4.38    -369.52      -0.05       0.00       0.00   74909.51
                           -0.00      -0.00      43.13      -5.46       0.14    -636.22      -8.92       0.01


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2605.39642785    -0.00584888    -1283.68      0.00000000        0.00      0.0000
     2 -2605.39642785    -0.00584888    -1283.68      0.00000000        0.00      0.0000
     3 -2605.39642780    -0.00584884    -1283.67      0.00000005        0.01      0.0000
     4 -2605.39642780    -0.00584884    -1283.67      0.00000005        0.01      0.0000
     5 -2605.37893527     0.01164369     2555.49      0.01749258     3839.18      0.4760
     6 -2605.37893527     0.01164369     2555.49      0.01749258     3839.18      0.4760
     7 -2605.05218907     0.33838989    74268.00      0.34423878    75551.68      9.3672
     8 -2605.05218778     0.33839119    74268.28      0.34424007    75551.96      9.3672
     9 -2605.05218410     0.33839486    74269.09      0.34424374    75552.77      9.3673
    10 -2605.05218385     0.33839511    74269.14      0.34424400    75552.82      9.3674
    11 -2605.05218167     0.33839730    74269.62      0.34424618    75553.30      9.3674
    12 -2605.05218047     0.33839849    74269.88      0.34424738    75553.57      9.3674
    13 -2605.04730313     0.34327584    75340.34      0.34912472    76624.02      9.5002
    14 -2605.04729947     0.34327950    75341.14      0.34912838    76624.82      9.5003
    15 -2605.04729858     0.34328039    75341.34      0.34912927    76625.02      9.5003
    16 -2605.04729149     0.34328748    75342.89      0.34913636    76626.57      9.5005
    17 -2605.04439448     0.34618449    75978.71      0.35203337    77262.39      9.5793
    18 -2605.04439114     0.34618783    75979.45      0.35203671    77263.13      9.5794


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.224093245   0.727929129   0.269420045   0.118062402   0.374278131  -0.439589974  -0.000001855   0.000002586
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.138649323   0.009755328   0.136458040  -0.108377794  -0.144820860  -0.123304188   0.000001451   0.000002103
                         0.394285322  -0.472102653   0.300120039   0.385389605   0.442035762  -0.318984338   0.000003840  -0.000000086

    3    3.2  0.5  0.5   0.028621924   0.069190069  -0.422885930   0.592762078  -0.371624127  -0.316409169  -0.000001604  -0.000002151
                         0.102198036   0.080961957   0.335228481   0.037944948   0.012351253   0.308144788   0.000002531  -0.000001529

    4    1.2  0.5 -0.5   0.631733921   0.194723223   0.070227140  -0.161761918  -0.312331933  -0.265927385  -0.000001552  -0.000001504
                        -0.361205027  -0.112949427   0.098335407  -0.213598558  -0.309334946  -0.263375675   0.000000603   0.000000584

    5    2.2  0.5 -0.5   0.244877522   0.073401359   0.241501203  -0.324608232  -0.312074540  -0.208159728   0.000000758   0.000001770
                         0.404606984   0.410176455  -0.317576348   0.069079605   0.139872844   0.415978635  -0.000001976  -0.000000388

    6    3.2  0.5 -0.5   0.018574581   0.023721116   0.385893664  -0.015611123  -0.007972738   0.255350245   0.000003188  -0.000000787
                        -0.100976592   0.104245000   0.452495542   0.539205211  -0.441593035   0.270283735  -0.000001294   0.000001655

    7    1.2  1.5  1.5   0.001091997  -0.000521495   0.001861543   0.000812918   0.000868767   0.000740004  -0.134340552   0.473175059
                        -0.000333130  -0.000445572   0.001355390  -0.002248288   0.001682171   0.001682014   0.071318560   0.088144252

    8    2.2  1.5  1.5  -0.000452843   0.001688992   0.001476870  -0.002053692   0.000207500   0.000206741   0.298294391  -0.191241531
                         0.002271122  -0.004813367  -0.000410205   0.000403339  -0.000078163  -0.000063617  -0.086173346   0.052558011

    9    3.2  1.5  1.5   0.000245914   0.000719200  -0.001190330   0.002014919  -0.001671196  -0.001669232   0.095626039   0.007777798
                         0.001359481  -0.001062036   0.001845804   0.000840083   0.000865236   0.000736452   0.256272565  -0.314336155

   10    1.2  1.5  0.5   0.001587078  -0.001551643   0.001347432   0.002879678   0.001003913  -0.001002010   0.092427865   0.016734181
                        -0.000523626  -0.001405203  -0.003051321   0.001798505  -0.000427488   0.000356804   0.355417286  -0.328811384

   11    2.2  1.5  0.5  -0.000267109  -0.000236821   0.000628438  -0.001278092  -0.001983352  -0.001912035   0.000677416   0.105357417
                        -0.000491635  -0.000215185  -0.001297453  -0.000708321   0.000848343   0.000951320  -0.227263684  -0.268940618

   12    3.2  1.5  0.5   0.001049558  -0.000748162   0.001646674   0.000161702   0.000184084  -0.000596028   0.186815443   0.005304734
                        -0.001262584   0.004070315   0.001444132   0.002212513   0.001083901  -0.000929062  -0.024351214   0.006766731

   13    1.2  1.5 -0.5   0.000639061   0.001621410  -0.003157105  -0.001640067   0.000460865   0.000412458   0.423456361   0.210293495
                        -0.002008279  -0.000324683  -0.001221036   0.002916249   0.000958631   0.001010155  -0.024855437   0.105814418

   14    2.2  1.5 -0.5   0.000098741   0.000003803   0.001334176  -0.000664675   0.000689085  -0.000812210   0.166135447  -0.319949062
                        -0.000296125   0.000560142   0.000601331   0.001278436   0.002021411  -0.001998406  -0.114497440  -0.052953168

   15    3.2  1.5 -0.5   0.002660122   0.001547611  -0.001889973   0.002128891   0.001077266   0.000893510   0.070486194  -0.033492305
                         0.003159646   0.000585371   0.001195767   0.000458175  -0.000240691  -0.000640575   0.179842461  -0.060774274

   16    1.2  1.5 -1.5  -0.000245716  -0.001116358  -0.001316604  -0.002197249   0.001709425  -0.001800956   0.057239870   0.156645128
                         0.000643905   0.000240862   0.001995499  -0.000685129  -0.000674365   0.000583839  -0.253890686  -0.412584280

   17    2.2  1.5 -1.5   0.003862831   0.001523688  -0.000932150  -0.000575377   0.000102135  -0.000092440  -0.079435820   0.034818707
                         0.003326698   0.001740984  -0.001880147  -0.001427620   0.000190678  -0.000201547  -0.358462600  -0.105550089

   18    3.2  1.5 -1.5   0.001150472   0.000449619   0.001874520  -0.000773737  -0.000667767   0.000578538   0.348933388   0.232567791
                         0.000577487   0.001304580   0.001114521   0.002056099  -0.001697879   0.001790757  -0.037176704   0.107802075


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000002451  -0.000001398   0.000001599  -0.000003446   0.001445941  -0.004185201   0.004600657   0.001405217
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000002644  -0.000001003   0.000003556  -0.000004661   0.002919413   0.000105959  -0.001917991   0.003584314
                        -0.000003087  -0.000001440   0.000001562  -0.000000786   0.002130049   0.001859680  -0.002876661  -0.001173461

    3    3.2  0.5  0.5   0.000002708   0.000001005   0.000001243   0.000001028  -0.001786853  -0.002665184  -0.001479294  -0.001238707
                         0.000001365   0.000001133  -0.000003256   0.000003836   0.003196544  -0.002048370   0.000104882  -0.003762090

    4    1.2  0.5 -0.5   0.000000219  -0.000000059  -0.000000619   0.000001558   0.000343353  -0.002848821  -0.002766727   0.000220090
                        -0.000002285   0.000002247   0.000001374  -0.000004889  -0.001780571   0.003364257   0.003140143   0.001568353

    5    2.2  0.5 -0.5  -0.000001900  -0.000001844  -0.000001771   0.000004415   0.002472497  -0.000247312  -0.000972241   0.001050264
                        -0.000002671   0.000004190   0.000002303  -0.000004773  -0.002978192  -0.003315269  -0.001351254   0.003577063

    6    3.2  0.5 -0.5   0.000000580   0.000000116   0.000002523  -0.000004323   0.003474523   0.000853645   0.000125675   0.003790090
                        -0.000002212  -0.000003151   0.000001322  -0.000001431   0.002252280  -0.000756240   0.002907596  -0.001145972

    7    1.2  1.5  1.5  -0.036382977   0.480126503   0.059369238   0.175059944  -0.255169367   0.074822728   0.070397332   0.272312886
                        -0.145656787   0.024120658  -0.051837996   0.068072764  -0.022626339  -0.179571723  -0.130215408   0.022026954

    8    2.2  1.5  1.5  -0.264765665   0.096551902   0.194429747   0.181698241  -0.223751855   0.054773874  -0.118143270  -0.275598883
                        -0.069614397   0.129155082  -0.292809766   0.093777093   0.005887065  -0.455876251   0.489358621  -0.064588134

    9    3.2  1.5  1.5  -0.096194510  -0.011742845  -0.290570640   0.098333150  -0.003029160   0.193697468   0.110104030  -0.053976340
                        -0.219152626  -0.385730397  -0.204507078  -0.179285961  -0.259862942   0.022958946   0.126795274   0.262183236

   10    1.2  1.5  0.5   0.092158175  -0.019795238   0.107113070  -0.115602749  -0.071416232  -0.116492245   0.103100715  -0.054309639
                        -0.077864390   0.246460907   0.076190262   0.316966653   0.455158408  -0.010765159   0.031938433   0.475323964

   11    2.2  1.5  0.5  -0.100228495   0.095750678   0.413646134  -0.015475231   0.007565685  -0.097959251  -0.080243295   0.030746952
                         0.435546509  -0.153854287   0.241820161   0.021615861   0.159043778  -0.091610692   0.015264905  -0.145745000

   12    3.2  1.5  0.5  -0.414053550  -0.084202643   0.253307352   0.006700565  -0.206252024  -0.095948380   0.090236750  -0.142819035
                        -0.026675762   0.110152814  -0.400775272   0.014901533  -0.021847751   0.389284429  -0.477836684  -0.027214927

   13    1.2  1.5 -0.5  -0.027977319   0.212959711  -0.057075039  -0.345830414   0.470357968   0.055947726   0.048908657  -0.472050752
                        -0.091948379  -0.002446831   0.137126151  -0.135933913   0.085591680  -0.018740242  -0.076517592  -0.057422362

   14    2.2  1.5 -0.5   0.332606500   0.331084184  -0.163229394   0.286849388  -0.156272268  -0.069716546  -0.022742555  -0.158426682
                        -0.056431533  -0.111800947   0.294445697   0.143305670  -0.014330670   0.040429229  -0.119101314  -0.035655947

   15    3.2  1.5 -0.5  -0.024697213   0.130955462   0.277207857   0.155916242  -0.032961714   0.437121128   0.357226604  -0.028869135
                         0.400978064   0.063160485   0.175397518  -0.308970364  -0.129044350   0.250231018   0.204356023   0.140251314

   16    1.2  1.5 -1.5   0.126043867  -0.069444237  -0.102050192   0.115916175   0.058072572  -0.125136192   0.155835555   0.035069403
                        -0.097698877   0.432611014  -0.030165821  -0.212793512  -0.289380521  -0.038490531   0.030822819  -0.263110871

   17    2.2  1.5 -1.5  -0.045367629  -0.026070327  -0.082857937  -0.195704099  -0.056177647   0.394235110   0.369158695   0.076423949
                        -0.234740556  -0.148445054  -0.056865974   0.355791471   0.296021499   0.249028137   0.253470332  -0.282692090

   18    3.2  1.5 -1.5   0.286799812  -0.237331848  -0.056293308   0.364333530  -0.294447187   0.011052099   0.077519040  -0.259478269
                         0.097405599  -0.145397099   0.068886950   0.221992667  -0.022609257   0.149777257  -0.132329773  -0.069023829


   Nr   State  S   Sz       17            18

    1    1.2  0.5  0.5   0.001975476  -0.002322715
                         0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000764881  -0.000653030
                         0.002336814  -0.001682933

    3    3.2  0.5  0.5  -0.001958886  -0.001668565
                         0.000066244   0.001630654

    4    1.2  0.5 -0.5  -0.001646643  -0.001400531
                        -0.001637619  -0.001394405

    5    2.2  0.5 -0.5  -0.001650824  -0.001105571
                         0.000731865   0.002196494

    6    3.2  0.5 -0.5  -0.000032554   0.001341799
                        -0.002333668   0.001428442

    7    1.2  1.5  1.5  -0.164016000  -0.140493868
                        -0.319143615  -0.318647563

    8    2.2  1.5  1.5  -0.039538976  -0.039039687
                         0.014505325   0.012031060

    9    3.2  1.5  1.5   0.316780904   0.316080518
                        -0.163478440  -0.139994622

   10    1.2  1.5  0.5  -0.190071165   0.190118666
                         0.081220693  -0.067444193

   11    2.2  1.5  0.5   0.375370369   0.362148770
                        -0.160096461  -0.179303603

   12    3.2  1.5  0.5  -0.035128504   0.112534093
                        -0.204793402   0.175387034

   13    1.2  1.5 -0.5  -0.087170808  -0.077517632
                        -0.181912044  -0.191734071

   14    2.2  1.5 -0.5  -0.130270782   0.153162719
                        -0.382580888   0.378184661

   15    3.2  1.5 -0.5  -0.203428575  -0.169462755
                         0.044931072   0.120428911

   16    1.2  1.5 -1.5  -0.324273256   0.341517701
                         0.126736550  -0.110613783

   17    2.2  1.5 -1.5  -0.019049429   0.017630108
                        -0.036125776   0.038194236

   18    3.2  1.5 -1.5   0.125405575  -0.109226479
                         0.322329023  -0.339203882


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   5.022%  52.988%   7.259%   1.394%  14.008%  19.324%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  17.468%  22.298%  10.869%  16.027%  21.637%  11.695%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   1.126%   1.134%  29.121%  35.281%  13.826%  19.507%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5  52.956%   5.067%   1.460%   7.179%  19.324%  14.008%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5  22.367%  17.363%  15.918%  11.014%  11.695%  21.637%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   1.054%   1.143%  35.367%  29.099%  19.507%  13.826%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   2.313%  23.166%   2.254%  23.110%
    8    2.2  1.5  1.5   0.001%   0.003%   0.000%   0.000%   0.000%   0.000%   9.641%   3.934%   7.495%   2.600%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.482%   9.887%   5.728%  14.893%
   10    1.2  1.5  0.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%  13.486%  10.840%   1.456%   6.113%
   11    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.165%   8.343%  19.975%   3.284%
   12    3.2  1.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   3.549%   0.007%  17.215%   1.922%
   13    1.2  1.5 -0.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%  17.993%   5.542%   0.924%   4.536%
   14    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.071%  10.517%  11.381%  12.212%
   15    3.2  1.5 -0.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   3.731%   0.482%  16.139%   2.114%
   16    1.2  1.5 -1.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   6.774%  19.476%   2.543%  19.197%
   17    2.2  1.5 -1.5   0.003%   0.001%   0.000%   0.000%   0.000%   0.000%  13.481%   1.235%   5.716%   2.272%
   18    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.314%   6.571%   9.174%   7.747%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.002%   0.002%   0.000%   0.000%   0.001%
    2    2.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.001%   0.001%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.002%   0.000%   0.001%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.002%   0.000%   0.001%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.001%   0.000%   0.001%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.001%   0.002%   0.001%   0.000%
    7    1.2  1.5  1.5   0.621%   3.528%   6.562%   3.784%   2.191%   7.464%  12.875%  12.127%
    8    2.2  1.5  1.5  12.354%   4.181%   5.010%  21.082%  25.343%   8.013%   0.177%   0.167%
    9    3.2  1.5  1.5  12.625%   4.181%   6.754%   3.805%   2.820%   7.165%  12.708%  11.951%
   10    1.2  1.5  0.5   1.728%  11.383%  21.227%   1.369%   1.165%  22.888%   4.272%   4.069%
   11    2.2  1.5  0.5  22.958%   0.071%   2.535%   1.799%   0.667%   2.219%  16.653%  16.330%
   12    3.2  1.5  0.5  22.479%   0.027%   4.302%  16.075%  23.647%   2.114%   4.317%   4.342%
   13    1.2  1.5 -0.5   2.206%  13.808%  22.856%   0.348%   0.825%  22.613%   4.069%   4.277%
   14    2.2  1.5 -0.5  11.334%  10.282%   2.463%   0.649%   1.470%   2.637%  16.334%  16.648%
   15    3.2  1.5 -0.5  10.761%  11.977%   1.774%  25.369%  16.937%   2.050%   4.340%   4.322%
   16    1.2  1.5 -1.5   1.132%   5.872%   8.711%   1.714%   2.523%   7.046%  12.122%  12.887%
   17    2.2  1.5 -1.5   1.010%  16.489%   9.078%  21.744%  20.053%   8.576%   0.167%   0.177%
   18    3.2  1.5 -1.5   0.791%  18.202%   8.721%   2.256%   2.352%   7.209%  11.962%  12.699%


 Property matrices transformed in SO basis (not sym. adapted)
 ============================================================

 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.49       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      932.64       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     26796.74  11934.80   7085.87   7771.94      2.94      0.10      0.91
 REAL TIME  *     27029.71 SEC
 DISK USED  *       976.59 MB (local),        4.25 GB (total)
 SF USED    *         5.32 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy=  -2605.044391138298

              CI              CI           MULTI         RHF-SCF
  -2605.00024530  -2605.33705817  -2604.19337641  -2604.60122692
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
