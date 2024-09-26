
 Working directory              : /wrk/irikura/molpro.d3D3jNijCO/
 Global scratch directory       : /wrk/irikura/molpro.d3D3jNijCO/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.d3D3jNijCO/

 id        : nistki

 Nodes     nprocs
 comp-32      3
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Br SO-CI
                                                                                 ! active space (7/8)
                                                                      ! much tighter thresholds, seeking correct level degeneracies
 memory,4000,M;
 
 gprint,orbitals,civector;
 gthresh,energy=1.d-10,coeff=1.d-8,gradient=1.d-7,step=1.d-4;twoint=1.d-13;
 
                                                                                 !file,2,acqz.wfu,new    !this causes failure
 
 symmetry,xyz
 geometry={Br};
 
 basis=aug-cc-pwCVQZ-X2C
 
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
 Commands initialized (847), CPU time= 0.00 sec, 718 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 26-Jun-24          TIME: 16:22:22  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 4000.0 MW



 THRESHOLDS:

 ZERO    =  1.00D-12  ONEINT  =  1.00D-12  TWOINT  =  1.00D-11  PREFAC  =  1.00D-14  XXXXXX  =  1.00D-09  EORDER  =  1.00D-04
 ENERGY  =  1.00D-10  ETEST   =  0.00D+00  EDENS   =  0.00D+00  THRDEDEF=  1.00D-06  GRADIENT=  1.00D-07  STEP    =  1.00D-04
 ORBITAL =  1.00D-05  CIVEC   =  1.00D-05  COEFF   =  1.00D-08  PRINTCI =  5.00D-02  PUNCHCI =  9.90D+01  OPTGRAD =  3.00D-04
 OPTENERG=  1.00D-06  OPTSTEP =  3.00D-04  THRGRAD =  1.00D-10  COMPRESS=  1.00D-11  VARMIN  =  1.00D-07  VARMAX  =  1.00D-03
 THRDOUB =  0.00D+00  THRDIV  =  1.00D-05  THRRED  =  1.00D-07  THRPSP  =  1.00D+00  THRDC   =  1.00D-10  THRCS   =  1.00D-10
 THRNRM  =  1.00D-08  THREQ   =  0.00D+00  THRDE   =  1.00D+00  THRREF  =  1.00D-05  SPARFAC =  1.00D+00  THRDLP  =  1.00D-07
 THRDIA  =  1.00D-10  THRDLS  =  1.00D-07  THRGPS  =  0.00D+00  THRKEX  =  0.00D+00  THRDIS  =  2.00D-01  THRVAR  =  1.00D-10
 THRLOC  =  1.00D-06  THRGAP  =  1.00D-06  THRLOCT = -1.00D+00  THRGAPT = -1.00D+00  THRORB  =  1.00D-06  THRMLTP =  0.00D+00
 THRCPQCI=  1.00D-10  KEXTA   =  0.00D+00  THRCOARS=  0.00D+00  SYMTOL  =  1.00D-06  GRADTOL =  1.00D-06  THROVL  =  1.00D-08
 THRORTH =  1.00D-08  THRDLOVL= -1.00D+00  GRID    =  1.00D-06  GRIDMAX =  1.00D-03  DTMAX   =  0.00D+00  THROCCDE=  1.00D-01
 THROCCDE=  1.00D-01  THRPRINT=  2.50D-01

 SETTING TWOINT         =      1.0000000D-13                                  
 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry BR     S aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry BR     P aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry BR     D aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry BR     F aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry BR     G aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry BR     H aug-cc-pwCVQZ-X      selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         322
 NUMBER OF SYMMETRY AOS:          254
 NUMBER OF CONTRACTIONS:          170   (   87Ag  +   83Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-14

     153.354 MB (compressed) written to integral file ( 20.3%)

     Node minimum: 29.360 MB, node maximum: 72.090 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   17815695.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15989739      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ    94260844. AND WROTE     3173092. INTEGRALS IN     10 RECORDS. CPU TIME:     0.31 SEC, REAL TIME:     0.34 SEC
 SORT2 READ     9789521. AND WROTE    53439771. INTEGRALS IN    594 RECORDS. CPU TIME:     0.23 SEC, REAL TIME:     0.27 SEC

 Node minimum:    17810819.  Node maximum:    17815695. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       192021

 Eigenvalues of metric

         1 0.264E-05 0.213E-03 0.289E-02 0.794E-02 0.794E-02 0.794E-02 0.794E-02 0.794E-02
         2 0.122E-04 0.122E-04 0.122E-04 0.382E-03 0.382E-03 0.382E-03 0.254E-01 0.254E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.90      4.75
 REAL TIME  *         6.73 SEC
 DISK USED  *        30.21 MB (local),      338.91 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   9   9

 NELEC=   36   SYM=1   MS2= 0   THRE=1.0D-12   THRD=1.0D-06   THRG=1.0D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2604.54703047   -2604.54703047     0.00D+00     0.10D+00     0     0       0.07      0.15    start
   2    -2604.59140489      -0.04437442     0.17D-01     0.16D-01     1     0       0.08      0.23    diag
   3    -2604.60719036      -0.01578547     0.89D-02     0.68D-02     2     0       0.08      0.31    diag
   4    -2604.60763126      -0.00044090     0.15D-02     0.94D-03     3     0       0.07      0.38    diag
   5    -2604.60765040      -0.00001914     0.90D-04     0.27D-03     4     0       0.08      0.46    diag
   6    -2604.60765230      -0.00000190     0.32D-04     0.67D-04     5     0       0.08      0.54    diag
   7    -2604.60765237      -0.00000007     0.39D-05     0.17D-04     6     0       0.08      0.62    diag
   8    -2604.60765237      -0.00000000     0.43D-06     0.35D-05     7     0       0.08      0.70    fixocc
   9    -2604.60765237       0.00000000     0.37D-07     0.34D-06     8     0       0.08      0.78    diag
  10    -2604.60765237      -0.00000000     0.31D-08     0.87D-08     0     0       0.07      0.85    diag/orth

 Final occupancy:   9   9

 !RHF STATE 1.1 Energy              -2604.607652367634
  RHF One-electron energy           -3634.576512033714
  RHF Two-electron energy            1029.968859666079
  RHF Kinetic energy                 2786.640169469031
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.934676705268

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -497.89738     1  1  s    0.99998
    2.1     2.00000   -66.75885     1  2  s    0.99986
    3.1     2.00000    -9.85678     1  3  s    0.99962
    4.1     2.00000    -2.81603     1  1  d2+  0.99929
    5.1     2.00000    -2.81603     1  1  d2-  0.99909
    6.1     2.00000    -2.81603     1  1  d0   0.99966
    7.1     2.00000    -2.81603     1  1  d1+  0.99973
    8.1     2.00000    -2.81603     1  1  d1-  0.99974
    9.1     2.00000    -0.71233     1  4  s    0.96040
    1.2     2.00000   -58.65722     1  1  pz   0.99768
    2.2     2.00000   -58.65722     1  1  py   0.99727
    3.2     2.00000   -58.65722     1  1  px   0.99972
    4.2     2.00000    -7.20982     1  2  px   0.99930
    5.2     2.00000    -7.20982     1  2  pz   0.99930
    6.2     2.00000    -7.20982     1  2  py   0.99930
    7.2     2.00000    -0.13760     1  3  px   0.91646
    8.2     2.00000    -0.13760     1  3  pz   0.91646
    9.2     2.00000    -0.13760     1  3  py   0.91646


 HOMO      9.2    -0.137599 =      -3.7443eV
 LUMO     10.2     0.217146 =       5.9088eV
 LUMO-HOMO         0.354745 =       9.6531eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.63       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         5.75      0.85      4.75
 REAL TIME  *         7.70 SEC
 DISK USED  *        31.52 MB (local),      342.82 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         3.00000000                                  
 SETTING NTRIP          =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     148 (   77   71)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.440D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.584D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.266D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.249D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.241D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 2 4 6 1 1   3 6 5 2 4 1 5 3 2 6   4 5 3 2 6 4 9 711 8  1213141510 113111014
                                       12 715 8 9 5 3 4 2 6   1 5 3 4 2 611131012  14 815 7 9 1 5 3 2 4   61015121413 8 9 711
                                        2 5 6 3 4 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.685D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.900D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.293D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.113D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.133D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.121D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.841D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.842D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.553D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.123D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.125D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 3 2 1 3 2 1   3 2 1 3 2 6 4 8 510   9 7 1 3 2 510 8 7 9   6 410 5 7 8 9 6 4 1
                                        3 2 9 710 5 8 6 4 2   1 31312201518141721  161119 5 6 7 9 810 4   3 1 2 9 710 5 8 6 4
                                        2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-06 (gradient)  0.10E-09 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  1674  ( 52 closed/active, 1042 closed/virtual, 0 active/active, 580 active/virtual )
 Total number of variables:    13822
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   19   80    0  -2604.18733343   -2604.31382987   -0.12649644    0.40801366 0.01536334 0.00055568  0.12E+01      2.25
   2    8   35    0  -2604.27150629   -2604.28600610   -0.01449981    0.68102878 0.00009629 0.00067276  0.16E+00      3.87
   3    8   37    0  -2604.28612113   -2604.28612420   -0.00000307    0.00598969 0.00000539 0.00002422  0.11E-01      5.52
   4   14   51    0  -2604.28612420   -2604.28612420   -0.00000000    0.00000259 0.00000000 0.00000000  0.20E-03      7.46
   5    2    4    0  -2604.28612420   -2604.28612420    0.00000000    0.00000000 0.00000000 0.00000000  0.19E-08      8.45

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.99E-10)
                       Final energy:  -2604.28612420
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2604.512134960758
 Nuclear energy                                  0.00000000
 Kinetic energy                               2787.21437920
 One electron energy                         -3624.23152365
 Two electron energy                          1019.71938869
 Virial ratio                                    1.93444988
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2604.512134960746
 Nuclear energy                                  0.00000000
 Kinetic energy                               2787.21437920
 One electron energy                         -3624.23152365
 Two electron energy                          1019.71938869
 Virial ratio                                    1.93444988
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2604.512134960743
 Nuclear energy                                  0.00000000
 Kinetic energy                               2787.21437920
 One electron energy                         -3624.23152365
 Two electron energy                          1019.71938869
 Virial ratio                                    1.93444988
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2604.206657602434
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.03447226
 One electron energy                         -3613.93960088
 Two electron energy                          1009.73294328
 Virial ratio                                    1.93473598
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy             -2604.206657602427
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.03447226
 One electron energy                         -3613.93960088
 Two electron energy                          1009.73294328
 Virial ratio                                    1.93473598
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy             -2604.206657602425
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.03447226
 One electron energy                         -3613.93960088
 Two electron energy                          1009.73294328
 Virial ratio                                    1.93473598
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy             -2604.198197703318
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.05934601
 One electron energy                         -3614.01304177
 Two electron energy                          1009.81484407
 Virial ratio                                    1.93472460
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy             -2604.198197703318
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.05934601
 One electron energy                         -3614.01304177
 Two electron energy                          1009.81484407
 Virial ratio                                    1.93472460
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy             -2604.198197703310
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.05934601
 One electron energy                         -3614.01304177
 Two electron energy                          1009.81484407
 Virial ratio                                    1.93472460
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy             -2604.198197703308
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.05934601
 One electron energy                         -3614.01304177
 Two electron energy                          1009.81484407
 Virial ratio                                    1.93472460
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy             -2604.198197703306
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.05934601
 One electron energy                         -3614.01304177
 Two electron energy                          1009.81484407
 Virial ratio                                    1.93472460
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999986392
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999974505177
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.000025508431
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999761144
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.999924898792
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.000075340064
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     0.711343120423
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     0.999951831946
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000211524527
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     3.999792027698
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     3.288701495406
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.000004061257
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999995954825
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999983919
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.000006886998
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.999993374177
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999738824
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.968870008425
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.999981595315
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.000011586780
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     0.999991603956
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.031145205525
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999995952352
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.000029539998
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999974507650
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999993351858
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.000081727031
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999924921112
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     1.319786871153
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000066572739
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     3.999776888693
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000216368347
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     2.680153299069
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 2 4 6 1 1   6 5 3 2 4 1 5 3 2 6   4 5 3 2 6 411131014  1512 8 7 9 111131014
                                       1512 8 7 9 5 3 4 2 6   1 5 3 4 2 611131014  1512 8 7 9 1 5 3 2 4   61310111514 812 7 9
                                        5 2 3 6 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 1 3 2 1   3 2 2 3 1 5 7 9 810   6 4 1 3 2 5 9 7 810   6 4 5 9 710 8 6 4 1
                                        3 2 5 9 710 8 6 4 2   1 31220181517161421  131911 5 7 9 610 8 4   1 3 2 7 9 5 810 6 4
                                        2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -498.41690     1  1  s    0.99999
    2.1     2.00000   -67.27633     1  2  s    0.99970
    3.1     2.00000   -10.36849     1  3  s    1.00024
    4.1     2.00000    -3.33089     1  1  d2+  1.00035
    5.1     2.00000    -3.33089     1  1  d2-  1.00035
    6.1     2.00000    -3.33089     1  1  d0   1.00035
    7.1     2.00000    -3.33089     1  1  d1+  1.00035
    8.1     2.00000    -3.33089     1  1  d1-  1.00035
    9.1     1.99768    -1.16338     1  4  s    1.02501
   10.1     0.00260     0.56853     1  3  s   -0.34932    1  4  s   -2.11568    1  5  s   -1.34266    1  6  s    1.91587
                                    1  7  s    1.48480
    1.2     2.00000   -59.17407     1  1  py   1.00020
    2.2     2.00000   -59.17407     1  1  pz   1.00020
    3.2     2.00000   -59.17407     1  1  px   1.00020
    4.2     2.00000    -7.72394     1  2  px   1.00015
    5.2     2.00000    -7.72394     1  2  pz   1.00015
    6.2     2.00000    -7.72394     1  2  py   1.00015
    7.2     1.42170    -0.47749     1  3  px   1.04207
    8.2     1.42170    -0.47749     1  3  pz   1.04207
    9.2     1.42170    -0.47749     1  3  py   1.04207
   10.2     0.24488     0.05090     1 10  px   1.13292
   11.2     0.24488     0.05090     1 10  pz   1.13292
   12.2     0.24488     0.05090     1 10  py   1.13292
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 22a000      0.98998932      0.00199113      0.00012554
 20 a22000     -0.00011549     -0.00499870      0.98997871
 20 2a2000     -0.00199174      0.98997671      0.00499846
 20 2aa0b0     -0.06567563     -0.00013209     -0.00000833
 20 a2ab00     -0.06567563     -0.00013209     -0.00000833
 20 a2a00b     -0.00000766     -0.00033161      0.06567493
 20 aa20b0     -0.00000766     -0.00033161      0.06567493
 20 2aa00b     -0.00013213      0.06567480      0.00033160
 20 aa2b00      0.00013213     -0.06567480     -0.00033160
 
 Energy:    -2604.51213496  -2604.51213496  -2604.51213496
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 aa200a     -0.00000000     -0.00000000     -0.00000000     -0.07182892      0.00098873     -0.00087420      0.00586198
 20 2aaa00      0.00000000      0.00000000     -0.00000000      0.73858120     -0.00907630      0.00021386     -0.00024877
 20 2aa0a0      0.70546991      0.00181593     -0.00036053     -0.00862454     -0.70541689     -0.00143646      0.00005958
 20 a2aa00      0.70546991      0.00181593     -0.00036053      0.00862454      0.70541689      0.00143646     -0.00005958
 20 a2a00a      0.00034478      0.00611369      0.70544577      0.00222204     -0.00007408     -0.00587485     -0.70542330
 20 aa20a0      0.00034478      0.00611369      0.70544577     -0.00222204      0.00007408      0.00587485      0.70542330
 20 aa2a00     -0.00181899      0.70544351     -0.00611278      0.00015655     -0.00143882      0.70544471     -0.00586826
 20 2aa00a      0.00181899     -0.70544352      0.00611278      0.00015655     -0.00143882      0.70544471     -0.00586826
 20 a2a0a0      0.00000000      0.00000000     -0.00000000      0.66675228     -0.00808757     -0.00066034      0.00561321
 
 Energy:    -2604.20665760  -2604.20665760  -2604.20665760  -2604.19819770  -2604.19819770  -2604.19819770  -2604.19819770

 State:              8
 20 aa200a      0.81141261
 20 2aaa00     -0.34351309
 20 2aa0a0      0.00009412
 20 a2aa00     -0.00009412
 20 a2a00a      0.00528673
 20 aa20a0     -0.00528673
 20 aa2a00      0.00081804
 20 2aa00a      0.00081804
 20 a2a0a0      0.46789952
 
 Energy:    -2604.19819770
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       72.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.29       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        13.45      7.69      0.85      4.75
 REAL TIME  *        17.19 SEC
 DISK USED  *        73.72 MB (local),      469.41 MB (total)
 SF USED    *       108.73 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2604.512135   2.0
    -2604.512135   2.0
    -2604.512135   2.0
    -2604.206658   2.0
    -2604.206658   2.0
    -2604.206658   2.0
    -2604.198198   6.0
    -2604.198198   6.0
    -2604.198198   6.0
    -2604.198198   6.0
    -2604.198198   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-16  THRDEN = 1.00D-10

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
 Number of external orbitals:     148 (  77  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.46 sec, npass=  1  Memory used:   2.74 MW


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2604.51213496
     2     -2604.51213496
     3     -2604.51213496

 Number of blocks in overlap matrix:   383   Smallest eigenvalue:  0.18D-06
 Number of N-2 electron functions:     867
 Number of N-1 electron functions:  501108

 Number of internal configurations:               139300
 Number of singly external configurations:      37080348
 Number of doubly external configurations:       4751493
 Total number of contracted configurations:     41971141
 Total number of uncontracted configurations: 2284352044

 Diagonal Coupling coefficients finished.               Storage:  64529615 words, CPU-Time:    250.43 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   5558126 words, CPU-time:      0.34 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2604.51213496     0.00000000    -1.13897945  0.39D-01  0.68D-01   287.43
    1     2     2     1.00000000     0.00000000 -2604.51213496     0.00000000    -1.13895608  0.39D-01  0.68D-01   287.43
    1     3     3     1.00000000     0.00000000 -2604.51213496    -0.00000000    -1.13902005  0.39D-01  0.68D-01   287.43
    2     1     1     1.07550942    -0.95705314 -2605.46918810    -0.95705314    -0.02418202  0.42D-02  0.10D-02  3386.80
    2     2     2     1.07551495    -0.95705198 -2605.46918694    -0.95705198    -0.02418658  0.42D-02  0.10D-02  3386.80
    2     3     3     1.07553243    -0.95703652 -2605.46917149    -0.95703652    -0.02420165  0.42D-02  0.10D-02  3386.80
    3     1     1     1.06499980    -0.97961240 -2605.49174736    -0.02255926    -0.00055526  0.51D-04  0.54D-04  6484.34
    3     2     2     1.06500226    -0.97961204 -2605.49174700    -0.02256005    -0.00055549  0.52D-04  0.54D-04  6484.34
    3     3     3     1.06500120    -0.97961202 -2605.49174698    -0.02257550    -0.00055553  0.51D-04  0.54D-04  6484.34
    4     1     1     1.06515839    -0.98020522 -2605.49234018    -0.00059283    -0.00002953  0.99D-06  0.40D-05  9583.06
    4     2     2     1.06515839    -0.98020517 -2605.49234014    -0.00059314    -0.00002956  0.99D-06  0.40D-05  9583.06
    4     3     3     1.06515876    -0.98020517 -2605.49234013    -0.00059315    -0.00002957  0.99D-06  0.40D-05  9583.06
    5     1     1     1.06550617    -0.98023939 -2605.49237435    -0.00003417    -0.00000183  0.71D-07  0.24D-06 12674.25
    5     2     2     1.06550612    -0.98023939 -2605.49237435    -0.00003421    -0.00000183  0.71D-07  0.24D-06 12674.25
    5     3     3     1.06550601    -0.98023939 -2605.49237435    -0.00003422    -0.00000183  0.71D-07  0.24D-06 12674.25
    6     1     1     1.06555420    -0.98024155 -2605.49237652    -0.00000216    -0.00000013  0.72D-08  0.15D-07 15763.12
    6     2     2     1.06555421    -0.98024155 -2605.49237651    -0.00000217    -0.00000013  0.72D-08  0.15D-07 15763.12
    6     3     3     1.06555420    -0.98024155 -2605.49237651    -0.00000217    -0.00000013  0.72D-08  0.15D-07 15763.12
    7     1     1     1.06556068    -0.98024170 -2605.49237666    -0.00000014    -0.00000001  0.43D-09  0.11D-08 18851.82
    7     2     2     1.06556069    -0.98024170 -2605.49237666    -0.00000014    -0.00000001  0.43D-09  0.11D-08 18851.82
    7     3     3     1.06556068    -0.98024170 -2605.49237666    -0.00000014    -0.00000001  0.43D-09  0.11D-08 18851.82
    8     1     1     1.06556093    -0.98024171 -2605.49237667    -0.00000001    -0.00000000  0.34D-10  0.10D-09 21938.30
    8     2     2     1.06556093    -0.98024171 -2605.49237667    -0.00000001    -0.00000000  0.34D-10  0.10D-09 21938.30
    8     3     3     1.06556093    -0.98024171 -2605.49237667    -0.00000001    -0.00000000  0.34D-10  0.10D-09 21938.30
    9     1     1     1.06556153    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.34D-11  0.88D-11 25024.68
    9     2     2     1.06556153    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.34D-11  0.87D-11 25024.68
    9     3     3     1.06556153    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.34D-11  0.88D-11 25024.68
   10     1     1     1.06556171    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.24D-12  0.75D-12 28111.33
   10     2     2     1.06556171    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.24D-12  0.75D-12 28111.33
   10     3     3     1.06556171    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.24D-12  0.75D-12 28111.33
   11     1     1     1.06556173    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.27D-13  0.66D-13 31197.48
   11     2     2     1.06556173    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.27D-13  0.66D-13 31197.48
   11     3     3     1.06556173    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.27D-13  0.66D-13 31197.48
   12     1     1     1.06556175    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.25D-14  0.69D-14 34278.68
   12     2     2     1.06556175    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.25D-14  0.69D-14 34278.68
   12     3     3     1.06556175    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.25D-14  0.69D-14 34278.68
   13     1     1     1.06556175    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.19D-15  0.61D-15 37360.53
   13     2     2     1.06556175    -0.98024171 -2605.49237667     0.00000000    -0.00000000  0.18D-15  0.59D-15 37360.53
   13     3     3     1.06556175    -0.98024171 -2605.49237667     0.00000000    -0.00000000  0.19D-15  0.63D-15 37360.53
   14     1     1     1.06556175    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.18D-16  0.85D-16 40442.84
   14     2     2     1.06556175    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.13D-16  0.74D-16 40442.84
   14     3     3     1.06556175    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.19D-16  0.93D-16 40442.84
   15     1     1     1.06556175    -0.98024171 -2605.49237667     0.00000000    -0.00000000  0.25D-17  0.22D-16 42858.08
   15     2     2     1.06556175    -0.98024171 -2605.49237667     0.00000000    -0.00000000  0.13D-16  0.76D-16 42858.08
   15     3     3     1.06556175    -0.98024171 -2605.49237667    -0.00000000    -0.00000000  0.43D-17  0.32D-16 42858.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%  49.5%
 P   0.2%  42.8%   5.6%

 Initialization:   0.6%
 Other:            0.7%

 Total CPU:    42858.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222202222/2000          -0.3342037   0.8125977  -0.3901072
 22222220222/22000          -0.5807817   0.1240595   0.7559712
 2222222022222/000           0.6893411   0.4984826   0.4477885
 222222202222//00\          -0.0237935   0.0578525  -0.0277735
 22222220222//2\00           0.0237935  -0.0578525   0.0277735
 22222220222/2/00\          -0.0413485   0.0088324   0.0538210
 22222220222//20\0          -0.0413485   0.0088324   0.0538210

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.694488   -0.336699   -0.585118
 2           0.502205    0.818665    0.124986
 3           0.451132   -0.393020    0.761616

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968527   -0.000000   -0.000000
 2          -0.000000    0.968527    0.000000
 3          -0.000000    0.000000    0.968527


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.69448842 (fixed)   0.96872241 (relaxed)   0.96852674 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045635   -0.00049083   -1.37831569
 Singles      0.01311348   -0.06435728   -0.07242794
 Pairs        0.05247820    0.55301895    0.47050192
 Total        1.06604802    0.48817084   -0.98024171
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.51213496
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.63951791
 One electron energy                -3622.50037261
 Two electron energy                 1017.00799594
 Virial quotient                       -0.93465900
 Correlation energy                    -0.98024171
 !MRCI STATE 1.2 Energy             -2605.492376668824

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.55711970 (Davidson, fixed reference)
 Cluster corrected energies         -2605.55669760 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.55711970 (Davidson, rotated reference)

 Cluster corrected energies         -2605.55515779 (Pople, fixed reference)
 Cluster corrected energies         -2605.55472512 (Pople, relaxed reference)
 Cluster corrected energies         -2605.55515779 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.81866533 (fixed)   0.96872241 (relaxed)   0.96852674 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045635   -0.00049083   -0.74874924
 Singles      0.01311348   -0.06435728   -0.07242794
 Pairs        0.05247820   -0.11812911   -0.15906453
 Total        1.06604802   -0.18297722   -0.98024171
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.51213496
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.63951794
 One electron energy                -3622.50037266
 Two electron energy                 1017.00799600
 Virial quotient                       -0.93465900
 Correlation energy                    -0.98024171
 !MRCI STATE 2.2 Energy             -2605.492376668622

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.55711970 (Davidson, fixed reference)
 Cluster corrected energies         -2605.55669760 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.55711970 (Davidson, rotated reference)

 Cluster corrected energies         -2605.55515779 (Pople, fixed reference)
 Cluster corrected energies         -2605.55472512 (Pople, relaxed reference)
 Cluster corrected energies         -2605.55515779 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.76161607 (fixed)   0.96872241 (relaxed)   0.96852674 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045635   -0.00049083   -0.18432356
 Singles      0.01311348   -0.06435728   -0.07242794
 Pairs        0.05247820   -0.71983400   -0.72349021
 Total        1.06604802   -0.78468211   -0.98024171
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.51213496
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.63951806
 One electron energy                -3622.50037278
 Two electron energy                 1017.00799611
 Virial quotient                       -0.93465900
 Correlation energy                    -0.98024171
 !MRCI STATE 3.2 Energy             -2605.492376668413

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.55711970 (Davidson, fixed reference)
 Cluster corrected energies         -2605.55669760 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.55711970 (Davidson, rotated reference)

 Cluster corrected energies         -2605.55515779 (Pople, fixed reference)
 Cluster corrected energies         -2605.55472512 (Pople, relaxed reference)
 Cluster corrected energies         -2605.55515779 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       72.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      970.07       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     43189.97  43176.51      7.69      0.85      4.75
 REAL TIME  *     43424.69 SEC
 DISK USED  *         1.02 GB (local),        3.30 GB (total)
 SF USED    *        10.54 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2605.55711970  AU                              
 SETTING HLSDIAG(2)     =     -2605.55711970  AU                              
 SETTING HLSDIAG(3)     =     -2605.55711970  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-16  THRDEN = 1.00D-10

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
 Number of external orbitals:     148 (  77  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2604.20665760
     2     -2604.20665760
     3     -2604.20665760
     4     -2604.19819770
     5     -2604.19819770
     6     -2604.19819770
     7     -2604.19819770
     8     -2604.19819770

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3313D-06

 Number of blocks in overlap matrix:   742   Smallest eigenvalue:  0.33D-06
 Number of N-2 electron functions:    2252
 Number of N-1 electron functions:  453552

 Number of internal configurations:               114452
 Number of singly external configurations:      33559776
 Number of doubly external configurations:      12337108
 Total number of contracted configurations:     46011336
 Total number of uncontracted configurations: 2139169380

 Diagonal Coupling coefficients finished.               Storage:  86457847 words, CPU-Time:   1272.94 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   8409574 words, CPU-time:      0.90 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2604.20665760     0.00000000    -1.10115545  0.34D-01  0.59D-01  1373.75
    1     2     2     1.00000000     0.00000000 -2604.20665760     0.00000000    -1.10130416  0.34D-01  0.59D-01  1373.75
    1     3     3     1.00000000     0.00000000 -2604.20665760     0.00000000    -1.10148122  0.34D-01  0.59D-01  1373.75
    1     4     4     1.00000000     0.00000000 -2604.19819770     0.00000000    -1.10318602  0.35D-01  0.59D-01  1373.75
    1     5     5     1.00000000     0.00000000 -2604.19819770    -0.00000000    -1.10293948  0.35D-01  0.59D-01  1373.75
    1     6     6     1.00000000     0.00000000 -2604.19819770    -0.00000000    -1.10296838  0.35D-01  0.59D-01  1373.75
    1     7     7     1.00000000     0.00000000 -2604.19819770     0.00000000    -1.10316707  0.35D-01  0.59D-01  1373.75
    1     8     8     1.00000000     0.00000000 -2604.19819770     0.00000000    -1.10698186  0.35D-01  0.61D-01  1373.75
    2     1     1     1.06665446    -0.93530421 -2605.14196182    -0.93530421    -0.01984740  0.22D-02  0.97D-03 11845.44
    2     2     2     1.06660328    -0.93529161 -2605.14194922    -0.93529161    -0.01984951  0.22D-02  0.98D-03 11845.44
    2     3     3     1.06674191    -0.93525094 -2605.14190854    -0.93525094    -0.01991818  0.22D-02  0.98D-03 11845.44
    2     4     4     1.06768675    -0.93625826 -2605.13445597    -0.93625826    -0.02014373  0.24D-02  0.97D-03 11845.44
    2     5     5     1.06770202    -0.93596183 -2605.13415954    -0.93596183    -0.02036703  0.25D-02  0.98D-03 11845.44
    2     6     6     1.06769333    -0.93595477 -2605.13415247    -0.93595477    -0.02038528  0.25D-02  0.99D-03 11845.44
    2     7     7     1.06780718    -0.93589387 -2605.13409158    -0.93589387    -0.02045200  0.25D-02  0.98D-03 11845.44
    2     8     8     1.06891706    -0.93572746 -2605.13392516    -0.93572746    -0.02079710  0.24D-02  0.11D-02 11845.44
    3     1     1     1.05875947    -0.95401245 -2605.16067006    -0.01870824    -0.00051478  0.30D-04  0.58D-04 22294.12
    3     2     2     1.05875228    -0.95400690 -2605.16066450    -0.01871529    -0.00051759  0.30D-04  0.58D-04 22294.12
    3     3     3     1.05873279    -0.95400377 -2605.16066137    -0.01875284    -0.00052018  0.30D-04  0.59D-04 22294.12
    3     4     4     1.05942564    -0.95528291 -2605.15348061    -0.01902465    -0.00049499  0.35D-04  0.55D-04 22294.12
    3     5     5     1.05929169    -0.95524897 -2605.15344667    -0.01928713    -0.00051525  0.37D-04  0.56D-04 22294.12
    3     6     6     1.05918365    -0.95520170 -2605.15339940    -0.01924693    -0.00054263  0.37D-04  0.60D-04 22294.12
    3     7     7     1.05919136    -0.95520126 -2605.15339896    -0.01930739    -0.00054256  0.38D-04  0.60D-04 22294.12
    3     8     8     1.05918449    -0.95519599 -2605.15339369    -0.01946853    -0.00054514  0.37D-04  0.61D-04 22294.12
    4     1     1     1.05915596    -0.95460676 -2605.16126436    -0.00059431    -0.00005193  0.23D-05  0.65D-05 32751.18
    4     2     2     1.05914730    -0.95460593 -2605.16126353    -0.00059903    -0.00005274  0.24D-05  0.65D-05 32751.18
    4     3     3     1.05915110    -0.95460571 -2605.16126331    -0.00060194    -0.00005271  0.24D-05  0.65D-05 32751.18
    4     4     4     1.05964779    -0.95584203 -2605.15403973    -0.00055912    -0.00004588  0.21D-05  0.60D-05 32751.18
    4     5     5     1.05962335    -0.95583855 -2605.15403626    -0.00058958    -0.00004905  0.22D-05  0.62D-05 32751.18
    4     6     6     1.05958250    -0.95583135 -2605.15402905    -0.00062965    -0.00005446  0.25D-05  0.68D-05 32751.18
    4     7     7     1.05958193    -0.95583084 -2605.15402854    -0.00062958    -0.00005466  0.25D-05  0.68D-05 32751.18
    4     8     8     1.05957722    -0.95582981 -2605.15402751    -0.00063382    -0.00005540  0.25D-05  0.68D-05 32751.18
    5     1     1     1.05971268    -0.95467163 -2605.16132923    -0.00006487    -0.00000470  0.24D-06  0.49D-06 43199.93
    5     2     2     1.05971339    -0.95467161 -2605.16132922    -0.00006568    -0.00000468  0.24D-06  0.49D-06 43199.93
    5     3     3     1.05971314    -0.95467155 -2605.16132915    -0.00006584    -0.00000474  0.24D-06  0.49D-06 43199.93
    5     4     4     1.06015638    -0.95589949 -2605.15409719    -0.00005746    -0.00000437  0.23D-06  0.48D-06 43199.93
    5     5     5     1.06015793    -0.95589938 -2605.15409709    -0.00006083    -0.00000439  0.23D-06  0.49D-06 43199.93
    5     6     6     1.06015532    -0.95589912 -2605.15409683    -0.00006777    -0.00000488  0.26D-06  0.52D-06 43199.93
    5     7     7     1.06015593    -0.95589903 -2605.15409673    -0.00006819    -0.00000494  0.27D-06  0.52D-06 43199.93
    5     8     8     1.06015551    -0.95589894 -2605.15409665    -0.00006914    -0.00000500  0.27D-06  0.52D-06 43199.93
    6     1     1     1.05974832    -0.95467721 -2605.16133481    -0.00000558    -0.00000040  0.17D-07  0.47D-07 53658.70
    6     2     2     1.05974822    -0.95467717 -2605.16133477    -0.00000555    -0.00000040  0.17D-07  0.47D-07 53658.70
    6     3     3     1.05974838    -0.95467716 -2605.16133476    -0.00000561    -0.00000040  0.17D-07  0.46D-07 53658.70
    6     4     4     1.06019608    -0.95590492 -2605.15410262    -0.00000543    -0.00000042  0.22D-07  0.49D-07 53658.70
    6     5     5     1.06019598    -0.95590488 -2605.15410258    -0.00000550    -0.00000042  0.22D-07  0.49D-07 53658.70
    6     6     6     1.06019580    -0.95590486 -2605.15410256    -0.00000573    -0.00000043  0.22D-07  0.49D-07 53658.70
    6     7     7     1.06019843    -0.95590476 -2605.15410247    -0.00000573    -0.00000040  0.20D-07  0.47D-07 53658.70
    6     8     8     1.06019976    -0.95590464 -2605.15410234    -0.00000569    -0.00000039  0.21D-07  0.47D-07 53658.70
    7     1     1     1.05975292    -0.95467768 -2605.16133528    -0.00000047    -0.00000005  0.23D-08  0.60D-08 64104.26
    7     2     2     1.05975281    -0.95467764 -2605.16133524    -0.00000047    -0.00000005  0.23D-08  0.59D-08 64104.26
    7     3     3     1.05975297    -0.95467763 -2605.16133523    -0.00000047    -0.00000005  0.22D-08  0.58D-08 64104.26
    7     4     4     1.06020260    -0.95590541 -2605.15410312    -0.00000050    -0.00000005  0.25D-08  0.62D-08 64104.26
    7     5     5     1.06020247    -0.95590537 -2605.15410308    -0.00000050    -0.00000005  0.25D-08  0.62D-08 64104.26
    7     6     6     1.06020229    -0.95590536 -2605.15410306    -0.00000050    -0.00000005  0.25D-08  0.62D-08 64104.26
    7     7     7     1.06020348    -0.95590523 -2605.15410294    -0.00000047    -0.00000005  0.24D-08  0.61D-08 64104.26
    7     8     8     1.06020438    -0.95590510 -2605.15410280    -0.00000046    -0.00000005  0.24D-08  0.61D-08 64104.26
    8     1     1     1.05975592    -0.95467774 -2605.16133534    -0.00000006    -0.00000001  0.45D-09  0.77D-09 74522.58
    8     2     2     1.05975584    -0.95467770 -2605.16133530    -0.00000006    -0.00000001  0.44D-09  0.75D-09 74522.58
    8     3     3     1.05975587    -0.95467768 -2605.16133529    -0.00000006    -0.00000001  0.44D-09  0.75D-09 74522.58
    8     4     4     1.06020575    -0.95590547 -2605.15410318    -0.00000006    -0.00000001  0.46D-09  0.78D-09 74522.58
    8     5     5     1.06020564    -0.95590543 -2605.15410314    -0.00000006    -0.00000001  0.46D-09  0.77D-09 74522.58
    8     6     6     1.06020559    -0.95590542 -2605.15410312    -0.00000006    -0.00000001  0.46D-09  0.77D-09 74522.58
    8     7     7     1.06020598    -0.95590529 -2605.15410300    -0.00000006    -0.00000001  0.45D-09  0.78D-09 74522.58
    8     8     8     1.06020588    -0.95590516 -2605.15410286    -0.00000006    -0.00000001  0.44D-09  0.76D-09 74522.58
    9     1     1     1.05975718    -0.95467775 -2605.16133535    -0.00000001    -0.00000000  0.57D-10  0.11D-09 84929.61
    9     2     2     1.05975712    -0.95467770 -2605.16133531    -0.00000001    -0.00000000  0.55D-10  0.11D-09 84929.61
    9     3     3     1.05975712    -0.95467769 -2605.16133529    -0.00000001    -0.00000000  0.56D-10  0.11D-09 84929.61
    9     4     4     1.06020721    -0.95590548 -2605.15410318    -0.00000001    -0.00000000  0.65D-10  0.11D-09 84929.61
    9     5     5     1.06020715    -0.95590544 -2605.15410315    -0.00000001    -0.00000000  0.65D-10  0.11D-09 84929.61
    9     6     6     1.06020712    -0.95590543 -2605.15410313    -0.00000001    -0.00000000  0.64D-10  0.11D-09 84929.61
    9     7     7     1.06020720    -0.95590530 -2605.15410301    -0.00000001    -0.00000000  0.63D-10  0.11D-09 84929.61
    9     8     8     1.06020696    -0.95590517 -2605.15410287    -0.00000001    -0.00000000  0.65D-10  0.11D-09 84929.61
   10     1     1     1.05975774    -0.95467775 -2605.16133535    -0.00000000    -0.00000000  0.67D-11  0.18D-10 95340.25
   10     2     2     1.05975769    -0.95467771 -2605.16133531    -0.00000000    -0.00000000  0.65D-11  0.18D-10 95340.25
   10     3     3     1.05975769    -0.95467769 -2605.16133530    -0.00000000    -0.00000000  0.66D-11  0.18D-10 95340.25
   10     4     4     1.06020787    -0.95590548 -2605.15410319    -0.00000000    -0.00000000  0.73D-11  0.18D-10 95340.25
   10     5     5     1.06020783    -0.95590544 -2605.15410315    -0.00000000    -0.00000000  0.72D-11  0.18D-10 95340.25
   10     6     6     1.06020781    -0.95590543 -2605.15410313    -0.00000000    -0.00000000  0.72D-11  0.18D-10 95340.25
   10     7     7     1.06020777    -0.95590530 -2605.15410301    -0.00000000    -0.00000000  0.71D-11  0.18D-10 95340.25
   10     8     8     1.06020767    -0.95590517 -2605.15410287    -0.00000000    -0.00000000  0.71D-11  0.18D-10 95340.25
   11     1     1     1.05975788    -0.95467775 -2605.16133535    -0.00000000    -0.00000000  0.16D-11  0.27D-11105744.13
   11     2     2     1.05975783    -0.95467771 -2605.16133531    -0.00000000    -0.00000000  0.16D-11  0.26D-11105744.13
   11     3     3     1.05975782    -0.95467769 -2605.16133530    -0.00000000    -0.00000000  0.16D-11  0.26D-11105744.13
   11     4     4     1.06020802    -0.95590548 -2605.15410319    -0.00000000    -0.00000000  0.16D-11  0.26D-11105744.13
   11     5     5     1.06020798    -0.95590544 -2605.15410315    -0.00000000    -0.00000000  0.16D-11  0.26D-11105744.13
   11     6     6     1.06020797    -0.95590543 -2605.15410313    -0.00000000    -0.00000000  0.16D-11  0.26D-11105744.13
   11     7     7     1.06020792    -0.95590530 -2605.15410301    -0.00000000    -0.00000000  0.16D-11  0.27D-11105744.13
   11     8     8     1.06020780    -0.95590517 -2605.15410287    -0.00000000    -0.00000000  0.16D-11  0.26D-11105744.13
   12     1     1     1.05975790    -0.95467775 -2605.16133535    -0.00000000    -0.00000000  0.26D-12  0.41D-12116130.95
   12     2     2     1.05975786    -0.95467771 -2605.16133531    -0.00000000    -0.00000000  0.25D-12  0.40D-12116130.95
   12     3     3     1.05975785    -0.95467769 -2605.16133530    -0.00000000    -0.00000000  0.25D-12  0.40D-12116130.95
   12     4     4     1.06020806    -0.95590548 -2605.15410319    -0.00000000    -0.00000000  0.28D-12  0.41D-12116130.95
   12     5     5     1.06020802    -0.95590544 -2605.15410315    -0.00000000    -0.00000000  0.28D-12  0.40D-12116130.95
   12     6     6     1.06020801    -0.95590543 -2605.15410313    -0.00000000    -0.00000000  0.28D-12  0.40D-12116130.95
   12     7     7     1.06020796    -0.95590530 -2605.15410301    -0.00000000    -0.00000000  0.28D-12  0.41D-12116130.95
   12     8     8     1.06020783    -0.95590517 -2605.15410287    -0.00000000    -0.00000000  0.29D-12  0.40D-12116130.95
   13     1     1     1.05975791    -0.95467775 -2605.16133535    -0.00000000    -0.00000000  0.32D-13  0.75D-13126538.73
   13     2     2     1.05975787    -0.95467771 -2605.16133531    -0.00000000    -0.00000000  0.30D-13  0.71D-13126538.73
   13     3     3     1.05975786    -0.95467769 -2605.16133530    -0.00000000    -0.00000000  0.30D-13  0.71D-13126538.73
   13     4     4     1.06020808    -0.95590548 -2605.15410319    -0.00000000    -0.00000000  0.35D-13  0.76D-13126538.73
   13     5     5     1.06020804    -0.95590544 -2605.15410315    -0.00000000    -0.00000000  0.35D-13  0.75D-13126538.73
   13     6     6     1.06020802    -0.95590543 -2605.15410313    -0.00000000    -0.00000000  0.35D-13  0.75D-13126538.73
   13     7     7     1.06020797    -0.95590530 -2605.15410301    -0.00000000    -0.00000000  0.34D-13  0.77D-13126538.73
   13     8     8     1.06020785    -0.95590517 -2605.15410287    -0.00000000    -0.00000000  0.34D-13  0.76D-13126538.73
   14     1     1     1.05975792    -0.95467775 -2605.16133535     0.00000000    -0.00000000  0.63D-14  0.12D-13136964.81
   14     2     2     1.05975788    -0.95467771 -2605.16133531    -0.00000000    -0.00000000  0.59D-14  0.12D-13136964.81
   14     3     3     1.05975787    -0.95467769 -2605.16133530    -0.00000000    -0.00000000  0.59D-14  0.12D-13136964.81
   14     4     4     1.06020809    -0.95590548 -2605.15410319    -0.00000000    -0.00000000  0.64D-14  0.12D-13136964.81
   14     5     5     1.06020804    -0.95590544 -2605.15410315    -0.00000000    -0.00000000  0.63D-14  0.12D-13136964.81
   14     6     6     1.06020803    -0.95590543 -2605.15410313    -0.00000000    -0.00000000  0.63D-14  0.12D-13136964.81
   14     7     7     1.06020798    -0.95590530 -2605.15410301    -0.00000000    -0.00000000  0.63D-14  0.12D-13136964.81
   14     8     8     1.06020786    -0.95590517 -2605.15410287    -0.00000000    -0.00000000  0.64D-14  0.12D-13136964.81
   15     1     1     1.05975792    -0.95467775 -2605.16133535    -0.00000000    -0.00000000  0.11D-14  0.18D-14147383.30
   15     2     2     1.05975788    -0.95467771 -2605.16133531    -0.00000000    -0.00000000  0.11D-14  0.17D-14147383.30
   15     3     3     1.05975787    -0.95467769 -2605.16133530     0.00000000    -0.00000000  0.11D-14  0.17D-14147383.30
   15     4     4     1.06020809    -0.95590548 -2605.15410319    -0.00000000    -0.00000000  0.13D-14  0.19D-14147383.30
   15     5     5     1.06020805    -0.95590544 -2605.15410315    -0.00000000    -0.00000000  0.12D-14  0.19D-14147383.30
   15     6     6     1.06020804    -0.95590543 -2605.15410313    -0.00000000    -0.00000000  0.12D-14  0.19D-14147383.30
   15     7     7     1.06020799    -0.95590530 -2605.15410301    -0.00000000    -0.00000000  0.12D-14  0.19D-14147383.30
   15     8     8     1.06020786    -0.95590517 -2605.15410287    -0.00000000    -0.00000000  0.13D-14  0.19D-14147383.30
   16     1     1     1.05975792    -0.95467775 -2605.16133535     0.00000000    -0.00000000  0.14D-15  0.33D-15157775.25
   16     2     2     1.05975788    -0.95467771 -2605.16133531     0.00000000    -0.00000000  0.14D-15  0.32D-15157775.25
   16     3     3     1.05975787    -0.95467769 -2605.16133530     0.00000000    -0.00000000  0.14D-15  0.31D-15157775.25
   16     4     4     1.06020809    -0.95590548 -2605.15410319     0.00000000    -0.00000000  0.17D-15  0.37D-15157775.25
   16     5     5     1.06020805    -0.95590544 -2605.15410315    -0.00000000    -0.00000000  0.18D-15  0.37D-15157775.25
   16     6     6     1.06020804    -0.95590543 -2605.15410313     0.00000000    -0.00000000  0.17D-15  0.37D-15157775.25
   16     7     7     1.06020799    -0.95590530 -2605.15410301     0.00000000    -0.00000000  0.16D-15  0.38D-15157775.25
   16     8     8     1.06020787    -0.95590517 -2605.15410287    -0.00000000    -0.00000000  0.17D-15  0.37D-15157775.25
   17     1     1     1.05975792    -0.95467775 -2605.16133535    -0.00000000    -0.00000000  0.17D-16  0.58D-16168149.00
   17     2     2     1.05975788    -0.95467771 -2605.16133531    -0.00000000    -0.00000000  0.16D-16  0.59D-16168149.00
   17     3     3     1.05975787    -0.95467769 -2605.16133530    -0.00000000    -0.00000000  0.16D-16  0.57D-16168149.00
   17     4     4     1.06020809    -0.95590548 -2605.15410319    -0.00000000    -0.00000000  0.21D-16  0.67D-16168149.00
   17     5     5     1.06020805    -0.95590544 -2605.15410315     0.00000000    -0.00000000  0.20D-16  0.66D-16168149.00
   17     6     6     1.06020804    -0.95590543 -2605.15410313     0.00000000    -0.00000000  0.21D-16  0.66D-16168149.00
   17     7     7     1.06020799    -0.95590530 -2605.15410301     0.00000000    -0.00000000  0.21D-16  0.67D-16168149.00
   17     8     8     1.06020787    -0.95590517 -2605.15410287     0.00000000    -0.00000000  0.20D-16  0.66D-16168149.00


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.2%  38.6%
 P   0.2%  45.8%  12.9%

 Initialization:   0.8%
 Other:            1.3%

 Total CPU:   168149.0 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222//200/           0.0000001   0.0000001   0.0000000  -0.0027489  -0.0000647   0.0001651  -0.0082010   0.7907542
 222222202222///00          -0.0000002   0.0000001   0.0000000  -0.0009500  -0.0000666  -0.0035413   0.6889053  -0.3882823
 22222220222/2//00           0.6850052   0.0013179   0.0028220  -0.6848356  -0.0033523  -0.0013986  -0.0023071  -0.0024047
 222222202222//0/0           0.6850036   0.0013179   0.0028221   0.6848372   0.0033522   0.0013986   0.0023073   0.0024045
 22222220222/2/00/          -0.0027737  -0.0241957   0.6845768  -0.0033645   0.6848236   0.0057380   0.0001160   0.0000443
 222222202222//00/          -0.0014167   0.6845811   0.0241900  -0.0013817  -0.0057452   0.6848218   0.0034543  -0.0001125
 22222220222//20/0          -0.0027738  -0.0241955   0.6845802   0.0033644  -0.6848202  -0.0057380  -0.0001161  -0.0000443
 22222220222//2/00           0.0014167  -0.6845846  -0.0241900  -0.0013816  -0.0057455   0.6848182   0.0034545  -0.0001124
 22222220222/2/0/0          -0.0000000   0.0000001   0.0000000  -0.0036989  -0.0001313  -0.0033761   0.6807042   0.4024720

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971292   -0.002009   -0.003933   -0.000000   -0.000001    0.000000    0.000000    0.000000
 2           0.001869    0.970694   -0.034308    0.000000    0.000000   -0.000002   -0.000000    0.000000
 3           0.004002    0.034300    0.970688    0.000000    0.000000   -0.000000   -0.000002    0.000000
 4           0.000001   -0.000000   -0.000000   -0.003296    0.971070   -0.001959   -0.004771   -0.003375
 5          -0.000000    0.000000    0.000002   -0.000140    0.004753   -0.008147    0.971050   -0.000079
 6          -0.000000    0.000003   -0.000000   -0.004904    0.001983    0.971047    0.008136    0.000203
 7           0.000000   -0.000000   -0.000000    0.971025    0.003272    0.004898    0.000165   -0.010112
 8          -0.000000   -0.000000    0.000000    0.010101    0.003410   -0.000159    0.000063    0.971037

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971302   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.971302    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.971302   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.971095   -0.000000   -0.000000    0.000000    0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.971095    0.000000    0.000000   -0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.971095    0.000000    0.000000
 7           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.971095   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.971095


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97129207 (fixed)   0.97136940 (relaxed)   0.97130211 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019497   -0.00056733   -0.83323321
 Singles      0.01453706   -0.07166607   -0.08070485
 Pairs        0.04523251   -0.00000015   -0.04073969
 Total        1.05996454   -0.07223355   -0.95467775
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20665760
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.03993237
 One electron energy                -3613.44304994
 Two electron energy                 1008.28171459
 Virial quotient                       -0.93474130
 Correlation energy                    -0.95467775
 !MRCI STATE 1.2 Energy             -2605.161335352995

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.21858217 (Davidson, fixed reference)
 Cluster corrected energies         -2605.21844196 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.21858217 (Davidson, rotated reference)

 Cluster corrected energies         -2605.21604498 (Pople, fixed reference)
 Cluster corrected energies         -2605.21590419 (Pople, relaxed reference)
 Cluster corrected energies         -2605.21604498 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97069424 (fixed)   0.97136942 (relaxed)   0.97130213 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019497   -0.00056733   -0.83323331
 Singles      0.01453702   -0.07166601   -0.08070476
 Pairs        0.04523251   -0.00000009   -0.04073963
 Total        1.05996450   -0.07223343   -0.95467771
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20665760
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.03993359
 One electron energy                -3613.44305117
 Two electron energy                 1008.28171586
 Virial quotient                       -0.93474130
 Correlation energy                    -0.95467771
 !MRCI STATE 2.2 Energy             -2605.161335307729

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.21858208 (Davidson, fixed reference)
 Cluster corrected energies         -2605.21844188 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.21858208 (Davidson, rotated reference)

 Cluster corrected energies         -2605.21604489 (Pople, fixed reference)
 Cluster corrected energies         -2605.21590410 (Pople, relaxed reference)
 Cluster corrected energies         -2605.21604489 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.97068807 (fixed)   0.97136943 (relaxed)   0.97130213 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019497   -0.00056733   -0.83323341
 Singles      0.01453702   -0.07166600   -0.08070474
 Pairs        0.04523251   -0.00000000   -0.04073954
 Total        1.05996449   -0.07223333   -0.95467769
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20665760
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.03993378
 One electron energy                -3613.44305095
 Two electron energy                 1008.28171565
 Virial quotient                       -0.93474130
 Correlation energy                    -0.95467769
 !MRCI STATE 3.2 Energy             -2605.161335295794

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.21858206 (Davidson, fixed reference)
 Cluster corrected energies         -2605.21844186 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.21858206 (Davidson, rotated reference)

 Cluster corrected energies         -2605.21604487 (Pople, fixed reference)
 Cluster corrected energies         -2605.21590408 (Pople, relaxed reference)
 Cluster corrected energies         -2605.21604487 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97107018 (fixed)   0.97116198 (relaxed)   0.97109534 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019608   -0.00057827   -0.83626798
 Singles      0.01484758   -0.07237008   -0.08163114
 Pairs        0.04537232    0.00306909   -0.03800637
 Total        1.06041598   -0.06987926   -0.95590548
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19819770
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.05365145
 One electron energy                -3613.47722090
 Two electron energy                 1008.32311772
 Virial quotient                       -0.93473411
 Correlation energy                    -0.95590548
 !MRCI STATE 4.2 Energy             -2605.154103186020

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.21185515 (Davidson, fixed reference)
 Cluster corrected energies         -2605.21171604 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.21185515 (Davidson, rotated reference)

 Cluster corrected energies         -2605.20931673 (Pople, fixed reference)
 Cluster corrected energies         -2605.20917692 (Pople, relaxed reference)
 Cluster corrected energies         -2605.20931673 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97104953 (fixed)   0.97116200 (relaxed)   0.97109535 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019608   -0.00057827   -0.83344187
 Singles      0.01484755   -0.07237004   -0.08163107
 Pairs        0.04537231    0.00007220   -0.04083250
 Total        1.06041594   -0.07287610   -0.95590544
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19819770
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.05365103
 One electron energy                -3613.47722096
 Two electron energy                 1008.32311782
 Virial quotient                       -0.93473411
 Correlation energy                    -0.95590544
 !MRCI STATE 5.2 Energy             -2605.154103146391

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.21185507 (Davidson, fixed reference)
 Cluster corrected energies         -2605.21171595 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.21185507 (Davidson, rotated reference)

 Cluster corrected energies         -2605.20931665 (Pople, fixed reference)
 Cluster corrected energies         -2605.20917684 (Pople, relaxed reference)
 Cluster corrected energies         -2605.20931665 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.97104684 (fixed)   0.97116200 (relaxed)   0.97109536 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019608   -0.00057827   -0.83319978
 Singles      0.01484754   -0.07237002   -0.08163105
 Pairs        0.04537231   -0.00018453   -0.04107460
 Total        1.06041593   -0.07313282   -0.95590543
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19819770
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.05365109
 One electron energy                -3613.47722099
 Two electron energy                 1008.32311786
 Virial quotient                       -0.93473411
 Correlation energy                    -0.95590543
 !MRCI STATE 6.2 Energy             -2605.154103132440

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.21185504 (Davidson, fixed reference)
 Cluster corrected energies         -2605.21171593 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.21185504 (Davidson, rotated reference)

 Cluster corrected energies         -2605.20931662 (Pople, fixed reference)
 Cluster corrected energies         -2605.20917682 (Pople, relaxed reference)
 Cluster corrected energies         -2605.20931662 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97102486 (fixed)   0.97116203 (relaxed)   0.97109538 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019609   -0.00057825   -0.84204391
 Singles      0.01484750   -0.07236993   -0.08163093
 Pairs        0.04537229    0.00919391   -0.03223047
 Total        1.06041588   -0.06375427   -0.95590530
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19819770
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.05364445
 One electron energy                -3613.47721853
 Two electron energy                 1008.32311552
 Virial quotient                       -0.93473411
 Correlation energy                    -0.95590530
 !MRCI STATE 7.2 Energy             -2605.154103007547

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.21185487 (Davidson, fixed reference)
 Cluster corrected energies         -2605.21171575 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.21185487 (Davidson, rotated reference)

 Cluster corrected energies         -2605.20931645 (Pople, fixed reference)
 Cluster corrected energies         -2605.20917664 (Pople, relaxed reference)
 Cluster corrected energies         -2605.20931645 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97103690 (fixed)   0.97116208 (relaxed)   0.97109544 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019609   -0.00057825   -0.00077226
 Singles      0.01484741   -0.07236979   -0.08163072
 Pairs        0.04537226   -0.88290390   -0.87350218
 Total        1.06041576   -0.95585194   -0.95590517
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.19819770
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.05364961
 One electron energy                -3613.47722718
 Two electron energy                 1008.32312431
 Virial quotient                       -0.93473411
 Correlation energy                    -0.95590517
 !MRCI STATE 8.2 Energy             -2605.154102870830

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.21185461 (Davidson, fixed reference)
 Cluster corrected energies         -2605.21171549 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.21185461 (Davidson, rotated reference)

 Cluster corrected energies         -2605.20931619 (Pople, fixed reference)
 Cluster corrected energies         -2605.20917637 (Pople, relaxed reference)
 Cluster corrected energies         -2605.20931619 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       72.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3798.00       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    217783.97 174594.00  43176.51      7.69      0.85      4.75
 REAL TIME  *    219031.36 SEC
 DISK USED  *         3.78 GB (local),       11.58 GB (total)
 SF USED    *        29.71 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2605.21858217  AU                              
 SETTING HLSDIAG(5)     =     -2605.21858208  AU                              
 SETTING HLSDIAG(6)     =     -2605.21858206  AU                              
 SETTING HLSDIAG(7)     =     -2605.21185515  AU                              
 SETTING HLSDIAG(8)     =     -2605.21185507  AU                              
 SETTING HLSDIAG(9)     =     -2605.21185504  AU                              
 SETTING HLSDIAG(10)    =     -2605.21185487  AU                              
 SETTING HLSDIAG(11)    =     -2605.21185461  AU                              


         HLSDIAG
    -2605.557120
    -2605.557120
    -2605.557120
    -2605.218582
    -2605.218582
    -2605.218582
    -2605.211855
    -2605.211855
    -2605.211855
    -2605.211855
    -2605.211855
                                                  

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

 Time for Seward_LS:      25.57 sec

       61297637. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    15623 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     25.58 sec, REAL time:     25.89 sec


 SORTLS1 read    63961723. and wrote    63961723. SO integrals in   249 records. CPU time:      0.47 sec, REAL time:      0.82 sec
 SORTLS2 read    63961723. and wrote   316904997. SO integrals in     9 records. CPU time:      0.43 sec, REAL time:      1.20 sec

 FILE SIZES: FILE 1:  1099.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1099.9 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1048.93       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3798.00       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    217811.61     27.62 174594.00  43176.51      7.69      0.85      4.75
 REAL TIME  *    219060.62 SEC
 DISK USED  *         3.78 GB (local),       14.75 GB (total)
 SF USED    *        29.71 GB
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

 Original energies:  -2605.492377  -2605.492377  -2605.492377
 Replaced energies:  -2605.557120  -2605.557120  -2605.557120

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:  -2605.161335  -2605.161335  -2605.161335  -2605.154103  -2605.154103  -2605.154103  -2605.154103  -2605.154103
 Replaced energies:  -2605.218582  -2605.218582  -2605.218582  -2605.211855  -2605.211855  -2605.211855  -2605.211855  -2605.211855

 >>> Fock matrix approximation error in all internal so: 
   15.589071829177481       (exact)    15.711202414253943       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -37.695085950036983       (exact)   -37.988392226407605       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   18.162447054347343       (exact)    18.304408799112917       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -31.968414915499960       (exact)   -32.526982410881367       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -23.211502677587681       (exact)   -23.616153386683234       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -20.750879720164104       (exact)   -21.113598765504012       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0667209880959205       (exact)   -1.0859680325410932       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.97311668278716346       (exact)  -0.98860705481024769       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.65982405995078419       (exact)  -0.67206874137027850       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   17.085285833310518       (exact)    17.210283039674913       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -41.409219196623496       (exact)   -41.711095409636329       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   20.007973589806930       (exact)    20.155021125585066       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.37572617347524717       (exact)   0.38103773420386733       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.1042607841491846E-002  (exact)    1.3006373682684064E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.29291184013879734       (exact)   0.29677387446743830       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -35.296800053764002       (exact)   -35.865481418972685       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -25.490453676539378       (exact)   -25.900035130348428       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -22.611338729171091       (exact)   -22.975510963499406       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   29.695126715992689       (exact)    30.201684392168985       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.6367672731915537       (exact)   -6.7485785738452027       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -38.856878522702765       (exact)   -39.520773734524873       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -16.738792752405278       (exact)   -17.025141063143042       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.4481385988997975       (exact)    3.5084220869277098       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   21.947085042194043       (exact)    22.321069651433405       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.0717097871357774E-003  (exact)    7.7348486696529606E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.14091201529371403       (exact)  -0.14348958310958093       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.14599578013336392       (exact)   0.14784477671578480       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   27.507545429284708       (exact)    27.727528571866429       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.0918446718412129       (exact)   -7.1600842928216091       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -34.451350840641815       (exact)   -34.714034912806490       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -14.560656880545126       (exact)   -14.824309727859205       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   37.516168615916250       (exact)    38.173714844784939       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -19.348193215192737       (exact)   -19.674303969398512       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.16519784665769086       (exact)  -0.16849688290129089       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.8840675571501465E-002  (exact)    9.0298922984536886E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.26736261630750491       (exact)  -0.27105438456531017       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   17.300345819596401       (exact)    17.576491605790569       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -41.523823599688889       (exact)   -42.191411902154627       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   19.582033320945591       (exact)    19.899922719187554       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -29.486847868524514       (exact)   -29.700556750659590       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9896282024188743       (exact)    6.0303133259083390       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   38.750767473325340       (exact)    39.034896297773393       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.56789545443438660       (exact)  -0.57606148620258413       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.27973008918110837       (exact)  -0.28476051418817150       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.5677228745946595E-002  (exact)   -7.8830214016221589E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   40.625966206899065       (exact)    41.312707033599466       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   29.369782216202676       (exact)    29.866295270049612       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   26.381270235672016       (exact)    26.827309577703641       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   31.298681413213366       (exact)    31.544396380050294       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.5454053405725574       (exact)   -6.5954429252244937       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -40.447662921859141       (exact)   -40.762394869030501       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.3658253316475810       (exact)    1.3890985630340762       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.93152346400249375       (exact)   0.94791471278103501       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.77029871524542237       (exact)   0.78450421662343417       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -36.819875801858288       (exact)   -37.464117058547977       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -26.745733184626250       (exact)   -27.212540992164882       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -24.168182481867309       (exact)   -24.588628751180806       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -34.130953183403797       (exact)   -34.379141453716983       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.7134862569411951       (exact)    7.7735130323375410       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   44.553162941012900       (exact)    44.878028849735998       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -40.791894086426161       (exact)   -41.447111109618099       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -29.328969721554230       (exact)   -29.801429425415019       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -26.173037956346011       (exact)   -26.596309120784845       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.50733359281330370       (exact)  -0.51497686744040361       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.8761892484628609E-003  (exact)    5.0454091404833167E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.24344144821733324       (exact)  -0.24826826547858397       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   19.452889306011546       (exact)    19.785423900259779       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -47.576028035531294       (exact)   -48.386782142220106       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   22.995050720607125       (exact)    23.385343324690165       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   11.451116596221233       (exact)    11.645236908101177       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -28.117562161076073       (exact)   -28.591632285529958       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   13.664635533065029       (exact)    13.893412989549322       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2605.55711970

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00     610.95    -680.12      -0.05    -176.09      93.25       1.04
                           -0.00    -532.25   -1108.69      -0.00    1031.43    -169.26     -99.75     204.65       6.83    -107.70

    2   2.2  0.5  0.5       0.00       0.00       0.00    -610.95      -0.00     940.52       0.90      45.40    -240.26      -0.56
                          532.25      -0.00    -455.98   -1031.43       0.00    -792.40     241.21     148.59       6.23     261.02

    3   3.2  0.5  0.5       0.00       0.00       0.00     680.12    -940.52      -0.00      -0.93     220.54     123.90       1.69
                         1108.69     455.98      -0.00     169.26     792.40      -0.00    -116.22     132.84       4.22    -126.12

    4   1.2  0.5 -0.5       0.00    -610.95     680.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1031.43    -169.26       0.00     532.25    1108.69       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5     610.95      -0.00    -940.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1031.43      -0.00    -792.40    -532.25       0.00     455.98       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5    -680.12     940.52      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          169.26     792.40       0.00   -1108.69    -455.98       0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5      -0.05       0.90      -0.93       0.00       0.00       0.00   74300.40       0.00       0.00       0.00
                           99.75    -241.21     116.22      -0.00      -0.00      -0.00     -34.26     -21.35     677.00     -27.30

    8   2.2  1.5  1.5    -176.09      45.40     220.54       0.00       0.00       0.00       0.00   74300.42       0.00       0.00
                         -204.65    -148.59    -132.84      -0.00      -0.00      -0.00      21.35      -1.41       0.50      16.04

    9   3.2  1.5  1.5      93.25    -240.26     123.90       0.00       0.00       0.00       0.00       0.00   74300.42       0.00
                           -6.83      -6.23      -4.22      -0.00      -0.00      -0.00    -677.00      -0.50      35.77    -771.64

   10   4.2  1.5  1.5       1.04      -0.56       1.69       0.00       0.00       0.00       0.00       0.00       0.00   75776.81
                          107.70    -261.02     126.12      -0.00      -0.00      -0.00      27.30     -16.04     771.64      -4.09

   11   5.2  1.5  1.5    -109.16     262.01    -123.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.37       0.07       1.85      -0.00      -0.00      -0.00     772.52       1.81      42.83     677.40

   12   6.2  1.5  1.5     185.89     -37.76    -244.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -222.69    -160.82    -142.66      -0.00      -0.00      -0.00       7.69       5.09       2.77       4.41

   13   7.2  1.5  1.5       3.62       1.79       0.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          187.19     -41.84    -244.95      -0.00      -0.00      -0.00       2.20    -768.35     -22.42      -1.68

   14   8.2  1.5  1.5    -256.10    -185.14    -166.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -105.48      21.73     138.30      -0.00      -0.00      -0.00       0.93    -459.14     -11.45       2.51

   15   1.2  1.5  0.5       0.00       0.00       0.00      -0.03       0.52      -0.54       4.82       0.28       5.58     -25.56
                          200.36     -41.90    -258.93      57.59    -139.26      67.10       0.89    -395.00      57.90       1.33

   16   2.2  1.5  0.5       0.00       0.00       0.00    -101.67      26.21     127.33       8.64      25.40    -379.64      -6.81
                            8.74       5.96       4.93    -118.15     -85.79     -76.70     396.52     -15.09     -15.88    -441.58

   17   3.2  1.5  0.5       0.00       0.00       0.00      53.84    -138.71      71.54      -1.54     389.26      53.86      -0.54
                         -235.70    -171.21    -154.71      -3.94      -3.60      -2.44      23.67      -1.66      -0.05     -35.91

   18   4.2  1.5  0.5       0.00       0.00       0.00       0.60      -0.32       0.97       4.57      -0.03      -3.15     -27.29
                         -215.15      48.62     280.85      62.18    -150.70      72.82       1.79     441.24      85.93       0.50

   19   5.2  1.5  0.5       0.00       0.00       0.00     -63.03     151.27     -71.34       1.88     446.79     -33.68      -1.95
                         -257.39    -185.06    -165.15       1.37       0.04       1.07      -5.93       1.72       1.24      12.99

   20   6.2  1.5  0.5       0.00       0.00       0.00     107.32     -21.80    -141.04     -14.12      -5.58    -425.46      -3.75
                           -3.20       0.03      -1.54    -128.57     -92.85     -82.37    -431.75     -16.71      44.84     392.11

   21   7.2  1.5  0.5       0.00       0.00       0.00       2.09       1.04       0.29      -0.38       3.98       2.93     783.77
                          122.58    -299.80     144.90     108.07     -24.15    -141.42     -22.87      -8.61     447.80       2.87

   22   8.2  1.5  0.5       0.00       0.00       0.00    -147.86    -106.89     -96.01     503.25       0.28       3.15       6.95
                           72.25    -177.40      86.21     -60.90      12.54      79.85      14.33       8.81    -253.34       2.55

   23   1.2  1.5 -0.5      -0.03       0.52      -0.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -57.59     139.26     -67.10     200.36     -41.90    -258.93      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5    -101.67      26.21     127.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          118.15      85.79      76.70       8.74       5.96       4.93      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5      53.84    -138.71      71.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.94       3.60       2.44    -235.70    -171.21    -154.71      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5       0.60      -0.32       0.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -62.18     150.70     -72.82    -215.15      48.62     280.85      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5     -63.03     151.27     -71.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.37      -0.04      -1.07    -257.39    -185.06    -165.15      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5     107.32     -21.80    -141.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          128.57      92.85      82.37      -3.20       0.03      -1.54      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5       2.09       1.04       0.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -108.07      24.15     141.42     122.58    -299.80     144.90      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5    -147.86    -106.89     -96.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           60.90     -12.54     -79.85      72.25    -177.40      86.21      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00      -0.05       0.90      -0.93       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -99.75     241.21    -116.22      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00    -176.09      45.40     220.54       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     204.65     148.59     132.84      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00      93.25    -240.26     123.90       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       6.83       6.23       4.22      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       1.04      -0.56       1.69       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -107.70     261.02    -126.12      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00    -109.16     262.01    -123.56       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -2.37      -0.07      -1.85      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00     185.89     -37.76    -244.30       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     222.69     160.82     142.66      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       3.62       1.79       0.50       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -187.19      41.84     244.95      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00    -256.10    -185.14    -166.30       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     105.48     -21.73    -138.30      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5    -109.16     185.89       3.62    -256.10       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.37     222.69    -187.19     105.48    -200.36      -8.74     235.70     215.15     257.39       3.20

    2   2.2  0.5  0.5     262.01     -37.76       1.79    -185.14       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.07     160.82      41.84     -21.73      41.90      -5.96     171.21     -48.62     185.06      -0.03

    3   3.2  0.5  0.5    -123.56    -244.30       0.50    -166.30       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.85     142.66     244.95    -138.30     258.93      -4.93     154.71    -280.85     165.15       1.54

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.03    -101.67      53.84       0.60     -63.03     107.32
                            0.00       0.00       0.00       0.00     -57.59     118.15       3.94     -62.18      -1.37     128.57

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.52      26.21    -138.71      -0.32     151.27     -21.80
                            0.00       0.00       0.00       0.00     139.26      85.79       3.60     150.70      -0.04      92.85

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.54     127.33      71.54       0.97     -71.34    -141.04
                            0.00       0.00       0.00       0.00     -67.10      76.70       2.44     -72.82      -1.07      82.37

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       4.82       8.64      -1.54       4.57       1.88     -14.12
                         -772.52      -7.69      -2.20      -0.93      -0.89    -396.52     -23.67      -1.79       5.93     431.75

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.28      25.40     389.26      -0.03     446.79      -5.58
                           -1.81      -5.09     768.35     459.14     395.00      15.09       1.66    -441.24      -1.72      16.71

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00       5.58    -379.64      53.86      -3.15     -33.68    -425.46
                          -42.83      -2.77      22.42      11.45     -57.90      15.88       0.05     -85.93      -1.24     -44.84

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00     -25.56      -6.81      -0.54     -27.29      -1.95      -3.75
                         -677.40      -4.41       1.68      -2.51      -1.33     441.58      35.91      -0.50     -12.99    -392.11

   11   5.2  1.5  1.5   75776.83       0.00       0.00       0.00       1.17    -443.84     -17.31       0.59      -1.82    -393.10
                           -1.03       2.35       8.33      -6.63       0.96      -4.53       1.02      -9.94       0.15       3.39

   12   6.2  1.5  1.5       0.00   75776.83       0.00       0.00      -3.19     -18.85     446.51       0.91     391.24       0.68
                           -2.35       1.25    -688.69    1165.06    -444.73       0.01      -3.67     389.76       3.32       0.03

   13   7.2  1.5  1.5       0.00       0.00   75776.87       0.00      47.85       4.36       2.15    -742.37      -0.54       2.69
                           -8.33     688.69       0.80       4.62      -7.32     -13.86     440.86       0.74    -375.73      -5.05

   14   8.2  1.5  1.5       0.00       0.00       0.00   75776.93    -513.79      -1.03      -2.20      -4.30      -0.17      -0.35
                            6.63   -1165.06      -4.62       0.67       9.09       9.57    -253.01      11.27    -679.67      -6.41

   15   1.2  1.5  0.5       1.17      -3.19      47.85    -513.79   74300.40       0.00       0.00       0.00       0.00       0.00
                           -0.96     444.73       7.32      -9.09     -11.42      -7.12     225.67      -9.10    -257.51      -2.56

   16   2.2  1.5  0.5    -443.84     -18.85       4.36      -1.03       0.00   74300.42       0.00       0.00       0.00       0.00
                            4.53      -0.01      13.86      -9.57       7.12      -0.47       0.17       5.35      -0.60      -1.70

   17   3.2  1.5  0.5     -17.31     446.51       2.15      -2.20       0.00       0.00   74300.42       0.00       0.00       0.00
                           -1.02       3.67    -440.86     253.01    -225.67      -0.17      11.92    -257.21     -14.28      -0.92

   18   4.2  1.5  0.5       0.59       0.91    -742.37      -4.30       0.00       0.00       0.00   75776.81       0.00       0.00
                            9.94    -389.76      -0.74     -11.27       9.10      -5.35     257.21      -1.36    -225.80      -1.47

   19   5.2  1.5  0.5      -1.82     391.24      -0.54      -0.17       0.00       0.00       0.00       0.00   75776.83       0.00
                           -0.15      -3.32     375.73     679.67     257.51       0.60      14.28     225.80      -0.34       0.78

   20   6.2  1.5  0.5    -393.10       0.68       2.69      -0.35       0.00       0.00       0.00       0.00       0.00   75776.83
                           -3.39      -0.03       5.05       6.41       2.56       1.70       0.92       1.47      -0.78       0.42

   21   7.2  1.5  0.5       1.62       1.54      -0.51       1.57       0.00       0.00       0.00       0.00       0.00       0.00
                         -383.88      -4.90      -0.25      -0.14       0.73    -256.12      -7.47      -0.56      -2.78     229.56

   22   8.2  1.5  0.5      -0.02       0.21      -2.08      -0.48       0.00       0.00       0.00       0.00       0.00       0.00
                         -681.17      -6.27      -0.25      -0.26       0.31    -153.05      -3.82       0.84       2.21    -388.35

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       5.57       0.32       6.44     -29.52       1.35      -3.68
                           -0.00      -0.00      -0.00      -0.00       1.03    -456.10      66.86       1.54      -1.11     513.53

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       9.98      29.32    -438.37      -7.87    -512.50     -21.76
                           -0.00      -0.00      -0.00      -0.00     457.86     -17.43     -18.34    -509.89       5.23      -0.01

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00      -1.77     449.47      62.19      -0.63     -19.99     515.59
                           -0.00      -0.00      -0.00      -0.00      27.33      -1.92      -0.06     -41.47      -1.17       4.24

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       5.28      -0.03      -3.64     -31.51       0.68       1.05
                           -0.00      -0.00      -0.00      -0.00       2.07     509.50      99.22       0.58      11.48    -450.06

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       2.17     515.91     -38.89      -2.25      -2.10     451.76
                           -0.00      -0.00      -0.00      -0.00      -6.85       1.99       1.43      14.99      -0.17      -3.83

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00     -16.30      -6.45    -491.28      -4.33    -453.91       0.79
                           -0.00      -0.00      -0.00      -0.00    -498.55     -19.29      51.78     452.77      -3.91      -0.03

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.44       4.60       3.39     905.01       1.87       1.78
                           -0.00      -0.00      -0.00      -0.00     -26.41      -9.94     517.07       3.32    -443.26      -5.65

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00     581.11       0.33       3.64       8.02      -0.02       0.24
                           -0.00      -0.00      -0.00      -0.00      16.55      10.17    -292.53       2.94    -786.55      -7.24

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

    1   1.2  0.5  0.5       0.00       0.00      -0.03    -101.67      53.84       0.60     -63.03     107.32       2.09    -147.86
                         -122.58     -72.25      57.59    -118.15      -3.94      62.18       1.37    -128.57     108.07     -60.90

    2   2.2  0.5  0.5       0.00       0.00       0.52      26.21    -138.71      -0.32     151.27     -21.80       1.04    -106.89
                          299.80     177.40    -139.26     -85.79      -3.60    -150.70       0.04     -92.85     -24.15      12.54

    3   3.2  0.5  0.5       0.00       0.00      -0.54     127.33      71.54       0.97     -71.34    -141.04       0.29     -96.01
                         -144.90     -86.21      67.10     -76.70      -2.44      72.82       1.07     -82.37    -141.42      79.85

    4   1.2  0.5 -0.5       2.09    -147.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -108.07      60.90    -200.36      -8.74     235.70     215.15     257.39       3.20    -122.58     -72.25

    5   2.2  0.5 -0.5       1.04    -106.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           24.15     -12.54      41.90      -5.96     171.21     -48.62     185.06      -0.03     299.80     177.40

    6   3.2  0.5 -0.5       0.29     -96.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          141.42     -79.85     258.93      -4.93     154.71    -280.85     165.15       1.54    -144.90     -86.21

    7   1.2  1.5  1.5      -0.38     503.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           22.87     -14.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5       3.98       0.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.61      -8.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       2.93       3.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -447.80     253.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5     783.77       6.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.87      -2.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       1.62      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          383.88     681.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5       1.54       0.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.90       6.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5      -0.51      -2.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.25       0.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       1.57      -0.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.14       0.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       5.57       9.98      -1.77       5.28       2.17     -16.30      -0.44     581.11
                           -0.73      -0.31      -1.03    -457.86     -27.33      -2.07       6.85     498.55      26.41     -16.55

   16   2.2  1.5  0.5       0.00       0.00       0.32      29.32     449.47      -0.03     515.91      -6.45       4.60       0.33
                          256.12     153.05     456.10      17.43       1.92    -509.50      -1.99      19.29       9.94     -10.17

   17   3.2  1.5  0.5       0.00       0.00       6.44    -438.37      62.19      -3.64     -38.89    -491.28       3.39       3.64
                            7.47       3.82     -66.86      18.34       0.06     -99.22      -1.43     -51.78    -517.07     292.53

   18   4.2  1.5  0.5       0.00       0.00     -29.52      -7.87      -0.63     -31.51      -2.25      -4.33     905.01       8.02
                            0.56      -0.84      -1.54     509.89      41.47      -0.58     -14.99    -452.77      -3.32      -2.94

   19   5.2  1.5  0.5       0.00       0.00       1.35    -512.50     -19.99       0.68      -2.10    -453.91       1.87      -0.02
                            2.78      -2.21       1.11      -5.23       1.17     -11.48       0.17       3.91     443.26     786.55

   20   6.2  1.5  0.5       0.00       0.00      -3.68     -21.76     515.59       1.05     451.76       0.79       1.78       0.24
                         -229.56     388.35    -513.53       0.01      -4.24     450.06       3.83       0.03       5.65       7.24

   21   7.2  1.5  0.5   75776.87       0.00      55.25       5.04       2.48    -857.22      -0.63       3.11      -0.59      -2.40
                            0.27       1.54      -8.45     -16.00     509.06       0.85    -433.85      -5.83       0.28       0.28

   22   8.2  1.5  0.5       0.00   75776.93    -593.28      -1.19      -2.54      -4.96      -0.20      -0.40       1.81      -0.56
                           -1.54       0.22      10.50      11.05    -292.15      13.02    -784.82      -7.41       0.16       0.30

   23   1.2  1.5 -0.5      55.25    -593.28   74300.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.45     -10.50      11.42       7.12    -225.67       9.10     257.51       2.56       0.73       0.31

   24   2.2  1.5 -0.5       5.04      -1.19       0.00   74300.42       0.00       0.00       0.00       0.00       0.00       0.00
                           16.00     -11.05      -7.12       0.47      -0.17      -5.35       0.60       1.70    -256.12    -153.05

   25   3.2  1.5 -0.5       2.48      -2.54       0.00       0.00   74300.42       0.00       0.00       0.00       0.00       0.00
                         -509.06     292.15     225.67       0.17     -11.92     257.21      14.28       0.92      -7.47      -3.82

   26   4.2  1.5 -0.5    -857.22      -4.96       0.00       0.00       0.00   75776.81       0.00       0.00       0.00       0.00
                           -0.85     -13.02      -9.10       5.35    -257.21       1.36     225.80       1.47      -0.56       0.84

   27   5.2  1.5 -0.5      -0.63      -0.20       0.00       0.00       0.00       0.00   75776.83       0.00       0.00       0.00
                          433.85     784.82    -257.51      -0.60     -14.28    -225.80       0.34      -0.78      -2.78       2.21

   28   6.2  1.5 -0.5       3.11      -0.40       0.00       0.00       0.00       0.00       0.00   75776.83       0.00       0.00
                            5.83       7.41      -2.56      -1.70      -0.92      -1.47       0.78      -0.42     229.56    -388.35

   29   7.2  1.5 -0.5      -0.59       1.81       0.00       0.00       0.00       0.00       0.00       0.00   75776.87       0.00
                           -0.28      -0.16      -0.73     256.12       7.47       0.56       2.78    -229.56      -0.27      -1.54

   30   8.2  1.5 -0.5      -2.40      -0.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00   75776.93
                           -0.28      -0.30      -0.31     153.05       3.82      -0.84      -2.21     388.35       1.54      -0.22

   31   1.2  1.5 -1.5       0.00       0.00       4.82       0.28       5.58     -25.56       1.17      -3.19      47.85    -513.79
                           -0.00      -0.00       0.89    -395.00      57.90       1.33      -0.96     444.73       7.32      -9.09

   32   2.2  1.5 -1.5       0.00       0.00       8.64      25.40    -379.64      -6.81    -443.84     -18.85       4.36      -1.03
                           -0.00      -0.00     396.52     -15.09     -15.88    -441.58       4.53      -0.01      13.86      -9.57

   33   3.2  1.5 -1.5       0.00       0.00      -1.54     389.26      53.86      -0.54     -17.31     446.51       2.15      -2.20
                           -0.00      -0.00      23.67      -1.66      -0.05     -35.91      -1.02       3.67    -440.86     253.01

   34   4.2  1.5 -1.5       0.00       0.00       4.57      -0.03      -3.15     -27.29       0.59       0.91    -742.37      -4.30
                           -0.00      -0.00       1.79     441.24      85.93       0.50       9.94    -389.76      -0.74     -11.27

   35   5.2  1.5 -1.5       0.00       0.00       1.88     446.79     -33.68      -1.95      -1.82     391.24      -0.54      -0.17
                           -0.00      -0.00      -5.93       1.72       1.24      12.99      -0.15      -3.32     375.73     679.67

   36   6.2  1.5 -1.5       0.00       0.00     -14.12      -5.58    -425.46      -3.75    -393.10       0.68       2.69      -0.35
                           -0.00      -0.00    -431.75     -16.71      44.84     392.11      -3.39      -0.03       5.05       6.41

   37   7.2  1.5 -1.5       0.00       0.00      -0.38       3.98       2.93     783.77       1.62       1.54      -0.51       1.57
                           -0.00      -0.00     -22.87      -8.61     447.80       2.87    -383.88      -4.90      -0.25      -0.14

   38   8.2  1.5 -1.5       0.00       0.00     503.25       0.28       3.15       6.95      -0.02       0.21      -2.08      -0.48
                           -0.00      -0.00      14.33       8.81    -253.34       2.55    -681.17      -6.27      -0.25      -0.26


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5      -0.05    -176.09      93.25       1.04    -109.16     185.89       3.62    -256.10
                           99.75    -204.65      -6.83     107.70       2.37    -222.69     187.19    -105.48

    5   2.2  0.5 -0.5       0.90      45.40    -240.26      -0.56     262.01     -37.76       1.79    -185.14
                         -241.21    -148.59      -6.23    -261.02       0.07    -160.82     -41.84      21.73

    6   3.2  0.5 -0.5      -0.93     220.54     123.90       1.69    -123.56    -244.30       0.50    -166.30
                          116.22    -132.84      -4.22     126.12       1.85    -142.66    -244.95     138.30

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

   23   1.2  1.5 -0.5       4.82       8.64      -1.54       4.57       1.88     -14.12      -0.38     503.25
                           -0.89    -396.52     -23.67      -1.79       5.93     431.75      22.87     -14.33

   24   2.2  1.5 -0.5       0.28      25.40     389.26      -0.03     446.79      -5.58       3.98       0.28
                          395.00      15.09       1.66    -441.24      -1.72      16.71       8.61      -8.81

   25   3.2  1.5 -0.5       5.58    -379.64      53.86      -3.15     -33.68    -425.46       2.93       3.15
                          -57.90      15.88       0.05     -85.93      -1.24     -44.84    -447.80     253.34

   26   4.2  1.5 -0.5     -25.56      -6.81      -0.54     -27.29      -1.95      -3.75     783.77       6.95
                           -1.33     441.58      35.91      -0.50     -12.99    -392.11      -2.87      -2.55

   27   5.2  1.5 -0.5       1.17    -443.84     -17.31       0.59      -1.82    -393.10       1.62      -0.02
                            0.96      -4.53       1.02      -9.94       0.15       3.39     383.88     681.17

   28   6.2  1.5 -0.5      -3.19     -18.85     446.51       0.91     391.24       0.68       1.54       0.21
                         -444.73       0.01      -3.67     389.76       3.32       0.03       4.90       6.27

   29   7.2  1.5 -0.5      47.85       4.36       2.15    -742.37      -0.54       2.69      -0.51      -2.08
                           -7.32     -13.86     440.86       0.74    -375.73      -5.05       0.25       0.25

   30   8.2  1.5 -0.5    -513.79      -1.03      -2.20      -4.30      -0.17      -0.35       1.57      -0.48
                            9.09       9.57    -253.01      11.27    -679.67      -6.41       0.14       0.26

   31   1.2  1.5 -1.5   74300.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           34.26      21.35    -677.00      27.30     772.52       7.69       2.20       0.93

   32   2.2  1.5 -1.5       0.00   74300.42       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.35       1.41      -0.50     -16.04       1.81       5.09    -768.35    -459.14

   33   3.2  1.5 -1.5       0.00       0.00   74300.42       0.00       0.00       0.00       0.00       0.00
                          677.00       0.50     -35.77     771.64      42.83       2.77     -22.42     -11.45

   34   4.2  1.5 -1.5       0.00       0.00       0.00   75776.81       0.00       0.00       0.00       0.00
                          -27.30      16.04    -771.64       4.09     677.40       4.41      -1.68       2.51

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   75776.83       0.00       0.00       0.00
                         -772.52      -1.81     -42.83    -677.40       1.03      -2.35      -8.33       6.63

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   75776.83       0.00       0.00
                           -7.69      -5.09      -2.77      -4.41       2.35      -1.25     688.69   -1165.06

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   75776.87       0.00
                           -2.20     768.35      22.42       1.68       8.33    -688.69      -0.80      -4.62

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   75776.93
                           -0.93     459.14      11.45      -2.51      -6.63    1165.06       4.62      -0.67


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2605.56313037    -0.00601067    -1319.19      0.00000000        0.00      0.0000
     2 -2605.56313036    -0.00601066    -1319.19      0.00000001        0.00      0.0000
     3 -2605.56313035    -0.00601065    -1319.19      0.00000002        0.00      0.0000
     4 -2605.56313034    -0.00601065    -1319.18      0.00000003        0.01      0.0000
     5 -2605.54521239     0.01190730     2613.35      0.01791798     3932.54      0.4876
     6 -2605.54521239     0.01190731     2613.35      0.01791798     3932.54      0.4876
     7 -2605.22425271     0.33286698    73055.86      0.33887766    74375.05      9.2213
     8 -2605.22407647     0.33304323    73094.54      0.33905390    74413.73      9.2261
     9 -2605.22387599     0.33324371    73138.54      0.33925438    74457.73      9.2316
    10 -2605.22382119     0.33329851    73150.57      0.33930918    74469.76      9.2331
    11 -2605.22365610     0.33346359    73186.80      0.33947427    74505.99      9.2376
    12 -2605.22352456     0.33359514    73215.67      0.33960581    74534.86      9.2411
    13 -2605.21862232     0.33849738    74291.59      0.34450805    75610.78      9.3745
    14 -2605.21844461     0.33867509    74330.59      0.34468576    75649.78      9.3794
    15 -2605.21829625     0.33882345    74363.15      0.34483412    75682.34      9.3834
    16 -2605.21820345     0.33891624    74383.52      0.34492692    75702.71      9.3859
    17 -2605.21806571     0.33905399    74413.75      0.34506466    75732.94      9.3897
    18 -2605.21802810     0.33909160    74422.00      0.34510227    75741.19      9.3907
    19 -2605.21801811     0.33910158    74424.20      0.34511226    75743.39      9.3910
    20 -2605.21798118     0.33913852    74432.30      0.34514919    75751.49      9.3920
    21 -2605.21791661     0.33920309    74446.47      0.34521376    75765.66      9.3937
    22 -2605.21786720     0.33925249    74457.32      0.34526316    75776.51      9.3951
    23 -2605.21773405     0.33938565    74486.54      0.34539632    75805.73      9.3987
    24 -2605.21768599     0.33943371    74497.09      0.34544438    75816.28      9.4000
    25 -2605.21415788     0.34296182    75271.42      0.34897249    76590.61      9.4960
    26 -2605.21390266     0.34321703    75327.43      0.34922771    76646.62      9.5030
    27 -2605.20883109     0.34828861    76440.51      0.35429928    77759.70      9.6410
    28 -2605.20873695     0.34838274    76461.17      0.35439341    77780.36      9.6435
    29 -2605.20865299     0.34846671    76479.60      0.35447738    77798.79      9.6458
    30 -2605.20862558     0.34849412    76485.62      0.35450479    77804.81      9.6466
    31 -2605.20855886     0.34856084    76500.26      0.35457151    77819.45      9.6484
    32 -2605.20842942     0.34869027    76528.67      0.35470095    77847.86      9.6519
    33 -2605.20407738     0.35304232    77483.83      0.35905299    78803.02      9.7703
    34 -2605.20398337     0.35313633    77504.46      0.35914700    78823.65      9.7729
    35 -2605.20394781     0.35317189    77512.27      0.35918256    78831.46      9.7739
    36 -2605.20384397     0.35327572    77535.06      0.35928640    78854.25      9.7767
    37 -2605.20203060     0.35508910    77933.05      0.36109977    79252.24      9.8260
    38 -2605.20200699     0.35511270    77938.23      0.36112337    79257.42      9.8267


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.569168312  -0.101821581  -0.419340251  -0.395519781   0.446076530  -0.366476724   0.000072191  -0.000025138
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.082757000   0.506384741  -0.353615030   0.125458872   0.284570863   0.346380385   0.000036509  -0.000043059
                        -0.318890792  -0.395610515   0.037136869  -0.054467824   0.357674421   0.066318688  -0.000066058   0.000012812

    3    3.2  0.5  0.5   0.365191320   0.095329782   0.392657348   0.084676336  -0.190371785  -0.231719597   0.000046731   0.000004716
                        -0.121348698  -0.120850041   0.575949650  -0.041849395   0.422944460  -0.253914312   0.000022325   0.000026186

    4    1.2  0.5 -0.5  -0.028745148  -0.402881726  -0.347690821   0.430982714  -0.324984811  -0.395573068  -0.000102341   0.000067102
                        -0.106090159  -0.395663802  -0.139779183   0.097387957   0.169380355   0.206170652   0.000006068   0.000074997

    5    2.2  0.5 -0.5   0.200196887   0.259112611   0.190307516   0.412136421   0.276512336  -0.087039725  -0.000073738  -0.000037279
                         0.548363384  -0.183375508   0.134141500   0.031440804  -0.218902521   0.448704208   0.000010586   0.000034360

    6    3.2  0.5 -0.5   0.060858449  -0.256714039   0.130076261  -0.421201487  -0.088129129   0.364297508  -0.000114939   0.000007991
                         0.250508300  -0.259574200   0.013381717   0.521875024   0.332264671   0.287072185  -0.000034118   0.000035020

    7    1.2  1.5  1.5   0.000820241   0.001050047   0.000760862   0.000105335  -0.000505888  -0.000620987   0.101906622   0.045474703
                        -0.001541779   0.001574724  -0.001147686   0.000777206   0.000624538   0.001977812  -0.074320679   0.005109494

    8    2.2  1.5  1.5   0.001127535   0.000166639  -0.002933879  -0.001041994  -0.000022930  -0.000071007   0.062884577   0.062514734
                         0.002514589   0.001447203  -0.002785094  -0.000509213  -0.000016780  -0.000017282   0.161914265   0.113382433

    9    3.2  1.5  1.5  -0.001501830   0.001581239  -0.001261573   0.000736230   0.000622002   0.001979784   0.026722595  -0.218839619
                        -0.000736649  -0.001001519  -0.000853541  -0.000123454   0.000509317   0.000618758   0.038400721  -0.087113840

   10    4.2  1.5  1.5   0.000838621   0.001111940   0.000786212   0.000117209  -0.000529833  -0.000640460  -0.016692537  -0.063790583
                        -0.001623637   0.001650128  -0.001229007   0.000814859   0.000659686   0.002115240   0.006386704   0.112827251

   11    5.2  1.5  1.5   0.001620060  -0.001665791   0.001214083  -0.000826837  -0.000643739  -0.002118759  -0.032670152  -0.056124822
                         0.000838289   0.001116499   0.000777609   0.000124262  -0.000559339  -0.000630617  -0.047745383  -0.042149045

   12    6.2  1.5  1.5   0.000615409   0.001790325   0.000911322   0.001431219  -0.003135713   0.000664917  -0.003915893  -0.061175443
                         0.001559307   0.000351241   0.000602781  -0.000857407   0.003112307  -0.001570801   0.030998394  -0.032550130

   13    7.2  1.5  1.5   0.000516498   0.000573615  -0.001770745   0.000172015  -0.001599395   0.000799174  -0.079421027  -0.021987176
                        -0.000251098   0.000809473   0.002007939   0.001259949  -0.001579224   0.000349328   0.021792359  -0.012314261

   14    8.2  1.5  1.5   0.002108226   0.000733140  -0.000340954  -0.000893071   0.002671549  -0.001351203  -0.012520446  -0.053582908
                        -0.000854490  -0.001614834   0.000148577  -0.000921699   0.002700662  -0.000584271   0.019254561   0.067669025

   15    1.2  1.5  0.5  -0.000271560   0.000426846  -0.002287804   0.000634545  -0.000837273   0.000429208  -0.047209936  -0.199339676
                         0.000031213   0.001849344   0.002704109   0.002170325  -0.000851872   0.000188897   0.076080691   0.253056373

   16    2.2  1.5  0.5  -0.000936320   0.000834238  -0.000642921   0.000414328  -0.000696685  -0.002292026  -0.088098607  -0.373397976
                        -0.000583454  -0.000648467  -0.000393331  -0.000014107  -0.000611854  -0.000691550  -0.123715002  -0.234930725

   17    3.2  1.5  0.5   0.001248497   0.002142370  -0.000773281   0.001012221  -0.000880771   0.000107108  -0.051822569   0.147960796
                         0.003125544   0.001175085  -0.000955761  -0.001226753   0.000816394  -0.000449632  -0.266813341   0.013464724

   18    4.2  1.5  0.5  -0.001519326  -0.000863286   0.001709691   0.000317584   0.002709040  -0.001353080  -0.024467049   0.058180700
                         0.000649965   0.000121977  -0.001791375  -0.000625784   0.002696384  -0.000611939  -0.015550638  -0.087274083

   19    5.2  1.5  0.5   0.000646826   0.000120140  -0.001808744  -0.000598254  -0.002704054   0.000591369   0.001732263   0.080461825
                         0.001506255   0.000859113  -0.001717463  -0.000329577   0.002705794  -0.001361531  -0.050897798   0.035193831

   20    6.2  1.5  0.5  -0.000525412   0.001284808   0.000796879  -0.001952398  -0.000012715   0.000007057   0.008011108  -0.011711188
                         0.001021297  -0.000594820   0.000033917   0.001531196   0.000021954  -0.000032131  -0.091868728   0.021853319

   21    7.2  1.5  0.5   0.000224361   0.001260993   0.000662657  -0.000692223  -0.000914254  -0.001127980   0.093526421   0.015622214
                        -0.001654847   0.002079570  -0.000639799  -0.000285759   0.001158217   0.003627304  -0.022905878  -0.016915630

   22    8.2  1.5  0.5   0.001289816   0.000054542   0.000450338   0.001378864  -0.000536516  -0.000669365  -0.103358435   0.040707318
                        -0.000370841  -0.000268327  -0.001325790   0.002091234   0.000689550   0.002145763   0.011231180  -0.080888896

   23    1.2  1.5 -0.5  -0.001878851  -0.000668881  -0.000910669  -0.001578210  -0.000289723  -0.000350832  -0.253825761   0.173458517
                         0.001281451  -0.000583728   0.002114483  -0.002757689   0.000368997   0.001142276  -0.025195499  -0.262352573

   24    2.2  1.5 -0.5  -0.000253979  -0.001099679  -0.000469152  -0.000760763   0.001714875  -0.000330516   0.030188691   0.394630168
                        -0.000849765  -0.000124558  -0.000301504   0.000416612  -0.001672446   0.000863516  -0.199360603   0.211010188

   25    3.2  1.5 -0.5  -0.002300990   0.003006775  -0.000583435  -0.000995023  -0.000303275  -0.001159268   0.069827297   0.139852866
                        -0.000020538  -0.001793693  -0.000817989   0.001339116  -0.000348178  -0.000315108   0.410413811   0.057791385

   26    4.2  1.5 -0.5   0.001010485  -0.000595847   0.000047308   0.001536957   0.000920118   0.001155353  -0.015387764  -0.054764431
                         0.000521067  -0.001301289  -0.000823423   0.001931154  -0.001165744  -0.003644931   0.022093753   0.084761087

   27    5.2  1.5 -0.5  -0.000513872   0.001292876   0.000797134  -0.001949846  -0.001152157  -0.003649367   0.015923512   0.078565745
                         0.001015537  -0.000589189   0.000029617   0.001540683  -0.000935623  -0.001149269   0.045358008   0.046481402

   28    6.2  1.5 -0.5  -0.000640752  -0.000119983   0.001812382   0.000597704  -0.000020271  -0.000022590  -0.020221239   0.044204965
                        -0.001508359  -0.000872264   0.001707647   0.000325590  -0.000024645  -0.000014736   0.061355957  -0.054103512

   29    7.2  1.5 -0.5  -0.002106689  -0.000732524   0.000352206   0.000901384   0.002677504  -0.001346534  -0.120339783   0.021294957
                         0.000843576   0.001613441  -0.000146741   0.000934570   0.002696085  -0.000604318   0.014064634  -0.014234316

   30    8.2  1.5 -0.5   0.000512211   0.000558954  -0.001778852   0.000170858   0.001584271  -0.000794200   0.127120774   0.029965991
                        -0.000251201   0.000799566   0.002007409   0.001270678   0.001593555  -0.000363594  -0.024652633  -0.098358673

   31    1.2  1.5 -1.5   0.001474276   0.000320330   0.000577663  -0.000822492  -0.001467046   0.000738424   0.439980627  -0.115446282
                        -0.000573533  -0.001723220  -0.000850311  -0.001358002  -0.001467908   0.000319830  -0.016014432  -0.099927589

   32    2.2  1.5 -1.5   0.000849730  -0.002187611  -0.001366152   0.003162648  -0.000055371   0.000013020   0.020630072  -0.083699460
                        -0.001695473   0.000958914  -0.000104860  -0.002499625   0.000049512  -0.000026419   0.355546132  -0.062125066

   33    3.2  1.5 -1.5   0.000610116   0.001640013   0.000803683   0.001479117   0.001469115  -0.000318341  -0.024058294  -0.330419987
                         0.001417545   0.000355061   0.000574569  -0.000906148  -0.001464015   0.000738125  -0.321834636  -0.012681279

   34    4.2  1.5 -1.5   0.001550577   0.000357911   0.000611727  -0.000849016  -0.001547062   0.000775582   0.072297166   0.037995793
                        -0.000597524  -0.001800139  -0.000887856  -0.001449557  -0.001581593   0.000339966  -0.009049583  -0.154657576

   35    5.2  1.5 -1.5  -0.000610682  -0.001788210  -0.000900678  -0.001437027  -0.001588614   0.000310300   0.006575012  -0.028022702
                        -0.001564604  -0.000361071  -0.000621395   0.000846715   0.001538014  -0.000794474   0.156269231  -0.065284934

   36    6.2  1.5 -1.5   0.001613002  -0.001672747   0.001207670  -0.000834316   0.001316357   0.004219096   0.021059396   0.062200491
                         0.000847133   0.001104766   0.000788976   0.000105655   0.001085563   0.001311571   0.018969235   0.031746710

   37    7.2  1.5 -1.5   0.001307513   0.000049590   0.000451640   0.001370950   0.000546612   0.000687955   0.159504393  -0.006437893
                        -0.000370474  -0.000270145  -0.001317656   0.002088787  -0.000678729  -0.002138776  -0.017766189   0.008260856

   38    8.2  1.5 -1.5  -0.000225857  -0.001255963  -0.000650433   0.000679488  -0.000928027  -0.001120432   0.062712635  -0.046879642
                         0.001659933  -0.002087335   0.000630812   0.000286681   0.001142878   0.003630005   0.003408448   0.068652648


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000014635   0.000100944   0.000066632   0.000042025  -0.001571871  -0.000716141   0.001474547   0.001500808
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000034799  -0.000075697   0.000027481   0.000025983  -0.000955128  -0.000525585  -0.000921945  -0.000114244
                        -0.000017986   0.000034283  -0.000016617   0.000064454   0.000699122  -0.001796616  -0.000108712  -0.000942686

    3    3.2  0.5  0.5  -0.000061162   0.000012331   0.000062812   0.000037809  -0.000824165  -0.000688171  -0.001639884  -0.000104896
                        -0.000056644  -0.000002851  -0.000033267  -0.000063616   0.000102801   0.001949909  -0.000594243  -0.000695344

    4    1.2  0.5 -0.5   0.000001893  -0.000000229   0.000023949   0.000117832   0.000952625  -0.000582163   0.000940770  -0.000457054
                        -0.000012516   0.000071755   0.000006269  -0.000008967  -0.000616977  -0.000783823   0.001065920  -0.001586224

    5    2.2  0.5 -0.5  -0.000077850  -0.000052620   0.000058229   0.000038739   0.000874670  -0.000730704  -0.001758264   0.000486091
                        -0.000085033   0.000015393   0.000079341   0.000024191  -0.001650796   0.000425642  -0.000003288  -0.000085749

    6    3.2  0.5 -0.5  -0.000008507   0.000099020  -0.000022998   0.000040024   0.001387359  -0.000558908   0.000516168   0.001677014
                        -0.000006695   0.000029388  -0.000013158   0.000030026   0.001372086   0.000817753   0.000718125   0.000237094

    7    1.2  1.5  1.5  -0.321387334  -0.186852437   0.111812854   0.041418868   0.088558691  -0.319585684   0.031671585  -0.072680380
                         0.428520494   0.329575452  -0.005583849   0.079017274  -0.009954899  -0.013714749   0.059033594   0.064059961

    8    2.2  1.5  1.5   0.255590030  -0.366566637   0.126460820   0.164100820   0.088765395  -0.028219931  -0.346979885  -0.246462209
                         0.045616258  -0.024102656  -0.111539798  -0.213132723   0.297531524   0.322053035  -0.038476235  -0.210246791

    9    3.2  1.5  1.5  -0.348164134  -0.273247273   0.205355757  -0.073950282  -0.002625842  -0.003348827   0.069495676   0.069403143
                        -0.297576706  -0.092374450   0.244186036  -0.123359048  -0.061557267   0.309649663  -0.018769859   0.052237512

   10    4.2  1.5  1.5  -0.074570018   0.000819945   0.109416509  -0.071597699   0.000874897   0.193808140   0.033503386   0.086192342
                         0.081585601   0.052386834  -0.102094706   0.022097979  -0.040818240   0.115887145  -0.013343607   0.028550187

   11    5.2  1.5  1.5   0.136148370   0.102538558   0.057379599   0.020739028  -0.030987080   0.092252536   0.004290924   0.105338907
                         0.101775080   0.080910435   0.000693954  -0.052986467  -0.048994054   0.096458499  -0.076961703  -0.045662656

   12    6.2  1.5  1.5  -0.015486674  -0.007744241  -0.051094656   0.024078929  -0.004764286  -0.017245049  -0.042997349   0.012087531
                         0.008223973   0.007207014  -0.049808846  -0.018500481  -0.084921750  -0.058790526  -0.051581962   0.005203322

   13    7.2  1.5  1.5  -0.019617334   0.008410728   0.062890446   0.089841207  -0.013776200  -0.032614402   0.054271867   0.063305443
                         0.086309407  -0.145921190   0.022882993   0.077177643   0.040271104   0.011409309  -0.218302715  -0.116845266

   14    8.2  1.5  1.5  -0.002862197   0.009016299  -0.016611997   0.037164744  -0.110704305   0.019990695   0.002137944   0.036574728
                         0.078164567  -0.083683136   0.078628102   0.018488116   0.038525291   0.003999312   0.095240347  -0.006143521

   15    1.2  1.5  0.5  -0.018710723   0.027586111  -0.072551367   0.117362897  -0.122660227   0.231707231  -0.124378854  -0.078460186
                         0.294437353  -0.287032759   0.276066154   0.058292707  -0.014300778   0.038903245   0.511082829   0.166814279

   16    2.2  1.5  0.5   0.152526320   0.098931016   0.334092249   0.008905618  -0.009021179  -0.007625178   0.066461370   0.044293670
                         0.038793416   0.156844961   0.229782977  -0.273608884  -0.049130222   0.157906854  -0.006911389   0.033432381

   17    3.2  1.5  0.5  -0.147420695   0.346943152   0.061044591  -0.205971453   0.070682501   0.009299972   0.096868400  -0.117195534
                        -0.050747408   0.010040458   0.226166266   0.215777728   0.420507839   0.148199199   0.077979140  -0.176368359

   18    4.2  1.5  0.5  -0.017076641  -0.012018209   0.071378399  -0.002780416   0.065834677   0.246269621   0.056807384   0.033276260
                        -0.034078558   0.032800409  -0.091464750   0.024287873   0.020310907   0.024216516  -0.048590991  -0.041424755

   19    5.2  1.5  0.5  -0.000116260   0.032820936   0.071719156  -0.047867403   0.014765587   0.030880025   0.082940682   0.049495124
                        -0.018459932  -0.008826683   0.086847395   0.042783827  -0.063544634  -0.038101656  -0.004825030   0.066206660

   20    6.2  1.5  0.5  -0.158764436  -0.093558231   0.025613831  -0.001537971  -0.001727504   0.091715267  -0.091031640   0.229154491
                        -0.064611015  -0.095422211   0.005845710  -0.116877494   0.009080396  -0.064259243  -0.083196187   0.063643437

   21    7.2  1.5  0.5  -0.065922847  -0.013081536   0.019442753   0.083095093  -0.039896927   0.002798050   0.028939483  -0.079789957
                         0.052467163   0.056357295   0.013241171   0.024079647   0.052842229  -0.066650132  -0.121232936   0.070745099

   22    8.2  1.5  0.5   0.090929550  -0.027260588  -0.101433738  -0.060148353   0.011400972   0.037607721   0.020814021   0.184843417
                        -0.055553565  -0.072503232   0.069354968  -0.040014746  -0.038048890   0.067340887   0.033578931  -0.086330121

   23    1.2  1.5 -0.5   0.026807866  -0.245942194  -0.227295845  -0.160996138   0.150954937   0.348599003  -0.023508614   0.214911681
                         0.198480799   0.012120052   0.202357002  -0.053828284  -0.081040814   0.037965972   0.008908488  -0.296921110

   24    2.2  1.5 -0.5   0.116835970   0.024235260   0.344751565  -0.146306761  -0.017967445  -0.005038240  -0.159854088  -0.019373623
                        -0.057248226  -0.021964627   0.320366986   0.098748156  -0.143931293   0.012596978  -0.053341535   0.029799741

   25    3.2  1.5 -0.5   0.034433215  -0.046779672  -0.105579597  -0.054017723  -0.108523483   0.006149748   0.204997371  -0.120426676
                        -0.054392085   0.079676662   0.004862142   0.399912026  -0.309117923   0.332721901  -0.016152260  -0.067767398

   26    4.2  1.5 -0.5  -0.002040887   0.050256286   0.074980696  -0.023573249   0.231198993   0.005012037   0.102516282  -0.113767364
                        -0.041126416  -0.039153904  -0.082373020   0.017880556  -0.038186146   0.011838562  -0.103847049   0.131513693

   27    5.2  1.5 -0.5  -0.031113589  -0.009327913  -0.075058078  -0.017549977   0.061586380  -0.038134585   0.019938015  -0.079530664
                        -0.015198066  -0.021816349  -0.035657439   0.096057053   0.216391408   0.096708178   0.045657723  -0.112228919

   28    6.2  1.5 -0.5  -0.129524061   0.196651888  -0.007404187  -0.052701529   0.122592614   0.032560567  -0.186898991  -0.065348769
                         0.026418653  -0.011940526   0.051900815  -0.043415563   0.098112658  -0.094190651  -0.050295588   0.058407130

   29    7.2  1.5 -0.5  -0.030762024   0.014972040   0.036939391   0.111435564   0.055888476  -0.067084867  -0.020289503  -0.173662282
                        -0.014304591  -0.020374799  -0.009355039   0.035699479   0.011206760   0.004414565   0.019389141   0.112383828

   30    8.2  1.5 -0.5   0.038404384  -0.016121262   0.018064133  -0.136371002   0.039533179  -0.224741205  -0.001515567   0.104888416
                        -0.036823630   0.018620804  -0.084288073  -0.021623559  -0.049027068  -0.020984572  -0.010503963  -0.036426320

   31    1.2  1.5 -1.5   0.110391743  -0.019398332  -0.036795576  -0.352308312   0.238572965  -0.056445463   0.075601417  -0.054422790
                         0.201913039  -0.266403349   0.018794821  -0.001240095  -0.030956468  -0.022417259  -0.257527417  -0.024740943

   32    2.2  1.5 -1.5   0.124615818  -0.000679555   0.049350192  -0.078118668   0.172010192  -0.028439722  -0.208922080   0.358791175
                        -0.043963279   0.191023613   0.140076709   0.345793688   0.420470017   0.025881879  -0.015030656   0.238818169

   33    3.2  1.5 -1.5   0.143185141  -0.279454736  -0.181609074   0.082594166   0.020182668   0.028373816   0.274453263   0.021290483
                        -0.073620491   0.035438342  -0.149335900   0.299033159   0.213450039  -0.010187435   0.090932106  -0.039554044

   34    4.2  1.5 -1.5   0.004549696  -0.001662963   0.086840643  -0.045337697  -0.142223004   0.100946539  -0.020740584  -0.144247138
                         0.017019465  -0.078555859  -0.098596899   0.047261330   0.099488903   0.035356715   0.039833329   0.053965291

   35    5.2  1.5 -1.5  -0.074719213   0.065807347  -0.061330822   0.015552067  -0.085159981  -0.021364238   0.226275923   0.024585302
                         0.035025055  -0.002705374  -0.065847972  -0.102092391   0.037400057   0.172983431   0.074919013  -0.127496895

   36    6.2  1.5 -1.5  -0.024944267  -0.011316728  -0.052363178   0.004054599  -0.025223970   0.142137386  -0.050213763   0.133090264
                        -0.000661750  -0.024551270  -0.024717075   0.034323912   0.005570836   0.086781392  -0.128787006  -0.017289820

   37    7.2  1.5 -1.5  -0.021391254   0.064395851   0.026641122   0.160206389  -0.050586356   0.048665807  -0.017628215   0.218043353
                        -0.041289126   0.016002720   0.003917995   0.022274422  -0.028342129   0.068266680   0.079277534  -0.186338232

   38    8.2  1.5 -1.5  -0.003748336   0.067862218   0.068321199   0.046119383   0.035324959  -0.147432772  -0.122132936   0.051151552
                        -0.054675155  -0.001158016  -0.053754029   0.012708222   0.002890063  -0.140023922   0.152343215  -0.186730109


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.000132543  -0.000146713   0.000124072   0.000693485   0.000232816   0.000417449   0.000654932   0.001100236
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000159104  -0.000091682  -0.000059402  -0.000019558   0.000238043  -0.000017175  -0.000931125   0.000000075
                         0.000210709   0.000023549  -0.000043355  -0.000523494  -0.000686468   0.000292958   0.000980806  -0.000831477

    3    3.2  0.5  0.5   0.000085165   0.000152121   0.000207173   0.000147933  -0.000130424  -0.000011627   0.000400740   0.000648915
                         0.000118112   0.000045491  -0.000119096  -0.000311882  -0.000146075  -0.000562090   0.000238977  -0.000270096

    4    1.2  0.5 -0.5  -0.000193383  -0.000058211  -0.000181772  -0.000391400  -0.000278428   0.000629676   0.000380117  -0.000111397
                         0.000194371   0.000103984  -0.000157846  -0.000282726  -0.000150873   0.000137925   0.000935033  -0.000874137

    5    2.2  0.5 -0.5  -0.000038885   0.000163118   0.000193650   0.000155725  -0.000043673   0.000003181  -0.000503926   0.000672513
                        -0.000071926   0.000069046  -0.000046986   0.000167848  -0.000015402   0.000129744   0.000860952   0.000912722

    6    3.2  0.5 -0.5   0.000086103  -0.000100377   0.000229202   0.000261979  -0.000361051   0.000212471   0.000605803   0.000524524
                        -0.000309287   0.000143052  -0.000073178  -0.000001522   0.000046099   0.000375107  -0.000019229   0.000508066

    7    1.2  1.5  1.5   0.006641589   0.004414484  -0.004928013  -0.041816494  -0.068895972   0.077267916   0.085194536  -0.075507526
                         0.012900036   0.004903828   0.028691311   0.030635612  -0.019609767   0.021003560   0.140196985   0.087475591

    8    2.2  1.5  1.5   0.032065764   0.029477215  -0.002609604  -0.095296718  -0.075210265  -0.049561082   0.051642020  -0.091578337
                         0.036215270   0.014326606  -0.030896681  -0.109704452  -0.056727598  -0.085526672   0.017506479  -0.174469568

    9    3.2  1.5  1.5   0.020472582   0.012330652   0.023889804   0.041984758  -0.033717320   0.021727999   0.168892791   0.080837870
                        -0.013177856   0.001068684  -0.008749929   0.036594298   0.070860068  -0.066070613  -0.104070114   0.079446159

   10    4.2  1.5  1.5  -0.021000767  -0.092674081   0.029805349   0.088648362   0.066784521   0.148347149  -0.107878695  -0.120428576
                         0.343671572  -0.149136732  -0.072748456  -0.039376321  -0.286404955  -0.050132108  -0.039857279   0.002953063

   11    5.2  1.5  1.5   0.426019636  -0.100274316  -0.030008518   0.144832683  -0.197145756   0.031631987   0.062950623  -0.057292577
                         0.018733561   0.066165693  -0.018457518   0.179934301   0.127462219   0.003348242   0.083497761  -0.039438922

   12    6.2  1.5  1.5   0.144392943   0.423774506   0.351967869   0.007692439  -0.083238829  -0.103415423  -0.036110781  -0.001177110
                        -0.009862945  -0.357073682  -0.182876508  -0.070538562   0.046893415  -0.072508373   0.063862706   0.053915676

   13    7.2  1.5  1.5  -0.065509959  -0.165540080  -0.113477020  -0.025950897   0.165583777  -0.195894327   0.118280956  -0.063632351
                         0.109790388  -0.154555314  -0.160191939  -0.100999588   0.195145996   0.061203347   0.198405025   0.132561459

   14    8.2  1.5  1.5   0.026386743   0.307987727   0.077730246   0.123583135   0.008837630   0.033949849  -0.017358576   0.046072242
                         0.292663939   0.317283615   0.309274269  -0.181984340   0.100544742  -0.007184757   0.079623350   0.014539095

   15    1.2  1.5  0.5   0.016072077   0.003080628  -0.009128048  -0.034871480  -0.028486647  -0.091479134   0.086172141   0.015448746
                        -0.017437308  -0.043592452  -0.023210090   0.043371297   0.019941223   0.064971413   0.089445848  -0.005792752

   16    2.2  1.5  0.5   0.007799499   0.021026585   0.007695579   0.030521343  -0.015273541  -0.000739652   0.093660776   0.048331384
                        -0.037596355   0.011405582  -0.004312731   0.020512727   0.043768541   0.003582327  -0.062811238   0.041362056

   17    3.2  1.5  0.5   0.027669472  -0.006859581  -0.022710657  -0.082605835  -0.090050008   0.002971082   0.169994221  -0.133346532
                         0.019502804   0.020623685  -0.033350266  -0.114387883  -0.036789086  -0.036941893  -0.066519238  -0.260310292

   18    4.2  1.5  0.5  -0.112305394   0.022599597   0.041178824  -0.039008042   0.183143128  -0.323841153   0.213174777  -0.160177597
                         0.147344490   0.116751658   0.001136609   0.029679741   0.095658018  -0.002392786   0.332477329   0.168684882

   19    5.2  1.5  0.5   0.318872385  -0.077305106   0.041053110  -0.310077508   0.411495171   0.142106854   0.046969257   0.142047718
                        -0.053158522  -0.015467764   0.186393510  -0.029457470  -0.066222935   0.060887815   0.010315742   0.046569720

   20    6.2  1.5  0.5   0.318959508  -0.138504355   0.017346944   0.000960962  -0.263823366  -0.002095106   0.068295073  -0.094583324
                        -0.011593127   0.117281778  -0.047150673  -0.065754322   0.029862872   0.014003186   0.060993528  -0.015276810

   21    7.2  1.5  0.5  -0.008652251   0.053508261  -0.024855914  -0.229309028  -0.138918421  -0.336606972  -0.049223821   0.329082598
                        -0.088408758   0.084805551   0.084714364   0.131729199   0.240633893   0.088265699  -0.060327847  -0.191172573

   22    8.2  1.5  0.5  -0.054147816   0.004652306  -0.003894252  -0.295525832  -0.110105373  -0.045623004  -0.137026860   0.101249041
                         0.359313520  -0.030429835  -0.075706064   0.196471766  -0.054623803   0.041176554  -0.062593787  -0.078566232

   23    1.2  1.5 -0.5  -0.069688784   0.009198810   0.005919065   0.054318021   0.058950928   0.002855311  -0.133615979   0.205022096
                        -0.036480213  -0.001965089  -0.064549996  -0.101394165   0.035776813   0.026420877  -0.122126091  -0.131669149

   24    2.2  1.5 -0.5  -0.004964993   0.008302870   0.014247206  -0.000843515   0.014079801  -0.001505555  -0.068359333   0.026624020
                        -0.004454448   0.001200515  -0.001531279   0.014882754   0.003789133  -0.007629898   0.039162688   0.052466450

   25    3.2  1.5 -0.5  -0.000040425   0.038166768  -0.017493879   0.007691897  -0.022971314   0.068003872   0.266648462   0.063712346
                         0.008236203   0.000291265  -0.015940234   0.041769248   0.108895645  -0.136304501  -0.106849910  -0.044936756

   26    4.2  1.5 -0.5  -0.016897130  -0.058310213   0.039133543  -0.006932831  -0.152669772  -0.223060757  -0.025315773   0.409604026
                         0.009090911  -0.014651211   0.104238787  -0.022850867   0.010560153   0.124579083   0.165253679  -0.262159086

   27    5.2  1.5 -0.5   0.124313294   0.078971342  -0.050377008   0.284035239   0.186490900   0.001146572  -0.187425744   0.072804195
                         0.035263488  -0.119937051   0.066562379   0.416606095   0.075795410   0.091134462   0.058767806   0.063523945

   28    6.2  1.5 -0.5   0.115822544   0.085480140  -0.098977969  -0.087683614   0.179770849   0.134827526   0.229319268   0.146707919
                         0.101065802   0.022116983  -0.105632712   0.038314878  -0.006701449  -0.187952983  -0.012945344  -0.096365165

   29    7.2  1.5 -0.5   0.093261459  -0.013290903  -0.097604906  -0.013485626  -0.161063036   0.349839464  -0.239531260   0.081588711
                         0.053265470  -0.112032611  -0.023773966  -0.175790237   0.232400236   0.135391494  -0.267885319   0.026091599

   30    8.2  1.5 -0.5   0.114658192   0.024322911  -0.238999506   0.120121531   0.082745020  -0.152691587  -0.046589437  -0.028356223
                         0.200125023  -0.118212242   0.124388298  -0.248283883   0.159265315  -0.035914904  -0.144286640  -0.061379374

   31    1.2  1.5 -1.5   0.000995437   0.006559879  -0.006350914  -0.032706137  -0.010527310   0.016484752  -0.056692966  -0.117131229
                         0.003537245   0.029933704   0.013402424   0.020686729   0.027954186  -0.043030848  -0.110562240   0.054082703

   32    2.2  1.5 -1.5   0.029385722  -0.023495296   0.063383934   0.076695048  -0.003070722  -0.074703941  -0.122333753   0.063861224
                        -0.062311246   0.007066725   0.012563144   0.015051049  -0.034241024   0.098901645  -0.028202576   0.198785309

   33    3.2  1.5 -1.5   0.001645085  -0.029239229  -0.016770136  -0.021830943  -0.027072309   0.053519704   0.125894999  -0.041899880
                        -0.002855285   0.002502942  -0.003758019  -0.027364650   0.009439408   0.001923164  -0.062687136  -0.111041171

   34    4.2  1.5 -1.5  -0.044685006  -0.029384929   0.085293266  -0.047705489  -0.119378724   0.356645665  -0.081210837   0.179483935
                         0.033085150   0.011127283  -0.122948671  -0.078946149   0.170913920   0.191901123   0.088747274   0.094918140

   35    5.2  1.5 -1.5   0.065999838  -0.140007826   0.136043823  -0.119122730  -0.013599395  -0.090848445  -0.169456307  -0.158510354
                        -0.131255281  -0.023851092   0.212866736  -0.115276572  -0.058367945   0.231903807   0.008780267   0.019850190

   36    6.2  1.5 -1.5  -0.103976080   0.119273487  -0.192380613  -0.019434764  -0.164357179   0.179014984   0.206239576  -0.022875220
                        -0.071807269  -0.334761902   0.401760499   0.138119665   0.047011314   0.022915345   0.088171583   0.004357656

   37    7.2  1.5 -1.5   0.002104258   0.241632942  -0.241542925  -0.163871496   0.058612376   0.108213930  -0.101500986  -0.169106997
                        -0.041075375   0.093654488  -0.202907138   0.038811084  -0.025811495   0.041205753  -0.068344310   0.114029677

   38    8.2  1.5 -1.5  -0.076008521  -0.228138024   0.315606134  -0.114943268  -0.051681074   0.034297226   0.109282755  -0.034604115
                         0.156216949  -0.048086452   0.140105019   0.172725188   0.222753285  -0.128042424  -0.141189960   0.100572425


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000485402  -0.000996740   0.000128663  -0.000045785   0.000110816   0.000074703  -0.000009057  -0.000017198
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000662321   0.000342328  -0.000138864   0.000036267  -0.000057440  -0.000089347   0.000062601   0.000051389
                         0.000290339  -0.000724312  -0.000024971  -0.000074705  -0.000033964   0.000014655  -0.000001965  -0.000024502

    3    3.2  0.5  0.5   0.000086942  -0.000010886  -0.000104873  -0.000029786   0.000045561   0.000007268   0.000026596  -0.000106389
                        -0.000921553  -0.000610612   0.000041919   0.000042196  -0.000016081  -0.000035410  -0.000001562   0.000020224

    4    1.2  0.5 -0.5  -0.000178596   0.000048953   0.000078794   0.000014726   0.000013986  -0.000035289  -0.000014812  -0.000032888
                        -0.001077233   0.000498874   0.000026580  -0.000005225  -0.000002757   0.000028861  -0.000033411  -0.000027487

    5    2.2  0.5 -0.5  -0.000750205  -0.000266693  -0.000058800  -0.000013363  -0.000113341  -0.000005244   0.000029965   0.000059656
                         0.000483941   0.000726066   0.000057486  -0.000032191  -0.000031244  -0.000076033  -0.000050897   0.000002637

    6    3.2  0.5 -0.5  -0.000619653   0.000914987  -0.000083809  -0.000022380  -0.000010357  -0.000004400  -0.000053109  -0.000029509
                        -0.000049684  -0.000257906   0.000057046  -0.000004948   0.000009211   0.000009945   0.000002010   0.000021526

    7    1.2  1.5  1.5   0.294312525  -0.171506677   0.055564635   0.139083687  -0.105769906  -0.099628359  -0.060245493  -0.007498947
                         0.194019609  -0.287520009  -0.122502631   0.057183444   0.036653135  -0.000521811  -0.022575983  -0.096634375

    8    2.2  1.5  1.5  -0.011436051   0.017756321  -0.157460274  -0.015070932   0.000470355   0.042002008  -0.032902507  -0.071899617
                         0.016706938  -0.005611767  -0.021878248   0.157924988   0.023789506  -0.051655371  -0.011486843  -0.000253175

    9    3.2  1.5  1.5   0.185059672  -0.289109424   0.010456780  -0.071386676  -0.085486295  -0.071216953   0.055446441   0.098123806
                        -0.283516814   0.177044604   0.043025543   0.094415916  -0.157695026  -0.096186679  -0.058970660  -0.007603805

   10    4.2  1.5  1.5  -0.040655931   0.039995084  -0.071069819  -0.060432832   0.358355798   0.118986861   0.079049897   0.029787228
                        -0.002729967   0.029442607  -0.106784358  -0.136493163  -0.225202071  -0.251760875   0.165659189   0.096669532

   11    5.2  1.5  1.5   0.030717488  -0.031015037   0.348754793  -0.080258338   0.022750273   0.129013501  -0.037359618   0.191046784
                        -0.025697901   0.006575437   0.100544348   0.316895486  -0.069573864  -0.183096984  -0.101100099   0.005398737

   12    6.2  1.5  1.5   0.022494743   0.063327394  -0.073986191   0.002235440  -0.056615223   0.048825572  -0.089741822   0.196098505
                        -0.062427640  -0.055815877  -0.032790881  -0.053944074   0.057894838  -0.050677329  -0.025575725   0.050193453

   13    7.2  1.5  1.5   0.034910063   0.033545442  -0.032937471   0.395039363   0.028248843  -0.095993199  -0.018174984  -0.029713822
                         0.007344597   0.028785787   0.318415297   0.041932460  -0.037069421  -0.080035611   0.023163358   0.264728356

   14    8.2  1.5  1.5  -0.045550616  -0.039947442  -0.055076479   0.170316265   0.087287167  -0.116062725  -0.039824087   0.041086516
                        -0.022685623  -0.053199804   0.282174633   0.019482226   0.044313175  -0.103465727   0.120214194  -0.071643011

   15    1.2  1.5  0.5  -0.160919542  -0.143423564   0.032487276  -0.095263117  -0.054952745   0.073041609   0.025751745  -0.029864699
                        -0.070148786  -0.167308857  -0.163439079  -0.007228741  -0.029078461   0.058303713  -0.070183174   0.055942465

   16    2.2  1.5  0.5  -0.218396963   0.331233716  -0.174039562  -0.017461350  -0.103322784  -0.138067476   0.077436569  -0.036571969
                         0.339116730  -0.200441084  -0.010942263  -0.096475250  -0.104580794   0.022254123   0.006934986  -0.014286021

   17    3.2  1.5  0.5  -0.075673276  -0.146746215   0.071787700   0.023338234  -0.039071652  -0.031295135  -0.007749563   0.174122671
                         0.170215725   0.125893679   0.005094714  -0.154890805  -0.002542409   0.022772167  -0.000362198   0.040430886

   18    4.2  1.5  0.5  -0.042285295  -0.035214724   0.049978928   0.011525681  -0.100062376   0.097270711   0.042970510  -0.079141671
                        -0.021056822  -0.054410213  -0.189410930   0.006290392  -0.082630367   0.082157857  -0.137110243   0.253348255

   19    5.2  1.5  0.5   0.023900974   0.032699799   0.059668427  -0.021117880   0.085223564  -0.033562932   0.104255297  -0.318084329
                        -0.048559302  -0.039335165   0.033870336   0.144143894  -0.071892096   0.047245740   0.024485739  -0.075437773

   20    6.2  1.5  0.5   0.006107878  -0.000742291  -0.143084766   0.162731200   0.157074822   0.024378943   0.248697178  -0.024924531
                         0.005870612  -0.008764161  -0.171322467  -0.087029994   0.392087611   0.245835617   0.220462162   0.070617148

   21    7.2  1.5  0.5  -0.035283310   0.031180706  -0.028968770  -0.259345105  -0.032078050   0.066756621  -0.000020587  -0.031796121
                        -0.035139183   0.058578343   0.206627149  -0.035886148   0.040642050   0.054153545   0.147294510   0.169122926

   22    8.2  1.5  0.5  -0.040228621   0.019843796   0.016139191   0.251079826  -0.128944132  -0.072138175   0.010636101   0.027002888
                        -0.015220457   0.017846109  -0.022609970   0.081519429   0.119895190   0.169623952  -0.374668194  -0.258732812

   23    1.2  1.5 -0.5   0.165167684  -0.107834056   0.041962373  -0.013081872  -0.017656550  -0.045564852  -0.061590840  -0.021570100
                         0.113133539  -0.169309057  -0.083843023   0.007854887  -0.030298715  -0.093627111   0.190382804   0.063124981

   24    2.2  1.5 -0.5   0.153742787   0.309836530  -0.102731657   0.003759740  -0.069521587   0.044489408  -0.093492792   0.205195433
                        -0.354746152  -0.269396793  -0.032929505  -0.065384958   0.064654891  -0.057608014  -0.023621123   0.052174999

   25    3.2  1.5 -0.5  -0.116267451   0.167359638   0.080005065   0.026093410   0.052844040   0.056336195   0.108320052   0.091699402
                         0.181956114  -0.100627383  -0.025098857   0.102712410   0.128905318   0.021537494   0.053206862   0.036082037

   26    4.2  1.5 -0.5   0.052652575  -0.041541504   0.032677192   0.098782940   0.106302056  -0.049030440  -0.044390794   0.000064651
                         0.032873340  -0.065501519  -0.234893793  -0.017153257  -0.118110555  -0.202705919   0.187355001   0.003263711

   27    5.2  1.5 -0.5   0.034729793  -0.051261091  -0.225248866  -0.030549313  -0.133968050  -0.179157023   0.021209310  -0.074247592
                        -0.061024927   0.023950708  -0.002619354  -0.160165608  -0.176492029   0.013418446  -0.016358514  -0.035304087

   28    6.2  1.5 -0.5   0.006370319   0.013938430  -0.261749699  -0.159361062   0.230786487  -0.245217199  -0.174655125  -0.093752382
                         0.019437137   0.007408248  -0.092460470   0.335207376   0.144895213  -0.064878982  -0.163240373   0.140881167

   29    7.2  1.5 -0.5  -0.075542472  -0.033125033   0.030638232   0.170324033  -0.079271505  -0.023084622   0.079384704  -0.119762831
                        -0.035979477  -0.033829647   0.064075291  -0.041128137   0.062379497  -0.173416554  -0.111881581   0.245820444

   30    8.2  1.5 -0.5  -0.039946528  -0.015300969   0.007251011  -0.178513066   0.010424732   0.124155454  -0.094155435   0.096617014
                        -0.026824250  -0.028735340  -0.287979763   0.093477715  -0.210915737   0.375643496   0.005920173  -0.024797742

   31    1.2  1.5 -1.5  -0.328899296  -0.223692484   0.038878375  -0.010301763  -0.071036357   0.000261265   0.087478854  -0.100961501
                        -0.140290866  -0.248097452  -0.017508812  -0.065699117   0.102708583  -0.165429384  -0.090181043   0.085569978

   32    2.2  1.5 -1.5  -0.000525583   0.000720605  -0.015860924   0.023215534   0.014532988  -0.017181169   0.176697557   0.081617586
                        -0.002391155  -0.009422557  -0.038139917   0.069151584   0.080075523   0.035710918   0.064239993   0.028479542

   33    3.2  1.5 -1.5   0.134639614   0.271031211   0.033022591  -0.075453130   0.139799867  -0.190627128  -0.027595153  -0.055219220
                        -0.312575473  -0.226278927  -0.024682815   0.045712849   0.041172090   0.030304195  -0.068596038   0.062620830

   34    4.2  1.5 -1.5   0.016884102   0.020343452  -0.004833603   0.126416753  -0.008767153   0.107754435  -0.085988156   0.038606470
                         0.013586490   0.027872541  -0.141446863   0.129432312  -0.287771167   0.345814036  -0.020491300   0.283228010

   35    5.2  1.5 -1.5   0.009110370   0.027427859  -0.129016361  -0.101415214   0.094032855  -0.221390046  -0.225266079   0.317836369
                        -0.047852301  -0.025676239  -0.090829797  -0.042929230   0.165873076  -0.056141479  -0.163128381   0.204065660

   36    6.2  1.5 -1.5  -0.052671692   0.056843836  -0.161081715  -0.013382003  -0.090077172  -0.131482523   0.074208863  -0.022307596
                         0.058095331  -0.029784424  -0.011856583  -0.091964910  -0.096735136   0.023612209   0.002706413  -0.013149087

   37    7.2  1.5 -1.5   0.030136360  -0.020471370   0.082574583  -0.214405660  -0.243579359  -0.082374193  -0.146404931  -0.079677589
                         0.011472773  -0.022013164   0.055223249   0.053441463   0.085823625   0.012770473   0.376240509   0.201546718

   38    8.2  1.5 -1.5  -0.052079907   0.037467349   0.068036767  -0.017485348  -0.026698349  -0.071244727  -0.093545364  -0.030488367
                        -0.015679496   0.051703634  -0.154791107   0.019209491  -0.054245939  -0.143728193   0.308442027   0.092134025


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5   0.004132086   0.004140683   0.003095690   0.003068509   0.005513350   0.003671181
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.001089154  -0.005205606   0.004271482   0.000432107  -0.001077693   0.002362957
                         0.000031962  -0.002546152  -0.000925465   0.000898656   0.005090297  -0.003053457

    3    3.2  0.5  0.5   0.002418213  -0.000456638  -0.003983778   0.001019134  -0.000503836   0.001009316
                         0.000179070  -0.002781517  -0.004697706   0.000297570   0.002888293   0.005880859

    4    1.2  0.5 -0.5   0.002441481  -0.001405649   0.002647658  -0.004165021  -0.001896187   0.003002041
                        -0.003244466   0.003193059  -0.000796105   0.000939494  -0.003079684   0.004516861

    5    2.2  0.5 -0.5   0.001215681  -0.000492845  -0.001502131  -0.003417605   0.001145911   0.003534769
                         0.005840794  -0.000284561  -0.002114865   0.001514161  -0.003603840  -0.003663530

    6    3.2  0.5 -0.5   0.001871872   0.001308861  -0.000339862   0.000447703  -0.005359212   0.002140333
                         0.001293378   0.002858522  -0.000813266  -0.006141900   0.002424513  -0.001994272

    7    1.2  1.5  1.5  -0.000005261  -0.020769670   0.022032792   0.014953583   0.054232198  -0.085940550
                         0.035353070   0.122693993  -0.089326983   0.019925234   0.045589130  -0.005463414

    8    2.2  1.5  1.5  -0.006649816  -0.134580132  -0.148411823  -0.009828772   0.001834631   0.001127641
                        -0.095247728  -0.053885591  -0.135169181  -0.055350627  -0.003136536  -0.005433833

    9    3.2  1.5  1.5   0.030257527   0.118176564  -0.090911092   0.029857754   0.040506731  -0.009428634
                        -0.010069489   0.028110804  -0.031331153  -0.014155961  -0.047392615   0.091668229

   10    4.2  1.5  1.5  -0.001660087  -0.062322914   0.063981985   0.035509282   0.103155143  -0.167864437
                         0.087413157   0.327601442  -0.235708884   0.065773169   0.086596159  -0.010069038

   11    5.2  1.5  1.5  -0.087883689  -0.328419993   0.239059544  -0.061579079  -0.088804254   0.006871286
                        -0.001126289  -0.056062009   0.058880391   0.037948446   0.109224045  -0.163814437

   12    6.2  1.5  1.5   0.031209442   0.046433219   0.106153687   0.090087611   0.263927563   0.075591540
                        -0.287645107   0.140918081   0.067806483  -0.185517114  -0.203888794  -0.291665511

   13    7.2  1.5  1.5   0.018697159  -0.142989767  -0.211306141   0.027877861   0.098693367   0.142485108
                         0.023749292   0.200747314   0.250438402   0.058156216   0.127874070   0.035049232

   14    8.2  1.5  1.5  -0.324917117   0.080028686  -0.045162354  -0.200471995  -0.178761054  -0.252253477
                        -0.021420340   0.062866726   0.028950779  -0.070425235  -0.231138582  -0.067682685

   15    1.2  1.5  0.5   0.075355286  -0.095243395  -0.110053755   0.049635688   0.029091617   0.046717220
                         0.022034127   0.092447415   0.136379897   0.046273966   0.042050849   0.012951169

   16    2.2  1.5  0.5   0.017251443   0.066148564  -0.055379102   0.010565840  -0.060723371   0.007757446
                         0.007925331   0.010731664  -0.013341663  -0.005168795   0.064725111  -0.093881695

   17    3.2  1.5  0.5   0.013117277  -0.052474335  -0.041741615   0.039744249   0.038857731   0.010394685
                        -0.178794149   0.028273763  -0.052574689  -0.120733602  -0.033330950  -0.049267095

   18    4.2  1.5  0.5   0.170583818   0.080159434   0.209537442   0.085340275  -0.167027297  -0.240871864
                        -0.006837916  -0.207217958  -0.226252960  -0.010948563  -0.216554234  -0.061865471

   19    5.2  1.5  0.5  -0.013801156  -0.200538112  -0.234788214  -0.013379027   0.227019700   0.066162623
                        -0.128958666  -0.087421811  -0.206213822  -0.080070540  -0.180585603  -0.247947407

   20    6.2  1.5  0.5   0.039425824   0.054379931  -0.003670625  -0.126442019   0.001935366   0.003993604
                        -0.230951349   0.012725412  -0.016783825   0.317825031  -0.005221786  -0.009266047

   21    7.2  1.5  0.5   0.116433539  -0.055015589   0.064611301  -0.129249843   0.179324018  -0.278654802
                         0.091090411   0.301899300  -0.202529057  -0.005960379   0.150610395  -0.016659706

   22    8.2  1.5  0.5  -0.203131655  -0.014173188   0.015530691   0.292293362   0.107331489  -0.171940135
                         0.010209041   0.115355817  -0.121360527   0.137379691   0.091582221  -0.011875223

   23    1.2  1.5 -0.5   0.097294505   0.014338573  -0.023153025  -0.135450763   0.039938540  -0.043175862
                        -0.019030673  -0.104864247   0.097654596  -0.071088071   0.035910364  -0.001853538

   24    2.2  1.5 -0.5  -0.009481246  -0.010739684  -0.023783832  -0.017923442  -0.075556144  -0.023557969
                         0.061234555  -0.030704099  -0.013081864   0.034227311   0.063518113   0.084959817

   25    3.2  1.5 -0.5   0.049004689   0.145916164  -0.103850832  -0.021271598  -0.038746383   0.009380940
                        -0.077554402   0.029149931  -0.044527235   0.103246149   0.032173264  -0.046154650

   26    4.2  1.5 -0.5  -0.226635543   0.004645346  -0.013635801   0.323954300  -0.182437301   0.275958040
                        -0.033672636  -0.050857260  -0.001902620   0.126115856  -0.159247778   0.019643990

   27    5.2  1.5 -0.5   0.038315553   0.055543434   0.001045041  -0.125863121  -0.162873521   0.021894154
                        -0.222220665   0.010801885  -0.017720854   0.321341640   0.185823458  -0.289324114

   28    6.2  1.5 -0.5   0.011779424   0.201571738   0.236921277   0.011156846  -0.000503933   0.000710137
                         0.147932671   0.083784308   0.208265561   0.085287930   0.008988429   0.001125211

   29    7.2  1.5 -0.5   0.348937393  -0.075347445   0.055190652   0.208434044  -0.166008572  -0.223096179
                         0.021596212  -0.081021644  -0.018762264   0.070684545  -0.216734445  -0.061678613

   30    8.2  1.5 -0.5   0.037321318  -0.148973348  -0.217431549   0.026804721  -0.107967929  -0.136436100
                         0.029541490   0.186686496   0.259971634   0.058023913  -0.133039144  -0.037243680

   31    1.2  1.5 -1.5  -0.110677011   0.053829966   0.029274846  -0.074450885   0.050205326   0.060906663
                        -0.013559372  -0.006852394  -0.043118385  -0.035995030   0.065559302   0.018637332

   32    2.2  1.5 -1.5  -0.023448243  -0.035248054  -0.002704007   0.079374633   0.002809122  -0.001389222
                         0.152488684  -0.009155316   0.010566012  -0.204569405  -0.000239734   0.002765503

   33    3.2  1.5 -1.5   0.006682667   0.011499434   0.043173639   0.034787803  -0.064407641  -0.016639409
                        -0.109509423   0.051731525   0.023477400  -0.081923832   0.054102212   0.061764343

   34    4.2  1.5 -1.5  -0.300524860   0.139651382   0.068356976  -0.198306770   0.096618576   0.119594109
                        -0.027678650  -0.021344113  -0.119467457  -0.091128650   0.124129325   0.033481227

   35    5.2  1.5 -1.5  -0.036046031  -0.024283448  -0.114513219  -0.093484823   0.128894362   0.036139645
                         0.312282790  -0.143716275  -0.070947689   0.190816459  -0.096546210  -0.122144002

   36    6.2  1.5 -1.5  -0.082167697  -0.304361230   0.232249414  -0.061329943   0.202248637  -0.024980897
                        -0.021226744  -0.051665845   0.074030695   0.037090560  -0.222683764   0.324667483

   37    7.2  1.5 -1.5  -0.211334549  -0.021247271   0.028427123   0.292430108  -0.110806472   0.161418319
                         0.009659293   0.107961085  -0.121369474   0.139961170  -0.101604829   0.014118267

   38    8.2  1.5 -1.5  -0.097285924   0.050797275  -0.073379496   0.132126107   0.192009589  -0.283365558
                        -0.090694363  -0.290228214   0.198313471   0.013079727   0.173445660  -0.022244853


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  32.395%   1.037%  17.585%  15.644%  19.898%  13.431%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  10.854%  41.293%  12.642%   1.871%  20.891%  12.438%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  14.809%   2.369%  48.590%   0.892%  21.512%  11.817%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   1.208%  31.886%  14.043%  19.523%  13.430%  19.898%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5  34.078%  10.077%   5.421%  17.084%  12.438%  20.891%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   6.646%  13.328%   1.710%  44.976%  11.817%  21.512%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.591%   0.209%  28.692%  14.353%
    8    2.2  1.5  1.5   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%   3.017%   1.676%   6.741%  13.495%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.219%   5.548%  20.977%   8.320%
   10    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.032%   1.680%   1.222%   0.275%
   11    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.335%   0.493%   2.889%   1.706%
   12    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.098%   0.480%   0.031%   0.011%
   13    7.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.678%   0.064%   0.783%   2.136%
   14    8.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.053%   0.745%   0.612%   0.708%
   15    1.2  1.5  0.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.802%  10.377%   8.704%   8.315%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   2.307%  19.462%   2.477%   3.439%
   17    3.2  1.5  0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   7.387%   2.207%   2.431%  12.047%
   18    4.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.084%   1.100%   0.145%   0.122%
   19    5.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.259%   0.771%   0.034%   0.116%
   20    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.850%   0.061%   2.938%   1.786%
   21    7.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.927%   0.053%   0.710%   0.335%
   22    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   1.081%   0.820%   1.135%   0.600%
   23    1.2  1.5 -0.5   0.001%   0.000%   0.001%   0.001%   0.000%   0.000%   6.506%   9.892%   4.011%   6.063%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   4.066%  20.026%   1.693%   0.107%
   25    3.2  1.5 -0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%  17.332%   2.290%   0.414%   0.854%
   26    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.072%   1.018%   0.170%   0.406%
   27    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.231%   0.833%   0.120%   0.056%
   28    6.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.417%   0.488%   1.747%   3.881%
   29    7.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   1.468%   0.066%   0.115%   0.064%
   30    8.2  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   1.677%   1.057%   0.283%   0.061%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  19.384%   2.331%   5.296%   7.135%
   32    2.2  1.5 -1.5   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%  12.684%   1.087%   1.746%   3.649%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  10.416%  10.934%   2.592%   7.935%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.531%   2.536%   0.031%   0.617%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.446%   0.505%   0.681%   0.434%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.080%   0.488%   0.062%   0.073%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   2.576%   0.011%   0.216%   0.440%
   38    8.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.394%   0.691%   0.300%   0.461%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   1.253%   0.796%   0.794%  10.232%   0.449%   0.939%   0.021%   0.004%   0.085%   0.269%
    8    2.2  1.5  1.5   2.843%   7.235%   9.640%  10.451%  12.188%  10.495%   0.234%   0.107%   0.096%   2.112%
    9    3.2  1.5  1.5  10.180%   2.069%   0.380%   9.589%   0.518%   0.755%   0.059%   0.015%   0.065%   0.310%
   10    4.2  1.5  1.5   2.240%   0.561%   0.167%   5.099%   0.130%   0.824%  11.855%   3.083%   0.618%   0.941%
   11    5.2  1.5  1.5   0.329%   0.324%   0.336%   1.781%   0.594%   1.318%  18.184%   1.443%   0.124%   5.335%
   12    6.2  1.5  1.5   0.509%   0.092%   0.723%   0.375%   0.451%   0.017%   2.095%  30.709%  15.733%   0.503%
   13    7.2  1.5  1.5   0.448%   1.403%   0.181%   0.119%   5.060%   1.766%   1.635%   5.129%   3.854%   1.087%
   14    8.2  1.5  1.5   0.646%   0.172%   1.374%   0.042%   0.908%   0.138%   8.635%  19.553%  10.169%   4.839%
   15    1.2  1.5  0.5   8.148%   1.717%   1.525%   5.520%  27.668%   3.398%   0.056%   0.191%   0.062%   0.310%
   16    2.2  1.5  0.5  16.442%   7.494%   0.250%   2.499%   0.446%   0.308%   0.147%   0.057%   0.008%   0.135%
   17    3.2  1.5  0.5   5.488%   8.898%  18.182%   2.205%   1.546%   4.484%   0.115%   0.047%   0.163%   1.991%
   18    4.2  1.5  0.5   1.346%   0.060%   0.475%   6.124%   0.559%   0.282%   3.432%   1.414%   0.170%   0.240%
   19    5.2  1.5  0.5   1.269%   0.412%   0.426%   0.241%   0.690%   0.683%  10.451%   0.622%   3.643%   9.702%
   20    6.2  1.5  0.5   0.069%   1.366%   0.009%   1.254%   1.521%   5.656%  10.187%   3.294%   0.252%   0.432%
   21    7.2  1.5  0.5   0.055%   0.748%   0.438%   0.445%   1.553%   1.137%   0.789%   1.006%   0.779%   6.994%
   22    8.2  1.5  0.5   1.510%   0.522%   0.158%   0.595%   0.156%   4.162%  13.204%   0.095%   0.575%  12.594%
   23    1.2  1.5 -0.5   9.261%   2.882%   2.936%  12.296%   0.063%  13.435%   0.619%   0.009%   0.420%   1.323%
   24    2.2  1.5 -0.5  22.149%   3.116%   2.104%   0.018%   2.840%   0.126%   0.004%   0.007%   0.021%   0.022%
   25    3.2  1.5 -0.5   1.117%  16.285%  10.733%  11.074%   4.228%   1.910%   0.007%   0.146%   0.056%   0.180%
   26    4.2  1.5 -0.5   1.241%   0.088%   5.491%   0.017%   2.129%   3.024%   0.037%   0.361%   1.240%   0.057%
   27    5.2  1.5 -0.5   0.691%   0.953%   5.062%   1.081%   0.248%   1.892%   1.670%   2.062%   0.697%  25.424%
   28    6.2  1.5 -0.5   0.275%   0.466%   2.466%   0.993%   3.746%   0.768%   2.363%   0.780%   2.095%   0.916%
   29    7.2  1.5 -0.5   0.145%   1.369%   0.325%   0.452%   0.079%   4.279%   1.153%   1.273%   1.009%   3.108%
   30    8.2  1.5 -0.5   0.743%   1.906%   0.397%   5.095%   0.011%   1.233%   5.320%   1.457%   7.259%   7.607%
   31    1.2  1.5 -1.5   0.171%  12.412%   5.788%   0.369%   7.204%   0.357%   0.001%   0.094%   0.022%   0.150%
   32    2.2  1.5 -1.5   2.206%  12.568%  20.638%   0.148%   4.387%  18.577%   0.475%   0.060%   0.418%   0.611%
   33    3.2  1.5 -1.5   5.528%   9.624%   4.597%   0.091%   8.359%   0.202%   0.001%   0.086%   0.030%   0.123%
   34    4.2  1.5 -1.5   1.726%   0.429%   3.013%   1.144%   0.202%   2.372%   0.309%   0.099%   2.239%   0.851%
   35    5.2  1.5 -1.5   0.810%   1.066%   0.865%   3.038%   5.681%   1.686%   2.158%   2.017%   6.382%   2.748%
   36    6.2  1.5 -1.5   0.335%   0.119%   0.067%   2.773%   1.911%   1.801%   1.597%  12.629%  19.842%   1.945%
   37    7.2  1.5 -1.5   0.073%   2.616%   0.336%   0.703%   0.660%   8.226%   0.169%   6.716%   9.951%   2.836%
   38    8.2  1.5 -1.5   0.756%   0.229%   0.126%   4.134%   3.812%   3.748%   3.018%   5.436%  11.924%   4.305%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.513%   0.641%   2.691%   1.335%  12.426%  11.208%   1.809%   2.261%   1.253%   0.993%
    8    2.2  1.5  1.5   0.887%   0.977%   0.297%   3.883%   0.041%   0.035%   2.527%   2.517%   0.057%   0.443%
    9    3.2  1.5  1.5   0.616%   0.484%   3.936%   1.285%  11.463%  11.493%   0.196%   1.401%   3.218%   1.432%
   10    4.2  1.5  1.5   8.649%   2.452%   1.323%   1.451%   0.166%   0.247%   1.645%   2.228%  17.913%   7.754%
   11    5.2  1.5  1.5   5.511%   0.101%   1.093%   0.484%   0.160%   0.101%  13.174%  10.686%   0.536%   5.017%
   12    6.2  1.5  1.5   0.913%   1.595%   0.538%   0.291%   0.440%   0.713%   0.655%   0.291%   0.656%   0.495%
   13    7.2  1.5  1.5   6.550%   4.212%   5.335%   2.162%   0.127%   0.195%  10.247%  15.781%   0.217%   1.562%
   14    8.2  1.5  1.5   1.019%   0.120%   0.664%   0.233%   0.259%   0.443%   8.266%   2.939%   0.958%   2.418%
   15    1.2  1.5  0.5   0.121%   1.259%   1.543%   0.027%   3.082%   4.856%   2.777%   0.913%   0.387%   0.873%
   16    2.2  1.5  0.5   0.215%   0.001%   1.272%   0.405%  16.270%  14.989%   3.041%   0.961%   2.161%   1.956%
   17    3.2  1.5  0.5   0.946%   0.137%   3.332%   8.554%   3.470%   3.738%   0.518%   2.454%   0.153%   0.150%
   18    4.2  1.5  0.5   4.269%  10.488%  15.598%   5.411%   0.223%   0.420%   3.837%   0.017%   1.684%   1.621%
   19    5.2  1.5  0.5  17.371%   2.390%   0.231%   2.235%   0.293%   0.262%   0.471%   2.122%   1.243%   0.336%
   20    6.2  1.5  0.5   7.049%   0.020%   0.838%   0.918%   0.007%   0.008%   4.982%   3.406%  17.841%   6.103%
   21    7.2  1.5  0.5   7.720%  12.110%   0.606%  14.484%   0.248%   0.440%   4.353%   6.855%   0.268%   0.739%
   22    8.2  1.5  0.5   1.511%   0.378%   2.269%   1.642%   0.185%   0.071%   0.077%   6.969%   3.100%   3.398%
   23    1.2  1.5 -0.5   0.476%   0.071%   3.277%   5.937%   4.008%   4.029%   0.879%   0.023%   0.123%   1.084%
   24    2.2  1.5 -0.5   0.021%   0.006%   0.621%   0.346%  14.948%  16.857%   1.164%   0.429%   0.901%   0.530%
   25    3.2  1.5 -0.5   1.239%   2.320%   8.252%   0.608%   4.663%   3.814%   0.703%   1.123%   1.941%   0.364%
   26    4.2  1.5 -0.5   2.342%   6.528%   2.795%  23.650%   0.385%   0.602%   5.624%   1.005%   2.525%   4.349%
   27    5.2  1.5 -0.5   4.052%   0.831%   3.858%   0.934%   0.493%   0.320%   5.074%   2.659%   4.910%   3.228%
   28    6.2  1.5 -0.5   3.236%   5.350%   5.275%   3.081%   0.042%   0.025%   7.706%  13.776%   7.426%   6.434%
   29    7.2  1.5 -0.5   7.995%  14.072%  12.914%   0.734%   0.700%   0.224%   0.504%   3.070%   1.018%   3.061%
   30    8.2  1.5 -0.5   3.221%   2.460%   2.299%   0.457%   0.232%   0.106%   8.298%   4.060%   4.459%  15.652%
   31    1.2  1.5 -1.5   0.089%   0.212%   1.544%   1.664%  12.786%  11.159%   0.182%   0.442%   1.560%   2.737%
   32    2.2  1.5 -1.5   0.118%   1.536%   1.576%   4.359%   0.001%   0.009%   0.171%   0.532%   0.662%   0.157%
   33    3.2  1.5 -1.5   0.082%   0.287%   1.978%   1.409%  11.583%  12.466%   0.170%   0.778%   2.124%   3.726%
   34    4.2  1.5 -1.5   4.346%  16.402%   1.447%   4.122%   0.047%   0.119%   2.003%   3.273%   8.289%  13.120%
   35    5.2  1.5 -1.5   0.359%   6.203%   2.879%   2.552%   0.237%   0.141%   2.490%   1.213%   3.636%   5.217%
   36    6.2  1.5 -1.5   2.922%   3.257%   5.031%   0.054%   0.615%   0.412%   2.609%   0.864%   1.747%   1.785%
   37    7.2  1.5 -1.5   0.410%   1.341%   1.497%   4.160%   0.104%   0.090%   0.987%   4.883%   6.670%   0.695%
   38    8.2  1.5 -1.5   5.229%   1.757%   3.188%   1.131%   0.296%   0.408%   2.859%   0.067%   0.366%   2.573%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.002%   0.002%   0.001%   0.001%   0.003%   0.001%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.003%   0.002%   0.000%   0.003%   0.001%
    3    3.2  0.5  0.5   0.000%   0.000%   0.001%   0.001%   0.004%   0.000%   0.001%   0.004%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.002%   0.001%   0.001%   0.002%   0.001%   0.003%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.004%   0.000%   0.001%   0.001%   0.001%   0.003%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.004%   0.003%   0.001%
    7    1.2  1.5  1.5   0.414%   0.939%   0.125%   1.549%   0.846%   0.062%   0.502%   0.742%
    8    2.2  1.5  1.5   0.121%   0.517%   0.912%   2.102%   4.030%   0.316%   0.001%   0.003%
    9    3.2  1.5  1.5   0.655%   0.969%   0.102%   1.476%   0.925%   0.109%   0.389%   0.849%
   10    4.2  1.5  1.5   3.369%   1.023%   0.764%  11.121%   5.965%   0.559%   1.814%   2.828%
   11    5.2  1.5  1.5   1.162%   3.653%   0.772%  11.100%   6.062%   0.523%   1.982%   2.688%
   12    6.2  1.5  1.5   0.871%   4.097%   8.371%   2.201%   1.587%   4.253%  11.123%   9.078%
   13    7.2  1.5  1.5   0.087%   7.096%   0.091%   6.075%  10.737%   0.416%   2.609%   2.153%
   14    8.2  1.5  1.5   1.604%   0.682%  10.603%   1.036%   0.288%   4.515%   8.538%   6.821%
   15    1.2  1.5  0.5   0.559%   0.402%   0.616%   1.762%   3.071%   0.460%   0.261%   0.235%
   16    2.2  1.5  0.5   0.604%   0.154%   0.036%   0.449%   0.324%   0.014%   0.788%   0.887%
   17    3.2  1.5  0.5   0.006%   3.195%   3.214%   0.355%   0.451%   1.616%   0.262%   0.254%
   18    4.2  1.5  0.5   2.065%   7.045%   2.915%   4.936%   9.510%   0.740%   7.479%   6.185%
   19    5.2  1.5  0.5   1.147%  10.687%   1.682%   4.786%   9.765%   0.659%   8.415%   6.586%
   20    6.2  1.5  0.5  11.045%   0.561%   5.489%   0.312%   0.030%  11.700%   0.003%   0.010%
   21    7.2  1.5  0.5   2.170%   2.961%   2.185%   9.417%   4.519%   1.674%   5.484%   7.793%
   22    8.2  1.5  0.5  14.049%   6.767%   4.137%   1.351%   1.497%  10.431%   1.991%   2.970%
   23    1.2  1.5 -0.5   4.004%   0.445%   0.983%   1.120%   1.007%   2.340%   0.288%   0.187%
   24    2.2  1.5 -0.5   0.930%   4.483%   0.384%   0.106%   0.074%   0.149%   0.974%   0.777%
   25    3.2  1.5 -0.5   1.456%   0.971%   0.842%   2.214%   1.277%   1.111%   0.254%   0.222%
   26    4.2  1.5 -0.5   3.707%   0.001%   5.250%   0.261%   0.019%  12.085%   5.864%   7.654%
   27    5.2  1.5 -0.5   0.072%   0.676%   5.085%   0.320%   0.032%  11.910%   6.106%   8.419%
   28    6.2  1.5 -0.5   5.715%   2.864%   2.202%   4.765%   9.951%   0.740%   0.008%   0.000%
   29    7.2  1.5 -0.5   1.882%   7.477%  12.222%   1.224%   0.340%   4.844%   7.453%   5.358%
   30    8.2  1.5 -0.5   0.890%   0.995%   0.227%   5.704%  11.486%   0.409%   2.936%   2.000%
   31    1.2  1.5 -1.5   1.579%   1.752%   1.243%   0.294%   0.272%   0.684%   0.682%   0.406%
   32    2.2  1.5 -1.5   3.535%   0.747%   2.380%   0.133%   0.012%   4.815%   0.001%   0.001%
   33    3.2  1.5 -1.5   0.547%   0.697%   1.204%   0.281%   0.242%   0.792%   0.708%   0.409%
   34    4.2  1.5 -1.5   0.781%   8.171%   9.108%   1.996%   1.895%   4.763%   2.474%   1.542%
   35    5.2  1.5 -1.5   7.736%  14.266%   9.882%   2.124%   1.815%   4.515%   2.593%   1.623%
   36    6.2  1.5 -1.5   0.551%   0.067%   0.720%   9.531%   5.942%   0.514%   9.049%  10.603%
   37    7.2  1.5 -1.5  16.299%   4.697%   4.476%   1.211%   1.554%  10.510%   2.260%   2.626%
   38    8.2  1.5 -1.5  10.389%   0.942%   1.769%   8.681%   4.471%   1.763%   6.695%   8.079%


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
              1      24     1048.93       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3798.00       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    457001.26 239189.64     27.62 174594.00  43176.51      7.69      0.85      4.75
 REAL TIME  *    462830.24 SEC
 DISK USED  *         3.78 GB (local),       14.75 GB (total)
 SF USED    *        29.71 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-X2C energy=  -2605.202006993698

              CI              CI           MULTI         RHF-SCF
  -2605.15410287  -2605.49237667  -2604.19819770  -2604.60765237
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
