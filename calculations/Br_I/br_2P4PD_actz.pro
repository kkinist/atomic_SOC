
 Working directory              : /wrk/irikura/molpro.rb0WR5sgBg/
 Global scratch directory       : /wrk/irikura/molpro.rb0WR5sgBg/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.rb0WR5sgBg/

 id        : nistki

 Nodes     nprocs
 comp-102     3
 Distribution of processes:   nprocs(total)=    4   nprocs(compute)=    3   nprocs(helper)=    1
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Br SO-CI
                                                                                 ! active space (7/8)
 memory,3000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Br};
 
 basis=aug-cc-pwCVTZ-X2C
 
 set,dkho=101
 
 {rhf;wf,charge=-1}
 
 NSING=3
 NTRIP=8
 
 {multi
     occ,10,12
     closed,8,6
     wf,charge=0,sym=2,spin=1;state,NSING;
     wf,charge=0,sym=2,spin=3;state,NTRIP;
     expec2,lxx,lyy,lzz
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! KL-shell uncorrelated
 core,2,3
 
 {ci;wf,sym=2,spin=1;state,NSING; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,NTRIP; save,5303.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5203.2,5303.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 2.66 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 08:33:13 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (16 PROC) 64 bit mpp version                                                           DATE: 14-Jun-24          TIME: 08:07:11  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW


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

     14.942 MB (compressed) written to integral file ( 14.9%)

     Node minimum: 3.932 MB, node maximum: 6.029 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2167146.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2167146      RECORD LENGTH: 524288

 Memory used in sort:       2.72 MW

 SORT1 READ    12736444. AND WROTE      423136. INTEGRALS IN      2 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     1292716. AND WROTE     6503791. INTEGRALS IN     69 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC

 Node minimum:     2166295.  Node maximum:     2170350. integrals

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
 CPU TIMES  *         1.28      1.12
 REAL TIME  *         7.61 SEC
 DISK USED  *        29.42 MB (local),      119.24 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   9   9

 NELEC=   36   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2604.54210474   -2604.54210474     0.00D+00     0.17D+00     0     0       0.01      0.02    start
   2    -2604.58399209      -0.04188736     0.15D-01     0.18D-01     1     0       0.02      0.04    diag
   3    -2604.60106809      -0.01707600     0.12D-01     0.37D-02     2     0       0.01      0.05    diag
   4    -2604.60121218      -0.00014408     0.49D-03     0.60D-03     3     0       0.01      0.06    diag
   5    -2604.60122568      -0.00001350     0.13D-03     0.21D-03     4     0       0.01      0.07    diag
   6    -2604.60122689      -0.00000121     0.35D-04     0.11D-03     5     0       0.01      0.08    diag
   7    -2604.60122692      -0.00000003     0.28D-05     0.24D-04     6     0       0.01      0.09    diag
   8    -2604.60122692      -0.00000000     0.21D-06     0.18D-05     7     0       0.01      0.10    fixocc
   9    -2604.60122692      -0.00000000     0.12D-07     0.40D-07     0     0       0.01      0.11    diag

 Final occupancy:   9   9

 !RHF STATE 1.1 Energy              -2604.601226916043
  RHF One-electron energy           -3634.564176004932
  RHF Two-electron energy            1029.962949088889
  RHF Kinetic energy                 2786.461891273520
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
    4.1     2.00000    -2.81603     1  1  d1+  0.99901
    5.1     2.00000    -2.81603     1  1  d1-  0.99902
    6.1     2.00000    -2.81603     1  1  d2+  0.97932
    7.1     2.00000    -2.81603     1  1  d2-  0.99301
    8.1     2.00000    -2.81603     1  1  d0   0.98403
    9.1     2.00000    -0.71240     1  4  s    0.93304
    1.2     2.00000   -58.65691     1  1  pz   0.99992
    2.2     2.00000   -58.65691     1  1  py   0.99992
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
 CPU TIMES  *         1.41      0.12      1.12
 REAL TIME  *         8.46 SEC
 DISK USED  *        29.94 MB (local),      120.80 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         3.00000000                                  
 SETTING NTRIP          =         8.00000000                                  

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
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.473D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.402D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.222D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.131D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.188D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 5 3 2 1 1   2 3 5 4 6 1 2 3 5 6   4 3 5 2 4 6 1 4 6 2   3 5 71415 911 81210
                                       13 1 2 4 6 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.109D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.274D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.753D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.753D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.161D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.138D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.624D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.176D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.176D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 2   1 3 2 1 3 7 9 6 5 4   810 3 2 1 9 7 6 4 5  10 8 810 6 7 9 4 5 3
                                        1 2 6 7 9 4 5 810 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  912  ( 52 closed/active, 544 closed/virtual, 0 active/active, 316 active/virtual )
 Total number of variables:    13060
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   17   72    0  -2604.19501405   -2604.29908313   -0.10406908    0.38081365 0.00755639 0.00038570  0.11E+01      1.90
   2    8   35    0  -2604.26504712   -2604.27657667   -0.01152955    0.55412250 0.00012831 0.00101589  0.18E+00      3.15
   3    9   40    0  -2604.27666688   -2604.27666969   -0.00000281    0.00477712 0.00001352 0.00004089  0.16E-01      4.50
   4   10   34    0  -2604.27666969   -2604.27666969   -0.00000000    0.00000574 0.00000000 0.00000000  0.39E-03      5.68

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.18E-08)
                       Final energy:  -2604.27666969
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2604.507106561644
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.97823885
 One electron energy                         -3624.02431545
 Two electron energy                          1019.51720889
 Virial ratio                                    1.93452725
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2604.507106561636
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.97823885
 One electron energy                         -3624.02431545
 Two electron energy                          1019.51720889
 Virial ratio                                    1.93452725
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2604.507106561628
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.97823885
 One electron energy                         -3624.02431545
 Two electron energy                          1019.51720889
 Virial ratio                                    1.93452725
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2604.196270072815
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.88985968
 One electron energy                         -3614.27189622
 Two electron energy                          1010.07562615
 Virial ratio                                    1.93478077
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy             -2604.196270072809
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.88985968
 One electron energy                         -3614.27189622
 Two electron energy                          1010.07562615
 Virial ratio                                    1.93478077
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy             -2604.196270072793
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.88985968
 One electron energy                         -3614.27189622
 Two electron energy                          1010.07562615
 Virial ratio                                    1.93478077
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy             -2604.186647346410
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.92006958
 One electron energy                         -3614.36087040
 Two electron energy                          1010.17422305
 Virial ratio                                    1.93476718
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy             -2604.186647346404
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.92006958
 One electron energy                         -3614.36087040
 Two electron energy                          1010.17422305
 Virial ratio                                    1.93476718
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy             -2604.186647346397
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.92006958
 One electron energy                         -3614.36087040
 Two electron energy                          1010.17422305
 Virial ratio                                    1.93476718
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy             -2604.186647346389
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.92006958
 One electron energy                         -3614.36087040
 Two electron energy                          1010.17422305
 Virial ratio                                    1.93476718
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy             -2604.186647346371
 Nuclear energy                                  0.00000000
 Kinetic energy                               2785.92006958
 One electron energy                         -3614.36087040
 Two electron energy                          1010.17422305
 Virial ratio                                    1.93476718
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.000000187511
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999813874
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999998616
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000179373
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.999999929441
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999891185
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     3.999996446915
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000003474569
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.397699783874
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000004173699
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.602296120944
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999814057
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.000030795813
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999969390130
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999929455
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.000000076405
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999994141
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.000003239887
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.999996580506
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     2.540026895454
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     0.999998965970
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     1.459974318184
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999999998432
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999969390313
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.000030611254
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999999891172
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999994154
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.000000114674
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     1.000000313198
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     0.999999944926
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     0.062273320672
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     3.999996860332
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     3.937729560873
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 5 3 2 1 1   2 3 5 4 6 1 2 3 5 4   6 3 5 2 4 6 1 4 6 3   5 2 714151013 911 8
                                       12 1 2 4 6 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 3   2 1 2 1 3 7 9 6 4 5   810 3 2 1 9 7 6 4 5  10 8 810 6 7 9 4 5 3
                                        1 2 6 7 9 4 5 810 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -498.41091     1  1  s    0.99998
    2.1     2.00000   -67.27031     1  2  s    0.99987
    3.1     2.00000   -10.36296     1  3  s    0.99916
    4.1     2.00000    -3.32471     1  1  d1+  1.00030
    5.1     2.00000    -3.32471     1  1  d1-  1.00030
    6.1     2.00000    -3.32471     1  1  d2+  1.00030
    7.1     2.00000    -3.32471     1  1  d2-  1.00030
    8.1     2.00000    -3.32471     1  1  d0   1.00030
    9.1     1.99753    -1.15688     1  4  s    1.04780
   10.1     0.00272     0.54546     1  3  s    0.38755    1  5  s   -1.55898    1  6  s    1.34051    1  7  s    0.45063
    1.2     2.00000   -59.16749     1  1  pz   0.99996
    2.2     2.00000   -59.16749     1  1  py   0.99996
    3.2     2.00000   -59.16749     1  1  px   0.99996
    4.2     2.00000    -7.71773     1  2  pz   0.99959
    5.2     2.00000    -7.71773     1  2  py   0.99959
    6.2     2.00000    -7.71773     1  2  px   0.99959
    7.2     1.42148    -0.47165     1  3  pz   1.07593
    8.2     1.42148    -0.47165     1  3  py   1.07593
    9.2     1.42148    -0.47165     1  3  px   1.07593
   10.2     0.24510     0.06353     1  3  pz  -0.33462    1  8  pz   1.15285
   11.2     0.24510     0.06353     1  3  py  -0.33462    1  8  py   1.15285
   12.2     0.24510     0.06353     1  3  px  -0.33462    1  8  px   1.15285
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 22a000      0.98923192     -0.00042678     -0.00003681
 20 a22000      0.00003917      0.00547303      0.98921687
 20 2a2000      0.00042657      0.98921678     -0.00547304
 20 2aa0b0     -0.06799463      0.00002933      0.00000253
 20 a2ab00     -0.06799463      0.00002933      0.00000253
 20 a2a00b      0.00000269      0.00037619      0.06799359
 20 aa20b0      0.00000269      0.00037619      0.06799359
 20 2aa00b      0.00002932      0.06799358     -0.00037619
 20 aa2b00     -0.00002932     -0.06799358      0.00037619
 20 2ba0a0      0.05160134     -0.00002226     -0.00000192
 20 b2aa00      0.05160134     -0.00002226     -0.00000192
 20 a2b00a     -0.00000204     -0.00028549     -0.05160056
 20 ab20a0     -0.00000204     -0.00028549     -0.05160056
 20 2ab00a     -0.00002225     -0.05160055      0.00028549
 20 ba2a00      0.00002225      0.05160055     -0.00028549
 
 Energy:    -2604.50710656  -2604.50710656  -2604.50710656
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 2aaa00      0.00000000      0.00000000     -0.00000000      0.00001964     -0.00025887      0.80810661     -0.00068065
 20 aa200a      0.00000000      0.00000000      0.00000000     -0.00005001      0.00010456     -0.31604676     -0.00026212
 20 2aa0a0      0.70530853     -0.00018735      0.00023266     -0.70535259      0.00073231      0.00001231      0.00022466
 20 a2aa00      0.70530854     -0.00018735      0.00023266      0.70535259     -0.00073231     -0.00001231     -0.00022466
 20 2aa00a     -0.00018733     -0.70530857     -0.00005399      0.00073234      0.70535258      0.00022561      0.00008323
 20 aa2a00      0.00018733      0.70530857      0.00005399      0.00073234      0.70535258      0.00022561      0.00008323
 20 aa20a0     -0.00023268     -0.00005393      0.70530856      0.00022455     -0.00008367      0.00065999      0.70535246
 20 a2a00a     -0.00023268     -0.00005393      0.70530856     -0.00022455      0.00008367     -0.00065999     -0.70535246
 20 a2a0a0      0.00000000      0.00000000     -0.00000000     -0.00003037     -0.00015431      0.49205985     -0.00094277
 
 Energy:    -2604.19627007  -2604.19627007  -2604.19627007  -2604.18664735  -2604.18664735  -2604.18664735  -2604.18664735

 State:              8
 20 2aaa00     -0.10162179
 20 aa200a      0.75065183
 20 2aa0a0     -0.00004183
 20 a2aa00      0.00004183
 20 2aa00a     -0.00000319
 20 aa2a00     -0.00000319
 20 aa20a0      0.00052420
 20 a2a00a     -0.00052420
 20 a2a0a0      0.64903005
 
 Energy:    -2604.18664735
 


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
 CPU TIMES  *         4.86      3.45      0.12      1.12
 REAL TIME  *        15.32 SEC
 DISK USED  *        44.65 MB (local),      164.93 MB (total)
 SF USED    *        37.77 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2604.507107   2.0
    -2604.507107   2.0
    -2604.507107   2.0
    -2604.196270   2.0
    -2604.196270   2.0
    -2604.196270   2.0
    -2604.186647   6.0
    -2604.186647   6.0
    -2604.186647   6.0
    -2604.186647   6.0
    -2604.186647   6.0
                                                  


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

 Integral transformation finished. Total CPU:   0.09 sec, npass=  1  Memory used:   0.99 MW


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2604.50710656
     2     -2604.50710656
     3     -2604.50710656

 Number of blocks in overlap matrix:   383   Smallest eigenvalue:  0.15D-06
 Number of N-2 electron functions:     867
 Number of N-1 electron functions:  501108

 Number of internal configurations:               139300
 Number of singly external configurations:      19543760
 Number of doubly external configurations:       1320699
 Total number of contracted configurations:     21003759
 Total number of uncontracted configurations:  642651582

 Diagonal Coupling coefficients finished.               Storage:  64529615 words, CPU-Time:    190.69 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4833768 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2604.50710656    -0.00000000    -0.97475250  0.38D-01  0.64D-01   224.67
    1     2     2     1.00000000     0.00000000 -2604.50710656    -0.00000000    -0.97477215  0.38D-01  0.64D-01   224.67
    1     3     3     1.00000000     0.00000000 -2604.50710656     0.00000000    -0.97475476  0.38D-01  0.64D-01   224.67
    2     1     1     1.07057042    -0.80939916 -2605.31650572    -0.80939916    -0.01897704  0.29D-02  0.10D-02  1901.38
    2     2     2     1.07057513    -0.80939525 -2605.31650182    -0.80939525    -0.01897684  0.29D-02  0.10D-02  1901.38
    2     3     3     1.07057783    -0.80939450 -2605.31650106    -0.80939450    -0.01898123  0.29D-02  0.10D-02  1901.38
    3     1     1     1.06452690    -0.82714671 -2605.33425327    -0.01774755    -0.00051701  0.34D-04  0.62D-04  3572.17
    3     2     2     1.06452886    -0.82714639 -2605.33425295    -0.01775114    -0.00051711  0.34D-04  0.62D-04  3572.17
    3     3     3     1.06452930    -0.82714633 -2605.33425289    -0.01775183    -0.00051716  0.34D-04  0.62D-04  3572.17
    4     1     1     1.06533839    -0.82771089 -2605.33481745    -0.00056418    -0.00003113  0.10D-05  0.47D-05  5245.48
    4     2     2     1.06533911    -0.82771082 -2605.33481738    -0.00056443    -0.00003118  0.10D-05  0.47D-05  5245.48
    4     3     3     1.06533931    -0.82771080 -2605.33481737    -0.00056447    -0.00003120  0.10D-05  0.47D-05  5245.48
    5     1     1     1.06576583    -0.82774774 -2605.33485430    -0.00003685    -0.00000221  0.90D-07  0.30D-06  6911.75
    5     2     2     1.06576570    -0.82774774 -2605.33485430    -0.00003692    -0.00000221  0.91D-07  0.30D-06  6911.75
    5     3     3     1.06576562    -0.82774773 -2605.33485430    -0.00003693    -0.00000222  0.91D-07  0.30D-06  6911.75
    6     1     1     1.06579596    -0.82775033 -2605.33485689    -0.00000260    -0.00000015  0.89D-08  0.19D-07  8579.76
    6     2     2     1.06579600    -0.82775033 -2605.33485689    -0.00000260    -0.00000015  0.89D-08  0.19D-07  8579.76
    6     3     3     1.06579596    -0.82775033 -2605.33485689    -0.00000260    -0.00000015  0.89D-08  0.19D-07  8579.76
    7     1     1     1.06580288    -0.82775050 -2605.33485706    -0.00000017    -0.00000001  0.62D-09  0.16D-08 10247.76
    7     2     2     1.06580289    -0.82775050 -2605.33485706    -0.00000017    -0.00000001  0.62D-09  0.16D-08 10247.76
    7     3     3     1.06580288    -0.82775050 -2605.33485706    -0.00000017    -0.00000001  0.62D-09  0.16D-08 10247.76


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.9%
 S   0.4%  31.6%
 P   0.3%  57.5%   7.1%

 Initialization:   1.9%
 Other:            0.3%

 Total CPU:    10247.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/22000           0.2802512   0.8213599  -0.4120934
 2222222022222/000           0.7146695   0.0760210   0.6375438
 222222202222/2000           0.5776682  -0.4925267  -0.5888215
 22222220222/2/00\           0.0205588   0.0602538  -0.0302306
 22222220222//20\0           0.0205588   0.0602538  -0.0302306
 222222202222//0\0          -0.0524272  -0.0055768  -0.0467694
 22222220222/2/\00          -0.0524272  -0.0055768  -0.0467694

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.720373    0.582278    0.282488
 2           0.076628   -0.496457    0.827914
 3           0.642631   -0.593520   -0.415382

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968392   -0.000000    0.000000
 2          -0.000000    0.968392    0.000000
 3           0.000000    0.000000    0.968392


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.72037264 (fixed)   0.96861011 (relaxed)   0.96839233 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050769   -0.00051740   -0.50640589
 Singles      0.01505228   -0.06615561   -0.07372126
 Pairs        0.05078400   -0.22201227   -0.24762336
 Total        1.06634398   -0.28868527   -0.82775050
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.50710656
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.94455700
 One electron energy                -3622.16435221
 Two electron energy                 1016.82949514
 Virial quotient                       -0.93483555
 Correlation energy                    -0.82775050
 !MRCI STATE 1.2 Energy             -2605.334857063456

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.38977333 (Davidson, fixed reference)
 Cluster corrected energies         -2605.38937644 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.38977333 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38812291 (Pople, fixed reference)
 Cluster corrected energies         -2605.38771590 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38812291 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.82791442 (fixed)   0.96861011 (relaxed)   0.96839232 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050769   -0.00051740   -0.10441455
 Singles      0.01505228   -0.06615561   -0.07372126
 Pairs        0.05078401   -0.65067331   -0.64961469
 Total        1.06634399   -0.71734631   -0.82775050
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.50710656
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.94455491
 One electron energy                -3622.16435037
 Two electron energy                 1016.82949330
 Virial quotient                       -0.93483555
 Correlation energy                    -0.82775050
 !MRCI STATE 2.2 Energy             -2605.334857063096

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.38977333 (Davidson, fixed reference)
 Cluster corrected energies         -2605.38937645 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.38977333 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38812292 (Pople, fixed reference)
 Cluster corrected energies         -2605.38771591 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38812292 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.64263144 (fixed)   0.96861011 (relaxed)   0.96839233 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050769   -0.00051740   -1.02075083
 Singles      0.01505228   -0.06615561   -0.07372126
 Pairs        0.05078401    0.32645636    0.26672158
 Total        1.06634398    0.25978336   -0.82775050
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.50710656
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.94455662
 One electron energy                -3622.16435189
 Two electron energy                 1016.82949483
 Virial quotient                       -0.93483555
 Correlation energy                    -0.82775050
 !MRCI STATE 3.2 Energy             -2605.334857062895

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.38977333 (Davidson, fixed reference)
 Cluster corrected energies         -2605.38937645 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.38977333 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38812291 (Pople, fixed reference)
 Cluster corrected energies         -2605.38771590 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38812291 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      489.07       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     10499.90  10495.03      3.45      0.12      1.12
 REAL TIME  *     10577.40 SEC
 DISK USED  *       532.97 MB (local),        1.59 GB (total)
 SF USED    *         5.32 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2605.38977333  AU                              
 SETTING HLSDIAG(2)     =     -2605.38977333  AU                              
 SETTING HLSDIAG(3)     =     -2605.38977333  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

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
     1     -2604.19627007
     2     -2604.19627007
     3     -2604.19627007
     4     -2604.18664735
     5     -2604.18664735
     6     -2604.18664735
     7     -2604.18664735
     8     -2604.18664735

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1307D-06

 Number of blocks in overlap matrix:   799   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    2252
 Number of N-1 electron functions:  453552

 Number of internal configurations:               114452
 Number of singly external configurations:      17689552
 Number of doubly external configurations:       3428204
 Total number of contracted configurations:     21232208
 Total number of uncontracted configurations:  600978134

 Diagonal Coupling coefficients finished.               Storage:  86417527 words, CPU-Time:    984.84 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   7588266 words, CPU-time:      0.24 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2604.19627007     0.00000000    -0.94464522  0.35D-01  0.56D-01  1068.53
    1     2     2     1.00000000     0.00000000 -2604.19627007     0.00000000    -0.94478966  0.35D-01  0.56D-01  1068.53
    1     3     3     1.00000000     0.00000000 -2604.19627007    -0.00000000    -0.94469860  0.35D-01  0.56D-01  1068.53
    1     4     4     1.00000000     0.00000000 -2604.18664735     0.00000000    -0.94649917  0.36D-01  0.56D-01  1068.53
    1     5     5     1.00000000     0.00000000 -2604.18664735    -0.00000000    -0.94662892  0.36D-01  0.56D-01  1068.53
    1     6     6     1.00000000     0.00000000 -2604.18664735     0.00000000    -0.94966614  0.36D-01  0.59D-01  1068.53
    1     7     7     1.00000000     0.00000000 -2604.18664735     0.00000000    -0.94666483  0.36D-01  0.56D-01  1068.53
    1     8     8     1.00000000     0.00000000 -2604.18664735     0.00000000    -0.94902096  0.36D-01  0.58D-01  1068.53
    2     1     1     1.06346441    -0.78954025 -2604.98581032    -0.78954025    -0.01655376  0.18D-02  0.96D-03  6165.52
    2     2     2     1.06352943    -0.78952829 -2604.98579836    -0.78952829    -0.01658534  0.18D-02  0.96D-03  6165.52
    2     3     3     1.06350838    -0.78951757 -2604.98578764    -0.78951757    -0.01659682  0.18D-02  0.96D-03  6165.52
    2     4     4     1.06520843    -0.79050965 -2604.97715700    -0.79050965    -0.01710273  0.20D-02  0.10D-02  6165.52
    2     5     5     1.06454756    -0.79050448 -2604.97715183    -0.79050448    -0.01702170  0.20D-02  0.98D-03  6165.52
    2     6     6     1.06447170    -0.79049063 -2604.97713797    -0.79049063    -0.01700287  0.20D-02  0.98D-03  6165.52
    2     7     7     1.06453676    -0.79047531 -2604.97712266    -0.79047531    -0.01703582  0.20D-02  0.98D-03  6165.52
    2     8     8     1.06537219    -0.79044262 -2604.97708996    -0.79044262    -0.01718497  0.19D-02  0.11D-02  6165.52
    3     1     1     1.05847379    -0.80524511 -2605.00151518    -0.01570486    -0.00055263  0.26D-04  0.71D-04 11257.28
    3     2     2     1.05846838    -0.80524407 -2605.00151414    -0.01571578    -0.00055362  0.26D-04  0.71D-04 11257.28
    3     3     3     1.05846134    -0.80523669 -2605.00150676    -0.01571911    -0.00055708  0.26D-04  0.72D-04 11257.28
    3     4     4     1.05915611    -0.80669935 -2604.99334670    -0.01618970    -0.00054246  0.29D-04  0.71D-04 11257.28
    3     5     5     1.05913916    -0.80668600 -2604.99333334    -0.01618151    -0.00054955  0.29D-04  0.72D-04 11257.28
    3     6     6     1.05901472    -0.80664514 -2604.99329249    -0.01615451    -0.00057467  0.31D-04  0.74D-04 11257.28
    3     7     7     1.05899702    -0.80663546 -2604.99328281    -0.01616015    -0.00057993  0.31D-04  0.75D-04 11257.28
    3     8     8     1.05898595    -0.80662837 -2604.99327572    -0.01618576    -0.00058372  0.31D-04  0.76D-04 11257.28
    4     1     1     1.05937581    -0.80589853 -2605.00216861    -0.00065343    -0.00005998  0.29D-05  0.77D-05 16354.10
    4     2     2     1.05937462    -0.80589832 -2605.00216840    -0.00065425    -0.00006008  0.29D-05  0.77D-05 16354.10
    4     3     3     1.05936891    -0.80589686 -2605.00216693    -0.00066017    -0.00006115  0.29D-05  0.78D-05 16354.10
    4     4     4     1.05996384    -0.80733580 -2604.99398314    -0.00063645    -0.00005712  0.28D-05  0.76D-05 16354.10
    4     5     5     1.05995385    -0.80733345 -2604.99398080    -0.00064746    -0.00005881  0.28D-05  0.77D-05 16354.10
    4     6     6     1.05994562    -0.80732869 -2604.99397604    -0.00068355    -0.00006270  0.31D-05  0.80D-05 16354.10
    4     7     7     1.05993922    -0.80732726 -2604.99397461    -0.00069180    -0.00006382  0.31D-05  0.81D-05 16354.10
    4     8     8     1.05993437    -0.80732606 -2604.99397341    -0.00069769    -0.00006470  0.32D-05  0.82D-05 16354.10
    5     1     1     1.06000207    -0.80597329 -2605.00224337    -0.00007476    -0.00000555  0.30D-06  0.62D-06 21440.90
    5     2     2     1.06000245    -0.80597326 -2605.00224333    -0.00007494    -0.00000556  0.30D-06  0.62D-06 21440.90
    5     3     3     1.06000229    -0.80597315 -2605.00224323    -0.00007629    -0.00000565  0.31D-06  0.62D-06 21440.90
    5     4     4     1.06059232    -0.80740726 -2604.99405461    -0.00007147    -0.00000549  0.30D-06  0.64D-06 21440.90
    5     5     5     1.06059309    -0.80740709 -2604.99405444    -0.00007364    -0.00000562  0.31D-06  0.65D-06 21440.90
    5     6     6     1.06059104    -0.80740700 -2604.99405435    -0.00007831    -0.00000593  0.33D-06  0.67D-06 21440.90
    5     7     7     1.06059060    -0.80740695 -2604.99405430    -0.00007969    -0.00000601  0.34D-06  0.68D-06 21440.90
    5     8     8     1.06059045    -0.80740686 -2604.99405421    -0.00008080    -0.00000608  0.34D-06  0.68D-06 21440.90
    6     1     1     1.05999732    -0.80597981 -2605.00224989    -0.00000652    -0.00000050  0.23D-07  0.63D-07 26529.10
    6     2     2     1.05999731    -0.80597979 -2605.00224987    -0.00000653    -0.00000049  0.22D-07  0.63D-07 26529.10
    6     3     3     1.05999697    -0.80597978 -2605.00224985    -0.00000663    -0.00000050  0.22D-07  0.64D-07 26529.10
    6     4     4     1.06059060    -0.80741402 -2604.99406137    -0.00000676    -0.00000055  0.31D-07  0.71D-07 26529.10
    6     5     5     1.06059037    -0.80741401 -2604.99406136    -0.00000692    -0.00000056  0.31D-07  0.71D-07 26529.10
    6     6     6     1.06059118    -0.80741400 -2604.99406134    -0.00000699    -0.00000055  0.31D-07  0.70D-07 26529.10
    6     7     7     1.06059344    -0.80741380 -2604.99406115    -0.00000685    -0.00000053  0.29D-07  0.69D-07 26529.10
    6     8     8     1.06059411    -0.80741374 -2604.99406109    -0.00000688    -0.00000053  0.29D-07  0.69D-07 26529.10
    7     1     1     1.06000757    -0.80598041 -2605.00225048    -0.00000059    -0.00000007  0.40D-08  0.89D-08 31616.44
    7     2     2     1.06000745    -0.80598038 -2605.00225046    -0.00000059    -0.00000007  0.39D-08  0.88D-08 31616.44
    7     3     3     1.06000719    -0.80598038 -2605.00225045    -0.00000060    -0.00000007  0.39D-08  0.88D-08 31616.44
    7     4     4     1.06060477    -0.80741469 -2604.99406204    -0.00000067    -0.00000008  0.46D-08  0.10D-07 31616.44
    7     5     5     1.06060456    -0.80741469 -2604.99406204    -0.00000067    -0.00000008  0.46D-08  0.10D-07 31616.44
    7     6     6     1.06060496    -0.80741466 -2604.99406201    -0.00000066    -0.00000008  0.46D-08  0.10D-07 31616.44
    7     7     7     1.06060618    -0.80741445 -2604.99406179    -0.00000065    -0.00000008  0.45D-08  0.10D-07 31616.44
    7     8     8     1.06060635    -0.80741438 -2604.99406173    -0.00000064    -0.00000008  0.45D-08  0.10D-07 31616.44
    8     1     1     1.06001336    -0.80598049 -2605.00225057    -0.00000009    -0.00000001  0.85D-09  0.12D-08 36705.86
    8     2     2     1.06001331    -0.80598047 -2605.00225054    -0.00000008    -0.00000001  0.84D-09  0.12D-08 36705.86
    8     3     3     1.06001324    -0.80598046 -2605.00225054    -0.00000008    -0.00000001  0.83D-09  0.12D-08 36705.86
    8     4     4     1.06061120    -0.80741479 -2604.99406213    -0.00000010    -0.00000001  0.94D-09  0.14D-08 36705.86
    8     5     5     1.06061114    -0.80741479 -2604.99406213    -0.00000010    -0.00000001  0.94D-09  0.14D-08 36705.86
    8     6     6     1.06061124    -0.80741476 -2604.99406211    -0.00000010    -0.00000001  0.94D-09  0.14D-08 36705.86
    8     7     7     1.06061147    -0.80741454 -2604.99406189    -0.00000010    -0.00000001  0.93D-09  0.14D-08 36705.86
    8     8     8     1.06061136    -0.80741448 -2604.99406183    -0.00000010    -0.00000001  0.92D-09  0.14D-08 36705.86


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.3%  26.4%
 P   0.3%  56.5%  12.5%

 Initialization:   2.7%
 Other:            0.6%

 Total CPU:    36705.9 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222202222///00           0.0000000   0.0000000  -0.0000000  -0.0000299  -0.0002454  -0.0004901   0.0098692   0.7904569
 22222220222/2/0/0          -0.0000000   0.0000000  -0.0000000  -0.0001056  -0.0004464  -0.0011167   0.6894898   0.3866810
 22222220222/2/00/           0.6847509   0.0053576   0.0007061  -0.0073816   0.0004209   0.6845684   0.0008761   0.0004134
 22222220222//20/0           0.6847505   0.0053576   0.0007061   0.0073817  -0.0004209  -0.6845691  -0.0008760  -0.0004134
 222222202222//0/0          -0.0006251  -0.0103395   0.6846953   0.0140756  -0.6844628   0.0005732  -0.0003236  -0.0002075
 22222220222/2//00          -0.0006252  -0.0103395   0.6846921  -0.0140757   0.6844660  -0.0005732   0.0003237   0.0002076
 222222202222//00/           0.0053676  -0.6846745  -0.0103343   0.6844233   0.0140809   0.0073713   0.0001071   0.0000335
 22222220222//2/00          -0.0053676   0.6846715   0.0103343   0.6844264   0.0140810   0.0073713   0.0001071   0.0000335
 22222220222//200/          -0.0000000  -0.0000000  -0.0000000  -0.0000757  -0.0002010  -0.0006266   0.6796208  -0.4037760

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000887   -0.007613    0.971155   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 2          -0.014664    0.971044    0.007598    0.000000   -0.000002    0.000000    0.000000   -0.000000
 3           0.971074    0.014657    0.001001   -0.000002   -0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000    0.000002    0.000000   -0.019962    0.970648   -0.000053   -0.010469   -0.000123
 5           0.000002    0.000000    0.000000    0.970704    0.019970   -0.000357    0.000597   -0.000417
 6          -0.000000    0.000000   -0.000000   -0.000813    0.010454   -0.000755    0.970852   -0.001149
 7           0.000000   -0.000000    0.000000    0.000459    0.000152    0.135731    0.001242    0.961375
 8           0.000000   -0.000000   -0.000000    0.000294    0.000047    0.961375    0.000586   -0.135732

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971185   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.971185   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.971185    0.000000   -0.000000   -0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.970910   -0.000000    0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.970910   -0.000000    0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.970910    0.000000    0.000000
 7           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.970910    0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.970910


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97115456 (fixed)   0.97125028 (relaxed)   0.97118480 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019553   -0.00058297   -0.69134742
 Singles      0.01631383   -0.07315733   -0.08140092
 Pairs        0.04371126    0.00000004   -0.03323215
 Total        1.06022062   -0.07374027   -0.80598049
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19627007
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.41452950
 One electron energy                -3613.60944581
 Two electron energy                 1008.60719524
 Virial quotient                       -0.93489401
 Correlation energy                    -0.80598049
 !MRCI STATE 1.2 Energy             -2605.002250566266

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.05078721 (Davidson, fixed reference)
 Cluster corrected energies         -2605.05067199 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.05078721 (Davidson, rotated reference)

 Cluster corrected energies         -2605.04864614 (Pople, fixed reference)
 Cluster corrected energies         -2605.04853039 (Pople, relaxed reference)
 Cluster corrected energies         -2605.04864614 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97104438 (fixed)   0.97125031 (relaxed)   0.97118482 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019553   -0.00058297   -0.69134741
 Singles      0.01631382   -0.07315732   -0.08140090
 Pairs        0.04371122    0.00000000   -0.03323216
 Total        1.06022057   -0.07374029   -0.80598047
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19627007
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.41454693
 One electron energy                -3613.60946047
 Two electron energy                 1008.60720993
 Virial quotient                       -0.93489400
 Correlation energy                    -0.80598047
 !MRCI STATE 2.2 Energy             -2605.002250541065

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.05078714 (Davidson, fixed reference)
 Cluster corrected energies         -2605.05067192 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.05078714 (Davidson, rotated reference)

 Cluster corrected energies         -2605.04864607 (Pople, fixed reference)
 Cluster corrected energies         -2605.04853032 (Pople, relaxed reference)
 Cluster corrected energies         -2605.04864607 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97107374 (fixed)   0.97125034 (relaxed)   0.97118486 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019553   -0.00058297   -0.69134743
 Singles      0.01631384   -0.07315736   -0.08140092
 Pairs        0.04371113    0.00000002   -0.03323212
 Total        1.06022050   -0.07374032   -0.80598046
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19627007
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.41454641
 One electron energy                -3613.60946175
 Two electron energy                 1008.60721121
 Virial quotient                       -0.93489400
 Correlation energy                    -0.80598046
 !MRCI STATE 3.2 Energy             -2605.002250537525

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.05078708 (Davidson, fixed reference)
 Cluster corrected energies         -2605.05067186 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.05078708 (Davidson, rotated reference)

 Cluster corrected energies         -2605.04864601 (Pople, fixed reference)
 Cluster corrected energies         -2605.04853026 (Pople, relaxed reference)
 Cluster corrected energies         -2605.04864601 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97064830 (fixed)   0.97097497 (relaxed)   0.97091000 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019769   -0.00059693   -0.69158233
 Singles      0.01672163   -0.07402211   -0.08250254
 Pairs        0.04390155    0.00009268   -0.03332991
 Total        1.06082087   -0.07452636   -0.80741479
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.18664735
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.43062783
 One electron energy                -3613.65014439
 Two electron energy                 1008.65608225
 Virial quotient                       -0.93488567
 Correlation energy                    -0.80741479
 !MRCI STATE 4.2 Energy             -2604.994062133979

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.04316980 (Davidson, fixed reference)
 Cluster corrected energies         -2605.04305518 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.04316980 (Davidson, rotated reference)

 Cluster corrected energies         -2605.04102748 (Pople, fixed reference)
 Cluster corrected energies         -2605.04091220 (Pople, relaxed reference)
 Cluster corrected energies         -2605.04102748 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97070430 (fixed)   0.97097500 (relaxed)   0.97091002 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019769   -0.00059693   -0.69179158
 Singles      0.01672166   -0.07402215   -0.08250256
 Pairs        0.04390147    0.00031466   -0.03312064
 Total        1.06082081   -0.07430442   -0.80741479
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.18664735
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.43062492
 One electron energy                -3613.65014317
 Two electron energy                 1008.65608104
 Virial quotient                       -0.93488567
 Correlation energy                    -0.80741479
 !MRCI STATE 5.2 Energy             -2604.994062132326

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.04316976 (Davidson, fixed reference)
 Cluster corrected energies         -2605.04305513 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.04316976 (Davidson, rotated reference)

 Cluster corrected energies         -2605.04102743 (Pople, fixed reference)
 Cluster corrected energies         -2605.04091216 (Pople, relaxed reference)
 Cluster corrected energies         -2605.04102743 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97085238 (fixed)   0.97097495 (relaxed)   0.97090998 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019769   -0.00059693   -0.69231276
 Singles      0.01672160   -0.07402205   -0.08250248
 Pairs        0.04390162    0.00086753   -0.03259952
 Total        1.06082091   -0.07375145   -0.80741476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.18664735
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.43062237
 One electron energy                -3613.65014006
 Two electron energy                 1008.65607795
 Virial quotient                       -0.93488567
 Correlation energy                    -0.80741476
 !MRCI STATE 6.2 Energy             -2604.994062105322

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.04316981 (Davidson, fixed reference)
 Cluster corrected energies         -2605.04305518 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.04316981 (Davidson, rotated reference)

 Cluster corrected energies         -2605.04102748 (Pople, fixed reference)
 Cluster corrected energies         -2605.04091221 (Pople, relaxed reference)
 Cluster corrected energies         -2605.04102748 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96137469 (fixed)   0.97097485 (relaxed)   0.97090987 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019769   -0.00059691   -0.00749723
 Singles      0.01672133   -0.07402164   -0.08250197
 Pairs        0.04390213   -0.72559930   -0.71741534
 Total        1.06082114   -0.80021786   -0.80741454
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.18664735
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.43061262
 One electron energy                -3613.65013233
 Two electron energy                 1008.65607044
 Virial quotient                       -0.93488567
 Correlation energy                    -0.80741454
 !MRCI STATE 7.2 Energy             -2604.994061891287

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.04316977 (Davidson, fixed reference)
 Cluster corrected energies         -2605.04305513 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.04316977 (Davidson, rotated reference)

 Cluster corrected energies         -2605.04102745 (Pople, fixed reference)
 Cluster corrected energies         -2605.04091216 (Pople, relaxed reference)
 Cluster corrected energies         -2605.04102745 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96137530 (fixed)   0.97097490 (relaxed)   0.97090992 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019769   -0.00059691   -0.78806560
 Singles      0.01672123   -0.07402152   -0.08250185
 Pairs        0.04390211    0.10244398    0.06315296
 Total        1.06082104    0.02782555   -0.80741448
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.18664735
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.43062185
 One electron energy                -3613.65013247
 Two electron energy                 1008.65607065
 Virial quotient                       -0.93488567
 Correlation energy                    -0.80741448
 !MRCI STATE 8.2 Energy             -2604.994061826714

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.04316961 (Davidson, fixed reference)
 Cluster corrected energies         -2605.04305498 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.04316961 (Davidson, rotated reference)

 Cluster corrected energies         -2605.04102729 (Pople, fixed reference)
 Cluster corrected energies         -2605.04091201 (Pople, relaxed reference)
 Cluster corrected energies         -2605.04102729 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1804.72       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     52279.22  41779.32  10495.03      3.45      0.12      1.12
 REAL TIME  *     52655.87 SEC
 DISK USED  *         1.81 GB (local),        5.45 GB (total)
 SF USED    *        14.05 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2605.05078721  AU                              
 SETTING HLSDIAG(5)     =     -2605.05078714  AU                              
 SETTING HLSDIAG(6)     =     -2605.05078708  AU                              
 SETTING HLSDIAG(7)     =     -2605.04316980  AU                              
 SETTING HLSDIAG(8)     =     -2605.04316976  AU                              
 SETTING HLSDIAG(9)     =     -2605.04316981  AU                              
 SETTING HLSDIAG(10)    =     -2605.04316977  AU                              
 SETTING HLSDIAG(11)    =     -2605.04316961  AU                              


         HLSDIAG
    -2605.389773
    -2605.389773
    -2605.389773
    -2605.050787
    -2605.050787
    -2605.050787
    -2605.043170
    -2605.043170
    -2605.043170
    -2605.043170
    -2605.043170
                                                  

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

 Time for Seward_LS:       4.42 sec

        6966962. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1914 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.42 sec, REAL time:      4.49 sec


 SORTLS1 read     7823938. and wrote     7823938. SO integrals in    33 records. CPU time:      0.07 sec, REAL time:      0.13 sec
 SORTLS2 read     7823938. and wrote    38256242. SO integrals in     9 records. CPU time:      0.04 sec, REAL time:      0.12 sec

 FILE SIZES: FILE 1:   171.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   171.4 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.49       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1804.72       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     52284.62      5.37  41779.32  10495.03      3.45      0.12      1.12
 REAL TIME  *     52662.25 SEC
 DISK USED  *         1.81 GB (local),        5.84 GB (total)
 SF USED    *        14.05 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:  -2605.334857  -2605.334857  -2605.334857
 Replaced energies:  -2605.389773  -2605.389773  -2605.389773

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:  -2605.002251  -2605.002251  -2605.002251  -2604.994062  -2604.994062  -2604.994062  -2604.994062  -2604.994062
 Replaced energies:  -2605.050787  -2605.050787  -2605.050787  -2605.043170  -2605.043170  -2605.043170  -2605.043170  -2605.043170

 >>> Fock matrix approximation error in all internal so: 
  -28.617575733747184       (exact)   -29.172430400391089       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   24.813010123153465       (exact)    25.289632569537844       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   29.120830853969906       (exact)    29.685975487654904       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -14.159748050551011       (exact)   -14.283675551888267       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -40.649001049796595       (exact)   -40.995755329267631       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   20.719701369921925       (exact)    20.899967967194502       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.23995427391436036       (exact)  -0.24233227159685139       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.59118066274574854       (exact)  -0.59598180976196324       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.33947405329105829       (exact)   0.34271222190480199       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -15.593871591370135       (exact)   -15.722909924635417       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -44.431235415838835       (exact)   -44.786692146295628       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   22.787024046377848       (exact)    22.974221474136648       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.28315830526789498       (exact)  -0.28512872876966711       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.93533845764659385       (exact)  -0.94303016217686608       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.45209462641582016       (exact)   0.45565645855639936       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   31.330379307074988       (exact)    31.892463439868912       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -27.300254144183693       (exact)   -27.783864563628519       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -31.793065032509308       (exact)   -32.364121777863389       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -38.600818775651526       (exact)   -39.327530759148196       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.1513972740930436       (exact)   -4.2294442170667832       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -34.506406842120647       (exact)   -35.156024440831885       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   22.974252035455478       (exact)    23.406757357211028       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.4234949637308225       (exact)    2.4691586854501053       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   20.460372004676181       (exact)    20.845566911122248       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -35.527050563732132       (exact)   -36.214522977945805       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.7431525577762490       (exact)   -3.8159721959971638       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -31.723109909964528       (exact)   -32.336649597013022       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.7630828695379661E-002  (exact)   -7.1204769408570595E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.58717522022331625       (exact)   0.59189542887346125       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.55749623714045649       (exact)  -0.56495074752876251       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -13.972054100520497       (exact)   -14.092345600587299       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -40.845763663552297       (exact)   -41.196311600761042       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   20.458516891629294       (exact)    20.633723696375640       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.73833073625356505       (exact)   0.74846020723349960       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.96021902809551263       (exact)   0.96835626135904673       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.2003237050689510E-002  (exact)   -8.9120630212928875E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -15.263256384094293       (exact)   -15.386355039176474       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -44.743534216058841       (exact)   -45.104570331654287       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   22.396454149613380       (exact)    22.576627272311899       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -38.855886709593364       (exact)   -39.551032579270860       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.1463045125737281       (exact)   -4.2208877212179079       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -34.790924723365855       (exact)   -35.413149197345902       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -31.742266647955880       (exact)   -32.340499467444879       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   26.988765115198607       (exact)    27.497750618919557       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   32.263180490295234       (exact)    32.871286769466728       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -17.797892280057173       (exact)   -18.137491871114772       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   15.134650333458326       (exact)    15.423652519406108       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   18.098696238149319       (exact)    18.444065887605003       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.29140639290636644       (exact)   0.29737018300465179       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.0040636722503697E-002  (exact)    6.0924200779236201E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.31784127791217237       (exact)   0.32365807875872776       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -41.534100026693650       (exact)   -42.332261155379513       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.9377428403839705       (exact)   -4.0185236272843463       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -36.094465971484688       (exact)   -36.798276519626327       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   32.548867049598634       (exact)    32.821485481322846       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -28.345492674038383       (exact)   -28.589421334963490       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -34.361119732765694       (exact)   -34.661904679161587       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   45.677548339789873       (exact)    46.487311043902452       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.1403717090358443       (exact)    4.2206901032186668       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   39.322309234523196       (exact)    40.033205015730942       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -35.402127166500080       (exact)   -35.678623558901521       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   31.046844458989664       (exact)    31.297992386685895       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   37.855380206423803       (exact)    38.168875658952096       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.50170922391756245       (exact)   0.51037136241592673       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1431643928471704E-002  (exact)   -1.1422064826786057E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.41923893005601731       (exact)   0.42706343336964869       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.24391742259598204       (exact)   0.24872858948958346       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.75999560374538067       (exact)   0.77426508395703775       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.34980856564119861       (exact)  -0.35664854128213214       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   20.340312803842536       (exact)    20.726640131325020       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   59.648809815583014       (exact)    60.781282807338350       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -29.909032431947235       (exact)   -30.477052044801887       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2605.38977333

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00    -791.72     662.24     226.00       0.43      88.89      -4.62
                            0.00    -554.10   -1104.39      -0.00     857.24    -102.22     182.14      90.08       1.53      97.48

    2   2.2  0.5  0.5       0.00       0.00       0.00     791.72       0.00     776.72      23.81      -3.74     259.87      -6.00
                          554.10       0.00     376.82    -857.24      -0.00     960.94    -157.93     258.61       3.76     277.74

    3   3.2  0.5  0.5       0.00       0.00       0.00    -662.24    -776.72      -0.00     201.81       3.55    -130.16       0.57
                         1104.39    -376.82      -0.00     102.22    -960.94       0.00    -185.35    -131.82      -2.16    -142.44

    4   1.2  0.5 -0.5      -0.00     791.72    -662.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     857.24    -102.22      -0.00     554.10    1104.39       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5    -791.72       0.00    -776.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -857.24       0.00     960.94    -554.10      -0.00    -376.82       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5     662.24     776.72      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          102.22    -960.94      -0.00   -1104.39     376.82       0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5     226.00      23.81     201.81       0.00       0.00       0.00   74398.85       0.00       0.00       0.00
                         -182.14     157.93     185.35      -0.00      -0.00      -0.00      -0.00      -0.68       5.15      -0.79

    8   2.2  1.5  1.5       0.43      -3.74       3.55       0.00       0.00       0.00       0.00   74398.87       0.00       0.00
                          -90.08    -258.61     131.82      -0.00      -0.00      -0.00       0.68      -0.00    -658.40       4.19

    9   3.2  1.5  1.5      88.89     259.87    -130.16       0.00       0.00       0.00       0.00       0.00   74398.88       0.00
                           -1.53      -3.76       2.16      -0.00      -0.00      -0.00      -5.15     658.40       0.00     766.68

   10   4.2  1.5  1.5      -4.62      -6.00       0.57       0.00       0.00       0.00       0.00       0.00       0.00   76070.68
                          -97.48    -277.74     142.44      -0.00      -0.00      -0.00       0.79      -4.19    -766.68      -0.00

   11   5.2  1.5  1.5      95.41     279.69    -140.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.77      -5.85       2.83      -0.00      -0.00      -0.00      -6.27     766.70      -4.20     658.05

   12   6.2  1.5  1.5     243.19      25.95     217.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          196.09    -170.86    -198.99      -0.00      -0.00      -0.00      -0.54      -0.52      -8.26      -0.60

   13   7.2  1.5  1.5     198.45    -168.73    -201.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -241.24     -25.94    -215.65      -0.00      -0.00      -0.00      11.05       0.45      -0.10      14.50

   14   8.2  1.5  1.5     111.12     -94.49    -113.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          143.63      15.15     127.92      -0.00      -0.00      -0.00     885.25       7.16       0.88       0.02

   15   1.2  1.5  0.5       0.00       0.00       0.00     130.48      13.75     116.51       0.00      -5.74     380.09       9.11
                            1.85       0.38       2.02    -105.16      91.18     107.01      -0.00     380.10       5.74    -442.59

   16   2.2  1.5  0.5       0.00       0.00       0.00       0.25      -2.16       2.05       5.74      -0.00       2.98       0.08
                         -264.23     -25.05    -229.63     -52.01    -149.31      76.11    -380.10       0.00      -0.35       1.31

   17   3.2  1.5  0.5       0.00       0.00       0.00      51.32     150.04     -75.15    -380.09      -2.98       0.00      -4.76
                          206.98    -180.25    -218.51      -0.88      -2.17       1.25      -5.74       0.35      -0.00      -0.43

   18   4.2  1.5  0.5       0.00       0.00       0.00      -2.67      -3.47       0.33      -9.11      -0.08       4.76       0.00
                          285.87      25.92     246.11     -56.28    -160.35      82.24     442.58      -1.31       0.43       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00      55.08     161.48     -80.83     442.57       3.76       0.19       4.12
                         -221.29     194.07     236.63      -1.02      -3.38       1.63       9.10       0.34       0.14      -0.23

   20   6.2  1.5  0.5       0.00       0.00       0.00     140.40      14.98     125.71       0.03       7.40    -442.59      -7.89
                            3.14      -0.07       2.62     113.21     -98.65    -114.88       1.30     442.62       7.09    -379.85

   21   7.2  1.5  0.5       0.00       0.00       0.00     114.58     -97.42    -116.46       3.70    -445.76      -7.29     371.59
                            1.55       4.81      -2.22    -139.28     -14.98    -124.51       0.47       7.20    -439.39      -8.47

   22   8.2  1.5  0.5       0.00       0.00       0.00      64.16     -54.56     -65.24       2.09    -249.99      -4.04    -662.61
                          127.12     372.79    -186.92      82.93       8.75      73.85      -0.22      -3.67     261.06     -13.66

   23   1.2  1.5 -0.5     130.48      13.75     116.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          105.16     -91.18    -107.01       1.85       0.38       2.02      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5       0.25      -2.16       2.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           52.01     149.31     -76.11    -264.23     -25.05    -229.63      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5      51.32     150.04     -75.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.88       2.17      -1.25     206.98    -180.25    -218.51      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5      -2.67      -3.47       0.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           56.28     160.35     -82.24     285.87      25.92     246.11      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5      55.08     161.48     -80.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.02       3.38      -1.63    -221.29     194.07     236.63      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5     140.40      14.98     125.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -113.21      98.65     114.88       3.14      -0.07       2.62      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5     114.58     -97.42    -116.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          139.28      14.98     124.51       1.55       4.81      -2.22      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5      64.16     -54.56     -65.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -82.93      -8.75     -73.85     127.12     372.79    -186.92      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00     226.00      23.81     201.81       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     182.14    -157.93    -185.35      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.43      -3.74       3.55       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      90.08     258.61    -131.82      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00      88.89     259.87    -130.16       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       1.53       3.76      -2.16      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00      -4.62      -6.00       0.57       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      97.48     277.74    -142.44      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00      95.41     279.69    -140.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       1.77       5.85      -2.83      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00     243.19      25.95     217.74       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -196.09     170.86     198.99      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00     198.45    -168.73    -201.71       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     241.24      25.94     215.65      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00     111.12     -94.49    -113.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -143.63     -15.15    -127.92      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5      95.41     243.19     198.45     111.12       0.00       0.00       0.00       0.00       0.00       0.00
                            1.77    -196.09     241.24    -143.63      -1.85     264.23    -206.98    -285.87     221.29      -3.14

    2   2.2  0.5  0.5     279.69      25.95    -168.73     -94.49       0.00       0.00       0.00       0.00       0.00       0.00
                            5.85     170.86      25.94     -15.15      -0.38      25.05     180.25     -25.92    -194.07       0.07

    3   3.2  0.5  0.5    -140.00     217.74    -201.71    -113.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.83     198.99     215.65    -127.92      -2.02     229.63     218.51    -246.11    -236.63      -2.62

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00     130.48       0.25      51.32      -2.67      55.08     140.40
                            0.00       0.00       0.00       0.00     105.16      52.01       0.88      56.28       1.02    -113.21

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      13.75      -2.16     150.04      -3.47     161.48      14.98
                            0.00       0.00       0.00       0.00     -91.18     149.31       2.17     160.35       3.38      98.65

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00     116.51       2.05     -75.15       0.33     -80.83     125.71
                            0.00       0.00       0.00       0.00    -107.01     -76.11      -1.25     -82.24      -1.63     114.88

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       5.74    -380.09      -9.11     442.57       0.03
                            6.27       0.54     -11.05    -885.25       0.00     380.10       5.74    -442.58      -9.10      -1.30

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00      -5.74      -0.00      -2.98      -0.08       3.76       7.40
                         -766.70       0.52      -0.45      -7.16    -380.10      -0.00      -0.35       1.31      -0.34    -442.62

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00     380.09       2.98       0.00       4.76       0.19    -442.59
                            4.20       8.26       0.10      -0.88      -5.74       0.35       0.00      -0.43      -0.14      -7.09

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00       9.11       0.08      -4.76       0.00       4.12      -7.89
                         -658.05       0.60     -14.50      -0.02     442.59      -1.31       0.43      -0.00       0.23     379.85

   11   5.2  1.5  1.5   76070.69       0.00       0.00       0.00    -442.58      -3.76      -0.19      -4.12       0.00     379.84
                            0.00       7.72       0.91       0.02       9.10       0.34       0.14      -0.23      -0.00       8.70

   12   6.2  1.5  1.5       0.00   76070.68       0.00       0.00      -0.03      -7.40     442.60       7.89    -379.84      -0.00
                           -7.72       0.00    1316.00     -16.43       1.30     442.63       7.09    -379.85      -8.70       0.00

   13   7.2  1.5  1.5       0.00       0.00   76070.69       0.00      -3.70     445.77       7.29    -371.59      -8.13      -3.82
                           -0.91   -1316.00       0.00      -0.82       0.47       7.20    -439.40      -8.47     388.04      -0.27

   14   8.2  1.5  1.5       0.00       0.00       0.00   76070.72      -2.09     249.99       4.04     662.61      13.40       7.25
                           -0.02      16.43       0.82      -0.00      -0.22      -3.67     261.06     -13.66     653.15      -0.53

   15   1.2  1.5  0.5    -442.58      -0.03      -3.70      -2.09   74398.85       0.00       0.00       0.00       0.00       0.00
                           -9.10      -1.30      -0.47       0.22      -0.00      -0.23       1.72      -0.26       2.09       0.18

   16   2.2  1.5  0.5      -3.76      -7.40     445.77     249.99       0.00   74398.87       0.00       0.00       0.00       0.00
                           -0.34    -442.63      -7.20       3.67       0.23      -0.00    -219.47       1.40    -255.57       0.17

   17   3.2  1.5  0.5      -0.19     442.60       7.29       4.04       0.00       0.00   74398.88       0.00       0.00       0.00
                           -0.14      -7.09     439.40    -261.06      -1.72     219.47       0.00     255.56       1.40       2.75

   18   4.2  1.5  0.5      -4.12       7.89    -371.59     662.61       0.00       0.00       0.00   76070.68       0.00       0.00
                            0.23     379.85       8.47      13.66       0.26      -1.40    -255.56      -0.00    -219.35       0.20

   19   5.2  1.5  0.5       0.00    -379.84      -8.13      13.40       0.00       0.00       0.00       0.00   76070.69       0.00
                            0.00       8.70    -388.04    -653.15      -2.09     255.57      -1.40     219.35       0.00       2.57

   20   6.2  1.5  0.5     379.84      -0.00      -3.82       7.25       0.00       0.00       0.00       0.00       0.00   76070.68
                           -8.70      -0.00       0.27       0.53      -0.18      -0.17      -2.75      -0.20      -2.57       0.00

   21   7.2  1.5  0.5       8.13       3.82       0.00       0.12       0.00       0.00       0.00       0.00       0.00       0.00
                          388.04      -0.27       0.00      -0.19       3.68       0.15      -0.03       4.83      -0.30    -438.67

   22   8.2  1.5  0.5     -13.40      -7.25      -0.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          653.15      -0.53       0.19       0.00     295.08       2.39       0.29       0.01      -0.01       5.48

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -6.62     438.89      10.51    -511.04      -0.03
                           -0.00      -0.00      -0.00      -0.00      -0.00     438.90       6.63    -511.06     -10.51      -1.50

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       6.62      -0.00       3.44       0.09      -4.34      -8.55
                           -0.00      -0.00      -0.00      -0.00    -438.90       0.00      -0.40       1.51      -0.39    -511.10

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00    -438.89      -3.44       0.00      -5.50      -0.22     511.07
                           -0.00      -0.00      -0.00      -0.00      -6.63       0.40      -0.00      -0.50      -0.17      -8.19

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00     -10.51      -0.09       5.50       0.00      -4.75       9.11
                           -0.00      -0.00      -0.00      -0.00     511.05      -1.51       0.50       0.00       0.27     438.61

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00     511.03       4.34       0.22       4.75       0.00    -438.61
                           -0.00      -0.00      -0.00      -0.00      10.51       0.39       0.17      -0.27       0.00      10.05

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.03       8.55    -511.06      -9.11     438.61      -0.00
                           -0.00      -0.00      -0.00      -0.00       1.50     511.09       8.19    -438.61     -10.05      -0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       4.28    -514.72      -8.42     429.08       9.39       4.41
                           -0.00      -0.00      -0.00      -0.00       0.54       8.32    -507.37      -9.78     448.07      -0.31

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       2.42    -288.66      -4.67    -765.11     -15.48      -8.37
                           -0.00      -0.00      -0.00      -0.00      -0.25      -4.24     301.44     -15.77     754.20      -0.61

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5       0.00       0.00     130.48       0.25      51.32      -2.67      55.08     140.40     114.58      64.16
                           -1.55    -127.12    -105.16     -52.01      -0.88     -56.28      -1.02     113.21    -139.28      82.93

    2   2.2  0.5  0.5       0.00       0.00      13.75      -2.16     150.04      -3.47     161.48      14.98     -97.42     -54.56
                           -4.81    -372.79      91.18    -149.31      -2.17    -160.35      -3.38     -98.65     -14.98       8.75

    3   3.2  0.5  0.5       0.00       0.00     116.51       2.05     -75.15       0.33     -80.83     125.71    -116.46     -65.24
                            2.22     186.92     107.01      76.11       1.25      82.24       1.63    -114.88    -124.51      73.85

    4   1.2  0.5 -0.5     114.58      64.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          139.28     -82.93      -1.85     264.23    -206.98    -285.87     221.29      -3.14      -1.55    -127.12

    5   2.2  0.5 -0.5     -97.42     -54.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           14.98      -8.75      -0.38      25.05     180.25     -25.92    -194.07       0.07      -4.81    -372.79

    6   3.2  0.5 -0.5    -116.46     -65.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          124.51     -73.85      -2.02     229.63     218.51    -246.11    -236.63      -2.62       2.22     186.92

    7   1.2  1.5  1.5       3.70       2.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.47       0.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5    -445.76    -249.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.20       3.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5      -7.29      -4.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          439.39    -261.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5     371.59    -662.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.47      13.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       8.13     -13.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -388.04    -653.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5       3.82      -7.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.27       0.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5       0.00      -0.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.19      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00       6.62    -438.89     -10.51     511.03       0.03       4.28       2.42
                           -3.68    -295.08       0.00     438.90       6.63    -511.05     -10.51      -1.50      -0.54       0.25

   16   2.2  1.5  0.5       0.00       0.00      -6.62      -0.00      -3.44      -0.09       4.34       8.55    -514.72    -288.66
                           -0.15      -2.39    -438.90      -0.00      -0.40       1.51      -0.39    -511.09      -8.32       4.24

   17   3.2  1.5  0.5       0.00       0.00     438.89       3.44       0.00       5.50       0.22    -511.06      -8.42      -4.67
                            0.03      -0.29      -6.63       0.40       0.00      -0.50      -0.17      -8.19     507.37    -301.44

   18   4.2  1.5  0.5       0.00       0.00      10.51       0.09      -5.50       0.00       4.75      -9.11     429.08    -765.11
                           -4.83      -0.01     511.06      -1.51       0.50      -0.00       0.27     438.61       9.78      15.77

   19   5.2  1.5  0.5       0.00       0.00    -511.04      -4.34      -0.22      -4.75       0.00     438.61       9.39     -15.48
                            0.30       0.01      10.51       0.39       0.17      -0.27      -0.00      10.05    -448.07    -754.20

   20   6.2  1.5  0.5       0.00       0.00      -0.03      -8.55     511.07       9.11    -438.61      -0.00       4.41      -8.37
                          438.67      -5.48       1.50     511.10       8.19    -438.61     -10.05       0.00       0.31       0.61

   21   7.2  1.5  0.5   76070.69       0.00      -4.28     514.73       8.42    -429.08      -9.39      -4.41       0.00      -0.14
                            0.00      -0.27       0.54       8.32    -507.38      -9.78     448.07      -0.31      -0.00      -0.22

   22   8.2  1.5  0.5       0.00   76070.72      -2.42     288.67       4.67     765.11      15.48       8.37       0.14      -0.00
                            0.27      -0.00      -0.25      -4.24     301.45     -15.77     754.20      -0.61       0.22      -0.00

   23   1.2  1.5 -0.5      -4.28      -2.42   74398.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.54       0.25       0.00       0.23      -1.72       0.26      -2.09      -0.18       3.68     295.08

   24   2.2  1.5 -0.5     514.73     288.67       0.00   74398.87       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.32       4.24      -0.23       0.00     219.47      -1.40     255.57      -0.17       0.15       2.39

   25   3.2  1.5 -0.5       8.42       4.67       0.00       0.00   74398.88       0.00       0.00       0.00       0.00       0.00
                          507.38    -301.45       1.72    -219.47      -0.00    -255.56      -1.40      -2.75      -0.03       0.29

   26   4.2  1.5 -0.5    -429.08     765.11       0.00       0.00       0.00   76070.68       0.00       0.00       0.00       0.00
                            9.78      15.77      -0.26       1.40     255.56       0.00     219.35      -0.20       4.83       0.01

   27   5.2  1.5 -0.5      -9.39      15.48       0.00       0.00       0.00       0.00   76070.69       0.00       0.00       0.00
                         -448.07    -754.20       2.09    -255.57       1.40    -219.35      -0.00      -2.57      -0.30      -0.01

   28   6.2  1.5 -0.5      -4.41       8.37       0.00       0.00       0.00       0.00       0.00   76070.68       0.00       0.00
                            0.31       0.61       0.18       0.17       2.75       0.20       2.57      -0.00    -438.67       5.48

   29   7.2  1.5 -0.5       0.00       0.14       0.00       0.00       0.00       0.00       0.00       0.00   76070.69       0.00
                            0.00      -0.22      -3.68      -0.15       0.03      -4.83       0.30     438.67      -0.00       0.27

   30   8.2  1.5 -0.5      -0.14      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   76070.72
                            0.22       0.00    -295.08      -2.39      -0.29      -0.01       0.01      -5.48      -0.27       0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00      -5.74     380.09       9.11    -442.58      -0.03      -3.70      -2.09
                           -0.00      -0.00      -0.00     380.10       5.74    -442.59      -9.10      -1.30      -0.47       0.22

   32   2.2  1.5 -1.5       0.00       0.00       5.74      -0.00       2.98       0.08      -3.76      -7.40     445.77     249.99
                           -0.00      -0.00    -380.10       0.00      -0.35       1.31      -0.34    -442.63      -7.20       3.67

   33   3.2  1.5 -1.5       0.00       0.00    -380.09      -2.98       0.00      -4.76      -0.19     442.60       7.29       4.04
                           -0.00      -0.00      -5.74       0.35      -0.00      -0.43      -0.14      -7.09     439.40    -261.06

   34   4.2  1.5 -1.5       0.00       0.00      -9.11      -0.08       4.76       0.00      -4.12       7.89    -371.59     662.61
                           -0.00      -0.00     442.58      -1.31       0.43       0.00       0.23     379.85       8.47      13.66

   35   5.2  1.5 -1.5       0.00       0.00     442.57       3.76       0.19       4.12       0.00    -379.84      -8.13      13.40
                           -0.00      -0.00       9.10       0.34       0.14      -0.23       0.00       8.70    -388.04    -653.15

   36   6.2  1.5 -1.5       0.00       0.00       0.03       7.40    -442.59      -7.89     379.84      -0.00      -3.82       7.25
                           -0.00      -0.00       1.30     442.62       7.09    -379.85      -8.70      -0.00       0.27       0.53

   37   7.2  1.5 -1.5       0.00       0.00       3.70    -445.76      -7.29     371.59       8.13       3.82       0.00       0.12
                           -0.00      -0.00       0.47       7.20    -439.39      -8.47     388.04      -0.27       0.00      -0.19

   38   8.2  1.5 -1.5       0.00       0.00       2.09    -249.99      -4.04    -662.61     -13.40      -7.25      -0.12      -0.00
                           -0.00      -0.00      -0.22      -3.67     261.06     -13.66     653.15      -0.53       0.19       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5     226.00       0.43      88.89      -4.62      95.41     243.19     198.45     111.12
                         -182.14     -90.08      -1.53     -97.48      -1.77     196.09    -241.24     143.63

    5   2.2  0.5 -0.5      23.81      -3.74     259.87      -6.00     279.69      25.95    -168.73     -94.49
                          157.93    -258.61      -3.76    -277.74      -5.85    -170.86     -25.94      15.15

    6   3.2  0.5 -0.5     201.81       3.55    -130.16       0.57    -140.00     217.74    -201.71    -113.00
                          185.35     131.82       2.16     142.44       2.83    -198.99    -215.65     127.92

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   1.2  1.5 -0.5       0.00       5.74    -380.09      -9.11     442.57       0.03       3.70       2.09
                            0.00     380.10       5.74    -442.58      -9.10      -1.30      -0.47       0.22

   24   2.2  1.5 -0.5      -5.74      -0.00      -2.98      -0.08       3.76       7.40    -445.76    -249.99
                         -380.10      -0.00      -0.35       1.31      -0.34    -442.62      -7.20       3.67

   25   3.2  1.5 -0.5     380.09       2.98       0.00       4.76       0.19    -442.59      -7.29      -4.04
                           -5.74       0.35       0.00      -0.43      -0.14      -7.09     439.39    -261.06

   26   4.2  1.5 -0.5       9.11       0.08      -4.76       0.00       4.12      -7.89     371.59    -662.61
                          442.59      -1.31       0.43      -0.00       0.23     379.85       8.47      13.66

   27   5.2  1.5 -0.5    -442.58      -3.76      -0.19      -4.12       0.00     379.84       8.13     -13.40
                            9.10       0.34       0.14      -0.23      -0.00       8.70    -388.04    -653.15

   28   6.2  1.5 -0.5      -0.03      -7.40     442.60       7.89    -379.84      -0.00       3.82      -7.25
                            1.30     442.63       7.09    -379.85      -8.70       0.00       0.27       0.53

   29   7.2  1.5 -0.5      -3.70     445.77       7.29    -371.59      -8.13      -3.82       0.00      -0.12
                            0.47       7.20    -439.40      -8.47     388.04      -0.27      -0.00      -0.19

   30   8.2  1.5 -0.5      -2.09     249.99       4.04     662.61      13.40       7.25       0.12      -0.00
                           -0.22      -3.67     261.06     -13.66     653.15      -0.53       0.19      -0.00

   31   1.2  1.5 -1.5   74398.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.68      -5.15       0.79      -6.27      -0.54      11.05     885.25

   32   2.2  1.5 -1.5       0.00   74398.87       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.68       0.00     658.40      -4.19     766.70      -0.52       0.45       7.16

   33   3.2  1.5 -1.5       0.00       0.00   74398.88       0.00       0.00       0.00       0.00       0.00
                            5.15    -658.40      -0.00    -766.68      -4.20      -8.26      -0.10       0.88

   34   4.2  1.5 -1.5       0.00       0.00       0.00   76070.68       0.00       0.00       0.00       0.00
                           -0.79       4.19     766.68       0.00     658.05      -0.60      14.50       0.02

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   76070.69       0.00       0.00       0.00
                            6.27    -766.70       4.20    -658.05      -0.00      -7.72      -0.91      -0.02

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   76070.68       0.00       0.00
                            0.54       0.52       8.26       0.60       7.72      -0.00   -1316.00      16.43

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   76070.69       0.00
                          -11.05      -0.45       0.10     -14.50       0.91    1316.00      -0.00       0.82

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   76070.72
                         -885.25      -7.16      -0.88      -0.02       0.02     -16.43      -0.82       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2605.39569772    -0.00592439    -1300.25      0.00000000        0.00      0.0000
     2 -2605.39569772    -0.00592439    -1300.25      0.00000000        0.00      0.0000
     3 -2605.39569767    -0.00592433    -1300.24      0.00000006        0.01      0.0000
     4 -2605.39569767    -0.00592433    -1300.24      0.00000006        0.01      0.0000
     5 -2605.37805225     0.01172108     2572.48      0.01764547     3872.73      0.4802
     6 -2605.37805225     0.01172108     2572.48      0.01764547     3872.73      0.4802
     7 -2605.05586645     0.33390688    73284.09      0.33983127    74584.34      9.2473
     8 -2605.05586644     0.33390689    73284.09      0.33983128    74584.34      9.2473
     9 -2605.05586641     0.33390692    73284.10      0.33983132    74584.35      9.2473
    10 -2605.05586639     0.33390694    73284.10      0.33983134    74584.36      9.2473
    11 -2605.05586638     0.33390695    73284.10      0.33983134    74584.36      9.2473
    12 -2605.05586634     0.33390699    73284.11      0.33983138    74584.37      9.2473
    13 -2605.05041817     0.33935516    74479.85      0.34527956    75780.10      9.3955
    14 -2605.05041812     0.33935521    74479.86      0.34527960    75780.11      9.3955
    15 -2605.05041811     0.33935523    74479.86      0.34527962    75780.12      9.3955
    16 -2605.05041810     0.33935523    74479.86      0.34527963    75780.12      9.3955
    17 -2605.04916675     0.34060658    74754.50      0.34653097    76054.76      9.4296
    18 -2605.04916675     0.34060658    74754.50      0.34653097    76054.76      9.4296
    19 -2605.04916674     0.34060659    74754.51      0.34653098    76054.76      9.4296
    20 -2605.04916674     0.34060659    74754.51      0.34653098    76054.76      9.4296
    21 -2605.04916670     0.34060663    74754.52      0.34653103    76054.77      9.4296
    22 -2605.04916670     0.34060664    74754.52      0.34653103    76054.77      9.4296
    23 -2605.04916666     0.34060668    74754.52      0.34653107    76054.78      9.4296
    24 -2605.04916666     0.34060668    74754.52      0.34653107    76054.78      9.4296
    25 -2605.04634258     0.34343075    75374.34      0.34935514    76674.59      9.5064
    26 -2605.04634255     0.34343078    75374.34      0.34935517    76674.60      9.5064
    27 -2605.04009105     0.34968228    76746.39      0.35560667    78046.64      9.6766
    28 -2605.04009101     0.34968233    76746.40      0.35560672    78046.65      9.6766
    29 -2605.04009101     0.34968233    76746.40      0.35560672    78046.65      9.6766
    30 -2605.04009100     0.34968234    76746.40      0.35560673    78046.66      9.6766
    31 -2605.04009096     0.34968237    76746.41      0.35560676    78046.66      9.6766
    32 -2605.04009093     0.34968240    76746.42      0.35560679    78046.67      9.6766
    33 -2605.03550326     0.35427007    77753.29      0.36019447    79053.55      9.8014
    34 -2605.03550323     0.35427010    77753.30      0.36019449    79053.55      9.8014
    35 -2605.03550321     0.35427012    77753.30      0.36019451    79053.56      9.8014
    36 -2605.03550320     0.35427013    77753.31      0.36019452    79053.56      9.8014
    37 -2605.03356841     0.35620493    78177.95      0.36212932    79478.20      9.8540
    38 -2605.03356837     0.35620496    78177.95      0.36212935    79478.21      9.8540


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.502195820  -0.179458149   0.587958954  -0.191033251   0.168417327   0.552195102   0.000000896   0.000000008
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.403427083  -0.447893626   0.044257972  -0.503574907   0.493556359  -0.150533065  -0.000000653   0.000000033
                        -0.192834102   0.009860157  -0.045832486   0.091118523  -0.000014336   0.258895988  -0.000000293   0.000000003

    3    3.2  0.5  0.5  -0.374019673   0.252275077   0.477986473   0.250904185  -0.247634866   0.075524967  -0.000000695  -0.000000011
                        -0.333311578  -0.016848473  -0.231559267  -0.081470176   0.000021013   0.516001088  -0.000000584  -0.000000002

    4    1.2  0.5 -0.5  -0.064413785  -0.180220419   0.176949064   0.544577840   0.429460686  -0.130983814   0.000000015  -0.000000363
                         0.167477374   0.468707652  -0.072032035  -0.221735484   0.347106540  -0.105866125  -0.000000029   0.000000165

    5    2.2  0.5 -0.5  -0.169970857  -0.035147326   0.500817455   0.058282108   0.045665848  -0.383846353   0.000000044  -0.000000021
                         0.414447301  -0.445751917  -0.105481458   0.025806074  -0.295976294  -0.310257726  -0.000000115  -0.000000197

    6    3.2  0.5 -0.5   0.106279043  -0.176768369  -0.263126767   0.530044142   0.383093504   0.192580747  -0.000000018  -0.000000289
                        -0.229381925  -0.468733371   0.019144245   0.034302329  -0.353836842   0.155678139   0.000000047  -0.000000279

    7    1.2  1.5  1.5  -0.001562692  -0.000016225  -0.003633885   0.000049497   0.000002156   0.000001025  -0.046451197  -0.000450923
                         0.003838744  -0.000071833   0.000768498   0.000161905  -0.000018520   0.000000829   0.129025451   0.000208848

    8    2.2  1.5  1.5   0.000071695  -0.000094057  -0.000264935  -0.000479149   0.000035761  -0.000000020  -0.000143817  -0.037225621
                        -0.000120776  -0.002139151   0.000026606  -0.002329965   0.002362260  -0.000000043  -0.000267093   0.240910045

    9    3.2  1.5  1.5   0.000149202   0.002138652  -0.000024341   0.002331292  -0.002362461   0.000000050   0.000036024  -0.120816664
                         0.000087879  -0.000094020  -0.000235714  -0.000479388   0.000035741  -0.000000026  -0.000068091  -0.016729245

   10    4.2  1.5  1.5   0.000077707  -0.000110461  -0.000220256  -0.000514146   0.000051366   0.000042265   0.000425546   0.017190146
                        -0.000135343  -0.002231247   0.000017287  -0.002430482   0.002493217   0.000033284  -0.000664909  -0.123206275

   11    5.2  1.5  1.5   0.000159951   0.002229304  -0.000024406   0.002428034  -0.002493306  -0.000000853  -0.000757400   0.153808206
                         0.000086073  -0.000110031  -0.000246657  -0.000513163   0.000051387  -0.000003791  -0.000023564   0.022581478

   12    6.2  1.5  1.5   0.000866822   0.000025121  -0.002438997   0.000069473   0.000002041  -0.003879678  -0.036329618  -0.000141054
                        -0.002061773   0.000154075   0.000489450   0.000209877   0.000026741  -0.003144108   0.095290316  -0.000937268

   13    7.2  1.5  1.5  -0.002087324   0.000179529   0.000481040   0.000235417  -0.000001290  -0.003139900   0.096006983   0.000492470
                        -0.000875438  -0.000028168   0.002405193  -0.000076572   0.000000438   0.003874407   0.036550897   0.000228576

   14    8.2  1.5  1.5  -0.002281252   0.000051710  -0.000470140  -0.000088434  -0.000000755   0.000038024   0.055782361   0.000959601
                        -0.000929602  -0.000008534  -0.002218690   0.000029847   0.000000121  -0.000051832   0.020125771   0.000381866

   15    1.2  1.5  0.5  -0.000087534  -0.001237380   0.000002636  -0.001352280  -0.002728516   0.000007748   0.000982336   0.625037966
                        -0.000045263   0.000035558   0.000099036   0.000257164   0.000000099  -0.000007564   0.001404027   0.102901412

   16    2.2  1.5  0.5  -0.000093878   0.000135430   0.000995384   0.000331850  -0.000021378  -0.000841294  -0.436661008   0.001714678
                         0.000015656  -0.000025851   0.004792199  -0.000113352   0.000000016   0.001073551  -0.159824377  -0.000734708

   17    3.2  1.5  0.5   0.001852842   0.000040325  -0.000580599   0.000060856  -0.000002827  -0.001072566   0.076009906   0.000628930
                        -0.004493983   0.000247630   0.000171744   0.000176488  -0.000000031  -0.000840486  -0.214427986   0.000504006

   18    4.2  1.5  0.5  -0.002291734   0.000026540  -0.000418503  -0.000063362   0.000000094   0.002647767   0.148104228  -0.000315356
                        -0.000988131  -0.000007003  -0.002203279   0.000022637   0.000000146  -0.003416995   0.052988609   0.000211688

   19    5.2  1.5  0.5  -0.000987294  -0.000006242  -0.002198091   0.000025524   0.000000044   0.003414395  -0.045759266  -0.000203868
                         0.002289813  -0.000053052   0.000417473   0.000085247   0.000001642   0.002645522   0.129242946   0.000509513

   20    6.2  1.5  0.5   0.000022571   0.002496645   0.000002233  -0.002206454   0.000000052   0.000026446   0.000474340   0.098002200
                         0.000015360  -0.000046515   0.000066928   0.000393263   0.000003092  -0.000038475   0.000329722   0.017553725

   21    7.2  1.5  0.5   0.000025548  -0.000044181   0.000092805   0.000399827  -0.000000002   0.000002013  -0.000043875   0.012227162
                        -0.000043638  -0.002464679  -0.000005881   0.002233049  -0.000063433   0.000000762   0.000871011  -0.063688522

   22    8.2  1.5  0.5  -0.000090575   0.000066391   0.000245010   0.000456768  -0.000000184   0.000001205  -0.000017719   0.015061913
                         0.000157158   0.002262863  -0.000017583   0.002409598  -0.004985683   0.000000764   0.000378406  -0.091247457

   23    1.2  1.5 -0.5   0.000477336   0.000010822  -0.001349573   0.000034899  -0.000001271  -0.002121994  -0.245639868  -0.000894440
                        -0.001141996   0.000097945   0.000271698   0.000092723  -0.000010753  -0.001715204   0.647465246  -0.001553607

   24    2.2  1.5 -0.5  -0.000072751  -0.000048302   0.000350110   0.000884903  -0.000020525  -0.000016617  -0.001615085  -0.095713381
                         0.000117131   0.000082535  -0.000020133   0.004813814   0.001363771  -0.000013451   0.001019822   0.548416755

   25    3.2  1.5 -0.5   0.000216634   0.004859639  -0.000010176   0.000601985   0.001362497  -0.000002219   0.001438140   0.074987911
                         0.000126526  -0.000116038  -0.000186387  -0.000059741   0.000020535  -0.000001753   0.000871304   0.016612100

   26    4.2  1.5 -0.5  -0.000016057   0.000099546  -0.000067243  -0.000443148   0.000088645   0.000000165   0.000228907   0.027853030
                         0.000022244   0.002493455   0.000002925  -0.002198730  -0.004321882  -0.000000054   0.000026794  -0.152531264

   27    5.2  1.5 -0.5  -0.000047264  -0.002491362  -0.000008502   0.002193536  -0.004318449   0.000001066   0.000274922  -0.112230672
                        -0.000024865   0.000099454  -0.000088598  -0.000442146  -0.000088757  -0.000001250   0.000057673  -0.021345112

   28    6.2  1.5 -0.5  -0.000939776  -0.000006236  -0.002191626   0.000023159   0.000003617   0.000001984  -0.024885668   0.000015579
                         0.002313750  -0.000026595   0.000467612   0.000062810  -0.000046547  -0.000002372   0.066734876  -0.000370832

   29    7.2  1.5 -0.5  -0.002284756   0.000049913  -0.000471561  -0.000088155  -0.000002045  -0.000039875  -0.010517462  -0.000017716
                        -0.000926123  -0.000008181  -0.002218736   0.000029537  -0.000000673   0.000049333  -0.002771253  -0.000190311

   30    8.2  1.5 -0.5   0.002087943  -0.000179199  -0.000485492  -0.000233560  -0.000001417  -0.003134114  -0.095233632  -0.000439189
                         0.000874207   0.000028120  -0.002404227   0.000076093  -0.000000163   0.003877417  -0.036099554  -0.000240863

   31    1.2  1.5 -1.5   0.000061204   0.004143445   0.000015202  -0.003655894   0.000001318   0.000009964  -0.001048755   0.272625994
                         0.000040921  -0.000080448   0.000168651   0.000658396  -0.000000000  -0.000015759   0.000429591   0.049790811

   32    2.2  1.5 -1.5   0.001962554  -0.000138468  -0.000434732  -0.000255420  -0.000000043  -0.001512715  -0.283847145  -0.000862478
                         0.000855616   0.000023559  -0.002338897   0.000075249   0.000000021   0.001814729  -0.110530518  -0.000376418

   33    3.2  1.5 -1.5   0.000855403   0.000028459  -0.002340217   0.000066328   0.000000022   0.001814899  -0.036919073   0.000119089
                        -0.001962103   0.000170806   0.000435010   0.000227498   0.000000052   0.001512826   0.087790951  -0.001367725

   34    4.2  1.5 -1.5   0.002042613  -0.000154216  -0.000440216  -0.000210525   0.000053793  -0.001607170   0.116819307  -0.000951856
                         0.000903983   0.000023941  -0.002445201   0.000067034   0.000000681   0.001906770   0.047937134   0.000104275

   35    5.2  1.5 -1.5   0.000902884   0.000022915  -0.002442563   0.000070394  -0.000003046   0.001906827   0.066442623   0.000502875
                        -0.002040955   0.000180190   0.000440204   0.000237658   0.000002413   0.001607242  -0.166925199  -0.001236179

   36    6.2  1.5 -1.5  -0.000134787  -0.002235791   0.000014784  -0.002443298  -0.004993724  -0.000018397   0.000871669   0.092073729
                        -0.000078758   0.000068894   0.000220576   0.000466211   0.000006536   0.000019515   0.000611054   0.014963665

   37    7.2  1.5 -1.5   0.000090738  -0.000067763  -0.000246911  -0.000461255  -0.000006577   0.000000728   0.000060157  -0.015307802
                        -0.000157447  -0.002262728   0.000017839  -0.002408815  -0.004986979   0.000001151  -0.000437550   0.093559910

   38    8.2  1.5 -1.5   0.000026522  -0.000048685   0.000093180   0.000401126  -0.000003009   0.000000511   0.000177122  -0.021747553
                        -0.000045189  -0.002462658  -0.000005699   0.002232471   0.000064213   0.000000569  -0.001505530   0.119285187


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000000099   0.000000868  -0.000002422   0.000000064  -0.000132814  -0.002428823   0.002281728   0.001057001
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000289  -0.000000376   0.000002051   0.000000257  -0.000396016  -0.000190407  -0.001584663   0.002934791
                         0.000000029  -0.000000440  -0.000000041  -0.000000003  -0.000017107   0.000217022  -0.000939704   0.000039292

    3    3.2  0.5  0.5  -0.000000148  -0.000000151   0.000002447  -0.000000106   0.000192630  -0.002046519  -0.001465950  -0.001518278
                        -0.000000021  -0.000000868  -0.000000081  -0.000000001   0.000011041   0.000395199  -0.001844471  -0.000063353

    4    1.2  0.5 -0.5  -0.000000355  -0.000000017  -0.000000001   0.000000577   0.002551762  -0.000828629  -0.000287901  -0.000961960
                         0.000002576   0.000000028   0.000000095  -0.000000415  -0.001449223   0.000038676   0.000548482  -0.001277236

    5    2.2  0.5 -0.5   0.000000210  -0.000000157   0.000000010   0.000000060   0.000117086  -0.002420808  -0.000860213  -0.000141296
                        -0.000002198   0.000000188   0.000000296   0.000000354   0.001448108   0.000145758   0.001504263   0.001110960

    6    3.2  0.5 -0.5   0.000000177   0.000000041  -0.000000007   0.000000511   0.001978781   0.001209221   0.000452067  -0.000917839
                        -0.000002641  -0.000000055  -0.000000145   0.000000418   0.001874869  -0.000082307  -0.000789634   0.001292998

    7    1.2  1.5  1.5   0.000045616   0.024852632   0.013236133  -0.000073147   0.000032876  -0.425773596   0.266593297   0.003135873
                        -0.000298987  -0.016028068   0.572220153  -0.000617450  -0.000327791   0.046754180  -0.528192661  -0.008842057

    8    2.2  1.5  1.5  -0.007979640   0.000711877   0.000456671  -0.006974455  -0.001497402  -0.001412611   0.000723328   0.001038135
                         0.117509992  -0.000796854  -0.001165987   0.635732242   0.055465621  -0.000451365   0.003164860  -0.418097186

    9    3.2  1.5  1.5  -0.077664024   0.000792538  -0.004542599   0.675641684  -0.055465781   0.000378116  -0.007022473   0.418021427
                        -0.006022352   0.000872101  -0.000113648   0.006817264  -0.001497398   0.001966895  -0.001907148   0.001001082

   10    4.2  1.5  1.5   0.004669999  -0.000453214   0.000270303  -0.002527865   0.000418776  -0.001970905   0.000016207   0.000445563
                        -0.069618664   0.000412587  -0.000631097   0.182502177  -0.019551265   0.000382920  -0.001750234   0.147402355

   11    5.2  1.5  1.5   0.079784164  -0.000553241  -0.001782294   0.151957725   0.019563113  -0.000217408   0.002671422  -0.147394073
                         0.005225934  -0.000481233  -0.000018064   0.002819500   0.000421018  -0.000649484   0.000456931   0.000449765

   12    6.2  1.5  1.5   0.000133484  -0.012141126   0.000019958  -0.000132852   0.000176124   0.120244485   0.043218373   0.000426018
                        -0.000857520   0.014035748  -0.023524274   0.001839586  -0.000681895  -0.007171649  -0.075765472   0.000629682

   13    7.2  1.5  1.5  -0.000061544   0.013933281  -0.020363180  -0.000030690  -0.000461067  -0.007001002  -0.077106787  -0.001060642
                        -0.000139586   0.012002063  -0.000245888   0.000035797  -0.000186211  -0.119160952  -0.043823240  -0.000316103

   14    8.2  1.5  1.5   0.000297171  -0.007265552   0.253064865   0.001975320   0.000033264   0.009679024  -0.106526456  -0.002497915
                         0.000043017  -0.011124428  -0.005858965  -0.000242938   0.000008637   0.088157976  -0.053768440  -0.000717721

   15    1.2  1.5  0.5   0.337635715  -0.002246609   0.001357296  -0.069126492   0.031995820  -0.000718224   0.004913696  -0.241266545
                         0.029347805  -0.002262534  -0.000040204  -0.000772557   0.001341642  -0.006125293   0.000446389  -0.004228736

   16    2.2  1.5  0.5   0.002470112  -0.034738815  -0.415794728  -0.003897362   0.001861677   0.053036637  -0.052128052  -0.005688400
                         0.000581417  -0.018716019   0.003260778   0.000385829   0.000608306   0.639541733  -0.021275483  -0.001177013

   17    3.2  1.5  0.5  -0.000187506   0.062165301   0.004700543   0.000408194  -0.000521365  -0.147173567  -0.295712207  -0.003443556
                         0.000919863  -0.061839990   0.575497209   0.004214629   0.001492510   0.006481558   0.552984130   0.010116840

   18    4.2  1.5  0.5   0.001472269   0.019455115   0.008211503  -0.001911300   0.001605973   0.007732114  -0.106391968  -0.002239758
                        -0.000029707   0.015200791   0.000386025  -0.000033925   0.000131042   0.086852269  -0.056473288  -0.000761467

   19    5.2  1.5  0.5   0.000112097  -0.018930804  -0.000600942   0.000061584  -0.000075945   0.086861839  -0.056471653  -0.000790556
                        -0.000267727   0.021763531  -0.076090383  -0.000600920  -0.000104838  -0.007732971   0.106384091   0.002485974

   20    6.2  1.5  0.5  -0.146410044   0.002014658  -0.001181356   0.190187225  -0.146795573   0.000139160  -0.000502854  -0.019542781
                        -0.015853243   0.002091854  -0.000104511  -0.001003754  -0.013503587   0.001251284  -0.000524224  -0.001229638

   21    7.2  1.5  0.5  -0.016212933   0.001821757   0.000108684   0.001262774  -0.013501999   0.000360694   0.000102886  -0.001279662
                         0.157524138  -0.001745726  -0.001771101   0.196171595   0.147031636  -0.000104109  -0.000534856   0.017675869

   22    8.2  1.5  0.5   0.004434741  -0.000390811   0.000083275  -0.000010610  -0.000745735   0.000703716  -0.000542355   0.002585410
                        -0.051704540   0.000391882   0.000276947   0.007735115   0.017706717  -0.000274932   0.002602859  -0.147600164

   23    1.2  1.5 -0.5   0.000084227  -0.082271381   0.000972075  -0.000050818  -0.000938297  -0.196860961  -0.070490226  -0.000989936
                         0.001426350   0.095297921  -0.159705494  -0.000520920   0.004504753   0.011899820   0.124206059  -0.001787998

   24    2.2  1.5 -0.5   0.022710628  -0.004851144  -0.000184747   0.000372756   0.035100864  -0.004656722   0.000873198  -0.012933350
                        -0.279890186   0.004855092  -0.001511929  -0.043186061  -0.480851914   0.001294837  -0.005668859   0.427035646

   25    3.2  1.5 -0.5   0.617049022  -0.006610786  -0.001636136  -0.025954667   0.352935722   0.000347856  -0.010182282   0.537834177
                         0.057152496  -0.006618379   0.000193106  -0.001436478   0.027784797   0.001381972  -0.002101079   0.018551103

   26    4.2  1.5 -0.5   0.004526768  -0.001461770   0.000121932  -0.000417254   0.010283911  -0.001243381   0.000458029   0.000893026
                        -0.033437862   0.001694285  -0.001291472   0.015410419  -0.147067128   0.000202994  -0.000541300  -0.019569466

   27    5.2  1.5 -0.5  -0.109778760   0.001116734   0.000543631   0.013961685   0.147071688  -0.000069903  -0.000618346   0.019535331
                        -0.010902440   0.000964198  -0.000032092   0.000514819   0.010283191  -0.000391477  -0.000060033   0.000886194

   28    6.2  1.5 -0.5   0.000111529   0.130649221   0.001063419   0.000153193   0.000027345   0.086651818  -0.054179055  -0.000727686
                        -0.003264228  -0.150312757   0.151764923   0.001431280  -0.001613595  -0.009700340   0.107564153   0.002255042

   29    7.2  1.5 -0.5  -0.003322027  -0.141028313  -0.184969013  -0.001296371   0.000098619   0.009717929  -0.106632156  -0.002444988
                        -0.000060286  -0.116160693   0.007150171   0.000174457  -0.000007063   0.088155119  -0.053589722  -0.000722918

   30    8.2  1.5 -0.5   0.000111394  -0.012196696   0.025831031   0.000147293   0.000515810   0.007206927   0.077123622   0.000996340
                         0.000126359  -0.010764912   0.000147443  -0.000011544   0.000179759   0.119143280   0.043787438   0.000337626

   31    1.2  1.5 -1.5  -0.517165113   0.002784401  -0.000021849  -0.009956421   0.721186369  -0.000067678  -0.001196311   0.095886978
                        -0.053929154   0.002830784  -0.000014196   0.000463652   0.065357819   0.001133257   0.000018819   0.006322782

   32    2.2  1.5 -1.5   0.006647801   0.473980707   0.102803741   0.000237283   0.004314972  -0.015482073  -0.213189440  -0.001958719
                        -0.000251535   0.386442508  -0.010259902  -0.000025004  -0.000027854  -0.341289061  -0.125328449  -0.000920782

   33    3.2  1.5 -1.5  -0.000178971  -0.434747802   0.012211132  -0.000017240   0.000204474  -0.341289387  -0.125328961  -0.000871369
                         0.010239206   0.528259874   0.010609567  -0.000181620   0.001395107   0.015479500   0.213174808   0.002715421

   34    4.2  1.5 -1.5   0.001988476   0.149060409  -0.020815934  -0.000063561   0.000678235   0.004797048   0.074952067  -0.000635404
                        -0.000284194   0.122634791  -0.003884831   0.000012456   0.000198609   0.120355946   0.044607101   0.000299237

   35    5.2  1.5 -1.5  -0.000138243  -0.085412786   0.002005119   0.000009185   0.000184407   0.120370628   0.044598989   0.000439569
                         0.002878206   0.107707298   0.049716241   0.000213400  -0.000503981  -0.004799401  -0.074920881  -0.001027426

   36    6.2  1.5 -1.5   0.049737710   0.001299725  -0.000504100  -0.010185566  -0.019536991   0.000256203  -0.001785891   0.147388786
                         0.004396280   0.000890673   0.000012873  -0.000097005  -0.000887163   0.001981362   0.000011500   0.002386373

   37    7.2  1.5 -1.5  -0.003960903   0.000309563  -0.000087217   0.000097067   0.000631819  -0.000618527   0.000549993  -0.002408733
                         0.046873541  -0.000259285  -0.000250876  -0.010238287  -0.017711685   0.000292747  -0.002602705   0.147606209

   38    8.2  1.5 -1.5   0.023902795  -0.002851130   0.000037516  -0.000212203  -0.013324883   0.000355114   0.000159750  -0.001164645
                        -0.229045862   0.002712408   0.000369711  -0.004270097   0.147037460  -0.000109462  -0.000598485   0.017674223


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000001363  -0.000000127   0.000003372  -0.000001311   0.000002465   0.000000134  -0.000000281   0.000001545
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000018  -0.000000379  -0.000000796   0.000000243   0.000000236   0.000000389  -0.000000809   0.000000055
                        -0.000000381  -0.000000069   0.000001551  -0.000000577  -0.000000222   0.000000013   0.000000039   0.000000402

    3    3.2  0.5  0.5   0.000000962   0.000000167   0.000000763  -0.000000263   0.000002146  -0.000000196   0.000000412   0.000001166
                        -0.000000760   0.000000034   0.000003076  -0.000001198  -0.000000438  -0.000000012  -0.000000034   0.000000779

    4    1.2  0.5 -0.5  -0.000000126  -0.000001350   0.000001250   0.000003216  -0.000000133   0.000002455  -0.000001513  -0.000000275
                         0.000000019   0.000000209   0.000000398   0.000001023   0.000000006  -0.000000117  -0.000000337  -0.000000061

    5    2.2  0.5 -0.5  -0.000000365  -0.000000075  -0.000000056  -0.000000286  -0.000000388   0.000000244  -0.000000141  -0.000000783
                         0.000000125  -0.000000376  -0.000000624  -0.000001719   0.000000031   0.000000214   0.000000383  -0.000000214

    6    3.2  0.5 -0.5   0.000000160  -0.000001068   0.000000616   0.000001665   0.000000195   0.000002157  -0.000001310   0.000000395
                        -0.000000060  -0.000000607  -0.000001061  -0.000002699  -0.000000021   0.000000343   0.000000512   0.000000122

    7    1.2  1.5  1.5   0.000000151   0.000000012  -0.000000433   0.000000165   0.000019117   0.000000002   0.000000016   0.000002387
                        -0.000000053   0.000000064  -0.000000215   0.000000051  -0.000001856  -0.000000067  -0.000000062   0.000000731

    8    2.2  1.5  1.5   0.000000028  -0.000000230   0.000000577   0.000001517   0.000000121  -0.000000088   0.000000101   0.000000062
                        -0.000000006   0.000001244   0.000001666   0.000004334  -0.000000007   0.000002271   0.000001972   0.000000030

    9    3.2  1.5  1.5   0.000000010  -0.000000447  -0.000001670  -0.000004368   0.000000006  -0.000001231  -0.000002317  -0.000000022
                         0.000000026  -0.000000093   0.000000601   0.000001523  -0.000000033  -0.000000019   0.000000155   0.000000043

   10    4.2  1.5  1.5  -0.000434883  -0.094284641   0.001437538   0.028532062  -0.001115029   0.005138124   0.015606627   0.002908495
                         0.000215492   0.508095837   0.027014837   0.084047517  -0.000025011  -0.102554466   0.237526323   0.000752330

   11    5.2  1.5  1.5   0.000099145   0.517897563   0.020098640   0.051948474  -0.000001741  -0.075770861  -0.237286206  -0.000617576
                        -0.000494594   0.094171964  -0.002814311  -0.015547228   0.000273316  -0.008622799   0.017094606   0.002236974

   12    6.2  1.5  1.5   0.085810003  -0.003871680   0.530507372  -0.203314649   0.070244444   0.000103352   0.000346847  -0.069637089
                        -0.026213249   0.008468606   0.388611308  -0.148757483  -0.007617690  -0.001139078   0.003122284  -0.018734365

   13    7.2  1.5  1.5   0.025811614  -0.002771230  -0.379252477   0.146160119   0.006431158   0.000070080   0.001636387  -0.044218365
                         0.082307564  -0.002372860   0.518122587  -0.198820674   0.076978586  -0.000061402  -0.000058723   0.160300148

   14    8.2  1.5  1.5   0.029315291   0.000090734  -0.019023804   0.007972408  -0.052017663  -0.001125107   0.000375821  -0.003540978
                         0.091128817  -0.000283261   0.026432433  -0.010042383  -0.521173762  -0.000351307  -0.000185599   0.031897867

   15    1.2  1.5  0.5   0.000000006   0.000001763   0.000000135   0.000000339   0.000000025   0.000000066   0.000005508   0.000000052
                         0.000000008   0.000000372  -0.000000003  -0.000000111   0.000000066   0.000000009  -0.000000258  -0.000000132

   16    2.2  1.5  0.5  -0.000000563   0.000000083   0.000002785  -0.000001089  -0.000000604   0.000000021   0.000000146  -0.000002125
                        -0.000002083   0.000000008  -0.000003821   0.000001491  -0.000006475   0.000000022  -0.000000021   0.000008482

   17    3.2  1.5  0.5  -0.000001913  -0.000000016   0.000003487  -0.000001377  -0.000007200  -0.000000020   0.000000019  -0.000010872
                         0.000000657  -0.000000015   0.000002393  -0.000000927   0.000000501   0.000000055   0.000000150  -0.000002835

   18    4.2  1.5  0.5  -0.029089891   0.005479230   0.040576935  -0.015872384   0.040278903   0.003215589   0.003712871  -0.095470455
                        -0.100805047   0.001366139  -0.054534918   0.020694208   0.544082262   0.000359188  -0.000126969   0.366052360

   19    5.2  1.5  0.5  -0.084706576  -0.000047352  -0.009798380   0.003603372   0.498133751   0.000334274   0.000487974  -0.433713994
                         0.026268686   0.000131947  -0.009088455   0.004049690  -0.042252859  -0.001109324   0.004242256  -0.104967622

   20    6.2  1.5  0.5  -0.000445898  -0.493214718  -0.014248118  -0.039303902   0.000395591  -0.183748504  -0.017359805  -0.000904521
                        -0.000726562  -0.079461434   0.001419821   0.013285814   0.006209695  -0.010134465  -0.002819121   0.004118316

   21    7.2  1.5  0.5  -0.000452074   0.064303197  -0.007442554  -0.025549161   0.001005265  -0.018760140  -0.000662520   0.000130358
                         0.000182830  -0.398847408  -0.028955888  -0.076006332  -0.000066767   0.337907399   0.026027742   0.000180622

   22    8.2  1.5  0.5   0.000107369  -0.001036256   0.006174890   0.015571778  -0.000158384  -0.004278348   0.034396526   0.006550574
                        -0.000173863  -0.009684643   0.018031720   0.046686592  -0.000084574  -0.044509740   0.712836564   0.001877676

   23    1.2  1.5 -0.5  -0.000001855   0.000000009  -0.000000138   0.000000037   0.000000541  -0.000000015   0.000000013   0.000002318
                         0.000000664  -0.000000017  -0.000000104   0.000000080   0.000000013   0.000000026   0.000000029   0.000000640

   24    2.2  1.5 -0.5  -0.000000083  -0.000000383  -0.000000613  -0.000001541   0.000000032   0.000000087  -0.000000136  -0.000000039
                         0.000000024   0.000003053  -0.000001800  -0.000004606  -0.000000028  -0.000001609  -0.000004435  -0.000000022

   25    3.2  1.5 -0.5   0.000000009  -0.000002898  -0.000001394  -0.000003533  -0.000000019   0.000002031  -0.000007644  -0.000000034
                        -0.000000019  -0.000000477   0.000000390   0.000001043  -0.000000042   0.000000001   0.000000262   0.000000113

   26    4.2  1.5 -0.5  -0.005212549  -0.013313581  -0.008764807  -0.021882585   0.003217993  -0.015395999  -0.014098976  -0.003633957
                         0.002185857   0.103292190  -0.024374306  -0.063821524  -0.000508226   0.545982432  -0.377444943  -0.000933912

   27    5.2  1.5 -0.5   0.000079484  -0.086424624   0.004076242   0.010614677   0.000380714  -0.499407879  -0.446611430  -0.001386767
                         0.000142923  -0.012886144  -0.002550009  -0.005177912   0.001059387  -0.019517460   0.008675294   0.003999845

   28    6.2  1.5 -0.5   0.475699524  -0.000328903  -0.033273994   0.013076540  -0.182263407  -0.000113195   0.000010422   0.017102289
                        -0.153687356   0.000782971  -0.024560003   0.005655112   0.018420632   0.006221112  -0.004228462   0.000909766

   29    7.2  1.5 -0.5  -0.124024442  -0.000479098  -0.048018702   0.016102385  -0.034219020  -0.001016336   0.000187313  -0.005002533
                        -0.383742716  -0.000117128   0.065358982  -0.025580257  -0.337298866  -0.000019566  -0.000151205   0.025490911

   30    8.2  1.5 -0.5  -0.000315705   0.000112826   0.028498916  -0.011129242  -0.002212465   0.000098016   0.006797045  -0.187738482
                        -0.009295610   0.000146522  -0.039006423   0.014999979   0.044003892  -0.000097326  -0.000417038   0.688655310

   31    1.2  1.5 -1.5   0.000000014   0.000000849  -0.000000336  -0.000000907  -0.000000010   0.000024861  -0.000002119   0.000000008
                        -0.000000027   0.000000130   0.000000059   0.000000219  -0.000000073   0.000001287   0.000000237   0.000000045

   32    2.2  1.5 -1.5  -0.000002041  -0.000000025  -0.000003043   0.000001129   0.000000085   0.000000162  -0.000000042  -0.000000066
                        -0.000005989   0.000000000   0.000004069  -0.000001570   0.000001567   0.000000004   0.000000016   0.000000121

   33    3.2  1.5 -1.5   0.000004113  -0.000000006   0.000003009  -0.000001139   0.000002215   0.000000012   0.000000012  -0.000000227
                        -0.000001402   0.000000023   0.000002284  -0.000000917  -0.000000167   0.000000030   0.000000027  -0.000000081

   34    4.2  1.5 -1.5  -0.170472951   0.000467590  -0.052844006   0.009595590  -0.009930204  -0.001084285  -0.002987834   0.066545459
                        -0.487784866   0.000145566   0.071492568  -0.025307842  -0.102812982   0.000080788   0.000101360  -0.228347824

   35    5.2  1.5 -1.5   0.497193429  -0.000166590  -0.045348973   0.018501154   0.076338833  -0.000014717   0.000122371  -0.228245083
                        -0.171768263  -0.000479661  -0.031081676   0.008969982  -0.012160586  -0.000301451   0.002317194  -0.068066544

   36    6.2  1.5 -1.5  -0.005108722  -0.088623540   0.239013047   0.623802772  -0.000154228   0.068803626   0.070965734   0.001024746
                        -0.007815384  -0.012757906  -0.079947014  -0.209048445  -0.001135270   0.004300026  -0.003183056  -0.002986021

   37    7.2  1.5 -1.5  -0.002406711  -0.012870219  -0.078793533  -0.203797499  -0.000086755   0.002787220   0.008563487   0.001571144
                         0.002756893   0.084935226  -0.233817667  -0.608855672  -0.000058421  -0.075693613   0.167115657   0.000399942

   38    8.2  1.5 -1.5   0.000142513  -0.014944747  -0.004410388  -0.009759892   0.001106974  -0.028199213  -0.003485069   0.000288173
                         0.000260669   0.093507754  -0.011611283  -0.029983560  -0.000402055   0.523238112   0.032421413   0.000254128


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.001257502   0.000383845   0.000000090   0.000000126   0.000001964   0.000000165  -0.000001662  -0.000000147
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000343083   0.001124889   0.000000276   0.000000271  -0.000000474  -0.000000010   0.000001397  -0.000000433
                         0.000589619   0.000000029   0.000000005   0.000000011  -0.000000912   0.000000004   0.000000146   0.000000000

    3    3.2  0.5  0.5   0.000171437  -0.000564373  -0.000000137  -0.000000146   0.000000403   0.000000092   0.000001654   0.000000219
                         0.001175205   0.000000014  -0.000000002  -0.000000041  -0.000001811   0.000000007   0.000000293   0.000000003

    4    1.2  0.5 -0.5  -0.000298446   0.000977797   0.000001414  -0.000000778  -0.000000017   0.000000097  -0.000000017   0.000000189
                        -0.000241360   0.000790766  -0.000000902   0.000000594   0.000000012   0.000000042   0.000000169  -0.000001670

    5    2.2  0.5 -0.5  -0.000874639   0.000104004   0.000000130  -0.000000027  -0.000000098   0.000000290  -0.000000050   0.000000012
                        -0.000707302  -0.000674214   0.000000797  -0.000000573   0.000000071   0.000000128   0.000000498   0.000001419

    6    3.2  0.5 -0.5   0.000438801   0.000872319   0.000001220  -0.000000580   0.000000052  -0.000000145   0.000000022   0.000000153
                         0.000354886  -0.000805999   0.000000975  -0.000000743  -0.000000016  -0.000000065  -0.000000251   0.000001693

    7    1.2  1.5  1.5  -0.000001212  -0.000446372   0.000159206  -0.000379366  -0.009193618   0.060279723   0.019823300   0.000011058
                        -0.000001032   0.003831926   0.001801496   0.001212924   0.003766134   0.023763240  -0.219144665  -0.000147751

    8    2.2  1.5  1.5  -0.000001828  -0.007372668   0.008124506   0.007331346  -0.000666665   0.000534118   0.000044272   0.000169204
                         0.000010206  -0.488787626  -0.247011392  -0.104042417   0.001530052   0.000168891  -0.001699262   0.022917574

    9    3.2  1.5  1.5  -0.000010219   0.488804364  -0.263094362   0.056040316  -0.000765095   0.000045742   0.000211943   0.005170088
                        -0.000001825  -0.007368997  -0.009018875   0.004974695  -0.000324173   0.000208668  -0.000161001   0.000658063

   10    4.2  1.5  1.5   0.000795136   0.000964331  -0.018778788   0.026617744  -0.001017965   0.003063354  -0.000068508   0.002868091
                         0.000625930   0.046930869   0.468948390  -0.363306809   0.004169230   0.000917257   0.000055626   0.021125700

   11    5.2  1.5  1.5  -0.000015981  -0.046932396   0.387931656   0.443953290  -0.006419515  -0.000036786   0.000106557  -0.068311757
                        -0.000070649   0.000964684   0.014712227   0.031014229  -0.002509178   0.000310093  -0.000319246   0.001789498

   12    6.2  1.5  1.5  -0.072925950   0.000037504  -0.000485875  -0.000888067  -0.098380021  -0.215527047   0.007414674   0.000153102
                        -0.059128410   0.000504494   0.005100788  -0.002558030   0.082732374  -0.086514672  -0.062444554  -0.000002066

   13    7.2  1.5  1.5  -0.059129884  -0.000023122   0.000240153   0.001578304   0.082517141  -0.087269242  -0.054439334  -0.000261949
                         0.072926827   0.000009080   0.000118314   0.000854259   0.098032899   0.217764427  -0.007090261  -0.000075461

   14    8.2  1.5  1.5   0.000693813  -0.000014244   0.000525159  -0.001057284  -0.012089133  -0.068208614   0.638522904  -0.000111553
                        -0.000948124   0.000002272  -0.000117228  -0.000785331  -0.027949155   0.172677004   0.057745154   0.000053840

   15    1.2  1.5  0.5  -0.001603250   0.564460334   0.027811591  -0.276921176   0.003627727   0.000568545  -0.001561080   0.030758090
                         0.001555917   0.000010076   0.001971416  -0.025502766   0.001280514  -0.001686110   0.000174087  -0.000968208

   16    2.2  1.5  0.5   0.174133381   0.004419160   0.000367665  -0.001795326   0.040310460  -0.064079151   0.157281935   0.000093958
                        -0.222104437  -0.000005260  -0.000002362   0.000019853   0.041996724   0.163720523   0.016533566  -0.000031993

   17    3.2  1.5  0.5   0.222111551   0.000587411  -0.000033879  -0.000973099  -0.058014025  -0.059947207   0.023529280   0.000085969
                         0.174141936   0.000002750  -0.000092420   0.001037862   0.046585730  -0.021349204  -0.221747910  -0.000091399

   18    4.2  1.5  0.5   0.049813863   0.000000756  -0.005400462   0.000775286   0.120654215  -0.130018223   0.015770511  -0.004821938
                        -0.064256612   0.000002008  -0.000122842   0.001051412   0.134847795   0.342800375   0.002494948  -0.000069081

   19    5.2  1.5  0.5   0.064261885   0.000001531   0.000236913  -0.001341240  -0.143851303  -0.284835845   0.021102190   0.000369984
                         0.049817294   0.000029920  -0.000217915   0.002300236   0.124128395  -0.105773141  -0.196374841  -0.000102394

   20    6.2  1.5  0.5   0.000497560   0.000001116   0.514580223   0.097059221   0.000146162  -0.001108505   0.000008803   0.414830037
                        -0.000723548   0.000058165   0.008560663   0.008144778   0.001184167   0.003985653   0.000052654   0.003363998

   21    7.2  1.5  0.5   0.000037869   0.000000093  -0.008499048   0.005223106   0.000231651   0.000311873   0.000250582   0.003454384
                         0.000014306  -0.001171458   0.475775643  -0.007208601  -0.000083330  -0.000057283  -0.000355380  -0.468953770

   22    8.2  1.5  0.5   0.000021283   0.000001660  -0.001487279   0.024733862  -0.001650510   0.000316478  -0.000068541   0.001153597
                         0.000014365  -0.093883605   0.021046592  -0.268562647   0.003812625  -0.000011495  -0.000353497   0.035696587

   23    1.2  1.5 -0.5   0.438901658   0.000268213   0.000032572   0.000912052   0.101305064   0.222351005  -0.007969319  -0.000290194
                         0.354936329   0.002217967  -0.000096371  -0.000150643  -0.085361285   0.088793718   0.064343492   0.001661565

   24    2.2  1.5 -0.5   0.003432804   0.004266654  -0.001316134   0.017352506  -0.000036499   0.002105587  -0.000065744  -0.001457011
                         0.002782948  -0.282196705   0.005155550  -0.160829516   0.001491625   0.000658947   0.000324625  -0.181958736

   25    3.2  1.5 -0.5   0.000458470  -0.282207583   0.022623727  -0.115687588   0.001802751   0.000276891  -0.000136733   0.212736668
                         0.000367237  -0.004264475   0.001074326  -0.012333819   0.000798400   0.000030400   0.000133128  -0.001958666

   26    4.2  1.5 -0.5   0.000001851   0.001673125  -0.003655432   0.044952640  -0.006397235   0.004073550   0.000310779  -0.001091857
                        -0.000001086  -0.081284404   0.033981879  -0.399477026   0.008425763   0.001547126  -0.004123722  -0.067431747

   27    5.2  1.5 -0.5   0.000020005  -0.081290681   0.043768755  -0.374271402   0.005632472  -0.000151699  -0.000214008   0.153603253
                        -0.000022303  -0.001673772   0.003466020  -0.042339782   0.002474998  -0.000572154   0.000343419  -0.002031015

   28    6.2  1.5 -0.5   0.000037430   0.000068103   0.000027806   0.005313578   0.373058038  -0.314086388  -0.029440101   0.000047156
                        -0.000044537  -0.000875446   0.000648968  -0.010605076  -0.264738135  -0.144047722   0.341763002  -0.000473892

   29    7.2  1.5 -0.5  -0.000736603  -0.000038440  -0.000240427  -0.004943253  -0.251177731  -0.051198800  -0.507871051   0.000452751
                         0.000910971  -0.000012689   0.000100889  -0.003663867  -0.338580092   0.077328572  -0.046333478  -0.000232360

   30    8.2  1.5 -0.5  -0.059036968  -0.000025580  -0.000036813  -0.001428644  -0.079426268   0.086587706   0.068744289   0.000270868
                         0.073002992  -0.000002213  -0.000042741  -0.000889804  -0.094211173  -0.216771990   0.008521923   0.000079211

   31    1.2  1.5 -1.5  -0.002062519  -0.000001599  -0.010084851  -0.025994371   0.000922184   0.000585495   0.000452461  -0.227869347
                         0.003260199   0.000000040  -0.000012591  -0.003269465   0.001319452  -0.001453690   0.000037299  -0.001467629

   32    2.2  1.5 -1.5   0.313092500   0.000004996  -0.000056917  -0.002686455  -0.111516851  -0.075561256  -0.061614393  -0.001690137
                        -0.375420358  -0.000009085   0.000013379  -0.001810363  -0.151277986   0.166168895  -0.006265948  -0.000135829

   33    3.2  1.5 -1.5  -0.375435679  -0.000009093   0.000002932   0.002306329   0.210511023  -0.038583390   0.001104524  -0.000160162
                        -0.313100170  -0.000005007  -0.000009334  -0.003299030  -0.159908921  -0.022365654  -0.024540487   0.000226702

   34    4.2  1.5 -1.5  -0.030262537   0.001011840   0.000358552   0.004020532   0.350830850  -0.054502942  -0.020960668  -0.000287403
                         0.035886581   0.000013307   0.000091005   0.004520605   0.452603535   0.148356774  -0.007722461   0.000010867

   35    5.2  1.5 -1.5   0.035887511  -0.000056851   0.000050573  -0.001859544  -0.152754937   0.493292337  -0.019315302  -0.000312046
                         0.030263746   0.000044884  -0.000086709   0.002697633   0.108554938   0.217159453   0.165780220  -0.000119203

   36    6.2  1.5 -1.5  -0.000346416  -0.093883351  -0.026980769   0.268732172   0.000107846  -0.000895739   0.000082925  -0.029836769
                         0.000368704   0.000117884  -0.001895155   0.024396971   0.003211173   0.001880291  -0.000258316   0.000566714

   37    7.2  1.5 -1.5   0.000012269  -0.000118479   0.001877132  -0.024510908   0.001580238  -0.000194012   0.000059316  -0.001031233
                         0.000021600  -0.093884984  -0.026614742   0.269593884  -0.003660339   0.000122072   0.000375725  -0.021553743

   38    8.2  1.5 -1.5   0.000009648  -0.000056725  -0.000076535  -0.009094084  -0.000138379  -0.000361101  -0.000115243  -0.004279512
                         0.000010724   0.001173512   0.029684168   0.072356255  -0.000677791   0.000205044   0.000129202   0.663495738


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5   0.006325606  -0.002261292   0.003809180   0.000223137   0.002003652   0.006572634
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.001970911  -0.006560433  -0.000660179   0.000627652   0.005871585  -0.001790799
                        -0.003021374  -0.000004404   0.001660222  -0.000076759  -0.000000242   0.003081397

    3    3.2  0.5  0.5   0.000429003   0.003303583   0.001274452  -0.000342758  -0.002946023   0.000901020
                        -0.006003308   0.000024261   0.003285889   0.000046891   0.000000361   0.006141397

    4    1.2  0.5 -0.5  -0.000109544   0.002361994   0.001869750  -0.004876695   0.005112475  -0.001558520
                         0.000106518   0.002696841   0.001174474   0.004260778   0.004130562  -0.001259187

    5    2.2  0.5 -0.5  -0.000335543   0.000267349   0.005567024  -0.000864737   0.000543540  -0.004567000
                         0.000275896  -0.002311406   0.003550712  -0.003113771  -0.003522267  -0.003690163

    6    3.2  0.5 -0.5   0.000180013   0.002130709  -0.002757281  -0.004987811   0.004560403   0.002291307
                        -0.000146486  -0.002760356  -0.001814982  -0.003419256  -0.004210796   0.001851698

    7    1.2  1.5  1.5   0.193677258  -0.000278328   0.014685957  -0.000023224  -0.000095763   0.000000221
                        -0.168875270  -0.000449741   0.008946557   0.000164130   0.000822671   0.000000204

    8    2.2  1.5  1.5   0.001367756   0.001958285   0.000306149  -0.001867746  -0.001590206   0.000001735
                        -0.000860916   0.147968001   0.000065326  -0.014382390  -0.104936410   0.000003261

    9    3.2  1.5  1.5  -0.000260664  -0.147967301   0.000019821   0.014383726   0.104939467  -0.000003256
                        -0.000321748   0.001961120   0.000200473  -0.001867495  -0.001589405   0.000001739

   10    4.2  1.5  1.5  -0.000190971   0.007853846  -0.003307445  -0.005507107  -0.004506237  -0.003699499
                         0.001098844   0.419635986  -0.002417981  -0.040794572  -0.218551559  -0.002911067

   11    5.2  1.5  1.5  -0.001415765  -0.419658806   0.000131292   0.040766207   0.218565554   0.000072413
                        -0.000509123   0.007859268   0.000841980  -0.005519482  -0.004507860   0.000333378

   12    6.2  1.5  1.5  -0.021838698   0.000542604   0.354015373  -0.001310903  -0.000176949   0.339703838
                         0.017810855   0.004226232   0.227437840   0.002155223  -0.002339725   0.275204843

   13    7.2  1.5  1.5   0.021444906  -0.000507177   0.227268284   0.002608890   0.000117418   0.275201067
                         0.025623372  -0.000142023  -0.353691533   0.001217251  -0.000040398  -0.339694733

   14    8.2  1.5  1.5   0.276295147  -0.001286089  -0.017271421  -0.000102294   0.000066119  -0.003225985
                         0.316891363  -0.000657918   0.028612915  -0.000054791  -0.000010590   0.004412421

   15    1.2  1.5  0.5   0.001081361   0.085436099  -0.000889903  -0.008328266   0.121181575  -0.000345343
                         0.000800968   0.000156788   0.001007024   0.000947880  -0.000006365   0.000336630

   16    2.2  1.5  0.5  -0.088327041   0.000953653   0.095521285   0.001026398   0.000950082   0.037367405
                        -0.104577925   0.000168347  -0.154018805   0.000503085  -0.000000943  -0.047701161

   17    3.2  1.5  0.5  -0.121978415   0.000413159   0.137220602  -0.000476818   0.000125852   0.047702097
                         0.103270645  -0.000527127   0.084939926   0.001035563   0.000001927   0.037368730

   18    4.2  1.5  0.5   0.269955311  -0.000704760  -0.015142603   0.004420679  -0.000012051  -0.231854752
                         0.322770805  -0.000683214   0.023775146  -0.000511565  -0.000010876   0.299326713

   19    5.2  1.5  0.5   0.322791408  -0.000729368   0.023749157  -0.000315964  -0.000005628  -0.299345459
                        -0.269968537   0.001258637   0.015142201  -0.000106060  -0.000147782  -0.231865985

   20    6.2  1.5  0.5   0.002681523  -0.041141148  -0.000067655  -0.417983390   0.000000417  -0.002315726
                         0.003637415  -0.000786236  -0.002578188   0.037961519  -0.000271035   0.003370296

   21    7.2  1.5  0.5   0.000188726  -0.001029262  -0.002822522   0.038042222   0.000000269  -0.000176541
                        -0.000067025   0.035887439  -0.000099165   0.418481201   0.005459070  -0.000066603

   22    8.2  1.5  0.5   0.000548075   0.000761169  -0.000500622   0.003947158   0.000022992  -0.000107937
                        -0.001367986  -0.420215060   0.000010322   0.035675326   0.437191047  -0.000071407

   23    1.2  1.5 -0.5  -0.004405764   0.000209880   0.072126600  -0.000251017   0.000057064   0.094260646
                         0.003672244   0.001166437   0.046208214  -0.000768357   0.000478841   0.076164925

   24    2.2  1.5 -0.5   0.000148619   0.002766922  -0.000653126   0.017456729   0.000911695   0.000738456
                        -0.000486762  -0.156342754   0.000337833   0.163801828  -0.060582988   0.000597839

   25    3.2  1.5 -0.5  -0.000541516  -0.185358671   0.000095553  -0.130469334  -0.060584566   0.000099108
                        -0.000185961  -0.003022635  -0.000727993   0.014150109  -0.000911252   0.000077596

   26    4.2  1.5 -0.5  -0.003446466   0.000147301   0.002577799  -0.047104124  -0.007764973  -0.000016209
                         0.002910127  -0.041148955  -0.000126350  -0.417051781   0.378540863   0.000000886

   27    5.2  1.5 -0.5   0.000100378   0.041146784   0.000043993   0.417075574   0.378562513  -0.000097251
                        -0.000303997   0.000140713   0.002714447  -0.047109635   0.007768016   0.000111414

   28    6.2  1.5 -0.5   0.316809176  -0.000703013   0.024240567  -0.000800635  -0.000316789  -0.000170004
                        -0.276923753   0.000719681   0.014398674  -0.004385793   0.004076907   0.000211086

   29    7.2  1.5 -0.5   0.276707857  -0.001140158  -0.017453273   0.000077795   0.000179179   0.003430941
                         0.316519015  -0.000682477   0.028494218  -0.000136409   0.000059140  -0.004246112

   30    8.2  1.5 -0.5  -0.021281639   0.000321013  -0.226801801  -0.002467062   0.000128834   0.274769472
                        -0.025767325   0.000205918   0.353994558  -0.001254589   0.000012290  -0.340050809

   31    1.2  1.5 -1.5   0.000038244  -0.025117631   0.000578252  -0.255213086   0.000000293  -0.000442521
                         0.000047970  -0.000602460  -0.002777404   0.023525518  -0.000000020   0.000700097

   32    2.2  1.5 -1.5  -0.006237982  -0.000093788  -0.081910319  -0.002904457   0.000003398   0.067184559
                        -0.007725258   0.000066807   0.123675123  -0.000260902  -0.000001446  -0.080625252

   33    3.2  1.5 -1.5  -0.007725024   0.000045622   0.123693104  -0.000708140  -0.000001440  -0.080628128
                         0.006237735  -0.000103356   0.081910516   0.000931850  -0.000003399  -0.067185853

   34    4.2  1.5 -1.5  -0.017585143  -0.004235349  -0.234235600  -0.002127318  -0.004707089   0.140852319
                        -0.022010795   0.000138971   0.349548332  -0.001336904  -0.000060593  -0.167165332

   35    5.2  1.5 -1.5  -0.022007019   0.000463190   0.349563712  -0.001311034   0.000265837  -0.167175200
                         0.017572372  -0.000501009   0.234252525   0.002459806  -0.000213808  -0.140862378

   36    6.2  1.5 -1.5   0.001123925   0.419718100  -0.002744937  -0.040916273   0.437188560   0.001608021
                         0.000188533   0.000216451   0.003082322   0.004458287  -0.000579695  -0.001708720

   37    7.2  1.5 -1.5  -0.000449810  -0.000249024   0.000639238  -0.004252963   0.000582481  -0.000065943
                         0.001305325   0.420219773   0.000155616  -0.035645216   0.437179094  -0.000105213

   38    8.2  1.5 -1.5  -0.000011077  -0.000722584  -0.002735455   0.038552481   0.000263671  -0.000044774
                         0.000018784   0.035887989  -0.000020428   0.418441489  -0.005459538  -0.000049789


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  25.220%   3.221%  34.570%   3.649%   2.836%  30.492%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  19.994%  20.071%   0.406%  26.189%  24.360%   8.969%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  25.099%   6.393%  28.209%   6.959%   6.132%  27.196%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   3.220%  25.217%   3.650%  34.573%  30.492%   2.836%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5  20.066%  19.993%  26.194%   0.406%   8.969%  24.360%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   6.391%  25.096%   6.960%  28.212%  27.196%   6.132%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   1.881%   0.000%   0.000%   0.087%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   5.942%   1.387%   0.000%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   1.488%   0.607%   0.000%
   10    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   1.548%   0.487%   0.000%
   11    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   2.417%   0.639%   0.000%
   12    6.2  1.5  1.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.002%   1.040%   0.000%   0.000%   0.034%
   13    7.2  1.5  1.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.002%   1.055%   0.000%   0.000%   0.034%
   14    8.2  1.5  1.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.352%   0.000%   0.000%   0.018%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%  40.126%  11.486%   0.001%
   16    2.2  1.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%  21.622%   0.000%   0.001%   0.156%
   17    3.2  1.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   5.176%   0.000%   0.000%   0.769%
   18    4.2  1.5  0.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.002%   2.474%   0.000%   0.000%   0.061%
   19    5.2  1.5  0.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.002%   1.880%   0.000%   0.000%   0.083%
   20    6.2  1.5  0.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.991%   2.169%   0.001%
   21    7.2  1.5  0.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.421%   2.508%   0.001%
   22    8.2  1.5  0.5   0.000%   0.001%   0.000%   0.001%   0.002%   0.000%   0.000%   0.855%   0.269%   0.000%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  47.955%   0.000%   0.000%   1.585%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%  30.992%   7.885%   0.005%
   25    3.2  1.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.590%  38.402%   0.009%
   26    4.2  1.5 -0.5   0.000%   0.001%   0.000%   0.001%   0.002%   0.000%   0.000%   2.404%   0.114%   0.001%
   27    5.2  1.5 -0.5   0.000%   0.001%   0.000%   0.001%   0.002%   0.000%   0.000%   1.305%   1.217%   0.000%
   28    6.2  1.5 -0.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.507%   0.000%   0.001%   3.966%
   29    7.2  1.5 -0.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.012%   0.000%   0.001%   3.338%
   30    8.2  1.5 -0.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.002%   1.037%   0.000%   0.000%   0.026%
   31    1.2  1.5 -1.5   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   7.680%  27.037%   0.002%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   9.279%   0.000%   0.004%  37.400%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.907%   0.000%   0.010%  46.806%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   1.594%   0.000%   0.000%   3.726%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   3.228%   0.000%   0.001%   1.890%
   36    6.2  1.5 -1.5   0.000%   0.001%   0.000%   0.001%   0.002%   0.000%   0.000%   0.870%   0.249%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.001%   0.000%   0.001%   0.002%   0.000%   0.000%   0.899%   0.221%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   1.470%   5.303%   0.002%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5  32.761%   0.000%   0.000%  18.347%  35.006%   0.009%   0.000%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5   0.000%  40.420%   0.308%   0.000%   0.001%  17.481%   0.000%   0.000%   0.000%   0.000%
    9    3.2  1.5  1.5   0.002%  45.654%   0.308%   0.000%   0.005%  17.474%   0.000%   0.000%   0.000%   0.000%
   10    4.2  1.5  1.5   0.000%   3.331%   0.038%   0.000%   0.000%   2.173%   0.000%  26.705%   0.073%   0.788%
   11    5.2  1.5  1.5   0.000%   2.310%   0.038%   0.000%   0.001%   2.173%   0.000%  27.709%   0.041%   0.294%
   12    6.2  1.5  1.5   0.055%   0.000%   0.000%   1.451%   0.761%   0.000%   0.805%   0.009%  43.246%   6.347%
   13    7.2  1.5  1.5   0.041%   0.000%   0.000%   1.425%   0.787%   0.000%   0.744%   0.001%  41.228%   6.089%
   14    8.2  1.5  1.5   6.408%   0.000%   0.000%   0.787%   1.424%   0.001%   0.916%   0.000%   0.106%   0.016%
   15    1.2  1.5  0.5   0.000%   0.478%   0.103%   0.004%   0.002%   5.823%   0.000%   0.000%   0.000%   0.000%
   16    2.2  1.5  0.5  17.290%   0.002%   0.000%  41.183%   0.317%   0.003%   0.000%   0.000%   0.000%   0.000%
   17    3.2  1.5  0.5  33.122%   0.002%   0.000%   2.170%  39.324%   0.011%   0.000%   0.000%   0.000%   0.000%
   18    4.2  1.5  0.5   0.007%   0.000%   0.000%   0.760%   1.451%   0.001%   1.101%   0.003%   0.462%   0.068%
   19    5.2  1.5  0.5   0.579%   0.000%   0.000%   0.760%   1.451%   0.001%   0.787%   0.000%   0.018%   0.003%
   20    6.2  1.5  0.5   0.000%   3.617%   2.173%   0.000%   0.000%   0.038%   0.000%  24.957%   0.021%   0.172%
   21    7.2  1.5  0.5   0.000%   3.848%   2.180%   0.000%   0.000%   0.031%   0.000%  16.321%   0.089%   0.643%
   22    8.2  1.5  0.5   0.000%   0.006%   0.031%   0.000%   0.001%   2.179%   0.000%   0.009%   0.036%   0.242%
   23    1.2  1.5 -0.5   2.551%   0.000%   0.002%   3.890%   2.040%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    2.2  1.5 -0.5   0.000%   0.187%  23.245%   0.002%   0.003%  18.253%   0.000%   0.000%   0.000%   0.000%
   25    3.2  1.5 -0.5   0.000%   0.068%  12.534%   0.000%   0.011%  28.961%   0.000%   0.000%   0.000%   0.000%
   26    4.2  1.5 -0.5   0.000%   0.024%   2.173%   0.000%   0.000%   0.038%   0.003%   1.085%   0.067%   0.455%
   27    5.2  1.5 -0.5   0.000%   0.020%   2.174%   0.000%   0.000%   0.038%   0.000%   0.764%   0.002%   0.014%
   28    6.2  1.5 -0.5   2.303%   0.000%   0.000%   0.760%   1.451%   0.001%  24.991%   0.000%   0.171%   0.020%
   29    7.2  1.5 -0.5   3.426%   0.000%   0.000%   0.787%   1.424%   0.001%  16.264%   0.000%   0.658%   0.091%
   30    8.2  1.5 -0.5   0.067%   0.000%   0.000%   1.425%   0.787%   0.000%   0.009%   0.000%   0.233%   0.035%
   31    1.2  1.5 -1.5   0.000%   0.010%  52.438%   0.000%   0.000%   0.923%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5   1.067%   0.000%   0.002%  11.672%   6.116%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5   0.026%   0.000%   0.000%  11.672%   6.115%   0.001%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.045%   0.000%   0.000%   1.451%   0.761%   0.000%  26.700%   0.000%   0.790%   0.073%
   35    5.2  1.5 -1.5   0.248%   0.000%   0.000%   1.451%   0.760%   0.000%  27.671%   0.000%   0.302%   0.042%
   36    6.2  1.5 -1.5   0.000%   0.010%   0.038%   0.000%   0.000%   2.173%   0.009%   0.802%   6.352%  43.283%
   37    7.2  1.5 -1.5   0.000%   0.010%   0.031%   0.000%   0.001%   2.179%   0.001%   0.738%   6.088%  41.224%
   38    8.2  1.5 -1.5   0.000%   0.002%   2.180%   0.000%   0.000%   0.031%   0.000%   0.897%   0.015%   0.099%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.010%   0.420%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%  23.897%   6.108%   1.088%   0.000%   0.000%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%  23.898%   6.930%   0.317%   0.000%   0.000%
   10    4.2  1.5  1.5   0.000%   1.054%   5.666%   0.001%   0.000%   0.220%  22.027%  13.270%   0.002%   0.001%
   11    5.2  1.5  1.5   0.000%   0.582%   5.660%   0.001%   0.000%   0.220%  15.071%  19.806%   0.005%   0.000%
   12    6.2  1.5  1.5   0.499%   0.000%   0.001%   0.520%   0.881%   0.000%   0.003%   0.001%   1.652%   5.394%
   13    7.2  1.5  1.5   0.597%   0.000%   0.000%   2.765%   0.881%   0.000%   0.000%   0.000%   1.642%   5.504%
   14    8.2  1.5  1.5  27.433%   0.000%   0.000%   0.103%   0.000%   0.000%   0.000%   0.000%   0.093%   3.447%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  31.862%   0.078%   7.734%   0.001%   0.000%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   7.965%   0.002%   0.000%   0.000%   0.339%   3.091%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   7.966%   0.000%   0.000%   0.000%   0.554%   0.405%
   18    4.2  1.5  0.5  29.765%   0.001%   0.001%  14.311%   0.661%   0.000%   0.003%   0.000%   3.274%  13.442%
   19    5.2  1.5  0.5  24.992%   0.000%   0.002%  19.913%   0.661%   0.000%   0.000%   0.001%   3.610%   9.232%
   20    6.2  1.5  0.5   0.004%   3.387%   0.031%   0.002%   0.000%   0.000%  26.487%   0.949%   0.000%   0.002%
   21    7.2  1.5  0.5   0.000%  11.453%   0.068%   0.000%   0.000%   0.000%  22.643%   0.008%   0.000%   0.000%
   22    8.2  1.5  0.5   0.000%   0.200%  50.932%   0.005%   0.000%   0.881%   0.045%   7.274%   0.002%   0.000%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%  31.861%   0.000%   0.000%   0.000%   1.755%   5.732%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   7.965%   0.003%   2.617%   0.000%   0.000%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   7.966%   0.051%   1.354%   0.000%   0.000%
   26    4.2  1.5 -0.5   0.001%  29.833%  14.266%   0.001%   0.000%   0.661%   0.117%  16.160%   0.011%   0.002%
   27    5.2  1.5 -0.5   0.000%  24.979%  19.954%   0.002%   0.000%   0.661%   0.193%  14.187%   0.004%   0.000%
   28    6.2  1.5 -0.5   3.356%   0.004%   0.002%   0.029%   0.000%   0.000%   0.000%   0.014%  20.926%  11.940%
   29    7.2  1.5 -0.5  11.494%   0.000%   0.000%   0.067%   0.000%   0.000%   0.000%   0.004%  17.773%   0.860%
   30    8.2  1.5 -0.5   0.194%   0.000%   0.005%  50.949%   0.881%   0.000%   0.000%   0.000%   1.518%   5.449%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.010%   0.069%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%  23.897%   0.000%   0.000%   0.001%   3.532%   3.332%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%  23.898%   0.000%   0.000%   0.002%   6.989%   0.199%
   34    4.2  1.5 -1.5   1.067%   0.000%   0.001%   5.657%   0.220%   0.000%   0.000%   0.004%  32.793%   2.498%
   35    5.2  1.5 -1.5   0.598%   0.000%   0.001%   5.673%   0.220%   0.000%   0.000%   0.001%   3.512%  29.050%
   36    6.2  1.5 -1.5   0.000%   0.475%   0.505%   0.001%   0.000%   0.881%   0.073%   7.281%   0.001%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.574%   2.800%   0.000%   0.000%   0.881%   0.071%   7.328%   0.002%   0.000%
   38    8.2  1.5 -1.5   0.000%  27.457%   0.106%   0.000%   0.000%   0.000%   0.088%   0.532%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.004%   0.001%   0.001%   0.000%   0.000%   0.004%
    2    2.2  0.5  0.5   0.000%   0.000%   0.001%   0.004%   0.000%   0.000%   0.003%   0.001%
    3    3.2  0.5  0.5   0.000%   0.000%   0.004%   0.001%   0.001%   0.000%   0.001%   0.004%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.004%   0.004%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.004%   0.001%   0.001%   0.003%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.001%   0.004%   0.004%   0.001%
    7    1.2  1.5  1.5   4.842%   0.000%   6.603%   0.000%   0.030%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5   0.000%   0.053%   0.000%   2.190%   0.000%   0.021%   1.101%   0.000%
    9    3.2  1.5  1.5   0.000%   0.003%   0.000%   2.190%   0.000%   0.021%   1.101%   0.000%
   10    4.2  1.5  1.5   0.000%   0.045%   0.000%  17.616%   0.002%   0.169%   4.779%   0.002%
   11    5.2  1.5  1.5   0.000%   0.467%   0.000%  17.618%   0.000%   0.169%   4.779%   0.000%
   12    6.2  1.5  1.5   0.395%   0.000%   0.079%   0.002%  17.705%   0.001%   0.001%  19.114%
   13    7.2  1.5  1.5   0.301%   0.000%   0.112%   0.000%  17.675%   0.001%   0.000%  19.113%
   14    8.2  1.5  1.5  41.105%   0.000%  17.676%   0.000%   0.112%   0.000%   0.000%   0.003%
   15    1.2  1.5  0.5   0.000%   0.095%   0.000%   0.730%   0.000%   0.007%   1.468%   0.000%
   16    2.2  1.5  0.5   2.501%   0.000%   1.874%   0.000%   3.285%   0.000%   0.000%   0.367%
   17    3.2  1.5  0.5   4.973%   0.000%   2.554%   0.000%   2.604%   0.000%   0.000%   0.367%
   18    4.2  1.5  0.5   0.025%   0.002%  17.706%   0.000%   0.079%   0.002%   0.000%  14.335%
   19    5.2  1.5  0.5   3.901%   0.000%  17.708%   0.000%   0.079%   0.000%   0.000%  14.337%
   20    6.2  1.5  0.5   0.000%  17.210%   0.002%   0.169%   0.001%  17.615%   0.000%   0.002%
   21    7.2  1.5  0.5   0.000%  21.993%   0.000%   0.129%   0.001%  17.657%   0.003%   0.000%
   22    8.2  1.5  0.5   0.000%   0.128%   0.000%  17.658%   0.000%   0.129%  19.114%   0.000%
   23    1.2  1.5 -0.5   0.420%   0.000%   0.003%   0.000%   0.734%   0.000%   0.000%   1.469%
   24    2.2  1.5 -0.5   0.000%   3.311%   0.000%   2.445%   0.000%   2.714%   0.367%   0.000%
   25    3.2  1.5 -0.5   0.000%   4.526%   0.000%   3.437%   0.000%   1.722%   0.367%   0.000%
   26    4.2  1.5 -0.5   0.002%   0.455%   0.002%   0.169%   0.001%  17.615%  14.335%   0.000%
   27    5.2  1.5 -0.5   0.000%   2.360%   0.000%   0.169%   0.001%  17.617%  14.337%   0.000%
   28    6.2  1.5 -0.5  11.767%   0.000%  17.705%   0.000%   0.079%   0.002%   0.002%   0.000%
   29    7.2  1.5 -0.5  26.008%   0.000%  17.675%   0.000%   0.112%   0.000%   0.000%   0.003%
   30    8.2  1.5 -0.5   0.480%   0.000%   0.112%   0.000%  17.675%   0.001%   0.000%  19.113%
   31    1.2  1.5 -1.5   0.000%   5.193%   0.000%   0.063%   0.001%   6.569%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.384%   0.000%   0.010%   0.000%   2.200%   0.001%   0.000%   1.101%
   33    3.2  1.5 -1.5   0.060%   0.000%   0.010%   0.000%   2.201%   0.000%   0.000%   1.101%
   34    4.2  1.5 -1.5   0.050%   0.000%   0.079%   0.002%  17.705%   0.001%   0.002%   4.778%
   35    5.2  1.5 -1.5   2.786%   0.000%   0.079%   0.000%  17.707%   0.001%   0.000%   4.779%
   36    6.2  1.5 -1.5   0.000%   0.089%   0.000%  17.616%   0.002%   0.169%  19.113%   0.001%
   37    7.2  1.5 -1.5   0.000%   0.047%   0.000%  17.658%   0.000%   0.129%  19.113%   0.000%
   38    8.2  1.5 -1.5   0.000%  44.024%   0.000%   0.129%   0.001%  17.658%   0.003%   0.000%


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

              2       7     1804.72       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    358948.70 306664.08      5.37  41779.32  10495.03      3.45      0.12      1.12
 REAL TIME  *    361337.61 SEC
 DISK USED  *         1.81 GB (local),        5.84 GB (total)
 SF USED    *        14.05 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy=  -2605.033568371500

              CI              CI           MULTI         RHF-SCF
  -2604.99406183  -2605.33485706  -2604.18664735  -2604.60122692
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
