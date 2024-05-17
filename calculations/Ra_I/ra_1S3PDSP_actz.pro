
 Working directory              : /wrk/irikura/molpro.ZYODHInaSV/
 Global scratch directory       : /wrk/irikura/molpro.ZYODHInaSV/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ZYODHInaSV/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.01 sec
 ***,Ra SO-CI
                                                                                 ! larger core [15 19]
 memory,8,G
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ra};
 
 basis=aug-cc-pwCVTZ-X2C
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! active space (2/7) all in irrep 1
 {multi
     closed,21,22
     occ,22,28
     wf,sym=1,spin=0;state,1;
     wf,sym=1,spin=2;state,15;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,15,19
 {ci;wf,sym=1,spin=0;state,1; save,5101.2}
 hlsdiag = energd
 {ci;wf,sym=1,spin=2;state,15; save,5103.2}
 hlsdiag(2) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5101.2,5103.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (810), CPU time= 0.01 sec, 661 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Ra SO-CI                                                                      
  64 bit mpp version                                                                     DATE: 23-Apr-24          TIME: 14:10:02  
 **********************************************************************************************************************************

 SHA1:             1987c3f1b0c3ae76932bc24993909f2d7ae6b1f1
 **********************************************************************************************************************************

 Memory per process:      8000 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 8000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry RA     S aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry RA     P aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry RA     D aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry RA     F aug-cc-pwCVTZ-X      selected for orbital group  1


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

   1  RA     88.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   88
 NUMBER OF PRIMITIVE AOS:         430
 NUMBER OF SYMMETRY AOS:          359
 NUMBER OF CONTRACTIONS:          125   (   57Ag  +   68Au  )
 NUMBER OF INNER CORE ORBITALS:    39   (   20Ag  +   19Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     37.487 MB (compressed) written to integral file ( 12.8%)

     Node minimum: 4.194 MB, node maximum: 9.437 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2626485.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2626485      RECORD LENGTH: 524288

 Memory used in sort:       3.18 MW

 SORT1 READ    36081304. AND WROTE      538463. INTEGRALS IN      2 RECORDS. CPU TIME:     0.13 SEC, REAL TIME:     0.16 SEC
 SORT2 READ     3260452. AND WROTE    15753876. INTEGRALS IN     96 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC

 Node minimum:     2624806.  Node maximum:     2626485. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.525E-03 0.161E-02 0.161E-02 0.161E-02 0.161E-02 0.161E-02 0.163E-02 0.203E-01
         2 0.243E-02 0.243E-02 0.243E-02 0.514E-02 0.514E-02 0.514E-02 0.700E-01 0.700E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.07       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        14.56     14.38
 REAL TIME  *        17.67 SEC
 DISK USED  *        30.40 MB (local),      249.74 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   22  22

 Initial occupancy:  22  22

 NELEC=   88   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -24984.77408070  -24984.77408070     0.00D+00     0.21D+00     0     0       0.02      0.03    start
   2   -24984.77408070      -0.00000000     0.77D-06     0.16D-04     1     0       0.02      0.05    diag
   3   -24984.77408070      -0.00000000     0.14D-06     0.64D-05     2     0       0.01      0.06    diag
   4   -24984.77408070      -0.00000000     0.60D-07     0.33D-05     3     0       0.02      0.08    diag
   5   -24984.77408070      -0.00000000     0.28D-07     0.40D-05     4     0       0.01      0.09    diag
   6   -24984.77408070      -0.00000000     0.45D-08     0.16D-06     5     0       0.02      0.11    diag
   7   -24984.77408070       0.00000000     0.18D-08     0.12D-06     0     0       0.01      0.12    diag

 Final occupancy:  22  22

 !RHF STATE 1.1 Energy               -24984.7740807038    
  RHF One-electron energy            -33999.5252898202    
  RHF Two-electron energy            9014.751209116406
  RHF Kinetic energy                  43485.7340748081    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.574551047884

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3845.20679     1  1  s    1.00000
    2.1     2.00000  -712.75762     1  2  s    1.00000
    3.1     2.00000  -179.76742     1  3  s    1.00000
    4.1     2.00000  -118.10410     1  1  d2-  0.97399
    5.1     2.00000  -118.10410     1  1  d0   0.99987
    6.1     2.00000  -118.10410     1  1  d2+  0.97710
    7.1     2.00000  -118.10410     1  1  d1+  0.98921
    8.1     2.00000  -118.10410     1  1  d1-  0.98859
    9.1     2.00000   -45.72039     1  4  s    1.00000
   10.1     2.00000   -23.67489     1  2  d0   1.00000
   11.1     2.00000   -23.67489     1  2  d1+ -0.34047    1  2  d2+  0.92339
   12.1     2.00000   -23.67489     1  2  d2-  0.26950    1  2  d1-  0.95911
   13.1     2.00000   -23.67489     1  2  d2-  0.94081    1  2  d1- -0.25819
   14.1     2.00000   -23.67489     1  2  d1+  0.93393    1  2  d2+  0.32171
   15.1     2.00000   -10.01554     1  5  s    0.99999
   16.1     2.00000    -2.99474     1  3  d1-  0.96838
   17.1     2.00000    -2.99474     1  3  d2-  0.28706    1  3  d1+  0.95298
   18.1     2.00000    -2.99474     1  3  d2+  0.96556
   19.1     2.00000    -2.99474     1  3  d2-  0.92729    1  3  d1+ -0.29182
   20.1     2.00000    -2.99474     1  3  d0   0.99992
   21.1     2.00000    -1.62623     1  6  s    0.99951
   22.1     2.00000    -0.16560     1  7  s    1.00154
    1.2     2.00000  -604.13158     1  1  pz   0.99905
    2.2     2.00000  -604.13158     1  1  py   0.99919
    3.2     2.00000  -604.13158     1  1  px   0.99986
    4.2     2.00000  -148.72003     1  2  px   0.99991
    5.2     2.00000  -148.72003     1  2  py   0.99986
    6.2     2.00000  -148.72003     1  2  pz   0.99993
    7.2     2.00000   -35.35818     1  3  pz   0.99991
    8.2     2.00000   -35.35818     1  3  py   0.99977
    9.2     2.00000   -35.35818     1  3  px   0.99968
   10.2     2.00000   -11.20190     1  1  f0   0.99999
   11.2     2.00000   -11.20190     1  1  f3+  0.99820
   12.2     2.00000   -11.20190     1  1  f3-  0.99719
   13.2     2.00000   -11.20190     1  1  f2+  0.99960
   14.2     2.00000   -11.20190     1  1  f2-  0.99961
   15.2     2.00000   -11.20190     1  1  f1+  0.99791
   16.2     2.00000   -11.20190     1  1  f1-  0.99698
   17.2     2.00000    -6.80574     1  4  pz   1.00004
   18.2     2.00000    -6.80574     1  4  py   1.00004
   19.2     2.00000    -6.80574     1  4  px   1.00004
   20.2     2.00000    -0.80779     1  5  pz   0.99942
   21.2     2.00000    -0.80779     1  5  py   0.99942
   22.2     2.00000    -0.80779     1  5  px   0.99976


 HOMO     22.1    -0.165598 =      -4.5062eV
 LUMO     23.2     0.008544 =       0.2325eV
 LUMO-HOMO         0.174142 =       4.7386eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.07       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        2.77       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        14.70      0.14     14.38
 REAL TIME  *        17.82 SEC
 DISK USED  *        33.35 MB (local),      267.44 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  43 (  21  22 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      75 (  35  40 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             1
 Number of CSFs:              22   (37 determinants, 49 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              15   (15 determinants, 21 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.252D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.212D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.202D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.170D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.184D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.107D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.368D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.271D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.362D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.367D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.295D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.300D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.298D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.402D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.157D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 2 5 4 6 1 2   5 6 3 4 1 6 4 5 3 2   1 1 1 2 3 5 6 4 2 3   5 6 4 1 6 4 2 3 5 1
                                        2 3 5 6 4 1 6 4 3 5   2 6 4 3 5 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.538D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.403D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.175D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.168D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.233D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.150D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.158D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.233D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.336D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.777D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.671D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.873D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.461D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.449D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.918D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.978D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.663D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.663D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.255D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.258D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.337D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.278D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.278D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 26 SYMMETRY CONTAMINATION OF 0.299D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 28 SYMMETRY CONTAMINATION OF 0.299D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 2 1 6   7 910 8 4 5 3 2 1 3   2 1 2 1 3 2 1 3 2 1   3 6 5 4 810 9 7 2 1
                                        3 5 6 4 7 9 810 6 8  10 5 4 7 9 2 1 3 6 8  10 7 9 5 4 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  2043  ( 153 closed/active, 1615 closed/virtual, 0 active/active, 275 active/virtual )
 Total number of variables:    2305
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0 -24984.52999980  -24984.57103829   -0.04103849    0.08917291 0.00046652 0.00000000  0.12E+01      2.16
   2    7   12    0 -24984.56966771  -24984.56977397   -0.00010626    0.00533527 0.00000010 0.00000000  0.48E-01      4.68
   3    5    8    0 -24984.56977398  -24984.56977398   -0.00000000    0.00001074 0.00000000 0.00000000  0.19E-03      6.58
   4    2    4    0 -24984.56977398  -24984.56977398    0.00000000    0.00000000 0.00000000 0.00000000  0.57E-08      8.00

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.29E-11)
                       Final energy: -24984.56977398
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -24984.7888515241    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43486.21141155
 One electron energy                        -34000.79166508
 Two electron energy                          9016.00281356
 Virial ratio                                    1.57454508
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -24984.6315834882    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.13141732
 One electron energy                        -33992.20242083
 Two electron energy                          9007.57083734
 Virial ratio                                    1.57455573
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -24984.6315834882    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.13141732
 One electron energy                        -33992.20242083
 Two electron energy                          9007.57083734
 Virial ratio                                    1.57455573
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -24984.6315834882    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.13141732
 One electron energy                        -33992.20242083
 Two electron energy                          9007.57083734
 Virial ratio                                    1.57455573
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -24984.5629631260    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.87428343
 One electron energy                        -33984.75062845
 Two electron energy                          9000.18766532
 Virial ratio                                    1.57455755
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -24984.5629631259    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.87428343
 One electron energy                        -33984.75062845
 Two electron energy                          9000.18766532
 Virial ratio                                    1.57455755
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -24984.5629631259    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.87428343
 One electron energy                        -33984.75062849
 Two electron energy                          9000.18766537
 Virial ratio                                    1.57455755
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -24984.5629631259    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.87428343
 One electron energy                        -33984.75062849
 Two electron energy                          9000.18766537
 Virial ratio                                    1.57455755
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -24984.5629631259    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.87428343
 One electron energy                        -33984.75062851
 Two electron energy                          9000.18766538
 Virial ratio                                    1.57455755
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -24984.5593928298    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.99582738
 One electron energy                        -33986.41707353
 Two electron energy                          9001.85768070
 Virial ratio                                    1.57455587
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -24984.5593928297    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.99582739
 One electron energy                        -33986.41707358
 Two electron energy                          9001.85768075
 Virial ratio                                    1.57455587
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -24984.5593928297    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.99582739
 One electron energy                        -33986.41707358
 Two electron energy                          9001.85768075
 Virial ratio                                    1.57455587
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -24984.5567012296    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.87428343
 One electron energy                        -33984.75062848
 Two electron energy                          9000.19392725
 Virial ratio                                    1.57455741
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy             -24984.4610287886    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.49560558
 One electron energy                        -33975.63239107
 Two electron energy                          8991.17136228
 Virial ratio                                    1.57456021
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy             -24984.4610287886    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.49560558
 One electron energy                        -33975.63239107
 Two electron energy                          8991.17136228
 Virial ratio                                    1.57456021
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy             -24984.4610287884    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.49560557
 One electron energy                        -33975.63239099
 Two electron energy                          8991.17136221
 Virial ratio                                    1.57456021
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999149448
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000002072473
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999998778079
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000011229
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.071547411303
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.999990856698
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000009143278
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     2.928452577492
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.000004733786
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.999995266214
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     0.000000000000
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.000009183395
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.999990816624
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.999999999981
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999984532
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999998778332
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000001237137
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000004646
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.930120091194
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000009143195
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.999990856706
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.069879904259
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999999458
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.999995266214
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.000004734328
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     0.000000000000
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.999990816625
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.000009183718
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999999658
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000866021
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999149195
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999984784
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999999984125
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.998332497502
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.000000000107
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000000016
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.001667518250
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000000000542
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.999999999458
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     0.000000000000
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.999999999980
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.999999999658
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000000000362
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
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
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>     0.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>     2.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3845.36470     1  1  s    1.00000
    2.1     2.00000  -712.91501     1  2  s    1.00000
    3.1     2.00000  -179.92468     1  3  s    1.00000
    4.1     2.00000  -118.26179     1  1  d2-  1.00000
    5.1     2.00000  -118.26179     1  1  d2+  0.99999
    6.1     2.00000  -118.26179     1  1  d1+  0.99979
    7.1     2.00000  -118.26179     1  1  d1-  0.99980
    8.1     2.00000  -118.26179     1  1  d0   0.99999
    9.1     2.00000   -45.87721     1  4  s    1.00003
   10.1     2.00000   -23.83223     1  2  d0   1.00000
   11.1     2.00000   -23.83223     1  2  d2+  0.99999
   12.1     2.00000   -23.83223     1  2  d2-  0.99999
   13.1     2.00000   -23.83223     1  2  d1-  0.99998
   14.1     2.00000   -23.83223     1  2  d1+  0.99998
   15.1     2.00000   -10.17125     1  5  s    0.99906
   16.1     2.00000    -3.15065     1  3  d2+  1.00090
   17.1     2.00000    -3.15065     1  3  d2-  1.00090
   18.1     2.00000    -3.15065     1  3  d1-  1.00091
   19.1     2.00000    -3.15065     1  3  d1+  1.00091
   20.1     2.00000    -3.15065     1  3  d0   1.00091
   21.1     2.00000    -1.77839     1  6  s    1.00309
   22.1     0.11589    -0.12048     1  7  s    1.14059
    1.2     2.00000  -604.28932     1  1  pz   1.00000
    2.2     2.00000  -604.28932     1  1  py   0.99995
    3.2     2.00000  -604.28932     1  1  px   0.99995
    4.2     2.00000  -148.87774     1  2  px   1.00000
    5.2     2.00000  -148.87774     1  2  py   1.00000
    6.2     2.00000  -148.87774     1  2  pz   1.00000
    7.2     2.00000   -35.51564     1  3  py   0.99998
    8.2     2.00000   -35.51564     1  3  px   0.99998
    9.2     2.00000   -35.51564     1  3  pz   0.99998
   10.2     2.00000   -11.35924     1  1  f0   1.00000
   11.2     2.00000   -11.35924     1  1  f3+  1.00000
   12.2     2.00000   -11.35924     1  1  f3-  1.00000
   13.2     2.00000   -11.35924     1  1  f2+  1.00000
   14.2     2.00000   -11.35924     1  1  f2-  1.00000
   15.2     2.00000   -11.35924     1  1  f1+  0.99999
   16.2     2.00000   -11.35924     1  1  f1-  0.99999
   17.2     2.00000    -6.96241     1  4  pz   1.00100
   18.2     2.00000    -6.96241     1  4  py   1.00100
   19.2     2.00000    -6.96241     1  4  px   1.00100
   20.2     2.00000    -0.96053     1  5  py   1.03293
   21.2     2.00000    -0.96053     1  5  pz   1.03293
   22.2     2.00000    -0.96053     1  5  px   1.03293
   23.2     0.31554    -0.04132     1  6  pz  -1.17697
   24.2     0.31554    -0.04132     1  6  py  -1.17697
   25.2     0.31554    -0.04132     1  6  px  -1.17697
   26.2     0.31250     0.00317     1  6  pz   0.77873    1  8  pz   0.53165    1 11  pz   0.91685
   27.2     0.31250     0.00317     1  6  py   0.76970    1  8  py   0.52549    1 11  py   0.90622
   28.2     0.31250     0.00317     1  6  px   0.76969    1  8  px   0.52548    1 11  px   0.90621
 *** IN SYMMETRY  1 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.273D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.398D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.205D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.200D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.337D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.466D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.500D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.500D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.592D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.594D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.377D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.377D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.206D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.206D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.134D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.183D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.181D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.990D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.990D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.143D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.144D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.727D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.727D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 2   5 3 6 4 1 5 3 6 4 2   1 1 3 5 6 4 2 1 2 3   5 6 4 1 6 4 3 5 2 1
                                        2 3 5 6 4 1 6 4 3 5   2 6 4 3 5 2 1
 *** IN SYMMETRY  2 ORBITAL   2 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   3 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.190D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.190D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.178D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.250D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.355D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.434D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.499D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.382D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.315D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.313D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.221D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.221D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.487D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.488D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.409D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.152D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.152D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.230D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.230D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.104D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.104D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.125D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.125D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.319D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.319D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.314D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.314D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.121D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  55 SYMMETRY CONTAMINATION OF 0.121D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  60 SYMMETRY CONTAMINATION OF 0.114D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  61 SYMMETRY CONTAMINATION OF 0.118D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.125D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.121D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.208D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.209D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 2 1 3 6   7 910 8 4 5 3 2 1 2   3 1 3 2 1 3 2 1 2 1   3 6 810 7 9 5 4 2 1
                                        3 7 9 5 4 6 810 6 8  10 5 4 7 9 2 1 3 6 8  10 7 9 5 4 2 1 3
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 000000       0.96285967
 0 200000      -0.15587578
 0 020000      -0.15587578
 0 002000      -0.15587578
 
 Energy:   -24984.78885152
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 0 0000aa       0.03055842      0.00015420      0.00000329      0.00000000      0.00000000      0.00000000     -0.00000000
 0 000a0a      -0.00002685      0.00467543      0.03019901     -0.00000000     -0.00000000      0.00000000      0.00000000
 0 000aa0      -0.00015188      0.03019863     -0.00467551     -0.00000000      0.00000000      0.00000000     -0.00000000
 0 0aa000       0.93679062      0.00089422      0.00010015     -0.00000000     -0.00000000      0.00000000      0.00000000
 0 a0a000      -0.00010110      0.00100491      0.93679050      0.00000000      0.00000000     -0.00000000     -0.00000001
 0 aa0000      -0.00089411      0.93679008     -0.00100501     -0.00000000      0.00000000     -0.00000001      0.00000000
 0 a00a00      -0.00000011     -0.00000021      0.00100839     -0.00005177     -0.01667209      0.00000474      0.00288902
 0 00aa00       0.00002789     -0.00026438     -0.24646148     -0.00000141     -0.00285671      0.00117315      0.70709989
 0 0a0a00       0.00124362     -0.24646040      0.00026452      0.00289118     -0.00000103      0.70709988     -0.00117316
 0 0a00a0      -0.03744712     -0.00019024     -0.00000384     -0.10732521      0.70700406      0.00043817     -0.00000004
 0 0a000a       0.24359908      0.00122902      0.00002497      0.69890839      0.10859500     -0.00285779      0.00000227
 0 00a0a0      -0.24360205     -0.00023270     -0.00018053      0.69890637      0.10606093      0.00000243      0.00044014
 0 a000a0      -0.00022846      0.24356176     -0.03770860     -0.00000230     -0.00000766      0.69871792     -0.10859602
 0 a0000a      -0.00006203      0.03770887      0.24355983      0.00000244      0.00006951      0.10859691      0.69871209
 0 00a00a      -0.03744769     -0.00003468      0.00099248      0.10737729     -0.69051962     -0.00000327     -0.00285560
 
 Energy:   -24984.63158349 -24984.63158349 -24984.63158349 -24984.56296313 -24984.56296313 -24984.56296313 -24984.56296313

 State:              8               9              10              11              12              13              14
 0 0000aa      -0.00000000     -0.16790526     -0.00068641     -0.00000343     -0.00000000      0.00403287      0.00001148
 0 000a0a      -0.00000000      0.00010914     -0.02586820     -0.16590199      0.00000000      0.15259893      0.97344064
 0 000aa0       0.00000000      0.00067769     -0.16590061      0.02586843      0.00000000      0.97343249     -0.15260026
 0 0aa000       0.00000000      0.34857093     -0.00000118      0.00000836      0.00000000      0.00000005      0.00000056
 0 a0a000       0.00000000     -0.00000836      0.00074942      0.34857013     -0.00000000      0.00009006      0.03034522
 0 aa0000      -0.00000000      0.00000119      0.34857013     -0.00074942     -0.00000000      0.03034522     -0.00009006
 0 a00a00       0.81631952      0.00000006     -0.00000232     -0.00266777      0.57734545     -0.00000082     -0.00048588
 0 00aa00      -0.00172550     -0.00001905      0.00140186      0.65203050      0.00236219      0.00035244      0.11875379
 0 0a0a00      -0.00000086     -0.00266554      0.65203051     -0.00140192     -0.00000302      0.11875379     -0.00035245
 0 0a00a0      -0.38915990      0.09906948      0.00040838      0.00000150      0.57064710      0.00007447      0.00000011
 0 0a000a      -0.05977979     -0.64446176     -0.00263410     -0.00000979      0.08772238     -0.00048032     -0.00000075
 0 00a0a0       0.06425197      0.64446714     -0.00000129      0.00042417     -0.08772163      0.00000040      0.00007662
 0 a000a0       0.00050810     -0.00000458     -0.64425264      0.10045484      0.00036190     -0.11732247      0.01839176
 0 a0000a      -0.00329748      0.00001511     -0.10045568     -0.64424724     -0.00233431     -0.01839191     -0.11732148
 0 00a00a      -0.41768524      0.09907039     -0.00000600     -0.00263390      0.57064232     -0.00000140     -0.00047981
 
 Energy:   -24984.56296313 -24984.55939283 -24984.55939283 -24984.55939283 -24984.55670123 -24984.46102879 -24984.46102879

 State:             15
 0 0000aa       0.98532089
 0 000a0a      -0.00063592
 0 000aa0      -0.00398243
 0 0aa000       0.03034536
 0 a0a000      -0.00000056
 0 aa0000      -0.00000004
 0 a00a00       0.00000001
 0 00aa00      -0.00000283
 0 0a0a00      -0.00048605
 0 0a00a0       0.01804348
 0 0a000a      -0.11737555
 0 00a0a0       0.11737653
 0 a000a0      -0.00000017
 0 a0000a       0.00000220
 0 00a00a       0.01804365
 
 Energy:   -24984.46102879
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      144.73       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        5.45       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        21.18      6.48      0.14     14.38
 REAL TIME  *        27.22 SEC
 DISK USED  *       150.26 MB (local),      968.89 MB (total)
 SF USED    *       276.78 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -24984.78885   0.0
    -24984.63158   2.0
    -24984.63158   2.0
    -24984.63158   2.0
    -24984.56296   6.0
    -24984.56296   6.0
    -24984.56296   6.0
    -24984.56296   6.0
    -24984.56296   6.0
    -24984.55939   2.0
    -24984.55939   2.0
    -24984.55939   2.0
    -24984.55670   0.0
    -24984.46103   2.0
    -24984.46103   2.0
    -24984.46103   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 88
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       22 conf       22 CSFs
 N elec internal:     7966 conf    17416 CSFs
 N-1 el internal:     3724 conf    10780 CSFs
 N-2 el internal:     1054 conf     3664 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          34 (  15  19 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      75 (  35  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.12 sec, npass=  1  Memory used:   1.32 MW


 Number of p-space configurations:  22

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -24984.78885152

 Number of blocks in overlap matrix:   208   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     208
 Number of N-1 electron functions:   10780

 Number of internal configurations:                 8908
 Number of singly external configurations:        404975
 Number of doubly external configurations:        292750
 Total number of contracted configurations:       706633
 Total number of uncontracted configurations:    5560558

 Diagonal Coupling coefficients finished.               Storage: 2829017 words, CPU-Time:      0.14 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  371419 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24984.78885152     0.00000000    -0.38051003  0.18D-01  0.99D-01     0.47
    2     1     1     1.08050977    -0.31789993-24985.10675145    -0.31789993    -0.00726928  0.21D-02  0.21D-02     4.25
    3     1     1     1.07857577    -0.32496544-24985.11381697    -0.00706552    -0.00024775  0.30D-04  0.90D-04     8.02
    4     1     1     1.07969443    -0.32520811-24985.11405963    -0.00024267    -0.00001094  0.46D-05  0.29D-05    11.73
    5     1     1     1.07998530    -0.32522032-24985.11407184    -0.00001221    -0.00000057  0.16D-06  0.18D-06    15.44
    6     1     1     1.08002966    -0.32522092-24985.11407244    -0.00000060    -0.00000003  0.40D-08  0.91D-08    19.15
    7     1     1     1.08004035    -0.32522095-24985.11407247    -0.00000003    -0.00000000  0.17D-09  0.38D-09    22.87


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.8%
 S   2.5%  29.6%
 P   1.1%  49.3%   4.2%

 Initialization:   1.4%
 Other:            7.1%

 Total CPU:       22.9 seconds
 =====================================



 gnormi=  0.92589134  gnorms=  0.01084211  gnormp=  0.06326655  gnorm=  1.00000000
 ecorri= -0.30111926  ecorrs= -0.00352659  ecorrp= -0.02057510  ecorr= -0.32522095

 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222000000           0.9331528
 2222220222200000          -0.1342873
 2222220222020000          -0.1342873
 2222220222002000          -0.1342873

 Energy contributions of internal configurations for state 1
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   196       0.00005711    -1.07242585       2222222222000000                


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96129863 (fixed)   0.96170657 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00194383   -0.00118017   -0.00167478
 Singles      0.01173268   -0.01948916   -0.02153643
 Pairs        0.06846325   -0.30455162   -0.30200974
 Total        1.08213976   -0.32522095   -0.32522095
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.78885152
 Nuclear energy                         0.00000000
 Kinetic energy                     43485.04190470
 One electron energy               -33998.00264487
 Two electron energy                 9012.88857240
 Virial quotient                       -0.57456801
 Correlation energy                    -0.32522095
 !MRCI STATE 1.1 Energy              -24985.1140724720    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.14078604 (Davidson, fixed reference)
 Cluster corrected energies        -24985.14048753 (Davidson, relaxed reference)

 Cluster corrected energies        -24985.13978778 (Pople, fixed reference)
 Cluster corrected energies        -24985.13948088 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      144.73       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       11.74       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        44.31     23.12      6.48      0.14     14.38
 REAL TIME  *        50.83 SEC
 DISK USED  *       156.55 MB (local),     1006.62 MB (total)
 SF USED    *       276.78 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG        =    -24985.14048753  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 88
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       15 conf       15 CSFs
 N elec internal:     7554 conf    26454 CSFs
 N-1 el internal:     3175 conf    16423 CSFs
 N-2 el internal:      730 conf     5428 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          34 (  15  19 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      75 (  35  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -24984.63158349
     2    -24984.63158349
     3    -24984.63158349
     4    -24984.56296313
     5    -24984.56296313
     6    -24984.56296313
     7    -24984.56296313
     8    -24984.56296313
     9    -24984.55939283
    10    -24984.55939283
    11    -24984.55939283
    12    -24984.55670123
    13    -24984.46102879
    14    -24984.46102879
    15    -24984.46102879

 Number of blocks in overlap matrix:  1270   Smallest eigenvalue:  0.88D+00
 Number of N-2 electron functions:    1324
 Number of N-1 electron functions:   16423

 Number of internal configurations:                13299
 Number of singly external configurations:        616640
 Number of doubly external configurations:       1867525
 Total number of contracted configurations:      2497464
 Total number of uncontracted configurations:    8229114

 Diagonal Coupling coefficients finished.               Storage: 7561320 words, CPU-Time:     11.20 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  621270 words, CPU-time:      0.12 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24984.63158349     0.00000000    -0.36149600  0.12D-01  0.10D+00    13.99
    1     2     2     1.00000000     0.00000000-24984.63158349     0.00000000    -0.36152753  0.12D-01  0.10D+00    13.99
    1     3     3     1.00000000     0.00000000-24984.63158349    -0.00000000    -0.36152699  0.12D-01  0.10D+00    13.99
    1     4     4     1.00000000     0.00000000-24984.56296313    -0.00000000    -0.34915248  0.16D-01  0.86D-01    13.99
    1     5     5     1.00000000     0.00000000-24984.56296313     0.00000000    -0.34913457  0.16D-01  0.86D-01    13.99
    1     6     6     1.00000000     0.00000000-24984.56296313    -0.00000000    -0.34916051  0.16D-01  0.86D-01    13.99
    1     7     7     1.00000000     0.00000000-24984.56296313     0.00000000    -0.34916047  0.16D-01  0.86D-01    13.99
    1     8     8     1.00000000     0.00000000-24984.56296313    -0.00000000    -0.34912917  0.16D-01  0.86D-01    13.99
    1     9     9     1.00000000     0.00000000-24984.55939283     0.00000000    -0.35236309  0.11D-01  0.90D-01    13.99
    1    10    10     1.00000000     0.00000000-24984.55939283     0.00000000    -0.35237934  0.11D-01  0.90D-01    13.99
    1    11    11     1.00000000     0.00000000-24984.55939283    -0.00000000    -0.35237908  0.11D-01  0.90D-01    13.99
    1    12    12     1.00000000     0.00000000-24984.55670123    -0.00000000    -0.35184847  0.22D-01  0.91D-01    13.99
    1    13    13     1.00000000     0.00000000-24984.46102879     0.00000000    -0.33498011  0.79D-02  0.78D-01    13.99
    1    14    14     1.00000000     0.00000000-24984.46102879    -0.00000000    -0.33497983  0.79D-02  0.78D-01    13.99
    1    15    15     1.00000000     0.00000000-24984.46102879     0.00000000    -0.33496753  0.79D-02  0.78D-01    13.99
    2     1     1     1.08390241    -0.30683564-24984.93841913    -0.30683564    -0.00657261  0.11D-02  0.26D-02   129.59
    2     2     2     1.08394864    -0.30681837-24984.93840186    -0.30681837    -0.00659181  0.11D-02  0.27D-02   129.59
    2     3     3     1.08394925    -0.30681768-24984.93840117    -0.30681768    -0.00659275  0.11D-02  0.27D-02   129.59
    2     4     4     1.07645790    -0.30314018-24984.86610331    -0.30314018    -0.00510218  0.11D-02  0.12D-02   129.59
    2     5     5     1.07645691    -0.30313814-24984.86610127    -0.30313814    -0.00510501  0.11D-02  0.12D-02   129.59
    2     6     6     1.07647262    -0.30313592-24984.86609905    -0.30313592    -0.00510936  0.11D-02  0.12D-02   129.59
    2     7     7     1.07648547    -0.30313217-24984.86609530    -0.30313217    -0.00511326  0.11D-02  0.12D-02   129.59
    2     8     8     1.07648605    -0.30313185-24984.86609498    -0.30313185    -0.00511373  0.11D-02  0.12D-02   129.59
    2     9     9     1.07384886    -0.30319925-24984.86259208    -0.30319925    -0.00569892  0.12D-02  0.16D-02   129.59
    2    10    10     1.07387304    -0.30319074-24984.86258357    -0.30319074    -0.00570900  0.12D-02  0.16D-02   129.59
    2    11    11     1.07387375    -0.30319034-24984.86258317    -0.30319034    -0.00570955  0.12D-02  0.16D-02   129.59
    2    12    12     1.08403468    -0.30459776-24984.86129899    -0.30459776    -0.00538300  0.11D-02  0.15D-02   129.59
    2    13    13     1.06747238    -0.29737804-24984.75840683    -0.29737804    -0.00407678  0.36D-03  0.85D-03   129.59
    2    14    14     1.06754295    -0.29737216-24984.75840095    -0.29737216    -0.00408055  0.36D-03  0.86D-03   129.59
    2    15    15     1.06754321    -0.29737208-24984.75840087    -0.29737208    -0.00408064  0.36D-03  0.86D-03   129.59
    3     1     1     1.07630426    -0.31351424-24984.94509773    -0.00667860    -0.00017285  0.18D-04  0.63D-04   245.56
    3     2     2     1.07629451    -0.31351383-24984.94509731    -0.00669546    -0.00017334  0.18D-04  0.63D-04   245.56
    3     3     3     1.07629430    -0.31351377-24984.94509726    -0.00669609    -0.00017339  0.18D-04  0.63D-04   245.56
    3     4     4     1.07432878    -0.30849044-24984.87145357    -0.00535026    -0.00013204  0.26D-04  0.39D-04   245.56
    3     5     5     1.07432906    -0.30849017-24984.87145330    -0.00535203    -0.00013232  0.26D-04  0.39D-04   245.56
    3     6     6     1.07433385    -0.30849016-24984.87145329    -0.00535424    -0.00013255  0.26D-04  0.39D-04   245.56
    3     7     7     1.07433215    -0.30849006-24984.87145319    -0.00535789    -0.00013266  0.26D-04  0.39D-04   245.56
    3     8     8     1.07433188    -0.30849002-24984.87145314    -0.00535817    -0.00013271  0.26D-04  0.39D-04   245.56
    3     9     9     1.07126381    -0.30900273-24984.86839556    -0.00580348    -0.00014666  0.20D-04  0.44D-04   245.56
    3    10    10     1.07125900    -0.30900256-24984.86839538    -0.00581182    -0.00014689  0.20D-04  0.44D-04   245.56
    3    11    11     1.07125882    -0.30900252-24984.86839535    -0.00581218    -0.00014692  0.20D-04  0.44D-04   245.56
    3    12    12     1.08064860    -0.31024316-24984.86694439    -0.00564540    -0.00014968  0.28D-04  0.56D-04   245.56
    3    13    13     1.06961099    -0.30179610-24984.76282489    -0.00441806    -0.00008696  0.11D-04  0.28D-04   245.56
    3    14    14     1.06962700    -0.30179560-24984.76282439    -0.00442344    -0.00008734  0.11D-04  0.29D-04   245.56
    3    15    15     1.06962701    -0.30179559-24984.76282438    -0.00442351    -0.00008735  0.11D-04  0.29D-04   245.56
    4     1     1     1.07635209    -0.31369491-24984.94527840    -0.00018066    -0.00000498  0.13D-05  0.17D-05   360.37
    4     2     2     1.07635214    -0.31369491-24984.94527839    -0.00018108    -0.00000498  0.13D-05  0.17D-05   360.37
    4     3     3     1.07635509    -0.31369490-24984.94527839    -0.00018113    -0.00000498  0.13D-05  0.18D-05   360.37
    4     4     4     1.07434628    -0.30863216-24984.87159529    -0.00014172    -0.00000568  0.27D-05  0.18D-05   360.37
    4     5     5     1.07434642    -0.30863216-24984.87159528    -0.00014198    -0.00000568  0.27D-05  0.18D-05   360.37
    4     6     6     1.07434698    -0.30863216-24984.87159528    -0.00014200    -0.00000568  0.27D-05  0.18D-05   360.37
    4     7     7     1.07434444    -0.30863208-24984.87159521    -0.00014202    -0.00000567  0.27D-05  0.18D-05   360.37
    4     8     8     1.07434541    -0.30863207-24984.87159519    -0.00014205    -0.00000568  0.27D-05  0.18D-05   360.37
    4     9     9     1.07163546    -0.30915700-24984.86854983    -0.00015427    -0.00000504  0.14D-05  0.19D-05   360.37
    4    10    10     1.07163546    -0.30915700-24984.86854983    -0.00015444    -0.00000504  0.14D-05  0.19D-05   360.37
    4    11    11     1.07163730    -0.30915698-24984.86854981    -0.00015446    -0.00000505  0.14D-05  0.19D-05   360.37
    4    12    12     1.08097076    -0.31040449-24984.86710572    -0.00016133    -0.00000693  0.25D-05  0.33D-05   360.37
    4    13    13     1.06954224    -0.30189319-24984.76292197    -0.00009709    -0.00000369  0.64D-06  0.13D-05   360.37
    4    14    14     1.06954524    -0.30189315-24984.76292194    -0.00009756    -0.00000372  0.64D-06  0.13D-05   360.37
    4    15    15     1.06954526    -0.30189315-24984.76292194    -0.00009756    -0.00000372  0.64D-06  0.13D-05   360.37
    5     1     1     1.07628085    -0.31370071-24984.94528420    -0.00000580    -0.00000015  0.24D-07  0.50D-07   475.74
    5     2     2     1.07628085    -0.31370071-24984.94528420    -0.00000580    -0.00000015  0.24D-07  0.50D-07   475.74
    5     3     3     1.07628118    -0.31370071-24984.94528420    -0.00000581    -0.00000015  0.24D-07  0.51D-07   475.74
    5     4     4     1.07416280    -0.30863903-24984.87160215    -0.00000687    -0.00000027  0.15D-06  0.87D-07   475.74
    5     5     5     1.07416280    -0.30863903-24984.87160215    -0.00000687    -0.00000027  0.15D-06  0.87D-07   475.74
    5     6     6     1.07416295    -0.30863903-24984.87160215    -0.00000687    -0.00000027  0.15D-06  0.87D-07   475.74
    5     7     7     1.07416164    -0.30863895-24984.87160207    -0.00000686    -0.00000027  0.15D-06  0.86D-07   475.74
    5     8     8     1.07416200    -0.30863895-24984.87160207    -0.00000688    -0.00000027  0.15D-06  0.87D-07   475.74
    5     9     9     1.07158948    -0.30916292-24984.86855575    -0.00000592    -0.00000019  0.21D-07  0.97D-07   475.74
    5    10    10     1.07158947    -0.30916292-24984.86855575    -0.00000592    -0.00000019  0.21D-07  0.97D-07   475.74
    5    11    11     1.07158996    -0.30916292-24984.86855575    -0.00000594    -0.00000019  0.21D-07  0.10D-06   475.74
    5    12    12     1.08103162    -0.31041305-24984.86711428    -0.00000856    -0.00000038  0.23D-06  0.15D-06   475.74
    5    13    13     1.06945015    -0.30189740-24984.76292619    -0.00000421    -0.00000014  0.13D-07  0.80D-07   475.74
    5    14    14     1.06945068    -0.30189739-24984.76292618    -0.00000424    -0.00000014  0.13D-07  0.84D-07   475.74
    5    15    15     1.06945067    -0.30189739-24984.76292618    -0.00000424    -0.00000014  0.13D-07  0.84D-07   475.74
    6     1     1     1.07627397    -0.31370088-24984.94528437    -0.00000017    -0.00000001  0.65D-09  0.15D-08   590.59
    6     2     2     1.07627387    -0.31370088-24984.94528437    -0.00000017    -0.00000001  0.66D-09  0.15D-08   590.59
    6     3     3     1.07627387    -0.31370088-24984.94528437    -0.00000017    -0.00000001  0.66D-09  0.15D-08   590.59
    6     4     4     1.07412121    -0.30863936-24984.87160249    -0.00000034    -0.00000002  0.12D-07  0.58D-08   590.59
    6     5     5     1.07412117    -0.30863936-24984.87160249    -0.00000034    -0.00000002  0.12D-07  0.58D-08   590.59
    6     6     6     1.07412118    -0.30863936-24984.87160249    -0.00000034    -0.00000002  0.12D-07  0.58D-08   590.59
    6     7     7     1.07412083    -0.30863928-24984.87160241    -0.00000034    -0.00000002  0.12D-07  0.57D-08   590.59
    6     8     8     1.07412090    -0.30863928-24984.87160241    -0.00000034    -0.00000002  0.12D-07  0.57D-08   590.59
    6     9     9     1.07157635    -0.30916314-24984.86855597    -0.00000022    -0.00000001  0.65D-09  0.63D-08   590.59
    6    10    10     1.07157635    -0.30916314-24984.86855597    -0.00000022    -0.00000001  0.65D-09  0.63D-08   590.59
    6    11    11     1.07157649    -0.30916314-24984.86855597    -0.00000022    -0.00000001  0.66D-09  0.66D-08   590.59
    6    12    12     1.08111873    -0.31041353-24984.86711476    -0.00000048    -0.00000003  0.30D-07  0.83D-08   590.59
    6    13    13     1.06943853    -0.30189757-24984.76292636    -0.00000017    -0.00000001  0.69D-09  0.92D-08   590.59
    6    14    14     1.06943870    -0.30189757-24984.76292636    -0.00000017    -0.00000001  0.69D-09  0.99D-08   590.59
    6    15    15     1.06943870    -0.30189757-24984.76292636    -0.00000017    -0.00000001  0.69D-09  0.99D-08   590.59
    7     1     1     1.07627327    -0.31370088-24984.94528437    -0.00000000    -0.00000000  0.68D-09  0.15D-08   665.75
    7     2     2     1.07627328    -0.31370088-24984.94528437    -0.00000000    -0.00000000  0.68D-09  0.15D-08   665.75
    7     3     3     1.07627397    -0.31370088-24984.94528437    -0.00000000    -0.00000001  0.65D-09  0.15D-08   665.75
    7     4     4     1.07410960    -0.30863939-24984.87160251    -0.00000002    -0.00000000  0.14D-08  0.41D-09   665.75
    7     5     5     1.07410960    -0.30863939-24984.87160251    -0.00000002    -0.00000000  0.14D-08  0.41D-09   665.75
    7     6     6     1.07410960    -0.30863939-24984.87160251    -0.00000002    -0.00000000  0.14D-08  0.41D-09   665.75
    7     7     7     1.07410945    -0.30863930-24984.87160243    -0.00000002    -0.00000000  0.14D-08  0.41D-09   665.75
    7     8     8     1.07410943    -0.30863930-24984.87160243    -0.00000002    -0.00000000  0.14D-08  0.40D-09   665.75
    7     9     9     1.07157821    -0.30916314-24984.86855597    -0.00000000    -0.00000001  0.54D-09  0.41D-08   665.75
    7    10    10     1.07157821    -0.30916314-24984.86855597    -0.00000000    -0.00000001  0.54D-09  0.41D-08   665.75
    7    11    11     1.07157649    -0.30916314-24984.86855597    -0.00000000    -0.00000001  0.66D-09  0.66D-08   665.75
    7    12    12     1.08116158    -0.31041358-24984.86711481    -0.00000004    -0.00000000  0.13D-08  0.79D-09   665.75
    7    13    13     1.06943414    -0.30189758-24984.76292637    -0.00000001    -0.00000000  0.59D-10  0.87D-09   665.75
    7    14    14     1.06943414    -0.30189758-24984.76292637    -0.00000001    -0.00000000  0.59D-10  0.87D-09   665.75
    7    15    15     1.06943853    -0.30189757-24984.76292636    -0.00000000    -0.00000001  0.69D-09  0.92D-08   665.75


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.6%
 S   1.2%  23.8%
 P   0.5%  31.7%  11.4%

 Initialization:   1.7%
 Other:           26.1%

 Total CPU:      665.8 seconds
 =====================================



 gnormi=  0.92913206  gnorms=  0.00594151  gnormp=  0.06492644  gnorm=  1.00000000
 ecorri= -0.29146954  ecorrs= -0.00186480  ecorrp= -0.02036654  ecorr= -0.31370088

 gnormi=  0.92913205  gnorms=  0.00594151  gnormp=  0.06492644  gnorm=  1.00000000
 ecorri= -0.29146954  ecorrs= -0.00186480  ecorrp= -0.02036654  ecorr= -0.31370088

 gnormi=  0.92913146  gnorms=  0.00594150  gnormp=  0.06492704  gnorm=  1.00000000
 ecorri= -0.29146935  ecorrs= -0.00186480  ecorrp= -0.02036672  ecorr= -0.31370088

 gnormi=  0.93100369  gnorms=  0.00803125  gnormp=  0.06096506  gnorm=  1.00000000
 ecorri= -0.28734441  ecorrs= -0.00247809  ecorrp= -0.01881689  ecorr= -0.30863939

 gnormi=  0.93100369  gnorms=  0.00803125  gnormp=  0.06096506  gnorm=  1.00000000
 ecorri= -0.28734441  ecorrs= -0.00247809  ecorrp= -0.01881689  ecorr= -0.30863939

 gnormi=  0.93100369  gnorms=  0.00803125  gnormp=  0.06096506  gnorm=  1.00000000
 ecorri= -0.28734441  ecorrs= -0.00247809  ecorrp= -0.01881689  ecorr= -0.30863939

 gnormi=  0.93100382  gnorms=  0.00803110  gnormp=  0.06096508  gnorm=  1.00000000
 ecorri= -0.28734437  ecorrs= -0.00247805  ecorrp= -0.01881688  ecorr= -0.30863930

 gnormi=  0.93100384  gnorms=  0.00803108  gnormp=  0.06096508  gnorm=  1.00000000
 ecorri= -0.28734438  ecorrs= -0.00247805  ecorrp= -0.01881688  ecorr= -0.30863930

 gnormi=  0.93320300  gnorms=  0.00531191  gnormp=  0.06148509  gnorm=  1.00000000
 ecorri= -0.28851197  ecorrs= -0.00164272  ecorrp= -0.01900845  ecorr= -0.30916314

 gnormi=  0.93320300  gnorms=  0.00531191  gnormp=  0.06148509  gnorm=  1.00000000
 ecorri= -0.28851197  ecorrs= -0.00164272  ecorrp= -0.01900845  ecorr= -0.30916314

 gnormi=  0.93320450  gnorms=  0.00531223  gnormp=  0.06148327  gnorm=  1.00000000
 ecorri= -0.28851243  ecorrs= -0.00164272  ecorrp= -0.01900799  ecorr= -0.30916314

 gnormi=  0.92493112  gnorms=  0.01355085  gnormp=  0.06151802  gnorm=  1.00000000
 ecorri= -0.28711118  ecorrs= -0.00420679  ecorrp= -0.01909560  ecorr= -0.31041358

 gnormi=  0.93507394  gnorms=  0.00558262  gnormp=  0.05934344  gnorm=  1.00000000
 ecorri= -0.28229656  ecorrs= -0.00168522  ecorrp= -0.01791580  ecorr= -0.30189758

 gnormi=  0.93507394  gnorms=  0.00558262  gnormp=  0.05934344  gnorm=  1.00000000
 ecorri= -0.28229656  ecorrs= -0.00168522  ecorrp= -0.01791580  ecorr= -0.30189758

 gnormi=  0.93507011  gnorms=  0.00558302  gnormp=  0.05934687  gnorm=  1.00000000
 ecorri= -0.28229539  ecorrs= -0.00168579  ecorrp= -0.01791639  ecorr= -0.30189757

 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222220222000/0/          -0.0000000   0.0173995   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                           -0.0000000   0.1270621  -0.0000000   0.0000000  -0.0000000   0.9586478  -0.0000000
 2222220222000//0           0.0173995   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                            0.1270621   0.0000000  -0.0000000   0.0000000   0.9586478   0.0000000   0.0000000
 22222202220000//           0.0000000  -0.0000000   0.0173996   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                           -0.0000000  -0.0000000   0.1270632   0.0000000  -0.0000000   0.0000000   0.9586456
 2222220222//0000           0.9230870   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                           -0.2734652   0.0000000  -0.0000000  -0.0000000   0.0192724   0.0000000  -0.0000000
 2222220222/0/000          -0.0000000   0.9230870  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                           -0.0000000  -0.2734652  -0.0000000   0.0000000  -0.0000000   0.0192724   0.0000000
 22222202220//000           0.0000000   0.0000000   0.9230867  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                            0.0000000   0.0000000  -0.2734676  -0.0000000   0.0000000  -0.0000000   0.0192775
 2222220222/00/00           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0521937   0.7859701
                            0.0000000   0.0000000  -0.0000000   0.5551706   0.0000000  -0.0000000   0.0000000
 22222202220/00/0           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.7067669  -0.3477840
                           -0.0000000  -0.0000000   0.0000000   0.5551705  -0.0000000  -0.0000000  -0.0000000
 2222220222/0000/          -0.0000000   0.1954023  -0.0000000   0.0000000   0.0000000   0.6821692   0.0000000  -0.0000000
                            0.0000000   0.6488223  -0.0000000   0.0000000  -0.0000000  -0.0877071   0.0000000
 2222220222/000/0           0.1954023  -0.0000000  -0.0000000   0.0000000   0.6821692  -0.0000000  -0.0000000  -0.0000000
                            0.6488223  -0.0000000  -0.0000000   0.0000000  -0.0877071   0.0000000   0.0000000
 22222202220/000/           0.0000000   0.0000000   0.1954023   0.6821692   0.0000000  -0.0000000  -0.0000000   0.0000000
                            0.0000000   0.0000000   0.6488222  -0.0000000   0.0000000  -0.0000000  -0.0877074
 222222022200/0/0          -0.0000000  -0.0000000  -0.1954023   0.6821692  -0.0000000   0.0000000   0.0000000  -0.0000000
                           -0.0000000  -0.0000000  -0.6488222   0.0000000  -0.0000000  -0.0000000   0.0877074
 22222202220/0/00          -0.1954023  -0.0000000  -0.0000000  -0.0000000   0.6821691   0.0000000   0.0000000   0.0000000
                           -0.6488223  -0.0000000  -0.0000000  -0.0000000   0.0877071  -0.0000000  -0.0000000
 222222022200//00           0.0000000  -0.1954023   0.0000000  -0.0000000  -0.0000000   0.6821691  -0.0000000   0.0000000
                           -0.0000000  -0.6488223   0.0000000  -0.0000000   0.0000000   0.0877071  -0.0000000
 222222022200/00/           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.6545732  -0.4381861
                           -0.0000000  -0.0000000   0.0000000   0.5551705  -0.0000000  -0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222/222000000  28.1     0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                           -0.0000000  -0.0000000   0.0000000   0.0834181  -0.0000000   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.961590   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.064021
            -0.000000    0.000000   -0.001254   -0.000000   -0.000000
 2           0.000000    0.000000    0.961590   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.064021   -0.000000    0.000000   -0.001254   -0.000000
 3           0.961590   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.064020   -0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.001254
 4           0.000000    0.000000    0.000000    0.964733    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.000000    0.964733   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.964733    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000    0.963716   -0.000000    0.000000   -0.044280   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000
 8           0.000000    0.000000   -0.000000    0.000000    0.044280    0.000000   -0.000000    0.963716    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 9           0.000000    0.067525   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.962769
             0.000000   -0.000000   -0.037203   -0.000000   -0.000000
 10          0.000000    0.000000    0.067525   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.962769   -0.000000    0.000000   -0.037203   -0.000000
 11          0.067523   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.962770   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.037202
 12         -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.961584    0.000000    0.000000    0.000000
 13          0.000000    0.004116   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.039869
            -0.000000   -0.000000    0.966000   -0.000000   -0.000000
 14         -0.000000    0.000000    0.004116   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.039869   -0.000000    0.000000    0.966000    0.000000
 15          0.004121    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.039866    0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.965998

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.963719    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.001732    0.000000
             0.000000   -0.000000    0.000099   -0.000000    0.000000
 2           0.000000    0.963719    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.001732
             0.000000    0.000000    0.000000    0.000099   -0.000000
 3          -0.000000    0.000000    0.963718    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.001730   -0.000000   -0.000000    0.000000    0.000102
 4           0.000000   -0.000000    0.000000    0.964733   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.964733    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.964733   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 7          -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.964733   -0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.964733    0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000000
 9           0.001732    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.965849   -0.000000
            -0.000000    0.000000    0.001410   -0.000000    0.000000
 10          0.000000    0.001732   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.965849
            -0.000000    0.000000   -0.000000    0.001410    0.000000
 11          0.000000    0.000000    0.001730   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.965849   -0.000000   -0.000000   -0.000000    0.001409
 12         -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.961584    0.000000   -0.000000   -0.000000
 13          0.000099    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.001410   -0.000000
            -0.000000    0.000000    0.966830    0.000000    0.000000
 14         -0.000000    0.000099    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.001410
            -0.000000   -0.000000    0.000000    0.966830    0.000000
 15          0.000000   -0.000000    0.000102    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.001409   -0.000000    0.000000    0.000000    0.966828


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96159047 (fixed)   0.96372010 (relaxed)   0.96371854 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00040767   -0.00053697   -0.27890678
 Singles      0.00639729   -0.01352647   -0.01442756
 Pairs        0.06990708    0.00000000   -0.02036654
 Total        1.07671204   -0.01406344   -0.31370088
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.63124715
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.24149113
 One electron energy               -33990.50031225
 Two electron energy                 9005.55502789
 Virial quotient                       -0.57457471
 Correlation energy                    -0.31403722
 !MRCI STATE 1.1 Energy              -24984.9452843677    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.96937480 (Davidson, fixed reference)
 Cluster corrected energies        -24984.96937371 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.96937480 (Davidson, rotated reference)

 Cluster corrected energies        -24984.96804186 (Pople, fixed reference)
 Cluster corrected energies        -24984.96804076 (Pople, relaxed reference)
 Cluster corrected energies        -24984.96804186 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96159047 (fixed)   0.96372010 (relaxed)   0.96371854 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00040767   -0.00053697   -0.27890678
 Singles      0.00639729   -0.01352647   -0.01442756
 Pairs        0.06990708    0.00000000   -0.02036654
 Total        1.07671204   -0.01406344   -0.31370088
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.63124715
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.24149112
 One electron energy               -33990.50031243
 Two electron energy                 9005.55502806
 Virial quotient                       -0.57457471
 Correlation energy                    -0.31403722
 !MRCI STATE 2.1 Energy              -24984.9452843677    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.96937480 (Davidson, fixed reference)
 Cluster corrected energies        -24984.96937371 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.96937480 (Davidson, rotated reference)

 Cluster corrected energies        -24984.96804186 (Pople, fixed reference)
 Cluster corrected energies        -24984.96804076 (Pople, relaxed reference)
 Cluster corrected energies        -24984.96804186 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96159016 (fixed)   0.96371979 (relaxed)   0.96371823 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00040767   -0.00053696   -0.27930777
 Singles      0.00639729   -0.01352646   -0.01442753
 Pairs        0.06990777    0.00043193   -0.01996557
 Total        1.07671273   -0.01363149   -0.31370088
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.63124716
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.24147862
 One electron energy               -33990.50031090
 Two electron energy                 9005.55502653
 Virial quotient                       -0.57457471
 Correlation energy                    -0.31403720
 !MRCI STATE 3.1 Energy              -24984.9452843677    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.96937502 (Davidson, fixed reference)
 Cluster corrected energies        -24984.96937393 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.96937502 (Davidson, rotated reference)

 Cluster corrected energies        -24984.96804207 (Pople, fixed reference)
 Cluster corrected energies        -24984.96804098 (Pople, relaxed reference)
 Cluster corrected energies        -24984.96804207 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96473287 (fixed)   0.96473287 (relaxed)   0.96473287 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031608   -0.00049085   -0.27517050
 Singles      0.00862917   -0.01308024   -0.01465200
 Pairs        0.06550386   -0.00000000   -0.01881689
 Total        1.07444910   -0.01357109   -0.30863939
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.56296313
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.09552208
 One electron energy               -33983.08213002
 Two electron energy                 8998.21052750
 Virial quotient                       -0.57457494
 Correlation energy                    -0.30863939
 !MRCI STATE 4.1 Energy              -24984.8716025127    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89458044 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89458044 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89458044 (Davidson, rotated reference)

 Cluster corrected energies        -24984.89326937 (Pople, fixed reference)
 Cluster corrected energies        -24984.89326937 (Pople, relaxed reference)
 Cluster corrected energies        -24984.89326937 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96473287 (fixed)   0.96473287 (relaxed)   0.96473287 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031608   -0.00049085   -0.27517050
 Singles      0.00862917   -0.01308024   -0.01465200
 Pairs        0.06550386    0.00000000   -0.01881689
 Total        1.07444910   -0.01357108   -0.30863939
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.56296313
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.09552092
 One electron energy               -33983.08212857
 Two electron energy                 8998.21052605
 Virial quotient                       -0.57457494
 Correlation energy                    -0.30863939
 !MRCI STATE 5.1 Energy              -24984.8716025127    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89458044 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89458044 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89458044 (Davidson, rotated reference)

 Cluster corrected energies        -24984.89326937 (Pople, fixed reference)
 Cluster corrected energies        -24984.89326937 (Pople, relaxed reference)
 Cluster corrected energies        -24984.89326937 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96473287 (fixed)   0.96473287 (relaxed)   0.96473287 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031608   -0.00049085   -0.27517050
 Singles      0.00862917   -0.01308024   -0.01465200
 Pairs        0.06550386    0.00000000   -0.01881689
 Total        1.07444910   -0.01357109   -0.30863939
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.56296313
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.09552116
 One electron energy               -33983.08212886
 Two electron energy                 8998.21052635
 Virial quotient                       -0.57457494
 Correlation energy                    -0.30863939
 !MRCI STATE 6.1 Energy              -24984.8716025127    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89458044 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89458044 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89458044 (Davidson, rotated reference)

 Cluster corrected energies        -24984.89326937 (Pople, fixed reference)
 Cluster corrected energies        -24984.89326937 (Pople, relaxed reference)
 Cluster corrected energies        -24984.89326937 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96371622 (fixed)   0.96473296 (relaxed)   0.96473296 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031604   -0.00049082   -0.27517051
 Singles      0.00862900   -0.01308019   -0.01465191
 Pairs        0.06550386   -0.00000000   -0.01881688
 Total        1.07444891   -0.01357101   -0.30863930
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.56296313
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.09551616
 One electron energy               -33983.08210571
 Two electron energy                 8998.21050328
 Virial quotient                       -0.57457494
 Correlation energy                    -0.30863930
 !MRCI STATE 7.1 Energy              -24984.8716024309    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89458029 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89458029 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89458029 (Davidson, rotated reference)

 Cluster corrected energies        -24984.89326922 (Pople, fixed reference)
 Cluster corrected energies        -24984.89326922 (Pople, relaxed reference)
 Cluster corrected energies        -24984.89326922 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.96371623 (fixed)   0.96473297 (relaxed)   0.96473297 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031604   -0.00049082   -0.27517052
 Singles      0.00862899   -0.01308019   -0.01465191
 Pairs        0.06550386    0.00000000   -0.01881688
 Total        1.07444889   -0.01357100   -0.30863930
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.56296313
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.09551622
 One electron energy               -33983.08210467
 Two electron energy                 8998.21050224
 Virial quotient                       -0.57457494
 Correlation energy                    -0.30863930
 !MRCI STATE 8.1 Energy              -24984.8716024308    

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89458028 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89458028 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89458028 (Davidson, rotated reference)

 Cluster corrected energies        -24984.89326922 (Pople, fixed reference)
 Cluster corrected energies        -24984.89326922 (Pople, relaxed reference)
 Cluster corrected energies        -24984.89326922 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.96276942 (fixed)   0.96585126 (relaxed)   0.96584868 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00036375   -0.00053060   -0.27698370
 Singles      0.00569420   -0.01235794   -0.01317100
 Pairs        0.06591005    0.00000000   -0.01900845
 Total        1.07196799   -0.01288854   -0.30916314
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.55957062
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.13765317
 One electron energy               -33983.97371257
 Two electron energy                 8999.10515660
 Virial quotient                       -0.57457431
 Correlation energy                    -0.30898535
 !MRCI STATE 9.1 Energy              -24984.8685559728    

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89079303 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89079126 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89079303 (Davidson, rotated reference)

 Cluster corrected energies        -24984.88948226 (Pople, fixed reference)
 Cluster corrected energies        -24984.88948050 (Pople, relaxed reference)
 Cluster corrected energies        -24984.88948226 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.96276942 (fixed)   0.96585126 (relaxed)   0.96584868 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00036375   -0.00053060   -0.27698370
 Singles      0.00569420   -0.01235794   -0.01317100
 Pairs        0.06591005    0.00000000   -0.01900845
 Total        1.07196799   -0.01288854   -0.30916314
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.55957062
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.13765306
 One electron energy               -33983.97371247
 Two electron energy                 8999.10515650
 Virial quotient                       -0.57457431
 Correlation energy                    -0.30898535
 !MRCI STATE 10.1 Energy             -24984.8685559728    

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89079303 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89079126 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89079303 (Davidson, rotated reference)

 Cluster corrected energies        -24984.88948226 (Pople, fixed reference)
 Cluster corrected energies        -24984.88948050 (Pople, relaxed reference)
 Cluster corrected energies        -24984.88948226 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96277039 (fixed)   0.96585204 (relaxed)   0.96584946 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00036374   -0.00053059   -0.29033202
 Singles      0.00569453   -0.01235796   -0.01317104
 Pairs        0.06590800    0.01430850   -0.00566009
 Total        1.07196626    0.00141995   -0.30916314
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.55957062
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.13743487
 One electron energy               -33983.97325762
 Two electron energy                 8999.10470165
 Virial quotient                       -0.57457432
 Correlation energy                    -0.30898534
 !MRCI STATE 11.1 Energy             -24984.8685559689    

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89079249 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89079072 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89079249 (Davidson, rotated reference)

 Cluster corrected energies        -24984.88948173 (Pople, fixed reference)
 Cluster corrected energies        -24984.88947996 (Pople, relaxed reference)
 Cluster corrected energies        -24984.88948173 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.96158360 (fixed)   0.96158360 (relaxed)   0.96158360 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031158   -0.00049063   -0.27382744
 Singles      0.01465523   -0.01436635   -0.01749053
 Pairs        0.06653165   -0.00000000   -0.01909560
 Total        1.08149846   -0.01485698   -0.31041358
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.55670123
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.10433174
 One electron energy               -33983.12773619
 Two electron energy                 8998.26062138
 Virial quotient                       -0.57457472
 Correlation energy                    -0.31041358
 !MRCI STATE 12.1 Energy             -24984.8671148050    

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.89241303 (Davidson, fixed reference)
 Cluster corrected energies        -24984.89241303 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.89241303 (Davidson, rotated reference)

 Cluster corrected energies        -24984.89110608 (Pople, fixed reference)
 Cluster corrected energies        -24984.89110608 (Pople, relaxed reference)
 Cluster corrected energies        -24984.89110608 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.96599979 (fixed)   0.96683094 (relaxed)   0.96682991 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033578   -0.00056086   -0.27221374
 Singles      0.00597225   -0.01078654   -0.01176804
 Pairs        0.06348521    0.00000000   -0.01791580
 Total        1.06979324   -0.01134740   -0.30189758
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.46118733
 Nuclear energy                         0.00000000
 Kinetic energy                     43483.87421834
 One electron energy               -33974.27256803
 Two electron energy                 8989.50964166
 Virial quotient                       -0.57457537
 Correlation energy                    -0.30173904
 !MRCI STATE 13.1 Energy             -24984.7629263683    

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.78398571 (Davidson, fixed reference)
 Cluster corrected energies        -24984.78398502 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.78398571 (Davidson, rotated reference)

 Cluster corrected energies        -24984.78270963 (Pople, fixed reference)
 Cluster corrected energies        -24984.78270895 (Pople, relaxed reference)
 Cluster corrected energies        -24984.78270963 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.96599979 (fixed)   0.96683094 (relaxed)   0.96682991 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033578   -0.00056086   -0.27221374
 Singles      0.00597225   -0.01078654   -0.01176804
 Pairs        0.06348521   -0.00000000   -0.01791580
 Total        1.06979324   -0.01134740   -0.30189758
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.46118733
 Nuclear energy                         0.00000000
 Kinetic energy                     43483.87421836
 One electron energy               -33974.27256806
 Two electron energy                 8989.50964169
 Virial quotient                       -0.57457537
 Correlation energy                    -0.30173904
 !MRCI STATE 14.1 Energy             -24984.7629263683    

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.78398571 (Davidson, fixed reference)
 Cluster corrected energies        -24984.78398502 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.78398571 (Davidson, rotated reference)

 Cluster corrected energies        -24984.78270963 (Pople, fixed reference)
 Cluster corrected energies        -24984.78270895 (Pople, relaxed reference)
 Cluster corrected energies        -24984.78270963 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.96599788 (fixed)   0.96682894 (relaxed)   0.96682791 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033581   -0.00056089   -0.00088526
 Singles      0.00597270   -0.01078564   -0.01176773
 Pairs        0.06348915   -0.29026627   -0.28924458
 Total        1.06979765   -0.30161279   -0.30189757
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.46118732
 Nuclear energy                         0.00000000
 Kinetic energy                     43483.87340835
 One electron energy               -33974.27173019
 Two electron energy                 8989.50880383
 Virial quotient                       -0.57457538
 Correlation energy                    -0.30173904
 !MRCI STATE 15.1 Energy             -24984.7629263570    

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.78398703 (Davidson, fixed reference)
 Cluster corrected energies        -24984.78398634 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.78398703 (Davidson, rotated reference)

 Cluster corrected energies        -24984.78271094 (Pople, fixed reference)
 Cluster corrected energies        -24984.78271026 (Pople, relaxed reference)
 Cluster corrected energies        -24984.78271094 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      144.73       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      308.72       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1589.64   1545.33     23.12      6.48      0.14     14.38
 REAL TIME  *      1628.94 SEC
 DISK USED  *       453.53 MB (local),        2.72 GB (total)
 SF USED    *         3.11 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =    -24984.96937480  AU                              
 SETTING HLSDIAG(3)     =    -24984.96937480  AU                              
 SETTING HLSDIAG(4)     =    -24984.96937502  AU                              
 SETTING HLSDIAG(5)     =    -24984.89458044  AU                              
 SETTING HLSDIAG(6)     =    -24984.89458044  AU                              
 SETTING HLSDIAG(7)     =    -24984.89458044  AU                              
 SETTING HLSDIAG(8)     =    -24984.89458029  AU                              
 SETTING HLSDIAG(9)     =    -24984.89458028  AU                              
 SETTING HLSDIAG(10)    =    -24984.89079303  AU                              
 SETTING HLSDIAG(11)    =    -24984.89079303  AU                              
 SETTING HLSDIAG(12)    =    -24984.89079249  AU                              
 SETTING HLSDIAG(13)    =    -24984.89241303  AU                              
 SETTING HLSDIAG(14)    =    -24984.78398571  AU                              
 SETTING HLSDIAG(15)    =    -24984.78398571  AU                              
 SETTING HLSDIAG(16)    =    -24984.78398703  AU                              


         HLSDIAG
    -24985.14049
    -24984.96937
    -24984.96937
    -24984.96938
    -24984.89458
    -24984.89458
    -24984.89458
    -24984.89458
    -24984.89458
    -24984.89079
    -24984.89079
    -24984.89079
    -24984.89241
    -24984.78399
    -24984.78399
    -24984.78399
                                                  

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

 Time for Seward_LS:     289.29 sec

 CPU time:    289.29 sec, REAL time:    307.42 sec


 SORTLS1 read    19073439. and wrote    19073439. SO integrals in    84 records. CPU time:      0.15 sec, REAL time:      0.28 sec
 SORTLS2 read    19073439. and wrote    19073439. SO integrals in    18 records. CPU time:      0.09 sec, REAL time:      0.20 sec

 FILE SIZES: FILE 1:   151.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   151.9 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      144.82       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      308.72       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1883.04    293.37   1545.33     23.12      6.48      0.14     14.38
 REAL TIME  *      1940.79 SEC
 DISK USED  *       453.62 MB (local),        3.29 GB (total)
 SF USED    *         3.11 GB
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
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   1

 Original energies:***********
 Replaced energies:***********

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  15

 Original energies:**************************************************************************************************************
                   *******************************************************
 Replaced energies:**************************************************************************************************************
                   *******************************************************



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-24985.14048753

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00    -636.19       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00    -636.19      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00     360.43

    2   1.1  1.0  1.0       0.00   37554.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          636.19       0.00    1660.93      -0.00       0.00       0.00    -671.11       0.00      -0.00      -0.00

    3   2.1  1.0  1.0    -636.19       0.00   37554.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1660.93       0.00       0.00       0.00     671.11      -0.00       0.00      -0.00     578.65

    4   3.1  1.0  1.0       0.00       0.00       0.00   37554.86       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      51.35    -773.21       0.00

    5   4.1  1.0  1.0      -0.00       0.00       0.00       0.00   53970.37       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00   -2296.69    -152.52      -0.00

    6   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00   53970.37       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -671.11       0.00      -0.00      -0.00    1150.88       0.00      -0.00      -0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   53970.37       0.00       0.00       0.00
                           -0.00     671.11       0.00       0.00       0.00   -1150.88      -0.00      -0.00       0.00     733.85

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53970.40       0.00       0.00
                            0.00      -0.00      -0.00     -51.35    2296.69      -0.00       0.00       0.00       0.00      -0.00

    9   8.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53970.40       0.00
                            0.00       0.00       0.00     773.21     152.52       0.00      -0.00      -0.00       0.00       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54801.61
                         -360.43       0.00    -578.65      -0.00       0.00       0.00    -733.85       0.00      -0.00      -0.00

   11  10.1  1.0  1.0     360.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     578.65       0.00      -0.00      -0.00     733.85      -0.00       0.00      -0.00   -1273.30

   12  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      56.15    -845.52       0.00

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00   -1089.71      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   14  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           40.15      -0.00    -105.40       0.00       0.00       0.00     601.59       0.00      -0.00      -0.00

   15  14.1  1.0  1.0     -40.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     105.40       0.00       0.00       0.00    -601.59      -0.00       0.00       0.00     581.01

   16  15.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00     -46.03     693.14      -0.00

   17   1.1  1.0  0.0       0.00      -0.00      -0.00   -1174.46     474.55      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00     455.34     304.81      -0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00    -491.64     241.93       0.00
                           -0.00       0.00       0.00    1174.45     474.55       0.00      -0.00      -0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00    1174.46       0.00       0.00      -0.00     474.55      -0.00       0.00      -0.00    -409.17
                         -899.71       0.00   -1174.45      -0.00      -0.00      -0.00    -474.55      -0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00    -474.55       0.00       0.00       0.00    -813.80      -0.00      -0.00       0.00    -518.91
                            0.00       0.00    -474.55       0.00       0.00      -0.00    -813.80       0.00       0.00      -0.00

   21   5.1  1.0  0.0       0.00       0.00      -0.00    -474.55     813.80      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00     905.40   -1352.51      -0.00

   22   6.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00    -718.61   -1460.35      -0.00
                            0.00       0.00       0.00     474.55     813.80       0.00       0.00      -0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00      -0.00     491.64      -0.00       0.00      -0.00     718.61      -0.00      -0.00      -0.00
                            0.00    -455.34       0.00       0.00      -0.00    -905.40       0.00       0.00       0.00    -497.92

   24   8.1  1.0  0.0       0.00       0.00    -241.93       0.00      -0.00       0.00    1460.35       0.00       0.00       0.00
                           -0.00    -304.81      -0.00      -0.00      -0.00    1352.51      -0.00      -0.00       0.00    -333.32

   25   9.1  1.0  0.0       0.00       0.00      -0.00     409.17     518.91       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00     497.92     333.32       0.00

   26  10.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00    -537.62     264.55       0.00
                            0.00       0.00       0.00    -409.17     518.91       0.00      -0.00      -0.00       0.00       0.00

   27  11.1  1.0  0.0       0.00    -409.16       0.00       0.00      -0.00     518.91      -0.00       0.00      -0.00     900.36
                          509.72      -0.00     409.16      -0.00      -0.00      -0.00    -518.91      -0.00       0.00      -0.00

   28  12.1  1.0  0.0       0.00       0.00    -770.54       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00    -770.54      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    -852.93

   29  13.1  1.0  0.0       0.00       0.00       0.00      74.53    -425.39       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00    -408.18    -273.24       0.00

   30  14.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     440.73    -216.87       0.00
                            0.00      -0.00       0.00     -74.53    -425.39      -0.00       0.00       0.00       0.00      -0.00

   31  15.1  1.0  0.0       0.00     -74.55      -0.00       0.00       0.00    -425.39       0.00      -0.00       0.00    -410.82
                          -56.77       0.00      74.55       0.00       0.00       0.00     425.39       0.00      -0.00       0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -636.19      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   2.1  1.0 -1.0    -636.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   5.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   8.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          360.43      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41  10.1  1.0 -1.0     360.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -40.15      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45  14.1  1.0 -1.0     -40.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46  15.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0     360.43       0.00       0.00       0.00     -40.15      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -40.15      -0.00       0.00       0.00       0.00     899.71      -0.00

    2   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    1174.46    -474.55
                         -578.65      -0.00       0.00       0.00    -105.40       0.00      -0.00      -0.00      -0.00      -0.00

    3   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     105.40      -0.00       0.00       0.00      -0.00    1174.45     474.55

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   -1174.46      -0.00       0.00       0.00
                            0.00      -0.00    1089.71      -0.00      -0.00      -0.00       0.00   -1174.45       0.00      -0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     474.55      -0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00    -474.55       0.00      -0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     474.55    -813.80
                         -733.85       0.00       0.00      -0.00     601.59      -0.00      -0.00      -0.00       0.00       0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00    -601.59       0.00      -0.00       0.00       0.00     474.55     813.80

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -491.64       0.00      -0.00
                           -0.00     -56.15      -0.00      -0.00      -0.00      46.03    -455.34       0.00       0.00      -0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     241.93      -0.00       0.00
                            0.00     845.52       0.00       0.00      -0.00    -693.14    -304.81      -0.00      -0.00      -0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -409.17    -518.91
                         1273.30      -0.00       0.00       0.00    -581.01       0.00       0.00      -0.00      -0.00       0.00

   11  10.1  1.0  1.0   54801.61       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00     581.01      -0.00      -0.00       0.00       0.00    -409.17     518.91

   12  11.1  1.0  1.0       0.00   54801.73       0.00       0.00       0.00       0.00     409.16      -0.00      -0.00       0.00
                            0.00      -0.00    1206.24      -0.00      -0.00      -0.00      -0.00     409.16      -0.00      -0.00

   13  12.1  1.0  1.0       0.00       0.00   54446.06       0.00       0.00       0.00      -0.00     770.54      -0.00       0.00
                           -0.00   -1206.24       0.00      -0.00       0.00     984.94    -770.54      -0.00       0.00      -0.00

   14  13.1  1.0  1.0       0.00       0.00       0.00   78243.11       0.00       0.00      -0.00      -0.00     -74.53     425.39
                         -581.01       0.00       0.00       0.00     364.95      -0.00      -0.00      -0.00       0.00       0.00

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00   78243.11       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00    -364.95      -0.00      -0.00      -0.00       0.00     -74.53    -425.39

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   78242.82      74.55       0.00      -0.00      -0.00
                            0.00       0.00    -984.94       0.00       0.00       0.00       0.00      74.55       0.00       0.00

   17   1.1  1.0  0.0      -0.00     409.16      -0.00      -0.00       0.00      74.55   37554.90       0.00       0.00       0.00
                           -0.00       0.00     770.54       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0      -0.00      -0.00     770.54      -0.00      -0.00       0.00       0.00   37554.90       0.00       0.00
                           -0.00    -409.16       0.00       0.00      -0.00     -74.55      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00      -0.00      -0.00     -74.53      -0.00      -0.00       0.00       0.00   37554.86       0.00
                          409.17       0.00      -0.00      -0.00      74.53      -0.00      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00     425.39       0.00      -0.00       0.00       0.00       0.00   53970.37
                         -518.91       0.00       0.00      -0.00     425.39      -0.00      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0      -0.00    -518.91       0.00      -0.00      -0.00     425.39       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00     518.91      -0.00       0.00      -0.00    -425.39      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0     537.62      -0.00       0.00       0.00    -440.73       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     408.18      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0    -264.55       0.00      -0.00      -0.00     216.87      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     273.24      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0      -0.00    -900.36       0.00      -0.00      -0.00     410.82       0.00       0.00       0.00       0.00
                           -0.00       0.00     852.93      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26  10.1  1.0  0.0      -0.00       0.00     852.93      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     900.36      -0.00       0.00       0.00    -410.82      -0.00      -0.00      -0.00      -0.00

   27  11.1  1.0  0.0      -0.00      -0.00      -0.00    -410.83      -0.00       0.00       0.00       0.00       0.00       0.00
                         -900.36       0.00      -0.00      -0.00     410.83      -0.00      -0.00      -0.00      -0.00      -0.00

   28  12.1  1.0  0.0    -852.93       0.00       0.00      -0.00     696.45      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     696.45      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29  13.1  1.0  0.0       0.00     410.83       0.00       0.00       0.00    -258.06       0.00       0.00       0.00       0.00
                           -0.00       0.00    -696.45      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30  14.1  1.0  0.0       0.00       0.00    -696.45      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00    -410.83       0.00      -0.00       0.00     258.06      -0.00      -0.00      -0.00      -0.00

   31  15.1  1.0  0.0      -0.00      -0.00       0.00     258.06       0.00       0.00       0.00       0.00       0.00       0.00
                          410.82       0.00       0.00       0.00    -258.06       0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00   -1174.46     474.55
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    1174.45     474.55

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    1174.46       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00   -1174.45      -0.00      -0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -474.55       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -474.55       0.00       0.00

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -474.55     813.80
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     474.55     813.80

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     491.64      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -455.34       0.00       0.00      -0.00

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -241.93       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -304.81      -0.00      -0.00      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     409.17     518.91
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   41  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -409.17     518.91

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -409.16       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     409.16      -0.00      -0.00

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -770.54       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -770.54      -0.00       0.00      -0.00

   44  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      74.53    -425.39
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -74.53    -425.39

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     -74.55      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      74.55       0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00    -509.72       0.00       0.00      -0.00

    2   1.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00       0.00    -409.16       0.00       0.00      -0.00
                            0.00      -0.00     455.34     304.81      -0.00      -0.00       0.00     770.54       0.00       0.00

    3   2.1  1.0  1.0      -0.00      -0.00     491.64    -241.93      -0.00       0.00       0.00    -770.54       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00    -409.16       0.00       0.00      -0.00

    4   3.1  1.0  1.0    -474.55       0.00      -0.00       0.00     409.17      -0.00       0.00       0.00      74.53       0.00
                           -0.00    -474.55      -0.00       0.00       0.00     409.17       0.00      -0.00      -0.00      74.53

    5   4.1  1.0  1.0     813.80       0.00       0.00      -0.00     518.91      -0.00      -0.00      -0.00    -425.39      -0.00
                           -0.00    -813.80       0.00       0.00      -0.00    -518.91       0.00       0.00      -0.00     425.39

    6   5.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00     518.91      -0.00       0.00       0.00
                            0.00      -0.00     905.40   -1352.51      -0.00      -0.00       0.00      -0.00      -0.00       0.00

    7   6.1  1.0  1.0       0.00       0.00     718.61    1460.35       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00     518.91      -0.00       0.00      -0.00

    8   7.1  1.0  1.0       0.00    -718.61      -0.00       0.00       0.00    -537.62       0.00      -0.00      -0.00     440.73
                         -905.40       0.00      -0.00       0.00    -497.92       0.00       0.00      -0.00     408.18      -0.00

    9   8.1  1.0  1.0      -0.00   -1460.35      -0.00       0.00      -0.00     264.55      -0.00       0.00       0.00    -216.87
                         1352.51      -0.00      -0.00      -0.00    -333.32      -0.00      -0.00      -0.00     273.24      -0.00

   10   9.1  1.0  1.0      -0.00      -0.00      -0.00       0.00      -0.00       0.00     900.36      -0.00       0.00       0.00
                            0.00      -0.00     497.92     333.32      -0.00      -0.00       0.00     852.93      -0.00       0.00

   11  10.1  1.0  1.0      -0.00      -0.00     537.62    -264.55      -0.00      -0.00      -0.00    -852.93       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00     900.36      -0.00       0.00       0.00

   12  11.1  1.0  1.0    -518.91       0.00      -0.00       0.00    -900.36       0.00      -0.00       0.00     410.83       0.00
                           -0.00    -518.91      -0.00       0.00      -0.00    -900.36      -0.00      -0.00      -0.00     410.83

   13  12.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.00     852.93      -0.00       0.00       0.00    -696.45
                            0.00       0.00       0.00       0.00    -852.93       0.00       0.00      -0.00     696.45      -0.00

   14  13.1  1.0  1.0      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -410.83      -0.00       0.00      -0.00
                            0.00      -0.00    -408.18    -273.24       0.00      -0.00       0.00    -696.45       0.00       0.00

   15  14.1  1.0  1.0      -0.00      -0.00    -440.73     216.87      -0.00      -0.00      -0.00     696.45       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00    -410.83       0.00      -0.00      -0.00

   16  15.1  1.0  1.0     425.39      -0.00       0.00      -0.00     410.82       0.00       0.00      -0.00    -258.06      -0.00
                            0.00     425.39       0.00      -0.00       0.00     410.82       0.00       0.00       0.00    -258.06

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   5.1  1.0  0.0   53970.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   6.1  1.0  0.0       0.00   53970.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00   53970.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   53970.40       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   54801.61       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   54801.61       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   54801.73       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54446.06       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   78243.11       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   78243.11
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      -0.00      -0.00     409.16      -0.00      -0.00       0.00
                            0.00      -0.00     455.34     304.81      -0.00      -0.00       0.00     770.54       0.00       0.00

   33   2.1  1.0 -1.0       0.00       0.00    -491.64     241.93       0.00      -0.00      -0.00     770.54      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00    -409.16       0.00       0.00      -0.00

   34   3.1  1.0 -1.0     474.55      -0.00       0.00      -0.00    -409.17       0.00      -0.00      -0.00     -74.53      -0.00
                           -0.00    -474.55      -0.00       0.00       0.00     409.17       0.00      -0.00      -0.00      74.53

   35   4.1  1.0 -1.0    -813.80      -0.00      -0.00       0.00    -518.91       0.00       0.00       0.00     425.39       0.00
                           -0.00    -813.80       0.00       0.00      -0.00    -518.91       0.00       0.00      -0.00     425.39

   36   5.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -518.91       0.00      -0.00      -0.00
                           -0.00      -0.00     905.40   -1352.51      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   37   6.1  1.0 -1.0      -0.00       0.00    -718.61   -1460.35      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00     518.91      -0.00       0.00      -0.00

   38   7.1  1.0 -1.0      -0.00     718.61      -0.00      -0.00      -0.00     537.62      -0.00       0.00       0.00    -440.73
                         -905.40       0.00       0.00       0.00    -497.92       0.00       0.00      -0.00     408.18      -0.00

   39   8.1  1.0 -1.0       0.00    1460.35       0.00       0.00       0.00    -264.55       0.00      -0.00      -0.00     216.87
                         1352.51      -0.00      -0.00       0.00    -333.32      -0.00      -0.00      -0.00     273.24      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00    -900.36       0.00      -0.00      -0.00
                            0.00      -0.00     497.92     333.32       0.00      -0.00       0.00     852.93      -0.00       0.00

   41  10.1  1.0 -1.0       0.00       0.00    -537.62     264.55       0.00      -0.00       0.00     852.93      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00     900.36      -0.00       0.00       0.00

   42  11.1  1.0 -1.0     518.91      -0.00       0.00      -0.00     900.36      -0.00      -0.00      -0.00    -410.83      -0.00
                           -0.00    -518.91      -0.00       0.00      -0.00    -900.36       0.00      -0.00      -0.00     410.83

   43  12.1  1.0 -1.0      -0.00       0.00      -0.00       0.00      -0.00    -852.93       0.00       0.00      -0.00     696.45
                            0.00       0.00       0.00       0.00    -852.93       0.00       0.00       0.00     696.45      -0.00

   44  13.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.00       0.00     410.83       0.00       0.00       0.00
                            0.00      -0.00    -408.18    -273.24       0.00      -0.00       0.00    -696.45      -0.00       0.00

   45  14.1  1.0 -1.0       0.00       0.00     440.73    -216.87       0.00       0.00       0.00    -696.45      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00    -410.83       0.00      -0.00       0.00

   46  15.1  1.0 -1.0    -425.39       0.00      -0.00       0.00    -410.82      -0.00      -0.00       0.00     258.06       0.00
                            0.00     425.39       0.00      -0.00       0.00     410.82       0.00       0.00       0.00    -258.06


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00    -636.19       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                           56.77     636.19       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00    -360.43

    2   1.1  1.0  1.0     -74.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -74.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   5.1  1.0  1.0    -425.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -425.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   7.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   9.1  1.0  1.0    -410.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  10.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -410.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  11.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  13.1  1.0  1.0     258.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          258.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00      -0.00       0.00    1174.46    -474.55       0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     455.34     304.81      -0.00

   18   2.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00     491.64    -241.93      -0.00
                            0.00       0.00      -0.00    1174.45     474.55       0.00      -0.00      -0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00   -1174.46      -0.00       0.00       0.00    -474.55       0.00      -0.00       0.00     409.17
                            0.00       0.00   -1174.45       0.00      -0.00      -0.00    -474.55      -0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00     474.55      -0.00      -0.00       0.00     813.80       0.00       0.00      -0.00     518.91
                            0.00       0.00    -474.55       0.00      -0.00      -0.00    -813.80       0.00       0.00      -0.00

   21   5.1  1.0  0.0       0.00      -0.00       0.00     474.55    -813.80      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00     905.40   -1352.51      -0.00

   22   6.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00     718.61    1460.35       0.00
                            0.00       0.00       0.00     474.55     813.80       0.00      -0.00      -0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00    -491.64       0.00      -0.00       0.00    -718.61      -0.00       0.00       0.00
                            0.00    -455.34       0.00       0.00      -0.00    -905.40       0.00      -0.00       0.00    -497.92

   24   8.1  1.0  0.0       0.00      -0.00     241.93      -0.00       0.00      -0.00   -1460.35      -0.00       0.00      -0.00
                            0.00    -304.81      -0.00      -0.00      -0.00    1352.51      -0.00      -0.00      -0.00    -333.32

   25   9.1  1.0  0.0       0.00      -0.00       0.00    -409.17    -518.91      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00     497.92     333.32      -0.00

   26  10.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00     537.62    -264.55      -0.00
                            0.00       0.00       0.00    -409.17     518.91       0.00      -0.00      -0.00       0.00       0.00

   27  11.1  1.0  0.0       0.00     409.16      -0.00      -0.00       0.00    -518.91       0.00      -0.00       0.00    -900.36
                            0.00      -0.00     409.16      -0.00      -0.00      -0.00    -518.91      -0.00       0.00      -0.00

   28  12.1  1.0  0.0       0.00      -0.00     770.54      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00    -770.54      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    -852.93

   29  13.1  1.0  0.0       0.00      -0.00      -0.00     -74.53     425.39      -0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00    -408.18    -273.24       0.00

   30  14.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -440.73     216.87      -0.00
                            0.00      -0.00       0.00     -74.53    -425.39      -0.00       0.00       0.00       0.00      -0.00

   31  15.1  1.0  0.0   78242.82      74.55       0.00      -0.00      -0.00     425.39      -0.00       0.00      -0.00     410.82
                            0.00       0.00      74.55       0.00       0.00       0.00     425.39       0.00      -0.00       0.00

   32   1.1  1.0 -1.0      74.55   37554.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -1660.93       0.00      -0.00      -0.00     671.11      -0.00       0.00       0.00

   33   2.1  1.0 -1.0       0.00       0.00   37554.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -74.55    1660.93      -0.00      -0.00      -0.00    -671.11       0.00      -0.00       0.00    -578.65

   34   3.1  1.0 -1.0      -0.00       0.00       0.00   37554.86       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     -51.35     773.21      -0.00

   35   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00   53970.37       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00    2296.69     152.52       0.00

   36   5.1  1.0 -1.0     425.39       0.00       0.00       0.00       0.00   53970.37       0.00       0.00       0.00       0.00
                           -0.00       0.00     671.11      -0.00       0.00       0.00   -1150.88      -0.00       0.00       0.00

   37   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00   53970.37       0.00       0.00       0.00
                         -425.39    -671.11      -0.00      -0.00      -0.00    1150.88       0.00       0.00      -0.00    -733.85

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53970.40       0.00       0.00
                           -0.00       0.00       0.00      51.35   -2296.69       0.00      -0.00      -0.00      -0.00       0.00

   39   8.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   53970.40       0.00
                            0.00      -0.00      -0.00    -773.21    -152.52      -0.00       0.00       0.00      -0.00      -0.00

   40   9.1  1.0 -1.0     410.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54801.61
                           -0.00      -0.00     578.65       0.00      -0.00      -0.00     733.85      -0.00       0.00       0.00

   41  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -410.82    -578.65      -0.00       0.00       0.00    -733.85       0.00      -0.00       0.00    1273.30

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00     -56.15     845.52      -0.00

   43  12.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    1089.71       0.00       0.00      -0.00      -0.00       0.00       0.00

   44  13.1  1.0 -1.0    -258.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     105.40      -0.00      -0.00      -0.00    -601.59      -0.00       0.00       0.00

   45  14.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          258.06    -105.40      -0.00      -0.00      -0.00     601.59       0.00      -0.00      -0.00    -581.01

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      46.03    -693.14       0.00


   Nr   State  S   Sz       41         42         43         44         45         46

    1   1.1  0.0  0.0     360.43       0.00       0.00       0.00     -40.15      -0.00
                            0.00      -0.00      -0.00      40.15       0.00      -0.00

    2   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   11  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   12  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   14  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00    -409.16       0.00       0.00      -0.00     -74.55
                           -0.00       0.00     770.54       0.00       0.00      -0.00

   18   2.1  1.0  0.0       0.00       0.00    -770.54       0.00       0.00      -0.00
                           -0.00    -409.16       0.00       0.00      -0.00     -74.55

   19   3.1  1.0  0.0      -0.00       0.00       0.00      74.53       0.00       0.00
                          409.17       0.00      -0.00      -0.00      74.53      -0.00

   20   4.1  1.0  0.0      -0.00      -0.00      -0.00    -425.39      -0.00       0.00
                         -518.91       0.00       0.00      -0.00     425.39      -0.00

   21   5.1  1.0  0.0       0.00     518.91      -0.00       0.00       0.00    -425.39
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00

   22   6.1  1.0  0.0       0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00     518.91      -0.00       0.00      -0.00    -425.39

   23   7.1  1.0  0.0    -537.62       0.00      -0.00      -0.00     440.73      -0.00
                            0.00       0.00      -0.00     408.18      -0.00      -0.00

   24   8.1  1.0  0.0     264.55      -0.00       0.00       0.00    -216.87       0.00
                           -0.00      -0.00      -0.00     273.24      -0.00       0.00

   25   9.1  1.0  0.0       0.00     900.36      -0.00       0.00       0.00    -410.82
                           -0.00       0.00     852.93      -0.00       0.00      -0.00

   26  10.1  1.0  0.0      -0.00      -0.00    -852.93       0.00       0.00      -0.00
                           -0.00     900.36      -0.00       0.00       0.00    -410.82

   27  11.1  1.0  0.0       0.00      -0.00       0.00     410.83       0.00      -0.00
                         -900.36      -0.00      -0.00      -0.00     410.83      -0.00

   28  12.1  1.0  0.0     852.93      -0.00       0.00       0.00    -696.45       0.00
                            0.00       0.00      -0.00     696.45      -0.00      -0.00

   29  13.1  1.0  0.0      -0.00    -410.83      -0.00       0.00      -0.00     258.06
                           -0.00       0.00    -696.45       0.00       0.00      -0.00

   30  14.1  1.0  0.0      -0.00      -0.00     696.45       0.00      -0.00       0.00
                           -0.00    -410.83       0.00      -0.00      -0.00     258.06

   31  15.1  1.0  0.0       0.00       0.00      -0.00    -258.06      -0.00       0.00
                          410.82       0.00       0.00       0.00    -258.06      -0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                          578.65       0.00      -0.00      -0.00     105.40      -0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -105.40       0.00      -0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00   -1089.71       0.00       0.00       0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                          733.85      -0.00      -0.00       0.00    -601.59       0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     601.59      -0.00       0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      56.15       0.00       0.00       0.00     -46.03

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -845.52      -0.00      -0.00       0.00     693.14

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                        -1273.30       0.00      -0.00      -0.00     581.01      -0.00

   41  10.1  1.0 -1.0   54801.61       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -581.01       0.00       0.00

   42  11.1  1.0 -1.0       0.00   54801.73       0.00       0.00       0.00       0.00
                           -0.00       0.00   -1206.24       0.00       0.00       0.00

   43  12.1  1.0 -1.0       0.00       0.00   54446.06       0.00       0.00       0.00
                            0.00    1206.24      -0.00       0.00      -0.00    -984.94

   44  13.1  1.0 -1.0       0.00       0.00       0.00   78243.11       0.00       0.00
                          581.01      -0.00      -0.00      -0.00    -364.95       0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00   78243.11       0.00
                           -0.00      -0.00       0.00     364.95       0.00       0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   78242.82
                           -0.00      -0.00     984.94      -0.00      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 46)

    The diagonal matrixelements are shifted by -24985.14048753 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000    -899.709       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000   37554.903       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+           -899.709       0.000   37554.903       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000   37554.855       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000   53970.369       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000   53970.369       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   53970.369       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   53970.401
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+            509.723       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+            -56.781       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000     643.942

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000    1660.930     671.112       0.000      -0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                             -899.710       0.000   -1660.930       0.000      -0.000      -0.000    -671.113      -0.000

    4    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000    -671.112       0.000       0.000      -0.000   -1150.884       0.000

    5    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000    1280.427

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000     671.113    1150.884       0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000    -643.942       0.000       0.000      -0.000   -1280.427       0.000       0.000

    8    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000    -431.069      -0.000      -0.000      -0.000    1912.733      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000     704.164

   10    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000    -578.655     733.847       0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                              509.717      -0.000     578.641      -0.000      -0.000      -0.000    -733.852      -0.000

   12    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000   -1089.707      -0.000       0.000      -0.000       0.000       0.000       0.000

   13    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000    -577.253

   14    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000    -105.400    -601.591      -0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                              -56.765       0.000     105.433       0.000       0.000       0.000     601.597       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              899.709       0.000    1660.928      -0.000       0.000       0.000    -671.112       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1660.928       0.000       0.000       0.000     671.112      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      51.346

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000   -2296.688

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -671.112       0.000      -0.000      -0.000    1150.883       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     671.112       0.000       0.000       0.000   -1150.883      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     -51.346    2296.688      -0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     773.206     152.515       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -509.723       0.000    -578.654      -0.000       0.000       0.000    -733.846       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     578.654       0.000      -0.000      -0.000     733.846      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      56.148

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000   -1089.709      -0.000      -0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               56.781      -0.000    -105.399       0.000       0.000       0.000     601.591       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     105.399       0.000       0.000       0.000    -601.591      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000     -46.029

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.000       0.000     509.723       0.000       0.000       0.000     -56.781      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+          53970.402       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000   54801.609       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000   54801.609       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000   54801.728       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000   54446.059       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   78243.105       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   78243.105       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   78242.816
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                              431.069      -0.000      -0.000       0.000    1089.707       0.000       0.000      -0.000

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000    -578.641       0.000       0.000      -0.000    -105.433

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000     578.655       0.000      -0.000      -0.000     105.400      -0.000

    4    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000    -733.847       0.000       0.000      -0.000     601.591      -0.000

    5    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                            -1912.733      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     733.852      -0.000       0.000      -0.000    -601.597

    7    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000    -704.164       0.000       0.000      -0.000     577.253      -0.000      -0.000

    8    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000    -471.383      -0.000      -0.000      -0.000     386.426      -0.000       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                              471.383       0.000      -0.000       0.000    1206.231      -0.000       0.000      -0.000

   10    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000    1273.297      -0.000       0.000       0.000    -580.986

   11    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000   -1273.297       0.000      -0.000      -0.000     581.008      -0.000

   12    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000   -1206.231       0.000       0.000       0.000     984.931      -0.000      -0.000

   13    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                             -386.426       0.000      -0.000       0.000    -984.931       0.000       0.000      -0.000

   14    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000    -581.008       0.000      -0.000       0.000     364.946

   15    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000     580.986       0.000       0.000       0.000    -364.946       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -578.654      -0.000       0.000       0.000    -105.399       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     578.654      -0.000       0.000       0.000     105.399      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -773.206       0.000       0.000      -0.000    1089.709      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -152.515      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -733.846       0.000       0.000      -0.000     601.591      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     733.846       0.000       0.000      -0.000    -601.591       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     -56.148      -0.000      -0.000      -0.000      46.029

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     845.521       0.000       0.000      -0.000    -693.135

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    1273.302      -0.000       0.000       0.000    -581.006       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000   -1273.302       0.000      -0.000       0.000     581.006      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -845.521       0.000       0.000      -0.000    1206.239      -0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000   -1206.239       0.000      -0.000       0.000     984.939

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -581.006       0.000       0.000       0.000     364.947      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     581.006       0.000       0.000      -0.000    -364.947      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              693.135      -0.000       0.000       0.000    -984.939       0.000       0.000       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     899.710      -0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000     643.942     431.069

    2    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000    1660.930     671.112       0.000      -0.000      -0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000   -1660.930       0.000      -0.000      -0.000    -671.113      -0.000       0.000

    4    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000    -671.112       0.000       0.000      -0.000   -1150.884       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000    1280.427   -1912.733

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000     671.113    1150.884       0.000       0.000      -0.000       0.000

    7    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                             -643.942       0.000       0.000      -0.000   -1280.427       0.000       0.000       0.000

    8    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                             -431.069      -0.000      -0.000      -0.000    1912.733      -0.000      -0.000       0.000

    9    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000     704.164     471.383

   10    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000    -578.655     733.847       0.000      -0.000      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000     578.641      -0.000      -0.000      -0.000    -733.852      -0.000       0.000

   12    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                            -1089.707      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000    -577.253    -386.426

   14    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000    -105.400    -601.591      -0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000     105.433       0.000       0.000       0.000     601.597       0.000      -0.000

    1    1  |1 0>           37554.903       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000   37554.903       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000   37554.855       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000   53970.369       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000   53970.369       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   53970.369       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   53970.401       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   53970.402
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000    1660.930    -671.112       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 1>-             -0.000       0.000       0.000       0.000      -0.000      -0.000     695.287    -342.135
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 1>-          -1660.930      -0.000       0.000       0.000    -671.113       0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    4    1  |1 1>-            671.112      -0.000      -0.000       0.000    1150.883       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 1>-             -0.000       0.000     671.113   -1150.883       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000      -0.000      -0.000       0.000       0.000    1016.262    2065.248
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000    -695.287       0.000      -0.000       0.000   -1016.262       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 1>-             -0.000     342.135      -0.000       0.000      -0.000   -2065.248      -0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 1>-             -0.000       0.000    -578.655    -733.847      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   10    1  |1 1>-             -0.000      -0.000       0.000       0.000      -0.000      -0.000     760.311    -374.132
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 1>-            578.641      -0.000      -0.000       0.000    -733.852       0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   12    1  |1 1>-             -0.000    1089.707      -0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   13    1  |1 1>-             -0.000      -0.000    -105.400     601.591      -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   14    1  |1 1>-              0.000      -0.000      -0.000       0.000      -0.000      -0.000    -623.281     306.702
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   15    1  |1 1>-            105.432       0.000      -0.000      -0.000     601.597      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -509.717       0.000       0.000      -0.000      56.765    -899.709

    1    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000    1089.707       0.000       0.000      -0.000       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000    -578.641       0.000       0.000      -0.000    -105.433   -1660.928

    3    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000     578.655       0.000      -0.000      -0.000     105.400      -0.000       0.000

    4    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000    -733.847       0.000       0.000      -0.000     601.591      -0.000      -0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000     733.852      -0.000       0.000      -0.000    -601.597     671.112

    7    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -704.164       0.000       0.000      -0.000     577.253      -0.000      -0.000      -0.000

    8    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                             -471.383      -0.000      -0.000      -0.000     386.426      -0.000       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000    1206.231      -0.000       0.000      -0.000       0.000

   10    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000    1273.297      -0.000       0.000       0.000    -580.986     578.654

   11    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000   -1273.297       0.000      -0.000      -0.000     581.008      -0.000       0.000

   12    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                            -1206.231       0.000       0.000       0.000     984.931      -0.000      -0.000      -0.000

   13    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    -984.931       0.000       0.000      -0.000      -0.000

   14    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000      -0.000    -581.008       0.000      -0.000       0.000     364.946     105.399

   15    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000     580.986       0.000       0.000       0.000    -364.946       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    1660.930
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    -671.112
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>           54801.609       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000   54801.609       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000   54801.728       0.000       0.000       0.000       0.000    -578.641
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000   54446.059       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000   78243.105       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000   78243.105       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   78242.816    -105.432
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000    -578.641       0.000       0.000      -0.000    -105.432   37554.903
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-             -0.000       0.000       0.000   -1089.707       0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 1>-            578.655      -0.000       0.000       0.000     105.400       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    4    1  |1 1>-            733.847      -0.000      -0.000      -0.000    -601.591      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000     733.852      -0.000       0.000       0.000    -601.597       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000    -760.311       0.000      -0.000      -0.000     623.281      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 1>-             -0.000     374.132      -0.000       0.000       0.000    -306.702       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000    1273.297      -0.000       0.000       0.000    -580.986       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   10    1  |1 1>-             -0.000       0.000      -0.000   -1206.231       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

   11    1  |1 1>-          -1273.297       0.000       0.000       0.000     581.008       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000    1206.231      -0.000       0.000       0.000    -984.931       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-             -0.000      -0.000    -581.008      -0.000       0.000      -0.000     364.946       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   14    1  |1 1>-             -0.000      -0.000      -0.000     984.931       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   15    1  |1 1>-            580.986       0.000       0.000      -0.000    -364.946      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000     509.723

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1660.928      -0.000       0.000       0.000    -671.112       0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     671.112      -0.000       0.000      -0.000     578.654

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      51.346    -773.206       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000   -2296.688    -152.515      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -671.112       0.000      -0.000      -0.000    1150.883       0.000      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1150.883      -0.000      -0.000       0.000     733.846

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -51.346    2296.688      -0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     773.206     152.515       0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -578.654      -0.000       0.000       0.000    -733.846       0.000      -0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     733.846      -0.000       0.000      -0.000   -1273.302

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      56.148    -845.521       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000   -1089.709      -0.000      -0.000       0.000       0.000      -0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -105.399       0.000       0.000       0.000     601.591       0.000      -0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -601.591      -0.000       0.000       0.000     581.006

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000     -46.029     693.135      -0.000

    1    1  |1 0>              -0.000   -1660.930     671.112      -0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000    -695.287     342.135       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000     671.113      -0.000       0.000      -0.000    -578.655
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000   -1150.883      -0.000      -0.000       0.000    -733.847
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 0>              -0.000    -671.113    1150.883       0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000   -1016.262   -2065.248      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 0>             695.287      -0.000       0.000      -0.000    1016.262       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>            -342.135       0.000      -0.000       0.000    2065.248       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 0>              -0.000     578.655     733.847       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000    -760.311     374.132       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000      -0.000     733.852      -0.000       0.000      -0.000    1273.297
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   12    1  |1 0>           -1089.707       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 0>               0.000     105.400    -601.591       0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000      -0.000       0.000       0.000     623.281    -306.702       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   15    1  |1 0>              -0.000       0.000       0.000    -601.597       0.000      -0.000       0.000    -580.986
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-          37554.903       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000   37554.855       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000   53970.369       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000   53970.369       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   53970.369       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   53970.401       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   53970.402       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   54801.609
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -56.781      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                             -578.654      -0.000       0.000       0.000    -105.399       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     105.399      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    1089.709      -0.000      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                             -733.846       0.000       0.000      -0.000     601.591      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -601.591       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -56.148      -0.000      -0.000      -0.000      46.029

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     845.521       0.000       0.000      -0.000    -693.135

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                             1273.302      -0.000       0.000       0.000    -581.006       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     581.006      -0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    1206.239      -0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000   -1206.239       0.000      -0.000       0.000     984.939

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                             -581.006       0.000       0.000       0.000     364.947      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -364.947      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -984.939       0.000       0.000       0.000

    1    1  |1 0>              -0.000     578.641      -0.000      -0.000       0.000     105.432
                                0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>              -0.000      -0.000    1089.707      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000      -0.000    -105.400      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000     601.591       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>              -0.000    -733.852       0.000      -0.000      -0.000     601.597
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 0>             760.311      -0.000       0.000       0.000    -623.281       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>            -374.132       0.000      -0.000      -0.000     306.702      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 0>              -0.000   -1273.297       0.000      -0.000      -0.000     580.986
                               -0.000       0.000       0.000      -0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000    1206.231      -0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000

   11    1  |1 0>              -0.000       0.000      -0.000    -581.008      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000

   12    1  |1 0>           -1206.231       0.000       0.000      -0.000     984.931      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000

   13    1  |1 0>               0.000     581.008       0.000       0.000       0.000    -364.946
                                0.000       0.000       0.000      -0.000      -0.000       0.000

   14    1  |1 0>               0.000       0.000    -984.931      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000

   15    1  |1 0>              -0.000      -0.000       0.000     364.946       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-          54801.609       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   54801.728       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   54446.059       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   78243.105       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   78243.105       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   78242.816
                                0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-24985.14088685    -0.00039932      -87.64      0.00000000        0.00      0.0000
    2-24984.98450447     0.15598306    34234.32      0.15638238    34321.96      4.2554
    3-24984.97779571     0.16269183    35706.73      0.16309115    35794.37      4.4379
    4-24984.97779571     0.16269183    35706.73      0.16309115    35794.37      4.4379
    5-24984.97779559     0.16269194    35706.75      0.16309126    35794.39      4.4379
    6-24984.96238295     0.17810458    39089.44      0.17850390    39177.08      4.8573
    7-24984.96238290     0.17810464    39089.45      0.17850396    39177.09      4.8573
    8-24984.96238290     0.17810464    39089.45      0.17850396    39177.09      4.8573
    9-24984.96238282     0.17810471    39089.47      0.17850403    39177.11      4.8573
   10-24984.96238280     0.17810473    39089.47      0.17850405    39177.11      4.8573
   11-24984.91183345     0.22865408    50183.77      0.22905340    50271.41      6.2329
   12-24984.91183343     0.22865410    50183.77      0.22905342    50271.41      6.2329
   13-24984.91183343     0.22865410    50183.77      0.22905342    50271.41      6.2329
   14-24984.90225323     0.23823430    52286.39      0.23863362    52374.03      6.4936
   15-24984.90147552     0.23901202    52457.07      0.23941134    52544.71      6.5147
   16-24984.90147539     0.23901215    52457.10      0.23941147    52544.74      6.5147
   17-24984.90147538     0.23901215    52457.10      0.23941147    52544.74      6.5147
   18-24984.90136386     0.23912367    52481.58      0.23952299    52569.22      6.5178
   19-24984.90136385     0.23912368    52481.58      0.23952300    52569.22      6.5178
   20-24984.90136375     0.23912378    52481.60      0.23952310    52569.24      6.5178
   21-24984.90136374     0.23912379    52481.61      0.23952311    52569.25      6.5178
   22-24984.90136374     0.23912379    52481.61      0.23952311    52569.25      6.5178
   23-24984.88567136     0.25481618    55925.69      0.25521550    56013.33      6.9448
   24-24984.88567122     0.25481631    55925.72      0.25521563    56013.36      6.9448
   25-24984.88567122     0.25481631    55925.72      0.25521563    56013.36      6.9448
   26-24984.88409284     0.25639469    56272.13      0.25679401    56359.77      6.9877
   27-24984.88409284     0.25639469    56272.13      0.25679401    56359.77      6.9877
   28-24984.88409283     0.25639470    56272.13      0.25679402    56359.77      6.9877
   29-24984.88409283     0.25639470    56272.13      0.25679402    56359.77      6.9877
   30-24984.88409283     0.25639471    56272.13      0.25679403    56359.77      6.9877
   31-24984.88409283     0.25639471    56272.13      0.25679403    56359.77      6.9877
   32-24984.88409282     0.25639472    56272.14      0.25679404    56359.78      6.9877
   33-24984.88315047     0.25733706    56478.96      0.25773638    56566.60      7.0134
   34-24984.88315044     0.25733709    56478.96      0.25773641    56566.60      7.0134
   35-24984.88315020     0.25733733    56479.02      0.25773665    56566.66      7.0134
   36-24984.88315020     0.25733733    56479.02      0.25773665    56566.66      7.0134
   37-24984.88315015     0.25733738    56479.03      0.25773670    56566.67      7.0134
   38-24984.78706115     0.35342639    77568.13      0.35382571    77655.77      9.6281
   39-24984.78513517     0.35535236    77990.83      0.35575168    78078.47      9.6805
   40-24984.78513517     0.35535236    77990.83      0.35575168    78078.47      9.6805
   41-24984.78513452     0.35535301    77990.97      0.35575233    78078.61      9.6805
   42-24984.78204937     0.35843816    78668.08      0.35883748    78755.72      9.7645
   43-24984.78204915     0.35843838    78668.13      0.35883770    78755.77      9.7645
   44-24984.78204915     0.35843838    78668.13      0.35883770    78755.77      9.7645
   45-24984.78204848     0.35843905    78668.28      0.35883837    78755.92      9.7645
   46-24984.78204848     0.35843905    78668.28      0.35883837    78755.92      9.7645

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99878271 -0.04695996 -0.00000000 -0.00000000 -0.00000000  0.00000018 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000001  0.00000007  0.70348558  0.00000003 -0.00000009  0.00000005
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00219849  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.02652623  0.57561356  0.00000000  0.00000000  0.00000000 -0.41033804  0.00000008  0.00000006
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000322  0.70349403 -0.00000007  0.00000005  0.70377889  0.00000268
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000 -0.00000014  0.03129604 -0.00000000 -0.00000000 -0.03590296 -0.00000014
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.03129613  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00009780  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000031  0.00000000 -0.00000000  0.00000000  0.06197990 -0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.03242367 -0.00000015 -0.00000000  0.00000000  0.00000012 -0.03170277
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000  0.01595554  0.00000007  0.00000000  0.00000001  0.00000025 -0.06442562
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01512243  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00004726  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.01033089 -0.03551511  0.00000000 -0.00000000  0.00000000 -0.01670532  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000  0.00000007 -0.01512167  0.00000000  0.00000000  0.02865152  0.00000011
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.08030853 -0.00000037 -0.00000000  0.00000000  0.00000000 -0.00000072
                           0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00416959  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001303  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00081345 -0.00191173 -0.00000000 -0.00000000  0.00000000 -0.00038400  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000  0.00000000  0.00000002 -0.00417021  0.00000000  0.00000000  0.00065930  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.70348401  0.00000322  0.00000001 -0.00000009 -0.00000268  0.70378891

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                           0.00000000  0.00000000  0.00000322 -0.70348402  0.00000007  0.00000005  0.70378890  0.00000268

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.02652629  0.57561961 -0.00000000  0.00000000 -0.00000000  0.81264341 -0.00000005  0.00000011

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00040934  0.00000001  0.00000001

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.03129654  0.00000014  0.00000000  0.00000000  0.00000014 -0.03590238

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000014 -0.03129654  0.00000000 -0.00000000 -0.03590238 -0.00000014

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000748 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00239444  0.00000000 -0.00000001  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00011268 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.03605723  0.00000000 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.01512260 -0.00000007 -0.00000000 -0.00000000 -0.00000011  0.02865217

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000007  0.01512259 -0.00000000  0.00000000  0.02865215  0.00000011

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.01033076 -0.03551406 -0.00000000 -0.00000000 -0.00000000  0.03308357 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00025097  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000001  0.08030811 -0.00000000 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00416963 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00065865

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000002  0.00416963 -0.00000000  0.00000000  0.00065865  0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00081323 -0.00191260 -0.00000000 -0.00000000  0.00000000  0.00076120 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.02652624 -0.57561358  0.00000000  0.00000000 -0.00000000  0.40231403  0.00000003  0.00000017

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00219849  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000001  0.00000007  0.70348559 -0.00000003  0.00000009 -0.00000005

   3    1  |1 1>-          0.00000000  0.00000000  0.00000008 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.70349404  0.00000322  0.00000001  0.00000009  0.00000268 -0.70377888

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.03129604 -0.00000014 -0.00000000  0.00000000  0.00000014 -0.03590296

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000031  0.00000000  0.00000000  0.00000000 -0.06238923  0.00000001 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00009780  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.03129613 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000014 -0.03002916  0.00000000  0.00000000  0.03994341  0.00000015

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000009 -0.02010282  0.00000000 -0.00000000 -0.05966783 -0.00000023

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.01033089  0.03551512  0.00000000  0.00000000 -0.00000000  0.01637866  0.00000000  0.00000001

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00004726  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01512243 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.01512167 -0.00000007 -0.00000000  0.00000000  0.00000011 -0.02865152

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000037  0.08030853 -0.00000001 -0.00000000 -0.00000072 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00081345  0.00191173  0.00000000 -0.00000000  0.00000000  0.00037649  0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001303  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00416959 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00417021 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00065930

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.01506998  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.70378387 -0.04000787 -0.00000002 -0.00000003 -0.00000000 -0.01047089 -0.00000000
                          -0.00000000  0.00013506 -0.00001456  0.00000000 -0.00000000  0.00000000  0.00000808  0.00000000

   2    1  |1 1>+          0.70145596  0.00000001 -0.00000000  0.00000000 -0.00000000  0.03582863 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000006  0.00000009  0.00000003  0.00000073 -0.04000775 -0.00000000 -0.00000000 -0.00000016
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000 -0.00000039 -0.00000932  0.50747948 -0.00000000 -0.00000003 -0.00000301
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.03590273 -0.50747809 -0.00000030 -0.00000039  0.00000000  0.19275647  0.00000002
                          -0.00000000  0.00000689 -0.00018466  0.00000000 -0.00000000 -0.00000000 -0.00014872 -0.00000000

   6    1  |1 1>+          0.03625684 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004141 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000001  0.00000000 -0.00000031  0.52577476  0.00000965 -0.00000000  0.00000002 -0.19958117
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000001  0.00000000  0.00000015 -0.25872138 -0.00000475 -0.00000000 -0.00000001  0.09850839
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.02865222  0.24458777  0.00000014  0.00000019 -0.00000000  0.49630642  0.00000004
                          -0.00000000  0.00000550  0.00008900 -0.00000000  0.00000000  0.00000000 -0.00038293 -0.00000000

  10    1  |1 1>+          0.02855753  0.00000000  0.00000000  0.00000000  0.00000000  0.57556261  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00000019 -0.00000449  0.24458207  0.00000000  0.00000007  0.00000776
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000001

  12    1  |1 1>+         -0.00000000  0.00000000 -0.00000008  0.13092267  0.00000240  0.00000000 -0.00000005  0.61787991
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

  13    1  |1 1>+          0.00000000  0.00065869 -0.02800796 -0.00000002 -0.00000002  0.00000000 -0.02763656 -0.00000000
                          -0.00000000  0.00000013 -0.00001019  0.00000000 -0.00000000 -0.00000000  0.00002132  0.00000000

  14    1  |1 1>+          0.00065647  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02677745 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000  0.00000002  0.00000051 -0.02800817 -0.00000000 -0.00000000 -0.00000043
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000012 -0.00000005 -0.00000002  0.04000849  0.00000073 -0.00000000 -0.00000000  0.01049598

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000006  0.00000009 -0.00000003 -0.00000073  0.04000850 -0.00000000  0.00000000  0.00000016

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00463266 -0.00000003  0.00000000 -0.00000000  0.00000000  0.03583732  0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.07180468 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000000  0.00000030 -0.50747906 -0.00000932  0.00000000 -0.00000002  0.19288635

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000039  0.00000932 -0.50747906 -0.00000000  0.00000003  0.00000302

   7    1  |1 0>           0.00000000 -0.00001375  0.00001413 -0.00000000  0.00000000  0.00000000  0.00001138  0.00000000
                           0.00000000  0.07164570 -0.03882760 -0.00000002 -0.00000003 -0.00000000  0.01475004  0.00000000

   8    1  |1 0>           0.00000000 -0.00000091 -0.00021276  0.00000000 -0.00000000  0.00000000 -0.00017135 -0.00000000
                           0.00000000  0.00475776  0.58469360  0.00000034  0.00000045  0.00000000 -0.22208237 -0.00000002

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                          -0.00000000 -0.00000000  0.00000014 -0.24458623 -0.00000449 -0.00000000  0.00000004 -0.49638758

  10    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000019  0.00000449 -0.24458623 -0.00000000 -0.00000007 -0.00000776

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00018860 -0.00000000 -0.00000000  0.00000000  0.00000000  0.57552203 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00004764  0.00000000 -0.00000000 -0.00000000  0.00047673  0.00000000
                           0.00000000  0.00000000  0.13092428  0.00000008  0.00000010 -0.00000000  0.61787246  0.00000005

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000002  0.02800787  0.00000051  0.00000000 -0.00000000  0.02764440

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000002 -0.00000051  0.02800787  0.00000000  0.00000000  0.00000043

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000434 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02677495  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.70608864 -0.00000002  0.00000000  0.00000000  0.00000000 -0.03582864  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00013506  0.00001456 -0.00000000  0.00000000  0.00000000 -0.00000808 -0.00000000
                          -0.00000000 -0.70378385 -0.04000788 -0.00000002 -0.00000003  0.00000000 -0.01047048 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000012  0.00000005 -0.00000002  0.04000774  0.00000073  0.00000000 -0.00000000  0.01044737

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000 -0.00000030  0.50747945  0.00000932 -0.00000000  0.00000002 -0.19261793

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.03554785  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00004143  0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000689  0.00018466 -0.00000000  0.00000000 -0.00000000  0.00014872  0.00000000
                          -0.00000000 -0.03590273 -0.50747807 -0.00000030 -0.00000039 -0.00000000  0.19275420  0.00000002

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000001  0.00000037  0.00000894 -0.48694714  0.00000000  0.00000003  0.00000289

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000001  0.00000025  0.00000598 -0.32597287 -0.00000000  0.00000002  0.00000194

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.02874613 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.57556260 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000550 -0.00008900  0.00000000 -0.00000000 -0.00000000  0.00038293  0.00000000
                          -0.00000000 -0.02865222  0.24458778  0.00000014  0.00000019 -0.00000000  0.49630511  0.00000004

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00000000  0.00000014 -0.24458207 -0.00000449 -0.00000000  0.00000004 -0.49621922

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000010 -0.00000240  0.13092267  0.00000000  0.00000009  0.00000966

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00066080 -0.00000000  0.00000000 -0.00000000  0.00000000  0.02677745  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000  0.00000013  0.00001019 -0.00000000  0.00000000  0.00000000 -0.00002132 -0.00000000
                          -0.00000000 -0.00065869 -0.02800796 -0.00000002 -0.00000002  0.00000000 -0.02763643 -0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000002  0.02800817  0.00000051  0.00000000 -0.00000000  0.02762942

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000  0.00000001 -0.00000097  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000001 -0.06799544 -0.00000016  0.00000004 -0.05824884 -0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000471 -0.00000000  0.00000000  0.00000268  0.00000000

   2    1  |1 1>+         -0.00000000 -0.06739428 -0.04028571  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.01044750  0.00000000 -0.00000000 -0.00000016  0.06799921 -0.00000266  0.00000001 -0.05824896
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000001  0.00000000 -0.00000000

   4    1  |1 1>+         -0.19261858  0.00000002 -0.00000001 -0.00000089  0.38553645 -0.00001511 -0.00000001  0.06409016
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000016  0.00000007 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000003 -0.00000000  0.00000004  0.38546901  0.00000089 -0.00000022 -0.06407954 -0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00002671  0.00000000 -0.00000000  0.00000295  0.00000000

   6    1  |1 1>+         -0.00000000  0.39553946 -0.66173611  0.00000007 -0.00000004  0.00000001 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000312  0.00000007  0.00000005  0.00000020  0.00001334  0.34045135  0.00000000 -0.00000055
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000004  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000154  0.00000014  0.00000010  0.00000040  0.00002710  0.69169072 -0.00000000  0.00000027
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000013 -0.00000009 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000007 -0.00000000  0.00000002  0.22166481  0.00000051 -0.00000013 -0.43983557 -0.00000005
                           0.00000000 -0.00000000 -0.00000000  0.00001536  0.00000000 -0.00000000  0.00002024  0.00000000

  10    1  |1 1>+          0.00000000  0.21970033  0.13128147 -0.00000001 -0.00000001 -0.00000006  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.49621960 -0.00000001  0.00000001  0.00000051 -0.22183674  0.00000869  0.00000005 -0.43979338
                          -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000009 -0.00000004  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000966  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00021953  0.00000005 -0.00000637
                           0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.02197225 -0.00000005  0.00000001 -0.02550704 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000152 -0.00000000  0.00000000  0.00000117  0.00000000

  14    1  |1 1>+         -0.00000000 -0.02177777 -0.01301546  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.02762946  0.00000000 -0.00000000 -0.00000005  0.02198294 -0.00000086  0.00000000 -0.02550563
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000
                          -0.00000016  0.00000001  0.00000001  0.00000004  0.00000266  0.06799122  0.00000000 -0.00000048

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000001  0.00000000 -0.00000000
                           0.01049586  0.00000000 -0.00000000 -0.00000016  0.06799123 -0.00000266 -0.00000001  0.05824795

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00118948  0.07850441 -0.00000001  0.00000000 -0.00000001 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.77084924  0.01167964  0.00000000 -0.00000004 -0.00000016  0.00000000  0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000007  0.00000005  0.00000000 -0.00000000
                          -0.00000302  0.00000008  0.00000005  0.00000022  0.00001510  0.38540329 -0.00000000  0.00000053

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000016 -0.00000007 -0.00000000  0.00000000
                           0.19288570  0.00000002 -0.00000001 -0.00000089  0.38540363 -0.00001510  0.00000001 -0.06406966

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00005331 -0.00000000  0.00000000 -0.00000023 -0.00000000
                          -0.00000000 -0.00000000  0.00000008  0.76924160  0.00000178 -0.00000045 -0.00490217 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000354 -0.00000000  0.00000000  0.00000340  0.00000000
                           0.00000003 -0.00000000  0.00000001  0.05108346  0.00000012 -0.00000003  0.07381979  0.00000001

   9    1  |1 0>           0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000003 -0.00000000  0.00000000
                           0.00000776 -0.00000005 -0.00000003 -0.00000013 -0.00000868 -0.22149090  0.00000003 -0.00000365

  10    1  |1 0>          -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000009  0.00000004  0.00000000 -0.00000000
                          -0.49638720 -0.00000001  0.00000001  0.00000051 -0.22149174  0.00000868 -0.00000005  0.43988759

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00387821 -0.25596124  0.00000003 -0.00000001  0.00000003 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00003538  0.00000000
                          -0.00000009 -0.00000000 -0.00000000 -0.00000183  0.00000000 -0.00000000  0.76897099  0.00000009

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000043  0.00000000  0.00000000  0.00000001  0.00000086  0.02196255  0.00000000 -0.00000021

  14    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.02764436  0.00000000 -0.00000000 -0.00000005  0.02196260 -0.00000086 -0.00000000  0.02550873

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00038442  0.02537146 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.06858385  0.03822542 -0.00000000  0.00000001  0.00000001  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000471 -0.00000000  0.00000000 -0.00000268 -0.00000000
                           0.00000000 -0.00000000  0.00000001  0.06799550  0.00000016 -0.00000004 -0.05824884 -0.00000001

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000
                          -0.00000016 -0.00000001 -0.00000001 -0.00000004 -0.00000266 -0.06799923  0.00000000 -0.00000048

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000007  0.00000005 -0.00000000  0.00000000
                           0.00000301  0.00000008  0.00000005  0.00000022  0.00001511  0.38553682  0.00000000 -0.00000053

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.37530970  0.67341575 -0.00000007  0.00000000 -0.00000017 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00002671  0.00000000 -0.00000000 -0.00000295 -0.00000000
                          -0.00000003  0.00000000 -0.00000004 -0.38547020 -0.00000089  0.00000022 -0.06407957 -0.00000001

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000018  0.00000008 -0.00000000  0.00000000
                           0.18480358 -0.00000002  0.00000001  0.00000099 -0.42892401  0.00001681  0.00000001 -0.06149109

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000012 -0.00000000  0.00000000
                           0.12403297  0.00000003 -0.00000002 -0.00000148  0.64059925 -0.00002510  0.00000001 -0.04113850

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.22357685 -0.12456508  0.00000001 -0.00000002 -0.00000003  0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00001536  0.00000000 -0.00000000 -0.00002024 -0.00000000
                          -0.00000007  0.00000000 -0.00000002 -0.22166772 -0.00000051  0.00000013 -0.43983570 -0.00000005

  11    1  |1 1>-          0.00000001  0.00000000  0.00000000  0.00000000 -0.00000004  0.00000003 -0.00000000  0.00000000
                           0.00000776  0.00000005  0.00000003  0.00000013  0.00000869  0.22183758  0.00000003 -0.00000364

  12    1  |1 1>-          0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.61787992  0.00000000 -0.00000000  0.00000000 -0.00021848  0.00000001 -0.00000009  0.76896534

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.02216209  0.01234970 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000152 -0.00000000  0.00000000 -0.00000117 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.02197241  0.00000005 -0.00000001 -0.02550704 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000043 -0.00000000 -0.00000000 -0.00000001 -0.00000086 -0.02198298  0.00000000 -0.00000021

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000041 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000048  0.00000011  0.00000000  0.00000000  0.00000000  0.00000040 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000053  0.57041061  0.00000145  0.00000000  0.00000008  0.45603329  0.00000019  0.00000000
                          -0.00000000 -0.00000023  0.00000017  0.00000000  0.00000000  0.00000007  0.00000003  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000001  0.00000001  0.42087039  0.59682753 -0.00000010  0.00000004 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000632  0.00003169  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000001 -0.00000001 -0.00000001  0.57735058
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.06639085 -0.00000186  0.73634783 -0.00000003  0.00000001  0.00000002 -0.07622721  0.00000001
                           0.00000000  0.00000022 -0.00000017  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

   8    1  |1 1>+         -0.03264629  0.00000051 -0.20415599  0.00000000  0.00000004  0.00000025 -0.58620161 -0.00000002
                          -0.00000000 -0.00000006  0.00000005  0.00000000  0.00000000 -0.00000004 -0.00000003 -0.00000000

   9    1  |1 1>+          0.00000003  0.00000000  0.00000000 -0.00000295 -0.00002219  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000173
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000364  0.00000825  0.00000000 -0.00000000  0.00000000  0.00001897  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.76896535 -0.00000000  0.00000466 -0.00000000  0.00000000 -0.00000000  0.00000126  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000016 -0.00000091  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000007
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000021  0.00000037  0.00000000 -0.00000000  0.00000000  0.00000076  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.05824796  0.00000000 -0.00000010  0.00000000  0.00000000 -0.00000000  0.00000043  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000048  0.00000010  0.00000000 -0.00000000 -0.00000000  0.00000043  0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000001  0.00000001  0.00000001 -0.57734959

   5    1  |1 0>           0.00000000 -0.00000009  0.00000007  0.00000000  0.00000000 -0.00000005 -0.00000003 -0.00000000
                          -0.06406968 -0.00000073  0.29155369 -0.00000001 -0.00000004 -0.00000029  0.66957527  0.00000002

   6    1  |1 0>          -0.00000000 -0.00000012  0.00000009  0.00000000 -0.00000001 -0.00000011 -0.00000005  0.00000000
                          -0.00000053 -0.29894275 -0.00000074 -0.00000002  0.00000012  0.66630910  0.00000029  0.00000001

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000038  0.00003068  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.02544046 -0.57779685  0.00000011 -0.00000004  0.00000001

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00001163  0.00000018 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000001  0.00000003  0.77383523 -0.00355698  0.00000001 -0.00000000  0.00000001

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.43988752  0.00000000 -0.00000131  0.00000000 -0.00000000 -0.00000000  0.00002111  0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000365  0.00000088  0.00000000 -0.00000000 -0.00000000  0.00002097  0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000010

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000005  0.00000000 -0.00000000  0.00000515  0.00000020  0.00000000  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.02550873  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000087  0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000021  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000086  0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000042 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.05824896 -0.00000000  0.00000011  0.00000000 -0.00000000 -0.00000000 -0.00000039  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000018 -0.00000013  0.00000000 -0.00000000 -0.00000003 -0.00000002 -0.00000000
                           0.06409017  0.00000146 -0.57542041  0.00000002 -0.00000003 -0.00000018  0.44969549  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000001 -0.00000001 -0.00000001  0.57735063

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000001  0.00000711  0.00002955  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000001  0.00000002  0.47265202 -0.55671810  0.00000011 -0.00000004  0.00000002

   7    1  |1 1>-         -0.00000000  0.00000029 -0.00000021 -0.00000000 -0.00000000 -0.00000003 -0.00000001 -0.00000000
                          -0.00000051  0.70115012  0.00000177  0.00000001  0.00000003  0.16083749  0.00000006 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000012 -0.00000009 -0.00000000  0.00000000  0.00000009  0.00000004 -0.00000000
                          -0.00000034  0.30602855  0.00000076  0.00000001 -0.00000011 -0.56762410 -0.00000025 -0.00000001

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000164

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000003 -0.00000000 -0.00000000 -0.00000498  0.00002187 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.43979344 -0.00000000  0.00000870 -0.00000000  0.00000000  0.00000000 -0.00001903  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000637 -0.00000465 -0.00000000 -0.00000000 -0.00000000  0.00000121  0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000007

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000024  0.00000089 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.02550563 -0.00000000  0.00000039 -0.00000000  0.00000000  0.00000000 -0.00000076  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000013 -0.00086463 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00766733 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000062  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00766942  0.00000000 -0.00000000  0.00000000  0.00442279  0.00353489 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00766351  0.00000010 -0.00000000  0.00000000  0.00005271  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000001 -0.00000001  0.12843161 -0.00000170  0.00000003  0.00000000  0.01509295  0.00000078
                          -0.00000000 -0.00000000  0.00000005 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.12843633 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00001039  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.12833915 -0.00000000  0.00000004 -0.00000005 -0.22255071  0.00000395 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000001 -0.00000001 -0.00000151 -0.11343156  0.00000002  0.00000000  0.00000080 -0.01563771
                           0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000001 -0.00000002 -0.00000306 -0.23052909  0.00000004 -0.00000000 -0.00000040  0.00770346
                           0.00000000  0.00000000  0.00000001  0.00000009 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.67056149  0.00000004 -0.00000005 -0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00005425 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.67075875 -0.00000001  0.00000012 -0.00000003 -0.38680166  0.02662007  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000004 -0.00000004  0.67059880 -0.00000890  0.00000013 -0.00000000  0.01315543  0.00000068
                          -0.00000000 -0.00000000  0.00000028 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00004857  0.00000000  0.00000000  0.00000296 -0.05767542
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.02804561  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001
                          -0.00000000 -0.00000227 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.02805376 -0.00000000  0.00000000 -0.00000000 -0.01617832  0.57667466  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000  0.02804689 -0.00000037  0.00000001 -0.00000000  0.70568838  0.00003627
                          -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000010  0.00767094 -0.00000000  0.00000000 -0.00000000  0.00005440

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00767095  0.00000010 -0.00000000  0.00000000 -0.00005440 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000449 -0.00000000  0.00000000 -0.00000000 -0.00885301  0.00353384 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.25690871  0.00000000 -0.00000002 -0.00000001 -0.00013042  0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000001 -0.00000005  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000001 -0.00000170 -0.12844134  0.00000002  0.00000000 -0.00000078  0.01510056

   6    1  |1 0>           0.00000000  0.00000000 -0.00000005  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00000001  0.12844141 -0.00000170  0.00000003  0.00000000 -0.01510056 -0.00000078

   7    1  |1 0>          -0.00000000 -0.00002074 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.25636378 -0.00000002  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000138 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.01702431 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000003 -0.00000026  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000004 -0.00000005 -0.00000890 -0.67052551  0.00000012  0.00000000 -0.00000068  0.01316339

  10    1  |1 0>           0.00000000  0.00000000 -0.00000028  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000004 -0.00000004  0.67052547 -0.00000890  0.00000013  0.00000000 -0.01316339 -0.00000068

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00039329  0.00000001 -0.00000015  0.00000014  0.77430699  0.02661636 -0.00000000  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000001  0.00000001
                           0.00000000 -0.00000000 -0.00000037 -0.02804418  0.00000000 -0.00000000 -0.00003626  0.70538743

  14    1  |1 0>           0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.02804418 -0.00000037  0.00000001  0.00000000 -0.70538742 -0.00003626

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00001645  0.00000000 -0.00000001  0.00000001  0.03238357  0.57682645  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00766493 -0.00000000  0.00000000 -0.00000000 -0.00443058 -0.00353489  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000062  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00766735  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000010 -0.00766353  0.00000000  0.00000000 -0.00000000  0.00005271

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000001 -0.00000005  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000001 -0.00000170 -0.12843134  0.00000002  0.00000000  0.00000078 -0.01509295

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.12856518  0.00000000 -0.00000005  0.00000003  0.22242008 -0.00000395 -0.00000000  0.00000000

   6    1  |1 1>-          0.00000000  0.00001039  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.12843631  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000006 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000001 -0.14291818  0.00000190 -0.00000003 -0.00000000 -0.01448176 -0.00000074

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000009  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00000001  0.21350572 -0.00000283  0.00000004  0.00000000 -0.00970360 -0.00000050

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.67036546  0.00000000 -0.00000003  0.00000011  0.38748286 -0.02662007 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00005425 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.67056141 -0.00000004  0.00000005  0.00000001 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000  0.00000003  0.00000026 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000004  0.00000005  0.00000890  0.67059876 -0.00000012 -0.00000000 -0.00000068  0.01315543

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00004865  0.00000000 -0.00000000  0.00000000  0.05767542  0.00000296

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.02803731  0.00000000 -0.00000000  0.00000000  0.01620681 -0.57667466 -0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000227 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.02804560 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000001  0.00000001
                          -0.00000000  0.00000000  0.00000037  0.02804689 -0.00000000 -0.00000000 -0.00003627  0.70568837

 State Sym Spin     / Nr.     41          42          43          44          45          46

   1    1  |0 0>           0.00000000  0.00000025  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00005330 -0.00000000 -0.00000000 -0.00000000  0.00246748  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000

   2    1  |1 1>+          0.00000000  0.00142458  0.00000000 -0.00000000  0.00000000 -0.00246765
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000  0.00000004 -0.00246757 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000025 -0.01706424 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.01509660  0.00000000  0.00000000  0.00000000 -0.01706098 -0.00000000
                           0.00000031 -0.00000000 -0.00000000 -0.00000000 -0.00000018  0.00000000

   6    1  |1 1>+         -0.00000000  0.02955261 -0.00000000 -0.00000000 -0.00000000  0.01705796
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.01506875 -0.00000022 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.03061470 -0.00000045 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.01315961 -0.00000000 -0.00000000 -0.00000000  0.01975996  0.00000000
                          -0.00000027  0.00000000  0.00000000  0.00000000  0.00000021 -0.00000000

  10    1  |1 1>+          0.00000000  0.01140272  0.00000000 -0.00000000  0.00000000 -0.01976112
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000  0.00000029 -0.01976298 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000 -0.00001171 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.70553795  0.00000000  0.00000002  0.00000000 -0.70620834 -0.00000008
                          -0.00001428 -0.00000000 -0.00000000 -0.00000000 -0.00000736  0.00000000

  14    1  |1 1>+          0.00000000 -0.40772932 -0.00000000  0.00000003 -0.00000008  0.70624980
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00000003 -0.00001042  0.70605795  0.00000000 -0.00000002
                           0.00000000  0.00000000 -0.00000002 -0.00000002  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00246805 -0.00000004 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000004 -0.00246805 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00284976  0.00000000  0.00000000 -0.00000000  0.00000029

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000347 -0.00000000  0.00000000 -0.00000000  0.03412195

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.01705810 -0.00000025 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000025 -0.01705810 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000002  0.00000000  0.00000000  0.00000000  0.00000036 -0.00000000
                          -0.00115506  0.00000000  0.00000000  0.00000000 -0.03404689 -0.00000000

   8    1  |1 0>           0.00000035  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000
                           0.01739370  0.00000000  0.00000000  0.00000000 -0.00226094 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.01975675 -0.00000029 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000029 -0.01975675 -0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.02282029  0.00000000  0.00000000 -0.00000000  0.00000232

  12    1  |1 0>           0.00000117 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.05767485  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000002  0.00000002 -0.00000000  0.00000000
                           0.00000001  0.00000000  0.70635868  0.00001043  0.00000002  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000002  0.00000002 -0.00000000  0.00000000
                           0.00000000  0.00000003 -0.00001043  0.70635869  0.00000000 -0.00000002

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.81538757 -0.00000000 -0.00000003  0.00000000 -0.00008290

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00142508  0.00000000  0.00000000  0.00000000 -0.00246736

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000
                           0.00005330  0.00000000  0.00000000  0.00000000 -0.00246748 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00246757  0.00000004  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.01706424 -0.00000025 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.02954914  0.00000000  0.00000000 -0.00000000  0.01706397

   6    1  |1 1>-         -0.00000031 -0.00000000 -0.00000000 -0.00000000 -0.00000018  0.00000000
                          -0.01509661 -0.00000000 -0.00000000 -0.00000000  0.01706098  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000028  0.01898462  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000042 -0.02835332 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.01140673  0.00000000  0.00000000  0.00000000 -0.01975880

  10    1  |1 1>-          0.00000027  0.00000000  0.00000000  0.00000000  0.00000021 -0.00000000
                           0.01315961  0.00000000  0.00000000  0.00000000 -0.01975996 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.01976298  0.00000029  0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00001170  0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.40787292 -0.00000000 -0.00000000 -0.00000007  0.70616688

  14    1  |1 1>-          0.00001428 -0.00000000 -0.00000000 -0.00000000 -0.00000736  0.00000000
                           0.70553793 -0.00000000 -0.00000002 -0.00000000  0.70620835  0.00000008

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000002 -0.00000002  0.00000000 -0.00000000
                           0.00000001 -0.00000000 -0.70605796 -0.00001042 -0.00000002 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1 -24985.14088685     -0.00039932      -87.64      0.00000000        0.00      0.0000
   2   1 -24984.98450447      0.15598306    34234.32      0.15638238    34321.96      4.2554
   3   1 -24984.97779571      0.16269183    35706.73      0.16309115    35794.37      4.4379
   4   1 -24984.97779571      0.16269183    35706.73      0.16309115    35794.37      4.4379
   5   1 -24984.97779559      0.16269194    35706.75      0.16309126    35794.39      4.4379
   6   1 -24984.96238295      0.17810458    39089.44      0.17850390    39177.08      4.8573
   7   1 -24984.96238290      0.17810464    39089.45      0.17850396    39177.09      4.8573
   8   1 -24984.96238290      0.17810464    39089.45      0.17850396    39177.09      4.8573
   9   1 -24984.96238282      0.17810471    39089.47      0.17850403    39177.11      4.8573
  10   1 -24984.96238280      0.17810473    39089.47      0.17850405    39177.11      4.8573
  11   1 -24984.91183345      0.22865408    50183.77      0.22905340    50271.41      6.2329
  12   1 -24984.91183343      0.22865410    50183.77      0.22905342    50271.41      6.2329
  13   1 -24984.91183343      0.22865410    50183.77      0.22905342    50271.41      6.2329
  14   1 -24984.90225323      0.23823430    52286.39      0.23863362    52374.03      6.4936
  15   1 -24984.90147552      0.23901202    52457.07      0.23941134    52544.71      6.5147
  16   1 -24984.90147539      0.23901215    52457.10      0.23941147    52544.74      6.5147
  17   1 -24984.90147538      0.23901215    52457.10      0.23941147    52544.74      6.5147
  18   1 -24984.90136386      0.23912367    52481.58      0.23952299    52569.22      6.5178
  19   1 -24984.90136385      0.23912368    52481.58      0.23952300    52569.22      6.5178
  20   1 -24984.90136375      0.23912378    52481.60      0.23952310    52569.24      6.5178
  21   1 -24984.90136374      0.23912379    52481.61      0.23952311    52569.25      6.5178
  22   1 -24984.90136374      0.23912379    52481.61      0.23952311    52569.25      6.5178
  23   1 -24984.88567136      0.25481618    55925.69      0.25521550    56013.33      6.9448
  24   1 -24984.88567122      0.25481631    55925.72      0.25521563    56013.36      6.9448
  25   1 -24984.88567122      0.25481631    55925.72      0.25521563    56013.36      6.9448
  26   1 -24984.88409284      0.25639469    56272.13      0.25679401    56359.77      6.9877
  27   1 -24984.88409284      0.25639469    56272.13      0.25679401    56359.77      6.9877
  28   1 -24984.88409283      0.25639470    56272.13      0.25679402    56359.77      6.9877
  29   1 -24984.88409283      0.25639470    56272.13      0.25679402    56359.77      6.9877
  30   1 -24984.88409283      0.25639471    56272.13      0.25679403    56359.77      6.9877
  31   1 -24984.88409283      0.25639471    56272.13      0.25679403    56359.77      6.9877
  32   1 -24984.88409282      0.25639472    56272.14      0.25679404    56359.78      6.9877
  33   1 -24984.88315047      0.25733706    56478.96      0.25773638    56566.60      7.0134
  34   1 -24984.88315044      0.25733709    56478.96      0.25773641    56566.60      7.0134
  35   1 -24984.88315020      0.25733733    56479.02      0.25773665    56566.66      7.0134
  36   1 -24984.88315020      0.25733733    56479.02      0.25773665    56566.66      7.0134
  37   1 -24984.88315015      0.25733738    56479.03      0.25773670    56566.67      7.0134
  38   1 -24984.78706115      0.35342639    77568.13      0.35382571    77655.77      9.6281
  39   1 -24984.78513517      0.35535236    77990.83      0.35575168    78078.47      9.6805
  40   1 -24984.78513517      0.35535236    77990.83      0.35575168    78078.47      9.6805
  41   1 -24984.78513452      0.35535301    77990.97      0.35575233    78078.61      9.6805
  42   1 -24984.78204937      0.35843816    78668.08      0.35883748    78755.72      9.7645
  43   1 -24984.78204915      0.35843838    78668.13      0.35883770    78755.77      9.7645
  44   1 -24984.78204915      0.35843838    78668.13      0.35883770    78755.77      9.7645
  45   1 -24984.78204848      0.35843905    78668.28      0.35883837    78755.92      9.7645
  46   1 -24984.78204848      0.35843905    78668.28      0.35883837    78755.92      9.7645

 E0 = -24985.14048753 is the energy of the lowest zeroth-order state
 E1 = -24985.14088685 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99878271 -0.04695996 -0.00000000 -0.00000000 -0.00000000  0.00000018 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000001  0.00000007  0.70348558  0.00000003 -0.00000009  0.00000005
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00219849  0.00000000 -0.00000000  0.00000000

  3  1     2    1  |1 1>+       0.02652623  0.57561356  0.00000000  0.00000000  0.00000000 -0.41033804  0.00000008  0.00000006
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000322  0.70349403 -0.00000007  0.00000005  0.70377889  0.00000268
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000

  5  1     4    1  |1 1>+       0.00000000 -0.00000000 -0.00000014  0.03129604 -0.00000000 -0.00000000 -0.03590296 -0.00000014
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.03129613  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00009780  0.00000000 -0.00000000  0.00000000

  7  1     6    1  |1 1>+       0.00000000  0.00000031  0.00000000 -0.00000000  0.00000000  0.06197990 -0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.03242367 -0.00000015 -0.00000000  0.00000000  0.00000012 -0.03170277
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     8    1  |1 1>+       0.00000000 -0.00000000  0.01595554  0.00000007  0.00000000  0.00000001  0.00000025 -0.06442562
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01512243  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00004726  0.00000000 -0.00000000  0.00000000

 11  1    10    1  |1 1>+      -0.01033089 -0.03551511  0.00000000 -0.00000000  0.00000000 -0.01670532  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    11    1  |1 1>+      -0.00000000 -0.00000000  0.00000007 -0.01512167  0.00000000  0.00000000  0.02865152  0.00000011
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1    12    1  |1 1>+       0.00000000  0.00000000 -0.08030853 -0.00000037 -0.00000000  0.00000000  0.00000000 -0.00000072
                                0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1    13    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00416959  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001303  0.00000000 -0.00000000  0.00000000

 15  1    14    1  |1 1>+       0.00081345 -0.00191173 -0.00000000 -0.00000000  0.00000000 -0.00038400  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1    15    1  |1 1>+       0.00000000  0.00000000  0.00000002 -0.00417021  0.00000000  0.00000000  0.00065930  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.70348401  0.00000322  0.00000001 -0.00000009 -0.00000268  0.70378891

 18  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                                0.00000000  0.00000000  0.00000322 -0.70348402  0.00000007  0.00000005  0.70378890  0.00000268

 19  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.02652629  0.57561961 -0.00000000  0.00000000 -0.00000000  0.81264341 -0.00000005  0.00000011

 20  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00040934  0.00000001  0.00000001

 21  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.03129654  0.00000014  0.00000000  0.00000000  0.00000014 -0.03590238

 22  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000014 -0.03129654  0.00000000 -0.00000000 -0.03590238 -0.00000014

 23  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000748 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00239444  0.00000000 -0.00000001  0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00011268 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.03605723  0.00000000 -0.00000000  0.00000000

 25  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.01512260 -0.00000007 -0.00000000 -0.00000000 -0.00000011  0.02865217

 26  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000007  0.01512259 -0.00000000  0.00000000  0.02865215  0.00000011

 27  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.01033076 -0.03551406 -0.00000000 -0.00000000 -0.00000000  0.03308357 -0.00000000  0.00000000

 28  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00025097  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000001  0.08030811 -0.00000000 -0.00000000  0.00000000

 29  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00416963 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00065865

 30  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000002  0.00416963 -0.00000000  0.00000000  0.00065865  0.00000000

 31  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00081323 -0.00191260 -0.00000000 -0.00000000  0.00000000  0.00076120 -0.00000000  0.00000000

 32  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.02652624 -0.57561358  0.00000000  0.00000000 -0.00000000  0.40231403  0.00000003  0.00000017

 33  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00219849  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000001  0.00000007  0.70348559 -0.00000003  0.00000009 -0.00000005

 34  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000008 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.70349404  0.00000322  0.00000001  0.00000009  0.00000268 -0.70377888

 35  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.03129604 -0.00000014 -0.00000000  0.00000000  0.00000014 -0.03590296

 36  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000031  0.00000000  0.00000000  0.00000000 -0.06238923  0.00000001 -0.00000000

 37  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00009780  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.03129613 -0.00000000  0.00000000 -0.00000000

 38  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000014 -0.03002916  0.00000000  0.00000000  0.03994341  0.00000015

 39  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000009 -0.02010282  0.00000000 -0.00000000 -0.05966783 -0.00000023

 40  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.01033089  0.03551512  0.00000000  0.00000000 -0.00000000  0.01637866  0.00000000  0.00000001

 41  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00004726  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01512243 -0.00000000  0.00000000 -0.00000000

 42  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.01512167 -0.00000007 -0.00000000  0.00000000  0.00000011 -0.02865152

 43  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000037  0.08030853 -0.00000001 -0.00000000 -0.00000072 -0.00000000

 44  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00081345  0.00191173  0.00000000 -0.00000000  0.00000000  0.00037649  0.00000000  0.00000000

 45  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001303  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00416959 -0.00000000  0.00000000 -0.00000000

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00417021 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00065930


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.01506998  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     1    1  |1 1>+       0.00000000  0.70378387 -0.04000787 -0.00000002 -0.00000003 -0.00000000 -0.01047089 -0.00000000
                               -0.00000000  0.00013506 -0.00001456  0.00000000 -0.00000000  0.00000000  0.00000808  0.00000000

  3  1     2    1  |1 1>+       0.70145596  0.00000001 -0.00000000  0.00000000 -0.00000000  0.03582863 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     3    1  |1 1>+      -0.00000006  0.00000009  0.00000003  0.00000073 -0.04000775 -0.00000000 -0.00000000 -0.00000016
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     4    1  |1 1>+       0.00000000 -0.00000000 -0.00000039 -0.00000932  0.50747948 -0.00000000 -0.00000003 -0.00000301
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.03590273 -0.50747809 -0.00000030 -0.00000039  0.00000000  0.19275647  0.00000002
                               -0.00000000  0.00000689 -0.00018466  0.00000000 -0.00000000 -0.00000000 -0.00014872 -0.00000000

  7  1     6    1  |1 1>+       0.03625684 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004141 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     7    1  |1 1>+       0.00000001  0.00000000 -0.00000031  0.52577476  0.00000965 -0.00000000  0.00000002 -0.19958117
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     8    1  |1 1>+       0.00000001  0.00000000  0.00000015 -0.25872138 -0.00000475 -0.00000000 -0.00000001  0.09850839
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     9    1  |1 1>+       0.00000000  0.02865222  0.24458777  0.00000014  0.00000019 -0.00000000  0.49630642  0.00000004
                               -0.00000000  0.00000550  0.00008900 -0.00000000  0.00000000  0.00000000 -0.00038293 -0.00000000

 11  1    10    1  |1 1>+       0.02855753  0.00000000  0.00000000  0.00000000  0.00000000  0.57556261  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00000019 -0.00000449  0.24458207  0.00000000  0.00000007  0.00000776
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000001

 13  1    12    1  |1 1>+      -0.00000000  0.00000000 -0.00000008  0.13092267  0.00000240  0.00000000 -0.00000005  0.61787991
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

 14  1    13    1  |1 1>+       0.00000000  0.00065869 -0.02800796 -0.00000002 -0.00000002  0.00000000 -0.02763656 -0.00000000
                               -0.00000000  0.00000013 -0.00001019  0.00000000 -0.00000000 -0.00000000  0.00002132  0.00000000

 15  1    14    1  |1 1>+       0.00065647  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02677745 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1    15    1  |1 1>+      -0.00000000  0.00000000  0.00000002  0.00000051 -0.02800817 -0.00000000 -0.00000000 -0.00000043
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000012 -0.00000005 -0.00000002  0.04000849  0.00000073 -0.00000000 -0.00000000  0.01049598

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000006  0.00000009 -0.00000003 -0.00000073  0.04000850 -0.00000000  0.00000000  0.00000016

 19  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00463266 -0.00000003  0.00000000 -0.00000000  0.00000000  0.03583732  0.00000000 -0.00000000

 20  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.07180468 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000000  0.00000030 -0.50747906 -0.00000932  0.00000000 -0.00000002  0.19288635

 22  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000039  0.00000932 -0.50747906 -0.00000000  0.00000003  0.00000302

 23  1     7    1  |1 0>        0.00000000 -0.00001375  0.00001413 -0.00000000  0.00000000  0.00000000  0.00001138  0.00000000
                                0.00000000  0.07164570 -0.03882760 -0.00000002 -0.00000003 -0.00000000  0.01475004  0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000091 -0.00021276  0.00000000 -0.00000000  0.00000000 -0.00017135 -0.00000000
                                0.00000000  0.00475776  0.58469360  0.00000034  0.00000045  0.00000000 -0.22208237 -0.00000002

 25  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                               -0.00000000 -0.00000000  0.00000014 -0.24458623 -0.00000449 -0.00000000  0.00000004 -0.49638758

 26  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000019  0.00000449 -0.24458623 -0.00000000 -0.00000007 -0.00000776

 27  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00018860 -0.00000000 -0.00000000  0.00000000  0.00000000  0.57552203 -0.00000000  0.00000000

 28  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00004764  0.00000000 -0.00000000 -0.00000000  0.00047673  0.00000000
                                0.00000000  0.00000000  0.13092428  0.00000008  0.00000010 -0.00000000  0.61787246  0.00000005

 29  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000002  0.02800787  0.00000051  0.00000000 -0.00000000  0.02764440

 30  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000002 -0.00000051  0.02800787  0.00000000  0.00000000  0.00000043

 31  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000434 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.02677495  0.00000000 -0.00000000

 32  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.70608864 -0.00000002  0.00000000  0.00000000  0.00000000 -0.03582864  0.00000000  0.00000000

 33  1     2    1  |1 1>-      -0.00000000  0.00013506  0.00001456 -0.00000000  0.00000000  0.00000000 -0.00000808 -0.00000000
                               -0.00000000 -0.70378385 -0.04000788 -0.00000002 -0.00000003  0.00000000 -0.01047048 -0.00000000

 34  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000012  0.00000005 -0.00000002  0.04000774  0.00000073  0.00000000 -0.00000000  0.01044737

 35  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000 -0.00000030  0.50747945  0.00000932 -0.00000000  0.00000002 -0.19261793

 36  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.03554785  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00004143  0.00000000 -0.00000000

 37  1     6    1  |1 1>-      -0.00000000  0.00000689  0.00018466 -0.00000000  0.00000000 -0.00000000  0.00014872  0.00000000
                               -0.00000000 -0.03590273 -0.50747807 -0.00000030 -0.00000039 -0.00000000  0.19275420  0.00000002

 38  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000001  0.00000037  0.00000894 -0.48694714  0.00000000  0.00000003  0.00000289

 39  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000001  0.00000025  0.00000598 -0.32597287 -0.00000000  0.00000002  0.00000194

 40  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.02874613 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.57556260 -0.00000000  0.00000000

 41  1    10    1  |1 1>-      -0.00000000  0.00000550 -0.00008900  0.00000000 -0.00000000 -0.00000000  0.00038293  0.00000000
                               -0.00000000 -0.02865222  0.24458778  0.00000014  0.00000019 -0.00000000  0.49630511  0.00000004

 42  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00000000  0.00000014 -0.24458207 -0.00000449 -0.00000000  0.00000004 -0.49621922

 43  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000010 -0.00000240  0.13092267  0.00000000  0.00000009  0.00000966

 44  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00066080 -0.00000000  0.00000000 -0.00000000  0.00000000  0.02677745  0.00000000 -0.00000000

 45  1    14    1  |1 1>-      -0.00000000  0.00000013  0.00001019 -0.00000000  0.00000000  0.00000000 -0.00002132 -0.00000000
                               -0.00000000 -0.00065869 -0.02800796 -0.00000002 -0.00000002  0.00000000 -0.02763643 -0.00000000

 46  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000002  0.02800817  0.00000051  0.00000000 -0.00000000  0.02762942


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000  0.00000001 -0.00000097  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000001 -0.06799544 -0.00000016  0.00000004 -0.05824884 -0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000471 -0.00000000  0.00000000  0.00000268  0.00000000

  3  1     2    1  |1 1>+      -0.00000000 -0.06739428 -0.04028571  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     3    1  |1 1>+      -0.01044750  0.00000000 -0.00000000 -0.00000016  0.06799921 -0.00000266  0.00000001 -0.05824896
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000001  0.00000000 -0.00000000

  5  1     4    1  |1 1>+      -0.19261858  0.00000002 -0.00000001 -0.00000089  0.38553645 -0.00001511 -0.00000001  0.06409016
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000016  0.00000007 -0.00000000  0.00000000

  6  1     5    1  |1 1>+      -0.00000003 -0.00000000  0.00000004  0.38546901  0.00000089 -0.00000022 -0.06407954 -0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00002671  0.00000000 -0.00000000  0.00000295  0.00000000

  7  1     6    1  |1 1>+      -0.00000000  0.39553946 -0.66173611  0.00000007 -0.00000004  0.00000001 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     7    1  |1 1>+       0.00000312  0.00000007  0.00000005  0.00000020  0.00001334  0.34045135  0.00000000 -0.00000055
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000004  0.00000000 -0.00000000

  9  1     8    1  |1 1>+      -0.00000154  0.00000014  0.00000010  0.00000040  0.00002710  0.69169072 -0.00000000  0.00000027
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000013 -0.00000009 -0.00000000  0.00000000

 10  1     9    1  |1 1>+      -0.00000007 -0.00000000  0.00000002  0.22166481  0.00000051 -0.00000013 -0.43983557 -0.00000005
                                0.00000000 -0.00000000 -0.00000000  0.00001536  0.00000000 -0.00000000  0.00002024  0.00000000

 11  1    10    1  |1 1>+       0.00000000  0.21970033  0.13128147 -0.00000001 -0.00000001 -0.00000006  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    11    1  |1 1>+       0.49621960 -0.00000001  0.00000001  0.00000051 -0.22183674  0.00000869  0.00000005 -0.43979338
                               -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000009 -0.00000004  0.00000000 -0.00000000

 13  1    12    1  |1 1>+      -0.00000966  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00021953  0.00000005 -0.00000637
                                0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.02197225 -0.00000005  0.00000001 -0.02550704 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000152 -0.00000000  0.00000000  0.00000117  0.00000000

 15  1    14    1  |1 1>+      -0.00000000 -0.02177777 -0.01301546  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1    15    1  |1 1>+      -0.02762946  0.00000000 -0.00000000 -0.00000005  0.02198294 -0.00000086  0.00000000 -0.02550563
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000
                               -0.00000016  0.00000001  0.00000001  0.00000004  0.00000266  0.06799122  0.00000000 -0.00000048

 18  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000001  0.00000000 -0.00000000
                                0.01049586  0.00000000 -0.00000000 -0.00000016  0.06799123 -0.00000266 -0.00000001  0.05824795

 19  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00118948  0.07850441 -0.00000001  0.00000000 -0.00000001 -0.00000000 -0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.77084924  0.01167964  0.00000000 -0.00000004 -0.00000016  0.00000000  0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000007  0.00000005  0.00000000 -0.00000000
                               -0.00000302  0.00000008  0.00000005  0.00000022  0.00001510  0.38540329 -0.00000000  0.00000053

 22  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000016 -0.00000007 -0.00000000  0.00000000
                                0.19288570  0.00000002 -0.00000001 -0.00000089  0.38540363 -0.00001510  0.00000001 -0.06406966

 23  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00005331 -0.00000000  0.00000000 -0.00000023 -0.00000000
                               -0.00000000 -0.00000000  0.00000008  0.76924160  0.00000178 -0.00000045 -0.00490217 -0.00000000

 24  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000354 -0.00000000  0.00000000  0.00000340  0.00000000
                                0.00000003 -0.00000000  0.00000001  0.05108346  0.00000012 -0.00000003  0.07381979  0.00000001

 25  1     9    1  |1 0>        0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000003 -0.00000000  0.00000000
                                0.00000776 -0.00000005 -0.00000003 -0.00000013 -0.00000868 -0.22149090  0.00000003 -0.00000365

 26  1    10    1  |1 0>       -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000009  0.00000004  0.00000000 -0.00000000
                               -0.49638720 -0.00000001  0.00000001  0.00000051 -0.22149174  0.00000868 -0.00000005  0.43988759

 27  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00387821 -0.25596124  0.00000003 -0.00000001  0.00000003 -0.00000000 -0.00000000

 28  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00003538  0.00000000
                               -0.00000009 -0.00000000 -0.00000000 -0.00000183  0.00000000 -0.00000000  0.76897099  0.00000009

 29  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000043  0.00000000  0.00000000  0.00000001  0.00000086  0.02196255  0.00000000 -0.00000021

 30  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.02764436  0.00000000 -0.00000000 -0.00000005  0.02196260 -0.00000086 -0.00000000  0.02550873

 31  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00038442  0.02537146 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 32  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.06858385  0.03822542 -0.00000000  0.00000001  0.00000001  0.00000000  0.00000000

 33  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000471 -0.00000000  0.00000000 -0.00000268 -0.00000000
                                0.00000000 -0.00000000  0.00000001  0.06799550  0.00000016 -0.00000004 -0.05824884 -0.00000001

 34  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000
                               -0.00000016 -0.00000001 -0.00000001 -0.00000004 -0.00000266 -0.06799923  0.00000000 -0.00000048

 35  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000007  0.00000005 -0.00000000  0.00000000
                                0.00000301  0.00000008  0.00000005  0.00000022  0.00001511  0.38553682  0.00000000 -0.00000053

 36  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.37530970  0.67341575 -0.00000007  0.00000000 -0.00000017 -0.00000000 -0.00000000

 37  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00002671  0.00000000 -0.00000000 -0.00000295 -0.00000000
                               -0.00000003  0.00000000 -0.00000004 -0.38547020 -0.00000089  0.00000022 -0.06407957 -0.00000001

 38  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000018  0.00000008 -0.00000000  0.00000000
                                0.18480358 -0.00000002  0.00000001  0.00000099 -0.42892401  0.00001681  0.00000001 -0.06149109

 39  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000012 -0.00000000  0.00000000
                                0.12403297  0.00000003 -0.00000002 -0.00000148  0.64059925 -0.00002510  0.00000001 -0.04113850

 40  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.22357685 -0.12456508  0.00000001 -0.00000002 -0.00000003  0.00000000  0.00000000

 41  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00001536  0.00000000 -0.00000000 -0.00002024 -0.00000000
                               -0.00000007  0.00000000 -0.00000002 -0.22166772 -0.00000051  0.00000013 -0.43983570 -0.00000005

 42  1    11    1  |1 1>-       0.00000001  0.00000000  0.00000000  0.00000000 -0.00000004  0.00000003 -0.00000000  0.00000000
                                0.00000776  0.00000005  0.00000003  0.00000013  0.00000869  0.22183758  0.00000003 -0.00000364

 43  1    12    1  |1 1>-       0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.61787992  0.00000000 -0.00000000  0.00000000 -0.00021848  0.00000001 -0.00000009  0.76896534

 44  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.02216209  0.01234970 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 45  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000152 -0.00000000  0.00000000 -0.00000117 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.02197241  0.00000005 -0.00000001 -0.02550704 -0.00000000

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000043 -0.00000000 -0.00000000 -0.00000001 -0.00000086 -0.02198298  0.00000000 -0.00000021


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000041 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     3    1  |1 1>+      -0.00000048  0.00000011  0.00000000  0.00000000  0.00000000  0.00000040 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     4    1  |1 1>+       0.00000053  0.57041061  0.00000145  0.00000000  0.00000008  0.45603329  0.00000019  0.00000000
                               -0.00000000 -0.00000023  0.00000017  0.00000000  0.00000000  0.00000007  0.00000003  0.00000000

  6  1     5    1  |1 1>+       0.00000000 -0.00000001  0.00000001  0.42087039  0.59682753 -0.00000010  0.00000004 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000632  0.00003169  0.00000000 -0.00000000 -0.00000000

  7  1     6    1  |1 1>+      -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000001 -0.00000001 -0.00000001  0.57735058
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     7    1  |1 1>+       0.06639085 -0.00000186  0.73634783 -0.00000003  0.00000001  0.00000002 -0.07622721  0.00000001
                                0.00000000  0.00000022 -0.00000017  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

  9  1     8    1  |1 1>+      -0.03264629  0.00000051 -0.20415599  0.00000000  0.00000004  0.00000025 -0.58620161 -0.00000002
                               -0.00000000 -0.00000006  0.00000005  0.00000000  0.00000000 -0.00000004 -0.00000003 -0.00000000

 10  1     9    1  |1 1>+       0.00000003  0.00000000  0.00000000 -0.00000295 -0.00002219  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000173
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    11    1  |1 1>+      -0.00000364  0.00000825  0.00000000 -0.00000000  0.00000000  0.00001897  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1    12    1  |1 1>+       0.76896535 -0.00000000  0.00000466 -0.00000000  0.00000000 -0.00000000  0.00000126  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000016 -0.00000091  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000007
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1    15    1  |1 1>+      -0.00000021  0.00000037  0.00000000 -0.00000000  0.00000000  0.00000076  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.05824796  0.00000000 -0.00000010  0.00000000  0.00000000 -0.00000000  0.00000043  0.00000000

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000048  0.00000010  0.00000000 -0.00000000 -0.00000000  0.00000043  0.00000000  0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000001  0.00000001  0.00000001 -0.57734959

 21  1     5    1  |1 0>        0.00000000 -0.00000009  0.00000007  0.00000000  0.00000000 -0.00000005 -0.00000003 -0.00000000
                               -0.06406968 -0.00000073  0.29155369 -0.00000001 -0.00000004 -0.00000029  0.66957527  0.00000002

 22  1     6    1  |1 0>       -0.00000000 -0.00000012  0.00000009  0.00000000 -0.00000001 -0.00000011 -0.00000005  0.00000000
                               -0.00000053 -0.29894275 -0.00000074 -0.00000002  0.00000012  0.66630910  0.00000029  0.00000001

 23  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000038  0.00003068  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.02544046 -0.57779685  0.00000011 -0.00000004  0.00000001

 24  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00001163  0.00000018 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000001  0.00000003  0.77383523 -0.00355698  0.00000001 -0.00000000  0.00000001

 25  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.43988752  0.00000000 -0.00000131  0.00000000 -0.00000000 -0.00000000  0.00002111  0.00000000

 26  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000365  0.00000088  0.00000000 -0.00000000 -0.00000000  0.00002097  0.00000000 -0.00000000

 27  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000010

 28  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000005  0.00000000 -0.00000000  0.00000515  0.00000020  0.00000000  0.00000000  0.00000000

 29  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.02550873  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000087  0.00000000

 30  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000021  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000086  0.00000000 -0.00000000

 31  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 32  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

 33  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000042 -0.00000000 -0.00000000 -0.00000000

 34  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.05824896 -0.00000000  0.00000011  0.00000000 -0.00000000 -0.00000000 -0.00000039  0.00000000

 35  1     4    1  |1 1>-      -0.00000000  0.00000018 -0.00000013  0.00000000 -0.00000000 -0.00000003 -0.00000002 -0.00000000
                                0.06409017  0.00000146 -0.57542041  0.00000002 -0.00000003 -0.00000018  0.44969549  0.00000000

 36  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000001 -0.00000001 -0.00000001  0.57735063

 37  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000001  0.00000711  0.00002955  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000001  0.00000002  0.47265202 -0.55671810  0.00000011 -0.00000004  0.00000002

 38  1     7    1  |1 1>-      -0.00000000  0.00000029 -0.00000021 -0.00000000 -0.00000000 -0.00000003 -0.00000001 -0.00000000
                               -0.00000051  0.70115012  0.00000177  0.00000001  0.00000003  0.16083749  0.00000006 -0.00000000

 39  1     8    1  |1 1>-      -0.00000000  0.00000012 -0.00000009 -0.00000000  0.00000000  0.00000009  0.00000004 -0.00000000
                               -0.00000034  0.30602855  0.00000076  0.00000001 -0.00000011 -0.56762410 -0.00000025 -0.00000001

 40  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000164

 41  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000003 -0.00000000 -0.00000000 -0.00000498  0.00002187 -0.00000000  0.00000000  0.00000000

 42  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.43979344 -0.00000000  0.00000870 -0.00000000  0.00000000  0.00000000 -0.00001903  0.00000000

 43  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000637 -0.00000465 -0.00000000 -0.00000000 -0.00000000  0.00000121  0.00000000  0.00000000

 44  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000007

 45  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000024  0.00000089 -0.00000000  0.00000000  0.00000000

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.02550563 -0.00000000  0.00000039 -0.00000000  0.00000000  0.00000000 -0.00000076  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000013 -0.00086463 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00000000 -0.00766733 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000062  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     2    1  |1 1>+      -0.00766942  0.00000000 -0.00000000  0.00000000  0.00442279  0.00353489 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00766351  0.00000010 -0.00000000  0.00000000  0.00005271  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+      -0.00000001 -0.00000001  0.12843161 -0.00000170  0.00000003  0.00000000  0.01509295  0.00000078
                               -0.00000000 -0.00000000  0.00000005 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     5    1  |1 1>+      -0.00000000 -0.12843633 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00001039  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     6    1  |1 1>+      -0.12833915 -0.00000000  0.00000004 -0.00000005 -0.22255071  0.00000395 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     7    1  |1 1>+       0.00000001 -0.00000001 -0.00000151 -0.11343156  0.00000002  0.00000000  0.00000080 -0.01563771
                                0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     8    1  |1 1>+       0.00000001 -0.00000002 -0.00000306 -0.23052909  0.00000004 -0.00000000 -0.00000040  0.00770346
                                0.00000000  0.00000000  0.00000001  0.00000009 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1     9    1  |1 1>+       0.00000000  0.67056149  0.00000004 -0.00000005 -0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00005425 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    10    1  |1 1>+       0.67075875 -0.00000001  0.00000012 -0.00000003 -0.38680166  0.02662007  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    11    1  |1 1>+      -0.00000004 -0.00000004  0.67059880 -0.00000890  0.00000013 -0.00000000  0.01315543  0.00000068
                               -0.00000000 -0.00000000  0.00000028 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00004857  0.00000000  0.00000000  0.00000296 -0.05767542
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.02804561  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001
                               -0.00000000 -0.00000227 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1    14    1  |1 1>+       0.02805376 -0.00000000  0.00000000 -0.00000000 -0.01617832  0.57667466  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1    15    1  |1 1>+      -0.00000000 -0.00000000  0.02804689 -0.00000037  0.00000001 -0.00000000  0.70568838  0.00003627
                               -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001

 17  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000010  0.00767094 -0.00000000  0.00000000 -0.00000000  0.00005440

 18  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00767095  0.00000010 -0.00000000  0.00000000 -0.00005440 -0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000449 -0.00000000  0.00000000 -0.00000000 -0.00885301  0.00353384 -0.00000000 -0.00000000

 20  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.25690871  0.00000000 -0.00000002 -0.00000001 -0.00013042  0.00000000 -0.00000000 -0.00000000

 21  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000001 -0.00000005  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000001 -0.00000170 -0.12844134  0.00000002  0.00000000 -0.00000078  0.01510056

 22  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000005  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00000001  0.12844141 -0.00000170  0.00000003  0.00000000 -0.01510056 -0.00000078

 23  1     7    1  |1 0>       -0.00000000 -0.00002074 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.25636378 -0.00000002  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000138 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.01702431 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000003 -0.00000026  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000004 -0.00000005 -0.00000890 -0.67052551  0.00000012  0.00000000 -0.00000068  0.01316339

 26  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000028  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000004 -0.00000004  0.67052547 -0.00000890  0.00000013  0.00000000 -0.01316339 -0.00000068

 27  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00039329  0.00000001 -0.00000015  0.00000014  0.77430699  0.02661636 -0.00000000  0.00000000

 28  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000001  0.00000001
                                0.00000000 -0.00000000 -0.00000037 -0.02804418  0.00000000 -0.00000000 -0.00003626  0.70538743

 30  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.02804418 -0.00000037  0.00000001  0.00000000 -0.70538742 -0.00003626

 31  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00001645  0.00000000 -0.00000001  0.00000001  0.03238357  0.57682645  0.00000000  0.00000000

 32  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00766493 -0.00000000  0.00000000 -0.00000000 -0.00443058 -0.00353489  0.00000000  0.00000000

 33  1     2    1  |1 1>-       0.00000000  0.00000062  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00766735  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 34  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000010 -0.00766353  0.00000000  0.00000000 -0.00000000  0.00005271

 35  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000001 -0.00000005  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000001 -0.00000170 -0.12843134  0.00000002  0.00000000  0.00000078 -0.01509295

 36  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.12856518  0.00000000 -0.00000005  0.00000003  0.22242008 -0.00000395 -0.00000000  0.00000000

 37  1     6    1  |1 1>-       0.00000000  0.00001039  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.12843631  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000006 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000001 -0.14291818  0.00000190 -0.00000003 -0.00000000 -0.01448176 -0.00000074

 39  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000009  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00000001  0.21350572 -0.00000283  0.00000004  0.00000000 -0.00970360 -0.00000050

 40  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.67036546  0.00000000 -0.00000003  0.00000011  0.38748286 -0.02662007 -0.00000000  0.00000000

 41  1    10    1  |1 1>-      -0.00000000 -0.00005425 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.67056141 -0.00000004  0.00000005  0.00000001 -0.00000000  0.00000000 -0.00000000

 42  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000003  0.00000026 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000004  0.00000005  0.00000890  0.67059876 -0.00000012 -0.00000000 -0.00000068  0.01315543

 43  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00004865  0.00000000 -0.00000000  0.00000000  0.05767542  0.00000296

 44  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.02803731  0.00000000 -0.00000000  0.00000000  0.01620681 -0.57667466 -0.00000000 -0.00000000

 45  1    14    1  |1 1>-      -0.00000000 -0.00000227 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.02804560 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001

 46  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000001  0.00000001
                               -0.00000000  0.00000000  0.00000037  0.02804689 -0.00000000 -0.00000000 -0.00003627  0.70568837


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46

  1  1     1    1  |0 0>        0.00000000  0.00000025  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     1    1  |1 1>+       0.00005330 -0.00000000 -0.00000000 -0.00000000  0.00246748  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000

  3  1     2    1  |1 1>+       0.00000000  0.00142458  0.00000000 -0.00000000  0.00000000 -0.00246765
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     3    1  |1 1>+      -0.00000000 -0.00000000  0.00000004 -0.00246757 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000025 -0.01706424 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     5    1  |1 1>+      -0.01509660  0.00000000  0.00000000  0.00000000 -0.01706098 -0.00000000
                                0.00000031 -0.00000000 -0.00000000 -0.00000000 -0.00000018  0.00000000

  7  1     6    1  |1 1>+      -0.00000000  0.02955261 -0.00000000 -0.00000000 -0.00000000  0.01705796
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.01506875 -0.00000022 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.03061470 -0.00000045 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     9    1  |1 1>+       0.01315961 -0.00000000 -0.00000000 -0.00000000  0.01975996  0.00000000
                               -0.00000027  0.00000000  0.00000000  0.00000000  0.00000021 -0.00000000

 11  1    10    1  |1 1>+       0.00000000  0.01140272  0.00000000 -0.00000000  0.00000000 -0.01976112
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    11    1  |1 1>+      -0.00000000 -0.00000000  0.00000029 -0.01976298 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1    12    1  |1 1>+      -0.00000000  0.00000000 -0.00001171 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1    13    1  |1 1>+       0.70553795  0.00000000  0.00000002  0.00000000 -0.70620834 -0.00000008
                               -0.00001428 -0.00000000 -0.00000000 -0.00000000 -0.00000736  0.00000000

 15  1    14    1  |1 1>+       0.00000000 -0.40772932 -0.00000000  0.00000003 -0.00000008  0.70624980
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1    15    1  |1 1>+      -0.00000000  0.00000003 -0.00001042  0.70605795  0.00000000 -0.00000002
                                0.00000000  0.00000000 -0.00000002 -0.00000002  0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00246805 -0.00000004 -0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000004 -0.00246805 -0.00000000  0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00284976  0.00000000  0.00000000 -0.00000000  0.00000029

 20  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000347 -0.00000000  0.00000000 -0.00000000  0.03412195

 21  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.01705810 -0.00000025 -0.00000000 -0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000025 -0.01705810 -0.00000000  0.00000000

 23  1     7    1  |1 0>       -0.00000002  0.00000000  0.00000000  0.00000000  0.00000036 -0.00000000
                               -0.00115506  0.00000000  0.00000000  0.00000000 -0.03404689 -0.00000000

 24  1     8    1  |1 0>        0.00000035  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000
                                0.01739370  0.00000000  0.00000000  0.00000000 -0.00226094 -0.00000000

 25  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.01975675 -0.00000029 -0.00000000 -0.00000000

 26  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000029 -0.01975675 -0.00000000  0.00000000

 27  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.02282029  0.00000000  0.00000000 -0.00000000  0.00000232

 28  1    12    1  |1 0>        0.00000117 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.05767485  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000002  0.00000002 -0.00000000  0.00000000
                                0.00000001  0.00000000  0.70635868  0.00001043  0.00000002  0.00000000

 30  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000002  0.00000002 -0.00000000  0.00000000
                                0.00000000  0.00000003 -0.00001043  0.70635869  0.00000000 -0.00000002

 31  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.81538757 -0.00000000 -0.00000003  0.00000000 -0.00008290

 32  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00142508  0.00000000  0.00000000  0.00000000 -0.00246736

 33  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000
                                0.00005330  0.00000000  0.00000000  0.00000000 -0.00246748 -0.00000000

 34  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00246757  0.00000004  0.00000000  0.00000000

 35  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.01706424 -0.00000025 -0.00000000 -0.00000000

 36  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.02954914  0.00000000  0.00000000 -0.00000000  0.01706397

 37  1     6    1  |1 1>-      -0.00000031 -0.00000000 -0.00000000 -0.00000000 -0.00000018  0.00000000
                               -0.01509661 -0.00000000 -0.00000000 -0.00000000  0.01706098  0.00000000

 38  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000028  0.01898462  0.00000000 -0.00000000

 39  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000042 -0.02835332 -0.00000000  0.00000000

 40  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.01140673  0.00000000  0.00000000  0.00000000 -0.01975880

 41  1    10    1  |1 1>-       0.00000027  0.00000000  0.00000000  0.00000000  0.00000021 -0.00000000
                                0.01315961  0.00000000  0.00000000  0.00000000 -0.01975996 -0.00000000

 42  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.01976298  0.00000029  0.00000000  0.00000000

 43  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00001170  0.00000000  0.00000000

 44  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.40787292 -0.00000000 -0.00000000 -0.00000007  0.70616688

 45  1    14    1  |1 1>-       0.00001428 -0.00000000 -0.00000000 -0.00000000 -0.00000736  0.00000000
                                0.70553793 -0.00000000 -0.00000002 -0.00000000  0.70620835  0.00000008

 46  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000002 -0.00000002  0.00000000 -0.00000000
                                0.00000001 -0.00000000 -0.70605796 -0.00001042 -0.00000002 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.76%    0.22%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   49.49%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.07%   33.13%    0.00%    0.00%    0.00%   16.84%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%   49.49%    0.00%    0.00%   49.53%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.13%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.38%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.11%    0.00%    0.00%    0.00%    0.00%    0.10%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.42%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.01%    0.13%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.08%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.64%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%   49.49%    0.00%    0.00%    0.00%    0.00%   49.53%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%   49.49%    0.00%    0.00%   49.53%    0.00%
 19  1     3    1  |1 0>          0.07%   33.13%    0.00%    0.00%    0.00%   66.04%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.13%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.13%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.13%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.08%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.08%    0.00%
 27  1    11    1  |1 0>          0.01%    0.13%    0.00%    0.00%    0.00%    0.11%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.64%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.07%   33.13%    0.00%    0.00%    0.00%   16.19%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   49.49%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%   49.49%    0.00%    0.00%    0.00%    0.00%   49.53%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.13%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.39%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.16%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.36%    0.00%
 40  1     9    1  |1 1>-         0.01%    0.13%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.08%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.64%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%   49.53%    0.16%    0.00%    0.00%    0.00%    0.01%    0.00%
  3  1     2    1  |1 1>+        49.20%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   25.75%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.13%   25.75%    0.00%    0.00%    0.00%    3.72%    0.00%
  7  1     6    1  |1 1>+         0.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%   27.64%    0.00%    0.00%    0.00%    3.98%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    6.69%    0.00%    0.00%    0.00%    0.97%
 10  1     9    1  |1 1>+         0.00%    0.08%    5.98%    0.00%    0.00%    0.00%   24.63%    0.00%
 11  1    10    1  |1 1>+         0.08%    0.00%    0.00%    0.00%    0.00%   33.13%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    5.98%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    1.71%    0.00%    0.00%    0.00%   38.18%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.08%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%    0.01%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%    0.00%
 20  1     4    1  |1 0>          0.52%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%   25.75%    0.00%    0.00%    0.00%    3.72%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   25.75%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.51%    0.15%    0.00%    0.00%    0.00%    0.02%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%   34.19%    0.00%    0.00%    0.00%    4.93%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    5.98%    0.00%    0.00%    0.00%   24.64%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    5.98%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.12%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    1.71%    0.00%    0.00%    0.00%   38.18%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.08%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%
 32  1     1    1  |1 1>-        49.86%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%   49.53%    0.16%    0.00%    0.00%    0.00%    0.01%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.00%    0.01%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%   25.75%    0.00%    0.00%    0.00%    3.71%
 36  1     5    1  |1 1>-         0.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.13%   25.75%    0.00%    0.00%    0.00%    3.72%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   23.71%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   10.63%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.08%    0.00%    0.00%    0.00%    0.00%   33.13%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.08%    5.98%    0.00%    0.00%    0.00%   24.63%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    5.98%    0.00%    0.00%    0.00%   24.62%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    1.71%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.08%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.08%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.46%    0.00%    0.00%    0.34%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.45%    0.16%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.46%    0.00%    0.00%    0.34%
  5  1     4    1  |1 1>+         3.71%    0.00%    0.00%    0.00%   14.86%    0.00%    0.00%    0.41%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%   14.86%    0.00%    0.00%    0.41%    0.00%
  7  1     6    1  |1 1>+         0.00%   15.65%   43.79%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   11.59%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   47.84%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    4.91%    0.00%    0.00%   19.35%    0.00%
 11  1    10    1  |1 1>+         0.00%    4.83%    1.72%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+        24.62%    0.00%    0.00%    0.00%    4.92%    0.00%    0.00%   19.34%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.07%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.05%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.08%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.07%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.46%    0.00%    0.00%
 18  1     2    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.46%    0.00%    0.00%    0.34%
 19  1     3    1  |1 0>          0.00%    0.00%    0.62%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%   59.42%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   14.85%    0.00%    0.00%
 22  1     6    1  |1 0>          3.72%    0.00%    0.00%    0.00%   14.85%    0.00%    0.00%    0.41%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%   59.17%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.26%    0.00%    0.00%    0.54%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    4.91%    0.00%    0.00%
 26  1    10    1  |1 0>         24.64%    0.00%    0.00%    0.00%    4.91%    0.00%    0.00%   19.35%
 27  1    11    1  |1 0>          0.00%    0.00%    6.55%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   59.13%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
 30  1    14    1  |1 0>          0.08%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.07%
 31  1    15    1  |1 0>          0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.47%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.46%    0.00%    0.00%    0.34%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.46%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   14.86%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%   14.09%   45.35%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%   14.86%    0.00%    0.00%    0.41%    0.00%
 38  1     7    1  |1 1>-         3.42%    0.00%    0.00%    0.00%   18.40%    0.00%    0.00%    0.38%
 39  1     8    1  |1 1>-         1.54%    0.00%    0.00%    0.00%   41.04%    0.00%    0.00%    0.17%
 40  1     9    1  |1 1>-         0.00%    5.00%    1.55%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    4.91%    0.00%    0.00%   19.35%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    4.92%    0.00%    0.00%
 43  1    12    1  |1 1>-        38.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   59.13%
 44  1    13    1  |1 1>-         0.00%    0.05%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.07%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%   32.54%    0.00%    0.00%    0.00%   20.80%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%   17.71%   35.62%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
  8  1     7    1  |1 1>+         0.44%    0.00%   54.22%    0.00%    0.00%    0.00%    0.58%    0.00%
  9  1     8    1  |1 1>+         0.11%    0.00%    4.17%    0.00%    0.00%    0.00%   34.36%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+        59.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 21  1     5    1  |1 0>          0.41%    0.00%    8.50%    0.00%    0.00%    0.00%   44.83%    0.00%
 22  1     6    1  |1 0>          0.00%    8.94%    0.00%    0.00%    0.00%   44.40%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.06%   33.38%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%   59.88%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>         19.35%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.41%    0.00%   33.11%    0.00%    0.00%    0.00%   20.22%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%   22.34%   30.99%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%   49.16%    0.00%    0.00%    0.00%    2.59%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    9.37%    0.00%    0.00%    0.00%   32.22%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-        19.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    1.65%    0.00%    0.00%    0.00%    0.02%    0.00%
  6  1     5    1  |1 1>+         0.00%    1.65%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         1.65%    0.00%    0.00%    0.00%    4.95%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    1.29%    0.00%    0.00%    0.00%    0.02%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    5.31%    0.00%    0.00%    0.00%    0.01%
 10  1     9    1  |1 1>+         0.00%   44.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+        44.99%    0.00%    0.00%    0.00%   14.96%    0.07%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%   44.97%    0.00%    0.00%    0.00%    0.02%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.33%
 14  1    13    1  |1 1>+         0.00%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.08%    0.00%    0.00%    0.00%    0.03%   33.26%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.08%    0.00%    0.00%    0.00%   49.80%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          6.60%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    1.65%    0.00%    0.00%    0.00%    0.02%
 22  1     6    1  |1 0>          0.00%    0.00%    1.65%    0.00%    0.00%    0.00%    0.02%    0.00%
 23  1     7    1  |1 0>          0.00%    6.57%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%   44.96%    0.00%    0.00%    0.00%    0.02%
 26  1    10    1  |1 0>          0.00%    0.00%   44.96%    0.00%    0.00%    0.00%    0.02%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%   59.96%    0.07%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%   49.76%
 30  1    14    1  |1 0>          0.00%    0.00%    0.08%    0.00%    0.00%    0.00%   49.76%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.10%   33.27%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    1.65%    0.00%    0.00%    0.00%    0.02%
 36  1     5    1  |1 1>-         1.65%    0.00%    0.00%    0.00%    4.95%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    1.65%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    2.04%    0.00%    0.00%    0.00%    0.02%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    4.56%    0.00%    0.00%    0.00%    0.01%    0.00%
 40  1     9    1  |1 1>-        44.94%    0.00%    0.00%    0.00%   15.01%    0.07%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%   44.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%   44.97%    0.00%    0.00%    0.00%    0.02%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.33%    0.00%
 44  1    13    1  |1 1>-         0.08%    0.00%    0.00%    0.00%    0.03%   33.26%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%   49.80%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.02%    0.00%    0.00%    0.00%    0.03%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.09%    0.00%    0.00%    0.00%    0.03%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.09%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.02%    0.00%    0.00%    0.00%    0.04%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.04%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+        49.78%    0.00%    0.00%    0.00%   49.87%    0.00%
 15  1    14    1  |1 1>+         0.00%   16.62%    0.00%    0.00%    0.00%   49.88%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%   49.85%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.12%
 21  1     5    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.12%    0.00%
 24  1     8    1  |1 0>          0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.33%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%   49.89%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%   49.89%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%   66.49%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.09%    0.00%    0.00%    0.00%    0.03%
 37  1     6    1  |1 1>-         0.02%    0.00%    0.00%    0.00%    0.03%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.08%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.04%
 41  1    10    1  |1 1>-         0.02%    0.00%    0.00%    0.00%    0.04%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%   16.64%    0.00%    0.00%    0.00%   49.87%
 45  1    14    1  |1 1>-        49.78%    0.00%    0.00%    0.00%   49.87%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%   49.85%    0.00%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      144.82       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      308.72       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6681.65   4798.61    293.37   1545.33     23.12      6.48      0.14     14.38
 REAL TIME  *      6792.39 SEC
 DISK USED  *       453.62 MB (local),        3.29 GB (total)
 SF USED    *         3.11 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy= -24984.782048481302

              CI              CI           MULTI         RHF-SCF
 -24984.76292636 -24985.11407247 -24984.55939283 -24984.77408070
 **********************************************************************************************************************************
 Molpro calculation terminated
